`timescale 1ns / 1ns
`include "core_pkg.svh"
`include "../src/Interfaces/ArbiterControllerIF.svh"
`include "../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v"
`include "../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_1024_256_freepdk45.v"


import CORE_PKG::*;

module dCacheController #()(
    input logic clk,
    input logic rst,

    ArbiterControllerIF.Controller arbiter
);



localparam c = 15;
localparam b = 7;
localparam s = 0;

localparam TAG_BITS = 32 - (c-s);
localparam DIRTY = 1;
localparam VALID = 1;


/* Arbiter Connections */

// Read Requests from Arbiter
logic raddr_valid = arbiter.raddr_valid;                                   // Arbiter will make sure that the read and write addresses dont align
logic [31:0] raddr = arbiter.raddr;
logic [1023:0] rdata_block;
assign arbiter.rdata = rdata_block[WORD_SIZE * raddr[b-1:2] +: WORD_SIZE]; // Pull out the block size

// Write Requests from Arbiter
logic [1023:0] wdata;
logic  waddr_valid = arbiter.waddr_valid; 
logic [31:0] waddr = arbiter.waddr;
logic [127:0] wmask = arbiter.wmask;            // 16-bit Mask to target the Bytes. 4'h0001 targets the first byte of the first word in a block

assign wdata = arbiter.wdata; 

// Repair Requests from Arbiter
logic repair_resolved;


assign arbiter.missed_addr = missed_addr;                 // Note: Upon
assign arbiter.read_repair_request = read_repair_request;
assign repair_resolved = arbiter.repair_resolved;           // Indicates that the arbiter has supplied the missed block.
// assign arbiter.missed_waddr = missed_waddr; // Note: Upon
assign arbiter.write_repair_request = write_repair_request;

// Write Requests to Arbiter on eviction of dirty block

// Registering vals for tag check/stall
logic [31:0] raddr_reg0, raddr_reg1,raddr_reg2;
logic raddr_valid_reg0, raddr_valid_reg1, raddr_valid_reg2;
always_ff@(posedge clk) begin
    if (rst) begin
        // reset regs
        
        // Read Regs
        raddr_reg0 <= '0; 
        raddr_valid_reg0 <= '0;

        raddr_reg1 <= '0; 
        raddr_valid_reg1 <= '0;

        raddr_reg2 <= '0; 
        raddr_valid_reg2 <= '0;

    end else if ((read_repair_request | write_repair_request | repairing) & !repair_resolved) begin
        
        // maintain curr val
        raddr_reg0 <= raddr_reg0; 
        raddr_valid_reg0 <= raddr_valid_reg0;

        raddr_reg1 <= raddr_reg1; 
        raddr_valid_reg1 <= raddr_valid_reg1;

        raddr_reg2 <= raddr_reg2; 
        raddr_valid_reg2 <= raddr_valid_reg2;


    end else begin
        // update new vals
        raddr_reg0 <= raddr; 
        raddr_valid_reg0 <= raddr_valid;

        raddr_reg1 <= raddr_reg0; 
        raddr_valid_reg1 <= raddr_valid_reg0;

        raddr_reg2 <= raddr_reg1; 
        raddr_valid_reg2 <= raddr_valid_reg1;

    end
end


// Pipeline Registers for Writes
logic [1023:0] wdata_reg0, wdata_reg1;
logic [127:0] wmask_reg0, wmask_reg1;
logic [31:0] waddr_reg0, waddr_reg1;
logic waddr_valid_reg0, waddr_valid_reg1;

always_ff@(posedge clk) begin
    if (rst) begin
        // reset regs
        waddr_reg0 <= '0;
        waddr_valid_reg0 <= '0;
        wdata_reg0 <= '0;
        wmask_reg0 <= '0;
        
        waddr_reg1 <= '0;
        waddr_valid_reg1 <= '0;
        wdata_reg1 <= '0;
        wmask_reg1 <= '0;

        
    end else if ((read_repair_request | write_repair_request | repairing) & !repair_resolved) begin
        
        // maintain curr vals
        waddr_reg0 <= waddr_reg0;
        waddr_valid_reg0 <= waddr_valid_reg0;
        wdata_reg0 <= wdata_reg0;
        wmask_reg0 <= wmask_reg0;

        waddr_reg1 <= waddr_reg1;
        waddr_valid_reg1 <= waddr_valid_reg1;
        wdata_reg1 <= wdata_reg1;
        wmask_reg1 <= wmask_reg1;

    end else begin
        // shift regs
        waddr_reg0 <= waddr;
        waddr_valid_reg0 <= waddr_valid;
        wdata_reg0 <= wdata;
        wmask_reg0 <= wmask;

        waddr_reg1 <= waddr_reg0;
        waddr_valid_reg1 <= waddr_valid_reg0;
        wdata_reg1 <= wdata_reg0;
        wmask_reg1 <= wmask_reg0;
    end
end


logic rdata_valid;
assign arbiter.rdata_valid = read_hit;

always_ff@(posedge clk) begin
    if (rst) begin
        rdata_valid <= 1'b0;
    end else begin
        rdata_valid <= raddr_valid_reg1 && !read_repair_request;
    end
end

logic [31:0] missed_addr;
always_ff@(posedge clk) begin
    if(rst) begin
        missed_addr <= '0;
    end else begin
        missed_addr <=  raddr_reg1; // TODO: Properly multiplex this with write misses
    end
end

logic [127:0] wmask_i;
logic [31:0] waddr_i;
logic [1023:0] wdata_i;
logic [(TAG_BITS+DIRTY+VALID)-1:0] wblock_metadata_i;
logic [(TAG_BITS+DIRTY+VALID)-1:0] wblock_metadata_o;


/* Upon recieving the correct block, the arbiter will attempt to write it to the cache by bypassing the 1-cycle store buffer */
always_ff @(posedge clk) begin
    wmask_i <= repair_resolved ? wmask : wmask_reg1;
    waddr_i <= repair_resolved ? waddr : waddr_reg1;
    wdata_i <= repair_resolved ? wdata : wdata_reg1;
    wblock_metadata_i <= repair_resolved ?  {waddr[31:(32-(c-s))-2],1'b0,1'b1} : wblock_metadata_o;
end


assign wblock_metadata_o = waddr_valid_reg1 ?  {wblock_metadata[(TAG_BITS+DIRTY+VALID)-1:2],1'b1, 1'b1} : '0 ;

/* Define SRAM modules for Tag and Data Store. Inputs are registered, so 2 cycle read */
sram_0rw1r1w_1024_256_freepdk45 data_store (
    .clk0(clk),
    .csb0(~write_enable),                         // active low chip select
    .wmask0(wmask_i),                             
    .addr0(waddr_i[(c-s)-1:b]),                   // Write Port. Delay the data write until we can ensure that the tag is there
    .din0(wdata_i),
    .clk1(clk), 
    .csb1(~raddr_valid_reg0 & ~raddr_valid_reg1), // active low chip select
    .addr1(raddr_reg0[(c-s)-1:b]),                // Read Port
    .dout1(rdata_block)
);


logic read_tag;
always_ff @(posedge clk) begin
    read_tag <= (raddr_valid & ~read_repair_request);
end

logic [18:0] rblock_metadata_r;
always_ff@(posedge clk) begin
    rblock_metadata_r <= rblock_metadata;
end


logic [7:0] read_address;
assign read_address = raddr[(c-s)-1:b];


sram_0rw1r1w_19_256_freepdk45 tag_store0 ( // For checking Read Misses
    .clk0(clk), 
    .csb0(~write_enable),                  // active low chip select
    .addr0(waddr_i[(c-s)-1:b]),            // Write to tags on block replacement
    .din0(wblock_metadata_i),   
    .clk1(clk), 
    .csb1(~raddr_valid_reg0 & ~raddr_valid_reg1), // active low chip select
    .addr1(raddr_reg0[(c-s)-1:b]), // Read Port
    .dout1(rblock_metadata)
);

sram_0rw1r1w_19_256_freepdk45 tag_store1 ( // For checking Write Misses
    .clk0(clk),
    .csb0(~write_enable), // active low chip select
    .addr0(waddr_i[(c-s)-1:b]), // Write to tags on block replacement
    .din0(wblock_metadata_i),
    .clk1(clk), 
    .csb1(~waddr_valid), // active low chip select
    .addr1(waddr[(c-s)-1:b]),
    .dout1(wblock_metadata)
);

logic repairing;   
logic repairing_next;   
logic repairing_prev; 

always_ff @(posedge clk) begin
    if (rst) begin
        repairing    <= 1'b0;
        repairing_prev <= 1'b0;
    end else begin
        repairing    <= repairing_next;
        repairing_prev <= repairing; 
    end
end

// TODO: Multiplex this as well with write repair request
always_comb begin
    repairing_next = repairing;
    case (repairing)
        1'b0: repairing_next = (read_repair_request | write_repair_request);
        1'b1: repairing_next = repair_resolved  & ~read_repair_request_r   & ~write_repair_request_r ? 1'b0 : 1'b1;
    endcase
end
// Tag Checking
logic read_repair_request;
logic [(TAG_BITS + 1 + 1)-1:0] rblock_metadata; // Tag Bits + Dirty + Valid 

// Deconstruct metadata

logic rblock_valid = rblock_metadata_r[0];
logic rblock_dirty = rblock_metadata_r[1];
logic [(TAG_BITS-1):0] rtag = rblock_metadata_r[(TAG_BITS + 1 + 1)-1:2];


logic read_hit;
always_comb begin
    read_hit = (rtag == raddr_reg2[31:(c-s)] & rdata_valid & rblock_valid);
end

always_comb begin
    read_repair_request = (rdata_valid & ~read_hit) | read_repair_request_r;
end

logic read_repair_request_r;
logic next_read_repair_request_r;
always_ff@(posedge clk) begin
    read_repair_request_r <= next_read_repair_request_r;
end

logic read_repair_req_acq;
assign read_repair_req_acq = arbiter.read_repair_req_acq;
always_comb begin
    next_read_repair_request_r = read_repair_request_r;
    case(read_repair_request_r)
        1'b0: begin
            next_read_repair_request_r = read_repair_request & ~read_repair_req_acq ? 1'b1 : 1'b0;
        end 
        1'b1: begin
            next_read_repair_request_r = read_repair_req_acq ? 1'b0 : 1'b1;
        end
    endcase 
end

// Tag Checking
logic [(TAG_BITS + DIRTY + VALID)-1:0] wblock_metadata, wblock_metadata_r; // Tag Bits + Dirty + Valid 
always_ff@(posedge clk) begin
    wblock_metadata_r <= wblock_metadata;
end


// Deconstruct metadata
logic wblock_valid = wblock_metadata_r[0];
logic wblock_dirty = wblock_metadata_r[1];
logic [(TAG_BITS-1):0] wtag = wblock_metadata_r[(TAG_BITS + DIRTY + VALID)-1:2];

logic write_enable;
always_ff @(posedge clk) begin
    write_enable <= (waddr_valid_reg1 & ~write_repair_request) | (repair_resolved); 
end

logic write_hit;
always_comb begin
    write_hit = (wtag != waddr_reg1[31:(c-s)] & wdata_valid & wblock_valid );
end

logic write_repair_request;
always_comb begin
    write_repair_request = wdata_valid & ~write_hit & ~repair_resolved; //No need to perform a tag check when repairing a missed read
end

logic write_repair_request_r;
logic next_write_repair_request_r;
always_ff@(posedge clk) begin
    write_repair_request_r <= next_write_repair_request_r;
end

logic write_repair_req_acq;
assign write_repair_req_acq = arbiter.write_repair_req_acq;
always_comb begin
    next_write_repair_request_r = write_repair_request_r;
    case(write_repair_request_r)
        1'b0: begin
            next_write_repair_request_r = write_repair_request & ~write_repair_req_acq ? 1'b1 : 1'b0;
        end 
        1'b1: begin
            next_write_repair_request_r = write_repair_req_acq ? 1'b0 : 1'b1;
        end
    endcase 
end

logic wdata_valid;
always_ff@(posedge clk) begin
    if (rst) begin
        wdata_valid <= 1'b0;
    end else begin
        wdata_valid <= waddr_valid_reg1 && !read_repair_request;
    end
end

// TODO: Invalidate SRAM on resets (flip valid bit for each block)


endmodule
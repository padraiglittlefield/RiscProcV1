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
logic raddr_valid = arbiter.raddr_valid; // Arbiter will make sure that the read and write addresses dont align
logic [31:0] raddr = arbiter.raddr;
logic [1023:0] rdata_block;
assign arbiter.rdata = rdata_block[WORD_SIZE * raddr[b-1:2] +: WORD_SIZE]; // Pull out the block size

// Write Requests from Arbiter
logic [1023:0] wdata;
logic  waddr_valid = arbiter.waddr_valid; 
logic [31:0] waddr = arbiter.waddr;
logic [127:0] wmask = arbiter.wmask; // 16-bit Mask to target the Bytes. 4'h0001 targets the first byte of the first word in a block

assign wdata = arbiter.wdata; //TODO: Whose responsibility is it to shift over the value to match the mask?

// Repair Requests to Arbiter.
logic repair_resolved;

assign arbiter.read_repair_request = read_repair_request;
assign arbiter.write_miss_repair = write_miss_repair;
assign arbiter.missed_addr = raddr_reg1;
assign repair_resolved = arbiter.repair_resolved; // Indicates that the arbiter has supplied the missed block.
// Write Requests to Arbiter on eviction of dirty block

// Registering vals for tag check/stall
logic [1023:0] wdata_reg;
logic [127:0] wmask_reg;
logic [31:0] waddr_reg;
logic waddr_valid_reg;

logic [31:0] raddr_reg0, raddr_reg1;
logic raddr_valid_reg0, raddr_valid_reg1;
always@(posedge clk) begin
    if (rst) begin
        // reset regs
        raddr_reg0 <= '0; 
        raddr_valid_reg0 <= '0;
        raddr_reg1 <= '0; 
        raddr_valid_reg1 <= '0;


        waddr_reg <= '0;
        waddr_valid_reg <= '0;
        wdata_reg <= '0;
        wmask_reg <= '0;
        
    end else if (repairing & !repair_resolved) begin
        // maintain curr val
        raddr_reg0 <= raddr_reg0; 
        raddr_valid_reg0 <= raddr_valid_reg0;

        raddr_reg1 <= raddr_reg1; 
        raddr_valid_reg1 <= raddr_valid_reg1;

        waddr_reg <= waddr_reg;
        waddr_valid_reg <= waddr_valid_reg;
        wdata_reg <= wdata_reg;
        wmask_reg <= wmask_reg;

    end else begin
        // update new vals
        raddr_reg0 <= raddr; 
        raddr_valid_reg0 <= raddr_valid;

        raddr_reg1 <= raddr_reg0; 
        raddr_valid_reg1 <= raddr_valid_reg0;

        // shift regs
        waddr_reg <= waddr;
        waddr_valid_reg <= waddr_valid;
        wdata_reg <= wdata;
        wmask_reg <= wmask;
    end
end


//TODO: Check for collisions with reading and writing data

//TODO: Write are also blocked


logic rdata_valid;
assign arbiter.rdata_valid = rdata_valid;

always@(posedge clk) begin
    if (rst) begin
        rdata_valid <= 1'b0;
    end else begin
        rdata_valid <= raddr_valid_reg1 && !read_repair_request;
    end
end


logic [127:0] wmask_i;
logic [31:0] waddr_i;
logic [1023:0] wdata_i;
logic [(TAG_BITS+DIRTY+VALID)-1:0] wblock_metadata_i;


/* Upon recieving the correct block, the arbiter will attempt to write it to the cache by bypassing the 1-cycle store buffer */
assign wmask_i = ~repair_resolved ? wmask_reg : wmask;
assign waddr_i = ~repair_resolved ? waddr_reg : waddr;
assign wdata_i = ~repair_resolved ? wdata_reg : wdata;

assign wblock_metadata_i = ~repair_resolved ? {wblock_metadata[(TAG_BITS+DIRTY+VALID)-1:DIRTY], 1'b1} : {waddr[31:(32-(c-s))-2],1'b0,1'b1};

/* Define SRAM modules for Tag and Data Store. Inputs are registered, so 2 cycle read */
sram_0rw1r1w_1024_256_freepdk45 data_store (
    .clk0(clk), 
    .csb0(~write_enable), // active low chip select
    .wmask0(wmask_i),
    .addr0(waddr_i[(c-s)-1:b]), // Write Port. Delay the data write until we can ensure that the tag is there
    .din0(wdata_i),
    .clk1(clk), 
    .csb1(~raddr_valid_reg0), // active low chip select
    .addr1(raddr_reg0[(c-s)-1:b]), // Read Port
    .dout1(rdata_block)
);


sram_0rw1r1w_19_256_freepdk45 tag_store0 ( // For checking Read Misses
    .clk0(clk), 
    .csb0(~write_enable), // active low chip select
    .addr0(waddr_i[(c-s)-1:b]), // Write to tags on block replacement
    .din0(wblock_metadata_i),
    .clk1(clk), 
    .csb1(~raddr_valid_reg0), // active low chip select
    .addr1(raddr_reg0[(c-s)-1:b]),
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
always@(posedge clk) begin
    if(rst) begin
        repairing <= 1'b0;
    end else begin
        if(read_repair_request || write_miss_repair) begin
            repairing <= 1'b1;
        end else if(repair_resolved) begin
            repairing <= 1'b0;
        end else begin 
            repairing <= repairing;
        end
    end
end

// Tag Checking
logic read_repair_request;
logic [(TAG_BITS + 1 + 1)-1:0] rblock_metadata; // Tag Bits + Dirty + Valid 

// Deconstruct metadata
logic rblock_valid = rblock_metadata[0];
logic rblock_dirty = rblock_metadata[1];
logic [(TAG_BITS-1):0] rtag = rblock_metadata[(TAG_BITS + 1 + 1)-1:2];

always_comb begin
    if(!repairing) begin
        if(raddr_valid_reg1) begin
            if(!rblock_valid) begin
                read_repair_request = 1'b1; // Block doesn't exist in cache, we must get it
            end else begin
                if(rtag != raddr_reg1[31:(c-s)]) begin
                    read_repair_request = 1'b1;
                end else begin
                    read_repair_request = 1'b0;
                end
            end
        end else begin
            read_repair_request = 1'b0;
        end
    end else begin
        read_repair_request = 1'b0;
    end
end

logic sent_repair;
assign sent_repair = arbiter.sent_repair;

// Tag Checking
logic write_miss_repair;
logic [(TAG_BITS + DIRTY + VALID)-1:0] wblock_metadata; // Tag Bits + Dirty + Valid 

// Deconstruct metadata
logic wblock_valid = wblock_metadata[0];
logic wblock_dirty = wblock_metadata[1];
logic [(TAG_BITS-1):0] wtag = wblock_metadata[(TAG_BITS + DIRTY + VALID)-1:2];

logic write_enable;
assign write_enable = (waddr_valid_reg & ~write_miss_repair) | (sent_repair); 

always_comb begin
    if(!repairing & !repair_resolved) begin // If have just repaired or are repairing, do not do a tag check
        if(waddr_valid_reg) begin
            if(!wblock_valid) begin
                write_miss_repair = 1'b1; // Block doesn't exist in cache, we must get it
            end else begin
                if(wtag != waddr_reg[31:(c-s)]) begin
                    write_miss_repair = 1'b1;
                end else begin
                    write_miss_repair = 1'b0;
                end
            end
        end else begin
            write_miss_repair = 1'b0;
        end
    end else begin
        write_miss_repair = 1'b0;
    end
end

// TODO: Invalidate SRAM on resets (flip valid bit for each block)


endmodule
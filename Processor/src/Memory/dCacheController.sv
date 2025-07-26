module dCacheController #()(
    input logic clk,
    input logic rst,

    ArbiterControllerIF.Controller arbiter,
);

localparam c = 15;
localparam b = 7;
localparam s = 0;
localparam TAG_BITS = (c-s-b) + 1;


/* Arbiter Connections */

// Read Requests from Arbiter
logic raddr_valid = arbiter.raddr_valid; // Arbiter will make sure that the read and write addresses dont align
logic [31:0] raddr = arbiter.raddr;
logic [127:0] rdata;
assign arbiter.rdata = rdata[(WORD_SIZE * (raddr[b-1:0])+1)-1:(WORD_SIZE * raddr[b-1:0])]; // Pull out the block size

// Write Requests from Arbiter
logic [127:0] wdata;
logic  waddr_valid = arbiter.waddr_valid; 
logic [31:0] waddr = arbiter.waddr;
logic [15:0] wmask = arbiter.wmask;

assign wdata = arbiter.wdata;

// Repair Requests to Arbiter.
logic repair_resolved;

assign arbiter.read_miss_repair = read_miss_repair;
assign arbiter.missed_addr = raddr_reg;
assign repair_resolved = arbiter.repair_resolved;

// Write Requests to Arbiter on eviction of dirty block

// Registering vals for tag check/stall
logic [127:0] wdata_reg;
logic [15:0] wmask_reg;
logic [31:0] raddr_reg, waddr_reg;
logic raddr_valid_reg, waddr_valid_reg;
always@(posedge clk) begin
    if (rst) begin
        // reset regs
        raddr_reg <= '0; 
        raddr_valid_reg <= '0;

        waddr_reg <= '0;
        waddr_valid_reg <= '0;
        wdata_reg <= '0;
        wmask_reg <= '0;
        
    end else if (read_miss_repair || write_miss_repair) begin
        // maintain curr val
        raddr_reg <= raddr_reg; 
        raddr_valid_reg <= raddr_valid_reg;

        waddr_reg <= waddr_reg;
        waddr_valid_reg <= waddr_valid_reg;
        wdata_reg <= wdata_reg;
        wmask_reg <= wmask_reg;

    end else begin
        // update new vals
        raddr_reg <= raddr;
        raddr_valid_reg <= raddr_valid;
        // shift regs
        waddr_reg <= waddr;
        waddr_valid_reg <= waddr_valid;
        wdata_reg <= wdata;
        wmask_reg <= wmask;
    end
end

// Tag Checking
logic read_miss_repair;
logic [(TAG_BITS + 1 + 1)-1:0] rblock_metadata; // Tag Bits + Dirty + Valid 

// Deconstruct metadata
logic rblock_valid = rblock_metadata[0];
logic block_dirty = rblock_metadata[1];
logic [(TAG_BITS-1):0] rtag = rblock_metadata[(TAG_BITS + 1 + 1)-1:2];

always@(posedge clk) begin
    if(rst) begin
        read_miss_repair <= 1'b0;
    end else if(!read_miss_repair) begin
        if(raddr_valid_reg) begin
            if(!rblock_valid) begin
                read_miss_repair <= 1'b1; // Block doesn't exist in cache, we must get it
            end else begin
                if(rtag != raddr_reg[31:c+1]) begin
                    read_miss_repair <= 1'b1;
                end else begin
                    read_miss_repair <= 1'b0;
                end
            end
        end else begin
            read_miss_repair <= 1'b0;
        end
    end else begin
        if(repair_resolved) begin
            read_miss_repair <=  1'b0;
        end else begin
            read_miss_repair <=  1'b1;            
        end
    end
end


// Tag Checking
logic write_miss_repair;
logic [(TAG_BITS + 1 + 1)-1:0] wblock_metadata; // Tag Bits + Dirty + Valid 

// Deconstruct metadata
logic wblock_valid = wblock_metadata[0];
logic block_dirty = wblock_metadata[1];
logic [(TAG_BITS-1):0] wtag = wblock_metadata[(TAG_BITS + 1 + 1)-1:2];

logic write_enable;
assign write_enable = (waddr1_valid_reg & ~write_miss_repair) | (repair_resolved & );

always@(posedge clk) begin
    if(rst) begin
        write_miss_repair <= 1'b0;
    end else if(!write_miss_repair) begin
        if(waddr_valid_reg) begin
            if(!wblock_valid) begin
                write_miss_repair <= 1'b1; // Block doesn't exist in cache, we must get it
            end else begin
                if(wtag != waddr_reg[31:c+1]) begin
                    write_miss_repair <= 1'b1;
                end else begin
                    write_miss_repair <= 1'b0;
                end
            end
        end else begin
            write_miss_repair <= 1'b0;
        end
    end else begin
        if(repair_resolved) begin
            write_miss_repair <=  1'b0;
        end else begin
            write_miss_repair <=  1'b1;            
        end
    end
end


//TODO: Check for collisions with reading and writing data

//TODO: Write are also blocked


logic [127:0] wdata_i;
logic [15:0] wmask_i;
logic [31:0] waddr_i;

// Connect to arbiter for when we need to repair a miss
assign wdata_i = wdata1_reg;
assign waddr_i = waddr_reg[(c-s)-1:b];
assign wmask_i = wmask1_reg;


/* Define SRAM modules for Tag and Data Store. Inputs are registered, so 2 cycle read */
srsram_0rw1r1w_128_256_freepdk45 data_store (
    .clk0(clk), 
    .csb0(~write_enable), // active low chip select
    .wmask0(wmask_i),
    .addr0(waddr_i), // Write Port. Delay the data write until we can ensure that the tag is there
    .din0(wdata_i),
    .clk1(clk), 
    .csb1(~raddr_valid), // active low chip select
    .addr1(raddr[(c-s)-1:b]), // Read Port
    .dout1(rdata)
);


sram_0rw1r1w_19_256_freepdk45 tag_store0 ( 
    .clk0(clk), 
    .csb0(), // active low chip select
    .addr0(), // Write to tags on block replacement
    .din0(),
    .clk1(clk), 
    .csb1(~raddr_valid), // active low chip select
    .addr1(raddr[c:b+1]),
    .dout1(rblock_metadata)
);

sram_0rw1r1w_19_256_freepdk45 tag_store1 ( 
    .clk0(clk), 
    .csb0(), // active low chip select
    .addr0(), // Write to tags on block replacement
    .din0(),
    .clk1(clk), 
    .csb1(~waddr_valid), // active low chip select
    .addr1(waddr[c:b+1]),
    .dout1(wblock_metadata)
);


// TODO: 2-Entry Victim Cache (Register Backed) with a flip-flop LRU policy ici

//TODO: Skip write stall when we are repairing a miss

// TODO: Add writeback logic, as well as mechanism for placing in a new block (read old block, overwrite old block)

// TODO: Invalidate SRAM on resets (flip valid bit for each block)


endmodule
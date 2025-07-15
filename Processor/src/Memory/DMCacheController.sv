dfmodule DMCacheController #()(
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
logic [31:0] rdata;
assign arbiter.rdata = rdata;

// Write Requests from Arbiter
logic [31:0] wdata;
logic  waddr_valid = arbiter.waddr_valid; 
logic [31:0] waddr = arbiter.waddr;
logic [15:0] wmask = arbiter.wmask;

assign wdata = arbiter.wdata;

// Repair Requests to Arbiter
logic repair_resolved;

assign arbiter.miss_repair = miss_repair;
assign arbiter.missed_addr = raddr1_reg;
assign repair_resolved = arbiter.repair_resolved;


// Registering vals for tag check/stall

logic [31:0] raddr0_reg, raddr1_reg;
logic raddr0_valid_reg, raddr1_valid_reg;
always@(posedge clk) begin
    if (rst) begin
        // reset regs
        raddr0_reg <= '0; 
        raddr1_reg <= '0;
        raddr0_valid_reg <= '0;
        raddr1_valid_reg <= '0;

    end else if (miss_repair) begin
        // maintain curr val
        raddr0_reg <= raddr0_reg; 
        raddr0_valid_reg <= raddr0_valid_reg;

        raddr1_reg <= raddr1_reg;
        raddr1_valid_reg <= raddr1_valid_reg;

    end else begin
        // update new vals
        raddr0_reg <= raddr;
        raddr0_valid_reg <= raddr_valid;
        // shift regs
        raddr1_reg <= raddr0_reg;
        raddr1_valid_reg <= raddr0_valid_reg;
    end
end

// Tag Checking
logic miss_repair;
logic [(TAG_BITS + 1 + 1)-1:0] block_metadata; // Tag Bits + Dirty + Valid 

// Deconstruct metadata
logic block_valid = block_metadata[0];
logic block_dirty = block_metadata[1];
logic [(TAG_BITS-1):0] tag = block_metadata[(TAG_BITS + 1 + 1)-1:2];

always@(posedge clk) begin
    if(rst) begin
        miss_repair <= 1'b0;
    end else if(!miss_repair) begin
        if(raddr1_valid_reg) begin
            if(!block_valid) begin
                miss_repair <= 1'b1; // Block doesn't exist in cache, we must get it
            end else begin
                if(tag != raddr1_reg[31:c+1]) begin
                    miss_repair <= 1'b1;
                end else begin
                    miss_repair <= 1'b0;
                end
            end
        end else begin
            miss_repair <= 1'b0;
        end
    end else begin
        if(repair_resolved) begin
            miss_repair <=  1'b0;
        end else begin
            miss_repair <=  1'b1;            
        end
    end
end

/* Define SRAM modules for Tag and Data Store. Inputs are registered, so 2 cycle read */
srsram_0rw1r1w_128_256_freepdk45 data_store (
    .clk0(clk), 
    .csb0(~waddr_valid), // active low chip select
    .wmask0(),
    .addr0(waddr[(c-s)-1:b]), // Write Port
    .din0(wdata),
    .clk1(clk), 
    .csb1(~raddr_valid), // active low chip select
    .addr1(raddr[(c-s)-1:b]), // Read Port
    .dout1(rdata)
);


sram_0rw1r1w_19_256_freepdk45 tag_store (
    .clk0(clk), 
    .csb0(), // active low chip select
    .addr0(), // Write to tags on block replacement
    .din0(),
    .clk1(clk), 
    .csb1(~raddr_valid), // active low chip select
    .addr1(raddr[c:b+1]),
    .dout1(block_metadata)
);


// S

endmodule
module DMCacheController #()(
    input logic clk,
    input logic rst,

    ArbiterControllerIF.Controller arbiter,
);

localparam c = 15;
localparam b = 7;
localparam s = 0;
localparam TAG_BITS = (c-s-b) + 1;


// Arbiter Connections
logic raddr_valid = arbiter.raddr_valid; // Arbiter will make sure that the read and write addresses dont align
logic [31:0] raddr = arbiter.raddr;
logic [31:0] rdata;
assign arbiter.rdata = rdata;

logic  waddr_valid = arbiter.waddr_valid; 
logic [31:0] waddr = arbiter.waddr;
logic [31:0] wdata;
assign wdata = arbiter.wdata;

// Registering vals for tag check/stall

always@(posedge clk) begin
    if (rst) begin
        // clear
    end else if (miss_repair) begin
        // maintain curr val
    end else begin
        // update
    end
end

// Tag Checking
logic miss_repair;
logic [(TAG_BITS + 1 + 1)-1:0] tag = // Tag Bits + Dirty + Valid 

/* Define SRAM modules for Tag and Data Store. Inputs are registered, so 2 cycle read */
srsram_0rw1r1w_128_256_freepdk45 data_store (
    .clk0(clk), 
    .csb0(~waddr_valid), // active low chip select
    .addr0(waddr), // Write Port
    .din0(wdata),
    .clk1(clk), 
    .csb1(~raddr_valid), // active low chip select
    .addr1(raddr), // Read Port
    .dout1(rdata)
);


sram_0rw1r1w_19_256_freepdk45 tag_store (
    .clk0(clk), 
    .csb0(), // active low chip select
    .addr0(),
    .din0(),
    .clk1(clk), 
    .csb1(), // active low chip select
    .addr1(),
    .dout1()
);


// S

endmodule
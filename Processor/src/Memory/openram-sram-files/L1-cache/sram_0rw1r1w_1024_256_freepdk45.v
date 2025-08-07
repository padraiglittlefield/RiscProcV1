// OpenRAM SRAM model
// Words: 256
// Word size: 1024
// Write size: 8

module sram_0rw1r1w_1024_256_freepdk45(
`ifdef USE_POWER_PINS
    vdd,
    gnd,
`endif
// Port 0: W
    clk0,csb0,wmask0,addr0,din0,
// Port 1: R
    clk1,csb1,addr1,dout1
  );

  parameter NUM_WMASKS = 128 ;
  parameter DATA_WIDTH = 1024 ;
  parameter ADDR_WIDTH = 8 ;
  parameter RAM_DEPTH = 1 << ADDR_WIDTH;
  parameter DELAY = 2 ;
  parameter VERBOSE = 1 ;
  parameter T_HOLD = 1 ;

`ifdef USE_POWER_PINS
    inout vdd;
    inout gnd;
`endif
  input  clk0;
  input  csb0;
  input [ADDR_WIDTH-1:0]  addr0;
  input [NUM_WMASKS-1:0]  wmask0;
  input [DATA_WIDTH-1:0]  din0;
  input  clk1;
  input  csb1;
  input [ADDR_WIDTH-1:0]  addr1;
  output [DATA_WIDTH-1:0] dout1;

  reg [DATA_WIDTH-1:0]    mem [0:RAM_DEPTH-1];

  reg  csb0_reg;
  reg [NUM_WMASKS-1:0]   wmask0_reg;
  reg [ADDR_WIDTH-1:0]  addr0_reg;
  reg [DATA_WIDTH-1:0]  din0_reg;

  always @(posedge clk0) begin
    csb0_reg = csb0;
    wmask0_reg = wmask0;
    addr0_reg = addr0;
    din0_reg = din0;
    if ( !csb0_reg && VERBOSE )
      $display($time," Writing %m addr0=%b din0=%b wmask0=%b",addr0_reg,din0_reg,wmask0_reg);
  end

  reg  csb1_reg;
  reg [ADDR_WIDTH-1:0]  addr1_reg;
  reg [DATA_WIDTH-1:0]  dout1;

  always @(posedge clk1) begin
    csb1_reg = csb1;
    addr1_reg = addr1;
    if (!csb0 && !csb1 && (addr0 == addr1))
         $display($time," WARNING: Writing and reading addr0=%b and addr1=%b simultaneously!",addr0,addr1);
    #(T_HOLD) dout1 = 1024'bx;
    if ( !csb1_reg && VERBOSE ) 
      $display($time," Reading %m addr1=%b dout1=%b",addr1_reg,mem[addr1_reg]);
  end

  always @ (negedge clk0) begin : MEM_WRITE0
    if (!csb0_reg) begin
      integer i;
      for (i = 0; i < NUM_WMASKS; i = i + 1) begin
        if (wmask0_reg[i])
          mem[addr0_reg][8*i +: 8] = din0_reg[8*i +: 8];
      end
    end
  end

  always @ (negedge clk1) begin : MEM_READ1
    if (!csb1_reg)
       dout1 <= #(DELAY) mem[addr1_reg];
  end

endmodule

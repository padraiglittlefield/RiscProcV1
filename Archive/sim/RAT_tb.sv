`timescale 1ns / 1ns
`include "define.svh"

module RAT_tb;
  localparam CLK_PERIOD = 20;
  localparam DUTY_CYCLE = 0.5;
    /* verilator lint_off UNUSEDSIGNAL */
  logic clk;
  logic rst;

  // read ports
  logic [($clog2(`NUM_AREGS) * `RENAME_WIDTH)-1:0] areg;         // the areg to be translated
  logic [($clog2(`NUM_PREGS) * `RENAME_WIDTH)-1:0]  preg_alias;  // the preg alias for that areg

  // write ports
  logic [`RENAME_WIDTH-1:0] w_en;
  logic [($clog2(`NUM_AREGS) * `RENAME_WIDTH)-1:0] dst_areg; 
  logic [($clog2(`NUM_PREGS) * `RENAME_WIDTH)-1:0] new_alias;

  /* verilator lint_on UNUSEDSIGNAL */
  
  RAT DUT(
    .clk(clk),
    .rst(rst),
    .areg(areg),
    .preg_alias(preg_alias),
    .w_en(w_en),
    .dst_areg(dst_areg),
    .new_alias(new_alias)
  );
  
integer cycle_count = 0;
    //run the clock forever, flipping back and forth between 1 and 0
initial begin
    forever 
    begin		
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b1;
        cycle_count = cycle_count + 1;
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b0;
    end
	end

initial begin
  $dumpfile("RAT_tb.vcd");
  $dumpvars(0,RAT_tb);
  @(posedge clk);
  init_signals();
  @(posedge clk);
  no_alias_test();
  @(posedge clk);
  preg_single_alias_test();
  @(posedge clk);
  @(posedge clk);
  rst=1;
  @(posedge clk);
  preg_all_alias_test();
  @(posedge clk);
  #50;
  $finish;
end


task no_alias_test();
  begin
    rst = 0;
    w_en = '0;
    // test 4 read ports to see what they are. Should have no aliases
    areg = {
      5'b00100,
      5'b00011,
      5'b00010,
      5'b00001
    };
  end 
endtask

task preg_single_alias_test();
  begin
    rst = 0;
    w_en = 4'b0001;
    dst_areg = {
      5'b00100,
      5'b00011,
      5'b00010,
      5'b00001
    };

    new_alias = {
      7'b00001,
      7'b00010,
      7'b00011,
      7'b00100
    };
  end 
endtask

task preg_all_alias_test();
  begin
    rst = 0;
    w_en = 4'b1111;
    dst_areg = {
      5'b00100,
      5'b00011,
      5'b00010,
      5'b00001
    };

    new_alias = {
      7'b00001,
      7'b00010,
      7'b00011,
      7'b00100
    };
  end  
endtask


task init_signals();
  begin
    clk = 0;
    rst = 1;
    //outputs
    areg ='0;
    //inputs
    w_en = '0;
    dst_areg = '0;
    new_alias = '0;
    preg_alias = '0;
  end
endtask

endmodule




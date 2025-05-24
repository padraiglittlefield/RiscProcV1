`timescale 1ns / 1ns
`include "define.svh"

module free_preg_queue_tb;


  logic clk;
  logic rst;
  logic w_en;
  logic r_en;
  logic [6:0] preg_in;  // just identifies which PREG is free for use
 
  /* verilator lint_off UNUSEDSIGNAL */
  logic [($clog2(`NUM_PREGS) * `RENAME_WIDTH)-1:0] preg_out;
  logic full;
  logic empty;
  /* verilator lint_on UNUSEDSIGNAL */
  
  free_preg_queue DUT(
    .clk(clk),
    .rst(rst),
    .w_en(w_en),
    .r_en(r_en),
    .preg_in(preg_in),
    .preg_out(preg_out),
    .full(full),
    .empty(empty)
  );
  
  initial
    begin
     $dumpfile("free_preg_queue_tb.vcd");
     $dumpvars(0,free_preg_queue_tb);
    
    clk = 0;
    w_en = 0;
    r_en = 0;
    preg_in = '0;

    rst = 1;

    #5
    rst = 0;
    r_en = 1;
    #100
    $finish;
    end

always
    #1 clk = ~clk;

endmodule




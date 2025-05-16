`timescale 1ns / 1ns
`include "define.svh"

module dispatch_tb;


  logic clk;
  logic rst_n;
  logic w_en;
  logic r_en;
  decoded_instr_t instr_in;  // just identifies which instr is free for use
 
  /* verilator lint_off UNUSEDSIGNAL */
  decoded_instr_t instr_out;
  logic full;
  logic empty;
  /* verilator lint_on UNUSEDSIGNAL */
  
  dispatch DUT(
    .clk(clk),
    .rst_n(rst_n),
    .w_en(w_en),
    .r_en(r_en),
    .instr_in(instr_in),
    .instr_out(instr_out),
    .full(full),
    .empty(empty)
  );
  
  initial
    begin
     $dumpfile("dispatch_tb.vcd");
     $dumpvars(0,dispatch_tb);
    
    clk = 0;
    w_en = 0;
    r_en = 0;
    instr_in = '0;

    rst_n = 1;

    #5
    rst_n = 0;

    #5
    instr_in = '1;
    w_en = 1'b1;
    #5
    r_en = 1'b1;
    #50;
    $finish;
    end

always
    #1 clk = ~clk;

endmodule




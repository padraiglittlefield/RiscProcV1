`timescale 1ns / 1ns

module free_preg_queue_tb;


  logic clk;
  logic rst_n;
  logic w_en;
  logic r_en;
  logic [6:0] preg_in;  // just identifies which PREG is free for use
 
  /* verilator lint_off UNUSEDSIGNAL */
  logic [6:0] preg_out;
  logic full;
  logic empty;
  /* verilator lint_on UNUSEDSIGNAL */
  
  free_preg_queue DUT(
    .clk(clk),
    .rst_n(rst_n),
    .w_en(w_en),
    .r_en(r_en),
    .preg_in(preg_in),
    .preg_out(preg_out),
    .full(full),
    .empty(empty)
  );
  
  initial
    begin
     $dumpfile("Core_Simulation.sv");
     $dumpvars(0,free_preg_queue_tb);
    
    clk = 0;
    w_en = 0;
    r_en = 0;
    preg_in = '0;

    rst_n = 1;

    #5
    rst_n = 0;
    r_en = 1;
    #50
    $finish;
    end

always
    #1 clk = ~clk;

endmodule




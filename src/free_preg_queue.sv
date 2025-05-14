`include "define.svh"

module free_preg_queue#(
    parameter DEPTH = 128
) (
    input logic clk,
    input logic rst_n,
    input logic w_en,
    input logic r_en,
    input logic [6:0]  preg_in,  // just identifies which PREG is free for use
    output logic  [6:0] preg_out,
    output logic full,
    output logic empty
);


logic [$clog2(DEPTH):0] w_ptr, r_ptr;
logic [6:0] free_queue[0:(1 << $clog2(DEPTH))-1];  // do the fancy rounding to a power of 2 basically
logic empty_int; 
logic full_or_empty;

assign empty_int = (w_ptr[$clog2(DEPTH)] == r_ptr[$clog2(DEPTH)]);
assign full_or_empty  =(w_ptr[$clog2(DEPTH)-1:0] == r_ptr[$clog2(DEPTH)-1:0]);
assign full = full_or_empty & !empty_int;
assign empty = full_or_empty & empty_int;

// reset the free queue 
integer i;
always@(posedge clk) begin
  if(rst_n) begin
    w_ptr <= {1'b1, 7'b0}; // this is not correct. Needs to signifiy that its full
    for ( i = 0; i < {1'b1,6'b0}; i++) begin
     free_queue[i[6:0]] <= i[6:0]; 
    end
  end else if(w_en & !full) begin
        w_ptr   <= w_ptr + 1;
        free_queue[w_ptr[$clog2(DEPTH)-1:0]] <= preg_in;
    end
end


always@(posedge clk) begin
    if(rst_n) begin
        r_ptr   <= 0;
    end else if(r_en & !empty) begin
        r_ptr   <= r_ptr + 1;
    end   
end 

assign preg_out = free_queue[r_ptr[$clog2(DEPTH)-1:0]]; // assign the instr_out to whatever the read pointer is pointing at
endmodule

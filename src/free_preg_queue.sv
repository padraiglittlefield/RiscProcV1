`include "define.svh"

module free_preg_queue#(
    parameter DEPTH = 128
) (
    input clk,
    input rst_n,
    input w_en,
    input r_en,
    input [6:0]  preg_in,  // just identifies which PREG is free for use
    output [6:0] preg_out,
    output full,
    output empty
);


logic [$clog2(DEPTH):0] w_ptr, r_ptr;
//logic [6:0] free_queue[0:(1 << $clog2(DEPTH))-1];  // do the fancy rounding to a power of 2 basically
reg [6:0] free_queue[0:127];

logic empty_int = (w_ptr[$clog2(DEPTH)] == r_ptr[$clog2(DEPTH)]);
logic full_or_empty =(w_ptr[$clog2(DEPTH)-1:0] == r_ptr[$clog2(DEPTH)-1:0]);
assign full = full_or_empty & !empty_int;
assign empty = full_or_empty & empty_int;

logic [6:0] preg_num;
// reset the free queue 
always@(posedge clk) begin
  if(rst_n) begin
    w_ptr <= {1'b1, 7'b0}; // this is not correct. Needs to signifiy that its full
    for ( preg_num = 0; preg_num < {1'b1,6'b0}; preg_num++) begin
     free_queue[preg_num] <= preg_num; 
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

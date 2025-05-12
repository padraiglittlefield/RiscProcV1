`include "define.svh"

module dispatch#(
    parameter DEPTH = 128
)(
    input clk,
    input rst_n,
    input w_en,
    input r_en,
    input [`DE_instr_width-1:0] instr_in,
    output [`DE_instr_width-1:0] instr_out,
    output full,
    output empty
);


logic [$clog2(DEPTH):0] w_ptr, r_ptr;
logic [`DE_instr_width-1:0] disptach_queue[0:(1 << $clog2(DEPTH))-1];  // do the fancy rounding to a power of 2 basically

logic empty_int = (w_ptr[$clog2(DEPTH)] == r_ptr[$clog2(DEPTH)]);
logic full_or_empty =(w_ptr[$clog2(DEPTH)-1:0] == r_ptr[$clog2(DEPTH)-1:0]);
assign full = full_or_empty & !empty_int;
assign empty = full_or_empty & empty_int;


always@(posedge clk) begin

    if(rst_n) begin
        r_ptr   <= 0;
    end else if(r_en & !empty) begin
        r_ptr   <= r_ptr + 1;
    end   


    if(rst_n) begin
        w_ptr   <= 0;
    end else if(w_en & !full) begin
        w_ptr   <= w_ptr + 1;
        disptach_queue[w_ptr[$clog2(DEPTH)-1:0]] <= instr_in;
    end
end

assign instr_out = disptach_queue[r_ptr[$clog2(DEPTH)-1:0]]; // assign the instr_out to whatever the read pointer is pointing at
endmodule
import CORE_PKG::*;

module DependencyMatrix#(
    parameter NUM_RS_ENTRIES = 8 // Number of reservations stations per FU
)(
    input clk,
    input rst,

    input [NUM_RS_ENTRIES-1:0] select_lines,
    output [NUM_RS_ENTRIES-1:0] ready_vector

);

localparam NUM_ROWS = NUM_RS_ENTRIES;
localparam NUM_COLS = NUM_RS_ENTRIES;

logic [NUM_ROWS-1:0][NUM_COLS-1:0] bit_matrix;

always@(posedge clk) begin
    if(rst) begin
        for(int i = 0; i < NUM_ROWS; i++) begin
            for(int j = 0; j < NUM_COLS; j++) begin
                matrix[i][j] <= 0;
            end
        end 
    end else begin
        for(int i = 0; i < NUM_ROWS; i++) begin
            ready_vector[i] = !(bit_matrix[i] & {NUM_RS_ENTRIES{1'b1}} == {NUM_RS_ENTRIES{1'b1}});            
        end
    end
end



endmodule
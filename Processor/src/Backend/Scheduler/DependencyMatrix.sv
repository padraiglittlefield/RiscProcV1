import CORE_PKG::*;

module DependencyMatrix#(
    parameter NUM_ROWS = 8, // Number of reservations stations per FU
    parameter NUM_COLS = 8
)(
    input clk,                                      // Clock
    input rst,                                      // Reset signal
    input w_en,                                     // Enable for writing a new instruction to an entry
    input [$clog2(NUM_ROWS)-1:0] w_row_index,       // Index of the new instruction
    input [NUM_COLS-1:0] set_lines,                 // Which dependencies does the new instruction have
    input clear_en,                                 // Enable for clearing col
    input [NUM_COLS-1:0] clear_lines,               // Which Cols to reset to 0 when a dependent instruction has been selected for execution
    input free_en,                                  // Enable for clearing an entry on the selection of an instruction for scheduling
    input [$clog2(NUM_ROWS)-1:0] free_row_index,    // Index of which entry to clear
    output [NUM_ROWS-1:0] ready_vector,              // Vector of which entries have no dependecies

);

reg [NUM_ROWS-1:0] bit_matrix [NUM_COLS-1:0];
logic [NUM_ROWS-1:0] row_valid;

always_ff @(posedge clk) begin
    if(rst) begin
        for(int i = 0; i < NUM_ROWS; i++) begin
            bit_matrix[i] <= '0;
            row_valid[i] <= 1'b0;
        end 
    end else begin
        
        if (w_en && free_en) begin
            assert (w_row_index != free_row_index)
            else $fatal("Trying to free and write to the same row: %0d", w_row_index);
        end

        if(clear_en) begin
            for (int i = 0; i < NUM_ROWS; i++) begin
                for (int j = 0; j < NUM_COLS; j++) begin
                    if (clear_lines[j])
                        bit_matrix[i][j] <= 1'b0;
                end
            end
        end

        if(w_en) begin
            row_valid[w_row_index] <= 1'b1;         // Mark this entry as valid
            bit_matrix[w_row_index] <= set_lines;   // Write the dependencies to this matrix
        end
        
        if(free_en) begin
            row_valid[free_row_index] <= 1'b0;                // Mark this entry as invalid
            bit_matrix[free_row_index] <= {NUM_COLS{1'b0}};   // Clear the entry
        end

    end
end

genvar i;
generate
    for(i = 0; i < NUM_ROWS; i++) begin
        assign ready_vector[i] = (bit_matrix[i] == {NUM_COLS{1'b0}} && row_valid[i]);            
    end
endgenerate




endmodule
import CORE_PKG::*;

module WakeupLogic#(
    parameter NUM_ROWS = 8
    parameter NUM_COLS = 8
    parameter NUM_FUS = 4
)(
    input clk,
    input rst,
    input w_en,                       
    input [$clog2(NUM_ROWS)-1:0] w_row_index,       
    input [(NUM_COLS * NUM_FUS)-1:0] set_lines,                 
    input clear_en,
    input [(NUM_COLS * NUM_FUS)-1:0] clear_lines,                
    input free_en,       
    input [$clog2(NUM_ROWS)-1:0] free_row_index,     
    output [NUM_ROWS-1:0] request_vector
);


logic [(NUM_ROWS * NUM_FUS)-1:0] ready_vector;   

genvar i;
generate
    for(i = 1; i <= NUM_FUS; i++) begin
        
        
        DependencyMatrix matrix (
            .clk(clk),
            .rst(rst),
            .w_en(w_en),                       
            .w_row_index(w_row_index),       
            .set_lines(set_lines[(NUM_COLS*i)-1:(NUM_COLS*(i-1))]), 
            .clear_en(clear_en),      
            .clear_lines(clear_lines),                
            .free_en(free_en),       
            .free_row_index(free_row_index),     
            .ready_vector(ready_vector[(NUM_ROWS*i)-1:(NUM_ROWS*(i-1))]) 
        );
    end

    /* Supporting Specculative Wakeup

        *Put per row shift register here. Set shift_en[i] == total_ready_vector[i] and set
        request_vector[i] == LSB of reg.

        TODO: Need a way to set the shift value based on the latency of the completeing instruction.
        need to make sure that the latency is set by the most recent completing entry 

    */
    assign entry_ready[i-1] = ready_vector[(NUM_ROWS*i)-1:(NUM_ROWS*(i-1))] == '0;

    ShiftRegister delayed_request(
        .clk(clk),
        .rst(rst),
        .shift_en(entry_ready[i-1]), // M
        .w_en(),
        .latency_in(),
        .ready()
    );
    
    

endgenerate

endmodule
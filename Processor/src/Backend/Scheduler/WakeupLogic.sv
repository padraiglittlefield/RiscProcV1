import CORE_PKG::*;
`include wakeup_dispatch_if.svh 
`include wakeup_select_if.svh


module WakeupLogic#(
    parameter NUM_ROWS = 8
    parameter NUM_COLS = 8
    parameter NUM_FUS = 4
)(
    input logic clk,
    input logic rst,
    WakeupDispatchIF.Wwakeup wakeupDispatch
     
    output [NUM_ROWS-1:0] request_vector
);


logic [(NUM_ROWS * NUM_FUS)-1:0] ready_vector;  
//logic [NUM_ROWS-1:0] entry_ready [0:NUM_FUS-1]; 


// Signals for interacting with dependency matrix
logic w_en;                       
logic [$clog2(NUM_ROWS)-1:0] w_row_index;       
logic [(NUM_COLS * NUM_FUS)-1:0] set_lines;                 
logic clear_en;
logic [(NUM_COLS * NUM_FUS)-1:0] clear_lines;                
logic free_en;       
logic [$clog2(NUM_ROWS)-1:0] free_row_index;    
logic [7:0] entry_latency_in [0:NUM_FUS-1];

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
            .ready_vector(ready_vector[(NUM_ROWS*i)-1:(NUM_ROWS*(i-1))]),

        );
    end
    //assign entry_ready[i-1] = ready_vector[(NUM_ROWS*i)-1:(NUM_ROWS*(i-1))] == '0;    
endgenerate

logic entry_ready [(NUM_ROWS-1):0];

genvar j;
generate`
    for(j = 1; j<= NUM_ROWS; j++) begin
        
        ShiftRegister delayed_request(
            .clk(clk),
            .rst(rst),
            .shift_en(entry_ready),    // Match
            .w_en(),        // On select Rows  
            .latency_in(),  // entry_latency_in -> Written to when an instruction is allocated
            .ready(request_vector[(j-1)])        // 
        );

        assign entry_ready = {ready_vector[(j-1)+0],ready_vector[(j-1)+1],ready_vector[(j-1)+2]ready_vector[(j-1)+3]} == '0 // Must edit if we increase number of FUs
    end

endgenerate


logic empty;
assign wakeupDispatch.entry_free = !empty;

FIFO #(
    DEPTH = NUM_FUS
) FreeEntryQueue (
    .clk(clk),
    .rst(rst),
    .w_en(),
    .r_en(),
    .data_in()
    .data_out(),
    .full(full),
    .empty(empty)
);

endmodule
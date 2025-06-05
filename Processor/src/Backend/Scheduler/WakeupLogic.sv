import CORE_PKG::*;
`include wakeup_dispatch_if.svh 
`include wakeup_select_if.svh


module WakeupLogic#(
    parameter NUM_ROWS = 8
    parameter NUM_COLS = 8
)(
    input logic clk,
    input logic rst,
    WakeupDispatchIF.Wakeup wakeupDispatch
    
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


/* 
    Set Lines: [0 0 0 0] [0 0 0 0] [0 0 0 0] [0 0 0 0]
    src1_dp_loc: {7:4->FU_INDEX, 3:0->COL_INDEX}
    Set Lines [(src1_dp_loc[7:4]<< $clog2(NUM_FUS)) + src1_dp_loc[3:0]] = 1;
*/
always @(posedge clk) begin
    if(rst) begin
        set_lines <= '0;
    end else begin
        set_lines <= '0;
        if(wakeupDispatch.src1_dp_en) begin
            set_lines[(src1_dp_loc[7:4]<< $clog2(NUM_FUS)) + src1_dp_loc[3:0]] <= 1'b1;
        end
        if(wakeupDispatch.src2_dp_en) begin
            set_lines[(src2_dp_loc[7:4]<< $clog2(NUM_FUS)) + src2_dp_loc[3:0]] <= 1'b1;
        end
    end
end

assign w_en = dispatch_valid & entry_free;  // Only write when both the dispatched instruction is valid and we have room 
assign w_row_index = free_entry;

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
endgenerate

logic empty;
logic free_entry;
assign wakeupDispatch.entry_free = !empty;

assign w_en 


FIFO #(
    .DEPTH(NUM_FUS)
    ) FreeEntryQueue (
    .clk(clk),
    .rst(rst),
    .w_en(free_en),
    .data_in(free_entry),
    .r_en(w_en),
    .data_out(w_row_index),
    .full(full),
    .empty(empty)
);

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



endmodule
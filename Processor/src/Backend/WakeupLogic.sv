 import CORE_PKG::*;
`include wakeup_dispatch_if.svh 
`include wakeup_select_if.svh


module WakeupLogic#(
    
)(
    input logic clk,
    input logic rst,
    input logic clear_en,
    input logic [(NUM_COLS * NUM_FUS)-1:0] clear_lines,                
    WakeupDispatchIF.Wakeup wakeupDispatch,
    WakeupSelectIF.Wakeup  wakeupSelect,
    WakeupExecuteIF.Wakeup wakeupExecute
    
);

localparam NUM_ROWS = RS_ENTRIES;
localparam NUM_COLS = RS_ENTRIES;

logic [(NUM_ROWS * NUM_FUS)-1:0] ready_vector;  
//logic [NUM_ROWS-1:0] entry_ready [0:NUM_FUS-1]; 


// Signals for interacting with dependency matrix
logic w_en;                       
logic [$clog2(NUM_ROWS)-1:0] w_row_index;       
logic [(NUM_COLS * NUM_FUS)-1:0] set_lines;                 
//logic free_en;       
//logic [$clog2(NUM_ROWS)-1:0] free_row_index;    
logic [7:0] entry_latency_in [0:NUM_FUS-1];

genvar i;
generate
    for(i = 0; i < NUM_FUS; i++) begin
        DependencyMatrix #(
            .NUM_ROWS(NUM_ROWS),
            .NUM_COLS(NUM_COLS)
        ) matrix (
            .clk(clk),
            .rst(rst),
            .w_en(w_en),                       
            .w_row_index(w_row_index),       
            .set_lines(set_lines[(NUM_COLS*(i+1))-1:(NUM_COLS*i)]), 
            .clear_en(clear_en),      
            .clear_lines(clear_lines),                
            .free_en(wakeupExecute.free_en),       
            .free_row_index(fwakeupExecute.free_index),     
            .ready_vector(ready_vector[(NUM_ROWS*(i+1))-1:(NUM_ROWS*(i))])
        );
    end
endgenerate

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
            set_lines[src1_dp_loc[($clog2(NUM_FUS) + $clog2(NUM_COLS))-1 : $clog2(NUM_COLS)]<< $clog2(NUM_COLS) + src1_dp_loc[$clog2(NUM_COLS)-1:0]] <= 1'b1;
        end
        if(wakeupDispatch.src2_dp_en) begin
            set_lines[src2_dp_loc[($clog2(NUM_FUS) + $clog2(NUM_COLS))-1 : $clog2(NUM_COLS)]<< $clog2(NUM_COLS) + src2_dp_loc[$clog2(NUM_COLS)-1:0]] <= 1'b1;
        end
    end
end

assign w_en = dispatch_valid & entry_free;  // Only write when both the dispatched instruction is valid and we have room 


assign wakeupDispatch.entry_free = !empty;
assign wakeupDispatch.entry_index = w_row_index;


// FIFO to store the currently free entires of the reservation station. 
FIFO #(
    .DEPTH(NUM_FUS)
    ) FreeEntryQueue (
    .clk(clk),
    .rst(rst),
    .w_en(wakeupExecute.free_en),
    .data_in(wakeupExecute.free_entry),
    .r_en(w_en),
    .data_out(w_row_index),
    .full(full),
    .empty(empty)
);



/* Speculatve Instruction Wakeup
    ==============================
    - On the selection of an instruction, it will clear its entry line
    - When an instruction has both srcs "ready", it will enable the shift register
    - The shift register is loaded on the allocation of a entry with the latency of its dependency
        - TODO: Fix later:
            1. How do we know which latency was related to the most recently selected instruction
            2. How to handle replay logic on the selection of Loads as their latency is not guarenteed 
                \------> Probably just don't speculatively wakeup memory instructions as their latencies are so variable
                
*/

logic entry_ready [(NUM_ROWS-1):0];
logic [NUM_ROWS-1:0] request_vector;
genvar j;
generate
    for(j = 0; j < NUM_ROWS; j++) begin
        ShiftRegister delayed_request(
            .clk(clk),
            .rst(rst),
            .shift_en(entry_ready[j]),    // Match
            .w_en(wakeupDispatch.dispatch_valid),          
            .latency_in(wakeupDispatch.max_latency),  
            .ready(request_vector[j])        // 
        );
        genvar f;
        for (f = 0; f < NUM_FUS; f++) begin
            assign row_ready_bits[f] = ready_vector[f*NUM_ROWS + j];
        end
        assign entry_ready[j] = (row_ready_bits == '0);
        assign wakeupSelect.request_vector[j] = request_vector[j] & ~selected[j];   // Make sure we dont try and scheduled an instruction that has already been selected
    end
endgenerate

// Keep track of RS-Statiosn that have already been selected to avoid clogging 
logic selected [(NUM_ROWS-1):0];
always@(posedge clk) begin
    if(rst) begin
        selected = '0;
    end else begin
        if(wakeupSelect.grant_en) begin
            selected[wakeupSelect.grant_index] = 1'b1;
        end
        if(free_en) begin
            selected[wakeupExecute.free_index] = 1'b0;
        end
    end
end
endmodule
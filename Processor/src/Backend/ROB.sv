import CORE_PKG::*;

module ROB #(
    parameter RETIRE_WIDTH = 2
)(
    input clk,
    input rst,
    ExecuteROBIF.ROB execute,
    DispatchROBIF.ROB dispatch

);

localparam RETIRE_WIDTH_BITS = $clog2(RETIRE_WIDTH);
localparam RS_ENTRIES_BITS = $clog2(RS_ENTRIES);

// Declare Entry Ready DS
logic [RETIRE_WIDTH-1:0] fifo_rd_en;
logic [RS_ENTRIES-1:0] rob_entry_ready;               // Flattened 2-D Bit Matrix


logic [RETIRE_WIDTH_BITS-1:0] col;        // Used for determining correct r_en for the fifos
logic [RETIRE_WIDTH_BITS-1:0] num_reads;  // Counts the num of reads for determining which 
logic [RS_ENTRIES_BITS-1:0] rd_ptr;
logic [RS_ENTRIES_BITS-1:0] curr_idx, prev_idx;

// Determine which instructions we can retire
always @(posedge clk) begin
    
    col = rd_ptr[RETIRE_WIDTH_BITS-1:0];
    fifo_rd_en = '0;
    for (int i = 0; i < RETIRE_WIDTH; i++) begin
        curr_idx = (rd_ptr + i)[5:0];
        prev_idx = (rd_ptr + i - 1)[5:0];
        if (i == 0) begin
            fifo_rd_en[i] = rob_entry_ready[curr_idx];
        end else begin
            fifo_rd_en[i] = rob_entry_ready[curr_idx] & rob_entry_ready[prev_idx];
        end
    end

    // If the ptr wasnt on the first col, we need to rotate the en to match the actual fifos
    if(col != 0)
        fifo_rd_en = (fifo_rd_en << col) | (fifo_rd_en >> (RETIRE_WIDTH-col));
    
    // Determine how much to increment the read ptr by and increment it by that much
    num_reads = '0;
    for (int i = 0; i < RETIRE_WIDTH; i++) begin
        num_reads += fifo_rd_en[i];
    end

    rd_ptr += num_reads;
end

// Declare 4-FIFOs 
ROB_Entry [RETIRE_WIDTH_BITS-1:0] rob_entry_row;
genvar i;
generate 
for (i = 0; i < RETIRE_WIDTH; i++) begin
    FIFO #(
        .DEPTH(NUM_ROB_ENTS/RETIRE_WIDTH)
    ) ROB_Queue (
        .clk(clk),
        .rst(rst),
        .w_en(),
        .r_en(fifo_rd_en[i]),
        .data_in(),
        .data_out(rob_entry_row[i]),
        .full(),
        .empty()
    );
end
endgenerate

// Conenct FIFO Write to Dispatch 


// Connect Exectue to this 

// Write Results to A-REG
endmodule
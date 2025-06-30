import CORE_PKG::*;

module ROB #(

)(
    input clk,
    input rst,
    ExecuteROBIF.ROB Execute[3],
    DispatchROBIF.ROB Dispatch,
    ROBPhysRegFileIF.ROB ArchRegFile[RETIRE_WIDTH]

);

localparam RETIRE_WIDTH_BITS = $clog2(RETIRE_WIDTH);
localparam RS_ENTRIES_BITS = $clog2(RS_ENTRIES);

// Declare Entry Ready DS
logic [RS_ENTRIES-1:0] rob_entry_ready;               // Flattened 2-D Ready Bit Matrix
logic [31:0] rob_entry_val [RS_ENTRIES-1:0];          // Holds value from execute

logic [RETIRE_WIDTH-1:0] fifo_rd_en;
logic [31:0] fifo_vals [RETIRE_WIDTH-1:0];
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
        fifo_vals[i] = rob_entry_val[curr_idx];
    end

    // If the ptr wasnt on the first col, we need to rotate the en to match the actual fifos
    if(col != 0) begin
        fifo_rd_en = (fifo_rd_en << col) | (fifo_rd_en >> (RETIRE_WIDTH-col));
    end
    // Determine how much to increment the read ptr by and increment it by that much
    
    rob_entry_row
    num_reads = '0;
    
    for (int i = 0; i < RETIRE_WIDTH; i++) begin
        num_reads += fifo_rd_en[i];
        rob_entry_row[i].val = fifo_vals[(i + col) & (RETIRE_WIDTH - 1)]; // not so sure about this
    end

    rd_ptr += num_reads;
end

// Declare 4-FIFOs 
ROB_Entry [RETIRE_WIDTH-1:0] rob_entry_row;
genvar j;
generate 
for (j = 0; j < RETIRE_WIDTH; j++) begin
    FIFO #(
        .DEPTH(NUM_ROB_ENTS/RETIRE_WIDTH)
    ) ROB_Queue (
        .clk(clk),
        .rst(rst),
        .w_en(),
        .r_en(fifo_rd_en[j]),
        .data_in(),
        .data_out(rob_entry_row[j]),
        .full(),
        .empty()
    );
end
endgenerate

// Conenct FIFO Write to Dispatch 









// Connect Execute to Ready-Bit Matrix 
always@(posedge clk) begin
    if(rst) begin
        for(int i = 0; i < RS_ENTRIES; i++) begin
            rob_entry_ready[i] = '0;
            rob_entry_val[i] = '0;
        end
    end else 
        for(int i = 0; i < 2; i++) begin
            if(Execute[i].ex_valid) begin
                rob_entry_ready[Execute[i].entry_index] = 1'b1;
                rob_entry_val[Execute[i].entry_index] = Execute[i].ex_val;
            end
        end
    end
end


// Write Results to A-REG
for(int i = 0; i < RETIRE_WIDTH; i++) begin
    assign ArchRegFile.rob_valid[i] = fifo_rd_en[i];
    assign ArchRegFile.rob_dst_val[i] = rob_entry_row[i].val;
    assign ArchRegFile.rob_dst_index[i] = rob_entry_row[i].dst_reg;
end


endmodule
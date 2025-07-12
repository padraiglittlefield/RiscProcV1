import CORE_PKG::*;

module ROB #(

)(
    input clk,
    input rst,
    ExecuteROBIF.ROB ExecuteIF[3],
    DispatchROBIF.ROB DispatchIF[DISP_WIDTH],
    ROBPhysRegFileIF.ROB ArchRegFile[RETIRE_WIDTH],
    RenameROBIF.ROB RenameIF[RETIRE_WIDTH]

);

localparam RETIRE_WIDTH_BITS = $clog2(RETIRE_WIDTH);
localparam RS_ENTRIES_BITS = $clog2(RS_ENTRIES);

// Declare Entry Ready DS
logic [RS_ENTRIES-1:0] rob_entry_ready;               // Flattened 2-D Ready Bit Matrix
logic [31:0] rob_entry_val [RS_ENTRIES-1:0];          // Holds value from executeIF

logic [RETIRE_WIDTH-1:0] fifo_rd_en;
logic [31:0] fifo_vals [RETIRE_WIDTH-1:0];
logic [RETIRE_WIDTH_BITS-1:0] col;        // Used for determining correct r_en for the fifos
logic [RETIRE_WIDTH_BITS-1:0] num_reads;  // Counts the num of reads for determining which 
logic [RS_ENTRIES_BITS-1:0] rd_ptr;
logic [RS_ENTRIES_BITS-1:0] curr_idx, prev_idx;
// Determine which instructions we can retire
always @(posedge clk) begin
    if (rst) begin 
        rd_ptr <= '0;
    end else begin

        // Reading from the rob_entry_val
        col = rd_ptr[RETIRE_WIDTH_BITS-1:0];
        fifo_rd_en = '0;
        for (int i = 0; i < RETIRE_WIDTH; i++) begin
            curr_idx = (rd_ptr + i)[RS_ENTRIES_BITS-1:0];
            prev_idx = (rd_ptr + i - 1)[RS_ENTRIES_BITS-1:0];
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
        
        num_reads = '0;
        
        logic [31:0] retiring_vals [RETIRE_WIDTH-1:0];

        for (int i = 0; i < RETIRE_WIDTH; i++) begin
            num_reads += fifo_rd_en[i];
            retiring_vals[i] = fifo_vals[(i + col) & (RETIRE_WIDTH - 1)];
            assign ArchRegFile[i].rob_dst_val = retiring_vals[i];
        end


        rd_ptr <= rd_ptr + num_reads;
    end
end


// Declare Retire Width FIFOs 
genvar j;
ROB_Entry [RETIRE_WIDTH-1:0] rob_entry_row;
generate 
    for (j = 0; j < RETIRE_WIDTH; j++) begin
        FIFO #(
            .DEPTH(NUM_ROB_ENTS/RETIRE_WIDTH),
            .DATA_WIDTH($bits(ROB_Entry))
        ) ROB_Queue (
            .clk(clk),
            .rst(rst),
            .w_en(DispatchIF[j].entry_valid),
            .r_en(fifo_rd_en[j]),
            .data_in(DispatchIF[j].new_entry),
            .data_out(rob_entry_row[j]),
            .full(DispatchIF[j].rob_full),
            .empty()
        );

        if(j == 0) begin
            assign DispatchIF[j].rob_index = wr_ptr;
        end else begin
            assign DispatchIF[j].rob_index = wr_ptr + 1;
        end


        

    end
endgenerate

// Conenct FIFO Write to DispatchIF 

logic [RS_ENTRIES_BITS-1:0] wr_ptr;
always@(posedge clk) begin
    if(rst) begin
        wr_ptr <= '0;
    end else begin
        wr_ptr <= wr_ptr + (DispatchIF[0].entry_valid + DispatchIF[1].entry_valid); // Only works for DISPATCH Width = 2
    end
end


// Connect ExecuteIF to Ready-Bit Matrix 
always@(posedge clk) begin
    if(rst) begin
        for(int i = 0; i < RS_ENTRIES; i++) begin
            rob_entry_ready[i] <= '0;
            rob_entry_val[i] <= '0;
        end
    end else 
        for(int i = 0; i < 3; i++) begin
            if(ExecuteIF[i].ex_valid) begin
                rob_entry_ready[ExecuteIF[i].entry_index] <= 1'b1;
                rob_entry_val[ExecuteIF[i].entry_index] <= ExecuteIF[i].ex_val;
            end
        end
    end
end


/*  Retire Instructions
    - Write Results to A-REG
    - Free Dest Pregs
*/
for(int i = 0; i < RETIRE_WIDTH; i++) begin

    assign ArchRegFile[i].rob_valid = fifo_rd_en[i];
    assign ArchRegFile[i].rob_dst_val = rob_entry_row[i].val;
    assign ArchRegFile[i].rob_dst_index = rob_entry_row[i].dst_reg;

    assign RenameIF[i].preg_to_free = rob_entry_row[i].dst_preg;
    assign RenameIF[i].free_valid = fifo_rd_en[i];
end


endmodule
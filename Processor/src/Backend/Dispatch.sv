import CORE_PKG::*;

module Dispatch #(

)(
    input clk,
    input rst,
    input stall,
    RenameDispatchIF.Dispatch RenameIF[DISP_WIDTH],
    DispatchROBIF.Dispatch ROBIF[DISP_WIDTH],
    DispatchSelectIF.Dispatch SelectIF[NUM_FUS],
    WakeupDispatchIF.Dispatch WakeupIF[NUM_FUS]

);

localparam RS_IDX_WIDTH = $clog2(RS_ENTRIES)


// TODO: Not sure if this needs to go in rename or dispatch but we need a way to check if a preg is ready or not

/* IMPROVEMENTS
Dispatch is currently bottlenecked by the number of execution pipes, which in turn is bottlenecked by concerns with the register file.

    - In the next iteration, a more complex register file scheme (banked, split, whatever) needs to be devised to allow for more pipes
    - Additionally, hybrid pipes would be extremely useful here 


*/

Disp_uOP disp_uop_out [1:0];

logic stall_queue[DISP_WIDTH-1:0];
/* Dispatch Queue
    - Stores renamed instructions that are waiting to be allocated in the Reservation Stations
*/
logic [DISP_WIDTH-1:0] ex_pipe_dst;
logic [DISP_WIDTH-1:0] disp_en;
genvar i;
generate
    for(i = 0; i < DISP_WIDTH; i++) begin

        assign ex_pipe_dst[i] = RenameIF[i].instr_uop.ex_pipe_dst;
        assign stall_queue = stall & collision_stall;

        assign disp_en[i] = ~stall_queue & WakeupIF[ex_pipe_dst[i]].entry_free; // only dispatch if there are no stalls and there is a free rs in the target ex_pipe 

        FIFO #(
            .DEPTH(DISP_DEPTH/DISP_WIDTH),
            .DATA_WIDTH($bits(Disp_uOP))
        ) Dispatch_Queue (
            .clk(clk),
            .rst(rst),
            .w_en(RenameIF[i].instr_valid),
            .r_en(disp_en[i]),
            .data_in(RenameIF[i].instr_uop),
            .data_out(disp_uop_out[i]),
            .full(RenameIF[i].queue_full),
            .empty()
        );


    end
endgenerate

/* ROB Entry Allocation
    - ROB Entries are allocated in program order as soon as they enter the Dispatch Queue from Register Rename
*/
ROB_Entry new_rob_entries[1:0];
always_comb begin : ROB_Entry_Allocation
    for (int j = 0; j < DISP_WIDTH; j++) begin
        new_rob_entries[j].dst_reg  = RenameIF[i].instr_uop.dst_reg; 
        new_rob_entries[j].pc       = RenameIF[i].instr_uop.pc;
        ROBIF[j].new_entry          =  new_rob_entries[j];
    end    
end

/* Dispatch Collisions
    - Check for collisions in the instructions intended dst pipes. Stall accordingly. Switch the stall ptr in order to prevent 
        thrashing of a specific pipe
    - More advanced steering will need to be used in the futures
*/
logic stall_ptr;    
logic [1:0] collision_stall;
always@(posedge clk) begin
    if (rst) begin
        stall_ptr <= 1'b0;
    end else begin 
        if(ex_pipe_dst[0] == ex_pipe_dst[1]) begin // This logic is not fully parameterizable but thats fine
            collision_stall[stall_ptr] <= 1'b1;
            collision_stall[~stall_ptr] <= 1'b0;
            stall_ptr <= ~stall_ptr;
        end else begin
            collision_stall <= 2'b00;
        end
    end
end


/* Dependency Mapping Table 
    - Similar to a RAT sadly, hopefully a way to combine them
    - Contains the Reservation Station (RS) locations ({7:4->FU_INDEX, 3:0->COL_INDEX}) of 
    a dependent instruction
    - Need to read it to dispatch an instr and write to it after dispatching one
*/
logic [(FU_IDX_WIDTH + COL_IDX_WIDTH)-1:0] dst_dp_loc [DISP_WIDTH-1:0];
logic [(FU_IDX_WIDTH + COL_IDX_WIDTH)-1:0] src1_dp_loc [DISP_WIDTH-1:0];
logic [(FU_IDX_WIDTH + COL_IDX_WIDTH)-1:0] src2_dp_loc [DISP_WIDTH-1:0];

// Declaring the DMT
logic [(FU_IDX_WIDTH + COL_IDX_WIDTH)-1:0] DMT [NUM_PREGS-1:0];

// Reading from the DMT
genvar k;
generate
    for (k = 0; k < DISP_WIDTH; k++) begin
        src1_dp_loc[k] = DMT[disp_uop_out[i].src1_index];
        src2_dp_loc[k] = DMT[disp_uop_out[i].src2_index];
    end
endgenerate

// Writing to translation

always@(posedge clk) begin : write_dmt
    if(rst) begin
        for(int i = 0; i<NUM_PREGS;i++) begin
            DMT[i] <= '0;
        end
    end else begin
        for(int i = 0; i < DISP_WIDTH; i++) begin // Write the mapping to a rs-station
            DMT[disp_uop_out[i].dst_preg] <= dst_dp_loc[i];
        end
    end
end


/*  Reservation Station (Wakeup) Entry Allocation
    - Entries are allocated in wakeup on being dispatched
*/

genvar j;
logic[RS_IDX_WIDTH-1:0] entry_index [1:0]; // The RS entry that is free 
generate
    for (j = 0; j < DISP_WIDTH; j++) begin : assign_rs_entry

        assign entry_index[j] = WakeupIF[ex_pipe_dst[j]].entry_index; //used for 
        
        if(disp_en[j]) begin    // ensures the dispatch is valid and there is an available entry
            assign WakeupIF[ex_pipe_dst[j]].dispatch_valid = 1'b1;
            assign WakeupIF[ex_pipe_dst[j]].latency_in = ex_pipe_dst[j] != LSU ? disp_uop_out[j].latency : '1;
            
            assign WakeupIF[ex_pipe_dst[j]].src1_dp_en = disp_uop_out[j].src1_dp_en;
            assign WakeupIF[ex_pipe_dst[j]].src1_dp_loc = src1_dp_loc[j];
            
            assign WakeupIF[ex_pipe_dst[j]].src2_dp_en = disp_uop_out[j].src2_dp_en;
            assign WakeupIF[ex_pipe_dst[j]].src2_dp_loc = src2_dp_loc[j];
        end

        assign dst_dp_loc[j] = {ex_pipe_dst[j],entry_index[j]};
    end
endgenerate




/*  Payload (Select) Dump
    - Instructions are dumped to the payload on being dispatched
    - use entry_index[i] and ex_pipe_dst[i] to index into a selects payload
*/

genvar l;
generate
    for(l = 0; l < DISP_WIDTH; l++) begin
        SelectIF[ex_pipe_dst[l]].disp_uop            = disp_uop_out[l];
        SelectIF[ex_pipe_dst[l]].disp_valid          = disp_en[l];
        SelectIF[ex_pipe_dst[l]].payload_ram_index   = entry_index[l];
    end
endgenerate    

endmodule
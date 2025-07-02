import CORE_PKG::*;

module Dispatch #(

)(
    input clk,
    input rst,
    input stall.
    RenameDispatchIF.Dispatch RenameIF[DISP_WIDTH],
    DispatchSelectIF.Dispatch SelectIF[DISP_WIDTH],
    DispatchROBIF.Dispatch ROBIF[DISP_WIDTH],
    WakeupDispatchIF.Dispatch WakeupIF[NUM_FUS]

);

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

        // only dispatch if there are no stalls and there is a free rs in the target ex_pipe
        assign disp_en[i] = ~stall_queue & WakeupIF[ex_pipe_dst[i]].entry_free;

        FIFO #(
            .DEPTH() // TODO: Correct depth and add data sizing parameter somehow
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


/* Dependency Mapping Alias Table
    - Contains the Reservation Station (RS) locations ({7:4->FU_INDEX, 3:0->COL_INDEX}) of 
    a dependent instruction
*/



/*  Reservation Station (Wakeup) Entry Allocation
    - Entries are allocated in wakeup on being dispatched
*/

genvar j;
generate
    for (j = 0; j < DISP_WIDTH; j++) begin
        //disp_uop_out[i]
        //disp_en[j]
    end
endgenerate




/*  Payload (Select) Dump
    - Instructions are dumped to the payload on being dispatched
*/





endmodule
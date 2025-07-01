import CORE_PKG::*;

module Dispatch #(

)(
    input clk,
    input rst,
    input stall.
    RenameDispatchIF.Dispatch RenameIF[DISP_WIDTH],
    DispatchSelectIF.Dispatch SelectIF[DISP_WIDTH],
    DispatchROBIF.Dispatch ROBIF[DISP_WIDTH],
    WakeupDispatchIF.Dispatch WakeupIF[DISP_WIDTH]

);

/* FIX LATER 
Dispatch is currently bottlenecked by the number of execution pipes, which in turn is bottlenecked by concerns with the register file.

    - In the next iteration, a more complex register file scheme (banked, split, whatever) needs to be devised to allow for more pipes
    - Additionally, hybrid pipes would be extremely useful here 

*/


/* Dispatch Queue
    - Stores renamed instructions that are waiting to be allocated in the Reservation Stations
*/
genvar i;
generate
    for(i = 0; i < DISP_WIDTH; i++) begin
    FIFO #(
        .DEPTH() // TODO: Correct depth and add data sizing parameter somehow
    ) Dispatch_Queue (
        .clk(clk),
        .rst(rst),
        .w_en(RenameIF[i].instr_valid),
        .r_en(),
        .data_in(RenameIF[i].instr_uop),
        .data_out(),
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
logic [1:0] stall_queue;
logic stall_ptr;    
always@(posedge clk) begin
    if (rst) begin
        stall_ptr <= 1'b0;
    end else begin 
        if(RenameIF[0].instr_uop.ex_pipe_dst == RenameIF[1].instr_uop.ex_pipe_dst) begin
            stall_queue[stall_ptr] <= 1'b1;
            stall_queue[~stall_ptr] <= 1'b0;
            stall_ptr <= ~stall_ptr;
        end else begin
            stall_queue <= 2'b00;
        end
    end
end



/*  Reservation Station (Wakeup) Entry Allocation
    - Entries are allocated in wakeup on being dispatched
*/



/*  Payload (Select) Dump
    - Instructions are dumped to the payload on being dispatched
*/


endmodule
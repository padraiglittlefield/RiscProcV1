import CORE_PKG::*;

module Dispatch #(

)(
    input clk,
    input rst,
    RenameDispatchIF.Dispatch RenameIn[DISP_WIDTH]
    DispatchSelectIF.Dispatch SelectOut[DISP_WIDTH],
    DispatchROBIF.Dispatch ROBOut[DISP_WIDTH],
    WakeupDispatchIF.Dispatch WakeupOut[DISP_WIDTH]

);



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
        .w_en(RenameIn[i].instr_valid),
        .r_en(),
        .data_in(RenameIn[i].instr_uop),
        .data_out(),
        .full(RenameIn[i].queue_full),
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
        new_rob_entries[j].dst_reg  = RenameIn[i].instr_uop.dst_reg; 
        new_rob_entries[j].pc       = RenameIn[i].instr_uop.pc;
        ROBOut[j].new_entry         =  new_rob_entries[j];
    end    
end


/*  Reservation Station (Wakeup) Entry Allocation
    - Entries are allocated in wakeup on being dispatched
*/



/*  Payload (Select) Dump
    - Instructions are dumped to the payload on being dispatched
*/


endmodule
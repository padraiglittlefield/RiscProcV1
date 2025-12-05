/*

Functions:
    1. Init wakeup and select and connect them together
    2. Read in inputs from dispatch and execute and put them in the format expected by wakeup.
    3. Pass instructions from select to register read
*/

import CORE_PKG::*;

module scheduler (
    input logic clk,
    input logic rst,
    dispatch_scheduler_if.scheduler disp_if,
    scheduler_reg_read_if.scheduler reg_read_if
);

wakeup wakeup (
    .clk(clk),
    .rst(rst),
    .disp_valid(),                                 
    .dependency_mask(), 
    .free_entry_out(),
    .full_out(),
    .reqs(reqs),
    .grant(grant),
    .grant_valid(grant_valid),
    .ready_mask(),
    .retire_entry(),        
    .retire_valid()        
);

logic [(RS_ENTRIES)-1:0] reqs;
logic [($clog2(RS_ENTRIES))-1:0] grant;
logic grant_valid;


/* ===== Select =====*/
select select (
    .clk(clk),
    .rst(valid),
    .reqs(reqs),
    .grant(grant),
    .grant_valid(grant_valid) 
);

disp_packet_t payload_ram [RS_ENTRIES];


endmodule

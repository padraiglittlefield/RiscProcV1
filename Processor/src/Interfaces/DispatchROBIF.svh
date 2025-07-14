/*
    Interface between Dispatch and ROB
*/
`ifndef DISP_ROB_IF
`define DISP_ROB_IF
import CORE_PKG::*;

interface DispatchROBIF;


    ROB_Entry new_entry;
    //logic ROB Index //TODO: Add ROB Entry index for later when we need to index into it  

    modport Dispatch (
        input rob_index, rob_full,
        output new_entry, entry_valid
        
    );

    modport ROB (
        input new_entry, entry_valid,
        output rob_index, rob_full
        
    );

endinterface
`endif
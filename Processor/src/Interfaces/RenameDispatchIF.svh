/*
    Interface between Rename and Dispatch
*/
`ifndef RENAME_DISP_IF
`define RENAME_DISP_IF
import CORE_PKG::*;

interface RenameDispatchIF;

    Disp_uOP instr_uop;
    logic instr_valid;

    logic queue_full;

    modport Rename (
        input queue_full,
        output instr_uop, instr_valid
    );

    modport Dispatch (
      input _, 
      output _,
        
    );


endinterface
`endif
/*
    Interface between Execute and ROB
*/
`ifndef ROB_EXECUTE_IF
`define ROB_EXECUTE_IF
import CORE_PKG::*;

interface ROBExecuteIF;


    logic br_mispred;

    modport ROB (
      input br_mispred, entry_index
      output _,
        
    );

    modport Execute (
        input _,
        output br_mispred, entry_index
    );

endinterface
`endif
/*
    Interface between Execute and ROB
*/
`ifndef ROB_EXECUTE_IF
`define ROB_EXECUTE_IF
import CORE_PKG::*;

interface ROBExecuteIF;


    logic br_mispred;
    logic exception;
    logic [$clog2(RS_ENTRIES)-1:0] entry_index;
    logic ex_valid;
    logic [31:0] ex_val;


    modport ROB (
      input br_mispred, entry_index, ex_val, exception, ex_valid
        
    );

    modport Execute (
        output br_mispred, entry_index, ex_val, exception, ex_valid
    );

endinterface
`endif
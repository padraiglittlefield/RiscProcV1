/*
    Interface between Execute and the Physical Regfile
*/
`ifndef EXECUTE_REG_FILE_IF
`define EXECUTE_REG_FILE_IF
import CORE_PKG::*;

interface ExecutePhysRegFileIF;

    logic ex_valid;
    logic [31:0] ex_dst_val;
    logic [$clog2(NUM_PREGS)-1:0] ex_dst_index;

    modport Execute (
        output ex_valid, ex_dst_val, ex_dst_index
        
    );

    modport PhysRegFile (
        input ex_valid, ex_dst_val, ex_dst_index
    );

endinterface
`endif
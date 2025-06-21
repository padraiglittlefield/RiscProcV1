/*
    Interface between Dispatch and Wakeup
*/
`ifndef EXECUTEs_REG_FILE_IF
`define EXECUTEs_REG_FILE_IF
import CORE_PKG::*;

interface ExecutePhysRegFileIF;

    logic ex_valid;
    logic [31:0] ex_dst_val;
    logic [$clog2(NUM_PREGS)-1:0] ex_dst_index;

    modport Execute (
        output ex_vald, ex_dst_val, ex_dst_index
        
    );

    modport PhysRegFile (
        input ex_vald, ex_dst_val, ex_dst_index
    );

endinterface
`endif
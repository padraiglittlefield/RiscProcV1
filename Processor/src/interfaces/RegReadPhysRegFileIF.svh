/*
    Interface between Dispatch and Wakeup
*/
`ifndef REG_READ_REG_FILE_IF
`define REG_READ_REG_FILE_IF
import CORE_PKG::*;

interface RegReadPhysRegFileIF;

    logic [$clog2(NUM_PREGS)-1:0] src1_index;
    logic [31:0] src1_val;
    logic [$clog2(NUM_PREGS)-1:0] src2_index;
    logic [31:0] src2_val;

    modport RegRead (
        input src1_val, src2_val,
        output src1_index, src2_index
        
    );

    modport PhysRegFile (
        input src1_index, src2_index
        output src1_val, src2_val,
    );

endinterface
`endif
/*
    Interface between ROB and Arch Reg File
*/
`ifndef ROB_REG_FILE_IF
`define ROB_REG_FILE_IF
import CORE_PKG::*;

interface ROBArchRegFileIF;

    logic rob_valid;
    logic [31:0] rob_dst_val;
    logic [$clog2(NUM_AREGS)-1:0] rob_dst_index;

    modport ROB (
        output rob_valid, rob_dst_val, rob_dst_index
        
    );

    modport ArchRegFile (
        input rob_valid, rob_dst_val, rob_dst_index
    );

endinterface
`endif
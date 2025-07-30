/*
    Interface between Rename and the RAT
*/
`ifndef RENAME_RAT_IF
`define RENAME_RAT_IF
import CORE_PKG::*;

interface RenameRATIF;

    // Read Ports
    logic [$clog2(NUM_AREGS)-1:0] areg_in [1:0];           // the areg to be translated
    logic [$clog2(NUM_PREGS)-1:0] preg_alias_out [1:0];   // the preg alias for that areg
    
    // Write Ports
    logic [RENAME_WIDTH-1:0] w_en;
    logic [$clog2(NUM_AREGS)-1:0] w_dst_areg; 
    logic [$clog2(NUM_PREGS)-1:0] w_new_alias;

modport Rename (
    input areg_in, w_en, w_dst_areg, w_new_alias,
    output preg_alias_out
);

modport RAT(
    input preg_alias_out,
    output areg_in, w_en, w_dst_areg, w_new_alias
);

endinterface
`endif 

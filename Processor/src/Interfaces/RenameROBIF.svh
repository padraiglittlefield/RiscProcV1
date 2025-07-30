/*
    Interface between Rename and the ROB
*/
`ifndef RENAME_ROB_IF
`define RENAME_ROB_IF
import CORE_PKG::*;

interface RenameROBIF;

logic free_valid;
logic [$clog2(NUM_PREGS)-1:0] preg_to_free;

modport Rename (
    input preg_to_free, free_valid
);

modport ROB (
    output preg_to_free, free_valid
);

endinterface
`endif 

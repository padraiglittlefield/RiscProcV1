/*
    Interface between Rename and the ROB
*/
`ifndef RENAME_ROB_IF
`define RENAME_ROB_IF
import CORE_PKG::*;

interface RenameROBIF;

modport Rename (
    input _,
    output _
);

modport ROB (
    input _,
    output _
);

endinterface
`endif 

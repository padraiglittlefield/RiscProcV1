/*
    Interface between Execute and Memory Management Unit
*/
`ifndef EXECUTE_MMU_IF
`define EXECUTE_MMU_IF
import CORE_PKG::*;

interface ExecuteMMUIF;

    logic addr_valid;
    logic [31:0] mem_addr
    
    modport Execute (
        output addr_valid, mem_addr
    );

    modport MMU (
      input addr_valid, mem_addr
    );

endinterface
`endif
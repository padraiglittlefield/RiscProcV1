/*
    Interface between Select and RegRead
*/
`ifndef SELECT_REGREAD_IF
`define SELECT_REGREAD_IF
import CORE_PKG::*;

interface RegReadExecuteIF;

    localparam NUM_EX_PIPES = 4;

    Ex_uOP ex_uop;              // Pass through signal
    logic [NUM_EX_PIPES-1:0] execute_valid;
    logic [$clog2(NUM_PREGS)-1:0] bypass_dst [NUM_EX_PIPES-1:0];
    logic [31:0] bypass_value [NUM_EX_PIPES-1:0];


    modport Execute (
      input ex_uop,
      output execute_valid, bypass_dst, bypass_value
        
    );

    modport RegRead (
        input execute_valid, bypass_dst, bypass_value,    
        output ex_uop 
    );

endinterface
`endif
/*
    Interface between Dispatch and Wakeup
*/
`ifndef DISP_WAKEUP_IF
`define DISP_WAKEUP_IF
import CORE_PKG::*;

interface WakeupDispatchIF;

    logic store_instr_indicator;

    modport Dispatch (
      
        output store_instr_indicator, operation_type, memory_address, data_to_be_written_to_sram, bytes_select,
        input data, hit_indicator
    );

    modport Wakeup (
        output data, hit_indicator,
        input store_instr_indicator, operation_type, memory_address, data_to_be_written_to_sram, bytes_select

    );
endinterface
`endif
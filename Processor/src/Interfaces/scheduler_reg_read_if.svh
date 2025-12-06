`ifndef SCHED_REG_READ
`define SCHED_REG_READ

import CORE_PKG::*;

interface scheduler_reg_read_if;

    disp_packet_t sched_pkt;
    logic fire_valid;

    modport scheduler (
        output fire_valid, sched_pkt
    );

    modport reg_read(
        input fire_valid, sched_pkt
    );
    
endinterface
`endif

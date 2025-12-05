`ifndef SCHED_REG_READ
`define SCHED_REG_READ
interface scheduler_reg_read_if;


    modport scheduler (

    );

    modport reg_read(

    );
    
endinterface
`endif

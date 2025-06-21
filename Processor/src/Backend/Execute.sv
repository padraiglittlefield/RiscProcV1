module Execute (
    input logic clk,
    input logic rst,
    RegReadExecuteIF.Execute rr_pipes[4],
    ExecutePhysRegFileIF.Execute wr_pipes[3]
);

Ex_uOP ex_pipe1_uop = rr_pipes[0].ex_uop;
Ex_uOP ex_pipe2_uop = rr_pipes[1].ex_uop;
Ex_uOP ex_pipe3_uop = rr_pipes[2].ex_uop;
Ex_uOP ex_pipe4_uop = rr_pipes[3].ex_uop;


// Define functtional units
ALU alu1 (
    .clk(clk),
    .rst(rst),
    .opcode(),
    .val1(ex_pipe1_uop.src1_val),
    .val2(ex_pipe1_uop.src2_val),
    .aluout(),
    .aluout_valid(),
    .br_cond()
);

ALU alu2 (
    .clk(clk),
    .rst(rst)
);

Multiply mul (
    .clk(clk),
    .rst(rst)

);

AGU agu (
    .clk(clk),
    .rst(rst)

);



endmodule

  
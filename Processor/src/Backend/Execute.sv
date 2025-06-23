module Execute (
    input logic clk,
    input logic rst,
    RegReadExecuteIF.Execute rr_pipes[4],           // Register Read Pipes
    ExecutePhysRegFileIF.Execute wb_pipes[3],       // Phys Reg WB / Bypass Pipes
    ExecuteROBIF.Execute su_pipes[3]                // State Update (ROB Update) Pipes

);


// Execute Pipe 1 (ALU-1)
Ex_uOP ex_pipe1_uop = rr_pipes[0].ex_uop;
logic [31:0] aluout_ex1;
logic alu_valid_ex1;
logic br_cond_ex1;

assign su_pipes[0].br_mispred = br_cond_ex1 ^ ex_pipe1_uop.br_taken;


// Execute Pipe 2 (ALU-2)
Ex_uOP ex_pipe2_uop = rr_pipes[1].ex_uop;
logic [31:0] aluout_ex2;
logic alu_valid_ex2;
logic br_cond_ex2;

assign su_pipes[0].br_mispred = br_cond_ex2 ^ ex_pipe2_uop.br_taken;

// Execute Pipe 3 (MUL)
Ex_uOP ex_pipe3_uop = rr_pipes[2].ex_uop;

// Execute Pipe 4 (AGU+MMU)
Ex_uOP ex_pipe4_uop = rr_pipes[3].ex_uop;


// Define functtional units
ALU alu1 (
    .clk(clk),
    .rst(rst),
    .alu_en(ex_pipe1_uop.alu_en),
    .opcode(ex_pipe1_uop.opcode),
    .val1(ex_pipe1_uop.src1_val),
    .val2(ex_pipe1_uop.src2_val),
    .aluout(aluout_ex1),
    .aluout_valid(alu_valid_ex1),
    .br_cond(br_cond_ex1)
);

ALU alu2 (
    .clk(clk),
    .rst(rst),
    .alu_en(ex_pipe2_uop.alu_en),
    .opcode(ex_pipe2_uop.opcode),
    .val2(ex_pipe2_uop.src1_val),
    .val2(ex_pipe2_uop.src2_val),
    .aluout(aluout_ex2),
    .aluout_valid(alu_valid_ex2),
    .br_cond(br_cond_ex2)
);



/* TODO: In Decode: 

    1. mul rd, rs1, rs2 → rd = (rs1 × rs2)[31:0]

    2. mulh rd, rs1, rs2 → signed × signed high: rd = (signed rs1 × signed rs2) >> 32

    3. mulhu rd, rs1, rs2 → unsigned × unsigned high: rd = (unsigned rs1 × unsigned rs2) >> 32

    4. mulhsu rd, rs1, rs2 → signed rs1 × unsigned rs2 high
*/
//TODO: Where does the rest of the instr information go during the 3-cycles? (need payload of sorts)
multiplier mul (
    .clk(clk),
    .rst(rst),
    .enable(ex_pipe3_uop.mul_en),
    .rs1(ex_pipe3_uop.src1_val),
    .rs2(ex_pipe3_uop.src2_val),
    .lo(),    
    .hi() 
);



AGU agu (
    .clk(clk),
    .rst(rst)
);

endmodule

  
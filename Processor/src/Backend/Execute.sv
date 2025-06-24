module Execute #(
    parameter int NUM_EX_PIPES = 4,
    parameter int NUM_WB_PIPES = 4,
    parameter int NUM_SU_PIPES = 3
)(
    input logic clk,
    input logic rst,
    RegReadExecuteIF.Execute rr_pipes[NUM_EX_PIPES],           // Register Read Pipes
    ExecutePhysRegFileIF.Execute wb_pipes[NUM_WB_PIPES],       // Phys Reg WB / Bypass Pipes
    ExecuteROBIF.Execute su_pipes[NUM_SU_PIPES]                // State Update (ROB Update) Pipes

);

// Collect uOP from the RR pipes
Ex_uOP ex_pipe_uop [NUM_EX_PIPES];
    for (genvar i = 0; i < NUM_EX_PIPES; i++) begin
        assign ex_pipe_uop[i] = rr_pipes[i].ex_uop;
end

// ***Execute Pipe 1 & 2 (ALU-1)***
logic [1:0] br_cond;
for (genvar i = 0; i < 2; i++) begin : gen_alu
    ALU alu (
        .clk(clk),
        .rst(rst),
        .alu_en(ex_pipe_uop[i].alu_en),
        .opcode(ex_pipe_uop[i].opcode),
        .val1(ex_pipe_uop[i].src1_val),
        .val2(ex_pipe_uop[i].src2_val),
        .aluout(wb_pipes[i].ex_dst_val),
        .aluout_valid(wb_pipes[i].ex_valid),
        .br_cond(br_cond[i])
    );

    assign su_pipes[i].br_mispred   = br_cond[i] ^ ex_pipe_uop[i].br_taken;
    assign wb_pipes[i].ex_dst_index = ex_pipe_uop[i].dst_reg;
end



// ***Execute Pipe 3 (MUL)***
/* TODO: In Decode: 

    1. mul rd, rs1, rs2 → rd = (rs1 × rs2)[31:0]

    2. mulh rd, rs1, rs2 → signed × signed high: rd = (signed rs1 × signed rs2) >> 32

    3. mulhu rd, rs1, rs2 → unsigned × unsigned high: rd = (unsigned rs1 × unsigned rs2) >> 32

    4. mulhsu rd, rs1, rs2 → signed rs1 × unsigned rs2 high
*/
/*TODO: MUL is different because of the delayed nature (3 cycles) 
    - Where does the rest of the instr information go during the 3-cycles? (need payload of sorts)
*/
logic [31:0] mul_out_hi;
logic [31:0] mul_out_lo;
logic mul_out_valid;

Ex_uOP mul_stage1, mul_stage2, mul_stage3;

Multiplier mul (
    .clk(clk),
    .rst(rst),
    .enable(ex_pipe_uop[2].mul_en),
    .rs1(ex_pipe_uop[2].src1_val),
    .rs2(ex_pipe_uop[2].src2_val),
    .lo(mul_out_lo),
    .hi(mul_out_hi),
    .mul_valid(mul_out_valid)
);

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        mul_stage1 <= '0;
        mul_stage2 <= '0;
        mul_stage3 <= '0;
    end else begin
        mul_stage1 <= ex_pipe_uop[2];
        mul_stage2 <= mul_stage1;
        mul_stage3 <= mul_stage2;
    end
end
//TODO: Add logic here to figure out what to set the output of the mul based on the opcode (need to finish decode first)

assign wb_pipes[2].ex_dst_val   = mul_out_lo;
assign wb_pipes[2].ex_valid     = mul_out_valid;
assign wb_pipes[2].ex_dst_index = mul_stage3.dst_reg;


// ***Execute Pipe 4 (AGU+MMU)***
logic agu_valid;
logic [31:0] agu_result;

AGU agu (
    //.clk(clk),
    .rst(rst),
    .src1(ex_pipe_uop[3].src1_val),
    .src2(ex_pipe_uop[3].src2_val),
    .agu_en(ex_pipe_uop[3].agu_en),
    .valid(agu_valid),
    .result(agu_result)
);

assign wb_pipes[3].ex_dst_val   = agu_result;
assign wb_pipes[3].ex_valid     = agu_valid;
assign wb_pipes[3].ex_dst_index = ex_pipe_uop[3].dst_reg;

endmodule

  
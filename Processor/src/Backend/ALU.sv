module ALU (
  input logic clk,
  input logic rst,
);

  reg br_cond_AGEX; // 1 means a branch condition is satisified. 0 means a branch condition is not satisifed
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
  wire is_br_AGEX;
  wire is_jmp_AGEX;
  wire rd_mem_AGEX;
  wire wr_mem_AGEX;
  wire wr_reg_AGEX;
  wire [`REGNOBITS-1:0] wregno_AGEX;

  wire [`DBITS-1:0] regval1_AGEX;
  wire [`DBITS-1:0] regval2_AGEX;
  wire [`DBITS-1:0] sxt_imm_AGEX;

  reg [`DBITS-1:0] aluout_AGEX;
  reg [`DBITS-1:0] memaddr_AGEX;
  reg [`DBITS-1:0] br_target_AGEX;
  wire br_mispred_AGEX;
  wire is_brjmp_AGEX;
  wire do_brjmp_AGEX;
  wire [7:0] pc_xor_bhr_AGEX;

  
  always @ (*) begin
    case (op_I_AGEX)
    `BEQ_I : br_cond_AGEX = (regval1_AGEX == regval2_AGEX);
    `BNE_I : br_cond_AGEX = (regval1_AGEX != regval2_AGEX);
    `BLT_I : br_cond_AGEX = ($signed(regval1_AGEX) < $signed(regval2_AGEX));
    `BGE_I : br_cond_AGEX = ($signed(regval1_AGEX) >= $signed(regval2_AGEX));
    `BLTU_I: br_cond_AGEX = (regval1_AGEX < regval2_AGEX);
    `BGEU_I: br_cond_AGEX = (regval1_AGEX >= regval2_AGEX);
    default: br_cond_AGEX = 1'b0;
    endcase
  end

  // Compute ALU operations  (alu out or memory addresses)
  always @ (*) begin
    case (op_I_AGEX)
    `ADD_I:   aluout_AGEX = regval1_AGEX + regval2_AGEX; 
    `SUB_I:   aluout_AGEX = regval1_AGEX - regval2_AGEX; 
    `AND_I:   aluout_AGEX = regval1_AGEX & regval2_AGEX; 
    `OR_I:    aluout_AGEX = regval1_AGEX | regval2_AGEX; 
    `XOR_I:   aluout_AGEX = regval1_AGEX ^ regval2_AGEX; 
    `SLT_I:   aluout_AGEX = ($signed(regval1_AGEX) < $signed(regval2_AGEX)) ? 1 : 0; 
    `SLTU_I:  aluout_AGEX = (regval1_AGEX < regval2_AGEX) ? 1 : 0;
    `SRA_I:   aluout_AGEX = $signed(regval1_AGEX) >>> $signed(regval2_AGEX[4:0]); 
    `SRL_I:   aluout_AGEX = regval1_AGEX >> regval2_AGEX[4:0]; 
    `SLL_I:   aluout_AGEX = regval1_AGEX << regval2_AGEX[4:0]; 
    `MUL_I:   aluout_AGEX = $signed(regval1_AGEX) * $signed(regval2_AGEX);
    `ADDI_I:  aluout_AGEX = regval1_AGEX + sxt_imm_AGEX; 
    `ANDI_I:  aluout_AGEX = regval1_AGEX & sxt_imm_AGEX; 
    `ORI_I:   aluout_AGEX = regval1_AGEX | sxt_imm_AGEX; 
    `XORI_I:  aluout_AGEX = regval1_AGEX ^ sxt_imm_AGEX;
    `SLTI_I:  aluout_AGEX = ($signed(regval1_AGEX) < $signed(sxt_imm_AGEX)) ? 1 : 0; 
    `SLTIU_I: aluout_AGEX = (regval1_AGEX < sxt_imm_AGEX) ? 1 : 0;
    `SRAI_I:  aluout_AGEX = $signed(regval1_AGEX) >>> $signed(sxt_imm_AGEX[4:0]); 
    `SRLI_I:  aluout_AGEX = regval1_AGEX >> sxt_imm_AGEX[4:0];
    `SLLI_I:  aluout_AGEX = regval1_AGEX << sxt_imm_AGEX[4:0];
    `LUI_I:   aluout_AGEX = sxt_imm_AGEX; 
    `AUIPC_I: aluout_AGEX = PC_AGEX + sxt_imm_AGEX;
    `JAL_I,
    `JALR_I:  aluout_AGEX = pcplus_AGEX;
    `LW_I:    memaddr_AGEX = regval1_AGEX + sxt_imm_AGEX;
    `SW_I: begin 
      memaddr_AGEX = regval1_AGEX + sxt_imm_AGEX;
      aluout_AGEX = regval2_AGEX; 
    end
    default: begin 
      aluout_AGEX  = '0;
      memaddr_AGEX = '0;		  
    end
    endcase
  end 

  // branch target needs to be computed here 
  // computed branch target needs to send to other pipeline stages (br_target_AGEX)
  always @(*)begin
    if (op_I_AGEX == `JAL_I) 
      br_target_AGEX  = PC_AGEX + sxt_imm_AGEX;
    else if (op_I_AGEX == `JR_I)
      br_target_AGEX = regval1_AGEX; 
    else if (op_I_AGEX == `JALR_I)
      br_target_AGEX = (regval1_AGEX + sxt_imm_AGEX) & 32'hfffffffe; 
    else if (is_br_AGEX && br_cond_AGEX) 
      br_target_AGEX = PC_AGEX + sxt_imm_AGEX; 
    else 
      br_target_AGEX = pcplus_AGEX;        
  end

  assign br_mispred_AGEX = ((is_br_AGEX || is_jmp_AGEX) 
                         && (br_target_AGEX != pcnext_AGEX)) ? 1 : 0;

  assign is_brjmp_AGEX = is_br_AGEX || is_jmp_AGEX;
  assign do_brjmp_AGEX = (is_br_AGEX && br_cond_AGEX) || is_jmp_AGEX;
  
//   assign {
//     valid_AGEX,
//     inst_AGEX,
//     PC_AGEX,
//     pcplus_AGEX,
//     pcnext_AGEX,
//     op_I_AGEX,
//     regval1_AGEX,
//     regval2_AGEX,
//     sxt_imm_AGEX,                                
//     is_br_AGEX,
//     is_jmp_AGEX,
//     rd_mem_AGEX,
//     wr_mem_AGEX,
//     wr_reg_AGEX,
//     wregno_AGEX,
//     pc_xor_bhr_AGEX
//   } = from_DE_latch;    
 
//   assign AGEX_latch_contents = {
//     valid_AGEX,
//     inst_AGEX,
//     PC_AGEX,
//     op_I_AGEX,
//     memaddr_AGEX, 
//     aluout_AGEX,
//     rd_mem_AGEX,
//     wr_mem_AGEX,
//     wr_reg_AGEX,
//     wregno_AGEX
//   }; 
 
  // Update AGEX latch
  always @ (posedge clk) begin
    if (reset) begin
      AGEX_latch <= '0;
    //TODO: part2/bonus modify as necessary
    end else begin
      AGEX_latch <= AGEX_latch_contents ;
    end 
  end

endmodule
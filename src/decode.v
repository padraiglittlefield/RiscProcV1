`include "define.vh"

module decode (
    input wire clk,
    input wire rst,
    input wire [(`INSTBITS * `FETCH_WIDTH)-1:0] instrs_in

);

genvar i;
generate
    for(i = 1; i <= `FETCH_WIDTH; i++) begin

        wire [31:0] instr;
        assign instr = instrs_in[(`INSTBITS*i)-1:(`INSTBITS*(i-1))];

        // temp wires for pulling info from isntr
        wire [2:0] F3; 
        wire [6:0] F7; 
        wire [6:0] instr_op; 

        assign instr_op = instr[6:0];  
        assign F3 = instr[14:12];
        assign F7 = instr[31:25]; 

        // decoding the instruction opcode
        reg [5:0] decoded_op; //holds the enum for what decoded instruction
        reg [3:0] instr_type;  // instruction format type information for decoding purpose 
        reg [2:0] instr_type_immediate;  // immediate type information for decodding purpose 

        always @(*) begin 
            if ((instr_op == `ADD_OPCODE) && (F3 == `ADD_FUNCT3) && (F7 == `ADD_FUNCT7))
                decoded_op = `ADD_I; 
            else if ((instr_op == `SUB_OPCODE) && (F3 == `SUB_FUNCT3) && (F7 == `SUB_FUNCT7))
                decoded_op = `SUB_I; 
            else if ((instr_op == `AND_OPCODE) && (F3 == `AND_FUNCT3) && (F7 == `AND_FUNCT7))
                decoded_op = `AND_I; 
            else if ((instr_op == `OR_OPCODE) && (F3 == `OR_FUNCT3) && (F7 == `OR_FUNCT7))
                decoded_op = `OR_I; 
            else if ((instr_op == `XOR_OPCODE) && (F3 == `XOR_FUNCT3) && (F7 == `XOR_FUNCT7))
                decoded_op = `XOR_I; 
            else if ((instr_op == `SLT_OPCODE) && (F3 == `SLT_FUNCT3) && (F7 == `SLT_FUNCT7))
                decoded_op = `SLT_I; 
            else if ((instr_op == `SLTU_OPCODE) && (F3 == `SLTU_FUNCT3) && (F7 == `SLTU_FUNCT7))
                decoded_op = `SLTU_I; 
            else if ((instr_op == `SRA_OPCODE) && (F3 == `SRA_FUNCT3) && (F7 == `SRA_FUNCT7))
                decoded_op = `SRA_I; 
            else if ((instr_op == `SRL_OPCODE) && (F3 == `SRL_FUNCT3) && (F7 == `SRL_FUNCT7))
                decoded_op = `SRL_I; 
            else if ((instr_op == `SLL_OPCODE) && (F3 == `SLL_FUNCT3) && (F7 == `SLL_FUNCT7))
                decoded_op = `SLL_I; 
            else if ((instr_op == `MUL_OPCODE) && (F3 == `MUL_FUNCT3) && (F7 == `MUL_FUNCT7))
                decoded_op = `MUL_I; 
            else if ((instr_op == `ADDI_OPCODE) && (F3 == `ADDI_FUNCT3))
                decoded_op = `ADDI_I; 
            else if ((instr_op == `ANDI_OPCODE) && (F3 == `ANDI_FUNCT3))
                decoded_op = `ANDI_I; 
            else if ((instr_op == `ORI_OPCODE) && (F3 == `ORI_FUNCT3))
                decoded_op = `ORI_I; 
            else if ((instr_op == `XORI_OPCODE) && (F3 == `XORI_FUNCT3))
                decoded_op = `XORI_I; 
            else if ((instr_op == `SLTI_OPCODE) && (F3 == `SLTI_FUNCT3))
                decoded_op = `SLTI_I; 
            else if ((instr_op == `SLTIU_OPCODE) && (F3 == `SLTIU_FUNCT3))
                decoded_op = `SLTIU_I; 
            else if ((instr_op == `SRAI_OPCODE) && (F3 == `SRAI_FUNCT3) && (F7 == `SRAI_FUNCT7))
                decoded_op = `SRAI_I; 
            else if ((instr_op == `SRLI_OPCODE) && (F3 == `SRLI_FUNCT3) && (F7 == `SRLI_FUNCT7))
                decoded_op = `SRLI_I; 
            else if ((instr_op == `SLLI_OPCODE) && (F3 == `SLLI_FUNCT3) && (F7 == `SLLI_FUNCT7))
                decoded_op = `SLLI_I; 
            else if ((instr_op == `LUI_OPCODE))
                decoded_op = `LUI_I; 
            else if ((instr_op == `AUIPC_OPCODE))
                decoded_op = `AUIPC_I; 
            else if ((instr_op == `LW_OPCODE) && (F3 == `LW_FUNCT3))
                decoded_op = `LW_I; 
            else if ((instr_op == `SW_OPCODE) && (F3 == `SW_FUNCT3))
                decoded_op = `SW_I; 
            else if ((instr_op == `JAL_OPCODE))
                decoded_op = `JAL_I; 
            else if ((instr_op == `JALR_OPCODE) && (F3 == `JALR_FUNCT3))
                decoded_op = `JALR_I; 
            else if ((instr_op == `BEQ_OPCODE) && (F3 == `BEQ_FUNCT3))
                decoded_op = `BEQ_I; 
            else if ((instr_op == `BNE_OPCODE) && (F3 == `BNE_FUNCT3))
                decoded_op = `BNE_I; 
            else if ((instr_op == `BLT_OPCODE) && (F3 == `BLT_FUNCT3))
                decoded_op = `BLT_I; 
            else if ((instr_op == `BGE_OPCODE) && (F3 == `BGE_FUNCT3))
                decoded_op = `BGE_I; 
            else if ((instr_op == `BLTU_OPCODE) && (F3 == `BLTU_FUNCT3))
                decoded_op = `BLTU_I; 
            else if ((instr_op == `BGEU_OPCODE) && (F3 == `BGEU_FUNCT3))
                decoded_op = `BGEU_I; 
            else 
                decoded_op = `INVALID_I; 
        end 

        always @(*) begin
            instr_type = 4'bx;
            instr_type_immediate = 3'bx;

            if ((decoded_op == `ADD_I) || 
            (decoded_op == `SUB_I ) || 
            (decoded_op ==  `AND_I) || 
            (decoded_op == `OR_I) || 
            (decoded_op == `XOR_I) || 
            (decoded_op == `SLT_I) || 
            (decoded_op ==  `SLTU_I) || 
            (decoded_op ==  `SRA_I) || 
            (decoded_op == `SRL_I ) || 
            (decoded_op == `SLL_I) || 
            (decoded_op ==  `MUL_I) ) begin 
                instr_type = `R_Type;
            end

            else if (
            (decoded_op == `ADDI_I ) || 
            (decoded_op == `ANDI_I) || 
            (decoded_op == `ORI_I) || 
            (decoded_op == `XORI_I) || 
            (decoded_op == `SLTI_I) ||  
            (decoded_op == `SLTIU_I ) || 
            (decoded_op == `LW_I ) || 
            (decoded_op == `JR_I) || 
            (decoded_op == `JALR_I) ) begin 
                instr_type = `I_Type; 
                instr_type_immediate = `I_immediate;
            end 

            else if ((decoded_op ==  `SRAI_I ) || 
            (decoded_op == `SRLI_I) || 
            (decoded_op == `SLLI_I)) begin
                instr_type = `I_Type;
                instr_type_immediate = `I_immediate;
            end

            else if ((decoded_op ==  `LUI_I) || 
            (decoded_op == `AUIPC_I )) begin 
                instr_type = `I_Type; 
                instr_type_immediate = `U_immediate; 
            end

            else if (decoded_op == `SW_I) begin
                instr_type = `S_Type;
                instr_type_immediate = `S_immediate;  
            end

            else if (decoded_op ==  `JAL_I) begin 
                instr_type = `U_Type;
                instr_type_immediate = `J_immediate; 
            end

            else if ((decoded_op ==  `BEQ_I ) || 
            (decoded_op == `BNE_I) || 
            (decoded_op == `BLT_I) || 
            (decoded_op == `BGE_I) || 
            (decoded_op == `BLTU_I) || 
            (decoded_op == `BGEU_I)) begin 
                instr_type = `S_Type;
                instr_type_immediate = `B_immediate; 
            end

        end

        // get the immediate value from the instruction
        reg  [`DBITS-1:0] imm_val;
        always @(*) begin 
            case (instr_type_immediate)  
                `I_immediate: imm_val = {{21{instr[31]}}, instr[30:25], instr[24:21], instr[20]}; 
                `I_immediate: imm_val = {{21{instr[31]}}, instr[30:25], instr[24:21], instr[20]}; 
                `S_immediate: imm_val = {{21{instr[31]}}, instr[30:25], instr[11:8], instr[7]}; 
                `B_immediate: imm_val = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
                `U_immediate: imm_val = {instr[31], instr[30:20], instr[19:12], 12'b0}; 
                `J_immediate: imm_val = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:25], instr[24:21], 1'b0}; 
            default:
                imm_val = 32'b0; 
            endcase  
        end 

        wire [4:0] rs1;
        wire [4:0] rs2;
        wire [4:0] rd;

        wire is_br;    // is conditional branch instr
        wire is_jmp;   // is jump instr
        wire rd_mem;   // is LD instr
        wire wr_mem;   // is ST instr
        wire wr_reg;   // is writing back to register file

        // Decode instruction registers
        assign rs1 = instr[19:15];
        assign rs2 = instr[24:20];
        assign rd  = instr[11:7]; 


        assign is_br  = ((decoded_op == `BEQ_I) || (decoded_op == `BNE_I) || (decoded_op == `BLT_I) || (decoded_op == `BGE_I) || (decoded_op == `BLTU_I) || (decoded_op == `BGEU_I)) ? 1 : 0;
        assign is_jmp = ((decoded_op == `JAL_I) || (decoded_op == `JR_I) || (decoded_op == `JALR_I)) ? 1 : 0;  
        assign rd_mem = (decoded_op == `LW_I) ? 1 :0 ;
        assign wr_mem = (decoded_op == `SW_I) ? 1 : 0 ; 
        assign wr_reg = ((decoded_op == `ADD_I) || 
                            (decoded_op == `SUB_I) || 
                            (decoded_op == `AND_I) || 
                            (decoded_op == `OR_I) || 
                            (decoded_op == `XOR_I) || 
                            (decoded_op == `SLT_I) || 
                            (decoded_op == `SLTU_I) || 
                            (decoded_op == `SRA_I) || 
                            (decoded_op == `SRL_I) || 
                            (decoded_op == `SLL_I) || 
                            (decoded_op == `MUL_I) || 
                            (decoded_op == `ADDI_I) || 
                            (decoded_op == `ANDI_I) || 
                            (decoded_op == `ORI_I) || 
                            (decoded_op == `XORI_I) || 
                            (decoded_op == `SLTI_I) || 
                            (decoded_op == `SLTIU_I) || 
                            (decoded_op == `SRAI_I) || 
                            (decoded_op == `SRLI_I) || 
                            (decoded_op == `SLLI_I) || 
                            (decoded_op == `LUI_I) || 
                            (decoded_op == `AUIPC_I) || 
                            (decoded_op == `LW_I) || 
                            (decoded_op == `JAL_I) || 
                            (decoded_op == `JALR_I)) ? ((rd != 0) ? 1 : 0): 0; 
    end
endgenerate


endmodule
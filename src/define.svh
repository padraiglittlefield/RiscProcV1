`ifndef DEFINE_H
`define DEFINE_H


// General RISCV32 Stuff
`define DBITS   32
`define INSTBITS  32





`define FETCH_WIDTH 4

// Decode and Dispatch
`define DISPATCH_WIDTH 4

typedef enum logic[5:0] {  
    ADD_I = 6'b0,     
    SUB_I,     
    AND_I,    
    OR_I,      
    XOR_I,    
    SLT_I,    
    SLTU_I,   
    SRA_I,    
    SRL_I,    
    SLL_I,    
    MUL_I,    
    ADDI_I,    
    ANDI_I,   
    ORI_I,    
    XORI_I,   
    SLTI_I,   
    SLTIU_I,  
    SRAI_I,   
    SRLI_I,   
    SLLI_I,   
    LUI_I,    
    AUIPC_I,  
    LW_I,     
    SW_I,     
    JAL_I,    
    JR_I,     
    JALR_I,   
    BEQ_I,    
    BNE_I,    
    BLT_I,    
    BGE_I,    
    BLTU_I,   
    BGEU_I,   
    INVALID_I
} instr_op_t;

`define ADD_OPCODE 7'b0110011
  `define ADD_FUNCT3 3'b000
  `define ADD_FUNCT7 7'b0000000 

  `define SUB_OPCODE 7'b0110011
  `define SUB_FUNCT3 3'b000
  `define SUB_FUNCT7 7'b0100000
  
  `define AND_OPCODE 7'b0110011
  `define AND_FUNCT3 3'b111
  `define AND_FUNCT7 7'b0000000 
  
  `define OR_OPCODE  7'b0110011
  `define OR_FUNCT3  3'b110
  `define OR_FUNCT7  7'b0000000 
  
  `define XOR_OPCODE 7'b0110011
  `define XOR_FUNCT3 3'b100
  `define XOR_FUNCT7 7'b0000000 
  
  `define SLT_OPCODE 7'b0110011
  `define SLT_FUNCT3 3'b010 
  `define SLT_FUNCT7 7'b0000000 
  
  `define SLTU_OPCODE 7'b0110011
  `define SLTU_FUNCT3 3'b011 
  `define SLTU_FUNCT7 7'b0000000 

  `define SRA_OPCODE 7'b0110011 
  `define SRA_FUNCT3 3'b101 
  `define SRA_FUNCT7 7'b0100000 
  
  `define SRL_OPCODE 7'b0110011 
  `define SRL_FUNCT3  3'b101
  `define SRL_FUNCT7  7'b0000000 
  
  `define SLL_OPCODE  7'b0110011 
  `define SLL_FUNCT3  3'b001
  `define SLL_FUNCT7  7'b0000000 
  
  `define MUL_OPCODE 7'b0110011 
  `define MUL_FUNCT3 3'b000 
  `define MUL_FUNCT7  7'b0000001   
  

  `define ADDI_OPCODE 7'b0010011   
  `define ADDI_FUNCT3 3'b000 
  
  `define ANDI_OPCODE 7'b0010011 
  `define ANDI_FUNCT3 3'b111
  
  `define ORI_OPCODE 7'b0010011 
  `define ORI_FUNCT3 3'b110 
  
  `define XORI_OPCODE 7'b0010011  
  `define XORI_FUNCT3 3'b100 
  
  `define SLTI_OPCODE 7'b0010011  
  `define SLTI_FUNCT3  3'b010 
  
  `define SLTIU_OPCODE 7'b0010011 
  `define SLTIU_FUNCT3  3'b011 

  `define SRAI_OPCODE  7'b0010011  
  `define SRAI_FUNCT3   3'b101 
  
  `define SRAI_FUNCT7  7'b0100000 
  `define SRLI_OPCODE  7'b0010011   
  
  `define SRLI_FUNCT3  3'b101 
  `define SRLI_FUNCT7  7'b0000000 

  `define SLLI_OPCODE 7'b0010011
  `define SLLI_FUNCT3  3'b001 
  
  `define SLLI_FUNCT7  7'b0000000   
  `define LUI_OPCODE 7'b0110111 

  `define AUIPC_OPCODE  7'b0010111  

  `define LW_OPCODE  7'b0000011 
  `define LW_FUNCT3  3'b010  
  
  `define SW_OPCODE 7'b0100011 
  `define SW_FUNCT3 3'b010 

  `define JAL_OPCODE 7'b1101111 
  `define JR_OPCODE  7'b1100111  
  `define JR_FUNCT3 3'b000
  `define JR_10MSB 10'b000000000000    
  `define JALR_OPCODE 7'b1100111    
  `define JALR_FUNCT3  3'b000 

  `define BEQ_OPCODE 7'b1100011  
  `define BEQ_FUNCT3 3'b000
  `define BNE_OPCODE 7'b1100011  
  `define BNE_FUNCT3 3'b001  

  `define BLT_OPCODE 7'b1100011 
  `define BLT_FUNCT3 3'b100
  `define BGE_OPCODE 7'b1100011  
  `define BGE_FUNCT3 3'b101 
  `define BLTU_OPCODE 7'b1100011
  `define BLTU_FUNCT3 3'b110
  `define BGEU_OPCODE 7'b1100011
  `define BGEU_FUNCT3 3'b111 

    `define R_Type 1 
    `define I_Type 2 
    `define S_Type 3 
    `define U_Type 4 
    `define I_I_type 5 
    `define S_I_Type 6
    `define B_I_Type 7
    `define U_I_Type 8
    `define J_I_Type 9 

    `define I_immediate 1 
    `define J_immediate 2
    `define U_immediate 3
    `define S_immediate 4 
    `define B_immediate 5  





// Register Renaming
`define NUM_ARESG   32
`define NUM_PREGS   128


`define DE_instr_width 10 // the data size of the decoded instruction that will be passed down the pipeline

`endif 
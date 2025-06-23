`timescale 1ns / 1ps
package CORE_PKG;

/* Example
typedef enum logic[3:0]
{
    MEMC_NONE,

    // cache line operations
    MEMC_REPLACE,
    MEMC_CP_CACHE_TO_EXT,
    MEMC_CP_EXT_TO_CACHE,

    // single access
    MEMC_READ_BYTE,
    MEMC_READ_HALF,
    MEMC_READ_WORD,
    MEMC_WRITE_BYTE,
    MEMC_WRITE_HALF,
    MEMC_WRITE_WORD
} MemC_Cmd /* public */;



parameter NUM_FUS = 4
parameter RS_ENTRIES = 8
parameter NUM_PREGS = 128


typedef struct packed
{

} Disp_uOP;

typedef struct packed {
    logic[$clog2(NUM_PREGS)-1:0] src1_index,
    logic[$clog2(NUM_PREGS)-1:0] src2_index,
    logic [31:0] imm_val;

} Sel_uOP;

typedef struct packed {
    logic [31:0] src1_val, // Value of src1 supplied from RegRead
    logic [31:0] src2_val, // Value of src2 supplied from RegRead
    logic [31:0] ex_out,   // Result of exec, be it alu,mul,branch,etc
    logic br_taken,        // Was the branch taken?
    //logic br_mispred,    // Was the branch pred correct?
    instr_opcode opcode,
    logic is_branch,
    logic alu_en,
    logic mul_en
} Ex_uOP;


typedef enum {
    REG_FILE,
    BYPASS
} bypass_mux;

typedef enum {
    ADD_I, 
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
    CSRR_I,   
    CSRW_I,   
    CSR_I,    
    INVALID_I
} instr_opcode;

endpackage
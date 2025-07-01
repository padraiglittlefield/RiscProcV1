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


typedef enum { 
    ALU_LOWER,
    ALU_UPPER,
    MUL,
    LSU
} ex_pipe;


/* Processor Parameters */
parameter NUM_FUS       = 4
parameter RS_ENTRIES    = 8
parameter NUM_PREGS     = 128
parameter NUM_AREGS     = 32
parameter NUM_ROB_ENTS  = 64
parameter RETIRE_WIDTH  = 4
parameter DISP_WIDTH    = 2

typedef struct packed {
    ex_pipe ex_pipe_dst,
    logic [31:0] pc,
    logic [$clog2(NUM_AREGS)-1:0] dst_reg,



} Disp_uOP;

typedef struct packed {
    logic[$clog2(NUM_PREGS)-1:0] src1_index,
    logic[$clog2(NUM_PREGS)-1:0] src2_index,
    logic [31:0] imm_val;

} Sel_uOP;

typedef struct packed {
    logic [$clog2(NUM_PREGS)-1:0] dst_preg,      //Destination Preg
    logic [31:0] src1_val,                      // Value of src1 supplied from RegRead
    logic [31:0] src2_val,                      // Value of src2 supplied from RegRead
    logic [31:0] ex_out,                        // Result of exec, be it alu,mul,branch,etc
    logic br_taken,                             // Was the branch taken?
    //logic br_mispred,                         // Was the branch pred correct?
    instr_opcode opcode,                        // Instr opcode
    logic is_branch,                            // Is this a branch instr
    logic alu_en,                               // ALU instr?
    logic mul_en,                               // Mul instr?
    logic agu_en,                               // MMU instr?
    logic [$clog2(NUM_ROB_ENTS)-1:0] rob_index, // Index in ROB for State Update
    logic [$clog2(RS_ENTRIES)-1:0] rs_entry_index
} Ex_uOP;

typedef struct packed {
    logic [$clog2(NUM_AREGS)-1:0] dst_reg,
    //logic [31:0] val, ->Stored with Ready-bit matrix now 
    logic exception,
    logic br_mispred,
    logic [31:0] pc
} ROB_Entry;


typedef enum {
    REG_FILE,
    BYPASS
} bypass_mux;


endpackage
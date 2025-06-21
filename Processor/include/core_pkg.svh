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
} Sel_uOP;

typedef struct packed {
    logic [31:0] src1_val,
    logic [31:0] src2_val,
} Ex_uOP;


typedef enum logic {
    REG_FILE,
    BYPASS
} bypass_mux;
endpackage
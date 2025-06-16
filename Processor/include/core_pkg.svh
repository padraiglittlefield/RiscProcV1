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
parameter NUM_PREGS


typedef struct packed
{

} Disp_uOP;

typedef struct packed {
    
} Sel_uOP;

endpackage
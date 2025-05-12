// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vdecode.h for the primary calling header

#ifndef VERILATED_VDECODE___024ROOT_H_
#define VERILATED_VDECODE___024ROOT_H_  // guard

#include "verilated.h"


class Vdecode__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vdecode___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    VL_OUT8(decoded_op,5,0);
    VL_OUT8(instr_type,3,0);
    VL_OUT8(instr_type_immediate,2,0);
    VL_OUT8(rs1,4,0);
    VL_OUT8(rs2,4,0);
    VL_OUT8(rd,4,0);
    VL_OUT8(is_br,0,0);
    VL_OUT8(is_jmp,0,0);
    VL_OUT8(rd_mem,0,0);
    VL_OUT8(wr_mem,0,0);
    VL_OUT8(wr_reg,0,0);
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VactContinue;
    VL_IN(instr,31,0);
    VL_OUT(imm_val,31,0);
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<0> __VactTriggered;
    VlTriggerVec<0> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vdecode__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vdecode___024root(Vdecode__Syms* symsp, const char* v__name);
    ~Vdecode___024root();
    VL_UNCOPYABLE(Vdecode___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

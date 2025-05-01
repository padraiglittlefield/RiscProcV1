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
    CData/*5:0*/ decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op;
    CData/*3:0*/ decode__DOT__genblk1__BRA__1__KET____DOT__instr_type;
    CData/*2:0*/ decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate;
    CData/*0:0*/ decode__DOT__genblk1__BRA__1__KET____DOT__wr_reg;
    CData/*5:0*/ decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op;
    CData/*3:0*/ decode__DOT__genblk1__BRA__2__KET____DOT__instr_type;
    CData/*2:0*/ decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate;
    CData/*0:0*/ decode__DOT__genblk1__BRA__2__KET____DOT__wr_reg;
    CData/*5:0*/ decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op;
    CData/*3:0*/ decode__DOT__genblk1__BRA__3__KET____DOT__instr_type;
    CData/*2:0*/ decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate;
    CData/*0:0*/ decode__DOT__genblk1__BRA__3__KET____DOT__wr_reg;
    CData/*5:0*/ decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op;
    CData/*3:0*/ decode__DOT__genblk1__BRA__4__KET____DOT__instr_type;
    CData/*2:0*/ decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate;
    CData/*0:0*/ decode__DOT__genblk1__BRA__4__KET____DOT__wr_reg;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VactContinue;
    VL_INW(instrs_in,127,0,4);
    IData/*31:0*/ decode__DOT____VdfgExtracted_h5d8d65ee__0;
    IData/*31:0*/ decode__DOT____VdfgExtracted_h471e2ee8__0;
    IData/*31:0*/ decode__DOT____VdfgExtracted_h7de9e626__0;
    IData/*31:0*/ decode__DOT____VdfgExtracted_hbc33c744__0;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
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

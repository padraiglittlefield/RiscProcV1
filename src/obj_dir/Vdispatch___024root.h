// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vdispatch.h for the primary calling header

#ifndef VERILATED_VDISPATCH___024ROOT_H_
#define VERILATED_VDISPATCH___024ROOT_H_  // guard

#include "verilated.h"


class Vdispatch__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vdispatch___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(w_en,0,0);
    VL_IN8(r_en,0,0);
    VL_OUT8(full,0,0);
    VL_OUT8(empty,0,0);
    CData/*7:0*/ dispatch__DOT__w_ptr;
    CData/*7:0*/ dispatch__DOT__r_ptr;
    CData/*0:0*/ dispatch__DOT__empty_int;
    CData/*0:0*/ dispatch__DOT__full_or_empty;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    VL_IN16(instr_in,9,0);
    VL_OUT16(instr_out,9,0);
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<SData/*9:0*/, 128> dispatch__DOT__disptach_queue;
    VlUnpacked<CData/*0:0*/, 1> __Vm_traceActivity;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vdispatch__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vdispatch___024root(Vdispatch__Syms* symsp, const char* v__name);
    ~Vdispatch___024root();
    VL_UNCOPYABLE(Vdispatch___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

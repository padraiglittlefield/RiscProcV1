// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vfree_preg_queue.h for the primary calling header

#ifndef VERILATED_VFREE_PREG_QUEUE___024ROOT_H_
#define VERILATED_VFREE_PREG_QUEUE___024ROOT_H_  // guard

#include "verilated.h"


class Vfree_preg_queue__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vfree_preg_queue___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(w_en,0,0);
    VL_IN8(r_en,0,0);
    VL_IN8(instr_in,6,0);
    VL_OUT8(instr_out,6,0);
    VL_OUT8(full,0,0);
    VL_OUT8(empty,0,0);
    CData/*7:0*/ free_preg_queue__DOT__w_ptr;
    CData/*7:0*/ free_preg_queue__DOT__r_ptr;
    CData/*0:0*/ free_preg_queue__DOT__empty_int;
    CData/*0:0*/ free_preg_queue__DOT__full_or_empty;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*6:0*/, 128> free_preg_queue__DOT__free_queue;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vfree_preg_queue__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vfree_preg_queue___024root(Vfree_preg_queue__Syms* symsp, const char* v__name);
    ~Vfree_preg_queue___024root();
    VL_UNCOPYABLE(Vfree_preg_queue___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

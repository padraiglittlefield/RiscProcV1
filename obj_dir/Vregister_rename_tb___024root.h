// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vregister_rename_tb.h for the primary calling header

#ifndef VERILATED_VREGISTER_RENAME_TB___024ROOT_H_
#define VERILATED_VREGISTER_RENAME_TB___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vregister_rename_tb__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vregister_rename_tb___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ register_rename_tb__DOT__clk;
    CData/*0:0*/ register_rename_tb__DOT__rst;
    CData/*0:0*/ register_rename_tb__DOT__stall;
    CData/*6:0*/ register_rename_tb__DOT__new_alias;
    CData/*0:0*/ register_rename_tb__DOT__empty;
    CData/*4:0*/ register_rename_tb__DOT__bypassed_dst_i;
    CData/*6:0*/ register_rename_tb__DOT__bypassed_alias_i;
    CData/*0:0*/ register_rename_tb__DOT__fpq_w_en;
    CData/*6:0*/ register_rename_tb__DOT__preg_in;
    CData/*7:0*/ register_rename_tb__DOT__fpg__DOT__w_ptr;
    CData/*7:0*/ register_rename_tb__DOT__fpg__DOT__r_ptr;
    CData/*0:0*/ register_rename_tb__DOT__fpg__DOT__empty_int;
    CData/*0:0*/ register_rename_tb__DOT__fpg__DOT__full_or_empty;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__register_rename_tb__DOT__clk__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ register_rename_tb__DOT__cycle_count;
    IData/*31:0*/ register_rename_tb__DOT__rat__DOT__i;
    IData/*31:0*/ register_rename_tb__DOT__fpg__DOT__i;
    IData/*31:0*/ __VactIterCount;
    VlWide<3>/*64:0*/ register_rename_tb__DOT__decoded_dd;
    VlUnpacked<CData/*6:0*/, 32> register_rename_tb__DOT__rat__DOT__register_alias_table;
    VlUnpacked<CData/*6:0*/, 128> register_rename_tb__DOT__fpg__DOT__free_queue;
    VlUnpacked<CData/*0:0*/, 4> __Vm_traceActivity;
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_hcc76c486__0;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vregister_rename_tb__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vregister_rename_tb___024root(Vregister_rename_tb__Syms* symsp, const char* v__name);
    ~Vregister_rename_tb___024root();
    VL_UNCOPYABLE(Vregister_rename_tb___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

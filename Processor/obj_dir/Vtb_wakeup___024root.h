// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_wakeup.h for the primary calling header

#ifndef VERILATED_VTB_WAKEUP___024ROOT_H_
#define VERILATED_VTB_WAKEUP___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_wakeup__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_wakeup___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ tb_wakeup__DOT__clk;
    CData/*0:0*/ tb_wakeup__DOT__rst;
    CData/*0:0*/ tb_wakeup__DOT__disp_valid;
    CData/*3:0*/ tb_wakeup__DOT__dependency_mask;
    CData/*0:0*/ tb_wakeup__DOT__free_entry_out;
    CData/*0:0*/ tb_wakeup__DOT__full_out;
    CData/*1:0*/ tb_wakeup__DOT__reqs;
    CData/*0:0*/ tb_wakeup__DOT__grant;
    CData/*0:0*/ tb_wakeup__DOT__grant_valid;
    CData/*3:0*/ tb_wakeup__DOT__ready_mask;
    CData/*0:0*/ tb_wakeup__DOT__retire_entry;
    CData/*0:0*/ tb_wakeup__DOT__retire_valid;
    CData/*0:0*/ tb_wakeup__DOT__test_grant_ready__Vstatic__granted_entry;
    CData/*0:0*/ tb_wakeup__DOT__test_retire__Vstatic__retired_entry;
    CData/*0:0*/ tb_wakeup__DOT__test_dispatch_with_deps__Vstatic__dispatched_entry;
    CData/*0:0*/ tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry;
    CData/*0:0*/ tb_wakeup__DOT__test_dispatch_after_free__Vstatic__new_entry;
    CData/*1:0*/ tb_wakeup__DOT__dut__DOT__entry_valid;
    CData/*1:0*/ tb_wakeup__DOT__dut__DOT__entry_granted;
    CData/*0:0*/ tb_wakeup__DOT__dut__DOT__free_entry;
    CData/*0:0*/ tb_wakeup__DOT__dut__DOT__full;
    CData/*0:0*/ tb_wakeup__DOT__dut__DOT__flag;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__tb_wakeup__DOT__clk__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ tb_wakeup__DOT__cycle_count;
    IData/*31:0*/ tb_wakeup__DOT__pass_count;
    IData/*31:0*/ tb_wakeup__DOT__fail_count;
    IData/*31:0*/ tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count;
    IData/*31:0*/ tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before;
    IData/*31:0*/ tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after;
    IData/*31:0*/ tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__i;
    IData/*31:0*/ tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__unnamedblk2__DOT__j;
    IData/*31:0*/ tb_wakeup__DOT__dut__DOT__unnamedblk3__DOT__i;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*3:0*/, 2> tb_wakeup__DOT__dut__DOT__dependency_matrix_row;
    VlUnpacked<CData/*0:0*/, 4> __Vm_traceActivity;
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_h2f62138b__0;
    VlTriggerScheduler __VtrigSched_h2f6213ce__0;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<3> __VactTriggered;
    VlTriggerVec<3> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtb_wakeup__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_wakeup___024root(Vtb_wakeup__Syms* symsp, const char* v__name);
    ~Vtb_wakeup___024root();
    VL_UNCOPYABLE(Vtb_wakeup___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

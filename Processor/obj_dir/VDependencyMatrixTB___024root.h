// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VDependencyMatrixTB.h for the primary calling header

#ifndef VERILATED_VDEPENDENCYMATRIXTB___024ROOT_H_
#define VERILATED_VDEPENDENCYMATRIXTB___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class VDependencyMatrixTB__Syms;

class alignas(VL_CACHE_LINE_BYTES) VDependencyMatrixTB___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ DependencyMatrixTB__DOT__clk;
    CData/*0:0*/ DependencyMatrixTB__DOT__rst;
    CData/*0:0*/ DependencyMatrixTB__DOT__w_en;
    CData/*2:0*/ DependencyMatrixTB__DOT__w_row_index;
    CData/*7:0*/ DependencyMatrixTB__DOT__set_lines;
    CData/*7:0*/ DependencyMatrixTB__DOT__clear_lines;
    CData/*0:0*/ DependencyMatrixTB__DOT__free_en;
    CData/*2:0*/ DependencyMatrixTB__DOT__free_row_index;
    CData/*0:0*/ DependencyMatrixTB__DOT__clear_en;
    CData/*7:0*/ DependencyMatrixTB__DOT__DUT__DOT__row_valid;
    CData/*0:0*/ __Vtrigprevexpr___TOP__DependencyMatrixTB__DOT__clk__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ DependencyMatrixTB__DOT__cycle_count;
    IData/*31:0*/ DependencyMatrixTB__DOT__DUT__DOT__unnamedblk1__DOT__i;
    IData/*31:0*/ DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__i;
    IData/*31:0*/ DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__unnamedblk3__DOT__j;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*7:0*/, 8> DependencyMatrixTB__DOT__DUT__DOT__bit_matrix;
    VlUnpacked<CData/*0:0*/, 4> __Vm_traceActivity;
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_h0f1ef938__0;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    VDependencyMatrixTB__Syms* const vlSymsp;

    // CONSTRUCTORS
    VDependencyMatrixTB___024root(VDependencyMatrixTB__Syms* symsp, const char* v__name);
    ~VDependencyMatrixTB___024root();
    VL_UNCOPYABLE(VDependencyMatrixTB___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VDependencyMatrixTB.h for the primary calling header

#include "VDependencyMatrixTB__pch.h"
#include "VDependencyMatrixTB__Syms.h"
#include "VDependencyMatrixTB___024root.h"

VL_INLINE_OPT VlCoroutine VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__1(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_1;
    // Body
    __Vtemp_1[0U] = 0x2e766364U;
    __Vtemp_1[1U] = 0x545f7462U;
    __Vtemp_1[2U] = 0x5241U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(3, __Vtemp_1));
    vlSymsp->_traceDumpOpen();
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       48);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__clk = 0U;
    vlSelf->DependencyMatrixTB__DOT__rst = 1U;
    vlSelf->DependencyMatrixTB__DOT__w_en = 0U;
    vlSelf->DependencyMatrixTB__DOT__w_row_index = 0U;
    vlSelf->DependencyMatrixTB__DOT__set_lines = 0U;
    vlSelf->DependencyMatrixTB__DOT__clear_lines = 0U;
    vlSelf->DependencyMatrixTB__DOT__free_en = 0U;
    vlSelf->DependencyMatrixTB__DOT__free_row_index = 0U;
    vlSelf->DependencyMatrixTB__DOT__clear_en = 0U;
    vlSelf->DependencyMatrixTB__DOT__rst = 0U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       51);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__w_en = 1U;
    vlSelf->DependencyMatrixTB__DOT__w_row_index = 7U;
    vlSelf->DependencyMatrixTB__DOT__set_lines = 0x42U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       80);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__w_row_index = 0U;
    vlSelf->DependencyMatrixTB__DOT__set_lines = 0U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       83);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__w_en = 0U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       53);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__free_en = 1U;
    vlSelf->DependencyMatrixTB__DOT__free_row_index = 0U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       92);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__free_en = 0U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       55);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__clear_en = 1U;
    vlSelf->DependencyMatrixTB__DOT__clear_lines = 0x40U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       101);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__clear_lines = 2U;
    co_await vlSelf->__VtrigSched_h0f1ef938__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge DependencyMatrixTB.clk)", 
                                                       "sim/DependencyMatrixTB.sv", 
                                                       103);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->DependencyMatrixTB__DOT__clear_en = 0U;
    co_await vlSelf->__VdlySched.delay(0xc350ULL, nullptr, 
                                       "sim/DependencyMatrixTB.sv", 
                                       57);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_FINISH_MT("sim/DependencyMatrixTB.sv", 58, "");
    vlSelf->__Vm_traceActivity[2U] = 1U;
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VDependencyMatrixTB___024root___dump_triggers__act(VDependencyMatrixTB___024root* vlSelf);
#endif  // VL_DEBUG

void VDependencyMatrixTB___024root___eval_triggers__act(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->DependencyMatrixTB__DOT__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__DependencyMatrixTB__DOT__clk__0))));
    vlSelf->__VactTriggered.set(1U, vlSelf->__VdlySched.awaitingCurrentTime());
    vlSelf->__Vtrigprevexpr___TOP__DependencyMatrixTB__DOT__clk__0 
        = vlSelf->DependencyMatrixTB__DOT__clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VDependencyMatrixTB___024root___dump_triggers__act(vlSelf);
    }
#endif
}

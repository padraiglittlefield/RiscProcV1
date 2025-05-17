// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vregister_rename_tb.h for the primary calling header

#include "Vregister_rename_tb__pch.h"
#include "Vregister_rename_tb__Syms.h"
#include "Vregister_rename_tb___024root.h"

VL_INLINE_OPT VlCoroutine Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__1(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Init
    VlWide<6>/*191:0*/ __Vtemp_1;
    // Body
    __Vtemp_1[0U] = 0x2e766364U;
    __Vtemp_1[1U] = 0x655f7462U;
    __Vtemp_1[2U] = 0x656e616dU;
    __Vtemp_1[3U] = 0x65725f72U;
    __Vtemp_1[4U] = 0x67697374U;
    __Vtemp_1[5U] = 0x7265U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(6, __Vtemp_1));
    vlSymsp->_traceDumpOpen();
    co_await vlSelf->__VtrigSched_hcc76c486__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge register_rename_tb.clk)", 
                                                       "sim/register_rename_tb.sv", 
                                                       90);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->register_rename_tb__DOT__clk = 0U;
    vlSelf->register_rename_tb__DOT__rst = 1U;
    vlSelf->register_rename_tb__DOT__stall = 1U;
    vlSelf->register_rename_tb__DOT__decoded_dd[0U] = 0U;
    vlSelf->register_rename_tb__DOT__decoded_dd[1U] = 0U;
    vlSelf->register_rename_tb__DOT__decoded_dd[2U] = 0U;
    co_await vlSelf->__VtrigSched_hcc76c486__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge register_rename_tb.clk)", 
                                                       "sim/register_rename_tb.sv", 
                                                       92);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->register_rename_tb__DOT__rst = 0U;
    vlSelf->register_rename_tb__DOT__stall = 0U;
    vlSelf->register_rename_tb__DOT__decoded_dd[0U] = 0x8860U;
    vlSelf->register_rename_tb__DOT__decoded_dd[1U] = 0U;
    vlSelf->register_rename_tb__DOT__decoded_dd[2U] = 0U;
    co_await vlSelf->__VtrigSched_hcc76c486__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge register_rename_tb.clk)", 
                                                       "sim/register_rename_tb.sv", 
                                                       119);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
        = (0x82080U | (0xfff0001fU & vlSelf->register_rename_tb__DOT__decoded_dd[0U]));
    co_await vlSelf->__VtrigSched_hcc76c486__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge register_rename_tb.clk)", 
                                                       "sim/register_rename_tb.sv", 
                                                       123);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->register_rename_tb__DOT__bypassed_dst_i = 8U;
    vlSelf->register_rename_tb__DOT__bypassed_alias_i = 0x7fU;
    co_await vlSelf->__VdlySched.delay(0x32ULL, nullptr, 
                                       "sim/register_rename_tb.sv", 
                                       94);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_FINISH_MT("sim/register_rename_tb.sv", 95, "");
    vlSelf->__Vm_traceActivity[2U] = 1U;
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vregister_rename_tb___024root___dump_triggers__act(Vregister_rename_tb___024root* vlSelf);
#endif  // VL_DEBUG

void Vregister_rename_tb___024root___eval_triggers__act(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->register_rename_tb__DOT__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__register_rename_tb__DOT__clk__0))));
    vlSelf->__VactTriggered.set(1U, vlSelf->__VdlySched.awaitingCurrentTime());
    vlSelf->__Vtrigprevexpr___TOP__register_rename_tb__DOT__clk__0 
        = vlSelf->register_rename_tb__DOT__clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vregister_rename_tb___024root___dump_triggers__act(vlSelf);
    }
#endif
}

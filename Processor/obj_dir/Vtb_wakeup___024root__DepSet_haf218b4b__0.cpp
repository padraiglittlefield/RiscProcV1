// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_wakeup.h for the primary calling header

#include "Vtb_wakeup__pch.h"
#include "Vtb_wakeup__Syms.h"
#include "Vtb_wakeup___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_wakeup___024root___dump_triggers__act(Vtb_wakeup___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_wakeup___024root___eval_triggers__act(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->tb_wakeup__DOT__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__tb_wakeup__DOT__clk__0))));
    vlSelf->__VactTriggered.set(1U, vlSelf->__VdlySched.awaitingCurrentTime());
    vlSelf->__VactTriggered.set(2U, ((~ (IData)(vlSelf->tb_wakeup__DOT__clk)) 
                                     & (IData)(vlSelf->__Vtrigprevexpr___TOP__tb_wakeup__DOT__clk__0)));
    vlSelf->__Vtrigprevexpr___TOP__tb_wakeup__DOT__clk__0 
        = vlSelf->tb_wakeup__DOT__clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb_wakeup___024root___dump_triggers__act(vlSelf);
    }
#endif
}

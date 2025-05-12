// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdispatch.h for the primary calling header

#include "Vdispatch__pch.h"
#include "Vdispatch___024root.h"

VL_ATTR_COLD void Vdispatch___024root___eval_static__TOP(Vdispatch___024root* vlSelf);

VL_ATTR_COLD void Vdispatch___024root___eval_static(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_static\n"); );
    // Body
    Vdispatch___024root___eval_static__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vdispatch___024root___eval_static__TOP(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->dispatch__DOT__empty_int = ((1U & ((IData)(vlSelf->dispatch__DOT__w_ptr) 
                                               >> 7U)) 
                                        == (1U & ((IData)(vlSelf->dispatch__DOT__r_ptr) 
                                                  >> 7U)));
    vlSelf->dispatch__DOT__full_or_empty = ((0x7fU 
                                             & (IData)(vlSelf->dispatch__DOT__w_ptr)) 
                                            == (0x7fU 
                                                & (IData)(vlSelf->dispatch__DOT__r_ptr)));
}

VL_ATTR_COLD void Vdispatch___024root___eval_initial(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void Vdispatch___024root___eval_final(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdispatch___024root___dump_triggers__stl(Vdispatch___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vdispatch___024root___eval_phase__stl(Vdispatch___024root* vlSelf);

VL_ATTR_COLD void Vdispatch___024root___eval_settle(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vdispatch___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("dispatch.sv", 3, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vdispatch___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdispatch___024root___dump_triggers__stl(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vdispatch___024root___stl_sequent__TOP__0(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->instr_out = vlSelf->dispatch__DOT__disptach_queue
        [(0x7fU & (IData)(vlSelf->dispatch__DOT__r_ptr))];
    vlSelf->full = ((~ (IData)(vlSelf->dispatch__DOT__empty_int)) 
                    & (IData)(vlSelf->dispatch__DOT__full_or_empty));
    vlSelf->empty = ((IData)(vlSelf->dispatch__DOT__empty_int) 
                     & (IData)(vlSelf->dispatch__DOT__full_or_empty));
}

VL_ATTR_COLD void Vdispatch___024root___eval_stl(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vdispatch___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vdispatch___024root___eval_triggers__stl(Vdispatch___024root* vlSelf);

VL_ATTR_COLD bool Vdispatch___024root___eval_phase__stl(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vdispatch___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vdispatch___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdispatch___024root___dump_triggers__act(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdispatch___024root___dump_triggers__nba(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vdispatch___024root___ctor_var_reset(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->w_en = VL_RAND_RESET_I(1);
    vlSelf->r_en = VL_RAND_RESET_I(1);
    vlSelf->instr_in = VL_RAND_RESET_I(10);
    vlSelf->instr_out = VL_RAND_RESET_I(10);
    vlSelf->full = VL_RAND_RESET_I(1);
    vlSelf->empty = VL_RAND_RESET_I(1);
    vlSelf->dispatch__DOT__w_ptr = VL_RAND_RESET_I(8);
    vlSelf->dispatch__DOT__r_ptr = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 128; ++__Vi0) {
        vlSelf->dispatch__DOT__disptach_queue[__Vi0] = VL_RAND_RESET_I(10);
    }
    vlSelf->dispatch__DOT__empty_int = VL_RAND_RESET_I(1);
    vlSelf->dispatch__DOT__full_or_empty = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vregister_rename_tb.h for the primary calling header

#include "Vregister_rename_tb__pch.h"
#include "Vregister_rename_tb___024root.h"

VL_ATTR_COLD void Vregister_rename_tb___024root___eval_static__TOP(Vregister_rename_tb___024root* vlSelf);

VL_ATTR_COLD void Vregister_rename_tb___024root___eval_static(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_static\n"); );
    // Body
    Vregister_rename_tb___024root___eval_static__TOP(vlSelf);
}

VL_ATTR_COLD void Vregister_rename_tb___024root___eval_static__TOP(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->register_rename_tb__DOT__cycle_count = 0U;
}

VL_ATTR_COLD void Vregister_rename_tb___024root___eval_final(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vregister_rename_tb___024root___dump_triggers__stl(Vregister_rename_tb___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vregister_rename_tb___024root___eval_phase__stl(Vregister_rename_tb___024root* vlSelf);

VL_ATTR_COLD void Vregister_rename_tb___024root___eval_settle(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_settle\n"); );
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
            Vregister_rename_tb___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("sim/register_rename_tb.sv", 4, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vregister_rename_tb___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vregister_rename_tb___024root___dump_triggers__stl(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vregister_rename_tb___024root___stl_sequent__TOP__0(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->register_rename_tb__DOT__new_alias = vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue
        [(0x7fU & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr))];
    vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int 
        = ((1U & ((IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr) 
                  >> 7U)) == (1U & ((IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr) 
                                    >> 7U)));
    vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty 
        = ((0x7fU & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr)) 
           == (0x7fU & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr)));
    vlSelf->register_rename_tb__DOT__empty = ((IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty) 
                                              & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int));
}

VL_ATTR_COLD void Vregister_rename_tb___024root___eval_stl(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vregister_rename_tb___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vregister_rename_tb___024root___eval_triggers__stl(Vregister_rename_tb___024root* vlSelf);

VL_ATTR_COLD bool Vregister_rename_tb___024root___eval_phase__stl(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vregister_rename_tb___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vregister_rename_tb___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vregister_rename_tb___024root___dump_triggers__act(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge register_rename_tb.clk)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vregister_rename_tb___024root___dump_triggers__nba(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge register_rename_tb.clk)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vregister_rename_tb___024root___ctor_var_reset(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->register_rename_tb__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->register_rename_tb__DOT__rst = VL_RAND_RESET_I(1);
    vlSelf->register_rename_tb__DOT__stall = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(65, vlSelf->register_rename_tb__DOT__decoded_dd);
    vlSelf->register_rename_tb__DOT__new_alias = VL_RAND_RESET_I(7);
    vlSelf->register_rename_tb__DOT__empty = VL_RAND_RESET_I(1);
    vlSelf->register_rename_tb__DOT__bypassed_dst_i = VL_RAND_RESET_I(5);
    vlSelf->register_rename_tb__DOT__bypassed_alias_i = VL_RAND_RESET_I(7);
    vlSelf->register_rename_tb__DOT__fpq_w_en = VL_RAND_RESET_I(1);
    vlSelf->register_rename_tb__DOT__preg_in = VL_RAND_RESET_I(7);
    vlSelf->register_rename_tb__DOT__cycle_count = VL_RAND_RESET_I(32);
    for (int __Vi0 = 0; __Vi0 < 32; ++__Vi0) {
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[__Vi0] = VL_RAND_RESET_I(7);
    }
    vlSelf->register_rename_tb__DOT__rat__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr = VL_RAND_RESET_I(8);
    vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 128; ++__Vi0) {
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[__Vi0] = VL_RAND_RESET_I(7);
    }
    vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int = VL_RAND_RESET_I(1);
    vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty = VL_RAND_RESET_I(1);
    vlSelf->register_rename_tb__DOT__fpg__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->__Vtrigprevexpr___TOP__register_rename_tb__DOT__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 4; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}

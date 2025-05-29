// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VDependencyMatrixTB.h for the primary calling header

#include "VDependencyMatrixTB__pch.h"
#include "VDependencyMatrixTB___024root.h"

VL_ATTR_COLD void VDependencyMatrixTB___024root___eval_static__TOP(VDependencyMatrixTB___024root* vlSelf);

VL_ATTR_COLD void VDependencyMatrixTB___024root___eval_static(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_static\n"); );
    // Body
    VDependencyMatrixTB___024root___eval_static__TOP(vlSelf);
}

VL_ATTR_COLD void VDependencyMatrixTB___024root___eval_static__TOP(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->DependencyMatrixTB__DOT__cycle_count = 0U;
}

VL_ATTR_COLD void VDependencyMatrixTB___024root___eval_final(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_final\n"); );
}

VL_ATTR_COLD void VDependencyMatrixTB___024root___eval_settle(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_settle\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VDependencyMatrixTB___024root___dump_triggers__act(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge DependencyMatrixTB.clk)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VDependencyMatrixTB___024root___dump_triggers__nba(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge DependencyMatrixTB.clk)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VDependencyMatrixTB___024root___ctor_var_reset(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->DependencyMatrixTB__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->DependencyMatrixTB__DOT__rst = VL_RAND_RESET_I(1);
    vlSelf->DependencyMatrixTB__DOT__w_en = VL_RAND_RESET_I(1);
    vlSelf->DependencyMatrixTB__DOT__w_row_index = VL_RAND_RESET_I(3);
    vlSelf->DependencyMatrixTB__DOT__set_lines = VL_RAND_RESET_I(8);
    vlSelf->DependencyMatrixTB__DOT__clear_lines = VL_RAND_RESET_I(8);
    vlSelf->DependencyMatrixTB__DOT__free_en = VL_RAND_RESET_I(1);
    vlSelf->DependencyMatrixTB__DOT__free_row_index = VL_RAND_RESET_I(3);
    vlSelf->DependencyMatrixTB__DOT__clear_en = VL_RAND_RESET_I(1);
    vlSelf->DependencyMatrixTB__DOT__cycle_count = VL_RAND_RESET_I(32);
    for (int __Vi0 = 0; __Vi0 < 8; ++__Vi0) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid = VL_RAND_RESET_I(8);
    vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk1__DOT__i = 0;
    vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__i = 0;
    vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__unnamedblk3__DOT__j = 0;
    vlSelf->__Vtrigprevexpr___TOP__DependencyMatrixTB__DOT__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 4; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}

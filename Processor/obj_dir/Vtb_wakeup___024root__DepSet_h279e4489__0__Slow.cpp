// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_wakeup.h for the primary calling header

#include "Vtb_wakeup__pch.h"
#include "Vtb_wakeup___024root.h"

VL_ATTR_COLD void Vtb_wakeup___024root___eval_static__TOP(Vtb_wakeup___024root* vlSelf);

VL_ATTR_COLD void Vtb_wakeup___024root___eval_static(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_static\n"); );
    // Body
    Vtb_wakeup___024root___eval_static__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[3U] = 1U;
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vtb_wakeup___024root___eval_static__TOP(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->tb_wakeup__DOT__cycle_count = 0U;
    vlSelf->tb_wakeup__DOT__pass_count = 0U;
    vlSelf->tb_wakeup__DOT__fail_count = 0U;
}

VL_ATTR_COLD void Vtb_wakeup___024root___eval_final(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_wakeup___024root___dump_triggers__stl(Vtb_wakeup___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtb_wakeup___024root___eval_phase__stl(Vtb_wakeup___024root* vlSelf);

VL_ATTR_COLD void Vtb_wakeup___024root___eval_settle(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_settle\n"); );
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
            Vtb_wakeup___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("sim/tb_wakeup.sv", 4, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtb_wakeup___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_wakeup___024root___dump_triggers__stl(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_wakeup___024root___stl_sequent__TOP__0(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->tb_wakeup__DOT__reqs = ((2U & (IData)(vlSelf->tb_wakeup__DOT__reqs)) 
                                    | (((0U == vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
                                         [0U]) & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid)) 
                                       & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted))));
    vlSelf->tb_wakeup__DOT__reqs = ((1U & (IData)(vlSelf->tb_wakeup__DOT__reqs)) 
                                    | (0xfffffffeU 
                                       & ((((0U == 
                                             vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
                                             [1U]) 
                                            << 1U) 
                                           & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid)) 
                                          & ((~ ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted) 
                                                 >> 1U)) 
                                             << 1U))));
    vlSelf->tb_wakeup__DOT__dut__DOT__free_entry = 0U;
    vlSelf->tb_wakeup__DOT__dut__DOT__full = 1U;
    vlSelf->tb_wakeup__DOT__dut__DOT__flag = 0U;
    if ((1U & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid)))) {
        vlSelf->tb_wakeup__DOT__dut__DOT__free_entry = 0U;
        vlSelf->tb_wakeup__DOT__dut__DOT__full = 0U;
        vlSelf->tb_wakeup__DOT__dut__DOT__flag = 1U;
    }
    if ((1U & ((~ ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid) 
                   >> 1U)) & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__flag))))) {
        vlSelf->tb_wakeup__DOT__dut__DOT__free_entry = 1U;
        vlSelf->tb_wakeup__DOT__dut__DOT__full = 0U;
        vlSelf->tb_wakeup__DOT__dut__DOT__flag = 1U;
    }
    vlSelf->tb_wakeup__DOT__free_entry_out = vlSelf->tb_wakeup__DOT__dut__DOT__free_entry;
    vlSelf->tb_wakeup__DOT__full_out = vlSelf->tb_wakeup__DOT__dut__DOT__full;
}

VL_ATTR_COLD void Vtb_wakeup___024root___eval_stl(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vtb_wakeup___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vtb_wakeup___024root___eval_triggers__stl(Vtb_wakeup___024root* vlSelf);

VL_ATTR_COLD bool Vtb_wakeup___024root___eval_phase__stl(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtb_wakeup___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vtb_wakeup___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_wakeup___024root___dump_triggers__act(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge tb_wakeup.clk)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
    if ((4ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @(negedge tb_wakeup.clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_wakeup___024root___dump_triggers__nba(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge tb_wakeup.clk)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
    if ((4ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @(negedge tb_wakeup.clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_wakeup___024root___ctor_var_reset(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->tb_wakeup__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__rst = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__cycle_count = VL_RAND_RESET_I(32);
    vlSelf->tb_wakeup__DOT__disp_valid = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__dependency_mask = VL_RAND_RESET_I(4);
    vlSelf->tb_wakeup__DOT__free_entry_out = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__full_out = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__reqs = VL_RAND_RESET_I(2);
    vlSelf->tb_wakeup__DOT__grant = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__grant_valid = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__ready_mask = VL_RAND_RESET_I(4);
    vlSelf->tb_wakeup__DOT__retire_entry = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__retire_valid = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__pass_count = VL_RAND_RESET_I(32);
    vlSelf->tb_wakeup__DOT__fail_count = VL_RAND_RESET_I(32);
    vlSelf->tb_wakeup__DOT__test_grant_ready__Vstatic__granted_entry = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__test_retire__Vstatic__retired_entry = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__test_dispatch_with_deps__Vstatic__dispatched_entry = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count = VL_RAND_RESET_I(32);
    vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before = VL_RAND_RESET_I(32);
    vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after = VL_RAND_RESET_I(32);
    vlSelf->tb_wakeup__DOT__test_dispatch_after_free__Vstatic__new_entry = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid = VL_RAND_RESET_I(2);
    vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted = VL_RAND_RESET_I(2);
    vlSelf->tb_wakeup__DOT__dut__DOT__free_entry = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__dut__DOT__full = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->tb_wakeup__DOT__dut__DOT__flag = VL_RAND_RESET_I(1);
    vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__i = 0;
    vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__unnamedblk2__DOT__j = 0;
    vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk3__DOT__i = 0;
    vlSelf->__Vtrigprevexpr___TOP__tb_wakeup__DOT__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 4; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}

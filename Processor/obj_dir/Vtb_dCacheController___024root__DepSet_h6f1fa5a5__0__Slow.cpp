// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController___024root.h"

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_static__TOP(Vtb_dCacheController___024root* vlSelf);

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_static(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_static\n"); );
    // Body
    Vtb_dCacheController___024root___eval_static__TOP(vlSelf);
}

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_static__TOP(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->tb_dCacheController__DOT__cycle_count = 0U;
}

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_final(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__stl(Vtb_dCacheController___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtb_dCacheController___024root___eval_phase__stl(Vtb_dCacheController___024root* vlSelf);

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_settle(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_settle\n"); );
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
            Vtb_dCacheController___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("sim/tb_dCacheController.sv", 5, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtb_dCacheController___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__stl(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void Vtb_dCacheController___024root___act_comb__TOP__0(Vtb_dCacheController___024root* vlSelf);

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_stl(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vtb_dCacheController___024root___act_comb__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_triggers__stl(Vtb_dCacheController___024root* vlSelf);

VL_ATTR_COLD bool Vtb_dCacheController___024root___eval_phase__stl(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtb_dCacheController___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vtb_dCacheController___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__act(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge tb_dCacheController.clk)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(negedge tb_dCacheController.clk)\n");
    }
    if ((4ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @(negedge tb_dCacheController.clk or [true] __VdlySched.awaitingCurrentTime())\n");
    }
    if ((8ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 3 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__nba(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge tb_dCacheController.clk)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(negedge tb_dCacheController.clk)\n");
    }
    if ((4ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @(negedge tb_dCacheController.clk or [true] __VdlySched.awaitingCurrentTime())\n");
    }
    if ((8ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 3 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_dCacheController___024root___ctor_var_reset(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->tb_dCacheController__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__cycle_count = VL_RAND_RESET_I(32);
    vlSelf->tb_dCacheController__DOT__rst = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(256, vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block);
    VL_RAND_RESET_W(256, vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block);
    VL_RAND_RESET_W(256, vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg = VL_RAND_RESET_I(32);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg = VL_RAND_RESET_I(32);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 = VL_RAND_RESET_I(32);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 = VL_RAND_RESET_I(32);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i = VL_RAND_RESET_I(32);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i = VL_RAND_RESET_I(19);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata = VL_RAND_RESET_I(19);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata = VL_RAND_RESET_I(19);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 256; ++__Vi0) {
        VL_RAND_RESET_W(256, vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem[__Vi0]);
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg = VL_RAND_RESET_I(32);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg = VL_RAND_RESET_I(8);
    VL_RAND_RESET_W(256, vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg = VL_RAND_RESET_I(8);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i = VL_RAND_RESET_I(32);
    for (int __Vi0 = 0; __Vi0 < 256; ++__Vi0) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__mem[__Vi0] = VL_RAND_RESET_I(19);
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg = VL_RAND_RESET_I(8);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg = VL_RAND_RESET_I(19);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 256; ++__Vi0) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__mem[__Vi0] = VL_RAND_RESET_I(19);
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg = VL_RAND_RESET_I(8);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg = VL_RAND_RESET_I(19);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg = VL_RAND_RESET_I(1);
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg = VL_RAND_RESET_I(8);
    VL_RAND_RESET_W(256, vlSelf->__Vintraval_h1d37119c__0);
    vlSelf->__Vintraval_h1c7847b3__0 = VL_RAND_RESET_I(19);
    vlSelf->__Vintraval_h60898a62__0 = VL_RAND_RESET_I(19);
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0 = VL_RAND_RESET_I(19);
    vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0 = 0;
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0 = VL_RAND_RESET_I(19);
    vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0 = 0;
    VL_RAND_RESET_W(256, vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0);
    vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0 = 0;
    vlSelf->__Vtrigprevexpr___TOP__tb_dCacheController__DOT__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 6; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}

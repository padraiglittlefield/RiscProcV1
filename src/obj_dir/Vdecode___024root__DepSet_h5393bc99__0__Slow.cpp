// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdecode.h for the primary calling header

#include "Vdecode__pch.h"
#include "Vdecode___024root.h"

VL_ATTR_COLD void Vdecode___024root___eval_static(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vdecode___024root___eval_initial(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_initial\n"); );
}

VL_ATTR_COLD void Vdecode___024root___eval_final(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__stl(Vdecode___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vdecode___024root___eval_phase__stl(Vdecode___024root* vlSelf);

VL_ATTR_COLD void Vdecode___024root___eval_settle(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_settle\n"); );
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
            Vdecode___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("decode.v", 3, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vdecode___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__stl(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void Vdecode___024root___ico_sequent__TOP__0(Vdecode___024root* vlSelf);

VL_ATTR_COLD void Vdecode___024root___eval_stl(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vdecode___024root___ico_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vdecode___024root___eval_triggers__stl(Vdecode___024root* vlSelf);

VL_ATTR_COLD bool Vdecode___024root___eval_phase__stl(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vdecode___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vdecode___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__ico(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VicoTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__act(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__nba(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vdecode___024root___ctor_var_reset(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->instrs_in);
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op = VL_RAND_RESET_I(6);
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type = VL_RAND_RESET_I(4);
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate = VL_RAND_RESET_I(3);
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__wr_reg = VL_RAND_RESET_I(1);
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op = VL_RAND_RESET_I(6);
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type = VL_RAND_RESET_I(4);
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate = VL_RAND_RESET_I(3);
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__wr_reg = VL_RAND_RESET_I(1);
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op = VL_RAND_RESET_I(6);
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type = VL_RAND_RESET_I(4);
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate = VL_RAND_RESET_I(3);
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__wr_reg = VL_RAND_RESET_I(1);
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op = VL_RAND_RESET_I(6);
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type = VL_RAND_RESET_I(4);
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate = VL_RAND_RESET_I(3);
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__wr_reg = VL_RAND_RESET_I(1);
    vlSelf->decode__DOT____VdfgExtracted_h5d8d65ee__0 = VL_RAND_RESET_I(32);
    vlSelf->decode__DOT____VdfgExtracted_h471e2ee8__0 = VL_RAND_RESET_I(32);
    vlSelf->decode__DOT____VdfgExtracted_h7de9e626__0 = VL_RAND_RESET_I(32);
    vlSelf->decode__DOT____VdfgExtracted_hbc33c744__0 = VL_RAND_RESET_I(32);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}

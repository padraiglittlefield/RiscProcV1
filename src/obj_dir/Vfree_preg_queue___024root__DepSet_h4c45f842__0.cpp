// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfree_preg_queue.h for the primary calling header

#include "Vfree_preg_queue__pch.h"
#include "Vfree_preg_queue___024root.h"

void Vfree_preg_queue___024root___eval_act(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___eval_act\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vfree_preg_queue___024root___nba_sequent__TOP__0(Vfree_preg_queue___024root* vlSelf);

void Vfree_preg_queue___024root___eval_nba(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___eval_nba\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vfree_preg_queue___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vfree_preg_queue___024root___nba_sequent__TOP__0(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___nba_sequent__TOP__0\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*7:0*/ __Vdly__free_preg_queue__DOT__w_ptr;
    __Vdly__free_preg_queue__DOT__w_ptr = 0;
    CData/*7:0*/ __Vdly__free_preg_queue__DOT__r_ptr;
    __Vdly__free_preg_queue__DOT__r_ptr = 0;
    CData/*0:0*/ __VdlySet__free_preg_queue__DOT__free_queue__v0;
    __VdlySet__free_preg_queue__DOT__free_queue__v0 = 0;
    CData/*6:0*/ __VdlyVal__free_preg_queue__DOT__free_queue__v64;
    __VdlyVal__free_preg_queue__DOT__free_queue__v64 = 0;
    CData/*6:0*/ __VdlyDim0__free_preg_queue__DOT__free_queue__v64;
    __VdlyDim0__free_preg_queue__DOT__free_queue__v64 = 0;
    CData/*0:0*/ __VdlySet__free_preg_queue__DOT__free_queue__v64;
    __VdlySet__free_preg_queue__DOT__free_queue__v64 = 0;
    // Body
    __Vdly__free_preg_queue__DOT__r_ptr = vlSelfRef.free_preg_queue__DOT__r_ptr;
    __Vdly__free_preg_queue__DOT__w_ptr = vlSelfRef.free_preg_queue__DOT__w_ptr;
    __VdlySet__free_preg_queue__DOT__free_queue__v0 = 0U;
    __VdlySet__free_preg_queue__DOT__free_queue__v64 = 0U;
    if (vlSelfRef.rst_n) {
        __Vdly__free_preg_queue__DOT__r_ptr = 0U;
        __Vdly__free_preg_queue__DOT__w_ptr = 0x80U;
        __VdlySet__free_preg_queue__DOT__free_queue__v0 = 1U;
    } else {
        if (((IData)(vlSelfRef.r_en) & (~ (IData)(vlSelfRef.empty)))) {
            __Vdly__free_preg_queue__DOT__r_ptr = (0xffU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSelfRef.free_preg_queue__DOT__r_ptr)));
        }
        if (((IData)(vlSelfRef.w_en) & (~ (IData)(vlSelfRef.full)))) {
            __Vdly__free_preg_queue__DOT__w_ptr = (0xffU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSelfRef.free_preg_queue__DOT__w_ptr)));
            __VdlyVal__free_preg_queue__DOT__free_queue__v64 
                = vlSelfRef.instr_in;
            __VdlyDim0__free_preg_queue__DOT__free_queue__v64 
                = (0x7fU & (IData)(vlSelfRef.free_preg_queue__DOT__w_ptr));
            __VdlySet__free_preg_queue__DOT__free_queue__v64 = 1U;
        }
    }
    vlSelfRef.free_preg_queue__DOT__r_ptr = __Vdly__free_preg_queue__DOT__r_ptr;
    vlSelfRef.free_preg_queue__DOT__w_ptr = __Vdly__free_preg_queue__DOT__w_ptr;
    if (__VdlySet__free_preg_queue__DOT__free_queue__v0) {
        vlSelfRef.free_preg_queue__DOT__free_queue[0U] = 0U;
        vlSelfRef.free_preg_queue__DOT__free_queue[1U] = 1U;
        vlSelfRef.free_preg_queue__DOT__free_queue[2U] = 2U;
        vlSelfRef.free_preg_queue__DOT__free_queue[3U] = 3U;
        vlSelfRef.free_preg_queue__DOT__free_queue[4U] = 4U;
        vlSelfRef.free_preg_queue__DOT__free_queue[5U] = 5U;
        vlSelfRef.free_preg_queue__DOT__free_queue[6U] = 6U;
        vlSelfRef.free_preg_queue__DOT__free_queue[7U] = 7U;
        vlSelfRef.free_preg_queue__DOT__free_queue[8U] = 8U;
        vlSelfRef.free_preg_queue__DOT__free_queue[9U] = 9U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0xaU] = 0xaU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0xbU] = 0xbU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0xcU] = 0xcU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0xdU] = 0xdU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0xeU] = 0xeU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0xfU] = 0xfU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x10U] = 0x10U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x11U] = 0x11U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x12U] = 0x12U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x13U] = 0x13U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x14U] = 0x14U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x15U] = 0x15U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x16U] = 0x16U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x17U] = 0x17U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x18U] = 0x18U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x19U] = 0x19U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x1aU] = 0x1aU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x1bU] = 0x1bU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x1cU] = 0x1cU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x1dU] = 0x1dU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x1eU] = 0x1eU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x1fU] = 0x1fU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x20U] = 0x20U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x21U] = 0x21U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x22U] = 0x22U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x23U] = 0x23U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x24U] = 0x24U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x25U] = 0x25U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x26U] = 0x26U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x27U] = 0x27U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x28U] = 0x28U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x29U] = 0x29U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x2aU] = 0x2aU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x2bU] = 0x2bU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x2cU] = 0x2cU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x2dU] = 0x2dU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x2eU] = 0x2eU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x2fU] = 0x2fU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x30U] = 0x30U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x31U] = 0x31U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x32U] = 0x32U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x33U] = 0x33U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x34U] = 0x34U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x35U] = 0x35U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x36U] = 0x36U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x37U] = 0x37U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x38U] = 0x38U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x39U] = 0x39U;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x3aU] = 0x3aU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x3bU] = 0x3bU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x3cU] = 0x3cU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x3dU] = 0x3dU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x3eU] = 0x3eU;
        vlSelfRef.free_preg_queue__DOT__free_queue[0x3fU] = 0x3fU;
    }
    if (__VdlySet__free_preg_queue__DOT__free_queue__v64) {
        vlSelfRef.free_preg_queue__DOT__free_queue[__VdlyDim0__free_preg_queue__DOT__free_queue__v64] 
            = __VdlyVal__free_preg_queue__DOT__free_queue__v64;
    }
    vlSelfRef.instr_out = vlSelfRef.free_preg_queue__DOT__free_queue
        [(0x7fU & (IData)(vlSelfRef.free_preg_queue__DOT__r_ptr))];
}

void Vfree_preg_queue___024root___eval_triggers__act(Vfree_preg_queue___024root* vlSelf);

bool Vfree_preg_queue___024root___eval_phase__act(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___eval_phase__act\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vfree_preg_queue___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vfree_preg_queue___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vfree_preg_queue___024root___eval_phase__nba(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___eval_phase__nba\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vfree_preg_queue___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfree_preg_queue___024root___dump_triggers__nba(Vfree_preg_queue___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vfree_preg_queue___024root___dump_triggers__act(Vfree_preg_queue___024root* vlSelf);
#endif  // VL_DEBUG

void Vfree_preg_queue___024root___eval(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___eval\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vfree_preg_queue___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("free_preg_queue.sv", 3, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vfree_preg_queue___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("free_preg_queue.sv", 3, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vfree_preg_queue___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vfree_preg_queue___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vfree_preg_queue___024root___eval_debug_assertions(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___eval_debug_assertions\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY(((vlSelfRef.clk & 0xfeU)))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY(((vlSelfRef.rst_n & 0xfeU)))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY(((vlSelfRef.w_en & 0xfeU)))) {
        Verilated::overWidthError("w_en");}
    if (VL_UNLIKELY(((vlSelfRef.r_en & 0xfeU)))) {
        Verilated::overWidthError("r_en");}
    if (VL_UNLIKELY(((vlSelfRef.instr_in & 0x80U)))) {
        Verilated::overWidthError("instr_in");}
}
#endif  // VL_DEBUG

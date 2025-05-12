// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdispatch.h for the primary calling header

#include "Vdispatch__pch.h"
#include "Vdispatch___024root.h"

void Vdispatch___024root___eval_act(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vdispatch___024root___nba_sequent__TOP__0(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*7:0*/ __Vdly__dispatch__DOT__r_ptr;
    __Vdly__dispatch__DOT__r_ptr = 0;
    CData/*7:0*/ __Vdly__dispatch__DOT__w_ptr;
    __Vdly__dispatch__DOT__w_ptr = 0;
    CData/*6:0*/ __Vdlyvdim0__dispatch__DOT__disptach_queue__v0;
    __Vdlyvdim0__dispatch__DOT__disptach_queue__v0 = 0;
    SData/*9:0*/ __Vdlyvval__dispatch__DOT__disptach_queue__v0;
    __Vdlyvval__dispatch__DOT__disptach_queue__v0 = 0;
    CData/*0:0*/ __Vdlyvset__dispatch__DOT__disptach_queue__v0;
    __Vdlyvset__dispatch__DOT__disptach_queue__v0 = 0;
    // Body
    __Vdly__dispatch__DOT__r_ptr = vlSelf->dispatch__DOT__r_ptr;
    __Vdly__dispatch__DOT__w_ptr = vlSelf->dispatch__DOT__w_ptr;
    __Vdlyvset__dispatch__DOT__disptach_queue__v0 = 0U;
    if (vlSelf->rst_n) {
        __Vdly__dispatch__DOT__r_ptr = 0U;
        __Vdly__dispatch__DOT__w_ptr = 0U;
    } else {
        if (((IData)(vlSelf->r_en) & (~ (IData)(vlSelf->empty)))) {
            __Vdly__dispatch__DOT__r_ptr = (0xffU & 
                                            ((IData)(1U) 
                                             + (IData)(vlSelf->dispatch__DOT__r_ptr)));
        }
        if (((IData)(vlSelf->w_en) & (~ (IData)(vlSelf->full)))) {
            __Vdly__dispatch__DOT__w_ptr = (0xffU & 
                                            ((IData)(1U) 
                                             + (IData)(vlSelf->dispatch__DOT__w_ptr)));
            __Vdlyvval__dispatch__DOT__disptach_queue__v0 
                = vlSelf->instr_in;
            __Vdlyvset__dispatch__DOT__disptach_queue__v0 = 1U;
            __Vdlyvdim0__dispatch__DOT__disptach_queue__v0 
                = (0x7fU & (IData)(vlSelf->dispatch__DOT__w_ptr));
        }
    }
    vlSelf->dispatch__DOT__r_ptr = __Vdly__dispatch__DOT__r_ptr;
    vlSelf->dispatch__DOT__w_ptr = __Vdly__dispatch__DOT__w_ptr;
    if (__Vdlyvset__dispatch__DOT__disptach_queue__v0) {
        vlSelf->dispatch__DOT__disptach_queue[__Vdlyvdim0__dispatch__DOT__disptach_queue__v0] 
            = __Vdlyvval__dispatch__DOT__disptach_queue__v0;
    }
    vlSelf->instr_out = vlSelf->dispatch__DOT__disptach_queue
        [(0x7fU & (IData)(vlSelf->dispatch__DOT__r_ptr))];
}

void Vdispatch___024root___eval_nba(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vdispatch___024root___nba_sequent__TOP__0(vlSelf);
    }
}

void Vdispatch___024root___eval_triggers__act(Vdispatch___024root* vlSelf);

bool Vdispatch___024root___eval_phase__act(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vdispatch___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vdispatch___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vdispatch___024root___eval_phase__nba(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vdispatch___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdispatch___024root___dump_triggers__nba(Vdispatch___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vdispatch___024root___dump_triggers__act(Vdispatch___024root* vlSelf);
#endif  // VL_DEBUG

void Vdispatch___024root___eval(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vdispatch___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("dispatch.sv", 3, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vdispatch___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("dispatch.sv", 3, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vdispatch___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vdispatch___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vdispatch___024root___eval_debug_assertions(Vdispatch___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->w_en & 0xfeU))) {
        Verilated::overWidthError("w_en");}
    if (VL_UNLIKELY((vlSelf->r_en & 0xfeU))) {
        Verilated::overWidthError("r_en");}
    if (VL_UNLIKELY((vlSelf->instr_in & 0xfc00U))) {
        Verilated::overWidthError("instr_in");}
}
#endif  // VL_DEBUG

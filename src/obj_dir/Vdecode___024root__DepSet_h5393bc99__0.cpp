// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdecode.h for the primary calling header

#include "Vdecode__pch.h"
#include "Vdecode___024root.h"

extern const VlUnpacked<CData/*3:0*/, 64> Vdecode__ConstPool__TABLE_h4c7bd991_0;
extern const VlUnpacked<CData/*2:0*/, 64> Vdecode__ConstPool__TABLE_hd059fe60_0;

VL_INLINE_OPT void Vdecode___024root___ico_sequent__TOP__0(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___ico_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ decode__DOT____VdfgTmp_hf3f61c76__0;
    decode__DOT____VdfgTmp_hf3f61c76__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hbb30f49e__0;
    decode__DOT____VdfgTmp_hbb30f49e__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hf36cc706__0;
    decode__DOT____VdfgTmp_hf36cc706__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h45e5d8b1__0;
    decode__DOT____VdfgTmp_h45e5d8b1__0 = 0;
    CData/*5:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
    vlSelf->rs1 = (0x1fU & (vlSelf->instr >> 0xfU));
    vlSelf->rs2 = (0x1fU & (vlSelf->instr >> 0x14U));
    vlSelf->rd = (0x1fU & (vlSelf->instr >> 7U));
    decode__DOT____VdfgTmp_hf3f61c76__0 = (IData)((0x33U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instr)));
    decode__DOT____VdfgTmp_hbb30f49e__0 = (IData)((0x5033U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instr)));
    decode__DOT____VdfgTmp_hf36cc706__0 = (IData)((0x1000U 
                                                   == 
                                                   (0xfe007000U 
                                                    & vlSelf->instr)));
    decode__DOT____VdfgTmp_h45e5d8b1__0 = (IData)((0x5013U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instr)));
    vlSelf->decoded_op = (((IData)(decode__DOT____VdfgTmp_hf3f61c76__0) 
                           & (0U == (vlSelf->instr 
                                     >> 0x19U))) ? 0U
                           : (((IData)(decode__DOT____VdfgTmp_hf3f61c76__0) 
                               & (0x20U == (vlSelf->instr 
                                            >> 0x19U)))
                               ? 1U : ((IData)((0x7033U 
                                                == 
                                                (0xfe00707fU 
                                                 & vlSelf->instr)))
                                        ? 2U : ((IData)(
                                                        (0x6033U 
                                                         == 
                                                         (0xfe00707fU 
                                                          & vlSelf->instr)))
                                                 ? 3U
                                                 : 
                                                ((IData)(
                                                         (0x4033U 
                                                          == 
                                                          (0xfe00707fU 
                                                           & vlSelf->instr)))
                                                  ? 4U
                                                  : 
                                                 ((IData)(
                                                          (0x2033U 
                                                           == 
                                                           (0xfe00707fU 
                                                            & vlSelf->instr)))
                                                   ? 5U
                                                   : 
                                                  ((IData)(
                                                           (0x3033U 
                                                            == 
                                                            (0xfe00707fU 
                                                             & vlSelf->instr)))
                                                    ? 6U
                                                    : 
                                                   (((IData)(decode__DOT____VdfgTmp_hbb30f49e__0) 
                                                     & (0x20U 
                                                        == 
                                                        (vlSelf->instr 
                                                         >> 0x19U)))
                                                     ? 7U
                                                     : 
                                                    (((IData)(decode__DOT____VdfgTmp_hbb30f49e__0) 
                                                      & (0U 
                                                         == 
                                                         (vlSelf->instr 
                                                          >> 0x19U)))
                                                      ? 8U
                                                      : 
                                                     (((0x33U 
                                                        == 
                                                        (0x7fU 
                                                         & vlSelf->instr)) 
                                                       & (IData)(decode__DOT____VdfgTmp_hf36cc706__0))
                                                       ? 9U
                                                       : 
                                                      (((IData)(decode__DOT____VdfgTmp_hf3f61c76__0) 
                                                        & (1U 
                                                           == 
                                                           (vlSelf->instr 
                                                            >> 0x19U)))
                                                        ? 0xaU
                                                        : 
                                                       ((IData)(
                                                                (0x13U 
                                                                 == 
                                                                 (0x707fU 
                                                                  & vlSelf->instr)))
                                                         ? 0xbU
                                                         : 
                                                        ((IData)(
                                                                 (0x7013U 
                                                                  == 
                                                                  (0x707fU 
                                                                   & vlSelf->instr)))
                                                          ? 0xcU
                                                          : 
                                                         ((IData)(
                                                                  (0x6013U 
                                                                   == 
                                                                   (0x707fU 
                                                                    & vlSelf->instr)))
                                                           ? 0xdU
                                                           : 
                                                          ((IData)(
                                                                   (0x4013U 
                                                                    == 
                                                                    (0x707fU 
                                                                     & vlSelf->instr)))
                                                            ? 0xeU
                                                            : 
                                                           ((IData)(
                                                                    (0x2013U 
                                                                     == 
                                                                     (0x707fU 
                                                                      & vlSelf->instr)))
                                                             ? 0xfU
                                                             : 
                                                            ((IData)(
                                                                     (0x3013U 
                                                                      == 
                                                                      (0x707fU 
                                                                       & vlSelf->instr)))
                                                              ? 0x10U
                                                              : 
                                                             (((IData)(decode__DOT____VdfgTmp_h45e5d8b1__0) 
                                                               & (0x20U 
                                                                  == 
                                                                  (vlSelf->instr 
                                                                   >> 0x19U)))
                                                               ? 0x11U
                                                               : 
                                                              (((IData)(decode__DOT____VdfgTmp_h45e5d8b1__0) 
                                                                & (0U 
                                                                   == 
                                                                   (vlSelf->instr 
                                                                    >> 0x19U)))
                                                                ? 0x12U
                                                                : 
                                                               (((0x13U 
                                                                  == 
                                                                  (0x7fU 
                                                                   & vlSelf->instr)) 
                                                                 & (IData)(decode__DOT____VdfgTmp_hf36cc706__0))
                                                                 ? 0x13U
                                                                 : 
                                                                ((0x37U 
                                                                  == 
                                                                  (0x7fU 
                                                                   & vlSelf->instr))
                                                                  ? 0x14U
                                                                  : 
                                                                 ((0x17U 
                                                                   == 
                                                                   (0x7fU 
                                                                    & vlSelf->instr))
                                                                   ? 0x15U
                                                                   : 
                                                                  ((IData)(
                                                                           (0x2003U 
                                                                            == 
                                                                            (0x707fU 
                                                                             & vlSelf->instr)))
                                                                    ? 0x16U
                                                                    : 
                                                                   ((IData)(
                                                                            (0x2023U 
                                                                             == 
                                                                             (0x707fU 
                                                                              & vlSelf->instr)))
                                                                     ? 0x17U
                                                                     : 
                                                                    ((0x6fU 
                                                                      == 
                                                                      (0x7fU 
                                                                       & vlSelf->instr))
                                                                      ? 0x18U
                                                                      : 
                                                                     ((IData)(
                                                                              (0x67U 
                                                                               == 
                                                                               (0x707fU 
                                                                                & vlSelf->instr)))
                                                                       ? 0x1aU
                                                                       : 
                                                                      ((IData)(
                                                                               (0x63U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instr)))
                                                                        ? 0x1bU
                                                                        : 
                                                                       ((IData)(
                                                                                (0x1063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instr)))
                                                                         ? 0x1cU
                                                                         : 
                                                                        ((IData)(
                                                                                (0x4063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instr)))
                                                                          ? 0x1dU
                                                                          : 
                                                                         ((IData)(
                                                                                (0x5063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instr)))
                                                                           ? 0x1eU
                                                                           : 
                                                                          ((IData)(
                                                                                (0x6063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instr)))
                                                                            ? 0x1fU
                                                                            : 
                                                                           ((IData)(
                                                                                (0x7063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instr)))
                                                                             ? 0x20U
                                                                             : 0x21U))))))))))))))))))))))))))))))));
    vlSelf->is_br = ((0x1bU == (IData)(vlSelf->decoded_op)) 
                     | ((0x1cU == (IData)(vlSelf->decoded_op)) 
                        | ((0x1dU == (IData)(vlSelf->decoded_op)) 
                           | ((0x1eU == (IData)(vlSelf->decoded_op)) 
                              | ((0x1fU == (IData)(vlSelf->decoded_op)) 
                                 | (0x20U == (IData)(vlSelf->decoded_op)))))));
    vlSelf->is_jmp = ((0x18U == (IData)(vlSelf->decoded_op)) 
                      | ((0x19U == (IData)(vlSelf->decoded_op)) 
                         | (0x1aU == (IData)(vlSelf->decoded_op))));
    vlSelf->wr_mem = (0x17U == (IData)(vlSelf->decoded_op));
    vlSelf->rd_mem = (0x16U == (IData)(vlSelf->decoded_op));
    __Vtableidx1 = vlSelf->decoded_op;
    vlSelf->instr_type = Vdecode__ConstPool__TABLE_h4c7bd991_0
        [__Vtableidx1];
    vlSelf->instr_type_immediate = Vdecode__ConstPool__TABLE_hd059fe60_0
        [__Vtableidx1];
    vlSelf->wr_reg = (((0U == (IData)(vlSelf->decoded_op)) 
                       | ((1U == (IData)(vlSelf->decoded_op)) 
                          | ((2U == (IData)(vlSelf->decoded_op)) 
                             | ((3U == (IData)(vlSelf->decoded_op)) 
                                | ((4U == (IData)(vlSelf->decoded_op)) 
                                   | ((5U == (IData)(vlSelf->decoded_op)) 
                                      | ((6U == (IData)(vlSelf->decoded_op)) 
                                         | ((7U == (IData)(vlSelf->decoded_op)) 
                                            | ((8U 
                                                == (IData)(vlSelf->decoded_op)) 
                                               | ((9U 
                                                   == (IData)(vlSelf->decoded_op)) 
                                                  | ((0xaU 
                                                      == (IData)(vlSelf->decoded_op)) 
                                                     | ((0xbU 
                                                         == (IData)(vlSelf->decoded_op)) 
                                                        | ((0xcU 
                                                            == (IData)(vlSelf->decoded_op)) 
                                                           | ((0xdU 
                                                               == (IData)(vlSelf->decoded_op)) 
                                                              | ((0xeU 
                                                                  == (IData)(vlSelf->decoded_op)) 
                                                                 | ((0xfU 
                                                                     == (IData)(vlSelf->decoded_op)) 
                                                                    | ((0x10U 
                                                                        == (IData)(vlSelf->decoded_op)) 
                                                                       | ((0x11U 
                                                                           == (IData)(vlSelf->decoded_op)) 
                                                                          | ((0x12U 
                                                                              == (IData)(vlSelf->decoded_op)) 
                                                                             | ((0x13U 
                                                                                == (IData)(vlSelf->decoded_op)) 
                                                                                | ((0x14U 
                                                                                == (IData)(vlSelf->decoded_op)) 
                                                                                | ((0x15U 
                                                                                == (IData)(vlSelf->decoded_op)) 
                                                                                | ((IData)(vlSelf->rd_mem) 
                                                                                | ((0x18U 
                                                                                == (IData)(vlSelf->decoded_op)) 
                                                                                | (0x1aU 
                                                                                == (IData)(vlSelf->decoded_op)))))))))))))))))))))))))) 
                      & (0U != (IData)(vlSelf->rd)));
    vlSelf->imm_val = ((1U == (IData)(vlSelf->instr_type_immediate))
                        ? (((- (IData)((vlSelf->instr 
                                        >> 0x1fU))) 
                            << 0xbU) | (0x7ffU & (vlSelf->instr 
                                                  >> 0x14U)))
                        : ((1U == (IData)(vlSelf->instr_type_immediate))
                            ? (((- (IData)((vlSelf->instr 
                                            >> 0x1fU))) 
                                << 0xbU) | (0x7ffU 
                                            & (vlSelf->instr 
                                               >> 0x14U)))
                            : ((4U == (IData)(vlSelf->instr_type_immediate))
                                ? (((- (IData)((vlSelf->instr 
                                                >> 0x1fU))) 
                                    << 0xbU) | ((0x7e0U 
                                                 & (vlSelf->instr 
                                                    >> 0x14U)) 
                                                | (0x1fU 
                                                   & (vlSelf->instr 
                                                      >> 7U))))
                                : ((5U == (IData)(vlSelf->instr_type_immediate))
                                    ? (((- (IData)(
                                                   (vlSelf->instr 
                                                    >> 0x1fU))) 
                                        << 0xcU) | 
                                       ((0x800U & (vlSelf->instr 
                                                   << 4U)) 
                                        | ((0x7e0U 
                                            & (vlSelf->instr 
                                               >> 0x14U)) 
                                           | (0x1eU 
                                              & (vlSelf->instr 
                                                 >> 7U)))))
                                    : ((3U == (IData)(vlSelf->instr_type_immediate))
                                        ? (0xfffff000U 
                                           & vlSelf->instr)
                                        : ((2U == (IData)(vlSelf->instr_type_immediate))
                                            ? (((- (IData)(
                                                           (vlSelf->instr 
                                                            >> 0x1fU))) 
                                                << 0x14U) 
                                               | ((0xff000U 
                                                   & vlSelf->instr) 
                                                  | ((0x800U 
                                                      & (vlSelf->instr 
                                                         >> 9U)) 
                                                     | ((0x7e0U 
                                                         & (vlSelf->instr 
                                                            >> 0x14U)) 
                                                        | (0x1eU 
                                                           & (vlSelf->instr 
                                                              >> 0x14U))))))
                                            : 0U))))));
}

void Vdecode___024root___eval_ico(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        Vdecode___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void Vdecode___024root___eval_triggers__ico(Vdecode___024root* vlSelf);

bool Vdecode___024root___eval_phase__ico(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_phase__ico\n"); );
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vdecode___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelf->__VicoTriggered.any();
    if (__VicoExecute) {
        Vdecode___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vdecode___024root___eval_act(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_act\n"); );
}

void Vdecode___024root___eval_nba(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_nba\n"); );
}

void Vdecode___024root___eval_triggers__act(Vdecode___024root* vlSelf);

bool Vdecode___024root___eval_phase__act(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<0> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vdecode___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vdecode___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vdecode___024root___eval_phase__nba(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vdecode___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__ico(Vdecode___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__nba(Vdecode___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__act(Vdecode___024root* vlSelf);
#endif  // VL_DEBUG

void Vdecode___024root___eval(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelf->__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            Vdecode___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("decode.sv", 3, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vdecode___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelf->__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vdecode___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("decode.sv", 3, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vdecode___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("decode.sv", 3, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vdecode___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vdecode___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vdecode___024root___eval_debug_assertions(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG

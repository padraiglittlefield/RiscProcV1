// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdecode.h for the primary calling header

#include "Vdecode__pch.h"
#include "Vdecode___024root.h"

extern const VlUnpacked<CData/*3:0*/, 64> Vdecode__ConstPool__TABLE_hc50598e4_0;
extern const VlUnpacked<CData/*2:0*/, 64> Vdecode__ConstPool__TABLE_hbd1e8592_0;

VL_INLINE_OPT void Vdecode___024root___ico_sequent__TOP__0(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___ico_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ decode__DOT____VdfgTmp_hb7597a0b__0;
    decode__DOT____VdfgTmp_hb7597a0b__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h6f1a1243__0;
    decode__DOT____VdfgTmp_h6f1a1243__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h260a72f1__0;
    decode__DOT____VdfgTmp_h260a72f1__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hf594a48e__0;
    decode__DOT____VdfgTmp_hf594a48e__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h1444d739__0;
    decode__DOT____VdfgTmp_h1444d739__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hcc55afb5__0;
    decode__DOT____VdfgTmp_hcc55afb5__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h5f22394f__0;
    decode__DOT____VdfgTmp_h5f22394f__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hea0eeab3__0;
    decode__DOT____VdfgTmp_hea0eeab3__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hf6a64e58__0;
    decode__DOT____VdfgTmp_hf6a64e58__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hb894b650__0;
    decode__DOT____VdfgTmp_hb894b650__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h332f85bd__0;
    decode__DOT____VdfgTmp_h332f85bd__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h729491ad__0;
    decode__DOT____VdfgTmp_h729491ad__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_hc95180d2__0;
    decode__DOT____VdfgTmp_hc95180d2__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h8382f90a__0;
    decode__DOT____VdfgTmp_h8382f90a__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_h11a782d2__0;
    decode__DOT____VdfgTmp_h11a782d2__0 = 0;
    CData/*0:0*/ decode__DOT____VdfgTmp_ha48a4ad0__0;
    decode__DOT____VdfgTmp_ha48a4ad0__0 = 0;
    CData/*5:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    CData/*5:0*/ __Vtableidx2;
    __Vtableidx2 = 0;
    CData/*5:0*/ __Vtableidx3;
    __Vtableidx3 = 0;
    CData/*5:0*/ __Vtableidx4;
    __Vtableidx4 = 0;
    // Body
    vlSelf->decode__DOT____VdfgExtracted_h5d8d65ee__0 
        = (((- (IData)((vlSelf->instrs_in[0U] >> 0x1fU))) 
            << 0xbU) | (0x7ffU & (vlSelf->instrs_in[0U] 
                                  >> 0x14U)));
    vlSelf->decode__DOT____VdfgExtracted_h471e2ee8__0 
        = (((- (IData)((vlSelf->instrs_in[1U] >> 0x1fU))) 
            << 0xbU) | (0x7ffU & (vlSelf->instrs_in[1U] 
                                  >> 0x14U)));
    vlSelf->decode__DOT____VdfgExtracted_h7de9e626__0 
        = (((- (IData)((vlSelf->instrs_in[2U] >> 0x1fU))) 
            << 0xbU) | (0x7ffU & (vlSelf->instrs_in[2U] 
                                  >> 0x14U)));
    vlSelf->decode__DOT____VdfgExtracted_hbc33c744__0 
        = (((- (IData)((vlSelf->instrs_in[3U] >> 0x1fU))) 
            << 0xbU) | (0x7ffU & (vlSelf->instrs_in[3U] 
                                  >> 0x14U)));
    decode__DOT____VdfgTmp_hb7597a0b__0 = (IData)((0x33U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[0U])));
    decode__DOT____VdfgTmp_h6f1a1243__0 = (IData)((0x5033U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[0U])));
    decode__DOT____VdfgTmp_h260a72f1__0 = (IData)((0x1000U 
                                                   == 
                                                   (0xfe007000U 
                                                    & vlSelf->instrs_in[0U])));
    decode__DOT____VdfgTmp_hf594a48e__0 = (IData)((0x5013U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[0U])));
    decode__DOT____VdfgTmp_h1444d739__0 = (IData)((0x33U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[1U])));
    decode__DOT____VdfgTmp_hcc55afb5__0 = (IData)((0x5033U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[1U])));
    decode__DOT____VdfgTmp_h5f22394f__0 = (IData)((0x1000U 
                                                   == 
                                                   (0xfe007000U 
                                                    & vlSelf->instrs_in[1U])));
    decode__DOT____VdfgTmp_hea0eeab3__0 = (IData)((0x5013U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[1U])));
    decode__DOT____VdfgTmp_hf6a64e58__0 = (IData)((0x33U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[2U])));
    decode__DOT____VdfgTmp_hb894b650__0 = (IData)((0x5033U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[2U])));
    decode__DOT____VdfgTmp_h332f85bd__0 = (IData)((0x1000U 
                                                   == 
                                                   (0xfe007000U 
                                                    & vlSelf->instrs_in[2U])));
    decode__DOT____VdfgTmp_h729491ad__0 = (IData)((0x5013U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[2U])));
    decode__DOT____VdfgTmp_hc95180d2__0 = (IData)((0x33U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[3U])));
    decode__DOT____VdfgTmp_h8382f90a__0 = (IData)((0x5033U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[3U])));
    decode__DOT____VdfgTmp_h11a782d2__0 = (IData)((0x1000U 
                                                   == 
                                                   (0xfe007000U 
                                                    & vlSelf->instrs_in[3U])));
    decode__DOT____VdfgTmp_ha48a4ad0__0 = (IData)((0x5013U 
                                                   == 
                                                   (0x707fU 
                                                    & vlSelf->instrs_in[3U])));
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op 
        = (((IData)(decode__DOT____VdfgTmp_hb7597a0b__0) 
            & (0U == (vlSelf->instrs_in[0U] >> 0x19U)))
            ? 1U : (((IData)(decode__DOT____VdfgTmp_hb7597a0b__0) 
                     & (0x20U == (vlSelf->instrs_in[0U] 
                                  >> 0x19U))) ? 2U : 
                    ((IData)((0x7033U == (0xfe00707fU 
                                          & vlSelf->instrs_in[0U])))
                      ? 3U : ((IData)((0x6033U == (0xfe00707fU 
                                                   & vlSelf->instrs_in[0U])))
                               ? 4U : ((IData)((0x4033U 
                                                == 
                                                (0xfe00707fU 
                                                 & vlSelf->instrs_in[0U])))
                                        ? 5U : ((IData)(
                                                        (0x2033U 
                                                         == 
                                                         (0xfe00707fU 
                                                          & vlSelf->instrs_in[0U])))
                                                 ? 6U
                                                 : 
                                                ((IData)(
                                                         (0x3033U 
                                                          == 
                                                          (0xfe00707fU 
                                                           & vlSelf->instrs_in[0U])))
                                                  ? 7U
                                                  : 
                                                 (((IData)(decode__DOT____VdfgTmp_h6f1a1243__0) 
                                                   & (0x20U 
                                                      == 
                                                      (vlSelf->instrs_in[0U] 
                                                       >> 0x19U)))
                                                   ? 8U
                                                   : 
                                                  (((IData)(decode__DOT____VdfgTmp_h6f1a1243__0) 
                                                    & (0U 
                                                       == 
                                                       (vlSelf->instrs_in[0U] 
                                                        >> 0x19U)))
                                                    ? 9U
                                                    : 
                                                   (((0x33U 
                                                      == 
                                                      (0x7fU 
                                                       & vlSelf->instrs_in[0U])) 
                                                     & (IData)(decode__DOT____VdfgTmp_h260a72f1__0))
                                                     ? 0xaU
                                                     : 
                                                    (((IData)(decode__DOT____VdfgTmp_hb7597a0b__0) 
                                                      & (1U 
                                                         == 
                                                         (vlSelf->instrs_in[0U] 
                                                          >> 0x19U)))
                                                      ? 0xbU
                                                      : 
                                                     ((IData)(
                                                              (0x13U 
                                                               == 
                                                               (0x707fU 
                                                                & vlSelf->instrs_in[0U])))
                                                       ? 0xcU
                                                       : 
                                                      ((IData)(
                                                               (0x7013U 
                                                                == 
                                                                (0x707fU 
                                                                 & vlSelf->instrs_in[0U])))
                                                        ? 0xdU
                                                        : 
                                                       ((IData)(
                                                                (0x6013U 
                                                                 == 
                                                                 (0x707fU 
                                                                  & vlSelf->instrs_in[0U])))
                                                         ? 0xeU
                                                         : 
                                                        ((IData)(
                                                                 (0x4013U 
                                                                  == 
                                                                  (0x707fU 
                                                                   & vlSelf->instrs_in[0U])))
                                                          ? 0xfU
                                                          : 
                                                         ((IData)(
                                                                  (0x2013U 
                                                                   == 
                                                                   (0x707fU 
                                                                    & vlSelf->instrs_in[0U])))
                                                           ? 0x10U
                                                           : 
                                                          ((IData)(
                                                                   (0x3013U 
                                                                    == 
                                                                    (0x707fU 
                                                                     & vlSelf->instrs_in[0U])))
                                                            ? 0x11U
                                                            : 
                                                           (((IData)(decode__DOT____VdfgTmp_hf594a48e__0) 
                                                             & (0x20U 
                                                                == 
                                                                (vlSelf->instrs_in[0U] 
                                                                 >> 0x19U)))
                                                             ? 0x12U
                                                             : 
                                                            (((IData)(decode__DOT____VdfgTmp_hf594a48e__0) 
                                                              & (0U 
                                                                 == 
                                                                 (vlSelf->instrs_in[0U] 
                                                                  >> 0x19U)))
                                                              ? 0x13U
                                                              : 
                                                             (((0x13U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[0U])) 
                                                               & (IData)(decode__DOT____VdfgTmp_h260a72f1__0))
                                                               ? 0x14U
                                                               : 
                                                              ((0x37U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[0U]))
                                                                ? 0x15U
                                                                : 
                                                               ((0x17U 
                                                                 == 
                                                                 (0x7fU 
                                                                  & vlSelf->instrs_in[0U]))
                                                                 ? 0x16U
                                                                 : 
                                                                ((IData)(
                                                                         (0x2003U 
                                                                          == 
                                                                          (0x707fU 
                                                                           & vlSelf->instrs_in[0U])))
                                                                  ? 0x17U
                                                                  : 
                                                                 ((IData)(
                                                                          (0x2023U 
                                                                           == 
                                                                           (0x707fU 
                                                                            & vlSelf->instrs_in[0U])))
                                                                   ? 0x18U
                                                                   : 
                                                                  ((0x6fU 
                                                                    == 
                                                                    (0x7fU 
                                                                     & vlSelf->instrs_in[0U]))
                                                                    ? 0x19U
                                                                    : 
                                                                   ((IData)(
                                                                            (0x67U 
                                                                             == 
                                                                             (0x707fU 
                                                                              & vlSelf->instrs_in[0U])))
                                                                     ? 0x1bU
                                                                     : 
                                                                    ((IData)(
                                                                             (0x63U 
                                                                              == 
                                                                              (0x707fU 
                                                                               & vlSelf->instrs_in[0U])))
                                                                      ? 0x1cU
                                                                      : 
                                                                     ((IData)(
                                                                              (0x1063U 
                                                                               == 
                                                                               (0x707fU 
                                                                                & vlSelf->instrs_in[0U])))
                                                                       ? 0x1dU
                                                                       : 
                                                                      ((IData)(
                                                                               (0x4063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[0U])))
                                                                        ? 0x1eU
                                                                        : 
                                                                       ((IData)(
                                                                                (0x5063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[0U])))
                                                                         ? 0x1fU
                                                                         : 
                                                                        ((IData)(
                                                                                (0x6063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[0U])))
                                                                          ? 0x20U
                                                                          : 
                                                                         ((IData)(
                                                                                (0x7063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[0U])))
                                                                           ? 0x21U
                                                                           : 0x22U))))))))))))))))))))))))))))))));
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op 
        = (((IData)(decode__DOT____VdfgTmp_h1444d739__0) 
            & (0U == (vlSelf->instrs_in[1U] >> 0x19U)))
            ? 1U : (((IData)(decode__DOT____VdfgTmp_h1444d739__0) 
                     & (0x20U == (vlSelf->instrs_in[1U] 
                                  >> 0x19U))) ? 2U : 
                    ((IData)((0x7033U == (0xfe00707fU 
                                          & vlSelf->instrs_in[1U])))
                      ? 3U : ((IData)((0x6033U == (0xfe00707fU 
                                                   & vlSelf->instrs_in[1U])))
                               ? 4U : ((IData)((0x4033U 
                                                == 
                                                (0xfe00707fU 
                                                 & vlSelf->instrs_in[1U])))
                                        ? 5U : ((IData)(
                                                        (0x2033U 
                                                         == 
                                                         (0xfe00707fU 
                                                          & vlSelf->instrs_in[1U])))
                                                 ? 6U
                                                 : 
                                                ((IData)(
                                                         (0x3033U 
                                                          == 
                                                          (0xfe00707fU 
                                                           & vlSelf->instrs_in[1U])))
                                                  ? 7U
                                                  : 
                                                 (((IData)(decode__DOT____VdfgTmp_hcc55afb5__0) 
                                                   & (0x20U 
                                                      == 
                                                      (vlSelf->instrs_in[1U] 
                                                       >> 0x19U)))
                                                   ? 8U
                                                   : 
                                                  (((IData)(decode__DOT____VdfgTmp_hcc55afb5__0) 
                                                    & (0U 
                                                       == 
                                                       (vlSelf->instrs_in[1U] 
                                                        >> 0x19U)))
                                                    ? 9U
                                                    : 
                                                   (((0x33U 
                                                      == 
                                                      (0x7fU 
                                                       & vlSelf->instrs_in[1U])) 
                                                     & (IData)(decode__DOT____VdfgTmp_h5f22394f__0))
                                                     ? 0xaU
                                                     : 
                                                    (((IData)(decode__DOT____VdfgTmp_h1444d739__0) 
                                                      & (1U 
                                                         == 
                                                         (vlSelf->instrs_in[1U] 
                                                          >> 0x19U)))
                                                      ? 0xbU
                                                      : 
                                                     ((IData)(
                                                              (0x13U 
                                                               == 
                                                               (0x707fU 
                                                                & vlSelf->instrs_in[1U])))
                                                       ? 0xcU
                                                       : 
                                                      ((IData)(
                                                               (0x7013U 
                                                                == 
                                                                (0x707fU 
                                                                 & vlSelf->instrs_in[1U])))
                                                        ? 0xdU
                                                        : 
                                                       ((IData)(
                                                                (0x6013U 
                                                                 == 
                                                                 (0x707fU 
                                                                  & vlSelf->instrs_in[1U])))
                                                         ? 0xeU
                                                         : 
                                                        ((IData)(
                                                                 (0x4013U 
                                                                  == 
                                                                  (0x707fU 
                                                                   & vlSelf->instrs_in[1U])))
                                                          ? 0xfU
                                                          : 
                                                         ((IData)(
                                                                  (0x2013U 
                                                                   == 
                                                                   (0x707fU 
                                                                    & vlSelf->instrs_in[1U])))
                                                           ? 0x10U
                                                           : 
                                                          ((IData)(
                                                                   (0x3013U 
                                                                    == 
                                                                    (0x707fU 
                                                                     & vlSelf->instrs_in[1U])))
                                                            ? 0x11U
                                                            : 
                                                           (((IData)(decode__DOT____VdfgTmp_hea0eeab3__0) 
                                                             & (0x20U 
                                                                == 
                                                                (vlSelf->instrs_in[1U] 
                                                                 >> 0x19U)))
                                                             ? 0x12U
                                                             : 
                                                            (((IData)(decode__DOT____VdfgTmp_hea0eeab3__0) 
                                                              & (0U 
                                                                 == 
                                                                 (vlSelf->instrs_in[1U] 
                                                                  >> 0x19U)))
                                                              ? 0x13U
                                                              : 
                                                             (((0x13U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[1U])) 
                                                               & (IData)(decode__DOT____VdfgTmp_h5f22394f__0))
                                                               ? 0x14U
                                                               : 
                                                              ((0x37U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[1U]))
                                                                ? 0x15U
                                                                : 
                                                               ((0x17U 
                                                                 == 
                                                                 (0x7fU 
                                                                  & vlSelf->instrs_in[1U]))
                                                                 ? 0x16U
                                                                 : 
                                                                ((IData)(
                                                                         (0x2003U 
                                                                          == 
                                                                          (0x707fU 
                                                                           & vlSelf->instrs_in[1U])))
                                                                  ? 0x17U
                                                                  : 
                                                                 ((IData)(
                                                                          (0x2023U 
                                                                           == 
                                                                           (0x707fU 
                                                                            & vlSelf->instrs_in[1U])))
                                                                   ? 0x18U
                                                                   : 
                                                                  ((0x6fU 
                                                                    == 
                                                                    (0x7fU 
                                                                     & vlSelf->instrs_in[1U]))
                                                                    ? 0x19U
                                                                    : 
                                                                   ((IData)(
                                                                            (0x67U 
                                                                             == 
                                                                             (0x707fU 
                                                                              & vlSelf->instrs_in[1U])))
                                                                     ? 0x1bU
                                                                     : 
                                                                    ((IData)(
                                                                             (0x63U 
                                                                              == 
                                                                              (0x707fU 
                                                                               & vlSelf->instrs_in[1U])))
                                                                      ? 0x1cU
                                                                      : 
                                                                     ((IData)(
                                                                              (0x1063U 
                                                                               == 
                                                                               (0x707fU 
                                                                                & vlSelf->instrs_in[1U])))
                                                                       ? 0x1dU
                                                                       : 
                                                                      ((IData)(
                                                                               (0x4063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[1U])))
                                                                        ? 0x1eU
                                                                        : 
                                                                       ((IData)(
                                                                                (0x5063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[1U])))
                                                                         ? 0x1fU
                                                                         : 
                                                                        ((IData)(
                                                                                (0x6063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[1U])))
                                                                          ? 0x20U
                                                                          : 
                                                                         ((IData)(
                                                                                (0x7063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[1U])))
                                                                           ? 0x21U
                                                                           : 0x22U))))))))))))))))))))))))))))))));
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op 
        = (((IData)(decode__DOT____VdfgTmp_hf6a64e58__0) 
            & (0U == (vlSelf->instrs_in[2U] >> 0x19U)))
            ? 1U : (((IData)(decode__DOT____VdfgTmp_hf6a64e58__0) 
                     & (0x20U == (vlSelf->instrs_in[2U] 
                                  >> 0x19U))) ? 2U : 
                    ((IData)((0x7033U == (0xfe00707fU 
                                          & vlSelf->instrs_in[2U])))
                      ? 3U : ((IData)((0x6033U == (0xfe00707fU 
                                                   & vlSelf->instrs_in[2U])))
                               ? 4U : ((IData)((0x4033U 
                                                == 
                                                (0xfe00707fU 
                                                 & vlSelf->instrs_in[2U])))
                                        ? 5U : ((IData)(
                                                        (0x2033U 
                                                         == 
                                                         (0xfe00707fU 
                                                          & vlSelf->instrs_in[2U])))
                                                 ? 6U
                                                 : 
                                                ((IData)(
                                                         (0x3033U 
                                                          == 
                                                          (0xfe00707fU 
                                                           & vlSelf->instrs_in[2U])))
                                                  ? 7U
                                                  : 
                                                 (((IData)(decode__DOT____VdfgTmp_hb894b650__0) 
                                                   & (0x20U 
                                                      == 
                                                      (vlSelf->instrs_in[2U] 
                                                       >> 0x19U)))
                                                   ? 8U
                                                   : 
                                                  (((IData)(decode__DOT____VdfgTmp_hb894b650__0) 
                                                    & (0U 
                                                       == 
                                                       (vlSelf->instrs_in[2U] 
                                                        >> 0x19U)))
                                                    ? 9U
                                                    : 
                                                   (((0x33U 
                                                      == 
                                                      (0x7fU 
                                                       & vlSelf->instrs_in[2U])) 
                                                     & (IData)(decode__DOT____VdfgTmp_h332f85bd__0))
                                                     ? 0xaU
                                                     : 
                                                    (((IData)(decode__DOT____VdfgTmp_hf6a64e58__0) 
                                                      & (1U 
                                                         == 
                                                         (vlSelf->instrs_in[2U] 
                                                          >> 0x19U)))
                                                      ? 0xbU
                                                      : 
                                                     ((IData)(
                                                              (0x13U 
                                                               == 
                                                               (0x707fU 
                                                                & vlSelf->instrs_in[2U])))
                                                       ? 0xcU
                                                       : 
                                                      ((IData)(
                                                               (0x7013U 
                                                                == 
                                                                (0x707fU 
                                                                 & vlSelf->instrs_in[2U])))
                                                        ? 0xdU
                                                        : 
                                                       ((IData)(
                                                                (0x6013U 
                                                                 == 
                                                                 (0x707fU 
                                                                  & vlSelf->instrs_in[2U])))
                                                         ? 0xeU
                                                         : 
                                                        ((IData)(
                                                                 (0x4013U 
                                                                  == 
                                                                  (0x707fU 
                                                                   & vlSelf->instrs_in[2U])))
                                                          ? 0xfU
                                                          : 
                                                         ((IData)(
                                                                  (0x2013U 
                                                                   == 
                                                                   (0x707fU 
                                                                    & vlSelf->instrs_in[2U])))
                                                           ? 0x10U
                                                           : 
                                                          ((IData)(
                                                                   (0x3013U 
                                                                    == 
                                                                    (0x707fU 
                                                                     & vlSelf->instrs_in[2U])))
                                                            ? 0x11U
                                                            : 
                                                           (((IData)(decode__DOT____VdfgTmp_h729491ad__0) 
                                                             & (0x20U 
                                                                == 
                                                                (vlSelf->instrs_in[2U] 
                                                                 >> 0x19U)))
                                                             ? 0x12U
                                                             : 
                                                            (((IData)(decode__DOT____VdfgTmp_h729491ad__0) 
                                                              & (0U 
                                                                 == 
                                                                 (vlSelf->instrs_in[2U] 
                                                                  >> 0x19U)))
                                                              ? 0x13U
                                                              : 
                                                             (((0x13U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[2U])) 
                                                               & (IData)(decode__DOT____VdfgTmp_h332f85bd__0))
                                                               ? 0x14U
                                                               : 
                                                              ((0x37U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[2U]))
                                                                ? 0x15U
                                                                : 
                                                               ((0x17U 
                                                                 == 
                                                                 (0x7fU 
                                                                  & vlSelf->instrs_in[2U]))
                                                                 ? 0x16U
                                                                 : 
                                                                ((IData)(
                                                                         (0x2003U 
                                                                          == 
                                                                          (0x707fU 
                                                                           & vlSelf->instrs_in[2U])))
                                                                  ? 0x17U
                                                                  : 
                                                                 ((IData)(
                                                                          (0x2023U 
                                                                           == 
                                                                           (0x707fU 
                                                                            & vlSelf->instrs_in[2U])))
                                                                   ? 0x18U
                                                                   : 
                                                                  ((0x6fU 
                                                                    == 
                                                                    (0x7fU 
                                                                     & vlSelf->instrs_in[2U]))
                                                                    ? 0x19U
                                                                    : 
                                                                   ((IData)(
                                                                            (0x67U 
                                                                             == 
                                                                             (0x707fU 
                                                                              & vlSelf->instrs_in[2U])))
                                                                     ? 0x1bU
                                                                     : 
                                                                    ((IData)(
                                                                             (0x63U 
                                                                              == 
                                                                              (0x707fU 
                                                                               & vlSelf->instrs_in[2U])))
                                                                      ? 0x1cU
                                                                      : 
                                                                     ((IData)(
                                                                              (0x1063U 
                                                                               == 
                                                                               (0x707fU 
                                                                                & vlSelf->instrs_in[2U])))
                                                                       ? 0x1dU
                                                                       : 
                                                                      ((IData)(
                                                                               (0x4063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[2U])))
                                                                        ? 0x1eU
                                                                        : 
                                                                       ((IData)(
                                                                                (0x5063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[2U])))
                                                                         ? 0x1fU
                                                                         : 
                                                                        ((IData)(
                                                                                (0x6063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[2U])))
                                                                          ? 0x20U
                                                                          : 
                                                                         ((IData)(
                                                                                (0x7063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[2U])))
                                                                           ? 0x21U
                                                                           : 0x22U))))))))))))))))))))))))))))))));
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op 
        = (((IData)(decode__DOT____VdfgTmp_hc95180d2__0) 
            & (0U == (vlSelf->instrs_in[3U] >> 0x19U)))
            ? 1U : (((IData)(decode__DOT____VdfgTmp_hc95180d2__0) 
                     & (0x20U == (vlSelf->instrs_in[3U] 
                                  >> 0x19U))) ? 2U : 
                    ((IData)((0x7033U == (0xfe00707fU 
                                          & vlSelf->instrs_in[3U])))
                      ? 3U : ((IData)((0x6033U == (0xfe00707fU 
                                                   & vlSelf->instrs_in[3U])))
                               ? 4U : ((IData)((0x4033U 
                                                == 
                                                (0xfe00707fU 
                                                 & vlSelf->instrs_in[3U])))
                                        ? 5U : ((IData)(
                                                        (0x2033U 
                                                         == 
                                                         (0xfe00707fU 
                                                          & vlSelf->instrs_in[3U])))
                                                 ? 6U
                                                 : 
                                                ((IData)(
                                                         (0x3033U 
                                                          == 
                                                          (0xfe00707fU 
                                                           & vlSelf->instrs_in[3U])))
                                                  ? 7U
                                                  : 
                                                 (((IData)(decode__DOT____VdfgTmp_h8382f90a__0) 
                                                   & (0x20U 
                                                      == 
                                                      (vlSelf->instrs_in[3U] 
                                                       >> 0x19U)))
                                                   ? 8U
                                                   : 
                                                  (((IData)(decode__DOT____VdfgTmp_h8382f90a__0) 
                                                    & (0U 
                                                       == 
                                                       (vlSelf->instrs_in[3U] 
                                                        >> 0x19U)))
                                                    ? 9U
                                                    : 
                                                   (((0x33U 
                                                      == 
                                                      (0x7fU 
                                                       & vlSelf->instrs_in[3U])) 
                                                     & (IData)(decode__DOT____VdfgTmp_h11a782d2__0))
                                                     ? 0xaU
                                                     : 
                                                    (((IData)(decode__DOT____VdfgTmp_hc95180d2__0) 
                                                      & (1U 
                                                         == 
                                                         (vlSelf->instrs_in[3U] 
                                                          >> 0x19U)))
                                                      ? 0xbU
                                                      : 
                                                     ((IData)(
                                                              (0x13U 
                                                               == 
                                                               (0x707fU 
                                                                & vlSelf->instrs_in[3U])))
                                                       ? 0xcU
                                                       : 
                                                      ((IData)(
                                                               (0x7013U 
                                                                == 
                                                                (0x707fU 
                                                                 & vlSelf->instrs_in[3U])))
                                                        ? 0xdU
                                                        : 
                                                       ((IData)(
                                                                (0x6013U 
                                                                 == 
                                                                 (0x707fU 
                                                                  & vlSelf->instrs_in[3U])))
                                                         ? 0xeU
                                                         : 
                                                        ((IData)(
                                                                 (0x4013U 
                                                                  == 
                                                                  (0x707fU 
                                                                   & vlSelf->instrs_in[3U])))
                                                          ? 0xfU
                                                          : 
                                                         ((IData)(
                                                                  (0x2013U 
                                                                   == 
                                                                   (0x707fU 
                                                                    & vlSelf->instrs_in[3U])))
                                                           ? 0x10U
                                                           : 
                                                          ((IData)(
                                                                   (0x3013U 
                                                                    == 
                                                                    (0x707fU 
                                                                     & vlSelf->instrs_in[3U])))
                                                            ? 0x11U
                                                            : 
                                                           (((IData)(decode__DOT____VdfgTmp_ha48a4ad0__0) 
                                                             & (0x20U 
                                                                == 
                                                                (vlSelf->instrs_in[3U] 
                                                                 >> 0x19U)))
                                                             ? 0x12U
                                                             : 
                                                            (((IData)(decode__DOT____VdfgTmp_ha48a4ad0__0) 
                                                              & (0U 
                                                                 == 
                                                                 (vlSelf->instrs_in[3U] 
                                                                  >> 0x19U)))
                                                              ? 0x13U
                                                              : 
                                                             (((0x13U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[3U])) 
                                                               & (IData)(decode__DOT____VdfgTmp_h11a782d2__0))
                                                               ? 0x14U
                                                               : 
                                                              ((0x37U 
                                                                == 
                                                                (0x7fU 
                                                                 & vlSelf->instrs_in[3U]))
                                                                ? 0x15U
                                                                : 
                                                               ((0x17U 
                                                                 == 
                                                                 (0x7fU 
                                                                  & vlSelf->instrs_in[3U]))
                                                                 ? 0x16U
                                                                 : 
                                                                ((IData)(
                                                                         (0x2003U 
                                                                          == 
                                                                          (0x707fU 
                                                                           & vlSelf->instrs_in[3U])))
                                                                  ? 0x17U
                                                                  : 
                                                                 ((IData)(
                                                                          (0x2023U 
                                                                           == 
                                                                           (0x707fU 
                                                                            & vlSelf->instrs_in[3U])))
                                                                   ? 0x18U
                                                                   : 
                                                                  ((0x6fU 
                                                                    == 
                                                                    (0x7fU 
                                                                     & vlSelf->instrs_in[3U]))
                                                                    ? 0x19U
                                                                    : 
                                                                   ((IData)(
                                                                            (0x67U 
                                                                             == 
                                                                             (0x707fU 
                                                                              & vlSelf->instrs_in[3U])))
                                                                     ? 0x1bU
                                                                     : 
                                                                    ((IData)(
                                                                             (0x63U 
                                                                              == 
                                                                              (0x707fU 
                                                                               & vlSelf->instrs_in[3U])))
                                                                      ? 0x1cU
                                                                      : 
                                                                     ((IData)(
                                                                              (0x1063U 
                                                                               == 
                                                                               (0x707fU 
                                                                                & vlSelf->instrs_in[3U])))
                                                                       ? 0x1dU
                                                                       : 
                                                                      ((IData)(
                                                                               (0x4063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[3U])))
                                                                        ? 0x1eU
                                                                        : 
                                                                       ((IData)(
                                                                                (0x5063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[3U])))
                                                                         ? 0x1fU
                                                                         : 
                                                                        ((IData)(
                                                                                (0x6063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[3U])))
                                                                          ? 0x20U
                                                                          : 
                                                                         ((IData)(
                                                                                (0x7063U 
                                                                                == 
                                                                                (0x707fU 
                                                                                & vlSelf->instrs_in[3U])))
                                                                           ? 0x21U
                                                                           : 0x22U))))))))))))))))))))))))))))))));
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__wr_reg 
        = (((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
            | ((2U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
               | ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                  | ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                     | ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                        | ((6U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                           | ((7U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                              | ((8U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                 | ((9U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                    | ((0xaU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                       | ((0xbU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                          | ((0xcU 
                                              == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                             | ((0xdU 
                                                 == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                | ((0xeU 
                                                    == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                   | ((0xfU 
                                                       == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                      | ((0x10U 
                                                          == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                         | ((0x11U 
                                                             == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                            | ((0x12U 
                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                               | ((0x13U 
                                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                                  | ((0x14U 
                                                                      == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                                     | ((0x15U 
                                                                         == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                                        | ((0x16U 
                                                                            == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                                           | ((0x17U 
                                                                               == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                                              | ((0x19U 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                                                                | (0x1bU 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)))))))))))))))))))))))))) 
           & (0U != (0x1fU & (vlSelf->instrs_in[0U] 
                              >> 7U))));
    __Vtableidx1 = vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op;
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type 
        = Vdecode__ConstPool__TABLE_hc50598e4_0[__Vtableidx1];
    vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate 
        = Vdecode__ConstPool__TABLE_hbd1e8592_0[__Vtableidx1];
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__wr_reg 
        = (((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
            | ((2U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
               | ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                  | ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                     | ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                        | ((6U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                           | ((7U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                              | ((8U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                 | ((9U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                    | ((0xaU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                       | ((0xbU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                          | ((0xcU 
                                              == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                             | ((0xdU 
                                                 == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                | ((0xeU 
                                                    == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                   | ((0xfU 
                                                       == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                      | ((0x10U 
                                                          == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                         | ((0x11U 
                                                             == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                            | ((0x12U 
                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                               | ((0x13U 
                                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                                  | ((0x14U 
                                                                      == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                                     | ((0x15U 
                                                                         == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                                        | ((0x16U 
                                                                            == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                                           | ((0x17U 
                                                                               == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                                              | ((0x19U 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                                                                | (0x1bU 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)))))))))))))))))))))))))) 
           & (0U != (0x1fU & (vlSelf->instrs_in[1U] 
                              >> 7U))));
    __Vtableidx2 = vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op;
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type 
        = Vdecode__ConstPool__TABLE_hc50598e4_0[__Vtableidx2];
    vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate 
        = Vdecode__ConstPool__TABLE_hbd1e8592_0[__Vtableidx2];
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__wr_reg 
        = (((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
            | ((2U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
               | ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                  | ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                     | ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                        | ((6U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                           | ((7U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                              | ((8U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                 | ((9U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                    | ((0xaU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                       | ((0xbU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                          | ((0xcU 
                                              == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                             | ((0xdU 
                                                 == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                | ((0xeU 
                                                    == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                   | ((0xfU 
                                                       == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                      | ((0x10U 
                                                          == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                         | ((0x11U 
                                                             == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                            | ((0x12U 
                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                               | ((0x13U 
                                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                                  | ((0x14U 
                                                                      == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                                     | ((0x15U 
                                                                         == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                                        | ((0x16U 
                                                                            == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                                           | ((0x17U 
                                                                               == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                                              | ((0x19U 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                                                                | (0x1bU 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)))))))))))))))))))))))))) 
           & (0U != (0x1fU & (vlSelf->instrs_in[2U] 
                              >> 7U))));
    __Vtableidx3 = vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op;
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type 
        = Vdecode__ConstPool__TABLE_hc50598e4_0[__Vtableidx3];
    vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate 
        = Vdecode__ConstPool__TABLE_hbd1e8592_0[__Vtableidx3];
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__wr_reg 
        = (((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
            | ((2U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
               | ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                  | ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                     | ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                        | ((6U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                           | ((7U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                              | ((8U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                 | ((9U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                    | ((0xaU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                       | ((0xbU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                          | ((0xcU 
                                              == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                             | ((0xdU 
                                                 == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                | ((0xeU 
                                                    == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                   | ((0xfU 
                                                       == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                      | ((0x10U 
                                                          == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                         | ((0x11U 
                                                             == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                            | ((0x12U 
                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                               | ((0x13U 
                                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                                  | ((0x14U 
                                                                      == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                                     | ((0x15U 
                                                                         == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                                        | ((0x16U 
                                                                            == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                                           | ((0x17U 
                                                                               == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                                              | ((0x19U 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                                                                | (0x1bU 
                                                                                == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)))))))))))))))))))))))))) 
           & (0U != (0x1fU & (vlSelf->instrs_in[3U] 
                              >> 7U))));
    __Vtableidx4 = vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op;
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type 
        = Vdecode__ConstPool__TABLE_hc50598e4_0[__Vtableidx4];
    vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate 
        = Vdecode__ConstPool__TABLE_hbd1e8592_0[__Vtableidx4];
}

void Vdecode___024root___eval_ico(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        Vdecode___024root___ico_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
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
            VL_FATAL_MT("decode.v", 3, "", "Input combinational region did not converge.");
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
            VL_FATAL_MT("decode.v", 3, "", "NBA region did not converge.");
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
                VL_FATAL_MT("decode.v", 3, "", "Active region did not converge.");
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

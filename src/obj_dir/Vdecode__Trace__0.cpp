// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vdecode__Syms.h"


void Vdecode___024root__trace_chg_0_sub_0(Vdecode___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vdecode___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_chg_0\n"); );
    // Init
    Vdecode___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdecode___024root*>(voidSelf);
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vdecode___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vdecode___024root__trace_chg_0_sub_0(Vdecode___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgCData(oldp+0,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op),6);
        bufp->chgCData(oldp+1,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type),4);
        bufp->chgCData(oldp+2,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate),3);
        bufp->chgBit(oldp+3,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                              | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                 | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                    | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                       | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                          | (0x21U 
                                             == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)))))))));
        bufp->chgBit(oldp+4,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                              | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                 | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op))))));
        bufp->chgBit(oldp+5,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+6,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+7,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__wr_reg));
        bufp->chgCData(oldp+8,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op),6);
        bufp->chgCData(oldp+9,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type),4);
        bufp->chgCData(oldp+10,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate),3);
        bufp->chgBit(oldp+11,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                               | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                  | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                     | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                        | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                           | (0x21U 
                                              == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)))))))));
        bufp->chgBit(oldp+12,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                               | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                  | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op))))));
        bufp->chgBit(oldp+13,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+14,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+15,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__wr_reg));
        bufp->chgCData(oldp+16,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op),6);
        bufp->chgCData(oldp+17,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type),4);
        bufp->chgCData(oldp+18,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate),3);
        bufp->chgBit(oldp+19,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                               | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                  | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                     | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                        | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                           | (0x21U 
                                              == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)))))))));
        bufp->chgBit(oldp+20,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                               | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                  | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op))))));
        bufp->chgBit(oldp+21,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+22,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+23,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__wr_reg));
        bufp->chgCData(oldp+24,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op),6);
        bufp->chgCData(oldp+25,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type),4);
        bufp->chgCData(oldp+26,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate),3);
        bufp->chgBit(oldp+27,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                               | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                  | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                     | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                        | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                           | (0x21U 
                                              == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)))))))));
        bufp->chgBit(oldp+28,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                               | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                  | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op))))));
        bufp->chgBit(oldp+29,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+30,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op))));
        bufp->chgBit(oldp+31,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__wr_reg));
    }
    bufp->chgBit(oldp+32,(vlSelf->clk));
    bufp->chgBit(oldp+33,(vlSelf->rst));
    bufp->chgWData(oldp+34,(vlSelf->instrs_in),128);
    bufp->chgIData(oldp+38,(vlSelf->instrs_in[0U]),32);
    bufp->chgCData(oldp+39,((7U & (vlSelf->instrs_in[0U] 
                                   >> 0xcU))),3);
    bufp->chgCData(oldp+40,((vlSelf->instrs_in[0U] 
                             >> 0x19U)),7);
    bufp->chgCData(oldp+41,((0x7fU & vlSelf->instrs_in[0U])),7);
    bufp->chgIData(oldp+42,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                              ? vlSelf->decode__DOT____VdfgExtracted_h5d8d65ee__0
                              : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                  ? vlSelf->decode__DOT____VdfgExtracted_h5d8d65ee__0
                                  : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                      ? (((- (IData)(
                                                     (vlSelf->instrs_in[0U] 
                                                      >> 0x1fU))) 
                                          << 0xbU) 
                                         | ((0x7e0U 
                                             & (vlSelf->instrs_in[0U] 
                                                >> 0x14U)) 
                                            | (0x1fU 
                                               & (vlSelf->instrs_in[0U] 
                                                  >> 7U))))
                                      : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                          ? (((- (IData)(
                                                         (vlSelf->instrs_in[0U] 
                                                          >> 0x1fU))) 
                                              << 0xcU) 
                                             | ((0x800U 
                                                 & (vlSelf->instrs_in[0U] 
                                                    << 4U)) 
                                                | ((0x7e0U 
                                                    & (vlSelf->instrs_in[0U] 
                                                       >> 0x14U)) 
                                                   | (0x1eU 
                                                      & (vlSelf->instrs_in[0U] 
                                                         >> 7U)))))
                                          : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                              ? (0xfffff000U 
                                                 & vlSelf->instrs_in[0U])
                                              : ((2U 
                                                  == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                                  ? 
                                                 (((- (IData)(
                                                              (vlSelf->instrs_in[0U] 
                                                               >> 0x1fU))) 
                                                   << 0x14U) 
                                                  | ((0xff000U 
                                                      & vlSelf->instrs_in[0U]) 
                                                     | ((0x800U 
                                                         & (vlSelf->instrs_in[0U] 
                                                            >> 9U)) 
                                                        | (0x7feU 
                                                           & (vlSelf->instrs_in[0U] 
                                                              >> 0x14U)))))
                                                  : 0U))))))),32);
    bufp->chgCData(oldp+43,((0x1fU & (vlSelf->instrs_in[0U] 
                                      >> 0xfU))),5);
    bufp->chgCData(oldp+44,((0x1fU & (vlSelf->instrs_in[0U] 
                                      >> 0x14U))),5);
    bufp->chgCData(oldp+45,((0x1fU & (vlSelf->instrs_in[0U] 
                                      >> 7U))),5);
    bufp->chgIData(oldp+46,(vlSelf->instrs_in[1U]),32);
    bufp->chgCData(oldp+47,((7U & (vlSelf->instrs_in[1U] 
                                   >> 0xcU))),3);
    bufp->chgCData(oldp+48,((vlSelf->instrs_in[1U] 
                             >> 0x19U)),7);
    bufp->chgCData(oldp+49,((0x7fU & vlSelf->instrs_in[1U])),7);
    bufp->chgIData(oldp+50,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                              ? vlSelf->decode__DOT____VdfgExtracted_h471e2ee8__0
                              : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                  ? vlSelf->decode__DOT____VdfgExtracted_h471e2ee8__0
                                  : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                      ? (((- (IData)(
                                                     (vlSelf->instrs_in[1U] 
                                                      >> 0x1fU))) 
                                          << 0xbU) 
                                         | ((0x7e0U 
                                             & (vlSelf->instrs_in[1U] 
                                                >> 0x14U)) 
                                            | (0x1fU 
                                               & (vlSelf->instrs_in[1U] 
                                                  >> 7U))))
                                      : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                          ? (((- (IData)(
                                                         (vlSelf->instrs_in[1U] 
                                                          >> 0x1fU))) 
                                              << 0xcU) 
                                             | ((0x800U 
                                                 & (vlSelf->instrs_in[1U] 
                                                    << 4U)) 
                                                | ((0x7e0U 
                                                    & (vlSelf->instrs_in[1U] 
                                                       >> 0x14U)) 
                                                   | (0x1eU 
                                                      & (vlSelf->instrs_in[1U] 
                                                         >> 7U)))))
                                          : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                              ? (0xfffff000U 
                                                 & vlSelf->instrs_in[1U])
                                              : ((2U 
                                                  == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                                  ? 
                                                 (((- (IData)(
                                                              (vlSelf->instrs_in[1U] 
                                                               >> 0x1fU))) 
                                                   << 0x14U) 
                                                  | ((0xff000U 
                                                      & vlSelf->instrs_in[1U]) 
                                                     | ((0x800U 
                                                         & (vlSelf->instrs_in[1U] 
                                                            >> 9U)) 
                                                        | (0x7feU 
                                                           & (vlSelf->instrs_in[1U] 
                                                              >> 0x14U)))))
                                                  : 0U))))))),32);
    bufp->chgCData(oldp+51,((0x1fU & (vlSelf->instrs_in[1U] 
                                      >> 0xfU))),5);
    bufp->chgCData(oldp+52,((0x1fU & (vlSelf->instrs_in[1U] 
                                      >> 0x14U))),5);
    bufp->chgCData(oldp+53,((0x1fU & (vlSelf->instrs_in[1U] 
                                      >> 7U))),5);
    bufp->chgIData(oldp+54,(vlSelf->instrs_in[2U]),32);
    bufp->chgCData(oldp+55,((7U & (vlSelf->instrs_in[2U] 
                                   >> 0xcU))),3);
    bufp->chgCData(oldp+56,((vlSelf->instrs_in[2U] 
                             >> 0x19U)),7);
    bufp->chgCData(oldp+57,((0x7fU & vlSelf->instrs_in[2U])),7);
    bufp->chgIData(oldp+58,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                              ? vlSelf->decode__DOT____VdfgExtracted_h7de9e626__0
                              : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                  ? vlSelf->decode__DOT____VdfgExtracted_h7de9e626__0
                                  : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                      ? (((- (IData)(
                                                     (vlSelf->instrs_in[2U] 
                                                      >> 0x1fU))) 
                                          << 0xbU) 
                                         | ((0x7e0U 
                                             & (vlSelf->instrs_in[2U] 
                                                >> 0x14U)) 
                                            | (0x1fU 
                                               & (vlSelf->instrs_in[2U] 
                                                  >> 7U))))
                                      : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                          ? (((- (IData)(
                                                         (vlSelf->instrs_in[2U] 
                                                          >> 0x1fU))) 
                                              << 0xcU) 
                                             | ((0x800U 
                                                 & (vlSelf->instrs_in[2U] 
                                                    << 4U)) 
                                                | ((0x7e0U 
                                                    & (vlSelf->instrs_in[2U] 
                                                       >> 0x14U)) 
                                                   | (0x1eU 
                                                      & (vlSelf->instrs_in[2U] 
                                                         >> 7U)))))
                                          : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                              ? (0xfffff000U 
                                                 & vlSelf->instrs_in[2U])
                                              : ((2U 
                                                  == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                                  ? 
                                                 (((- (IData)(
                                                              (vlSelf->instrs_in[2U] 
                                                               >> 0x1fU))) 
                                                   << 0x14U) 
                                                  | ((0xff000U 
                                                      & vlSelf->instrs_in[2U]) 
                                                     | ((0x800U 
                                                         & (vlSelf->instrs_in[2U] 
                                                            >> 9U)) 
                                                        | (0x7feU 
                                                           & (vlSelf->instrs_in[2U] 
                                                              >> 0x14U)))))
                                                  : 0U))))))),32);
    bufp->chgCData(oldp+59,((0x1fU & (vlSelf->instrs_in[2U] 
                                      >> 0xfU))),5);
    bufp->chgCData(oldp+60,((0x1fU & (vlSelf->instrs_in[2U] 
                                      >> 0x14U))),5);
    bufp->chgCData(oldp+61,((0x1fU & (vlSelf->instrs_in[2U] 
                                      >> 7U))),5);
    bufp->chgIData(oldp+62,(vlSelf->instrs_in[3U]),32);
    bufp->chgCData(oldp+63,((7U & (vlSelf->instrs_in[3U] 
                                   >> 0xcU))),3);
    bufp->chgCData(oldp+64,((vlSelf->instrs_in[3U] 
                             >> 0x19U)),7);
    bufp->chgCData(oldp+65,((0x7fU & vlSelf->instrs_in[3U])),7);
    bufp->chgIData(oldp+66,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                              ? vlSelf->decode__DOT____VdfgExtracted_hbc33c744__0
                              : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                  ? vlSelf->decode__DOT____VdfgExtracted_hbc33c744__0
                                  : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                      ? (((- (IData)(
                                                     (vlSelf->instrs_in[3U] 
                                                      >> 0x1fU))) 
                                          << 0xbU) 
                                         | ((0x7e0U 
                                             & (vlSelf->instrs_in[3U] 
                                                >> 0x14U)) 
                                            | (0x1fU 
                                               & (vlSelf->instrs_in[3U] 
                                                  >> 7U))))
                                      : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                          ? (((- (IData)(
                                                         (vlSelf->instrs_in[3U] 
                                                          >> 0x1fU))) 
                                              << 0xcU) 
                                             | ((0x800U 
                                                 & (vlSelf->instrs_in[3U] 
                                                    << 4U)) 
                                                | ((0x7e0U 
                                                    & (vlSelf->instrs_in[3U] 
                                                       >> 0x14U)) 
                                                   | (0x1eU 
                                                      & (vlSelf->instrs_in[3U] 
                                                         >> 7U)))))
                                          : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                              ? (0xfffff000U 
                                                 & vlSelf->instrs_in[3U])
                                              : ((2U 
                                                  == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                                  ? 
                                                 (((- (IData)(
                                                              (vlSelf->instrs_in[3U] 
                                                               >> 0x1fU))) 
                                                   << 0x14U) 
                                                  | ((0xff000U 
                                                      & vlSelf->instrs_in[3U]) 
                                                     | ((0x800U 
                                                         & (vlSelf->instrs_in[3U] 
                                                            >> 9U)) 
                                                        | (0x7feU 
                                                           & (vlSelf->instrs_in[3U] 
                                                              >> 0x14U)))))
                                                  : 0U))))))),32);
    bufp->chgCData(oldp+67,((0x1fU & (vlSelf->instrs_in[3U] 
                                      >> 0xfU))),5);
    bufp->chgCData(oldp+68,((0x1fU & (vlSelf->instrs_in[3U] 
                                      >> 0x14U))),5);
    bufp->chgCData(oldp+69,((0x1fU & (vlSelf->instrs_in[3U] 
                                      >> 7U))),5);
}

void Vdecode___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_cleanup\n"); );
    // Init
    Vdecode___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdecode___024root*>(voidSelf);
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}

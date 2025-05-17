// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vregister_rename_tb__Syms.h"


void Vregister_rename_tb___024root__trace_chg_0_sub_0(Vregister_rename_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vregister_rename_tb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_chg_0\n"); );
    // Init
    Vregister_rename_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vregister_rename_tb___024root*>(voidSelf);
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vregister_rename_tb___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vregister_rename_tb___024root__trace_chg_0_sub_0(Vregister_rename_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    VlWide<3>/*95:0*/ __Vtemp_1;
    // Body
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgBit(oldp+0,(vlSelf->register_rename_tb__DOT__rst));
        bufp->chgBit(oldp+1,(vlSelf->register_rename_tb__DOT__stall));
        bufp->chgWData(oldp+2,(vlSelf->register_rename_tb__DOT__decoded_dd),65);
        bufp->chgSData(oldp+5,((0x7fffU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                           >> 5U))),15);
        bufp->chgCData(oldp+6,((0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                         >> 0xfU))),5);
        bufp->chgBit(oldp+7,((1U & (~ (IData)(vlSelf->register_rename_tb__DOT__stall)))));
        bufp->chgCData(oldp+8,(vlSelf->register_rename_tb__DOT__bypassed_dst_i),5);
        bufp->chgCData(oldp+9,(vlSelf->register_rename_tb__DOT__bypassed_alias_i),7);
    }
    if (VL_UNLIKELY(((vlSelf->__Vm_traceActivity[1U] 
                      | vlSelf->__Vm_traceActivity[2U]) 
                     | vlSelf->__Vm_traceActivity[3U]))) {
        bufp->chgIData(oldp+10,(((vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                  [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                             >> 0xfU))] 
                                  << 0xeU) | ((vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                               [(0x1fU 
                                                 & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                    >> 0xaU))] 
                                               << 7U) 
                                              | vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                              [(0x1fU 
                                                & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                   >> 5U))]))),21);
        bufp->chgBit(oldp+11,((1U & ((~ (IData)(vlSelf->register_rename_tb__DOT__empty)) 
                                     & (~ (IData)(vlSelf->register_rename_tb__DOT__stall))))));
        __Vtemp_1[0U] = (IData)((((QData)((IData)(vlSelf->register_rename_tb__DOT__new_alias)) 
                                  << 0x1aU) | (QData)((IData)(
                                                              (((((0x1fU 
                                                                   & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                      >> 0xaU)) 
                                                                  == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                  ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                  : 
                                                                 vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                                 [
                                                                 (0x1fU 
                                                                  & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                     >> 0xaU))]) 
                                                                << 0x13U) 
                                                               | (((((0x1fU 
                                                                      & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                         >> 5U)) 
                                                                     == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                     ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                     : 
                                                                    vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                                    [
                                                                    (0x1fU 
                                                                     & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                        >> 5U))]) 
                                                                   << 0xcU) 
                                                                  | ((0xf80U 
                                                                      & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                         << 7U)) 
                                                                     | (((0x1fU 
                                                                          & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                             >> 0xfU)) 
                                                                         == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                         ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                         : (IData)(vlSelf->register_rename_tb__DOT__new_alias)))))))));
        __Vtemp_1[1U] = (((IData)((0x1fffffffffffULL 
                                   & (((QData)((IData)(
                                                       vlSelf->register_rename_tb__DOT__decoded_dd[2U])) 
                                       << 0x2cU) | 
                                      (((QData)((IData)(
                                                        vlSelf->register_rename_tb__DOT__decoded_dd[1U])) 
                                        << 0xcU) | 
                                       ((QData)((IData)(
                                                        vlSelf->register_rename_tb__DOT__decoded_dd[0U])) 
                                        >> 0x14U))))) 
                          << 1U) | (IData)(((((QData)((IData)(vlSelf->register_rename_tb__DOT__new_alias)) 
                                              << 0x1aU) 
                                             | (QData)((IData)(
                                                               (((((0x1fU 
                                                                    & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                       >> 0xaU)) 
                                                                   == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                   ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                   : 
                                                                  vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                                  [
                                                                  (0x1fU 
                                                                   & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                      >> 0xaU))]) 
                                                                 << 0x13U) 
                                                                | (((((0x1fU 
                                                                       & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                          >> 5U)) 
                                                                      == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                      ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                      : 
                                                                     vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                                     [
                                                                     (0x1fU 
                                                                      & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                         >> 5U))]) 
                                                                    << 0xcU) 
                                                                   | ((0xf80U 
                                                                       & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                          << 7U)) 
                                                                      | (((0x1fU 
                                                                           & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                              >> 0xfU)) 
                                                                          == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                          ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                          : (IData)(vlSelf->register_rename_tb__DOT__new_alias)))))))) 
                                            >> 0x20U)));
        __Vtemp_1[2U] = (((IData)((0x1fffffffffffULL 
                                   & (((QData)((IData)(
                                                       vlSelf->register_rename_tb__DOT__decoded_dd[2U])) 
                                       << 0x2cU) | 
                                      (((QData)((IData)(
                                                        vlSelf->register_rename_tb__DOT__decoded_dd[1U])) 
                                        << 0xcU) | 
                                       ((QData)((IData)(
                                                        vlSelf->register_rename_tb__DOT__decoded_dd[0U])) 
                                        >> 0x14U))))) 
                          >> 0x1fU) | ((IData)(((0x1fffffffffffULL 
                                                 & (((QData)((IData)(
                                                                     vlSelf->register_rename_tb__DOT__decoded_dd[2U])) 
                                                     << 0x2cU) 
                                                    | (((QData)((IData)(
                                                                        vlSelf->register_rename_tb__DOT__decoded_dd[1U])) 
                                                        << 0xcU) 
                                                       | ((QData)((IData)(
                                                                          vlSelf->register_rename_tb__DOT__decoded_dd[0U])) 
                                                          >> 0x14U)))) 
                                                >> 0x20U)) 
                                       << 1U));
        bufp->chgWData(oldp+12,(__Vtemp_1),78);
        bufp->chgCData(oldp+15,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                           >> 0xfU))]),7);
        bufp->chgCData(oldp+16,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                           >> 0xaU))]),7);
        bufp->chgCData(oldp+17,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                           >> 5U))]),7);
        bufp->chgCData(oldp+18,((((0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                            >> 0xaU)) 
                                  == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                  ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                  : vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                 [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                            >> 0xaU))])),7);
        bufp->chgCData(oldp+19,((((0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                            >> 5U)) 
                                  == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                  ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                  : vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                 [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                            >> 5U))])),7);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[3U])) {
        bufp->chgCData(oldp+20,(vlSelf->register_rename_tb__DOT__new_alias),7);
        bufp->chgBit(oldp+21,(vlSelf->register_rename_tb__DOT__empty));
        bufp->chgBit(oldp+22,(((~ (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int)) 
                               & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty))));
        bufp->chgCData(oldp+23,(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr),8);
        bufp->chgCData(oldp+24,(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr),8);
        bufp->chgBit(oldp+25,(vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int));
        bufp->chgBit(oldp+26,(vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty));
        bufp->chgIData(oldp+27,(vlSelf->register_rename_tb__DOT__fpg__DOT__i),32);
        bufp->chgCData(oldp+28,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0]),7);
        bufp->chgCData(oldp+29,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[1]),7);
        bufp->chgCData(oldp+30,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[2]),7);
        bufp->chgCData(oldp+31,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[3]),7);
        bufp->chgCData(oldp+32,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[4]),7);
        bufp->chgCData(oldp+33,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[5]),7);
        bufp->chgCData(oldp+34,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[6]),7);
        bufp->chgCData(oldp+35,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[7]),7);
        bufp->chgCData(oldp+36,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[8]),7);
        bufp->chgCData(oldp+37,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[9]),7);
        bufp->chgCData(oldp+38,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[10]),7);
        bufp->chgCData(oldp+39,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[11]),7);
        bufp->chgCData(oldp+40,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[12]),7);
        bufp->chgCData(oldp+41,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[13]),7);
        bufp->chgCData(oldp+42,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[14]),7);
        bufp->chgCData(oldp+43,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[15]),7);
        bufp->chgCData(oldp+44,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[16]),7);
        bufp->chgCData(oldp+45,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[17]),7);
        bufp->chgCData(oldp+46,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[18]),7);
        bufp->chgCData(oldp+47,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[19]),7);
        bufp->chgCData(oldp+48,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[20]),7);
        bufp->chgCData(oldp+49,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[21]),7);
        bufp->chgCData(oldp+50,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[22]),7);
        bufp->chgCData(oldp+51,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[23]),7);
        bufp->chgCData(oldp+52,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[24]),7);
        bufp->chgCData(oldp+53,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[25]),7);
        bufp->chgCData(oldp+54,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[26]),7);
        bufp->chgCData(oldp+55,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[27]),7);
        bufp->chgCData(oldp+56,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[28]),7);
        bufp->chgCData(oldp+57,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[29]),7);
        bufp->chgCData(oldp+58,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[30]),7);
        bufp->chgCData(oldp+59,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[31]),7);
        bufp->chgIData(oldp+60,(vlSelf->register_rename_tb__DOT__rat__DOT__i),32);
    }
    bufp->chgBit(oldp+61,(vlSelf->register_rename_tb__DOT__clk));
    bufp->chgIData(oldp+62,(vlSelf->register_rename_tb__DOT__cycle_count),32);
}

void Vregister_rename_tb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_cleanup\n"); );
    // Init
    Vregister_rename_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vregister_rename_tb___024root*>(voidSelf);
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
}

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_dCacheController__Syms.h"


void Vtb_dCacheController___024root__trace_chg_0_sub_0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtb_dCacheController___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_chg_0\n"); );
    // Init
    Vtb_dCacheController___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_dCacheController___024root*>(voidSelf);
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtb_dCacheController___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtb_dCacheController___024root__trace_chg_0_sub_0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgBit(oldp+0,(vlSelf->tb_dCacheController__DOT__rst));
        bufp->chgBit(oldp+1,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid));
        bufp->chgIData(oldp+2,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr),32);
        bufp->chgWData(oldp+3,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata),1024);
        bufp->chgBit(oldp+35,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid));
        bufp->chgIData(oldp+36,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr),32);
        bufp->chgWData(oldp+37,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask),128);
        bufp->chgBit(oldp+41,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved));
        bufp->chgCData(oldp+42,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                          >> 7U))),8);
        bufp->chgBit(oldp+43,((1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)))));
        bufp->chgCData(oldp+44,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                          >> 7U))),8);
        bufp->chgWData(oldp+45,(vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block),1024);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[3U])) {
        bufp->chgIData(oldp+77,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0),32);
        bufp->chgIData(oldp+78,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1),32);
        bufp->chgIData(oldp+79,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2),32);
        bufp->chgBit(oldp+80,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0));
        bufp->chgBit(oldp+81,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1));
        bufp->chgBit(oldp+82,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2));
        bufp->chgWData(oldp+83,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0),1024);
        bufp->chgWData(oldp+115,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1),1024);
        bufp->chgWData(oldp+147,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0),128);
        bufp->chgWData(oldp+151,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1),128);
        bufp->chgIData(oldp+155,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0),32);
        bufp->chgIData(oldp+156,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1),32);
        bufp->chgBit(oldp+157,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0));
        bufp->chgBit(oldp+158,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1));
        bufp->chgBit(oldp+159,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid));
        bufp->chgIData(oldp+160,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__missed_addr),32);
        bufp->chgWData(oldp+161,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i),128);
        bufp->chgIData(oldp+165,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i),32);
        bufp->chgWData(oldp+166,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i),1024);
        bufp->chgIData(oldp+198,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i),19);
        bufp->chgBit(oldp+199,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_tag));
        bufp->chgBit(oldp+200,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing));
        bufp->chgBit(oldp+201,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_prev));
        bufp->chgBit(oldp+202,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request));
        bufp->chgBit(oldp+203,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable));
        bufp->chgBit(oldp+204,((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable)))));
        bufp->chgCData(oldp+205,((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                           >> 7U))),8);
        bufp->chgBit(oldp+206,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1));
        bufp->chgCData(oldp+207,((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                                           >> 7U))),8);
        bufp->chgBit(oldp+208,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg));
        bufp->chgWData(oldp+209,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg),128);
        bufp->chgCData(oldp+213,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg),8);
        bufp->chgWData(oldp+214,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg),1024);
        bufp->chgBit(oldp+246,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg));
        bufp->chgCData(oldp+247,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg),8);
        bufp->chgBit(oldp+248,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg));
        bufp->chgCData(oldp+249,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg),8);
        bufp->chgIData(oldp+250,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg),19);
        bufp->chgBit(oldp+251,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg));
        bufp->chgCData(oldp+252,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg),8);
        bufp->chgBit(oldp+253,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg));
        bufp->chgCData(oldp+254,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg),8);
        bufp->chgIData(oldp+255,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg),19);
        bufp->chgBit(oldp+256,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg));
        bufp->chgCData(oldp+257,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg),8);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[4U])) {
        bufp->chgWData(oldp+258,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block),1024);
        bufp->chgIData(oldp+290,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata),19);
        bufp->chgBit(oldp+291,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata)));
        bufp->chgBit(oldp+292,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                      >> 1U))));
        bufp->chgIData(oldp+293,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                              >> 2U))),17);
        bufp->chgIData(oldp+294,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata),19);
        bufp->chgBit(oldp+295,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)));
        bufp->chgBit(oldp+296,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                      >> 1U))));
        bufp->chgIData(oldp+297,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                              >> 2U))),17);
    }
    bufp->chgBit(oldp+298,(vlSelf->tb_dCacheController__DOT__clk));
    bufp->chgIData(oldp+299,(vlSelf->tb_dCacheController__DOT__cycle_count),32);
    bufp->chgIData(oldp+300,(((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1)
                               ? (3U | (0x7fffcU & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata))
                               : 0U)),19);
    bufp->chgBit(oldp+301,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next));
    bufp->chgBit(oldp+302,((((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                          >> 2U)) == 
                             (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 
                              >> 0xfU)) & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                           & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid)))));
    bufp->chgBit(oldp+303,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair));
    bufp->chgIData(oldp+304,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i),32);
    bufp->chgIData(oldp+305,((((0U == (0x1fU & VL_SHIFTL_III(10,32,32, 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                 >> 2U)), 5U)))
                                ? 0U : (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                        (((IData)(0x1fU) 
                                          + (0x3ffU 
                                             & VL_SHIFTL_III(10,32,32, 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                 >> 2U)), 5U))) 
                                         >> 5U)] << 
                                        ((IData)(0x20U) 
                                         - (0x1fU & 
                                            VL_SHIFTL_III(10,32,32, 
                                                          (0x1fU 
                                                           & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                              >> 2U)), 5U))))) 
                              | (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                 (0x1fU & (VL_SHIFTL_III(10,32,32, 
                                                         (0x1fU 
                                                          & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                             >> 2U)), 5U) 
                                           >> 5U))] 
                                 >> (0x1fU & VL_SHIFTL_III(10,32,32, 
                                                           (0x1fU 
                                                            & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                               >> 2U)), 5U))))),32);
    bufp->chgBit(oldp+306,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid));
}

void Vtb_dCacheController___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_cleanup\n"); );
    // Init
    Vtb_dCacheController___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_dCacheController___024root*>(voidSelf);
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[4U] = 0U;
}

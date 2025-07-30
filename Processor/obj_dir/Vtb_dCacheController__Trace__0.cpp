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
    VlWide<8>/*255:0*/ __Vtemp_1;
    // Body
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgBit(oldp+0,(vlSelf->tb_dCacheController__DOT__rst));
        bufp->chgBit(oldp+1,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid));
        bufp->chgIData(oldp+2,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr),32);
        bufp->chgWData(oldp+3,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata),256);
        bufp->chgBit(oldp+11,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid));
        bufp->chgIData(oldp+12,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr),32);
        bufp->chgIData(oldp+13,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask),32);
        bufp->chgBit(oldp+14,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved));
        bufp->chgBit(oldp+15,((1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid)))));
        bufp->chgCData(oldp+16,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                          >> 7U))),8);
        bufp->chgCData(oldp+17,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                          >> 8U))),8);
        bufp->chgBit(oldp+18,((1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)))));
        bufp->chgCData(oldp+19,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                          >> 8U))),8);
        bufp->chgWData(oldp+20,(vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block),256);
        bufp->chgBit(oldp+28,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid));
    }
    if (VL_UNLIKELY(((vlSelf->__Vm_traceActivity[1U] 
                      | vlSelf->__Vm_traceActivity[2U]) 
                     | vlSelf->__Vm_traceActivity[4U]))) {
        bufp->chgIData(oldp+29,(((IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)
                                  ? vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask
                                  : vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg)),32);
        if (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved) {
            __Vtemp_1[0U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U];
            __Vtemp_1[1U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U];
            __Vtemp_1[2U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U];
            __Vtemp_1[3U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U];
            __Vtemp_1[4U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U];
            __Vtemp_1[5U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U];
            __Vtemp_1[6U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U];
            __Vtemp_1[7U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U];
        } else {
            __Vtemp_1[0U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[0U];
            __Vtemp_1[1U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[1U];
            __Vtemp_1[2U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[2U];
            __Vtemp_1[3U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[3U];
            __Vtemp_1[4U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[4U];
            __Vtemp_1[5U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[5U];
            __Vtemp_1[6U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[6U];
            __Vtemp_1[7U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[7U];
        }
        bufp->chgWData(oldp+30,(__Vtemp_1),256);
    }
    if (VL_UNLIKELY(((vlSelf->__Vm_traceActivity[1U] 
                      | vlSelf->__Vm_traceActivity[3U]) 
                     | vlSelf->__Vm_traceActivity[5U]))) {
        bufp->chgWData(oldp+38,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block),256);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[4U])) {
        bufp->chgWData(oldp+46,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg),256);
        bufp->chgIData(oldp+54,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg),32);
        bufp->chgIData(oldp+55,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg),32);
        bufp->chgIData(oldp+56,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg),32);
        bufp->chgBit(oldp+57,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg));
        bufp->chgBit(oldp+58,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg));
        bufp->chgBit(oldp+59,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_miss_repair));
        bufp->chgBit(oldp+60,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair));
        bufp->chgBit(oldp+61,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg));
        bufp->chgIData(oldp+62,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg),32);
        bufp->chgCData(oldp+63,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg),8);
        bufp->chgWData(oldp+64,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg),256);
        bufp->chgBit(oldp+72,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg));
        bufp->chgCData(oldp+73,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg),8);
        bufp->chgIData(oldp+74,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg),19);
        bufp->chgBit(oldp+75,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg));
        bufp->chgCData(oldp+76,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg),8);
        bufp->chgIData(oldp+77,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg),19);
    }
    bufp->chgBit(oldp+78,(vlSelf->tb_dCacheController__DOT__clk));
    bufp->chgIData(oldp+79,(vlSelf->tb_dCacheController__DOT__cycle_count),32);
    bufp->chgIData(oldp+80,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i),32);
    bufp->chgIData(oldp+81,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i),19);
    bufp->chgIData(oldp+82,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata),19);
    bufp->chgBit(oldp+83,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata)));
    bufp->chgBit(oldp+84,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                 >> 1U))));
    bufp->chgIData(oldp+85,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                         >> 2U))),17);
    bufp->chgIData(oldp+86,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata),19);
    bufp->chgBit(oldp+87,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)));
    bufp->chgBit(oldp+88,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                 >> 1U))));
    bufp->chgIData(oldp+89,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                         >> 2U))),17);
    bufp->chgBit(oldp+90,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable));
    bufp->chgBit(oldp+91,((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable)))));
    bufp->chgCData(oldp+92,((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                      >> 7U))),8);
    bufp->chgBit(oldp+93,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg));
    bufp->chgCData(oldp+94,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg),8);
    bufp->chgIData(oldp+95,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i),32);
    bufp->chgBit(oldp+96,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg));
    bufp->chgCData(oldp+97,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg),8);
    bufp->chgBit(oldp+98,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg));
    bufp->chgCData(oldp+99,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg),8);
    bufp->chgIData(oldp+100,((((0U == (0x1fU & VL_SHIFTL_III(8,32,32, 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                 >> 2U)), 5U)))
                                ? 0U : (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                        (((IData)(0x1fU) 
                                          + (0xffU 
                                             & VL_SHIFTL_III(8,32,32, 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                 >> 2U)), 5U))) 
                                         >> 5U)] << 
                                        ((IData)(0x20U) 
                                         - (0x1fU & 
                                            VL_SHIFTL_III(8,32,32, 
                                                          (0x1fU 
                                                           & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                              >> 2U)), 5U))))) 
                              | (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                 (7U & (VL_SHIFTL_III(8,32,32, 
                                                      (0x1fU 
                                                       & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                          >> 2U)), 5U) 
                                        >> 5U))] >> 
                                 (0x1fU & VL_SHIFTL_III(8,32,32, 
                                                        (0x1fU 
                                                         & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                            >> 2U)), 5U))))),32);
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
    vlSymsp->TOP.__Vm_traceActivity[5U] = 0U;
}

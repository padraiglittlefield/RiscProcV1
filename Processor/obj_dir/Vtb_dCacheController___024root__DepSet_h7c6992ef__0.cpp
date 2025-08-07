// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController__Syms.h"
#include "Vtb_dCacheController___024root.h"

extern const VlWide<8>/*255:0*/ Vtb_dCacheController__ConstPool__CONST_h9e67c271_0;
extern const VlWide<8>/*255:0*/ Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0;

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__1(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Init
    VlWide<6>/*191:0*/ __Vtemp_1;
    // Body
    __Vtemp_1[0U] = 0x2e766364U;
    __Vtemp_1[1U] = 0x6c6c6572U;
    __Vtemp_1[2U] = 0x6e74726fU;
    __Vtemp_1[3U] = 0x6865436fU;
    __Vtemp_1[4U] = 0x64436163U;
    __Vtemp_1[5U] = 0x74625fU;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(6, __Vtemp_1));
    vlSymsp->_traceDumpOpen();
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       36);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_dCacheController__DOT__rst = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[0U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[1U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[2U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[3U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[4U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[5U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[6U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[7U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved = 0U;
    vlSelf->tb_dCacheController__DOT__rst = 0U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       39);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_dCacheController__DOT__rst = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0xaabbccddU;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       68);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       72);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    if (vlSymsp->_vm_contextp__->assertOn()) {
        if (VL_LIKELY((1U & (~ ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing))) 
                                && ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1) 
                                    && ((1U & (~ vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata)) 
                                        || ((0x1ffffU 
                                             & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                                >> 2U)) 
                                            != (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
                                                >> 0xfU))))))))) {
            if (VL_UNLIKELY(vlSymsp->_vm_contextp__->assertOn())) {
                VL_WRITEF("[%0t] %%Error: tb_dCacheController.sv:76: Assertion failed in %Ntb_dCacheController.read_miss_and_repair.unnamedblk1: Controller did not request a miss repair\n\n",
                          64,VL_TIME_UNITED_Q(1000),
                          -9,vlSymsp->name());
                VL_STOP_MT("sim/tb_dCacheController.sv", 76, "");
            }
        }
    }
    if (vlSymsp->_vm_contextp__->assertOn()) {
        if (VL_LIKELY((0xaabbccddU != vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1))) {
            if (VL_UNLIKELY(vlSymsp->_vm_contextp__->assertOn())) {
                VL_WRITEF("[%0t] %%Error: tb_dCacheController.sv:80: Assertion failed in %Ntb_dCacheController.read_miss_and_repair.unnamedblk1: Controller did not send correct missed address\n\n",
                          64,VL_TIME_UNITED_Q(1000),
                          -9,vlSymsp->name());
                VL_STOP_MT("sim/tb_dCacheController.sv", 80, "");
            }
        }
    }
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[0U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[1U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[1U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[2U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[2U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[3U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[3U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[4U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[4U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[5U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[5U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[6U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[6U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[7U] 
        = Vtb_dCacheController__ConstPool__CONST_hdb2a6be9_0[7U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[1U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[2U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[3U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[4U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[5U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[6U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[7U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask = 0xffffffffU;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved = 1U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       41);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_dCacheController__DOT__rst = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[0U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[1U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[2U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[3U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[4U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[5U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[6U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U] 
        = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[7U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved = 0U;
    co_await vlSelf->__VdlySched.delay(0xc350ULL, nullptr, 
                                       "sim/tb_dCacheController.sv", 
                                       43);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_FINISH_MT("sim/tb_dCacheController.sv", 44, "");
    vlSelf->__Vm_traceActivity[2U] = 1U;
}

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(posedge tb_dCacheController.clk)", 
                                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                                           58);
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg 
            = (1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)));
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg 
            = (0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                        >> 8U));
        if (VL_UNLIKELY((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable) 
                          & (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)) 
                         & ((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                      >> 7U)) == (0xffU 
                                                  & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                                     >> 8U)))))) {
            VL_WRITEF("%20# WARNING: Writing and reading addr0=%b and addr1=%b simultaneously!\n",
                      64,VL_TIME_UNITED_Q(1000),8,(0xffU 
                                                   & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                                      >> 7U)),
                      8,(0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                  >> 8U)));
        }
        co_await vlSelf->__VdlySched.delay(0x3e8ULL, 
                                           nullptr, 
                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                           64);
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata = 0U;
        if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg))))) {
            VL_WRITEF("%20# Reading %Ntb_dCacheController.controller_dut.tag_store1 addr1=%b dout1=%b\n",
                      64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                      8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg),
                      19,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__mem
                      [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg]);
        }
    }
}

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(posedge tb_dCacheController.clk)", 
                                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                                           58);
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg 
            = (1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0)));
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg 
            = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                        >> 8U));
        if (VL_UNLIKELY((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable) 
                          & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0)) 
                         & ((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                      >> 7U)) == (0xffU 
                                                  & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                                                     >> 8U)))))) {
            VL_WRITEF("%20# WARNING: Writing and reading addr0=%b and addr1=%b simultaneously!\n",
                      64,VL_TIME_UNITED_Q(1000),8,(0xffU 
                                                   & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                                      >> 7U)),
                      8,(0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                                  >> 8U)));
        }
        co_await vlSelf->__VdlySched.delay(0x3e8ULL, 
                                           nullptr, 
                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                           64);
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata = 0U;
        if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg))))) {
            VL_WRITEF("%20# Reading %Ntb_dCacheController.controller_dut.tag_store0 addr1=%b dout1=%b\n",
                      64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                      8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg),
                      19,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__mem
                      [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg]);
        }
    }
}

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(posedge tb_dCacheController.clk)", 
                                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_256_256_freepdk45.v", 
                                                           59);
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg 
            = (1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0)));
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg 
            = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                        >> 7U));
        if (VL_UNLIKELY((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable) 
                          & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0)) 
                         & ((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                      >> 7U)) == (0xffU 
                                                  & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                                                     >> 7U)))))) {
            VL_WRITEF("%20# WARNING: Writing and reading addr0=%b and addr1=%b simultaneously!\n",
                      64,VL_TIME_UNITED_Q(1000),8,(0xffU 
                                                   & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                                      >> 7U)),
                      8,(0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                                  >> 7U)));
        }
        co_await vlSelf->__VdlySched.delay(0x3e8ULL, 
                                           nullptr, 
                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_256_256_freepdk45.v", 
                                           64);
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[1U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[2U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[3U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[4U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[4U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[5U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[5U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[6U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[6U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[7U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[7U];
        if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg))))) {
            VL_WRITEF("%20# Reading %Ntb_dCacheController.controller_dut.data_store addr1=%b dout1=%b\n",
                      64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                      8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg),
                      256,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                      [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg].data());
        }
    }
    vlSelf->__Vm_traceActivity[3U] = 1U;
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__act(Vtb_dCacheController___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_dCacheController___024root___eval_triggers__act(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->tb_dCacheController__DOT__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__tb_dCacheController__DOT__clk__0))));
    vlSelf->__VactTriggered.set(1U, ((~ (IData)(vlSelf->tb_dCacheController__DOT__clk)) 
                                     & (IData)(vlSelf->__Vtrigprevexpr___TOP__tb_dCacheController__DOT__clk__0)));
    vlSelf->__VactTriggered.set(2U, (((~ (IData)(vlSelf->tb_dCacheController__DOT__clk)) 
                                      & (IData)(vlSelf->__Vtrigprevexpr___TOP__tb_dCacheController__DOT__clk__0)) 
                                     | vlSelf->__VdlySched.awaitingCurrentTime()));
    vlSelf->__VactTriggered.set(3U, vlSelf->__VdlySched.awaitingCurrentTime());
    vlSelf->__Vtrigprevexpr___TOP__tb_dCacheController__DOT__clk__0 
        = vlSelf->tb_dCacheController__DOT__clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb_dCacheController___024root___dump_triggers__act(vlSelf);
    }
#endif
}

VL_INLINE_OPT void Vtb_dCacheController___024root___act_comb__TOP__0(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___act_comb__TOP__0\n"); );
    // Body
    if (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i 
            = (1U | (0x7fffcU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                 >> 0xdU)));
    } else {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i 
            = (1U | (0x7fffeU & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata));
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing))) 
           && ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1) 
               && ((1U & (~ vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata)) 
                   || ((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                    >> 2U)) != (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
                                                >> 0xfU)))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing))) 
           && ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg) 
               && ((1U & (~ vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)) 
                   || ((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                    >> 2U)) != (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg 
                                                >> 0xfU)))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable 
        = (((~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair)) 
            & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg)) 
           | (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved));
}

VL_INLINE_OPT void Vtb_dCacheController___024root___nba_sequent__TOP__0(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___nba_sequent__TOP__0\n"); );
    // Init
    IData/*31:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 = 0;
    IData/*31:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 = 0;
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 = 0;
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 = 0;
    VlWide<8>/*255:0*/ __Vtemp_2;
    // Body
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg 
        = (1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable)));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg 
        = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                    >> 7U));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i;
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg))))) {
        VL_WRITEF("%20# Writing %Ntb_dCacheController.controller_dut.tag_store0 addr0=%b din0=%b\n",
                  64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                  8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg),
                  19,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg);
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg 
        = (1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable)));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg 
        = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                    >> 7U));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i;
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg))))) {
        VL_WRITEF("%20# Writing %Ntb_dCacheController.controller_dut.tag_store1 addr0=%b din0=%b\n",
                  64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                  8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg),
                  19,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg);
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg 
        = (1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable)));
    if (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[1U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[2U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[3U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[4U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[5U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[6U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[7U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U];
    } else {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[1U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[2U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[3U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[4U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[4U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[5U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[5U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[6U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[6U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[7U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[7U];
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg 
        = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                    >> 7U));
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg))))) {
        VL_WRITEF("%20# Writing %Ntb_dCacheController.controller_dut.data_store addr0=%b din0=%b wmask0=%b\n",
                  64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                  8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg),
                  256,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg.data(),
                  32,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg);
    }
    if (vlSelf->tb_dCacheController__DOT__rst) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg = 0U;
        __Vtemp_2[1U] = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[1U];
        __Vtemp_2[2U] = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[2U];
        __Vtemp_2[3U] = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[3U];
        __Vtemp_2[4U] = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[4U];
        __Vtemp_2[5U] = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[5U];
        __Vtemp_2[6U] = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[6U];
        __Vtemp_2[7U] = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[7U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[0U] 
            = Vtb_dCacheController__ConstPool__CONST_h9e67c271_0[0U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 = 0U;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg = 0U;
    } else if (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg;
        __Vtemp_2[1U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[1U];
        __Vtemp_2[2U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[2U];
        __Vtemp_2[3U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[3U];
        __Vtemp_2[4U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[4U];
        __Vtemp_2[5U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[5U];
        __Vtemp_2[6U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[6U];
        __Vtemp_2[7U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[7U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[0U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[0U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg;
    } else {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask;
        __Vtemp_2[1U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U];
        __Vtemp_2[2U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U];
        __Vtemp_2[3U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U];
        __Vtemp_2[4U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U];
        __Vtemp_2[5U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U];
        __Vtemp_2[6U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U];
        __Vtemp_2[7U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[0U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr;
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[1U] 
        = __Vtemp_2[1U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[2U] 
        = __Vtemp_2[2U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[3U] 
        = __Vtemp_2[3U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[4U] 
        = __Vtemp_2[4U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[5U] 
        = __Vtemp_2[5U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[6U] 
        = __Vtemp_2[6U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[7U] 
        = __Vtemp_2[7U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__rst))) 
           && ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing)
                ? (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg)
                : (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__rst))) 
           && (((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request) 
                | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair)) 
               || ((1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved))) 
                   && (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
}

VL_INLINE_OPT void Vtb_dCacheController___024root___nba_comb__TOP__0(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___nba_comb__TOP__0\n"); );
    // Body
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
        = ((IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)
            ? vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr
            : vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg);
}

VL_INLINE_OPT void Vtb_dCacheController___024root___nba_comb__TOP__1(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___nba_comb__TOP__1\n"); );
    // Body
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing))) 
           && ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1) 
               && ((1U & (~ vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata)) 
                   || ((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                    >> 2U)) != (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
                                                >> 0xfU)))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i 
        = ((IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)
            ? (1U | (0x7fffcU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                 >> 0xdU))) : (1U | 
                                               (0x7fffeU 
                                                & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing))) 
           && ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg) 
               && ((1U & (~ vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)) 
                   || ((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                    >> 2U)) != (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg 
                                                >> 0xfU)))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable 
        = (((~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair)) 
            & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg)) 
           | (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved));
}

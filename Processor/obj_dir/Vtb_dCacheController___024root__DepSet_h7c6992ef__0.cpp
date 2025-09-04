// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController__Syms.h"
#include "Vtb_dCacheController___024root.h"

extern const VlWide<32>/*1023:0*/ Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0;
extern const VlWide<32>/*1023:0*/ Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0;

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
    vlSelf->tb_dCacheController__DOT__rst = 1U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       37);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_dCacheController__DOT__rst = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[1U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[2U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[3U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[4U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[5U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[6U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[7U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[8U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[8U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[9U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[9U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xaU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xaU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xbU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xbU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xcU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xcU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xdU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xdU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xeU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xeU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xfU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xfU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x10U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x10U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x11U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x11U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x12U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x12U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x13U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x13U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x14U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x14U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x15U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x15U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x16U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x16U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x17U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x17U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x18U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x18U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x19U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x19U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1aU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1aU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1bU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1bU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1cU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1cU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1dU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1dU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1eU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1eU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1fU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1fU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[0U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[1U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[2U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[3U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved = 0U;
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
                                                       75);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       79);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       80);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       81);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    if (vlSymsp->_vm_contextp__->assertOn()) {
        if (VL_LIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request))))) {
            if (VL_UNLIKELY(vlSymsp->_vm_contextp__->assertOn())) {
                VL_WRITEF("[%0t] %%Error: tb_dCacheController.sv:84: Assertion failed in %Ntb_dCacheController.read_miss_and_repair.unnamedblk1: Controller did not request a miss repair\n\n",
                          64,VL_TIME_UNITED_Q(1000),
                          -9,vlSymsp->name());
                VL_STOP_MT("sim/tb_dCacheController.sv", 84, "");
            }
        }
    }
    if (vlSymsp->_vm_contextp__->assertOn()) {
        if (VL_LIKELY((0xaabbccddU != vlSelf->tb_dCacheController__DOT__controller_dut__DOT__missed_addr))) {
            if (VL_UNLIKELY(vlSymsp->_vm_contextp__->assertOn())) {
                VL_WRITEF("[%0t] %%Error: tb_dCacheController.sv:88: Assertion failed in %Ntb_dCacheController.read_miss_and_repair.unnamedblk1: Controller did not send correct missed address\n\n",
                          64,VL_TIME_UNITED_Q(1000),
                          -9,vlSymsp->name());
                VL_STOP_MT("sim/tb_dCacheController.sv", 88, "");
            }
        }
    }
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[1U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[1U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[2U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[2U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[3U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[3U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[4U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[4U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[5U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[5U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[6U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[6U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[7U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[7U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[8U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[8U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[9U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[9U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xaU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0xaU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xbU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0xbU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xcU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0xcU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xdU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0xdU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xeU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0xeU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xfU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0xfU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x10U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x10U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x11U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x11U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x12U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x12U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x13U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x13U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x14U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x14U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x15U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x15U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x16U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x16U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x17U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x17U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x18U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x18U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x19U] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x19U];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1aU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x1aU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1bU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x1bU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1cU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x1cU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1dU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x1dU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1eU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x1eU];
    vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1fU] 
        = Vtb_dCacheController__ConstPool__CONST_h8b5b0f76_0[0x1fU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__missed_addr;
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
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[8U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[8U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[9U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[9U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xaU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xaU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xbU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xbU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xcU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xcU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xdU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xdU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xeU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xeU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xfU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0xfU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x10U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x10U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x11U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x11U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x12U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x12U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x13U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x13U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x14U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x14U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x15U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x15U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x16U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x16U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x17U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x17U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x18U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x18U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x19U] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x19U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1aU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1aU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1bU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1bU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1cU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1cU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1dU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1dU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1eU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1eU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1fU] 
        = vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block[0x1fU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[0U] = 0xffffffffU;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[1U] = 0xffffffffU;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[2U] = 0xffffffffU;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[3U] = 0xffffffffU;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       103);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 0U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       108);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_dCacheController__DOT__rst = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[1U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[2U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[3U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[4U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[5U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[6U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[7U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[8U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[8U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[9U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[9U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xaU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xaU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xbU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xbU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xcU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xcU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xdU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xdU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xeU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xeU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xfU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xfU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x10U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x10U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x11U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x11U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x12U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x12U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x13U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x13U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x14U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x14U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x15U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x15U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x16U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x16U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x17U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x17U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x18U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x18U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x19U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x19U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1aU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1aU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1bU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1bU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1cU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1cU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1dU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1dU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1eU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1eU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1fU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1fU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[0U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[1U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[2U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[3U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved = 0U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       110);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       41);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       42);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_dCacheController__DOT__rst = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0xaabbccddU;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       120);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       124);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_dCacheController__DOT__rst = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[1U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[2U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[3U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[4U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[5U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[6U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[7U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[8U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[8U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[9U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[9U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xaU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xaU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xbU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xbU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xcU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xcU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xdU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xdU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xeU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xeU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xfU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xfU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x10U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x10U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x11U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x11U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x12U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x12U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x13U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x13U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x14U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x14U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x15U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x15U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x16U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x16U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x17U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x17U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x18U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x18U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x19U] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x19U];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1aU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1aU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1bU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1bU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1cU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1cU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1dU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1dU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1eU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1eU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1fU] 
        = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1fU];
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[0U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[1U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[2U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[3U] = 0U;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved = 0U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       129);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h637d5c3a__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_dCacheController.clk)", 
                                                       "sim/tb_dCacheController.sv", 
                                                       44);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VdlySched.delay(0xc350ULL, nullptr, 
                                       "sim/tb_dCacheController.sv", 
                                       50);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_FINISH_MT("sim/tb_dCacheController.sv", 51, "");
    vlSelf->__Vm_traceActivity[2U] = 1U;
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
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair 
        = (((~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)) 
            & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1)) 
           && ((1U & (~ vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)) 
               || ((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                >> 2U)) != (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 
                                            >> 0xfU))));
    if (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next = 1U;
        if (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing) {
            vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next 
                = (1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)));
        }
    } else {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next = 0U;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next 
            = ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request) 
               | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair));
    }
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
    IData/*31:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 = 0;
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 = 0;
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 = 0;
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2 = 0;
    IData/*31:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0 = 0;
    IData/*31:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 = 0;
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0 = 0;
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1 = 0;
    VlWide<32>/*1023:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0;
    VL_ZERO_W(1024, __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0);
    VlWide<32>/*1023:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1;
    VL_ZERO_W(1024, __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1);
    VlWide<4>/*127:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0;
    VL_ZERO_W(128, __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0);
    VlWide<4>/*127:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1;
    VL_ZERO_W(128, __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1);
    CData/*0:0*/ __Vdly__tb_dCacheController__DOT__controller_dut__DOT__rdata_valid;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__rdata_valid = 0;
    // Body
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__rdata_valid 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU];
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1;
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg 
        = (1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg 
        = (0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                    >> 7U));
    if (VL_UNLIKELY((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable) 
                      & (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)) 
                     & ((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                  >> 7U)) == (0xffU 
                                              & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                                 >> 7U)))))) {
        VL_WRITEF("%20# WARNING: Writing and reading addr0=%b and addr1=%b simultaneously!\n",
                  64,VL_TIME_UNITED_Q(1000),8,(0xffU 
                                               & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                                  >> 7U)),
                  8,(0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                              >> 7U)));
    }
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg))))) {
        VL_WRITEF("%20# Reading %Ntb_dCacheController.controller_dut.tag_store1 addr1=%b dout1=%b\n",
                  64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                  8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg),
                  19,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__mem
                  [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg]);
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg 
        = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                    >> 7U));
    if (VL_UNLIKELY((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable) 
                      & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1))) 
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
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg))))) {
        VL_WRITEF("%20# Reading %Ntb_dCacheController.controller_dut.data_store addr1=%b dout1=%b\n",
                  64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                  8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg),
                  1024,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                  [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg].data());
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg 
        = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                    >> 7U));
    if (VL_UNLIKELY((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable) 
                      & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1))) 
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
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg))))) {
        VL_WRITEF("%20# Reading %Ntb_dCacheController.controller_dut.tag_store0 addr1=%b dout1=%b\n",
                  64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                  8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg),
                  19,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__mem
                  [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg]);
    }
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
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg[0U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[0U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg[1U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[1U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg[2U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[2U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg[3U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[3U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg 
        = (0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                    >> 7U));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[1U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[1U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[2U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[2U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[3U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[3U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[4U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[4U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[5U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[5U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[6U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[6U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[7U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[7U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[8U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[8U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[9U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[9U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0xaU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xaU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0xbU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xbU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0xcU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xcU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0xdU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xdU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0xeU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xeU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0xfU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xfU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x10U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x10U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x11U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x11U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x12U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x12U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x13U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x13U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x14U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x14U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x15U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x15U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x16U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x16U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x17U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x17U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x18U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x18U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x19U] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x19U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x1aU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1aU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x1bU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1bU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x1cU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1cU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x1dU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1dU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x1eU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1eU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[0x1fU] 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1fU];
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg))))) {
        VL_WRITEF("%20# Writing %Ntb_dCacheController.controller_dut.data_store addr0=%b din0=%b wmask0=%b\n",
                  64,VL_TIME_UNITED_Q(1000),vlSymsp->name(),
                  8,(IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg),
                  1024,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg.data(),
                  128,vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg.data());
    }
    __Vdly__tb_dCacheController__DOT__controller_dut__DOT__rdata_valid 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__rst))) 
           && ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1) 
               & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request))));
    if (vlSelf->tb_dCacheController__DOT__rst) {
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U] = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[1U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[2U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[3U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[4U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[5U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[6U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[7U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[8U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[9U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xaU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xbU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xcU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xdU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xeU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xfU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x10U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x11U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x12U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x13U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x14U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x15U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x16U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x17U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x18U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x19U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1aU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1bU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1cU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1dU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1eU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1fU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[1U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[2U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[3U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[4U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[5U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[6U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[7U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[8U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[9U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xaU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xbU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xcU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xdU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xeU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0xfU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x10U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x11U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x12U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x13U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x14U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x15U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x16U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x17U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x18U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x19U];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1aU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1bU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1cU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1dU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1eU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU] 
            = Vtb_dCacheController__ConstPool__CONST_hd6b7ba52_0[0x1fU];
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0 = 0U;
        __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 = 0U;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__missed_addr = 0U;
    } else {
        if (((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request) 
               | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair)) 
              | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing)) 
             & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request)))) {
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2;
        } else {
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid;
        }
        if (((((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request) 
               | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair)) 
              | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing)) 
             & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)))) {
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1;
        } else {
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[8U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[9U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xaU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xbU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xcU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xdU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xeU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xfU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x10U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x11U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x12U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x13U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x14U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x15U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x16U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x17U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x18U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x19U];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1aU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1bU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1cU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1dU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1eU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU] 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1fU];
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0;
            __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0 
                = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr;
        }
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__missed_addr 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2;
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_tag 
        = ((IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid) 
           & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request)));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_prev 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__rst))) 
           && (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[0U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[1U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[2U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0[3U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[1U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[2U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[3U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[4U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[5U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[6U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[7U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[8U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[9U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xaU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xbU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xcU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xdU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xeU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0xfU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x10U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x11U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x12U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x13U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x14U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x15U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x16U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x17U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x18U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x19U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1aU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1bU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1cU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1dU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1eU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0[0x1fU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0;
    if (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i 
            = (1U | (0x7fffcU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                 >> 0xdU)));
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[0U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[1U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[2U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[3U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[1U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[2U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[3U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[4U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[5U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[6U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[7U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[8U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[8U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[9U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[9U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xaU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xaU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xbU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xbU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xcU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xcU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xdU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xdU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xeU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xeU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xfU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0xfU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x10U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x10U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x11U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x11U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x12U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x12U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x13U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x13U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x14U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x14U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x15U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x15U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x16U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x16U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x17U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x17U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x18U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x18U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x19U] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x19U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1aU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1aU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1bU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1bU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1cU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1cU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1dU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1dU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1eU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1eU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1fU] 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0x1fU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
            = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr;
    } else {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i 
            = ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1)
                ? (3U | (0x7fffcU & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata))
                : 0U);
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[0U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[1U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[2U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i[3U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[1U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[2U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[3U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[4U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[5U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[6U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[7U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[8U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[9U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xaU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xbU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xcU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xdU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xeU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0xfU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x10U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x11U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x12U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x13U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x14U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x15U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x16U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x17U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x18U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x19U] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1aU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1bU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1cU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1dU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1eU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i[0x1fU] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1;
    }
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable 
        = (((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1) 
            & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair))) 
           | (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1 
        = (1U & (~ ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0) 
                    | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request 
        = ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid) 
           & (~ (((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                               >> 2U)) == (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 
                                           >> 0xfU)) 
                 & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                    & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid)))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing 
        = ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__rst))) 
           && (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[0U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[1U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[2U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1[3U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[1U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[2U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[3U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[4U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[5U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[6U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[7U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[8U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[9U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xaU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xbU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xcU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xdU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xeU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0xfU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x10U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x11U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x12U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x13U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x14U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x15U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x16U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x17U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x18U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x19U];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1aU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1bU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1cU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1dU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1eU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU] 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1[0x1fU];
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid 
        = __Vdly__tb_dCacheController__DOT__controller_dut__DOT__rdata_valid;
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid;
}

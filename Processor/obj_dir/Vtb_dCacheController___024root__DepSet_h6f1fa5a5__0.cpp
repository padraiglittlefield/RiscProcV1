// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController___024root.h"

VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__0(Vtb_dCacheController___024root* vlSelf);
VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__1(Vtb_dCacheController___024root* vlSelf);
VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2(Vtb_dCacheController___024root* vlSelf);
VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3(Vtb_dCacheController___024root* vlSelf);
VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4(Vtb_dCacheController___024root* vlSelf);

void Vtb_dCacheController___024root___eval_initial(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vm_traceActivity[1U] = 1U;
    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2(vlSelf);
    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3(vlSelf);
    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__tb_dCacheController__DOT__clk__0 
        = vlSelf->tb_dCacheController__DOT__clk;
}

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__0(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0x1f4ULL, 
                                           nullptr, 
                                           "sim/tb_dCacheController.sv", 
                                           16);
        vlSelf->tb_dCacheController__DOT__clk = 1U;
        vlSelf->tb_dCacheController__DOT__cycle_count 
            = ((IData)(1U) + vlSelf->tb_dCacheController__DOT__cycle_count);
        co_await vlSelf->__VdlySched.delay(0x1f4ULL, 
                                           nullptr, 
                                           "sim/tb_dCacheController.sv", 
                                           18);
        vlSelf->tb_dCacheController__DOT__clk = 0U;
    }
}

VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2____Vfork_3__1(Vtb_dCacheController___024root* vlSelf, IData/*18:0*/ __Vintraval_h60898a62__0);

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VtrigSched_h637d5607__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_dCacheController.clk)", 
                                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                                           81);
        if ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg)))) {
            vlSelf->__Vintraval_h60898a62__0 = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg];
            Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2____Vfork_3__1(vlSelf, vlSelf->__Vintraval_h60898a62__0);
        }
    }
}

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2____Vfork_3__1(Vtb_dCacheController___024root* vlSelf, IData/*18:0*/ __Vintraval_h60898a62__0) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__2____Vfork_3__1\n"); );
    // Body
    co_await vlSelf->__VdlySched.delay(0U, nullptr, 
                                       "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                       84);
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0 
        = __Vintraval_h60898a62__0;
    vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0 = 1U;
}

VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3____Vfork_2__1(Vtb_dCacheController___024root* vlSelf, IData/*18:0*/ __Vintraval_h1c7847b3__0);

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VtrigSched_h637d5607__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_dCacheController.clk)", 
                                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                                           81);
        if ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg)))) {
            vlSelf->__Vintraval_h1c7847b3__0 = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg];
            Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3____Vfork_2__1(vlSelf, vlSelf->__Vintraval_h1c7847b3__0);
        }
    }
}

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3____Vfork_2__1(Vtb_dCacheController___024root* vlSelf, IData/*18:0*/ __Vintraval_h1c7847b3__0) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__3____Vfork_2__1\n"); );
    // Body
    co_await vlSelf->__VdlySched.delay(0U, nullptr, 
                                       "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v", 
                                       84);
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0 
        = __Vintraval_h1c7847b3__0;
    vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0 = 1U;
}

VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4____Vfork_1__1(Vtb_dCacheController___024root* vlSelf, VlWide<32>/*1023:0*/ __Vintraval_h9c92da6c__0);

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VtrigSched_h637d5607__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_dCacheController.clk)", 
                                                           "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_1024_256_freepdk45.v", 
                                                           79);
        if ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg)))) {
            vlSelf->__Vintraval_h9c92da6c__0[0U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0U];
            vlSelf->__Vintraval_h9c92da6c__0[1U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][1U];
            vlSelf->__Vintraval_h9c92da6c__0[2U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][2U];
            vlSelf->__Vintraval_h9c92da6c__0[3U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][3U];
            vlSelf->__Vintraval_h9c92da6c__0[4U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][4U];
            vlSelf->__Vintraval_h9c92da6c__0[5U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][5U];
            vlSelf->__Vintraval_h9c92da6c__0[6U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][6U];
            vlSelf->__Vintraval_h9c92da6c__0[7U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][7U];
            vlSelf->__Vintraval_h9c92da6c__0[8U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][8U];
            vlSelf->__Vintraval_h9c92da6c__0[9U] = 
                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][9U];
            vlSelf->__Vintraval_h9c92da6c__0[0xaU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0xaU];
            vlSelf->__Vintraval_h9c92da6c__0[0xbU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0xbU];
            vlSelf->__Vintraval_h9c92da6c__0[0xcU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0xcU];
            vlSelf->__Vintraval_h9c92da6c__0[0xdU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0xdU];
            vlSelf->__Vintraval_h9c92da6c__0[0xeU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0xeU];
            vlSelf->__Vintraval_h9c92da6c__0[0xfU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0xfU];
            vlSelf->__Vintraval_h9c92da6c__0[0x10U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x10U];
            vlSelf->__Vintraval_h9c92da6c__0[0x11U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x11U];
            vlSelf->__Vintraval_h9c92da6c__0[0x12U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x12U];
            vlSelf->__Vintraval_h9c92da6c__0[0x13U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x13U];
            vlSelf->__Vintraval_h9c92da6c__0[0x14U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x14U];
            vlSelf->__Vintraval_h9c92da6c__0[0x15U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x15U];
            vlSelf->__Vintraval_h9c92da6c__0[0x16U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x16U];
            vlSelf->__Vintraval_h9c92da6c__0[0x17U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x17U];
            vlSelf->__Vintraval_h9c92da6c__0[0x18U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x18U];
            vlSelf->__Vintraval_h9c92da6c__0[0x19U] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x19U];
            vlSelf->__Vintraval_h9c92da6c__0[0x1aU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x1aU];
            vlSelf->__Vintraval_h9c92da6c__0[0x1bU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x1bU];
            vlSelf->__Vintraval_h9c92da6c__0[0x1cU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x1cU];
            vlSelf->__Vintraval_h9c92da6c__0[0x1dU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x1dU];
            vlSelf->__Vintraval_h9c92da6c__0[0x1eU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x1eU];
            vlSelf->__Vintraval_h9c92da6c__0[0x1fU] 
                = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg][0x1fU];
            Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4____Vfork_1__1(vlSelf, vlSelf->__Vintraval_h9c92da6c__0);
        }
    }
}

VL_INLINE_OPT VlCoroutine Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4____Vfork_1__1(Vtb_dCacheController___024root* vlSelf, VlWide<32>/*1023:0*/ __Vintraval_h9c92da6c__0) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_initial__TOP__Vtiming__4____Vfork_1__1\n"); );
    // Body
    co_await vlSelf->__VdlySched.delay(0U, nullptr, 
                                       "include/../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_1024_256_freepdk45.v", 
                                       81);
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0U] 
        = __Vintraval_h9c92da6c__0[0U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[1U] 
        = __Vintraval_h9c92da6c__0[1U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[2U] 
        = __Vintraval_h9c92da6c__0[2U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[3U] 
        = __Vintraval_h9c92da6c__0[3U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[4U] 
        = __Vintraval_h9c92da6c__0[4U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[5U] 
        = __Vintraval_h9c92da6c__0[5U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[6U] 
        = __Vintraval_h9c92da6c__0[6U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[7U] 
        = __Vintraval_h9c92da6c__0[7U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[8U] 
        = __Vintraval_h9c92da6c__0[8U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[9U] 
        = __Vintraval_h9c92da6c__0[9U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xaU] 
        = __Vintraval_h9c92da6c__0[0xaU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xbU] 
        = __Vintraval_h9c92da6c__0[0xbU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xcU] 
        = __Vintraval_h9c92da6c__0[0xcU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xdU] 
        = __Vintraval_h9c92da6c__0[0xdU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xeU] 
        = __Vintraval_h9c92da6c__0[0xeU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xfU] 
        = __Vintraval_h9c92da6c__0[0xfU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x10U] 
        = __Vintraval_h9c92da6c__0[0x10U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x11U] 
        = __Vintraval_h9c92da6c__0[0x11U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x12U] 
        = __Vintraval_h9c92da6c__0[0x12U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x13U] 
        = __Vintraval_h9c92da6c__0[0x13U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x14U] 
        = __Vintraval_h9c92da6c__0[0x14U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x15U] 
        = __Vintraval_h9c92da6c__0[0x15U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x16U] 
        = __Vintraval_h9c92da6c__0[0x16U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x17U] 
        = __Vintraval_h9c92da6c__0[0x17U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x18U] 
        = __Vintraval_h9c92da6c__0[0x18U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x19U] 
        = __Vintraval_h9c92da6c__0[0x19U];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1aU] 
        = __Vintraval_h9c92da6c__0[0x1aU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1bU] 
        = __Vintraval_h9c92da6c__0[0x1bU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1cU] 
        = __Vintraval_h9c92da6c__0[0x1cU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1dU] 
        = __Vintraval_h9c92da6c__0[0x1dU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1eU] 
        = __Vintraval_h9c92da6c__0[0x1eU];
    vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1fU] 
        = __Vintraval_h9c92da6c__0[0x1fU];
    vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0 = 1U;
}

void Vtb_dCacheController___024root___act_comb__TOP__0(Vtb_dCacheController___024root* vlSelf);

void Vtb_dCacheController___024root___eval_act(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_act\n"); );
    // Body
    if ((9ULL & vlSelf->__VactTriggered.word(0U))) {
        Vtb_dCacheController___024root___act_comb__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vtb_dCacheController___024root___nba_sequent__TOP__1(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___nba_sequent__TOP__1\n"); );
    // Body
    if (vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[1U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[1U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[2U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[2U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[3U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[3U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[4U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[4U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[5U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[5U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[6U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[6U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[7U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[7U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[8U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[8U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[9U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[9U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0xaU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xaU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0xbU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xbU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0xcU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xcU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0xdU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xdU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0xeU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xeU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0xfU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0xfU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x10U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x10U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x11U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x11U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x12U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x12U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x13U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x13U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x14U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x14U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x15U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x15U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x16U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x16U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x17U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x17U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x18U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x18U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x19U] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x19U];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x1aU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1aU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x1bU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1bU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x1cU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1cU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x1dU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1dU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x1eU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1eU];
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[0x1fU] 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0[0x1fU];
        vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0 = 0U;
    }
    if (vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0;
        vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0 = 0U;
    }
    if (vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
            = vlSelf->__Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0;
        vlSelf->__Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0 = 0U;
    }
}

VL_INLINE_OPT void Vtb_dCacheController___024root___nba_sequent__TOP__2(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___nba_sequent__TOP__2\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg)))) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__mem[vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg;
    }
    if ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg)))) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__mem[vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg] 
            = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg;
    }
    if ((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg)))) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i = 0U;
        while (VL_GTS_III(32, 0x80U, vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i)) {
            if ((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg[
                       (3U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i 
                              >> 5U))] >> (0x1fU & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i)))) {
                VL_ASSIGNSEL_WI(1024,8,(0x3ffU & VL_MULS_III(32, (IData)(8U), vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i)), 
                                vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem
                                [vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg], 
                                (0xffU & (((0U == (0x1fU 
                                                   & VL_MULS_III(32, (IData)(8U), vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i)))
                                            ? 0U : 
                                           (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[
                                            (((IData)(7U) 
                                              + (0x3ffU 
                                                 & VL_MULS_III(32, (IData)(8U), vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i))) 
                                             >> 5U)] 
                                            << ((IData)(0x20U) 
                                                - (0x1fU 
                                                   & VL_MULS_III(32, (IData)(8U), vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i))))) 
                                          | (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg[
                                             (0x1fU 
                                              & (VL_MULS_III(32, (IData)(8U), vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i) 
                                                 >> 5U))] 
                                             >> (0x1fU 
                                                 & VL_MULS_III(32, (IData)(8U), vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i))))));
            }
            vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i 
                = ((IData)(1U) + vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i);
        }
    }
}

void Vtb_dCacheController___024root___nba_sequent__TOP__0(Vtb_dCacheController___024root* vlSelf);

void Vtb_dCacheController___024root___eval_nba(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_dCacheController___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
    if ((4ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_dCacheController___024root___nba_sequent__TOP__1(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_dCacheController___024root___nba_sequent__TOP__2(vlSelf);
    }
    if ((0xdULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_dCacheController___024root___act_comb__TOP__0(vlSelf);
    }
}

void Vtb_dCacheController___024root___timing_resume(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___timing_resume\n"); );
    // Body
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_h637d5c3a__0.resume("@(posedge tb_dCacheController.clk)");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_h637d5607__0.resume("@(negedge tb_dCacheController.clk)");
    }
    if ((8ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vtb_dCacheController___024root___timing_commit(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___timing_commit\n"); );
    // Body
    if ((! (1ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_h637d5c3a__0.commit("@(posedge tb_dCacheController.clk)");
    }
    if ((! (2ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_h637d5607__0.commit("@(negedge tb_dCacheController.clk)");
    }
}

void Vtb_dCacheController___024root___eval_triggers__act(Vtb_dCacheController___024root* vlSelf);

bool Vtb_dCacheController___024root___eval_phase__act(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<4> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtb_dCacheController___024root___eval_triggers__act(vlSelf);
    Vtb_dCacheController___024root___timing_commit(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vtb_dCacheController___024root___timing_resume(vlSelf);
        Vtb_dCacheController___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtb_dCacheController___024root___eval_phase__nba(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtb_dCacheController___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__nba(Vtb_dCacheController___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__act(Vtb_dCacheController___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_dCacheController___024root___eval(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vtb_dCacheController___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("sim/tb_dCacheController.sv", 5, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vtb_dCacheController___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("sim/tb_dCacheController.sv", 5, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vtb_dCacheController___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vtb_dCacheController___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtb_dCacheController___024root___eval_debug_assertions(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG

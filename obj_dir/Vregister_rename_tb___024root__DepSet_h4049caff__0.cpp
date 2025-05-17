// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vregister_rename_tb.h for the primary calling header

#include "Vregister_rename_tb__pch.h"
#include "Vregister_rename_tb___024root.h"

VlCoroutine Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__0(Vregister_rename_tb___024root* vlSelf);
VlCoroutine Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__1(Vregister_rename_tb___024root* vlSelf);

void Vregister_rename_tb___024root___eval_initial(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vm_traceActivity[1U] = 1U;
    Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__register_rename_tb__DOT__clk__0 
        = vlSelf->register_rename_tb__DOT__clk;
}

VL_INLINE_OPT VlCoroutine Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__0(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0xaULL, 
                                           nullptr, 
                                           "sim/register_rename_tb.sv", 
                                           81);
        vlSelf->register_rename_tb__DOT__clk = 1U;
        vlSelf->register_rename_tb__DOT__cycle_count 
            = ((IData)(1U) + vlSelf->register_rename_tb__DOT__cycle_count);
        co_await vlSelf->__VdlySched.delay(0xaULL, 
                                           nullptr, 
                                           "sim/register_rename_tb.sv", 
                                           83);
        vlSelf->register_rename_tb__DOT__clk = 0U;
    }
}

void Vregister_rename_tb___024root___eval_act(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vregister_rename_tb___024root___nba_sequent__TOP__0(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v0;
    __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v0 = 0;
    CData/*4:0*/ __Vdlyvdim0__register_rename_tb__DOT__rat__DOT__register_alias_table__v32;
    __Vdlyvdim0__register_rename_tb__DOT__rat__DOT__register_alias_table__v32 = 0;
    CData/*6:0*/ __Vdlyvval__register_rename_tb__DOT__rat__DOT__register_alias_table__v32;
    __Vdlyvval__register_rename_tb__DOT__rat__DOT__register_alias_table__v32 = 0;
    CData/*0:0*/ __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v32;
    __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v32 = 0;
    CData/*7:0*/ __Vdly__register_rename_tb__DOT__fpg__DOT__w_ptr;
    __Vdly__register_rename_tb__DOT__fpg__DOT__w_ptr = 0;
    CData/*0:0*/ __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v0;
    __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v0 = 0;
    CData/*6:0*/ __Vdlyvdim0__register_rename_tb__DOT__fpg__DOT__free_queue__v128;
    __Vdlyvdim0__register_rename_tb__DOT__fpg__DOT__free_queue__v128 = 0;
    CData/*6:0*/ __Vdlyvval__register_rename_tb__DOT__fpg__DOT__free_queue__v128;
    __Vdlyvval__register_rename_tb__DOT__fpg__DOT__free_queue__v128 = 0;
    CData/*0:0*/ __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v128;
    __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v128 = 0;
    CData/*7:0*/ __Vdly__register_rename_tb__DOT__fpg__DOT__r_ptr;
    __Vdly__register_rename_tb__DOT__fpg__DOT__r_ptr = 0;
    // Body
    __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v0 = 0U;
    __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v32 = 0U;
    __Vdly__register_rename_tb__DOT__fpg__DOT__r_ptr 
        = vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr;
    __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v0 = 0U;
    __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v128 = 0U;
    __Vdly__register_rename_tb__DOT__fpg__DOT__w_ptr 
        = vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr;
    if (vlSelf->register_rename_tb__DOT__rst) {
        vlSelf->register_rename_tb__DOT__rat__DOT__i = 0x20U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__i = 0x80U;
        __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v0 = 1U;
        __Vdly__register_rename_tb__DOT__fpg__DOT__r_ptr = 0U;
        __Vdly__register_rename_tb__DOT__fpg__DOT__w_ptr = 0x80U;
        __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v0 = 1U;
    } else {
        if ((1U & ((~ (IData)(vlSelf->register_rename_tb__DOT__stall)) 
                   & (~ (IData)(vlSelf->register_rename_tb__DOT__empty))))) {
            __Vdly__register_rename_tb__DOT__fpg__DOT__r_ptr 
                = (0xffU & ((IData)(1U) + (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr)));
        }
        if (((IData)(vlSelf->register_rename_tb__DOT__fpq_w_en) 
             & (~ ((~ (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int)) 
                   & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty))))) {
            __Vdly__register_rename_tb__DOT__fpg__DOT__w_ptr 
                = (0xffU & ((IData)(1U) + (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr)));
            __Vdlyvval__register_rename_tb__DOT__fpg__DOT__free_queue__v128 
                = vlSelf->register_rename_tb__DOT__preg_in;
            __Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v128 = 1U;
            __Vdlyvdim0__register_rename_tb__DOT__fpg__DOT__free_queue__v128 
                = (0x7fU & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr));
        }
    }
    if ((1U & (((~ (IData)(vlSelf->register_rename_tb__DOT__empty)) 
                & (~ (IData)(vlSelf->register_rename_tb__DOT__stall))) 
               & (~ (IData)(vlSelf->register_rename_tb__DOT__rst))))) {
        __Vdlyvval__register_rename_tb__DOT__rat__DOT__register_alias_table__v32 
            = vlSelf->register_rename_tb__DOT__new_alias;
        __Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v32 = 1U;
        __Vdlyvdim0__register_rename_tb__DOT__rat__DOT__register_alias_table__v32 
            = (0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                        >> 0xfU));
    }
    if (__Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v0) {
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0U] = 0U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[1U] = 1U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[2U] = 2U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[3U] = 3U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[4U] = 4U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[5U] = 5U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[6U] = 6U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[7U] = 7U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[8U] = 8U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[9U] = 9U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0xaU] = 0xaU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0xbU] = 0xbU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0xcU] = 0xcU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0xdU] = 0xdU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0xeU] = 0xeU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0xfU] = 0xfU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x10U] = 0x10U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x11U] = 0x11U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x12U] = 0x12U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x13U] = 0x13U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x14U] = 0x14U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x15U] = 0x15U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x16U] = 0x16U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x17U] = 0x17U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x18U] = 0x18U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x19U] = 0x19U;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x1aU] = 0x1aU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x1bU] = 0x1bU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x1cU] = 0x1cU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x1dU] = 0x1dU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x1eU] = 0x1eU;
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0x1fU] = 0x1fU;
    }
    if (__Vdlyvset__register_rename_tb__DOT__rat__DOT__register_alias_table__v32) {
        vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[__Vdlyvdim0__register_rename_tb__DOT__rat__DOT__register_alias_table__v32] 
            = __Vdlyvval__register_rename_tb__DOT__rat__DOT__register_alias_table__v32;
    }
    vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr 
        = __Vdly__register_rename_tb__DOT__fpg__DOT__r_ptr;
    if (__Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v0) {
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0U] = 0U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[1U] = 1U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[2U] = 2U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[3U] = 3U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[4U] = 4U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[5U] = 5U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[6U] = 6U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[7U] = 7U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[8U] = 8U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[9U] = 9U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0xaU] = 0xaU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0xbU] = 0xbU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0xcU] = 0xcU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0xdU] = 0xdU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0xeU] = 0xeU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0xfU] = 0xfU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x10U] = 0x10U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x11U] = 0x11U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x12U] = 0x12U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x13U] = 0x13U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x14U] = 0x14U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x15U] = 0x15U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x16U] = 0x16U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x17U] = 0x17U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x18U] = 0x18U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x19U] = 0x19U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x1aU] = 0x1aU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x1bU] = 0x1bU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x1cU] = 0x1cU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x1dU] = 0x1dU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x1eU] = 0x1eU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x1fU] = 0x1fU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x20U] = 0x20U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x21U] = 0x21U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x22U] = 0x22U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x23U] = 0x23U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x24U] = 0x24U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x25U] = 0x25U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x26U] = 0x26U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x27U] = 0x27U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x28U] = 0x28U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x29U] = 0x29U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x2aU] = 0x2aU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x2bU] = 0x2bU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x2cU] = 0x2cU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x2dU] = 0x2dU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x2eU] = 0x2eU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x2fU] = 0x2fU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x30U] = 0x30U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x31U] = 0x31U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x32U] = 0x32U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x33U] = 0x33U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x34U] = 0x34U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x35U] = 0x35U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x36U] = 0x36U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x37U] = 0x37U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x38U] = 0x38U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x39U] = 0x39U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x3aU] = 0x3aU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x3bU] = 0x3bU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x3cU] = 0x3cU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x3dU] = 0x3dU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x3eU] = 0x3eU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x3fU] = 0x3fU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x40U] = 0x40U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x41U] = 0x41U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x42U] = 0x42U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x43U] = 0x43U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x44U] = 0x44U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x45U] = 0x45U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x46U] = 0x46U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x47U] = 0x47U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x48U] = 0x48U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x49U] = 0x49U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x4aU] = 0x4aU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x4bU] = 0x4bU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x4cU] = 0x4cU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x4dU] = 0x4dU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x4eU] = 0x4eU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x4fU] = 0x4fU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x50U] = 0x50U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x51U] = 0x51U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x52U] = 0x52U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x53U] = 0x53U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x54U] = 0x54U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x55U] = 0x55U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x56U] = 0x56U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x57U] = 0x57U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x58U] = 0x58U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x59U] = 0x59U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x5aU] = 0x5aU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x5bU] = 0x5bU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x5cU] = 0x5cU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x5dU] = 0x5dU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x5eU] = 0x5eU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x5fU] = 0x5fU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x60U] = 0x60U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x61U] = 0x61U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x62U] = 0x62U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x63U] = 0x63U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x64U] = 0x64U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x65U] = 0x65U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x66U] = 0x66U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x67U] = 0x67U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x68U] = 0x68U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x69U] = 0x69U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x6aU] = 0x6aU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x6bU] = 0x6bU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x6cU] = 0x6cU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x6dU] = 0x6dU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x6eU] = 0x6eU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x6fU] = 0x6fU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x70U] = 0x70U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x71U] = 0x71U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x72U] = 0x72U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x73U] = 0x73U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x74U] = 0x74U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x75U] = 0x75U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x76U] = 0x76U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x77U] = 0x77U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x78U] = 0x78U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x79U] = 0x79U;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x7aU] = 0x7aU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x7bU] = 0x7bU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x7cU] = 0x7cU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x7dU] = 0x7dU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x7eU] = 0x7eU;
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[0x7fU] = 0x7fU;
    }
    if (__Vdlyvset__register_rename_tb__DOT__fpg__DOT__free_queue__v128) {
        vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue[__Vdlyvdim0__register_rename_tb__DOT__fpg__DOT__free_queue__v128] 
            = __Vdlyvval__register_rename_tb__DOT__fpg__DOT__free_queue__v128;
    }
    vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr 
        = __Vdly__register_rename_tb__DOT__fpg__DOT__w_ptr;
    vlSelf->register_rename_tb__DOT__new_alias = vlSelf->register_rename_tb__DOT__fpg__DOT__free_queue
        [(0x7fU & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr))];
    vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int 
        = ((1U & ((IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr) 
                  >> 7U)) == (1U & ((IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr) 
                                    >> 7U)));
    vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty 
        = ((0x7fU & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr)) 
           == (0x7fU & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr)));
    vlSelf->register_rename_tb__DOT__empty = ((IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty) 
                                              & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int));
}

void Vregister_rename_tb___024root___eval_nba(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vregister_rename_tb___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
}

void Vregister_rename_tb___024root___timing_resume(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___timing_resume\n"); );
    // Body
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_hcc76c486__0.resume("@(posedge register_rename_tb.clk)");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vregister_rename_tb___024root___timing_commit(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___timing_commit\n"); );
    // Body
    if ((! (1ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_hcc76c486__0.commit("@(posedge register_rename_tb.clk)");
    }
}

void Vregister_rename_tb___024root___eval_triggers__act(Vregister_rename_tb___024root* vlSelf);

bool Vregister_rename_tb___024root___eval_phase__act(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vregister_rename_tb___024root___eval_triggers__act(vlSelf);
    Vregister_rename_tb___024root___timing_commit(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vregister_rename_tb___024root___timing_resume(vlSelf);
        Vregister_rename_tb___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vregister_rename_tb___024root___eval_phase__nba(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vregister_rename_tb___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vregister_rename_tb___024root___dump_triggers__nba(Vregister_rename_tb___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vregister_rename_tb___024root___dump_triggers__act(Vregister_rename_tb___024root* vlSelf);
#endif  // VL_DEBUG

void Vregister_rename_tb___024root___eval(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vregister_rename_tb___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("sim/register_rename_tb.sv", 4, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vregister_rename_tb___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("sim/register_rename_tb.sv", 4, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vregister_rename_tb___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vregister_rename_tb___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vregister_rename_tb___024root___eval_debug_assertions(Vregister_rename_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG

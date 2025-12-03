// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_wakeup__Syms.h"


void Vtb_wakeup___024root__trace_chg_0_sub_0(Vtb_wakeup___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtb_wakeup___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_chg_0\n"); );
    // Init
    Vtb_wakeup___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_wakeup___024root*>(voidSelf);
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtb_wakeup___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtb_wakeup___024root__trace_chg_0_sub_0(Vtb_wakeup___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgBit(oldp+0,(vlSelf->tb_wakeup__DOT__rst));
        bufp->chgBit(oldp+1,(vlSelf->tb_wakeup__DOT__disp_valid));
        bufp->chgCData(oldp+2,(vlSelf->tb_wakeup__DOT__dependency_mask),4);
        bufp->chgBit(oldp+3,(vlSelf->tb_wakeup__DOT__grant));
        bufp->chgBit(oldp+4,(vlSelf->tb_wakeup__DOT__grant_valid));
        bufp->chgCData(oldp+5,(vlSelf->tb_wakeup__DOT__ready_mask),4);
        bufp->chgBit(oldp+6,(vlSelf->tb_wakeup__DOT__retire_entry));
        bufp->chgBit(oldp+7,(vlSelf->tb_wakeup__DOT__retire_valid));
        bufp->chgIData(oldp+8,(vlSelf->tb_wakeup__DOT__pass_count),32);
        bufp->chgIData(oldp+9,(vlSelf->tb_wakeup__DOT__fail_count),32);
        bufp->chgBit(oldp+10,(vlSelf->tb_wakeup__DOT__test_grant_ready__Vstatic__granted_entry));
        bufp->chgBit(oldp+11,(vlSelf->tb_wakeup__DOT__test_retire__Vstatic__retired_entry));
        bufp->chgBit(oldp+12,(vlSelf->tb_wakeup__DOT__test_dispatch_with_deps__Vstatic__dispatched_entry));
        bufp->chgBit(oldp+13,(vlSelf->tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry));
        bufp->chgIData(oldp+14,(vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count),32);
        bufp->chgIData(oldp+15,(vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before),32);
        bufp->chgIData(oldp+16,(vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after),32);
        bufp->chgBit(oldp+17,(vlSelf->tb_wakeup__DOT__test_dispatch_after_free__Vstatic__new_entry));
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[3U])) {
        bufp->chgBit(oldp+18,(vlSelf->tb_wakeup__DOT__free_entry_out));
        bufp->chgBit(oldp+19,(vlSelf->tb_wakeup__DOT__full_out));
        bufp->chgCData(oldp+20,(vlSelf->tb_wakeup__DOT__reqs),2);
        bufp->chgCData(oldp+21,(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid),2);
        bufp->chgCData(oldp+22,(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted),2);
        bufp->chgBit(oldp+23,(vlSelf->tb_wakeup__DOT__dut__DOT__free_entry));
        bufp->chgBit(oldp+24,(vlSelf->tb_wakeup__DOT__dut__DOT__full));
        bufp->chgCData(oldp+25,(vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[0]),4);
        bufp->chgCData(oldp+26,(vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[1]),4);
        bufp->chgBit(oldp+27,(vlSelf->tb_wakeup__DOT__dut__DOT__flag));
        bufp->chgIData(oldp+28,(vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__i),32);
        bufp->chgIData(oldp+29,(vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__unnamedblk2__DOT__j),32);
        bufp->chgIData(oldp+30,(vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk3__DOT__i),32);
    }
    bufp->chgBit(oldp+31,(vlSelf->tb_wakeup__DOT__clk));
    bufp->chgIData(oldp+32,(vlSelf->tb_wakeup__DOT__cycle_count),32);
}

void Vtb_wakeup___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_cleanup\n"); );
    // Init
    Vtb_wakeup___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_wakeup___024root*>(voidSelf);
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
}

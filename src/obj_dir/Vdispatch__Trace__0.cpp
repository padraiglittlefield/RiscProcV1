// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vdispatch__Syms.h"


void Vdispatch___024root__trace_chg_0_sub_0(Vdispatch___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vdispatch___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root__trace_chg_0\n"); );
    // Init
    Vdispatch___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdispatch___024root*>(voidSelf);
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vdispatch___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vdispatch___024root__trace_chg_0_sub_0(Vdispatch___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[0U])) {
        bufp->chgBit(oldp+0,(vlSelf->dispatch__DOT__empty_int));
        bufp->chgBit(oldp+1,(vlSelf->dispatch__DOT__full_or_empty));
    }
    bufp->chgBit(oldp+2,(vlSelf->clk));
    bufp->chgBit(oldp+3,(vlSelf->rst_n));
    bufp->chgBit(oldp+4,(vlSelf->w_en));
    bufp->chgBit(oldp+5,(vlSelf->r_en));
    bufp->chgSData(oldp+6,(vlSelf->instr_in),10);
    bufp->chgSData(oldp+7,(vlSelf->instr_out),10);
    bufp->chgBit(oldp+8,(vlSelf->full));
    bufp->chgBit(oldp+9,(vlSelf->empty));
    bufp->chgCData(oldp+10,(vlSelf->dispatch__DOT__w_ptr),8);
    bufp->chgCData(oldp+11,(vlSelf->dispatch__DOT__r_ptr),8);
}

void Vdispatch___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdispatch___024root__trace_cleanup\n"); );
    // Init
    Vdispatch___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdispatch___024root*>(voidSelf);
    Vdispatch__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
}

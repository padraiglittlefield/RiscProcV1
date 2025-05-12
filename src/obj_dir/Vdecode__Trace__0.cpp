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
    bufp->chgBit(oldp+0,(vlSelf->clk));
    bufp->chgBit(oldp+1,(vlSelf->rst));
    bufp->chgIData(oldp+2,(vlSelf->instr),32);
    bufp->chgCData(oldp+3,(vlSelf->decoded_op),6);
    bufp->chgCData(oldp+4,(vlSelf->instr_type),4);
    bufp->chgCData(oldp+5,(vlSelf->instr_type_immediate),3);
    bufp->chgIData(oldp+6,(vlSelf->imm_val),32);
    bufp->chgCData(oldp+7,(vlSelf->rs1),5);
    bufp->chgCData(oldp+8,(vlSelf->rs2),5);
    bufp->chgCData(oldp+9,(vlSelf->rd),5);
    bufp->chgBit(oldp+10,(vlSelf->is_br));
    bufp->chgBit(oldp+11,(vlSelf->is_jmp));
    bufp->chgBit(oldp+12,(vlSelf->rd_mem));
    bufp->chgBit(oldp+13,(vlSelf->wr_mem));
    bufp->chgBit(oldp+14,(vlSelf->wr_reg));
    bufp->chgCData(oldp+15,((7U & (vlSelf->instr >> 0xcU))),3);
    bufp->chgCData(oldp+16,((vlSelf->instr >> 0x19U)),7);
    bufp->chgCData(oldp+17,((0x7fU & vlSelf->instr)),7);
}

void Vdecode___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_cleanup\n"); );
    // Init
    Vdecode___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdecode___024root*>(voidSelf);
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VlUnpacked<CData/*0:0*/, 1> __Vm_traceActivity;
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = 0;
    }
    // Body
    vlSymsp->__Vm_activity = false;
    __Vm_traceActivity[0U] = 0U;
}

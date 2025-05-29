// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VDependencyMatrixTB__Syms.h"


void VDependencyMatrixTB___024root__trace_chg_0_sub_0(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void VDependencyMatrixTB___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_chg_0\n"); );
    // Init
    VDependencyMatrixTB___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VDependencyMatrixTB___024root*>(voidSelf);
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    VDependencyMatrixTB___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void VDependencyMatrixTB___024root__trace_chg_0_sub_0(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgBit(oldp+0,(vlSelf->DependencyMatrixTB__DOT__rst));
        bufp->chgBit(oldp+1,(vlSelf->DependencyMatrixTB__DOT__w_en));
        bufp->chgCData(oldp+2,(vlSelf->DependencyMatrixTB__DOT__w_row_index),3);
        bufp->chgCData(oldp+3,(vlSelf->DependencyMatrixTB__DOT__set_lines),8);
        bufp->chgCData(oldp+4,(vlSelf->DependencyMatrixTB__DOT__clear_lines),8);
        bufp->chgBit(oldp+5,(vlSelf->DependencyMatrixTB__DOT__free_en));
        bufp->chgCData(oldp+6,(vlSelf->DependencyMatrixTB__DOT__free_row_index),3);
        bufp->chgBit(oldp+7,(vlSelf->DependencyMatrixTB__DOT__clear_en));
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[3U])) {
        bufp->chgCData(oldp+8,(((0xffffff80U & (((0U 
                                                  == 
                                                  vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                  [7U]) 
                                                 << 7U) 
                                                & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                | ((0xffffffc0U & (
                                                   ((0U 
                                                     == 
                                                     vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                     [6U]) 
                                                    << 6U) 
                                                   & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                   | ((0xffffffe0U 
                                       & (((0U == vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                            [5U]) << 5U) 
                                          & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                      | ((0xfffffff0U 
                                          & (((0U == 
                                               vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                               [4U]) 
                                              << 4U) 
                                             & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                         | ((0xfffffff8U 
                                             & (((0U 
                                                  == 
                                                  vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                  [3U]) 
                                                 << 3U) 
                                                & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                            | ((0xfffffffcU 
                                                & (((0U 
                                                     == 
                                                     vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                     [2U]) 
                                                    << 2U) 
                                                   & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                               | ((0xfffffffeU 
                                                   & (((0U 
                                                        == 
                                                        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                        [1U]) 
                                                       << 1U) 
                                                      & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                                  | ((0U 
                                                      == 
                                                      vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                      [0U]) 
                                                     & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid)))))))))),8);
        bufp->chgCData(oldp+9,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0]),8);
        bufp->chgCData(oldp+10,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1]),8);
        bufp->chgCData(oldp+11,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2]),8);
        bufp->chgCData(oldp+12,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3]),8);
        bufp->chgCData(oldp+13,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4]),8);
        bufp->chgCData(oldp+14,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5]),8);
        bufp->chgCData(oldp+15,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6]),8);
        bufp->chgCData(oldp+16,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7]),8);
        bufp->chgCData(oldp+17,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid),8);
        bufp->chgIData(oldp+18,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk1__DOT__i),32);
        bufp->chgIData(oldp+19,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__i),32);
        bufp->chgIData(oldp+20,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__unnamedblk3__DOT__j),32);
    }
    bufp->chgBit(oldp+21,(vlSelf->DependencyMatrixTB__DOT__clk));
    bufp->chgIData(oldp+22,(vlSelf->DependencyMatrixTB__DOT__cycle_count),32);
}

void VDependencyMatrixTB___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_cleanup\n"); );
    // Init
    VDependencyMatrixTB___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VDependencyMatrixTB___024root*>(voidSelf);
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
}

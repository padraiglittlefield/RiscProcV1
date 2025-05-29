// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VDependencyMatrixTB__Syms.h"


VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_init_sub__TOP__0(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("DependencyMatrixTB", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+24,0,"CLK_PERIOD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declDouble(c+25,0,"DUTY_CYCLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declBus(c+27,0,"NUM_ROWS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBus(c+27,0,"NUM_COLS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBit(c+22,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"w_en",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"w_row_index",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+4,0,"set_lines",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+5,0,"clear_lines",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+6,0,"free_en",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"free_row_index",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+9,0,"ready_vector",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+8,0,"clear_en",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+23,0,"cycle_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->pushPrefix("DUT", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+28,0,"NUM_ROWS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+28,0,"NUM_COLS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+22,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"w_en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"w_row_index",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+4,0,"set_lines",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+8,0,"clear_en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+5,0,"clear_lines",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+6,0,"free_en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"free_row_index",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+9,0,"ready_vector",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->pushPrefix("bit_matrix", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 8; ++i) {
        tracep->declBus(c+10+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 7,0);
    }
    tracep->popPrefix();
    tracep->declBus(c+18,0,"row_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->pushPrefix("unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+19,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("unnamedblk2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+20,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->pushPrefix("unnamedblk3", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+21,0,"j",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_init_top(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_init_top\n"); );
    // Body
    VDependencyMatrixTB___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void VDependencyMatrixTB___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void VDependencyMatrixTB___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_register(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&VDependencyMatrixTB___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&VDependencyMatrixTB___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&VDependencyMatrixTB___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&VDependencyMatrixTB___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_const_0_sub_0(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_const_0\n"); );
    // Init
    VDependencyMatrixTB___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VDependencyMatrixTB___024root*>(voidSelf);
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    VDependencyMatrixTB___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_const_0_sub_0(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_const_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+24,(0x14U),32);
    bufp->fullDouble(oldp+25,(5.00000000000000000e-01));
    bufp->fullIData(oldp+27,(8U),32);
    bufp->fullIData(oldp+28,(8U),32);
}

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_full_0_sub_0(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_full_0\n"); );
    // Init
    VDependencyMatrixTB___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VDependencyMatrixTB___024root*>(voidSelf);
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    VDependencyMatrixTB___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void VDependencyMatrixTB___024root__trace_full_0_sub_0(VDependencyMatrixTB___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelf->DependencyMatrixTB__DOT__rst));
    bufp->fullBit(oldp+2,(vlSelf->DependencyMatrixTB__DOT__w_en));
    bufp->fullCData(oldp+3,(vlSelf->DependencyMatrixTB__DOT__w_row_index),3);
    bufp->fullCData(oldp+4,(vlSelf->DependencyMatrixTB__DOT__set_lines),8);
    bufp->fullCData(oldp+5,(vlSelf->DependencyMatrixTB__DOT__clear_lines),8);
    bufp->fullBit(oldp+6,(vlSelf->DependencyMatrixTB__DOT__free_en));
    bufp->fullCData(oldp+7,(vlSelf->DependencyMatrixTB__DOT__free_row_index),3);
    bufp->fullBit(oldp+8,(vlSelf->DependencyMatrixTB__DOT__clear_en));
    bufp->fullCData(oldp+9,(((0xffffff80U & (((0U == 
                                               vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                               [7U]) 
                                              << 7U) 
                                             & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                             | ((0xffffffc0U & (((0U 
                                                  == 
                                                  vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                  [6U]) 
                                                 << 6U) 
                                                & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                | ((0xffffffe0U & (
                                                   ((0U 
                                                     == 
                                                     vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                                     [5U]) 
                                                    << 5U) 
                                                   & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                   | ((0xfffffff0U 
                                       & (((0U == vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
                                            [4U]) << 4U) 
                                          & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid))) 
                                      | ((0xfffffff8U 
                                          & (((0U == 
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
    bufp->fullCData(oldp+10,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0]),8);
    bufp->fullCData(oldp+11,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1]),8);
    bufp->fullCData(oldp+12,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2]),8);
    bufp->fullCData(oldp+13,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3]),8);
    bufp->fullCData(oldp+14,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4]),8);
    bufp->fullCData(oldp+15,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5]),8);
    bufp->fullCData(oldp+16,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6]),8);
    bufp->fullCData(oldp+17,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7]),8);
    bufp->fullCData(oldp+18,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid),8);
    bufp->fullIData(oldp+19,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk1__DOT__i),32);
    bufp->fullIData(oldp+20,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__i),32);
    bufp->fullIData(oldp+21,(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__unnamedblk3__DOT__j),32);
    bufp->fullBit(oldp+22,(vlSelf->DependencyMatrixTB__DOT__clk));
    bufp->fullIData(oldp+23,(vlSelf->DependencyMatrixTB__DOT__cycle_count),32);
}

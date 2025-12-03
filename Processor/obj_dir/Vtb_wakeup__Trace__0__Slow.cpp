// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_wakeup__Syms.h"


VL_ATTR_COLD void Vtb_wakeup___024root__trace_init_sub__TOP__CORE_PKG__0(Vtb_wakeup___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vtb_wakeup___024root__trace_init_sub__TOP__0(Vtb_wakeup___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("CORE_PKG", VerilatedTracePrefixType::SCOPE_MODULE);
    Vtb_wakeup___024root__trace_init_sub__TOP__CORE_PKG__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->pushPrefix("tb_wakeup", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+34,0,"CLK_PERIOD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declDouble(c+35,0,"DUTY_CYCLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declBit(c+32,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+33,0,"cycle_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBit(c+2,0,"disp_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"dependency_mask",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+19,0,"free_entry_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+20,0,"full_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+21,0,"reqs",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+4,0,"grant",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+5,0,"grant_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+6,0,"ready_mask",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+7,0,"retire_entry",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+8,0,"retire_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+9,0,"pass_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+10,0,"fail_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+11,0,"test_grant_ready__Vstatic__granted_entry",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBus(c+12,0,"test_retire__Vstatic__retired_entry",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBus(c+13,0,"test_dispatch_with_deps__Vstatic__dispatched_entry",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBus(c+14,0,"test_clear_dependencies__Vstatic__dep_entry",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBus(c+15,0,"test_fill_rs__Vstatic__valid_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+16,0,"test_dispatch_when_full__Vstatic__valid_count_before",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+17,0,"test_dispatch_when_full__Vstatic__valid_count_after",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+18,0,"test_dispatch_after_free__Vstatic__new_entry",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->pushPrefix("dut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+32,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"disp_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"dependency_mask",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+19,0,"free_entry_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+20,0,"full_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+21,0,"reqs",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+4,0,"grant",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+5,0,"grant_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+6,0,"ready_mask",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+7,0,"retire_entry",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+8,0,"retire_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+22,0,"entry_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+23,0,"entry_granted",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+24,0,"free_entry",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+25,0,"full",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("dependency_matrix_row", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 2; ++i) {
        tracep->declBus(c+26+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 3,0);
    }
    tracep->popPrefix();
    tracep->declBit(c+28,0,"flag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+29,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->pushPrefix("unnamedblk2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+30,0,"j",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("unnamedblk3", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+31,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("unnamedblk4", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+37,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("unnamedblk5", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+37,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vtb_wakeup___024root__trace_init_sub__TOP__CORE_PKG__0(Vtb_wakeup___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_init_sub__TOP__CORE_PKG__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBus(c+38,0,"RS_ENTRIES",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+38,0,"NUM_FUS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
}

VL_ATTR_COLD void Vtb_wakeup___024root__trace_init_top(Vtb_wakeup___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_init_top\n"); );
    // Body
    Vtb_wakeup___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtb_wakeup___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vtb_wakeup___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_wakeup___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_wakeup___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vtb_wakeup___024root__trace_register(Vtb_wakeup___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vtb_wakeup___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vtb_wakeup___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vtb_wakeup___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vtb_wakeup___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtb_wakeup___024root__trace_const_0_sub_0(Vtb_wakeup___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtb_wakeup___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_const_0\n"); );
    // Init
    Vtb_wakeup___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_wakeup___024root*>(voidSelf);
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtb_wakeup___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtb_wakeup___024root__trace_const_0_sub_0(Vtb_wakeup___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_const_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+34,(0x14U),32);
    bufp->fullDouble(oldp+35,(5.00000000000000000e-01));
    bufp->fullIData(oldp+37,(2U),32);
    bufp->fullIData(oldp+38,(2U),32);
}

VL_ATTR_COLD void Vtb_wakeup___024root__trace_full_0_sub_0(Vtb_wakeup___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtb_wakeup___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_full_0\n"); );
    // Init
    Vtb_wakeup___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_wakeup___024root*>(voidSelf);
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtb_wakeup___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtb_wakeup___024root__trace_full_0_sub_0(Vtb_wakeup___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelf->tb_wakeup__DOT__rst));
    bufp->fullBit(oldp+2,(vlSelf->tb_wakeup__DOT__disp_valid));
    bufp->fullCData(oldp+3,(vlSelf->tb_wakeup__DOT__dependency_mask),4);
    bufp->fullBit(oldp+4,(vlSelf->tb_wakeup__DOT__grant));
    bufp->fullBit(oldp+5,(vlSelf->tb_wakeup__DOT__grant_valid));
    bufp->fullCData(oldp+6,(vlSelf->tb_wakeup__DOT__ready_mask),4);
    bufp->fullBit(oldp+7,(vlSelf->tb_wakeup__DOT__retire_entry));
    bufp->fullBit(oldp+8,(vlSelf->tb_wakeup__DOT__retire_valid));
    bufp->fullIData(oldp+9,(vlSelf->tb_wakeup__DOT__pass_count),32);
    bufp->fullIData(oldp+10,(vlSelf->tb_wakeup__DOT__fail_count),32);
    bufp->fullBit(oldp+11,(vlSelf->tb_wakeup__DOT__test_grant_ready__Vstatic__granted_entry));
    bufp->fullBit(oldp+12,(vlSelf->tb_wakeup__DOT__test_retire__Vstatic__retired_entry));
    bufp->fullBit(oldp+13,(vlSelf->tb_wakeup__DOT__test_dispatch_with_deps__Vstatic__dispatched_entry));
    bufp->fullBit(oldp+14,(vlSelf->tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry));
    bufp->fullIData(oldp+15,(vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count),32);
    bufp->fullIData(oldp+16,(vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before),32);
    bufp->fullIData(oldp+17,(vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after),32);
    bufp->fullBit(oldp+18,(vlSelf->tb_wakeup__DOT__test_dispatch_after_free__Vstatic__new_entry));
    bufp->fullBit(oldp+19,(vlSelf->tb_wakeup__DOT__free_entry_out));
    bufp->fullBit(oldp+20,(vlSelf->tb_wakeup__DOT__full_out));
    bufp->fullCData(oldp+21,(vlSelf->tb_wakeup__DOT__reqs),2);
    bufp->fullCData(oldp+22,(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid),2);
    bufp->fullCData(oldp+23,(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted),2);
    bufp->fullBit(oldp+24,(vlSelf->tb_wakeup__DOT__dut__DOT__free_entry));
    bufp->fullBit(oldp+25,(vlSelf->tb_wakeup__DOT__dut__DOT__full));
    bufp->fullCData(oldp+26,(vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[0]),4);
    bufp->fullCData(oldp+27,(vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[1]),4);
    bufp->fullBit(oldp+28,(vlSelf->tb_wakeup__DOT__dut__DOT__flag));
    bufp->fullIData(oldp+29,(vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__i),32);
    bufp->fullIData(oldp+30,(vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__unnamedblk2__DOT__j),32);
    bufp->fullIData(oldp+31,(vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk3__DOT__i),32);
    bufp->fullBit(oldp+32,(vlSelf->tb_wakeup__DOT__clk));
    bufp->fullIData(oldp+33,(vlSelf->tb_wakeup__DOT__cycle_count),32);
}

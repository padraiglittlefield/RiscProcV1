// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vregister_rename_tb__Syms.h"


VL_ATTR_COLD void Vregister_rename_tb___024root__trace_init_sub__TOP__0(Vregister_rename_tb___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("register_rename_tb", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+64,0,"CLK_PERIOD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declDouble(c+65,0,"DUTY_CYCLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declBit(c+62,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"stall",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+3,0,"decoded_dd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 64,0);
    tracep->declBus(c+6,0,"areg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 14,0);
    tracep->declBus(c+11,0,"preg_alias",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 20,0);
    tracep->declBit(c+12,0,"rat_w_en",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"dst_areg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+21,0,"new_alias",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+21,0,"free_preg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBit(c+22,0,"empty",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"r_en",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+9,0,"bypassed_dst_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+10,0,"bypassed_alias_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+7,0,"bypassed_dst_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+21,0,"bypassed_alias_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declArray(c+13,0,"decoded_rr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 77,0);
    tracep->declBit(c+67,0,"fpq_w_en",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+68,0,"preg_in",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBit(c+23,0,"full",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+63,0,"cycle_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->pushPrefix("fpg", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+69,0,"DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+62,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+67,0,"w_en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"r_en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+68,0,"preg_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+21,0,"preg_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBit(c+23,0,"full",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"empty",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+24,0,"w_ptr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+25,0,"r_ptr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+26,0,"empty_int",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+27,0,"full_or_empty",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+28,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("rat", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+62,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+6,0,"areg",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 14,0);
    tracep->declBus(c+11,0,"preg_alias",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 20,0);
    tracep->declBus(c+12,0,"w_en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBus(c+7,0,"dst_areg",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+21,0,"new_alias",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->pushPrefix("register_alias_table", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 32; ++i) {
        tracep->declBus(c+29+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 6,0);
    }
    tracep->popPrefix();
    tracep->declBus(c+61,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("renamer", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+62,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"stall",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+3,0,"decoded_dd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 64,0);
    tracep->declBus(c+6,0,"areg",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 14,0);
    tracep->declBus(c+11,0,"preg_alias",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 20,0);
    tracep->declBit(c+12,0,"w_en",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"dst_areg",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+21,0,"new_alias",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+21,0,"free_preg",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBit(c+22,0,"empty",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"r_en",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+9,0,"bypassed_dst_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+10,0,"bypassed_alias_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+7,0,"bypassed_dst_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+21,0,"bypassed_alias_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declArray(c+13,0,"decoded_rr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 77,0);
    tracep->declBus(c+16,0,"rr_rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+17,0,"rr_rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+18,0,"rr_rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+19,0,"renamed_src1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+20,0,"renamed_src2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_init_top(Vregister_rename_tb___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_init_top\n"); );
    // Body
    Vregister_rename_tb___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vregister_rename_tb___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vregister_rename_tb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vregister_rename_tb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_register(Vregister_rename_tb___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vregister_rename_tb___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vregister_rename_tb___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vregister_rename_tb___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vregister_rename_tb___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_const_0_sub_0(Vregister_rename_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_const_0\n"); );
    // Init
    Vregister_rename_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vregister_rename_tb___024root*>(voidSelf);
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vregister_rename_tb___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_const_0_sub_0(Vregister_rename_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_const_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+64,(0x14U),32);
    bufp->fullDouble(oldp+65,(5.00000000000000000e-01));
    bufp->fullBit(oldp+67,(vlSelf->register_rename_tb__DOT__fpq_w_en));
    bufp->fullCData(oldp+68,(vlSelf->register_rename_tb__DOT__preg_in),7);
    bufp->fullIData(oldp+69,(0x80U),32);
}

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_full_0_sub_0(Vregister_rename_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_full_0\n"); );
    // Init
    Vregister_rename_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vregister_rename_tb___024root*>(voidSelf);
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vregister_rename_tb___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vregister_rename_tb___024root__trace_full_0_sub_0(Vregister_rename_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vregister_rename_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vregister_rename_tb___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    VlWide<3>/*95:0*/ __Vtemp_1;
    // Body
    bufp->fullBit(oldp+1,(vlSelf->register_rename_tb__DOT__rst));
    bufp->fullBit(oldp+2,(vlSelf->register_rename_tb__DOT__stall));
    bufp->fullWData(oldp+3,(vlSelf->register_rename_tb__DOT__decoded_dd),65);
    bufp->fullSData(oldp+6,((0x7fffU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                        >> 5U))),15);
    bufp->fullCData(oldp+7,((0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                      >> 0xfU))),5);
    bufp->fullBit(oldp+8,((1U & (~ (IData)(vlSelf->register_rename_tb__DOT__stall)))));
    bufp->fullCData(oldp+9,(vlSelf->register_rename_tb__DOT__bypassed_dst_i),5);
    bufp->fullCData(oldp+10,(vlSelf->register_rename_tb__DOT__bypassed_alias_i),7);
    bufp->fullIData(oldp+11,(((vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                               [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                          >> 0xfU))] 
                               << 0xeU) | ((vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                            [(0x1fU 
                                              & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                 >> 0xaU))] 
                                            << 7U) 
                                           | vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                           [(0x1fU 
                                             & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                >> 5U))]))),21);
    bufp->fullBit(oldp+12,((1U & ((~ (IData)(vlSelf->register_rename_tb__DOT__empty)) 
                                  & (~ (IData)(vlSelf->register_rename_tb__DOT__stall))))));
    __Vtemp_1[0U] = (IData)((((QData)((IData)(vlSelf->register_rename_tb__DOT__new_alias)) 
                              << 0x1aU) | (QData)((IData)(
                                                          (((((0x1fU 
                                                               & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                  >> 0xaU)) 
                                                              == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                              ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                              : 
                                                             vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                             [
                                                             (0x1fU 
                                                              & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                 >> 0xaU))]) 
                                                            << 0x13U) 
                                                           | (((((0x1fU 
                                                                  & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                     >> 5U)) 
                                                                 == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                 ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                 : 
                                                                vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                                [
                                                                (0x1fU 
                                                                 & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                    >> 5U))]) 
                                                               << 0xcU) 
                                                              | ((0xf80U 
                                                                  & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                     << 7U)) 
                                                                 | (((0x1fU 
                                                                      & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                         >> 0xfU)) 
                                                                     == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                     ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                     : (IData)(vlSelf->register_rename_tb__DOT__new_alias)))))))));
    __Vtemp_1[1U] = (((IData)((0x1fffffffffffULL & 
                               (((QData)((IData)(vlSelf->register_rename_tb__DOT__decoded_dd[2U])) 
                                 << 0x2cU) | (((QData)((IData)(
                                                               vlSelf->register_rename_tb__DOT__decoded_dd[1U])) 
                                               << 0xcU) 
                                              | ((QData)((IData)(
                                                                 vlSelf->register_rename_tb__DOT__decoded_dd[0U])) 
                                                 >> 0x14U))))) 
                      << 1U) | (IData)(((((QData)((IData)(vlSelf->register_rename_tb__DOT__new_alias)) 
                                          << 0x1aU) 
                                         | (QData)((IData)(
                                                           (((((0x1fU 
                                                                & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                   >> 0xaU)) 
                                                               == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                               ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                               : 
                                                              vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                              [
                                                              (0x1fU 
                                                               & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                  >> 0xaU))]) 
                                                             << 0x13U) 
                                                            | (((((0x1fU 
                                                                   & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                      >> 5U)) 
                                                                  == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                  ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                  : 
                                                                 vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                                                                 [
                                                                 (0x1fU 
                                                                  & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                     >> 5U))]) 
                                                                << 0xcU) 
                                                               | ((0xf80U 
                                                                   & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                      << 7U)) 
                                                                  | (((0x1fU 
                                                                       & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                                                          >> 0xfU)) 
                                                                      == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                                                                      ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                                                                      : (IData)(vlSelf->register_rename_tb__DOT__new_alias)))))))) 
                                        >> 0x20U)));
    __Vtemp_1[2U] = (((IData)((0x1fffffffffffULL & 
                               (((QData)((IData)(vlSelf->register_rename_tb__DOT__decoded_dd[2U])) 
                                 << 0x2cU) | (((QData)((IData)(
                                                               vlSelf->register_rename_tb__DOT__decoded_dd[1U])) 
                                               << 0xcU) 
                                              | ((QData)((IData)(
                                                                 vlSelf->register_rename_tb__DOT__decoded_dd[0U])) 
                                                 >> 0x14U))))) 
                      >> 0x1fU) | ((IData)(((0x1fffffffffffULL 
                                             & (((QData)((IData)(
                                                                 vlSelf->register_rename_tb__DOT__decoded_dd[2U])) 
                                                 << 0x2cU) 
                                                | (((QData)((IData)(
                                                                    vlSelf->register_rename_tb__DOT__decoded_dd[1U])) 
                                                    << 0xcU) 
                                                   | ((QData)((IData)(
                                                                      vlSelf->register_rename_tb__DOT__decoded_dd[0U])) 
                                                      >> 0x14U)))) 
                                            >> 0x20U)) 
                                   << 1U));
    bufp->fullWData(oldp+13,(__Vtemp_1),78);
    bufp->fullCData(oldp+16,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                             [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                        >> 0xfU))]),7);
    bufp->fullCData(oldp+17,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                             [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                        >> 0xaU))]),7);
    bufp->fullCData(oldp+18,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                             [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                        >> 5U))]),7);
    bufp->fullCData(oldp+19,((((0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                         >> 0xaU)) 
                               == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                               ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                               : vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                              [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                         >> 0xaU))])),7);
    bufp->fullCData(oldp+20,((((0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                         >> 5U)) == (IData)(vlSelf->register_rename_tb__DOT__bypassed_dst_i))
                               ? (IData)(vlSelf->register_rename_tb__DOT__bypassed_alias_i)
                               : vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table
                              [(0x1fU & (vlSelf->register_rename_tb__DOT__decoded_dd[0U] 
                                         >> 5U))])),7);
    bufp->fullCData(oldp+21,(vlSelf->register_rename_tb__DOT__new_alias),7);
    bufp->fullBit(oldp+22,(vlSelf->register_rename_tb__DOT__empty));
    bufp->fullBit(oldp+23,(((~ (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int)) 
                            & (IData)(vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty))));
    bufp->fullCData(oldp+24,(vlSelf->register_rename_tb__DOT__fpg__DOT__w_ptr),8);
    bufp->fullCData(oldp+25,(vlSelf->register_rename_tb__DOT__fpg__DOT__r_ptr),8);
    bufp->fullBit(oldp+26,(vlSelf->register_rename_tb__DOT__fpg__DOT__empty_int));
    bufp->fullBit(oldp+27,(vlSelf->register_rename_tb__DOT__fpg__DOT__full_or_empty));
    bufp->fullIData(oldp+28,(vlSelf->register_rename_tb__DOT__fpg__DOT__i),32);
    bufp->fullCData(oldp+29,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[0]),7);
    bufp->fullCData(oldp+30,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[1]),7);
    bufp->fullCData(oldp+31,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[2]),7);
    bufp->fullCData(oldp+32,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[3]),7);
    bufp->fullCData(oldp+33,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[4]),7);
    bufp->fullCData(oldp+34,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[5]),7);
    bufp->fullCData(oldp+35,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[6]),7);
    bufp->fullCData(oldp+36,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[7]),7);
    bufp->fullCData(oldp+37,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[8]),7);
    bufp->fullCData(oldp+38,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[9]),7);
    bufp->fullCData(oldp+39,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[10]),7);
    bufp->fullCData(oldp+40,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[11]),7);
    bufp->fullCData(oldp+41,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[12]),7);
    bufp->fullCData(oldp+42,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[13]),7);
    bufp->fullCData(oldp+43,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[14]),7);
    bufp->fullCData(oldp+44,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[15]),7);
    bufp->fullCData(oldp+45,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[16]),7);
    bufp->fullCData(oldp+46,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[17]),7);
    bufp->fullCData(oldp+47,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[18]),7);
    bufp->fullCData(oldp+48,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[19]),7);
    bufp->fullCData(oldp+49,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[20]),7);
    bufp->fullCData(oldp+50,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[21]),7);
    bufp->fullCData(oldp+51,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[22]),7);
    bufp->fullCData(oldp+52,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[23]),7);
    bufp->fullCData(oldp+53,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[24]),7);
    bufp->fullCData(oldp+54,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[25]),7);
    bufp->fullCData(oldp+55,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[26]),7);
    bufp->fullCData(oldp+56,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[27]),7);
    bufp->fullCData(oldp+57,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[28]),7);
    bufp->fullCData(oldp+58,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[29]),7);
    bufp->fullCData(oldp+59,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[30]),7);
    bufp->fullCData(oldp+60,(vlSelf->register_rename_tb__DOT__rat__DOT__register_alias_table[31]),7);
    bufp->fullIData(oldp+61,(vlSelf->register_rename_tb__DOT__rat__DOT__i),32);
    bufp->fullBit(oldp+62,(vlSelf->register_rename_tb__DOT__clk));
    bufp->fullIData(oldp+63,(vlSelf->register_rename_tb__DOT__cycle_count),32);
}

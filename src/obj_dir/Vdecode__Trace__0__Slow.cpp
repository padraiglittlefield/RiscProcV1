// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vdecode__Syms.h"


VL_ATTR_COLD void Vdecode___024root__trace_init_sub__TOP__0(Vdecode___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+33,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+34,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+35,0,"instrs_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->pushPrefix("decode", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+33,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+34,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+35,0,"instrs_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->pushPrefix("genblk1[1]", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+39,0,"instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"F3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+41,0,"F7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+42,0,"instr_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+1,0,"decoded_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+2,0,"instr_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+3,0,"instr_type_immediate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+43,0,"imm_val",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+44,0,"rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+45,0,"rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+46,0,"rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+4,0,"is_br",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"is_jmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"rd_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"wr_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"wr_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("genblk1[2]", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+47,0,"instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+48,0,"F3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+49,0,"F7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+50,0,"instr_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+9,0,"decoded_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+10,0,"instr_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+11,0,"instr_type_immediate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+51,0,"imm_val",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+52,0,"rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+53,0,"rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+54,0,"rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+12,0,"is_br",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+13,0,"is_jmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"rd_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+15,0,"wr_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+16,0,"wr_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("genblk1[3]", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+55,0,"instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+56,0,"F3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+57,0,"F7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+58,0,"instr_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+17,0,"decoded_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+18,0,"instr_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+19,0,"instr_type_immediate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+59,0,"imm_val",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+60,0,"rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+61,0,"rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+62,0,"rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+20,0,"is_br",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+21,0,"is_jmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"rd_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"wr_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+24,0,"wr_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("genblk1[4]", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+63,0,"instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+64,0,"F3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+65,0,"F7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+66,0,"instr_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+25,0,"decoded_op",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+26,0,"instr_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+27,0,"instr_type_immediate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+67,0,"imm_val",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+68,0,"rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+69,0,"rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+70,0,"rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+28,0,"is_br",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+29,0,"is_jmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+30,0,"rd_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+31,0,"wr_mem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+32,0,"wr_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vdecode___024root__trace_init_top(Vdecode___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_init_top\n"); );
    // Body
    Vdecode___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vdecode___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vdecode___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vdecode___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vdecode___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vdecode___024root__trace_register(Vdecode___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vdecode___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vdecode___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vdecode___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vdecode___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vdecode___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_const_0\n"); );
    // Init
    Vdecode___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdecode___024root*>(voidSelf);
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
}

VL_ATTR_COLD void Vdecode___024root__trace_full_0_sub_0(Vdecode___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vdecode___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_full_0\n"); );
    // Init
    Vdecode___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdecode___024root*>(voidSelf);
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vdecode___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vdecode___024root__trace_full_0_sub_0(Vdecode___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullCData(oldp+1,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op),6);
    bufp->fullCData(oldp+2,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type),4);
    bufp->fullCData(oldp+3,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate),3);
    bufp->fullBit(oldp+4,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                           | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                              | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                 | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                    | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                                       | (0x21U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)))))))));
    bufp->fullBit(oldp+5,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                           | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op)) 
                              | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op))))));
    bufp->fullBit(oldp+6,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+7,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+8,(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__wr_reg));
    bufp->fullCData(oldp+9,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op),6);
    bufp->fullCData(oldp+10,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type),4);
    bufp->fullCData(oldp+11,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate),3);
    bufp->fullBit(oldp+12,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                            | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                               | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                  | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                     | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                                        | (0x21U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)))))))));
    bufp->fullBit(oldp+13,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                            | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op)) 
                               | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op))))));
    bufp->fullBit(oldp+14,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+15,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+16,(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__wr_reg));
    bufp->fullCData(oldp+17,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op),6);
    bufp->fullCData(oldp+18,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type),4);
    bufp->fullCData(oldp+19,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate),3);
    bufp->fullBit(oldp+20,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                            | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                               | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                  | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                     | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                                        | (0x21U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)))))))));
    bufp->fullBit(oldp+21,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                            | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op)) 
                               | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op))))));
    bufp->fullBit(oldp+22,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+23,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+24,(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__wr_reg));
    bufp->fullCData(oldp+25,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op),6);
    bufp->fullCData(oldp+26,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type),4);
    bufp->fullCData(oldp+27,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate),3);
    bufp->fullBit(oldp+28,(((0x1cU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                            | ((0x1dU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                               | ((0x1eU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                  | ((0x1fU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                     | ((0x20U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                                        | (0x21U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)))))))));
    bufp->fullBit(oldp+29,(((0x19U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                            | ((0x1aU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op)) 
                               | (0x1bU == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op))))));
    bufp->fullBit(oldp+30,((0x17U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+31,((0x18U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__decoded_op))));
    bufp->fullBit(oldp+32,(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__wr_reg));
    bufp->fullBit(oldp+33,(vlSelf->clk));
    bufp->fullBit(oldp+34,(vlSelf->rst));
    bufp->fullWData(oldp+35,(vlSelf->instrs_in),128);
    bufp->fullIData(oldp+39,(vlSelf->instrs_in[0U]),32);
    bufp->fullCData(oldp+40,((7U & (vlSelf->instrs_in[0U] 
                                    >> 0xcU))),3);
    bufp->fullCData(oldp+41,((vlSelf->instrs_in[0U] 
                              >> 0x19U)),7);
    bufp->fullCData(oldp+42,((0x7fU & vlSelf->instrs_in[0U])),7);
    bufp->fullIData(oldp+43,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                               ? vlSelf->decode__DOT____VdfgExtracted_h5d8d65ee__0
                               : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                   ? vlSelf->decode__DOT____VdfgExtracted_h5d8d65ee__0
                                   : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                       ? (((- (IData)(
                                                      (vlSelf->instrs_in[0U] 
                                                       >> 0x1fU))) 
                                           << 0xbU) 
                                          | ((0x7e0U 
                                              & (vlSelf->instrs_in[0U] 
                                                 >> 0x14U)) 
                                             | (0x1fU 
                                                & (vlSelf->instrs_in[0U] 
                                                   >> 7U))))
                                       : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                           ? (((- (IData)(
                                                          (vlSelf->instrs_in[0U] 
                                                           >> 0x1fU))) 
                                               << 0xcU) 
                                              | ((0x800U 
                                                  & (vlSelf->instrs_in[0U] 
                                                     << 4U)) 
                                                 | ((0x7e0U 
                                                     & (vlSelf->instrs_in[0U] 
                                                        >> 0x14U)) 
                                                    | (0x1eU 
                                                       & (vlSelf->instrs_in[0U] 
                                                          >> 7U)))))
                                           : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                               ? (0xfffff000U 
                                                  & vlSelf->instrs_in[0U])
                                               : ((2U 
                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__1__KET____DOT__instr_type_immediate))
                                                   ? 
                                                  (((- (IData)(
                                                               (vlSelf->instrs_in[0U] 
                                                                >> 0x1fU))) 
                                                    << 0x14U) 
                                                   | ((0xff000U 
                                                       & vlSelf->instrs_in[0U]) 
                                                      | ((0x800U 
                                                          & (vlSelf->instrs_in[0U] 
                                                             >> 9U)) 
                                                         | (0x7feU 
                                                            & (vlSelf->instrs_in[0U] 
                                                               >> 0x14U)))))
                                                   : 0U))))))),32);
    bufp->fullCData(oldp+44,((0x1fU & (vlSelf->instrs_in[0U] 
                                       >> 0xfU))),5);
    bufp->fullCData(oldp+45,((0x1fU & (vlSelf->instrs_in[0U] 
                                       >> 0x14U))),5);
    bufp->fullCData(oldp+46,((0x1fU & (vlSelf->instrs_in[0U] 
                                       >> 7U))),5);
    bufp->fullIData(oldp+47,(vlSelf->instrs_in[1U]),32);
    bufp->fullCData(oldp+48,((7U & (vlSelf->instrs_in[1U] 
                                    >> 0xcU))),3);
    bufp->fullCData(oldp+49,((vlSelf->instrs_in[1U] 
                              >> 0x19U)),7);
    bufp->fullCData(oldp+50,((0x7fU & vlSelf->instrs_in[1U])),7);
    bufp->fullIData(oldp+51,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                               ? vlSelf->decode__DOT____VdfgExtracted_h471e2ee8__0
                               : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                   ? vlSelf->decode__DOT____VdfgExtracted_h471e2ee8__0
                                   : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                       ? (((- (IData)(
                                                      (vlSelf->instrs_in[1U] 
                                                       >> 0x1fU))) 
                                           << 0xbU) 
                                          | ((0x7e0U 
                                              & (vlSelf->instrs_in[1U] 
                                                 >> 0x14U)) 
                                             | (0x1fU 
                                                & (vlSelf->instrs_in[1U] 
                                                   >> 7U))))
                                       : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                           ? (((- (IData)(
                                                          (vlSelf->instrs_in[1U] 
                                                           >> 0x1fU))) 
                                               << 0xcU) 
                                              | ((0x800U 
                                                  & (vlSelf->instrs_in[1U] 
                                                     << 4U)) 
                                                 | ((0x7e0U 
                                                     & (vlSelf->instrs_in[1U] 
                                                        >> 0x14U)) 
                                                    | (0x1eU 
                                                       & (vlSelf->instrs_in[1U] 
                                                          >> 7U)))))
                                           : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                               ? (0xfffff000U 
                                                  & vlSelf->instrs_in[1U])
                                               : ((2U 
                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__2__KET____DOT__instr_type_immediate))
                                                   ? 
                                                  (((- (IData)(
                                                               (vlSelf->instrs_in[1U] 
                                                                >> 0x1fU))) 
                                                    << 0x14U) 
                                                   | ((0xff000U 
                                                       & vlSelf->instrs_in[1U]) 
                                                      | ((0x800U 
                                                          & (vlSelf->instrs_in[1U] 
                                                             >> 9U)) 
                                                         | (0x7feU 
                                                            & (vlSelf->instrs_in[1U] 
                                                               >> 0x14U)))))
                                                   : 0U))))))),32);
    bufp->fullCData(oldp+52,((0x1fU & (vlSelf->instrs_in[1U] 
                                       >> 0xfU))),5);
    bufp->fullCData(oldp+53,((0x1fU & (vlSelf->instrs_in[1U] 
                                       >> 0x14U))),5);
    bufp->fullCData(oldp+54,((0x1fU & (vlSelf->instrs_in[1U] 
                                       >> 7U))),5);
    bufp->fullIData(oldp+55,(vlSelf->instrs_in[2U]),32);
    bufp->fullCData(oldp+56,((7U & (vlSelf->instrs_in[2U] 
                                    >> 0xcU))),3);
    bufp->fullCData(oldp+57,((vlSelf->instrs_in[2U] 
                              >> 0x19U)),7);
    bufp->fullCData(oldp+58,((0x7fU & vlSelf->instrs_in[2U])),7);
    bufp->fullIData(oldp+59,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                               ? vlSelf->decode__DOT____VdfgExtracted_h7de9e626__0
                               : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                   ? vlSelf->decode__DOT____VdfgExtracted_h7de9e626__0
                                   : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                       ? (((- (IData)(
                                                      (vlSelf->instrs_in[2U] 
                                                       >> 0x1fU))) 
                                           << 0xbU) 
                                          | ((0x7e0U 
                                              & (vlSelf->instrs_in[2U] 
                                                 >> 0x14U)) 
                                             | (0x1fU 
                                                & (vlSelf->instrs_in[2U] 
                                                   >> 7U))))
                                       : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                           ? (((- (IData)(
                                                          (vlSelf->instrs_in[2U] 
                                                           >> 0x1fU))) 
                                               << 0xcU) 
                                              | ((0x800U 
                                                  & (vlSelf->instrs_in[2U] 
                                                     << 4U)) 
                                                 | ((0x7e0U 
                                                     & (vlSelf->instrs_in[2U] 
                                                        >> 0x14U)) 
                                                    | (0x1eU 
                                                       & (vlSelf->instrs_in[2U] 
                                                          >> 7U)))))
                                           : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                               ? (0xfffff000U 
                                                  & vlSelf->instrs_in[2U])
                                               : ((2U 
                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__3__KET____DOT__instr_type_immediate))
                                                   ? 
                                                  (((- (IData)(
                                                               (vlSelf->instrs_in[2U] 
                                                                >> 0x1fU))) 
                                                    << 0x14U) 
                                                   | ((0xff000U 
                                                       & vlSelf->instrs_in[2U]) 
                                                      | ((0x800U 
                                                          & (vlSelf->instrs_in[2U] 
                                                             >> 9U)) 
                                                         | (0x7feU 
                                                            & (vlSelf->instrs_in[2U] 
                                                               >> 0x14U)))))
                                                   : 0U))))))),32);
    bufp->fullCData(oldp+60,((0x1fU & (vlSelf->instrs_in[2U] 
                                       >> 0xfU))),5);
    bufp->fullCData(oldp+61,((0x1fU & (vlSelf->instrs_in[2U] 
                                       >> 0x14U))),5);
    bufp->fullCData(oldp+62,((0x1fU & (vlSelf->instrs_in[2U] 
                                       >> 7U))),5);
    bufp->fullIData(oldp+63,(vlSelf->instrs_in[3U]),32);
    bufp->fullCData(oldp+64,((7U & (vlSelf->instrs_in[3U] 
                                    >> 0xcU))),3);
    bufp->fullCData(oldp+65,((vlSelf->instrs_in[3U] 
                              >> 0x19U)),7);
    bufp->fullCData(oldp+66,((0x7fU & vlSelf->instrs_in[3U])),7);
    bufp->fullIData(oldp+67,(((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                               ? vlSelf->decode__DOT____VdfgExtracted_hbc33c744__0
                               : ((1U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                   ? vlSelf->decode__DOT____VdfgExtracted_hbc33c744__0
                                   : ((4U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                       ? (((- (IData)(
                                                      (vlSelf->instrs_in[3U] 
                                                       >> 0x1fU))) 
                                           << 0xbU) 
                                          | ((0x7e0U 
                                              & (vlSelf->instrs_in[3U] 
                                                 >> 0x14U)) 
                                             | (0x1fU 
                                                & (vlSelf->instrs_in[3U] 
                                                   >> 7U))))
                                       : ((5U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                           ? (((- (IData)(
                                                          (vlSelf->instrs_in[3U] 
                                                           >> 0x1fU))) 
                                               << 0xcU) 
                                              | ((0x800U 
                                                  & (vlSelf->instrs_in[3U] 
                                                     << 4U)) 
                                                 | ((0x7e0U 
                                                     & (vlSelf->instrs_in[3U] 
                                                        >> 0x14U)) 
                                                    | (0x1eU 
                                                       & (vlSelf->instrs_in[3U] 
                                                          >> 7U)))))
                                           : ((3U == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                               ? (0xfffff000U 
                                                  & vlSelf->instrs_in[3U])
                                               : ((2U 
                                                   == (IData)(vlSelf->decode__DOT__genblk1__BRA__4__KET____DOT__instr_type_immediate))
                                                   ? 
                                                  (((- (IData)(
                                                               (vlSelf->instrs_in[3U] 
                                                                >> 0x1fU))) 
                                                    << 0x14U) 
                                                   | ((0xff000U 
                                                       & vlSelf->instrs_in[3U]) 
                                                      | ((0x800U 
                                                          & (vlSelf->instrs_in[3U] 
                                                             >> 9U)) 
                                                         | (0x7feU 
                                                            & (vlSelf->instrs_in[3U] 
                                                               >> 0x14U)))))
                                                   : 0U))))))),32);
    bufp->fullCData(oldp+68,((0x1fU & (vlSelf->instrs_in[3U] 
                                       >> 0xfU))),5);
    bufp->fullCData(oldp+69,((0x1fU & (vlSelf->instrs_in[3U] 
                                       >> 0x14U))),5);
    bufp->fullCData(oldp+70,((0x1fU & (vlSelf->instrs_in[3U] 
                                       >> 7U))),5);
}

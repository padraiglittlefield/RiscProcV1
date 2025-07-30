// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_dCacheController__Syms.h"


VL_ATTR_COLD void Vtb_dCacheController___024root__trace_init_sub__TOP__CORE_PKG__0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd* tracep);
VL_ATTR_COLD void Vtb_dCacheController___024root__trace_init_sub__TOP__tb_dCacheController__DOT__arbiter_if__0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_init_sub__TOP__0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("CORE_PKG", VerilatedTracePrefixType::SCOPE_MODULE);
    Vtb_dCacheController___024root__trace_init_sub__TOP__CORE_PKG__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->pushPrefix("tb_dCacheController", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+102,0,"CLK_PERIOD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declDouble(c+103,0,"DUTY_CYCLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declBit(c+79,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+80,0,"cycle_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("arbiter_if", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vtb_dCacheController___024root__trace_init_sub__TOP__tb_dCacheController__DOT__arbiter_if__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->pushPrefix("controller_dut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+79,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("arbiter", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vtb_dCacheController___024root__trace_init_sub__TOP__tb_dCacheController__DOT__arbiter_if__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->declBus(c+105,0,"c",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+106,0,"b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+107,0,"s",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+108,0,"TAG_BITS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"DIRTY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"VALID",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+2,0,"raddr_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"raddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+39,0,"rdata_block",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declArray(c+4,0,"wdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBit(c+12,0,"waddr_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+13,0,"waddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+14,0,"wmask",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+15,0,"repair_resolved",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+47,0,"wdata_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBus(c+55,0,"wmask_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+56,0,"raddr_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+57,0,"waddr_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+58,0,"raddr_valid_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+59,0,"waddr_valid_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+30,0,"wmask_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+81,0,"waddr_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+31,0,"wdata_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBus(c+82,0,"wblock_metadata_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+60,0,"read_miss_repair",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+83,0,"rblock_metadata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+84,0,"rblock_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"rblock_dirty",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+86,0,"rtag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 16,0);
    tracep->declBit(c+61,0,"write_miss_repair",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+87,0,"wblock_metadata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+88,0,"wblock_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+89,0,"wblock_dirty",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+90,0,"wtag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 16,0);
    tracep->declBit(c+91,0,"write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("data_store", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+109,0,"NUM_WMASKS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+110,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+111,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+110,0,"RAM_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+112,0,"DELAY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"VERBOSE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"T_HOLD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+79,0,"clk0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+92,0,"csb0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+93,0,"addr0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+30,0,"wmask0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+31,0,"din0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBit(c+79,0,"clk1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+16,0,"csb1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+17,0,"addr1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declArray(c+39,0,"dout1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBit(c+62,0,"csb0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+63,0,"wmask0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+64,0,"addr0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declArray(c+65,0,"din0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBit(c+94,0,"csb1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+95,0,"addr1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->pushPrefix("MEM_WRITE0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->pushPrefix("unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+96,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("tag_store0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+113,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+111,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+110,0,"RAM_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+112,0,"DELAY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"VERBOSE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"T_HOLD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+79,0,"clk0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+92,0,"csb0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+93,0,"addr0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+82,0,"din0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+79,0,"clk1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+16,0,"csb1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+18,0,"addr1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+83,0,"dout1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+73,0,"csb0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+74,0,"addr0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+75,0,"din0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+97,0,"csb1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+98,0,"addr1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
    tracep->pushPrefix("tag_store1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+113,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+111,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+110,0,"RAM_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+112,0,"DELAY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"VERBOSE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"T_HOLD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+79,0,"clk0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+92,0,"csb0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+93,0,"addr0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+82,0,"din0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+79,0,"clk1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"csb1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+20,0,"addr1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+87,0,"dout1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+76,0,"csb0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+77,0,"addr0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+78,0,"din0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+99,0,"csb1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+100,0,"addr1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("read_miss_and_repair__Vstatic__unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declArray(c+21,0,"repaired_block",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_init_sub__TOP__CORE_PKG__0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_init_sub__TOP__CORE_PKG__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBus(c+109,0,"WORD_SIZE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+114,0,"NUM_FUS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+111,0,"RS_ENTRIES",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+115,0,"NUM_PREGS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+109,0,"NUM_AREGS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+116,0,"NUM_ROB_ENTS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+114,0,"RETIRE_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+117,0,"DISP_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+116,0,"DISP_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+117,0,"RENAME_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_init_sub__TOP__tb_dCacheController__DOT__arbiter_if__0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_init_sub__TOP__tb_dCacheController__DOT__arbiter_if__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+2,0,"raddr_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"raddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+101,0,"rdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+29,0,"rdata_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"waddr_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+13,0,"waddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+4,0,"wdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBus(c+14,0,"wmask",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+60,0,"read_miss_repair",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+61,0,"write_miss_repair",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+56,0,"missed_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+15,0,"repair_resolved",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_init_top(Vtb_dCacheController___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_init_top\n"); );
    // Body
    Vtb_dCacheController___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vtb_dCacheController___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_dCacheController___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_dCacheController___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_register(Vtb_dCacheController___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vtb_dCacheController___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vtb_dCacheController___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vtb_dCacheController___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vtb_dCacheController___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_const_0_sub_0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_const_0\n"); );
    // Init
    Vtb_dCacheController___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_dCacheController___024root*>(voidSelf);
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtb_dCacheController___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_const_0_sub_0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_const_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+102,(1U),32);
    bufp->fullDouble(oldp+103,(5.00000000000000000e-01));
    bufp->fullIData(oldp+105,(0xfU),32);
    bufp->fullIData(oldp+106,(7U),32);
    bufp->fullIData(oldp+107,(0U),32);
    bufp->fullIData(oldp+108,(0x11U),32);
    bufp->fullIData(oldp+109,(0x20U),32);
    bufp->fullIData(oldp+110,(0x100U),32);
    bufp->fullIData(oldp+111,(8U),32);
    bufp->fullIData(oldp+112,(3U),32);
    bufp->fullIData(oldp+113,(0x13U),32);
    bufp->fullIData(oldp+114,(4U),32);
    bufp->fullIData(oldp+115,(0x80U),32);
    bufp->fullIData(oldp+116,(0x40U),32);
    bufp->fullIData(oldp+117,(2U),32);
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_full_0_sub_0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_full_0\n"); );
    // Init
    Vtb_dCacheController___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_dCacheController___024root*>(voidSelf);
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtb_dCacheController___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtb_dCacheController___024root__trace_full_0_sub_0(Vtb_dCacheController___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    VlWide<8>/*255:0*/ __Vtemp_1;
    // Body
    bufp->fullBit(oldp+1,(vlSelf->tb_dCacheController__DOT__rst));
    bufp->fullBit(oldp+2,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid));
    bufp->fullIData(oldp+3,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr),32);
    bufp->fullWData(oldp+4,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata),256);
    bufp->fullBit(oldp+12,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid));
    bufp->fullIData(oldp+13,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr),32);
    bufp->fullIData(oldp+14,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask),32);
    bufp->fullBit(oldp+15,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved));
    bufp->fullBit(oldp+16,((1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid)))));
    bufp->fullCData(oldp+17,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                       >> 7U))),8);
    bufp->fullCData(oldp+18,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                       >> 8U))),8);
    bufp->fullBit(oldp+19,((1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)))));
    bufp->fullCData(oldp+20,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                       >> 8U))),8);
    bufp->fullWData(oldp+21,(vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block),256);
    bufp->fullBit(oldp+29,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid));
    bufp->fullIData(oldp+30,(((IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)
                               ? vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask
                               : vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg)),32);
    if (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved) {
        __Vtemp_1[0U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[0U];
        __Vtemp_1[1U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[1U];
        __Vtemp_1[2U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[2U];
        __Vtemp_1[3U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[3U];
        __Vtemp_1[4U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[4U];
        __Vtemp_1[5U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[5U];
        __Vtemp_1[6U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[6U];
        __Vtemp_1[7U] = vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata[7U];
    } else {
        __Vtemp_1[0U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[0U];
        __Vtemp_1[1U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[1U];
        __Vtemp_1[2U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[2U];
        __Vtemp_1[3U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[3U];
        __Vtemp_1[4U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[4U];
        __Vtemp_1[5U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[5U];
        __Vtemp_1[6U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[6U];
        __Vtemp_1[7U] = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg[7U];
    }
    bufp->fullWData(oldp+31,(__Vtemp_1),256);
    bufp->fullWData(oldp+39,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block),256);
    bufp->fullWData(oldp+47,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg),256);
    bufp->fullIData(oldp+55,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg),32);
    bufp->fullIData(oldp+56,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg),32);
    bufp->fullIData(oldp+57,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg),32);
    bufp->fullBit(oldp+58,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg));
    bufp->fullBit(oldp+59,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg));
    bufp->fullBit(oldp+60,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_miss_repair));
    bufp->fullBit(oldp+61,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair));
    bufp->fullBit(oldp+62,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg));
    bufp->fullIData(oldp+63,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg),32);
    bufp->fullCData(oldp+64,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg),8);
    bufp->fullWData(oldp+65,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg),256);
    bufp->fullBit(oldp+73,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg));
    bufp->fullCData(oldp+74,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg),8);
    bufp->fullIData(oldp+75,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg),19);
    bufp->fullBit(oldp+76,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg));
    bufp->fullCData(oldp+77,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg),8);
    bufp->fullIData(oldp+78,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg),19);
    bufp->fullBit(oldp+79,(vlSelf->tb_dCacheController__DOT__clk));
    bufp->fullIData(oldp+80,(vlSelf->tb_dCacheController__DOT__cycle_count),32);
    bufp->fullIData(oldp+81,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i),32);
    bufp->fullIData(oldp+82,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i),19);
    bufp->fullIData(oldp+83,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata),19);
    bufp->fullBit(oldp+84,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata)));
    bufp->fullBit(oldp+85,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                  >> 1U))));
    bufp->fullIData(oldp+86,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                          >> 2U))),17);
    bufp->fullIData(oldp+87,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata),19);
    bufp->fullBit(oldp+88,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)));
    bufp->fullBit(oldp+89,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                  >> 1U))));
    bufp->fullIData(oldp+90,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                          >> 2U))),17);
    bufp->fullBit(oldp+91,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable));
    bufp->fullBit(oldp+92,((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable)))));
    bufp->fullCData(oldp+93,((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                       >> 7U))),8);
    bufp->fullBit(oldp+94,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg));
    bufp->fullCData(oldp+95,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg),8);
    bufp->fullIData(oldp+96,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i),32);
    bufp->fullBit(oldp+97,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg));
    bufp->fullCData(oldp+98,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg),8);
    bufp->fullBit(oldp+99,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg));
    bufp->fullCData(oldp+100,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg),8);
    bufp->fullIData(oldp+101,((((0U == (0x1fU & VL_SHIFTL_III(8,32,32, 
                                                              (0x1fU 
                                                               & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                  >> 2U)), 5U)))
                                 ? 0U : (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                         (((IData)(0x1fU) 
                                           + (0xffU 
                                              & VL_SHIFTL_III(8,32,32, 
                                                              (0x1fU 
                                                               & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                  >> 2U)), 5U))) 
                                          >> 5U)] << 
                                         ((IData)(0x20U) 
                                          - (0x1fU 
                                             & VL_SHIFTL_III(8,32,32, 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                 >> 2U)), 5U))))) 
                               | (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                  (7U & (VL_SHIFTL_III(8,32,32, 
                                                       (0x1fU 
                                                        & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                           >> 2U)), 5U) 
                                         >> 5U))] >> 
                                  (0x1fU & VL_SHIFTL_III(8,32,32, 
                                                         (0x1fU 
                                                          & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                             >> 2U)), 5U))))),32);
}

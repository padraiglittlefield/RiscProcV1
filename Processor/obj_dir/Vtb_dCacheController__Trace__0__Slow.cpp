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
    tracep->declBus(c+308,0,"CLK_PERIOD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declDouble(c+309,0,"DUTY_CYCLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declBit(c+299,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+300,0,"cycle_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("arbiter_if", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vtb_dCacheController___024root__trace_init_sub__TOP__tb_dCacheController__DOT__arbiter_if__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->pushPrefix("controller_dut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+299,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("arbiter", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vtb_dCacheController___024root__trace_init_sub__TOP__tb_dCacheController__DOT__arbiter_if__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->declBus(c+311,0,"c",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+312,0,"b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+313,0,"s",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+314,0,"TAG_BITS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+308,0,"DIRTY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+308,0,"VALID",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+2,0,"raddr_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"raddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+259,0,"rdata_block",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declArray(c+4,0,"wdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declBit(c+36,0,"waddr_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+37,0,"waddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+38,0,"wmask",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->declBit(c+42,0,"repair_resolved",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+78,0,"raddr_reg0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+79,0,"raddr_reg1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+80,0,"raddr_reg2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+81,0,"raddr_valid_reg0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+82,0,"raddr_valid_reg1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"raddr_valid_reg2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+84,0,"wdata_reg0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declArray(c+116,0,"wdata_reg1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declArray(c+148,0,"wmask_reg0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->declArray(c+152,0,"wmask_reg1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->declBus(c+156,0,"waddr_reg0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+157,0,"waddr_reg1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+158,0,"waddr_valid_reg0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+159,0,"waddr_valid_reg1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+160,0,"rdata_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+161,0,"missed_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+162,0,"wmask_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->declBus(c+166,0,"waddr_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+167,0,"wdata_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declBus(c+199,0,"wblock_metadata_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBus(c+301,0,"wblock_metadata_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+200,0,"read_tag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+43,0,"read_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+201,0,"repairing",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+302,0,"repairing_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+202,0,"repairing_prev",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+203,0,"read_repair_request",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+291,0,"rblock_metadata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+292,0,"rblock_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+293,0,"rblock_dirty",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+294,0,"rtag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 16,0);
    tracep->declBit(c+303,0,"read_hit",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+304,0,"write_miss_repair",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+295,0,"wblock_metadata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+296,0,"wblock_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+297,0,"wblock_dirty",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+298,0,"wtag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 16,0);
    tracep->declBit(c+204,0,"write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("data_store", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+315,0,"NUM_WMASKS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+316,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+317,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+318,0,"RAM_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+313,0,"DELAY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+308,0,"VERBOSE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+313,0,"T_HOLD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+299,0,"clk0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+205,0,"csb0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+206,0,"addr0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declArray(c+162,0,"wmask0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->declArray(c+167,0,"din0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declBit(c+299,0,"clk1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+207,0,"csb1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+208,0,"addr1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declArray(c+259,0,"dout1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declBit(c+209,0,"csb0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+210,0,"wmask0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->declBus(c+214,0,"addr0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declArray(c+215,0,"din0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declBit(c+247,0,"csb1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+248,0,"addr1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->pushPrefix("MEM_WRITE0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->pushPrefix("unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+305,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("tag_store0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+319,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+317,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+318,0,"RAM_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+313,0,"DELAY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+308,0,"VERBOSE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+313,0,"T_HOLD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+299,0,"clk0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+205,0,"csb0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+206,0,"addr0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+199,0,"din0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+299,0,"clk1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+207,0,"csb1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+208,0,"addr1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+291,0,"dout1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+249,0,"csb0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+250,0,"addr0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+251,0,"din0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+252,0,"csb1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+253,0,"addr1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
    tracep->pushPrefix("tag_store1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+319,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+317,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+318,0,"RAM_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+313,0,"DELAY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+308,0,"VERBOSE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+313,0,"T_HOLD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+299,0,"clk0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+205,0,"csb0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+206,0,"addr0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+199,0,"din0",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+299,0,"clk1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"csb1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+45,0,"addr1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+295,0,"dout1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+254,0,"csb0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+255,0,"addr0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+256,0,"din0_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 18,0);
    tracep->declBit(c+257,0,"csb1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+258,0,"addr1_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("read_hit__Vstatic__unnamedblk2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declArray(c+320,0,"repaired_block",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->popPrefix();
    tracep->pushPrefix("read_miss_and_repair__Vstatic__unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declArray(c+46,0,"repaired_block",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->popPrefix();
    tracep->pushPrefix("write_hit__Vstatic__unnamedblk3", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declArray(c+352,0,"new_block",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->popPrefix();
    tracep->pushPrefix("write_miss__Vstatic__unnamedblk4", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declArray(c+384,0,"new_block",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
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
    tracep->declBus(c+416,0,"WORD_SIZE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+417,0,"NUM_FUS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+317,0,"RS_ENTRIES",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+315,0,"NUM_PREGS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+416,0,"NUM_AREGS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+418,0,"NUM_ROB_ENTS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+417,0,"RETIRE_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+419,0,"DISP_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+418,0,"DISP_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+419,0,"RENAME_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
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
    tracep->declBus(c+306,0,"rdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+307,0,"rdata_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+36,0,"waddr_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+37,0,"waddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+4,0,"wdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1023,0);
    tracep->declArray(c+38,0,"wmask",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 127,0);
    tracep->declBit(c+203,0,"read_repair_request",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+304,0,"write_miss_repair",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+161,0,"missed_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+42,0,"repair_resolved",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+420,0,"sent_repair",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
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
    bufp->fullIData(oldp+308,(1U),32);
    bufp->fullDouble(oldp+309,(5.00000000000000000e-01));
    bufp->fullIData(oldp+311,(0xfU),32);
    bufp->fullIData(oldp+312,(7U),32);
    bufp->fullIData(oldp+313,(0U),32);
    bufp->fullIData(oldp+314,(0x11U),32);
    bufp->fullIData(oldp+315,(0x80U),32);
    bufp->fullIData(oldp+316,(0x400U),32);
    bufp->fullIData(oldp+317,(8U),32);
    bufp->fullIData(oldp+318,(0x100U),32);
    bufp->fullIData(oldp+319,(0x13U),32);
    bufp->fullWData(oldp+320,(vlSelf->tb_dCacheController__DOT__read_hit__Vstatic__unnamedblk2__DOT__repaired_block),1024);
    bufp->fullWData(oldp+352,(vlSelf->tb_dCacheController__DOT__write_hit__Vstatic__unnamedblk3__DOT__new_block),1024);
    bufp->fullWData(oldp+384,(vlSelf->tb_dCacheController__DOT__write_miss__Vstatic__unnamedblk4__DOT__new_block),1024);
    bufp->fullIData(oldp+416,(0x20U),32);
    bufp->fullIData(oldp+417,(4U),32);
    bufp->fullIData(oldp+418,(0x40U),32);
    bufp->fullIData(oldp+419,(2U),32);
    bufp->fullBit(oldp+420,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.__PVT__sent_repair));
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
    // Body
    bufp->fullBit(oldp+1,(vlSelf->tb_dCacheController__DOT__rst));
    bufp->fullBit(oldp+2,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr_valid));
    bufp->fullIData(oldp+3,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr),32);
    bufp->fullWData(oldp+4,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wdata),1024);
    bufp->fullBit(oldp+36,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid));
    bufp->fullIData(oldp+37,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr),32);
    bufp->fullWData(oldp+38,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.wmask),128);
    bufp->fullBit(oldp+42,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved));
    bufp->fullCData(oldp+43,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                       >> 7U))),8);
    bufp->fullBit(oldp+44,((1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr_valid)))));
    bufp->fullCData(oldp+45,((0xffU & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.waddr 
                                       >> 7U))),8);
    bufp->fullWData(oldp+46,(vlSelf->tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block),1024);
    bufp->fullIData(oldp+78,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0),32);
    bufp->fullIData(oldp+79,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1),32);
    bufp->fullIData(oldp+80,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2),32);
    bufp->fullBit(oldp+81,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0));
    bufp->fullBit(oldp+82,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1));
    bufp->fullBit(oldp+83,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2));
    bufp->fullWData(oldp+84,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0),1024);
    bufp->fullWData(oldp+116,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1),1024);
    bufp->fullWData(oldp+148,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0),128);
    bufp->fullWData(oldp+152,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1),128);
    bufp->fullIData(oldp+156,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0),32);
    bufp->fullIData(oldp+157,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1),32);
    bufp->fullBit(oldp+158,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0));
    bufp->fullBit(oldp+159,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1));
    bufp->fullBit(oldp+160,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid));
    bufp->fullIData(oldp+161,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__missed_addr),32);
    bufp->fullWData(oldp+162,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wmask_i),128);
    bufp->fullIData(oldp+166,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i),32);
    bufp->fullWData(oldp+167,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wdata_i),1024);
    bufp->fullIData(oldp+199,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i),19);
    bufp->fullBit(oldp+200,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_tag));
    bufp->fullBit(oldp+201,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing));
    bufp->fullBit(oldp+202,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_prev));
    bufp->fullBit(oldp+203,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request));
    bufp->fullBit(oldp+204,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable));
    bufp->fullBit(oldp+205,((1U & (~ (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_enable)))));
    bufp->fullCData(oldp+206,((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_i 
                                        >> 7U))),8);
    bufp->fullBit(oldp+207,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1));
    bufp->fullCData(oldp+208,((0xffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0 
                                        >> 7U))),8);
    bufp->fullBit(oldp+209,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg));
    bufp->fullWData(oldp+210,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg),128);
    bufp->fullCData(oldp+214,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg),8);
    bufp->fullWData(oldp+215,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg),1024);
    bufp->fullBit(oldp+247,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg));
    bufp->fullCData(oldp+248,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg),8);
    bufp->fullBit(oldp+249,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg));
    bufp->fullCData(oldp+250,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg),8);
    bufp->fullIData(oldp+251,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg),19);
    bufp->fullBit(oldp+252,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg));
    bufp->fullCData(oldp+253,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg),8);
    bufp->fullBit(oldp+254,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg));
    bufp->fullCData(oldp+255,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg),8);
    bufp->fullIData(oldp+256,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg),19);
    bufp->fullBit(oldp+257,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg));
    bufp->fullCData(oldp+258,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg),8);
    bufp->fullWData(oldp+259,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block),1024);
    bufp->fullIData(oldp+291,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata),19);
    bufp->fullBit(oldp+292,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata)));
    bufp->fullBit(oldp+293,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                   >> 1U))));
    bufp->fullIData(oldp+294,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                           >> 2U))),17);
    bufp->fullIData(oldp+295,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata),19);
    bufp->fullBit(oldp+296,((1U & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)));
    bufp->fullBit(oldp+297,((1U & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                   >> 1U))));
    bufp->fullIData(oldp+298,((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                           >> 2U))),17);
    bufp->fullBit(oldp+299,(vlSelf->tb_dCacheController__DOT__clk));
    bufp->fullIData(oldp+300,(vlSelf->tb_dCacheController__DOT__cycle_count),32);
    bufp->fullIData(oldp+301,(((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1)
                                ? (3U | (0x7fffcU & vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata))
                                : 0U)),19);
    bufp->fullBit(oldp+302,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next));
    bufp->fullBit(oldp+303,((((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                           >> 2U)) 
                              == (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2 
                                  >> 0xfU)) & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata 
                                               & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid)))));
    bufp->fullBit(oldp+304,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair));
    bufp->fullIData(oldp+305,(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i),32);
    bufp->fullIData(oldp+306,((((0U == (0x1fU & VL_SHIFTL_III(10,32,32, 
                                                              (0x1fU 
                                                               & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                  >> 2U)), 5U)))
                                 ? 0U : (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                         (((IData)(0x1fU) 
                                           + (0x3ffU 
                                              & VL_SHIFTL_III(10,32,32, 
                                                              (0x1fU 
                                                               & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                  >> 2U)), 5U))) 
                                          >> 5U)] << 
                                         ((IData)(0x20U) 
                                          - (0x1fU 
                                             & VL_SHIFTL_III(10,32,32, 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                 >> 2U)), 5U))))) 
                               | (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_block[
                                  (0x1fU & (VL_SHIFTL_III(10,32,32, 
                                                          (0x1fU 
                                                           & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                              >> 2U)), 5U) 
                                            >> 5U))] 
                                  >> (0x1fU & VL_SHIFTL_III(10,32,32, 
                                                            (0x1fU 
                                                             & (vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.raddr 
                                                                >> 2U)), 5U))))),32);
    bufp->fullBit(oldp+307,(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid));
}

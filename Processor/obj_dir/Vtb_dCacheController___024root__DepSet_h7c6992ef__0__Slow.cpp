// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController__Syms.h"
#include "Vtb_dCacheController___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_dCacheController___024root___dump_triggers__stl(Vtb_dCacheController___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_dCacheController___024root___eval_triggers__stl(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (IData)(vlSelf->__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb_dCacheController___024root___dump_triggers__stl(vlSelf);
    }
#endif
}

VL_ATTR_COLD void Vtb_dCacheController___024root___stl_sequent__TOP__0(Vtb_dCacheController___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_dCacheController___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.rdata_valid 
        = vlSelf->tb_dCacheController__DOT__controller_dut__DOT__rdata_valid;
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1 
        = (1U & (~ ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0) 
                    | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1))));
    vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair 
        = (((~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)) 
            & (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1)) 
           && ((1U & (~ vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata)) 
               || ((0x1ffffU & (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata 
                                >> 2U)) != (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1 
                                            >> 0xfU))));
    if (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing) {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next = 1U;
        if (vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing) {
            vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next 
                = (1U & (~ (IData)(vlSymsp->TOP__tb_dCacheController__DOT__arbiter_if.repair_resolved)));
        }
    } else {
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next = 0U;
        vlSelf->tb_dCacheController__DOT__controller_dut__DOT__repairing_next 
            = ((IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__read_repair_request) 
               | (IData)(vlSelf->tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair));
    }
}

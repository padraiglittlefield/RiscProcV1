// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController_ArbiterControllerIF.h"

VL_ATTR_COLD void Vtb_dCacheController_ArbiterControllerIF___ctor_var_reset(Vtb_dCacheController_ArbiterControllerIF* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_dCacheController__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+          Vtb_dCacheController_ArbiterControllerIF___ctor_var_reset\n"); );
    // Body
    vlSelf->raddr_valid = VL_RAND_RESET_I(1);
    vlSelf->raddr = VL_RAND_RESET_I(32);
    vlSelf->rdata_valid = VL_RAND_RESET_I(1);
    vlSelf->waddr_valid = VL_RAND_RESET_I(1);
    vlSelf->waddr = VL_RAND_RESET_I(32);
    VL_RAND_RESET_W(1024, vlSelf->wdata);
    VL_RAND_RESET_W(128, vlSelf->wmask);
    vlSelf->repair_resolved = VL_RAND_RESET_I(1);
    vlSelf->__PVT__sent_repair = VL_RAND_RESET_I(1);
}

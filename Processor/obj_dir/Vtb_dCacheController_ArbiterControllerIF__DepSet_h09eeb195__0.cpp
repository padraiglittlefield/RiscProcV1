// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController_ArbiterControllerIF.h"

std::string VL_TO_STRING(const Vtb_dCacheController_ArbiterControllerIF* obj) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          Vtb_dCacheController_ArbiterControllerIF::VL_TO_STRING\n"); );
    // Body
    return (obj ? obj->name() : "null");
}

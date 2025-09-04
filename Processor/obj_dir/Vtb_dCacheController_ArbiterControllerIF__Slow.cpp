// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController_ArbiterControllerIF.h"
#include "Vtb_dCacheController__Syms.h"

void Vtb_dCacheController_ArbiterControllerIF___ctor_var_reset(Vtb_dCacheController_ArbiterControllerIF* vlSelf);

Vtb_dCacheController_ArbiterControllerIF::Vtb_dCacheController_ArbiterControllerIF(Vtb_dCacheController__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtb_dCacheController_ArbiterControllerIF___ctor_var_reset(this);
}

void Vtb_dCacheController_ArbiterControllerIF::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vtb_dCacheController_ArbiterControllerIF::~Vtb_dCacheController_ArbiterControllerIF() {
}

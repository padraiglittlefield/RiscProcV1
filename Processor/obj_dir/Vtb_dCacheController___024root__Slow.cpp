// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_dCacheController.h for the primary calling header

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController__Syms.h"
#include "Vtb_dCacheController___024root.h"

void Vtb_dCacheController___024root___ctor_var_reset(Vtb_dCacheController___024root* vlSelf);

Vtb_dCacheController___024root::Vtb_dCacheController___024root(Vtb_dCacheController__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtb_dCacheController___024root___ctor_var_reset(this);
}

void Vtb_dCacheController___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vtb_dCacheController___024root::~Vtb_dCacheController___024root() {
}

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_wakeup.h for the primary calling header

#include "Vtb_wakeup__pch.h"
#include "Vtb_wakeup__Syms.h"
#include "Vtb_wakeup___024root.h"

void Vtb_wakeup___024root___ctor_var_reset(Vtb_wakeup___024root* vlSelf);

Vtb_wakeup___024root::Vtb_wakeup___024root(Vtb_wakeup__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtb_wakeup___024root___ctor_var_reset(this);
}

void Vtb_wakeup___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vtb_wakeup___024root::~Vtb_wakeup___024root() {
}

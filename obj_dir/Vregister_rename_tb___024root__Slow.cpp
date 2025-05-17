// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vregister_rename_tb.h for the primary calling header

#include "Vregister_rename_tb__pch.h"
#include "Vregister_rename_tb__Syms.h"
#include "Vregister_rename_tb___024root.h"

void Vregister_rename_tb___024root___ctor_var_reset(Vregister_rename_tb___024root* vlSelf);

Vregister_rename_tb___024root::Vregister_rename_tb___024root(Vregister_rename_tb__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vregister_rename_tb___024root___ctor_var_reset(this);
}

void Vregister_rename_tb___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vregister_rename_tb___024root::~Vregister_rename_tb___024root() {
}

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdispatch.h for the primary calling header

#include "Vdispatch__pch.h"
#include "Vdispatch__Syms.h"
#include "Vdispatch___024root.h"

void Vdispatch___024root___ctor_var_reset(Vdispatch___024root* vlSelf);

Vdispatch___024root::Vdispatch___024root(Vdispatch__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vdispatch___024root___ctor_var_reset(this);
}

void Vdispatch___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vdispatch___024root::~Vdispatch___024root() {
}

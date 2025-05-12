// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdecode.h for the primary calling header

#include "Vdecode__pch.h"
#include "Vdecode__Syms.h"
#include "Vdecode___024unit.h"

void Vdecode___024unit___ctor_var_reset(Vdecode___024unit* vlSelf);

Vdecode___024unit::Vdecode___024unit(Vdecode__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vdecode___024unit___ctor_var_reset(this);
}

void Vdecode___024unit::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vdecode___024unit::~Vdecode___024unit() {
}

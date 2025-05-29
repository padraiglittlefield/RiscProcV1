// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VDependencyMatrixTB.h for the primary calling header

#include "VDependencyMatrixTB__pch.h"
#include "VDependencyMatrixTB__Syms.h"
#include "VDependencyMatrixTB___024unit.h"

void VDependencyMatrixTB___024unit___ctor_var_reset(VDependencyMatrixTB___024unit* vlSelf);

VDependencyMatrixTB___024unit::VDependencyMatrixTB___024unit(VDependencyMatrixTB__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    VDependencyMatrixTB___024unit___ctor_var_reset(this);
}

void VDependencyMatrixTB___024unit::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

VDependencyMatrixTB___024unit::~VDependencyMatrixTB___024unit() {
}

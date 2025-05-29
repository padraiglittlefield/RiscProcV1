// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VDependencyMatrixTB.h for the primary calling header

#include "VDependencyMatrixTB__pch.h"
#include "VDependencyMatrixTB__Syms.h"
#include "VDependencyMatrixTB___024root.h"

void VDependencyMatrixTB___024root___ctor_var_reset(VDependencyMatrixTB___024root* vlSelf);

VDependencyMatrixTB___024root::VDependencyMatrixTB___024root(VDependencyMatrixTB__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    VDependencyMatrixTB___024root___ctor_var_reset(this);
}

void VDependencyMatrixTB___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

VDependencyMatrixTB___024root::~VDependencyMatrixTB___024root() {
}

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VDependencyMatrixTB.h for the primary calling header

#ifndef VERILATED_VDEPENDENCYMATRIXTB___024UNIT_H_
#define VERILATED_VDEPENDENCYMATRIXTB___024UNIT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class VDependencyMatrixTB__Syms;

class alignas(VL_CACHE_LINE_BYTES) VDependencyMatrixTB___024unit final : public VerilatedModule {
  public:

    // INTERNAL VARIABLES
    VDependencyMatrixTB__Syms* const vlSymsp;

    // CONSTRUCTORS
    VDependencyMatrixTB___024unit(VDependencyMatrixTB__Syms* symsp, const char* v__name);
    ~VDependencyMatrixTB___024unit();
    VL_UNCOPYABLE(VDependencyMatrixTB___024unit);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

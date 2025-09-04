// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_dCacheController.h for the primary calling header

#ifndef VERILATED_VTB_DCACHECONTROLLER___024UNIT_H_
#define VERILATED_VTB_DCACHECONTROLLER___024UNIT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_dCacheController__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_dCacheController___024unit final : public VerilatedModule {
  public:

    // INTERNAL VARIABLES
    Vtb_dCacheController__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_dCacheController___024unit(Vtb_dCacheController__Syms* symsp, const char* v__name);
    ~Vtb_dCacheController___024unit();
    VL_UNCOPYABLE(Vtb_dCacheController___024unit);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

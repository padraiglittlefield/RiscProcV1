// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_wakeup.h for the primary calling header

#ifndef VERILATED_VTB_WAKEUP___024UNIT_H_
#define VERILATED_VTB_WAKEUP___024UNIT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_wakeup__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_wakeup___024unit final : public VerilatedModule {
  public:

    // INTERNAL VARIABLES
    Vtb_wakeup__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_wakeup___024unit(Vtb_wakeup__Syms* symsp, const char* v__name);
    ~Vtb_wakeup___024unit();
    VL_UNCOPYABLE(Vtb_wakeup___024unit);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

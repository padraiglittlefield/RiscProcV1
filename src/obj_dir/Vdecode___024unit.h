// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vdecode.h for the primary calling header

#ifndef VERILATED_VDECODE___024UNIT_H_
#define VERILATED_VDECODE___024UNIT_H_  // guard

#include "verilated.h"


class Vdecode__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vdecode___024unit final : public VerilatedModule {
  public:

    // INTERNAL VARIABLES
    Vdecode__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vdecode___024unit(Vdecode__Syms* symsp, const char* v__name);
    ~Vdecode___024unit();
    VL_UNCOPYABLE(Vdecode___024unit);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vfree_preg_queue.h for the primary calling header

#ifndef VERILATED_VFREE_PREG_QUEUE___024UNIT_H_
#define VERILATED_VFREE_PREG_QUEUE___024UNIT_H_  // guard

#include "verilated.h"


class Vfree_preg_queue__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vfree_preg_queue___024unit final : public VerilatedModule {
  public:

    // INTERNAL VARIABLES
    Vfree_preg_queue__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vfree_preg_queue___024unit(Vfree_preg_queue__Syms* symsp, const char* v__name);
    ~Vfree_preg_queue___024unit();
    VL_UNCOPYABLE(Vfree_preg_queue___024unit);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

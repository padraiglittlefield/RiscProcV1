// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VFREE_PREG_QUEUE__SYMS_H_
#define VERILATED_VFREE_PREG_QUEUE__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vfree_preg_queue.h"

// INCLUDE MODULE CLASSES
#include "Vfree_preg_queue___024root.h"
#include "Vfree_preg_queue___024unit.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vfree_preg_queue__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vfree_preg_queue* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vfree_preg_queue___024root     TOP;

    // CONSTRUCTORS
    Vfree_preg_queue__Syms(VerilatedContext* contextp, const char* namep, Vfree_preg_queue* modelp);
    ~Vfree_preg_queue__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard

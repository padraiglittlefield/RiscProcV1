// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vfree_preg_queue__pch.h"
#include "Vfree_preg_queue.h"
#include "Vfree_preg_queue___024root.h"
#include "Vfree_preg_queue___024unit.h"

// FUNCTIONS
Vfree_preg_queue__Syms::~Vfree_preg_queue__Syms()
{
}

Vfree_preg_queue__Syms::Vfree_preg_queue__Syms(VerilatedContext* contextp, const char* namep, Vfree_preg_queue* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
        // Check resources
        Verilated::stackCheck(30);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}

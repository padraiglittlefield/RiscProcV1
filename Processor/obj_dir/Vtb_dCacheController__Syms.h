// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VTB_DCACHECONTROLLER__SYMS_H_
#define VERILATED_VTB_DCACHECONTROLLER__SYMS_H_  // guard

#include "verilated.h"
#include "verilated_vcd_c.h"

// INCLUDE MODEL CLASS

#include "Vtb_dCacheController.h"

// INCLUDE MODULE CLASSES
#include "Vtb_dCacheController___024root.h"
#include "Vtb_dCacheController___024unit.h"
#include "Vtb_dCacheController_ArbiterControllerIF.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vtb_dCacheController__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vtb_dCacheController* const __Vm_modelp;
    bool __Vm_dumping = false;  // Dumping is active
    VerilatedMutex __Vm_dumperMutex;  // Protect __Vm_dumperp
    VerilatedVcdC* __Vm_dumperp VL_GUARDED_BY(__Vm_dumperMutex) = nullptr;  /// Trace class for $dump*
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vtb_dCacheController___024root TOP;
    Vtb_dCacheController_ArbiterControllerIF TOP__tb_dCacheController__DOT__arbiter_if;

    // SCOPE NAMES
    VerilatedScope __Vscope_tb_dCacheController__controller_dut__data_store;
    VerilatedScope __Vscope_tb_dCacheController__controller_dut__tag_store0;
    VerilatedScope __Vscope_tb_dCacheController__controller_dut__tag_store1;

    // CONSTRUCTORS
    Vtb_dCacheController__Syms(VerilatedContext* contextp, const char* namep, Vtb_dCacheController* modelp);
    ~Vtb_dCacheController__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
    void _traceDump();
    void _traceDumpOpen();
    void _traceDumpClose();
};

#endif  // guard

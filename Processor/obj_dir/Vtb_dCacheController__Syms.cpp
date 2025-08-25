// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtb_dCacheController__pch.h"
#include "Vtb_dCacheController.h"
#include "Vtb_dCacheController___024root.h"
#include "Vtb_dCacheController___024unit.h"
#include "Vtb_dCacheController_ArbiterControllerIF.h"

// FUNCTIONS
Vtb_dCacheController__Syms::~Vtb_dCacheController__Syms()
{
#ifdef VM_TRACE
    if (__Vm_dumping) _traceDumpClose();
#endif  // VM_TRACE
}

void Vtb_dCacheController__Syms::_traceDump() {
    const VerilatedLockGuard lock(__Vm_dumperMutex);
    __Vm_dumperp->dump(VL_TIME_Q());
}

void Vtb_dCacheController__Syms::_traceDumpOpen() {
    const VerilatedLockGuard lock(__Vm_dumperMutex);
    if (VL_UNLIKELY(!__Vm_dumperp)) {
        __Vm_dumperp = new VerilatedVcdC();
        __Vm_modelp->trace(__Vm_dumperp, 0, 0);
        std::string dumpfile = _vm_contextp__->dumpfileCheck();
        __Vm_dumperp->open(dumpfile.c_str());
        __Vm_dumping = true;
    }
}

void Vtb_dCacheController__Syms::_traceDumpClose() {
    const VerilatedLockGuard lock(__Vm_dumperMutex);
    __Vm_dumping = false;
    VL_DO_CLEAR(delete __Vm_dumperp, __Vm_dumperp = nullptr);
}

Vtb_dCacheController__Syms::Vtb_dCacheController__Syms(VerilatedContext* contextp, const char* namep, Vtb_dCacheController* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
    , TOP__tb_dCacheController__DOT__arbiter_if{this, Verilated::catName(namep, "tb_dCacheController.arbiter_if")}
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    TOP.__PVT__tb_dCacheController__DOT__arbiter_if = &TOP__tb_dCacheController__DOT__arbiter_if;
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
    TOP__tb_dCacheController__DOT__arbiter_if.__Vconfigure(true);
    // Setup scopes
    __Vscope_tb_dCacheController__controller_dut__data_store.configure(this, name(), "tb_dCacheController.controller_dut.data_store", "data_store", -9, VerilatedScope::SCOPE_OTHER);
    __Vscope_tb_dCacheController__controller_dut__tag_store0.configure(this, name(), "tb_dCacheController.controller_dut.tag_store0", "tag_store0", -9, VerilatedScope::SCOPE_OTHER);
    __Vscope_tb_dCacheController__controller_dut__tag_store1.configure(this, name(), "tb_dCacheController.controller_dut.tag_store1", "tag_store1", -9, VerilatedScope::SCOPE_OTHER);
}

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vfree_preg_queue__pch.h"

//============================================================
// Constructors

Vfree_preg_queue::Vfree_preg_queue(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vfree_preg_queue__Syms(contextp(), _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , rst_n{vlSymsp->TOP.rst_n}
    , w_en{vlSymsp->TOP.w_en}
    , r_en{vlSymsp->TOP.r_en}
    , instr_in{vlSymsp->TOP.instr_in}
    , instr_out{vlSymsp->TOP.instr_out}
    , full{vlSymsp->TOP.full}
    , empty{vlSymsp->TOP.empty}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vfree_preg_queue::Vfree_preg_queue(const char* _vcname__)
    : Vfree_preg_queue(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vfree_preg_queue::~Vfree_preg_queue() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vfree_preg_queue___024root___eval_debug_assertions(Vfree_preg_queue___024root* vlSelf);
#endif  // VL_DEBUG
void Vfree_preg_queue___024root___eval_static(Vfree_preg_queue___024root* vlSelf);
void Vfree_preg_queue___024root___eval_initial(Vfree_preg_queue___024root* vlSelf);
void Vfree_preg_queue___024root___eval_settle(Vfree_preg_queue___024root* vlSelf);
void Vfree_preg_queue___024root___eval(Vfree_preg_queue___024root* vlSelf);

void Vfree_preg_queue::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vfree_preg_queue::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vfree_preg_queue___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vfree_preg_queue___024root___eval_static(&(vlSymsp->TOP));
        Vfree_preg_queue___024root___eval_initial(&(vlSymsp->TOP));
        Vfree_preg_queue___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vfree_preg_queue___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vfree_preg_queue::eventsPending() { return false; }

uint64_t Vfree_preg_queue::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* Vfree_preg_queue::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vfree_preg_queue___024root___eval_final(Vfree_preg_queue___024root* vlSelf);

VL_ATTR_COLD void Vfree_preg_queue::final() {
    Vfree_preg_queue___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vfree_preg_queue::hierName() const { return vlSymsp->name(); }
const char* Vfree_preg_queue::modelName() const { return "Vfree_preg_queue"; }
unsigned Vfree_preg_queue::threads() const { return 1; }
void Vfree_preg_queue::prepareClone() const { contextp()->prepareClone(); }
void Vfree_preg_queue::atClone() const {
    contextp()->threadPoolpOnClone();
}

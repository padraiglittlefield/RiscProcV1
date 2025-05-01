// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vdecode__pch.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

Vdecode::Vdecode(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vdecode__Syms(contextp(), _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , rst{vlSymsp->TOP.rst}
    , instrs_in{vlSymsp->TOP.instrs_in}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vdecode::Vdecode(const char* _vcname__)
    : Vdecode(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vdecode::~Vdecode() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vdecode___024root___eval_debug_assertions(Vdecode___024root* vlSelf);
#endif  // VL_DEBUG
void Vdecode___024root___eval_static(Vdecode___024root* vlSelf);
void Vdecode___024root___eval_initial(Vdecode___024root* vlSelf);
void Vdecode___024root___eval_settle(Vdecode___024root* vlSelf);
void Vdecode___024root___eval(Vdecode___024root* vlSelf);

void Vdecode::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vdecode::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vdecode___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vdecode___024root___eval_static(&(vlSymsp->TOP));
        Vdecode___024root___eval_initial(&(vlSymsp->TOP));
        Vdecode___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vdecode___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vdecode::eventsPending() { return false; }

uint64_t Vdecode::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* Vdecode::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vdecode___024root___eval_final(Vdecode___024root* vlSelf);

VL_ATTR_COLD void Vdecode::final() {
    Vdecode___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vdecode::hierName() const { return vlSymsp->name(); }
const char* Vdecode::modelName() const { return "Vdecode"; }
unsigned Vdecode::threads() const { return 1; }
void Vdecode::prepareClone() const { contextp()->prepareClone(); }
void Vdecode::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> Vdecode::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void Vdecode___024root__trace_decl_types(VerilatedVcd* tracep);

void Vdecode___024root__trace_init_top(Vdecode___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vdecode___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdecode___024root*>(voidSelf);
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->pushPrefix(std::string{vlSymsp->name()}, VerilatedTracePrefixType::SCOPE_MODULE);
    Vdecode___024root__trace_decl_types(tracep);
    Vdecode___024root__trace_init_top(vlSelf, tracep);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vdecode___024root__trace_register(Vdecode___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vdecode::trace(VerilatedVcdC* tfp, int levels, int options) {
    if (tfp->isOpen()) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'Vdecode::trace()' shall not be called after 'VerilatedVcdC::open()'.");
    }
    if (false && levels && options) {}  // Prevent unused
    tfp->spTrace()->addModel(this);
    tfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vdecode___024root__trace_register(&(vlSymsp->TOP), tfp->spTrace());
}

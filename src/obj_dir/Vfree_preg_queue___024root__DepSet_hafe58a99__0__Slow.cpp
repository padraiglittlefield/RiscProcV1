// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfree_preg_queue.h for the primary calling header

#include "Vfree_preg_queue__pch.h"
#include "Vfree_preg_queue__Syms.h"
#include "Vfree_preg_queue___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfree_preg_queue___024root___dump_triggers__stl(Vfree_preg_queue___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vfree_preg_queue___024root___eval_triggers__stl(Vfree_preg_queue___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfree_preg_queue___024root___eval_triggers__stl\n"); );
    Vfree_preg_queue__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VstlTriggered.set(0U, (IData)(vlSelfRef.__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vfree_preg_queue___024root___dump_triggers__stl(vlSelf);
    }
#endif
}

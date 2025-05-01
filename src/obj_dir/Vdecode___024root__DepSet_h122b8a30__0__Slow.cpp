// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vdecode.h for the primary calling header

#include "Vdecode__pch.h"
#include "Vdecode__Syms.h"
#include "Vdecode___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vdecode___024root___dump_triggers__stl(Vdecode___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vdecode___024root___eval_triggers__stl(Vdecode___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vdecode__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdecode___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (IData)(vlSelf->__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vdecode___024root___dump_triggers__stl(vlSelf);
    }
#endif
}

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VDependencyMatrixTB.h for the primary calling header

#include "VDependencyMatrixTB__pch.h"
#include "VDependencyMatrixTB___024root.h"

VlCoroutine VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__0(VDependencyMatrixTB___024root* vlSelf);
VlCoroutine VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__1(VDependencyMatrixTB___024root* vlSelf);

void VDependencyMatrixTB___024root___eval_initial(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vm_traceActivity[1U] = 1U;
    VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__DependencyMatrixTB__DOT__clk__0 
        = vlSelf->DependencyMatrixTB__DOT__clk;
}

VL_INLINE_OPT VlCoroutine VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__0(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0x2710ULL, 
                                           nullptr, 
                                           "sim/DependencyMatrixTB.sv", 
                                           39);
        vlSelf->DependencyMatrixTB__DOT__clk = 1U;
        vlSelf->DependencyMatrixTB__DOT__cycle_count 
            = ((IData)(1U) + vlSelf->DependencyMatrixTB__DOT__cycle_count);
        co_await vlSelf->__VdlySched.delay(0x2710ULL, 
                                           nullptr, 
                                           "sim/DependencyMatrixTB.sv", 
                                           41);
        vlSelf->DependencyMatrixTB__DOT__clk = 0U;
    }
}

void VDependencyMatrixTB___024root___eval_act(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_act\n"); );
}

VL_INLINE_OPT void VDependencyMatrixTB___024root___nba_sequent__TOP__0(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v0;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v0 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70 = 0;
    CData/*2:0*/ __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71;
    __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71 = 0;
    CData/*2:0*/ __Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72;
    __Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72 = 0;
    CData/*7:0*/ __Vdlyvval__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72;
    __Vdlyvval__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72 = 0;
    CData/*2:0*/ __Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73;
    __Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73 = 0;
    CData/*0:0*/ __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73 = 0;
    // Body
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v0 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72 = 0U;
    __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73 = 0U;
    if (vlSelf->DependencyMatrixTB__DOT__rst) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk1__DOT__i = 8U;
        __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v0 = 1U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid = 0U;
    } else {
        if (vlSelf->DependencyMatrixTB__DOT__clear_en) {
            if ((1U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8 = 0U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16 = 0U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24 = 0U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32 = 0U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40 = 0U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48 = 0U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56 = 0U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64 = 0U;
            }
            if ((2U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9 = 1U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17 = 1U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25 = 1U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33 = 1U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41 = 1U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49 = 1U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57 = 1U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65 = 1U;
            }
            if ((4U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10 = 2U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18 = 2U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26 = 2U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34 = 2U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42 = 2U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50 = 2U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58 = 2U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66 = 2U;
            }
            if ((8U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11 = 3U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19 = 3U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27 = 3U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35 = 3U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43 = 3U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51 = 3U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59 = 3U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67 = 3U;
            }
            if ((0x10U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12 = 4U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20 = 4U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28 = 4U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36 = 4U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44 = 4U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52 = 4U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60 = 4U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68 = 4U;
            }
            if ((0x20U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13 = 5U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21 = 5U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29 = 5U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37 = 5U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45 = 5U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53 = 5U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61 = 5U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69 = 5U;
            }
            if ((0x40U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14 = 6U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22 = 6U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30 = 6U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38 = 6U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46 = 6U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54 = 6U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62 = 6U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70 = 6U;
            }
            if ((0x80U & (IData)(vlSelf->DependencyMatrixTB__DOT__clear_lines))) {
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15 = 7U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23 = 7U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31 = 7U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39 = 7U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47 = 7U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55 = 7U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63 = 7U;
                __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71 = 1U;
                __Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71 = 7U;
            }
        }
        if (vlSelf->DependencyMatrixTB__DOT__w_en) {
            __Vdlyvval__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72 
                = vlSelf->DependencyMatrixTB__DOT__set_lines;
            __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72 = 1U;
            __Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72 
                = vlSelf->DependencyMatrixTB__DOT__w_row_index;
            vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid 
                = ((IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid) 
                   | (0xffU & ((IData)(1U) << (IData)(vlSelf->DependencyMatrixTB__DOT__w_row_index))));
        }
        if (vlSelf->DependencyMatrixTB__DOT__free_en) {
            __Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73 = 1U;
            __Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73 
                = vlSelf->DependencyMatrixTB__DOT__free_row_index;
            vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid 
                = ((~ ((IData)(1U) << (IData)(vlSelf->DependencyMatrixTB__DOT__free_row_index))) 
                   & (IData)(vlSelf->DependencyMatrixTB__DOT__DUT__DOT__row_valid));
        }
    }
    if ((1U & (~ (IData)(vlSelf->DependencyMatrixTB__DOT__rst)))) {
        if (vlSelf->DependencyMatrixTB__DOT__clear_en) {
            vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__unnamedblk3__DOT__j = 8U;
            vlSelf->DependencyMatrixTB__DOT__DUT__DOT__unnamedblk2__DOT__i = 8U;
        }
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v0) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] = 0U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] = 0U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] = 0U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] = 0U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] = 0U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] = 0U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] = 0U;
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] = 0U;
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v8))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v9))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v10))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v11))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v12))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v13))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v14))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v15))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [0U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v16))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v17))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v18))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v19))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v20))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v21))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v22))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v23))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [1U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v24))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v25))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v26))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v27))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v28))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v29))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v30))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[2U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v31))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [2U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v32))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v33))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v34))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v35))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v36))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v37))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v38))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[3U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v39))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [3U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v40))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v41))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v42))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v43))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v44))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v45))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v46))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[4U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v47))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [4U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v48))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v49))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v50))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v51))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v52))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v53))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v54))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[5U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v55))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [5U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v56))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v57))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v58))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v59))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v60))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v61))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v62))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[6U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v63))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [6U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v64))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v65))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v66))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v67))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v68))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v69))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v70))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[7U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v71))) 
               & vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix
               [7U]);
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[__Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72] 
            = __Vdlyvval__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v72;
    }
    if (__Vdlyvset__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73) {
        vlSelf->DependencyMatrixTB__DOT__DUT__DOT__bit_matrix[__Vdlyvdim0__DependencyMatrixTB__DOT__DUT__DOT__bit_matrix__v73] = 0U;
    }
}

void VDependencyMatrixTB___024root___eval_nba(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VDependencyMatrixTB___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
}

void VDependencyMatrixTB___024root___timing_resume(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___timing_resume\n"); );
    // Body
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_h0f1ef938__0.resume("@(posedge DependencyMatrixTB.clk)");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void VDependencyMatrixTB___024root___timing_commit(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___timing_commit\n"); );
    // Body
    if ((! (1ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_h0f1ef938__0.commit("@(posedge DependencyMatrixTB.clk)");
    }
}

void VDependencyMatrixTB___024root___eval_triggers__act(VDependencyMatrixTB___024root* vlSelf);

bool VDependencyMatrixTB___024root___eval_phase__act(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    VDependencyMatrixTB___024root___eval_triggers__act(vlSelf);
    VDependencyMatrixTB___024root___timing_commit(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        VDependencyMatrixTB___024root___timing_resume(vlSelf);
        VDependencyMatrixTB___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool VDependencyMatrixTB___024root___eval_phase__nba(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        VDependencyMatrixTB___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VDependencyMatrixTB___024root___dump_triggers__nba(VDependencyMatrixTB___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VDependencyMatrixTB___024root___dump_triggers__act(VDependencyMatrixTB___024root* vlSelf);
#endif  // VL_DEBUG

void VDependencyMatrixTB___024root___eval(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            VDependencyMatrixTB___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("sim/DependencyMatrixTB.sv", 4, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                VDependencyMatrixTB___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("sim/DependencyMatrixTB.sv", 4, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (VDependencyMatrixTB___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (VDependencyMatrixTB___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void VDependencyMatrixTB___024root___eval_debug_assertions(VDependencyMatrixTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VDependencyMatrixTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VDependencyMatrixTB___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG

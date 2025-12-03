// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_wakeup.h for the primary calling header

#include "Vtb_wakeup__pch.h"
#include "Vtb_wakeup___024root.h"

VL_ATTR_COLD void Vtb_wakeup___024root___eval_initial__TOP(Vtb_wakeup___024root* vlSelf);
VlCoroutine Vtb_wakeup___024root___eval_initial__TOP__Vtiming__0(Vtb_wakeup___024root* vlSelf);
VlCoroutine Vtb_wakeup___024root___eval_initial__TOP__Vtiming__1(Vtb_wakeup___024root* vlSelf);

void Vtb_wakeup___024root___eval_initial(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_initial\n"); );
    // Body
    Vtb_wakeup___024root___eval_initial__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[1U] = 1U;
    Vtb_wakeup___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vtb_wakeup___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__tb_wakeup__DOT__clk__0 
        = vlSelf->tb_wakeup__DOT__clk;
}

VL_INLINE_OPT VlCoroutine Vtb_wakeup___024root___eval_initial__TOP__Vtiming__0(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0x2710ULL, 
                                           nullptr, 
                                           "sim/tb_wakeup.sv", 
                                           49);
        vlSelf->tb_wakeup__DOT__clk = 1U;
        vlSelf->tb_wakeup__DOT__cycle_count = ((IData)(1U) 
                                               + vlSelf->tb_wakeup__DOT__cycle_count);
        co_await vlSelf->__VdlySched.delay(0x2710ULL, 
                                           nullptr, 
                                           "sim/tb_wakeup.sv", 
                                           51);
        vlSelf->tb_wakeup__DOT__clk = 0U;
    }
}

VL_INLINE_OPT VlCoroutine Vtb_wakeup___024root___eval_initial__TOP__Vtiming__1(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Init
    CData/*3:0*/ __Vtask_tb_wakeup__DOT__dispatch_entry__3__dep_mask;
    __Vtask_tb_wakeup__DOT__dispatch_entry__3__dep_mask = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__4__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__4__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__4__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__5__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__5__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__5__condition = 0;
    IData/*31:0*/ __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i;
    __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__8__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__8__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__8__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__9__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__9__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__9__condition = 0;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__retire_entry_task__11__entry;
    __Vtask_tb_wakeup__DOT__retire_entry_task__11__entry = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__12__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__12__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__12__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__13__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__13__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__13__condition = 0;
    CData/*3:0*/ __Vtask_tb_wakeup__DOT__dispatch_entry__15__dep_mask;
    __Vtask_tb_wakeup__DOT__dispatch_entry__15__dep_mask = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__16__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__16__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__16__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__17__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__17__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__17__condition = 0;
    IData/*31:0*/ __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i;
    __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i = 0;
    CData/*3:0*/ __Vtask_tb_wakeup__DOT__set_ready__19__mask;
    __Vtask_tb_wakeup__DOT__set_ready__19__mask = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__20__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__20__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__20__condition = 0;
    CData/*3:0*/ __Vtask_tb_wakeup__DOT__set_ready__21__mask;
    __Vtask_tb_wakeup__DOT__set_ready__21__mask = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__22__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__22__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__22__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__23__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__23__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__23__condition = 0;
    CData/*3:0*/ __Vtask_tb_wakeup__DOT__dispatch_entry__25__dep_mask;
    __Vtask_tb_wakeup__DOT__dispatch_entry__25__dep_mask = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__26__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__26__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__26__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__27__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__27__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__27__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__29__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__29__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__29__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__30__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__30__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__30__condition = 0;
    IData/*31:0*/ __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i;
    __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i = 0;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry;
    __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__34__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__34__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__34__condition = 0;
    CData/*3:0*/ __Vtask_tb_wakeup__DOT__dispatch_entry__36__dep_mask;
    __Vtask_tb_wakeup__DOT__dispatch_entry__36__dep_mask = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__37__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__37__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__37__condition = 0;
    std::string __Vtask_tb_wakeup__DOT__check_assertion__38__test_name;
    CData/*0:0*/ __Vtask_tb_wakeup__DOT__check_assertion__38__condition;
    __Vtask_tb_wakeup__DOT__check_assertion__38__condition = 0;
    // Body
    vlSelf->tb_wakeup__DOT__clk = 0U;
    vlSelf->tb_wakeup__DOT__rst = 1U;
    vlSelf->tb_wakeup__DOT__disp_valid = 0U;
    vlSelf->tb_wakeup__DOT__dependency_mask = 0U;
    vlSelf->tb_wakeup__DOT__grant = 0U;
    vlSelf->tb_wakeup__DOT__grant_valid = 0U;
    vlSelf->tb_wakeup__DOT__ready_mask = 0U;
    vlSelf->tb_wakeup__DOT__retire_entry = 0U;
    vlSelf->tb_wakeup__DOT__retire_valid = 0U;
    VL_WRITEF("=== Wakeup Module Testbench ===\nRS_ENTRIES: 2, NUM_FUS: 2\n");
    VL_WRITEF("\n[RESET] Resetting DUT\n");
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       93);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_wakeup__DOT__rst = 1U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       95);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       96);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_wakeup__DOT__rst = 0U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       98);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("[RESET] Reset complete\n\n");
    VL_WRITEF("\n[Test 1] Dispatch entry with no dependencies\n");
    __Vtask_tb_wakeup__DOT__dispatch_entry__3__dep_mask = 0U;
    vlSelf->tb_wakeup__DOT__disp_valid = 1U;
    vlSelf->tb_wakeup__DOT__dependency_mask = __Vtask_tb_wakeup__DOT__dispatch_entry__3__dep_mask;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       108);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("  Dispatched to entry: %0#, Full: %0b, Reqs: %b\n",
              1,vlSelf->tb_wakeup__DOT__free_entry_out,
              1,(IData)(vlSelf->tb_wakeup__DOT__full_out),
              2,vlSelf->tb_wakeup__DOT__reqs);
    vlSelf->tb_wakeup__DOT__disp_valid = 0U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       111);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h2f6213ce__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       164);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    __Vtask_tb_wakeup__DOT__check_assertion__4__condition 
        = (1U & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid));
    __Vtask_tb_wakeup__DOT__check_assertion__4__test_name = 
        std::string{"Entry should be valid after dispatch"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__4__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__4__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__4__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__5__condition 
        = (1U & (IData)(vlSelf->tb_wakeup__DOT__reqs));
    __Vtask_tb_wakeup__DOT__check_assertion__5__test_name = 
        std::string{"Should have request after dispatch with no deps"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__5__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__5__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__5__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_WRITEF("\n[Test 2] Grant ready entry\n");
    vlSelf->tb_wakeup__DOT__test_grant_ready__Vstatic__granted_entry 
        = vlSelf->tb_wakeup__DOT__grant;
    if (VL_UNLIKELY((0U != (IData)(vlSelf->tb_wakeup__DOT__reqs)))) {
        vlSelf->tb_wakeup__DOT__grant_valid = 1U;
        vlSelf->tb_wakeup__DOT__grant = 0U;
        __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i = 0U;
        {
            while (VL_GTS_III(32, 2U, __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i)) {
                if ((1U & ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                           >> (1U & __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i)))) {
                    vlSelf->tb_wakeup__DOT__grant = 
                        (1U & __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i);
                    goto __Vlabel1;
                }
                __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i 
                    = ((IData)(1U) + __Vtask_tb_wakeup__DOT__grant_entry__7__unnamedblk1__DOT__i);
            }
            __Vlabel1: ;
        }
        VL_WRITEF("  Granting entry: %0#\n",1,vlSelf->tb_wakeup__DOT__grant);
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           128);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->tb_wakeup__DOT__grant_valid = 0U;
        VL_WRITEF("  Reqs after grant: %b\n",2,vlSelf->tb_wakeup__DOT__reqs);
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           131);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    } else {
        VL_WRITEF("  No requests to grant\n");
    }
    __Vtask_tb_wakeup__DOT__check_assertion__8__condition 
        = (1U & (~ ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                    >> (IData)(vlSelf->tb_wakeup__DOT__test_grant_ready__Vstatic__granted_entry))));
    __Vtask_tb_wakeup__DOT__check_assertion__8__test_name = 
        std::string{"Granted entry should not request anymore"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__8__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__8__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__8__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__9__condition 
        = (1U & ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted) 
                 >> (IData)(vlSelf->tb_wakeup__DOT__test_grant_ready__Vstatic__granted_entry)));
    __Vtask_tb_wakeup__DOT__check_assertion__9__test_name = 
        std::string{"entry_granted flag should be set"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__9__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__9__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__9__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_WRITEF("\n[Test 3] Retire completed entry\n");
    vlSelf->tb_wakeup__DOT__test_retire__Vstatic__retired_entry 
        = vlSelf->tb_wakeup__DOT__grant;
    __Vtask_tb_wakeup__DOT__retire_entry_task__11__entry 
        = vlSelf->tb_wakeup__DOT__grant;
    vlSelf->tb_wakeup__DOT__retire_valid = 1U;
    vlSelf->tb_wakeup__DOT__retire_entry = __Vtask_tb_wakeup__DOT__retire_entry_task__11__entry;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       143);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_wakeup__DOT__retire_valid = 0U;
    VL_WRITEF("  Entry %0# retired, Full: %0b\n",1,
              __Vtask_tb_wakeup__DOT__retire_entry_task__11__entry,
              1,(IData)(vlSelf->tb_wakeup__DOT__full_out));
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       146);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    __Vtask_tb_wakeup__DOT__check_assertion__12__condition 
        = (1U & (~ ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid) 
                    >> (IData)(vlSelf->tb_wakeup__DOT__test_retire__Vstatic__retired_entry))));
    __Vtask_tb_wakeup__DOT__check_assertion__12__test_name = 
        std::string{"Retired entry should be invalid"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__12__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__12__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__12__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__13__condition 
        = (1U & (~ ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted) 
                    >> (IData)(vlSelf->tb_wakeup__DOT__test_retire__Vstatic__retired_entry))));
    __Vtask_tb_wakeup__DOT__check_assertion__13__test_name = 
        std::string{"Retired entry should not be granted"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__13__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__13__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__13__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_WRITEF("\n[Test 4] Dispatch entry with dependencies\n");
    vlSelf->tb_wakeup__DOT__test_dispatch_with_deps__Vstatic__dispatched_entry 
        = vlSelf->tb_wakeup__DOT__free_entry_out;
    __Vtask_tb_wakeup__DOT__dispatch_entry__15__dep_mask = 3U;
    vlSelf->tb_wakeup__DOT__disp_valid = 1U;
    vlSelf->tb_wakeup__DOT__dependency_mask = __Vtask_tb_wakeup__DOT__dispatch_entry__15__dep_mask;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       108);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("  Dispatched to entry: %0#, Full: %0b, Reqs: %b\n",
              1,vlSelf->tb_wakeup__DOT__free_entry_out,
              1,(IData)(vlSelf->tb_wakeup__DOT__full_out),
              2,vlSelf->tb_wakeup__DOT__reqs);
    vlSelf->tb_wakeup__DOT__disp_valid = 0U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       111);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("  Reqs (blocked by deps): %b\n",2,vlSelf->tb_wakeup__DOT__reqs);
    __Vtask_tb_wakeup__DOT__check_assertion__16__condition 
        = (1U & (~ ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                    >> (IData)(vlSelf->tb_wakeup__DOT__test_dispatch_with_deps__Vstatic__dispatched_entry))));
    __Vtask_tb_wakeup__DOT__check_assertion__16__test_name = 
        std::string{"Entry with dependencies should not request"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__16__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__16__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__16__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__17__condition 
        = (0U != vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
           [vlSelf->tb_wakeup__DOT__test_dispatch_with_deps__Vstatic__dispatched_entry]);
    __Vtask_tb_wakeup__DOT__check_assertion__17__test_name = 
        std::string{"Dependency matrix should be non-zero"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__17__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__17__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__17__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i = 0U;
    {
        while (VL_GTS_III(32, 2U, __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i)) {
            if ((((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid) 
                  >> (1U & __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i)) 
                 & (0U != vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
                    [(1U & __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i)]))) {
                vlSelf->tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry 
                    = (1U & __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i);
                goto __Vlabel2;
            }
            __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i 
                = ((IData)(1U) + __Vtask_tb_wakeup__DOT__test_clear_dependencies__18__unnamedblk2__DOT__i);
        }
        __Vlabel2: ;
    }
    VL_WRITEF("\n[Test 5] Clear one dependency\n");
    __Vtask_tb_wakeup__DOT__set_ready__19__mask = 1U;
    vlSelf->tb_wakeup__DOT__ready_mask = __Vtask_tb_wakeup__DOT__set_ready__19__mask;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       154);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("  Ready mask updated: %b, Reqs: %b\n",
              4,vlSelf->tb_wakeup__DOT__ready_mask,
              2,(IData)(vlSelf->tb_wakeup__DOT__reqs));
    __Vtask_tb_wakeup__DOT__check_assertion__20__condition 
        = (3U != vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
           [vlSelf->tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry]);
    __Vtask_tb_wakeup__DOT__check_assertion__20__test_name = 
        std::string{"Dependencies should be partially cleared"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__20__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__20__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__20__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_WRITEF("\n[Test 6] Clear remaining dependency\n");
    __Vtask_tb_wakeup__DOT__set_ready__21__mask = 3U;
    vlSelf->tb_wakeup__DOT__ready_mask = __Vtask_tb_wakeup__DOT__set_ready__21__mask;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       154);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("  Ready mask updated: %b, Reqs: %b\n",
              4,vlSelf->tb_wakeup__DOT__ready_mask,
              2,(IData)(vlSelf->tb_wakeup__DOT__reqs));
    __Vtask_tb_wakeup__DOT__check_assertion__22__condition 
        = (0U == vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
           [vlSelf->tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry]);
    __Vtask_tb_wakeup__DOT__check_assertion__22__test_name = 
        std::string{"All dependencies should be cleared"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__22__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__22__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__22__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__23__condition 
        = (1U & ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                 >> (IData)(vlSelf->tb_wakeup__DOT__test_clear_dependencies__Vstatic__dep_entry)));
    __Vtask_tb_wakeup__DOT__check_assertion__23__test_name = 
        std::string{"Entry should now request"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__23__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__23__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__23__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    vlSelf->tb_wakeup__DOT__ready_mask = 0U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       229);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("\n[Test 7] Fill reservation station\n");
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_wakeup__DOT__full_out))))) {
        __Vtask_tb_wakeup__DOT__dispatch_entry__25__dep_mask = 0U;
        vlSelf->tb_wakeup__DOT__disp_valid = 1U;
        vlSelf->tb_wakeup__DOT__dependency_mask = __Vtask_tb_wakeup__DOT__dispatch_entry__25__dep_mask;
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           108);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        VL_WRITEF("  Dispatched to entry: %0#, Full: %0b, Reqs: %b\n",
                  1,vlSelf->tb_wakeup__DOT__free_entry_out,
                  1,(IData)(vlSelf->tb_wakeup__DOT__full_out),
                  2,vlSelf->tb_wakeup__DOT__reqs);
        vlSelf->tb_wakeup__DOT__disp_valid = 0U;
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           111);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    }
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->tb_wakeup__DOT__full_out))))) {
        __Vtask_tb_wakeup__DOT__dispatch_entry__25__dep_mask = 0U;
        vlSelf->tb_wakeup__DOT__disp_valid = 1U;
        vlSelf->tb_wakeup__DOT__dependency_mask = __Vtask_tb_wakeup__DOT__dispatch_entry__25__dep_mask;
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           108);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        VL_WRITEF("  Dispatched to entry: %0#, Full: %0b, Reqs: %b\n",
                  1,vlSelf->tb_wakeup__DOT__free_entry_out,
                  1,(IData)(vlSelf->tb_wakeup__DOT__full_out),
                  2,vlSelf->tb_wakeup__DOT__reqs);
        vlSelf->tb_wakeup__DOT__disp_valid = 0U;
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           111);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    }
    VL_WRITEF("  RS Full: %0b, Reqs: %b\n",1,vlSelf->tb_wakeup__DOT__full_out,
              2,(IData)(vlSelf->tb_wakeup__DOT__reqs));
    vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count = 0U;
    if ((1U & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid))) {
        vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count 
            = ((IData)(1U) + vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count);
    }
    if ((2U & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid))) {
        vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count 
            = ((IData)(1U) + vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__26__condition 
        = (2U == vlSelf->tb_wakeup__DOT__test_fill_rs__Vstatic__valid_count);
    __Vtask_tb_wakeup__DOT__check_assertion__26__test_name = 
        std::string{"All RS entries should be valid"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__26__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__26__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__26__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__27__condition 
        = vlSelf->tb_wakeup__DOT__full_out;
    __Vtask_tb_wakeup__DOT__check_assertion__27__test_name = 
        std::string{"RS should report full"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__27__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__27__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__27__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_WRITEF("\n[Test 8] Attempt dispatch when full\n");
    vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before = 0U;
    if ((1U & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid))) {
        vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before 
            = ((IData)(1U) + vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before);
    }
    vlSelf->tb_wakeup__DOT__disp_valid = 1U;
    vlSelf->tb_wakeup__DOT__dependency_mask = 0U;
    if ((2U & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid))) {
        vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before 
            = ((IData)(1U) + vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before);
    }
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       267);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("  Full: %0b (should reject dispatch)\n",
              1,vlSelf->tb_wakeup__DOT__full_out);
    vlSelf->tb_wakeup__DOT__disp_valid = 0U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       270);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after = 0U;
    if ((1U & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid))) {
        vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after 
            = ((IData)(1U) + vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after);
    }
    if ((2U & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid))) {
        vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after 
            = ((IData)(1U) + vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__29__condition 
        = (vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_before 
           == vlSelf->tb_wakeup__DOT__test_dispatch_when_full__Vstatic__valid_count_after);
    __Vtask_tb_wakeup__DOT__check_assertion__29__test_name = 
        std::string{"No new entry should be added when full"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__29__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__29__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__29__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__30__condition 
        = vlSelf->tb_wakeup__DOT__full_out;
    __Vtask_tb_wakeup__DOT__check_assertion__30__test_name = 
        std::string{"RS should still be full"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__30__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__30__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__30__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_WRITEF("\n[Test 9] Grant and retire multiple entries to free space\n");
    if (VL_UNLIKELY((0U != (IData)(vlSelf->tb_wakeup__DOT__reqs)))) {
        if (VL_UNLIKELY((0U != (IData)(vlSelf->tb_wakeup__DOT__reqs)))) {
            vlSelf->tb_wakeup__DOT__grant_valid = 1U;
            vlSelf->tb_wakeup__DOT__grant = 0U;
            __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i = 0U;
            {
                while (VL_GTS_III(32, 2U, __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i)) {
                    if ((1U & ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                               >> (1U & __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i)))) {
                        vlSelf->tb_wakeup__DOT__grant 
                            = (1U & __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i);
                        goto __Vlabel3;
                    }
                    __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i 
                        = ((IData)(1U) + __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i);
                }
                __Vlabel3: ;
            }
            VL_WRITEF("  Granting entry: %0#\n",1,vlSelf->tb_wakeup__DOT__grant);
            co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                               nullptr, 
                                                               "@(negedge tb_wakeup.clk)", 
                                                               "sim/tb_wakeup.sv", 
                                                               128);
            vlSelf->__Vm_traceActivity[2U] = 1U;
            vlSelf->tb_wakeup__DOT__grant_valid = 0U;
            VL_WRITEF("  Reqs after grant: %b\n",2,
                      vlSelf->tb_wakeup__DOT__reqs);
            co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                               nullptr, 
                                                               "@(negedge tb_wakeup.clk)", 
                                                               "sim/tb_wakeup.sv", 
                                                               131);
            vlSelf->__Vm_traceActivity[2U] = 1U;
        } else {
            VL_WRITEF("  No requests to grant\n");
        }
        __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry 
            = vlSelf->tb_wakeup__DOT__grant;
        vlSelf->tb_wakeup__DOT__retire_valid = 1U;
        vlSelf->tb_wakeup__DOT__retire_entry = __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry;
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           143);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->tb_wakeup__DOT__retire_valid = 0U;
        VL_WRITEF("  Entry %0# retired, Full: %0b\n",
                  1,__Vtask_tb_wakeup__DOT__retire_entry_task__33__entry,
                  1,(IData)(vlSelf->tb_wakeup__DOT__full_out));
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           146);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    }
    if (VL_UNLIKELY((0U != (IData)(vlSelf->tb_wakeup__DOT__reqs)))) {
        if (VL_UNLIKELY((0U != (IData)(vlSelf->tb_wakeup__DOT__reqs)))) {
            vlSelf->tb_wakeup__DOT__grant_valid = 1U;
            vlSelf->tb_wakeup__DOT__grant = 0U;
            __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i = 0U;
            {
                while (VL_GTS_III(32, 2U, __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i)) {
                    if ((1U & ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                               >> (1U & __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i)))) {
                        vlSelf->tb_wakeup__DOT__grant 
                            = (1U & __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i);
                        goto __Vlabel4;
                    }
                    __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i 
                        = ((IData)(1U) + __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i);
                }
                __Vlabel4: ;
            }
            VL_WRITEF("  Granting entry: %0#\n",1,vlSelf->tb_wakeup__DOT__grant);
            co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                               nullptr, 
                                                               "@(negedge tb_wakeup.clk)", 
                                                               "sim/tb_wakeup.sv", 
                                                               128);
            vlSelf->__Vm_traceActivity[2U] = 1U;
            vlSelf->tb_wakeup__DOT__grant_valid = 0U;
            VL_WRITEF("  Reqs after grant: %b\n",2,
                      vlSelf->tb_wakeup__DOT__reqs);
            co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                               nullptr, 
                                                               "@(negedge tb_wakeup.clk)", 
                                                               "sim/tb_wakeup.sv", 
                                                               131);
            vlSelf->__Vm_traceActivity[2U] = 1U;
        } else {
            VL_WRITEF("  No requests to grant\n");
        }
        __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry 
            = vlSelf->tb_wakeup__DOT__grant;
        vlSelf->tb_wakeup__DOT__retire_valid = 1U;
        vlSelf->tb_wakeup__DOT__retire_entry = __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry;
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           143);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->tb_wakeup__DOT__retire_valid = 0U;
        VL_WRITEF("  Entry %0# retired, Full: %0b\n",
                  1,__Vtask_tb_wakeup__DOT__retire_entry_task__33__entry,
                  1,(IData)(vlSelf->tb_wakeup__DOT__full_out));
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           146);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    }
    if (VL_UNLIKELY((0U != (IData)(vlSelf->tb_wakeup__DOT__reqs)))) {
        if (VL_UNLIKELY((0U != (IData)(vlSelf->tb_wakeup__DOT__reqs)))) {
            vlSelf->tb_wakeup__DOT__grant_valid = 1U;
            vlSelf->tb_wakeup__DOT__grant = 0U;
            __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i = 0U;
            {
                while (VL_GTS_III(32, 2U, __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i)) {
                    if ((1U & ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                               >> (1U & __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i)))) {
                        vlSelf->tb_wakeup__DOT__grant 
                            = (1U & __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i);
                        goto __Vlabel5;
                    }
                    __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i 
                        = ((IData)(1U) + __Vtask_tb_wakeup__DOT__grant_entry__32__unnamedblk1__DOT__i);
                }
                __Vlabel5: ;
            }
            VL_WRITEF("  Granting entry: %0#\n",1,vlSelf->tb_wakeup__DOT__grant);
            co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                               nullptr, 
                                                               "@(negedge tb_wakeup.clk)", 
                                                               "sim/tb_wakeup.sv", 
                                                               128);
            vlSelf->__Vm_traceActivity[2U] = 1U;
            vlSelf->tb_wakeup__DOT__grant_valid = 0U;
            VL_WRITEF("  Reqs after grant: %b\n",2,
                      vlSelf->tb_wakeup__DOT__reqs);
            co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                               nullptr, 
                                                               "@(negedge tb_wakeup.clk)", 
                                                               "sim/tb_wakeup.sv", 
                                                               131);
            vlSelf->__Vm_traceActivity[2U] = 1U;
        } else {
            VL_WRITEF("  No requests to grant\n");
        }
        __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry 
            = vlSelf->tb_wakeup__DOT__grant;
        vlSelf->tb_wakeup__DOT__retire_valid = 1U;
        vlSelf->tb_wakeup__DOT__retire_entry = __Vtask_tb_wakeup__DOT__retire_entry_task__33__entry;
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           143);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->tb_wakeup__DOT__retire_valid = 0U;
        VL_WRITEF("  Entry %0# retired, Full: %0b\n",
                  1,__Vtask_tb_wakeup__DOT__retire_entry_task__33__entry,
                  1,(IData)(vlSelf->tb_wakeup__DOT__full_out));
        co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(negedge tb_wakeup.clk)", 
                                                           "sim/tb_wakeup.sv", 
                                                           146);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    }
    VL_WRITEF("  RS Full after retires: %0b\n",1,vlSelf->tb_wakeup__DOT__full_out);
    __Vtask_tb_wakeup__DOT__check_assertion__34__condition 
        = (1U & (~ (IData)(vlSelf->tb_wakeup__DOT__full_out)));
    __Vtask_tb_wakeup__DOT__check_assertion__34__test_name = 
        std::string{"RS should no longer be full"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__34__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__34__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__34__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_WRITEF("\n[Test 10] Dispatch after freeing entries\n");
    vlSelf->tb_wakeup__DOT__test_dispatch_after_free__Vstatic__new_entry 
        = vlSelf->tb_wakeup__DOT__free_entry_out;
    __Vtask_tb_wakeup__DOT__dispatch_entry__36__dep_mask = 0U;
    vlSelf->tb_wakeup__DOT__disp_valid = 1U;
    vlSelf->tb_wakeup__DOT__dependency_mask = __Vtask_tb_wakeup__DOT__dispatch_entry__36__dep_mask;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       108);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("  Dispatched to entry: %0#, Full: %0b, Reqs: %b\n",
              1,vlSelf->tb_wakeup__DOT__free_entry_out,
              1,(IData)(vlSelf->tb_wakeup__DOT__full_out),
              2,vlSelf->tb_wakeup__DOT__reqs);
    vlSelf->tb_wakeup__DOT__disp_valid = 0U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       111);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    __Vtask_tb_wakeup__DOT__check_assertion__37__condition 
        = (1U & ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid) 
                 >> (IData)(vlSelf->tb_wakeup__DOT__test_dispatch_after_free__Vstatic__new_entry)));
    __Vtask_tb_wakeup__DOT__check_assertion__37__test_name = 
        std::string{"Should successfully dispatch to freed entry"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__37__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__37__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__37__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    __Vtask_tb_wakeup__DOT__check_assertion__38__condition 
        = (1U & ((IData)(vlSelf->tb_wakeup__DOT__reqs) 
                 >> (IData)(vlSelf->tb_wakeup__DOT__test_dispatch_after_free__Vstatic__new_entry)));
    __Vtask_tb_wakeup__DOT__check_assertion__38__test_name = 
        std::string{"New entry should request"};
    if (__Vtask_tb_wakeup__DOT__check_assertion__38__condition) {
        VL_WRITEF("  [\033[32mPASS\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__38__test_name));
        vlSelf->tb_wakeup__DOT__pass_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__pass_count);
    } else {
        VL_WRITEF("  [\033[31mFAIL\033[0m] %@\n",-1,
                  &(__Vtask_tb_wakeup__DOT__check_assertion__38__test_name));
        vlSelf->tb_wakeup__DOT__fail_count = ((IData)(1U) 
                                              + vlSelf->tb_wakeup__DOT__fail_count);
    }
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       329);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       329);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       329);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       329);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_h2f62138b__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_wakeup.clk)", 
                                                       "sim/tb_wakeup.sv", 
                                                       329);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("\n=== Testbench Complete ===\nTotal Tests: %0d\n",
              32,(vlSelf->tb_wakeup__DOT__pass_count 
                  + vlSelf->tb_wakeup__DOT__fail_count));
    if ((0U == vlSelf->tb_wakeup__DOT__fail_count)) {
        VL_WRITEF("[\033[32mALL TESTS PASSED\033[0m] %0d/%0d passed\n",
                  32,vlSelf->tb_wakeup__DOT__pass_count,
                  32,(vlSelf->tb_wakeup__DOT__pass_count 
                      + vlSelf->tb_wakeup__DOT__fail_count));
    } else {
        VL_WRITEF("[\033[31mSOME TESTS FAILED\033[0m] %0d passed, %0d failed\n",
                  32,vlSelf->tb_wakeup__DOT__pass_count,
                  32,vlSelf->tb_wakeup__DOT__fail_count);
    }
    VL_FINISH_MT("sim/tb_wakeup.sv", 338, "");
    vlSelf->__Vm_traceActivity[2U] = 1U;
}

void Vtb_wakeup___024root___eval_act(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vtb_wakeup___024root___nba_sequent__TOP__0(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0 = 0;
    CData/*0:0*/ __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0;
    __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0 = 0;
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v1;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v1 = 0;
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v2;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v2 = 0;
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v3;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v3 = 0;
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v4;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v4 = 0;
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v5;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v5 = 0;
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v6;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v6 = 0;
    CData/*1:0*/ __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v7;
    __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v7 = 0;
    CData/*3:0*/ __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8;
    __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8 = 0;
    CData/*0:0*/ __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8;
    __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8 = 0;
    CData/*3:0*/ __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v9;
    __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v9 = 0;
    // Body
    __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0 = 0U;
    __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8 = 0U;
    if (vlSelf->tb_wakeup__DOT__rst) {
        vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__unnamedblk2__DOT__j = 4U;
        vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk1__DOT__i = 2U;
        __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0 = 1U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0 = 0U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v1 = 1U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v2 = 2U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v3 = 3U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v4 = 0U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v5 = 1U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v6 = 2U;
        __Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v7 = 3U;
        vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted = 0U;
        vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid = 0U;
    } else {
        if ((((IData)(vlSelf->tb_wakeup__DOT__disp_valid) 
              & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__full))) 
             & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__free_entry)))) {
            __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8 
                = ((IData)(vlSelf->tb_wakeup__DOT__dependency_mask) 
                   & (~ (IData)(vlSelf->tb_wakeup__DOT__ready_mask)));
            vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid 
                = (1U | (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid));
        } else {
            __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8 
                = (vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
                   [0U] & (~ (IData)(vlSelf->tb_wakeup__DOT__ready_mask)));
        }
        __Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8 = 1U;
        if ((((IData)(vlSelf->tb_wakeup__DOT__disp_valid) 
              & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__full))) 
             & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__free_entry))) {
            __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v9 
                = ((IData)(vlSelf->tb_wakeup__DOT__dependency_mask) 
                   & (~ (IData)(vlSelf->tb_wakeup__DOT__ready_mask)));
            vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid 
                = (2U | (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid));
        } else {
            __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v9 
                = (vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
                   [1U] & (~ (IData)(vlSelf->tb_wakeup__DOT__ready_mask)));
        }
        if (vlSelf->tb_wakeup__DOT__grant_valid) {
            vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted 
                = ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted) 
                   | (3U & ((IData)(1U) << (IData)(vlSelf->tb_wakeup__DOT__grant))));
        }
        if (vlSelf->tb_wakeup__DOT__retire_valid) {
            vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted 
                = ((~ ((IData)(1U) << (IData)(vlSelf->tb_wakeup__DOT__retire_entry))) 
                   & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted));
            vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid 
                = ((~ ((IData)(1U) << (IData)(vlSelf->tb_wakeup__DOT__retire_entry))) 
                   & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid));
        }
    }
    if ((1U & (~ (IData)(vlSelf->tb_wakeup__DOT__rst)))) {
        vlSelf->tb_wakeup__DOT__dut__DOT__unnamedblk3__DOT__i = 2U;
    }
    if (__Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0) {
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v0))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [0U]);
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v1))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [0U]);
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v2))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [0U]);
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[0U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v3))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [0U]);
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v4))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [1U]);
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v5))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [1U]);
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v6))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [1U]);
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[1U] 
            = ((~ ((IData)(1U) << (IData)(__Vdlyvlsb__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v7))) 
               & vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
               [1U]);
    }
    if (__Vdlyvset__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8) {
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[0U] 
            = __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v8;
        vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row[1U] 
            = __Vdlyvval__tb_wakeup__DOT__dut__DOT__dependency_matrix_row__v9;
    }
    vlSelf->tb_wakeup__DOT__reqs = ((2U & (IData)(vlSelf->tb_wakeup__DOT__reqs)) 
                                    | (((0U == vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
                                         [0U]) & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid)) 
                                       & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted))));
    vlSelf->tb_wakeup__DOT__reqs = ((1U & (IData)(vlSelf->tb_wakeup__DOT__reqs)) 
                                    | (0xfffffffeU 
                                       & ((((0U == 
                                             vlSelf->tb_wakeup__DOT__dut__DOT__dependency_matrix_row
                                             [1U]) 
                                            << 1U) 
                                           & (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid)) 
                                          & ((~ ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_granted) 
                                                 >> 1U)) 
                                             << 1U))));
    vlSelf->tb_wakeup__DOT__dut__DOT__free_entry = 0U;
    vlSelf->tb_wakeup__DOT__dut__DOT__full = 1U;
    vlSelf->tb_wakeup__DOT__dut__DOT__flag = 0U;
    if ((1U & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid)))) {
        vlSelf->tb_wakeup__DOT__dut__DOT__free_entry = 0U;
        vlSelf->tb_wakeup__DOT__dut__DOT__full = 0U;
        vlSelf->tb_wakeup__DOT__dut__DOT__flag = 1U;
    }
    if ((1U & ((~ ((IData)(vlSelf->tb_wakeup__DOT__dut__DOT__entry_valid) 
                   >> 1U)) & (~ (IData)(vlSelf->tb_wakeup__DOT__dut__DOT__flag))))) {
        vlSelf->tb_wakeup__DOT__dut__DOT__free_entry = 1U;
        vlSelf->tb_wakeup__DOT__dut__DOT__full = 0U;
        vlSelf->tb_wakeup__DOT__dut__DOT__flag = 1U;
    }
    vlSelf->tb_wakeup__DOT__free_entry_out = vlSelf->tb_wakeup__DOT__dut__DOT__free_entry;
    vlSelf->tb_wakeup__DOT__full_out = vlSelf->tb_wakeup__DOT__dut__DOT__full;
}

void Vtb_wakeup___024root___eval_nba(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_wakeup___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
}

void Vtb_wakeup___024root___timing_resume(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___timing_resume\n"); );
    // Body
    if ((4ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_h2f62138b__0.resume("@(negedge tb_wakeup.clk)");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_h2f6213ce__0.resume("@(posedge tb_wakeup.clk)");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vtb_wakeup___024root___timing_commit(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___timing_commit\n"); );
    // Body
    if ((! (4ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_h2f62138b__0.commit("@(negedge tb_wakeup.clk)");
    }
    if ((! (1ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_h2f6213ce__0.commit("@(posedge tb_wakeup.clk)");
    }
}

void Vtb_wakeup___024root___eval_triggers__act(Vtb_wakeup___024root* vlSelf);

bool Vtb_wakeup___024root___eval_phase__act(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<3> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtb_wakeup___024root___eval_triggers__act(vlSelf);
    Vtb_wakeup___024root___timing_commit(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vtb_wakeup___024root___timing_resume(vlSelf);
        Vtb_wakeup___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtb_wakeup___024root___eval_phase__nba(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtb_wakeup___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_wakeup___024root___dump_triggers__nba(Vtb_wakeup___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_wakeup___024root___dump_triggers__act(Vtb_wakeup___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_wakeup___024root___eval(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vtb_wakeup___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("sim/tb_wakeup.sv", 4, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vtb_wakeup___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("sim/tb_wakeup.sv", 4, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vtb_wakeup___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vtb_wakeup___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtb_wakeup___024root___eval_debug_assertions(Vtb_wakeup___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_wakeup__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_wakeup___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG

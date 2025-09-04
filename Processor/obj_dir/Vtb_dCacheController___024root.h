// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_dCacheController.h for the primary calling header

#ifndef VERILATED_VTB_DCACHECONTROLLER___024ROOT_H_
#define VERILATED_VTB_DCACHECONTROLLER___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"
class Vtb_dCacheController_ArbiterControllerIF;


class Vtb_dCacheController__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_dCacheController___024root final : public VerilatedModule {
  public:
    // CELLS
    Vtb_dCacheController_ArbiterControllerIF* __PVT__tb_dCacheController__DOT__arbiter_if;

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ tb_dCacheController__DOT__clk;
        CData/*0:0*/ tb_dCacheController__DOT__rst;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg0;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg1;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__raddr_valid_reg2;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg0;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__waddr_valid_reg1;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__rdata_valid;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__read_tag;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT____Vcellinp__tag_store0__csb1;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__repairing;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__repairing_next;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__repairing_prev;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__read_repair_request;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__write_miss_repair;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__write_enable;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb0_reg;
        CData/*7:0*/ tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr0_reg;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__csb1_reg;
        CData/*7:0*/ tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__addr1_reg;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb0_reg;
        CData/*7:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr0_reg;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__csb1_reg;
        CData/*7:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__addr1_reg;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb0_reg;
        CData/*7:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr0_reg;
        CData/*0:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__csb1_reg;
        CData/*7:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__addr1_reg;
        CData/*0:0*/ __Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0;
        CData/*0:0*/ __Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0;
        CData/*0:0*/ __Vdlyvset__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0;
        CData/*0:0*/ __VstlFirstIteration;
        CData/*0:0*/ __Vtrigprevexpr___TOP__tb_dCacheController__DOT__clk__0;
        CData/*0:0*/ __VactContinue;
        IData/*31:0*/ tb_dCacheController__DOT__cycle_count;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__read_miss_and_repair__Vstatic__unnamedblk1__DOT__repaired_block;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__read_hit__Vstatic__unnamedblk2__DOT__repaired_block;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__write_hit__Vstatic__unnamedblk3__DOT__new_block;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__write_miss__Vstatic__unnamedblk4__DOT__new_block;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__controller_dut__DOT__rdata_block;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__raddr_reg0;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__raddr_reg1;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__raddr_reg2;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__controller_dut__DOT__wdata_reg0;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__controller_dut__DOT__wdata_reg1;
        VlWide<4>/*127:0*/ tb_dCacheController__DOT__controller_dut__DOT__wmask_reg0;
        VlWide<4>/*127:0*/ tb_dCacheController__DOT__controller_dut__DOT__wmask_reg1;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__waddr_reg0;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__waddr_reg1;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__missed_addr;
        VlWide<4>/*127:0*/ tb_dCacheController__DOT__controller_dut__DOT__wmask_i;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__waddr_i;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__controller_dut__DOT__wdata_i;
        IData/*18:0*/ tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata_i;
        IData/*18:0*/ tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata;
        IData/*18:0*/ tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata;
        VlWide<4>/*127:0*/ tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__wmask0_reg;
        VlWide<32>/*1023:0*/ tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__din0_reg;
        IData/*31:0*/ tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__MEM_WRITE0__DOT__unnamedblk1__DOT__i;
        IData/*18:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__din0_reg;
        IData/*18:0*/ tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__din0_reg;
        VlWide<32>/*1023:0*/ __Vintraval_h9c92da6c__0;
        IData/*18:0*/ __Vintraval_h1c7847b3__0;
        IData/*18:0*/ __Vintraval_h60898a62__0;
    };
    struct {
        IData/*18:0*/ __Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__wblock_metadata__v0;
        IData/*18:0*/ __Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rblock_metadata__v0;
        VlWide<32>/*1023:0*/ __Vdlyvval__tb_dCacheController__DOT__controller_dut__DOT__rdata_block__v0;
        IData/*31:0*/ __VactIterCount;
        VlUnpacked<VlWide<32>/*1023:0*/, 256> tb_dCacheController__DOT__controller_dut__DOT__data_store__DOT__mem;
        VlUnpacked<IData/*18:0*/, 256> tb_dCacheController__DOT__controller_dut__DOT__tag_store0__DOT__mem;
        VlUnpacked<IData/*18:0*/, 256> tb_dCacheController__DOT__controller_dut__DOT__tag_store1__DOT__mem;
        VlUnpacked<CData/*0:0*/, 5> __Vm_traceActivity;
    };
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_h637d5c3a__0;
    VlTriggerScheduler __VtrigSched_h637d5607__0;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<4> __VactTriggered;
    VlTriggerVec<4> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtb_dCacheController__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_dCacheController___024root(Vtb_dCacheController__Syms* symsp, const char* v__name);
    ~Vtb_dCacheController___024root();
    VL_UNCOPYABLE(Vtb_dCacheController___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

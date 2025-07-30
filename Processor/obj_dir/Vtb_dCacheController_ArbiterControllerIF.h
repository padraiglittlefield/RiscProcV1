// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_dCacheController.h for the primary calling header

#ifndef VERILATED_VTB_DCACHECONTROLLER_ARBITERCONTROLLERIF_H_
#define VERILATED_VTB_DCACHECONTROLLER_ARBITERCONTROLLERIF_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_dCacheController__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_dCacheController_ArbiterControllerIF final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ raddr_valid;
    CData/*0:0*/ rdata_valid;
    CData/*0:0*/ waddr_valid;
    CData/*0:0*/ repair_resolved;
    IData/*31:0*/ raddr;
    IData/*31:0*/ waddr;
    VlWide<8>/*255:0*/ wdata;
    IData/*31:0*/ wmask;

    // INTERNAL VARIABLES
    Vtb_dCacheController__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_dCacheController_ArbiterControllerIF(Vtb_dCacheController__Syms* symsp, const char* v__name);
    ~Vtb_dCacheController_ArbiterControllerIF();
    VL_UNCOPYABLE(Vtb_dCacheController_ArbiterControllerIF);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};

std::string VL_TO_STRING(const Vtb_dCacheController_ArbiterControllerIF* obj);

#endif  // guard

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VTB_TOP_VERILATOR__SYMS_H_
#define _VTB_TOP_VERILATOR__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "Vtb_top_verilator.h"

// DPI TYPES for DPI Export callbacks (Internal use)
typedef void (*Vtb_top_verilator__Vcb_read_byte_t) (Vtb_top_verilator__Syms* __restrict vlSymsp, IData/*21:0*/ byte_addr, IData/*31:0*/ (&read_byte__Vfuncrtn));
typedef void (*Vtb_top_verilator__Vcb_write_byte_t) (Vtb_top_verilator__Syms* __restrict vlSymsp, IData/*21:0*/ byte_addr, CData/*7:0*/ val, CData/*7:0*/ (&other));

// SYMS CLASS
class Vtb_top_verilator__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vtb_top_verilator*             TOPp;
    
    // SCOPE NAMES
    VerilatedScope __Vscope_tb_top_verilator;
    VerilatedScope __Vscope_tb_top_verilator__cv32e40p_tb_wrapper_i__ram_i;
    VerilatedScope __Vscope_tb_top_verilator__cv32e40p_tb_wrapper_i__ram_i__dp_ram_i;
    
    // CREATORS
    Vtb_top_verilator__Syms(Vtb_top_verilator* topp, const char* namep);
    ~Vtb_top_verilator__Syms();
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard

// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtb_top_verilator__Syms.h"
#include "Vtb_top_verilator.h"



// FUNCTIONS
Vtb_top_verilator__Syms::~Vtb_top_verilator__Syms()
{
}

Vtb_top_verilator__Syms::Vtb_top_verilator__Syms(Vtb_top_verilator* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_activity(false)
    , __Vm_baseCode(0)
    , __Vm_didInit(false)
    // Setup submodule names
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    // Setup scopes
    __Vscope_tb_top_verilator.configure(this, name(), "tb_top_verilator", "tb_top_verilator", -12, VerilatedScope::SCOPE_OTHER);
    __Vscope_tb_top_verilator__cv32e40p_tb_wrapper_i__ram_i.configure(this, name(), "tb_top_verilator.cv32e40p_tb_wrapper_i.ram_i", "ram_i", -12, VerilatedScope::SCOPE_OTHER);
    __Vscope_tb_top_verilator__cv32e40p_tb_wrapper_i__ram_i__dp_ram_i.configure(this, name(), "tb_top_verilator.cv32e40p_tb_wrapper_i.ram_i.dp_ram_i", "dp_ram_i", -12, VerilatedScope::SCOPE_OTHER);
    // Setup export functions
    for (int __Vfinal=0; __Vfinal<2; __Vfinal++) {
        __Vscope_tb_top_verilator__cv32e40p_tb_wrapper_i__ram_i__dp_ram_i.exportInsert(__Vfinal, "read_byte", (void*)(&Vtb_top_verilator::__Vdpiexp_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__read_byte_TOP));
        __Vscope_tb_top_verilator__cv32e40p_tb_wrapper_i__ram_i__dp_ram_i.exportInsert(__Vfinal, "write_byte", (void*)(&Vtb_top_verilator::__Vdpiexp_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__write_byte_TOP));
    }
}

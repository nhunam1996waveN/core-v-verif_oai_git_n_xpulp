// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Prototypes for DPI import and export functions.
//
// Verilator includes this file in all generated .cpp files that use DPI functions.
// Manually include this file where DPI .c import functions are declared to ensure
// the C functions match the expectations of the DPI imports.

#include "svdpi.h"

#ifdef __cplusplus
extern "C" {
#endif
    
    
    // DPI EXPORTS
    // DPI export at /11users/vanoai/workspace/risc_v/oai_test_cva6_p/core-v-verif/cv32e40p/tb/core/dp_ram.sv:75:18
    extern int read_byte(const svLogicVecVal* byte_addr);
    // DPI export at /11users/vanoai/workspace/risc_v/oai_test_cva6_p/core-v-verif/cv32e40p/tb/core/dp_ram.sv:79:10
    extern void write_byte(const svLogicVecVal* byte_addr, const svLogicVecVal* val, svLogicVecVal* other);
    
#ifdef __cplusplus
}
#endif

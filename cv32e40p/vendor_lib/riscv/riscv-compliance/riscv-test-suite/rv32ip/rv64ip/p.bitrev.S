# See LICENSE for license details.
#*****************************************************************************
# p.bitrev.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
#

#define TEST_P_BITREV_BITMAN( testnum, inst, result, val1, val3, val2, addr) \
    TEST_CASE( testnum, addr, x30, result, \
      li  x1, MASK_XLEN(val1); \
      inst x30, x1, val3, val2; \
    )

#include "riscv_test.h"
#include "compliance_test.h"
#include "compliance_io.h"
#include "aw_test_macros.h"

RVTEST_RV64U
RV_COMPLIANCE_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_P_BITREV_BITMAN( 2 , p.bitrev, 0x02c48b3d, 0xabcd1234,0, 4, 0);
  TEST_P_BITREV_BITMAN( 3 , p.bitrev, 0x01c8473e, 0xabcd1234,1, 4, 4);
  TEST_P_BITREV_BITMAN( 4 , p.bitrev, 0x02720a7d, 0xabcd1234,2, 4, 8);
  TEST_P_BITREV_BITMAN( 5 , p.bitrev, 0x02c48b3d, 0xabcd1234,0, 4, 12);

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 4, 4, -1
RV_COMPLIANCE_DATA_END
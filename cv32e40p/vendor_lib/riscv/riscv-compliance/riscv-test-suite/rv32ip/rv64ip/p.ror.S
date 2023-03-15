# See LICENSE for license details.
#*****************************************************************************
# p.ror.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
#


#include "riscv_test.h"
#include "compliance_test.h"
#include "compliance_io.h"
#include "aw_test_macros.h"

RVTEST_RV64U
RV_COMPLIANCE_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2 , p.ror, 0x80007fff, 0x0000ffff, 1, 0);
  TEST_RR_OP( 3 , p.ror, 0xc0003fff,0x0000ffff, 2, 4);
  TEST_RR_OP( 4 , p.ror, 0xe0001fff,0x0000ffff, 3, 8);
  TEST_RR_OP( 5 , p.ror, 0xf0000fff,0x0000ffff, 4, 12);

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
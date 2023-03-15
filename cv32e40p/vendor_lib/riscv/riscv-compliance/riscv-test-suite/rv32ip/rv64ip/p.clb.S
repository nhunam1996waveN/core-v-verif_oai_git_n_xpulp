# See LICENSE for license details.
#*****************************************************************************
# p.clb.S
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
  TEST_R_OP( 2 , p.clb, 0,0xabcd1234, 0);
  TEST_R_OP( 3 , p.clb, 4,0xfbcd1234, 4);
  TEST_R_OP( 4 , p.cnt, 0x4,0xf0000000, 8);
  TEST_R_OP( 5 , p.cnt, 0x10,0xffff0000, 12);

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
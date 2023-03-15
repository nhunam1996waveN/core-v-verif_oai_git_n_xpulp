# See LICENSE for license details.
#*****************************************************************************
# p.insert.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
#


#define GET_RS2_4_to_0(rs2) (rs2 & 0x1f)
#define GET_RS2_9_to_5(rs2) ((rs2 >> 5) & 0x1f) 
#define RD_P_INSERT(rs1, Ls3, Ls2) ((rs1 & ((1 << (Ls3+1)) - 1)) << Ls2)

#define TEST_CASE_INSERT( testnum, addr, testreg, correctval, code... ) \
test_ ## testnum: \
    code; \
    li x29, MASK_XLEN(correctval); \
    or x29, x29, testreg; \
    li  TESTNUM, testnum; \
        SWSIG32(testnum, addr, testreg); \
    bne testreg, x29, fail;

#define TEST_P_INSERT_BITMAN( testnum, inst, rs1, Ls3, Ls2, addr) \
    TEST_CASE_INSERT( testnum, addr, x14, RD_P_INSERT(rs1, Ls3, Ls2), \
      li  x1, MASK_XLEN(rs1); \
      inst x14, x1, Ls3, Ls2; \
    )
#define TEST_P_INSERTR_BITMAN( testnum, inst, rs1, rs2, addr) \
    TEST_CASE_INSERT( testnum, addr, x14, RD_P_INSERT(rs1, GET_RS2_9_to_5(rs2), GET_RS2_4_to_0(rs2)), \
      li  x1, MASK_XLEN(rs1); \
      li  x2, MASK_XLEN(rs2); \
      inst x14, x1, x2; \
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
  TEST_P_INSERT_BITMAN( 2 , p.insert,0xabcd1234, 0x5, 0x1, 0);
  TEST_P_INSERT_BITMAN( 3 , p.insert,0xabcd1234, 0x3, 0x1, 4);
  TEST_P_INSERTR_BITMAN( 4 , p.insertr,0xabcd1234, 0xa0, 8);
  TEST_P_INSERTR_BITMAN( 5 , p.insertr,0xabcd1234, 0xa0, 12);

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
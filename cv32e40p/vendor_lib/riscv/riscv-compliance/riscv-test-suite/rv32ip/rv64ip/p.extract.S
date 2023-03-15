# See LICENSE for license details.
#*****************************************************************************
# p.extract.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
#

// #define RD_P_EXT(rs1, Is3, Is2) ((rs1 & ((1 << Is3) - 1) << Is2) >> Is2)
// #define RD_P_EXT(rs1, Is3, Is2) ((((rs1 >> (Is3+Is2)) & 0x1) == 0x1) ? ((rs1 & ((1 << Is3) - 1) << Is2) >> Is2) & (0xff & (0x1 << (Is3+Is2+1))) : ((rs1 & ((1 << Is3) - 1) << Is2) >> Is2))
#define RD_P_SEXT(rs1, Is3, Is2) (((rs1 & ((1 << (Is3+1)) - 1) << Is2) >> Is2) | (0xffffffff & (0xffffffff << (Is3+Is2))))
#define RD_P_ZEXT(rs1, Is3, Is2) (((rs1 & ((1 << (Is3+1)) - 1) << Is2) >> Is2))
#define CAL_SEXT(rs1, Is3, Is2) ((rs1 >> (Is3+Is2)) & 0x1)
#define GET_RS2_4_to_0(rs2) (rs2 & 0x1f)
#define GET_RS2_9_to_5(rs2) ((rs2 >> 5) & 0x1f)

#define TEST_CASE_SEXT( testnum, addr, testreg,select_ext, correctval, correctval_sext, code... ) \
test_ ## testnum: \
    code; \
    li x10, MASK_XLEN(select_ext); \
    bne x10, x0, sext_ ## testnum; \
    li x29, MASK_XLEN(correctval); \
    beq x10, x0, zext_ ## testnum; \
    sext_ ## testnum: li  x29, MASK_XLEN(correctval_sext); \
    zext_ ## testnum: ;\
    li  TESTNUM, testnum; \
        SWSIG32(testnum, addr, testreg); \
    bne testreg, x29, fail;

#define TEST_CASE_ZEXT( testnum, addr, testreg,select_ext, correctval, correctval_sext, code... ) \
test_ ## testnum: \
    code; \
    li x29, MASK_XLEN(correctval); \
    li  TESTNUM, testnum; \
        SWSIG32(testnum, addr, testreg); \
    bne testreg, x29, fail;

#define TEST_P_SEXT_BITMAN( testnum, inst, rs1, Is3, Is2, addr) \
    TEST_CASE_SEXT( testnum, addr, x14, CAL_SEXT(rs1, Is3, Is2), RD_P_ZEXT(rs1, Is3, Is2), RD_P_SEXT(rs1, Is3, Is2), \
      li  x1, MASK_XLEN(rs1); \
      inst x14, x1, Is3, Is2; \
    )

#define TEST_P_ZEXT_BITMAN( testnum, inst, rs1, Is3, Is2, addr) \
    TEST_CASE_ZEXT( testnum, addr, x14, CAL_SEXT(rs1, Is3, Is2), RD_P_ZEXT(rs1, Is3, Is2), RD_P_SEXT(rs1, Is3, Is2), \
      li  x1, MASK_XLEN(rs1); \
      inst x14, x1, Is3, Is2; \
    )

#define TEST_P_SEXTR_BITMAN( testnum, inst, rs1, rs2, addr) \
    TEST_CASE_SEXT( testnum, addr, x14, CAL_SEXT(rs1, GET_RS2_9_to_5(rs2), GET_RS2_4_to_0(rs2)), RD_P_ZEXT(rs1, GET_RS2_9_to_5(rs2), GET_RS2_4_to_0(rs2)), RD_P_SEXT(rs1, GET_RS2_9_to_5(rs2), GET_RS2_4_to_0(rs2)), \
      li x10,  GET_RS2_9_to_5(rs2); \
      li x11,  GET_RS2_4_to_0(rs2); \
      li  x1, MASK_XLEN(rs1); \
      li  x2, MASK_XLEN(rs2); \
      inst x14, x1, x2; \
    )

#define TEST_P_ZEXTR_BITMAN( testnum, inst, rs1, rs2, addr) \
    TEST_CASE_ZEXT( testnum, addr, x14, CAL_SEXT(rs1, GET_RS2_9_to_5(rs2), GET_RS2_4_to_0(rs2)), RD_P_ZEXT(rs1, GET_RS2_9_to_5(rs2), GET_RS2_4_to_0(rs2)), RD_P_SEXT(rs1, GET_RS2_9_to_5(rs2), GET_RS2_4_to_0(rs2)), \
      li x10,  GET_RS2_9_to_5(rs2); \
      li x11,  GET_RS2_4_to_0(rs2); \
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
  // inst x14, x2, x1, x3; \
  // #define TEST_RRR_OP( testnum, inst, result,      val2,      val1,       val3,       addr) \
  //         TEST_RRR_OP( 2      , cmix, 0x4f4e07bb, 0xffffffff, 0x4f4e07bb, 0xffffffff, 8); 
  // p.extract rD, rs1, Is3, Is2 rD = Sext((rs1 & ((1 << Is3) – 1) << Is2) >> Is2)
  // TEST_P_SEXT_BITMAN( 2 , p.extract,0xabcd1234, 0x5, 0x0, 0);
  // TEST_P_SEXT_BITMAN( 3 , p.extract,0xabcd1234, 0x3, 0x0, 4);
  // TEST_P_ZEXT_BITMAN( 4 , p.extractu,0xabcd1234, 0x3, 0x0, 8);
  // TEST_P_ZEXT_BITMAN( 5 , p.extractu,0xabcd1234, 0x5, 0x0, 12);


  TEST_P_ZEXTR_BITMAN( 2 , p.extractur,0xabcd1234, 0xa0, 0);
  TEST_P_ZEXTR_BITMAN( 3 , p.extractur,0xffffffff, 0xa0, 4);
  TEST_P_SEXTR_BITMAN( 4 , p.extractr,0xabcd1234, 0xa0, 8);
  TEST_P_SEXTR_BITMAN( 5 , p.extractr,0xffffffff, 0xa0, 12);

  // p.extract x14, x1, 0x5, 0x6;

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
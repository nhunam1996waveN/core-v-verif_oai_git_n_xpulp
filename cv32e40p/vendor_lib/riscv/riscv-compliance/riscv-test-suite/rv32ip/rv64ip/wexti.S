# See LICENSE for license details.
#*****************************************************************************
# wexti.S
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

TEST_IMM_OP_FSRI( 2 , wexti, 0x00000000, 0x00000000, 0x80000000, 23, 8 ); 
TEST_IMM_OP_FSRI( 3 , wexti, 0xffffffff, 0xffffffff, 0xffffffff, 7, 12 ); 
TEST_IMM_OP_FSRI( 4 , wexti, 0x00000000, 0x00000000, 0x00000000, 18, 16 ); 
TEST_IMM_OP_FSRI( 5 , wexti, 0xffffffff, 0xffffffff, 0xffffffff, 28, 20 ); 
TEST_IMM_OP_FSRI( 6 , wexti, 0xffffffff, 0xffffffff, 0xffffffff, 21, 24 ); 
TEST_IMM_OP_FSRI( 7 , wexti, 0x00000000, 0x00000000, 0x00000000, 1, 28 ); 
TEST_IMM_OP_FSRI( 8 , wexti, 0x00000000, 0x00000000, 0x00000000, 11, 32 ); 
TEST_IMM_OP_FSRI( 9 , wexti, 0x00000000, 0x00000000, 0x00000000, 13, 36 ); 
TEST_IMM_OP_FSRI( 10 , wexti, 0x00000000, 0x00000000, 0x00000000, 13, 40 ); 
TEST_IMM_OP_FSRI( 11 , wexti, 0x00000000, 0x00000000, 0x80000000, 6, 44 ); 
TEST_IMM_OP_FSRI( 12 , wexti, 0x00000000, 0x00000000, 0x80000000, 23, 48 ); 
TEST_IMM_OP_FSRI( 13 , wexti, 0x00000000, 0x00000000, 0x00000000, 9, 52 ); 
TEST_IMM_OP_FSRI( 14 , wexti, 0x00000000, 0x00000000, 0x00000000, 0, 56 ); 
TEST_IMM_OP_FSRI( 15 , wexti, 0x00000000, 0x00000000, 0x80000000, 8, 60 ); 
TEST_IMM_OP_FSRI( 16 , wexti, 0x8828a07c, 0x03e5d175, 0x8a5c4145, 19, 64 ); 
TEST_IMM_OP_FSRI( 17 , wexti, 0xffffffff, 0xffffffff, 0xffffffff, 8, 68 ); 
TEST_IMM_OP_FSRI( 18 , wexti, 0x00000000, 0x00000000, 0x80000000, 23, 72 ); 
TEST_IMM_OP_FSRI( 19 , wexti, 0x00000000, 0x00000000, 0x80000000, 15, 76 ); 
TEST_IMM_OP_FSRI( 20 , wexti, 0x00000000, 0x00000000, 0x00000000, 0, 80 ); 
TEST_IMM_OP_FSRI( 21 , wexti, 0xffffffff, 0xffffffff, 0xffffffff, 21, 84 ); 
TEST_IMM_OP_FSRI( 22 , wexti, 0x00000000, 0x00000000, 0x80000000, 4, 88 ); 
TEST_IMM_OP_FSRI( 23 , wexti, 0x5847444c, 0x23a22669, 0xba8599ac, 7, 92 ); 
TEST_IMM_OP_FSRI( 24 , wexti, 0xffffffff, 0xffffffff, 0xffffffff, 1, 96 ); 
TEST_IMM_OP_FSRI( 25 , wexti, 0x00000000, 0x00000000, 0x80000000, 30, 100 ); 
TEST_IMM_OP_FSRI( 26 , wexti, 0x6b4cca38, 0x9470f2ff, 0xd540d699, 17, 104 ); 
TEST_IMM_OP_FSRI( 27 , wexti, 0x00000000, 0x00000000, 0x80000000, 30, 108 ); 
TEST_IMM_OP_FSRI( 28 , wexti, 0x00000000, 0x00000000, 0x80000000, 4, 112 ); 
TEST_IMM_OP_FSRI( 29 , wexti, 0x1abff2d9, 0x6c8e1c3f, 0x100d5ff9, 23, 116 ); 
TEST_IMM_OP_FSRI( 30 , wexti, 0x00000000, 0x00000000, 0x80000000, 15, 120 ); 
TEST_IMM_OP_FSRI( 31 , wexti, 0x00000000, 0x00000000, 0x00000000, 15, 124 ); 
TEST_IMM_OP_FSRI( 32 , wexti, 0xf0dd0cde, 0xf0dd0cde, 0xd1c9a95b, 0, 128 ); 
TEST_IMM_OP_FSRI( 33 , wexti, 0x00000000, 0x00000000, 0x80000000, 17, 132 ); 
TEST_IMM_OP_FSRI( 34 , wexti, 0x00000000, 0x00000000, 0x80000000, 24, 136 ); 
TEST_IMM_OP_FSRI( 35 , wexti, 0x5ea8a963, 0x152c60cd, 0x79016bd5, 13, 140 ); 
TEST_IMM_OP_FSRI( 36 , wexti, 0x00000000, 0x00000000, 0x80000000, 19, 144 ); 
TEST_IMM_OP_FSRI( 37 , wexti, 0x00000000, 0x00000000, 0x80000000, 7, 148 ); 

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 38, 4, -1
RV_COMPLIANCE_DATA_END
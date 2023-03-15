# See LICENSE for license details.
#*****************************************************************************
# pktt16.S
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

TEST_RR_OP( 2 , pktt16, 0xffff0000, 0xffff0000, 0x00008000, 8); 
TEST_RR_OP( 3 , pktt16, 0x80000000, 0x8000443e, 0x0000ffff, 12); 
TEST_RR_OP( 4 , pktt16, 0xdd450000, 0xdd454859, 0x00000e13, 16); 
TEST_RR_OP( 5 , pktt16, 0xffff0000, 0xffff8000, 0x0000ffff, 20); 
TEST_RR_OP( 6 , pktt16, 0xebcd8000, 0xebcdffff, 0x80000000, 24); 
TEST_RR_OP( 7 , pktt16, 0x80008000, 0x80000000, 0x8000b36e, 28); 
TEST_RR_OP( 8 , pktt16, 0x6ed9ffff, 0x6ed9ffff, 0xffff82a7, 32); 
TEST_RR_OP( 9 , pktt16, 0x23629ab3, 0x23620000, 0x9ab38000, 36); 
TEST_RR_OP( 10 , pktt16, 0xd54fffff, 0xd54fffff, 0xffff0000, 40); 
TEST_RR_OP( 11 , pktt16, 0xb5288000, 0xb5280000, 0x80000000, 44); 
TEST_RR_OP( 12 , pktt16, 0x8000bfcf, 0x80008000, 0xbfcf8000, 48); 
TEST_RR_OP( 13 , pktt16, 0xffffd797, 0xffff8000, 0xd797ffff, 52); 
TEST_RR_OP( 14 , pktt16, 0xb2d58c80, 0xb2d5ffff, 0x8c800fd2, 56); 
TEST_RR_OP( 15 , pktt16, 0xe89f8000, 0xe89f0000, 0x8000ffff, 60); 
TEST_RR_OP( 16 , pktt16, 0x80008000, 0x80000000, 0x80009b42, 64); 
TEST_RR_OP( 17 , pktt16, 0x80000000, 0x8000c766, 0x00000000, 68); 
TEST_RR_OP( 18 , pktt16, 0x80000000, 0x80008000, 0x0000ffff, 72); 
TEST_RR_OP( 19 , pktt16, 0x00000000, 0x0000ffff, 0x00008000, 76); 
TEST_RR_OP( 20 , pktt16, 0xfeef0000, 0xfeefffff, 0x00000000, 80); 
TEST_RR_OP( 21 , pktt16, 0xffff9648, 0xffffffff, 0x96488000, 84); 
TEST_RR_OP( 22 , pktt16, 0xa742ffff, 0xa74275e8, 0xffff0000, 88); 
TEST_RR_OP( 23 , pktt16, 0xb1ebffff, 0xb1eb60a9, 0xffff0000, 92); 
TEST_RR_OP( 24 , pktt16, 0x80008000, 0x80008000, 0x80000000, 96); 
TEST_RR_OP( 25 , pktt16, 0x63968000, 0x63960000, 0x8000b0bb, 100); 
TEST_RR_OP( 26 , pktt16, 0x980c8000, 0x980c0000, 0x80000000, 104); 
TEST_RR_OP( 27 , pktt16, 0xffffffff, 0xffff0000, 0xffff8000, 108); 
TEST_RR_OP( 28 , pktt16, 0x80000000, 0x80006981, 0x00000000, 112); 
TEST_RR_OP( 29 , pktt16, 0xa3628000, 0xa362ffff, 0x8000ffff, 116); 
TEST_RR_OP( 30 , pktt16, 0x00007caf, 0x00008000, 0x7caf0000, 120); 
TEST_RR_OP( 31 , pktt16, 0x0000ffff, 0x00008000, 0xffffffff, 124); 
TEST_RR_OP( 32 , pktt16, 0xffff54f9, 0xffff1334, 0x54f90000, 128); 
TEST_RR_OP( 33 , pktt16, 0xffff8000, 0xffff0000, 0x8000ffff, 132); 
TEST_RR_OP( 34 , pktt16, 0x00000000, 0x00008dd7, 0x0000b0bd, 136); 
TEST_RR_OP( 35 , pktt16, 0x8000ffff, 0x80004a53, 0xffff0000, 140); 
TEST_RR_OP( 36 , pktt16, 0x5fb0ffff, 0x5fb00000, 0xffff8000, 144); 
TEST_RR_OP( 37 , pktt16, 0x00000000, 0x0000ba67, 0x0000ffff, 148); 

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
# See LICENSE for license details.
#*****************************************************************************
# wext.S
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

TEST_RR_OP_FSR( 2 , wext, 0x6f3eaef5, 0xc7a964b7, 0x379f577a, 0xffffffff , 8); 
TEST_RR_OP_FSR( 3 , wext, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 12); 
TEST_RR_OP_FSR( 4 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0x79bda908 , 16); 
TEST_RR_OP_FSR( 5 , wext, 0x00000000, 0x00000000, 0x80000000, 0xffffffff , 20); 
TEST_RR_OP_FSR( 6 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 24); 
TEST_RR_OP_FSR( 7 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 28); 
TEST_RR_OP_FSR( 8 , wext, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 32); 
TEST_RR_OP_FSR( 9 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 36); 
TEST_RR_OP_FSR( 10 , wext, 0x1b02d9f7, 0xb6562be8, 0x8d816cfb, 0xffffffff , 40); 
TEST_RR_OP_FSR( 11 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 44); 
TEST_RR_OP_FSR( 12 , wext, 0xda64d0ae, 0xda64d0ae, 0x466e5b21, 0x00000000 , 48); 
TEST_RR_OP_FSR( 13 , wext, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 52); 
TEST_RR_OP_FSR( 14 , wext, 0x00000000, 0x00000000, 0x00000000, 0x8d23c995 , 56); 
TEST_RR_OP_FSR( 15 , wext, 0x143de836, 0x143de836, 0x6c5ebf8d, 0x80000000 , 60); 
TEST_RR_OP_FSR( 16 , wext, 0x00000000, 0x00000000, 0x00000000, 0xe7c2bd6d , 64); 
TEST_RR_OP_FSR( 17 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 68); 
TEST_RR_OP_FSR( 18 , wext, 0x00000000, 0x00000000, 0x80000000, 0xffffffff , 72); 
TEST_RR_OP_FSR( 19 , wext, 0x00000000, 0x00000000, 0x80000000, 0xd37ce476 , 76); 
TEST_RR_OP_FSR( 20 , wext, 0x00000000, 0x00000000, 0x80000000, 0xffffffff , 80); 
TEST_RR_OP_FSR( 21 , wext, 0x00000000, 0x00000000, 0x00000000, 0xf3fa566a , 84); 
TEST_RR_OP_FSR( 22 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 88); 
TEST_RR_OP_FSR( 23 , wext, 0xa1c98e37, 0xa1c98e37, 0x6410fb19, 0x00000000 , 92); 
TEST_RR_OP_FSR( 24 , wext, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 96); 
TEST_RR_OP_FSR( 25 , wext, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 100); 
TEST_RR_OP_FSR( 26 , wext, 0xd18278aa, 0x41bc5a6a, 0xe8c13c55, 0xffffffff , 104); 
TEST_RR_OP_FSR( 27 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 108); 
TEST_RR_OP_FSR( 28 , wext, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 112); 
TEST_RR_OP_FSR( 29 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0x90b42e49 , 116); 
TEST_RR_OP_FSR( 30 , wext, 0x00000000, 0x00000000, 0x00000000, 0x018ae70c , 120); 
TEST_RR_OP_FSR( 31 , wext, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 124); 
TEST_RR_OP_FSR( 32 , wext, 0x00000000, 0x00000000, 0x80000000, 0x87f953e4 , 128); 
TEST_RR_OP_FSR( 33 , wext, 0x8d561716, 0x75333599, 0x46ab0b8b, 0xffffffff , 132); 
TEST_RR_OP_FSR( 34 , wext, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 136); 
TEST_RR_OP_FSR( 35 , wext, 0x00000000, 0x00000000, 0x00000000, 0xd6339ee0 , 140); 
TEST_RR_OP_FSR( 36 , wext, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 144); 
TEST_RR_OP_FSR( 37 , wext, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 148); 

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
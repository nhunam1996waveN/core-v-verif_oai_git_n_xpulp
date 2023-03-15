# See LICENSE for license details.
#*****************************************************************************
# pkbb16.S
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

TEST_RR_OP( 2 , pkbb16, 0xffff0000, 0x10b9ffff, 0xbfa50000, 8); 
TEST_RR_OP( 3 , pkbb16, 0xffff9330, 0x86a2ffff, 0x00009330, 12); 
TEST_RR_OP( 4 , pkbb16, 0x8000ffff, 0xffff8000, 0xffffffff, 16); 
TEST_RR_OP( 5 , pkbb16, 0x80005a9e, 0xffff8000, 0x80005a9e, 20); 
TEST_RR_OP( 6 , pkbb16, 0xffff0000, 0x8000ffff, 0x08060000, 24); 
TEST_RR_OP( 7 , pkbb16, 0x80000000, 0xffff8000, 0x33d10000, 28); 
TEST_RR_OP( 8 , pkbb16, 0xffffba75, 0xa7a2ffff, 0x0000ba75, 32); 
TEST_RR_OP( 9 , pkbb16, 0x00008000, 0x80000000, 0xffff8000, 36); 
TEST_RR_OP( 10 , pkbb16, 0x80008000, 0x00008000, 0x00008000, 40); 
TEST_RR_OP( 11 , pkbb16, 0x8000ffff, 0xffff8000, 0x686effff, 44); 
TEST_RR_OP( 12 , pkbb16, 0xffff0000, 0x7099ffff, 0x00000000, 48); 
TEST_RR_OP( 13 , pkbb16, 0xb5fe8000, 0x8000b5fe, 0x80008000, 52); 
TEST_RR_OP( 14 , pkbb16, 0xffff366d, 0x493effff, 0x0000366d, 56); 
TEST_RR_OP( 15 , pkbb16, 0xedb4323c, 0x17ceedb4, 0x0000323c, 60); 
TEST_RR_OP( 16 , pkbb16, 0x8000ffff, 0x80008000, 0x8000ffff, 64); 
TEST_RR_OP( 17 , pkbb16, 0x80008000, 0xffff8000, 0x80008000, 68); 
TEST_RR_OP( 18 , pkbb16, 0x00004515, 0x00000000, 0x21ee4515, 72); 
TEST_RR_OP( 19 , pkbb16, 0x573cffff, 0x8000573c, 0x0000ffff, 76); 
TEST_RR_OP( 20 , pkbb16, 0x8000ffff, 0x00008000, 0x0000ffff, 80); 
TEST_RR_OP( 21 , pkbb16, 0x800048a9, 0x00008000, 0x800048a9, 84); 
TEST_RR_OP( 22 , pkbb16, 0x00004e6e, 0x80000000, 0x6ec74e6e, 88); 
TEST_RR_OP( 23 , pkbb16, 0x2a060000, 0x00002a06, 0xe9970000, 92); 
TEST_RR_OP( 24 , pkbb16, 0x0000ffff, 0x00000000, 0x0000ffff, 96); 
TEST_RR_OP( 25 , pkbb16, 0x00000000, 0xffff0000, 0x943d0000, 100); 
TEST_RR_OP( 26 , pkbb16, 0x80008000, 0x80008000, 0x00008000, 104); 
TEST_RR_OP( 27 , pkbb16, 0x639e3c3d, 0x0000639e, 0x00003c3d, 108); 
TEST_RR_OP( 28 , pkbb16, 0x08bc8000, 0x000008bc, 0xffff8000, 112); 
TEST_RR_OP( 29 , pkbb16, 0xffff0000, 0x8000ffff, 0x80000000, 116); 
TEST_RR_OP( 30 , pkbb16, 0x0000ffff, 0xffff0000, 0xa9beffff, 120); 
TEST_RR_OP( 31 , pkbb16, 0xffff0000, 0x8000ffff, 0xffff0000, 124); 
TEST_RR_OP( 32 , pkbb16, 0xc2770000, 0xffffc277, 0x80000000, 128); 
TEST_RR_OP( 33 , pkbb16, 0x80008000, 0x00008000, 0xffff8000, 132); 
TEST_RR_OP( 34 , pkbb16, 0xffffffff, 0xffffffff, 0x8000ffff, 136); 
TEST_RR_OP( 35 , pkbb16, 0x00000000, 0x00000000, 0x00000000, 140); 
TEST_RR_OP( 36 , pkbb16, 0x0000d332, 0xffff0000, 0xffffd332, 144); 
TEST_RR_OP( 37 , pkbb16, 0xffffbd93, 0x0000ffff, 0xffffbd93, 148); 

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
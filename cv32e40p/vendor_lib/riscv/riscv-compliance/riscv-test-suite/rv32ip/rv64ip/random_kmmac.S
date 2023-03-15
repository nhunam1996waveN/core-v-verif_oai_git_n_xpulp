# See LICENSE for license details.
#*****************************************************************************
# random_kmmac.S
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

TEST_RR_OP( 2 , kmmawt.u, 0xce118000, 0x80000000, 0x63ddc596, 8); 
TEST_RR_OP( 3 , smaqa.su, 0xce118000, 0x80000000, 0x00000000, 12); 
TEST_RR_OP( 4 , kmsxda, 0xce118000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , kmmawb.u, 0xce118000, 0x00000000, 0x80000000, 20); 
TEST_RR_OP( 6 , ksub16, 0xc1118000, 0x80008000, 0xbeef0000, 24); 
TEST_RR_OP( 7 , sub8, 0x994a2c81, 0xffff8080, 0x66b554ff, 28); 
TEST_RR_OP( 8 , kmmawb2.u, 0x994a2c81, 0x00000000, 0xe43d3b57, 32); 
TEST_RR_OP( 9 , kmmawb.u, 0x994a2c81, 0x00000000, 0x80000000, 36); 
TEST_RR_OP( 10 , kmmsb, 0xd1501f27, 0x80000000, 0x700be54b, 40); 
TEST_RR_OP( 11 , kmmawb2, 0xcf167dd1, 0x083ca2b8, 0x423fdd6c, 44); 
TEST_RR_OP( 12 , kmmsb, 0xcf167dd1, 0x00000000, 0xf5c35fa8, 48); 
TEST_RR_OP( 13 , kmmawt2, 0xcf167dd1, 0xffffffff, 0x00000000, 52); 
TEST_RR_OP( 14 , add8, 0x00935f80, 0x0080ff00, 0x00136080, 56); 
TEST_RR_OP( 15 , add8, 0xff0ea8c1, 0x0080ff80, 0xff8ea941, 60); 
TEST_RR_OP( 16 , kmatt, 0xff0f28c1, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmmac, 0xff0f28c1, 0x00000000, 0x84707719, 68); 
TEST_RR_OP( 18 , kmatt, 0xff0f025a, 0xffffffff, 0x2667ab79, 72); 
TEST_RR_OP( 19 , sub8, 0xff007f80, 0xff80ff00, 0x00808080, 76); 
TEST_RR_OP( 20 , kmaxds, 0xff00cbda, 0xffffffff, 0x69d61d7c, 80); 
TEST_RR_OP( 21 , smaqa, 0xff00cbda, 0x00000000, 0x00000000, 84); 
TEST_RR_OP( 22 , kmmsb, 0xff00cbda, 0xffffffff, 0x00000000, 88); 
TEST_RR_OP( 23 , kmaxda, 0xff014bda, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , kmaxda, 0xff014bda, 0xffffffff, 0x00000000, 96); 
TEST_RR_OP( 25 , kmmawb, 0xff014bda, 0xffffffff, 0x80000000, 100); 
TEST_RR_OP( 26 , kmmawt2.u, 0x810fba02, 0x7df191d8, 0x80000000, 104); 
TEST_RR_OP( 27 , kmmsb.u, 0x810fba01, 0x80000000, 0xffffffff, 108); 
TEST_RR_OP( 28 , sub16, 0xffff6ce3, 0xffff8000, 0x0000131d, 112); 
TEST_RR_OP( 29 , kmmawb2.u, 0x73726ce3, 0x80000000, 0x48588c8d, 116); 
TEST_RR_OP( 30 , kmatt, 0x73726ce3, 0x00000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kmabb, 0x7fffffff, 0xb86b57bd, 0x508b7305, 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_RR_OP( 35 , smaqa, 0x00000080, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , kmaxda, 0x00000080, 0x00000000, 0x80000000, 144); 
TEST_RR_OP( 37 , smaqa, 0xffffacbf, 0xb55270a2, 0x85b4836f, 148); 

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
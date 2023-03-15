# See LICENSE for license details.
#*****************************************************************************
# bpick.S
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

TEST_RRR_OP( 2 , bpick, 0x8da240bb, 0x725dbf44, 0x80000000, 0xffffffff, 8); 
TEST_RRR_OP( 3 , bpick, 0x7fffffff, 0x80000000, 0x45872d67, 0xffffffff, 12); 
TEST_RRR_OP( 4 , bpick, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000, 16); 
TEST_RRR_OP( 5 , bpick, 0x00000000, 0xffffffff, 0x00000000, 0x00000000, 20); 
TEST_RRR_OP( 6 , bpick, 0x80000000, 0x00000000, 0xd31101d3, 0x80000000, 24); 
TEST_RRR_OP( 7 , bpick, 0xa83d52cd, 0x57c2ad32, 0x80000000, 0xffffffff, 28); 
TEST_RRR_OP( 8 , bpick, 0x80000000, 0xffffffff, 0x80000000, 0xffffffff, 32); 
TEST_RRR_OP( 9 , bpick, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 36); 
TEST_RRR_OP( 10 , bpick, 0x14c6de71, 0xeb39218e, 0x00000000, 0xffffffff, 40); 
TEST_RRR_OP( 11 , bpick, 0x9315c4a3, 0x6cea3b5c, 0x00000000, 0xffffffff, 44); 
TEST_RRR_OP( 12 , bpick, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 48); 
TEST_RRR_OP( 13 , bpick, 0x7fffffff, 0x80000000, 0x3a6f654e, 0xffffffff, 52); 
TEST_RRR_OP( 14 , bpick, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 56); 
TEST_RRR_OP( 15 , bpick, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 60); 
TEST_RRR_OP( 16 , bpick, 0x00000000, 0xffffffff, 0x00000000, 0xd1fc9866, 64); 
TEST_RRR_OP( 17 , bpick, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 68); 
TEST_RRR_OP( 18 , bpick, 0xe0816fbe, 0x00000000, 0x00000000, 0xe0816fbe, 72); 
TEST_RRR_OP( 19 , bpick, 0xffffffff, 0x00000000, 0x052d1508, 0xffffffff, 76); 
TEST_RRR_OP( 20 , bpick, 0x80000000, 0xffffffff, 0x80000000, 0xd5b56870, 80); 
TEST_RRR_OP( 21 , bpick, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 84); 
TEST_RRR_OP( 22 , bpick, 0xceebd1ef, 0x80000000, 0x80000000, 0xceebd1ef, 88); 
TEST_RRR_OP( 23 , bpick, 0x40ae905c, 0x00000000, 0x00000000, 0x40ae905c, 92); 
TEST_RRR_OP( 24 , bpick, 0xfaf7e97e, 0xd856c848, 0xffffffff, 0xfaf5e976, 96); 
TEST_RRR_OP( 25 , bpick, 0x00000000, 0xc3a5622e, 0x00000000, 0x80000000, 100); 
TEST_RRR_OP( 26 , bpick, 0x00000000, 0xffffffff, 0x00000000, 0x80000000, 104); 
TEST_RRR_OP( 27 , bpick, 0x00000000, 0x00000000, 0x3a72b31c, 0x00000000, 108); 
TEST_RRR_OP( 28 , bpick, 0x00000000, 0x80000000, 0x2f1ec7db, 0x00000000, 112); 
TEST_RRR_OP( 29 , bpick, 0x095edfd1, 0x80000000, 0x00000000, 0x095edfd1, 116); 
TEST_RRR_OP( 30 , bpick, 0x80000000, 0xffffffff, 0x80000000, 0x80000000, 120); 
TEST_RRR_OP( 31 , bpick, 0x80e68225, 0xfb117942, 0x80000000, 0x0bf69267, 124); 
TEST_RRR_OP( 32 , bpick, 0xf1081401, 0xf9eaf4e5, 0xf1081603, 0x80000000, 128); 
TEST_RRR_OP( 33 , bpick, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 132); 
TEST_RRR_OP( 34 , bpick, 0xfad9de67, 0x252623da, 0xf8505a42, 0xffffffff, 136); 
TEST_RRR_OP( 35 , bpick, 0x5ad37a83, 0xffffffff, 0x5ad37a83, 0x00000000, 140); 
TEST_RRR_OP( 36 , bpick, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 144); 
TEST_RRR_OP( 37 , bpick, 0xf5c07c23, 0x80000000, 0x80000000, 0x75c07c23, 148); 

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
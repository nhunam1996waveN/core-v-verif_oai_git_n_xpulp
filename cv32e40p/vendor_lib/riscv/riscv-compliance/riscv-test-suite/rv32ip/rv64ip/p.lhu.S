# See LICENSE for license details.
#*****************************************************************************
# p.lhu.S
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
#p.lhu rD, Imm(rs1!
test_2:
  li x1, MASK_XLEN(0x10); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x1324); #imm
  li x3, MASK_XLEN(0x1234); #test post-increment
  sh x2, 0(x1);   # store value of x2 to mem with add: x1 + 0  (offset)
  sh x3, 8(x1);   # store value of x3 to mem with add: x1 + 8  (offset)
  li x2, MASK_XLEN(0x8); #imm
  add x11, x0, x0;
  p.lhu x30, 0x8(x1!);
  slli x11, x11, 16;
  add x11, x11, x30;
  p.lhu x30, 0x8(x1!);
  slli x11, x11, 16;
  add x11, x11, x30;
  add x30, x11, x0;
  li x29, MASK_XLEN(0x13241234);
  li TESTNUM, 2;

  la x28, test_res;
  sw x30, (0)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

#p.lhu rD, rs2(rs1!)
#addr 4 
test_3:
  li x1, MASK_XLEN(0x10); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x1122); #imm
  li x3, MASK_XLEN(0x3344); #test post-increment
  sh x2, 0(x1);   # store value of x2 to mem with add: x1 + 0  (offset)
  sh x3, 8(x1);   # store value of x3 to mem with add: x1 + 8  (offset)
  li x2, MASK_XLEN(0x8); #imm
  add x11, x0, x0;
  p.lhu x30, x2(x1!);
  slli x11, x11, 16;
  add x11, x11, x30;
  p.lhu x30, x2(x1!);
  slli x11, x11, 16;
  add x11, x11, x30;
  add x30, x11, x0;
  li x29, MASK_XLEN(0x11223344);
  li TESTNUM, 3;

  la x28, test_res;
  sw x30, (4)(x28); #4 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

#p.lhu rD, rs2(rs1)
#addr 8 
test_4:
  li x1, MASK_XLEN(16); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x1423); #imm
  li x3, MASK_XLEN(0x4321); #test post-increment
  sh x2, 8(x1);   # store value of x2 to mem with add: x1 + 0  (offset)
  sh x3, 16(x1);   # store value of x3 to mem with add: x1 + 8  (offset)
  li x2, MASK_XLEN(8); #imm
  add x11, x0, x0;
  p.lhu x30, x2(x1);
  slli x11, x11, 16;
  add x11, x11, x30;
  li x2, MASK_XLEN(16); #imm
  p.lhu x30, x2(x1);
  slli x11, x11, 16;
  add x11, x11, x30;
  add x30, x11, x0;
  li x29, MASK_XLEN(0x14234321);
  li TESTNUM, 3;

  la x28, test_res;
  sw x30, (8)(x28); #4 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

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
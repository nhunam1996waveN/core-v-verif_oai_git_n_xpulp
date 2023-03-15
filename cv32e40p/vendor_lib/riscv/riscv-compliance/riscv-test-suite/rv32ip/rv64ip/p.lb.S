# See LICENSE for license details.
#*****************************************************************************
# p.lb.S
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
#p.lb rD, Imm(rs1!
test_2:
  li x1, MASK_XLEN(0x4); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x13); #imm
  li x3, MASK_XLEN(0x24); #test post-increment
  li x4, MASK_XLEN(0x12); #test post-increment
  li x5, MASK_XLEN(0x34); #test post-increment
  sb x2, 0(x1);   # store value of x2 to mem with add: x1 + 0  (offset)
  sb x3, 8(x1);   # store value of x3 to mem with add: x1 + 8  (offset)
  sb x4, 16(x1);  # store value of x4 to mem with add: x1 + 16 (offset)
  sb x5, 24(x1);  # store value of x5 to mem with add: x1 + 24 (offset)
  li x2, MASK_XLEN(0x8); #imm
  add x11, x0, x0;
  p.lb x30, 0x8(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  p.lb x30, 0x8(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  p.lb x30, 0x8(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  p.lb x30, 0x8(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  add x30, x11, x0;
  li x29, MASK_XLEN(0x13241234);
  li TESTNUM, 2;

  la x28, test_res;
  sw x30, (0)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

#p.lb rD, rs2(rs1!)
#addr 4 
test_3:
  li x1, MASK_XLEN(0x4); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x11); #imm
  li x3, MASK_XLEN(0x22); #test post-increment
  li x4, MASK_XLEN(0x33); #test post-increment
  li x5, MASK_XLEN(0x44); #test post-increment
  sb x2, 0(x1);   # store value of x2 to mem with add: x1 + 0  (offset)
  sb x3, 8(x1);   # store value of x3 to mem with add: x1 + 8  (offset)
  sb x4, 16(x1);  # store value of x4 to mem with add: x1 + 16 (offset)
  sb x5, 24(x1);  # store value of x5 to mem with add: x1 + 24 (offset)
  li x2, MASK_XLEN(0x8); #imm
  add x11, x0, x0;
  p.lb x30, x2(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  p.lb x30, x2(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  p.lb x30, x2(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  p.lb x30, x2(x1!);
  slli x11, x11, 8;
  add x11, x11, x30;
  add x30, x11, x0;
  li x29, MASK_XLEN(0x11223344);
  li TESTNUM, 3;

  la x28, test_res;
  sw x30, (4)(x28); #4 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

#p.lb rD, rs2(rs1)
#addr 8 
test_4:
  li x1, MASK_XLEN(16); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x14); #imm
  li x3, MASK_XLEN(0x23); #test post-increment
  li x4, MASK_XLEN(0x43); #test post-increment
  li x5, MASK_XLEN(0x21); #test post-increment
  sb x2, 8(x1);   # store value of x2 to mem with add: x1 + 0  (offset)
  sb x3, 16(x1);   # store value of x3 to mem with add: x1 + 8  (offset)
  sb x4, 24(x1);  # store value of x4 to mem with add: x1 + 16 (offset)
  sb x5, 32(x1);  # store value of x5 to mem with add: x1 + 24 (offset)
  li x2, MASK_XLEN(8); #imm
  add x11, x0, x0;
  p.lb x30, x2(x1);
  slli x11, x11, 8;
  add x11, x11, x30;
  li x2, MASK_XLEN(16); #imm
  p.lb x30, x2(x1);
  slli x11, x11, 8;
  add x11, x11, x30;
  li x2, MASK_XLEN(24); #imm
  p.lb x30, x2(x1);
  slli x11, x11, 8;
  add x11, x11, x30;
  li x2, MASK_XLEN(32); #imm
  p.lb x30, x2(x1);
  slli x11, x11, 8;
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
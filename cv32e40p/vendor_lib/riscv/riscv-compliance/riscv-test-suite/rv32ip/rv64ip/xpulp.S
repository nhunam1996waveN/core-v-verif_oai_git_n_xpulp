# See LICENSE for license details.
#*****************************************************************************
# xpulp.S
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
# p.lw x2, x3(x1!);
# p.lb x2, x3(x1!);
# p.lbu x2, x3(x1!);
# p.lh x2, x3(x1!);
# p.lhu x2, x3(x1!);
# p.sb x2, 0x5(x1!);
# p.sb x2, x3(x1!);
# p.sh x2, x3(x1!);
# p.sw x2, x3(x1!);
# p.extract x2, x1, 0x5, 0x7;
# p.extractu x2, x1, 0x5, 0x7;
# p.extractr x2, x1, x3;
# p.extractur x2, x1, x3;
# p.insert x2, x1, 0x5, 0x7;
# p.insertr x2, x1, x3;
# p.bclr x2, x1, 0x5, 0x7;
# p.bclrr x2, x1, x3;
# p.bset x2, x1, 0x5, 0x7;
# p.bsetr x2, x1, x3;
# p.ff1 x2, x1;
# p.fl1 x2, x1;
# p.clb x2, x1;
# p.cnt x2, x1;
# p.ror x2, x1, x3;

#test_2, test_3 to test p.lb
test_2:
  li x1, MASK_XLEN(0x8); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0xab); #imm
  li x3, MASK_XLEN(0xef); #test post-increment
  sb x2, 0(x1);  # store ab to mem with add: x1 + 0 (offset)
  sb x3, 8(x1);  # store ab to mem with add: x1 + 8 (offset)
  li x2, MASK_XLEN(0x8); #imm
  p.lb x30, x2(x1!);
  # lb x30, 8(x1);
  # li x29, MASK_XLEN(0xab);
  li x29, MASK_XLEN(0xffffffab);
  li TESTNUM, 2;

  la x28, test_res;
  sw x30, (0)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

# test_3:
#   li x1, MASK_XLEN(0x10); #rs1   #opcode 0x13
#   li x2, MASK_XLEN(0xef); #imm
#   li x3, MASK_XLEN(0x1a); #test post-increment
#   sb x2, 0(x1);  # store ab to mem with add: x1 + 0 (offset)
#   sb x3, 8(x1);  # store ab to mem with add: x1 + 8 (offset)
#   li x2, MASK_XLEN(0x10); #imm
#   p.lb x30, x2(x1!);
#   # lb x30, 8(x1);
#   li x29, MASK_XLEN(0xef);
#   li TESTNUM, 3;

#   la x28, test_res;
#   sw x30, (4)(x28); #4 is current addr   #opcode 0x23

#   bne x30, x29, fail; #opcode 0x63

test_3:
  #test post-increment
  #x1 += 0x8 +0x8
  # li x3, MASK_XLEN(0xcd); #test post-increment
  # sb x3, 0(x1);  # store ab to mem with add: x1 + 8 (offset) #opcode 0x23
  lb x30, 0(x1); #opcode 0x3
  li x29, MASK_XLEN(0xffffffef);
  li TESTNUM, 3;

  la x28, test_res;
  sw x30, (4)(x28); #4 is current addr

  bne x30, x29, fail;

test_4:
  li x1, MASK_XLEN(0x8); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x8); #imm
  li x3, MASK_XLEN(0x30); #test post-increment
  sb x2, 0(x1);  # store ab to mem with add: x1 + 0 (offset)
  sb x3, 8(x1);  # store ab to mem with add: x1 + 8 (offset)
  li x2, MASK_XLEN(0x8); #imm
  p.lb x30, x2(x1!);
  slli x4, x30, 8;
  p.lb x30, x2(x1!);
  add x30, x30, x4;
  li x29, MASK_XLEN(0xffffffcd);
  li TESTNUM, 4;

  la x28, test_res;
  sw x30, (8)(x28); #0 is current addr   #opcode 0x23

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
# See LICENSE for license details.
#*****************************************************************************
# p.sw.S
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
#p.lh rD, Imm(rs1!
test_2:
  li x1, MASK_XLEN(0x10); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x13241234); #imm
  li x3, MASK_XLEN(0x11223344); #test post-increment
  li x4, MASK_XLEN(0x14234321); #test post-increment
  p.sw x2, 8(x1!);   # store value of x2 to mem with add: x1 + 0  (offset)
  p.sw x3, 8(x1!);   # store value of x3 to mem with add: x1 + 8  (offset)
  p.sw x4, 8(x1!);   # store value of x3 to mem with add: x1 + 8  (offset)

  li x1, MASK_XLEN(0x10);
  lw x30, 0x0(x1);
  li x29, MASK_XLEN(0x13241234);
  li TESTNUM, 2;

  la x28, test_res;
  sw x30, (0)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

#addr 4 
test_3:
  li x1, MASK_XLEN(0x10);
  lw x30, 8(x1);
  li x29, MASK_XLEN(0x11223344);
  li TESTNUM, 3;

  la x28, test_res;
  sw x30, (4)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

#addr 8 
test_4:
  lw x30, 16(x1);
  li x29, MASK_XLEN(0x14234321);
  li TESTNUM, 4;

  la x28, test_res;
  sw x30, (8)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63


#p.lw rD, rs2(rs1!)
test_5:
  li x1, MASK_XLEN(0x10); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x13241234); #imm
  li x3, MASK_XLEN(0x11223344); #test post-increment
  li x4, MASK_XLEN(0x14234321); #test post-increment
  li x6, MASK_XLEN(8); #rs1   #opcode 0x13
  p.sw x2, x6(x1!);   # store value of x2 to mem with add: x1 + 0  (offset)
  p.sw x3, x6(x1!);   # store value of x3 to mem with add: x1 + 8  (offset)
  p.sw x4, x6(x1!);   # store value of x3 to mem with add: x1 + 8  (offset)

  li x1, MASK_XLEN(0x10);
  lw x30, 0x0(x1);
  li x29, MASK_XLEN(0x13241234);
  li TESTNUM, 2;

  la x28, test_res;
  sw x30, (12)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

test_6:
  lw x30, 8(x1);
  li x29, MASK_XLEN(0x11223344);
  li TESTNUM, 6;

  la x28, test_res;
  sw x30, (16)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

test_7:
  lw x30, 16(x1);
  li x29, MASK_XLEN(0x14234321);
  li TESTNUM, 7;

  la x28, test_res;
  sw x30, (20)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63


#p.lw rD, rs2(rs1)
test_8:
  li x1, MASK_XLEN(0x10); #rs1   #opcode 0x13
  li x2, MASK_XLEN(0x13241234); #imm
  li x3, MASK_XLEN(0x11223344); #test post-increment
  li x4, MASK_XLEN(0x14234321); #test post-increment
  li x6, MASK_XLEN(8); #rs1   #opcode 0x13
  p.sw x2, x6(x1);   # store value of x2 to mem with add: x1 + 0  (offset)
  li x6, MASK_XLEN(16); #rs1   #opcode 0x13
  p.sw x3, x6(x1);   # store value of x3 to mem with add: x1 + 8  (offset)
  li x6, MASK_XLEN(24); #rs1   #opcode 0x13
  p.sw x4, x6(x1);   # store value of x3 to mem with add: x1 + 8  (offset)

  li x1, MASK_XLEN(0x10);
  lw x30, 8(x1);
  li x29, MASK_XLEN(0x13241234);
  li TESTNUM, 2;

  la x28, test_res;
  sw x30, (24)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

test_9:
  lw x30, 16(x1);
  li x29, MASK_XLEN(0x11223344);
  li TESTNUM, 9;

  la x28, test_res;
  sw x30, (28)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

test_10:
  lw x30, 24(x1);
  li x29, MASK_XLEN(0x14234321);
  li TESTNUM, 10;

  la x28, test_res;
  sw x30, (32)(x28); #0 is current addr   #opcode 0x23

  bne x30, x29, fail; #opcode 0x63

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 12, 4, -1
RV_COMPLIANCE_DATA_END
# See LICENSE for license details.
#*****************************************************************************
# fsri.S
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

TEST_IMM_OP_FSRI( 2 , fsri, 0x00000000, 0x00000000, 0x80000000, 28, 8 ); 
TEST_IMM_OP_FSRI( 3 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 27, 12 ); 
TEST_IMM_OP_FSRI( 4 , fsri, 0x00000000, 0x00000000, 0x80000000, 30, 16 ); 
TEST_IMM_OP_FSRI( 5 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 3, 20 ); 
TEST_IMM_OP_FSRI( 6 , fsri, 0x00000000, 0x00000000, 0x80000000, 11, 24 ); 
TEST_IMM_OP_FSRI( 7 , fsri, 0x00000000, 0x00000000, 0x00000000, 16, 28 ); 
TEST_IMM_OP_FSRI( 8 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 24, 32 ); 
TEST_IMM_OP_FSRI( 9 , fsri, 0x00000000, 0x00000000, 0x00000000, 14, 36 ); 
TEST_IMM_OP_FSRI( 10 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 28, 40 ); 
TEST_IMM_OP_FSRI( 11 , fsri, 0x044a85ec, 0x112a17b1, 0xea5c8bd8, 2, 44 ); 
TEST_IMM_OP_FSRI( 12 , fsri, 0x00000000, 0x00000000, 0x80000000, 25, 48 ); 
TEST_IMM_OP_FSRI( 13 , fsri, 0x00000000, 0x00000000, 0x80000000, 10, 52 ); 
TEST_IMM_OP_FSRI( 14 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 14, 56 ); 
TEST_IMM_OP_FSRI( 15 , fsri, 0x00000000, 0x00000000, 0x80000000, 27, 60 ); 
TEST_IMM_OP_FSRI( 16 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 19, 64 ); 
TEST_IMM_OP_FSRI( 17 , fsri, 0x00000000, 0x00000000, 0x00000000, 0, 68 ); 
TEST_IMM_OP_FSRI( 18 , fsri, 0x33a32e75, 0x750428a0, 0x6533a32e, 24, 72 ); 
TEST_IMM_OP_FSRI( 19 , fsri, 0x00000000, 0x00000000, 0x00000000, 4, 76 ); 
TEST_IMM_OP_FSRI( 20 , fsri, 0x00000000, 0x00000000, 0x80000000, 0, 80 ); 
TEST_IMM_OP_FSRI( 21 , fsri, 0x00000000, 0x00000000, 0x80000000, 24, 84 ); 
TEST_IMM_OP_FSRI( 22 , fsri, 0x38e8aa3c, 0x71d15478, 0x987e4514, 1, 88 ); 
TEST_IMM_OP_FSRI( 23 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 25, 92 ); 
TEST_IMM_OP_FSRI( 24 , fsri, 0xa9cbcb1c, 0xc71a46a7, 0x10ea72f2, 22, 96 ); 
TEST_IMM_OP_FSRI( 25 , fsri, 0x00000000, 0x00000000, 0x80000000, 24, 100 ); 
TEST_IMM_OP_FSRI( 26 , fsri, 0x963c5634, 0x63c5634a, 0x3000edf9, 4, 104 ); 
TEST_IMM_OP_FSRI( 27 , fsri, 0x45d951d4, 0x45d951d4, 0x10035f03, 0, 108 ); 
TEST_IMM_OP_FSRI( 28 , fsri, 0xc2a9057c, 0x5482be25, 0xbce821e1, 7, 112 ); 
TEST_IMM_OP_FSRI( 29 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 20, 116 ); 
TEST_IMM_OP_FSRI( 30 , fsri, 0x66d5283b, 0x0772e63e, 0xc50cdaa5, 21, 120 ); 
TEST_IMM_OP_FSRI( 31 , fsri, 0x00000000, 0x00000000, 0x00000000, 20, 124 ); 
TEST_IMM_OP_FSRI( 32 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 15, 128 ); 
TEST_IMM_OP_FSRI( 33 , fsri, 0x00000000, 0x00000000, 0x80000000, 23, 132 ); 
TEST_IMM_OP_FSRI( 34 , fsri, 0x00000000, 0x00000000, 0x00000000, 0, 136 ); 
TEST_IMM_OP_FSRI( 35 , fsri, 0x37d0ffef, 0xfefc9f8c, 0x4d437d0f, 20, 140 ); 
TEST_IMM_OP_FSRI( 36 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 20, 144 ); 
TEST_IMM_OP_FSRI( 37 , fsri, 0x2fbdf747, 0x5f7bee8f, 0xe2a38914, 1, 148 ); 
TEST_IMM_OP_FSRI( 38 , fsri, 0x00000000, 0x00000000, 0x80000000, 18, 152 ); 
TEST_IMM_OP_FSRI( 39 , fsri, 0xddc8d2d9, 0xe4696c9e, 0x133083ee, 7, 156 ); 
TEST_IMM_OP_FSRI( 40 , fsri, 0x00000000, 0x00000000, 0x00000000, 1, 160 ); 
TEST_IMM_OP_FSRI( 41 , fsri, 0x00000000, 0x00000000, 0x80000000, 16, 164 ); 
TEST_IMM_OP_FSRI( 42 , fsri, 0x00000000, 0x00000000, 0x80000000, 19, 168 ); 
TEST_IMM_OP_FSRI( 43 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 6, 172 ); 
TEST_IMM_OP_FSRI( 44 , fsri, 0x00000000, 0x00000000, 0x80000000, 28, 176 ); 
TEST_IMM_OP_FSRI( 45 , fsri, 0x00000000, 0x00000000, 0x00000000, 17, 180 ); 
TEST_IMM_OP_FSRI( 46 , fsri, 0xc6fa6e7e, 0xc6fa6e7e, 0x27fe7ebd, 0, 184 ); 
TEST_IMM_OP_FSRI( 47 , fsri, 0x9f04918b, 0xc5f925f5, 0x1fcf8248, 23, 188 ); 
TEST_IMM_OP_FSRI( 48 , fsri, 0x00000000, 0x00000000, 0x80000000, 4, 192 ); 
TEST_IMM_OP_FSRI( 49 , fsri, 0x00000000, 0x00000000, 0x00000000, 14, 196 ); 
TEST_IMM_OP_FSRI( 50 , fsri, 0x026264a9, 0xc4c95373, 0xde03da04, 9, 200 ); 
TEST_IMM_OP_FSRI( 51 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 20, 204 ); 
TEST_IMM_OP_FSRI( 52 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 12, 208 ); 
TEST_IMM_OP_FSRI( 53 , fsri, 0x00000000, 0x00000000, 0x80000000, 7, 212 ); 
TEST_IMM_OP_FSRI( 54 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 17, 216 ); 
TEST_IMM_OP_FSRI( 55 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 30, 220 ); 
TEST_IMM_OP_FSRI( 56 , fsri, 0x00000000, 0x00000000, 0x00000000, 23, 224 ); 
TEST_IMM_OP_FSRI( 57 , fsri, 0x00000000, 0x00000000, 0x00000000, 11, 228 ); 
TEST_IMM_OP_FSRI( 58 , fsri, 0xbdb030de, 0xc37b77ba, 0xe2b2f6c0, 18, 232 ); 
TEST_IMM_OP_FSRI( 59 , fsri, 0x00000000, 0x00000000, 0x00000000, 24, 236 ); 
TEST_IMM_OP_FSRI( 60 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 25, 240 ); 
TEST_IMM_OP_FSRI( 61 , fsri, 0x00000000, 0x00000000, 0x80000000, 23, 244 ); 
TEST_IMM_OP_FSRI( 62 , fsri, 0x00000000, 0x00000000, 0x80000000, 10, 248 ); 
TEST_IMM_OP_FSRI( 63 , fsri, 0x00000000, 0x00000000, 0x80000000, 25, 252 ); 
TEST_IMM_OP_FSRI( 64 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 13, 256 ); 
TEST_IMM_OP_FSRI( 65 , fsri, 0x00000000, 0x00000000, 0x80000000, 2, 260 ); 
TEST_IMM_OP_FSRI( 66 , fsri, 0x8dff31bd, 0xded28588, 0xb3c6ff98, 23, 264 ); 
TEST_IMM_OP_FSRI( 67 , fsri, 0x85fb8d47, 0x85fb8d47, 0xbce0aa27, 0, 268 ); 
TEST_IMM_OP_FSRI( 68 , fsri, 0xb759f375, 0xeba75166, 0xc76eb3e6, 25, 272 ); 
TEST_IMM_OP_FSRI( 69 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 23, 276 ); 
TEST_IMM_OP_FSRI( 70 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 21, 280 ); 
TEST_IMM_OP_FSRI( 71 , fsri, 0x8aead371, 0x3c1d5ed8, 0xd15d5a6e, 29, 284 ); 
TEST_IMM_OP_FSRI( 72 , fsri, 0x00000000, 0x00000000, 0x00000000, 15, 288 ); 
TEST_IMM_OP_FSRI( 73 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 21, 292 ); 
TEST_IMM_OP_FSRI( 74 , fsri, 0x00000000, 0x00000000, 0x00000000, 12, 296 ); 
TEST_IMM_OP_FSRI( 75 , fsri, 0x00000000, 0x00000000, 0x00000000, 30, 300 ); 
TEST_IMM_OP_FSRI( 76 , fsri, 0xcb484731, 0xb484731f, 0x5bf8baac, 4, 304 ); 
TEST_IMM_OP_FSRI( 77 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 17, 308 ); 
TEST_IMM_OP_FSRI( 78 , fsri, 0x00000000, 0x00000000, 0x80000000, 23, 312 ); 
TEST_IMM_OP_FSRI( 79 , fsri, 0x5799676c, 0xdb2aa4eb, 0xbad5e659, 22, 316 ); 
TEST_IMM_OP_FSRI( 80 , fsri, 0x00000000, 0x00000000, 0x80000000, 23, 320 ); 
TEST_IMM_OP_FSRI( 81 , fsri, 0x379b5ce2, 0x389ef099, 0x118de6d7, 22, 324 ); 
TEST_IMM_OP_FSRI( 82 , fsri, 0xdd3c5b25, 0x2d9282ba, 0x45ba6e9e, 15, 328 ); 
TEST_IMM_OP_FSRI( 83 , fsri, 0x00000000, 0x00000000, 0x80000000, 29, 332 ); 
TEST_IMM_OP_FSRI( 84 , fsri, 0x00000000, 0x00000000, 0x80000000, 19, 336 ); 
TEST_IMM_OP_FSRI( 85 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 30, 340 ); 
TEST_IMM_OP_FSRI( 86 , fsri, 0x00000000, 0x00000000, 0x00000000, 27, 344 ); 
TEST_IMM_OP_FSRI( 87 , fsri, 0x86291628, 0xb143114f, 0xbc243148, 19, 348 ); 
TEST_IMM_OP_FSRI( 88 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 11, 352 ); 
TEST_IMM_OP_FSRI( 89 , fsri, 0x4b0c0ce4, 0xce4dbe42, 0xc5b4b0c0, 20, 356 ); 
TEST_IMM_OP_FSRI( 90 , fsri, 0x82990642, 0x8321249e, 0x5738c14c, 15, 360 ); 
TEST_IMM_OP_FSRI( 91 , fsri, 0x097fab2a, 0x550095c3, 0xae12ff56, 25, 364 ); 
TEST_IMM_OP_FSRI( 92 , fsri, 0x00000000, 0x00000000, 0x00000000, 0, 368 ); 
TEST_IMM_OP_FSRI( 93 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 18, 372 ); 
TEST_IMM_OP_FSRI( 94 , fsri, 0x00000000, 0x00000000, 0x00000000, 15, 376 ); 
TEST_IMM_OP_FSRI( 95 , fsri, 0x00000000, 0x00000000, 0x80000000, 15, 380 ); 
TEST_IMM_OP_FSRI( 96 , fsri, 0x00000000, 0x00000000, 0x80000000, 30, 384 ); 
TEST_IMM_OP_FSRI( 97 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 21, 388 ); 
TEST_IMM_OP_FSRI( 98 , fsri, 0xb6764545, 0x1420150a, 0x8ad9d915, 26, 392 ); 
TEST_IMM_OP_FSRI( 99 , fsri, 0xd8b3d07d, 0x62cf41f6, 0x53b07183, 2, 396 ); 
TEST_IMM_OP_FSRI( 100 , fsri, 0x90867d54, 0x67d54757, 0x029bf908, 12, 400 ); 
TEST_IMM_OP_FSRI( 101 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 2, 404 ); 
TEST_IMM_OP_FSRI( 102 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 4, 408 ); 
TEST_IMM_OP_FSRI( 103 , fsri, 0x332b78a2, 0x2b78a205, 0xbd0b3d33, 8, 412 ); 
TEST_IMM_OP_FSRI( 104 , fsri, 0x00000000, 0x00000000, 0x80000000, 0, 416 ); 
TEST_IMM_OP_FSRI( 105 , fsri, 0x33aaea4a, 0x5208e873, 0x199d5752, 27, 420 ); 
TEST_IMM_OP_FSRI( 106 , fsri, 0x00000000, 0x00000000, 0x80000000, 15, 424 ); 
TEST_IMM_OP_FSRI( 107 , fsri, 0x00000000, 0x00000000, 0x00000000, 7, 428 ); 
TEST_IMM_OP_FSRI( 108 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 14, 432 ); 
TEST_IMM_OP_FSRI( 109 , fsri, 0x00000000, 0x00000000, 0x80000000, 26, 436 ); 
TEST_IMM_OP_FSRI( 110 , fsri, 0x00000000, 0x00000000, 0x80000000, 24, 440 ); 
TEST_IMM_OP_FSRI( 111 , fsri, 0xee09f11a, 0x704f88d6, 0xaadd3aaf, 3, 444 ); 
TEST_IMM_OP_FSRI( 112 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 11, 448 ); 
TEST_IMM_OP_FSRI( 113 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 8, 452 ); 
TEST_IMM_OP_FSRI( 114 , fsri, 0x00000000, 0x00000000, 0x00000000, 1, 456 ); 
TEST_IMM_OP_FSRI( 115 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 9, 460 ); 
TEST_IMM_OP_FSRI( 116 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 17, 464 ); 
TEST_IMM_OP_FSRI( 117 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 0, 468 ); 
TEST_IMM_OP_FSRI( 118 , fsri, 0x26c88781, 0x887818d9, 0x2579626c, 12, 472 ); 
TEST_IMM_OP_FSRI( 119 , fsri, 0x00000000, 0x00000000, 0x80000000, 15, 476 ); 
TEST_IMM_OP_FSRI( 120 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 8, 480 ); 
TEST_IMM_OP_FSRI( 121 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 17, 484 ); 
TEST_IMM_OP_FSRI( 122 , fsri, 0x00000000, 0x00000000, 0x80000000, 25, 488 ); 
TEST_IMM_OP_FSRI( 123 , fsri, 0x00000000, 0x00000000, 0x00000000, 23, 492 ); 
TEST_IMM_OP_FSRI( 124 , fsri, 0x6c5e1669, 0x7859a45f, 0x216979b1, 10, 496 ); 
TEST_IMM_OP_FSRI( 125 , fsri, 0x00000000, 0x00000000, 0x80000000, 14, 500 ); 
TEST_IMM_OP_FSRI( 126 , fsri, 0x00000000, 0x00000000, 0x00000000, 23, 504 ); 
TEST_IMM_OP_FSRI( 127 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 19, 508 ); 
TEST_IMM_OP_FSRI( 128 , fsri, 0x00000000, 0x00000000, 0x80000000, 13, 512 ); 
TEST_IMM_OP_FSRI( 129 , fsri, 0x00000000, 0x00000000, 0x00000000, 22, 516 ); 
TEST_IMM_OP_FSRI( 130 , fsri, 0x00000000, 0x00000000, 0x00000000, 9, 520 ); 
TEST_IMM_OP_FSRI( 131 , fsri, 0x00000000, 0x00000000, 0x80000000, 19, 524 ); 
TEST_IMM_OP_FSRI( 132 , fsri, 0x00000000, 0x00000000, 0x80000000, 11, 528 ); 
TEST_IMM_OP_FSRI( 133 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 10, 532 ); 
TEST_IMM_OP_FSRI( 134 , fsri, 0x00000000, 0x00000000, 0x00000000, 14, 536 ); 
TEST_IMM_OP_FSRI( 135 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 9, 540 ); 
TEST_IMM_OP_FSRI( 136 , fsri, 0x00000000, 0x00000000, 0x00000000, 9, 544 ); 
TEST_IMM_OP_FSRI( 137 , fsri, 0x00000000, 0x00000000, 0x80000000, 5, 548 ); 
TEST_IMM_OP_FSRI( 138 , fsri, 0xdd29db34, 0xd1bd34cd, 0xc374a76c, 26, 552 ); 
TEST_IMM_OP_FSRI( 139 , fsri, 0xc2106ac1, 0xac1ecd77, 0x886c2106, 20, 556 ); 
TEST_IMM_OP_FSRI( 140 , fsri, 0xa5f2ca31, 0xbe59462e, 0x5ba8e414, 5, 560 ); 
TEST_IMM_OP_FSRI( 141 , fsri, 0x00000000, 0x00000000, 0x00000000, 21, 564 ); 
TEST_IMM_OP_FSRI( 142 , fsri, 0x00000000, 0x00000000, 0x00000000, 10, 568 ); 
TEST_IMM_OP_FSRI( 143 , fsri, 0x00000000, 0x00000000, 0x00000000, 25, 572 ); 
TEST_IMM_OP_FSRI( 144 , fsri, 0x00000000, 0x00000000, 0x00000000, 27, 576 ); 
TEST_IMM_OP_FSRI( 145 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 1, 580 ); 
TEST_IMM_OP_FSRI( 146 , fsri, 0x788fb685, 0x6d0a2ea4, 0x8150f11f, 17, 584 ); 
TEST_IMM_OP_FSRI( 147 , fsri, 0x00000000, 0x00000000, 0x00000000, 5, 588 ); 
TEST_IMM_OP_FSRI( 148 , fsri, 0x18acfe92, 0xf49343f8, 0x9d98c567, 19, 592 ); 
TEST_IMM_OP_FSRI( 149 , fsri, 0x00000000, 0x00000000, 0x80000000, 8, 596 ); 
TEST_IMM_OP_FSRI( 150 , fsri, 0x00000000, 0x00000000, 0x00000000, 28, 600 ); 
TEST_IMM_OP_FSRI( 151 , fsri, 0xb3e0bb64, 0xcf82ed91, 0x6d07135a, 2, 604 ); 
TEST_IMM_OP_FSRI( 152 , fsri, 0x00000000, 0x00000000, 0x80000000, 11, 608 ); 
TEST_IMM_OP_FSRI( 153 , fsri, 0xd8bac185, 0x061537f4, 0xb7e762eb, 18, 612 ); 
TEST_IMM_OP_FSRI( 154 , fsri, 0x00000000, 0x00000000, 0x00000000, 18, 616 ); 
TEST_IMM_OP_FSRI( 155 , fsri, 0x00000000, 0x00000000, 0x80000000, 21, 620 ); 
TEST_IMM_OP_FSRI( 156 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 5, 624 ); 
TEST_IMM_OP_FSRI( 157 , fsri, 0x36774e2d, 0x5a00ada5, 0xe26cee9c, 25, 628 ); 
TEST_IMM_OP_FSRI( 158 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 7, 632 ); 
TEST_IMM_OP_FSRI( 159 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 8, 636 ); 
TEST_IMM_OP_FSRI( 160 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 16, 640 ); 
TEST_IMM_OP_FSRI( 161 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 2, 644 ); 
TEST_IMM_OP_FSRI( 162 , fsri, 0x00000000, 0x00000000, 0x00000000, 15, 648 ); 
TEST_IMM_OP_FSRI( 163 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 3, 652 ); 
TEST_IMM_OP_FSRI( 164 , fsri, 0x3d8fca49, 0x92240793, 0x4c7b1f94, 25, 656 ); 
TEST_IMM_OP_FSRI( 165 , fsri, 0x00000000, 0x00000000, 0x00000000, 13, 660 ); 
TEST_IMM_OP_FSRI( 166 , fsri, 0x00000000, 0x00000000, 0x80000000, 0, 664 ); 
TEST_IMM_OP_FSRI( 167 , fsri, 0x00000000, 0x00000000, 0x00000000, 12, 668 ); 
TEST_IMM_OP_FSRI( 168 , fsri, 0x00000000, 0x00000000, 0x00000000, 24, 672 ); 
TEST_IMM_OP_FSRI( 169 , fsri, 0xae756065, 0xcbdf6417, 0x815ceac0, 25, 676 ); 
TEST_IMM_OP_FSRI( 170 , fsri, 0x00000000, 0x00000000, 0x80000000, 26, 680 ); 
TEST_IMM_OP_FSRI( 171 , fsri, 0x00000000, 0x00000000, 0x80000000, 0, 684 ); 
TEST_IMM_OP_FSRI( 172 , fsri, 0x00000000, 0x00000000, 0x80000000, 30, 688 ); 
TEST_IMM_OP_FSRI( 173 , fsri, 0x00000000, 0x00000000, 0x00000000, 3, 692 ); 
TEST_IMM_OP_FSRI( 174 , fsri, 0xa648ae77, 0xefe08698, 0x574c915c, 25, 696 ); 
TEST_IMM_OP_FSRI( 175 , fsri, 0x00000000, 0x00000000, 0x00000000, 8, 700 ); 
TEST_IMM_OP_FSRI( 176 , fsri, 0x359863a9, 0xb30c7538, 0x27fb7fe6, 5, 704 ); 
TEST_IMM_OP_FSRI( 177 , fsri, 0xc4ff3a79, 0xfe74f319, 0xbebcbf89, 9, 708 ); 
TEST_IMM_OP_FSRI( 178 , fsri, 0x00000000, 0x00000000, 0x80000000, 11, 712 ); 
TEST_IMM_OP_FSRI( 179 , fsri, 0xf4cdb93e, 0x36e4f916, 0xbbc8e7d3, 10, 716 ); 
TEST_IMM_OP_FSRI( 180 , fsri, 0x1b0b5ca0, 0x8194538b, 0x106c2d72, 26, 720 ); 
TEST_IMM_OP_FSRI( 181 , fsri, 0x00000000, 0x00000000, 0x80000000, 24, 724 ); 
TEST_IMM_OP_FSRI( 182 , fsri, 0x34a26012, 0x012f1408, 0x0ca34a26, 20, 728 ); 
TEST_IMM_OP_FSRI( 183 , fsri, 0x00000000, 0x00000000, 0x00000000, 26, 732 ); 
TEST_IMM_OP_FSRI( 184 , fsri, 0xd691164f, 0x3ffc9e04, 0x775a4459, 26, 736 ); 
TEST_IMM_OP_FSRI( 185 , fsri, 0x00000000, 0x00000000, 0x00000000, 29, 740 ); 
TEST_IMM_OP_FSRI( 186 , fsri, 0xf50970a2, 0x110ede03, 0xbfa84b85, 27, 744 ); 
TEST_IMM_OP_FSRI( 187 , fsri, 0x00d68d9d, 0x0d68d9d0, 0xecaf66d0, 4, 748 ); 
TEST_IMM_OP_FSRI( 188 , fsri, 0x00000000, 0x00000000, 0x80000000, 23, 752 ); 
TEST_IMM_OP_FSRI( 189 , fsri, 0x00000000, 0x00000000, 0x00000000, 16, 756 ); 
TEST_IMM_OP_FSRI( 190 , fsri, 0x00000000, 0x00000000, 0x80000000, 27, 760 ); 
TEST_IMM_OP_FSRI( 191 , fsri, 0x00000000, 0x00000000, 0x80000000, 19, 764 ); 
TEST_IMM_OP_FSRI( 192 , fsri, 0x00000000, 0x00000000, 0x00000000, 16, 768 ); 
TEST_IMM_OP_FSRI( 193 , fsri, 0x00000000, 0x00000000, 0x80000000, 21, 772 ); 
TEST_IMM_OP_FSRI( 194 , fsri, 0x44e3a088, 0x3ee2ee45, 0x5138e822, 30, 776 ); 
TEST_IMM_OP_FSRI( 195 , fsri, 0x00000000, 0x00000000, 0x80000000, 22, 780 ); 
TEST_IMM_OP_FSRI( 196 , fsri, 0x00000000, 0x00000000, 0x80000000, 0, 784 ); 
TEST_IMM_OP_FSRI( 197 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 21, 788 ); 
TEST_IMM_OP_FSRI( 198 , fsri, 0xffffffff, 0xffffffff, 0xffffffff, 5, 792 ); 
TEST_IMM_OP_FSRI( 199 , fsri, 0x00000000, 0x00000000, 0x00000000, 6, 796 ); 

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 200, 4, -1
RV_COMPLIANCE_DATA_END
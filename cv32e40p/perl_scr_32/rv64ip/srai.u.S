# See LICENSE for license details.
#*****************************************************************************
# srai.u.S
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

TEST_IMM_OP( 2 , srai.u, 0x13ece219, 0x27d9c431, 1, 8 ); 
TEST_IMM_OP( 3 , srai.u, 0x00000000, 0x00000000, 3, 12 ); 
TEST_IMM_OP( 4 , srai.u, 0x100000000, 0xffffffff, 29, 16 ); 
TEST_IMM_OP( 5 , srai.u, 0x28a82907, 0x5150520e, 1, 20 ); 
TEST_IMM_OP( 6 , srai.u, 0xfff80000, 0x80000000, 12, 24 ); 
TEST_IMM_OP( 7 , srai.u, 0xffff8000, 0x80000000, 16, 28 ); 
TEST_IMM_OP( 8 , srai.u, 0x100000000, 0xffffffff, 12, 32 ); 
TEST_IMM_OP( 9 , srai.u, 0x00000000, 0x00000000, 19, 36 ); 
TEST_IMM_OP( 10 , srai.u, 0xfffffe00, 0x80000000, 22, 40 ); 
TEST_IMM_OP( 11 , srai.u, 0x100000000, 0xffffffff, 2, 44 ); 
TEST_IMM_OP( 12 , srai.u, 0xfff00000, 0x80000000, 11, 48 ); 
TEST_IMM_OP( 13 , srai.u, 0x00000000, 0x00000000, 6, 52 ); 
TEST_IMM_OP( 14 , srai.u, 0x100000000, 0xffffffff, 1, 56 ); 
TEST_IMM_OP( 15 , srai.u, 0xffffffdc, 0xdc5e28af, 24, 60 ); 
TEST_IMM_OP( 16 , srai.u, 0xfffffb5e, 0xdaf01461, 19, 64 ); 
TEST_IMM_OP( 17 , srai.u, 0xffffc52c, 0xf14aedfa, 14, 68 ); 
TEST_IMM_OP( 18 , srai.u, 0x003134bb, 0x62697568, 9, 72 ); 
TEST_IMM_OP( 19 , srai.u, 0x000005d1, 0x017427e2, 14, 76 ); 
TEST_IMM_OP( 20 , srai.u, 0x100000000, 0xffffffff, 5, 80 ); 
TEST_IMM_OP( 21 , srai.u, 0x00000000, 0x00000000, 17, 84 ); 
TEST_IMM_OP( 22 , srai.u, 0x00000000, 0x00000000, 4, 88 ); 
TEST_IMM_OP( 23 , srai.u, 0x100000000, 0xffffffff, 21, 92 ); 
TEST_IMM_OP( 24 , srai.u, 0xe0000000, 0x80000000, 2, 96 ); 
TEST_IMM_OP( 25 , srai.u, 0x100000000, 0xffffffff, 5, 100 ); 
TEST_IMM_OP( 26 , srai.u, 0xffc00000, 0x80000000, 9, 104 ); 
TEST_IMM_OP( 27 , srai.u, 0x100000000, 0xffffffff, 25, 108 ); 
TEST_IMM_OP( 28 , srai.u, 0x100000000, 0xffffffff, 11, 112 ); 
TEST_IMM_OP( 29 , srai.u, 0x100000000, 0xffffffff, 23, 116 ); 
TEST_IMM_OP( 30 , srai.u, 0x100000000, 0xffffffff, 29, 120 ); 
TEST_IMM_OP( 31 , srai.u, 0xfffe0000, 0x80000000, 14, 124 ); 
TEST_IMM_OP( 32 , srai.u, 0x00000000, 0x00000000, 7, 128 ); 
TEST_IMM_OP( 33 , srai.u, 0x0024abcc, 0x495798db, 9, 132 ); 
TEST_IMM_OP( 34 , srai.u, 0x100000000, 0xffffffff, 4, 136 ); 
TEST_IMM_OP( 35 , srai.u, 0x100000000, 0xffffffff, 3, 140 ); 
TEST_IMM_OP( 36 , srai.u, 0xffffffff, 0xd47265bb, 29, 144 ); 
TEST_IMM_OP( 37 , srai.u, 0x100000000, 0xffffffff, 10, 148 ); 
TEST_IMM_OP( 38 , srai.u, 0x100000000, 0xffffffff, 21, 152 ); 
TEST_IMM_OP( 39 , srai.u, 0x0001e1b1, 0x786c5c4c, 14, 156 ); 
TEST_IMM_OP( 40 , srai.u, 0x00000000, 0x00000000, 20, 160 ); 
TEST_IMM_OP( 41 , srai.u, 0xe0000000, 0x80000000, 2, 164 ); 
TEST_IMM_OP( 42 , srai.u, 0x00000000, 0x00000000, 2, 168 ); 
TEST_IMM_OP( 43 , srai.u, 0x00000000, 0x00000000, 27, 172 ); 
TEST_IMM_OP( 44 , srai.u, 0x00000000, 0x00000000, 14, 176 ); 
TEST_IMM_OP( 45 , srai.u, 0x100000000, 0xffffffff, 22, 180 ); 
TEST_IMM_OP( 46 , srai.u, 0xffffff80, 0x80000000, 24, 184 ); 
TEST_IMM_OP( 47 , srai.u, 0xffffebc6, 0xaf18426d, 18, 188 ); 
TEST_IMM_OP( 48 , srai.u, 0x00000000, 0x00000000, 28, 192 ); 
TEST_IMM_OP( 49 , srai.u, 0x80000000, 0x80000000, 0, 196 ); 
TEST_IMM_OP( 50 , srai.u, 0xfffff800, 0x80000000, 20, 200 ); 
TEST_IMM_OP( 51 , srai.u, 0xfffffff0, 0x80000000, 27, 204 ); 
TEST_IMM_OP( 52 , srai.u, 0x100000000, 0xffffffff, 13, 208 ); 
TEST_IMM_OP( 53 , srai.u, 0xfc000000, 0x80000000, 5, 212 ); 
TEST_IMM_OP( 54 , srai.u, 0x00000000, 0x00000000, 11, 216 ); 
TEST_IMM_OP( 55 , srai.u, 0x100000000, 0xffffffff, 26, 220 ); 
TEST_IMM_OP( 56 , srai.u, 0xfffffff0, 0x80000000, 27, 224 ); 
TEST_IMM_OP( 57 , srai.u, 0x100000000, 0xffffffff, 20, 228 ); 
TEST_IMM_OP( 58 , srai.u, 0x100000000, 0xffffffff, 28, 232 ); 
TEST_IMM_OP( 59 , srai.u, 0xfff80000, 0x80000000, 12, 236 ); 
TEST_IMM_OP( 60 , srai.u, 0x00000000, 0x00000000, 3, 240 ); 
TEST_IMM_OP( 61 , srai.u, 0x00000000, 0x00000000, 29, 244 ); 
TEST_IMM_OP( 62 , srai.u, 0xc0000000, 0x80000000, 1, 248 ); 
TEST_IMM_OP( 63 , srai.u, 0x100000000, 0xffffffff, 24, 252 ); 
TEST_IMM_OP( 64 , srai.u, 0x00000000, 0x00000000, 19, 256 ); 
TEST_IMM_OP( 65 , srai.u, 0xfffffe00, 0x80000000, 22, 260 ); 
TEST_IMM_OP( 66 , srai.u, 0x00000000, 0x00000000, 26, 264 ); 
TEST_IMM_OP( 67 , srai.u, 0x100000000, 0xffffffff, 27, 268 ); 
TEST_IMM_OP( 68 , srai.u, 0x00000000, 0x00000000, 16, 272 ); 
TEST_IMM_OP( 69 , srai.u, 0x100000000, 0xffffffff, 12, 276 ); 
TEST_IMM_OP( 70 , srai.u, 0x00000000, 0x00000000, 13, 280 ); 
TEST_IMM_OP( 71 , srai.u, 0xffffff90, 0x8fe03417, 24, 284 ); 
TEST_IMM_OP( 72 , srai.u, 0xfffffa8b, 0xfa8b29ff, 16, 288 ); 
TEST_IMM_OP( 73 , srai.u, 0x00000000, 0x00000000, 22, 292 ); 
TEST_IMM_OP( 74 , srai.u, 0x00000000, 0x00000000, 8, 296 ); 
TEST_IMM_OP( 75 , srai.u, 0xffff0000, 0x80000000, 15, 300 ); 
TEST_IMM_OP( 76 , srai.u, 0x094a3ed4, 0x4a51f6a3, 3, 304 ); 
TEST_IMM_OP( 77 , srai.u, 0x00000000, 0x00000000, 28, 308 ); 
TEST_IMM_OP( 78 , srai.u, 0x100000000, 0xffffffff, 13, 312 ); 
TEST_IMM_OP( 79 , srai.u, 0x00000000, 0x00000000, 15, 316 ); 
TEST_IMM_OP( 80 , srai.u, 0x00000000, 0x00000000, 12, 320 ); 
TEST_IMM_OP( 81 , srai.u, 0x100000000, 0xffffffff, 3, 324 ); 
TEST_IMM_OP( 82 , srai.u, 0x0000000a, 0x51b4245d, 27, 328 ); 
TEST_IMM_OP( 83 , srai.u, 0x100000000, 0xffffffff, 13, 332 ); 
TEST_IMM_OP( 84 , srai.u, 0xffffff00, 0x80000000, 23, 336 ); 
TEST_IMM_OP( 85 , srai.u, 0xfffffff0, 0x80000000, 27, 340 ); 
TEST_IMM_OP( 86 , srai.u, 0x100000000, 0xffffffff, 22, 344 ); 
TEST_IMM_OP( 87 , srai.u, 0x00000000, 0x00000000, 19, 348 ); 
TEST_IMM_OP( 88 , srai.u, 0x0000325f, 0x325f7b79, 16, 352 ); 
TEST_IMM_OP( 89 , srai.u, 0x0062c168, 0x0c582d04, 5, 356 ); 
TEST_IMM_OP( 90 , srai.u, 0x00000000, 0x00000000, 9, 360 ); 
TEST_IMM_OP( 91 , srai.u, 0xff800000, 0x80000000, 8, 364 ); 
TEST_IMM_OP( 92 , srai.u, 0x100000000, 0xffffffff, 8, 368 ); 
TEST_IMM_OP( 93 , srai.u, 0xfffdf831, 0xbf061d98, 13, 372 ); 
TEST_IMM_OP( 94 , srai.u, 0x100000000, 0xffffffff, 20, 376 ); 
TEST_IMM_OP( 95 , srai.u, 0x0000000b, 0x2a5cec9c, 26, 380 ); 
TEST_IMM_OP( 96 , srai.u, 0x100000000, 0xffffffff, 30, 384 ); 
TEST_IMM_OP( 97 , srai.u, 0x00000000, 0x00000000, 5, 388 ); 
TEST_IMM_OP( 98 , srai.u, 0x00000000, 0x00000000, 11, 392 ); 
TEST_IMM_OP( 99 , srai.u, 0xffffffe0, 0x80000000, 26, 396 ); 
TEST_IMM_OP( 100 , srai.u, 0xfffdd64e, 0xdd64e097, 12, 400 ); 
TEST_IMM_OP( 101 , srai.u, 0xfffffe00, 0x80000000, 22, 404 ); 
TEST_IMM_OP( 102 , srai.u, 0x100000000, 0xffffffff, 7, 408 ); 
TEST_IMM_OP( 103 , srai.u, 0xfffe0000, 0x80000000, 14, 412 ); 
TEST_IMM_OP( 104 , srai.u, 0x00000006, 0x5ee24c4e, 28, 416 ); 
TEST_IMM_OP( 105 , srai.u, 0xffffffff, 0xffffffff, 0, 420 ); 
TEST_IMM_OP( 106 , srai.u, 0x000014b3, 0x0a5954ba, 15, 424 ); 
TEST_IMM_OP( 107 , srai.u, 0xe0000000, 0x80000000, 2, 428 ); 
TEST_IMM_OP( 108 , srai.u, 0x00001d6a, 0x75a63835, 18, 432 ); 
TEST_IMM_OP( 109 , srai.u, 0xffffcd15, 0xff3454ae, 10, 436 ); 
TEST_IMM_OP( 110 , srai.u, 0xffffffb2, 0xfb1a7353, 20, 440 ); 
TEST_IMM_OP( 111 , srai.u, 0xfffeec91, 0xeec91282, 12, 444 ); 
TEST_IMM_OP( 112 , srai.u, 0x00000000, 0x00000000, 14, 448 ); 
TEST_IMM_OP( 113 , srai.u, 0x00000000, 0x00000000, 3, 452 ); 
TEST_IMM_OP( 114 , srai.u, 0x000053cb, 0x29e57021, 15, 456 ); 
TEST_IMM_OP( 115 , srai.u, 0xfffffc00, 0x80000000, 21, 460 ); 
TEST_IMM_OP( 116 , srai.u, 0xf8000000, 0x80000000, 4, 464 ); 
TEST_IMM_OP( 117 , srai.u, 0x0000b41a, 0x5a0d377a, 15, 468 ); 
TEST_IMM_OP( 118 , srai.u, 0x0012d8e6, 0x096c7309, 7, 472 ); 
TEST_IMM_OP( 119 , srai.u, 0xffff4284, 0xd0a0f063, 14, 476 ); 
TEST_IMM_OP( 120 , srai.u, 0xfff00000, 0x80000000, 11, 480 ); 
TEST_IMM_OP( 121 , srai.u, 0x00006d2b, 0x3695b801, 15, 484 ); 
TEST_IMM_OP( 122 , srai.u, 0x100000000, 0xffffffff, 19, 488 ); 
TEST_IMM_OP( 123 , srai.u, 0x01fdfd0e, 0x7f7f4390, 6, 492 ); 
TEST_IMM_OP( 124 , srai.u, 0xff7d3c2f, 0xdf4f0bd6, 6, 496 ); 
TEST_IMM_OP( 125 , srai.u, 0xffff8000, 0x80000000, 16, 500 ); 
TEST_IMM_OP( 126 , srai.u, 0x00000000, 0x00000000, 1, 504 ); 
TEST_IMM_OP( 127 , srai.u, 0x100000000, 0xffffffff, 12, 508 ); 
TEST_IMM_OP( 128 , srai.u, 0x000035a3, 0x6b456841, 17, 512 ); 
TEST_IMM_OP( 129 , srai.u, 0x00000000, 0x00000000, 30, 516 ); 
TEST_IMM_OP( 130 , srai.u, 0xfffc0000, 0x80000000, 13, 520 ); 
TEST_IMM_OP( 131 , srai.u, 0xffffff1c, 0x8dffce9d, 23, 524 ); 
TEST_IMM_OP( 132 , srai.u, 0x00000000, 0x00000000, 11, 528 ); 
TEST_IMM_OP( 133 , srai.u, 0xfffffffe, 0x87405e57, 30, 532 ); 
TEST_IMM_OP( 134 , srai.u, 0x00000000, 0x00000000, 26, 536 ); 
TEST_IMM_OP( 135 , srai.u, 0x00254aae, 0x4a955b0b, 9, 540 ); 
TEST_IMM_OP( 136 , srai.u, 0x00000000, 0x00000000, 9, 544 ); 
TEST_IMM_OP( 137 , srai.u, 0x100000000, 0xffffffff, 1, 548 ); 
TEST_IMM_OP( 138 , srai.u, 0x003e1fa9, 0x7c3f5230, 9, 552 ); 
TEST_IMM_OP( 139 , srai.u, 0x100000000, 0xffffffff, 28, 556 ); 
TEST_IMM_OP( 140 , srai.u, 0x100000000, 0xffffffff, 20, 560 ); 
TEST_IMM_OP( 141 , srai.u, 0x100000000, 0xffffffff, 18, 564 ); 
TEST_IMM_OP( 142 , srai.u, 0x00000000, 0x00000000, 1, 568 ); 
TEST_IMM_OP( 143 , srai.u, 0x100000000, 0xffffffff, 30, 572 ); 
TEST_IMM_OP( 144 , srai.u, 0x00000000, 0x0e2b8fd1, 29, 576 ); 
TEST_IMM_OP( 145 , srai.u, 0xfffffc00, 0x80000000, 21, 580 ); 
TEST_IMM_OP( 146 , srai.u, 0x100000000, 0xffffffff, 22, 584 ); 
TEST_IMM_OP( 147 , srai.u, 0x100000000, 0xffffffff, 10, 588 ); 
TEST_IMM_OP( 148 , srai.u, 0x00000004, 0x77c394ca, 29, 592 ); 
TEST_IMM_OP( 149 , srai.u, 0x00000000, 0x00000000, 18, 596 ); 
TEST_IMM_OP( 150 , srai.u, 0x00000000, 0x00000000, 19, 600 ); 
TEST_IMM_OP( 151 , srai.u, 0x100000000, 0xffffffff, 9, 604 ); 
TEST_IMM_OP( 152 , srai.u, 0xffffc000, 0x80000000, 17, 608 ); 
TEST_IMM_OP( 153 , srai.u, 0xfffffffe, 0xdedbed4f, 28, 612 ); 
TEST_IMM_OP( 154 , srai.u, 0x100000000, 0xffffffff, 30, 616 ); 
TEST_IMM_OP( 155 , srai.u, 0xffff0000, 0x80000000, 15, 620 ); 
TEST_IMM_OP( 156 , srai.u, 0xc0000000, 0x80000000, 1, 624 ); 
TEST_IMM_OP( 157 , srai.u, 0x100000000, 0xffffffff, 19, 628 ); 
TEST_IMM_OP( 158 , srai.u, 0x00000000, 0x00000000, 1, 632 ); 
TEST_IMM_OP( 159 , srai.u, 0x003e1569, 0x7c2ad13e, 9, 636 ); 
TEST_IMM_OP( 160 , srai.u, 0xffd26e5c, 0xd26e5c27, 8, 640 ); 
TEST_IMM_OP( 161 , srai.u, 0x00000000, 0x00000000, 4, 644 ); 
TEST_IMM_OP( 162 , srai.u, 0x00000000, 0x00000000, 25, 648 ); 
TEST_IMM_OP( 163 , srai.u, 0x100000000, 0xffffffff, 7, 652 ); 
TEST_IMM_OP( 164 , srai.u, 0x00000000, 0x00000000, 28, 656 ); 
TEST_IMM_OP( 165 , srai.u, 0xfffe9ccc, 0xa732f885, 14, 660 ); 
TEST_IMM_OP( 166 , srai.u, 0xfffffffe, 0x97b0e9c5, 30, 664 ); 
TEST_IMM_OP( 167 , srai.u, 0x00000000, 0x00000000, 6, 668 ); 
TEST_IMM_OP( 168 , srai.u, 0xf8000000, 0x80000000, 4, 672 ); 
TEST_IMM_OP( 169 , srai.u, 0x000000e7, 0x7394f358, 23, 676 ); 
TEST_IMM_OP( 170 , srai.u, 0x00000000, 0x00000000, 8, 680 ); 
TEST_IMM_OP( 171 , srai.u, 0x100000000, 0xffffffff, 13, 684 ); 
TEST_IMM_OP( 172 , srai.u, 0xff800000, 0x80000000, 8, 688 ); 
TEST_IMM_OP( 173 , srai.u, 0x00000000, 0x00000000, 10, 692 ); 
TEST_IMM_OP( 174 , srai.u, 0xffff0000, 0x80000000, 15, 696 ); 
TEST_IMM_OP( 175 , srai.u, 0x100000000, 0xffffffff, 2, 700 ); 
TEST_IMM_OP( 176 , srai.u, 0x100000000, 0xffffffff, 4, 704 ); 
TEST_IMM_OP( 177 , srai.u, 0xf8000000, 0x80000000, 4, 708 ); 
TEST_IMM_OP( 178 , srai.u, 0xfff00000, 0x80000000, 11, 712 ); 
TEST_IMM_OP( 179 , srai.u, 0x00000000, 0x00000000, 4, 716 ); 
TEST_IMM_OP( 180 , srai.u, 0x00000072, 0x38e4b21f, 23, 720 ); 
TEST_IMM_OP( 181 , srai.u, 0x00000000, 0x00000000, 29, 724 ); 
TEST_IMM_OP( 182 , srai.u, 0x00ca51cc, 0x194a3979, 5, 728 ); 
TEST_IMM_OP( 183 , srai.u, 0x001de903, 0x3bd20665, 9, 732 ); 
TEST_IMM_OP( 184 , srai.u, 0x00000000, 0x00000000, 21, 736 ); 
TEST_IMM_OP( 185 , srai.u, 0x00000000, 0x00000000, 26, 740 ); 
TEST_IMM_OP( 186 , srai.u, 0xffff5a88, 0xad443fc0, 15, 744 ); 
TEST_IMM_OP( 187 , srai.u, 0x00c05b28, 0x3016c9f0, 6, 748 ); 
TEST_IMM_OP( 188 , srai.u, 0x100000000, 0xffffffff, 6, 752 ); 
TEST_IMM_OP( 189 , srai.u, 0xff800000, 0x80000000, 8, 756 ); 
TEST_IMM_OP( 190 , srai.u, 0xffc00000, 0x80000000, 9, 760 ); 
TEST_IMM_OP( 191 , srai.u, 0x100000000, 0xffffffff, 29, 764 ); 
TEST_IMM_OP( 192 , srai.u, 0x00000000, 0x00000000, 3, 768 ); 
TEST_IMM_OP( 193 , srai.u, 0x00000000, 0x00000000, 30, 772 ); 
TEST_IMM_OP( 194 , srai.u, 0xffffe058, 0xe0579314, 16, 776 ); 
TEST_IMM_OP( 195 , srai.u, 0xffe68572, 0x9a15c84f, 10, 780 ); 
TEST_IMM_OP( 196 , srai.u, 0x100000000, 0xffffffff, 30, 784 ); 
TEST_IMM_OP( 197 , srai.u, 0xfffffffe, 0xb080e066, 29, 788 ); 
TEST_IMM_OP( 198 , srai.u, 0x100000000, 0xffffffff, 26, 792 ); 
TEST_IMM_OP( 199 , srai.u, 0x100000000, 0xffffffff, 16, 796 ); 

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
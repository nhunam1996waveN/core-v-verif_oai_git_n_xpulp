# See LICENSE for license details.
#*****************************************************************************
# bitrevi.S
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

TEST_IMM_OP( 2 , bitrevi, 0x00000000, 0x00000000, 3, 8 ); 
TEST_IMM_OP( 3 , bitrevi, 0x000003ff, 0xffffffff, 9, 12 ); 
TEST_IMM_OP( 4 , bitrevi, 0x0000000f, 0x69974fbe, 4, 16 ); 
TEST_IMM_OP( 5 , bitrevi, 0x00000000, 0x80000000, 18, 20 ); 
TEST_IMM_OP( 6 , bitrevi, 0x00000000, 0x00000000, 6, 24 ); 
TEST_IMM_OP( 7 , bitrevi, 0x00003fff, 0xffffffff, 13, 28 ); 
TEST_IMM_OP( 8 , bitrevi, 0x00000000, 0x00000000, 28, 32 ); 
TEST_IMM_OP( 9 , bitrevi, 0x0000003f, 0xffffffff, 5, 36 ); 
TEST_IMM_OP( 10 , bitrevi, 0x00000000, 0x00000000, 12, 40 ); 
TEST_IMM_OP( 11 , bitrevi, 0x00000000, 0x00000000, 28, 44 ); 
TEST_IMM_OP( 12 , bitrevi, 0x00000000, 0x80000000, 15, 48 ); 
TEST_IMM_OP( 13 , bitrevi, 0x00000000, 0x00000000, 7, 52 ); 
TEST_IMM_OP( 14 , bitrevi, 0x00c05cfe, 0x27f3a030, 27, 56 ); 
TEST_IMM_OP( 15 , bitrevi, 0x00000000, 0x00000000, 19, 60 ); 
TEST_IMM_OP( 16 , bitrevi, 0x188adac0, 0x206b6a23, 28, 64 ); 
TEST_IMM_OP( 17 , bitrevi, 0x007fffff, 0xffffffff, 22, 68 ); 
TEST_IMM_OP( 18 , bitrevi, 0x00000fff, 0xffffffff, 11, 72 ); 
TEST_IMM_OP( 19 , bitrevi, 0x0007ffff, 0xffffffff, 18, 76 ); 
TEST_IMM_OP( 20 , bitrevi, 0x00000000, 0x80000000, 13, 80 ); 
TEST_IMM_OP( 21 , bitrevi, 0x7fffffff, 0xffffffff, 30, 84 ); 
TEST_IMM_OP( 22 , bitrevi, 0x00010271, 0xf83f1c81, 16, 88 ); 
TEST_IMM_OP( 23 , bitrevi, 0x00000000, 0x80000000, 25, 92 ); 
TEST_IMM_OP( 24 , bitrevi, 0x00000505, 0xea42f505, 10, 96 ); 
TEST_IMM_OP( 25 , bitrevi, 0x00000000, 0x00000000, 27, 100 ); 
TEST_IMM_OP( 26 , bitrevi, 0x1bd8b903, 0x702746f6, 29, 104 ); 
TEST_IMM_OP( 27 , bitrevi, 0x00000000, 0x80000000, 24, 108 ); 
TEST_IMM_OP( 28 , bitrevi, 0x01ffffff, 0xffffffff, 24, 112 ); 
TEST_IMM_OP( 29 , bitrevi, 0x00003d09, 0x887642f0, 17, 116 ); 
TEST_IMM_OP( 30 , bitrevi, 0x00000000, 0x00000000, 30, 120 ); 
TEST_IMM_OP( 31 , bitrevi, 0x00000000, 0x80000000, 28, 124 ); 
TEST_IMM_OP( 32 , bitrevi, 0x000001ff, 0xffffffff, 8, 128 ); 
TEST_IMM_OP( 33 , bitrevi, 0x00000000, 0x80000000, 12, 132 ); 
TEST_IMM_OP( 34 , bitrevi, 0x00000000, 0x80000000, 19, 136 ); 
TEST_IMM_OP( 35 , bitrevi, 0x072ed582, 0x08356e9c, 28, 140 ); 
TEST_IMM_OP( 36 , bitrevi, 0x00001c14, 0x46aaa507, 12, 144 ); 
TEST_IMM_OP( 37 , bitrevi, 0x0000003f, 0xffffffff, 5, 148 ); 
TEST_IMM_OP( 38 , bitrevi, 0x000fffff, 0xffffffff, 19, 152 ); 
TEST_IMM_OP( 39 , bitrevi, 0x000fffff, 0xffffffff, 19, 156 ); 
TEST_IMM_OP( 40 , bitrevi, 0x0015035c, 0x09e75815, 20, 160 ); 
TEST_IMM_OP( 41 , bitrevi, 0x00000000, 0x80000000, 24, 164 ); 
TEST_IMM_OP( 42 , bitrevi, 0x00f02a1d, 0x3ab8540f, 23, 168 ); 
TEST_IMM_OP( 43 , bitrevi, 0x00000000, 0x00000000, 11, 172 ); 
TEST_IMM_OP( 44 , bitrevi, 0x00000000, 0x00000000, 6, 176 ); 
TEST_IMM_OP( 45 , bitrevi, 0x00000008, 0x9c3f9681, 3, 180 ); 
TEST_IMM_OP( 46 , bitrevi, 0x00000000, 0x00000000, 9, 184 ); 
TEST_IMM_OP( 47 , bitrevi, 0x00000000, 0x00000000, 16, 188 ); 
TEST_IMM_OP( 48 , bitrevi, 0x00000000, 0x80000000, 6, 192 ); 
TEST_IMM_OP( 49 , bitrevi, 0x003fffff, 0xffffffff, 21, 196 ); 
TEST_IMM_OP( 50 , bitrevi, 0x00000000, 0x00000000, 2, 200 ); 
TEST_IMM_OP( 51 , bitrevi, 0x00000000, 0x80000000, 6, 204 ); 
TEST_IMM_OP( 52 , bitrevi, 0x00000000, 0x80000000, 10, 208 ); 
TEST_IMM_OP( 53 , bitrevi, 0x00007fff, 0xffffffff, 14, 212 ); 
TEST_IMM_OP( 54 , bitrevi, 0x000007ff, 0xffffffff, 10, 216 ); 
TEST_IMM_OP( 55 , bitrevi, 0x00000000, 0x00000000, 13, 220 ); 
TEST_IMM_OP( 56 , bitrevi, 0x0000ffff, 0xffffffff, 15, 224 ); 
TEST_IMM_OP( 57 , bitrevi, 0x00000000, 0x80000000, 11, 228 ); 
TEST_IMM_OP( 58 , bitrevi, 0x00000000, 0x00000000, 21, 232 ); 
TEST_IMM_OP( 59 , bitrevi, 0x00000000, 0x00000000, 29, 236 ); 
TEST_IMM_OP( 60 , bitrevi, 0x00000000, 0x80000000, 18, 240 ); 
TEST_IMM_OP( 61 , bitrevi, 0x000007ff, 0xffffffff, 10, 244 ); 
TEST_IMM_OP( 62 , bitrevi, 0x0000dfed, 0xd7bdb7fb, 15, 248 ); 
TEST_IMM_OP( 63 , bitrevi, 0x3fffffff, 0xffffffff, 29, 252 ); 
TEST_IMM_OP( 64 , bitrevi, 0x00000000, 0x80000000, 2, 256 ); 
TEST_IMM_OP( 65 , bitrevi, 0x3fffffff, 0xffffffff, 29, 260 ); 
TEST_IMM_OP( 66 , bitrevi, 0x0000000f, 0xffffffff, 3, 264 ); 
TEST_IMM_OP( 67 , bitrevi, 0x00000000, 0x80000000, 19, 268 ); 
TEST_IMM_OP( 68 , bitrevi, 0x00000000, 0x80000000, 5, 272 ); 
TEST_IMM_OP( 69 , bitrevi, 0x3fffffff, 0xffffffff, 29, 276 ); 
TEST_IMM_OP( 70 , bitrevi, 0x0e4ac5a3, 0x3c5a3527, 27, 280 ); 
TEST_IMM_OP( 71 , bitrevi, 0x0fffffff, 0xffffffff, 27, 284 ); 
TEST_IMM_OP( 72 , bitrevi, 0x00000000, 0x00000000, 11, 288 ); 
TEST_IMM_OP( 73 , bitrevi, 0x00000000, 0x80000000, 27, 292 ); 
TEST_IMM_OP( 74 , bitrevi, 0x0fffffff, 0xffffffff, 27, 296 ); 
TEST_IMM_OP( 75 , bitrevi, 0x00000dd1, 0xbdd3f176, 12, 300 ); 
TEST_IMM_OP( 76 , bitrevi, 0x00000028, 0xe0cdfe45, 5, 304 ); 
TEST_IMM_OP( 77 , bitrevi, 0x00000000, 0x00000000, 8, 308 ); 
TEST_IMM_OP( 78 , bitrevi, 0x14bd68bc, 0x0f45af4a, 29, 312 ); 
TEST_IMM_OP( 79 , bitrevi, 0x00000000, 0x00000000, 11, 316 ); 
TEST_IMM_OP( 80 , bitrevi, 0x000007ff, 0xffffffff, 10, 320 ); 
TEST_IMM_OP( 81 , bitrevi, 0x00008caa, 0xc5075531, 15, 324 ); 
TEST_IMM_OP( 82 , bitrevi, 0x0000dcd4, 0x6be4acec, 17, 328 ); 
TEST_IMM_OP( 83 , bitrevi, 0x0001ffff, 0xffffffff, 16, 332 ); 
TEST_IMM_OP( 84 , bitrevi, 0x00000000, 0x80000000, 26, 336 ); 
TEST_IMM_OP( 85 , bitrevi, 0x0003ffff, 0xffffffff, 17, 340 ); 
TEST_IMM_OP( 86 , bitrevi, 0x00000006, 0xdc49f518, 5, 344 ); 
TEST_IMM_OP( 87 , bitrevi, 0x00000000, 0x80000000, 10, 348 ); 
TEST_IMM_OP( 88 , bitrevi, 0x00000000, 0x00000000, 30, 352 ); 
TEST_IMM_OP( 89 , bitrevi, 0x0000000b, 0xd116d39a, 4, 356 ); 
TEST_IMM_OP( 90 , bitrevi, 0x00000000, 0x00000000, 20, 360 ); 
TEST_IMM_OP( 91 , bitrevi, 0x00000000, 0x00000000, 28, 364 ); 
TEST_IMM_OP( 92 , bitrevi, 0x00000000, 0x00000000, 11, 368 ); 
TEST_IMM_OP( 93 , bitrevi, 0x0000002a, 0x2ddca540, 11, 372 ); 
TEST_IMM_OP( 94 , bitrevi, 0x00000000, 0x00000000, 6, 376 ); 
TEST_IMM_OP( 95 , bitrevi, 0x00000661, 0xe37bd433, 10, 380 ); 
TEST_IMM_OP( 96 , bitrevi, 0x00d0d01e, 0x1d780b0b, 23, 384 ); 
TEST_IMM_OP( 97 , bitrevi, 0x001fffff, 0xffffffff, 20, 388 ); 
TEST_IMM_OP( 98 , bitrevi, 0x00000000, 0x00000000, 22, 392 ); 
TEST_IMM_OP( 99 , bitrevi, 0x0fffffff, 0xffffffff, 27, 396 ); 
TEST_IMM_OP( 100 , bitrevi, 0x00000000, 0x00000000, 30, 400 ); 
TEST_IMM_OP( 101 , bitrevi, 0x00000000, 0x00000000, 9, 404 ); 
TEST_IMM_OP( 102 , bitrevi, 0x07ffffff, 0xffffffff, 26, 408 ); 
TEST_IMM_OP( 103 , bitrevi, 0x000d525a, 0x45eb4956, 20, 412 ); 
TEST_IMM_OP( 104 , bitrevi, 0x00000069, 0x1b6e17cb, 6, 416 ); 
TEST_IMM_OP( 105 , bitrevi, 0x00000013, 0x4c9ee919, 4, 420 ); 
TEST_IMM_OP( 106 , bitrevi, 0x00000000, 0x00000000, 15, 424 ); 
TEST_IMM_OP( 107 , bitrevi, 0x00001301, 0xeed0b019, 12, 428 ); 
TEST_IMM_OP( 108 , bitrevi, 0x2e318f21, 0xe13c631d, 29, 432 ); 
TEST_IMM_OP( 109 , bitrevi, 0x00000d33, 0xa1f85996, 12, 436 ); 
TEST_IMM_OP( 110 , bitrevi, 0x00000000, 0x80000000, 8, 440 ); 
TEST_IMM_OP( 111 , bitrevi, 0x00000000, 0x00000000, 5, 444 ); 
TEST_IMM_OP( 112 , bitrevi, 0x00000000, 0x00000000, 11, 448 ); 
TEST_IMM_OP( 113 , bitrevi, 0x00000000, 0x80000000, 27, 452 ); 
TEST_IMM_OP( 114 , bitrevi, 0x00000000, 0x00000000, 27, 456 ); 
TEST_IMM_OP( 115 , bitrevi, 0x00000000, 0x80000000, 22, 460 ); 
TEST_IMM_OP( 116 , bitrevi, 0x00000000, 0x00000000, 21, 464 ); 
TEST_IMM_OP( 117 , bitrevi, 0x0fffffff, 0xffffffff, 27, 468 ); 
TEST_IMM_OP( 118 , bitrevi, 0x00000000, 0x00000000, 16, 472 ); 
TEST_IMM_OP( 119 , bitrevi, 0x00000000, 0x80000000, 22, 476 ); 
TEST_IMM_OP( 120 , bitrevi, 0x00024189, 0x49123048, 20, 480 ); 
TEST_IMM_OP( 121 , bitrevi, 0x00000000, 0x80000000, 16, 484 ); 
TEST_IMM_OP( 122 , bitrevi, 0x00003cfb, 0x5f68b7cf, 13, 488 ); 
TEST_IMM_OP( 123 , bitrevi, 0x00000000, 0x80000000, 0, 492 ); 
TEST_IMM_OP( 124 , bitrevi, 0x00000000, 0x80000000, 22, 496 ); 
TEST_IMM_OP( 125 , bitrevi, 0x0000ffff, 0xffffffff, 15, 500 ); 
TEST_IMM_OP( 126 , bitrevi, 0x00000000, 0x00000000, 9, 504 ); 
TEST_IMM_OP( 127 , bitrevi, 0x000001ff, 0xffffffff, 8, 508 ); 
TEST_IMM_OP( 128 , bitrevi, 0x00000003, 0xffffffff, 1, 512 ); 
TEST_IMM_OP( 129 , bitrevi, 0x000007ff, 0xffffffff, 10, 516 ); 
TEST_IMM_OP( 130 , bitrevi, 0x4db8e240, 0x81238ed9, 30, 520 ); 
TEST_IMM_OP( 131 , bitrevi, 0x00ad8e19, 0x9330e36a, 24, 524 ); 
TEST_IMM_OP( 132 , bitrevi, 0x0000002c, 0xd04c594d, 5, 528 ); 
TEST_IMM_OP( 133 , bitrevi, 0x00000000, 0x80000000, 13, 532 ); 
TEST_IMM_OP( 134 , bitrevi, 0x00000000, 0x80000000, 22, 536 ); 
TEST_IMM_OP( 135 , bitrevi, 0x0007ffff, 0xffffffff, 18, 540 ); 
TEST_IMM_OP( 136 , bitrevi, 0x00000000, 0x80000000, 19, 544 ); 
TEST_IMM_OP( 137 , bitrevi, 0x00000000, 0x80000000, 30, 548 ); 
TEST_IMM_OP( 138 , bitrevi, 0x00000000, 0x80000000, 0, 552 ); 
TEST_IMM_OP( 139 , bitrevi, 0x00000050, 0x49ed340a, 7, 556 ); 
TEST_IMM_OP( 140 , bitrevi, 0x00000000, 0x80000000, 7, 560 ); 
TEST_IMM_OP( 141 , bitrevi, 0x00000000, 0x80000000, 10, 564 ); 
TEST_IMM_OP( 142 , bitrevi, 0x00000000, 0x00000000, 22, 568 ); 
TEST_IMM_OP( 143 , bitrevi, 0x03ffffff, 0xffffffff, 25, 572 ); 
TEST_IMM_OP( 144 , bitrevi, 0x00000000, 0x00000000, 28, 576 ); 
TEST_IMM_OP( 145 , bitrevi, 0x0000003f, 0xffffffff, 5, 580 ); 
TEST_IMM_OP( 146 , bitrevi, 0x00000000, 0x00000000, 23, 584 ); 
TEST_IMM_OP( 147 , bitrevi, 0x00000000, 0x80000000, 12, 588 ); 
TEST_IMM_OP( 148 , bitrevi, 0x00000000, 0x00000000, 6, 592 ); 
TEST_IMM_OP( 149 , bitrevi, 0x00000000, 0x80000000, 25, 596 ); 
TEST_IMM_OP( 150 , bitrevi, 0x00000001, 0xffffffff, 0, 600 ); 
TEST_IMM_OP( 151 , bitrevi, 0x0000f9c0, 0x8a140e7c, 17, 604 ); 
TEST_IMM_OP( 152 , bitrevi, 0x01ffffff, 0xffffffff, 24, 608 ); 
TEST_IMM_OP( 153 , bitrevi, 0x00000001, 0xffffffff, 0, 612 ); 
TEST_IMM_OP( 154 , bitrevi, 0x00000000, 0x80000000, 20, 616 ); 
TEST_IMM_OP( 155 , bitrevi, 0x00000000, 0x80000000, 30, 620 ); 
TEST_IMM_OP( 156 , bitrevi, 0x0001ffff, 0xffffffff, 16, 624 ); 
TEST_IMM_OP( 157 , bitrevi, 0x07ffffff, 0xffffffff, 26, 628 ); 
TEST_IMM_OP( 158 , bitrevi, 0x00000000, 0x00000000, 5, 632 ); 
TEST_IMM_OP( 159 , bitrevi, 0x00000000, 0x00000000, 10, 636 ); 
TEST_IMM_OP( 160 , bitrevi, 0x00000001, 0xffffffff, 0, 640 ); 
TEST_IMM_OP( 161 , bitrevi, 0x00000023, 0xdf539b62, 6, 644 ); 
TEST_IMM_OP( 162 , bitrevi, 0x00000000, 0x80000000, 28, 648 ); 
TEST_IMM_OP( 163 , bitrevi, 0x000000df, 0x3b834bf6, 8, 652 ); 
TEST_IMM_OP( 164 , bitrevi, 0x00000000, 0x80000000, 4, 656 ); 
TEST_IMM_OP( 165 , bitrevi, 0x00001fff, 0xffffffff, 12, 660 ); 
TEST_IMM_OP( 166 , bitrevi, 0x000009ce, 0xaba1a739, 11, 664 ); 
TEST_IMM_OP( 167 , bitrevi, 0x00000000, 0x00000000, 4, 668 ); 
TEST_IMM_OP( 168 , bitrevi, 0x00000000, 0x00000000, 7, 672 ); 
TEST_IMM_OP( 169 , bitrevi, 0x00000000, 0x00000000, 19, 676 ); 
TEST_IMM_OP( 170 , bitrevi, 0x00000000, 0x00000000, 6, 680 ); 
TEST_IMM_OP( 171 , bitrevi, 0x0003ffff, 0xffffffff, 17, 684 ); 
TEST_IMM_OP( 172 , bitrevi, 0x00000000, 0x00000000, 15, 688 ); 
TEST_IMM_OP( 173 , bitrevi, 0x0fffffff, 0xffffffff, 27, 692 ); 
TEST_IMM_OP( 174 , bitrevi, 0x00000000, 0x80000000, 8, 696 ); 
TEST_IMM_OP( 175 , bitrevi, 0x00000000, 0x00000000, 5, 700 ); 
TEST_IMM_OP( 176 , bitrevi, 0x001fffff, 0xffffffff, 20, 704 ); 
TEST_IMM_OP( 177 , bitrevi, 0x00f913f8, 0xcc1fc89f, 23, 708 ); 
TEST_IMM_OP( 178 , bitrevi, 0x0c780b61, 0xa86d01e3, 27, 712 ); 
TEST_IMM_OP( 179 , bitrevi, 0x00007de6, 0x951067be, 15, 716 ); 
TEST_IMM_OP( 180 , bitrevi, 0x0000ffff, 0xffffffff, 15, 720 ); 
TEST_IMM_OP( 181 , bitrevi, 0x00000000, 0x80000000, 1, 724 ); 
TEST_IMM_OP( 182 , bitrevi, 0x00000000, 0x80000000, 19, 728 ); 
TEST_IMM_OP( 183 , bitrevi, 0x00000000, 0x80000000, 12, 732 ); 
TEST_IMM_OP( 184 , bitrevi, 0x0000004d, 0x17a73f64, 8, 736 ); 
TEST_IMM_OP( 185 , bitrevi, 0x3fffffff, 0xffffffff, 29, 740 ); 
TEST_IMM_OP( 186 , bitrevi, 0x00000000, 0x00000000, 27, 744 ); 
TEST_IMM_OP( 187 , bitrevi, 0x00000014, 0x6e0f0105, 4, 748 ); 
TEST_IMM_OP( 188 , bitrevi, 0x01ffffff, 0xffffffff, 24, 752 ); 
TEST_IMM_OP( 189 , bitrevi, 0x06cd8d21, 0x94258d9b, 26, 756 ); 
TEST_IMM_OP( 190 , bitrevi, 0x0001ffff, 0xffffffff, 16, 760 ); 
TEST_IMM_OP( 191 , bitrevi, 0x01ffffff, 0xffffffff, 24, 764 ); 
TEST_IMM_OP( 192 , bitrevi, 0x000fffff, 0xffffffff, 19, 768 ); 
TEST_IMM_OP( 193 , bitrevi, 0x00000000, 0x00000000, 9, 772 ); 
TEST_IMM_OP( 194 , bitrevi, 0x00dfa769, 0x1d2dcbf6, 24, 776 ); 
TEST_IMM_OP( 195 , bitrevi, 0x177f4976, 0x4dd25fdd, 28, 780 ); 
TEST_IMM_OP( 196 , bitrevi, 0x00004966, 0xd9236692, 15, 784 ); 
TEST_IMM_OP( 197 , bitrevi, 0x1e676ea9, 0xa55db99e, 29, 788 ); 
TEST_IMM_OP( 198 , bitrevi, 0x00000000, 0x00000000, 19, 792 ); 
TEST_IMM_OP( 199 , bitrevi, 0x00ffffff, 0xffffffff, 23, 796 ); 

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
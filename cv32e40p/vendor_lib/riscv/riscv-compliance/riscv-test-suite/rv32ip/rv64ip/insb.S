# See LICENSE for license details.
#*****************************************************************************
# insb.S
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

TEST_IMM_OP( 2 , insb, 0x00000000, 0x80000000, 0, 8 ); 
TEST_IMM_OP( 3 , insb, 0x000000ff, 0xffffffff, 0, 12 ); 
TEST_IMM_OP( 4 , insb, 0x00ff00ff, 0xffffffff, 2, 16 ); 
TEST_IMM_OP( 5 , insb, 0x005a00ff, 0x21fe705a, 2, 20 ); 
TEST_IMM_OP( 6 , insb, 0x005a1bff, 0x4000eb1b, 1, 24 ); 
TEST_IMM_OP( 7 , insb, 0x005a1b00, 0x00000000, 0, 28 ); 
TEST_IMM_OP( 8 , insb, 0x005a1b00, 0x80000000, 0, 32 ); 
TEST_IMM_OP( 9 , insb, 0x00ae1b00, 0x891e9bae, 2, 36 ); 
TEST_IMM_OP( 10 , insb, 0x00ae1bff, 0xffffffff, 0, 40 ); 
TEST_IMM_OP( 11 , insb, 0x00001bff, 0x80000000, 2, 44 ); 
TEST_IMM_OP( 12 , insb, 0x000028ff, 0xf58b9228, 1, 48 ); 
TEST_IMM_OP( 13 , insb, 0x00002800, 0x00000000, 0, 52 ); 
TEST_IMM_OP( 14 , insb, 0x000028ff, 0xffffffff, 0, 56 ); 
TEST_IMM_OP( 15 , insb, 0x00002800, 0x80000000, 0, 60 ); 
TEST_IMM_OP( 16 , insb, 0x00002800, 0x80000000, 0, 64 ); 
TEST_IMM_OP( 17 , insb, 0x00002800, 0x80000000, 2, 68 ); 
TEST_IMM_OP( 18 , insb, 0x00000000, 0x00000000, 1, 72 ); 
TEST_IMM_OP( 19 , insb, 0x0000ff00, 0xffffffff, 1, 76 ); 
TEST_IMM_OP( 20 , insb, 0x0000ff00, 0x00000000, 2, 80 ); 
TEST_IMM_OP( 21 , insb, 0x0050ff00, 0xb56b4850, 2, 84 ); 
TEST_IMM_OP( 22 , insb, 0x0000ff00, 0x80000000, 2, 88 ); 
TEST_IMM_OP( 23 , insb, 0x0000ff00, 0xffffffff, 1, 92 ); 
TEST_IMM_OP( 24 , insb, 0x0093ff00, 0xa6dcd893, 2, 96 ); 
TEST_IMM_OP( 25 , insb, 0x0093ff00, 0x80000000, 0, 100 ); 
TEST_IMM_OP( 26 , insb, 0x0000ff00, 0x80000000, 2, 104 ); 
TEST_IMM_OP( 27 , insb, 0x0000a400, 0xb0132da4, 1, 108 ); 
TEST_IMM_OP( 28 , insb, 0x0000a4ff, 0xffffffff, 0, 112 ); 
TEST_IMM_OP( 29 , insb, 0x000000ff, 0x00000000, 1, 116 ); 
TEST_IMM_OP( 30 , insb, 0x000000ff, 0xffffffff, 0, 120 ); 
TEST_IMM_OP( 31 , insb, 0x000000ff, 0x80000000, 2, 124 ); 
TEST_IMM_OP( 32 , insb, 0x000000ff, 0x80000000, 1, 128 ); 
TEST_IMM_OP( 33 , insb, 0x000000bc, 0xa5935fbc, 0, 132 ); 
TEST_IMM_OP( 34 , insb, 0x00000000, 0x80000000, 0, 136 ); 
TEST_IMM_OP( 35 , insb, 0x0000ad00, 0x55b5b3ad, 1, 140 ); 
TEST_IMM_OP( 36 , insb, 0x0000ff00, 0xffffffff, 1, 144 ); 
TEST_IMM_OP( 37 , insb, 0x0000ff00, 0xffffffff, 1, 148 ); 
TEST_IMM_OP( 38 , insb, 0x00000000, 0x80000000, 1, 152 ); 
TEST_IMM_OP( 39 , insb, 0x00000000, 0x80000000, 1, 156 ); 
TEST_IMM_OP( 40 , insb, 0x00000000, 0x00000000, 1, 160 ); 
TEST_IMM_OP( 41 , insb, 0x000000fe, 0xf3e0c5fe, 0, 164 ); 
TEST_IMM_OP( 42 , insb, 0x0000fffe, 0xffffffff, 1, 168 ); 
TEST_IMM_OP( 43 , insb, 0x0000fffe, 0x00000000, 2, 172 ); 
TEST_IMM_OP( 44 , insb, 0x0000ffa5, 0x906fdba5, 0, 176 ); 
TEST_IMM_OP( 45 , insb, 0x0000ffa5, 0x00000000, 2, 180 ); 
TEST_IMM_OP( 46 , insb, 0x0000ffa5, 0xffffffff, 1, 184 ); 
TEST_IMM_OP( 47 , insb, 0x0000ffdd, 0x6ddd64dd, 0, 188 ); 
TEST_IMM_OP( 48 , insb, 0x0000ff00, 0x80000000, 0, 192 ); 
TEST_IMM_OP( 49 , insb, 0x0000ff00, 0x80000000, 0, 196 ); 
TEST_IMM_OP( 50 , insb, 0x0000ff00, 0x00000000, 2, 200 ); 
TEST_IMM_OP( 51 , insb, 0x005cff00, 0x801c835c, 2, 204 ); 
TEST_IMM_OP( 52 , insb, 0x005cffff, 0xffffffff, 0, 208 ); 
TEST_IMM_OP( 53 , insb, 0x005cffff, 0xffffffff, 1, 212 ); 
TEST_IMM_OP( 54 , insb, 0x005cff4d, 0x85fa294d, 0, 216 ); 
TEST_IMM_OP( 55 , insb, 0x0000ff4d, 0x00000000, 2, 220 ); 
TEST_IMM_OP( 56 , insb, 0x0000ff4d, 0xffffffff, 1, 224 ); 
TEST_IMM_OP( 57 , insb, 0x0000ff4d, 0xffffffff, 1, 228 ); 
TEST_IMM_OP( 58 , insb, 0x0000ff4d, 0x80000000, 2, 232 ); 
TEST_IMM_OP( 59 , insb, 0x0000ff4d, 0x80000000, 2, 236 ); 
TEST_IMM_OP( 60 , insb, 0x0000ff60, 0xee7f7460, 0, 240 ); 
TEST_IMM_OP( 61 , insb, 0x00ffff60, 0xffffffff, 2, 244 ); 
TEST_IMM_OP( 62 , insb, 0x00ffff60, 0xffffffff, 1, 248 ); 
TEST_IMM_OP( 63 , insb, 0x00ffff60, 0xffffffff, 1, 252 ); 
TEST_IMM_OP( 64 , insb, 0x00ffc060, 0xa082dfc0, 1, 256 ); 
TEST_IMM_OP( 65 , insb, 0x00ff0060, 0x80000000, 1, 260 ); 
TEST_IMM_OP( 66 , insb, 0x00ff0060, 0x80000000, 1, 264 ); 
TEST_IMM_OP( 67 , insb, 0x00ffff60, 0xffffffff, 1, 268 ); 
TEST_IMM_OP( 68 , insb, 0x0009ff60, 0x43e0b309, 2, 272 ); 
TEST_IMM_OP( 69 , insb, 0x0009ff60, 0x6e2e3860, 0, 276 ); 
TEST_IMM_OP( 70 , insb, 0x0000ff60, 0x00000000, 2, 280 ); 
TEST_IMM_OP( 71 , insb, 0x0000ffff, 0xffffffff, 0, 284 ); 
TEST_IMM_OP( 72 , insb, 0x0000ff00, 0x00000000, 0, 288 ); 
TEST_IMM_OP( 73 , insb, 0x0000ff63, 0xa1254363, 0, 292 ); 
TEST_IMM_OP( 74 , insb, 0x0000ff63, 0x00000000, 2, 296 ); 
TEST_IMM_OP( 75 , insb, 0x0000ff63, 0x80000000, 2, 300 ); 
TEST_IMM_OP( 76 , insb, 0x0000ff63, 0x80000000, 2, 304 ); 
TEST_IMM_OP( 77 , insb, 0x0000ff63, 0x80000000, 2, 308 ); 
TEST_IMM_OP( 78 , insb, 0x0000ff63, 0x80000000, 2, 312 ); 
TEST_IMM_OP( 79 , insb, 0x00c4ff63, 0xb6ac0bc4, 2, 316 ); 
TEST_IMM_OP( 80 , insb, 0x00c40063, 0x80000000, 1, 320 ); 
TEST_IMM_OP( 81 , insb, 0x00c4ff63, 0xffffffff, 1, 324 ); 
TEST_IMM_OP( 82 , insb, 0x0000ff63, 0x80000000, 2, 328 ); 
TEST_IMM_OP( 83 , insb, 0x0000ff63, 0xffffffff, 1, 332 ); 
TEST_IMM_OP( 84 , insb, 0x0000ff63, 0x80000000, 2, 336 ); 
TEST_IMM_OP( 85 , insb, 0x0000ffff, 0xffffffff, 0, 340 ); 
TEST_IMM_OP( 86 , insb, 0x000000ff, 0x80000000, 1, 344 ); 
TEST_IMM_OP( 87 , insb, 0x00000000, 0x00000000, 0, 348 ); 
TEST_IMM_OP( 88 , insb, 0x00ff0000, 0xffffffff, 2, 352 ); 
TEST_IMM_OP( 89 , insb, 0x00ff0000, 0x80000000, 1, 356 ); 
TEST_IMM_OP( 90 , insb, 0x00ff0000, 0x00000000, 0, 360 ); 
TEST_IMM_OP( 91 , insb, 0x00ff0000, 0x00000000, 0, 364 ); 
TEST_IMM_OP( 92 , insb, 0x00ffff00, 0xffffffff, 1, 368 ); 
TEST_IMM_OP( 93 , insb, 0x00ff0000, 0x80000000, 1, 372 ); 
TEST_IMM_OP( 94 , insb, 0x00ff007c, 0x0a2d937c, 0, 376 ); 
TEST_IMM_OP( 95 , insb, 0x00ff003d, 0x7b383f3d, 0, 380 ); 
TEST_IMM_OP( 96 , insb, 0x00ff003d, 0xffffffff, 2, 384 ); 
TEST_IMM_OP( 97 , insb, 0x00ff003d, 0xffffffff, 2, 388 ); 
TEST_IMM_OP( 98 , insb, 0x00ff003d, 0xffffffff, 2, 392 ); 
TEST_IMM_OP( 99 , insb, 0x00d5003d, 0x15e3ead5, 2, 396 ); 
TEST_IMM_OP( 100 , insb, 0x00d50000, 0x80000000, 0, 400 ); 
TEST_IMM_OP( 101 , insb, 0x00d5ea00, 0x0e1c31ea, 1, 404 ); 
TEST_IMM_OP( 102 , insb, 0x00d50000, 0x80000000, 1, 408 ); 
TEST_IMM_OP( 103 , insb, 0x00d50000, 0x80000000, 1, 412 ); 
TEST_IMM_OP( 104 , insb, 0x00000000, 0x00000000, 2, 416 ); 
TEST_IMM_OP( 105 , insb, 0x00000000, 0x00000000, 2, 420 ); 
TEST_IMM_OP( 106 , insb, 0x000000ff, 0xffffffff, 0, 424 ); 
TEST_IMM_OP( 107 , insb, 0x003500ff, 0xaa19e235, 2, 428 ); 
TEST_IMM_OP( 108 , insb, 0x000000ff, 0x80000000, 2, 432 ); 
TEST_IMM_OP( 109 , insb, 0x00000027, 0x6e376d27, 0, 436 ); 
TEST_IMM_OP( 110 , insb, 0x00000027, 0x80000000, 2, 440 ); 
TEST_IMM_OP( 111 , insb, 0x00000027, 0x80000000, 1, 444 ); 
TEST_IMM_OP( 112 , insb, 0x00000000, 0x80000000, 0, 448 ); 
TEST_IMM_OP( 113 , insb, 0x00000000, 0x80000000, 1, 452 ); 
TEST_IMM_OP( 114 , insb, 0x00000000, 0x00000000, 2, 456 ); 
TEST_IMM_OP( 115 , insb, 0x000000ff, 0xffffffff, 0, 460 ); 
TEST_IMM_OP( 116 , insb, 0x000000ff, 0x00000000, 1, 464 ); 
TEST_IMM_OP( 117 , insb, 0x00ff00ff, 0xffffffff, 2, 468 ); 
TEST_IMM_OP( 118 , insb, 0x00ff0000, 0x00000000, 0, 472 ); 
TEST_IMM_OP( 119 , insb, 0x00ff0000, 0xffffffff, 2, 476 ); 
TEST_IMM_OP( 120 , insb, 0x00000000, 0x80000000, 2, 480 ); 
TEST_IMM_OP( 121 , insb, 0x00ff0000, 0xffffffff, 2, 484 ); 
TEST_IMM_OP( 122 , insb, 0x00ffff00, 0xffffffff, 1, 488 ); 
TEST_IMM_OP( 123 , insb, 0x00ffff00, 0xffffffff, 1, 492 ); 
TEST_IMM_OP( 124 , insb, 0x00ffff00, 0xffffffff, 2, 496 ); 
TEST_IMM_OP( 125 , insb, 0x0000ff00, 0x80000000, 2, 500 ); 
TEST_IMM_OP( 126 , insb, 0x0000ff00, 0x00000000, 2, 504 ); 
TEST_IMM_OP( 127 , insb, 0x0000ff00, 0x80000000, 2, 508 ); 
TEST_IMM_OP( 128 , insb, 0x0000ff00, 0x00000000, 2, 512 ); 
TEST_IMM_OP( 129 , insb, 0x0000ff00, 0x00000000, 2, 516 ); 
TEST_IMM_OP( 130 , insb, 0x0000ff9c, 0xce838c9c, 0, 520 ); 
TEST_IMM_OP( 131 , insb, 0x0000ff9c, 0xffffffff, 1, 524 ); 
TEST_IMM_OP( 132 , insb, 0x0000ff00, 0x00000000, 0, 528 ); 
TEST_IMM_OP( 133 , insb, 0x0000ffd6, 0x36fad6d6, 0, 532 ); 
TEST_IMM_OP( 134 , insb, 0x0000ff00, 0x80000000, 0, 536 ); 
TEST_IMM_OP( 135 , insb, 0x00004d00, 0xcbb01f4d, 1, 540 ); 
TEST_IMM_OP( 136 , insb, 0x00414d00, 0x19f42641, 2, 544 ); 
TEST_IMM_OP( 137 , insb, 0x00414d00, 0x00000000, 0, 548 ); 
TEST_IMM_OP( 138 , insb, 0x00410000, 0x00000000, 1, 552 ); 
TEST_IMM_OP( 139 , insb, 0x00410000, 0x00000000, 0, 556 ); 
TEST_IMM_OP( 140 , insb, 0x00410000, 0x80000000, 1, 560 ); 
TEST_IMM_OP( 141 , insb, 0x00340000, 0x9093eb34, 2, 564 ); 
TEST_IMM_OP( 142 , insb, 0x00470000, 0x71afc447, 2, 568 ); 
TEST_IMM_OP( 143 , insb, 0x00080000, 0xd9bbb308, 2, 572 ); 
TEST_IMM_OP( 144 , insb, 0x00960000, 0xf845eb96, 2, 576 ); 
TEST_IMM_OP( 145 , insb, 0x00ff0000, 0xffffffff, 2, 580 ); 
TEST_IMM_OP( 146 , insb, 0x00ff0000, 0x00000000, 1, 584 ); 
TEST_IMM_OP( 147 , insb, 0x00ff0094, 0x2e919794, 0, 588 ); 
TEST_IMM_OP( 148 , insb, 0x00ff0094, 0x80000000, 1, 592 ); 
TEST_IMM_OP( 149 , insb, 0x00ff0000, 0x00000000, 0, 596 ); 
TEST_IMM_OP( 150 , insb, 0x00000000, 0x80000000, 2, 600 ); 
TEST_IMM_OP( 151 , insb, 0x00000000, 0x80000000, 2, 604 ); 
TEST_IMM_OP( 152 , insb, 0x00ff0000, 0xffffffff, 2, 608 ); 
TEST_IMM_OP( 153 , insb, 0x00ff003a, 0x48c58c3a, 0, 612 ); 
TEST_IMM_OP( 154 , insb, 0x0000003a, 0x00000000, 2, 616 ); 
TEST_IMM_OP( 155 , insb, 0x0017003a, 0xe2a75917, 2, 620 ); 
TEST_IMM_OP( 156 , insb, 0x001700d2, 0x5a92aad2, 0, 624 ); 
TEST_IMM_OP( 157 , insb, 0x00170000, 0x00000000, 0, 628 ); 
TEST_IMM_OP( 158 , insb, 0x001700cd, 0x067090cd, 0, 632 ); 
TEST_IMM_OP( 159 , insb, 0x000000cd, 0x80000000, 2, 636 ); 
TEST_IMM_OP( 160 , insb, 0x000000cd, 0x00000000, 2, 640 ); 
TEST_IMM_OP( 161 , insb, 0x008100cd, 0x184dc581, 2, 644 ); 
TEST_IMM_OP( 162 , insb, 0x008100ff, 0xffffffff, 0, 648 ); 
TEST_IMM_OP( 163 , insb, 0x00810000, 0x00000000, 0, 652 ); 
TEST_IMM_OP( 164 , insb, 0x00000000, 0x00000000, 2, 656 ); 
TEST_IMM_OP( 165 , insb, 0x00000000, 0x80000000, 1, 660 ); 
TEST_IMM_OP( 166 , insb, 0x00ff0000, 0xffffffff, 2, 664 ); 
TEST_IMM_OP( 167 , insb, 0x00ff0000, 0x80000000, 1, 668 ); 
TEST_IMM_OP( 168 , insb, 0x00ff0000, 0x80000000, 0, 672 ); 
TEST_IMM_OP( 169 , insb, 0x00ff0000, 0x00000000, 1, 676 ); 
TEST_IMM_OP( 170 , insb, 0x00ff1100, 0xac94ab11, 1, 680 ); 
TEST_IMM_OP( 171 , insb, 0x00001100, 0x80000000, 2, 684 ); 
TEST_IMM_OP( 172 , insb, 0x00ff1100, 0xffffffff, 2, 688 ); 
TEST_IMM_OP( 173 , insb, 0x00ff1100, 0x80000000, 0, 692 ); 
TEST_IMM_OP( 174 , insb, 0x00ff0000, 0x00000000, 1, 696 ); 
TEST_IMM_OP( 175 , insb, 0x00ff0000, 0x80000000, 1, 700 ); 
TEST_IMM_OP( 176 , insb, 0x00ff0000, 0x00000000, 1, 704 ); 
TEST_IMM_OP( 177 , insb, 0x00ff00ff, 0xffffffff, 0, 708 ); 
TEST_IMM_OP( 178 , insb, 0x00ff0000, 0x80000000, 0, 712 ); 
TEST_IMM_OP( 179 , insb, 0x00ff0000, 0xffffffff, 2, 716 ); 
TEST_IMM_OP( 180 , insb, 0x00ff00ff, 0xffffffff, 0, 720 ); 
TEST_IMM_OP( 181 , insb, 0x00ff0061, 0xf54bad61, 0, 724 ); 
TEST_IMM_OP( 182 , insb, 0x00ff0d61, 0xc285100d, 1, 728 ); 
TEST_IMM_OP( 183 , insb, 0x00ff0d00, 0x00000000, 0, 732 ); 
TEST_IMM_OP( 184 , insb, 0x00000d00, 0x80000000, 2, 736 ); 
TEST_IMM_OP( 185 , insb, 0x00000d00, 0x00000000, 2, 740 ); 
TEST_IMM_OP( 186 , insb, 0x00000d00, 0x00000000, 2, 744 ); 
TEST_IMM_OP( 187 , insb, 0x00000d00, 0x00000000, 0, 748 ); 
TEST_IMM_OP( 188 , insb, 0x00000d00, 0x80000000, 0, 752 ); 
TEST_IMM_OP( 189 , insb, 0x00ff0d00, 0xffffffff, 2, 756 ); 
TEST_IMM_OP( 190 , insb, 0x00000d00, 0x80000000, 2, 760 ); 
TEST_IMM_OP( 191 , insb, 0x00000dff, 0xffffffff, 0, 764 ); 
TEST_IMM_OP( 192 , insb, 0x000000ff, 0x00000000, 1, 768 ); 
TEST_IMM_OP( 193 , insb, 0x000045ff, 0x4388ce45, 1, 772 ); 
TEST_IMM_OP( 194 , insb, 0x00004500, 0x00000000, 0, 776 ); 
TEST_IMM_OP( 195 , insb, 0x00004500, 0x80000000, 0, 780 ); 
TEST_IMM_OP( 196 , insb, 0x00004572, 0x73e23b72, 0, 784 ); 
TEST_IMM_OP( 197 , insb, 0x00004500, 0x00000000, 0, 788 ); 
TEST_IMM_OP( 198 , insb, 0x00000000, 0x00000000, 1, 792 ); 
TEST_IMM_OP( 199 , insb, 0x00000000, 0x80000000, 1, 796 ); 

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
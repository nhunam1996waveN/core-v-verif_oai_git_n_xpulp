# See LICENSE for license details.
#*****************************************************************************
# kdmbt.S
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

TEST_RR_OP( 2 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 8); 
TEST_RR_OP( 3 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 12); 
TEST_RR_OP( 4 , kdmbt, 0x00000000, 0x80000000, 0x180a2214, 16); 
TEST_RR_OP( 5 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , kdmbt, 0x00000000, 0x2ef87a54, 0x00000000, 24); 
TEST_RR_OP( 7 , kdmbt, 0xffffffffd8480000, 0x40b227b8, 0x80000000, 28); 
TEST_RR_OP( 8 , kdmbt, 0x00000000, 0x00000000, 0x43656a89, 32); 
TEST_RR_OP( 9 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 36); 
TEST_RR_OP( 10 , kdmbt, 0xffffffffd2330000, 0xf06f2dcd, 0x80000000, 40); 
TEST_RR_OP( 11 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 44); 
TEST_RR_OP( 12 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 52); 
TEST_RR_OP( 14 , kdmbt, 0x00000000, 0x80000000, 0x6aac32df, 56); 
TEST_RR_OP( 15 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 60); 
TEST_RR_OP( 16 , kdmbt, 0x00000000, 0x00000000, 0x2700c2ee, 64); 
TEST_RR_OP( 17 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 68); 
TEST_RR_OP( 18 , kdmbt, 0x00000000, 0xe94f6cb8, 0x00000000, 72); 
TEST_RR_OP( 19 , kdmbt, 0xffffffffffff4008, 0xffffffff, 0x5ffcb64a, 76); 
TEST_RR_OP( 20 , kdmbt, 0xffffffffffffe21e, 0x75ea0ef1, 0xffffffff, 80); 
TEST_RR_OP( 21 , kdmbt, 0x00000000, 0x00000000, 0xbcd95db0, 84); 
TEST_RR_OP( 22 , kdmbt, 0x00000000, 0x80000000, 0x29bf6c9a, 88); 
TEST_RR_OP( 23 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , kdmbt, 0x6b610000, 0xdb39949f, 0x80000000, 96); 
TEST_RR_OP( 25 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 100); 
TEST_RR_OP( 26 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 104); 
TEST_RR_OP( 27 , kdmbt, 0x00000000, 0x00000000, 0x7cba74d2, 108); 
TEST_RR_OP( 28 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 112); 
TEST_RR_OP( 29 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kdmbt, 0x00003f74, 0x442ae046, 0xffffffff, 120); 
TEST_RR_OP( 31 , kdmbt, 0xffffffffffffdb3a, 0x99aa1263, 0xffffffff, 124); 
TEST_RR_OP( 32 , kdmbt, 0x00000000, 0x601b3d4e, 0x00000000, 128); 
TEST_RR_OP( 33 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kdmbt, 0x00000000, 0x80000000, 0x442efcf1, 136); 
TEST_RR_OP( 35 , kdmbt, 0x00000000, 0x54b6737c, 0x00000000, 140); 
TEST_RR_OP( 36 , kdmbt, 0x0000c8e4, 0xffffffff, 0x9b8eb5a7, 144); 
TEST_RR_OP( 37 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 148); 
TEST_RR_OP( 38 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , kdmbt, 0xffffffffffff13d6, 0xcb907615, 0xffffffff, 156); 
TEST_RR_OP( 40 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 164); 
TEST_RR_OP( 42 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 168); 
TEST_RR_OP( 43 , kdmbt, 0x00000000, 0x80000000, 0xa03a560e, 172); 
TEST_RR_OP( 44 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 176); 
TEST_RR_OP( 45 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 180); 
TEST_RR_OP( 46 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kdmbt, 0xffffffffc9700000, 0xef673690, 0x80000000, 188); 
TEST_RR_OP( 48 , kdmbt, 0x000074e4, 0xffffffff, 0xc58e5aa9, 192); 
TEST_RR_OP( 49 , kdmbt, 0x00002c46, 0x2c5de9dd, 0xffffffff, 196); 
TEST_RR_OP( 50 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 204); 
TEST_RR_OP( 52 , kdmbt, 0x00000000, 0xf8aa4c2a, 0x00000000, 208); 
TEST_RR_OP( 53 , kdmbt, 0x00000000, 0x9c0af503, 0x00000000, 212); 
TEST_RR_OP( 54 , kdmbt, 0x00000000, 0x80000000, 0x7270df39, 216); 
TEST_RR_OP( 55 , kdmbt, 0x38230000, 0x16d6c7dd, 0x80000000, 220); 
TEST_RR_OP( 56 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 224); 
TEST_RR_OP( 57 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 228); 
TEST_RR_OP( 58 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 232); 
TEST_RR_OP( 59 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 236); 
TEST_RR_OP( 60 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 240); 
TEST_RR_OP( 61 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 244); 
TEST_RR_OP( 62 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 248); 
TEST_RR_OP( 63 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 256); 
TEST_RR_OP( 65 , kdmbt, 0x260e6fd4, 0xc5eb5d8d, 0x3412cb59, 260); 
TEST_RR_OP( 66 , kdmbt, 0x00000000, 0x00000000, 0xf67b33b3, 264); 
TEST_RR_OP( 67 , kdmbt, 0x00000000, 0x80000000, 0x51c58b6c, 268); 
TEST_RR_OP( 68 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 276); 
TEST_RR_OP( 70 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 280); 
TEST_RR_OP( 71 , kdmbt, 0xffffffffaf66ff36, 0x74c1610b, 0x95b111cd, 284); 
TEST_RR_OP( 72 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 288); 
TEST_RR_OP( 73 , kdmbt, 0x000019ce, 0xffffffff, 0xf319c61d, 292); 
TEST_RR_OP( 74 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 296); 
TEST_RR_OP( 75 , kdmbt, 0xffffffffffff0804, 0x31f97bfe, 0xffffffff, 300); 
TEST_RR_OP( 76 , kdmbt, 0x00000000, 0x00000000, 0x361b7d60, 304); 
TEST_RR_OP( 77 , kdmbt, 0x00000000, 0x00000000, 0xe982f9fe, 308); 
TEST_RR_OP( 78 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , kdmbt, 0x0000f608, 0xab9284fc, 0xffffffff, 316); 
TEST_RR_OP( 80 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 320); 
TEST_RR_OP( 81 , kdmbt, 0x00000000, 0x00000000, 0x60bf79af, 324); 
TEST_RR_OP( 82 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 332); 
TEST_RR_OP( 84 , kdmbt, 0x00000000, 0x00000000, 0x74363869, 336); 
TEST_RR_OP( 85 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 340); 
TEST_RR_OP( 86 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 344); 
TEST_RR_OP( 87 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 348); 
TEST_RR_OP( 88 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 352); 
TEST_RR_OP( 89 , kdmbt, 0x00000000, 0x80000000, 0x5f165275, 356); 
TEST_RR_OP( 90 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , kdmbt, 0x0000b136, 0xffffffff, 0xa7651376, 368); 
TEST_RR_OP( 93 , kdmbt, 0x0000690a, 0xffffffff, 0xcb7bf3a4, 372); 
TEST_RR_OP( 94 , kdmbt, 0x00000000, 0x00000000, 0x7e9aaacf, 376); 
TEST_RR_OP( 95 , kdmbt, 0x457cd6d0, 0xb0498fbc, 0xb0c60499, 380); 
TEST_RR_OP( 96 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 384); 
TEST_RR_OP( 97 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 388); 
TEST_RR_OP( 98 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 392); 
TEST_RR_OP( 99 , kdmbt, 0x00000000, 0x82c02c62, 0x00000000, 396); 
TEST_RR_OP( 100 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 400); 
TEST_RR_OP( 101 , kdmbt, 0x00000000, 0x1c46e3e8, 0x00000000, 404); 
TEST_RR_OP( 102 , kdmbt, 0x06340000, 0x604ef9cc, 0x80000000, 408); 
TEST_RR_OP( 103 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 412); 
TEST_RR_OP( 104 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 416); 
TEST_RR_OP( 105 , kdmbt, 0x00000000, 0x690a6150, 0x00000000, 420); 
TEST_RR_OP( 106 , kdmbt, 0x00000000, 0x2ca4ead5, 0x00000000, 424); 
TEST_RR_OP( 107 , kdmbt, 0x00000000, 0xcc542184, 0x00000000, 428); 
TEST_RR_OP( 108 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 432); 
TEST_RR_OP( 109 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 436); 
TEST_RR_OP( 110 , kdmbt, 0x26a182c0, 0x120dc744, 0xa8d8420b, 440); 
TEST_RR_OP( 111 , kdmbt, 0xffffffffffff15b6, 0xffffffff, 0x7525d353, 444); 
TEST_RR_OP( 112 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 448); 
TEST_RR_OP( 113 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 452); 
TEST_RR_OP( 114 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 456); 
TEST_RR_OP( 115 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 460); 
TEST_RR_OP( 116 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 464); 
TEST_RR_OP( 117 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 472); 
TEST_RR_OP( 119 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 476); 
TEST_RR_OP( 120 , kdmbt, 0xffffffffe5a82770, 0x9b2fdaea, 0x5aec101c, 480); 
TEST_RR_OP( 121 , kdmbt, 0x00000000, 0x00000000, 0x2cbd1db7, 484); 
TEST_RR_OP( 122 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 492); 
TEST_RR_OP( 124 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 496); 
TEST_RR_OP( 125 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 500); 
TEST_RR_OP( 126 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 504); 
TEST_RR_OP( 127 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 512); 
TEST_RR_OP( 129 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 516); 
TEST_RR_OP( 130 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 520); 
TEST_RR_OP( 131 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 524); 
TEST_RR_OP( 132 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 528); 
TEST_RR_OP( 133 , kdmbt, 0x00000000, 0x00000000, 0x20e882dc, 532); 
TEST_RR_OP( 134 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 536); 
TEST_RR_OP( 135 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 540); 
TEST_RR_OP( 136 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 544); 
TEST_RR_OP( 137 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 548); 
TEST_RR_OP( 138 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 552); 
TEST_RR_OP( 139 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 556); 
TEST_RR_OP( 140 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 560); 
TEST_RR_OP( 141 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 564); 
TEST_RR_OP( 142 , kdmbt, 0x00000000, 0x80000000, 0xa99529c4, 568); 
TEST_RR_OP( 143 , kdmbt, 0x0000e994, 0xffffffff, 0x8b366642, 572); 
TEST_RR_OP( 144 , kdmbt, 0x00000000, 0x80000000, 0x3ea3a39c, 576); 
TEST_RR_OP( 145 , kdmbt, 0x00000000, 0x00000000, 0x960acbb6, 580); 
TEST_RR_OP( 146 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 584); 
TEST_RR_OP( 147 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 588); 
TEST_RR_OP( 148 , kdmbt, 0x00000000, 0x80000000, 0x7f25f150, 592); 
TEST_RR_OP( 149 , kdmbt, 0xffffffffffff3e5e, 0xffffffff, 0x60d16f1d, 596); 
TEST_RR_OP( 150 , kdmbt, 0x0000f5ec, 0xffffffff, 0x850ace14, 600); 
TEST_RR_OP( 151 , kdmbt, 0x00000000, 0xbe80a6af, 0x00000000, 604); 
TEST_RR_OP( 152 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 608); 
TEST_RR_OP( 153 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 612); 
TEST_RR_OP( 154 , kdmbt, 0x00000000, 0x00000000, 0x33950588, 616); 
TEST_RR_OP( 155 , kdmbt, 0x000095f6, 0x1e24b505, 0xffffffff, 620); 
TEST_RR_OP( 156 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 624); 
TEST_RR_OP( 157 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , kdmbt, 0x00000000, 0x80000000, 0x80000000, 632); 
TEST_RR_OP( 159 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 636); 
TEST_RR_OP( 160 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 640); 
TEST_RR_OP( 161 , kdmbt, 0x00000000, 0x00000000, 0x9fe3c6a3, 644); 
TEST_RR_OP( 162 , kdmbt, 0x00000000, 0x00000000, 0xdb52417a, 648); 
TEST_RR_OP( 163 , kdmbt, 0x00010000, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , kdmbt, 0xffffffff8d610000, 0x3675729f, 0x80000000, 656); 
TEST_RR_OP( 165 , kdmbt, 0x00000000, 0x80000000, 0x886c2800, 660); 
TEST_RR_OP( 166 , kdmbt, 0x22b524e0, 0x1e6e9df5, 0xd2b042b2, 664); 
TEST_RR_OP( 167 , kdmbt, 0x00000000, 0x1bc0e184, 0x00000000, 668); 
TEST_RR_OP( 168 , kdmbt, 0x0000780c, 0x516ac3fa, 0xffffffff, 672); 
TEST_RR_OP( 169 , kdmbt, 0x00000000, 0x80000000, 0xffffffff, 676); 
TEST_RR_OP( 170 , kdmbt, 0xfffffffff92924f0, 0x2284dd48, 0x1937d8a7, 680); 
TEST_RR_OP( 171 , kdmbt, 0x00000000, 0x00000000, 0x74007a7c, 684); 
TEST_RR_OP( 172 , kdmbt, 0x00000000, 0x80000000, 0x00000000, 688); 
TEST_RR_OP( 173 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 692); 
TEST_RR_OP( 174 , kdmbt, 0xffffffffffffce4e, 0xffffffff, 0x18d9b8d2, 696); 
TEST_RR_OP( 175 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 700); 
TEST_RR_OP( 176 , kdmbt, 0x00000000, 0x80000000, 0xba9ad32b, 704); 
TEST_RR_OP( 177 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 708); 
TEST_RR_OP( 178 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 712); 
TEST_RR_OP( 179 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 716); 
TEST_RR_OP( 180 , kdmbt, 0x77d50000, 0x916b882b, 0x80000000, 720); 
TEST_RR_OP( 181 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 724); 
TEST_RR_OP( 182 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 728); 
TEST_RR_OP( 183 , kdmbt, 0x00000000, 0xffffffff, 0x00000000, 732); 
TEST_RR_OP( 184 , kdmbt, 0x00000000, 0x80000000, 0xf34e3061, 736); 
TEST_RR_OP( 185 , kdmbt, 0xffffffffffffdbfc, 0x18991202, 0xffffffff, 740); 
TEST_RR_OP( 186 , kdmbt, 0x00000002, 0xffffffff, 0xffffffff, 744); 
TEST_RR_OP( 187 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 752); 
TEST_RR_OP( 189 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 760); 
TEST_RR_OP( 191 , kdmbt, 0x00000000, 0x923d417c, 0x00000000, 764); 
TEST_RR_OP( 192 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , kdmbt, 0x00000000, 0x80000000, 0x08136af1, 772); 
TEST_RR_OP( 194 , kdmbt, 0x7f960000, 0x5417806a, 0x80000000, 776); 
TEST_RR_OP( 195 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 780); 
TEST_RR_OP( 196 , kdmbt, 0x00000000, 0x00000000, 0x80000000, 784); 
TEST_RR_OP( 197 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , kdmbt, 0x00000000, 0x00000000, 0x00000000, 792); 
TEST_RR_OP( 199 , kdmbt, 0x2885efa0, 0x4eed52de, 0x3e98646d, 796); 

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
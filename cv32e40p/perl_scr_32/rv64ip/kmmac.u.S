# See LICENSE for license details.
#*****************************************************************************
# kmmac.u.S
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

TEST_RR_OP( 2 , kmmac.u, 0x23f5c424, 0xb81477b8, 0x80000000, 8); 
TEST_RR_OP( 3 , kmmac.u, 0x23f5c424, 0x5eb58829, 0x00000000, 12); 
TEST_RR_OP( 4 , kmmac.u, 0xe4117738, 0x80000000, 0x7fc899d9, 16); 
TEST_RR_OP( 5 , kmmac.u, 0xe4117738, 0xffffffff, 0x00000000, 20); 
TEST_RR_OP( 6 , kmmac.u, 0xdf59445f, 0xba645e36, 0x115b7134, 24); 
TEST_RR_OP( 7 , kmmac.u, 0xddb790b1, 0xe1cc8af0, 0x0dd4aa91, 28); 
TEST_RR_OP( 8 , kmmac.u, 0xddb790b2, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , kmmac.u, 0xddb790b3, 0xffffffff, 0x80000000, 36); 
TEST_RR_OP( 10 , kmmac.u, 0xddb790b3, 0xffffffff, 0x0e4485e1, 40); 
TEST_RR_OP( 11 , kmmac.u, 0xddb790b3, 0xffffffff, 0x837e1b47, 44); 
TEST_RR_OP( 12 , kmmac.u, 0xddb790b3, 0xffffffff, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmmac.u, 0x1db790b3, 0x80000000, 0x80000000, 52); 
TEST_RR_OP( 14 , kmmac.u, 0x1db790b3, 0x00000000, 0x80000000, 56); 
TEST_RR_OP( 15 , kmmac.u, 0x1db790b3, 0x00000000, 0x80000000, 60); 
TEST_RR_OP( 16 , kmmac.u, 0x1db790b3, 0x00000000, 0x80000000, 64); 
TEST_RR_OP( 17 , kmmac.u, 0x1db790b3, 0xffffffff, 0x2e8cf31c, 68); 
TEST_RR_OP( 18 , kmmac.u, 0x1db790b3, 0x00000000, 0x80000000, 72); 
TEST_RR_OP( 19 , kmmac.u, 0x5db790b3, 0x80000000, 0x80000000, 76); 
TEST_RR_OP( 20 , kmmac.u, 0x5db790b3, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kmmac.u, 0x5db790b3, 0xffffffff, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmmac.u, 0x5db790b3, 0x4312349d, 0xffffffff, 88); 
TEST_RR_OP( 23 , kmmac.u, 0x5db790b3, 0x00000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kmmac.u, 0x5db790b4, 0x80000000, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmmac.u, 0x5db790b4, 0x00000000, 0x80000000, 100); 
TEST_RR_OP( 26 , kmmac.u, 0x5db790b4, 0x80000000, 0x00000000, 104); 
TEST_RR_OP( 27 , kmmac.u, 0x5db790b4, 0xffffffff, 0xb01f0fcc, 108); 
TEST_RR_OP( 28 , kmmac.u, 0x4b9d0839, 0x243510f6, 0x80000000, 112); 
TEST_RR_OP( 29 , kmmac.u, 0x5a8a01b0, 0xe2260d13, 0x80000000, 116); 
TEST_RR_OP( 30 , kmmac.u, 0x5a8a01b0, 0x80000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kmmac.u, 0x591cd62f, 0x80000000, 0x02da5702, 124); 
TEST_RR_OP( 32 , kmmac.u, 0x591cd62f, 0x80000000, 0x00000000, 128); 
TEST_RR_OP( 33 , kmmac.u, 0x591cd62f, 0xbb990399, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmmac.u, 0x591cd62f, 0xffffffff, 0xffffffff, 136); 
TEST_RR_OP( 35 , kmmac.u, 0x591cd62f, 0x00000000, 0x00000000, 140); 
TEST_RR_OP( 36 , kmmac.u, 0x591cd630, 0xffffffff, 0x80000000, 144); 
TEST_RR_OP( 37 , kmmac.u, 0x591cd630, 0x00000000, 0xa16f9130, 148); 
TEST_RR_OP( 38 , kmmac.u, 0x591cd630, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , kmmac.u, 0x591cd630, 0xffffffff, 0x4ffb8ca1, 156); 
TEST_RR_OP( 40 , kmmac.u, 0x591cd630, 0x00000000, 0x2d529917, 160); 
TEST_RR_OP( 41 , kmmac.u, 0x2c537581, 0x5992c15f, 0x80000000, 164); 
TEST_RR_OP( 42 , kmmac.u, 0x6c537581, 0x80000000, 0x80000000, 168); 
TEST_RR_OP( 43 , kmmac.u, 0x6c537581, 0xffffffff, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmmac.u, 0x77aa5540, 0x80000000, 0xe9524083, 176); 
TEST_RR_OP( 45 , kmmac.u, 0x77aa5540, 0x022a6df0, 0xffffffff, 180); 
TEST_RR_OP( 46 , kmmac.u, 0x77aa5540, 0x00000000, 0x80000000, 184); 
TEST_RR_OP( 47 , kmmac.u, 0x77aa5540, 0xb49a36e4, 0x00000000, 188); 
TEST_RR_OP( 48 , kmmac.u, 0x7fffffff, 0x80000000, 0x80000000, 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_RR_OP( 52 , kmmac.u, 0x00000000, 0x00000000, 0x1cede810, 208); 
TEST_RR_OP( 53 , kmmac.u, 0xef98d240, 0x20ce5b81, 0x80000000, 212); 
TEST_RR_OP( 54 , kmmac.u, 0xef98d241, 0x80000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , kmmac.u, 0xef98d242, 0x80000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmmac.u, 0xef98d242, 0x101885b3, 0x00000000, 224); 
TEST_RR_OP( 57 , kmmac.u, 0xef98d242, 0xcf022bf0, 0xffffffff, 228); 
TEST_RR_OP( 58 , kmmac.u, 0xfcd6e731, 0xe583d622, 0x80000000, 232); 
TEST_RR_OP( 59 , kmmac.u, 0x02c1a0e2, 0xf42a8c9f, 0x80000000, 236); 
TEST_RR_OP( 60 , kmmac.u, 0x02c1a0e2, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kmmac.u, 0x02c1a0e2, 0x80000000, 0x00000000, 244); 
TEST_RR_OP( 62 , kmmac.u, 0x02c1a0e3, 0xffffffff, 0x80000000, 248); 
TEST_RR_OP( 63 , kmmac.u, 0x02c1a0e3, 0x80000000, 0x00000000, 252); 
TEST_RR_OP( 64 , kmmac.u, 0x02c1a0e3, 0x9e5f6958, 0x00000000, 256); 
TEST_RR_OP( 65 , kmmac.u, 0x02c1a0e3, 0x80000000, 0x00000000, 260); 
TEST_RR_OP( 66 , kmmac.u, 0x02c1a0e3, 0x00000000, 0x00000000, 264); 
TEST_RR_OP( 67 , kmmac.u, 0x02c1a0e3, 0x00000000, 0xa8999caf, 268); 
TEST_RR_OP( 68 , kmmac.u, 0x02c1a0e3, 0xffffffff, 0x00000000, 272); 
TEST_RR_OP( 69 , kmmac.u, 0x02c1a0e3, 0xffffffff, 0x94b7ce48, 276); 
TEST_RR_OP( 70 , kmmac.u, 0x02c1a0e3, 0x00000000, 0x80000000, 280); 
TEST_RR_OP( 71 , kmmac.u, 0xdcaa0044, 0x6581bb9e, 0x9fee670b, 284); 
TEST_RR_OP( 72 , kmmac.u, 0xbfed9933, 0x3978ce22, 0x80000000, 288); 
TEST_RR_OP( 73 , kmmac.u, 0xd02388c5, 0xdf9420dd, 0x80000000, 292); 
TEST_RR_OP( 74 , kmmac.u, 0xd02388c5, 0x2ffe3b77, 0x00000000, 296); 
TEST_RR_OP( 75 , kmmac.u, 0x102388c5, 0x80000000, 0x80000000, 300); 
TEST_RR_OP( 76 , kmmac.u, 0x1db32076, 0xdfe49517, 0x93dfe6ce, 304); 
TEST_RR_OP( 77 , kmmac.u, 0x1e2d3a01, 0x4e11812c, 0x01906300, 308); 
TEST_RR_OP( 78 , kmmac.u, 0x5e2d3a01, 0x80000000, 0x80000000, 312); 
TEST_RR_OP( 79 , kmmac.u, 0x5e2d3a01, 0xffffffff, 0x00000000, 316); 
TEST_RR_OP( 80 , kmmac.u, 0x7fffffff, 0x80000000, 0x80000000, 320); 
TEST_CASE( 81 ,324, x14, 1, rdov x14;);
TEST_CASE( 82 ,328, x14, 1, clrov;);
TEST_CASE( 83 ,332, x14, 0, rdov x14;);
TEST_RR_OP( 84 , kmmac.u, 0x00000000, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , kmmac.u, 0x20fb8678, 0x80000000, 0xbe08f310, 340); 
TEST_RR_OP( 86 , kmmac.u, 0x2cc0e30f, 0xb3e24aa2, 0xd8693457, 344); 
TEST_RR_OP( 87 , kmmac.u, 0x2cc0e30f, 0x00000000, 0x96e3af27, 348); 
TEST_RR_OP( 88 , kmmac.u, 0x2cc0e30f, 0xffffffff, 0x00000000, 352); 
TEST_RR_OP( 89 , kmmac.u, 0x2cc0e30f, 0x6c129da2, 0x00000000, 356); 
TEST_RR_OP( 90 , kmmac.u, 0x1db0c67c, 0x1e203927, 0x80000000, 360); 
TEST_RR_OP( 91 , kmmac.u, 0x5db0c67c, 0x80000000, 0x80000000, 364); 
TEST_RR_OP( 92 , kmmac.u, 0x5db0c67c, 0xffffffff, 0x00000000, 368); 
TEST_RR_OP( 93 , kmmac.u, 0x5db0c67c, 0x80000000, 0x00000000, 372); 
TEST_RR_OP( 94 , kmmac.u, 0x5db0c67c, 0x00000000, 0x00000000, 376); 
TEST_RR_OP( 95 , kmmac.u, 0x46308678, 0x2f008008, 0x80000000, 380); 
TEST_RR_OP( 96 , kmmac.u, 0x46308679, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmmac.u, 0x46308679, 0x00000000, 0xffffffff, 388); 
TEST_RR_OP( 98 , kmmac.u, 0x46308679, 0x00000000, 0x00000000, 392); 
TEST_RR_OP( 99 , kmmac.u, 0x5985be09, 0xb891d7d1, 0xbab66f81, 396); 
TEST_RR_OP( 100 , kmmac.u, 0x5985be09, 0xffffffff, 0x00000000, 400); 
TEST_RR_OP( 101 , kmmac.u, 0x5985be09, 0xffffffff, 0x4abb4cfc, 404); 
TEST_RR_OP( 102 , kmmac.u, 0x5985be09, 0xffffffff, 0xffffffff, 408); 
TEST_RR_OP( 103 , kmmac.u, 0x5985be09, 0x95944824, 0x00000000, 412); 
TEST_RR_OP( 104 , kmmac.u, 0x5985be09, 0x00000000, 0x00000000, 416); 
TEST_RR_OP( 105 , kmmac.u, 0x5b5112d3, 0xfc69566d, 0x80000000, 420); 
TEST_RR_OP( 106 , kmmac.u, 0x5b5112d3, 0x2139e99d, 0x00000000, 424); 
TEST_RR_OP( 107 , kmmac.u, 0x5b5112d3, 0x80000000, 0x00000000, 428); 
TEST_RR_OP( 108 , kmmac.u, 0x5b5112d4, 0x80000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmmac.u, 0x5b5112d4, 0x5b17f488, 0xffffffff, 436); 
TEST_RR_OP( 110 , kmmac.u, 0x5b5112d4, 0x80000000, 0x00000000, 440); 
TEST_RR_OP( 111 , kmmac.u, 0x5b5112d4, 0x80000000, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmac.u, 0x5b5112d4, 0x00000000, 0x00000000, 448); 
TEST_RR_OP( 113 , kmmac.u, 0x5b5112d4, 0x80000000, 0x00000000, 452); 
TEST_RR_OP( 114 , kmmac.u, 0x5b5112d4, 0x43b83e11, 0x00000000, 456); 
TEST_RR_OP( 115 , kmmac.u, 0x5b5112d5, 0x80000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmmac.u, 0x5b5112d6, 0x80000000, 0xffffffff, 464); 
TEST_RR_OP( 117 , kmmac.u, 0x5b5112d7, 0xffffffff, 0x80000000, 468); 
TEST_RR_OP( 118 , kmmac.u, 0x5b5112d7, 0x80000000, 0x00000000, 472); 
TEST_RR_OP( 119 , kmmac.u, 0x5b5112d7, 0xffffffff, 0xffffffff, 476); 
TEST_RR_OP( 120 , kmmac.u, 0x5b5112d7, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , kmmac.u, 0x5b5112d7, 0xffffffff, 0x00000000, 484); 
TEST_RR_OP( 122 , kmmac.u, 0x4101f757, 0x349e3700, 0x80000000, 488); 
TEST_RR_OP( 123 , kmmac.u, 0x4101f757, 0x00000000, 0xffffffff, 492); 
TEST_RR_OP( 124 , kmmac.u, 0x53dc5926, 0x4e94dcb4, 0x3d6b3762, 496); 
TEST_RR_OP( 125 , kmmac.u, 0x53dc5926, 0xffffffff, 0x00000000, 500); 
TEST_RR_OP( 126 , kmmac.u, 0x53dc5926, 0xffffffff, 0x97f30729, 504); 
TEST_RR_OP( 127 , kmmac.u, 0x53dc5927, 0x80000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmmac.u, 0x53dc5927, 0x80000000, 0x00000000, 512); 
TEST_RR_OP( 129 , kmmac.u, 0x53dc5928, 0x80000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , kmmac.u, 0x2ad66853, 0x520be1aa, 0x80000000, 520); 
TEST_RR_OP( 131 , kmmac.u, 0x2ad66853, 0x00000000, 0x00000000, 524); 
TEST_RR_OP( 132 , kmmac.u, 0x2ad66853, 0xffffffff, 0x00000000, 528); 
TEST_RR_OP( 133 , kmmac.u, 0x2ad66854, 0x80000000, 0xffffffff, 532); 
TEST_RR_OP( 134 , kmmac.u, 0x2ad66854, 0x00000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmmac.u, 0x2ad66854, 0x00000000, 0x80000000, 540); 
TEST_RR_OP( 136 , kmmac.u, 0x2ad66854, 0xffffffff, 0x00000000, 544); 
TEST_RR_OP( 137 , kmmac.u, 0x4606496b, 0xb34432ec, 0xa54c5396, 548); 
TEST_RR_OP( 138 , kmmac.u, 0x4606496b, 0x00000000, 0xb67be2cd, 552); 
TEST_RR_OP( 139 , kmmac.u, 0x4606496b, 0xffffffff, 0xffffffff, 556); 
TEST_RR_OP( 140 , kmmac.u, 0x4ae2784c, 0x9c51c655, 0xf384af31, 560); 
TEST_RR_OP( 141 , kmmac.u, 0x4ae2784d, 0xffffffff, 0x80000000, 564); 
TEST_RR_OP( 142 , kmmac.u, 0x4ae2784d, 0x00000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , kmmac.u, 0x4ae2784d, 0xd3483d24, 0xffffffff, 572); 
TEST_RR_OP( 144 , kmmac.u, 0x67b11d45, 0xc662b610, 0x80000000, 576); 
TEST_RR_OP( 145 , kmmac.u, 0x4c45955a, 0x4219619c, 0x95cd9172, 580); 
TEST_RR_OP( 146 , kmmac.u, 0x7fffffff, 0x80000000, 0x80000000, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , kmmac.u, 0x00000000, 0x97049ea8, 0x00000000, 600); 
TEST_RR_OP( 151 , kmmac.u, 0x00000000, 0xffffffff, 0xb4c52ea8, 604); 
TEST_RR_OP( 152 , kmmac.u, 0xfa119601, 0x0bdcd3ff, 0x80000000, 608); 
TEST_RR_OP( 153 , kmmac.u, 0xfa119601, 0x00000000, 0xffffffff, 612); 
TEST_RR_OP( 154 , kmmac.u, 0x05f3f325, 0x32f03895, 0x3bb9f3c3, 616); 
TEST_RR_OP( 155 , kmmac.u, 0x05f3f325, 0xffffffff, 0x00000000, 620); 
TEST_RR_OP( 156 , kmmac.u, 0x05f3f325, 0x00000000, 0xffffffff, 624); 
TEST_RR_OP( 157 , kmmac.u, 0x05f3f325, 0x00000000, 0x00000000, 628); 
TEST_RR_OP( 158 , kmmac.u, 0x05f3f325, 0x00000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmmac.u, 0x05f3f325, 0xffffffff, 0x00000000, 636); 
TEST_RR_OP( 160 , kmmac.u, 0x049cabff, 0xf59c5423, 0x210a9656, 640); 
TEST_RR_OP( 161 , kmmac.u, 0x049cabff, 0x80000000, 0x00000000, 644); 
TEST_RR_OP( 162 , kmmac.u, 0x049cabff, 0x00000000, 0x80000000, 648); 
TEST_RR_OP( 163 , kmmac.u, 0x049cabff, 0x00000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , kmmac.u, 0x049cabff, 0xffffffff, 0x00000000, 656); 
TEST_RR_OP( 165 , kmmac.u, 0x049cabff, 0x00000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , kmmac.u, 0x049cabff, 0xffffffff, 0x00000000, 664); 
TEST_RR_OP( 167 , kmmac.u, 0x049cabff, 0x00000000, 0x00000000, 668); 
TEST_RR_OP( 168 , kmmac.u, 0x049cabff, 0xffffffff, 0x00000000, 672); 
TEST_RR_OP( 169 , kmmac.u, 0x049cabff, 0x7a0927d9, 0x00000000, 676); 
TEST_RR_OP( 170 , kmmac.u, 0x2155cd40, 0xc68dbd7f, 0x80000000, 680); 
TEST_RR_OP( 171 , kmmac.u, 0x2155cd40, 0xdff9c44f, 0x00000000, 684); 
TEST_RR_OP( 172 , kmmac.u, 0x6155cd40, 0x80000000, 0x80000000, 688); 
TEST_RR_OP( 173 , kmmac.u, 0x6155cd40, 0xffffffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , kmmac.u, 0x6155cd40, 0xffffffff, 0xffffffff, 696); 
TEST_RR_OP( 175 , kmmac.u, 0x6155cd40, 0x80000000, 0x00000000, 700); 
TEST_RR_OP( 176 , kmmac.u, 0x6155cd40, 0x00000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kmmac.u, 0x22a946d0, 0x7d590ce1, 0x80000000, 708); 
TEST_RR_OP( 178 , kmmac.u, 0x22a946d0, 0x00000000, 0x80000000, 712); 
TEST_RR_OP( 179 , kmmac.u, 0x62a946d0, 0x80000000, 0x80000000, 716); 
TEST_RR_OP( 180 , kmmac.u, 0x62a946d0, 0x80000000, 0x00000000, 720); 
TEST_RR_OP( 181 , kmmac.u, 0x62a946d0, 0x00000000, 0x00000000, 724); 
TEST_RR_OP( 182 , kmmac.u, 0x62a946d0, 0xffffffff, 0x0bc8a62c, 728); 
TEST_RR_OP( 183 , kmmac.u, 0x7fffffff, 0xa430614d, 0x80000000, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , kmmac.u, 0x00000000, 0xffffffff, 0xffffffff, 748); 
TEST_RR_OP( 188 , kmmac.u, 0x00000000, 0x00000000, 0x0ee6b4ea, 752); 
TEST_RR_OP( 189 , kmmac.u, 0x00000000, 0x00000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , kmmac.u, 0x2e670033, 0x80000000, 0xa331ff9a, 760); 
TEST_RR_OP( 191 , kmmac.u, 0x2e670033, 0xffffffff, 0xffffffff, 764); 
TEST_RR_OP( 192 , kmmac.u, 0x2e670033, 0xffffffff, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmmac.u, 0x2e670033, 0xffffffff, 0xffffffff, 772); 
TEST_RR_OP( 194 , kmmac.u, 0x2e670033, 0xffffffff, 0x8b72f994, 776); 
TEST_RR_OP( 195 , kmmac.u, 0x2e670033, 0xffffffff, 0x098a4989, 780); 
TEST_RR_OP( 196 , kmmac.u, 0x2e670033, 0xffffffff, 0xeb12a300, 784); 
TEST_RR_OP( 197 , kmmac.u, 0x2e670033, 0x80000000, 0x00000000, 788); 
TEST_RR_OP( 198 , kmmac.u, 0x2e670033, 0x0d3b41d5, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmmac.u, 0x2e670033, 0xffffffff, 0x00000000, 796); 

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
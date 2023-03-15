# See LICENSE for license details.
#*****************************************************************************
# kmmwb2.u.S
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

TEST_RR_OP( 2 , kmmwb2.u, 0x540f0000, 0x80000000, 0xbf37abf1, 8); 
TEST_RR_OP( 3 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmmwb2.u, 0x00000000, 0x00000000, 0x210c411f, 16); 
TEST_RR_OP( 5 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , kmmwb2.u, 0x00000000, 0xe896f62d, 0x00000000, 24); 
TEST_RR_OP( 7 , kmmwb2.u, 0x00000000, 0x6bd17e91, 0x80000000, 28); 
TEST_RR_OP( 8 , kmmwb2.u, 0x0547ea87, 0xecfc72c9, 0xbb52dc73, 32); 
TEST_RR_OP( 9 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmmwb2.u, 0xf041e0b9, 0x5fd92b42, 0x19d6eafa, 40); 
TEST_RR_OP( 11 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 48); 
TEST_RR_OP( 13 , kmmwb2.u, 0xd67ba3d8, 0x39d6c5ce, 0x6b73a41f, 52); 
TEST_RR_OP( 14 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , kmmwb2.u, 0xffffffff, 0xffffffff, 0xce1c6778, 60); 
TEST_RR_OP( 16 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmmwb2.u, 0x0000ff54, 0x805607a0, 0xffffffff, 72); 
TEST_RR_OP( 19 , kmmwb2.u, 0xffff57f0, 0x5407d3e4, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 84); 
TEST_RR_OP( 22 , kmmwb2.u, 0x00000000, 0x879b2fb2, 0x80000000, 88); 
TEST_RR_OP( 23 , kmmwb2.u, 0x00000000, 0x744a6c1d, 0x00000000, 92); 
TEST_RR_OP( 24 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 96); 
TEST_RR_OP( 25 , kmmwb2.u, 0x00000000, 0x17c8a757, 0x80000000, 100); 
TEST_RR_OP( 26 , kmmwb2.u, 0x00000000, 0xffffffff, 0x140ef268, 104); 
TEST_RR_OP( 27 , kmmwb2.u, 0x00000001, 0xffffffff, 0x8780bf06, 108); 
TEST_RR_OP( 28 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 116); 
TEST_RR_OP( 30 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 120); 
TEST_RR_OP( 31 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 124); 
TEST_RR_OP( 32 , kmmwb2.u, 0x00000000, 0x00000000, 0x54cb7f10, 128); 
TEST_RR_OP( 33 , kmmwb2.u, 0x00000000, 0xffffffff, 0x5c040e03, 132); 
TEST_RR_OP( 34 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 136); 
TEST_RR_OP( 35 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 140); 
TEST_RR_OP( 36 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 144); 
TEST_RR_OP( 37 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmmwb2.u, 0x00000000, 0x00000000, 0xe9585a5b, 156); 
TEST_RR_OP( 40 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 160); 
TEST_RR_OP( 41 , kmmwb2.u, 0x0000a6b5, 0xaca58660, 0xffffffff, 164); 
TEST_RR_OP( 42 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 168); 
TEST_RR_OP( 43 , kmmwb2.u, 0x00000000, 0x432c0ee9, 0x80000000, 172); 
TEST_RR_OP( 44 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 176); 
TEST_RR_OP( 45 , kmmwb2.u, 0x00000000, 0x00000000, 0x4c8d0729, 180); 
TEST_RR_OP( 46 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 184); 
TEST_RR_OP( 47 , kmmwb2.u, 0x00000000, 0x6ce59a87, 0x80000000, 188); 
TEST_RR_OP( 48 , kmmwb2.u, 0x00000000, 0x00000000, 0x2396dd87, 192); 
TEST_RR_OP( 49 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 196); 
TEST_RR_OP( 50 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 200); 
TEST_RR_OP( 51 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 204); 
TEST_RR_OP( 52 , kmmwb2.u, 0x0000b2bc, 0xa6a1cb31, 0xffffffff, 208); 
TEST_RR_OP( 53 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 212); 
TEST_RR_OP( 54 , kmmwb2.u, 0x00000001, 0xffffffff, 0xcb3dbc84, 216); 
TEST_RR_OP( 55 , kmmwb2.u, 0x033e0000, 0x80000000, 0x7ff0fcc2, 220); 
TEST_RR_OP( 56 , kmmwb2.u, 0x9fef0000, 0x80000000, 0x9acf6011, 224); 
TEST_RR_OP( 57 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 228); 
TEST_RR_OP( 58 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 232); 
TEST_RR_OP( 59 , kmmwb2.u, 0x00000000, 0x00000000, 0x9d7f8c69, 236); 
TEST_RR_OP( 60 , kmmwb2.u, 0x286a0000, 0x80000000, 0xe31bd796, 240); 
TEST_RR_OP( 61 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 244); 
TEST_RR_OP( 62 , kmmwb2.u, 0x695e3762, 0x7dc3596f, 0xfcfb6b3e, 248); 
TEST_RR_OP( 63 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 252); 
TEST_RR_OP( 64 , kmmwb2.u, 0x00000001, 0xffffffff, 0x31d8bcdc, 256); 
TEST_RR_OP( 65 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 260); 
TEST_RR_OP( 66 , kmmwb2.u, 0xd7fca871, 0x5f8416e4, 0x5923ca61, 264); 
TEST_RR_OP( 67 , kmmwb2.u, 0xaaa80000, 0x80000000, 0x36225558, 268); 
TEST_RR_OP( 68 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , kmmwb2.u, 0x00000000, 0x00000000, 0xf849861f, 276); 
TEST_RR_OP( 70 , kmmwb2.u, 0x00000000, 0x3c94faae, 0x80000000, 280); 
TEST_RR_OP( 71 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 284); 
TEST_RR_OP( 72 , kmmwb2.u, 0xf5194e92, 0xf0a76ce7, 0xb6a55aed, 288); 
TEST_RR_OP( 73 , kmmwb2.u, 0xa3210000, 0x80000000, 0x78655cdf, 292); 
TEST_RR_OP( 74 , kmmwb2.u, 0x000048f6, 0xdb84d512, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 300); 
TEST_RR_OP( 76 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 304); 
TEST_RR_OP( 77 , kmmwb2.u, 0x38040000, 0x80000000, 0x56b5c7fc, 308); 
TEST_RR_OP( 78 , kmmwb2.u, 0x9cd60000, 0x80000000, 0x7cd5632a, 312); 
TEST_RR_OP( 79 , kmmwb2.u, 0x00000000, 0x218a4514, 0x80000000, 316); 
TEST_RR_OP( 80 , kmmwb2.u, 0x00000000, 0xa5847661, 0x80000000, 320); 
TEST_RR_OP( 81 , kmmwb2.u, 0x0000d092, 0x97b70952, 0xffffffff, 324); 
TEST_RR_OP( 82 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmmwb2.u, 0x00000000, 0xe9b466b3, 0x80000000, 332); 
TEST_RR_OP( 84 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 336); 
TEST_RR_OP( 85 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 340); 
TEST_RR_OP( 86 , kmmwb2.u, 0x00000000, 0x42374750, 0x80000000, 344); 
TEST_RR_OP( 87 , kmmwb2.u, 0x00000000, 0xdbc413df, 0x00000000, 348); 
TEST_RR_OP( 88 , kmmwb2.u, 0xffffe2ba, 0x0ea2d916, 0xffffffff, 352); 
TEST_RR_OP( 89 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 356); 
TEST_RR_OP( 90 , kmmwb2.u, 0x00000001, 0xffffffff, 0x577e8edc, 360); 
TEST_RR_OP( 91 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 364); 
TEST_RR_OP( 92 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , kmmwb2.u, 0x02c9ae11, 0x0621f14c, 0x57953a30, 372); 
TEST_RR_OP( 94 , kmmwb2.u, 0x0000d6c2, 0x949ef904, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmmwb2.u, 0xf15e32b2, 0xe6029272, 0x27444810, 380); 
TEST_RR_OP( 96 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmmwb2.u, 0x00000000, 0x28cfc5a0, 0x80000000, 388); 
TEST_RR_OP( 98 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , kmmwb2.u, 0xffffffff, 0xffffffff, 0x59fe6f5e, 396); 
TEST_RR_OP( 100 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 101 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 404); 
TEST_RR_OP( 102 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 408); 
TEST_RR_OP( 103 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 412); 
TEST_RR_OP( 104 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 416); 
TEST_RR_OP( 105 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 420); 
TEST_RR_OP( 106 , kmmwb2.u, 0xf205bc0f, 0x0ec676c6, 0x724786e9, 424); 
TEST_RR_OP( 107 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 428); 
TEST_RR_OP( 108 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 432); 
TEST_RR_OP( 109 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 436); 
TEST_RR_OP( 110 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 440); 
TEST_RR_OP( 111 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 448); 
TEST_RR_OP( 113 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmmwb2.u, 0x00000000, 0xc56c1f39, 0x80000000, 456); 
TEST_RR_OP( 115 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 460); 
TEST_RR_OP( 116 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 464); 
TEST_RR_OP( 117 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 480); 
TEST_RR_OP( 121 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 484); 
TEST_RR_OP( 122 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 488); 
TEST_RR_OP( 123 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 492); 
TEST_RR_OP( 124 , kmmwb2.u, 0x00002f87, 0xe83c90cf, 0xffffffff, 496); 
TEST_RR_OP( 125 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 500); 
TEST_RR_OP( 126 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 504); 
TEST_RR_OP( 127 , kmmwb2.u, 0xf2430000, 0x80000000, 0xaf940dbd, 508); 
TEST_RR_OP( 128 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 512); 
TEST_RR_OP( 129 , kmmwb2.u, 0x00000000, 0x00000000, 0x696071a1, 516); 
TEST_RR_OP( 130 , kmmwb2.u, 0xffff70ab, 0x47aa99d9, 0xffffffff, 520); 
TEST_RR_OP( 131 , kmmwb2.u, 0xd3e54d5e, 0x98831544, 0x49d3368d, 524); 
TEST_RR_OP( 132 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 528); 
TEST_RR_OP( 133 , kmmwb2.u, 0xfa812af1, 0x91639caa, 0x4608065c, 532); 
TEST_RR_OP( 134 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 540); 
TEST_RR_OP( 136 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmmwb2.u, 0xffff9b10, 0x3277f21e, 0xffffffff, 548); 
TEST_RR_OP( 138 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 552); 
TEST_RR_OP( 139 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 556); 
TEST_RR_OP( 140 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 560); 
TEST_RR_OP( 141 , kmmwb2.u, 0x15040000, 0x80000000, 0xc828eafc, 564); 
TEST_RR_OP( 142 , kmmwb2.u, 0x00000000, 0xfcd54779, 0x80000000, 568); 
TEST_RR_OP( 143 , kmmwb2.u, 0x00000000, 0x4351b9f3, 0x80000000, 572); 
TEST_RR_OP( 144 , kmmwb2.u, 0x0000e50b, 0x8d7a7bb1, 0xffffffff, 576); 
TEST_RR_OP( 145 , kmmwb2.u, 0x00000000, 0xe00872d9, 0x80000000, 580); 
TEST_RR_OP( 146 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 584); 
TEST_RR_OP( 147 , kmmwb2.u, 0x00000000, 0xffffffff, 0x6a3825b4, 588); 
TEST_RR_OP( 148 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 592); 
TEST_RR_OP( 149 , kmmwb2.u, 0x00000000, 0xfdaad64b, 0x80000000, 596); 
TEST_RR_OP( 150 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 600); 
TEST_RR_OP( 151 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 608); 
TEST_RR_OP( 153 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 612); 
TEST_RR_OP( 154 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmmwb2.u, 0x456894b4, 0xb30fbfe6, 0xd4518c87, 620); 
TEST_RR_OP( 156 , kmmwb2.u, 0xffffffff, 0xffffffff, 0xf7ef798d, 624); 
TEST_RR_OP( 157 , kmmwb2.u, 0x00000000, 0x00000000, 0x6dde777a, 628); 
TEST_RR_OP( 158 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 632); 
TEST_RR_OP( 159 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 636); 
TEST_RR_OP( 160 , kmmwb2.u, 0xf99d3fea, 0x1500a4bc, 0x4f6ed915, 640); 
TEST_RR_OP( 161 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 648); 
TEST_RR_OP( 163 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 652); 
TEST_RR_OP( 164 , kmmwb2.u, 0xffffffff, 0xffffffff, 0x626f7b75, 656); 
TEST_RR_OP( 165 , kmmwb2.u, 0x00000000, 0xffffffff, 0x8385d668, 660); 
TEST_RR_OP( 166 , kmmwb2.u, 0x00000000, 0xffffffff, 0x6c0dc765, 664); 
TEST_RR_OP( 167 , kmmwb2.u, 0x00000000, 0xe221a6d6, 0x80000000, 668); 
TEST_RR_OP( 168 , kmmwb2.u, 0xe50f0000, 0x80000000, 0xdc031af1, 672); 
TEST_RR_OP( 169 , kmmwb2.u, 0x00000000, 0xb9707621, 0x80000000, 676); 
TEST_RR_OP( 170 , kmmwb2.u, 0x00000000, 0x9466c5c3, 0x00000000, 680); 
TEST_RR_OP( 171 , kmmwb2.u, 0x00000000, 0x00000000, 0xbe9a4f56, 684); 
TEST_RR_OP( 172 , kmmwb2.u, 0x00000000, 0x3494c2e1, 0x80000000, 688); 
TEST_RR_OP( 173 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 692); 
TEST_RR_OP( 174 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 696); 
TEST_RR_OP( 175 , kmmwb2.u, 0x00000000, 0x00000000, 0x4c460658, 700); 
TEST_RR_OP( 176 , kmmwb2.u, 0x00000000, 0xd42d0cf5, 0x80000000, 704); 
TEST_RR_OP( 177 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 708); 
TEST_RR_OP( 178 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 712); 
TEST_RR_OP( 179 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 716); 
TEST_RR_OP( 180 , kmmwb2.u, 0x00000000, 0x80000000, 0x00000000, 720); 
TEST_RR_OP( 181 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 728); 
TEST_RR_OP( 183 , kmmwb2.u, 0x00000000, 0xffffffff, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmmwb2.u, 0x00010000, 0x80000000, 0xffffffff, 736); 
TEST_RR_OP( 185 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 740); 
TEST_RR_OP( 186 , kmmwb2.u, 0x0e8f655f, 0x6be4d48d, 0xd5b01146, 744); 
TEST_RR_OP( 187 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 752); 
TEST_RR_OP( 189 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 756); 
TEST_RR_OP( 190 , kmmwb2.u, 0x00000000, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 764); 
TEST_RR_OP( 192 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 768); 
TEST_RR_OP( 193 , kmmwb2.u, 0xc8568bb2, 0x455112d1, 0x13ed9937, 772); 
TEST_RR_OP( 194 , kmmwb2.u, 0x00000000, 0x80000000, 0x80000000, 776); 
TEST_RR_OP( 195 , kmmwb2.u, 0x00000000, 0x00000000, 0xffffffff, 780); 
TEST_RR_OP( 196 , kmmwb2.u, 0x00000000, 0xc065e277, 0x00000000, 784); 
TEST_RR_OP( 197 , kmmwb2.u, 0x00000000, 0xdf5c95e3, 0x80000000, 788); 
TEST_RR_OP( 198 , kmmwb2.u, 0x00000000, 0x00000000, 0x80000000, 792); 
TEST_RR_OP( 199 , kmmwb2.u, 0x00000000, 0x00000000, 0x00000000, 796); 

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
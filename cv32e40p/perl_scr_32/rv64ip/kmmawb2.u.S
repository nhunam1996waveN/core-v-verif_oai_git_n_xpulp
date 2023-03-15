# See LICENSE for license details.
#*****************************************************************************
# kmmawb2.u.S
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

TEST_RR_OP( 2 , kmmawb2.u, 0x00010000, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmmawb2.u, 0x00020000, 0x80000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmmawb2.u, 0x00020000, 0x2723f931, 0x00000000, 16); 
TEST_RR_OP( 5 , kmmawb2.u, 0x00020000, 0x7e719314, 0x80000000, 20); 
TEST_RR_OP( 6 , kmmawb2.u, 0x0002ab4f, 0xaa587c14, 0xffffffff, 24); 
TEST_RR_OP( 7 , kmmawb2.u, 0x0002ab50, 0xffffffff, 0xd144b343, 28); 
TEST_RR_OP( 8 , kmmawb2.u, 0x0002ab50, 0xffffffff, 0xffffffff, 32); 
TEST_RR_OP( 9 , kmmawb2.u, 0x0002ab50, 0x00000000, 0x00000000, 36); 
TEST_RR_OP( 10 , kmmawb2.u, 0x0002ab4f, 0xffffffff, 0xfafc6cd8, 40); 
TEST_RR_OP( 11 , kmmawb2.u, 0x0002ab4f, 0x80000000, 0x80000000, 44); 
TEST_RR_OP( 12 , kmmawb2.u, 0x0002ab4f, 0x77a186fa, 0x80000000, 48); 
TEST_RR_OP( 13 , kmmawb2.u, 0x0002ab4f, 0x5e86093e, 0x00000000, 52); 
TEST_RR_OP( 14 , kmmawb2.u, 0x0002ab4f, 0x00000000, 0x881ad4e8, 56); 
TEST_RR_OP( 15 , kmmawb2.u, 0x9c1bab4f, 0x80000000, 0x33de63e7, 60); 
TEST_RR_OP( 16 , kmmawb2.u, 0x9c1cab4f, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmmawb2.u, 0x9c1cab4e, 0xffffffff, 0xbcde65ef, 68); 
TEST_RR_OP( 18 , kmmawb2.u, 0x9c1cab4e, 0x00000000, 0x00000000, 72); 
TEST_RR_OP( 19 , kmmawb2.u, 0x9c1cab4e, 0x80000000, 0x80000000, 76); 
TEST_RR_OP( 20 , kmmawb2.u, 0x9c1c5bc6, 0x27c41b1f, 0xffffffff, 80); 
TEST_RR_OP( 21 , kmmawb2.u, 0x9c1c5bc6, 0x8b63bdb0, 0x80000000, 84); 
TEST_RR_OP( 22 , kmmawb2.u, 0xede15bc6, 0x80000000, 0x42eaae3b, 88); 
TEST_RR_OP( 23 , kmmawb2.u, 0xede15bc6, 0x00000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , kmmawb2.u, 0xede15bc6, 0xffffffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmmawb2.u, 0xd5a399c0, 0x34e8f231, 0xde0ac55b, 100); 
TEST_RR_OP( 26 , kmmawb2.u, 0xd5a399c0, 0x00000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmmawb2.u, 0xd5a399c0, 0x83a23dc6, 0x80000000, 108); 
TEST_RR_OP( 28 , kmmawb2.u, 0xd5a399c0, 0xffffffff, 0x00000000, 112); 
TEST_RR_OP( 29 , kmmawb2.u, 0xd5a399c0, 0x00000000, 0xffffffff, 116); 
TEST_RR_OP( 30 , kmmawb2.u, 0xd5a499c0, 0x80000000, 0xffffffff, 120); 
TEST_RR_OP( 31 , kmmawb2.u, 0xd5a499c0, 0x80000000, 0x00000000, 124); 
TEST_RR_OP( 32 , kmmawb2.u, 0xd5a499c0, 0x00000000, 0x80000000, 128); 
TEST_RR_OP( 33 , kmmawb2.u, 0xd5a499c0, 0xffffffff, 0x80000000, 132); 
TEST_RR_OP( 34 , kmmawb2.u, 0xd5a499c0, 0x80000000, 0x00000000, 136); 
TEST_RR_OP( 35 , kmmawb2.u, 0xd5a499c0, 0x00000000, 0x80000000, 140); 
TEST_RR_OP( 36 , kmmawb2.u, 0xd5a499c0, 0x00000000, 0x00000000, 144); 
TEST_RR_OP( 37 , kmmawb2.u, 0xd5a499c0, 0x00000000, 0x00000000, 148); 
TEST_RR_OP( 38 , kmmawb2.u, 0xd5a599c0, 0x80000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmmawb2.u, 0xe96499c0, 0x80000000, 0xa9c6ec41, 156); 
TEST_RR_OP( 40 , kmmawb2.u, 0xe96499c0, 0xffffffff, 0x00000000, 160); 
TEST_RR_OP( 41 , kmmawb2.u, 0xe96499c0, 0xffffffff, 0xffffffff, 164); 
TEST_RR_OP( 42 , kmmawb2.u, 0xe96499c0, 0x00000000, 0x80000000, 168); 
TEST_RR_OP( 43 , kmmawb2.u, 0xe96499c0, 0xffffffff, 0x00000000, 172); 
TEST_RR_OP( 44 , kmmawb2.u, 0xba5099c0, 0x80000000, 0xf6242f14, 176); 
TEST_RR_OP( 45 , kmmawb2.u, 0xba5099c0, 0xffffffff, 0x80000000, 180); 
TEST_RR_OP( 46 , kmmawb2.u, 0xba5099c0, 0xffffffff, 0x61afda9e, 184); 
TEST_RR_OP( 47 , kmmawb2.u, 0xba5099c0, 0xffffffff, 0x00000000, 188); 
TEST_RR_OP( 48 , kmmawb2.u, 0xba5099c0, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kmmawb2.u, 0xcc40fdac, 0x2aaf8faf, 0x165635cb, 196); 
TEST_RR_OP( 50 , kmmawb2.u, 0xcc40fdac, 0x00000000, 0xdf0615cb, 200); 
TEST_RR_OP( 51 , kmmawb2.u, 0xcd7b217b, 0xf17bd99c, 0xb691f52e, 204); 
TEST_RR_OP( 52 , kmmawb2.u, 0xcd7b217b, 0x80000000, 0x00000000, 208); 
TEST_RR_OP( 53 , kmmawb2.u, 0xcd7a70fe, 0x583ea771, 0xffffffff, 212); 
TEST_RR_OP( 54 , kmmawb2.u, 0xcd7a70fe, 0x00000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , kmmawb2.u, 0xcd7a9348, 0xeedaf3ce, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmmawb2.u, 0xcd7a9348, 0xffffffff, 0x00000000, 224); 
TEST_RR_OP( 57 , kmmawb2.u, 0xcd7a9348, 0x80000000, 0x80000000, 228); 
TEST_RR_OP( 58 , kmmawb2.u, 0xcd7a9348, 0xf0f59470, 0x80000000, 232); 
TEST_RR_OP( 59 , kmmawb2.u, 0xcd7b7636, 0x8e890266, 0xffffffff, 236); 
TEST_RR_OP( 60 , kmmawb2.u, 0xcd7b7636, 0x80000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kmmawb2.u, 0xcd7b7636, 0x00000000, 0xffffffff, 244); 
TEST_RR_OP( 62 , kmmawb2.u, 0xcd7b7636, 0xffffffff, 0x00000000, 248); 
TEST_RR_OP( 63 , kmmawb2.u, 0xcd7b7636, 0x00000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , kmmawb2.u, 0xcd7c7636, 0x80000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , kmmawb2.u, 0xcd7c7636, 0x00000000, 0x284e2134, 260); 
TEST_RR_OP( 66 , kmmawb2.u, 0xcd7c7636, 0x00000000, 0x80000000, 264); 
TEST_RR_OP( 67 , kmmawb2.u, 0xcd7c7636, 0xffffffff, 0xffffffff, 268); 
TEST_RR_OP( 68 , kmmawb2.u, 0xcd7c7636, 0x85768a45, 0x00000000, 272); 
TEST_RR_OP( 69 , kmmawb2.u, 0xcd7d7636, 0x80000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmmawb2.u, 0xcd7d7636, 0x87ef659a, 0x00000000, 280); 
TEST_RR_OP( 71 , kmmawb2.u, 0xe8967636, 0x80000000, 0xae36e4e7, 284); 
TEST_RR_OP( 72 , kmmawb2.u, 0xe8967636, 0x00000000, 0x80000000, 288); 
TEST_RR_OP( 73 , kmmawb2.u, 0xe8967636, 0x00000000, 0xe6baafa3, 292); 
TEST_RR_OP( 74 , kmmawb2.u, 0xe89708e4, 0xb6a8c125, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmmawb2.u, 0xb6f8b3d3, 0x4b0cfb30, 0x49e5ab60, 300); 
TEST_RR_OP( 76 , kmmawb2.u, 0xb6f8b3d3, 0x80000000, 0x80000000, 304); 
TEST_RR_OP( 77 , kmmawb2.u, 0xb6f9b3d3, 0x80000000, 0xffffffff, 308); 
TEST_RR_OP( 78 , kmmawb2.u, 0xb6f9b3d3, 0xb0e3262c, 0x80000000, 312); 
TEST_RR_OP( 79 , kmmawb2.u, 0xb6f9b3d3, 0xffffffff, 0xe6addf7f, 316); 
TEST_RR_OP( 80 , kmmawb2.u, 0xb6f9b3d3, 0x54628340, 0x00000000, 320); 
TEST_RR_OP( 81 , kmmawb2.u, 0xb6f9b3d3, 0xab5d270f, 0x80000000, 324); 
TEST_RR_OP( 82 , kmmawb2.u, 0xb6f9b3d3, 0xffffffff, 0x00000000, 328); 
TEST_RR_OP( 83 , kmmawb2.u, 0xb6f9b3d3, 0x80000000, 0x80000000, 332); 
TEST_RR_OP( 84 , kmmawb2.u, 0xb6f9b3d3, 0x00000000, 0x2b48679d, 336); 
TEST_RR_OP( 85 , kmmawb2.u, 0xb6fab3d3, 0x80000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , kmmawb2.u, 0x19ccb3d3, 0x80000000, 0x8b059d2e, 344); 
TEST_RR_OP( 87 , kmmawb2.u, 0xe6a94181, 0xbe5c5832, 0xedc763b9, 348); 
TEST_RR_OP( 88 , kmmawb2.u, 0xe6a94181, 0x5c5b1841, 0x80000000, 352); 
TEST_RR_OP( 89 , kmmawb2.u, 0xe6a94181, 0x80000000, 0x00000000, 356); 
TEST_RR_OP( 90 , kmmawb2.u, 0xe6a94181, 0xffffffff, 0x80000000, 360); 
TEST_RR_OP( 91 , kmmawb2.u, 0xe6a94181, 0xca74a9f4, 0x00000000, 364); 
TEST_RR_OP( 92 , kmmawb2.u, 0xe6a94181, 0x00000000, 0xbbe33dbc, 368); 
TEST_RR_OP( 93 , kmmawb2.u, 0xe6a9a5e0, 0xcdd070c9, 0xffffffff, 372); 
TEST_RR_OP( 94 , kmmawb2.u, 0xe6a9a5e0, 0x80000000, 0x80000000, 376); 
TEST_RR_OP( 95 , kmmawb2.u, 0xe6aa88e2, 0x8e7f04da, 0xffffffff, 380); 
TEST_RR_OP( 96 , kmmawb2.u, 0xe6aa88e2, 0xae5b7799, 0x80000000, 384); 
TEST_RR_OP( 97 , kmmawb2.u, 0xe6aa88e2, 0x11a60a4d, 0x00000000, 388); 
TEST_RR_OP( 98 , kmmawb2.u, 0xe6aa88e2, 0x00000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , kmmawb2.u, 0xe6aa88e2, 0x80000000, 0x80000000, 396); 
TEST_RR_OP( 100 , kmmawb2.u, 0xe6aa88e2, 0x00000000, 0x9116b824, 400); 
TEST_RR_OP( 101 , kmmawb2.u, 0xe6aa88e2, 0x00000000, 0x00000000, 404); 
TEST_RR_OP( 102 , kmmawb2.u, 0xe6aa88e2, 0x80000000, 0x80000000, 408); 
TEST_RR_OP( 103 , kmmawb2.u, 0xe6aa88e2, 0x00000000, 0x00000000, 412); 
TEST_RR_OP( 104 , kmmawb2.u, 0xe6aa88e2, 0x80000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kmmawb2.u, 0xe6aa88e2, 0x00000000, 0xffffffff, 420); 
TEST_RR_OP( 106 , kmmawb2.u, 0xe6aa88e2, 0x00000000, 0x80000000, 424); 
TEST_RR_OP( 107 , kmmawb2.u, 0xe6aa88e2, 0x80000000, 0x80000000, 428); 
TEST_RR_OP( 108 , kmmawb2.u, 0x04cf88e2, 0x80000000, 0xd1eae1db, 432); 
TEST_RR_OP( 109 , kmmawb2.u, 0x04cf88e2, 0x80000000, 0x00000000, 436); 
TEST_RR_OP( 110 , kmmawb2.u, 0x04611951, 0x2f9860c3, 0x61aafed7, 440); 
TEST_RR_OP( 111 , kmmawb2.u, 0x04611951, 0xffffffff, 0x80000000, 444); 
TEST_RR_OP( 112 , kmmawb2.u, 0x04611951, 0x00000000, 0x00000000, 448); 
TEST_RR_OP( 113 , kmmawb2.u, 0x7fffffff, 0x80000000, 0x35d8845c, 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_RR_OP( 117 , kmmawb2.u, 0x00000000, 0x3012ca0b, 0x80000000, 468); 
TEST_RR_OP( 118 , kmmawb2.u, 0x00000000, 0x80000000, 0x80000000, 472); 
TEST_RR_OP( 119 , kmmawb2.u, 0x00000000, 0x00000000, 0x50b1e9eb, 476); 
TEST_RR_OP( 120 , kmmawb2.u, 0xffffffff, 0xffffffff, 0xfd174fb4, 480); 
TEST_RR_OP( 121 , kmmawb2.u, 0xffffffff, 0x00000000, 0x00000000, 484); 
TEST_RR_OP( 122 , kmmawb2.u, 0xffffffff, 0xcedcc443, 0x80000000, 488); 
TEST_RR_OP( 123 , kmmawb2.u, 0xffffffff, 0x00000000, 0x80000000, 492); 
TEST_RR_OP( 124 , kmmawb2.u, 0xffffffff, 0x80000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kmmawb2.u, 0xffffffff, 0x1065c0ed, 0x80000000, 500); 
TEST_RR_OP( 126 , kmmawb2.u, 0xffffffff, 0x80000000, 0x80000000, 504); 
TEST_RR_OP( 127 , kmmawb2.u, 0xffffffff, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , kmmawb2.u, 0xffffffff, 0xffffffff, 0x00000000, 512); 
TEST_RR_OP( 129 , kmmawb2.u, 0xffff783e, 0x43e04ad0, 0xffffffff, 516); 
TEST_RR_OP( 130 , kmmawb2.u, 0xffff783e, 0x00000000, 0x00000000, 520); 
TEST_RR_OP( 131 , kmmawb2.u, 0xffff783e, 0xffffffff, 0x00000000, 524); 
TEST_RR_OP( 132 , kmmawb2.u, 0xffff783e, 0x80000000, 0x80000000, 528); 
TEST_RR_OP( 133 , kmmawb2.u, 0x301c783e, 0x80000000, 0x13adcfe3, 532); 
TEST_RR_OP( 134 , kmmawb2.u, 0x301c0f7b, 0x3461917f, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmmawb2.u, 0x301c0f7b, 0xcc79b84d, 0x00000000, 540); 
TEST_RR_OP( 136 , kmmawb2.u, 0x301c0f7b, 0x00000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmmawb2.u, 0x301c0f7b, 0x00000000, 0xffffffff, 548); 
TEST_RR_OP( 138 , kmmawb2.u, 0x301d0f7b, 0x80000000, 0xffffffff, 552); 
TEST_RR_OP( 139 , kmmawb2.u, 0x301d0f7b, 0x00000000, 0x00000000, 556); 
TEST_RR_OP( 140 , kmmawb2.u, 0x301e0f7b, 0x80000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , kmmawb2.u, 0x301e0f7b, 0xffffffff, 0xffffffff, 564); 
TEST_RR_OP( 142 , kmmawb2.u, 0x301e0f7b, 0x80000000, 0x00000000, 568); 
TEST_RR_OP( 143 , kmmawb2.u, 0x301e0f7b, 0xcfb72e93, 0x00000000, 572); 
TEST_RR_OP( 144 , kmmawb2.u, 0x301e0f7b, 0xffffffff, 0x80000000, 576); 
TEST_RR_OP( 145 , kmmawb2.u, 0x301e0f7b, 0x80000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kmmawb2.u, 0x301ea178, 0xb7017a9d, 0xffffffff, 584); 
TEST_RR_OP( 147 , kmmawb2.u, 0x23309c3a, 0x8f32cd9e, 0x21ab0eac, 588); 
TEST_RR_OP( 148 , kmmawb2.u, 0x23309c3a, 0x00000000, 0x6ab8c712, 592); 
TEST_RR_OP( 149 , kmmawb2.u, 0x1071235f, 0x2ea1d6fe, 0xdaeacc8a, 596); 
TEST_RR_OP( 150 , kmmawb2.u, 0x1071235f, 0xffffffff, 0x80000000, 600); 
TEST_RR_OP( 151 , kmmawb2.u, 0x1071235f, 0x80000000, 0x00000000, 604); 
TEST_RR_OP( 152 , kmmawb2.u, 0x10712360, 0xffffffff, 0xf84ba657, 608); 
TEST_RR_OP( 153 , kmmawb2.u, 0x10712360, 0x00000000, 0x80000000, 612); 
TEST_RR_OP( 154 , kmmawb2.u, 0x10712360, 0x00000000, 0x00000000, 616); 
TEST_RR_OP( 155 , kmmawb2.u, 0x10712360, 0xbf6db9bd, 0x80000000, 620); 
TEST_RR_OP( 156 , kmmawb2.u, 0x10712360, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , kmmawb2.u, 0x10712360, 0xffffffff, 0x00000000, 628); 
TEST_RR_OP( 158 , kmmawb2.u, 0x10712360, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , kmmawb2.u, 0x10712360, 0x00000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmmawb2.u, 0x10712360, 0x80000000, 0x80000000, 640); 
TEST_RR_OP( 161 , kmmawb2.u, 0x10712360, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , kmmawb2.u, 0x10712360, 0x38b42620, 0x00000000, 648); 
TEST_RR_OP( 163 , kmmawb2.u, 0x10712360, 0x00000000, 0x9bb3e2e7, 652); 
TEST_RR_OP( 164 , kmmawb2.u, 0x10712360, 0xffffffff, 0x80000000, 656); 
TEST_RR_OP( 165 , kmmawb2.u, 0x10712360, 0x00000000, 0x80000000, 660); 
TEST_RR_OP( 166 , kmmawb2.u, 0x10712360, 0x80000000, 0x00000000, 664); 
TEST_RR_OP( 167 , kmmawb2.u, 0x10712360, 0xb894a32c, 0x80000000, 668); 
TEST_RR_OP( 168 , kmmawb2.u, 0x17742360, 0x80000000, 0x6baaf8fd, 672); 
TEST_RR_OP( 169 , kmmawb2.u, 0x17742360, 0x80000000, 0x00000000, 676); 
TEST_RR_OP( 170 , kmmawb2.u, 0x17752360, 0x80000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmmawb2.u, 0x17752360, 0x00000000, 0x80000000, 684); 
TEST_RR_OP( 172 , kmmawb2.u, 0x17752360, 0xffffffff, 0xffffffff, 688); 
TEST_RR_OP( 173 , kmmawb2.u, 0x17752360, 0x80000000, 0x80000000, 692); 
TEST_RR_OP( 174 , kmmawb2.u, 0x17752360, 0xffffffff, 0x80000000, 696); 
TEST_RR_OP( 175 , kmmawb2.u, 0x17752360, 0x438c09d2, 0x80000000, 700); 
TEST_RR_OP( 176 , kmmawb2.u, 0x17752360, 0x00000000, 0x85689b00, 704); 
TEST_RR_OP( 177 , kmmawb2.u, 0xc6022360, 0x80000000, 0x61f45173, 708); 
TEST_RR_OP( 178 , kmmawb2.u, 0xfbeb2360, 0x80000000, 0x565bca17, 712); 
TEST_RR_OP( 179 , kmmawb2.u, 0xfbeb2360, 0x80000000, 0x80000000, 716); 
TEST_RR_OP( 180 , kmmawb2.u, 0xfbeb2360, 0xffffffff, 0x00000000, 720); 
TEST_RR_OP( 181 , kmmawb2.u, 0xfbeb2360, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , kmmawb2.u, 0xfbeb2360, 0x029d03b4, 0x80000000, 728); 
TEST_RR_OP( 183 , kmmawb2.u, 0xfbeb2360, 0x80000000, 0x80000000, 732); 
TEST_RR_OP( 184 , kmmawb2.u, 0xfbeb2360, 0xffffffff, 0x732d0b84, 736); 
TEST_RR_OP( 185 , kmmawb2.u, 0xfbeb2360, 0x80000000, 0x80000000, 740); 
TEST_RR_OP( 186 , kmmawb2.u, 0xfbeb2360, 0xffffffff, 0x00000000, 744); 
TEST_RR_OP( 187 , kmmawb2.u, 0xfbeb2360, 0x00000000, 0x00000000, 748); 
TEST_RR_OP( 188 , kmmawb2.u, 0xfbec2360, 0x80000000, 0xffffffff, 752); 
TEST_RR_OP( 189 , kmmawb2.u, 0xfbec2360, 0xffffffff, 0x80000000, 756); 
TEST_RR_OP( 190 , kmmawb2.u, 0xfbec2360, 0x80000000, 0x00000000, 760); 
TEST_RR_OP( 191 , kmmawb2.u, 0xfbec2360, 0xffffffff, 0xffffffff, 764); 
TEST_RR_OP( 192 , kmmawb2.u, 0xfbec2360, 0x00000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmmawb2.u, 0xecb32360, 0x80000000, 0x8f7a0f39, 772); 
TEST_RR_OP( 194 , kmmawb2.u, 0xecb32360, 0xffffffff, 0x00000000, 776); 
TEST_RR_OP( 195 , kmmawb2.u, 0xecb32360, 0xffffffff, 0x80000000, 780); 
TEST_RR_OP( 196 , kmmawb2.u, 0xecb3235f, 0xffffffff, 0x80d1610c, 784); 
TEST_RR_OP( 197 , kmmawb2.u, 0xecb3235f, 0x00000000, 0x1be11c47, 788); 
TEST_RR_OP( 198 , kmmawb2.u, 0xe61e235f, 0x80000000, 0xa57e0695, 792); 
TEST_RR_OP( 199 , kmmawb2.u, 0xe61e235f, 0x00000000, 0x5abcf630, 796); 

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
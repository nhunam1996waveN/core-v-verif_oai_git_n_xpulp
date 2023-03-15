# See LICENSE for license details.
#*****************************************************************************
# kmmsb.u.S
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

TEST_RR_OP( 2 , kmmsb.u, 0x00000000, 0xffffffff, 0x00000000, 8); 
TEST_RR_OP( 3 , kmmsb.u, 0xfff48b9b, 0xcfbc7d36, 0xffc33e03, 12); 
TEST_RR_OP( 4 , kmmsb.u, 0xfff48b9b, 0xf9b50bf3, 0x00000000, 16); 
TEST_RR_OP( 5 , kmmsb.u, 0xf9d5c3cb, 0xf3c27061, 0x80000000, 20); 
TEST_RR_OP( 6 , kmmsb.u, 0x24b2bdc3, 0xa7a14d78, 0x7c2bc3cc, 24); 
TEST_RR_OP( 7 , kmmsb.u, 0x24b2bdc2, 0x80000000, 0xffffffff, 28); 
TEST_RR_OP( 8 , kmmsb.u, 0x24b2bdc2, 0x2f30ec46, 0xffffffff, 32); 
TEST_RR_OP( 9 , kmmsb.u, 0x24b2bdc1, 0x80000000, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmmsb.u, 0x24b2bdc1, 0xffffffff, 0xffffffff, 40); 
TEST_RR_OP( 11 , kmmsb.u, 0x24b2bdc1, 0x00000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmmsb.u, 0x33e559ea, 0x1e653853, 0x80000000, 48); 
TEST_RR_OP( 13 , kmmsb.u, 0x33e559ea, 0x00000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , kmmsb.u, 0x33e559ea, 0x00000000, 0x80000000, 56); 
TEST_RR_OP( 15 , kmmsb.u, 0x25e10ca6, 0xe3f76578, 0x80000000, 60); 
TEST_RR_OP( 16 , kmmsb.u, 0x2c096e8b, 0x1004f5c2, 0x9d98630d, 64); 
TEST_RR_OP( 17 , kmmsb.u, 0x2c096e8b, 0xffffffff, 0x65a35489, 68); 
TEST_RR_OP( 18 , kmmsb.u, 0x2c096e8a, 0xffffffff, 0x80000000, 72); 
TEST_RR_OP( 19 , kmmsb.u, 0x2c096e8a, 0x00000000, 0x80000000, 76); 
TEST_RR_OP( 20 , kmmsb.u, 0x63a8fda8, 0x6f3f1e3c, 0x80000000, 80); 
TEST_RR_OP( 21 , kmmsb.u, 0x63a8fda8, 0xd00853e1, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmmsb.u, 0x63a8fda8, 0xd04fe359, 0xffffffff, 88); 
TEST_RR_OP( 23 , kmmsb.u, 0x7fffffff, 0x6a759551, 0x80000000, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , kmmsb.u, 0xffffffff, 0x80000000, 0xffffffff, 108); 
TEST_RR_OP( 28 , kmmsb.u, 0xffffffff, 0x9d64ceb5, 0x00000000, 112); 
TEST_RR_OP( 29 , kmmsb.u, 0xfffffffe, 0x80000000, 0xffffffff, 116); 
TEST_RR_OP( 30 , kmmsb.u, 0xf1b5babf, 0xe36b7582, 0x80000000, 120); 
TEST_RR_OP( 31 , kmmsb.u, 0xf1b5babe, 0x80000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , kmmsb.u, 0xf1b5babe, 0x00000000, 0x00000000, 128); 
TEST_RR_OP( 33 , kmmsb.u, 0xf1b5babe, 0xffffffff, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmmsb.u, 0xf1b5babe, 0xffffffff, 0x00000000, 136); 
TEST_RR_OP( 35 , kmmsb.u, 0xf1b5babe, 0x1477267c, 0xffffffff, 140); 
TEST_RR_OP( 36 , kmmsb.u, 0xf1b5babe, 0x00000000, 0x00000000, 144); 
TEST_RR_OP( 37 , kmmsb.u, 0xf1b5babe, 0x4a48a3be, 0x00000000, 148); 
TEST_RR_OP( 38 , kmmsb.u, 0xf1b5babe, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , kmmsb.u, 0xfa1f1f9c, 0x70fdcbb1, 0xecf12486, 156); 
TEST_RR_OP( 40 , kmmsb.u, 0xfa1f1f9c, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , kmmsb.u, 0xfa1f1f9c, 0xffffffff, 0xffffffff, 164); 
TEST_RR_OP( 42 , kmmsb.u, 0xfa1f1f9b, 0xffffffff, 0x80000000, 168); 
TEST_RR_OP( 43 , kmmsb.u, 0xfa1f1f9b, 0x00000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmmsb.u, 0xfa1f1f9b, 0xffffffff, 0xa8f883a1, 176); 
TEST_RR_OP( 45 , kmmsb.u, 0xfa1f1f9b, 0xffffffff, 0x00000000, 180); 
TEST_RR_OP( 46 , kmmsb.u, 0xfa1f1f9b, 0x00000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kmmsb.u, 0xba1f1f9b, 0x80000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kmmsb.u, 0xba1f1f9b, 0xffffffff, 0x00000000, 192); 
TEST_RR_OP( 49 , kmmsb.u, 0xc5d302a7, 0x1767c618, 0x80000000, 196); 
TEST_RR_OP( 50 , kmmsb.u, 0xc5d302a7, 0xffffffff, 0xffffffff, 200); 
TEST_RR_OP( 51 , kmmsb.u, 0xed22c7a4, 0x80000000, 0x4e9f89fb, 204); 
TEST_RR_OP( 52 , kmmsb.u, 0xed22c7a4, 0x00000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , kmmsb.u, 0xed22c7a4, 0xffffffff, 0xffffffff, 212); 
TEST_RR_OP( 54 , kmmsb.u, 0xed22c7a4, 0xf7c7f7cb, 0x00000000, 216); 
TEST_RR_OP( 55 , kmmsb.u, 0x0a3ed9ea, 0x80000000, 0x3a38248d, 220); 
TEST_RR_OP( 56 , kmmsb.u, 0x0a3ed9e9, 0x80000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , kmmsb.u, 0x2637371b, 0x37f0ba64, 0x80000000, 228); 
TEST_RR_OP( 58 , kmmsb.u, 0x2637371b, 0x80000000, 0x00000000, 232); 
TEST_RR_OP( 59 , kmmsb.u, 0x2637371b, 0x80000000, 0x00000000, 236); 
TEST_RR_OP( 60 , kmmsb.u, 0x2637371b, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kmmsb.u, 0x3564a357, 0xb34ea51f, 0x32a98386, 244); 
TEST_RR_OP( 62 , kmmsb.u, 0x3564a357, 0x00000000, 0x80000000, 248); 
TEST_RR_OP( 63 , kmmsb.u, 0x3564a357, 0x00000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , kmmsb.u, 0x1406a0e7, 0xbd43fb21, 0x80000000, 256); 
TEST_RR_OP( 65 , kmmsb.u, 0x1406a0e7, 0xffffffff, 0x9cd0f3fc, 260); 
TEST_RR_OP( 66 , kmmsb.u, 0x1406a0e7, 0xffffffff, 0x7fc60e52, 264); 
TEST_RR_OP( 67 , kmmsb.u, 0x1406a0e7, 0x670471f5, 0x00000000, 268); 
TEST_RR_OP( 68 , kmmsb.u, 0x1406a0e7, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP( 69 , kmmsb.u, 0x1406a0e7, 0x00000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmmsb.u, 0x1406a0e7, 0xffffffff, 0x00000000, 280); 
TEST_RR_OP( 71 , kmmsb.u, 0x1406a0e7, 0x80000000, 0x00000000, 284); 
TEST_RR_OP( 72 , kmmsb.u, 0xd406a0e7, 0x80000000, 0x80000000, 288); 
TEST_RR_OP( 73 , kmmsb.u, 0xd406a0e6, 0xffffffff, 0x80000000, 292); 
TEST_RR_OP( 74 , kmmsb.u, 0xd406a0e6, 0xffffffff, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmmsb.u, 0xd406a0e6, 0x00000000, 0x80000000, 300); 
TEST_RR_OP( 76 , kmmsb.u, 0xd406a0e6, 0x00000000, 0x00000000, 304); 
TEST_RR_OP( 77 , kmmsb.u, 0xfd84a4ea, 0x80000000, 0x52fc0808, 308); 
TEST_RR_OP( 78 , kmmsb.u, 0xfd84a4ea, 0x00000000, 0x00000000, 312); 
TEST_RR_OP( 79 , kmmsb.u, 0xf0b7346a, 0x80000000, 0xe6651f01, 316); 
TEST_RR_OP( 80 , kmmsb.u, 0xf0b73469, 0x80000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , kmmsb.u, 0x06af79dd, 0x2bf08ae9, 0x80000000, 324); 
TEST_RR_OP( 82 , kmmsb.u, 0x06af79dd, 0x80000000, 0x00000000, 328); 
TEST_RR_OP( 83 , kmmsb.u, 0x06af79dd, 0xffffffff, 0x00000000, 332); 
TEST_RR_OP( 84 , kmmsb.u, 0x06af79dd, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , kmmsb.u, 0x06af79dd, 0xffffffff, 0xffffffff, 340); 
TEST_RR_OP( 86 , kmmsb.u, 0x06af79dd, 0x00000000, 0x80000000, 344); 
TEST_RR_OP( 87 , kmmsb.u, 0x06af79dc, 0xffffffff, 0x80000000, 348); 
TEST_RR_OP( 88 , kmmsb.u, 0xe5d5444e, 0xa40f0be2, 0xa486b7e8, 352); 
TEST_RR_OP( 89 , kmmsb.u, 0xe5d5444e, 0x0f3fe322, 0x00000000, 356); 
TEST_RR_OP( 90 , kmmsb.u, 0xe5d5444d, 0xffffffff, 0x80000000, 360); 
TEST_RR_OP( 91 , kmmsb.u, 0xe5d5444c, 0x80000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , kmmsb.u, 0xe5d5444b, 0x80000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , kmmsb.u, 0xe5d5444b, 0x00000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , kmmsb.u, 0xe5d5444b, 0xffffffff, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmmsb.u, 0xe5d5444b, 0x00000000, 0x80000000, 380); 
TEST_RR_OP( 96 , kmmsb.u, 0xe5d5444b, 0xffffffff, 0x00000000, 384); 
TEST_RR_OP( 97 , kmmsb.u, 0xe5d5444b, 0x00000000, 0x80000000, 388); 
TEST_RR_OP( 98 , kmmsb.u, 0xa5d5444b, 0x80000000, 0x80000000, 392); 
TEST_RR_OP( 99 , kmmsb.u, 0x80000000, 0x80000000, 0x80000000, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , kmmsb.u, 0x00000000, 0x00000000, 0xffffffff, 412); 
TEST_RR_OP( 104 , kmmsb.u, 0xc0000000, 0x80000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kmmsb.u, 0xda9e255b, 0x80000000, 0x353c4ab7, 420); 
TEST_RR_OP( 106 , kmmsb.u, 0xda9e255a, 0x80000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , kmmsb.u, 0xb339508b, 0xb1365662, 0x80000000, 428); 
TEST_RR_OP( 108 , kmmsb.u, 0xb339508a, 0x80000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmmsb.u, 0xb339508a, 0xbf616476, 0x00000000, 436); 
TEST_RR_OP( 110 , kmmsb.u, 0xb339508a, 0x00000000, 0x00000000, 440); 
TEST_RR_OP( 111 , kmmsb.u, 0xb339508a, 0x00000000, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmsb.u, 0xb339508a, 0xffffffff, 0xffffffff, 448); 
TEST_RR_OP( 113 , kmmsb.u, 0x80000000, 0x80000000, 0x80000000, 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_RR_OP( 117 , kmmsb.u, 0x00000000, 0x77cf42ab, 0x00000000, 468); 
TEST_RR_OP( 118 , kmmsb.u, 0x00000000, 0x00000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmmsb.u, 0x2bd09e2e, 0x80000000, 0x57a13c5c, 476); 
TEST_RR_OP( 120 , kmmsb.u, 0x2bd09e2d, 0xffffffff, 0x80000000, 480); 
TEST_RR_OP( 121 , kmmsb.u, 0x2bc2115c, 0x022e623f, 0x06abb3c3, 484); 
TEST_RR_OP( 122 , kmmsb.u, 0x2bc2115c, 0x22aab746, 0x00000000, 488); 
TEST_RR_OP( 123 , kmmsb.u, 0x15e33154, 0xd4423ff1, 0x80000000, 492); 
TEST_RR_OP( 124 , kmmsb.u, 0x15e33154, 0x4a009d9e, 0x00000000, 496); 
TEST_RR_OP( 125 , kmmsb.u, 0x15e33154, 0x2b61449c, 0x00000000, 500); 
TEST_RR_OP( 126 , kmmsb.u, 0xed612fe3, 0x9f9366b0, 0x94744fba, 504); 
TEST_RR_OP( 127 , kmmsb.u, 0xed612fe3, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , kmmsb.u, 0xed612fe3, 0x2440c572, 0xffffffff, 512); 
TEST_RR_OP( 129 , kmmsb.u, 0xed612fe3, 0x00000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , kmmsb.u, 0xed612fe3, 0x80000000, 0x00000000, 520); 
TEST_RR_OP( 131 , kmmsb.u, 0xad612fe3, 0x80000000, 0x80000000, 524); 
TEST_RR_OP( 132 , kmmsb.u, 0x80000000, 0x80000000, 0x80000000, 528); 
TEST_CASE( 133 ,532, x14, 1, rdov x14;);
TEST_CASE( 134 ,536, x14, 1, clrov;);
TEST_CASE( 135 ,540, x14, 0, rdov x14;);
TEST_RR_OP( 136 , kmmsb.u, 0xffffffff, 0xffffffff, 0x80000000, 544); 
TEST_RR_OP( 137 , kmmsb.u, 0xffffffff, 0xffffffff, 0xffffffff, 548); 
TEST_RR_OP( 138 , kmmsb.u, 0xffffffff, 0xd13d7cd3, 0x00000000, 552); 
TEST_RR_OP( 139 , kmmsb.u, 0xffffffff, 0xffffffff, 0x00000000, 556); 
TEST_RR_OP( 140 , kmmsb.u, 0xfffffffe, 0xffffffff, 0x80000000, 560); 
TEST_RR_OP( 141 , kmmsb.u, 0xfffffffe, 0x00000000, 0x57678798, 564); 
TEST_RR_OP( 142 , kmmsb.u, 0xfffffffd, 0xffffffff, 0x80000000, 568); 
TEST_RR_OP( 143 , kmmsb.u, 0x02fc61de, 0x10ec1c73, 0xd2d47490, 572); 
TEST_RR_OP( 144 , kmmsb.u, 0x02fc61de, 0x00000000, 0x631a4b10, 576); 
TEST_RR_OP( 145 , kmmsb.u, 0x02fc61de, 0xffffffff, 0x8beb1710, 580); 
TEST_RR_OP( 146 , kmmsb.u, 0x02fc61de, 0x00000000, 0x80000000, 584); 
TEST_RR_OP( 147 , kmmsb.u, 0x02fc61de, 0x00000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , kmmsb.u, 0x02fc61de, 0x00000000, 0x80000000, 592); 
TEST_RR_OP( 149 , kmmsb.u, 0x02fc61dd, 0x80000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , kmmsb.u, 0x02fc61dd, 0x80000000, 0x00000000, 600); 
TEST_RR_OP( 151 , kmmsb.u, 0x02fc61dd, 0xffffffff, 0xffffffff, 604); 
TEST_RR_OP( 152 , kmmsb.u, 0x02fc61dd, 0x00000000, 0x00000000, 608); 
TEST_RR_OP( 153 , kmmsb.u, 0x02fc61dc, 0xffffffff, 0x80000000, 612); 
TEST_RR_OP( 154 , kmmsb.u, 0xc2fc61dc, 0x80000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmmsb.u, 0xc2fc61db, 0x80000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmmsb.u, 0xc2fc61db, 0xeb74567a, 0xffffffff, 624); 
TEST_RR_OP( 157 , kmmsb.u, 0xc2fc61db, 0x00000000, 0x80000000, 628); 
TEST_RR_OP( 158 , kmmsb.u, 0xc2fc61db, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , kmmsb.u, 0xcb1e1dc5, 0x104377d5, 0x80000000, 636); 
TEST_RR_OP( 160 , kmmsb.u, 0xcb1e1dc5, 0x00000000, 0x80000000, 640); 
TEST_RR_OP( 161 , kmmsb.u, 0xcf69a21d, 0x80000000, 0x089708b0, 644); 
TEST_RR_OP( 162 , kmmsb.u, 0xcf69a21d, 0xffffffff, 0xffffffff, 648); 
TEST_RR_OP( 163 , kmmsb.u, 0xcf69a21c, 0x80000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , kmmsb.u, 0xcf69a21c, 0xffffffff, 0xffffffff, 656); 
TEST_RR_OP( 165 , kmmsb.u, 0xcf69a21c, 0x98da3da0, 0xffffffff, 660); 
TEST_RR_OP( 166 , kmmsb.u, 0xcf69a21c, 0xed07b3f8, 0x00000000, 664); 
TEST_RR_OP( 167 , kmmsb.u, 0xcf69a21c, 0xffffffff, 0x00000000, 668); 
TEST_RR_OP( 168 , kmmsb.u, 0xcf69a21c, 0xffffffff, 0x00000000, 672); 
TEST_RR_OP( 169 , kmmsb.u, 0xcf69a21c, 0x28ac0c73, 0xffffffff, 676); 
TEST_RR_OP( 170 , kmmsb.u, 0xcf69a21b, 0x80000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmmsb.u, 0xec689d8a, 0x39fdf6df, 0x80000000, 684); 
TEST_RR_OP( 172 , kmmsb.u, 0xec689d8a, 0x80000000, 0x00000000, 688); 
TEST_RR_OP( 173 , kmmsb.u, 0xff463517, 0x80000000, 0x25bb2f1b, 692); 
TEST_RR_OP( 174 , kmmsb.u, 0xff463517, 0xffffffff, 0xffffffff, 696); 
TEST_RR_OP( 175 , kmmsb.u, 0xff463517, 0xffffffff, 0x5b0ef68d, 700); 
TEST_RR_OP( 176 , kmmsb.u, 0xff463517, 0x00000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kmmsb.u, 0x35b4b863, 0x80000000, 0x6cdd0698, 708); 
TEST_RR_OP( 178 , kmmsb.u, 0x35b4b863, 0x00000000, 0x2807a8e1, 712); 
TEST_RR_OP( 179 , kmmsb.u, 0x35b4b862, 0xffffffff, 0x80000000, 716); 
TEST_RR_OP( 180 , kmmsb.u, 0x35b4b862, 0x00000000, 0x80000000, 720); 
TEST_RR_OP( 181 , kmmsb.u, 0x35b4b862, 0x662002d8, 0xffffffff, 724); 
TEST_RR_OP( 182 , kmmsb.u, 0x35b4b862, 0xffffffff, 0xffffffff, 728); 
TEST_RR_OP( 183 , kmmsb.u, 0x35b4b862, 0x80000000, 0x00000000, 732); 
TEST_RR_OP( 184 , kmmsb.u, 0x6349c71b, 0x80000000, 0x5b2a1d72, 736); 
TEST_RR_OP( 185 , kmmsb.u, 0x6349c71b, 0xffffffff, 0x00000000, 740); 
TEST_RR_OP( 186 , kmmsb.u, 0x6349c71b, 0x00000000, 0x00000000, 744); 
TEST_RR_OP( 187 , kmmsb.u, 0x6349c71b, 0x00000000, 0xffffffff, 748); 
TEST_RR_OP( 188 , kmmsb.u, 0x540fd328, 0x80000000, 0xe18c181a, 752); 
TEST_RR_OP( 189 , kmmsb.u, 0x540fd327, 0xffffffff, 0x80000000, 756); 
TEST_RR_OP( 190 , kmmsb.u, 0x540fd327, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , kmmsb.u, 0x540fd327, 0x00000000, 0x00000000, 764); 
TEST_RR_OP( 192 , kmmsb.u, 0x45424465, 0x80000000, 0xe264e27d, 768); 
TEST_RR_OP( 193 , kmmsb.u, 0x45424465, 0x00000000, 0x5685f2c9, 772); 
TEST_RR_OP( 194 , kmmsb.u, 0x45424464, 0xffffffff, 0x80000000, 776); 
TEST_RR_OP( 195 , kmmsb.u, 0x45424464, 0xffffffff, 0xffffffff, 780); 
TEST_RR_OP( 196 , kmmsb.u, 0x45424464, 0x00000000, 0x00000000, 784); 
TEST_RR_OP( 197 , kmmsb.u, 0x45424464, 0x80000000, 0x00000000, 788); 
TEST_RR_OP( 198 , kmmsb.u, 0x45424464, 0x80000000, 0x00000000, 792); 
TEST_RR_OP( 199 , kmmsb.u, 0x45424464, 0xffffffff, 0x5ece3183, 796); 

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
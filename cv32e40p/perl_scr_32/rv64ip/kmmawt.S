# See LICENSE for license details.
#*****************************************************************************
# kmmawt.S
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

TEST_RR_OP( 2 , kmmawt, 0x00000000, 0xffffffff, 0x80000000, 8); 
TEST_RR_OP( 3 , kmmawt, 0x00000000, 0x00000000, 0x00000000, 12); 
TEST_RR_OP( 4 , kmmawt, 0x00000000, 0x00000000, 0xffffffff, 16); 
TEST_RR_OP( 5 , kmmawt, 0x00000000, 0xbc2ec58c, 0x00000000, 20); 
TEST_RR_OP( 6 , kmmawt, 0x00008000, 0x80000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , kmmawt, 0x00008000, 0x0e36256a, 0x00000000, 28); 
TEST_RR_OP( 8 , kmmawt, 0x00008000, 0xffffffff, 0xffffffff, 32); 
TEST_RR_OP( 9 , kmmawt, 0x00008000, 0x00000000, 0x0607e3e2, 36); 
TEST_RR_OP( 10 , kmmawt, 0x00008000, 0xffffffff, 0xc4142cf5, 40); 
TEST_RR_OP( 11 , kmmawt, 0x00010000, 0x80000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmmawt, 0x00010000, 0x00000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmmawt, 0x00010000, 0xffffffff, 0xffffffff, 52); 
TEST_RR_OP( 14 , kmmawt, 0x00010000, 0xea170522, 0x00000000, 56); 
TEST_RR_OP( 15 , kmmawt, 0x00010000, 0x00000000, 0x00000000, 60); 
TEST_RR_OP( 16 , kmmawt, 0x00018000, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmmawt, 0x00018000, 0x00000000, 0x00000000, 68); 
TEST_RR_OP( 18 , kmmawt, 0x00018000, 0x00000000, 0xffffffff, 72); 
TEST_RR_OP( 19 , kmmawt, 0x00018000, 0x00000000, 0x5a776050, 76); 
TEST_RR_OP( 20 , kmmawt, 0x00018000, 0x00000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kmmawt, 0x000149f5, 0x360a08f4, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmmawt, 0x000149f5, 0x80000000, 0x00000000, 88); 
TEST_RR_OP( 23 , kmmawt, 0x000149f5, 0x00000000, 0x80000000, 92); 
TEST_RR_OP( 24 , kmmawt, 0x000149f5, 0x80000000, 0x00000000, 96); 
TEST_RR_OP( 25 , kmmawt, 0x000149f5, 0x80000000, 0x00000000, 100); 
TEST_RR_OP( 26 , kmmawt, 0x000149f5, 0x00000000, 0xe5250500, 104); 
TEST_RR_OP( 27 , kmmawt, 0x000149f5, 0x4009f927, 0x00000000, 108); 
TEST_RR_OP( 28 , kmmawt, 0x000149f4, 0xffffffff, 0x3eb4ab97, 112); 
TEST_RR_OP( 29 , kmmawt, 0x000149f4, 0x00000000, 0x104931c2, 116); 
TEST_RR_OP( 30 , kmmawt, 0x000149f4, 0xffffffff, 0x80000000, 120); 
TEST_RR_OP( 31 , kmmawt, 0xe8c8af9e, 0x2e7134ac, 0x80000000, 124); 
TEST_RR_OP( 32 , kmmawt, 0xe8c8af9e, 0x80000000, 0x00000000, 128); 
TEST_RR_OP( 33 , kmmawt, 0xe8c8af9e, 0x80000000, 0x00000000, 132); 
TEST_RR_OP( 34 , kmmawt, 0xe8c92f9e, 0x80000000, 0xffffffff, 136); 
TEST_RR_OP( 35 , kmmawt, 0xe8c92f9e, 0x00000000, 0x00000000, 140); 
TEST_RR_OP( 36 , kmmawt, 0xe8c9a6ac, 0x88f1a1ae, 0xffffffff, 144); 
TEST_RR_OP( 37 , kmmawt, 0xbfdee16e, 0x93dd5782, 0x60de482d, 148); 
TEST_RR_OP( 38 , kmmawt, 0xbfdee16e, 0xc3fe17f1, 0x00000000, 152); 
TEST_RR_OP( 39 , kmmawt, 0xbfdee16e, 0x00000000, 0x00000000, 156); 
TEST_RR_OP( 40 , kmmawt, 0xbfdee16e, 0x00000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kmmawt, 0xbfdee16e, 0xffffffff, 0x80000000, 164); 
TEST_RR_OP( 42 , kmmawt, 0xbfde8a17, 0x57563ea0, 0xffffffff, 168); 
TEST_RR_OP( 43 , kmmawt, 0xbfde8a17, 0xffffffff, 0xd3c1e7e0, 172); 
TEST_RR_OP( 44 , kmmawt, 0xe6251576, 0xb372e941, 0x80000000, 176); 
TEST_RR_OP( 45 , kmmawt, 0xe6251576, 0x00000000, 0x00000000, 180); 
TEST_RR_OP( 46 , kmmawt, 0xe6251576, 0x00000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , kmmawt, 0x26251576, 0x80000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kmmawt, 0x26251576, 0x00000000, 0x5c30617f, 192); 
TEST_RR_OP( 49 , kmmawt, 0x26251576, 0x00000000, 0x00000000, 196); 
TEST_RR_OP( 50 , kmmawt, 0x26251576, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , kmmawt, 0x457add4b, 0x44189dcf, 0x75cde30c, 204); 
TEST_RR_OP( 52 , kmmawt, 0x457add4b, 0xffffffff, 0x00000000, 208); 
TEST_RR_OP( 53 , kmmawt, 0x457add4b, 0xffffffff, 0x00000000, 212); 
TEST_RR_OP( 54 , kmmawt, 0x40935229, 0x1d502d3a, 0xd52b5552, 216); 
TEST_RR_OP( 55 , kmmawt, 0x4093d229, 0x80000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmmawt, 0x4ed12ea0, 0x764ed07c, 0x1ed01c67, 224); 
TEST_RR_OP( 57 , kmmawt, 0x4ed12ea0, 0x00000000, 0xbed7922c, 228); 
TEST_RR_OP( 58 , kmmawt, 0x4ed12ea0, 0x00000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kmmawt, 0x4ed0f9a3, 0x34fc8ba7, 0xffffffff, 236); 
TEST_RR_OP( 60 , kmmawt, 0x7fffffff, 0x80000000, 0x80000000, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , kmmawt, 0x00008000, 0x80000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , kmmawt, 0x00007fff, 0xffffffff, 0x78d338c8, 260); 
TEST_RR_OP( 66 , kmmawt, 0x00007fff, 0x00000000, 0x80000000, 264); 
TEST_RR_OP( 67 , kmmawt, 0x21d87fff, 0x80000000, 0xbc50a0c7, 268); 
TEST_RR_OP( 68 , kmmawt, 0x21d87fff, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP( 69 , kmmawt, 0x327b7fff, 0x80000000, 0xdeba4dd9, 276); 
TEST_RR_OP( 70 , kmmawt, 0x327bffff, 0x80000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , kmmawt, 0x727bffff, 0x80000000, 0x80000000, 284); 
TEST_RR_OP( 72 , kmmawt, 0x715df78b, 0xef59bb15, 0x112eb0d3, 288); 
TEST_RR_OP( 73 , kmmawt, 0x715df78b, 0x00000000, 0x7b7b79fc, 292); 
TEST_RR_OP( 74 , kmmawt, 0x715df78b, 0xffffffff, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmmawt, 0x715e778b, 0x80000000, 0xffffffff, 300); 
TEST_RR_OP( 76 , kmmawt, 0x715e778b, 0x00000000, 0xffffffff, 304); 
TEST_RR_OP( 77 , kmmawt, 0x715e778b, 0xffffffff, 0x80000000, 308); 
TEST_RR_OP( 78 , kmmawt, 0x715e778b, 0xffffffff, 0xffffffff, 312); 
TEST_RR_OP( 79 , kmmawt, 0x715ef78b, 0x80000000, 0xffffffff, 316); 
TEST_RR_OP( 80 , kmmawt, 0x715ef78b, 0x00000000, 0x80000000, 320); 
TEST_RR_OP( 81 , kmmawt, 0x715ef78b, 0x864bcb67, 0x00000000, 324); 
TEST_RR_OP( 82 , kmmawt, 0x71aff78b, 0x80000000, 0xff5ea29f, 328); 
TEST_RR_OP( 83 , kmmawt, 0x71aff78b, 0x00000000, 0x80000000, 332); 
TEST_RR_OP( 84 , kmmawt, 0x71b0778b, 0x80000000, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmmawt, 0x71b0778b, 0x70c935ba, 0x00000000, 340); 
TEST_RR_OP( 86 , kmmawt, 0x71b0778b, 0x00000000, 0xad47b682, 344); 
TEST_RR_OP( 87 , kmmawt, 0x71b0778b, 0xffffffff, 0x00000000, 348); 
TEST_RR_OP( 88 , kmmawt, 0x71b0778b, 0x00000000, 0x105f4af7, 352); 
TEST_RR_OP( 89 , kmmawt, 0x71b0778b, 0xffffffff, 0xffffffff, 356); 
TEST_RR_OP( 90 , kmmawt, 0x71b0778b, 0xa38811c8, 0x00000000, 360); 
TEST_RR_OP( 91 , kmmawt, 0x71b0778b, 0x00000000, 0x80000000, 364); 
TEST_RR_OP( 92 , kmmawt, 0x7fffffff, 0xa70f8f3d, 0x80000000, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , kmmawt, 0x00000000, 0x00000000, 0x868fd1d4, 384); 
TEST_RR_OP( 97 , kmmawt, 0x00000000, 0x00000000, 0xffe36438, 388); 
TEST_RR_OP( 98 , kmmawt, 0x00000000, 0x00000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , kmmawt, 0x00000000, 0xffffffff, 0xffffffff, 396); 
TEST_RR_OP( 100 , kmmawt, 0x00000000, 0xffffffff, 0x80000000, 400); 
TEST_RR_OP( 101 , kmmawt, 0xc9020000, 0x80000000, 0x6dfce94e, 404); 
TEST_RR_OP( 102 , kmmawt, 0xc9020000, 0xffffffff, 0x00000000, 408); 
TEST_RR_OP( 103 , kmmawt, 0xc9020000, 0xffffffff, 0x80000000, 412); 
TEST_RR_OP( 104 , kmmawt, 0xc9020000, 0x00000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kmmawt, 0xc9022f99, 0xd0666211, 0xffffffff, 420); 
TEST_RR_OP( 106 , kmmawt, 0xc9022f99, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , kmmawt, 0xc902af99, 0x80000000, 0xffffffff, 428); 
TEST_RR_OP( 108 , kmmawt, 0xc902af99, 0xffffffff, 0x00000000, 432); 
TEST_RR_OP( 109 , kmmawt, 0xbfd64560, 0xcc62f0b0, 0x2d80fcf5, 436); 
TEST_RR_OP( 110 , kmmawt, 0xbfd64560, 0x00000000, 0x80000000, 440); 
TEST_RR_OP( 111 , kmmawt, 0xbfd64560, 0x00000000, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmawt, 0xbfd65bc7, 0xe99823ab, 0xffffffff, 448); 
TEST_RR_OP( 113 , kmmawt, 0xbfd65bc7, 0xffffffff, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmmawt, 0xcdf65bc7, 0x80000000, 0xe3c0d909, 456); 
TEST_RR_OP( 115 , kmmawt, 0xcdf6dbc7, 0x80000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmmawt, 0xc52960d0, 0x119af5ed, 0x80000000, 464); 
TEST_RR_OP( 117 , kmmawt, 0xc52960d0, 0xd51d5035, 0x00000000, 468); 
TEST_RR_OP( 118 , kmmawt, 0xc52960d0, 0x00000000, 0xad8dbfad, 472); 
TEST_RR_OP( 119 , kmmawt, 0xc310e0d0, 0x80000000, 0x043139d8, 476); 
TEST_RR_OP( 120 , kmmawt, 0xc310e0d0, 0xffffffff, 0xf08852be, 480); 
TEST_RR_OP( 121 , kmmawt, 0xc310e0d0, 0xffffffff, 0x00000000, 484); 
TEST_RR_OP( 122 , kmmawt, 0xbbd69fea, 0x0e7481cc, 0x80000000, 488); 
TEST_RR_OP( 123 , kmmawt, 0x9896023d, 0x46813b59, 0x80000000, 492); 
TEST_RR_OP( 124 , kmmawt, 0x9896023c, 0xffffffff, 0x64111796, 496); 
TEST_RR_OP( 125 , kmmawt, 0x9896023c, 0xffffffff, 0x80000000, 500); 
TEST_RR_OP( 126 , kmmawt, 0x9896023c, 0x00000000, 0x00000000, 504); 
TEST_RR_OP( 127 , kmmawt, 0xd896023c, 0x80000000, 0x80000000, 508); 
TEST_RR_OP( 128 , kmmawt, 0xd896023c, 0x955b569a, 0x00000000, 512); 
TEST_RR_OP( 129 , kmmawt, 0xd896023c, 0xa9c43e1c, 0x00000000, 516); 
TEST_RR_OP( 130 , kmmawt, 0xd896023c, 0xe3fd1e97, 0x00000000, 520); 
TEST_RR_OP( 131 , kmmawt, 0xd01c023c, 0x80000000, 0x10f470cb, 524); 
TEST_RR_OP( 132 , kmmawt, 0xd01c023c, 0x80000000, 0x00000000, 528); 
TEST_RR_OP( 133 , kmmawt, 0x101c023c, 0x80000000, 0x80000000, 532); 
TEST_RR_OP( 134 , kmmawt, 0x501c023c, 0x80000000, 0x80000000, 536); 
TEST_RR_OP( 135 , kmmawt, 0x501c023c, 0x00000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , kmmawt, 0x501c023c, 0xffffffff, 0x80000000, 544); 
TEST_RR_OP( 137 , kmmawt, 0x501c023c, 0xffffffff, 0x80000000, 548); 
TEST_RR_OP( 138 , kmmawt, 0x501c023c, 0x00000000, 0xffffffff, 552); 
TEST_RR_OP( 139 , kmmawt, 0x501bb71c, 0x4b1f1f14, 0xffffffff, 556); 
TEST_RR_OP( 140 , kmmawt, 0x501bb71c, 0x00000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , kmmawt, 0x7fffffff, 0x80000000, 0x80000000, 564); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_RR_OP( 145 , kmmawt, 0x00004c6b, 0xb3941174, 0xffffffff, 580); 
TEST_RR_OP( 146 , kmmawt, 0x00004c6b, 0xffffffff, 0x80000000, 584); 
TEST_RR_OP( 147 , kmmawt, 0x00004c6b, 0x00000000, 0x00000000, 588); 
TEST_RR_OP( 148 , kmmawt, 0x00004c6a, 0xffffffff, 0x762c4fd1, 592); 
TEST_RR_OP( 149 , kmmawt, 0x00004c6a, 0x4b22d5d5, 0x00000000, 596); 
TEST_RR_OP( 150 , kmmawt, 0xf7f623a4, 0x21966d54, 0xc2b96ec5, 600); 
TEST_RR_OP( 151 , kmmawt, 0xf7f623a4, 0xffffffff, 0x80000000, 604); 
TEST_RR_OP( 152 , kmmawt, 0xf7f623a4, 0xffffffff, 0xffffffff, 608); 
TEST_RR_OP( 153 , kmmawt, 0xfc1ce13a, 0x9f48c04f, 0xf5032a51, 612); 
TEST_RR_OP( 154 , kmmawt, 0xfc1ce13a, 0xffffffff, 0xffffffff, 616); 
TEST_RR_OP( 155 , kmmawt, 0xfc1ce13a, 0x00000000, 0x00000000, 620); 
TEST_RR_OP( 156 , kmmawt, 0xfc1ce13a, 0xffffffff, 0x80000000, 624); 
TEST_RR_OP( 157 , kmmawt, 0xfc1ce13a, 0xffffffff, 0x80000000, 628); 
TEST_RR_OP( 158 , kmmawt, 0xfc1ce13a, 0x00000000, 0x80000000, 632); 
TEST_RR_OP( 159 , kmmawt, 0xfc1ce13a, 0x80000000, 0x00000000, 636); 
TEST_RR_OP( 160 , kmmawt, 0xfc1ce13a, 0x00000000, 0x80000000, 640); 
TEST_RR_OP( 161 , kmmawt, 0xfc1d02f3, 0xde46c1a2, 0xffffffff, 644); 
TEST_RR_OP( 162 , kmmawt, 0xfc1d02f3, 0xffffffff, 0x80000000, 648); 
TEST_RR_OP( 163 , kmmawt, 0x3c1d02f3, 0x80000000, 0x80000000, 652); 
TEST_RR_OP( 164 , kmmawt, 0x3c1d02f3, 0x00000000, 0x00000000, 656); 
TEST_RR_OP( 165 , kmmawt, 0x58b882f3, 0x80000000, 0xc6c94510, 660); 
TEST_RR_OP( 166 , kmmawt, 0x58b882f3, 0x00000000, 0x80000000, 664); 
TEST_RR_OP( 167 , kmmawt, 0x58b882f3, 0x80000000, 0x00000000, 668); 
TEST_RR_OP( 168 , kmmawt, 0x58b882f3, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , kmmawt, 0x7fffffff, 0x80000000, 0x80000000, 676); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_RR_OP( 173 , kmmawt, 0x00000000, 0x00000000, 0xe358e344, 692); 
TEST_RR_OP( 174 , kmmawt, 0x000053bc, 0xac432048, 0xffffffff, 696); 
TEST_RR_OP( 175 , kmmawt, 0x400053bc, 0x80000000, 0x80000000, 700); 
TEST_RR_OP( 176 , kmmawt, 0x400053bc, 0x80000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kmmawt, 0x400053bc, 0x00000000, 0xcf45d1d9, 708); 
TEST_RR_OP( 178 , kmmawt, 0x400053bc, 0x4c35a035, 0x00000000, 712); 
TEST_RR_OP( 179 , kmmawt, 0x28b0cf43, 0xd10b1f65, 0x7f1689bb, 716); 
TEST_RR_OP( 180 , kmmawt, 0x28b0cf43, 0x00000000, 0xfcf99e3f, 720); 
TEST_RR_OP( 181 , kmmawt, 0x09abcf43, 0x80000000, 0x3e0a9bf7, 724); 
TEST_RR_OP( 182 , kmmawt, 0x49abcf43, 0x80000000, 0x80000000, 728); 
TEST_RR_OP( 183 , kmmawt, 0x49abcf43, 0xffffffff, 0x80000000, 732); 
TEST_RR_OP( 184 , kmmawt, 0x49abcf43, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kmmawt, 0x49abcf43, 0x80000000, 0x00000000, 740); 
TEST_RR_OP( 186 , kmmawt, 0x49abcf43, 0x00000000, 0x37b8c016, 744); 
TEST_RR_OP( 187 , kmmawt, 0x49abcf43, 0xffffffff, 0x00000000, 748); 
TEST_RR_OP( 188 , kmmawt, 0x49abcf43, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , kmmawt, 0x347c12a7, 0x8dcc1adf, 0x2f7e2f8b, 756); 
TEST_RR_OP( 190 , kmmawt, 0x347c12a7, 0x2070c247, 0x00000000, 760); 
TEST_RR_OP( 191 , kmmawt, 0x347c12a7, 0x00000000, 0xaa5ca939, 764); 
TEST_RR_OP( 192 , kmmawt, 0x347c92a7, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmmawt, 0x347c92a7, 0x00000000, 0x80000000, 772); 
TEST_RR_OP( 194 , kmmawt, 0x5e5c1afb, 0xac40ef58, 0x80000000, 776); 
TEST_RR_OP( 195 , kmmawt, 0x5e5c1afb, 0x00000000, 0xe3214747, 780); 
TEST_RR_OP( 196 , kmmawt, 0x5e5c9afb, 0x80000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , kmmawt, 0x7fffffff, 0x80000000, 0x80000000, 788); 
TEST_CASE( 198 ,792, x14, 1, rdov x14;);
TEST_CASE( 199 ,796, x14, 1, clrov;);

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
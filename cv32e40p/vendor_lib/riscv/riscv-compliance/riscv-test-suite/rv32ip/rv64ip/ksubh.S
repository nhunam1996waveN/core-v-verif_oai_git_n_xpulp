# See LICENSE for license details.
#*****************************************************************************
# ksubh.S
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

TEST_RR_OP( 2 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 8); 
TEST_RR_OP( 3 , ksubh, 0x00006de8, 0x80000000, 0x809b9218, 12); 
TEST_RR_OP( 4 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 16); 
TEST_RR_OP( 5 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , ksubh, 0x00005de0, 0x80000000, 0xe33ba220, 24); 
TEST_RR_OP( 7 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 28); 
TEST_RR_OP( 8 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 32); 
TEST_RR_OP( 9 , ksubh, 0x0000121c, 0x32aa121c, 0x80000000, 36); 
TEST_RR_OP( 10 , ksubh, 0x00000000, 0x80000000, 0x00000000, 40); 
TEST_RR_OP( 11 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 44); 
TEST_RR_OP( 12 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , ksubh, 0xffffbac4, 0x80000000, 0xbf39453c, 56); 
TEST_RR_OP( 15 , ksubh, 0x00004997, 0xffffffff, 0x5e5ab668, 60); 
TEST_RR_OP( 16 , ksubh, 0x00000000, 0x00000000, 0x00000000, 64); 
TEST_RR_OP( 17 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 68); 
TEST_RR_OP( 18 , ksubh, 0x00001632, 0x40b81631, 0xffffffff, 72); 
TEST_RR_OP( 19 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 76); 
TEST_RR_OP( 20 , ksubh, 0x00000000, 0x00000000, 0x00000000, 80); 
TEST_RR_OP( 21 , ksubh, 0xffff923a, 0xa803923a, 0x80000000, 84); 
TEST_RR_OP( 22 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 88); 
TEST_RR_OP( 23 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , ksubh, 0x00000000, 0x80000000, 0x00000000, 96); 
TEST_RR_OP( 25 , ksubh, 0x00000000, 0x00000000, 0x00000000, 100); 
TEST_RR_OP( 26 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , ksubh, 0xffffdc25, 0x4d66dc25, 0x00000000, 108); 
TEST_RR_OP( 28 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 112); 
TEST_RR_OP( 29 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 116); 
TEST_RR_OP( 30 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 120); 
TEST_RR_OP( 31 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 124); 
TEST_RR_OP( 32 , ksubh, 0x00000000, 0x80000000, 0x80000000, 128); 
TEST_RR_OP( 33 , ksubh, 0xffffc008, 0xffffffff, 0x51113ff7, 132); 
TEST_RR_OP( 34 , ksubh, 0x00000000, 0x80000000, 0x80000000, 136); 
TEST_RR_OP( 35 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 140); 
TEST_RR_OP( 36 , ksubh, 0xffffdb61, 0x00000000, 0x3d2d249f, 144); 
TEST_RR_OP( 37 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , ksubh, 0x00006573, 0x00000000, 0x5cc89a8d, 152); 
TEST_RR_OP( 39 , ksubh, 0x00000000, 0x00000000, 0x00000000, 156); 
TEST_RR_OP( 40 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 160); 
TEST_RR_OP( 41 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 164); 
TEST_RR_OP( 42 , ksubh, 0x00000000, 0x00000000, 0x00000000, 168); 
TEST_RR_OP( 43 , ksubh, 0x00005d79, 0x1e095d79, 0x00000000, 172); 
TEST_RR_OP( 44 , ksubh, 0x0000612c, 0x77a14d19, 0x79d0ebed, 176); 
TEST_RR_OP( 45 , ksubh, 0xffffd7ca, 0x880817d7, 0x58e2400d, 180); 
TEST_RR_OP( 46 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 188); 
TEST_RR_OP( 48 , ksubh, 0x0000103d, 0x00000000, 0x2a7defc3, 192); 
TEST_RR_OP( 49 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 196); 
TEST_RR_OP( 50 , ksubh, 0xffff8e6a, 0x85b7e7a9, 0xbbee593f, 200); 
TEST_RR_OP( 51 , ksubh, 0xffffc3be, 0x80000000, 0xfc8f3c42, 204); 
TEST_RR_OP( 52 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 212); 
TEST_RR_OP( 54 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , ksubh, 0xffff9f37, 0x61769f37, 0x80000000, 220); 
TEST_RR_OP( 56 , ksubh, 0xffffd957, 0xffffffff, 0x9e8426a8, 224); 
TEST_RR_OP( 57 , ksubh, 0xffff9c2c, 0x00000000, 0x1de463d4, 228); 
TEST_RR_OP( 58 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , ksubh, 0xffffb084, 0x80000000, 0xd7d74f7c, 236); 
TEST_RR_OP( 60 , ksubh, 0xffffcfc1, 0x110ecfc0, 0xffffffff, 240); 
TEST_RR_OP( 61 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 244); 
TEST_RR_OP( 62 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 248); 
TEST_RR_OP( 63 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 252); 
TEST_RR_OP( 64 , ksubh, 0x00000000, 0x80000000, 0x00000000, 256); 
TEST_RR_OP( 65 , ksubh, 0x00000000, 0x80000000, 0x80000000, 260); 
TEST_RR_OP( 66 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , ksubh, 0x00005e3f, 0x80000000, 0x556ba1c1, 268); 
TEST_RR_OP( 68 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , ksubh, 0x00000000, 0x80000000, 0x80000000, 276); 
TEST_RR_OP( 70 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 280); 
TEST_RR_OP( 71 , ksubh, 0x00000000, 0x00000000, 0x80000000, 284); 
TEST_RR_OP( 72 , ksubh, 0x000016ee, 0x80000000, 0x4256e912, 288); 
TEST_RR_OP( 73 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 292); 
TEST_RR_OP( 74 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 296); 
TEST_RR_OP( 75 , ksubh, 0xffffd070, 0x7bb4d06f, 0xffffffff, 300); 
TEST_RR_OP( 76 , ksubh, 0x00000000, 0x00000000, 0x80000000, 304); 
TEST_RR_OP( 77 , ksubh, 0x00000000, 0x00000000, 0x00000000, 308); 
TEST_RR_OP( 78 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 312); 
TEST_RR_OP( 79 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 316); 
TEST_RR_OP( 80 , ksubh, 0xffffee9c, 0x00000000, 0xd12a1164, 320); 
TEST_RR_OP( 81 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 324); 
TEST_RR_OP( 82 , ksubh, 0x00000000, 0x00000000, 0x80000000, 328); 
TEST_RR_OP( 83 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 332); 
TEST_RR_OP( 84 , ksubh, 0x00002b05, 0x80000000, 0xae88d4fb, 336); 
TEST_RR_OP( 85 , ksubh, 0xffff8000, 0x1022c032, 0x73e74940, 340); 
TEST_CASE( 86 ,344, x14, 1, rdov x14;);
TEST_CASE( 87 ,348, x14, 1, clrov;);
TEST_CASE( 88 ,352, x14, 0, rdov x14;);
TEST_RR_OP( 89 , ksubh, 0xffffbe7f, 0x8ae6be7f, 0x00000000, 356); 
TEST_RR_OP( 90 , ksubh, 0x000063f9, 0x751b63f9, 0x80000000, 360); 
TEST_RR_OP( 91 , ksubh, 0x000071b5, 0x31ac71b4, 0xffffffff, 364); 
TEST_RR_OP( 92 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , ksubh, 0x00000000, 0x80000000, 0x00000000, 372); 
TEST_RR_OP( 94 , ksubh, 0xffffe4ae, 0x92df0a91, 0x8c6d25e3, 376); 
TEST_RR_OP( 95 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 380); 
TEST_RR_OP( 96 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 384); 
TEST_RR_OP( 97 , ksubh, 0x00001aa0, 0x80000000, 0x6201e560, 388); 
TEST_RR_OP( 98 , ksubh, 0xffff87bb, 0xe66387bb, 0x00000000, 392); 
TEST_RR_OP( 99 , ksubh, 0x00000000, 0x80000000, 0x00000000, 396); 
TEST_RR_OP( 100 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 400); 
TEST_RR_OP( 101 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 404); 
TEST_RR_OP( 102 , ksubh, 0x00000000, 0x00000000, 0x80000000, 408); 
TEST_RR_OP( 103 , ksubh, 0x000014a3, 0xffffffff, 0x72beeb5c, 412); 
TEST_RR_OP( 104 , ksubh, 0x00000000, 0x00000000, 0x00000000, 416); 
TEST_RR_OP( 105 , ksubh, 0x00000000, 0x80000000, 0x00000000, 420); 
TEST_RR_OP( 106 , ksubh, 0xffff81a9, 0x00000000, 0xf6777e57, 424); 
TEST_RR_OP( 107 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 428); 
TEST_RR_OP( 108 , ksubh, 0x0000345f, 0x71db345e, 0xffffffff, 432); 
TEST_RR_OP( 109 , ksubh, 0x00000000, 0x00000000, 0x80000000, 436); 
TEST_RR_OP( 110 , ksubh, 0x00000000, 0x00000000, 0x80000000, 440); 
TEST_RR_OP( 111 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , ksubh, 0x00000000, 0x00000000, 0x80000000, 448); 
TEST_RR_OP( 113 , ksubh, 0x00000000, 0x80000000, 0x80000000, 452); 
TEST_RR_OP( 114 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 456); 
TEST_RR_OP( 115 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 460); 
TEST_RR_OP( 116 , ksubh, 0xfffff6cb, 0xb07435ff, 0xc8f83f34, 464); 
TEST_RR_OP( 117 , ksubh, 0x000060a5, 0xfc0060a5, 0x80000000, 468); 
TEST_RR_OP( 118 , ksubh, 0x00000000, 0x00000000, 0x00000000, 472); 
TEST_RR_OP( 119 , ksubh, 0xffffe061, 0x00000000, 0x174f1f9f, 476); 
TEST_RR_OP( 120 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 484); 
TEST_RR_OP( 122 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 488); 
TEST_RR_OP( 123 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 492); 
TEST_RR_OP( 124 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 496); 
TEST_RR_OP( 125 , ksubh, 0x00000000, 0x00000000, 0x80000000, 500); 
TEST_RR_OP( 126 , ksubh, 0x00000900, 0xffffffff, 0xa02df6ff, 504); 
TEST_RR_OP( 127 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , ksubh, 0xffff9fda, 0x4d999fda, 0x00000000, 512); 
TEST_RR_OP( 129 , ksubh, 0x00000233, 0x045a0233, 0x00000000, 516); 
TEST_RR_OP( 130 , ksubh, 0xffffa902, 0x83e2a901, 0xffffffff, 520); 
TEST_RR_OP( 131 , ksubh, 0x00000000, 0x00000000, 0x00000000, 524); 
TEST_RR_OP( 132 , ksubh, 0xffff9821, 0x294d9821, 0x80000000, 528); 
TEST_RR_OP( 133 , ksubh, 0x00002f9c, 0x8e5b2f9c, 0x80000000, 532); 
TEST_RR_OP( 134 , ksubh, 0x00000000, 0x00000000, 0x80000000, 536); 
TEST_RR_OP( 135 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 540); 
TEST_RR_OP( 136 , ksubh, 0xffffa664, 0x428da663, 0xffffffff, 544); 
TEST_RR_OP( 137 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 548); 
TEST_RR_OP( 138 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 552); 
TEST_RR_OP( 139 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , ksubh, 0x000041ff, 0xffffffff, 0xb4e0be00, 560); 
TEST_RR_OP( 141 , ksubh, 0x000077ac, 0x4cd877ac, 0x80000000, 564); 
TEST_RR_OP( 142 , ksubh, 0x0000544f, 0x00000000, 0x5809abb1, 568); 
TEST_RR_OP( 143 , ksubh, 0x0000395a, 0xffffffff, 0x1f8ac6a5, 572); 
TEST_RR_OP( 144 , ksubh, 0x00000000, 0x80000000, 0x80000000, 576); 
TEST_RR_OP( 145 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 580); 
TEST_RR_OP( 146 , ksubh, 0xffff8000, 0xed148e02, 0xb71667ae, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , ksubh, 0x000009a8, 0x51fc09a8, 0x00000000, 600); 
TEST_RR_OP( 151 , ksubh, 0x0000326e, 0x00000000, 0x4e16cd92, 604); 
TEST_RR_OP( 152 , ksubh, 0x00000c29, 0xdfed0c28, 0xffffffff, 608); 
TEST_RR_OP( 153 , ksubh, 0x00002f7d, 0xa1d92f7d, 0x80000000, 612); 
TEST_RR_OP( 154 , ksubh, 0x00001844, 0x8cc11843, 0xffffffff, 616); 
TEST_RR_OP( 155 , ksubh, 0x00000000, 0x80000000, 0x00000000, 620); 
TEST_RR_OP( 156 , ksubh, 0xffff8214, 0x00000000, 0x778a7dec, 624); 
TEST_RR_OP( 157 , ksubh, 0xffffa0f7, 0xa9f783f7, 0xc98fe300, 628); 
TEST_RR_OP( 158 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 632); 
TEST_RR_OP( 159 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , ksubh, 0x00000000, 0x80000000, 0x00000000, 640); 
TEST_RR_OP( 161 , ksubh, 0xffffc32f, 0x00000000, 0x2ff33cd1, 644); 
TEST_RR_OP( 162 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 648); 
TEST_RR_OP( 163 , ksubh, 0x00000000, 0x00000000, 0x80000000, 652); 
TEST_RR_OP( 164 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 656); 
TEST_RR_OP( 165 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , ksubh, 0xfffff736, 0x37ab805d, 0xa30b8927, 664); 
TEST_RR_OP( 167 , ksubh, 0xffffd7e8, 0x00000000, 0x98bf2818, 668); 
TEST_RR_OP( 168 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , ksubh, 0x00000000, 0x00000000, 0x80000000, 676); 
TEST_RR_OP( 170 , ksubh, 0x00000000, 0x80000000, 0x00000000, 680); 
TEST_RR_OP( 171 , ksubh, 0x00000000, 0x80000000, 0x80000000, 684); 
TEST_RR_OP( 172 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 688); 
TEST_RR_OP( 173 , ksubh, 0x00001970, 0xe9881970, 0x80000000, 692); 
TEST_RR_OP( 174 , ksubh, 0x000008aa, 0x702808a9, 0xffffffff, 696); 
TEST_RR_OP( 175 , ksubh, 0x00000000, 0x00000000, 0x00000000, 700); 
TEST_RR_OP( 176 , ksubh, 0xffffbfb1, 0x7a75a482, 0x48d1e4d1, 704); 
TEST_RR_OP( 177 , ksubh, 0x00005dc8, 0x12fb5dc8, 0x00000000, 708); 
TEST_RR_OP( 178 , ksubh, 0x00000000, 0x80000000, 0x00000000, 712); 
TEST_RR_OP( 179 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 716); 
TEST_RR_OP( 180 , ksubh, 0xffff8faa, 0xe43e8fa9, 0xffffffff, 720); 
TEST_RR_OP( 181 , ksubh, 0x0000469c, 0x80000000, 0xfdb6b964, 724); 
TEST_RR_OP( 182 , ksubh, 0x00000000, 0x80000000, 0x00000000, 728); 
TEST_RR_OP( 183 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 732); 
TEST_RR_OP( 184 , ksubh, 0xffff8e9b, 0x6188af05, 0xc7a0206a, 736); 
TEST_RR_OP( 185 , ksubh, 0x00000000, 0x00000000, 0x00000000, 740); 
TEST_RR_OP( 186 , ksubh, 0x0000638a, 0xffffffff, 0x899d9c75, 744); 
TEST_RR_OP( 187 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 748); 
TEST_RR_OP( 188 , ksubh, 0xffffffff, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , ksubh, 0x00000000, 0x00000000, 0x00000000, 756); 
TEST_RR_OP( 190 , ksubh, 0x00000000, 0x80000000, 0x80000000, 760); 
TEST_RR_OP( 191 , ksubh, 0xffff800c, 0x00000000, 0x6c7f7ff4, 764); 
TEST_RR_OP( 192 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , ksubh, 0x00000000, 0xffffffff, 0xffffffff, 772); 
TEST_RR_OP( 194 , ksubh, 0xffffffff, 0xffffffff, 0x80000000, 776); 
TEST_RR_OP( 195 , ksubh, 0x00000001, 0x80000000, 0xffffffff, 780); 
TEST_RR_OP( 196 , ksubh, 0xffff8ccb, 0x00000000, 0x23f07335, 784); 
TEST_RR_OP( 197 , ksubh, 0x00000001, 0x00000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , ksubh, 0x00000000, 0x80000000, 0x80000000, 792); 
TEST_RR_OP( 199 , ksubh, 0xffff9a1d, 0x26219a1d, 0x00000000, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# kaddh.S
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

TEST_RR_OP( 2 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 12); 
TEST_RR_OP( 4 , kaddh, 0x000008b5, 0x80000000, 0xf13908b5, 16); 
TEST_RR_OP( 5 , kaddh, 0x0000382c, 0xfdef382d, 0xffffffff, 20); 
TEST_RR_OP( 6 , kaddh, 0x0000104a, 0xbbd8104a, 0x80000000, 24); 
TEST_RR_OP( 7 , kaddh, 0x00000000, 0x00000000, 0x00000000, 28); 
TEST_RR_OP( 8 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 32); 
TEST_RR_OP( 9 , kaddh, 0x00003850, 0xeb5d3850, 0x80000000, 36); 
TEST_RR_OP( 10 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 40); 
TEST_RR_OP( 11 , kaddh, 0x000052dd, 0xb09652dd, 0x00000000, 44); 
TEST_RR_OP( 12 , kaddh, 0x00000000, 0x80000000, 0x80000000, 48); 
TEST_RR_OP( 13 , kaddh, 0x00002318, 0x2b14fb38, 0xbcc927e0, 52); 
TEST_RR_OP( 14 , kaddh, 0x00000000, 0x80000000, 0x80000000, 56); 
TEST_RR_OP( 15 , kaddh, 0x00004224, 0x80000000, 0x88584224, 60); 
TEST_RR_OP( 16 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kaddh, 0x00000000, 0x80000000, 0x80000000, 68); 
TEST_RR_OP( 18 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 72); 
TEST_RR_OP( 19 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 76); 
TEST_RR_OP( 20 , kaddh, 0xffff976a, 0xa3ffaa68, 0x6aa7ed02, 80); 
TEST_RR_OP( 21 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 96); 
TEST_RR_OP( 25 , kaddh, 0x00000831, 0x80000000, 0x39d20831, 100); 
TEST_RR_OP( 26 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 104); 
TEST_RR_OP( 27 , kaddh, 0xffffcf82, 0x00000000, 0x22bccf82, 108); 
TEST_RR_OP( 28 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , kaddh, 0xffffcdb7, 0x00000000, 0xdc7fcdb7, 116); 
TEST_RR_OP( 30 , kaddh, 0x00000000, 0x80000000, 0x80000000, 120); 
TEST_RR_OP( 31 , kaddh, 0xffffeed0, 0xf4dceed1, 0xffffffff, 124); 
TEST_RR_OP( 32 , kaddh, 0x00000000, 0x80000000, 0x80000000, 128); 
TEST_RR_OP( 33 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 136); 
TEST_RR_OP( 35 , kaddh, 0xffffc21c, 0x0a9ac21c, 0x00000000, 140); 
TEST_RR_OP( 36 , kaddh, 0x00005a2d, 0x80000000, 0x2c2d5a2d, 144); 
TEST_RR_OP( 37 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , kaddh, 0xffffa7eb, 0x80000000, 0x2e9aa7eb, 152); 
TEST_RR_OP( 39 , kaddh, 0x00007849, 0x57bc7849, 0x00000000, 156); 
TEST_RR_OP( 40 , kaddh, 0x00001750, 0x34ce1751, 0xffffffff, 160); 
TEST_RR_OP( 41 , kaddh, 0x00000000, 0x80000000, 0x00000000, 164); 
TEST_RR_OP( 42 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , kaddh, 0xffffdeb8, 0xf915deb8, 0x00000000, 172); 
TEST_RR_OP( 44 , kaddh, 0x00000000, 0x00000000, 0x80000000, 176); 
TEST_RR_OP( 45 , kaddh, 0x00000000, 0x00000000, 0x80000000, 180); 
TEST_RR_OP( 46 , kaddh, 0x00000000, 0x80000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kaddh, 0xffffdd0e, 0x57fcdd0e, 0x80000000, 188); 
TEST_RR_OP( 48 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 192); 
TEST_RR_OP( 49 , kaddh, 0xffffdcad, 0x9c05dcad, 0x00000000, 196); 
TEST_RR_OP( 50 , kaddh, 0xffffb1c3, 0x00000000, 0x6ee6b1c3, 200); 
TEST_RR_OP( 51 , kaddh, 0x00000000, 0x80000000, 0x00000000, 204); 
TEST_RR_OP( 52 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 212); 
TEST_RR_OP( 54 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 216); 
TEST_RR_OP( 55 , kaddh, 0x000064a1, 0x00000000, 0x515264a1, 220); 
TEST_RR_OP( 56 , kaddh, 0x00000000, 0x80000000, 0x80000000, 224); 
TEST_RR_OP( 57 , kaddh, 0x0000795d, 0x80000000, 0x6395795d, 228); 
TEST_RR_OP( 58 , kaddh, 0x00000000, 0x00000000, 0x80000000, 232); 
TEST_RR_OP( 59 , kaddh, 0x00000000, 0x00000000, 0x80000000, 236); 
TEST_RR_OP( 60 , kaddh, 0xffffb155, 0xcef5b155, 0x80000000, 240); 
TEST_RR_OP( 61 , kaddh, 0x0000046b, 0x42ed046b, 0x80000000, 244); 
TEST_RR_OP( 62 , kaddh, 0xffffd565, 0x00000000, 0xf98dd565, 248); 
TEST_RR_OP( 63 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 252); 
TEST_RR_OP( 64 , kaddh, 0x00002940, 0xffffffff, 0x7a242941, 256); 
TEST_RR_OP( 65 , kaddh, 0x00000000, 0x00000000, 0x00000000, 260); 
TEST_RR_OP( 66 , kaddh, 0x00004e08, 0x1df3ecf2, 0xb2966116, 264); 
TEST_RR_OP( 67 , kaddh, 0x00000000, 0x80000000, 0x00000000, 268); 
TEST_RR_OP( 68 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , kaddh, 0xffffeb66, 0x93b5eb66, 0x00000000, 276); 
TEST_RR_OP( 70 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 280); 
TEST_RR_OP( 71 , kaddh, 0xffff9f7e, 0x60039f7e, 0x80000000, 284); 
TEST_RR_OP( 72 , kaddh, 0xffffa7d0, 0x80fda7d1, 0xffffffff, 288); 
TEST_RR_OP( 73 , kaddh, 0x00000000, 0x00000000, 0x00000000, 292); 
TEST_RR_OP( 74 , kaddh, 0x00004fc0, 0x00000000, 0x54284fc0, 296); 
TEST_RR_OP( 75 , kaddh, 0x00000000, 0x80000000, 0x80000000, 300); 
TEST_RR_OP( 76 , kaddh, 0x00001471, 0x00000000, 0x9df91471, 304); 
TEST_RR_OP( 77 , kaddh, 0x00000000, 0x00000000, 0x80000000, 308); 
TEST_RR_OP( 78 , kaddh, 0x00000000, 0x00000000, 0x00000000, 312); 
TEST_RR_OP( 79 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 316); 
TEST_RR_OP( 80 , kaddh, 0xffff9964, 0x25ff9965, 0xffffffff, 320); 
TEST_RR_OP( 81 , kaddh, 0x00000000, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kaddh, 0xfffffdb2, 0x7babfdb2, 0x80000000, 332); 
TEST_RR_OP( 84 , kaddh, 0xffff8f59, 0xffffffff, 0xaa0d8f5a, 336); 
TEST_RR_OP( 85 , kaddh, 0xffff8c23, 0x80000000, 0x62618c23, 340); 
TEST_RR_OP( 86 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 344); 
TEST_RR_OP( 87 , kaddh, 0xffffed88, 0xfb0fed89, 0xffffffff, 348); 
TEST_RR_OP( 88 , kaddh, 0x00000000, 0x80000000, 0x00000000, 352); 
TEST_RR_OP( 89 , kaddh, 0xffff9a45, 0xc29294b6, 0x6287058f, 356); 
TEST_RR_OP( 90 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 360); 
TEST_RR_OP( 91 , kaddh, 0x00000db1, 0x67050db1, 0x80000000, 364); 
TEST_RR_OP( 92 , kaddh, 0x00000000, 0x80000000, 0x80000000, 368); 
TEST_RR_OP( 93 , kaddh, 0xffffddbe, 0x22f6ddbe, 0x80000000, 372); 
TEST_RR_OP( 94 , kaddh, 0x00000000, 0x80000000, 0x00000000, 376); 
TEST_RR_OP( 95 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 380); 
TEST_RR_OP( 96 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 384); 
TEST_RR_OP( 97 , kaddh, 0x00006b3f, 0x527679de, 0x55e6f161, 388); 
TEST_RR_OP( 98 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kaddh, 0x00000000, 0x80000000, 0x80000000, 396); 
TEST_RR_OP( 100 , kaddh, 0x00000000, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 101 , kaddh, 0x00000000, 0x00000000, 0x00000000, 404); 
TEST_RR_OP( 102 , kaddh, 0x00000000, 0x00000000, 0x00000000, 408); 
TEST_RR_OP( 103 , kaddh, 0x00006014, 0x00000000, 0x504a6014, 412); 
TEST_RR_OP( 104 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 416); 
TEST_RR_OP( 105 , kaddh, 0xffffcdab, 0x3d66cdac, 0xffffffff, 420); 
TEST_RR_OP( 106 , kaddh, 0xfffff78c, 0x80000000, 0x3ac1f78c, 424); 
TEST_RR_OP( 107 , kaddh, 0x000007c9, 0x80000000, 0xb2eb07c9, 428); 
TEST_RR_OP( 108 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 436); 
TEST_RR_OP( 110 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 440); 
TEST_RR_OP( 111 , kaddh, 0x00002064, 0x00000000, 0xa6f82064, 444); 
TEST_RR_OP( 112 , kaddh, 0xffffaca6, 0xbb558978, 0x4d78232e, 448); 
TEST_RR_OP( 113 , kaddh, 0x00000000, 0x80000000, 0x00000000, 452); 
TEST_RR_OP( 114 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 456); 
TEST_RR_OP( 115 , kaddh, 0xffffe5d5, 0x7a8ee5d6, 0xffffffff, 460); 
TEST_RR_OP( 116 , kaddh, 0x00000000, 0x80000000, 0x80000000, 464); 
TEST_RR_OP( 117 , kaddh, 0xffffdbd5, 0x4ec6dbd6, 0xffffffff, 468); 
TEST_RR_OP( 118 , kaddh, 0x00000000, 0x00000000, 0x80000000, 472); 
TEST_RR_OP( 119 , kaddh, 0x00000000, 0x80000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kaddh, 0x000038f1, 0xffffffff, 0x86ec38f2, 480); 
TEST_RR_OP( 121 , kaddh, 0x00000000, 0x80000000, 0x00000000, 484); 
TEST_RR_OP( 122 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 488); 
TEST_RR_OP( 123 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 492); 
TEST_RR_OP( 124 , kaddh, 0x00003f4b, 0x01ed3f4b, 0x00000000, 496); 
TEST_RR_OP( 125 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 500); 
TEST_RR_OP( 126 , kaddh, 0x0000017f, 0xa90e1505, 0xf78bec7a, 504); 
TEST_RR_OP( 127 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , kaddh, 0xffffaf42, 0x80000000, 0xf18faf42, 512); 
TEST_RR_OP( 129 , kaddh, 0x00006354, 0xad6e6355, 0xffffffff, 516); 
TEST_RR_OP( 130 , kaddh, 0x00000000, 0x00000000, 0x00000000, 520); 
TEST_RR_OP( 131 , kaddh, 0xfffff6b7, 0x00000000, 0x1f1ff6b7, 524); 
TEST_RR_OP( 132 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 528); 
TEST_RR_OP( 133 , kaddh, 0xffffc182, 0xaa72c182, 0x00000000, 532); 
TEST_RR_OP( 134 , kaddh, 0x00006f07, 0xa8646f07, 0x80000000, 536); 
TEST_RR_OP( 135 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 540); 
TEST_RR_OP( 136 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , kaddh, 0x00000b62, 0xffffffff, 0x92cf0b63, 548); 
TEST_RR_OP( 138 , kaddh, 0x00000623, 0xb4180623, 0x80000000, 552); 
TEST_RR_OP( 139 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 556); 
TEST_RR_OP( 140 , kaddh, 0xffffffff, 0xffffffff, 0x80000000, 560); 
TEST_RR_OP( 141 , kaddh, 0xffffc586, 0x9745c586, 0x00000000, 564); 
TEST_RR_OP( 142 , kaddh, 0x00000000, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , kaddh, 0xffff9442, 0xffffffff, 0xd7819443, 572); 
TEST_RR_OP( 144 , kaddh, 0x00000000, 0x00000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kaddh, 0x00007fff, 0xc7356a9e, 0xfeae4f9e, 580); 
TEST_CASE( 146 ,584, x14, 1, rdov x14;);
TEST_CASE( 147 ,588, x14, 1, clrov;);
TEST_CASE( 148 ,592, x14, 0, rdov x14;);
TEST_RR_OP( 149 , kaddh, 0x000024d5, 0xffffffff, 0xc84c24d6, 596); 
TEST_RR_OP( 150 , kaddh, 0xffffbf93, 0x3cfdbf93, 0x00000000, 600); 
TEST_RR_OP( 151 , kaddh, 0xffff8f85, 0xffffffff, 0x4f3c8f86, 604); 
TEST_RR_OP( 152 , kaddh, 0xffff803b, 0xffffffff, 0xef7d803c, 608); 
TEST_RR_OP( 153 , kaddh, 0x00000000, 0x80000000, 0x80000000, 612); 
TEST_RR_OP( 154 , kaddh, 0x00000000, 0x80000000, 0x00000000, 616); 
TEST_RR_OP( 155 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , kaddh, 0x00000000, 0x00000000, 0x80000000, 624); 
TEST_RR_OP( 157 , kaddh, 0xffff985d, 0x80000000, 0xc313985d, 628); 
TEST_RR_OP( 158 , kaddh, 0xffffa07c, 0x7d94a07d, 0xffffffff, 632); 
TEST_RR_OP( 159 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , kaddh, 0xffff810f, 0x592a8110, 0xffffffff, 640); 
TEST_RR_OP( 161 , kaddh, 0x00006164, 0x80000000, 0x44ff6164, 644); 
TEST_RR_OP( 162 , kaddh, 0xffffc8a8, 0xffffffff, 0x0389c8a9, 648); 
TEST_RR_OP( 163 , kaddh, 0xffffd813, 0x00000000, 0x2306d813, 652); 
TEST_RR_OP( 164 , kaddh, 0x00007fff, 0x8e4c4946, 0xaff56bf5, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , kaddh, 0xffffc6b8, 0xd11cc6b8, 0x80000000, 672); 
TEST_RR_OP( 169 , kaddh, 0xffffa7a9, 0xb2afa7aa, 0xffffffff, 676); 
TEST_RR_OP( 170 , kaddh, 0x00007366, 0x83ae7367, 0xffffffff, 680); 
TEST_RR_OP( 171 , kaddh, 0xffffc9bf, 0x80000000, 0x187dc9bf, 684); 
TEST_RR_OP( 172 , kaddh, 0x00000000, 0x00000000, 0x80000000, 688); 
TEST_RR_OP( 173 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , kaddh, 0x00000000, 0x80000000, 0x00000000, 696); 
TEST_RR_OP( 175 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 704); 
TEST_RR_OP( 177 , kaddh, 0xfffffd1b, 0x80000000, 0x9517fd1b, 708); 
TEST_RR_OP( 178 , kaddh, 0x00000000, 0x00000000, 0x80000000, 712); 
TEST_RR_OP( 179 , kaddh, 0xfffffffe, 0xffffffff, 0xffffffff, 716); 
TEST_RR_OP( 180 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 720); 
TEST_RR_OP( 181 , kaddh, 0x00000000, 0x80000000, 0x80000000, 724); 
TEST_RR_OP( 182 , kaddh, 0x00001d5a, 0xb3681d5a, 0x80000000, 728); 
TEST_RR_OP( 183 , kaddh, 0x00000000, 0x80000000, 0x80000000, 732); 
TEST_RR_OP( 184 , kaddh, 0x00000000, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kaddh, 0xffffe777, 0xffffffff, 0xacdee778, 740); 
TEST_RR_OP( 186 , kaddh, 0xffff822f, 0xaf8a822f, 0x00000000, 744); 
TEST_RR_OP( 187 , kaddh, 0xffffffff, 0x80000000, 0xffffffff, 748); 
TEST_RR_OP( 188 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 756); 
TEST_RR_OP( 190 , kaddh, 0xffffffff, 0x00000000, 0xffffffff, 760); 
TEST_RR_OP( 191 , kaddh, 0x00007fff, 0xef1a309d, 0x57435043, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , kaddh, 0xffffffff, 0xffffffff, 0x00000000, 780); 
TEST_RR_OP( 196 , kaddh, 0x00004060, 0xf3c87709, 0x7db8c957, 784); 
TEST_RR_OP( 197 , kaddh, 0x00007d56, 0x49e937e3, 0x24cf4573, 788); 
TEST_RR_OP( 198 , kaddh, 0x00000000, 0x00000000, 0x80000000, 792); 
TEST_RR_OP( 199 , kaddh, 0x000069e3, 0x00000000, 0xa04b69e3, 796); 

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
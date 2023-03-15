# See LICENSE for license details.
#*****************************************************************************
# kmatt.S
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

TEST_RR_OP( 2 , kmatt, 0xf1153970, 0xb74e1f08, 0x34888eb1, 8); 
TEST_RR_OP( 3 , kmatt, 0x31153970, 0x80000000, 0x80000000, 12); 
TEST_RR_OP( 4 , kmatt, 0x12f66cb3, 0x8dbf63d4, 0x437d1511, 16); 
TEST_RR_OP( 5 , kmatt, 0x33f8ecb3, 0xbdfb1f08, 0x80000000, 20); 
TEST_RR_OP( 6 , kmatt, 0x33f8ecb3, 0xffffffff, 0x00000000, 24); 
TEST_RR_OP( 7 , kmatt, 0x33f8ecb3, 0x00000000, 0xffffffff, 28); 
TEST_RR_OP( 8 , kmatt, 0x683becb3, 0x80000000, 0x977a12d6, 32); 
TEST_RR_OP( 9 , kmatt, 0x67d1906e, 0x0213ddb9, 0xccb9ba6e, 36); 
TEST_RR_OP( 10 , kmatt, 0x67d2106e, 0xffffffff, 0x80000000, 40); 
TEST_RR_OP( 11 , kmatt, 0x67d2906e, 0x80000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmatt, 0x67d2906e, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , kmatt, 0x67d2906e, 0x00000000, 0xcaad28b5, 52); 
TEST_RR_OP( 14 , kmatt, 0x7fffffff, 0x80000000, 0x80000000, 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_RR_OP( 18 , kmatt, 0x00000000, 0x00000000, 0x00000000, 72); 
TEST_RR_OP( 19 , kmatt, 0xffffa76e, 0x5892ddda, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmatt, 0xffffa76e, 0x00000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , kmatt, 0xffffa76e, 0xffffffff, 0x00000000, 84); 
TEST_RR_OP( 22 , kmatt, 0xf1f8276e, 0x1c0f60b8, 0x80000000, 88); 
TEST_RR_OP( 23 , kmatt, 0xf1f8276e, 0x80000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kmatt, 0xf1f85c8d, 0xcae12a68, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmatt, 0xf1f85c8d, 0x80000000, 0x00000000, 100); 
TEST_RR_OP( 26 , kmatt, 0xf1f85c8d, 0x00000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmatt, 0xf1f85c8e, 0xffffffff, 0xffffffff, 108); 
TEST_RR_OP( 28 , kmatt, 0xf1f85c8e, 0x00000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , kmatt, 0xf1f85c8e, 0x00000000, 0x80000000, 116); 
TEST_RR_OP( 30 , kmatt, 0x31f85c8e, 0x80000000, 0x80000000, 120); 
TEST_RR_OP( 31 , kmatt, 0x31f8dc8e, 0xffffffff, 0x80000000, 124); 
TEST_RR_OP( 32 , kmatt, 0x31f8dc8e, 0xf5273de7, 0x00000000, 128); 
TEST_RR_OP( 33 , kmatt, 0x31f8dc8e, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmatt, 0x31f8dc8e, 0x00000000, 0x80000000, 136); 
TEST_RR_OP( 35 , kmatt, 0x31f95c8e, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , kmatt, 0x36d95c8e, 0xf6404cfc, 0x80000000, 144); 
TEST_RR_OP( 37 , kmatt, 0x17fb5c8e, 0x80000000, 0x3dbc0dc8, 148); 
TEST_RR_OP( 38 , kmatt, 0x17fb6ab6, 0xffffffff, 0xf1d82c2a, 152); 
TEST_RR_OP( 39 , kmatt, 0x17faf313, 0x77a32d6b, 0xffffffff, 156); 
TEST_RR_OP( 40 , kmatt, 0x17faf313, 0x00000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , kmatt, 0x17faf313, 0x00000000, 0x00000000, 164); 
TEST_RR_OP( 42 , kmatt, 0xeb477313, 0x59672417, 0x80000000, 168); 
TEST_RR_OP( 43 , kmatt, 0xeb477313, 0xffffffff, 0x00000000, 172); 
TEST_RR_OP( 44 , kmatt, 0xab727313, 0x7faa4c5a, 0x80000000, 176); 
TEST_RR_OP( 45 , kmatt, 0xab727313, 0xffffffff, 0x00000000, 180); 
TEST_RR_OP( 46 , kmatt, 0xeb727313, 0x80000000, 0x80000000, 184); 
TEST_RR_OP( 47 , kmatt, 0x2b727313, 0x80000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kmatt, 0x2b727313, 0x00000000, 0x80000000, 192); 
TEST_RR_OP( 49 , kmatt, 0x2b727313, 0x80000000, 0x00000000, 196); 
TEST_RR_OP( 50 , kmatt, 0x2b727313, 0x00000000, 0x0e78e713, 200); 
TEST_RR_OP( 51 , kmatt, 0x2b727313, 0x78c9a3a3, 0x00000000, 204); 
TEST_RR_OP( 52 , kmatt, 0x2b725e90, 0xffffffff, 0x14835973, 208); 
TEST_RR_OP( 53 , kmatt, 0x2b725e90, 0x5cca3a65, 0x00000000, 212); 
TEST_RR_OP( 54 , kmatt, 0x2b725e90, 0xffffffff, 0x00000000, 216); 
TEST_RR_OP( 55 , kmatt, 0x2b725e90, 0x00000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmatt, 0x0c7bcc0e, 0x8b1e5b82, 0x43d148c6, 224); 
TEST_RR_OP( 57 , kmatt, 0x098ccc0e, 0x80000000, 0x05de3769, 228); 
TEST_RR_OP( 58 , kmatt, 0x098ccc0f, 0xffffffff, 0xffffffff, 232); 
TEST_RR_OP( 59 , kmatt, 0x098ccc0f, 0x00000000, 0xe29f0a0d, 236); 
TEST_RR_OP( 60 , kmatt, 0x098ccc0f, 0xffffffff, 0x00000000, 240); 
TEST_RR_OP( 61 , kmatt, 0x098ccc0f, 0x1684eb92, 0x00000000, 244); 
TEST_RR_OP( 62 , kmatt, 0x098cb18c, 0x1a83b332, 0xffffffff, 248); 
TEST_RR_OP( 63 , kmatt, 0x098cb18c, 0x00000000, 0x58db3c10, 252); 
TEST_RR_OP( 64 , kmatt, 0x098cb18c, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , kmatt, 0x098cb18d, 0xffffffff, 0xffffffff, 260); 
TEST_RR_OP( 66 , kmatt, 0x098cb18d, 0x00000000, 0x80000000, 264); 
TEST_RR_OP( 67 , kmatt, 0x098cb18d, 0x80000000, 0x00000000, 268); 
TEST_RR_OP( 68 , kmatt, 0x098d318d, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , kmatt, 0x098d318d, 0x00000000, 0x80000000, 276); 
TEST_RR_OP( 70 , kmatt, 0x098d318d, 0x00000000, 0x00000000, 280); 
TEST_RR_OP( 71 , kmatt, 0xd5b6b18d, 0x80000000, 0x67ad410c, 284); 
TEST_RR_OP( 72 , kmatt, 0x0d8cb18d, 0x9054cbbc, 0x80000000, 288); 
TEST_RR_OP( 73 , kmatt, 0x0d8cb18d, 0xffffffff, 0x00000000, 292); 
TEST_RR_OP( 74 , kmatt, 0x0d8cb18d, 0x00000000, 0xbf52fbd0, 296); 
TEST_RR_OP( 75 , kmatt, 0x0d8cb18d, 0x00000000, 0x80000000, 300); 
TEST_RR_OP( 76 , kmatt, 0x0d8cb18d, 0xffffffff, 0x00000000, 304); 
TEST_RR_OP( 77 , kmatt, 0xe6f3318d, 0x80000000, 0x4d33760f, 308); 
TEST_RR_OP( 78 , kmatt, 0xe6f3318d, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , kmatt, 0xf65c8c8c, 0xb6959ab6, 0xca430943, 316); 
TEST_RR_OP( 80 , kmatt, 0xe4698c8c, 0x80000000, 0x23e663ba, 320); 
TEST_RR_OP( 81 , kmatt, 0xe4698c8c, 0x00000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , kmatt, 0xe4698c8c, 0x00000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmatt, 0x24698c8c, 0x80000000, 0x80000000, 332); 
TEST_RR_OP( 84 , kmatt, 0x5ec18c8c, 0x80000000, 0x8b5025d6, 336); 
TEST_RR_OP( 85 , kmatt, 0x36b18c8c, 0x80000000, 0x5020d348, 340); 
TEST_RR_OP( 86 , kmatt, 0x76b18c8c, 0x80000000, 0x80000000, 344); 
TEST_RR_OP( 87 , kmatt, 0x76b18c8c, 0x80000000, 0x00000000, 348); 
TEST_RR_OP( 88 , kmatt, 0x78d60c8c, 0x80000000, 0xfbb76f2e, 352); 
TEST_RR_OP( 89 , kmatt, 0x78d60c8c, 0xffffffff, 0x00000000, 356); 
TEST_RR_OP( 90 , kmatt, 0x78d60c8d, 0xffffffff, 0xffffffff, 360); 
TEST_RR_OP( 91 , kmatt, 0x78d60c8d, 0x00000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , kmatt, 0x78d60c8d, 0x00000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , kmatt, 0x78d60c8d, 0x00000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , kmatt, 0x78d60c8d, 0x00000000, 0x00000000, 376); 
TEST_RR_OP( 95 , kmatt, 0x78d60c8d, 0x00000000, 0x80000000, 380); 
TEST_RR_OP( 96 , kmatt, 0x53a51d06, 0xacb14bef, 0x72496b18, 384); 
TEST_RR_OP( 97 , kmatt, 0x72d01d06, 0xc1aabcd7, 0x80000000, 388); 
TEST_RR_OP( 98 , kmatt, 0x72d01d06, 0xb41e4bf7, 0x00000000, 392); 
TEST_RR_OP( 99 , kmatt, 0x72d09d06, 0xffffffff, 0x80000000, 396); 
TEST_RR_OP( 100 , kmatt, 0x72d09d06, 0x33cf3080, 0x00000000, 400); 
TEST_RR_OP( 101 , kmatt, 0x72d09d06, 0x00000000, 0x56c664c0, 404); 
TEST_RR_OP( 102 , kmatt, 0x72d07c05, 0x2101ddda, 0xffffffff, 408); 
TEST_RR_OP( 103 , kmatt, 0x72d07c05, 0x80000000, 0x00000000, 412); 
TEST_RR_OP( 104 , kmatt, 0x72d07c05, 0x9c85f5ca, 0x00000000, 416); 
TEST_RR_OP( 105 , kmatt, 0x72d07c05, 0x00000000, 0x80000000, 420); 
TEST_RR_OP( 106 , kmatt, 0x72d024a2, 0x57639209, 0xffffffff, 424); 
TEST_RR_OP( 107 , kmatt, 0x7fd5a4a2, 0x80000000, 0xe5f547f5, 428); 
TEST_RR_OP( 108 , kmatt, 0x7fffffff, 0x8eaecec3, 0x80000000, 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_RR_OP( 112 , kmatt, 0x00000000, 0xffffffff, 0x00000000, 448); 
TEST_RR_OP( 113 , kmatt, 0x00004ceb, 0xffffffff, 0xb31562c2, 452); 
TEST_RR_OP( 114 , kmatt, 0x00004ceb, 0xffffffff, 0x00000000, 456); 
TEST_RR_OP( 115 , kmatt, 0x00004ceb, 0x51d995a2, 0x00000000, 460); 
TEST_RR_OP( 116 , kmatt, 0x40004ceb, 0x80000000, 0x80000000, 464); 
TEST_RR_OP( 117 , kmatt, 0x40004ceb, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kmatt, 0x40004cec, 0xffffffff, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmatt, 0x444f03a0, 0xf1451bd8, 0xb524f542, 476); 
TEST_RR_OP( 120 , kmatt, 0x43e383a0, 0x00d707d0, 0x80000000, 480); 
TEST_RR_OP( 121 , kmatt, 0x43e3ec42, 0xffffffff, 0x975eb0f9, 484); 
TEST_RR_OP( 122 , kmatt, 0x43e3ec42, 0x00000000, 0x80000000, 488); 
TEST_RR_OP( 123 , kmatt, 0x7c9e6c42, 0x8e8b7a1e, 0x80000000, 492); 
TEST_RR_OP( 124 , kmatt, 0x7c9e6c42, 0x00000000, 0xffffffff, 496); 
TEST_RR_OP( 125 , kmatt, 0x7c9e6c42, 0x00000000, 0x80000000, 500); 
TEST_RR_OP( 126 , kmatt, 0x7fffffff, 0x80000000, 0x80000000, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_RR_OP( 130 , kmatt, 0x00000000, 0x00000000, 0x80000000, 520); 
TEST_RR_OP( 131 , kmatt, 0x40000000, 0x80000000, 0x80000000, 524); 
TEST_RR_OP( 132 , kmatt, 0x3fff86b1, 0x794f4794, 0xffffffff, 528); 
TEST_RR_OP( 133 , kmatt, 0x78bb06b1, 0x80000000, 0x8e893033, 532); 
TEST_RR_OP( 134 , kmatt, 0x78bb06b1, 0x00000000, 0x80000000, 536); 
TEST_RR_OP( 135 , kmatt, 0x78bb06b1, 0x00000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , kmatt, 0x78bb86b1, 0x80000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmatt, 0x78bb472f, 0x3f827cb5, 0xffffffff, 548); 
TEST_RR_OP( 138 , kmatt, 0x7357d24f, 0x10b05915, 0xad5634bc, 552); 
TEST_RR_OP( 139 , kmatt, 0x72acb301, 0x6239e025, 0xfe4240a1, 556); 
TEST_RR_OP( 140 , kmatt, 0x35903301, 0x80000000, 0x7a398068, 560); 
TEST_RR_OP( 141 , kmatt, 0x35903301, 0x00000000, 0xffffffff, 564); 
TEST_RR_OP( 142 , kmatt, 0x35903301, 0xffffffff, 0x00000000, 568); 
TEST_RR_OP( 143 , kmatt, 0x35903301, 0x00000000, 0x80000000, 572); 
TEST_RR_OP( 144 , kmatt, 0x35901c5c, 0xffffffff, 0x16a56a5f, 576); 
TEST_RR_OP( 145 , kmatt, 0x53ee9c5c, 0x80000000, 0xc3434d9d, 580); 
TEST_RR_OP( 146 , kmatt, 0x53ef1c5c, 0xffffffff, 0x80000000, 584); 
TEST_RR_OP( 147 , kmatt, 0x53ef9c5c, 0xffffffff, 0x80000000, 588); 
TEST_RR_OP( 148 , kmatt, 0x7fffffff, 0x80000000, 0x80000000, 592); 
TEST_CASE( 149 ,596, x14, 1, rdov x14;);
TEST_CASE( 150 ,600, x14, 1, clrov;);
TEST_CASE( 151 ,604, x14, 0, rdov x14;);
TEST_RR_OP( 152 , kmatt, 0x40000000, 0x80000000, 0x80000000, 608); 
TEST_RR_OP( 153 , kmatt, 0x40008000, 0xffffffff, 0x80000000, 612); 
TEST_RR_OP( 154 , kmatt, 0x40008000, 0x00000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmatt, 0x40008000, 0x767cc72a, 0x00000000, 620); 
TEST_RR_OP( 156 , kmatt, 0x40008000, 0x00000000, 0x80000000, 624); 
TEST_RR_OP( 157 , kmatt, 0x40008001, 0xffffffff, 0xffffffff, 628); 
TEST_RR_OP( 158 , kmatt, 0x40008001, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , kmatt, 0x40010001, 0xffffffff, 0x80000000, 636); 
TEST_RR_OP( 160 , kmatt, 0x40018001, 0xffffffff, 0x80000000, 640); 
TEST_RR_OP( 161 , kmatt, 0x7fffffff, 0x80000000, 0x80000000, 644); 
TEST_CASE( 162 ,648, x14, 1, rdov x14;);
TEST_CASE( 163 ,652, x14, 1, clrov;);
TEST_CASE( 164 ,656, x14, 0, rdov x14;);
TEST_RR_OP( 165 , kmatt, 0x00000000, 0x00000000, 0x9274174d, 660); 
TEST_RR_OP( 166 , kmatt, 0x00000000, 0x00000000, 0x80000000, 664); 
TEST_RR_OP( 167 , kmatt, 0x00000000, 0x2b875c77, 0x00000000, 668); 
TEST_RR_OP( 168 , kmatt, 0x00000000, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , kmatt, 0x00000001, 0xffffffff, 0xffffffff, 676); 
TEST_RR_OP( 170 , kmatt, 0x00000001, 0xffffffff, 0x00000000, 680); 
TEST_RR_OP( 171 , kmatt, 0x00000001, 0x00000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , kmatt, 0x00000001, 0x80000000, 0x00000000, 688); 
TEST_RR_OP( 173 , kmatt, 0x00000001, 0x00000000, 0x674807d5, 692); 
TEST_RR_OP( 174 , kmatt, 0x40000001, 0x80000000, 0x80000000, 696); 
TEST_RR_OP( 175 , kmatt, 0x40000001, 0x00000000, 0x00000000, 700); 
TEST_RR_OP( 176 , kmatt, 0x40000001, 0x00000000, 0x80000000, 704); 
TEST_RR_OP( 177 , kmatt, 0x3ffffe20, 0xffffffff, 0x01e1ea1c, 708); 
TEST_RR_OP( 178 , kmatt, 0x7a53fe20, 0x8b58a78c, 0x80000000, 712); 
TEST_RR_OP( 179 , kmatt, 0x7a53fe20, 0x00000000, 0xd7d503f0, 716); 
TEST_RR_OP( 180 , kmatt, 0x696c13a8, 0xbc48c34c, 0x3fe92374, 720); 
TEST_RR_OP( 181 , kmatt, 0x7fffffff, 0x80000000, 0x80000000, 724); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_RR_OP( 185 , kmatt, 0x00008000, 0xffffffff, 0x80000000, 740); 
TEST_RR_OP( 186 , kmatt, 0x00008001, 0xffffffff, 0xffffffff, 744); 
TEST_RR_OP( 187 , kmatt, 0x00008001, 0xffffffff, 0x00000000, 748); 
TEST_RR_OP( 188 , kmatt, 0x00008001, 0xf283c25b, 0x00000000, 752); 
TEST_RR_OP( 189 , kmatt, 0x00008001, 0xffffffff, 0x00000000, 756); 
TEST_RR_OP( 190 , kmatt, 0x00008001, 0x00000000, 0x80000000, 760); 
TEST_RR_OP( 191 , kmatt, 0x00008001, 0x00000000, 0x22cf8823, 764); 
TEST_RR_OP( 192 , kmatt, 0x00010001, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmatt, 0x00010001, 0xffffffff, 0x00000000, 772); 
TEST_RR_OP( 194 , kmatt, 0x00010001, 0x00000000, 0x00000000, 776); 
TEST_RR_OP( 195 , kmatt, 0xd3f70001, 0x80000000, 0x58142537, 780); 
TEST_RR_OP( 196 , kmatt, 0xd3f70001, 0x00000000, 0x6c8aac93, 784); 
TEST_RR_OP( 197 , kmatt, 0xd3f70002, 0xffffffff, 0xffffffff, 788); 
TEST_RR_OP( 198 , kmatt, 0xd3f69528, 0x6ada442b, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmatt, 0xd3f69528, 0xc672abed, 0x00000000, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# kmmwt2.u.S
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

TEST_RR_OP( 2 , kmmwt2.u, 0x00000000, 0x00000000, 0xf2c8bc5a, 8); 
TEST_RR_OP( 3 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 12); 
TEST_RR_OP( 4 , kmmwt2.u, 0x00000000, 0x00000000, 0xdd3f0e94, 16); 
TEST_RR_OP( 5 , kmmwt2.u, 0x00000000, 0x00000000, 0x80000000, 20); 
TEST_RR_OP( 6 , kmmwt2.u, 0x0000c1ff, 0x9f00b694, 0xffffffff, 24); 
TEST_RR_OP( 7 , kmmwt2.u, 0x00000000, 0xffffffff, 0xe311fdaf, 28); 
TEST_RR_OP( 8 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 32); 
TEST_RR_OP( 9 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmmwt2.u, 0x00000000, 0x00000000, 0xda4fd8d1, 40); 
TEST_RR_OP( 11 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 44); 
TEST_RR_OP( 12 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 48); 
TEST_RR_OP( 13 , kmmwt2.u, 0xa97d6eb4, 0x5682914c, 0x80000000, 52); 
TEST_RR_OP( 14 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 56); 
TEST_RR_OP( 15 , kmmwt2.u, 0x00000000, 0xf7ea4dfc, 0x00000000, 60); 
TEST_RR_OP( 16 , kmmwt2.u, 0x64170000, 0x80000000, 0x9be93e4f, 64); 
TEST_RR_OP( 17 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 68); 
TEST_RR_OP( 18 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 72); 
TEST_RR_OP( 19 , kmmwt2.u, 0x00000012, 0xfff72ded, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kmmwt2.u, 0x013ae87e, 0x04f977cf, 0x1fa7871c, 84); 
TEST_RR_OP( 22 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 88); 
TEST_CASE( 23 ,92, x14, 1, rdov x14;);
TEST_CASE( 24 ,96, x14, 1, clrov;);
TEST_CASE( 25 ,100, x14, 0, rdov x14;);
TEST_RR_OP( 26 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmmwt2.u, 0x00000001, 0xffffffff, 0xa80b5b64, 108); 
TEST_RR_OP( 28 , kmmwt2.u, 0xffff213b, 0x6f62667c, 0xffffffff, 112); 
TEST_RR_OP( 29 , kmmwt2.u, 0x00000001, 0xffffffff, 0x80000000, 116); 
TEST_RR_OP( 30 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 128); 
TEST_RR_OP( 33 , kmmwt2.u, 0x443a4795, 0x5a1f839d, 0x60e79657, 132); 
TEST_RR_OP( 34 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 136); 
TEST_RR_OP( 35 , kmmwt2.u, 0x88427bcb, 0x77bd8435, 0x80000000, 140); 
TEST_RR_OP( 36 , kmmwt2.u, 0x00000001, 0xffffffff, 0xbb6b3b25, 144); 
TEST_RR_OP( 37 , kmmwt2.u, 0x00000000, 0x7457dbbc, 0x00000000, 148); 
TEST_RR_OP( 38 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 156); 
TEST_RR_OP( 40 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kmmwt2.u, 0x00000000, 0x9751358f, 0x00000000, 164); 
TEST_RR_OP( 42 , kmmwt2.u, 0x00000000, 0xffffffff, 0xe678b7d7, 168); 
TEST_RR_OP( 43 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 172); 
TEST_RR_OP( 44 , kmmwt2.u, 0x00000001, 0xffffffff, 0x80000000, 176); 
TEST_RR_OP( 45 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 180); 
TEST_RR_OP( 46 , kmmwt2.u, 0x72340000, 0x80000000, 0x8dcc0c80, 184); 
TEST_RR_OP( 47 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 188); 
TEST_RR_OP( 48 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kmmwt2.u, 0x00000000, 0x00000000, 0xbdf65d09, 196); 
TEST_RR_OP( 50 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 204); 
TEST_RR_OP( 52 , kmmwt2.u, 0x00000001, 0xffffffff, 0xb124fb1b, 208); 
TEST_RR_OP( 53 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 212); 
TEST_RR_OP( 54 , kmmwt2.u, 0x00000000, 0xffffffff, 0xc2278c09, 216); 
TEST_RR_OP( 55 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_RR_OP( 59 , kmmwt2.u, 0x00000000, 0x00000000, 0x80000000, 236); 
TEST_RR_OP( 60 , kmmwt2.u, 0xa5320000, 0x80000000, 0x5acebade, 240); 
TEST_RR_OP( 61 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 244); 
TEST_RR_OP( 62 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 248); 
TEST_RR_OP( 63 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , kmmwt2.u, 0x00000000, 0xffffffff, 0xecd505a4, 260); 
TEST_RR_OP( 66 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 264); 
TEST_RR_OP( 67 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 268); 
TEST_RR_OP( 68 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 272); 
TEST_RR_OP( 69 , kmmwt2.u, 0xffff23c0, 0x6e20068c, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , kmmwt2.u, 0x00000000, 0x4a19d555, 0x00000000, 284); 
TEST_RR_OP( 72 , kmmwt2.u, 0x00000000, 0xffffffff, 0xc64de61c, 288); 
TEST_RR_OP( 73 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 292); 
TEST_RR_OP( 74 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmmwt2.u, 0x06edc724, 0x7adbec5a, 0x07381f7a, 300); 
TEST_RR_OP( 76 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 304); 
TEST_RR_OP( 77 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 308); 
TEST_RR_OP( 78 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , kmmwt2.u, 0x00000001, 0xffffffff, 0x8aa6fb44, 316); 
TEST_RR_OP( 80 , kmmwt2.u, 0x31070000, 0x80000000, 0xcef910f7, 320); 
TEST_RR_OP( 81 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , kmmwt2.u, 0x92890000, 0x80000000, 0x6d776a34, 328); 
TEST_RR_OP( 83 , kmmwt2.u, 0x8cb19485, 0x734e6b7b, 0x80000000, 332); 
TEST_RR_OP( 84 , kmmwt2.u, 0x00000000, 0xffffffff, 0xfe29eca6, 336); 
TEST_RR_OP( 85 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 340); 
TEST_CASE( 86 ,344, x14, 1, rdov x14;);
TEST_CASE( 87 ,348, x14, 1, clrov;);
TEST_CASE( 88 ,352, x14, 0, rdov x14;);
TEST_RR_OP( 89 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 356); 
TEST_CASE( 90 ,360, x14, 1, rdov x14;);
TEST_CASE( 91 ,364, x14, 1, clrov;);
TEST_CASE( 92 ,368, x14, 0, rdov x14;);
TEST_RR_OP( 93 , kmmwt2.u, 0x38fb1967, 0xb521a1a1, 0x9e956381, 372); 
TEST_RR_OP( 94 , kmmwt2.u, 0x00000001, 0xffffffff, 0x92442982, 376); 
TEST_RR_OP( 95 , kmmwt2.u, 0x00000001, 0xffffffff, 0x80000000, 380); 
TEST_RR_OP( 96 , kmmwt2.u, 0x00004047, 0xdfdc4b80, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmmwt2.u, 0x80c30000, 0x80000000, 0x7f3dbab5, 388); 
TEST_RR_OP( 98 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 392); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_RR_OP( 102 , kmmwt2.u, 0xd4d57f86, 0x2ff097b5, 0x8cbf0b5a, 408); 
TEST_RR_OP( 103 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 412); 
TEST_RR_OP( 104 , kmmwt2.u, 0xa99f0000, 0x80000000, 0x5661098e, 416); 
TEST_RR_OP( 105 , kmmwt2.u, 0x00000000, 0x00000000, 0x9ccd2346, 420); 
TEST_RR_OP( 106 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 428); 
TEST_RR_OP( 108 , kmmwt2.u, 0x00000001, 0xffffffff, 0x8ce3d30c, 432); 
TEST_RR_OP( 109 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 436); 
TEST_RR_OP( 110 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , kmmwt2.u, 0x00000000, 0x00000000, 0xef7508db, 444); 
TEST_RR_OP( 112 , kmmwt2.u, 0xffffffff, 0xffffffff, 0x4a455c71, 448); 
TEST_RR_OP( 113 , kmmwt2.u, 0x00000000, 0xffffffff, 0xe61a55ca, 452); 
TEST_RR_OP( 114 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 456); 
TEST_RR_OP( 115 , kmmwt2.u, 0x00000000, 0x951a9610, 0x00000000, 460); 
TEST_RR_OP( 116 , kmmwt2.u, 0x39b1f010, 0x560b2f7e, 0x55d4bd3f, 464); 
TEST_RR_OP( 117 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_RR_OP( 121 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 484); 
TEST_RR_OP( 122 , kmmwt2.u, 0x00000000, 0x00000000, 0x2169044a, 488); 
TEST_RR_OP( 123 , kmmwt2.u, 0x05e28874, 0xd2ef2ccc, 0xef49ef34, 492); 
TEST_RR_OP( 124 , kmmwt2.u, 0x00003d15, 0xe175be23, 0xffffffff, 496); 
TEST_RR_OP( 125 , kmmwt2.u, 0x00000000, 0xe1ab3698, 0x00000000, 500); 
TEST_RR_OP( 126 , kmmwt2.u, 0x00004f56, 0xd855286c, 0xffffffff, 504); 
TEST_RR_OP( 127 , kmmwt2.u, 0x00000000, 0xffffffff, 0x3fc2de55, 508); 
TEST_RR_OP( 128 , kmmwt2.u, 0x032dd28b, 0xf4deed09, 0xdb70fb8b, 512); 
TEST_RR_OP( 129 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , kmmwt2.u, 0x00000000, 0xffffffff, 0xe9b4e646, 520); 
TEST_RR_OP( 131 , kmmwt2.u, 0xc7666998, 0x38999668, 0x80000000, 524); 
TEST_RR_OP( 132 , kmmwt2.u, 0x00000000, 0x00000000, 0x80000000, 528); 
TEST_RR_OP( 133 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 532); 
TEST_RR_OP( 134 , kmmwt2.u, 0x1aff5f0a, 0x23f14f0c, 0x6025ef1d, 536); 
TEST_RR_OP( 135 , kmmwt2.u, 0x00000000, 0x00000000, 0x80000000, 540); 
TEST_RR_OP( 136 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 544); 
TEST_RR_OP( 137 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 548); 
TEST_RR_OP( 138 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_RR_OP( 142 , kmmwt2.u, 0x5afc8a0a, 0x90f9cb37, 0x971ad47a, 568); 
TEST_RR_OP( 143 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 576); 
TEST_RR_OP( 145 , kmmwt2.u, 0xad3d0000, 0x80000000, 0x52c3cbee, 580); 
TEST_RR_OP( 146 , kmmwt2.u, 0x00000000, 0x00000000, 0x373e0d4c, 584); 
TEST_RR_OP( 147 , kmmwt2.u, 0x63d84fae, 0x9c27b052, 0x80000000, 588); 
TEST_RR_OP( 148 , kmmwt2.u, 0x00010000, 0x80000000, 0xffffffff, 592); 
TEST_RR_OP( 149 , kmmwt2.u, 0x00000000, 0x00000000, 0xcef32c0b, 596); 
TEST_RR_OP( 150 , kmmwt2.u, 0x00000000, 0xffffffff, 0xe4e5010c, 600); 
TEST_RR_OP( 151 , kmmwt2.u, 0x00000000, 0x508d857a, 0x00000000, 604); 
TEST_RR_OP( 152 , kmmwt2.u, 0x00000000, 0x00000000, 0xab6d4658, 608); 
TEST_RR_OP( 153 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 612); 
TEST_RR_OP( 154 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 616); 
TEST_RR_OP( 155 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 620); 
TEST_RR_OP( 156 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 624); 
TEST_RR_OP( 157 , kmmwt2.u, 0x00000000, 0xf16a5214, 0x00000000, 628); 
TEST_RR_OP( 158 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , kmmwt2.u, 0x0000e03e, 0x8fe10443, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmmwt2.u, 0x00000001, 0xffffffff, 0x80000000, 640); 
TEST_RR_OP( 161 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 644); 
TEST_RR_OP( 162 , kmmwt2.u, 0x0372ba62, 0xfc8d459e, 0x80000000, 648); 
TEST_RR_OP( 163 , kmmwt2.u, 0xffffffff, 0xffffffff, 0x6aea6bbb, 652); 
TEST_RR_OP( 164 , kmmwt2.u, 0xffffffff, 0xffffffff, 0x6755895c, 656); 
TEST_RR_OP( 165 , kmmwt2.u, 0xfd29c317, 0x02d63ce9, 0x80000000, 660); 
TEST_RR_OP( 166 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 664); 
TEST_RR_OP( 167 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 668); 
TEST_RR_OP( 168 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 672); 
TEST_RR_OP( 169 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 676); 
TEST_RR_OP( 170 , kmmwt2.u, 0x02ead0c7, 0x14ee5d5e, 0x11d76332, 680); 
TEST_RR_OP( 171 , kmmwt2.u, 0x92540000, 0x80000000, 0x6dac2af6, 684); 
TEST_RR_OP( 172 , kmmwt2.u, 0x00000001, 0xffffffff, 0x8a0c7e40, 688); 
TEST_RR_OP( 173 , kmmwt2.u, 0xae70270d, 0x518fd8f3, 0x80000000, 692); 
TEST_RR_OP( 174 , kmmwt2.u, 0x00000000, 0x00000000, 0x80000000, 696); 
TEST_RR_OP( 175 , kmmwt2.u, 0x00000000, 0x00000000, 0x50ffad1a, 700); 
TEST_RR_OP( 176 , kmmwt2.u, 0x0076caaa, 0x0566cb43, 0x0affd9a6, 704); 
TEST_RR_OP( 177 , kmmwt2.u, 0x2934f1f7, 0xd6cb0e09, 0x80000000, 708); 
TEST_RR_OP( 178 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 712); 
TEST_RR_OP( 179 , kmmwt2.u, 0xffffffff, 0xffffffff, 0x6c9106ed, 716); 
TEST_RR_OP( 180 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 720); 
TEST_RR_OP( 181 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 724); 
TEST_RR_OP( 182 , kmmwt2.u, 0x00000000, 0x00000000, 0xffffffff, 728); 
TEST_RR_OP( 183 , kmmwt2.u, 0x00000000, 0x00000000, 0x80000000, 732); 
TEST_RR_OP( 184 , kmmwt2.u, 0xafe4fc46, 0x501b03ba, 0x80000000, 736); 
TEST_RR_OP( 185 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 740); 
TEST_RR_OP( 186 , kmmwt2.u, 0x7fffffff, 0x80000000, 0x80000000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , kmmwt2.u, 0x017c08ff, 0xd4e9e47c, 0xfb976929, 760); 
TEST_RR_OP( 191 , kmmwt2.u, 0xf0110000, 0x80000000, 0x0fefc7f1, 764); 
TEST_RR_OP( 192 , kmmwt2.u, 0x00000000, 0x80000000, 0x00000000, 768); 
TEST_RR_OP( 193 , kmmwt2.u, 0x8b853bee, 0x747ac412, 0x80000000, 772); 
TEST_RR_OP( 194 , kmmwt2.u, 0x00000000, 0xffffffff, 0x00000000, 776); 
TEST_RR_OP( 195 , kmmwt2.u, 0xffff0fc8, 0x781c2aff, 0xffffffff, 780); 
TEST_RR_OP( 196 , kmmwt2.u, 0x00000000, 0x00000000, 0x00000000, 784); 
TEST_RR_OP( 197 , kmmwt2.u, 0xffffb69f, 0x24b0abab, 0xffffffff, 788); 
TEST_RR_OP( 198 , kmmwt2.u, 0x00000000, 0xffffffff, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmmwt2.u, 0x00000000, 0xb1df2aa3, 0x00000000, 796); 

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
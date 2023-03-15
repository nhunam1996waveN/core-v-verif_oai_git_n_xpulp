# See LICENSE for license details.
#*****************************************************************************
# smaqa.su.S
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

TEST_RR_OP( 2 , smaqa.su, 0xfffffdd2, 0xffffffff, 0x67cac934, 8); 
TEST_RR_OP( 3 , smaqa.su, 0xfffffdd2, 0x80000000, 0x00000000, 12); 
TEST_RR_OP( 4 , smaqa.su, 0xfffffdd2, 0x00000000, 0x5b7d1764, 16); 
TEST_RR_OP( 5 , smaqa.su, 0xffffecb3, 0x29ecf786, 0x91c4e024, 20); 
TEST_RR_OP( 6 , smaqa.su, 0xffffec33, 0xffffffff, 0x80000000, 24); 
TEST_RR_OP( 7 , smaqa.su, 0xffffec33, 0xffffffff, 0x00000000, 28); 
TEST_RR_OP( 8 , smaqa.su, 0xffffec33, 0x00000000, 0x00000000, 32); 
TEST_RR_OP( 9 , smaqa.su, 0xffffec33, 0x00000000, 0x00000000, 36); 
TEST_RR_OP( 10 , smaqa.su, 0x000060be, 0x6577c9d0, 0xffffffff, 40); 
TEST_RR_OP( 11 , smaqa.su, 0x00005fbe, 0x80000000, 0x02095ffd, 44); 
TEST_RR_OP( 12 , smaqa.su, 0x00007ba2, 0x511de2cc, 0xffffffff, 48); 
TEST_RR_OP( 13 , smaqa.su, 0x00007b22, 0xffffffff, 0x80000000, 52); 
TEST_RR_OP( 14 , smaqa.su, 0x0000791e, 0xffffffff, 0x77bc369b, 56); 
TEST_RR_OP( 15 , smaqa.su, 0x0000791e, 0x00000000, 0x80000000, 60); 
TEST_RR_OP( 16 , smaqa.su, 0x00004a1e, 0xa2955d7c, 0x80000000, 64); 
TEST_RR_OP( 17 , smaqa.su, 0x00004a1e, 0x00000000, 0x00000000, 68); 
TEST_RR_OP( 18 , smaqa.su, 0x00004a1e, 0x80000000, 0x00000000, 72); 
TEST_RR_OP( 19 , smaqa.su, 0x000048da, 0xffffffff, 0x956e1130, 76); 
TEST_RR_OP( 20 , smaqa.su, 0x000048da, 0x00000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , smaqa.su, 0x000048da, 0xffffffff, 0x00000000, 84); 
TEST_RR_OP( 22 , smaqa.su, 0x000048da, 0xffffffff, 0x00000000, 88); 
TEST_RR_OP( 23 , smaqa.su, 0x0000485a, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , smaqa.su, 0x0000485a, 0x00000000, 0xffffffff, 96); 
TEST_RR_OP( 25 , smaqa.su, 0x0000485a, 0xffffffff, 0x00000000, 100); 
TEST_RR_OP( 26 , smaqa.su, 0xffffee5a, 0x80000000, 0xb4b4b500, 104); 
TEST_RR_OP( 27 , smaqa.su, 0xffffee5a, 0x00000000, 0x00000000, 108); 
TEST_RR_OP( 28 , smaqa.su, 0xffffee5a, 0x00000000, 0x39461242, 112); 
TEST_RR_OP( 29 , smaqa.su, 0xffffea5e, 0xffffffff, 0xffffffff, 116); 
TEST_RR_OP( 30 , smaqa.su, 0xffff6ade, 0x80000000, 0xffffffff, 120); 
TEST_RR_OP( 31 , smaqa.su, 0xffff6ade, 0x1b8d51f0, 0x00000000, 124); 
TEST_RR_OP( 32 , smaqa.su, 0xffff6ade, 0x80000000, 0x00000000, 128); 
TEST_RR_OP( 33 , smaqa.su, 0xffff69e1, 0xffffffff, 0xc62e0603, 132); 
TEST_RR_OP( 34 , smaqa.su, 0xffff69e1, 0x00000000, 0x00000000, 136); 
TEST_RR_OP( 35 , smaqa.su, 0xffff4ebf, 0x11b5c91d, 0x395d3646, 140); 
TEST_RR_OP( 36 , smaqa.su, 0xffff4ebf, 0x80000000, 0x00000000, 144); 
TEST_RR_OP( 37 , smaqa.su, 0xffff4d11, 0xffffffff, 0x938a9001, 148); 
TEST_RR_OP( 38 , smaqa.su, 0xffff4d11, 0x00000000, 0xa87dba96, 152); 
TEST_RR_OP( 39 , smaqa.su, 0xffffaeb7, 0x3d4b4414, 0x6082811f, 156); 
TEST_RR_OP( 40 , smaqa.su, 0xffffaabb, 0xffffffff, 0xffffffff, 160); 
TEST_RR_OP( 41 , smaqa.su, 0xffff2b3b, 0x80000000, 0xffffffff, 164); 
TEST_RR_OP( 42 , smaqa.su, 0xffff2b3b, 0xffffffff, 0x00000000, 168); 
TEST_RR_OP( 43 , smaqa.su, 0xffff2b3b, 0x00000000, 0xe5c725b8, 172); 
TEST_RR_OP( 44 , smaqa.su, 0xfffeabbb, 0x80000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , smaqa.su, 0xfffeabbb, 0xffffffff, 0x00000000, 180); 
TEST_RR_OP( 46 , smaqa.su, 0xfffeabbb, 0x390e9308, 0x00000000, 184); 
TEST_RR_OP( 47 , smaqa.su, 0xfffeabbb, 0x00000000, 0x80000000, 188); 
TEST_RR_OP( 48 , smaqa.su, 0xfffeab3b, 0xffffffff, 0x80000000, 192); 
TEST_RR_OP( 49 , smaqa.su, 0xfffeaabb, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , smaqa.su, 0xfffeaa3b, 0xffffffff, 0x80000000, 200); 
TEST_RR_OP( 51 , smaqa.su, 0xfffeaa3b, 0x00000000, 0xffffffff, 204); 
TEST_RR_OP( 52 , smaqa.su, 0xfffeaa3b, 0x80000000, 0x00000000, 208); 
TEST_RR_OP( 53 , smaqa.su, 0xfffe2abb, 0x80000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , smaqa.su, 0xfffe2abb, 0xffffffff, 0x00000000, 216); 
TEST_RR_OP( 55 , smaqa.su, 0xfffe2a3b, 0xffffffff, 0x80000000, 220); 
TEST_RR_OP( 56 , smaqa.su, 0xfffe263f, 0xffffffff, 0xffffffff, 224); 
TEST_RR_OP( 57 , smaqa.su, 0xfffe61ec, 0x7c77ddf9, 0x9c1aba5d, 228); 
TEST_RR_OP( 58 , smaqa.su, 0xfffe60ec, 0x80000000, 0x02b49a85, 232); 
TEST_RR_OP( 59 , smaqa.su, 0xfffe036c, 0x80000000, 0xbb7dd154, 236); 
TEST_RR_OP( 60 , smaqa.su, 0xfffde26c, 0x80000000, 0x42df92c2, 240); 
TEST_RR_OP( 61 , smaqa.su, 0xfffdda6c, 0x80000000, 0x101f77ba, 244); 
TEST_RR_OP( 62 , smaqa.su, 0xfffdd887, 0xffffffff, 0x8d08ed63, 248); 
TEST_RR_OP( 63 , smaqa.su, 0xfffdd6c2, 0xffffffff, 0x2427d4a6, 252); 
TEST_RR_OP( 64 , smaqa.su, 0xfffd5742, 0x80000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , smaqa.su, 0xfffd3cef, 0xd541d1c6, 0xf88e2d37, 260); 
TEST_RR_OP( 66 , smaqa.su, 0xfffd3cef, 0x263a77d7, 0x00000000, 264); 
TEST_RR_OP( 67 , smaqa.su, 0xfffcfcef, 0x80000000, 0x80000000, 268); 
TEST_RR_OP( 68 , smaqa.su, 0xfffd8665, 0x93315175, 0xffffffff, 272); 
TEST_RR_OP( 69 , smaqa.su, 0xfffd1465, 0x80000000, 0xe4a1f6cf, 276); 
TEST_RR_OP( 70 , smaqa.su, 0xfffd1465, 0x00000000, 0x80000000, 280); 
TEST_RR_OP( 71 , smaqa.su, 0xfffe4731, 0x70374845, 0xffffffff, 284); 
TEST_RR_OP( 72 , smaqa.su, 0xfffe34b1, 0x80000000, 0x25e5301a, 288); 
TEST_RR_OP( 73 , smaqa.su, 0xfffe34b1, 0x00000000, 0x00000000, 292); 
TEST_RR_OP( 74 , smaqa.su, 0xfffd6d79, 0x8928ddaa, 0xffffffff, 296); 
TEST_RR_OP( 75 , smaqa.su, 0xfffd2d79, 0x80000000, 0x80000000, 300); 
TEST_RR_OP( 76 , smaqa.su, 0xfffced79, 0x80000000, 0x80000000, 304); 
TEST_RR_OP( 77 , smaqa.su, 0xfffcecf9, 0xffffffff, 0x80000000, 308); 
TEST_RR_OP( 78 , smaqa.su, 0xfffc6d79, 0x80000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , smaqa.su, 0xfffc6d79, 0x5cb30dc2, 0x00000000, 316); 
TEST_RR_OP( 80 , smaqa.su, 0xfffd21c4, 0x406a6d9e, 0xffffffff, 320); 
TEST_RR_OP( 81 , smaqa.su, 0xfffd21c4, 0xfd69db50, 0x00000000, 324); 
TEST_RR_OP( 82 , smaqa.su, 0xfffd2144, 0xffffffff, 0x80000000, 328); 
TEST_RR_OP( 83 , smaqa.su, 0xfffd2144, 0x00000000, 0x00000000, 332); 
TEST_RR_OP( 84 , smaqa.su, 0xfffd2144, 0x00000000, 0x44f5307f, 336); 
TEST_RR_OP( 85 , smaqa.su, 0xfffd2144, 0xffffffff, 0x00000000, 340); 
TEST_RR_OP( 86 , smaqa.su, 0xfffd2144, 0x80000000, 0x00000000, 344); 
TEST_RR_OP( 87 , smaqa.su, 0xfffd2144, 0x00000000, 0x5311f18f, 348); 
TEST_RR_OP( 88 , smaqa.su, 0xfffd2144, 0x2f135524, 0x00000000, 352); 
TEST_RR_OP( 89 , smaqa.su, 0xfffcee44, 0x80000000, 0x662318e7, 356); 
TEST_RR_OP( 90 , smaqa.su, 0xfffc9c96, 0x1146ce89, 0xffffffff, 360); 
TEST_RR_OP( 91 , smaqa.su, 0xfffc9c96, 0x00000000, 0x00000000, 364); 
TEST_RR_OP( 92 , smaqa.su, 0xfffc9c96, 0x00000000, 0x80000000, 368); 
TEST_RR_OP( 93 , smaqa.su, 0xfffc9c96, 0x00000000, 0x8dc2948d, 372); 
TEST_RR_OP( 94 , smaqa.su, 0xfffc989a, 0xffffffff, 0xffffffff, 376); 
TEST_RR_OP( 95 , smaqa.su, 0xfffc971f, 0xffffffff, 0xb7457609, 380); 
TEST_RR_OP( 96 , smaqa.su, 0xfffc960f, 0xffffffff, 0x8a5f2403, 384); 
TEST_RR_OP( 97 , smaqa.su, 0xfffc960f, 0xce3fe6d0, 0x00000000, 388); 
TEST_RR_OP( 98 , smaqa.su, 0xfffc93be, 0xffffffff, 0x2460ece1, 392); 
TEST_RR_OP( 99 , smaqa.su, 0xfffc9143, 0xffffffff, 0x88a1aba7, 396); 
TEST_RR_OP( 100 , smaqa.su, 0xfffc9143, 0x00000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , smaqa.su, 0xfffc8643, 0xeaef68af, 0x80000000, 404); 
TEST_RR_OP( 102 , smaqa.su, 0xfffc85c3, 0xffffffff, 0x80000000, 408); 
TEST_RR_OP( 103 , smaqa.su, 0xfffc85c3, 0x9726e42b, 0x00000000, 412); 
TEST_RR_OP( 104 , smaqa.su, 0xfffbd7e2, 0xa694f5a8, 0xa1b97164, 416); 
TEST_RR_OP( 105 , smaqa.su, 0xfffbd608, 0xffffffff, 0xf71da91d, 420); 
TEST_RR_OP( 106 , smaqa.su, 0xfffbd608, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , smaqa.su, 0xfffbd588, 0xffffffff, 0x80000000, 428); 
TEST_RR_OP( 108 , smaqa.su, 0xfffbd588, 0x00000000, 0x00000000, 432); 
TEST_RR_OP( 109 , smaqa.su, 0xfffb9588, 0x80000000, 0x80000000, 436); 
TEST_RR_OP( 110 , smaqa.su, 0xfffb1608, 0x80000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , smaqa.su, 0xfffb100e, 0x887b52a5, 0xffffffff, 444); 
TEST_RR_OP( 112 , smaqa.su, 0xfffb0f8e, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , smaqa.su, 0xfffb0f8e, 0x00000000, 0x00000000, 452); 
TEST_RR_OP( 114 , smaqa.su, 0xfffa900e, 0x80000000, 0xffffffff, 456); 
TEST_RR_OP( 115 , smaqa.su, 0xfffa8e37, 0xffffffff, 0x903d8882, 460); 
TEST_RR_OP( 116 , smaqa.su, 0xfffa8e37, 0xf5d702c6, 0x00000000, 464); 
TEST_RR_OP( 117 , smaqa.su, 0xfffa576e, 0x3e9b1cd4, 0xffffffff, 468); 
TEST_RR_OP( 118 , smaqa.su, 0xfffa56ee, 0xffffffff, 0x80000000, 472); 
TEST_RR_OP( 119 , smaqa.su, 0xfffa306e, 0x80000000, 0x4d5514ef, 476); 
TEST_RR_OP( 120 , smaqa.su, 0xfff9d8ee, 0x80000000, 0xaf9a25f6, 480); 
TEST_RR_OP( 121 , smaqa.su, 0xfff9ae6e, 0x80000000, 0x557d17a1, 484); 
TEST_RR_OP( 122 , smaqa.su, 0xfff9ae6e, 0x00000000, 0x468d384f, 488); 
TEST_RR_OP( 123 , smaqa.su, 0xfff9ae6e, 0x00000000, 0x00000000, 492); 
TEST_RR_OP( 124 , smaqa.su, 0xfff96e6e, 0x80000000, 0x80000000, 496); 
TEST_RR_OP( 125 , smaqa.su, 0xfff96c2d, 0xffffffff, 0x1e93bfd1, 500); 
TEST_RR_OP( 126 , smaqa.su, 0xfff96c2d, 0x00000000, 0xe371e705, 504); 
TEST_RR_OP( 127 , smaqa.su, 0xfff98142, 0x60694b8b, 0xa3a022fd, 508); 
TEST_RR_OP( 128 , smaqa.su, 0xfff98142, 0xffffffff, 0x00000000, 512); 
TEST_RR_OP( 129 , smaqa.su, 0xfff901c2, 0x80000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , smaqa.su, 0xfff901c2, 0xd0568e13, 0x00000000, 520); 
TEST_RR_OP( 131 , smaqa.su, 0xfff901c2, 0x00000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , smaqa.su, 0xfff95ff6, 0x7f894e6f, 0x3d7665cb, 528); 
TEST_RR_OP( 133 , smaqa.su, 0xfffa77dd, 0x3162493d, 0xffffffff, 532); 
TEST_RR_OP( 134 , smaqa.su, 0xfffa8ad6, 0x17d0190a, 0xc746549a, 536); 
TEST_RR_OP( 135 , smaqa.su, 0xfffa8ad6, 0x00000000, 0x85257be5, 540); 
TEST_RR_OP( 136 , smaqa.su, 0xfffa86da, 0xffffffff, 0xffffffff, 544); 
TEST_RR_OP( 137 , smaqa.su, 0xfffac1fe, 0x71dc1833, 0x7cf62ab0, 548); 
TEST_RR_OP( 138 , smaqa.su, 0xfffa81fe, 0x80000000, 0x80000000, 552); 
TEST_RR_OP( 139 , smaqa.su, 0xfffa81fe, 0x00000000, 0xd910bcd1, 556); 
TEST_RR_OP( 140 , smaqa.su, 0xfffa81fe, 0x00000000, 0x00000000, 560); 
TEST_RR_OP( 141 , smaqa.su, 0xfffa9ee1, 0xf155884f, 0xffffffff, 564); 
TEST_RR_OP( 142 , smaqa.su, 0xfffa3caf, 0x822194cf, 0x53f36ddf, 568); 
TEST_RR_OP( 143 , smaqa.su, 0xfffa3c2f, 0xffffffff, 0x80000000, 572); 
TEST_RR_OP( 144 , smaqa.su, 0xfffa1baf, 0x80000000, 0x41e25b8c, 576); 
TEST_RR_OP( 145 , smaqa.su, 0xfffa1a14, 0xffffffff, 0xe4560160, 580); 
TEST_RR_OP( 146 , smaqa.su, 0xfffa1a14, 0x00000000, 0x986df322, 584); 
TEST_RR_OP( 147 , smaqa.su, 0xfffa1a14, 0xd0381ed0, 0x00000000, 588); 
TEST_RR_OP( 148 , smaqa.su, 0xfffa1994, 0xffffffff, 0x80000000, 592); 
TEST_RR_OP( 149 , smaqa.su, 0xfff9ca14, 0x80000000, 0x9f584052, 596); 
TEST_RR_OP( 150 , smaqa.su, 0xfff9ca14, 0x80000000, 0x00000000, 600); 
TEST_RR_OP( 151 , smaqa.su, 0xfff9ca14, 0x00000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , smaqa.su, 0xfff9ca14, 0xffffffff, 0x00000000, 608); 
TEST_RR_OP( 153 , smaqa.su, 0xfff9ca14, 0x00000000, 0x00000000, 612); 
TEST_RR_OP( 154 , smaqa.su, 0xfff9ca14, 0x00000000, 0x80000000, 616); 
TEST_RR_OP( 155 , smaqa.su, 0xfff9a314, 0xb2037c73, 0x80000000, 620); 
TEST_RR_OP( 156 , smaqa.su, 0xfff99f18, 0xffffffff, 0xffffffff, 624); 
TEST_RR_OP( 157 , smaqa.su, 0xfff99f18, 0x00000000, 0x00000000, 628); 
TEST_RR_OP( 158 , smaqa.su, 0xfff98e29, 0xd7cc5eee, 0xffffffff, 632); 
TEST_RR_OP( 159 , smaqa.su, 0xfff974a9, 0x80000000, 0x3311cd83, 636); 
TEST_RR_OP( 160 , smaqa.su, 0xfff96b29, 0xed142f95, 0x80000000, 640); 
TEST_RR_OP( 161 , smaqa.su, 0xfff92b29, 0x80000000, 0x80000000, 644); 
TEST_RR_OP( 162 , smaqa.su, 0xfff92b29, 0x00000000, 0x80000000, 648); 
TEST_RR_OP( 163 , smaqa.su, 0xfff92b29, 0x80000000, 0x00000000, 652); 
TEST_RR_OP( 164 , smaqa.su, 0xfff95137, 0xc3225214, 0x70759417, 656); 
TEST_RR_OP( 165 , smaqa.su, 0xfff94d3b, 0xffffffff, 0xffffffff, 660); 
TEST_RR_OP( 166 , smaqa.su, 0xfff8cdbb, 0x80000000, 0xffffffff, 664); 
TEST_RR_OP( 167 , smaqa.su, 0xfff88900, 0x27b2cb17, 0xffffffff, 668); 
TEST_RR_OP( 168 , smaqa.su, 0xfff88504, 0xffffffff, 0xffffffff, 672); 
TEST_RR_OP( 169 , smaqa.su, 0xfff88504, 0x00000000, 0x9c599773, 676); 
TEST_RR_OP( 170 , smaqa.su, 0xfff7e3af, 0xc7e19cc7, 0x2263e1f2, 680); 
TEST_RR_OP( 171 , smaqa.su, 0xfff7e3af, 0x00000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , smaqa.su, 0xfff846df, 0xc6735918, 0x64c828c1, 688); 
TEST_RR_OP( 173 , smaqa.su, 0xfff846df, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , smaqa.su, 0xfff846df, 0x00000000, 0xffffffff, 696); 
TEST_RR_OP( 175 , smaqa.su, 0xfff846df, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , smaqa.su, 0xfff845d7, 0xffffffff, 0x0c305c70, 704); 
TEST_RR_OP( 177 , smaqa.su, 0xfff845d7, 0x82102b6c, 0x00000000, 708); 
TEST_RR_OP( 178 , smaqa.su, 0xfff841db, 0xffffffff, 0xffffffff, 712); 
TEST_RR_OP( 179 , smaqa.su, 0xfff841db, 0x00000000, 0x80000000, 716); 
TEST_RR_OP( 180 , smaqa.su, 0xfff841db, 0x2ca4b091, 0x00000000, 720); 
TEST_RR_OP( 181 , smaqa.su, 0xfff841db, 0x00000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , smaqa.su, 0xfff83ddf, 0xffffffff, 0xffffffff, 728); 
TEST_RR_OP( 183 , smaqa.su, 0xfff83ddf, 0xea6faa43, 0x00000000, 732); 
TEST_RR_OP( 184 , smaqa.su, 0xfff83ddf, 0x00000000, 0xffffffff, 736); 
TEST_RR_OP( 185 , smaqa.su, 0xfff7fddf, 0x80000000, 0x80000000, 740); 
TEST_RR_OP( 186 , smaqa.su, 0xfff7fddf, 0xffffffff, 0x00000000, 744); 
TEST_RR_OP( 187 , smaqa.su, 0xfff7bddf, 0x80000000, 0x80000000, 748); 
TEST_RR_OP( 188 , smaqa.su, 0xfff7bddf, 0x00000000, 0x80000000, 752); 
TEST_RR_OP( 189 , smaqa.su, 0xfff7bddf, 0x00000000, 0x80000000, 756); 
TEST_RR_OP( 190 , smaqa.su, 0xfff7a24d, 0x38ae10d8, 0x7375baac, 760); 
TEST_RR_OP( 191 , smaqa.su, 0xfff7a24d, 0x00000000, 0xc1f86799, 764); 
TEST_RR_OP( 192 , smaqa.su, 0xfff722cd, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , smaqa.su, 0xfff722cd, 0x42beeaeb, 0x00000000, 772); 
TEST_RR_OP( 194 , smaqa.su, 0xfff70acd, 0xd02800e3, 0x80000000, 776); 
TEST_RR_OP( 195 , smaqa.su, 0xfff68b4d, 0x80000000, 0xffffffff, 780); 
TEST_RR_OP( 196 , smaqa.su, 0xfff7be19, 0x6a26267e, 0xffffffff, 784); 
TEST_RR_OP( 197 , smaqa.su, 0xfff7be19, 0x00000000, 0x00000000, 788); 
TEST_RR_OP( 198 , smaqa.su, 0xfff7be19, 0x21f4038b, 0x00000000, 792); 
TEST_RR_OP( 199 , smaqa.su, 0xfff7bd99, 0xffffffff, 0x80000000, 796); 

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
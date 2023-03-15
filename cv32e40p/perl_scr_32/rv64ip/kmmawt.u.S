# See LICENSE for license details.
#*****************************************************************************
# kmmawt.u.S
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

TEST_RR_OP( 2 , kmmawt.u, 0xffff83ab, 0x7c54b686, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmmawt.u, 0xffff83ab, 0xffffffff, 0x00000000, 12); 
TEST_RR_OP( 4 , kmmawt.u, 0xfc2889fb, 0x7cd28003, 0xf8203ae5, 16); 
TEST_RR_OP( 5 , kmmawt.u, 0x2d201f73, 0x9e10d510, 0x80000000, 20); 
TEST_RR_OP( 6 , kmmawt.u, 0x2d201f73, 0xffffffff, 0xaa40269c, 24); 
TEST_RR_OP( 7 , kmmawt.u, 0xef099f73, 0x80000000, 0x7c2d3c61, 28); 
TEST_RR_OP( 8 , kmmawt.u, 0xef0a1f73, 0x80000000, 0xffffffff, 32); 
TEST_RR_OP( 9 , kmmawt.u, 0xef0a1f73, 0x00000000, 0x80000000, 36); 
TEST_RR_OP( 10 , kmmawt.u, 0xef0a1f73, 0xffffffff, 0x00000000, 40); 
TEST_RR_OP( 11 , kmmawt.u, 0xe8dccb32, 0x0c5aa882, 0x80000000, 44); 
TEST_RR_OP( 12 , kmmawt.u, 0xe8dccb32, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , kmmawt.u, 0x0b362a70, 0xbb4d4185, 0x80000000, 52); 
TEST_RR_OP( 14 , kmmawt.u, 0x061b1e89, 0x38571156, 0xe8cdbbf9, 56); 
TEST_RR_OP( 15 , kmmawt.u, 0x061b1e89, 0xffffffff, 0x00000000, 60); 
TEST_RR_OP( 16 , kmmawt.u, 0x061b1e89, 0xd5d58a41, 0x00000000, 64); 
TEST_RR_OP( 17 , kmmawt.u, 0x061b9e89, 0x80000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmmawt.u, 0xfbaaada9, 0xe56fc5cd, 0x64a095e2, 72); 
TEST_RR_OP( 19 , kmmawt.u, 0xfbaaada9, 0x80000000, 0x00000000, 76); 
TEST_RR_OP( 20 , kmmawt.u, 0xfbaaada9, 0x00000000, 0x19e6651c, 80); 
TEST_RR_OP( 21 , kmmawt.u, 0xfbaaada9, 0x00000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmmawt.u, 0x209d2da9, 0x80000000, 0xb61b0a1c, 88); 
TEST_RR_OP( 23 , kmmawt.u, 0x209d2da9, 0x00000000, 0x80000000, 92); 
TEST_RR_OP( 24 , kmmawt.u, 0x209d2da9, 0x00000000, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmmawt.u, 0x209d2da9, 0x00000000, 0x80000000, 100); 
TEST_RR_OP( 26 , kmmawt.u, 0x0bc50154, 0x6188b025, 0xc94aa29b, 104); 
TEST_RR_OP( 27 , kmmawt.u, 0x0bc50154, 0xffffffff, 0xffffffff, 108); 
TEST_RR_OP( 28 , kmmawt.u, 0x0bc50154, 0xffffffff, 0xffffffff, 112); 
TEST_RR_OP( 29 , kmmawt.u, 0x0af6c389, 0xcce38d43, 0x040948ba, 116); 
TEST_RR_OP( 30 , kmmawt.u, 0x0af74389, 0x80000000, 0xffffffff, 120); 
TEST_RR_OP( 31 , kmmawt.u, 0x0af74389, 0x80000000, 0x00000000, 124); 
TEST_RR_OP( 32 , kmmawt.u, 0x0af74389, 0x00000000, 0x00000000, 128); 
TEST_RR_OP( 33 , kmmawt.u, 0x0af7c389, 0x80000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmmawt.u, 0x0af7c389, 0x9ae45280, 0x00000000, 136); 
TEST_RR_OP( 35 , kmmawt.u, 0x0af7c38a, 0xffffffff, 0x80000000, 140); 
TEST_RR_OP( 36 , kmmawt.u, 0x4af7c38a, 0x80000000, 0x80000000, 144); 
TEST_RR_OP( 37 , kmmawt.u, 0x7fffffff, 0x80000000, 0x80000000, 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_RR_OP( 41 , kmmawt.u, 0x00000000, 0xffffffff, 0xffffffff, 164); 
TEST_RR_OP( 42 , kmmawt.u, 0x00000000, 0x00000000, 0x80000000, 168); 
TEST_RR_OP( 43 , kmmawt.u, 0x28410000, 0x80000000, 0xaf7eb754, 172); 
TEST_RR_OP( 44 , kmmawt.u, 0x4a854077, 0xbb777f12, 0x80000000, 176); 
TEST_RR_OP( 45 , kmmawt.u, 0x4a854077, 0x00000000, 0x945768cf, 180); 
TEST_RR_OP( 46 , kmmawt.u, 0x4a854077, 0x00000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kmmawt.u, 0x35acc077, 0x80000000, 0x29b1387e, 188); 
TEST_RR_OP( 48 , kmmawt.u, 0x35acc077, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kmmawt.u, 0x5ce85f05, 0xb188c2e4, 0x80000000, 196); 
TEST_RR_OP( 50 , kmmawt.u, 0x5ce8df05, 0x80000000, 0xffffffff, 200); 
TEST_RR_OP( 51 , kmmawt.u, 0x5ce8df05, 0x00000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kmmawt.u, 0x5ce95f05, 0x80000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , kmmawt.u, 0x5ce95f05, 0x00000000, 0x00000000, 212); 
TEST_RR_OP( 54 , kmmawt.u, 0x3a0cc2ff, 0x51f1d77d, 0x9317efc3, 216); 
TEST_RR_OP( 55 , kmmawt.u, 0x3a0d42ff, 0x80000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmmawt.u, 0x3a0d4300, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , kmmawt.u, 0x3a0dc300, 0x80000000, 0xffffffff, 228); 
TEST_RR_OP( 58 , kmmawt.u, 0x7a0dc300, 0x80000000, 0x80000000, 232); 
TEST_RR_OP( 59 , kmmawt.u, 0x7a0dc300, 0x80000000, 0x00000000, 236); 
TEST_RR_OP( 60 , kmmawt.u, 0x7a0e4300, 0x80000000, 0xffffffff, 240); 
TEST_RR_OP( 61 , kmmawt.u, 0x7fffffff, 0x80000000, 0x80000000, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , kmmawt.u, 0x389598e8, 0x8ed4ce30, 0x80000000, 260); 
TEST_RR_OP( 66 , kmmawt.u, 0x389598e8, 0x80000000, 0x00000000, 264); 
TEST_RR_OP( 67 , kmmawt.u, 0x38952d8b, 0x6b5cec76, 0xffffffff, 268); 
TEST_RR_OP( 68 , kmmawt.u, 0x78952d8b, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , kmmawt.u, 0x78952d8b, 0x80000000, 0x00000000, 276); 
TEST_RR_OP( 70 , kmmawt.u, 0x78952d8b, 0xcaf4c53e, 0x00000000, 280); 
TEST_RR_OP( 71 , kmmawt.u, 0x78952d8b, 0x00000000, 0xfafc268b, 284); 
TEST_RR_OP( 72 , kmmawt.u, 0x7fffffff, 0xe6a31926, 0x80000000, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , kmmawt.u, 0x00000000, 0xffffffff, 0x00000000, 304); 
TEST_RR_OP( 77 , kmmawt.u, 0x00000000, 0x00000000, 0xffffffff, 308); 
TEST_RR_OP( 78 , kmmawt.u, 0x00000000, 0x00000000, 0x80000000, 312); 
TEST_RR_OP( 79 , kmmawt.u, 0x00008000, 0x80000000, 0xffffffff, 316); 
TEST_RR_OP( 80 , kmmawt.u, 0x00008000, 0xffffffff, 0x07799521, 320); 
TEST_RR_OP( 81 , kmmawt.u, 0x00008000, 0xffffffff, 0x00000000, 324); 
TEST_RR_OP( 82 , kmmawt.u, 0x00008000, 0x00000000, 0x7f4b9ca7, 328); 
TEST_RR_OP( 83 , kmmawt.u, 0x00008000, 0x80000000, 0x00000000, 332); 
TEST_RR_OP( 84 , kmmawt.u, 0x00008000, 0xffffffff, 0x8f69f9d4, 336); 
TEST_RR_OP( 85 , kmmawt.u, 0xf8c10000, 0x80000000, 0x0e7f3ca8, 340); 
TEST_RR_OP( 86 , kmmawt.u, 0xf547c6cb, 0x06f2726b, 0x80000000, 344); 
TEST_RR_OP( 87 , kmmawt.u, 0xc45fc6cb, 0x80000000, 0x61d07f6e, 348); 
TEST_RR_OP( 88 , kmmawt.u, 0xc45fc6cb, 0x00000000, 0x08da55af, 352); 
TEST_RR_OP( 89 , kmmawt.u, 0xc45fc6cb, 0x00000000, 0xffffffff, 356); 
TEST_RR_OP( 90 , kmmawt.u, 0xa93b46cb, 0x80000000, 0x364949fc, 360); 
TEST_RR_OP( 91 , kmmawt.u, 0x95b8c6cb, 0x80000000, 0x27059379, 364); 
TEST_RR_OP( 92 , kmmawt.u, 0xa958af4b, 0x6b441ee8, 0x2ed61031, 368); 
TEST_RR_OP( 93 , kmmawt.u, 0x80000000, 0x80000000, 0x73149c69, 372); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_RR_OP( 97 , kmmawt.u, 0x00000001, 0xffffffff, 0x80000000, 388); 
TEST_RR_OP( 98 , kmmawt.u, 0x00000001, 0xffffffff, 0x8e6a0ee6, 392); 
TEST_RR_OP( 99 , kmmawt.u, 0x00000001, 0xffffffff, 0xdc85731c, 396); 
TEST_RR_OP( 100 , kmmawt.u, 0x00000001, 0x00000000, 0xb86bfb3e, 400); 
TEST_RR_OP( 101 , kmmawt.u, 0x00000002, 0xffffffff, 0x80000000, 404); 
TEST_RR_OP( 102 , kmmawt.u, 0x40000002, 0x80000000, 0x80000000, 408); 
TEST_RR_OP( 103 , kmmawt.u, 0x40000002, 0x1dc3de8b, 0x00000000, 412); 
TEST_RR_OP( 104 , kmmawt.u, 0x4157699e, 0xfd512cc9, 0x80000000, 416); 
TEST_RR_OP( 105 , kmmawt.u, 0x4157699e, 0x00000000, 0x00000000, 420); 
TEST_RR_OP( 106 , kmmawt.u, 0x4157699e, 0x00000000, 0x80000000, 424); 
TEST_RR_OP( 107 , kmmawt.u, 0x4157699e, 0xffffffff, 0x39832471, 428); 
TEST_RR_OP( 108 , kmmawt.u, 0x4157699e, 0xffffffff, 0x97c5ee26, 432); 
TEST_RR_OP( 109 , kmmawt.u, 0x69ae972e, 0x558cd957, 0x78b79e73, 436); 
TEST_RR_OP( 110 , kmmawt.u, 0x7fbd046e, 0x5b5bf47a, 0x3dce2028, 440); 
TEST_RR_OP( 111 , kmmawt.u, 0x7fbd046e, 0x80000000, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmawt.u, 0x7fbd046e, 0x00000000, 0xffffffff, 448); 
TEST_RR_OP( 113 , kmmawt.u, 0x7fbd046e, 0x00000000, 0x80000000, 452); 
TEST_RR_OP( 114 , kmmawt.u, 0x7fbd046e, 0x3f4e32f8, 0x00000000, 456); 
TEST_RR_OP( 115 , kmmawt.u, 0x5ee7846e, 0x80000000, 0x41abc4b6, 460); 
TEST_RR_OP( 116 , kmmawt.u, 0x549e031b, 0xe4c80a4d, 0x60c16566, 464); 
TEST_RR_OP( 117 , kmmawt.u, 0x549e031b, 0xffffffff, 0xffffffff, 468); 
TEST_RR_OP( 118 , kmmawt.u, 0x549e031b, 0x00000000, 0x80000000, 472); 
TEST_RR_OP( 119 , kmmawt.u, 0x549e031b, 0x80000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kmmawt.u, 0x549e031b, 0xffffffff, 0xffffffff, 480); 
TEST_RR_OP( 121 , kmmawt.u, 0x7fffffff, 0x80000000, 0x80000000, 484); 
TEST_CASE( 122 ,488, x14, 1, rdov x14;);
TEST_CASE( 123 ,492, x14, 1, clrov;);
TEST_CASE( 124 ,496, x14, 0, rdov x14;);
TEST_RR_OP( 125 , kmmawt.u, 0x00000000, 0x519a8f49, 0x00000000, 500); 
TEST_RR_OP( 126 , kmmawt.u, 0xd31df82a, 0x59c40fac, 0x80000000, 504); 
TEST_RR_OP( 127 , kmmawt.u, 0xd31df82b, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , kmmawt.u, 0xd31e782b, 0x80000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , kmmawt.u, 0xd31e782b, 0x982e4b05, 0x00000000, 516); 
TEST_RR_OP( 130 , kmmawt.u, 0xd31e782b, 0xf0353dd0, 0x00000000, 520); 
TEST_RR_OP( 131 , kmmawt.u, 0xd31e782b, 0x00000000, 0x80000000, 524); 
TEST_RR_OP( 132 , kmmawt.u, 0xd31e782b, 0x00000000, 0xbe710391, 528); 
TEST_RR_OP( 133 , kmmawt.u, 0xd31e782c, 0xffffffff, 0x80000000, 532); 
TEST_RR_OP( 134 , kmmawt.u, 0xd31e9a4a, 0xdde1c86c, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmmawt.u, 0xd9c187a1, 0xf2ba2552, 0x80000000, 540); 
TEST_RR_OP( 136 , kmmawt.u, 0x19c187a1, 0x80000000, 0x80000000, 544); 
TEST_RR_OP( 137 , kmmawt.u, 0x19c187a1, 0x28db82ce, 0x00000000, 548); 
TEST_RR_OP( 138 , kmmawt.u, 0xe11b6330, 0x714c48e3, 0x80000000, 552); 
TEST_RR_OP( 139 , kmmawt.u, 0xe11b6330, 0x00000000, 0x80000000, 556); 
TEST_RR_OP( 140 , kmmawt.u, 0xe11b6331, 0xffffffff, 0x80000000, 560); 
TEST_RR_OP( 141 , kmmawt.u, 0x211b6331, 0x80000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kmmawt.u, 0x211b6332, 0xffffffff, 0x80000000, 568); 
TEST_RR_OP( 143 , kmmawt.u, 0x211b6332, 0x00000000, 0x00000000, 572); 
TEST_RR_OP( 144 , kmmawt.u, 0x611b6332, 0x80000000, 0x80000000, 576); 
TEST_RR_OP( 145 , kmmawt.u, 0x611b6332, 0xffffffff, 0x00000000, 580); 
TEST_RR_OP( 146 , kmmawt.u, 0x611be332, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , kmmawt.u, 0x611be332, 0x80000000, 0x00000000, 588); 
TEST_RR_OP( 148 , kmmawt.u, 0x3af157b9, 0x4c5516f3, 0x80000000, 592); 
TEST_RR_OP( 149 , kmmawt.u, 0x3af157b9, 0x00000000, 0x00000000, 596); 
TEST_RR_OP( 150 , kmmawt.u, 0x538dd7b9, 0x80000000, 0xcec7a3c3, 600); 
TEST_RR_OP( 151 , kmmawt.u, 0x538dd7b9, 0xffffffff, 0xffffffff, 604); 
TEST_RR_OP( 152 , kmmawt.u, 0x59461362, 0xf48f88ae, 0x80000000, 608); 
TEST_RR_OP( 153 , kmmawt.u, 0x5945cc2b, 0x473767b2, 0xffffffff, 612); 
TEST_RR_OP( 154 , kmmawt.u, 0x5945cc2b, 0x00000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmmawt.u, 0x5945cc2b, 0x00000000, 0x00000000, 620); 
TEST_RR_OP( 156 , kmmawt.u, 0x71174b49, 0xd05d01c4, 0x80000000, 624); 
TEST_RR_OP( 157 , kmmawt.u, 0x71174b49, 0x00000000, 0x80000000, 628); 
TEST_RR_OP( 158 , kmmawt.u, 0x7117cb49, 0x80000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmmawt.u, 0x7117cb49, 0x00000000, 0x00000000, 636); 
TEST_RR_OP( 160 , kmmawt.u, 0x7117cb49, 0x00000000, 0xffffffff, 640); 
TEST_RR_OP( 161 , kmmawt.u, 0x7117cb49, 0x00000000, 0x80000000, 644); 
TEST_RR_OP( 162 , kmmawt.u, 0x7117cb49, 0xffffffff, 0xffffffff, 648); 
TEST_RR_OP( 163 , kmmawt.u, 0x7117cb49, 0xffffffff, 0x05d736db, 652); 
TEST_RR_OP( 164 , kmmawt.u, 0x7fffffff, 0x80000000, 0xbeed3ac5, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , kmmawt.u, 0x00008000, 0x80000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , kmmawt.u, 0x00008000, 0x80000000, 0x00000000, 676); 
TEST_RR_OP( 170 , kmmawt.u, 0x0000c0bf, 0xbf40c7c7, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmmawt.u, 0x00007e6f, 0x42502e10, 0xffffffff, 684); 
TEST_RR_OP( 172 , kmmawt.u, 0x00007e6f, 0xffffffff, 0xffffffff, 688); 
TEST_RR_OP( 173 , kmmawt.u, 0x00007e6f, 0xffffffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , kmmawt.u, 0x00007e6f, 0x80000000, 0x00000000, 696); 
TEST_RR_OP( 175 , kmmawt.u, 0x40007e6f, 0x80000000, 0x80000000, 700); 
TEST_RR_OP( 176 , kmmawt.u, 0x7fffffff, 0x80000000, 0x80000000, 704); 
TEST_CASE( 177 ,708, x14, 1, rdov x14;);
TEST_CASE( 178 ,712, x14, 1, clrov;);
TEST_CASE( 179 ,716, x14, 0, rdov x14;);
TEST_RR_OP( 180 , kmmawt.u, 0x00000000, 0xffffffff, 0x0711af6a, 720); 
TEST_RR_OP( 181 , kmmawt.u, 0x00000000, 0x00000000, 0x80000000, 724); 
TEST_RR_OP( 182 , kmmawt.u, 0xfcaf1a32, 0x06a1cb9d, 0x80000000, 728); 
TEST_RR_OP( 183 , kmmawt.u, 0x3caf1a32, 0x80000000, 0x80000000, 732); 
TEST_RR_OP( 184 , kmmawt.u, 0x29f03632, 0xc76d9618, 0x54d4efdc, 736); 
TEST_RR_OP( 185 , kmmawt.u, 0x29f00f0a, 0x27279554, 0xffffffff, 740); 
TEST_RR_OP( 186 , kmmawt.u, 0x29f00f0a, 0x80000000, 0x00000000, 744); 
TEST_RR_OP( 187 , kmmawt.u, 0x29f00f0a, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmmawt.u, 0x34fe8f0a, 0x80000000, 0xe9e3744a, 752); 
TEST_RR_OP( 189 , kmmawt.u, 0x34fe8f0a, 0xffffffff, 0x00000000, 756); 
TEST_RR_OP( 190 , kmmawt.u, 0x34fe66ec, 0x281db348, 0xffffffff, 760); 
TEST_RR_OP( 191 , kmmawt.u, 0x34fe66ec, 0xffffffff, 0xbdaab2db, 764); 
TEST_RR_OP( 192 , kmmawt.u, 0x709f8b6c, 0x88bdb701, 0x80000000, 768); 
TEST_RR_OP( 193 , kmmawt.u, 0x709f8b6c, 0xffffffff, 0x00000000, 772); 
TEST_RR_OP( 194 , kmmawt.u, 0x709f8b6c, 0x00000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmmawt.u, 0x709f8b6c, 0x00000000, 0x82bdacb0, 780); 
TEST_RR_OP( 196 , kmmawt.u, 0x709f8b6c, 0x00000000, 0x00000000, 784); 
TEST_RR_OP( 197 , kmmawt.u, 0x70a00b6c, 0x80000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , kmmawt.u, 0x70a08b6c, 0x80000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmmawt.u, 0x70a0bab8, 0xd0b38adf, 0xffffffff, 796); 

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
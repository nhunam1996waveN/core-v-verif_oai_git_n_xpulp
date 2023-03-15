# See LICENSE for license details.
#*****************************************************************************
# kmmsb.S
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

TEST_RR_OP( 2 , kmmsb, 0xc0000000, 0x80000000, 0x80000000, 8); 
TEST_RR_OP( 3 , kmmsb, 0xc0000000, 0x00000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmmsb, 0xc0000000, 0x54f6c04c, 0x00000000, 16); 
TEST_RR_OP( 5 , kmmsb, 0xf3336141, 0x80000000, 0x6666c282, 20); 
TEST_RR_OP( 6 , kmmsb, 0xf3336141, 0x80000000, 0x00000000, 24); 
TEST_RR_OP( 7 , kmmsb, 0xf3336141, 0xa2fb127b, 0x00000000, 28); 
TEST_RR_OP( 8 , kmmsb, 0xf3336141, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , kmmsb, 0xf3336141, 0xb3f02f85, 0x00000000, 36); 
TEST_RR_OP( 10 , kmmsb, 0xf3336142, 0x3c0669d0, 0xffffffff, 40); 
TEST_RR_OP( 11 , kmmsb, 0xf3336142, 0xffffffff, 0x00000000, 44); 
TEST_RR_OP( 12 , kmmsb, 0xf3336142, 0x0e97ce9d, 0x00000000, 48); 
TEST_RR_OP( 13 , kmmsb, 0xf3336142, 0xa2d862f4, 0x00000000, 52); 
TEST_RR_OP( 14 , kmmsb, 0xf3336142, 0x9dc2a412, 0xffffffff, 56); 
TEST_RR_OP( 15 , kmmsb, 0xf3336142, 0x00000000, 0x00000000, 60); 
TEST_RR_OP( 16 , kmmsb, 0xeddf27b9, 0x80000000, 0xf5578cee, 64); 
TEST_RR_OP( 17 , kmmsb, 0xeddf27b9, 0x00000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmmsb, 0xedde96fe, 0xfffede8a, 0x80000000, 72); 
TEST_RR_OP( 19 , kmmsb, 0xedde96fe, 0xffffffff, 0x80000000, 76); 
TEST_RR_OP( 20 , kmmsb, 0x14f4033a, 0x4e2ad878, 0x80000000, 80); 
TEST_RR_OP( 21 , kmmsb, 0x14f4033a, 0x00000000, 0x8c43226d, 84); 
TEST_RR_OP( 22 , kmmsb, 0x14f4033a, 0x00000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , kmmsb, 0xd4f4033a, 0x80000000, 0x80000000, 92); 
TEST_RR_OP( 24 , kmmsb, 0xd4f4033a, 0xffffffff, 0x8f120635, 96); 
TEST_RR_OP( 25 , kmmsb, 0xd4f4033a, 0xffffffff, 0xffffffff, 100); 
TEST_RR_OP( 26 , kmmsb, 0x053b0e9b, 0x608e16c1, 0x80000000, 104); 
TEST_RR_OP( 27 , kmmsb, 0x053b0e9b, 0x80000000, 0xffffffff, 108); 
TEST_RR_OP( 28 , kmmsb, 0xe9edcc2a, 0xc9657b1e, 0x80000000, 112); 
TEST_RR_OP( 29 , kmmsb, 0xe9edcc2a, 0x00000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kmmsb, 0xe9edcc2a, 0xb651d7cd, 0x00000000, 120); 
TEST_RR_OP( 31 , kmmsb, 0xe9edcc2a, 0xb7239959, 0xffffffff, 124); 
TEST_RR_OP( 32 , kmmsb, 0xad37855b, 0x86937262, 0x80000000, 128); 
TEST_RR_OP( 33 , kmmsb, 0xa36aeb55, 0xe120de9c, 0xaebda552, 132); 
TEST_RR_OP( 34 , kmmsb, 0xa36aeb55, 0x80000000, 0x00000000, 136); 
TEST_RR_OP( 35 , kmmsb, 0xa36aeb56, 0xffffffff, 0x5adfe0fe, 140); 
TEST_RR_OP( 36 , kmmsb, 0xa36aeb56, 0x80000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , kmmsb, 0xa36aeb56, 0xffffffff, 0x00000000, 148); 
TEST_RR_OP( 38 , kmmsb, 0x8c4b4334, 0x80000000, 0xd1c0afbb, 152); 
TEST_RR_OP( 39 , kmmsb, 0x80000000, 0x80000000, 0xa144748f, 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_RR_OP( 43 , kmmsb, 0xc0000000, 0x80000000, 0x80000000, 172); 
TEST_RR_OP( 44 , kmmsb, 0xfaaa3fab, 0x80000000, 0x75547f56, 176); 
TEST_RR_OP( 45 , kmmsb, 0xfaaa3fab, 0x80000000, 0x00000000, 180); 
TEST_RR_OP( 46 , kmmsb, 0x142a188f, 0x32ffb1c8, 0x80000000, 184); 
TEST_RR_OP( 47 , kmmsb, 0x091c3876, 0xe9e43fce, 0x80000000, 188); 
TEST_RR_OP( 48 , kmmsb, 0x091c3876, 0x80000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kmmsb, 0x091c3876, 0x80000000, 0x00000000, 196); 
TEST_RR_OP( 50 , kmmsb, 0xeaf50490, 0x80000000, 0xc3b19833, 200); 
TEST_RR_OP( 51 , kmmsb, 0xeaf50490, 0xffffffff, 0x80000000, 204); 
TEST_RR_OP( 52 , kmmsb, 0xeaf50490, 0x00000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , kmmsb, 0xeaf50490, 0xffffffff, 0x96a48e18, 212); 
TEST_RR_OP( 54 , kmmsb, 0xeaf50490, 0x00000000, 0xaf172b56, 216); 
TEST_RR_OP( 55 , kmmsb, 0xeaf50490, 0x80000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmmsb, 0xe472a187, 0xf2fb39ed, 0x80000000, 224); 
TEST_RR_OP( 57 , kmmsb, 0xe472a188, 0x420e89b4, 0xffffffff, 228); 
TEST_RR_OP( 58 , kmmsb, 0xe472a188, 0xffffffff, 0x00000000, 232); 
TEST_RR_OP( 59 , kmmsb, 0xa472a188, 0x80000000, 0x80000000, 236); 
TEST_RR_OP( 60 , kmmsb, 0xad78dce3, 0x80000000, 0x120c76b6, 240); 
TEST_RR_OP( 61 , kmmsb, 0xad78dce3, 0x00000000, 0x6dab086c, 244); 
TEST_RR_OP( 62 , kmmsb, 0xdc3b41d6, 0x80000000, 0x5d84c9e5, 248); 
TEST_RR_OP( 63 , kmmsb, 0xe454452c, 0x103206ab, 0x80000000, 252); 
TEST_RR_OP( 64 , kmmsb, 0xe454452c, 0x83478efa, 0x00000000, 256); 
TEST_RR_OP( 65 , kmmsb, 0xe454452d, 0xffffffff, 0x53235567, 260); 
TEST_RR_OP( 66 , kmmsb, 0xe4a55d5e, 0x80000000, 0x00a23062, 264); 
TEST_RR_OP( 67 , kmmsb, 0xe4a55d5e, 0x00000000, 0xc62bc00d, 268); 
TEST_RR_OP( 68 , kmmsb, 0xe4a55d5e, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , kmmsb, 0xe4a55d5e, 0x80000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmmsb, 0xe4a55d5e, 0x00000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , kmmsb, 0xe4a55d5e, 0xffffffff, 0x9009111d, 284); 
TEST_RR_OP( 72 , kmmsb, 0xe4a55d5e, 0x80000000, 0x00000000, 288); 
TEST_RR_OP( 73 , kmmsb, 0xe4a55d5e, 0xffffffff, 0xffffffff, 292); 
TEST_RR_OP( 74 , kmmsb, 0xe4a55d5e, 0xffffffff, 0x00000000, 296); 
TEST_RR_OP( 75 , kmmsb, 0xe4a55d5e, 0x00000000, 0xfd041210, 300); 
TEST_RR_OP( 76 , kmmsb, 0xe9b64482, 0x3197f0ef, 0xe5d96ede, 304); 
TEST_RR_OP( 77 , kmmsb, 0xe9b64482, 0x00000000, 0x80000000, 308); 
TEST_RR_OP( 78 , kmmsb, 0xf7b7d008, 0x80000000, 0x1c03170b, 312); 
TEST_RR_OP( 79 , kmmsb, 0xf7b7d008, 0xffffffff, 0x00000000, 316); 
TEST_RR_OP( 80 , kmmsb, 0xf7b7d008, 0x00000000, 0x00000000, 320); 
TEST_RR_OP( 81 , kmmsb, 0xf7b7d008, 0x80000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kmmsb, 0x04eab8c1, 0x29c44faf, 0xaf19c619, 328); 
TEST_RR_OP( 83 , kmmsb, 0x42bca5a0, 0x80000000, 0x7ba3d9be, 332); 
TEST_RR_OP( 84 , kmmsb, 0x42bca5a0, 0xffffffff, 0x80000000, 336); 
TEST_RR_OP( 85 , kmmsb, 0x42bca5a0, 0x00000000, 0x00000000, 340); 
TEST_RR_OP( 86 , kmmsb, 0x42bca5a0, 0xffffffff, 0x00000000, 344); 
TEST_RR_OP( 87 , kmmsb, 0x42bca5a0, 0xffffffff, 0x80000000, 348); 
TEST_RR_OP( 88 , kmmsb, 0x42bca5a0, 0x80000000, 0xffffffff, 352); 
TEST_RR_OP( 89 , kmmsb, 0x42bca5a0, 0x8999783a, 0xffffffff, 356); 
TEST_RR_OP( 90 , kmmsb, 0x42bca5a1, 0xffffffff, 0x0a4716a9, 360); 
TEST_RR_OP( 91 , kmmsb, 0x1aa5b43f, 0xafd21d3c, 0x80000000, 364); 
TEST_RR_OP( 92 , kmmsb, 0x1aa5b43f, 0x00000000, 0xd59549cf, 368); 
TEST_RR_OP( 93 , kmmsb, 0x58199f7f, 0x80000000, 0x7ae7d680, 372); 
TEST_RR_OP( 94 , kmmsb, 0x5bddd861, 0x4a3a48eb, 0xf3028b39, 376); 
TEST_RR_OP( 95 , kmmsb, 0x1bddd861, 0x80000000, 0x80000000, 380); 
TEST_RR_OP( 96 , kmmsb, 0x1bddd861, 0xf42cb3a8, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmmsb, 0x27169b37, 0x5d01b100, 0xe11cbf10, 388); 
TEST_RR_OP( 98 , kmmsb, 0x27169b37, 0x00000000, 0x00000000, 392); 
TEST_RR_OP( 99 , kmmsb, 0x27169b37, 0x00000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , kmmsb, 0x44ffb8b1, 0x80000000, 0x3bd23af4, 400); 
TEST_RR_OP( 101 , kmmsb, 0x31e784ed, 0x80000000, 0xd9cf9877, 404); 
TEST_RR_OP( 102 , kmmsb, 0x31e784ed, 0x00000000, 0xd0510a94, 408); 
TEST_RR_OP( 103 , kmmsb, 0x31e784ed, 0x00000000, 0x00000000, 412); 
TEST_RR_OP( 104 , kmmsb, 0x31e784ed, 0x80000000, 0xffffffff, 416); 
TEST_RR_OP( 105 , kmmsb, 0x31e784ed, 0x80000000, 0x00000000, 420); 
TEST_RR_OP( 106 , kmmsb, 0x13442524, 0x80000000, 0xc2b9406e, 424); 
TEST_RR_OP( 107 , kmmsb, 0x13442524, 0x00000000, 0xff467d45, 428); 
TEST_RR_OP( 108 , kmmsb, 0x13442524, 0xffffffff, 0x00000000, 432); 
TEST_RR_OP( 109 , kmmsb, 0xd3442524, 0x80000000, 0x80000000, 436); 
TEST_RR_OP( 110 , kmmsb, 0xd3442524, 0x00000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , kmmsb, 0xd3442524, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , kmmsb, 0xd3442524, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , kmmsb, 0xd3442524, 0xc40e7bdc, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmmsb, 0xd5d78702, 0x078ea4d4, 0xa8bf7224, 456); 
TEST_RR_OP( 115 , kmmsb, 0xedae79a4, 0xb31ea199, 0x4f61e61c, 460); 
TEST_RR_OP( 116 , kmmsb, 0xedae79a4, 0x80000000, 0xffffffff, 464); 
TEST_RR_OP( 117 , kmmsb, 0xedae79a4, 0xffffffff, 0x8ca0a514, 468); 
TEST_RR_OP( 118 , kmmsb, 0xedae79a4, 0xffffffff, 0x80000000, 472); 
TEST_RR_OP( 119 , kmmsb, 0xadae79a4, 0x80000000, 0x80000000, 476); 
TEST_RR_OP( 120 , kmmsb, 0xadae79a4, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , kmmsb, 0xadae79a4, 0xeee22873, 0xffffffff, 484); 
TEST_RR_OP( 122 , kmmsb, 0xc8c3d316, 0x51588b05, 0xaac45cbc, 488); 
TEST_RR_OP( 123 , kmmsb, 0xc8c3d316, 0x12c313ba, 0x00000000, 492); 
TEST_RR_OP( 124 , kmmsb, 0xc8c3d317, 0x449fcc27, 0xffffffff, 496); 
TEST_RR_OP( 125 , kmmsb, 0xc8c3d317, 0x21fc5fd6, 0x00000000, 500); 
TEST_RR_OP( 126 , kmmsb, 0x082d0b70, 0x80000000, 0x7ed270b1, 504); 
TEST_RR_OP( 127 , kmmsb, 0x082d0b70, 0x00000000, 0x56d0f5aa, 508); 
TEST_RR_OP( 128 , kmmsb, 0x082d0b70, 0x00000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , kmmsb, 0xc82d0b70, 0x80000000, 0x80000000, 516); 
TEST_RR_OP( 130 , kmmsb, 0x06a931ac, 0x80000000, 0x7cf84c77, 520); 
TEST_RR_OP( 131 , kmmsb, 0x148cc011, 0x80000000, 0x1bc71cc9, 524); 
TEST_RR_OP( 132 , kmmsb, 0x026ced70, 0xdbc05abe, 0x80000000, 528); 
TEST_RR_OP( 133 , kmmsb, 0x2475306f, 0x87143b0e, 0x480c999a, 532); 
TEST_RR_OP( 134 , kmmsb, 0x2475306f, 0x80000000, 0x00000000, 536); 
TEST_RR_OP( 135 , kmmsb, 0x2475306f, 0xffffffff, 0x80000000, 540); 
TEST_RR_OP( 136 , kmmsb, 0x24753070, 0x311b2065, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmmsb, 0x24753070, 0x6c2c3234, 0x00000000, 548); 
TEST_RR_OP( 138 , kmmsb, 0x399e173a, 0x80000000, 0x2a51cd94, 552); 
TEST_RR_OP( 139 , kmmsb, 0x62818f78, 0x51c6f07c, 0x80000000, 556); 
TEST_RR_OP( 140 , kmmsb, 0x62818f78, 0xefc5f728, 0x00000000, 560); 
TEST_RR_OP( 141 , kmmsb, 0x62818f78, 0x00000000, 0xefe76d73, 564); 
TEST_RR_OP( 142 , kmmsb, 0x62818f78, 0x80000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , kmmsb, 0x62818f78, 0x00000000, 0x0062e765, 572); 
TEST_RR_OP( 144 , kmmsb, 0x62818f78, 0x00000000, 0x8aecfe88, 576); 
TEST_RR_OP( 145 , kmmsb, 0x62818f78, 0xffffffff, 0x00000000, 580); 
TEST_RR_OP( 146 , kmmsb, 0x54e865a1, 0x80000000, 0xe4cdac52, 584); 
TEST_RR_OP( 147 , kmmsb, 0x5d0eb070, 0x104c959e, 0x80000000, 588); 
TEST_RR_OP( 148 , kmmsb, 0x5d0eb070, 0x4855c6a7, 0x00000000, 592); 
TEST_RR_OP( 149 , kmmsb, 0x5d0eb070, 0x00000000, 0x80000000, 596); 
TEST_RR_OP( 150 , kmmsb, 0x5fe60adb, 0x2533f397, 0xec72f423, 600); 
TEST_RR_OP( 151 , kmmsb, 0x5fe60adb, 0x00000000, 0x80000000, 604); 
TEST_RR_OP( 152 , kmmsb, 0x5fe60adb, 0x07b0d8b1, 0x00000000, 608); 
TEST_RR_OP( 153 , kmmsb, 0x51cc000c, 0xe3cbea61, 0x80000000, 612); 
TEST_RR_OP( 154 , kmmsb, 0x51cc000c, 0x438a64ea, 0x00000000, 616); 
TEST_RR_OP( 155 , kmmsb, 0x51cc000c, 0x00000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmmsb, 0x51cc000c, 0x80000000, 0xffffffff, 624); 
TEST_RR_OP( 157 , kmmsb, 0x11cc000c, 0x80000000, 0x80000000, 628); 
TEST_RR_OP( 158 , kmmsb, 0x1687c533, 0x80000000, 0x09778a4e, 632); 
TEST_RR_OP( 159 , kmmsb, 0x2bcab741, 0x48a30d85, 0xb5110049, 636); 
TEST_RR_OP( 160 , kmmsb, 0x2bcab742, 0x2d30f6a4, 0xffffffff, 640); 
TEST_RR_OP( 161 , kmmsb, 0x2bcab742, 0xffffffff, 0x80000000, 644); 
TEST_RR_OP( 162 , kmmsb, 0x2bcab742, 0x00000000, 0xadbef3b7, 648); 
TEST_RR_OP( 163 , kmmsb, 0x2bcab742, 0xffffffff, 0x00000000, 652); 
TEST_RR_OP( 164 , kmmsb, 0x2bcab742, 0xffffffff, 0x00000000, 656); 
TEST_RR_OP( 165 , kmmsb, 0x2bcab742, 0xca91ce3f, 0x00000000, 660); 
TEST_RR_OP( 166 , kmmsb, 0x2bcab742, 0x00000000, 0x00000000, 664); 
TEST_RR_OP( 167 , kmmsb, 0x25c04b16, 0x38b310ec, 0x1b46260b, 668); 
TEST_RR_OP( 168 , kmmsb, 0x25c04b16, 0xffffffff, 0x80000000, 672); 
TEST_RR_OP( 169 , kmmsb, 0x25c04b16, 0xffffffff, 0x00000000, 676); 
TEST_RR_OP( 170 , kmmsb, 0x0086e585, 0x80000000, 0xb58d34dd, 680); 
TEST_RR_OP( 171 , kmmsb, 0x0086e585, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , kmmsb, 0x0086e585, 0x5be29c14, 0x00000000, 688); 
TEST_RR_OP( 173 , kmmsb, 0x0086e585, 0x80000000, 0x00000000, 692); 
TEST_RR_OP( 174 , kmmsb, 0x0086e585, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , kmmsb, 0x0086e585, 0x00000000, 0x80000000, 700); 
TEST_RR_OP( 176 , kmmsb, 0x0086e585, 0xffffffff, 0xbe529400, 704); 
TEST_RR_OP( 177 , kmmsb, 0x0086e585, 0x80000000, 0xffffffff, 708); 
TEST_RR_OP( 178 , kmmsb, 0x0086e586, 0x5a9adfb8, 0xffffffff, 712); 
TEST_RR_OP( 179 , kmmsb, 0x0086e586, 0x9496ec55, 0xffffffff, 716); 
TEST_RR_OP( 180 , kmmsb, 0x0086e586, 0xffffffff, 0x00000000, 720); 
TEST_RR_OP( 181 , kmmsb, 0x0086e586, 0x80000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , kmmsb, 0x0086e586, 0x00000000, 0x80000000, 728); 
TEST_RR_OP( 183 , kmmsb, 0x0086e586, 0x80000000, 0x00000000, 732); 
TEST_RR_OP( 184 , kmmsb, 0x0086e586, 0xe63356af, 0x00000000, 736); 
TEST_RR_OP( 185 , kmmsb, 0x0086e586, 0x00000000, 0x00000000, 740); 
TEST_RR_OP( 186 , kmmsb, 0xe88e8610, 0x82bfa304, 0xcf01ef4f, 744); 
TEST_RR_OP( 187 , kmmsb, 0xcf7bed7b, 0x80000000, 0xcddaced6, 748); 
TEST_RR_OP( 188 , kmmsb, 0xcf7bed7b, 0xffffffff, 0x80000000, 752); 
TEST_RR_OP( 189 , kmmsb, 0xcf7bed7b, 0xbdf84b12, 0xffffffff, 756); 
TEST_RR_OP( 190 , kmmsb, 0x90566182, 0x80000000, 0x81b4e80e, 760); 
TEST_RR_OP( 191 , kmmsb, 0x90566182, 0x00000000, 0x80000000, 764); 
TEST_RR_OP( 192 , kmmsb, 0x90566182, 0x00000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmmsb, 0x81365593, 0xc94a2190, 0xb939fde5, 772); 
TEST_RR_OP( 194 , kmmsb, 0x81365593, 0x80000000, 0x00000000, 776); 
TEST_RR_OP( 195 , kmmsb, 0x80000000, 0x80000000, 0x80000000, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , kmmsb, 0x00000000, 0x00000000, 0x387910f5, 796); 

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
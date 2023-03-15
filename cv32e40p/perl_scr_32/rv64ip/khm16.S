# See LICENSE for license details.
#*****************************************************************************
# khm16.S
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

TEST_RR_OP( 2 , khm16, 0x1a86217a, 0x62ec9ca3, 0x2253d4e0, 8); 
TEST_RR_OP( 3 , khm16, 0xf343cf69, 0xb7798f22, 0x167a371a, 12); 
TEST_RR_OP( 4 , khm16, 0xfb1501e6, 0xf79c5eda, 0x4b010290, 16); 
TEST_RR_OP( 5 , khm16, 0xcf1beac0, 0x36bf1b6d, 0x8daf9cd5, 20); 
TEST_RR_OP( 6 , khm16, 0xd18a1ecb, 0x30a16e70, 0x85b523b1, 24); 
TEST_RR_OP( 7 , khm16, 0x24ff4ecf, 0x2fd48768, 0x6303ac59, 28); 
TEST_RR_OP( 8 , khm16, 0x5850f894, 0xa457e9fb, 0x84ac2b20, 32); 
TEST_RR_OP( 9 , khm16, 0xff60071e, 0x5894dbd2, 0xff19e6d0, 36); 
TEST_RR_OP( 10 , khm16, 0xd7eb17cf, 0x894d2b5d, 0x2b394648, 40); 
TEST_RR_OP( 11 , khm16, 0x06d4069c, 0xe1811650, 0xe35525eb, 44); 
TEST_RR_OP( 12 , khm16, 0xb69d0151, 0x60143976, 0x9e3c02f0, 48); 
TEST_RR_OP( 13 , khm16, 0xfce956f7, 0xc8227c9f, 0x07135953, 52); 
TEST_RR_OP( 14 , khm16, 0x0a2e189a, 0x6927b879, 0x0c65d3f8, 56); 
TEST_RR_OP( 15 , khm16, 0xde1df6f5, 0xaf2089aa, 0x35a109c7, 60); 
TEST_RR_OP( 16 , khm16, 0xeea3f165, 0x173018dc, 0xa02cb4d0, 64); 
TEST_RR_OP( 17 , khm16, 0xb592f538, 0x59761276, 0x9582b542, 68); 
TEST_RR_OP( 18 , khm16, 0x0104002d, 0xfe2f270c, 0xb86c0096, 72); 
TEST_RR_OP( 19 , khm16, 0x25ab0c9d, 0x42680f6a, 0x489d68c6, 76); 
TEST_RR_OP( 20 , khm16, 0xb84ae6cc, 0x68509870, 0xa8021f26, 80); 
TEST_RR_OP( 21 , khm16, 0xfff8fe69, 0x0015dc52, 0xd45305b2, 84); 
TEST_RR_OP( 22 , khm16, 0x160ecbfd, 0xb973c458, 0xd7fc6f97, 88); 
TEST_RR_OP( 23 , khm16, 0xe7c0cf3c, 0x2adcc01c, 0xb79561b2, 92); 
TEST_RR_OP( 24 , khm16, 0x0ffddf03, 0x229e61e6, 0x3b1fd4df, 96); 
TEST_RR_OP( 25 , khm16, 0x379ff9d9, 0x67f52355, 0x447de9b7, 100); 
TEST_RR_OP( 26 , khm16, 0x24dfe65e, 0xd703e617, 0x8cda7e9e, 104); 
TEST_RR_OP( 27 , khm16, 0xf27ff811, 0xf1d80abf, 0x7a11a18a, 108); 
TEST_RR_OP( 28 , khm16, 0x012b00b7, 0xfc2bf766, 0xd8e8f557, 112); 
TEST_RR_OP( 29 , khm16, 0xcc0319e5, 0x8d683193, 0x3a1142dd, 116); 
TEST_RR_OP( 30 , khm16, 0xf73510a7, 0xef865ec4, 0x4449167f, 120); 
TEST_RR_OP( 31 , khm16, 0xe44ee0a9, 0x47047d43, 0xce16dffa, 124); 
TEST_RR_OP( 32 , khm16, 0x014b163b, 0x3376e7d6, 0x03398a39, 128); 
TEST_RR_OP( 33 , khm16, 0xccc8c9a2, 0x96dd7ae4, 0x3e5bc760, 132); 
TEST_RR_OP( 34 , khm16, 0xdc40da21, 0x6675c4a8, 0xd35751af, 136); 
TEST_RR_OP( 35 , khm16, 0x551521e5, 0xa8382474, 0x83ef7705, 140); 
TEST_RR_OP( 36 , khm16, 0x06282f88, 0x0f194363, 0x34365a49, 144); 
TEST_RR_OP( 37 , khm16, 0x1c1e2391, 0x738f52ba, 0x1f263708, 148); 
TEST_RR_OP( 38 , khm16, 0x054908d8, 0xc7f3f6a0, 0xf3ec873c, 152); 
TEST_RR_OP( 39 , khm16, 0x05c3fe94, 0x27abfe72, 0x129874e9, 156); 
TEST_RR_OP( 40 , khm16, 0x6807e473, 0x6e95db58, 0x786a6032, 160); 
TEST_RR_OP( 41 , khm16, 0xfeb9eafa, 0x0217c9f7, 0xb20031cb, 164); 
TEST_RR_OP( 42 , khm16, 0x64226de0, 0x694e89b6, 0x79b7891a, 168); 
TEST_RR_OP( 43 , khm16, 0x0b2ce5f2, 0x33a43aad, 0x1bb2c72b, 172); 
TEST_RR_OP( 44 , khm16, 0x17740fe3, 0xdf471827, 0xa4405433, 176); 
TEST_RR_OP( 45 , khm16, 0x351a0ed3, 0xc1d98fcf, 0x92a2ef16, 180); 
TEST_RR_OP( 46 , khm16, 0x0aca0306, 0xdf2a0a75, 0xd5f12505, 184); 
TEST_RR_OP( 47 , khm16, 0xbb4830b3, 0x82744266, 0x460f5de2, 188); 
TEST_RR_OP( 48 , khm16, 0xef23f8ce, 0xe87b70ce, 0x5bc4f7d6, 192); 
TEST_RR_OP( 49 , khm16, 0x3ff6f5d0, 0x5262f0a1, 0x636254d0, 196); 
TEST_RR_OP( 50 , khm16, 0xf2131a19, 0x1c403d05, 0xc0eb36c0, 200); 
TEST_RR_OP( 51 , khm16, 0x654ad0a2, 0x85e4c4b0, 0x95d36637, 204); 
TEST_RR_OP( 52 , khm16, 0x9d83f8d1, 0x81abce6b, 0x63c91289, 208); 
TEST_RR_OP( 53 , khm16, 0x2dd81b6d, 0x43a14de9, 0x56c52d10, 212); 
TEST_RR_OP( 54 , khm16, 0x133a108d, 0x4bd5c707, 0x2075dacf, 216); 
TEST_RR_OP( 55 , khm16, 0xf9e2fd7c, 0x090340f6, 0xa926fb0c, 220); 
TEST_RR_OP( 56 , khm16, 0x02963eff, 0xe5db671b, 0xf3544e36, 224); 
TEST_RR_OP( 57 , khm16, 0xff93ae79, 0xfa08aa1f, 0x09107983, 228); 
TEST_RR_OP( 58 , khm16, 0x44160f7b, 0xbac4ee34, 0x821e90a8, 232); 
TEST_RR_OP( 59 , khm16, 0x248008ba, 0xdb5bcb0c, 0x8081eae6, 236); 
TEST_RR_OP( 60 , khm16, 0xfe70e38f, 0x371cdb27, 0xfc6162cb, 240); 
TEST_RR_OP( 61 , khm16, 0x0a1e09e5, 0xa98c23a2, 0xf104238e, 244); 
TEST_RR_OP( 62 , khm16, 0xcf163ded, 0x623056cd, 0xc03d5b52, 248); 
TEST_RR_OP( 63 , khm16, 0x2dfc034d, 0xac7f03b5, 0xb9837201, 252); 
TEST_RR_OP( 64 , khm16, 0x41f6cfe8, 0xa5359f62, 0xa3013fb7, 256); 
TEST_RR_OP( 65 , khm16, 0x0b978dfe, 0xaa9179b7, 0xeea2881b, 260); 
TEST_RR_OP( 66 , khm16, 0x1116f8d8, 0xe6e7ecbb, 0xa8d82f83, 264); 
TEST_RR_OP( 67 , khm16, 0x5f8af86e, 0x7b0880c0, 0x6366079d, 268); 
TEST_RR_OP( 68 , khm16, 0x074bfff5, 0x0a68ffda, 0x59be2256, 272); 
TEST_RR_OP( 69 , khm16, 0x2acc0750, 0xabb6f66f, 0xbf029e24, 276); 
TEST_RR_OP( 70 , khm16, 0xef292fce, 0x20556281, 0xbd583e1f, 280); 
TEST_RR_OP( 71 , khm16, 0xec13e7b1, 0x39f81f96, 0xd4029d7e, 284); 
TEST_RR_OP( 72 , khm16, 0x22e7e1a9, 0x316a45cb, 0x5a69c85c, 288); 
TEST_RR_OP( 73 , khm16, 0xa643cd5d, 0x837f58a8, 0x5c42b6e5, 292); 
TEST_RR_OP( 74 , khm16, 0x5d9e028e, 0x7a2af0f4, 0x6217ea42, 296); 
TEST_RR_OP( 75 , khm16, 0xe0030051, 0x8f73fd5e, 0x2461f09a, 300); 
TEST_RR_OP( 76 , khm16, 0x3168ed95, 0x376acbcf, 0x72212d2a, 304); 
TEST_RR_OP( 77 , khm16, 0x4f4aeda5, 0xa4ef990c, 0x908d16d2, 308); 
TEST_RR_OP( 78 , khm16, 0xf6383f55, 0xc39e42a3, 0x14bc79a8, 312); 
TEST_RR_OP( 79 , khm16, 0xe97af96e, 0xcfea0f96, 0x3bf2ca0c, 316); 
TEST_RR_OP( 80 , khm16, 0xd248f4c3, 0xbd540b55, 0x57c5811a, 320); 
TEST_RR_OP( 81 , khm16, 0x3fff1256, 0x79fca50a, 0x4327e632, 324); 
TEST_RR_OP( 82 , khm16, 0xc0e41c7f, 0x3f53b623, 0x8071ce9e, 328); 
TEST_RR_OP( 83 , khm16, 0x596abfd7, 0x98a49837, 0x91444f21, 332); 
TEST_RR_OP( 84 , khm16, 0xfef0f5d9, 0xdb20ee63, 0x03af49c1, 336); 
TEST_RR_OP( 85 , khm16, 0x157a2f24, 0x26ee6ae2, 0x46a03875, 340); 
TEST_RR_OP( 86 , khm16, 0xf96fcaa8, 0x06f061fc, 0x86e6ba52, 344); 
TEST_RR_OP( 87 , khm16, 0xfb3707d9, 0xacacf05f, 0x0759bfb5, 348); 
TEST_RR_OP( 88 , khm16, 0xfbce0491, 0x085af08f, 0xbfc0da22, 352); 
TEST_RR_OP( 89 , khm16, 0xb31bf112, 0x7999d1af, 0xaf0f2942, 356); 
TEST_RR_OP( 90 , khm16, 0xee434632, 0x1541857b, 0x952eb6aa, 360); 
TEST_RR_OP( 91 , khm16, 0x07de338a, 0xf71f6479, 0x8e9341aa, 364); 
TEST_RR_OP( 92 , khm16, 0xea982074, 0x6cbfda4a, 0xe6ce91d8, 368); 
TEST_RR_OP( 93 , khm16, 0xff7e498f, 0x0788786e, 0xf7614e2f, 372); 
TEST_RR_OP( 94 , khm16, 0x21ad0e44, 0x8a1a5128, 0xdb701680, 376); 
TEST_RR_OP( 95 , khm16, 0xdb1de8a3, 0xd5e81cf1, 0x702998ac, 380); 
TEST_RR_OP( 96 , khm16, 0xba1ce35c, 0x4c072162, 0x8a569231, 384); 
TEST_RR_OP( 97 , khm16, 0xbfaafd6c, 0xbdfe5716, 0x7cc2fc36, 388); 
TEST_RR_OP( 98 , khm16, 0xfd73fe2f, 0xfac53220, 0x3e67fb5f, 392); 
TEST_RR_OP( 99 , khm16, 0x0d42f1f5, 0x0fd34e5d, 0x6b40e910, 396); 
TEST_RR_OP( 100 , khm16, 0x7559ee09, 0x7fcc39d6, 0x7589d83e, 400); 
TEST_RR_OP( 101 , khm16, 0x1291e748, 0x66e59ca7, 0x17191fd8, 404); 
TEST_RR_OP( 102 , khm16, 0xf9fff7a5, 0xe2260b19, 0x19bb9fa6, 408); 
TEST_RR_OP( 103 , khm16, 0x020ff6a9, 0x19112c43, 0x0a86e4ff, 412); 
TEST_RR_OP( 104 , khm16, 0x1b2befd4, 0x329f61dc, 0x44b4eada, 416); 
TEST_RR_OP( 105 , khm16, 0x08beb991, 0xe5a06545, 0xd590a6fa, 420); 
TEST_RR_OP( 106 , khm16, 0xd6fbfd18, 0x83780636, 0x2a29c42b, 424); 
TEST_RR_OP( 107 , khm16, 0x23d301e9, 0x89165947, 0xd97002be, 428); 
TEST_RR_OP( 108 , khm16, 0xb5b344df, 0x4f33b43e, 0x87eb8ba2, 432); 
TEST_RR_OP( 109 , khm16, 0x0df3ed0e, 0x2eb7235c, 0x263abb6d, 436); 
TEST_RR_OP( 110 , khm16, 0xecb3f296, 0xd2b1eaa0, 0x3684504e, 440); 
TEST_RR_OP( 111 , khm16, 0xeba525d3, 0xe4dccff1, 0x5fff9b42, 444); 
TEST_RR_OP( 112 , khm16, 0x1b29e88c, 0x56b78bee, 0x281819dc, 448); 
TEST_RR_OP( 113 , khm16, 0xf836e718, 0x3d79d6b6, 0xefc94d34, 452); 
TEST_RR_OP( 114 , khm16, 0x20dc1da5, 0x358e20dc, 0x4e8b737d, 456); 
TEST_RR_OP( 115 , khm16, 0x03190fbb, 0x20947eed, 0x0c2c0fde, 460); 
TEST_RR_OP( 116 , khm16, 0x6a0b6669, 0x915683e3, 0x85589661, 464); 
TEST_RR_OP( 117 , khm16, 0xa3d7b840, 0x8a706ca8, 0x6457ab7b, 468); 
TEST_RR_OP( 118 , khm16, 0xe44f0f01, 0x303ed0f0, 0xb688d731, 472); 
TEST_RR_OP( 119 , khm16, 0x6c080d5e, 0x7bae13d7, 0x6fcf563e, 476); 
TEST_RR_OP( 120 , khm16, 0xfdb0a4c8, 0xcbca9e37, 0x05a97767, 480); 
TEST_RR_OP( 121 , khm16, 0x3106f69e, 0xc5c1e439, 0x94442b38, 484); 
TEST_RR_OP( 122 , khm16, 0xe6092492, 0x50b2c53b, 0xd6d2b059, 488); 
TEST_RR_OP( 123 , khm16, 0x9eed4a82, 0x9a4daf81, 0x7a2d8985, 492); 
TEST_RR_OP( 124 , khm16, 0x01cfcdcc, 0x152a5d92, 0x0af3bb54, 496); 
TEST_RR_OP( 125 , khm16, 0xfd7b0397, 0xd874114d, 0x08251a91, 500); 
TEST_RR_OP( 126 , khm16, 0x093d0171, 0xeb92fd25, 0xc61abf3e, 504); 
TEST_RR_OP( 127 , khm16, 0x00c15eb3, 0xff1b7ec2, 0x94185fa1, 508); 
TEST_RR_OP( 128 , khm16, 0xd2f30662, 0x2fccdbca, 0x875ce970, 512); 
TEST_RR_OP( 129 , khm16, 0xebcb19d7, 0x6f9a19dc, 0xe8d37fea, 516); 
TEST_RR_OP( 130 , khm16, 0x445ee824, 0x7dd51a85, 0x458c8cdb, 520); 
TEST_RR_OP( 131 , khm16, 0xdee6ab95, 0x488472d0, 0xc593a1e3, 524); 
TEST_RR_OP( 132 , khm16, 0x3cfffac6, 0xa84e28d4, 0xa6f8ef9f, 528); 
TEST_RR_OP( 133 , khm16, 0x97500652, 0x9458081f, 0x7c7863ab, 532); 
TEST_RR_OP( 134 , khm16, 0xe06212f4, 0xc60314cd, 0x45c974a6, 536); 
TEST_RR_OP( 135 , khm16, 0xe606f988, 0xd4559411, 0x4c2307ab, 540); 
TEST_RR_OP( 136 , khm16, 0xe0400bb3, 0xc5c67cf2, 0x45ca0bfd, 544); 
TEST_RR_OP( 137 , khm16, 0xfff7f6c2, 0x13d30cd1, 0xffcba3b8, 548); 
TEST_RR_OP( 138 , khm16, 0xf1d5ebd1, 0xe80bdd01, 0x4baf49d1, 552); 
TEST_RR_OP( 139 , khm16, 0xd0c1f3ad, 0xacbbaa73, 0x489f126f, 556); 
TEST_RR_OP( 140 , khm16, 0xed67038a, 0xc618092a, 0x291a317c, 560); 
TEST_RR_OP( 141 , khm16, 0xed46bcec, 0xba0d4c67, 0x22438fa0, 564); 
TEST_RR_OP( 142 , khm16, 0x1bca180f, 0x2ed2dd6a, 0x4bfba6f5, 568); 
TEST_RR_OP( 143 , khm16, 0xe67ce903, 0xe1a83655, 0x6b9fc9d8, 572); 
TEST_RR_OP( 144 , khm16, 0x0a23a2d6, 0x196770f9, 0x33189672, 576); 
TEST_RR_OP( 145 , khm16, 0x3cf5dedf, 0xa2945254, 0xac7acc7f, 580); 
TEST_RR_OP( 146 , khm16, 0xeaebc8c5, 0x3e58800f, 0xd4b93741, 584); 
TEST_RR_OP( 147 , khm16, 0x229af5ab, 0xb1a2f4e6, 0xc77b771b, 588); 
TEST_RR_OP( 148 , khm16, 0xf9162885, 0x8fb53857, 0x07e15c0f, 592); 
TEST_RR_OP( 149 , khm16, 0x0648c310, 0x2221854d, 0x17903f91, 596); 
TEST_RR_OP( 150 , khm16, 0x2ac3db7d, 0xc98226f7, 0x9b8c8811, 600); 
TEST_RR_OP( 151 , khm16, 0x0d83c94a, 0x24ea6b06, 0x2eddbe92, 604); 
TEST_RR_OP( 152 , khm16, 0x1888b240, 0xab9db0f0, 0xdaca7ddf, 608); 
TEST_RR_OP( 153 , khm16, 0x02b5ff59, 0x0c183790, 0x1caafe80, 612); 
TEST_RR_OP( 154 , khm16, 0xf2941971, 0x1e8f412a, 0xc7c931fb, 616); 
TEST_RR_OP( 155 , khm16, 0x00dbe36d, 0xfe1431bc, 0xc6f0b678, 620); 
TEST_RR_OP( 156 , khm16, 0xae5e2e9e, 0x8d3931a8, 0x5b09782b, 624); 
TEST_RR_OP( 157 , khm16, 0xab7ad35a, 0x56ea2e38, 0x8386845a, 628); 
TEST_RR_OP( 158 , khm16, 0xe6585452, 0x1d2a6775, 0x8f676853, 632); 
TEST_RR_OP( 159 , khm16, 0xeb410044, 0x22f7ff1b, 0xb410d9e2, 636); 
TEST_RR_OP( 160 , khm16, 0xfd12c302, 0x2827a36d, 0xf6aa5455, 640); 
TEST_RR_OP( 161 , khm16, 0xc7fa2e86, 0x6262ba87, 0xb71daa48, 644); 
TEST_RR_OP( 162 , khm16, 0xfe26d734, 0x6924abf6, 0xfdc03e23, 648); 
TEST_RR_OP( 163 , khm16, 0xfe070655, 0xe10ba6bd, 0x0826f6eb, 652); 
TEST_RR_OP( 164 , khm16, 0x0beef981, 0xb7b6ae36, 0xeae00a2a, 656); 
TEST_RR_OP( 165 , khm16, 0xecffee96, 0x62c7c03d, 0xe76122f5, 660); 
TEST_RR_OP( 166 , khm16, 0x00b9d32e, 0xeccf8769, 0xfb2b2f93, 664); 
TEST_RR_OP( 167 , khm16, 0xc82494be, 0xb0238cb6, 0x59867715, 668); 
TEST_RR_OP( 168 , khm16, 0x1c3c0db7, 0xa432115c, 0xd8a16527, 672); 
TEST_RR_OP( 169 , khm16, 0x26973f82, 0xb3f643f3, 0xbf0a77a3, 676); 
TEST_RR_OP( 170 , khm16, 0x004ef83c, 0xfe010f3c, 0xec63bec6, 680); 
TEST_RR_OP( 171 , khm16, 0xc56fcbed, 0x5691460e, 0xa967a0db, 684); 
TEST_RR_OP( 172 , khm16, 0xe62303d0, 0x4c55f22d, 0xd4a2dcb2, 688); 
TEST_RR_OP( 173 , khm16, 0xfde5d614, 0x174d5c79, 0xf474c5fa, 692); 
TEST_RR_OP( 174 , khm16, 0x46da2626, 0xb8b75f65, 0x80c73331, 696); 
TEST_RR_OP( 175 , khm16, 0x6d83c401, 0x91af61c6, 0x80eeb175, 700); 
TEST_RR_OP( 176 , khm16, 0x211b04df, 0x65e62bc0, 0x29970e43, 704); 
TEST_RR_OP( 177 , khm16, 0x0eee30b4, 0x1f89a234, 0x3c9cbd89, 708); 
TEST_RR_OP( 178 , khm16, 0xa294d687, 0x625e62fa, 0x8670ca5f, 712); 
TEST_RR_OP( 179 , khm16, 0xb3f90f1e, 0xa5bf9558, 0x6bd2eddb, 716); 
TEST_RR_OP( 180 , khm16, 0xf37f090f, 0xe86aeb16, 0x43d9c889, 720); 
TEST_RR_OP( 181 , khm16, 0x3e72a29d, 0x4d807784, 0x67249bfc, 724); 
TEST_RR_OP( 182 , khm16, 0x06b4edb3, 0xe8c16691, 0xdb13e92a, 728); 
TEST_RR_OP( 183 , khm16, 0x3431fba2, 0x7842c7b8, 0x378e09ed, 732); 
TEST_RR_OP( 184 , khm16, 0xb698f4d2, 0xb5062277, 0x7d50d67b, 736); 
TEST_RR_OP( 185 , khm16, 0x3faaee11, 0xa0bec530, 0xaa742706, 740); 
TEST_RR_OP( 186 , khm16, 0x11dd06f8, 0xcf971f63, 0xd0c31c6c, 744); 
TEST_RR_OP( 187 , khm16, 0xedea4744, 0x17a8b5ec, 0x9e2784dc, 748); 
TEST_RR_OP( 188 , khm16, 0xc95f0503, 0x6e859f18, 0xc0bcf961, 752); 
TEST_RR_OP( 189 , khm16, 0xb20dfeaf, 0x9f0c05cd, 0x66e8e2fe, 756); 
TEST_RR_OP( 190 , khm16, 0xe793fee1, 0x1fba122e, 0x9d77f820, 760); 
TEST_RR_OP( 191 , khm16, 0xe875f2d4, 0xd3612c0e, 0x4388d9bc, 764); 
TEST_RR_OP( 192 , khm16, 0x185019a9, 0x347dcc01, 0x3b4bc0d3, 768); 
TEST_RR_OP( 193 , khm16, 0xfbedfd35, 0x15d5bb39, 0xe81e0531, 772); 
TEST_RR_OP( 194 , khm16, 0xe3efdd67, 0x2aff84e6, 0xac7323f9, 776); 
TEST_RR_OP( 195 , khm16, 0x18caf5ed, 0x475b0dea, 0x2c78a357, 780); 
TEST_RR_OP( 196 , khm16, 0xd37228aa, 0x34946d3e, 0x938a2fa6, 784); 
TEST_RR_OP( 197 , khm16, 0xfc0a1523, 0x1876a905, 0xeb46e0e5, 788); 
TEST_RR_OP( 198 , khm16, 0xf5c51d0e, 0x37b3661a, 0xe87e246d, 792); 
TEST_RR_OP( 199 , khm16, 0xffa2f3d2, 0xfddfaa10, 0x16131224, 796); 

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
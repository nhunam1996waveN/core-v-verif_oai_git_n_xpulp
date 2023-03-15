# See LICENSE for license details.
#*****************************************************************************
# smalxda.S
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

TEST_RR_OP64_OO( 2 , smalxda, 0x0000000000000000, 0x00000000, 0x30418d25 , 8); 
TEST_RR_OP64_OO( 3 , smalxda, 0xffffffffffffe758, 0xf6f321b5, 0xffffffff , 16); 
TEST_RR_OP64_OO( 4 , smalxda, 0xffffffffffffe758, 0x57a03de6, 0x00000000 , 24); 
TEST_RR_OP64_OO( 5 , smalxda, 0x00000000012fa1ac, 0x215f02c5, 0xf3b70a1f , 32); 
TEST_RR_OP64_OO( 6 , smalxda, 0x00000000012fa1ac, 0xffffffff, 0x00000000 , 40); 
TEST_RR_OP64_OO( 7 , smalxda, 0x00000000012fa1ac, 0x00000000, 0x3e3432a4 , 48); 
TEST_RR_OP64_OO( 8 , smalxda, 0x00000000012fa1ac, 0x00000000, 0xffffffff , 56); 
TEST_RR_OP64_OO( 9 , smalxda, 0x00000000012f56bc, 0xffffffff, 0x788ad266 , 64); 
TEST_RR_OP64_OO( 10 , smalxda, 0x00000000012f56bc, 0x00000000, 0x80000000 , 72); 
TEST_RR_OP64_OO( 11 , smalxda, 0x00000000012f56bc, 0xffffffff, 0x00000000 , 80); 
TEST_RR_OP64_OO( 12 , smalxda, 0x00000000012fd6bc, 0xffffffff, 0x80000000 , 88); 
TEST_RR_OP64_OO( 13 , smalxda, 0x00000000012fd6bc, 0x748b0b59, 0x00000000 , 96); 
TEST_RR_OP64_OO( 14 , smalxda, 0x00000000012fd6bc, 0x00000000, 0xffffffff , 104); 
TEST_RR_OP64_OO( 15 , smalxda, 0x00000000013056bc, 0xffffffff, 0x80000000 , 112); 
TEST_RR_OP64_OO( 16 , smalxda, 0x0000000001301e4c, 0xffffffff, 0xf9a83ec8 , 120); 
TEST_RR_OP64_OO( 17 , smalxda, 0x0000000001301e4c, 0x80000000, 0x00000000 , 128); 
TEST_RR_OP64_OO( 18 , smalxda, 0x0000000001309e4c, 0xffffffff, 0x80000000 , 136); 
TEST_RR_OP64_OO( 19 , smalxda, 0x0000000001309e4c, 0xffffffff, 0x00000000 , 144); 
TEST_RR_OP64_OO( 20 , smalxda, 0x0000000001314a81, 0xffffffff, 0x953ebe8d , 152); 
TEST_RR_OP64_OO( 21 , smalxda, 0x0000000001314a81, 0x80000000, 0x80000000 , 160); 
TEST_RR_OP64_OO( 22 , smalxda, 0x0000000001314a81, 0x00000000, 0xffffffff , 168); 
TEST_RR_OP64_OO( 23 , smalxda, 0x0000000001314a81, 0xffffffff, 0x00000000 , 176); 
TEST_RR_OP64_OO( 24 , smalxda, 0x0000000001314a81, 0x80000000, 0x80000000 , 184); 
TEST_RR_OP64_OO( 25 , smalxda, 0x0000000001314a81, 0x80000000, 0x00000000 , 192); 
TEST_RR_OP64_OO( 26 , smalxda, 0x0000000001314a81, 0x33b7a614, 0x00000000 , 200); 
TEST_RR_OP64_OO( 27 , smalxda, 0x0000000001314a81, 0x00000000, 0xe7657df0 , 208); 
TEST_RR_OP64_OO( 28 , smalxda, 0x0000000003434a81, 0xa031fbdc, 0x80000000 , 216); 
TEST_RR_OP64_OO( 29 , smalxda, 0x0000000003434a83, 0xffffffff, 0xffffffff , 224); 
TEST_RR_OP64_OO( 30 , smalxda, 0x0000000003434a85, 0xffffffff, 0xffffffff , 232); 
TEST_RR_OP64_OO( 31 , smalxda, 0x0000000003434a85, 0x00000000, 0x00000000 , 240); 
TEST_RR_OP64_OO( 32 , smalxda, 0x0000000003434a85, 0x06802de4, 0x00000000 , 248); 
TEST_RR_OP64_OO( 33 , smalxda, 0x000000000343ca85, 0xffffffff, 0x80000000 , 256); 
TEST_RR_OP64_OO( 34 , smalxda, 0x000000003207c1ff, 0x58dded50, 0x99a17132 , 264); 
TEST_RR_OP64_OO( 35 , smalxda, 0x000000003207c201, 0xffffffff, 0xffffffff , 272); 
TEST_RR_OP64_OO( 36 , smalxda, 0x000000003207c201, 0x80000000, 0x00000000 , 280); 
TEST_RR_OP64_OO( 37 , smalxda, 0x000000003207c201, 0x9bdae154, 0x00000000 , 288); 
TEST_RR_OP64_OO( 38 , smalxda, 0x000000002a70f9b0, 0xed70b8d5, 0x34f39da8 , 296); 
TEST_RR_OP64_OO( 39 , smalxda, 0x000000002a7179b0, 0xffffffff, 0x80000000 , 304); 
TEST_RR_OP64_OO( 40 , smalxda, 0x0000000042f7f9b0, 0x7460cef3, 0x80000000 , 312); 
TEST_RR_OP64_OO( 41 , smalxda, 0x0000000042f7f9b0, 0xfce0ac83, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , smalxda, 0x0000000042f879b0, 0x80000000, 0xffffffff , 328); 
TEST_RR_OP64_OO( 43 , smalxda, 0x0000000042f89641, 0x2df0b57f, 0xffffffff , 336); 
TEST_RR_OP64_OO( 44 , smalxda, 0x0000000042f89641, 0x00000000, 0x80000000 , 344); 
TEST_RR_OP64_OO( 45 , smalxda, 0x0000000042f91641, 0x80000000, 0xffffffff , 352); 
TEST_RR_OP64_OO( 46 , smalxda, 0x0000000042f99641, 0x80000000, 0xffffffff , 360); 
TEST_RR_OP64_OO( 47 , smalxda, 0x0000000042fa1641, 0xffffffff, 0x80000000 , 368); 
TEST_RR_OP64_OO( 48 , smalxda, 0x0000000042fa1641, 0x80000000, 0x80000000 , 376); 
TEST_RR_OP64_OO( 49 , smalxda, 0x0000000042fa1641, 0x80000000, 0x00000000 , 384); 
TEST_RR_OP64_OO( 50 , smalxda, 0x0000000051621641, 0x80000000, 0x7cbbe330 , 392); 
TEST_RR_OP64_OO( 51 , smalxda, 0x0000000051621641, 0x00000000, 0xa74c831b , 400); 
TEST_RR_OP64_OO( 52 , smalxda, 0x0000000051621641, 0xffffffff, 0x00000000 , 408); 
TEST_RR_OP64_OO( 53 , smalxda, 0x0000000051621641, 0x80000000, 0x00000000 , 416); 
TEST_RR_OP64_OO( 54 , smalxda, 0x0000000051621643, 0xffffffff, 0xffffffff , 424); 
TEST_RR_OP64_OO( 55 , smalxda, 0x0000000051624c4e, 0x21aea847, 0xffffffff , 432); 
TEST_RR_OP64_OO( 56 , smalxda, 0x0000000051624c4e, 0x00000000, 0x2e79ef74 , 440); 
TEST_RR_OP64_OO( 57 , smalxda, 0x0000000051624c4e, 0x80000000, 0x80000000 , 448); 
TEST_RR_OP64_OO( 58 , smalxda, 0x000000005161da98, 0x2a0847ae, 0xffffffff , 456); 
TEST_RR_OP64_OO( 59 , smalxda, 0x000000005161da9a, 0xffffffff, 0xffffffff , 464); 
TEST_RR_OP64_OO( 60 , smalxda, 0x000000005161da9a, 0x80000000, 0x00000000 , 472); 
TEST_RR_OP64_OO( 61 , smalxda, 0x000000005161da9a, 0x00000000, 0x80000000 , 480); 
TEST_RR_OP64_OO( 62 , smalxda, 0x000000005161da9a, 0xffffffff, 0x00000000 , 488); 
TEST_RR_OP64_OO( 63 , smalxda, 0x000000005161da9a, 0x00000000, 0x80000000 , 496); 
TEST_RR_OP64_OO( 64 , smalxda, 0x000000005161da9c, 0xffffffff, 0xffffffff , 504); 
TEST_RR_OP64_OO( 65 , smalxda, 0x000000005161da9c, 0x00000000, 0x00000000 , 512); 
TEST_RR_OP64_OO( 66 , smalxda, 0x0000000081f7da9c, 0x80000000, 0x88cb9ed4 , 520); 
TEST_RR_OP64_OO( 67 , smalxda, 0x0000000081f85a9c, 0x80000000, 0xffffffff , 528); 
TEST_RR_OP64_OO( 68 , smalxda, 0x0000000083b42cb0, 0xfab0098e, 0x0936bd06 , 536); 
TEST_RR_OP64_OO( 69 , smalxda, 0x00000000a6223055, 0x4d826c5d, 0x1b974b25 , 544); 
TEST_RR_OP64_OO( 70 , smalxda, 0x00000000b15a3055, 0x80000000, 0xd3d0e990 , 552); 
TEST_RR_OP64_OO( 71 , smalxda, 0x00000000a2253055, 0x7f901e6a, 0x80000000 , 560); 
TEST_RR_OP64_OO( 72 , smalxda, 0x00000000a2256db4, 0x8c23367e, 0xffffffff , 568); 
TEST_RR_OP64_OO( 73 , smalxda, 0x00000000afc5edb4, 0x8b8ee4bf, 0x80000000 , 576); 
TEST_RR_OP64_OO( 74 , smalxda, 0x00000000afc5edb4, 0x2ea88e76, 0x00000000 , 584); 
TEST_RR_OP64_OO( 75 , smalxda, 0x00000000afc6039a, 0xffffffff, 0x8bb35e67 , 592); 
TEST_RR_OP64_OO( 76 , smalxda, 0x00000000afc6039a, 0x00000000, 0x00000000 , 600); 
TEST_RR_OP64_OO( 77 , smalxda, 0x00000000afc6039a, 0xffffffff, 0x00000000 , 608); 
TEST_RR_OP64_OO( 78 , smalxda, 0x00000000cc1d839a, 0xf537c751, 0x80000000 , 616); 
TEST_RR_OP64_OO( 79 , smalxda, 0x00000000cc1d839a, 0x80000000, 0x00000000 , 624); 
TEST_RR_OP64_OO( 80 , smalxda, 0x00000000cc1e039a, 0x80000000, 0xffffffff , 632); 
TEST_RR_OP64_OO( 81 , smalxda, 0x00000000cc1e039a, 0x00000000, 0xaff46f91 , 640); 
TEST_RR_OP64_OO( 82 , smalxda, 0x00000000cc1e039c, 0xffffffff, 0xffffffff , 648); 
TEST_RR_OP64_OO( 83 , smalxda, 0x00000000f912039c, 0x80000000, 0x72aba618 , 656); 
TEST_RR_OP64_OO( 84 , smalxda, 0x00000000f912839c, 0x80000000, 0xffffffff , 664); 
TEST_RR_OP64_OO( 85 , smalxda, 0x00000000f912839c, 0x00000000, 0x80000000 , 672); 
TEST_RR_OP64_OO( 86 , smalxda, 0x00000000f912839c, 0xeb7bdbed, 0x00000000 , 680); 
TEST_RR_OP64_OO( 87 , smalxda, 0x00000000f91284fe, 0xffffffff, 0x90af6def , 688); 
TEST_RR_OP64_OO( 88 , smalxda, 0x00000000f91284fe, 0x00000000, 0x80000000 , 696); 
TEST_RR_OP64_OO( 89 , smalxda, 0x00000000f91284fe, 0xffffffff, 0x00000000 , 704); 
TEST_RR_OP64_OO( 90 , smalxda, 0x00000000f91284fe, 0xffffffff, 0x00000000 , 712); 
TEST_RR_OP64_OO( 91 , smalxda, 0x00000000f91284fe, 0x00000000, 0x25bf1417 , 720); 
TEST_RR_OP64_OO( 92 , smalxda, 0x00000000f91284fe, 0x80000000, 0x00000000 , 728); 
TEST_RR_OP64_OO( 93 , smalxda, 0x00000000f9128500, 0xffffffff, 0xffffffff , 736); 
TEST_RR_OP64_OO( 94 , smalxda, 0x00000000cd1908cf, 0x98ddba6a, 0x2de64e2f , 744); 
TEST_RR_OP64_OO( 95 , smalxda, 0x00000000cd1908cf, 0x00000000, 0x2891dddc , 752); 
TEST_RR_OP64_OO( 96 , smalxda, 0x00000000cd1908cf, 0x00000000, 0xda0b3407 , 760); 
TEST_RR_OP64_OO( 97 , smalxda, 0x00000000cd1908cf, 0x80000000, 0x00000000 , 768); 
TEST_RR_OP64_OO( 98 , smalxda, 0x00000000cd1908cf, 0xbae07f0f, 0x00000000 , 776); 
TEST_RR_OP64_OO( 99 , smalxda, 0x00000000cd1908cf, 0x00000000, 0x00000000 , 784); 
TEST_RR_OP64_OO( 100 , smalxda, 0x00000000af3888cf, 0x726c3bc1, 0x80000000 , 792); 
TEST_RR_OP64_OO( 101 , smalxda, 0x00000000af3888cf, 0x00000000, 0x00000000 , 800); 
TEST_RR_OP64_OO( 102 , smalxda, 0x00000000af3888cf, 0x00000000, 0xffffffff , 808); 
TEST_RR_OP64_OO( 103 , smalxda, 0x00000000af3888cf, 0x80000000, 0x00000000 , 816); 
TEST_RR_OP64_OO( 104 , smalxda, 0x00000000af3888cf, 0x00000000, 0xffffffff , 824); 
TEST_RR_OP64_OO( 105 , smalxda, 0x00000000af3908cf, 0xffffffff, 0x80000000 , 832); 
TEST_RR_OP64_OO( 106 , smalxda, 0x00000000af3908cf, 0x80000000, 0x80000000 , 840); 
TEST_RR_OP64_OO( 107 , smalxda, 0x00000000af3908cf, 0x00000000, 0x00000000 , 848); 
TEST_RR_OP64_OO( 108 , smalxda, 0x00000000a42208cf, 0x175f162e, 0x80000000 , 856); 
TEST_RR_OP64_OO( 109 , smalxda, 0x00000000a42208d1, 0xffffffff, 0xffffffff , 864); 
TEST_RR_OP64_OO( 110 , smalxda, 0x00000000a42208d1, 0xffffffff, 0x00000000 , 872); 
TEST_RR_OP64_OO( 111 , smalxda, 0x00000000a42208d1, 0x00000000, 0x80000000 , 880); 
TEST_RR_OP64_OO( 112 , smalxda, 0x00000000a42208d1, 0xeb2c1127, 0x00000000 , 888); 
TEST_RR_OP64_OO( 113 , smalxda, 0x00000000a422076c, 0x27ead97b, 0xffffffff , 896); 
TEST_RR_OP64_OO( 114 , smalxda, 0x00000000a4225b82, 0x1e4d8d9d, 0xffffffff , 904); 
TEST_RR_OP64_OO( 115 , smalxda, 0x00000000a422db82, 0x80000000, 0xffffffff , 912); 
TEST_RR_OP64_OO( 116 , smalxda, 0x000000009d085b82, 0x80000000, 0xa0db0e35 , 920); 
TEST_RR_OP64_OO( 117 , smalxda, 0x000000008565db82, 0x80000000, 0xf2b42f45 , 928); 
TEST_RR_OP64_OO( 118 , smalxda, 0x0000000085665b82, 0xffffffff, 0x80000000 , 936); 
TEST_RR_OP64_OO( 119 , smalxda, 0x000000007e6bc501, 0x1c95f8bb, 0x43ded2c1 , 944); 
TEST_RR_OP64_OO( 120 , smalxda, 0x000000007e6bc501, 0x00000000, 0xffffffff , 952); 
TEST_RR_OP64_OO( 121 , smalxda, 0x0000000040c1c501, 0x11fe7b54, 0x80000000 , 960); 
TEST_RR_OP64_OO( 122 , smalxda, 0x0000000040c1f577, 0x01cfcdbb, 0xffffffff , 968); 
TEST_RR_OP64_OO( 123 , smalxda, 0x0000000040c1f577, 0x00000000, 0xffffffff , 976); 
TEST_RR_OP64_OO( 124 , smalxda, 0x0000000040c1cead, 0xffffffff, 0x3d0ae9c0 , 984); 
TEST_RR_OP64_OO( 125 , smalxda, 0x0000000040c1cead, 0x00000000, 0x80000000 , 992); 
TEST_RR_OP64_OO( 126 , smalxda, 0x0000000040c24ead, 0xffffffff, 0x80000000 , 1000); 
TEST_RR_OP64_OO( 127 , smalxda, 0x00000000697c93fd, 0xbf80ae18, 0x9adedec7 , 1008); 
TEST_RR_OP64_OO( 128 , smalxda, 0x00000000697c93fd, 0x80000000, 0x80000000 , 1016); 
TEST_RR_OP64_OO( 129 , smalxda, 0x00000000697cc3fb, 0xffffffff, 0xcc5f03a3 , 1024); 
TEST_RR_OP64_OO( 130 , smalxda, 0x00000000697cc3fb, 0x00000000, 0x80000000 , 1032); 
TEST_RR_OP64_OO( 131 , smalxda, 0x00000000697c7b49, 0x06824230, 0xffffffff , 1040); 
TEST_RR_OP64_OO( 132 , smalxda, 0x000000004ba1fb49, 0x80000000, 0xb5533bb5 , 1048); 
TEST_RR_OP64_OO( 133 , smalxda, 0x000000004ba1fb49, 0x00000000, 0x00000000 , 1056); 
TEST_RR_OP64_OO( 134 , smalxda, 0x000000001854fb49, 0x4de2669a, 0x80000000 , 1064); 
TEST_RR_OP64_OO( 135 , smalxda, 0xfffffffff528fb49, 0x80000000, 0x13be4658 , 1072); 
TEST_RR_OP64_OO( 136 , smalxda, 0xfffffffff528fb49, 0x80000000, 0x80000000 , 1080); 
TEST_RR_OP64_OO( 137 , smalxda, 0xfffffffff528fb4b, 0xffffffff, 0xffffffff , 1088); 
TEST_RR_OP64_OO( 138 , smalxda, 0xfffffffff528fb4b, 0x00000000, 0x80000000 , 1096); 
TEST_RR_OP64_OO( 139 , smalxda, 0xfffffffff528fb4b, 0x00000000, 0x80000000 , 1104); 
TEST_RR_OP64_OO( 140 , smalxda, 0xfffffffff528fb4b, 0x80000000, 0x80000000 , 1112); 
TEST_RR_OP64_OO( 141 , smalxda, 0xfffffffff528fb4b, 0x80000000, 0x00000000 , 1120); 
TEST_RR_OP64_OO( 142 , smalxda, 0xfffffffff3d917ed, 0x8ed25e82, 0xe22fea12 , 1128); 
TEST_RR_OP64_OO( 143 , smalxda, 0xffffffffe6a8ab69, 0x4c46bd60, 0xd37dacda , 1136); 
TEST_RR_OP64_OO( 144 , smalxda, 0xffffffffe6a8ab69, 0x00000000, 0x80000000 , 1144); 
TEST_RR_OP64_OO( 145 , smalxda, 0xffffffffe6a8ab69, 0x80000000, 0x00000000 , 1152); 
TEST_RR_OP64_OO( 146 , smalxda, 0x000000001ec12b69, 0x64dc8fcf, 0x80000000 , 1160); 
TEST_RR_OP64_OO( 147 , smalxda, 0x000000001ec12b69, 0xffffffff, 0x00000000 , 1168); 
TEST_RR_OP64_OO( 148 , smalxda, 0xffffffffefb12b69, 0x81ef5e20, 0x80000000 , 1176); 
TEST_RR_OP64_OO( 149 , smalxda, 0xffffffffefb1ab69, 0x80000000, 0xffffffff , 1184); 
TEST_RR_OP64_OO( 150 , smalxda, 0xffffffffefb1ab69, 0x00000000, 0xffffffff , 1192); 
TEST_RR_OP64_OO( 151 , smalxda, 0xffffffffefb1ab69, 0x00000000, 0x00000000 , 1200); 
TEST_RR_OP64_OO( 152 , smalxda, 0xffffffffd7cbab69, 0x80000000, 0x014b2fcc , 1208); 
TEST_RR_OP64_OO( 153 , smalxda, 0xffffffffd7cbab69, 0x00000000, 0x14a6592b , 1216); 
TEST_RR_OP64_OO( 154 , smalxda, 0xffffffffd7cb557e, 0xffffffff, 0xf32e62bd , 1224); 
TEST_RR_OP64_OO( 155 , smalxda, 0xffffffffd71f59c0, 0x3b1d3789, 0x27add7d1 , 1232); 
TEST_RR_OP64_OO( 156 , smalxda, 0xffffffffe18a59c0, 0x80000000, 0x5709eb2a , 1240); 
TEST_RR_OP64_OO( 157 , smalxda, 0xffffffffe18ac0ba, 0xffffffff, 0xaba9ed5d , 1248); 
TEST_RR_OP64_OO( 158 , smalxda, 0x0000000020b8c0ba, 0xd27681a4, 0x80000000 , 1256); 
TEST_RR_OP64_OO( 159 , smalxda, 0x0000000020b8c0bc, 0xffffffff, 0xffffffff , 1264); 
TEST_RR_OP64_OO( 160 , smalxda, 0xffffffffe8acc0bc, 0xe3d77018, 0x80000000 , 1272); 
TEST_RR_OP64_OO( 161 , smalxda, 0xffffffffe8acc0bc, 0x00000000, 0x00000000 , 1280); 
TEST_RR_OP64_OO( 162 , smalxda, 0xffffffffe8acc0bc, 0x00000000, 0x00000000 , 1288); 
TEST_RR_OP64_OO( 163 , smalxda, 0xffffffffe7c040bc, 0x80000000, 0x0fe901d9 , 1296); 
TEST_RR_OP64_OO( 164 , smalxda, 0xffffffffe7c040bc, 0x80000000, 0x00000000 , 1304); 
TEST_RR_OP64_OO( 165 , smalxda, 0xffffffffe7c040bc, 0x80000000, 0x80000000 , 1312); 
TEST_RR_OP64_OO( 166 , smalxda, 0xffffffffe897905a, 0xbb7e1fee, 0x58e12648 , 1320); 
TEST_RR_OP64_OO( 167 , smalxda, 0x000000001487105a, 0x80000000, 0x815da821 , 1328); 
TEST_RR_OP64_OO( 168 , smalxda, 0x000000000ef1905a, 0x80000000, 0x30020b2b , 1336); 
TEST_RR_OP64_OO( 169 , smalxda, 0x000000000ef1905a, 0x00000000, 0x7c1a0e30 , 1344); 
TEST_RR_OP64_OO( 170 , smalxda, 0x000000000ef1905a, 0x00000000, 0xffffffff , 1352); 
TEST_RR_OP64_OO( 171 , smalxda, 0x000000000ef2105a, 0x80000000, 0xffffffff , 1360); 
TEST_RR_OP64_OO( 172 , smalxda, 0x000000000ef2905a, 0xffffffff, 0x80000000 , 1368); 
TEST_RR_OP64_OO( 173 , smalxda, 0x0000000043a2905a, 0x80000000, 0x6bf096a0 , 1376); 
TEST_RR_OP64_OO( 174 , smalxda, 0x0000000043a2905a, 0x00000000, 0x00000000 , 1384); 
TEST_RR_OP64_OO( 175 , smalxda, 0x0000000043a2905a, 0x00000000, 0x80000000 , 1392); 
TEST_RR_OP64_OO( 176 , smalxda, 0x0000000043a2905a, 0xffffffff, 0x00000000 , 1400); 
TEST_RR_OP64_OO( 177 , smalxda, 0x0000000043a3164f, 0xffffffff, 0xcbbbae50 , 1408); 
TEST_RR_OP64_OO( 178 , smalxda, 0x0000000043a3164f, 0xffffffff, 0x00000000 , 1416); 
TEST_RR_OP64_OO( 179 , smalxda, 0x0000000043a31651, 0xffffffff, 0xffffffff , 1424); 
TEST_RR_OP64_OO( 180 , smalxda, 0x0000000043a31651, 0xa13bab59, 0x00000000 , 1432); 
TEST_RR_OP64_OO( 181 , smalxda, 0x0000000043a39651, 0xffffffff, 0x80000000 , 1440); 
TEST_RR_OP64_OO( 182 , smalxda, 0x0000000043a39651, 0xffffffff, 0x00000000 , 1448); 
TEST_RR_OP64_OO( 183 , smalxda, 0x000000004d399651, 0x80000000, 0x68c8ecd4 , 1456); 
TEST_RR_OP64_OO( 184 , smalxda, 0x000000004d399651, 0xffffffff, 0x00000000 , 1464); 
TEST_RR_OP64_OO( 185 , smalxda, 0x000000004d399651, 0xffffffff, 0x00000000 , 1472); 
TEST_RR_OP64_OO( 186 , smalxda, 0x000000005ac39651, 0x62aee4ec, 0x80000000 , 1480); 
TEST_RR_OP64_OO( 187 , smalxda, 0x000000005ac39653, 0xffffffff, 0xffffffff , 1488); 
TEST_RR_OP64_OO( 188 , smalxda, 0x000000005ac39653, 0x26ecc1d0, 0x00000000 , 1496); 
TEST_RR_OP64_OO( 189 , smalxda, 0x0000000051c81653, 0x0e6a11f7, 0x80000000 , 1504); 
TEST_RR_OP64_OO( 190 , smalxda, 0x0000000051c81653, 0x947c140e, 0x00000000 , 1512); 
TEST_RR_OP64_OO( 191 , smalxda, 0x0000000051c81655, 0xffffffff, 0xffffffff , 1520); 
TEST_RR_OP64_OO( 192 , smalxda, 0x0000000051c81655, 0xffffffff, 0x00000000 , 1528); 
TEST_RR_OP64_OO( 193 , smalxda, 0x0000000036fe9655, 0x95ff3593, 0x80000000 , 1536); 
TEST_RR_OP64_OO( 194 , smalxda, 0x0000000058679655, 0x80000000, 0x1f8fbd2e , 1544); 
TEST_RR_OP64_OO( 195 , smalxda, 0x0000000058679655, 0xffffffff, 0x00000000 , 1552); 
TEST_RR_OP64_OO( 196 , smalxda, 0x0000000058679655, 0xffffffff, 0x00000000 , 1560); 
TEST_RR_OP64_OO( 197 , smalxda, 0x0000000058679655, 0x80000000, 0x00000000 , 1568); 
TEST_RR_OP64_OO( 198 , smalxda, 0x0000000063ae6ccb, 0xa2aebc4a, 0xb2331984 , 1576); 
TEST_RR_OP64_OO( 199 , smalxda, 0x0000000063ae483d, 0xffffffff, 0x417ee310 , 1584); 

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 398, 4, -1
RV_COMPLIANCE_DATA_END
# See LICENSE for license details.
#*****************************************************************************
# smalbt.S
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

TEST_RR_OP64_OO( 2 , smalbt, 0x0000000000008000, 0xffffffff, 0x80000000 , 8); 
TEST_RR_OP64_OO( 3 , smalbt, 0x0000000000010000, 0xffffffff, 0x80000000 , 16); 
TEST_RR_OP64_OO( 4 , smalbt, 0x0000000019858000, 0x7ef3ccf7, 0x80000000 , 24); 
TEST_RR_OP64_OO( 5 , smalbt, 0x0000000019856d03, 0x18f112fd, 0xffffffff , 32); 
TEST_RR_OP64_OO( 6 , smalbt, 0x0000000019856d03, 0x00000000, 0x20dc25ff , 40); 
TEST_RR_OP64_OO( 7 , smalbt, 0x0000000019856d03, 0xffffffff, 0x00000000 , 48); 
TEST_RR_OP64_OO( 8 , smalbt, 0x0000000019856d03, 0x00000000, 0xf708c01e , 56); 
TEST_RR_OP64_OO( 9 , smalbt, 0x0000000019856d03, 0x80000000, 0x4129aa19 , 64); 
TEST_RR_OP64_OO( 10 , smalbt, 0x0000000019856d03, 0x00000000, 0xffffffff , 72); 
TEST_RR_OP64_OO( 11 , smalbt, 0x0000000019856d03, 0x80000000, 0xffffffff , 80); 
TEST_RR_OP64_OO( 12 , smalbt, 0x000000001984f31f, 0x5e3b79e4, 0xffffffff , 88); 
TEST_RR_OP64_OO( 13 , smalbt, 0x000000001f4e6430, 0x6ca04593, 0x154b35bc , 96); 
TEST_RR_OP64_OO( 14 , smalbt, 0x000000001f4e6430, 0x00000000, 0x58bd9d86 , 104); 
TEST_RR_OP64_OO( 15 , smalbt, 0x000000001f4e6431, 0xffffffff, 0xffffffff , 112); 
TEST_RR_OP64_OO( 16 , smalbt, 0x000000001f4e6431, 0x00000000, 0x00000000 , 120); 
TEST_RR_OP64_OO( 17 , smalbt, 0x0000000019112b3e, 0x5aa6966d, 0x0f21b974 , 128); 
TEST_RR_OP64_OO( 18 , smalbt, 0x000000001911886c, 0xffffffff, 0xa2d2ecc3 , 136); 
TEST_RR_OP64_OO( 19 , smalbt, 0x000000001911886c, 0x80000000, 0xa56ecc8f , 144); 
TEST_RR_OP64_OO( 20 , smalbt, 0x000000001911886c, 0x80000000, 0x80000000 , 152); 
TEST_RR_OP64_OO( 21 , smalbt, 0x000000003379d71a, 0x2d10ac67, 0xaf2275ce , 160); 
TEST_RR_OP64_OO( 22 , smalbt, 0x000000003379d71a, 0x2f5288c9, 0x00000000 , 168); 
TEST_RR_OP64_OO( 23 , smalbt, 0x00000000337983d7, 0xffffffff, 0x53435a75 , 176); 
TEST_RR_OP64_OO( 24 , smalbt, 0x00000000337983d7, 0x00000000, 0x80000000 , 184); 
TEST_RR_OP64_OO( 25 , smalbt, 0x00000000337983d7, 0x00000000, 0x80000000 , 192); 
TEST_RR_OP64_OO( 26 , smalbt, 0x00000000337983d7, 0x00000000, 0xffffffff , 200); 
TEST_RR_OP64_OO( 27 , smalbt, 0x00000000337983d7, 0x00000000, 0xffffffff , 208); 
TEST_RR_OP64_OO( 28 , smalbt, 0x00000000337983d7, 0x00000000, 0xdb04d3ce , 216); 
TEST_RR_OP64_OO( 29 , smalbt, 0x00000000337a03d7, 0xffffffff, 0x80000000 , 224); 
TEST_RR_OP64_OO( 30 , smalbt, 0x00000000337a03d7, 0x00000000, 0x80000000 , 232); 
TEST_RR_OP64_OO( 31 , smalbt, 0x00000000337a03d7, 0xffffffff, 0x00000000 , 240); 
TEST_RR_OP64_OO( 32 , smalbt, 0x00000000337a03d7, 0x80000000, 0x877c273a , 248); 
TEST_RR_OP64_OO( 33 , smalbt, 0x00000000337a03d7, 0x00000000, 0x6723faf0 , 256); 
TEST_RR_OP64_OO( 34 , smalbt, 0x00000000337a03d7, 0x80000000, 0x80000000 , 264); 
TEST_RR_OP64_OO( 35 , smalbt, 0x00000000337a1064, 0xffffffff, 0xf37387eb , 272); 
TEST_RR_OP64_OO( 36 , smalbt, 0x00000000337a1064, 0x00000000, 0xffffffff , 280); 
TEST_RR_OP64_OO( 37 , smalbt, 0x00000000337a1064, 0x80000000, 0xffffffff , 288); 
TEST_RR_OP64_OO( 38 , smalbt, 0x00000000337a1064, 0x00000000, 0x00000000 , 296); 
TEST_RR_OP64_OO( 39 , smalbt, 0x00000000337a9064, 0xffffffff, 0x80000000 , 304); 
TEST_RR_OP64_OO( 40 , smalbt, 0x000000001c884e64, 0xba2ac0d6, 0x5d00758e , 312); 
TEST_RR_OP64_OO( 41 , smalbt, 0x000000001c884e64, 0x80000000, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , smalbt, 0x0000000005fa4e64, 0x05c02d1c, 0x80000000 , 328); 
TEST_RR_OP64_OO( 43 , smalbt, 0x0000000005fa4e64, 0xffffffff, 0x00000000 , 336); 
TEST_RR_OP64_OO( 44 , smalbt, 0x0000000005fa4e65, 0xffffffff, 0xffffffff , 344); 
TEST_RR_OP64_OO( 45 , smalbt, 0x0000000028a8ce65, 0xb4edbaa3, 0x80000000 , 352); 
TEST_RR_OP64_OO( 46 , smalbt, 0x0000000028a8ce66, 0xffffffff, 0xffffffff , 360); 
TEST_RR_OP64_OO( 47 , smalbt, 0x0000000028a8ce66, 0x00000000, 0xffffffff , 368); 
TEST_RR_OP64_OO( 48 , smalbt, 0x0000000028a8ce66, 0x00000000, 0xb085915f , 376); 
TEST_RR_OP64_OO( 49 , smalbt, 0x0000000028a8c34a, 0xf2ff0b1c, 0xffffffff , 384); 
TEST_RR_OP64_OO( 50 , smalbt, 0x0000000028a8c34a, 0x80000000, 0xdf923189 , 392); 
TEST_RR_OP64_OO( 51 , smalbt, 0x0000000023345d83, 0xc28f6587, 0xf23f6d99 , 400); 
TEST_RR_OP64_OO( 52 , smalbt, 0x0000000023345d84, 0xffffffff, 0xffffffff , 408); 
TEST_RR_OP64_OO( 53 , smalbt, 0x0000000023345d84, 0x00000000, 0x00000000 , 416); 
TEST_RR_OP64_OO( 54 , smalbt, 0x0000000023345d84, 0x00000000, 0xffffffff , 424); 
TEST_RR_OP64_OO( 55 , smalbt, 0x000000002334dd84, 0xffffffff, 0x80000000 , 432); 
TEST_RR_OP64_OO( 56 , smalbt, 0x0000000017f435de, 0xb33119de, 0x90a31395 , 440); 
TEST_RR_OP64_OO( 57 , smalbt, 0x0000000017f4b5de, 0xffffffff, 0x80000000 , 448); 
TEST_RR_OP64_OO( 58 , smalbt, 0x000000002724b5de, 0x6a41e1a0, 0x80000000 , 456); 
TEST_RR_OP64_OO( 59 , smalbt, 0x0000000027243ff9, 0x528175e5, 0xffffffff , 464); 
TEST_RR_OP64_OO( 60 , smalbt, 0xfffffffffa323ff9, 0xe86059e4, 0x80000000 , 472); 
TEST_RR_OP64_OO( 61 , smalbt, 0xfffffffffa323ff9, 0x7f01a53d, 0x00000000 , 480); 
TEST_RR_OP64_OO( 62 , smalbt, 0xfffffffffa323ff9, 0x00000000, 0x1969cf74 , 488); 
TEST_RR_OP64_OO( 63 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0xffffffff , 496); 
TEST_RR_OP64_OO( 64 , smalbt, 0xfffffffffa323ff9, 0x00000000, 0xffffffff , 504); 
TEST_RR_OP64_OO( 65 , smalbt, 0xfffffffffa323ff9, 0xffffffff, 0x00000000 , 512); 
TEST_RR_OP64_OO( 66 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0xffffffff , 520); 
TEST_RR_OP64_OO( 67 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0xffffffff , 528); 
TEST_RR_OP64_OO( 68 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0xffffffff , 536); 
TEST_RR_OP64_OO( 69 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0x337eda55 , 544); 
TEST_RR_OP64_OO( 70 , smalbt, 0xfffffffffa323ff9, 0x00000000, 0x80000000 , 552); 
TEST_RR_OP64_OO( 71 , smalbt, 0xfffffffffa323ff9, 0x00000000, 0xffffffff , 560); 
TEST_RR_OP64_OO( 72 , smalbt, 0xfffffffffa323ff9, 0x392300a9, 0x00000000 , 568); 
TEST_RR_OP64_OO( 73 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0x00000000 , 576); 
TEST_RR_OP64_OO( 74 , smalbt, 0xfffffffffa323ff9, 0x00000000, 0xfc8178cb , 584); 
TEST_RR_OP64_OO( 75 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0x00000000 , 592); 
TEST_RR_OP64_OO( 76 , smalbt, 0xfffffffffa323ff9, 0x80000000, 0x2649b203 , 600); 
TEST_RR_OP64_OO( 77 , smalbt, 0xfffffffff0aff8f9, 0x846c458d, 0xdd0060e3 , 608); 
TEST_RR_OP64_OO( 78 , smalbt, 0xfffffffff0aff8f9, 0x00000000, 0x80000000 , 616); 
TEST_RR_OP64_OO( 79 , smalbt, 0xfffffffff0aff8f9, 0x80000000, 0xf89b94ba , 624); 
TEST_RR_OP64_OO( 80 , smalbt, 0xfffffffff0aff8f9, 0x80000000, 0xffffffff , 632); 
TEST_RR_OP64_OO( 81 , smalbt, 0xfffffffff0aff8f9, 0x80000000, 0x00000000 , 640); 
TEST_RR_OP64_OO( 82 , smalbt, 0xfffffffff0aff8f9, 0x80000000, 0xd6e20245 , 648); 
TEST_RR_OP64_OO( 83 , smalbt, 0xfffffffff0aff8fa, 0xffffffff, 0xffffffff , 656); 
TEST_RR_OP64_OO( 84 , smalbt, 0xffffffffe510f8fa, 0x57ea173e, 0x80000000 , 664); 
TEST_RR_OP64_OO( 85 , smalbt, 0xfffffffff91047c8, 0x18e0d76e, 0x81d13049 , 672); 
TEST_RR_OP64_OO( 86 , smalbt, 0xfffffffff910c7c8, 0xffffffff, 0x80000000 , 680); 
TEST_RR_OP64_OO( 87 , smalbt, 0xfffffffff910c7c9, 0xffffffff, 0xffffffff , 688); 
TEST_RR_OP64_OO( 88 , smalbt, 0xfffffffff910c7c9, 0x80000000, 0x00000000 , 696); 
TEST_RR_OP64_OO( 89 , smalbt, 0xfffffffff910c7ca, 0xffffffff, 0xffffffff , 704); 
TEST_RR_OP64_OO( 90 , smalbt, 0xfffffffff910c7ca, 0x587b4248, 0x00000000 , 712); 
TEST_RR_OP64_OO( 91 , smalbt, 0xfffffffff910c7ca, 0x80000000, 0xbe5fdac2 , 720); 
TEST_RR_OP64_OO( 92 , smalbt, 0xfffffffff9109ae4, 0xffffffff, 0x2ce6b2f4 , 728); 
TEST_RR_OP64_OO( 93 , smalbt, 0xfffffffff9109ae4, 0x00000000, 0x00000000 , 736); 
TEST_RR_OP64_OO( 94 , smalbt, 0xfffffffff9109ae4, 0x80000000, 0x80000000 , 744); 
TEST_RR_OP64_OO( 95 , smalbt, 0xffffffffcd2e1ae4, 0x43fe57c5, 0x80000000 , 752); 
TEST_RR_OP64_OO( 96 , smalbt, 0xffffffffcd2e1ae4, 0x80000000, 0x80000000 , 760); 
TEST_RR_OP64_OO( 97 , smalbt, 0xffffffffcd2e1ae4, 0x00000000, 0x3e7b617f , 768); 
TEST_RR_OP64_OO( 98 , smalbt, 0xffffffffcd2e1ae4, 0xffffffff, 0x00000000 , 776); 
TEST_RR_OP64_OO( 99 , smalbt, 0xffffffffcd2e1ae4, 0xffffffff, 0x00000000 , 784); 
TEST_RR_OP64_OO( 100 , smalbt, 0xffffffffafa31ae4, 0x53c63b16, 0x80000000 , 792); 
TEST_RR_OP64_OO( 101 , smalbt, 0xffffffffafa31ae4, 0x80000000, 0xb5366337 , 800); 
TEST_RR_OP64_OO( 102 , smalbt, 0xffffffffafa31ae4, 0x80000000, 0x80000000 , 808); 
TEST_RR_OP64_OO( 103 , smalbt, 0xffffffffafa31ae4, 0x00000000, 0x00000000 , 816); 
TEST_RR_OP64_OO( 104 , smalbt, 0xffffffffafa31ae4, 0xffffffff, 0x00000000 , 824); 
TEST_RR_OP64_OO( 105 , smalbt, 0xffffffffafa31ae4, 0x00000000, 0x80000000 , 832); 
TEST_RR_OP64_OO( 106 , smalbt, 0xffffffffafa31ae4, 0x80000000, 0xffffffff , 840); 
TEST_RR_OP64_OO( 107 , smalbt, 0xffffffffafa31ae4, 0x75142ba1, 0x00000000 , 848); 
TEST_RR_OP64_OO( 108 , smalbt, 0xffffffffafa31ae4, 0x80000000, 0x00000000 , 856); 
TEST_RR_OP64_OO( 109 , smalbt, 0xffffffffafa31ae4, 0x00000000, 0x80000000 , 864); 
TEST_RR_OP64_OO( 110 , smalbt, 0xffffffffa8c71ae4, 0x624a0db8, 0x80000000 , 872); 
TEST_RR_OP64_OO( 111 , smalbt, 0xffffffffa8c79ae4, 0xffffffff, 0x80000000 , 880); 
TEST_RR_OP64_OO( 112 , smalbt, 0xffffffffa8c79ae4, 0x80000000, 0x16d86a47 , 888); 
TEST_RR_OP64_OO( 113 , smalbt, 0xffffffffa8c80793, 0xffffffff, 0x93518b89 , 896); 
TEST_RR_OP64_OO( 114 , smalbt, 0xffffffffa8c88793, 0xffffffff, 0x80000000 , 904); 
TEST_RR_OP64_OO( 115 , smalbt, 0xffffffffa8c90793, 0xffffffff, 0x80000000 , 912); 
TEST_RR_OP64_OO( 116 , smalbt, 0xffffffffa8c90793, 0x00000000, 0xe9639e3b , 920); 
TEST_RR_OP64_OO( 117 , smalbt, 0xffffffffa8c90793, 0x00000000, 0x00000000 , 928); 
TEST_RR_OP64_OO( 118 , smalbt, 0xffffffffa8c98793, 0xffffffff, 0x80000000 , 936); 
TEST_RR_OP64_OO( 119 , smalbt, 0xffffffffa8ca0793, 0xffffffff, 0x80000000 , 944); 
TEST_RR_OP64_OO( 120 , smalbt, 0xffffffffa8ca0793, 0x00000000, 0x00000000 , 952); 
TEST_RR_OP64_OO( 121 , smalbt, 0xffffffffa8ca0794, 0xffffffff, 0xffffffff , 960); 
TEST_RR_OP64_OO( 122 , smalbt, 0xffffffffa8ca0794, 0x00000000, 0x9b050a5c , 968); 
TEST_RR_OP64_OO( 123 , smalbt, 0xffffffffa8ca0794, 0x80000000, 0x00000000 , 976); 
TEST_RR_OP64_OO( 124 , smalbt, 0xffffffffa8ca0795, 0xffffffff, 0xffffffff , 984); 
TEST_RR_OP64_OO( 125 , smalbt, 0xffffffff93288795, 0x4d882b43, 0x80000000 , 992); 
TEST_RR_OP64_OO( 126 , smalbt, 0xffffffff93288795, 0x00000000, 0x80000000 , 1000); 
TEST_RR_OP64_OO( 127 , smalbt, 0xffffffff93288795, 0xffffffff, 0x00000000 , 1008); 
TEST_RR_OP64_OO( 128 , smalbt, 0xffffffff9328f6c1, 0xffffffff, 0x90d460d5 , 1016); 
TEST_RR_OP64_OO( 129 , smalbt, 0xffffffff9329725e, 0xffffffff, 0x84634c3d , 1024); 
TEST_RR_OP64_OO( 130 , smalbt, 0xffffffff9329725e, 0x00000000, 0xffffffff , 1032); 
TEST_RR_OP64_OO( 131 , smalbt, 0xffffffff932908e8, 0xf9916976, 0xffffffff , 1040); 
TEST_RR_OP64_OO( 132 , smalbt, 0xffffffff9c27331b, 0x57d9935d, 0xeacfcf92 , 1048); 
TEST_RR_OP64_OO( 133 , smalbt, 0xffffffff9c27331b, 0x00000000, 0xe1c58cfe , 1056); 
TEST_RR_OP64_OO( 134 , smalbt, 0xffffffff9c27b31b, 0xffffffff, 0x80000000 , 1064); 
TEST_RR_OP64_OO( 135 , smalbt, 0xffffffff9c28331b, 0xffffffff, 0x80000000 , 1072); 
TEST_RR_OP64_OO( 136 , smalbt, 0xffffffff9c27c277, 0xffffffff, 0x70a4ecd9 , 1080); 
TEST_RR_OP64_OO( 137 , smalbt, 0xffffffff9c27c277, 0x80000000, 0x80000000 , 1088); 
TEST_RR_OP64_OO( 138 , smalbt, 0xffffffff9c27c277, 0x00000000, 0x80000000 , 1096); 
TEST_RR_OP64_OO( 139 , smalbt, 0xffffffff9c2760c7, 0x8cd961b0, 0xffffffff , 1104); 
TEST_RR_OP64_OO( 140 , smalbt, 0xffffffff9c2760c7, 0x80000000, 0x00000000 , 1112); 
TEST_RR_OP64_OO( 141 , smalbt, 0xffffffff9c2760c7, 0x80000000, 0xdf7e01a0 , 1120); 
TEST_RR_OP64_OO( 142 , smalbt, 0xffffffff9c27e0c7, 0xffffffff, 0x80000000 , 1128); 
TEST_RR_OP64_OO( 143 , smalbt, 0xffffffff9c27e0c7, 0x80000000, 0xffffffff , 1136); 
TEST_RR_OP64_OO( 144 , smalbt, 0xffffffff9c27ae2c, 0xffffffff, 0x329b993a , 1144); 
TEST_RR_OP64_OO( 145 , smalbt, 0xffffffff9c282e2c, 0xffffffff, 0x80000000 , 1152); 
TEST_RR_OP64_OO( 146 , smalbt, 0xffffffff9c282e2d, 0xffffffff, 0xffffffff , 1160); 
TEST_RR_OP64_OO( 147 , smalbt, 0xffffffff9c282e2d, 0x80000000, 0xffffffff , 1168); 
TEST_RR_OP64_OO( 148 , smalbt, 0xffffffff9c282e2d, 0x00000000, 0x80000000 , 1176); 
TEST_RR_OP64_OO( 149 , smalbt, 0xffffffff9c282e2d, 0x80000000, 0x00000000 , 1184); 
TEST_RR_OP64_OO( 150 , smalbt, 0xffffffff9c282e2d, 0x00000000, 0xffffffff , 1192); 
TEST_RR_OP64_OO( 151 , smalbt, 0xffffffff9c282e2e, 0xffffffff, 0xffffffff , 1200); 
TEST_RR_OP64_OO( 152 , smalbt, 0xffffffff9c282e2e, 0x00000000, 0x5bd2eee0 , 1208); 
TEST_RR_OP64_OO( 153 , smalbt, 0xffffffff9c28ae2e, 0xffffffff, 0x80000000 , 1216); 
TEST_RR_OP64_OO( 154 , smalbt, 0xffffffff9c28ae2e, 0x00000000, 0xffffffff , 1224); 
TEST_RR_OP64_OO( 155 , smalbt, 0xffffffff9c28ae2e, 0x87b377bd, 0x00000000 , 1232); 
TEST_RR_OP64_OO( 156 , smalbt, 0xffffffff9c28ae2e, 0x00000000, 0x73d40a6d , 1240); 
TEST_RR_OP64_OO( 157 , smalbt, 0xffffffff9c28ae2f, 0xffffffff, 0xffffffff , 1248); 
TEST_RR_OP64_OO( 158 , smalbt, 0xffffffff9c28ae2f, 0x80000000, 0x80000000 , 1256); 
TEST_RR_OP64_OO( 159 , smalbt, 0xffffffff9c28ae2f, 0x80000000, 0x42471751 , 1264); 
TEST_RR_OP64_OO( 160 , smalbt, 0xffffffff9c28ae30, 0xffffffff, 0xffffffff , 1272); 
TEST_RR_OP64_OO( 161 , smalbt, 0xffffffff9c28ae30, 0x80000000, 0xffffffff , 1280); 
TEST_RR_OP64_OO( 162 , smalbt, 0xffffffff9c28ae30, 0xed6a02cc, 0x00000000 , 1288); 
TEST_RR_OP64_OO( 163 , smalbt, 0xffffffff9c292e30, 0xffffffff, 0x80000000 , 1296); 
TEST_RR_OP64_OO( 164 , smalbt, 0xffffffff9c292e30, 0x80000000, 0xbd4b9e6e , 1304); 
TEST_RR_OP64_OO( 165 , smalbt, 0xffffffff9c292e31, 0xffffffff, 0xffffffff , 1312); 
TEST_RR_OP64_OO( 166 , smalbt, 0xffffffff9c292e31, 0x00000000, 0xffffffff , 1320); 
TEST_RR_OP64_OO( 167 , smalbt, 0xffffffff9c292e31, 0x80000000, 0x00000000 , 1328); 
TEST_RR_OP64_OO( 168 , smalbt, 0xffffffff9c292e31, 0x80000000, 0x69009d9c , 1336); 
TEST_RR_OP64_OO( 169 , smalbt, 0xffffffff9c292e31, 0xffffffff, 0x00000000 , 1344); 
TEST_RR_OP64_OO( 170 , smalbt, 0xffffffff7e074fd1, 0x2f598960, 0x4107b074 , 1352); 
TEST_RR_OP64_OO( 171 , smalbt, 0xffffffff7e074fd1, 0x00000000, 0x00000000 , 1360); 
TEST_RR_OP64_OO( 172 , smalbt, 0xffffffff7e07a22c, 0x219cada5, 0xffffffff , 1368); 
TEST_RR_OP64_OO( 173 , smalbt, 0xffffffff7e07a22c, 0x80000000, 0xcfa71f15 , 1376); 
TEST_RR_OP64_OO( 174 , smalbt, 0xffffffff5c895e88, 0x518e79be, 0xb99263e3 , 1384); 
TEST_RR_OP64_OO( 175 , smalbt, 0xffffffff5c89de88, 0xffffffff, 0x80000000 , 1392); 
TEST_RR_OP64_OO( 176 , smalbt, 0xffffffff5c89de89, 0xffffffff, 0xffffffff , 1400); 
TEST_RR_OP64_OO( 177 , smalbt, 0xffffffff5c89de89, 0x80000000, 0xf12986d0 , 1408); 
TEST_RR_OP64_OO( 178 , smalbt, 0xffffffff5c896a71, 0xffffffff, 0x74188036 , 1416); 
TEST_RR_OP64_OO( 179 , smalbt, 0xffffffff5c896a71, 0x00000000, 0x00000000 , 1424); 
TEST_RR_OP64_OO( 180 , smalbt, 0xffffffff5c896a71, 0x80000000, 0x80000000 , 1432); 
TEST_RR_OP64_OO( 181 , smalbt, 0xffffffff5c896a71, 0x00000000, 0x80000000 , 1440); 
TEST_RR_OP64_OO( 182 , smalbt, 0xffffffff699cea71, 0x1fabe5d9, 0x80000000 , 1448); 
TEST_RR_OP64_OO( 183 , smalbt, 0xffffffff699cea71, 0x00000000, 0x80000000 , 1456); 
TEST_RR_OP64_OO( 184 , smalbt, 0xffffffff699cea71, 0xffffffff, 0x00000000 , 1464); 
TEST_RR_OP64_OO( 185 , smalbt, 0xffffffff699cea71, 0x00000000, 0x00000000 , 1472); 
TEST_RR_OP64_OO( 186 , smalbt, 0xffffffff56d06eae, 0x47835337, 0xc62b7e36 , 1480); 
TEST_RR_OP64_OO( 187 , smalbt, 0xffffffff56d06eae, 0x80000000, 0x80000000 , 1488); 
TEST_RR_OP64_OO( 188 , smalbt, 0xffffffff56d06eae, 0x00000000, 0x80000000 , 1496); 
TEST_RR_OP64_OO( 189 , smalbt, 0xffffffff56d06eaf, 0xffffffff, 0xffffffff , 1504); 
TEST_RR_OP64_OO( 190 , smalbt, 0xffffffff56d06eaf, 0x00000000, 0x80000000 , 1512); 
TEST_RR_OP64_OO( 191 , smalbt, 0xffffffff56d06eaf, 0x80000000, 0x156345bd , 1520); 
TEST_RR_OP64_OO( 192 , smalbt, 0xffffffff56d06eaf, 0x80000000, 0xffffffff , 1528); 
TEST_RR_OP64_OO( 193 , smalbt, 0xffffffff56d06eaf, 0x00000000, 0x0a4752aa , 1536); 
TEST_RR_OP64_OO( 194 , smalbt, 0xffffffff650beeaf, 0xf71de389, 0x80000000 , 1544); 
TEST_RR_OP64_OO( 195 , smalbt, 0xffffffff650beeaf, 0xffffffff, 0x00000000 , 1552); 
TEST_RR_OP64_OO( 196 , smalbt, 0xffffffff650beeaf, 0xffffffff, 0x00000000 , 1560); 
TEST_RR_OP64_OO( 197 , smalbt, 0xffffffff650beeb0, 0xffffffff, 0xffffffff , 1568); 
TEST_RR_OP64_OO( 198 , smalbt, 0xffffffff650beeb0, 0x00000000, 0x80000000 , 1576); 
TEST_RR_OP64_OO( 199 , smalbt, 0xffffffff650beeb0, 0x00000000, 0xd1cd68d4 , 1584); 

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
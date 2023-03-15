# See LICENSE for license details.
#*****************************************************************************
# smalbb.S
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

TEST_RR_OP64_OO( 2 , smalbb, 0x0000000000000000, 0x80000000, 0x80000000 , 8); 
TEST_RR_OP64_OO( 3 , smalbb, 0x0000000000000000, 0x80000000, 0xffffffff , 16); 
TEST_RR_OP64_OO( 4 , smalbb, 0x0000000000000000, 0x80000000, 0x80000000 , 24); 
TEST_RR_OP64_OO( 5 , smalbb, 0x0000000000000000, 0x0ccfaa2e, 0x00000000 , 32); 
TEST_RR_OP64_OO( 6 , smalbb, 0x0000000000000000, 0x80000000, 0xffffffff , 40); 
TEST_RR_OP64_OO( 7 , smalbb, 0x0000000000000000, 0x00000000, 0x80000000 , 48); 
TEST_RR_OP64_OO( 8 , smalbb, 0x0000000000000000, 0x80000000, 0x3c7f178c , 56); 
TEST_RR_OP64_OO( 9 , smalbb, 0x0000000000000001, 0xffffffff, 0xffffffff , 64); 
TEST_RR_OP64_OO( 10 , smalbb, 0x0000000000000001, 0x80000000, 0xffffffff , 72); 
TEST_RR_OP64_OO( 11 , smalbb, 0x0000000000000001, 0xe13c83ca, 0x00000000 , 80); 
TEST_RR_OP64_OO( 12 , smalbb, 0x0000000000000001, 0x80000000, 0xffffffff , 88); 
TEST_RR_OP64_OO( 13 , smalbb, 0x0000000000000001, 0x00000000, 0x00000000 , 96); 
TEST_RR_OP64_OO( 14 , smalbb, 0x0000000000000001, 0x80000000, 0x60c253fe , 104); 
TEST_RR_OP64_OO( 15 , smalbb, 0x0000000000000001, 0xffffffff, 0x00000000 , 112); 
TEST_RR_OP64_OO( 16 , smalbb, 0x0000000000000001, 0x80000000, 0xffffffff , 120); 
TEST_RR_OP64_OO( 17 , smalbb, 0x0000000000000001, 0x9325549d, 0x00000000 , 128); 
TEST_RR_OP64_OO( 18 , smalbb, 0x0000000000000002, 0xffffffff, 0xffffffff , 136); 
TEST_RR_OP64_OO( 19 , smalbb, 0x0000000000000002, 0xffffffff, 0x00000000 , 144); 
TEST_RR_OP64_OO( 20 , smalbb, 0x00000000000056cb, 0xffffffff, 0x49eea937 , 152); 
TEST_RR_OP64_OO( 21 , smalbb, 0x00000000000056cb, 0xffffffff, 0x00000000 , 160); 
TEST_RR_OP64_OO( 22 , smalbb, 0x00000000000056cb, 0x80000000, 0x80000000 , 168); 
TEST_RR_OP64_OO( 23 , smalbb, 0x00000000000056cc, 0xffffffff, 0xffffffff , 176); 
TEST_RR_OP64_OO( 24 , smalbb, 0x00000000000056cc, 0x5def8564, 0x80000000 , 184); 
TEST_RR_OP64_OO( 25 , smalbb, 0x00000000000056cc, 0xffffffff, 0x80000000 , 192); 
TEST_RR_OP64_OO( 26 , smalbb, 0x00000000000056cc, 0x00000000, 0xffffffff , 200); 
TEST_RR_OP64_OO( 27 , smalbb, 0x00000000000056cc, 0x80000000, 0x00000000 , 208); 
TEST_RR_OP64_OO( 28 , smalbb, 0x00000000000056cc, 0x00000000, 0x80000000 , 216); 
TEST_RR_OP64_OO( 29 , smalbb, 0x00000000000056cc, 0x00000000, 0x00000000 , 224); 
TEST_RR_OP64_OO( 30 , smalbb, 0xffffffffffffec70, 0xffffffff, 0x41c86a5c , 232); 
TEST_RR_OP64_OO( 31 , smalbb, 0xffffffffffffec70, 0x00000000, 0x80000000 , 240); 
TEST_RR_OP64_OO( 32 , smalbb, 0xffffffffffffec70, 0x80000000, 0x7261d9a3 , 248); 
TEST_RR_OP64_OO( 33 , smalbb, 0xffffffffffffec70, 0x80000000, 0xd0c4e8d0 , 256); 
TEST_RR_OP64_OO( 34 , smalbb, 0xffffffffffffec70, 0x00000000, 0x80000000 , 264); 
TEST_RR_OP64_OO( 35 , smalbb, 0xffffffffffffec71, 0xffffffff, 0xffffffff , 272); 
TEST_RR_OP64_OO( 36 , smalbb, 0xffffffffffffec71, 0x80000000, 0x96232a8f , 280); 
TEST_RR_OP64_OO( 37 , smalbb, 0xffffffffffffec72, 0xffffffff, 0xffffffff , 288); 
TEST_RR_OP64_OO( 38 , smalbb, 0xffffffffffffec72, 0x00000000, 0xffffffff , 296); 
TEST_RR_OP64_OO( 39 , smalbb, 0xffffffffffffec72, 0xffffffff, 0x80000000 , 304); 
TEST_RR_OP64_OO( 40 , smalbb, 0xffffffffffffec72, 0xffffffff, 0x80000000 , 312); 
TEST_RR_OP64_OO( 41 , smalbb, 0xffffffffffffec72, 0x80000000, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , smalbb, 0xffffffffffffec72, 0x80000000, 0xe2ef4203 , 328); 
TEST_RR_OP64_OO( 43 , smalbb, 0x0000000000005ed2, 0x37b68da0, 0xffffffff , 336); 
TEST_RR_OP64_OO( 44 , smalbb, 0x0000000000000a72, 0xffffffff, 0xf5015460 , 344); 
TEST_RR_OP64_OO( 45 , smalbb, 0x0000000000000a72, 0xa5826548, 0x00000000 , 352); 
TEST_RR_OP64_OO( 46 , smalbb, 0x0000000000000a72, 0xffffffff, 0x00000000 , 360); 
TEST_RR_OP64_OO( 47 , smalbb, 0x0000000000000a72, 0x87fe31d0, 0x80000000 , 368); 
TEST_RR_OP64_OO( 48 , smalbb, 0x00000000000006ef, 0x108b0383, 0xffffffff , 376); 
TEST_RR_OP64_OO( 49 , smalbb, 0x00000000000006ef, 0x80000000, 0xffffffff , 384); 
TEST_RR_OP64_OO( 50 , smalbb, 0x0000000000000876, 0xffffffff, 0xd525fe79 , 392); 
TEST_RR_OP64_OO( 51 , smalbb, 0x0000000000000876, 0x80000000, 0xffffffff , 400); 
TEST_RR_OP64_OO( 52 , smalbb, 0x0000000000000876, 0xffffffff, 0x00000000 , 408); 
TEST_RR_OP64_OO( 53 , smalbb, 0x0000000000000876, 0xffffffff, 0x00000000 , 416); 
TEST_RR_OP64_OO( 54 , smalbb, 0x0000000000000876, 0x80000000, 0x1e9cdea1 , 424); 
TEST_RR_OP64_OO( 55 , smalbb, 0x0000000000000876, 0x00000000, 0xffffffff , 432); 
TEST_RR_OP64_OO( 56 , smalbb, 0x0000000000000876, 0xe5251e72, 0x80000000 , 440); 
TEST_RR_OP64_OO( 57 , smalbb, 0x0000000018f64426, 0x30538f10, 0x613dc76b , 448); 
TEST_RR_OP64_OO( 58 , smalbb, 0x0000000018f64426, 0x80000000, 0xffffffff , 456); 
TEST_RR_OP64_OO( 59 , smalbb, 0x0000000018f60963, 0xffffffff, 0xa9823ac3 , 464); 
TEST_RR_OP64_OO( 60 , smalbb, 0x0000000018f60963, 0x00000000, 0xffffffff , 472); 
TEST_RR_OP64_OO( 61 , smalbb, 0x0000000018f60963, 0x80000000, 0xce102941 , 480); 
TEST_RR_OP64_OO( 62 , smalbb, 0x0000000018f687ec, 0xffffffff, 0xc8238177 , 488); 
TEST_RR_OP64_OO( 63 , smalbb, 0x0000000018f687ec, 0x00000000, 0x80000000 , 496); 
TEST_RR_OP64_OO( 64 , smalbb, 0x0000000018f687ec, 0xc129160c, 0x00000000 , 504); 
TEST_RR_OP64_OO( 65 , smalbb, 0x0000000018f687ec, 0x80000000, 0x80000000 , 512); 
TEST_RR_OP64_OO( 66 , smalbb, 0x0000000018f687ec, 0xffffffff, 0x80000000 , 520); 
TEST_RR_OP64_OO( 67 , smalbb, 0x0000000017dd622f, 0x4cdff785, 0x77852127 , 528); 
TEST_RR_OP64_OO( 68 , smalbb, 0x0000000017dd622f, 0x80000000, 0x00000000 , 536); 
TEST_RR_OP64_OO( 69 , smalbb, 0x0000000017dd622f, 0x00000000, 0xffffffff , 544); 
TEST_RR_OP64_OO( 70 , smalbb, 0x0000000017dd622f, 0x00000000, 0x80000000 , 552); 
TEST_RR_OP64_OO( 71 , smalbb, 0x0000000017dd622f, 0x8c15f42b, 0x80000000 , 560); 
TEST_RR_OP64_OO( 72 , smalbb, 0x0000000017dd622f, 0xffffffff, 0x00000000 , 568); 
TEST_RR_OP64_OO( 73 , smalbb, 0x0000000017dd622f, 0xffffffff, 0x80000000 , 576); 
TEST_RR_OP64_OO( 74 , smalbb, 0x0000000017dd622f, 0xafac0321, 0x00000000 , 584); 
TEST_RR_OP64_OO( 75 , smalbb, 0x0000000017dd622f, 0x00000000, 0x80000000 , 592); 
TEST_RR_OP64_OO( 76 , smalbb, 0x0000000017dd622f, 0xffffffff, 0x00000000 , 600); 
TEST_RR_OP64_OO( 77 , smalbb, 0x0000000017dd622f, 0x1aa8667d, 0x80000000 , 608); 
TEST_RR_OP64_OO( 78 , smalbb, 0x0000000017dd622f, 0x00000000, 0xffffffff , 616); 
TEST_RR_OP64_OO( 79 , smalbb, 0x0000000017dd622f, 0x00000000, 0xffffffff , 624); 
TEST_RR_OP64_OO( 80 , smalbb, 0x0000000017dd622f, 0x00000000, 0x00000000 , 632); 
TEST_RR_OP64_OO( 81 , smalbb, 0x0000000017dd622f, 0x61f9c973, 0x00000000 , 640); 
TEST_RR_OP64_OO( 82 , smalbb, 0x0000000017dd3fe1, 0xffffffff, 0x1e4e224e , 648); 
TEST_RR_OP64_OO( 83 , smalbb, 0x0000000017dd3fe1, 0xffffffff, 0x00000000 , 656); 
TEST_RR_OP64_OO( 84 , smalbb, 0x0000000017dd3fe1, 0xffffffff, 0x80000000 , 664); 
TEST_RR_OP64_OO( 85 , smalbb, 0x0000000017dd3fe1, 0x80000000, 0x80000000 , 672); 
TEST_RR_OP64_OO( 86 , smalbb, 0x0000000017dd3fe1, 0xaada46b7, 0x80000000 , 680); 
TEST_RR_OP64_OO( 87 , smalbb, 0x0000000017dd3fe1, 0xffffffff, 0x00000000 , 688); 
TEST_RR_OP64_OO( 88 , smalbb, 0x0000000017dcedb7, 0x8dfa522a, 0xffffffff , 696); 
TEST_RR_OP64_OO( 89 , smalbb, 0x0000000017dcedb7, 0xffffffff, 0x80000000 , 704); 
TEST_RR_OP64_OO( 90 , smalbb, 0x0000000017dcedb7, 0x80000000, 0x26a41c4b , 712); 
TEST_RR_OP64_OO( 91 , smalbb, 0x0000000017dcedb8, 0xffffffff, 0xffffffff , 720); 
TEST_RR_OP64_OO( 92 , smalbb, 0x0000000017dcedb8, 0x80000000, 0xffffffff , 728); 
TEST_RR_OP64_OO( 93 , smalbb, 0x0000000017dcedb8, 0x98c18604, 0x80000000 , 736); 
TEST_RR_OP64_OO( 94 , smalbb, 0x0000000017dcedb8, 0x5832c575, 0x80000000 , 744); 
TEST_RR_OP64_OO( 95 , smalbb, 0x00000000050d9d6c, 0x9217ca44, 0xfc17599d , 752); 
TEST_RR_OP64_OO( 96 , smalbb, 0x00000000050d9d6d, 0xffffffff, 0xffffffff , 760); 
TEST_RR_OP64_OO( 97 , smalbb, 0x00000000050d28bf, 0xffffffff, 0xe93674ae , 768); 
TEST_RR_OP64_OO( 98 , smalbb, 0x00000000050d28bf, 0x00000000, 0x00000000 , 776); 
TEST_RR_OP64_OO( 99 , smalbb, 0x00000000050d28bf, 0x80000000, 0xffffffff , 784); 
TEST_RR_OP64_OO( 100 , smalbb, 0x00000000050d28bf, 0x00000000, 0xffffffff , 792); 
TEST_RR_OP64_OO( 101 , smalbb, 0x00000000050d28bf, 0x00000000, 0x00000000 , 800); 
TEST_RR_OP64_OO( 102 , smalbb, 0x00000000050d28bf, 0xffffffff, 0x80000000 , 808); 
TEST_RR_OP64_OO( 103 , smalbb, 0x00000000050d1730, 0xffffffff, 0xae81118f , 816); 
TEST_RR_OP64_OO( 104 , smalbb, 0x00000000050d1731, 0xffffffff, 0xffffffff , 824); 
TEST_RR_OP64_OO( 105 , smalbb, 0x00000000050d1731, 0x80000000, 0xffffffff , 832); 
TEST_RR_OP64_OO( 106 , smalbb, 0x00000000050d1731, 0x00000000, 0xffffffff , 840); 
TEST_RR_OP64_OO( 107 , smalbb, 0x00000000050d1731, 0xffffffff, 0x80000000 , 848); 
TEST_RR_OP64_OO( 108 , smalbb, 0x00000000050ca856, 0x090d6edb, 0xffffffff , 856); 
TEST_RR_OP64_OO( 109 , smalbb, 0x00000000050ca856, 0x80000000, 0x80000000 , 864); 
TEST_RR_OP64_OO( 110 , smalbb, 0x00000000050cdd86, 0xffffffff, 0x2516cad0 , 872); 
TEST_RR_OP64_OO( 111 , smalbb, 0xfffffffff073a33e, 0x77c28c62, 0xb3e82d9c , 880); 
TEST_RR_OP64_OO( 112 , smalbb, 0xfffffffff073a33f, 0xffffffff, 0xffffffff , 888); 
TEST_RR_OP64_OO( 113 , smalbb, 0xfffffffff0734efd, 0xffffffff, 0x2c1c5442 , 896); 
TEST_RR_OP64_OO( 114 , smalbb, 0xfffffffff07373ee, 0xc9e1db0f, 0xffffffff , 904); 
TEST_RR_OP64_OO( 115 , smalbb, 0xfffffffff0730979, 0xffffffff, 0xc8d56a75 , 912); 
TEST_RR_OP64_OO( 116 , smalbb, 0xfffffffff0731f49, 0xffffffff, 0x561dea30 , 920); 
TEST_RR_OP64_OO( 117 , smalbb, 0xfffffffff0731f49, 0x00000000, 0xffffffff , 928); 
TEST_RR_OP64_OO( 118 , smalbb, 0xfffffffff0731f49, 0x80000000, 0x13ed9b8c , 936); 
TEST_RR_OP64_OO( 119 , smalbb, 0xfffffffff0731f49, 0x80000000, 0x80000000 , 944); 
TEST_RR_OP64_OO( 120 , smalbb, 0xfffffffff0731f49, 0x00000000, 0x80000000 , 952); 
TEST_RR_OP64_OO( 121 , smalbb, 0xfffffffff0731f4a, 0xffffffff, 0xffffffff , 960); 
TEST_RR_OP64_OO( 122 , smalbb, 0xfffffffff0429044, 0x068f6959, 0x1cf3ff8a , 968); 
TEST_RR_OP64_OO( 123 , smalbb, 0xfffffffff04280cc, 0x41f50f78, 0xffffffff , 976); 
TEST_RR_OP64_OO( 124 , smalbb, 0xfffffffff04280cc, 0x80000000, 0x3df5122a , 984); 
TEST_RR_OP64_OO( 125 , smalbb, 0xfffffffff04280cc, 0x80000000, 0x00000000 , 992); 
TEST_RR_OP64_OO( 126 , smalbb, 0xfffffffff04280cc, 0xffffffff, 0x00000000 , 1000); 
TEST_RR_OP64_OO( 127 , smalbb, 0xfffffffff04280cc, 0x00000000, 0x80000000 , 1008); 
TEST_RR_OP64_OO( 128 , smalbb, 0xfffffffff04280cc, 0x00000000, 0xffffffff , 1016); 
TEST_RR_OP64_OO( 129 , smalbb, 0xfffffffff04280cc, 0x76274438, 0x00000000 , 1024); 
TEST_RR_OP64_OO( 130 , smalbb, 0xfffffffff0427118, 0xffffffff, 0x79bb0fb4 , 1032); 
TEST_RR_OP64_OO( 131 , smalbb, 0xfffffffff0427118, 0x00000000, 0xe6636c41 , 1040); 
TEST_RR_OP64_OO( 132 , smalbb, 0xfffffffff0427118, 0x80000000, 0x80000000 , 1048); 
TEST_RR_OP64_OO( 133 , smalbb, 0xfffffffff1c5113a, 0x4bb7f8b7, 0x0a59caee , 1056); 
TEST_RR_OP64_OO( 134 , smalbb, 0xffffffffe2bb0202, 0x1ea552fe, 0x71ecd19c , 1064); 
TEST_RR_OP64_OO( 135 , smalbb, 0xffffffffe2bb0203, 0xffffffff, 0xffffffff , 1072); 
TEST_RR_OP64_OO( 136 , smalbb, 0xffffffffe2bb0203, 0x80000000, 0xffffffff , 1080); 
TEST_RR_OP64_OO( 137 , smalbb, 0xffffffffe2bb0203, 0x00000000, 0x00000000 , 1088); 
TEST_RR_OP64_OO( 138 , smalbb, 0xffffffffe2bb0203, 0x80000000, 0xffffffff , 1096); 
TEST_RR_OP64_OO( 139 , smalbb, 0xffffffffe2bb0a45, 0xffffffff, 0x59c7f7be , 1104); 
TEST_RR_OP64_OO( 140 , smalbb, 0xffffffffe2bb0a45, 0x80000000, 0x22210d21 , 1112); 
TEST_RR_OP64_OO( 141 , smalbb, 0xffffffffe2bb0a45, 0x00000000, 0xce4e777b , 1120); 
TEST_RR_OP64_OO( 142 , smalbb, 0xffffffffe2bb0a45, 0x92211d96, 0x00000000 , 1128); 
TEST_RR_OP64_OO( 143 , smalbb, 0xfffffffff0addfa5, 0xc88d2910, 0xf6a556f6 , 1136); 
TEST_RR_OP64_OO( 144 , smalbb, 0xfffffffff0addfa5, 0x00000000, 0x80000000 , 1144); 
TEST_RR_OP64_OO( 145 , smalbb, 0xfffffffff0addfa5, 0x9b0ff52c, 0x00000000 , 1152); 
TEST_RR_OP64_OO( 146 , smalbb, 0xfffffffff0addfa5, 0x80000000, 0x80000000 , 1160); 
TEST_RR_OP64_OO( 147 , smalbb, 0xfffffffff0addfa5, 0x00000000, 0xffffffff , 1168); 
TEST_RR_OP64_OO( 148 , smalbb, 0xfffffffff0addfa5, 0x00000000, 0x00000000 , 1176); 
TEST_RR_OP64_OO( 149 , smalbb, 0xfffffffff0addfa5, 0x00000000, 0x80000000 , 1184); 
TEST_RR_OP64_OO( 150 , smalbb, 0xfffffffff0addfa5, 0x80000000, 0x00000000 , 1192); 
TEST_RR_OP64_OO( 151 , smalbb, 0xfffffffff0addfa5, 0x00000000, 0x80000000 , 1200); 
TEST_RR_OP64_OO( 152 , smalbb, 0xfffffffff0addfa5, 0x00000000, 0xffffffff , 1208); 
TEST_RR_OP64_OO( 153 , smalbb, 0xfffffffff0addfa5, 0xffffffff, 0x80000000 , 1216); 
TEST_RR_OP64_OO( 154 , smalbb, 0xfffffffff0addfa5, 0x80000000, 0x80000000 , 1224); 
TEST_RR_OP64_OO( 155 , smalbb, 0xffffffffda574945, 0x4a6452c4, 0xaf03bae8 , 1232); 
TEST_RR_OP64_OO( 156 , smalbb, 0xffffffffda574945, 0x00000000, 0xffffffff , 1240); 
TEST_RR_OP64_OO( 157 , smalbb, 0xffffffffda56f30e, 0xffffffff, 0xd2605637 , 1248); 
TEST_RR_OP64_OO( 158 , smalbb, 0xffffffffda56f30e, 0x80000000, 0x80000000 , 1256); 
TEST_RR_OP64_OO( 159 , smalbb, 0xffffffffda56f30f, 0xffffffff, 0xffffffff , 1264); 
TEST_RR_OP64_OO( 160 , smalbb, 0xffffffffda56f30f, 0x00000000, 0x00000000 , 1272); 
TEST_RR_OP64_OO( 161 , smalbb, 0xffffffffda56a081, 0x6492528e, 0xffffffff , 1280); 
TEST_RR_OP64_OO( 162 , smalbb, 0xffffffffda56a081, 0x80000000, 0xffffffff , 1288); 
TEST_RR_OP64_OO( 163 , smalbb, 0xffffffffda56a081, 0x7fb28291, 0x80000000 , 1296); 
TEST_RR_OP64_OO( 164 , smalbb, 0xffffffffda56a082, 0xffffffff, 0xffffffff , 1304); 
TEST_RR_OP64_OO( 165 , smalbb, 0xffffffffda56a082, 0x80000000, 0x80000000 , 1312); 
TEST_RR_OP64_OO( 166 , smalbb, 0xffffffffda56a082, 0x2efebd83, 0x00000000 , 1320); 
TEST_RR_OP64_OO( 167 , smalbb, 0xffffffffda56a082, 0x00000000, 0x80000000 , 1328); 
TEST_RR_OP64_OO( 168 , smalbb, 0xffffffffda56a082, 0x80000000, 0x00000000 , 1336); 
TEST_RR_OP64_OO( 169 , smalbb, 0xffffffffda56a082, 0x80000000, 0x208217e3 , 1344); 
TEST_RR_OP64_OO( 170 , smalbb, 0xffffffffda5660ae, 0x88933fd4, 0xffffffff , 1352); 
TEST_RR_OP64_OO( 171 , smalbb, 0xffffffffda5660ae, 0x00000000, 0xffffffff , 1360); 
TEST_RR_OP64_OO( 172 , smalbb, 0xffffffffda5660ae, 0x00000000, 0xffffffff , 1368); 
TEST_RR_OP64_OO( 173 , smalbb, 0xffffffffda5660ae, 0x00000000, 0x80000000 , 1376); 
TEST_RR_OP64_OO( 174 , smalbb, 0xffffffffda56a829, 0xffffffff, 0x782fb885 , 1384); 
TEST_RR_OP64_OO( 175 , smalbb, 0xffffffffda56a829, 0x80000000, 0x80000000 , 1392); 
TEST_RR_OP64_OO( 176 , smalbb, 0xffffffffda56a829, 0x80000000, 0xffffffff , 1400); 
TEST_RR_OP64_OO( 177 , smalbb, 0xffffffffda56a829, 0x00000000, 0xdb77c678 , 1408); 
TEST_RR_OP64_OO( 178 , smalbb, 0xffffffffda56a829, 0x00000000, 0x00000000 , 1416); 
TEST_RR_OP64_OO( 179 , smalbb, 0xffffffffda56c3ce, 0xf136e45b, 0xffffffff , 1424); 
TEST_RR_OP64_OO( 180 , smalbb, 0xffffffffda56c3ce, 0x00000000, 0x7ee7345f , 1432); 
TEST_RR_OP64_OO( 181 , smalbb, 0xffffffffda56c3ce, 0x00000000, 0x80000000 , 1440); 
TEST_RR_OP64_OO( 182 , smalbb, 0xffffffffda56c3ce, 0x80000000, 0x80000000 , 1448); 
TEST_RR_OP64_OO( 183 , smalbb, 0xffffffffda56bf18, 0xffffffff, 0xeb3604b6 , 1456); 
TEST_RR_OP64_OO( 184 , smalbb, 0xffffffffda56ddd1, 0xcd2fe147, 0xffffffff , 1464); 
TEST_RR_OP64_OO( 185 , smalbb, 0xffffffffda56ddd1, 0x00000000, 0xffffffff , 1472); 
TEST_RR_OP64_OO( 186 , smalbb, 0xffffffffe5e712df, 0x98be808d, 0x6fcae8c6 , 1480); 
TEST_RR_OP64_OO( 187 , smalbb, 0xffffffffe5e70d76, 0xffffffff, 0x24b70569 , 1488); 
TEST_RR_OP64_OO( 188 , smalbb, 0xffffffffe5e70d76, 0xe5df8db3, 0x80000000 , 1496); 
TEST_RR_OP64_OO( 189 , smalbb, 0xffffffffe5e70d76, 0x00000000, 0x80000000 , 1504); 
TEST_RR_OP64_OO( 190 , smalbb, 0xffffffffe5e70d76, 0x00000000, 0x12b93a38 , 1512); 
TEST_RR_OP64_OO( 191 , smalbb, 0xffffffffe5e70d76, 0x36d024f5, 0x80000000 , 1520); 
TEST_RR_OP64_OO( 192 , smalbb, 0xffffffffe5e6c1ac, 0xea0b4bca, 0xffffffff , 1528); 
TEST_RR_OP64_OO( 193 , smalbb, 0xffffffffe5e6816a, 0xffffffff, 0x48e64042 , 1536); 
TEST_RR_OP64_OO( 194 , smalbb, 0xffffffffe5e6816a, 0x80000000, 0x00000000 , 1544); 
TEST_RR_OP64_OO( 195 , smalbb, 0xffffffffe5e6a879, 0xffffffff, 0x83aed8f1 , 1552); 
TEST_RR_OP64_OO( 196 , smalbb, 0xffffffffe5e6a879, 0x80000000, 0x80000000 , 1560); 
TEST_RR_OP64_OO( 197 , smalbb, 0xffffffffe5e6a879, 0x00000000, 0xffffffff , 1568); 
TEST_RR_OP64_OO( 198 , smalbb, 0xffffffffe5e6a879, 0x80000000, 0x96513eb0 , 1576); 
TEST_RR_OP64_OO( 199 , smalbb, 0xffffffffe5e6a879, 0x80000000, 0x00000000 , 1584); 

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
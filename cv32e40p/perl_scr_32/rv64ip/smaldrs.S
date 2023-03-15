# See LICENSE for license details.
#*****************************************************************************
# smaldrs.S
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

TEST_RR_OP64_OO( 2 , smaldrs, 0xffffffffffff7d9b, 0xffffffff, 0xce5f50c4 , 8); 
TEST_RR_OP64_OO( 3 , smaldrs, 0x0000000011faa1af, 0x07c4d12f, 0x528c8ffc , 16); 
TEST_RR_OP64_OO( 4 , smaldrs, 0x0000000011faa1af, 0xffffffff, 0xffffffff , 24); 
TEST_RR_OP64_OO( 5 , smaldrs, 0xffffffffd1faa1af, 0x80000000, 0x80000000 , 32); 
TEST_RR_OP64_OO( 6 , smaldrs, 0xffffffffd1faa1af, 0x00000000, 0xffffffff , 40); 
TEST_RR_OP64_OO( 7 , smaldrs, 0xffffffffd1fa21af, 0xffffffff, 0x80000000 , 48); 
TEST_RR_OP64_OO( 8 , smaldrs, 0xffffffffd1fa21af, 0x00000000, 0x80000000 , 56); 
TEST_RR_OP64_OO( 9 , smaldrs, 0xffffffffd1fa21af, 0x00000000, 0x00000000 , 64); 
TEST_RR_OP64_OO( 10 , smaldrs, 0xffffffff91fa21af, 0x80000000, 0x80000000 , 72); 
TEST_RR_OP64_OO( 11 , smaldrs, 0xffffffff91fa21af, 0x00000000, 0x00000000 , 80); 
TEST_RR_OP64_OO( 12 , smaldrs, 0xffffffff91fa21af, 0x00000000, 0xe4c94379 , 88); 
TEST_RR_OP64_OO( 13 , smaldrs, 0xffffffff5b8621af, 0x93185073, 0x80000000 , 96); 
TEST_RR_OP64_OO( 14 , smaldrs, 0xffffffff5b8621af, 0x80000000, 0x00000000 , 104); 
TEST_RR_OP64_OO( 15 , smaldrs, 0xffffffff5b868b92, 0xffffffff, 0x5864ee81 , 112); 
TEST_RR_OP64_OO( 16 , smaldrs, 0xffffffff5b868b92, 0xffffffff, 0xffffffff , 120); 
TEST_RR_OP64_OO( 17 , smaldrs, 0xffffffff85860b92, 0x53ffd086, 0x80000000 , 128); 
TEST_RR_OP64_OO( 18 , smaldrs, 0xffffffff85860b92, 0x00000000, 0xffffffff , 136); 
TEST_RR_OP64_OO( 19 , smaldrs, 0xffffffff85860b92, 0xffffffff, 0xffffffff , 144); 
TEST_RR_OP64_OO( 20 , smaldrs, 0xffffffff8585b63b, 0x9eddf434, 0xffffffff , 152); 
TEST_RR_OP64_OO( 21 , smaldrs, 0xffffffff8585b63b, 0x00000000, 0xb798e60b , 160); 
TEST_RR_OP64_OO( 22 , smaldrs, 0xffffffff4585b63b, 0x80000000, 0x80000000 , 168); 
TEST_RR_OP64_OO( 23 , smaldrs, 0xffffffff34efb63b, 0x80000000, 0xded49dd2 , 176); 
TEST_RR_OP64_OO( 24 , smaldrs, 0xffffffff1c0c4ea4, 0xb82f73c3, 0x3108aa8b , 184); 
TEST_RR_OP64_OO( 25 , smaldrs, 0xffffffff1c0c4ea4, 0x00000000, 0x80000000 , 192); 
TEST_RR_OP64_OO( 26 , smaldrs, 0xffffffff1c0c4ea4, 0xffffffff, 0x00000000 , 200); 
TEST_RR_OP64_OO( 27 , smaldrs, 0xffffffff1c0c4ea4, 0x00000000, 0x80000000 , 208); 
TEST_RR_OP64_OO( 28 , smaldrs, 0xffffffff1c0c4ea4, 0x00000000, 0x00000000 , 216); 
TEST_RR_OP64_OO( 29 , smaldrs, 0xfffffffedc0c4ea4, 0x80000000, 0x80000000 , 224); 
TEST_RR_OP64_OO( 30 , smaldrs, 0xfffffffeab984ea4, 0x9f18e7ae, 0x80000000 , 232); 
TEST_RR_OP64_OO( 31 , smaldrs, 0xfffffffeab97cea4, 0x80000000, 0xffffffff , 240); 
TEST_RR_OP64_OO( 32 , smaldrs, 0xfffffffe8189cea4, 0x80000000, 0xabe4401a , 248); 
TEST_RR_OP64_OO( 33 , smaldrs, 0xfffffffe8189cea4, 0x00000000, 0xffffffff , 256); 
TEST_RR_OP64_OO( 34 , smaldrs, 0xfffffffe8189cea4, 0x00000000, 0x00000000 , 264); 
TEST_RR_OP64_OO( 35 , smaldrs, 0xfffffffe8189cea4, 0xffffffff, 0x00000000 , 272); 
TEST_RR_OP64_OO( 36 , smaldrs, 0xfffffffe9c524ea4, 0x80000000, 0x359144ee , 280); 
TEST_RR_OP64_OO( 37 , smaldrs, 0xfffffffe9c51cea4, 0xffffffff, 0x80000000 , 288); 
TEST_RR_OP64_OO( 38 , smaldrs, 0xfffffffe9c51cea4, 0x80000000, 0x00000000 , 296); 
TEST_RR_OP64_OO( 39 , smaldrs, 0xfffffffe8d994ea4, 0xe28f2cbb, 0x80000000 , 304); 
TEST_RR_OP64_OO( 40 , smaldrs, 0xfffffffe8d994ea4, 0xffffffff, 0xffffffff , 312); 
TEST_RR_OP64_OO( 41 , smaldrs, 0xfffffffe8d994ea4, 0x00000000, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , smaldrs, 0xfffffffe8d994ea4, 0x00000000, 0x80000000 , 328); 
TEST_RR_OP64_OO( 43 , smaldrs, 0xfffffffe8d98cea4, 0xffffffff, 0x80000000 , 336); 
TEST_RR_OP64_OO( 44 , smaldrs, 0xfffffffe8d984ea4, 0xffffffff, 0x80000000 , 344); 
TEST_RR_OP64_OO( 45 , smaldrs, 0xfffffffe8d97cea4, 0xffffffff, 0x80000000 , 352); 
TEST_RR_OP64_OO( 46 , smaldrs, 0xfffffffe8d97cea4, 0x00000000, 0xffffffff , 360); 
TEST_RR_OP64_OO( 47 , smaldrs, 0xfffffffe7315cea4, 0x80000000, 0xcafc059d , 368); 
TEST_RR_OP64_OO( 48 , smaldrs, 0xfffffffe73154ea4, 0x80000000, 0xffffffff , 376); 
TEST_RR_OP64_OO( 49 , smaldrs, 0xfffffffe73154ea4, 0x00000000, 0x00000000 , 384); 
TEST_RR_OP64_OO( 50 , smaldrs, 0xfffffffe75763280, 0xc17392a5, 0x694136a3 , 392); 
TEST_RR_OP64_OO( 51 , smaldrs, 0xfffffffe75763280, 0xec643cd7, 0x00000000 , 400); 
TEST_RR_OP64_OO( 52 , smaldrs, 0xfffffffe7575b280, 0x80000000, 0xffffffff , 408); 
TEST_RR_OP64_OO( 53 , smaldrs, 0xfffffffe75761293, 0xffffffff, 0x3383d370 , 416); 
TEST_RR_OP64_OO( 54 , smaldrs, 0xfffffffe75761293, 0x00000000, 0xffffffff , 424); 
TEST_RR_OP64_OO( 55 , smaldrs, 0xfffffffe75753761, 0xffffffff, 0x8fa66ad8 , 432); 
TEST_RR_OP64_OO( 56 , smaldrs, 0xfffffffe75753761, 0xffffffff, 0xffffffff , 440); 
TEST_RR_OP64_OO( 57 , smaldrs, 0xfffffffe75753761, 0xffffffff, 0x00000000 , 448); 
TEST_RR_OP64_OO( 58 , smaldrs, 0xfffffffe4cd9b761, 0xaec97c73, 0x80000000 , 456); 
TEST_RR_OP64_OO( 59 , smaldrs, 0xfffffffe4cd9b761, 0x00000000, 0xfd5573b6 , 464); 
TEST_RR_OP64_OO( 60 , smaldrs, 0xfffffffe47a13761, 0x80000000, 0xf58f9d2c , 472); 
TEST_RR_OP64_OO( 61 , smaldrs, 0xfffffffe47a13761, 0x00000000, 0x00000000 , 480); 
TEST_RR_OP64_OO( 62 , smaldrs, 0xfffffffe47a13761, 0x00000000, 0x00000000 , 488); 
TEST_RR_OP64_OO( 63 , smaldrs, 0xfffffffe47a13761, 0x00000000, 0xffffffff , 496); 
TEST_RR_OP64_OO( 64 , smaldrs, 0xfffffffe47a13761, 0x00000000, 0x18ea4dfc , 504); 
TEST_RR_OP64_OO( 65 , smaldrs, 0xfffffffe47a13761, 0x00000000, 0x80000000 , 512); 
TEST_RR_OP64_OO( 66 , smaldrs, 0xfffffffe47a1638b, 0x3abc0e92, 0xffffffff , 520); 
TEST_RR_OP64_OO( 67 , smaldrs, 0xfffffffe47a1638b, 0xb2ee691c, 0x00000000 , 528); 
TEST_RR_OP64_OO( 68 , smaldrs, 0xfffffffe47a1638b, 0x00000000, 0x13d0401b , 536); 
TEST_RR_OP64_OO( 69 , smaldrs, 0xfffffffe47a1638b, 0x00000000, 0xffffffff , 544); 
TEST_RR_OP64_OO( 70 , smaldrs, 0xfffffffe47a1638b, 0xffffffff, 0x00000000 , 552); 
TEST_RR_OP64_OO( 71 , smaldrs, 0xfffffffe247e638b, 0xb9ba57c6, 0x80000000 , 560); 
TEST_RR_OP64_OO( 72 , smaldrs, 0xfffffffe0d084f43, 0x2ba7ae4b, 0xaecc74e4 , 568); 
TEST_RR_OP64_OO( 73 , smaldrs, 0xfffffffe0d084f43, 0x00000000, 0xffffffff , 576); 
TEST_RR_OP64_OO( 74 , smaldrs, 0xfffffffe0d07cf43, 0xffffffff, 0x80000000 , 584); 
TEST_RR_OP64_OO( 75 , smaldrs, 0xfffffffdcd07cf43, 0x80000000, 0x80000000 , 592); 
TEST_RR_OP64_OO( 76 , smaldrs, 0xfffffffe01afcf43, 0x80000000, 0x6950fef8 , 600); 
TEST_RR_OP64_OO( 77 , smaldrs, 0xfffffffe01affcc9, 0xffffffff, 0x6ca23f1c , 608); 
TEST_RR_OP64_OO( 78 , smaldrs, 0xfffffffe01affcc9, 0x80000000, 0x00000000 , 616); 
TEST_RR_OP64_OO( 79 , smaldrs, 0xfffffffe01af7cc9, 0xffffffff, 0x80000000 , 624); 
TEST_RR_OP64_OO( 80 , smaldrs, 0xfffffffe110bfcc9, 0x1eb9c65e, 0x80000000 , 632); 
TEST_RR_OP64_OO( 81 , smaldrs, 0xfffffffe110bfcc9, 0xa7ed414b, 0x00000000 , 640); 
TEST_RR_OP64_OO( 82 , smaldrs, 0xfffffffe110bfcc9, 0x00000000, 0x53317f38 , 648); 
TEST_RR_OP64_OO( 83 , smaldrs, 0xfffffffe110be5fb, 0xffffffff, 0xe49dfb6b , 656); 
TEST_RR_OP64_OO( 84 , smaldrs, 0xfffffffe260965fb, 0x80000000, 0x29fb93ac , 664); 
TEST_RR_OP64_OO( 85 , smaldrs, 0xfffffffe260965fb, 0xffffffff, 0x00000000 , 672); 
TEST_RR_OP64_OO( 86 , smaldrs, 0xfffffffe260965fb, 0x00000000, 0xffffffff , 680); 
TEST_RR_OP64_OO( 87 , smaldrs, 0xfffffffe10ee04dd, 0xd7e7c92c, 0x1d0277c4 , 688); 
TEST_RR_OP64_OO( 88 , smaldrs, 0xfffffffe0f7ab0cc, 0x28c5e517, 0xc34a69c7 , 696); 
TEST_RR_OP64_OO( 89 , smaldrs, 0xfffffffe0f7ab0cc, 0x675418ce, 0x00000000 , 704); 
TEST_RR_OP64_OO( 90 , smaldrs, 0xfffffffe0f7ab0cc, 0x1f714e21, 0x00000000 , 712); 
TEST_RR_OP64_OO( 91 , smaldrs, 0xfffffffe0f7ab0cc, 0x00000000, 0x7ea422f2 , 720); 
TEST_RR_OP64_OO( 92 , smaldrs, 0xfffffffe0f7ab0cc, 0xffffffff, 0x00000000 , 728); 
TEST_RR_OP64_OO( 93 , smaldrs, 0xfffffffdcf7ab0cc, 0x80000000, 0x80000000 , 736); 
TEST_RR_OP64_OO( 94 , smaldrs, 0xfffffffdcf7ab0cc, 0x790562ca, 0x00000000 , 744); 
TEST_RR_OP64_OO( 95 , smaldrs, 0xfffffffdcf7a30cc, 0x80000000, 0xffffffff , 752); 
TEST_RR_OP64_OO( 96 , smaldrs, 0xfffffffdcf7a30cc, 0x00000000, 0xffffffff , 760); 
TEST_RR_OP64_OO( 97 , smaldrs, 0xfffffffdc7e7e524, 0xc2a077d8, 0x6272bd69 , 768); 
TEST_RR_OP64_OO( 98 , smaldrs, 0xfffffffd87e7e524, 0x80000000, 0x80000000 , 776); 
TEST_RR_OP64_OO( 99 , smaldrs, 0xfffffffd47e7e524, 0x80000000, 0x80000000 , 784); 
TEST_RR_OP64_OO( 100 , smaldrs, 0xfffffffd47e76524, 0xffffffff, 0x80000000 , 792); 
TEST_RR_OP64_OO( 101 , smaldrs, 0xfffffffd47e76524, 0xffffffff, 0x00000000 , 800); 
TEST_RR_OP64_OO( 102 , smaldrs, 0xfffffffd47e76524, 0x00000000, 0x80000000 , 808); 
TEST_RR_OP64_OO( 103 , smaldrs, 0xfffffffd47e76524, 0x00000000, 0xffffffff , 816); 
TEST_RR_OP64_OO( 104 , smaldrs, 0xfffffffd07e76524, 0x80000000, 0x80000000 , 824); 
TEST_RR_OP64_OO( 105 , smaldrs, 0xfffffffd07e76524, 0x00000000, 0x80000000 , 832); 
TEST_RR_OP64_OO( 106 , smaldrs, 0xfffffffd07e76524, 0x80000000, 0x00000000 , 840); 
TEST_RR_OP64_OO( 107 , smaldrs, 0xfffffffd07e76524, 0x9e1509a8, 0x00000000 , 848); 
TEST_RR_OP64_OO( 108 , smaldrs, 0xfffffffcc7e76524, 0x80000000, 0x80000000 , 856); 
TEST_RR_OP64_OO( 109 , smaldrs, 0xfffffffcce97091c, 0x1bc37280, 0x52d82309 , 864); 
TEST_RR_OP64_OO( 110 , smaldrs, 0xfffffffcce97091c, 0x00000000, 0x00000000 , 872); 
TEST_RR_OP64_OO( 111 , smaldrs, 0xfffffffcce97091c, 0xffffffff, 0x00000000 , 880); 
TEST_RR_OP64_OO( 112 , smaldrs, 0xfffffffcce97091c, 0xffffffff, 0x00000000 , 888); 
TEST_RR_OP64_OO( 113 , smaldrs, 0xfffffffcd48e091c, 0x0bee9ca4, 0x80000000 , 896); 
TEST_RR_OP64_OO( 114 , smaldrs, 0xfffffffcd48d891c, 0x80000000, 0xffffffff , 904); 
TEST_RR_OP64_OO( 115 , smaldrs, 0xfffffffcd48d891c, 0x00000000, 0x00000000 , 912); 
TEST_RR_OP64_OO( 116 , smaldrs, 0xfffffffcd48d891c, 0xffffffff, 0xffffffff , 920); 
TEST_RR_OP64_OO( 117 , smaldrs, 0xfffffffc948d891c, 0x80000000, 0x80000000 , 928); 
TEST_RR_OP64_OO( 118 , smaldrs, 0xfffffffc948cf182, 0xffffffff, 0x94312bcb , 936); 
TEST_RR_OP64_OO( 119 , smaldrs, 0xfffffffc948cf182, 0xffffffff, 0xffffffff , 944); 
TEST_RR_OP64_OO( 120 , smaldrs, 0xfffffffc548cf182, 0x80000000, 0x80000000 , 952); 
TEST_RR_OP64_OO( 121 , smaldrs, 0xfffffffc548cd5aa, 0xffffffff, 0x40a25c7a , 960); 
TEST_RR_OP64_OO( 122 , smaldrs, 0xfffffffc7ba77149, 0x7239d6d7, 0xb405dfa4 , 968); 
TEST_RR_OP64_OO( 123 , smaldrs, 0xfffffffc7ba77149, 0xffffffff, 0x00000000 , 976); 
TEST_RR_OP64_OO( 124 , smaldrs, 0xfffffffc7ba6f149, 0x80000000, 0xffffffff , 984); 
TEST_RR_OP64_OO( 125 , smaldrs, 0xfffffffc7ba6f149, 0xffffffff, 0xffffffff , 992); 
TEST_RR_OP64_OO( 126 , smaldrs, 0xfffffffc7ba6f149, 0xffffffff, 0x00000000 , 1000); 
TEST_RR_OP64_OO( 127 , smaldrs, 0xfffffffc7ba6f149, 0xffffffff, 0xffffffff , 1008); 
TEST_RR_OP64_OO( 128 , smaldrs, 0xfffffffc66f3b079, 0x9810d310, 0xb60bcade , 1016); 
TEST_RR_OP64_OO( 129 , smaldrs, 0xfffffffc26f3b079, 0x80000000, 0x80000000 , 1024); 
TEST_RR_OP64_OO( 130 , smaldrs, 0xfffffffc26f33079, 0x80000000, 0xffffffff , 1032); 
TEST_RR_OP64_OO( 131 , smaldrs, 0xfffffffc26f33079, 0x80000000, 0x00000000 , 1040); 
TEST_RR_OP64_OO( 132 , smaldrs, 0xfffffffc26f338b1, 0xffffffff, 0x258a1d52 , 1048); 
TEST_RR_OP64_OO( 133 , smaldrs, 0xfffffffc26f2b8b1, 0xffffffff, 0x80000000 , 1056); 
TEST_RR_OP64_OO( 134 , smaldrs, 0xfffffffc26f2b8b1, 0x00000000, 0x80000000 , 1064); 
TEST_RR_OP64_OO( 135 , smaldrs, 0xfffffffc08c38ccb, 0x32cccfe6, 0x26a977d1 , 1072); 
TEST_RR_OP64_OO( 136 , smaldrs, 0xfffffffc08c30ccb, 0xffffffff, 0x80000000 , 1080); 
TEST_RR_OP64_OO( 137 , smaldrs, 0xfffffffc08c2f509, 0xffffffff, 0x30af4871 , 1088); 
TEST_RR_OP64_OO( 138 , smaldrs, 0xfffffffc08c2f509, 0xffffffff, 0x00000000 , 1096); 
TEST_RR_OP64_OO( 139 , smaldrs, 0xfffffffc08c2f509, 0x00000000, 0x00000000 , 1104); 
TEST_RR_OP64_OO( 140 , smaldrs, 0xfffffffc08c28597, 0xffffffff, 0x00d8704a , 1112); 
TEST_RR_OP64_OO( 141 , smaldrs, 0xfffffffbc8c28597, 0x80000000, 0x80000000 , 1120); 
TEST_RR_OP64_OO( 142 , smaldrs, 0xfffffffbc8c28597, 0x80000000, 0x00000000 , 1128); 
TEST_RR_OP64_OO( 143 , smaldrs, 0xfffffffbc8c28597, 0x00000000, 0x0cc0ab52 , 1136); 
TEST_RR_OP64_OO( 144 , smaldrs, 0xfffffffbc8c28597, 0x80000000, 0x00000000 , 1144); 
TEST_RR_OP64_OO( 145 , smaldrs, 0xfffffffbd0c6caca, 0xf5aa11f5, 0x521f4305 , 1152); 
TEST_RR_OP64_OO( 146 , smaldrs, 0xfffffffbd0c6caca, 0x80000000, 0x00000000 , 1160); 
TEST_RR_OP64_OO( 147 , smaldrs, 0xfffffffbd0c6caca, 0x80000000, 0x00000000 , 1168); 
TEST_RR_OP64_OO( 148 , smaldrs, 0xfffffffbd0c6caca, 0x00000000, 0x43353859 , 1176); 
TEST_RR_OP64_OO( 149 , smaldrs, 0xfffffffbd0c6caca, 0xffffffff, 0x00000000 , 1184); 
TEST_RR_OP64_OO( 150 , smaldrs, 0xfffffffbd0c6caca, 0x00000000, 0xffffffff , 1192); 
TEST_RR_OP64_OO( 151 , smaldrs, 0xfffffffb99a84aca, 0x91c3f926, 0x80000000 , 1200); 
TEST_RR_OP64_OO( 152 , smaldrs, 0xfffffffb99a84aca, 0x6802e20e, 0x00000000 , 1208); 
TEST_RR_OP64_OO( 153 , smaldrs, 0xfffffffb99a84aca, 0x00000000, 0x00000000 , 1216); 
TEST_RR_OP64_OO( 154 , smaldrs, 0xfffffffb99a84aca, 0x00000000, 0x80000000 , 1224); 
TEST_RR_OP64_OO( 155 , smaldrs, 0xfffffffb99a84aca, 0x00000000, 0xab04f2d8 , 1232); 
TEST_RR_OP64_OO( 156 , smaldrs, 0xfffffffb99a84aca, 0x00000000, 0x80000000 , 1240); 
TEST_RR_OP64_OO( 157 , smaldrs, 0xfffffffb59a84aca, 0x80000000, 0x80000000 , 1248); 
TEST_RR_OP64_OO( 158 , smaldrs, 0xfffffffb59a84aca, 0x39980b0b, 0x00000000 , 1256); 
TEST_RR_OP64_OO( 159 , smaldrs, 0xfffffffb58e7f942, 0x9a9418ba, 0xf3982b1c , 1264); 
TEST_RR_OP64_OO( 160 , smaldrs, 0xfffffffb58e7f942, 0x80000000, 0x00000000 , 1272); 
TEST_RR_OP64_OO( 161 , smaldrs, 0xfffffffb6a1c19c7, 0xc6b432fb, 0x2b962567 , 1280); 
TEST_RR_OP64_OO( 162 , smaldrs, 0xfffffffb6a1c19c7, 0x00000000, 0xffffffff , 1288); 
TEST_RR_OP64_OO( 163 , smaldrs, 0xfffffffb6a1b99c7, 0x80000000, 0xffffffff , 1296); 
TEST_RR_OP64_OO( 164 , smaldrs, 0xfffffffb545d99c7, 0x80000000, 0xd484f35c , 1304); 
TEST_RR_OP64_OO( 165 , smaldrs, 0xfffffffb545d99c7, 0x00000000, 0x00000000 , 1312); 
TEST_RR_OP64_OO( 166 , smaldrs, 0xfffffffb545d99c7, 0x00000000, 0xffffffff , 1320); 
TEST_RR_OP64_OO( 167 , smaldrs, 0xfffffffb545d99c7, 0x80000000, 0x00000000 , 1328); 
TEST_RR_OP64_OO( 168 , smaldrs, 0xfffffffb62273e46, 0x11157efd, 0xc06b133e , 1336); 
TEST_RR_OP64_OO( 169 , smaldrs, 0xfffffffb62273e46, 0x00000000, 0x80000000 , 1344); 
TEST_RR_OP64_OO( 170 , smaldrs, 0xfffffffb6226be46, 0x80000000, 0xffffffff , 1352); 
TEST_RR_OP64_OO( 171 , smaldrs, 0xfffffffb66453e46, 0x083dfed8, 0x80000000 , 1360); 
TEST_RR_OP64_OO( 172 , smaldrs, 0xfffffffb66453e46, 0x00000000, 0x00000000 , 1368); 
TEST_RR_OP64_OO( 173 , smaldrs, 0xfffffffb66453e46, 0x00000000, 0x80000000 , 1376); 
TEST_RR_OP64_OO( 174 , smaldrs, 0xfffffffb6645cda1, 0x6763d808, 0xffffffff , 1384); 
TEST_RR_OP64_OO( 175 , smaldrs, 0xfffffffb6646a4ac, 0xffffffff, 0x5b0d8402 , 1392); 
TEST_RR_OP64_OO( 176 , smaldrs, 0xfffffffb6646a4ac, 0x80000000, 0x00000000 , 1400); 
TEST_RR_OP64_OO( 177 , smaldrs, 0xfffffffb664624ac, 0xffffffff, 0x80000000 , 1408); 
TEST_RR_OP64_OO( 178 , smaldrs, 0xfffffffb664624ac, 0x00000000, 0xffffffff , 1416); 
TEST_RR_OP64_OO( 179 , smaldrs, 0xfffffffb664610ec, 0xffffffff, 0x9990ad50 , 1424); 
TEST_RR_OP64_OO( 180 , smaldrs, 0xfffffffb741110ec, 0x1b967c3a, 0x80000000 , 1432); 
TEST_RR_OP64_OO( 181 , smaldrs, 0xfffffffb741110ec, 0x00000000, 0x6fc827b3 , 1440); 
TEST_RR_OP64_OO( 182 , smaldrs, 0xfffffffb741110ec, 0x80000000, 0x00000000 , 1448); 
TEST_RR_OP64_OO( 183 , smaldrs, 0xfffffffb741110ec, 0xffffffff, 0xffffffff , 1456); 
TEST_RR_OP64_OO( 184 , smaldrs, 0xfffffffb741110ec, 0x80000000, 0x00000000 , 1464); 
TEST_RR_OP64_OO( 185 , smaldrs, 0xfffffffb741090ec, 0x80000000, 0xffffffff , 1472); 
TEST_RR_OP64_OO( 186 , smaldrs, 0xfffffffb741090ec, 0xffffffff, 0xffffffff , 1480); 
TEST_RR_OP64_OO( 187 , smaldrs, 0xfffffffb3b4f10ec, 0x80000000, 0x8e7dc782 , 1488); 
TEST_RR_OP64_OO( 188 , smaldrs, 0xfffffffb3b4e90ec, 0x80000000, 0xffffffff , 1496); 
TEST_RR_OP64_OO( 189 , smaldrs, 0xfffffffb3b4e867e, 0xffffffff, 0xce0ad878 , 1504); 
TEST_RR_OP64_OO( 190 , smaldrs, 0xfffffffafb4e867e, 0x80000000, 0x80000000 , 1512); 
TEST_RR_OP64_OO( 191 , smaldrs, 0xfffffffafb4e067e, 0xffffffff, 0x80000000 , 1520); 
TEST_RR_OP64_OO( 192 , smaldrs, 0xfffffffad870067e, 0x80000000, 0xba44f693 , 1528); 
TEST_RR_OP64_OO( 193 , smaldrs, 0xfffffffad870067e, 0x00000000, 0x80000000 , 1536); 
TEST_RR_OP64_OO( 194 , smaldrs, 0xfffffffad870067e, 0xffffffff, 0x00000000 , 1544); 
TEST_RR_OP64_OO( 195 , smaldrs, 0xfffffffad870067e, 0xffffffff, 0xffffffff , 1552); 
TEST_RR_OP64_OO( 196 , smaldrs, 0xfffffffad870067e, 0x80000000, 0x00000000 , 1560); 
TEST_RR_OP64_OO( 197 , smaldrs, 0xfffffffad870067e, 0xffffffff, 0xffffffff , 1568); 
TEST_RR_OP64_OO( 198 , smaldrs, 0xfffffffaed076413, 0x913223fb, 0x400acd4b , 1576); 
TEST_RR_OP64_OO( 199 , smaldrs, 0xfffffffac57e6413, 0xb0ee2d6a, 0x80000000 , 1584); 

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
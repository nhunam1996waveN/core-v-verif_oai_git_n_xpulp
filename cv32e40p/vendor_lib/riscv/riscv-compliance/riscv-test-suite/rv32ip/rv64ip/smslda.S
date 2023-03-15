# See LICENSE for license details.
#*****************************************************************************
# smslda.S
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

TEST_RR_OP64_OO( 2 , smslda, 0x00000000019e0000, 0x80000000, 0x033cbae1 , 8); 
TEST_RR_OP64_OO( 3 , smslda, 0x00000000019e0000, 0x80000000, 0x00000000 , 16); 
TEST_RR_OP64_OO( 4 , smslda, 0x00000000019e0000, 0x00000000, 0x00000000 , 24); 
TEST_RR_OP64_OO( 5 , smslda, 0x00000000019e0000, 0x00000000, 0x00000000 , 32); 
TEST_RR_OP64_OO( 6 , smslda, 0x00000000019df7c9, 0xd02927a0, 0xffffffff , 40); 
TEST_RR_OP64_OO( 7 , smslda, 0x00000000019df7c9, 0xffffffff, 0x00000000 , 48); 
TEST_RR_OP64_OO( 8 , smslda, 0x00000000019d77c9, 0x80000000, 0xffffffff , 56); 
TEST_RR_OP64_OO( 9 , smslda, 0xffffffffc19d77c9, 0x80000000, 0x80000000 , 64); 
TEST_RR_OP64_OO( 10 , smslda, 0xffffffffc19cf7c9, 0x80000000, 0xffffffff , 72); 
TEST_RR_OP64_OO( 11 , smslda, 0xffffffffc19cf7c7, 0xffffffff, 0xffffffff , 80); 
TEST_RR_OP64_OO( 12 , smslda, 0xffffffffc19c77c7, 0x80000000, 0xffffffff , 88); 
TEST_RR_OP64_OO( 13 , smslda, 0xffffffffc19bf7c7, 0x80000000, 0xffffffff , 96); 
TEST_RR_OP64_OO( 14 , smslda, 0xffffffffc19bf7c7, 0x806ffbd7, 0x00000000 , 104); 
TEST_RR_OP64_OO( 15 , smslda, 0xffffffff93268721, 0x7dc2c117, 0x5eaf0038 , 112); 
TEST_RR_OP64_OO( 16 , smslda, 0xffffffff93268721, 0xffffffff, 0x00000000 , 120); 
TEST_RR_OP64_OO( 17 , smslda, 0xffffffff7db88721, 0xd524618f, 0x80000000 , 128); 
TEST_RR_OP64_OO( 18 , smslda, 0xffffffff7db80721, 0x80000000, 0xffffffff , 136); 
TEST_RR_OP64_OO( 19 , smslda, 0xffffffff7db80721, 0x80000000, 0x00000000 , 144); 
TEST_RR_OP64_OO( 20 , smslda, 0xffffffff7db8071f, 0xffffffff, 0xffffffff , 152); 
TEST_RR_OP64_OO( 21 , smslda, 0xffffffff7db7871f, 0xffffffff, 0x80000000 , 160); 
TEST_RR_OP64_OO( 22 , smslda, 0xffffffff7db7871f, 0x00000000, 0x00000000 , 168); 
TEST_RR_OP64_OO( 23 , smslda, 0xffffffff7db7871f, 0x00000000, 0x80000000 , 176); 
TEST_RR_OP64_OO( 24 , smslda, 0xffffffff6efe49f4, 0x8e90c9d3, 0xc1163e29 , 184); 
TEST_RR_OP64_OO( 25 , smslda, 0xffffffff3b3649f4, 0x987091af, 0x80000000 , 192); 
TEST_RR_OP64_OO( 26 , smslda, 0xffffffff3b3649f4, 0x00000000, 0xb5a057fe , 200); 
TEST_RR_OP64_OO( 27 , smslda, 0xffffffff1c7cc9f4, 0xc28daa2b, 0x80000000 , 208); 
TEST_RR_OP64_OO( 28 , smslda, 0xffffffff1c7cc9f4, 0xffffffff, 0x00000000 , 216); 
TEST_RR_OP64_OO( 29 , smslda, 0xffffffff1c7cc9f4, 0x6875f416, 0x00000000 , 224); 
TEST_RR_OP64_OO( 30 , smslda, 0xffffffff1c7cc9f4, 0x00000000, 0x80000000 , 232); 
TEST_RR_OP64_OO( 31 , smslda, 0xffffffff1c7cc9f4, 0xffffffff, 0x00000000 , 240); 
TEST_RR_OP64_OO( 32 , smslda, 0xffffffff1c7cbce1, 0xffffffff, 0xa1955158 , 248); 
TEST_RR_OP64_OO( 33 , smslda, 0xffffffff1c7c76ab, 0xffffffff, 0x1429a5a1 , 256); 
TEST_RR_OP64_OO( 34 , smslda, 0xffffffff1c7c76ab, 0xffffffff, 0x00000000 , 264); 
TEST_RR_OP64_OO( 35 , smslda, 0xffffffff1c7c76ab, 0xb6329854, 0x00000000 , 272); 
TEST_RR_OP64_OO( 36 , smslda, 0xffffffff1c7c76ab, 0x00000000, 0xcc3ea42e , 280); 
TEST_RR_OP64_OO( 37 , smslda, 0xfffffffefe153b9c, 0xa8294c96, 0xa54ffd9c , 288); 
TEST_RR_OP64_OO( 38 , smslda, 0xffffffff0b48bb9c, 0x1a6770bf, 0x80000000 , 296); 
TEST_RR_OP64_OO( 39 , smslda, 0xffffffff0b483b9c, 0x80000000, 0xffffffff , 304); 
TEST_RR_OP64_OO( 40 , smslda, 0xfffffffef6e2bb9c, 0xd7359cfc, 0x80000000 , 312); 
TEST_RR_OP64_OO( 41 , smslda, 0xfffffffef6e2bb9c, 0x621b5f71, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , smslda, 0xfffffffef6e2bb9c, 0x80000000, 0x00000000 , 328); 
TEST_RR_OP64_OO( 43 , smslda, 0xfffffffef6e2bb9c, 0x00000000, 0x00000000 , 336); 
TEST_RR_OP64_OO( 44 , smslda, 0xfffffffef6e2bb9c, 0x00000000, 0xffffffff , 344); 
TEST_RR_OP64_OO( 45 , smslda, 0xfffffffef6e2bb9c, 0x00000000, 0x00000000 , 352); 
TEST_RR_OP64_OO( 46 , smslda, 0xfffffffeb6e2bb9c, 0x80000000, 0x80000000 , 360); 
TEST_RR_OP64_OO( 47 , smslda, 0xfffffffeaddb3dc2, 0xbf0acad0, 0xd779060a , 368); 
TEST_RR_OP64_OO( 48 , smslda, 0xfffffffe6ddb3dc2, 0x80000000, 0x80000000 , 376); 
TEST_RR_OP64_OO( 49 , smslda, 0xfffffffe4d92bdc2, 0xbf6fa323, 0x80000000 , 384); 
TEST_RR_OP64_OO( 50 , smslda, 0xfffffffe4d92bdc2, 0x00000000, 0xcd6ed4cf , 392); 
TEST_RR_OP64_OO( 51 , smslda, 0xfffffffe4d92bdc2, 0x00000000, 0xb1c2108c , 400); 
TEST_RR_OP64_OO( 52 , smslda, 0xfffffffe4d9219b7, 0xffffffff, 0xa242b9b3 , 408); 
TEST_RR_OP64_OO( 53 , smslda, 0xfffffffe4d9199b7, 0x80000000, 0xffffffff , 416); 
TEST_RR_OP64_OO( 54 , smslda, 0xfffffffe4d9199b7, 0xffffffff, 0x00000000 , 424); 
TEST_RR_OP64_OO( 55 , smslda, 0xfffffffe4d9119b7, 0x80000000, 0xffffffff , 432); 
TEST_RR_OP64_OO( 56 , smslda, 0xfffffffe4d9099b7, 0x80000000, 0xffffffff , 440); 
TEST_RR_OP64_OO( 57 , smslda, 0xfffffffe4d9099b5, 0xffffffff, 0xffffffff , 448); 
TEST_RR_OP64_OO( 58 , smslda, 0xfffffffe4d9099b5, 0x00000000, 0xffffffff , 456); 
TEST_RR_OP64_OO( 59 , smslda, 0xfffffffe4d9099b5, 0xffffffff, 0x00000000 , 464); 
TEST_RR_OP64_OO( 60 , smslda, 0xfffffffe0d9099b5, 0x80000000, 0x80000000 , 472); 
TEST_RR_OP64_OO( 61 , smslda, 0xfffffffe0d90837c, 0xffffffff, 0xd83b118c , 480); 
TEST_RR_OP64_OO( 62 , smslda, 0xfffffffe0d90037c, 0xffffffff, 0x80000000 , 488); 
TEST_RR_OP64_OO( 63 , smslda, 0xfffffffe0d90037c, 0xffffffff, 0x00000000 , 496); 
TEST_RR_OP64_OO( 64 , smslda, 0xfffffffe0d90037c, 0x80000000, 0x00000000 , 504); 
TEST_RR_OP64_OO( 65 , smslda, 0xfffffffe0d8f837c, 0x80000000, 0xffffffff , 512); 
TEST_RR_OP64_OO( 66 , smslda, 0xfffffffe0d8f10c8, 0xffffffff, 0xbdcdcf7f , 520); 
TEST_RR_OP64_OO( 67 , smslda, 0xfffffffdcd8f10c8, 0x80000000, 0x80000000 , 528); 
TEST_RR_OP64_OO( 68 , smslda, 0xfffffffdcd8f0bf0, 0x085ff2c9, 0xffffffff , 536); 
TEST_RR_OP64_OO( 69 , smslda, 0xfffffffdcd8f0bee, 0xffffffff, 0xffffffff , 544); 
TEST_RR_OP64_OO( 70 , smslda, 0xfffffffdcd8f5f3a, 0xffffffff, 0x133b4011 , 552); 
TEST_RR_OP64_OO( 71 , smslda, 0xfffffffdcd8f5f3a, 0xfa4f1a03, 0x00000000 , 560); 
TEST_RR_OP64_OO( 72 , smslda, 0xfffffffdcd8f5f3a, 0x00000000, 0x00000000 , 568); 
TEST_RR_OP64_OO( 73 , smslda, 0xfffffffdcd8edf3a, 0x80000000, 0xffffffff , 576); 
TEST_RR_OP64_OO( 74 , smslda, 0xfffffffdcd8edf3a, 0x00000000, 0x7c512fcc , 584); 
TEST_RR_OP64_OO( 75 , smslda, 0xfffffffdcd8edf3a, 0x80000000, 0x00000000 , 592); 
TEST_RR_OP64_OO( 76 , smslda, 0xfffffffdcd8edf3a, 0x16cb317d, 0x00000000 , 600); 
TEST_RR_OP64_OO( 77 , smslda, 0xfffffffdcd8edf3a, 0x80000000, 0x00000000 , 608); 
TEST_RR_OP64_OO( 78 , smslda, 0xfffffffde614df3a, 0x310c6301, 0x80000000 , 616); 
TEST_RR_OP64_OO( 79 , smslda, 0xfffffffde614df3a, 0xde02e922, 0x00000000 , 624); 
TEST_RR_OP64_OO( 80 , smslda, 0xfffffffde614df3a, 0x3ae5e008, 0x00000000 , 632); 
TEST_RR_OP64_OO( 81 , smslda, 0xfffffffde614df3a, 0x80000000, 0x00000000 , 640); 
TEST_RR_OP64_OO( 82 , smslda, 0xfffffffde614fc4b, 0xf3a92968, 0xffffffff , 648); 
TEST_RR_OP64_OO( 83 , smslda, 0xfffffffde614fc4b, 0x00000000, 0x80000000 , 656); 
TEST_RR_OP64_OO( 84 , smslda, 0xfffffffde614baae, 0xffffffff, 0x369d87c6 , 664); 
TEST_RR_OP64_OO( 85 , smslda, 0xfffffffda614baae, 0x80000000, 0x80000000 , 672); 
TEST_RR_OP64_OO( 86 , smslda, 0xfffffffda61452ad, 0xffffffff, 0xede6aa19 , 680); 
TEST_RR_OP64_OO( 87 , smslda, 0xfffffffda61452ad, 0x00000000, 0x80000000 , 688); 
TEST_RR_OP64_OO( 88 , smslda, 0xfffffffda61452ad, 0xffffffff, 0x00000000 , 696); 
TEST_RR_OP64_OO( 89 , smslda, 0xfffffffda61452ad, 0x00000000, 0xffffffff , 704); 
TEST_RR_OP64_OO( 90 , smslda, 0xfffffffda61452ad, 0x00000000, 0x00000000 , 712); 
TEST_RR_OP64_OO( 91 , smslda, 0xfffffffda613d2ad, 0x80000000, 0xffffffff , 720); 
TEST_RR_OP64_OO( 92 , smslda, 0xfffffffda8fcd2ad, 0x05d2cd79, 0x80000000 , 728); 
TEST_RR_OP64_OO( 93 , smslda, 0xfffffffda8fcd2ad, 0xea9d5e48, 0x00000000 , 736); 
TEST_RR_OP64_OO( 94 , smslda, 0xfffffffda8fcd2ad, 0x582ae791, 0x00000000 , 744); 
TEST_RR_OP64_OO( 95 , smslda, 0xfffffffdb8a552ad, 0x80000000, 0x1f5121cb , 752); 
TEST_RR_OP64_OO( 96 , smslda, 0xfffffffdb8a552ad, 0x00000000, 0xffffffff , 760); 
TEST_RR_OP64_OO( 97 , smslda, 0xfffffffd78a552ad, 0x80000000, 0x80000000 , 768); 
TEST_RR_OP64_OO( 98 , smslda, 0xfffffffd78a552ad, 0x00000000, 0xffffffff , 776); 
TEST_RR_OP64_OO( 99 , smslda, 0xfffffffd78a4d2ad, 0xffffffff, 0x80000000 , 784); 
TEST_RR_OP64_OO( 100 , smslda, 0xfffffffd78a4d2ad, 0x00000000, 0x80000000 , 792); 
TEST_RR_OP64_OO( 101 , smslda, 0xfffffffd78a4d2ad, 0xffffffff, 0x00000000 , 800); 
TEST_RR_OP64_OO( 102 , smslda, 0xfffffffd78a4b1ea, 0xffffffff, 0xe847f6f6 , 808); 
TEST_RR_OP64_OO( 103 , smslda, 0xfffffffd47cf31ea, 0x9e553518, 0x80000000 , 816); 
TEST_RR_OP64_OO( 104 , smslda, 0xfffffffd47ceb1ea, 0xffffffff, 0x80000000 , 824); 
TEST_RR_OP64_OO( 105 , smslda, 0xfffffffd47ceb1ea, 0x80000000, 0x00000000 , 832); 
TEST_RR_OP64_OO( 106 , smslda, 0xfffffffd47ce31ea, 0xffffffff, 0x80000000 , 840); 
TEST_RR_OP64_OO( 107 , smslda, 0xfffffffd47ce2c82, 0xffffffff, 0xae814c17 , 848); 
TEST_RR_OP64_OO( 108 , smslda, 0xfffffffd47cea543, 0xffffffff, 0x143a6487 , 856); 
TEST_RR_OP64_OO( 109 , smslda, 0xfffffffd47cdede4, 0xab809d21, 0xffffffff , 864); 
TEST_RR_OP64_OO( 110 , smslda, 0xfffffffd07cdede4, 0x80000000, 0x80000000 , 872); 
TEST_RR_OP64_OO( 111 , smslda, 0xfffffffd07cdede4, 0x00000000, 0xffffffff , 880); 
TEST_RR_OP64_OO( 112 , smslda, 0xfffffffd07cd6de4, 0x80000000, 0xffffffff , 888); 
TEST_RR_OP64_OO( 113 , smslda, 0xfffffffd07cd6de4, 0x80000000, 0x00000000 , 896); 
TEST_RR_OP64_OO( 114 , smslda, 0xfffffffd07cd6de4, 0x00000000, 0x00000000 , 904); 
TEST_RR_OP64_OO( 115 , smslda, 0xfffffffd07cd6de4, 0x80000000, 0x00000000 , 912); 
TEST_RR_OP64_OO( 116 , smslda, 0xfffffffd07cd6e74, 0xffffffff, 0x81037f8d , 920); 
TEST_RR_OP64_OO( 117 , smslda, 0xfffffffd07cd6e74, 0xffffffff, 0x00000000 , 928); 
TEST_RR_OP64_OO( 118 , smslda, 0xfffffffd07cd6e74, 0x00000000, 0xffffffff , 936); 
TEST_RR_OP64_OO( 119 , smslda, 0xfffffffd07cd6e74, 0x00000000, 0x80000000 , 944); 
TEST_RR_OP64_OO( 120 , smslda, 0xfffffffd07cd6e74, 0x6c48ad43, 0x00000000 , 952); 
TEST_RR_OP64_OO( 121 , smslda, 0xfffffffd07cd6e74, 0x00000000, 0x00000000 , 960); 
TEST_RR_OP64_OO( 122 , smslda, 0xfffffffd07cd76ca, 0x244ce40a, 0xffffffff , 968); 
TEST_RR_OP64_OO( 123 , smslda, 0xfffffffd07cd76ca, 0x00000000, 0x80000000 , 976); 
TEST_RR_OP64_OO( 124 , smslda, 0xfffffffd07ccf6ca, 0x80000000, 0xffffffff , 984); 
TEST_RR_OP64_OO( 125 , smslda, 0xfffffffd07ccf6ca, 0x00000000, 0x6033699b , 992); 
TEST_RR_OP64_OO( 126 , smslda, 0xfffffffd07ccf6ca, 0xf6762cf8, 0x00000000 , 1000); 
TEST_RR_OP64_OO( 127 , smslda, 0xfffffffd07ccf6ca, 0x00000000, 0x80000000 , 1008); 
TEST_RR_OP64_OO( 128 , smslda, 0xfffffffd07ccf6ca, 0x00000000, 0x80000000 , 1016); 
TEST_RR_OP64_OO( 129 , smslda, 0xfffffffd07ccf6ca, 0x00000000, 0xffffffff , 1024); 
TEST_RR_OP64_OO( 130 , smslda, 0xfffffffd07ccf6ca, 0x00000000, 0x00000000 , 1032); 
TEST_RR_OP64_OO( 131 , smslda, 0xfffffffd07cc4f57, 0xa597b2f6, 0xffffffff , 1040); 
TEST_RR_OP64_OO( 132 , smslda, 0xfffffffd23414f57, 0x80000000, 0x36ea3935 , 1048); 
TEST_RR_OP64_OO( 133 , smslda, 0xfffffffd23414f57, 0x80000000, 0x00000000 , 1056); 
TEST_RR_OP64_OO( 134 , smslda, 0xfffffffd23414f57, 0x00000000, 0x80000000 , 1064); 
TEST_RR_OP64_OO( 135 , smslda, 0xfffffffd223ba982, 0x43f16847, 0xa2d43f37 , 1072); 
TEST_RR_OP64_OO( 136 , smslda, 0xfffffffd223ba982, 0x00000000, 0x00000000 , 1080); 
TEST_RR_OP64_OO( 137 , smslda, 0xfffffffd223b2982, 0xffffffff, 0x80000000 , 1088); 
TEST_RR_OP64_OO( 138 , smslda, 0xfffffffd4444a982, 0x4413bb9a, 0x80000000 , 1096); 
TEST_RR_OP64_OO( 139 , smslda, 0xfffffffd44442982, 0x80000000, 0xffffffff , 1104); 
TEST_RR_OP64_OO( 140 , smslda, 0xfffffffd44444423, 0x5655c44c, 0xffffffff , 1112); 
TEST_RR_OP64_OO( 141 , smslda, 0xfffffffd44445324, 0x4214cced, 0xffffffff , 1120); 
TEST_RR_OP64_OO( 142 , smslda, 0xfffffffd44445324, 0x00000000, 0xf37af198 , 1128); 
TEST_RR_OP64_OO( 143 , smslda, 0xfffffffd7cf7ee01, 0xa0516b92, 0x7665e25f , 1136); 
TEST_RR_OP64_OO( 144 , smslda, 0xfffffffd7cf76e01, 0xffffffff, 0x80000000 , 1144); 
TEST_RR_OP64_OO( 145 , smslda, 0xfffffffd7cf6ee01, 0x80000000, 0xffffffff , 1152); 
TEST_RR_OP64_OO( 146 , smslda, 0xfffffffd7cf6edff, 0xffffffff, 0xffffffff , 1160); 
TEST_RR_OP64_OO( 147 , smslda, 0xfffffffd7cf6edff, 0x4648818f, 0x00000000 , 1168); 
TEST_RR_OP64_OO( 148 , smslda, 0xfffffffd7cf66dff, 0xffffffff, 0x80000000 , 1176); 
TEST_RR_OP64_OO( 149 , smslda, 0xfffffffd7cf61564, 0xdfe7c77e, 0xffffffff , 1184); 
TEST_RR_OP64_OO( 150 , smslda, 0xfffffffd7cf61564, 0xffffffff, 0x00000000 , 1192); 
TEST_RR_OP64_OO( 151 , smslda, 0xfffffffd6a079564, 0x80000000, 0xda236119 , 1200); 
TEST_RR_OP64_OO( 152 , smslda, 0xfffffffd6a071564, 0xffffffff, 0x80000000 , 1208); 
TEST_RR_OP64_OO( 153 , smslda, 0xfffffffd55541564, 0xd69ae14c, 0x80000000 , 1216); 
TEST_RR_OP64_OO( 154 , smslda, 0xfffffffd89dd9564, 0x691336dd, 0x80000000 , 1224); 
TEST_RR_OP64_OO( 155 , smslda, 0xfffffffd89dd1564, 0x80000000, 0xffffffff , 1232); 
TEST_RR_OP64_OO( 156 , smslda, 0xfffffffd89dd1564, 0x00000000, 0xffffffff , 1240); 
TEST_RR_OP64_OO( 157 , smslda, 0xfffffffd89dd1564, 0x7a00ce60, 0x00000000 , 1248); 
TEST_RR_OP64_OO( 158 , smslda, 0xfffffffd89dc9564, 0xffffffff, 0x80000000 , 1256); 
TEST_RR_OP64_OO( 159 , smslda, 0xfffffffd89dc9564, 0x00000000, 0x00000000 , 1264); 
TEST_RR_OP64_OO( 160 , smslda, 0xfffffffd89dc9564, 0x00000000, 0xffffffff , 1272); 
TEST_RR_OP64_OO( 161 , smslda, 0xfffffffd89dc1564, 0x80000000, 0xffffffff , 1280); 
TEST_RR_OP64_OO( 162 , smslda, 0xfffffffd89dc33f5, 0x2a5cf435, 0xffffffff , 1288); 
TEST_RR_OP64_OO( 163 , smslda, 0xfffffffd89dbb3f5, 0x80000000, 0xffffffff , 1296); 
TEST_RR_OP64_OO( 164 , smslda, 0xfffffffd89dbb3f5, 0x80000000, 0x00000000 , 1304); 
TEST_RR_OP64_OO( 165 , smslda, 0xfffffffd89dbb3f5, 0xffffffff, 0x00000000 , 1312); 
TEST_RR_OP64_OO( 166 , smslda, 0xfffffffd89dbb3f5, 0xffffffff, 0x00000000 , 1320); 
TEST_RR_OP64_OO( 167 , smslda, 0xfffffffd89dc1520, 0xffffffff, 0x7e46e2e5 , 1328); 
TEST_RR_OP64_OO( 168 , smslda, 0xfffffffd99739520, 0x1f2f9d36, 0x80000000 , 1336); 
TEST_RR_OP64_OO( 169 , smslda, 0xfffffffd99739520, 0x80000000, 0x00000000 , 1344); 
TEST_RR_OP64_OO( 170 , smslda, 0xfffffffd99739520, 0x00000000, 0xe50126d7 , 1352); 
TEST_RR_OP64_OO( 171 , smslda, 0xfffffffd99737ff5, 0xffffffff, 0xadf83cdd , 1360); 
TEST_RR_OP64_OO( 172 , smslda, 0xfffffffd99737ff5, 0x00000000, 0x00000000 , 1368); 
TEST_RR_OP64_OO( 173 , smslda, 0xfffffffd99737ff5, 0x00000000, 0x00000000 , 1376); 
TEST_RR_OP64_OO( 174 , smslda, 0xfffffffd99737ff5, 0x00000000, 0xffffffff , 1384); 
TEST_RR_OP64_OO( 175 , smslda, 0xfffffffdabef7ff5, 0x80000000, 0x24f8f0c6 , 1392); 
TEST_RR_OP64_OO( 176 , smslda, 0xfffffffdabef7ff5, 0x00000000, 0xa73b5341 , 1400); 
TEST_RR_OP64_OO( 177 , smslda, 0xfffffffdabef5c7b, 0xffffffff, 0x52d389b3 , 1408); 
TEST_RR_OP64_OO( 178 , smslda, 0xfffffffdabef5c7b, 0x00000000, 0x5363f9de , 1416); 
TEST_RR_OP64_OO( 179 , smslda, 0xfffffffdabef5c7b, 0xffffffff, 0x00000000 , 1424); 
TEST_RR_OP64_OO( 180 , smslda, 0xfffffffda7ead4b1, 0xdc32fe12, 0xe5a2d43b , 1432); 
TEST_RR_OP64_OO( 181 , smslda, 0xfffffffda7ead4af, 0xffffffff, 0xffffffff , 1440); 
TEST_RR_OP64_OO( 182 , smslda, 0xfffffffdc4d5d4af, 0x80000000, 0x39d64f88 , 1448); 
TEST_RR_OP64_OO( 183 , smslda, 0xfffffffdc4d5d4af, 0xffffffff, 0x00000000 , 1456); 
TEST_RR_OP64_OO( 184 , smslda, 0xfffffffdc4d554af, 0xffffffff, 0x80000000 , 1464); 
TEST_RR_OP64_OO( 185 , smslda, 0xfffffffd84d554af, 0x80000000, 0x80000000 , 1472); 
TEST_RR_OP64_OO( 186 , smslda, 0xfffffffd84d554af, 0x00000000, 0xffffffff , 1480); 
TEST_RR_OP64_OO( 187 , smslda, 0xfffffffd84d554bc, 0xffffffff, 0x872f78de , 1488); 
TEST_RR_OP64_OO( 188 , smslda, 0xfffffffd84d554bc, 0x046ac8ab, 0x00000000 , 1496); 
TEST_RR_OP64_OO( 189 , smslda, 0xfffffffd84d554bc, 0x00000000, 0xffffffff , 1504); 
TEST_RR_OP64_OO( 190 , smslda, 0xfffffffd879a5f69, 0x885c3fe1, 0xd541a4d7 , 1512); 
TEST_RR_OP64_OO( 191 , smslda, 0xfffffffd879a5f69, 0x00000000, 0x74097787 , 1520); 
TEST_RR_OP64_OO( 192 , smslda, 0xfffffffd879aa166, 0x588be972, 0xffffffff , 1528); 
TEST_RR_OP64_OO( 193 , smslda, 0xfffffffd879aa166, 0x00000000, 0x00000000 , 1536); 
TEST_RR_OP64_OO( 194 , smslda, 0xfffffffd879aa166, 0x80000000, 0x00000000 , 1544); 
TEST_RR_OP64_OO( 195 , smslda, 0xfffffffd879aa166, 0x00000000, 0x80000000 , 1552); 
TEST_RR_OP64_OO( 196 , smslda, 0xfffffffd879aa166, 0x00000000, 0x00000000 , 1560); 
TEST_RR_OP64_OO( 197 , smslda, 0xfffffffd879b2c31, 0xffffffff, 0x2e485c83 , 1568); 
TEST_RR_OP64_OO( 198 , smslda, 0xfffffffd879b2c31, 0x6b00da5d, 0x00000000 , 1576); 
TEST_RR_OP64_OO( 199 , smslda, 0xfffffffd879b2c31, 0xdeb61eed, 0x00000000 , 1584); 

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
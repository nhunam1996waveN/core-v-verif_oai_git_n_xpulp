# See LICENSE for license details.
#*****************************************************************************
# smalxds.S
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

TEST_RR_OP64_OO( 2 , smalxds, 0x0000000000000000, 0x00000000, 0x80000000 , 8); 
TEST_RR_OP64_OO( 3 , smalxds, 0x000000000000185f, 0xffffffff, 0x1e7b061c , 16); 
TEST_RR_OP64_OO( 4 , smalxds, 0x000000000000185f, 0x70c58887, 0x00000000 , 24); 
TEST_RR_OP64_OO( 5 , smalxds, 0x000000000000185f, 0x7a1e9dd6, 0x00000000 , 32); 
TEST_RR_OP64_OO( 6 , smalxds, 0x000000001053657b, 0x212447c4, 0xf587676e , 40); 
TEST_RR_OP64_OO( 7 , smalxds, 0x000000001053657b, 0x80000000, 0x80000000 , 48); 
TEST_RR_OP64_OO( 8 , smalxds, 0x000000001053657b, 0xffffffff, 0xffffffff , 56); 
TEST_RR_OP64_OO( 9 , smalxds, 0x000000001053657b, 0xffffffff, 0xffffffff , 64); 
TEST_RR_OP64_OO( 10 , smalxds, 0x000000001052e57b, 0xffffffff, 0x80000000 , 72); 
TEST_RR_OP64_OO( 11 , smalxds, 0x000000001052e57b, 0xffffffff, 0xffffffff , 80); 
TEST_RR_OP64_OO( 12 , smalxds, 0x000000001052b72d, 0x3e761028, 0xffffffff , 88); 
TEST_RR_OP64_OO( 13 , smalxds, 0x000000001052372d, 0xffffffff, 0x80000000 , 96); 
TEST_RR_OP64_OO( 14 , smalxds, 0x000000001051eb66, 0xffffffff, 0x9111dcd8 , 104); 
TEST_RR_OP64_OO( 15 , smalxds, 0xffffffffdd19eb66, 0x80000000, 0xe86d6670 , 112); 
TEST_RR_OP64_OO( 16 , smalxds, 0x000000000c28eb66, 0xc3e15e1e, 0x80000000 , 120); 
TEST_RR_OP64_OO( 17 , smalxds, 0x00000000156a6b66, 0x03fd1283, 0x80000000 , 128); 
TEST_RR_OP64_OO( 18 , smalxds, 0x00000000156a6b66, 0xf9377aa8, 0x00000000 , 136); 
TEST_RR_OP64_OO( 19 , smalxds, 0x00000000156a6b66, 0xffffffff, 0xffffffff , 144); 
TEST_RR_OP64_OO( 20 , smalxds, 0x00000000156b33ce, 0xffffffff, 0x5db6954e , 152); 
TEST_RR_OP64_OO( 21 , smalxds, 0x00000000156b33ce, 0x00000000, 0x00000000 , 160); 
TEST_RR_OP64_OO( 22 , smalxds, 0x000000002ad5bee4, 0x2f64fc2b, 0xf5ea7481 , 168); 
TEST_RR_OP64_OO( 23 , smalxds, 0x000000002ad5bee4, 0x80000000, 0x80000000 , 176); 
TEST_RR_OP64_OO( 24 , smalxds, 0x000000002ad5bee4, 0x00000000, 0x80000000 , 184); 
TEST_RR_OP64_OO( 25 , smalxds, 0x000000002ad5bee4, 0x00000000, 0xffffffff , 192); 
TEST_RR_OP64_OO( 26 , smalxds, 0x000000002ad5bee4, 0x00000000, 0xab739efe , 200); 
TEST_RR_OP64_OO( 27 , smalxds, 0x000000002ad5bee4, 0x00000000, 0xffffffff , 208); 
TEST_RR_OP64_OO( 28 , smalxds, 0x00000000456abee4, 0xf29b352a, 0x80000000 , 216); 
TEST_RR_OP64_OO( 29 , smalxds, 0x00000000456abee4, 0xffffffff, 0xffffffff , 224); 
TEST_RR_OP64_OO( 30 , smalxds, 0x00000000456a3ee4, 0xffffffff, 0x80000000 , 232); 
TEST_RR_OP64_OO( 31 , smalxds, 0x00000000456a8672, 0xffffffff, 0x7f173789 , 240); 
TEST_RR_OP64_OO( 32 , smalxds, 0x00000000456a8a35, 0xffffffff, 0x53204f5d , 248); 
TEST_RR_OP64_OO( 33 , smalxds, 0x00000000456a8a35, 0x00000000, 0x80000000 , 256); 
TEST_RR_OP64_OO( 34 , smalxds, 0x00000000456a8a35, 0x00000000, 0xffffffff , 264); 
TEST_RR_OP64_OO( 35 , smalxds, 0x00000000080e8a35, 0x80000000, 0x77817ab8 , 272); 
TEST_RR_OP64_OO( 36 , smalxds, 0x00000000080f0a35, 0x80000000, 0xffffffff , 280); 
TEST_RR_OP64_OO( 37 , smalxds, 0x00000000080f0a35, 0x00000000, 0x00000000 , 288); 
TEST_RR_OP64_OO( 38 , smalxds, 0x00000000080f0a35, 0x80000000, 0x00000000 , 296); 
TEST_RR_OP64_OO( 39 , smalxds, 0x00000000080f0a35, 0xffffffff, 0x00000000 , 304); 
TEST_RR_OP64_OO( 40 , smalxds, 0x0000000001a66321, 0x3b6da736, 0xe14c1244 , 312); 
TEST_RR_OP64_OO( 41 , smalxds, 0x0000000001a66321, 0x00000000, 0x80000000 , 320); 
TEST_RR_OP64_OO( 42 , smalxds, 0x0000000001a66321, 0xffffffff, 0xffffffff , 328); 
TEST_RR_OP64_OO( 43 , smalxds, 0xffffffffd97587c5, 0xe96da1bf, 0xa7c45760 , 336); 
TEST_RR_OP64_OO( 44 , smalxds, 0xffffffffd974df66, 0x506fa810, 0xffffffff , 344); 
TEST_RR_OP64_OO( 45 , smalxds, 0xffffffffd974df66, 0x00000000, 0x41849522 , 352); 
TEST_RR_OP64_OO( 46 , smalxds, 0xffffffffd974df66, 0xffffffff, 0xffffffff , 360); 
TEST_RR_OP64_OO( 47 , smalxds, 0xffffffffd5570dcf, 0xeab63587, 0x45398374 , 368); 
TEST_RR_OP64_OO( 48 , smalxds, 0xfffffffff2b50dcf, 0xbbe53abc, 0x80000000 , 376); 
TEST_RR_OP64_OO( 49 , smalxds, 0xfffffffff2b50dcf, 0xffffffff, 0x00000000 , 384); 
TEST_RR_OP64_OO( 50 , smalxds, 0xfffffffff2b50dcf, 0xffffffff, 0x00000000 , 392); 
TEST_RR_OP64_OO( 51 , smalxds, 0xfffffffff2b50dcf, 0xffffffff, 0xffffffff , 400); 
TEST_RR_OP64_OO( 52 , smalxds, 0xfffffffff2b50dcf, 0x00000000, 0x80000000 , 408); 
TEST_RR_OP64_OO( 53 , smalxds, 0xfffffffff2b58dcf, 0x80000000, 0xffffffff , 416); 
TEST_RR_OP64_OO( 54 , smalxds, 0xfffffffff2b58dcf, 0xffffffff, 0x00000000 , 424); 
TEST_RR_OP64_OO( 55 , smalxds, 0xfffffffff2b58dcf, 0xffffffff, 0xffffffff , 432); 
TEST_RR_OP64_OO( 56 , smalxds, 0xfffffffff2b50dcf, 0xffffffff, 0x80000000 , 440); 
TEST_RR_OP64_OO( 57 , smalxds, 0xfffffffff2b50dcf, 0x80000000, 0x80000000 , 448); 
TEST_RR_OP64_OO( 58 , smalxds, 0xfffffffff2b50dcf, 0x00000000, 0xffffffff , 456); 
TEST_RR_OP64_OO( 59 , smalxds, 0xfffffffff2b4ce0d, 0xd9bc99fa, 0xffffffff , 464); 
TEST_RR_OP64_OO( 60 , smalxds, 0xfffffffff2b4ce0d, 0xcf40b517, 0x00000000 , 472); 
TEST_RR_OP64_OO( 61 , smalxds, 0xfffffffff85b6a52, 0x06112b3e, 0xd98cdc5d , 480); 
TEST_RR_OP64_OO( 62 , smalxds, 0xfffffffff85b6a52, 0x00000000, 0x00000000 , 488); 
TEST_RR_OP64_OO( 63 , smalxds, 0xfffffffff85b6a52, 0x80000000, 0x00000000 , 496); 
TEST_RR_OP64_OO( 64 , smalxds, 0xfffffffff85b6a52, 0x00000000, 0xbdda4c03 , 504); 
TEST_RR_OP64_OO( 65 , smalxds, 0xfffffffff85b6a52, 0x80000000, 0x00000000 , 512); 
TEST_RR_OP64_OO( 66 , smalxds, 0xfffffffff85a85ac, 0x6b8786e1, 0xffffffff , 520); 
TEST_RR_OP64_OO( 67 , smalxds, 0xfffffffff6037fcb, 0xfe93fb5b, 0xa33475d9 , 528); 
TEST_RR_OP64_OO( 68 , smalxds, 0xfffffffff6037fcb, 0x80000000, 0x00000000 , 536); 
TEST_RR_OP64_OO( 69 , smalxds, 0xffffffffb79c7fcb, 0x80000000, 0xd8197cce , 544); 
TEST_RR_OP64_OO( 70 , smalxds, 0xffffffffb79d0e27, 0xffffffff, 0x42c5b469 , 552); 
TEST_RR_OP64_OO( 71 , smalxds, 0xffffffffb79d0e27, 0xffffffff, 0xffffffff , 560); 
TEST_RR_OP64_OO( 72 , smalxds, 0xffffffff944d0e27, 0x80000000, 0xaaaf46a0 , 568); 
TEST_RR_OP64_OO( 73 , smalxds, 0xffffffff944d8e27, 0x80000000, 0xffffffff , 576); 
TEST_RR_OP64_OO( 74 , smalxds, 0xffffffff944d8e27, 0x80000000, 0x00000000 , 584); 
TEST_RR_OP64_OO( 75 , smalxds, 0xffffffff944d8e27, 0x80000000, 0x00000000 , 592); 
TEST_RR_OP64_OO( 76 , smalxds, 0xffffffff944d8e27, 0x00000000, 0x00000000 , 600); 
TEST_RR_OP64_OO( 77 , smalxds, 0xffffffff944d8e27, 0x00000000, 0xffffffff , 608); 
TEST_RR_OP64_OO( 78 , smalxds, 0xffffffff867c8df1, 0x03bd228f, 0x6f21512d , 616); 
TEST_RR_OP64_OO( 79 , smalxds, 0xffffffff867c8df1, 0x00000000, 0x00000000 , 624); 
TEST_RR_OP64_OO( 80 , smalxds, 0xffffffff867c8df1, 0xffffffff, 0x00000000 , 632); 
TEST_RR_OP64_OO( 81 , smalxds, 0xffffffff867c8df1, 0x00000000, 0xffffffff , 640); 
TEST_RR_OP64_OO( 82 , smalxds, 0xffffffff867c8df1, 0xffffffff, 0xffffffff , 648); 
TEST_RR_OP64_OO( 83 , smalxds, 0xffffffff867c8df1, 0x80000000, 0x00000000 , 656); 
TEST_RR_OP64_OO( 84 , smalxds, 0xffffffff867c8df1, 0x80000000, 0x80000000 , 664); 
TEST_RR_OP64_OO( 85 , smalxds, 0xffffffff867c8df1, 0x00000000, 0x00000000 , 672); 
TEST_RR_OP64_OO( 86 , smalxds, 0xffffffff867c8df1, 0xffffffff, 0x00000000 , 680); 
TEST_RR_OP64_OO( 87 , smalxds, 0xffffffff68f58cc7, 0x857f067b, 0x64723864 , 688); 
TEST_RR_OP64_OO( 88 , smalxds, 0xffffffff86d72e03, 0xba0c22f7, 0x8094d256 , 696); 
TEST_RR_OP64_OO( 89 , smalxds, 0xffffffff86d72e03, 0x00000000, 0xf5742207 , 704); 
TEST_RR_OP64_OO( 90 , smalxds, 0xffffffffa0ac0cff, 0x7fa58e8d, 0xb47676f2 , 712); 
TEST_RR_OP64_OO( 91 , smalxds, 0xffffffffa0ac0cff, 0x80000000, 0x00000000 , 720); 
TEST_RR_OP64_OO( 92 , smalxds, 0xffffffffa0ac0cff, 0x80000000, 0x80000000 , 728); 
TEST_RR_OP64_OO( 93 , smalxds, 0xffffffffa0ac2ace, 0x0ca12a70, 0xffffffff , 736); 
TEST_RR_OP64_OO( 94 , smalxds, 0xffffffffd60c2147, 0x22ab747c, 0xac5c711b , 744); 
TEST_RR_OP64_OO( 95 , smalxds, 0xffffffffd60c2147, 0xa51215a1, 0x00000000 , 752); 
TEST_RR_OP64_OO( 96 , smalxds, 0xffffffffd60bea60, 0xffffffff, 0xc657fd3e , 760); 
TEST_RR_OP64_OO( 97 , smalxds, 0xffffffffd60bf66f, 0xbebccacb, 0xffffffff , 768); 
TEST_RR_OP64_OO( 98 , smalxds, 0xffffffffd60bf66f, 0xffffffff, 0xffffffff , 776); 
TEST_RR_OP64_OO( 99 , smalxds, 0xffffffffd60bf66f, 0xc992f15b, 0x00000000 , 784); 
TEST_RR_OP64_OO( 100 , smalxds, 0xffffffffd60bf66f, 0x00000000, 0xffffffff , 792); 
TEST_RR_OP64_OO( 101 , smalxds, 0xffffffffd60bf66f, 0x80000000, 0x00000000 , 800); 
TEST_RR_OP64_OO( 102 , smalxds, 0xffffffffd60bf66f, 0x80000000, 0x00000000 , 808); 
TEST_RR_OP64_OO( 103 , smalxds, 0xffffffffd60c766f, 0x80000000, 0xffffffff , 816); 
TEST_RR_OP64_OO( 104 , smalxds, 0xffffffffd60c766f, 0x00000000, 0x80000000 , 824); 
TEST_RR_OP64_OO( 105 , smalxds, 0xffffffffd60c766f, 0xffffffff, 0x00000000 , 832); 
TEST_RR_OP64_OO( 106 , smalxds, 0xffffffffd60c766f, 0x00000000, 0x80000000 , 840); 
TEST_RR_OP64_OO( 107 , smalxds, 0xffffffffca1df66f, 0x2a68e823, 0x80000000 , 848); 
TEST_RR_OP64_OO( 108 , smalxds, 0xffffffffca1df66f, 0x00000000, 0x0e761c92 , 856); 
TEST_RR_OP64_OO( 109 , smalxds, 0xffffffffca1df66f, 0x00000000, 0xa7ec1f87 , 864); 
TEST_RR_OP64_OO( 110 , smalxds, 0x000000000f863f5d, 0x93256753, 0xd0108a46 , 872); 
TEST_RR_OP64_OO( 111 , smalxds, 0x000000000f863f5d, 0xffffffff, 0x00000000 , 880); 
TEST_RR_OP64_OO( 112 , smalxds, 0x000000000f863f5d, 0x00000000, 0x411473b4 , 888); 
TEST_RR_OP64_OO( 113 , smalxds, 0xffffffffd81abf5d, 0xacfc9129, 0x80000000 , 896); 
TEST_RR_OP64_OO( 114 , smalxds, 0xffffffffd81abf5d, 0xffffffff, 0xffffffff , 904); 
TEST_RR_OP64_OO( 115 , smalxds, 0xffffffffbe3f3f5d, 0x6d25cc49, 0x80000000 , 912); 
TEST_RR_OP64_OO( 116 , smalxds, 0xffffffffbe3f657f, 0x58b97edb, 0xffffffff , 920); 
TEST_RR_OP64_OO( 117 , smalxds, 0xffffffffcfe6b46b, 0xb6fe0b82, 0xb6eccd9e , 928); 
TEST_RR_OP64_OO( 118 , smalxds, 0xffffffffcfe6b46b, 0x80000000, 0x00000000 , 936); 
TEST_RR_OP64_OO( 119 , smalxds, 0xffffffffcfe6b46b, 0x00000000, 0x63adbc91 , 944); 
TEST_RR_OP64_OO( 120 , smalxds, 0x00000000062b42e5, 0xcbc18e29, 0x647fd111 , 952); 
TEST_RR_OP64_OO( 121 , smalxds, 0x00000000062bc2e5, 0x80000000, 0xffffffff , 960); 
TEST_RR_OP64_OO( 122 , smalxds, 0x00000000062bc2e5, 0x00000000, 0x6bed9a7c , 968); 
TEST_RR_OP64_OO( 123 , smalxds, 0xfffffffffccfc2e5, 0x80000000, 0xaf7c12b8 , 976); 
TEST_RR_OP64_OO( 124 , smalxds, 0xfffffffffccfc2e5, 0xffffffff, 0x00000000 , 984); 
TEST_RR_OP64_OO( 125 , smalxds, 0xfffffffffccfc2e5, 0xffffffff, 0x00000000 , 992); 
TEST_RR_OP64_OO( 126 , smalxds, 0xfffffffffccfc2e5, 0x00000000, 0x239d3bef , 1000); 
TEST_RR_OP64_OO( 127 , smalxds, 0xfffffffffccfc2e5, 0x00000000, 0x00000000 , 1008); 
TEST_RR_OP64_OO( 128 , smalxds, 0xfffffffffccfc2e5, 0x00000000, 0x00000000 , 1016); 
TEST_RR_OP64_OO( 129 , smalxds, 0xfffffffffccfc2e5, 0xffffffff, 0xffffffff , 1024); 
TEST_RR_OP64_OO( 130 , smalxds, 0xfffffffffcd042e5, 0x80000000, 0xffffffff , 1032); 
TEST_RR_OP64_OO( 131 , smalxds, 0xfffffffffcd0ca0b, 0xd5ae5cd4, 0xffffffff , 1040); 
TEST_RR_OP64_OO( 132 , smalxds, 0xfffffffffcd0ca0b, 0x00000000, 0xffffffff , 1048); 
TEST_RR_OP64_OO( 133 , smalxds, 0xfffffffffcd14a0b, 0x80000000, 0xffffffff , 1056); 
TEST_RR_OP64_OO( 134 , smalxds, 0xfffffffffcd14a0b, 0x80000000, 0x80000000 , 1064); 
TEST_RR_OP64_OO( 135 , smalxds, 0xfffffffffcd14a0b, 0xffffffff, 0xffffffff , 1072); 
TEST_RR_OP64_OO( 136 , smalxds, 0xfffffffffcd14a0b, 0xffffffff, 0x00000000 , 1080); 
TEST_RR_OP64_OO( 137 , smalxds, 0x000000001508658e, 0xd4114854, 0xc9a7cc5f , 1088); 
TEST_RR_OP64_OO( 138 , smalxds, 0x000000001508658e, 0xffffffff, 0x00000000 , 1096); 
TEST_RR_OP64_OO( 139 , smalxds, 0x000000001508e58e, 0x80000000, 0xffffffff , 1104); 
TEST_RR_OP64_OO( 140 , smalxds, 0x000000001508e58e, 0x80000000, 0x00000000 , 1112); 
TEST_RR_OP64_OO( 141 , smalxds, 0x000000001508e58e, 0xffffffff, 0x00000000 , 1120); 
TEST_RR_OP64_OO( 142 , smalxds, 0x000000001508e58e, 0xad38c0bf, 0x00000000 , 1128); 
TEST_RR_OP64_OO( 143 , smalxds, 0x000000001508e58e, 0x00000000, 0xffffffff , 1136); 
TEST_RR_OP64_OO( 144 , smalxds, 0x000000001508e58e, 0xffffffff, 0xffffffff , 1144); 
TEST_RR_OP64_OO( 145 , smalxds, 0x000000001508e58e, 0x00000000, 0x80000000 , 1152); 
TEST_RR_OP64_OO( 146 , smalxds, 0xfffffffff0e03517, 0x760bbecb, 0x4d0b8706 , 1160); 
TEST_RR_OP64_OO( 147 , smalxds, 0x000000001476b517, 0x80000000, 0xaa1ab8d3 , 1168); 
TEST_RR_OP64_OO( 148 , smalxds, 0x000000001476b517, 0x80000000, 0x80000000 , 1176); 
TEST_RR_OP64_OO( 149 , smalxds, 0x000000001476d051, 0xffffffff, 0x593c3e02 , 1184); 
TEST_RR_OP64_OO( 150 , smalxds, 0x000000001476d051, 0x00000000, 0xffffffff , 1192); 
TEST_RR_OP64_OO( 151 , smalxds, 0x000000001476d051, 0x00000000, 0x00000000 , 1200); 
TEST_RR_OP64_OO( 152 , smalxds, 0xffffffffedc8d051, 0x473bb2a4, 0x80000000 , 1208); 
TEST_RR_OP64_OO( 153 , smalxds, 0xffffffffedc885f8, 0x5c3b11e2, 0xffffffff , 1216); 
TEST_RR_OP64_OO( 154 , smalxds, 0xffffffffedc885f8, 0xffffffff, 0xffffffff , 1224); 
TEST_RR_OP64_OO( 155 , smalxds, 0xffffffffedc885f8, 0x00000000, 0x80000000 , 1232); 
TEST_RR_OP64_OO( 156 , smalxds, 0xffffffffedc885f8, 0xffffffff, 0xffffffff , 1240); 
TEST_RR_OP64_OO( 157 , smalxds, 0xffffffffedc885f8, 0x00000000, 0x00000000 , 1248); 
TEST_RR_OP64_OO( 158 , smalxds, 0xffffffffedc885f8, 0xffffffff, 0xffffffff , 1256); 
TEST_RR_OP64_OO( 159 , smalxds, 0xffffffffedc885f8, 0xffffffff, 0xffffffff , 1264); 
TEST_RR_OP64_OO( 160 , smalxds, 0xffffffffedc885f8, 0x80000000, 0x00000000 , 1272); 
TEST_RR_OP64_OO( 161 , smalxds, 0xffffffffedc885f8, 0x00000000, 0x00000000 , 1280); 
TEST_RR_OP64_OO( 162 , smalxds, 0x000000000e0385f8, 0x80000000, 0x3685bf8a , 1288); 
TEST_RR_OP64_OO( 163 , smalxds, 0xffffffffcb3b3991, 0x12687fc7, 0x7601925c , 1296); 
TEST_RR_OP64_OO( 164 , smalxds, 0xffffffffcb3b3991, 0x00000000, 0x00000000 , 1304); 
TEST_RR_OP64_OO( 165 , smalxds, 0xffffffffcb3b9a8c, 0xffffffff, 0x0a7da982 , 1312); 
TEST_RR_OP64_OO( 166 , smalxds, 0xffffffffcb3b9a8c, 0x00000000, 0x61d67fcd , 1320); 
TEST_RR_OP64_OO( 167 , smalxds, 0xffffffffcb3c1a8c, 0x80000000, 0xffffffff , 1328); 
TEST_RR_OP64_OO( 168 , smalxds, 0xffffffffcb3c1a8c, 0xffffffff, 0xffffffff , 1336); 
TEST_RR_OP64_OO( 169 , smalxds, 0xffffffffcb3b7b6d, 0x4445a526, 0xffffffff , 1344); 
TEST_RR_OP64_OO( 170 , smalxds, 0xffffffffcb3b7b6d, 0x80000000, 0x80000000 , 1352); 
TEST_RR_OP64_OO( 171 , smalxds, 0xffffffffcb3b7b6d, 0x00000000, 0x00000000 , 1360); 
TEST_RR_OP64_OO( 172 , smalxds, 0xffffffffcb3bfb6d, 0x80000000, 0xffffffff , 1368); 
TEST_RR_OP64_OO( 173 , smalxds, 0xffffffffcb3bfb6d, 0x80000000, 0x00000000 , 1376); 
TEST_RR_OP64_OO( 174 , smalxds, 0xffffffffdd0f7b6d, 0x80000000, 0x51d5dc59 , 1384); 
TEST_RR_OP64_OO( 175 , smalxds, 0xffffffffdd0f7b6d, 0xa9d5433f, 0x00000000 , 1392); 
TEST_RR_OP64_OO( 176 , smalxds, 0xffffffffdd0f7b6d, 0xffffffff, 0x00000000 , 1400); 
TEST_RR_OP64_OO( 177 , smalxds, 0xffffffffdd0f7b6d, 0xd0a63800, 0x00000000 , 1408); 
TEST_RR_OP64_OO( 178 , smalxds, 0xffffffffe402daf0, 0xdb0fba19, 0x1549f81c , 1416); 
TEST_RR_OP64_OO( 179 , smalxds, 0xffffffffe402daf0, 0x00000000, 0x80000000 , 1424); 
TEST_RR_OP64_OO( 180 , smalxds, 0xffffffffe89eb779, 0x637dc9d0, 0x8dd14a0d , 1432); 
TEST_RR_OP64_OO( 181 , smalxds, 0xffffffffe89eb779, 0xee2449f7, 0x00000000 , 1440); 
TEST_RR_OP64_OO( 182 , smalxds, 0xffffffffe89ec710, 0xffffffff, 0xe8dad943 , 1448); 
TEST_RR_OP64_OO( 183 , smalxds, 0xffffffffe89e78e6, 0x5adf0cb5, 0xffffffff , 1456); 
TEST_RR_OP64_OO( 184 , smalxds, 0xffffffffe89e78e6, 0xffffffff, 0xffffffff , 1464); 
TEST_RR_OP64_OO( 185 , smalxds, 0xffffffffe89e89a7, 0x31a04261, 0xffffffff , 1472); 
TEST_RR_OP64_OO( 186 , smalxds, 0xfffffffff12971fb, 0xf1586e5d, 0xf674b2ad , 1480); 
TEST_RR_OP64_OO( 187 , smalxds, 0xfffffffff12971fb, 0x80000000, 0x80000000 , 1488); 
TEST_RR_OP64_OO( 188 , smalxds, 0xfffffffff12971fb, 0x00000000, 0xffffffff , 1496); 
TEST_RR_OP64_OO( 189 , smalxds, 0xfffffffff129b4b4, 0xffffffff, 0x0cbfca06 , 1504); 
TEST_RR_OP64_OO( 190 , smalxds, 0xfffffffff1290fb7, 0x3cfd9800, 0xffffffff , 1512); 
TEST_RR_OP64_OO( 191 , smalxds, 0xfffffffff128d949, 0xffffffff, 0xb746edb4 , 1520); 
TEST_RR_OP64_OO( 192 , smalxds, 0xfffffffff128d949, 0xd8ea6e97, 0x00000000 , 1528); 
TEST_RR_OP64_OO( 193 , smalxds, 0xfffffffff128d949, 0x80000000, 0x80000000 , 1536); 
TEST_RR_OP64_OO( 194 , smalxds, 0xfffffffff128d949, 0x00000000, 0x80000000 , 1544); 
TEST_RR_OP64_OO( 195 , smalxds, 0x000000001b5fd949, 0x80000000, 0x94b3ab92 , 1552); 
TEST_RR_OP64_OO( 196 , smalxds, 0x000000001b5fd949, 0xffffffff, 0xffffffff , 1560); 
TEST_RR_OP64_OO( 197 , smalxds, 0x000000001b5fd949, 0xffffffff, 0x00000000 , 1568); 
TEST_RR_OP64_OO( 198 , smalxds, 0x000000001b5fd949, 0xffffffff, 0xffffffff , 1576); 
TEST_RR_OP64_OO( 199 , smalxds, 0x000000000a355949, 0x4406ddab, 0x80000000 , 1584); 

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
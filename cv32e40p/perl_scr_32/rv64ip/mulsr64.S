# See LICENSE for license details.
#*****************************************************************************
# mulsr64.S
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

TEST_RR_OP64_OO( 2 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 8); 
TEST_RR_OP64_OO( 3 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 16); 
TEST_RR_OP64_OO( 4 , mulsr64, 0xffffffffe24a838b, 0x1db57c75, 0xffffffff , 24); 
TEST_RR_OP64_OO( 5 , mulsr64, 0xc184089000000000, 0x80000000, 0x7cf7eee0 , 32); 
TEST_RR_OP64_OO( 6 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 40); 
TEST_RR_OP64_OO( 7 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 48); 
TEST_RR_OP64_OO( 8 , mulsr64, 0x0000000000000000, 0x00000000, 0xfc91a267 , 56); 
TEST_RR_OP64_OO( 9 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 64); 
TEST_RR_OP64_OO( 10 , mulsr64, 0x0000000000000000, 0xd93c2931, 0x00000000 , 72); 
TEST_RR_OP64_OO( 11 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 80); 
TEST_RR_OP64_OO( 12 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 88); 
TEST_RR_OP64_OO( 13 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 96); 
TEST_RR_OP64_OO( 14 , mulsr64, 0xffffffffb357bd7a, 0xffffffff, 0x4ca84286 , 104); 
TEST_RR_OP64_OO( 15 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 112); 
TEST_RR_OP64_OO( 16 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 120); 
TEST_RR_OP64_OO( 17 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 128); 
TEST_RR_OP64_OO( 18 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 136); 
TEST_RR_OP64_OO( 19 , mulsr64, 0x2b85f6bf80000000, 0xa8f41281, 0x80000000 , 144); 
TEST_RR_OP64_OO( 20 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 152); 
TEST_RR_OP64_OO( 21 , mulsr64, 0xcbeb592800000000, 0x68294db0, 0x80000000 , 160); 
TEST_RR_OP64_OO( 22 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 168); 
TEST_RR_OP64_OO( 23 , mulsr64, 0x0000000000000000, 0x00000000, 0x18299c45 , 176); 
TEST_RR_OP64_OO( 24 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 184); 
TEST_RR_OP64_OO( 25 , mulsr64, 0xce619c4b80000000, 0x80000000, 0x633cc769 , 192); 
TEST_RR_OP64_OO( 26 , mulsr64, 0xd83b5cc080000000, 0x80000000, 0x4f89467f , 200); 
TEST_RR_OP64_OO( 27 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 208); 
TEST_RR_OP64_OO( 28 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 216); 
TEST_RR_OP64_OO( 29 , mulsr64, 0x0000000000000000, 0x8004f998, 0x00000000 , 224); 
TEST_RR_OP64_OO( 30 , mulsr64, 0xf2e63aad4546e4ce, 0x6e4e9ba7, 0xe1989682 , 232); 
TEST_RR_OP64_OO( 31 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 240); 
TEST_RR_OP64_OO( 32 , mulsr64, 0x000000005673b833, 0xa98c47cd, 0xffffffff , 248); 
TEST_RR_OP64_OO( 33 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 256); 
TEST_RR_OP64_OO( 34 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 264); 
TEST_RR_OP64_OO( 35 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 272); 
TEST_RR_OP64_OO( 36 , mulsr64, 0x24dd8e9a80000000, 0x80000000, 0xb644e2cb , 280); 
TEST_RR_OP64_OO( 37 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 288); 
TEST_RR_OP64_OO( 38 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 296); 
TEST_RR_OP64_OO( 39 , mulsr64, 0x0c1498c21df9abae, 0x265164a7, 0x50b576a2 , 304); 
TEST_RR_OP64_OO( 40 , mulsr64, 0x0000000000000000, 0x4483e558, 0x00000000 , 312); 
TEST_RR_OP64_OO( 41 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 328); 
TEST_RR_OP64_OO( 43 , mulsr64, 0x0971b5bd5be69720, 0xab92b330, 0xe35d00c6 , 336); 
TEST_RR_OP64_OO( 44 , mulsr64, 0x0000000000000000, 0x00000000, 0xf6379efe , 344); 
TEST_RR_OP64_OO( 45 , mulsr64, 0x0af930fb80000000, 0xea0d9e09, 0x80000000 , 352); 
TEST_RR_OP64_OO( 46 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 360); 
TEST_RR_OP64_OO( 47 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 368); 
TEST_RR_OP64_OO( 48 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 376); 
TEST_RR_OP64_OO( 49 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 384); 
TEST_RR_OP64_OO( 50 , mulsr64, 0xffffffffe6f544f6, 0xffffffff, 0x190abb0a , 392); 
TEST_RR_OP64_OO( 51 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 400); 
TEST_RR_OP64_OO( 52 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 408); 
TEST_RR_OP64_OO( 53 , mulsr64, 0xeffd142f42391ea4, 0x8c1ed714, 0x235f4c95 , 416); 
TEST_RR_OP64_OO( 54 , mulsr64, 0x0000000000000000, 0x00000000, 0x96492347 , 424); 
TEST_RR_OP64_OO( 55 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 432); 
TEST_RR_OP64_OO( 56 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 440); 
TEST_RR_OP64_OO( 57 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 448); 
TEST_RR_OP64_OO( 58 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 456); 
TEST_RR_OP64_OO( 59 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 464); 
TEST_RR_OP64_OO( 60 , mulsr64, 0x0000000000000000, 0x70365055, 0x00000000 , 472); 
TEST_RR_OP64_OO( 61 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 480); 
TEST_RR_OP64_OO( 62 , mulsr64, 0xfc8afe6f80000000, 0x06ea0321, 0x80000000 , 488); 
TEST_RR_OP64_OO( 63 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 496); 
TEST_RR_OP64_OO( 64 , mulsr64, 0x089a075b80000000, 0x80000000, 0xeecbf149 , 504); 
TEST_RR_OP64_OO( 65 , mulsr64, 0x0000000000000000, 0x00000000, 0xe041e6b3 , 512); 
TEST_RR_OP64_OO( 66 , mulsr64, 0x0000000000000000, 0x435bad1a, 0x00000000 , 520); 
TEST_RR_OP64_OO( 67 , mulsr64, 0xe51afc8480000000, 0x35ca06f7, 0x80000000 , 528); 
TEST_RR_OP64_OO( 68 , mulsr64, 0x0000000000000000, 0x00000000, 0xc163c73f , 536); 
TEST_RR_OP64_OO( 69 , mulsr64, 0x0000000000000000, 0xca1a980b, 0x00000000 , 544); 
TEST_RR_OP64_OO( 70 , mulsr64, 0x0000000000000000, 0x00000000, 0xd1145b90 , 552); 
TEST_RR_OP64_OO( 71 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 560); 
TEST_RR_OP64_OO( 72 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 568); 
TEST_RR_OP64_OO( 73 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 576); 
TEST_RR_OP64_OO( 74 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 584); 
TEST_RR_OP64_OO( 75 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 592); 
TEST_RR_OP64_OO( 76 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 600); 
TEST_RR_OP64_OO( 77 , mulsr64, 0xc3e2c5ae80000000, 0x80000000, 0x783a74a3 , 608); 
TEST_RR_OP64_OO( 78 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 616); 
TEST_RR_OP64_OO( 79 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 624); 
TEST_RR_OP64_OO( 80 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 632); 
TEST_RR_OP64_OO( 81 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 640); 
TEST_RR_OP64_OO( 82 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 648); 
TEST_RR_OP64_OO( 83 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 656); 
TEST_RR_OP64_OO( 84 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 664); 
TEST_RR_OP64_OO( 85 , mulsr64, 0xffffffffadd846fa, 0xffffffff, 0x5227b906 , 672); 
TEST_RR_OP64_OO( 86 , mulsr64, 0xe895381080000000, 0x80000000, 0x2ed58fdf , 680); 
TEST_RR_OP64_OO( 87 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 688); 
TEST_RR_OP64_OO( 88 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 696); 
TEST_RR_OP64_OO( 89 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 704); 
TEST_RR_OP64_OO( 90 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 712); 
TEST_RR_OP64_OO( 91 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 720); 
TEST_RR_OP64_OO( 92 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 728); 
TEST_RR_OP64_OO( 93 , mulsr64, 0x0000000055986eff, 0xffffffff, 0xaa679101 , 736); 
TEST_RR_OP64_OO( 94 , mulsr64, 0x0000000000000000, 0x982c1a7e, 0x00000000 , 744); 
TEST_RR_OP64_OO( 95 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 752); 
TEST_RR_OP64_OO( 96 , mulsr64, 0x0000000000000000, 0xf00292b0, 0x00000000 , 760); 
TEST_RR_OP64_OO( 97 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 768); 
TEST_RR_OP64_OO( 98 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 776); 
TEST_RR_OP64_OO( 99 , mulsr64, 0x30b3d46500000000, 0x80000000, 0x9e985736 , 784); 
TEST_RR_OP64_OO( 100 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 792); 
TEST_RR_OP64_OO( 101 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 800); 
TEST_RR_OP64_OO( 102 , mulsr64, 0x0000000000000000, 0x00000000, 0x6489da32 , 808); 
TEST_RR_OP64_OO( 103 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 816); 
TEST_RR_OP64_OO( 104 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 824); 
TEST_RR_OP64_OO( 105 , mulsr64, 0xfffffffff7ac9f2a, 0xffffffff, 0x085360d6 , 832); 
TEST_RR_OP64_OO( 106 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 840); 
TEST_RR_OP64_OO( 107 , mulsr64, 0xfe4df13580000000, 0x03641d95, 0x80000000 , 848); 
TEST_RR_OP64_OO( 108 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 856); 
TEST_RR_OP64_OO( 109 , mulsr64, 0x0000000000000000, 0x00000000, 0x7fa9a8c3 , 864); 
TEST_RR_OP64_OO( 110 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 872); 
TEST_RR_OP64_OO( 111 , mulsr64, 0xffffffff9c638644, 0xffffffff, 0x639c79bc , 880); 
TEST_RR_OP64_OO( 112 , mulsr64, 0x2e327c5300000000, 0x80000000, 0xa39b075a , 888); 
TEST_RR_OP64_OO( 113 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 896); 
TEST_RR_OP64_OO( 114 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 904); 
TEST_RR_OP64_OO( 115 , mulsr64, 0x28173dc680000000, 0x80000000, 0xafd18473 , 912); 
TEST_RR_OP64_OO( 116 , mulsr64, 0x0000000000d37b4d, 0xffffffff, 0xff2c84b3 , 920); 
TEST_RR_OP64_OO( 117 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 928); 
TEST_RR_OP64_OO( 118 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 936); 
TEST_RR_OP64_OO( 119 , mulsr64, 0xffffffffa8de0dcc, 0x5721f234, 0xffffffff , 944); 
TEST_RR_OP64_OO( 120 , mulsr64, 0xffffffff816f2606, 0xffffffff, 0x7e90d9fa , 952); 
TEST_RR_OP64_OO( 121 , mulsr64, 0x0000000000000000, 0x00000000, 0xada79433 , 960); 
TEST_RR_OP64_OO( 122 , mulsr64, 0x0000000000000000, 0xa678bdcd, 0x00000000 , 968); 
TEST_RR_OP64_OO( 123 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 976); 
TEST_RR_OP64_OO( 124 , mulsr64, 0xfa6157241763bb98, 0x16d34508, 0xc0f88393 , 984); 
TEST_RR_OP64_OO( 125 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 992); 
TEST_RR_OP64_OO( 126 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1000); 
TEST_RR_OP64_OO( 127 , mulsr64, 0x19a0370e00000000, 0x80000000, 0xccbf91e4 , 1008); 
TEST_RR_OP64_OO( 128 , mulsr64, 0x01a8474400000000, 0xfcaf7178, 0x80000000 , 1016); 
TEST_RR_OP64_OO( 129 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 1024); 
TEST_RR_OP64_OO( 130 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 1032); 
TEST_RR_OP64_OO( 131 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1040); 
TEST_RR_OP64_OO( 132 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1048); 
TEST_RR_OP64_OO( 133 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 1056); 
TEST_RR_OP64_OO( 134 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 1064); 
TEST_RR_OP64_OO( 135 , mulsr64, 0x0000000000000000, 0xc7e6d1ce, 0x00000000 , 1072); 
TEST_RR_OP64_OO( 136 , mulsr64, 0x0000000000000000, 0x4b04fb2e, 0x00000000 , 1080); 
TEST_RR_OP64_OO( 137 , mulsr64, 0x0000000000000000, 0x00000000, 0xa9f92077 , 1088); 
TEST_RR_OP64_OO( 138 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 1096); 
TEST_RR_OP64_OO( 139 , mulsr64, 0xe3560d9680000000, 0x80000000, 0x3953e4d3 , 1104); 
TEST_RR_OP64_OO( 140 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1112); 
TEST_RR_OP64_OO( 141 , mulsr64, 0x0000000000000000, 0xc7118381, 0x00000000 , 1120); 
TEST_RR_OP64_OO( 142 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 1128); 
TEST_RR_OP64_OO( 143 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 1136); 
TEST_RR_OP64_OO( 144 , mulsr64, 0x0000000000000000, 0xd8c7f632, 0x00000000 , 1144); 
TEST_RR_OP64_OO( 145 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 1152); 
TEST_RR_OP64_OO( 146 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 1160); 
TEST_RR_OP64_OO( 147 , mulsr64, 0x00000000677739a5, 0xffffffff, 0x9888c65b , 1168); 
TEST_RR_OP64_OO( 148 , mulsr64, 0x0000000000000000, 0x03c2b746, 0x00000000 , 1176); 
TEST_RR_OP64_OO( 149 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1184); 
TEST_RR_OP64_OO( 150 , mulsr64, 0x0000000000000000, 0xd07c76be, 0x00000000 , 1192); 
TEST_RR_OP64_OO( 151 , mulsr64, 0x0000000000000000, 0x223ecc82, 0x00000000 , 1200); 
TEST_RR_OP64_OO( 152 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 1208); 
TEST_RR_OP64_OO( 153 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 1216); 
TEST_RR_OP64_OO( 154 , mulsr64, 0xf45b18f480000000, 0x1749ce17, 0x80000000 , 1224); 
TEST_RR_OP64_OO( 155 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1232); 
TEST_RR_OP64_OO( 156 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1240); 
TEST_RR_OP64_OO( 157 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 1248); 
TEST_RR_OP64_OO( 158 , mulsr64, 0x2b4efa7180000000, 0x80000000, 0xa9620b1d , 1256); 
TEST_RR_OP64_OO( 159 , mulsr64, 0x3d05f5ee00000000, 0x80000000, 0x85f41424 , 1264); 
TEST_RR_OP64_OO( 160 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 1272); 
TEST_RR_OP64_OO( 161 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1280); 
TEST_RR_OP64_OO( 162 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 1288); 
TEST_RR_OP64_OO( 163 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 1296); 
TEST_RR_OP64_OO( 164 , mulsr64, 0x0000000000000001, 0xffffffff, 0xffffffff , 1304); 
TEST_RR_OP64_OO( 165 , mulsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 1312); 
TEST_RR_OP64_OO( 166 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1320); 
TEST_RR_OP64_OO( 167 , mulsr64, 0x02727761c6fadcfa, 0x12a9644e, 0x2191d4bb , 1328); 
TEST_RR_OP64_OO( 168 , mulsr64, 0xffffffffbc4204e1, 0xffffffff, 0x43bdfb1f , 1336); 
TEST_RR_OP64_OO( 169 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1344); 
TEST_RR_OP64_OO( 170 , mulsr64, 0x0000000000000000, 0x00000000, 0xae236588 , 1352); 
TEST_RR_OP64_OO( 171 , mulsr64, 0xc0087f3b80000000, 0x7fef0189, 0x80000000 , 1360); 
TEST_RR_OP64_OO( 172 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 1368); 
TEST_RR_OP64_OO( 173 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 1376); 
TEST_RR_OP64_OO( 174 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 1384); 
TEST_RR_OP64_OO( 175 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1392); 
TEST_RR_OP64_OO( 176 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 1400); 
TEST_RR_OP64_OO( 177 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1408); 
TEST_RR_OP64_OO( 178 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1416); 
TEST_RR_OP64_OO( 179 , mulsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 1424); 
TEST_RR_OP64_OO( 180 , mulsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 1432); 
TEST_RR_OP64_OO( 181 , mulsr64, 0x020c2d1091129e50, 0xc4affe89, 0xf72997d0 , 1440); 
TEST_RR_OP64_OO( 182 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1448); 
TEST_RR_OP64_OO( 183 , mulsr64, 0x0000000000000000, 0x00000000, 0x03fe57e5 , 1456); 
TEST_RR_OP64_OO( 184 , mulsr64, 0x1003dec084657f20, 0x3ae8119b, 0x45997f60 , 1464); 
TEST_RR_OP64_OO( 185 , mulsr64, 0x0000000000000000, 0x84fcd091, 0x00000000 , 1472); 
TEST_RR_OP64_OO( 186 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 1480); 
TEST_RR_OP64_OO( 187 , mulsr64, 0xff517dbd80000000, 0x015d0485, 0x80000000 , 1488); 
TEST_RR_OP64_OO( 188 , mulsr64, 0x000000005413ba82, 0xffffffff, 0xabec457e , 1496); 
TEST_RR_OP64_OO( 189 , mulsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 1504); 
TEST_RR_OP64_OO( 190 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 1512); 
TEST_RR_OP64_OO( 191 , mulsr64, 0x0000000080000000, 0xffffffff, 0x80000000 , 1520); 
TEST_RR_OP64_OO( 192 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 1528); 
TEST_RR_OP64_OO( 193 , mulsr64, 0x3f11ea9900000000, 0x80000000, 0x81dc2ace , 1536); 
TEST_RR_OP64_OO( 194 , mulsr64, 0xc2c16f1480000000, 0x80000000, 0x7a7d21d7 , 1544); 
TEST_RR_OP64_OO( 195 , mulsr64, 0x1801e71a00000000, 0x80000000, 0xcffc31cc , 1552); 
TEST_RR_OP64_OO( 196 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1560); 
TEST_RR_OP64_OO( 197 , mulsr64, 0x4000000000000000, 0x80000000, 0x80000000 , 1568); 
TEST_RR_OP64_OO( 198 , mulsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 1576); 
TEST_RR_OP64_OO( 199 , mulsr64, 0x0000000080000000, 0x80000000, 0xffffffff , 1584); 

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
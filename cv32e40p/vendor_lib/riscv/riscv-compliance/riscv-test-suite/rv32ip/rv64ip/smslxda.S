# See LICENSE for license details.
#*****************************************************************************
# smslxda.S
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

TEST_RR_OP64_OO( 2 , smslxda, 0x0000000000000000, 0xffffffff, 0x00000000 , 8); 
TEST_RR_OP64_OO( 3 , smslxda, 0x0000000000a375a0, 0x060579d4, 0xfd421c58 , 16); 
TEST_RR_OP64_OO( 4 , smslxda, 0x0000000000a2f5a0, 0x80000000, 0xffffffff , 24); 
TEST_RR_OP64_OO( 5 , smslxda, 0x0000000000a2f59e, 0xffffffff, 0xffffffff , 32); 
TEST_RR_OP64_OO( 6 , smslxda, 0x0000000000a2f59e, 0x00000000, 0xffffffff , 40); 
TEST_RR_OP64_OO( 7 , smslxda, 0xfffffffff11ef59e, 0x80000000, 0xaf26e0f8 , 48); 
TEST_RR_OP64_OO( 8 , smslxda, 0xfffffffff11e759e, 0xffffffff, 0x80000000 , 56); 
TEST_RR_OP64_OO( 9 , smslxda, 0xfffffffff11e759e, 0x80000000, 0x80000000 , 64); 
TEST_RR_OP64_OO( 10 , smslxda, 0xffffffffd005f59e, 0x24ccbdcf, 0x80000000 , 72); 
TEST_RR_OP64_OO( 11 , smslxda, 0xffffffffd005f59e, 0x8a834fdd, 0x00000000 , 80); 
TEST_RR_OP64_OO( 12 , smslxda, 0xffffffffd005f59e, 0x80000000, 0x80000000 , 88); 
TEST_RR_OP64_OO( 13 , smslxda, 0xffffffffd005ebc3, 0xffffffff, 0x4f36a6ef , 96); 
TEST_RR_OP64_OO( 14 , smslxda, 0xffffffffd005ebc1, 0xffffffff, 0xffffffff , 104); 
TEST_RR_OP64_OO( 15 , smslxda, 0xffffffffd005ebc1, 0xffffffff, 0x00000000 , 112); 
TEST_RR_OP64_OO( 16 , smslxda, 0xffffffffd0056bc1, 0x80000000, 0xffffffff , 120); 
TEST_RR_OP64_OO( 17 , smslxda, 0xffffffffd004ebc1, 0x80000000, 0xffffffff , 128); 
TEST_RR_OP64_OO( 18 , smslxda, 0xfffffffff7d6ebc1, 0x84224fa4, 0x80000000 , 136); 
TEST_RR_OP64_OO( 19 , smslxda, 0xfffffffff7d6ebc1, 0x00000000, 0xe4d7320f , 144); 
TEST_RR_OP64_OO( 20 , smslxda, 0xfffffffff7d6ebc1, 0x00000000, 0x00000000 , 152); 
TEST_RR_OP64_OO( 21 , smslxda, 0xfffffffff7d6ebc1, 0x80000000, 0x80000000 , 160); 
TEST_RR_OP64_OO( 22 , smslxda, 0xfffffffff7d6ebc1, 0xffffffff, 0x00000000 , 168); 
TEST_RR_OP64_OO( 23 , smslxda, 0xfffffffff7d6ebc1, 0x00000000, 0xffffffff , 176); 
TEST_RR_OP64_OO( 24 , smslxda, 0xfffffffff7d6ebc1, 0x00000000, 0x00000000 , 184); 
TEST_RR_OP64_OO( 25 , smslxda, 0xffffffffdbf6b39d, 0xdd0dc619, 0xad90bc64 , 192); 
TEST_RR_OP64_OO( 26 , smslxda, 0xffffffffdbf6b39d, 0x80000000, 0x80000000 , 200); 
TEST_RR_OP64_OO( 27 , smslxda, 0xffffffffdbf6b39d, 0x00000000, 0xc66aa285 , 208); 
TEST_RR_OP64_OO( 28 , smslxda, 0xffffffffdbf78085, 0xffffffff, 0x62ee69fa , 216); 
TEST_RR_OP64_OO( 29 , smslxda, 0xffffffffdbf78085, 0x00000000, 0xf5baf616 , 224); 
TEST_RR_OP64_OO( 30 , smslxda, 0xffffffffdbf7cf0b, 0x0677480f, 0xffffffff , 232); 
TEST_RR_OP64_OO( 31 , smslxda, 0xffffffffdbf82134, 0xe3b96e70, 0xffffffff , 240); 
TEST_RR_OP64_OO( 32 , smslxda, 0xffffffffeae78653, 0x57559cb2, 0xdac0a9dd , 248); 
TEST_RR_OP64_OO( 33 , smslxda, 0xffffffffcffe8653, 0x80000000, 0x8e0aca2e , 256); 
TEST_RR_OP64_OO( 34 , smslxda, 0xffffffffc8a28653, 0xac4cf148, 0x80000000 , 264); 
TEST_RR_OP64_OO( 35 , smslxda, 0xffffffffc8a28653, 0x00000000, 0x80000000 , 272); 
TEST_RR_OP64_OO( 36 , smslxda, 0xffffffffc8a20653, 0x80000000, 0xffffffff , 280); 
TEST_RR_OP64_OO( 37 , smslxda, 0xffffffffa7f76d4b, 0x9a80c144, 0x00a2ad38 , 288); 
TEST_RR_OP64_OO( 38 , smslxda, 0xffffffffa7f76d4b, 0x00000000, 0x4d292442 , 296); 
TEST_RR_OP64_OO( 39 , smslxda, 0xffffffffa7f6c3c7, 0x9757bf25, 0xffffffff , 304); 
TEST_RR_OP64_OO( 40 , smslxda, 0xffffffffa7f643c7, 0xffffffff, 0x80000000 , 312); 
TEST_RR_OP64_OO( 41 , smslxda, 0xffffffffa7f643c7, 0x00000000, 0xffffffff , 320); 
TEST_RR_OP64_OO( 42 , smslxda, 0xffffffffa7f643c7, 0x78fb2626, 0x00000000 , 328); 
TEST_RR_OP64_OO( 43 , smslxda, 0xffffffffa7f5c3c7, 0xffffffff, 0x80000000 , 336); 
TEST_RR_OP64_OO( 44 , smslxda, 0xffffffffa7f5c3c7, 0x00000000, 0xffffffff , 344); 
TEST_RR_OP64_OO( 45 , smslxda, 0xffffffffa7f5c3c7, 0x00000000, 0x00517498 , 352); 
TEST_RR_OP64_OO( 46 , smslxda, 0xffffffffa7f5c3c7, 0x00000000, 0x644c87bd , 360); 
TEST_RR_OP64_OO( 47 , smslxda, 0xffffffffa7f5c3c5, 0xffffffff, 0xffffffff , 368); 
TEST_RR_OP64_OO( 48 , smslxda, 0xffffffffe3ed43c5, 0x4b6477ef, 0x80000000 , 376); 
TEST_RR_OP64_OO( 49 , smslxda, 0xffffffffe3ed43c5, 0x00000000, 0x2afbb448 , 384); 
TEST_RR_OP64_OO( 50 , smslxda, 0xffffffffe3ed43c5, 0x00000000, 0x00000000 , 392); 
TEST_RR_OP64_OO( 51 , smslxda, 0xffffffffe3ed43c5, 0x00000000, 0xffffffff , 400); 
TEST_RR_OP64_OO( 52 , smslxda, 0xffffffffe3ecc3c5, 0xffffffff, 0x80000000 , 408); 
TEST_RR_OP64_OO( 53 , smslxda, 0xffffffffe3ec43c5, 0xffffffff, 0x80000000 , 416); 
TEST_RR_OP64_OO( 54 , smslxda, 0xffffffffe3ec43c5, 0x00000000, 0x1adc5af5 , 424); 
TEST_RR_OP64_OO( 55 , smslxda, 0xffffffffe3ec43c5, 0x00000000, 0x80000000 , 432); 
TEST_RR_OP64_OO( 56 , smslxda, 0xffffffffe3ec43c5, 0x00000000, 0xffffffff , 440); 
TEST_RR_OP64_OO( 57 , smslxda, 0xffffffffe3ec43c5, 0x80000000, 0x00000000 , 448); 
TEST_RR_OP64_OO( 58 , smslxda, 0xffffffffe3ec43c5, 0x20c9e2a2, 0x00000000 , 456); 
TEST_RR_OP64_OO( 59 , smslxda, 0xffffffffe3ec43c5, 0xffffffff, 0x00000000 , 464); 
TEST_RR_OP64_OO( 60 , smslxda, 0xffffffffd196be8b, 0x4b9526aa, 0x0d403752 , 472); 
TEST_RR_OP64_OO( 61 , smslxda, 0xffffffffd196be8b, 0x00000000, 0x80000000 , 480); 
TEST_RR_OP64_OO( 62 , smslxda, 0xffffffffd196be8b, 0x00000000, 0xffffffff , 488); 
TEST_RR_OP64_OO( 63 , smslxda, 0xffffffffbe643e8b, 0x80000000, 0xfa07d99b , 496); 
TEST_RR_OP64_OO( 64 , smslxda, 0xffffffffbe643e8b, 0x00000000, 0x00000000 , 504); 
TEST_RR_OP64_OO( 65 , smslxda, 0xffffffffbe643e8b, 0x92994df8, 0x00000000 , 512); 
TEST_RR_OP64_OO( 66 , smslxda, 0xffffffffb12c254d, 0xc226e74f, 0x7c9e978a , 520); 
TEST_RR_OP64_OO( 67 , smslxda, 0xffffffffb12c254d, 0x00000000, 0x67f0b51b , 528); 
TEST_RR_OP64_OO( 68 , smslxda, 0xffffffffb12c254d, 0x80000000, 0x80000000 , 536); 
TEST_RR_OP64_OO( 69 , smslxda, 0xffffffffb12c254b, 0xffffffff, 0xffffffff , 544); 
TEST_RR_OP64_OO( 70 , smslxda, 0xffffffffa797254b, 0x4fd5ecd6, 0x80000000 , 552); 
TEST_RR_OP64_OO( 71 , smslxda, 0xffffffffa797254b, 0x00000000, 0xffffffff , 560); 
TEST_RR_OP64_OO( 72 , smslxda, 0xffffffffd34b254b, 0x80000000, 0xdb1d5768 , 568); 
TEST_RR_OP64_OO( 73 , smslxda, 0xffffffffd34b254b, 0x80000000, 0x80000000 , 576); 
TEST_RR_OP64_OO( 74 , smslxda, 0xffffffffd34b254b, 0x80000000, 0x00000000 , 584); 
TEST_RR_OP64_OO( 75 , smslxda, 0xffffffffd34b254b, 0x00000000, 0x80000000 , 592); 
TEST_RR_OP64_OO( 76 , smslxda, 0xffffffffd34b254b, 0x00000000, 0x00000000 , 600); 
TEST_RR_OP64_OO( 77 , smslxda, 0xffffffffd34b2549, 0xffffffff, 0xffffffff , 608); 
TEST_RR_OP64_OO( 78 , smslxda, 0xffffffffc6620f5e, 0x13cbd9f6, 0xe68a760d , 616); 
TEST_RR_OP64_OO( 79 , smslxda, 0xffffffffc51362b5, 0x44f59820, 0x41ea6825 , 624); 
TEST_RR_OP64_OO( 80 , smslxda, 0xffffffffc512e2b5, 0xffffffff, 0x80000000 , 632); 
TEST_RR_OP64_OO( 81 , smslxda, 0xffffffffc51262b5, 0x80000000, 0xffffffff , 640); 
TEST_RR_OP64_OO( 82 , smslxda, 0xffffffffc51262b5, 0x00000000, 0x80000000 , 648); 
TEST_RR_OP64_OO( 83 , smslxda, 0xffffffffc51262b5, 0x00000000, 0xffffffff , 656); 
TEST_RR_OP64_OO( 84 , smslxda, 0xffffffffc51262b5, 0x00000000, 0x80000000 , 664); 
TEST_RR_OP64_OO( 85 , smslxda, 0xffffffffc51262b5, 0x00000000, 0x00000000 , 672); 
TEST_RR_OP64_OO( 86 , smslxda, 0xffffffffc51262b5, 0x80000000, 0x80000000 , 680); 
TEST_RR_OP64_OO( 87 , smslxda, 0xffffffffc51262b5, 0xffffffff, 0x00000000 , 688); 
TEST_RR_OP64_OO( 88 , smslxda, 0xffffffffc51262b5, 0x00000000, 0x00000000 , 696); 
TEST_RR_OP64_OO( 89 , smslxda, 0xffffffffc511e2b5, 0xffffffff, 0x80000000 , 704); 
TEST_RR_OP64_OO( 90 , smslxda, 0xffffffffc511e2b5, 0x5a643178, 0x00000000 , 712); 
TEST_RR_OP64_OO( 91 , smslxda, 0xffffffffc511e2b5, 0x80000000, 0x00000000 , 720); 
TEST_RR_OP64_OO( 92 , smslxda, 0xffffffffc511e2b5, 0x00000000, 0x00000000 , 728); 
TEST_RR_OP64_OO( 93 , smslxda, 0xffffffffc511e2b5, 0x80000000, 0x00000000 , 736); 
TEST_RR_OP64_OO( 94 , smslxda, 0xffffffffc511e2b5, 0xffffffff, 0x00000000 , 744); 
TEST_RR_OP64_OO( 95 , smslxda, 0xffffffffc511e2b5, 0x00000000, 0xfcaf49ae , 752); 
TEST_RR_OP64_OO( 96 , smslxda, 0xffffffffc511d592, 0xade844f5, 0xffffffff , 760); 
TEST_RR_OP64_OO( 97 , smslxda, 0xffffffffc511d592, 0x00000000, 0x6973340b , 768); 
TEST_RR_OP64_OO( 98 , smslxda, 0xffffffffc511d592, 0xffffffff, 0x00000000 , 776); 
TEST_RR_OP64_OO( 99 , smslxda, 0xffffffffc511d592, 0x80000000, 0x80000000 , 784); 
TEST_RR_OP64_OO( 100 , smslxda, 0xffffffffc511d592, 0x00000000, 0x00000000 , 792); 
TEST_RR_OP64_OO( 101 , smslxda, 0xffffffffc511d592, 0x00000000, 0x80000000 , 800); 
TEST_RR_OP64_OO( 102 , smslxda, 0xffffffffc511d592, 0x00000000, 0x00000000 , 808); 
TEST_RR_OP64_OO( 103 , smslxda, 0xffffffffc511d592, 0x80000000, 0x80000000 , 816); 
TEST_RR_OP64_OO( 104 , smslxda, 0xfffffffff3d577c4, 0x9e3e1eb0, 0xa5255df1 , 824); 
TEST_RR_OP64_OO( 105 , smslxda, 0xfffffffff3d577c4, 0x80000000, 0x00000000 , 832); 
TEST_RR_OP64_OO( 106 , smslxda, 0xffffffffbd5cf7c4, 0x80000000, 0x0f68930f , 840); 
TEST_RR_OP64_OO( 107 , smslxda, 0xffffffffbd5cf7c2, 0xffffffff, 0xffffffff , 848); 
TEST_RR_OP64_OO( 108 , smslxda, 0xffffffffbd5cf7c0, 0xffffffff, 0xffffffff , 856); 
TEST_RR_OP64_OO( 109 , smslxda, 0xffffffffbd5cd6c3, 0xe716f7ed, 0xffffffff , 864); 
TEST_RR_OP64_OO( 110 , smslxda, 0xffffffffbd5cd6c3, 0xffffffff, 0x00000000 , 872); 
TEST_RR_OP64_OO( 111 , smslxda, 0xffffffffbd5cd6c3, 0x00000000, 0xffffffff , 880); 
TEST_RR_OP64_OO( 112 , smslxda, 0xffffffffbd5cd6c3, 0x00000000, 0xfc7c32c0 , 888); 
TEST_RR_OP64_OO( 113 , smslxda, 0xffffffffbd5c56c3, 0xffffffff, 0x80000000 , 896); 
TEST_RR_OP64_OO( 114 , smslxda, 0xffffffffbd5c56c3, 0x00000000, 0xa95b7886 , 904); 
TEST_RR_OP64_OO( 115 , smslxda, 0xffffffffbd5c56c3, 0x00000000, 0x4124cf42 , 912); 
TEST_RR_OP64_OO( 116 , smslxda, 0xffffffffbd5cc5f8, 0xffffffff, 0x2afb443a , 920); 
TEST_RR_OP64_OO( 117 , smslxda, 0xffffffffbd5cc5f8, 0x80000000, 0x80000000 , 928); 
TEST_RR_OP64_OO( 118 , smslxda, 0xffffffffcb3245f8, 0x77761bab, 0x80000000 , 936); 
TEST_RR_OP64_OO( 119 , smslxda, 0xffffffffcb3245f8, 0x80000000, 0x80000000 , 944); 
TEST_RR_OP64_OO( 120 , smslxda, 0xffffffffcb3245f8, 0xffffffff, 0x00000000 , 952); 
TEST_RR_OP64_OO( 121 , smslxda, 0xffffffffcb3245f8, 0x00000000, 0x80000000 , 960); 
TEST_RR_OP64_OO( 122 , smslxda, 0xffffffffcb3245f8, 0x00000000, 0x00000000 , 968); 
TEST_RR_OP64_OO( 123 , smslxda, 0xffffffffcb3245f8, 0xffffffff, 0x00000000 , 976); 
TEST_RR_OP64_OO( 124 , smslxda, 0xffffffffcb3245f8, 0x00000000, 0xffffffff , 984); 
TEST_RR_OP64_OO( 125 , smslxda, 0xffffffffcb3245f8, 0x80000000, 0x00000000 , 992); 
TEST_RR_OP64_OO( 126 , smslxda, 0xffffffffcb3245f8, 0x00000000, 0xffffffff , 1000); 
TEST_RR_OP64_OO( 127 , smslxda, 0xffffffff94b1c5f8, 0xd2bd92ff, 0x80000000 , 1008); 
TEST_RR_OP64_OO( 128 , smslxda, 0xffffffff94b1c5f8, 0xffffffff, 0x00000000 , 1016); 
TEST_RR_OP64_OO( 129 , smslxda, 0xffffffffd22ac5f8, 0x80000000, 0x21ce7af2 , 1024); 
TEST_RR_OP64_OO( 130 , smslxda, 0xffffffffd22ac5f8, 0x00000000, 0x00000000 , 1032); 
TEST_RR_OP64_OO( 131 , smslxda, 0xffffffffe7703438, 0xcfd1bd56, 0xfbb876f0 , 1040); 
TEST_RR_OP64_OO( 132 , smslxda, 0xffffffffe76fb438, 0x80000000, 0xffffffff , 1048); 
TEST_RR_OP64_OO( 133 , smslxda, 0xffffffffe76f3438, 0xffffffff, 0x80000000 , 1056); 
TEST_RR_OP64_OO( 134 , smslxda, 0xffffffffe76eb438, 0xffffffff, 0x80000000 , 1064); 
TEST_RR_OP64_OO( 135 , smslxda, 0xffffffffe76eb438, 0x00000000, 0xffffffff , 1072); 
TEST_RR_OP64_OO( 136 , smslxda, 0xffffffffe76eb438, 0x00000000, 0x80000000 , 1080); 
TEST_RR_OP64_OO( 137 , smslxda, 0xffffffffe76eb438, 0x80000000, 0x80000000 , 1088); 
TEST_RR_OP64_OO( 138 , smslxda, 0xffffffffe76de994, 0xffffffff, 0x96359f27 , 1096); 
TEST_RR_OP64_OO( 139 , smslxda, 0xffffffffe76d6994, 0xffffffff, 0x80000000 , 1104); 
TEST_RR_OP64_OO( 140 , smslxda, 0xffffffffe76ce994, 0x80000000, 0xffffffff , 1112); 
TEST_RR_OP64_OO( 141 , smslxda, 0xffffffffe76ce994, 0x00000000, 0xffffffff , 1120); 
TEST_RR_OP64_OO( 142 , smslxda, 0xffffffffe76ce994, 0x80000000, 0x00000000 , 1128); 
TEST_RR_OP64_OO( 143 , smslxda, 0x0000000007d86994, 0x80000000, 0x195040d7 , 1136); 
TEST_RR_OP64_OO( 144 , smslxda, 0x0000000007d7dd02, 0xe73f8c2f, 0xffffffff , 1144); 
TEST_RR_OP64_OO( 145 , smslxda, 0x0000000007d7dd02, 0x00000000, 0x80000000 , 1152); 
TEST_RR_OP64_OO( 146 , smslxda, 0x0000000007d762c0, 0xffffffff, 0x83f301cb , 1160); 
TEST_RR_OP64_OO( 147 , smslxda, 0x0000000007d6e2c0, 0xffffffff, 0x80000000 , 1168); 
TEST_RR_OP64_OO( 148 , smslxda, 0x0000000007d6e2c0, 0x00000000, 0x00000000 , 1176); 
TEST_RR_OP64_OO( 149 , smslxda, 0x0000000007d6e2c0, 0x1f8a8af1, 0x00000000 , 1184); 
TEST_RR_OP64_OO( 150 , smslxda, 0x0000000007d714b2, 0xffffffff, 0x13751e7d , 1192); 
TEST_RR_OP64_OO( 151 , smslxda, 0x0000000007d714b2, 0x00000000, 0xffffffff , 1200); 
TEST_RR_OP64_OO( 152 , smslxda, 0x0000000007d714b2, 0x00000000, 0xd31b152d , 1208); 
TEST_RR_OP64_OO( 153 , smslxda, 0x0000000015cb44af, 0xaae9a51e, 0x2d92f94f , 1216); 
TEST_RR_OP64_OO( 154 , smslxda, 0x0000000015cb44af, 0x00000000, 0xffffffff , 1224); 
TEST_RR_OP64_OO( 155 , smslxda, 0x0000000015cac4af, 0xffffffff, 0x80000000 , 1232); 
TEST_RR_OP64_OO( 156 , smslxda, 0x0000000015c9ef30, 0xffffffff, 0x80aaa9d7 , 1240); 
TEST_RR_OP64_OO( 157 , smslxda, 0x0000000015c96f30, 0x80000000, 0xffffffff , 1248); 
TEST_RR_OP64_OO( 158 , smslxda, 0x0000000015c8ef30, 0xffffffff, 0x80000000 , 1256); 
TEST_RR_OP64_OO( 159 , smslxda, 0x0000000015c8ef30, 0x80000000, 0x80000000 , 1264); 
TEST_RR_OP64_OO( 160 , smslxda, 0x0000000015c8ef30, 0x80000000, 0x80000000 , 1272); 
TEST_RR_OP64_OO( 161 , smslxda, 0x0000000015c92bec, 0x23781944, 0xffffffff , 1280); 
TEST_RR_OP64_OO( 162 , smslxda, 0x0000000015c8abec, 0xffffffff, 0x80000000 , 1288); 
TEST_RR_OP64_OO( 163 , smslxda, 0x0000000004805160, 0x0e4e41c7, 0x338c4844 , 1296); 
TEST_RR_OP64_OO( 164 , smslxda, 0x0000000004805160, 0x80000000, 0x00000000 , 1304); 
TEST_RR_OP64_OO( 165 , smslxda, 0x00000000047fd160, 0xffffffff, 0x80000000 , 1312); 
TEST_RR_OP64_OO( 166 , smslxda, 0x00000000047fd15e, 0xffffffff, 0xffffffff , 1320); 
TEST_RR_OP64_OO( 167 , smslxda, 0x00000000047fd15e, 0x00000000, 0x80000000 , 1328); 
TEST_RR_OP64_OO( 168 , smslxda, 0x00000000047fd15e, 0xffffffff, 0x00000000 , 1336); 
TEST_RR_OP64_OO( 169 , smslxda, 0x0000000035f5515e, 0x59fd62eb, 0x80000000 , 1344); 
TEST_RR_OP64_OO( 170 , smslxda, 0x0000000035f5515e, 0x00000000, 0x0c341db4 , 1352); 
TEST_RR_OP64_OO( 171 , smslxda, 0x0000000035f5515e, 0x00000000, 0xffffffff , 1360); 
TEST_RR_OP64_OO( 172 , smslxda, 0x0000000035f5515e, 0x00000000, 0x80000000 , 1368); 
TEST_RR_OP64_OO( 173 , smslxda, 0x0000000035f4d15e, 0x80000000, 0xffffffff , 1376); 
TEST_RR_OP64_OO( 174 , smslxda, 0x000000005b93515e, 0x80000000, 0x46ae4b3d , 1384); 
TEST_RR_OP64_OO( 175 , smslxda, 0x000000005b93515e, 0x80000000, 0x80000000 , 1392); 
TEST_RR_OP64_OO( 176 , smslxda, 0x000000005b92d15e, 0xffffffff, 0x80000000 , 1400); 
TEST_RR_OP64_OO( 177 , smslxda, 0x000000005b92d15e, 0x80000000, 0x00000000 , 1408); 
TEST_RR_OP64_OO( 178 , smslxda, 0x000000005b92d15e, 0xffffffff, 0x00000000 , 1416); 
TEST_RR_OP64_OO( 179 , smslxda, 0x000000005b92d15e, 0x00000000, 0xffffffff , 1424); 
TEST_RR_OP64_OO( 180 , smslxda, 0x000000005b92d15e, 0x00000000, 0xffffffff , 1432); 
TEST_RR_OP64_OO( 181 , smslxda, 0x000000006863d15e, 0x5b9319a2, 0x80000000 , 1440); 
TEST_RR_OP64_OO( 182 , smslxda, 0x000000003f18515e, 0x80000000, 0x4cc6ad69 , 1448); 
TEST_RR_OP64_OO( 183 , smslxda, 0x00000000018812a8, 0x50bacc14, 0x954e7e9b , 1456); 
TEST_RR_OP64_OO( 184 , smslxda, 0x00000000018812a8, 0x00000000, 0x80000000 , 1464); 
TEST_RR_OP64_OO( 185 , smslxda, 0x00000000018792a8, 0xffffffff, 0x80000000 , 1472); 
TEST_RR_OP64_OO( 186 , smslxda, 0x00000000018792a8, 0x00000000, 0x7609ae06 , 1480); 
TEST_RR_OP64_OO( 187 , smslxda, 0x0000000001885fda, 0xffffffff, 0x7ef04e42 , 1488); 
TEST_RR_OP64_OO( 188 , smslxda, 0x0000000001885fda, 0x9c7b1b45, 0x00000000 , 1496); 
TEST_RR_OP64_OO( 189 , smslxda, 0x000000000187dfda, 0x80000000, 0xffffffff , 1504); 
TEST_RR_OP64_OO( 190 , smslxda, 0x000000000187dfda, 0xffffffff, 0x00000000 , 1512); 
TEST_RR_OP64_OO( 191 , smslxda, 0x000000000187dfda, 0x00000000, 0x00000000 , 1520); 
TEST_RR_OP64_OO( 192 , smslxda, 0x000000001782dfda, 0x80000000, 0xcb732bf6 , 1528); 
TEST_RR_OP64_OO( 193 , smslxda, 0x000000001782dfd8, 0xffffffff, 0xffffffff , 1536); 
TEST_RR_OP64_OO( 194 , smslxda, 0x00000000178375f2, 0x18157e05, 0xffffffff , 1544); 
TEST_RR_OP64_OO( 195 , smslxda, 0x000000003070f5f2, 0x80000000, 0x155631db , 1552); 
TEST_RR_OP64_OO( 196 , smslxda, 0x000000003070f5f0, 0xffffffff, 0xffffffff , 1560); 
TEST_RR_OP64_OO( 197 , smslxda, 0x000000003070f5f0, 0x00000000, 0xffffffff , 1568); 
TEST_RR_OP64_OO( 198 , smslxda, 0x000000003070f5f0, 0x80000000, 0x80000000 , 1576); 
TEST_RR_OP64_OO( 199 , smslxda, 0x000000002fc20f45, 0x1e8c144d, 0x9def46e6 , 1584); 

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
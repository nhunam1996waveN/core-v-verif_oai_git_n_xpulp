# See LICENSE for license details.
#*****************************************************************************
# uradd64.S
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

TEST_RR_OP64_IO( 2 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 8); 
TEST_RR_OP64_IO( 3 , uradd64, 0x921c70d65b968db6, 0xb72d1b6d, 0xa438e1ac, 0x00000000, 0x80000000, 16); 
TEST_RR_OP64_IO( 4 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 24); 
TEST_RR_OP64_IO( 5 , uradd64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 32); 
TEST_RR_OP64_IO( 6 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 40); 
TEST_RR_OP64_IO( 7 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 48); 
TEST_RR_OP64_IO( 8 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 56); 
TEST_RR_OP64_IO( 9 , uradd64, 0xaef3bd1ad9a4e1ac, 0xb349c359, 0xdde77a35, 0x00000000, 0x80000000, 64); 
TEST_RR_OP64_IO( 10 , uradd64, 0xcfdaa34b70e3802e, 0xe1c7005d, 0x9fb54696, 0xffffffff, 0xffffffff, 72); 
TEST_RR_OP64_IO( 11 , uradd64, 0xf01ab39c152fd807, 0xffffffff, 0xffffffff, 0x2a5fb010, 0xe0356738, 80); 
TEST_RR_OP64_IO( 12 , uradd64, 0x64773bd5015bf910, 0x02b7f220, 0x48ee77aa, 0x00000000, 0x80000000, 88); 
TEST_RR_OP64_IO( 13 , uradd64, 0x1d16756453eed6ed, 0xa7ddadda, 0x3a2ceac8, 0x00000000, 0x00000000, 96); 
TEST_RR_OP64_IO( 14 , uradd64, 0x7ba9ea4d19a89347, 0x00000000, 0x00000000, 0x3351268e, 0xf753d49a, 104); 
TEST_RR_OP64_IO( 15 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 112); 
TEST_RR_OP64_IO( 16 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 120); 
TEST_RR_OP64_IO( 17 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 128); 
TEST_RR_OP64_IO( 18 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 136); 
TEST_RR_OP64_IO( 19 , uradd64, 0x7b0f252f56210b8f, 0xac42171e, 0x761e4a5e, 0x00000000, 0x80000000, 144); 
TEST_RR_OP64_IO( 20 , uradd64, 0xb93e4809e3bd203a, 0xc77a4076, 0x727c9013, 0xffffffff, 0xffffffff, 152); 
TEST_RR_OP64_IO( 21 , uradd64, 0xc5fd9dd813fa45fb, 0x27f48bf7, 0x8bfb3bb0, 0xffffffff, 0xffffffff, 160); 
TEST_RR_OP64_IO( 22 , uradd64, 0xcf30d66d6ef334d3, 0xdde669a7, 0x9e61acda, 0xffffffff, 0xffffffff, 168); 
TEST_RR_OP64_IO( 23 , uradd64, 0x78d9d16c0620849c, 0x00000000, 0x00000000, 0x0c410938, 0xf1b3a2d8, 176); 
TEST_RR_OP64_IO( 24 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 184); 
TEST_RR_OP64_IO( 25 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 192); 
TEST_RR_OP64_IO( 26 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 200); 
TEST_RR_OP64_IO( 27 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 208); 
TEST_RR_OP64_IO( 28 , uradd64, 0xb3423131282935d7, 0x4a9e985b, 0xf0421b2f, 0x05b3d354, 0x76424733, 216); 
TEST_RR_OP64_IO( 29 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 224); 
TEST_RR_OP64_IO( 30 , uradd64, 0x5889e6e8701a3919, 0x4ce4c918, 0x15a9a071, 0x934fa91a, 0x9b6a2d5f, 232); 
TEST_RR_OP64_IO( 31 , uradd64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 240); 
TEST_RR_OP64_IO( 32 , uradd64, 0x7605c542c18dca02, 0x00000000, 0x00000000, 0x831b9404, 0xec0b8a85, 248); 
TEST_RR_OP64_IO( 33 , uradd64, 0x8bbaa824d995ddfe, 0xb32bbbfc, 0x97755049, 0x00000000, 0x80000000, 256); 
TEST_RR_OP64_IO( 34 , uradd64, 0x597de8e5e60f4a59, 0xc49659b3, 0x07f87658, 0x07883aff, 0xab035b73, 264); 
TEST_RR_OP64_IO( 35 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 272); 
TEST_RR_OP64_IO( 36 , uradd64, 0x649efdb9fda0da81, 0x13dd44f7, 0x33852d9b, 0xe764700b, 0x95b8cdd8, 280); 
TEST_RR_OP64_IO( 37 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 288); 
TEST_RR_OP64_IO( 38 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 296); 
TEST_RR_OP64_IO( 39 , uradd64, 0xf3f4f215b3c75cb3, 0xffffffff, 0xffffffff, 0x678eb967, 0xe7e9e42b, 304); 
TEST_RR_OP64_IO( 40 , uradd64, 0xbb5e4eb06e0c2f7a, 0x7f4e13f8, 0x8d8186a3, 0x5cca4afc, 0xe93b16bd, 312); 
TEST_RR_OP64_IO( 41 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 320); 
TEST_RR_OP64_IO( 42 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 328); 
TEST_RR_OP64_IO( 43 , uradd64, 0x066ec82710e96ef4, 0x00000000, 0x00000000, 0x21d2dde9, 0x0cdd904e, 336); 
TEST_RR_OP64_IO( 44 , uradd64, 0xf21bb8116889b1ca, 0xd1136396, 0xe4377022, 0xffffffff, 0xffffffff, 344); 
TEST_RR_OP64_IO( 45 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 352); 
TEST_RR_OP64_IO( 46 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 360); 
TEST_RR_OP64_IO( 47 , uradd64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 368); 
TEST_RR_OP64_IO( 48 , uradd64, 0xa642a2bfd30fe190, 0xfd6a244d, 0x7840f02c, 0xa8b59ed3, 0xd4445552, 376); 
TEST_RR_OP64_IO( 49 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 384); 
TEST_RR_OP64_IO( 50 , uradd64, 0x65cb8a9e59edeb61, 0x00000000, 0x80000000, 0xb3dbd6c2, 0x4b97153c, 392); 
TEST_RR_OP64_IO( 51 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 400); 
TEST_RR_OP64_IO( 52 , uradd64, 0x4e440b08569fdb50, 0xcf52c82c, 0x83b0c647, 0xddecee75, 0x18d74fc8, 408); 
TEST_RR_OP64_IO( 53 , uradd64, 0xe1515b7293858257, 0xffffffff, 0xffffffff, 0x270b04b0, 0xc2a2b6e5, 416); 
TEST_RR_OP64_IO( 54 , uradd64, 0xc603a80e58bbe89a, 0xb177d136, 0x8c07501c, 0xffffffff, 0xffffffff, 424); 
TEST_RR_OP64_IO( 55 , uradd64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 432); 
TEST_RR_OP64_IO( 56 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 440); 
TEST_RR_OP64_IO( 57 , uradd64, 0xcd0942b797804269, 0xffffffff, 0xffffffff, 0x2f0084d4, 0x9a12856f, 448); 
TEST_RR_OP64_IO( 58 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 456); 
TEST_RR_OP64_IO( 59 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 464); 
TEST_RR_OP64_IO( 60 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 472); 
TEST_RR_OP64_IO( 61 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 480); 
TEST_RR_OP64_IO( 62 , uradd64, 0x9a930bf0df6c68b9, 0xbed8d173, 0xb52617e1, 0x00000000, 0x80000000, 488); 
TEST_RR_OP64_IO( 63 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 496); 
TEST_RR_OP64_IO( 64 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 504); 
TEST_RR_OP64_IO( 65 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 512); 
TEST_RR_OP64_IO( 66 , uradd64, 0xef3bb7c81581f36c, 0x2b03e6d9, 0xde776f90, 0xffffffff, 0xffffffff, 520); 
TEST_RR_OP64_IO( 67 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 528); 
TEST_RR_OP64_IO( 68 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 536); 
TEST_RR_OP64_IO( 69 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 544); 
TEST_RR_OP64_IO( 70 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 552); 
TEST_RR_OP64_IO( 71 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 560); 
TEST_RR_OP64_IO( 72 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 568); 
TEST_RR_OP64_IO( 73 , uradd64, 0x9097de3506abb197, 0x9368e11b, 0x76a22578, 0x79ee8214, 0xaa8d96f1, 576); 
TEST_RR_OP64_IO( 74 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 584); 
TEST_RR_OP64_IO( 75 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 592); 
TEST_RR_OP64_IO( 76 , uradd64, 0x9b64ed3d637ddb9e, 0x00000000, 0x80000000, 0xc6fbb73c, 0xb6c9da7a, 600); 
TEST_RR_OP64_IO( 77 , uradd64, 0x7a14217400c0cf12, 0x00000000, 0x00000000, 0x01819e24, 0xf42842e8, 608); 
TEST_RR_OP64_IO( 78 , uradd64, 0x0f14f38f070f87ed, 0x0e1f0fda, 0x1e29e71e, 0x00000000, 0x00000000, 616); 
TEST_RR_OP64_IO( 79 , uradd64, 0x66ffddc1fb0d4746, 0x3e029396, 0x1af862fc, 0xb817faf7, 0xb3075887, 624); 
TEST_RR_OP64_IO( 80 , uradd64, 0xf2e1d7a1ebcffebe, 0xffffffff, 0xffffffff, 0xd79ffd7e, 0xe5c3af43, 632); 
TEST_RR_OP64_IO( 81 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 640); 
TEST_RR_OP64_IO( 82 , uradd64, 0x6cc27806815f8a0e, 0x00000000, 0x80000000, 0x02bf141d, 0x5984f00d, 648); 
TEST_RR_OP64_IO( 83 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 656); 
TEST_RR_OP64_IO( 84 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 664); 
TEST_RR_OP64_IO( 85 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 672); 
TEST_RR_OP64_IO( 86 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 680); 
TEST_RR_OP64_IO( 87 , uradd64, 0xe45e7d4a1074eca3, 0xffffffff, 0xffffffff, 0x20e9d948, 0xc8bcfa94, 688); 
TEST_RR_OP64_IO( 88 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 696); 
TEST_RR_OP64_IO( 89 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 704); 
TEST_RR_OP64_IO( 90 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 712); 
TEST_RR_OP64_IO( 91 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 720); 
TEST_RR_OP64_IO( 92 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 728); 
TEST_RR_OP64_IO( 93 , uradd64, 0x71c047f18519b901, 0x00000000, 0x80000000, 0x0a337202, 0x63808fe3, 736); 
TEST_RR_OP64_IO( 94 , uradd64, 0x9ae3b552555c6b13, 0xaab8d627, 0xb5c76aa4, 0x00000000, 0x80000000, 744); 
TEST_RR_OP64_IO( 95 , uradd64, 0xaa4245d536aa0d10, 0x00000000, 0x80000000, 0x6d541a21, 0xd4848baa, 752); 
TEST_RR_OP64_IO( 96 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 760); 
TEST_RR_OP64_IO( 97 , uradd64, 0xa7f4e2895d9f08ea, 0xffffffff, 0xffffffff, 0xbb3e11d6, 0x4fe9c512, 768); 
TEST_RR_OP64_IO( 98 , uradd64, 0x32a75b3590f92490, 0x21f24920, 0x654eb66b, 0x00000000, 0x00000000, 776); 
TEST_RR_OP64_IO( 99 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 784); 
TEST_RR_OP64_IO( 100 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 792); 
TEST_RR_OP64_IO( 101 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 800); 
TEST_RR_OP64_IO( 102 , uradd64, 0x94d8f2a487dc045f, 0xffffffff, 0xffffffff, 0x0fb808c0, 0x29b1e549, 808); 
TEST_RR_OP64_IO( 103 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 816); 
TEST_RR_OP64_IO( 104 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 824); 
TEST_RR_OP64_IO( 105 , uradd64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 832); 
TEST_RR_OP64_IO( 106 , uradd64, 0x67cf98fb24935e39, 0x00000000, 0x80000000, 0x4926bc72, 0x4f9f31f6, 840); 
TEST_RR_OP64_IO( 107 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 848); 
TEST_RR_OP64_IO( 108 , uradd64, 0x725a20d8c181cd29, 0xd48fabc0, 0xcb124faf, 0xae73ee93, 0x19a1f201, 856); 
TEST_RR_OP64_IO( 109 , uradd64, 0x81c4b9d8bc643811, 0x00000000, 0x80000000, 0x78c87022, 0x838973b1, 864); 
TEST_RR_OP64_IO( 110 , uradd64, 0xf7f3b54f9999f02f, 0xffffffff, 0xffffffff, 0x3333e05f, 0xefe76a9f, 872); 
TEST_RR_OP64_IO( 111 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 880); 
TEST_RR_OP64_IO( 112 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 888); 
TEST_RR_OP64_IO( 113 , uradd64, 0x2654de4f8baf4a70, 0x175e94e1, 0x4ca9bc9f, 0x00000000, 0x00000000, 896); 
TEST_RR_OP64_IO( 114 , uradd64, 0x7c2b9f187489fcf9, 0xe913f9f2, 0x78573e30, 0x00000000, 0x80000000, 904); 
TEST_RR_OP64_IO( 115 , uradd64, 0x2f3c6a2b4e799792, 0x9cf32f25, 0x5e78d456, 0x00000000, 0x00000000, 912); 
TEST_RR_OP64_IO( 116 , uradd64, 0x74ecf6ef6717dafb, 0x00000000, 0x00000000, 0xce2fb5f6, 0xe9d9edde, 920); 
TEST_RR_OP64_IO( 117 , uradd64, 0xc7ec856957d09a1b, 0xffffffff, 0xffffffff, 0xafa13438, 0x8fd90ad2, 928); 
TEST_RR_OP64_IO( 118 , uradd64, 0xaa8a48e1dd8b0c1f, 0xbb16183f, 0xd51491c3, 0x00000000, 0x80000000, 936); 
TEST_RR_OP64_IO( 119 , uradd64, 0xb2f9d5af4ddd754a, 0xffffffff, 0xffffffff, 0x9bbaea95, 0x65f3ab5e, 944); 
TEST_RR_OP64_IO( 120 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 952); 
TEST_RR_OP64_IO( 121 , uradd64, 0x0cf7c4d0de245b22, 0x06afa2d2, 0x055a0ffb, 0xb5991373, 0x149579a6, 960); 
TEST_RR_OP64_IO( 122 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 968); 
TEST_RR_OP64_IO( 123 , uradd64, 0x17047d2b62f4e56c, 0xc5e9cad8, 0x2e08fa56, 0x00000000, 0x00000000, 976); 
TEST_RR_OP64_IO( 124 , uradd64, 0xeddfb12a765c274a, 0xecb84e96, 0xdbbf6254, 0xffffffff, 0xffffffff, 984); 
TEST_RR_OP64_IO( 125 , uradd64, 0xbd73df26273b348e, 0x8c67a9eb, 0x9a41b6b7, 0xc20ebf31, 0xe0a60794, 992); 
TEST_RR_OP64_IO( 126 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1000); 
TEST_RR_OP64_IO( 127 , uradd64, 0x094f4451d0edffc1, 0xa1dbff83, 0x129e88a3, 0x00000000, 0x00000000, 1008); 
TEST_RR_OP64_IO( 128 , uradd64, 0x888daeb6d5386be0, 0x324815c3, 0x8e2c3c6c, 0x7828c1fe, 0x82ef2101, 1016); 
TEST_RR_OP64_IO( 129 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1024); 
TEST_RR_OP64_IO( 130 , uradd64, 0xb37d348b30869971, 0xffffffff, 0xffffffff, 0x610d32e3, 0x66fa6916, 1032); 
TEST_RR_OP64_IO( 131 , uradd64, 0x200d81fe9b365343, 0x00000000, 0x00000000, 0x366ca687, 0x401b03fd, 1040); 
TEST_RR_OP64_IO( 132 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1048); 
TEST_RR_OP64_IO( 133 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1056); 
TEST_RR_OP64_IO( 134 , uradd64, 0x6ce3b193fa0d3203, 0x00000000, 0x80000000, 0xf41a6406, 0x59c76327, 1064); 
TEST_RR_OP64_IO( 135 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1072); 
TEST_RR_OP64_IO( 136 , uradd64, 0xb542ccf4e98a5626, 0x00000000, 0x80000000, 0xd314ac4c, 0xea8599e9, 1080); 
TEST_RR_OP64_IO( 137 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1088); 
TEST_RR_OP64_IO( 138 , uradd64, 0xc542bfda40350d8b, 0xffffffff, 0xffffffff, 0x806a1b18, 0x8a857fb4, 1096); 
TEST_RR_OP64_IO( 139 , uradd64, 0xb978c7308a07656c, 0x140ecad8, 0xf2f18e61, 0x00000000, 0x80000000, 1104); 
TEST_RR_OP64_IO( 140 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1112); 
TEST_RR_OP64_IO( 141 , uradd64, 0xee318486b9107a8e, 0xffffffff, 0xffffffff, 0x7220f51e, 0xdc63090d, 1120); 
TEST_RR_OP64_IO( 142 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1128); 
TEST_RR_OP64_IO( 143 , uradd64, 0x8f5b289a2a02c692, 0x5f6bf76e, 0xa0cd1961, 0xf49995b7, 0x7de937d2, 1136); 
TEST_RR_OP64_IO( 144 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1144); 
TEST_RR_OP64_IO( 145 , uradd64, 0x51bea3207276b147, 0xe4ed628e, 0x237d4640, 0x00000000, 0x80000000, 1152); 
TEST_RR_OP64_IO( 146 , uradd64, 0x9dde2ceac59bb255, 0x8b3764ab, 0xbbbc59d5, 0x00000000, 0x80000000, 1160); 
TEST_RR_OP64_IO( 147 , uradd64, 0x61e4e54421b02955, 0x436052ab, 0xc3c9ca88, 0x00000000, 0x00000000, 1168); 
TEST_RR_OP64_IO( 148 , uradd64, 0xbfffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1176); 
TEST_RR_OP64_IO( 149 , uradd64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1184); 
TEST_RR_OP64_IO( 150 , uradd64, 0xb068e83cceb00ce5, 0x9d6019cb, 0x60d1d079, 0xffffffff, 0xffffffff, 1192); 
TEST_RR_OP64_IO( 151 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1200); 
TEST_RR_OP64_IO( 152 , uradd64, 0xd5f35df45f5372aa, 0xbea6e555, 0xabe6bbe8, 0xffffffff, 0xffffffff, 1208); 
TEST_RR_OP64_IO( 153 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1216); 
TEST_RR_OP64_IO( 154 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1224); 
TEST_RR_OP64_IO( 155 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1232); 
TEST_RR_OP64_IO( 156 , uradd64, 0x629c5815ce8d37bf, 0x9d1a6f7f, 0xc538b02b, 0x00000000, 0x00000000, 1240); 
TEST_RR_OP64_IO( 157 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1248); 
TEST_RR_OP64_IO( 158 , uradd64, 0x5e29318482b452c4, 0x00000000, 0x80000000, 0x0568a589, 0x3c526309, 1256); 
TEST_RR_OP64_IO( 159 , uradd64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1264); 
TEST_RR_OP64_IO( 160 , uradd64, 0x330517b736094786, 0x00000000, 0x00000000, 0x6c128f0d, 0x660a2f6e, 1272); 
TEST_RR_OP64_IO( 161 , uradd64, 0xa5670f7a654b01be, 0x00000000, 0x80000000, 0xca96037d, 0xcace1ef4, 1280); 
TEST_RR_OP64_IO( 162 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1288); 
TEST_RR_OP64_IO( 163 , uradd64, 0x5b798e696cc21f7f, 0x0ada0851, 0x3b9f6241, 0xceaa36ae, 0x7b53ba91, 1296); 
TEST_RR_OP64_IO( 164 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1304); 
TEST_RR_OP64_IO( 165 , uradd64, 0x65b88ce594fc1156, 0x00000000, 0x00000000, 0x29f822ac, 0xcb7119cb, 1312); 
TEST_RR_OP64_IO( 166 , uradd64, 0xd7c6495b5a18937e, 0xb43126fe, 0xaf8c92b6, 0xffffffff, 0xffffffff, 1320); 
TEST_RR_OP64_IO( 167 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1328); 
TEST_RR_OP64_IO( 168 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1336); 
TEST_RR_OP64_IO( 169 , uradd64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1344); 
TEST_RR_OP64_IO( 170 , uradd64, 0xaac55ede6b0a603c, 0x00000000, 0x80000000, 0xd614c079, 0xd58abdbc, 1352); 
TEST_RR_OP64_IO( 171 , uradd64, 0x015a03c35d67c4b1, 0xbacf8962, 0x02b40786, 0x00000000, 0x00000000, 1360); 
TEST_RR_OP64_IO( 172 , uradd64, 0x5ee2b6505b139548, 0x387df6c5, 0x0cef4218, 0x7da933cb, 0xb0d62a88, 1368); 
TEST_RR_OP64_IO( 173 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1376); 
TEST_RR_OP64_IO( 174 , uradd64, 0x1da7bb69551daaff, 0x00000000, 0x00000000, 0xaa3b55ff, 0x3b4f76d2, 1384); 
TEST_RR_OP64_IO( 175 , uradd64, 0x2a780d1fc196e5e1, 0x562de4dd, 0x4a6a8acf, 0x2cffe6e5, 0x0a858f70, 1392); 
TEST_RR_OP64_IO( 176 , uradd64, 0x473db99bb1074a96, 0x00000000, 0x00000000, 0x620e952c, 0x8e7b7337, 1400); 
TEST_RR_OP64_IO( 177 , uradd64, 0xbfffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1408); 
TEST_RR_OP64_IO( 178 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1416); 
TEST_RR_OP64_IO( 179 , uradd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1424); 
TEST_RR_OP64_IO( 180 , uradd64, 0xd2ebbc05463d8d01, 0xffffffff, 0xffffffff, 0x8c7b1a03, 0xa5d7780a, 1432); 
TEST_RR_OP64_IO( 181 , uradd64, 0xd3761bd99724c235, 0x2e49846c, 0xa6ec37b3, 0xffffffff, 0xffffffff, 1440); 
TEST_RR_OP64_IO( 182 , uradd64, 0xa823f64a93e2cba6, 0xffffffff, 0xffffffff, 0x27c5974d, 0x5047ec95, 1448); 
TEST_RR_OP64_IO( 183 , uradd64, 0x866ee8bd2e4a7aab, 0x5c94f557, 0x8cddd17a, 0x00000000, 0x80000000, 1456); 
TEST_RR_OP64_IO( 184 , uradd64, 0x3cade9de7fb8d461, 0xff71a8c2, 0x795bd3bc, 0x00000000, 0x00000000, 1464); 
TEST_RR_OP64_IO( 185 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1472); 
TEST_RR_OP64_IO( 186 , uradd64, 0xeb997014b19a4980, 0x63349302, 0xd732e029, 0xffffffff, 0xffffffff, 1480); 
TEST_RR_OP64_IO( 187 , uradd64, 0xc86b453fa2ca99fe, 0xffffffff, 0xffffffff, 0x459533fe, 0x90d68a7f, 1488); 
TEST_RR_OP64_IO( 188 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1496); 
TEST_RR_OP64_IO( 189 , uradd64, 0x682e89e753f4d4a9, 0x92bd3942, 0x2acd1e09, 0x152c7010, 0xa58ff5c5, 1504); 
TEST_RR_OP64_IO( 190 , uradd64, 0x56209e1c93833ff7, 0x00000000, 0x00000000, 0x27067fef, 0xac413c39, 1512); 
TEST_RR_OP64_IO( 191 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1520); 
TEST_RR_OP64_IO( 192 , uradd64, 0x6f8f5d5e7e30e644, 0xfc61cc88, 0x5f1ebabc, 0x00000000, 0x80000000, 1528); 
TEST_RR_OP64_IO( 193 , uradd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1536); 
TEST_RR_OP64_IO( 194 , uradd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1544); 
TEST_RR_OP64_IO( 195 , uradd64, 0x09c797cd1955457f, 0x00000000, 0x00000000, 0x32aa8aff, 0x138f2f9a, 1552); 
TEST_RR_OP64_IO( 196 , uradd64, 0x4000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1560); 
TEST_RR_OP64_IO( 197 , uradd64, 0x76e42455ab9ffca3, 0x00000000, 0x00000000, 0x573ff946, 0xedc848ab, 1568); 
TEST_RR_OP64_IO( 198 , uradd64, 0x6fce52962e79a841, 0x5cf35083, 0xdf9ca52c, 0x00000000, 0x00000000, 1576); 
TEST_RR_OP64_IO( 199 , uradd64, 0x7fffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1584); 

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
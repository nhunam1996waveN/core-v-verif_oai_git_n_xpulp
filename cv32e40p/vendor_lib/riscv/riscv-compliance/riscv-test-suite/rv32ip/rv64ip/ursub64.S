# See LICENSE for license details.
#*****************************************************************************
# ursub64.S
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

TEST_RR_OP64_IO( 2 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 8); 
TEST_RR_OP64_IO( 3 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 16); 
TEST_RR_OP64_IO( 4 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 24); 
TEST_RR_OP64_IO( 5 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 32); 
TEST_RR_OP64_IO( 6 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 40); 
TEST_RR_OP64_IO( 7 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 48); 
TEST_RR_OP64_IO( 8 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 56); 
TEST_RR_OP64_IO( 9 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 64); 
TEST_RR_OP64_IO( 10 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 72); 
TEST_RR_OP64_IO( 11 , ursub64, 0xfde9049db4abe956, 0x00000000, 0x00000000, 0x96a82d53, 0x042df6c4, 80); 
TEST_RR_OP64_IO( 12 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 88); 
TEST_RR_OP64_IO( 13 , ursub64, 0x30da936716da8d18, 0xffffffff, 0xffffffff, 0xd24ae5cf, 0x9e4ad931, 96); 
TEST_RR_OP64_IO( 14 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 104); 
TEST_RR_OP64_IO( 15 , ursub64, 0x8500479e7fbf1dbb, 0xff7e3b76, 0x0a008f3c, 0xffffffff, 0xffffffff, 112); 
TEST_RR_OP64_IO( 16 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 120); 
TEST_RR_OP64_IO( 17 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 128); 
TEST_RR_OP64_IO( 18 , ursub64, 0x5fd9117ac6f863eb, 0xffffffff, 0xffffffff, 0x720f3828, 0x404ddd0a, 136); 
TEST_RR_OP64_IO( 19 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 144); 
TEST_RR_OP64_IO( 20 , ursub64, 0x9e056e8938a7725d, 0x00000000, 0x00000000, 0x8eb11b46, 0xc3f522ed, 152); 
TEST_RR_OP64_IO( 21 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP64_IO( 22 , ursub64, 0x055b9a871a1cadde, 0x34395bbc, 0x8ab7350e, 0x00000000, 0x80000000, 168); 
TEST_RR_OP64_IO( 23 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 176); 
TEST_RR_OP64_IO( 24 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 184); 
TEST_RR_OP64_IO( 25 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 192); 
TEST_RR_OP64_IO( 26 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 200); 
TEST_RR_OP64_IO( 27 , ursub64, 0xf07260a1f00cc3b0, 0x762661a6, 0xc3a38af6, 0x960cda45, 0xe2bec9b2, 208); 
TEST_RR_OP64_IO( 28 , ursub64, 0xe67c63dbea7e4454, 0x5eaa6918, 0x78b49a5b, 0x89ade06f, 0xabbbd2a3, 216); 
TEST_RR_OP64_IO( 29 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 224); 
TEST_RR_OP64_IO( 30 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 232); 
TEST_RR_OP64_IO( 31 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 240); 
TEST_RR_OP64_IO( 32 , ursub64, 0x8fcd5997f77feed7, 0xeeffddad, 0x1f9ab32f, 0xffffffff, 0xffffffff, 248); 
TEST_RR_OP64_IO( 33 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 256); 
TEST_RR_OP64_IO( 34 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 264); 
TEST_RR_OP64_IO( 35 , ursub64, 0x0452e1acbeea0fd9, 0x00000000, 0x80000000, 0x822be04d, 0x775a3ca6, 272); 
TEST_RR_OP64_IO( 36 , ursub64, 0x7fc65460be595ba5, 0x7cb2b74b, 0xff8ca8c1, 0x00000000, 0x00000000, 280); 
TEST_RR_OP64_IO( 37 , ursub64, 0x011335a99f0089d8, 0x25ea130f, 0xa02073b5, 0xe7e8ff5f, 0x9dfa0861, 288); 
TEST_RR_OP64_IO( 38 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 296); 
TEST_RR_OP64_IO( 39 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 304); 
TEST_RR_OP64_IO( 40 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 312); 
TEST_RR_OP64_IO( 41 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 320); 
TEST_RR_OP64_IO( 42 , ursub64, 0x74e469c0a791bdb2, 0x4f237b64, 0xe9c8d381, 0x00000000, 0x00000000, 328); 
TEST_RR_OP64_IO( 43 , ursub64, 0x1f6ced23fdd9ce2d, 0xffffffff, 0xffffffff, 0x044c63a4, 0xc12625b8, 336); 
TEST_RR_OP64_IO( 44 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 344); 
TEST_RR_OP64_IO( 45 , ursub64, 0x331a87d342b5143a, 0xffffffff, 0xffffffff, 0x7a95d78a, 0x99caf059, 352); 
TEST_RR_OP64_IO( 46 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 360); 
TEST_RR_OP64_IO( 47 , ursub64, 0xea2740f4ad4ff1d5, 0x5a9fe3aa, 0xd44e81e9, 0xffffffff, 0xffffffff, 368); 
TEST_RR_OP64_IO( 48 , ursub64, 0x4762bfb4bec41a73, 0x7d8834e6, 0x8ec57f69, 0x00000000, 0x00000000, 376); 
TEST_RR_OP64_IO( 49 , ursub64, 0x34d842e7983cf5f0, 0x3a6b4cb6, 0x868ee5ab, 0x09f160d5, 0x1cde5fdc, 384); 
TEST_RR_OP64_IO( 50 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 392); 
TEST_RR_OP64_IO( 51 , ursub64, 0xed3357c3f72adfba, 0x00000000, 0x80000000, 0x11aa408b, 0xa5995078, 400); 
TEST_RR_OP64_IO( 52 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 408); 
TEST_RR_OP64_IO( 53 , ursub64, 0x735ca89014d8ce51, 0x29b19ca3, 0xe6b95120, 0x00000000, 0x00000000, 416); 
TEST_RR_OP64_IO( 54 , ursub64, 0xe286ce83a952f0d4, 0x00000000, 0x80000000, 0xad5a1e58, 0xbaf262f8, 424); 
TEST_RR_OP64_IO( 55 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 432); 
TEST_RR_OP64_IO( 56 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 440); 
TEST_RR_OP64_IO( 57 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 448); 
TEST_RR_OP64_IO( 58 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 456); 
TEST_RR_OP64_IO( 59 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 464); 
TEST_RR_OP64_IO( 60 , ursub64, 0x6da8a9e58ec3c055, 0x1d8780ab, 0xdb5153cb, 0x00000000, 0x00000000, 472); 
TEST_RR_OP64_IO( 61 , ursub64, 0x402af1f20bd8056b, 0x72f2fbac, 0xac968466, 0x5b42f0d5, 0x2c40a082, 480); 
TEST_RR_OP64_IO( 62 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 488); 
TEST_RR_OP64_IO( 63 , ursub64, 0x232a32cb372c7249, 0x6e58e493, 0x46546596, 0x00000000, 0x00000000, 496); 
TEST_RR_OP64_IO( 64 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 504); 
TEST_RR_OP64_IO( 65 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 512); 
TEST_RR_OP64_IO( 66 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 520); 
TEST_RR_OP64_IO( 67 , ursub64, 0x317656396898dd0f, 0x00000000, 0x80000000, 0x2ece45e1, 0x1d13538d, 528); 
TEST_RR_OP64_IO( 68 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 536); 
TEST_RR_OP64_IO( 69 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 544); 
TEST_RR_OP64_IO( 70 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 552); 
TEST_RR_OP64_IO( 71 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 560); 
TEST_RR_OP64_IO( 72 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 568); 
TEST_RR_OP64_IO( 73 , ursub64, 0x8bf1bf479ebbd69f, 0x00000000, 0x00000000, 0xc28852c1, 0xe81c8170, 576); 
TEST_RR_OP64_IO( 74 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 584); 
TEST_RR_OP64_IO( 75 , ursub64, 0x2a140496f026a7f2, 0x00000000, 0x80000000, 0x1fb2b01b, 0x2bd7f6d2, 592); 
TEST_RR_OP64_IO( 76 , ursub64, 0x130bbb2113346aa2, 0x86e7f301, 0xd980cbb8, 0x607f1dbd, 0xb3695576, 600); 
TEST_RR_OP64_IO( 77 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 608); 
TEST_RR_OP64_IO( 78 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 616); 
TEST_RR_OP64_IO( 79 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 624); 
TEST_RR_OP64_IO( 80 , ursub64, 0xee310cb921293381, 0x42526702, 0x5c621972, 0x00000000, 0x80000000, 632); 
TEST_RR_OP64_IO( 81 , ursub64, 0x2f605bf05073d659, 0xa0e7acb3, 0xdec0b7e0, 0x00000000, 0x80000000, 640); 
TEST_RR_OP64_IO( 82 , ursub64, 0xb0d8345c865936c4, 0x0cb26d87, 0x61b068b9, 0xffffffff, 0xffffffff, 648); 
TEST_RR_OP64_IO( 83 , ursub64, 0xc56e8dbec1266d1d, 0x824cda39, 0x8add1b7d, 0xffffffff, 0xffffffff, 656); 
TEST_RR_OP64_IO( 84 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 664); 
TEST_RR_OP64_IO( 85 , ursub64, 0x5deda254926916c8, 0x24d22d90, 0xbbdb44a9, 0x00000000, 0x00000000, 672); 
TEST_RR_OP64_IO( 86 , ursub64, 0xf3ea1ab6eff23810, 0xdfe47020, 0x67d4356d, 0x00000000, 0x80000000, 680); 
TEST_RR_OP64_IO( 87 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 688); 
TEST_RR_OP64_IO( 88 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP64_IO( 89 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 704); 
TEST_RR_OP64_IO( 90 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 712); 
TEST_RR_OP64_IO( 91 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP64_IO( 92 , ursub64, 0x4e9cf59d3d04b97c, 0x7a0972f8, 0x9d39eb3a, 0x00000000, 0x00000000, 728); 
TEST_RR_OP64_IO( 93 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 736); 
TEST_RR_OP64_IO( 94 , ursub64, 0x1294043fb6663d2d, 0x7541cb5b, 0x5ecfd54c, 0x08755100, 0x39a7cccd, 744); 
TEST_RR_OP64_IO( 95 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 752); 
TEST_RR_OP64_IO( 96 , ursub64, 0x3e47e8acb6cfc6c5, 0x00000000, 0x80000000, 0x92607276, 0x03702ea6, 760); 
TEST_RR_OP64_IO( 97 , ursub64, 0xe717cda66853cc11, 0x00000000, 0x80000000, 0x2f5867de, 0xb1d064b3, 768); 
TEST_RR_OP64_IO( 98 , ursub64, 0xfb90614d0be1b3db, 0x17c367b6, 0xf720c29a, 0xffffffff, 0xffffffff, 776); 
TEST_RR_OP64_IO( 99 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 784); 
TEST_RR_OP64_IO( 100 , ursub64, 0x9c501f38e1fcec15, 0xc3f9d829, 0x38a03e71, 0xffffffff, 0xffffffff, 792); 
TEST_RR_OP64_IO( 101 , ursub64, 0x4c933235bc757c72, 0xffffffff, 0xffffffff, 0x8715071a, 0x66d99b94, 800); 
TEST_RR_OP64_IO( 102 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 808); 
TEST_RR_OP64_IO( 103 , ursub64, 0x1b31c788247aa895, 0x0bc77d91, 0x941aa7b5, 0xc2d22c66, 0x5db718a4, 816); 
TEST_RR_OP64_IO( 104 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 824); 
TEST_RR_OP64_IO( 105 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 832); 
TEST_RR_OP64_IO( 106 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 840); 
TEST_RR_OP64_IO( 107 , ursub64, 0xcc3dfff3a73cedef, 0x00000000, 0x80000000, 0xb1862422, 0xe7840018, 848); 
TEST_RR_OP64_IO( 108 , ursub64, 0x3f34e57a1c8fde68, 0x391fbcd0, 0x7e69caf4, 0x00000000, 0x00000000, 856); 
TEST_RR_OP64_IO( 109 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 864); 
TEST_RR_OP64_IO( 110 , ursub64, 0x87f713b2872a88b1, 0x00000000, 0x00000000, 0xf1aaee9e, 0xf011d89a, 872); 
TEST_RR_OP64_IO( 111 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 880); 
TEST_RR_OP64_IO( 112 , ursub64, 0x2ffe971d73c7cc02, 0xe78f9804, 0xdffd2e3a, 0x00000000, 0x80000000, 888); 
TEST_RR_OP64_IO( 113 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 896); 
TEST_RR_OP64_IO( 114 , ursub64, 0x237c9f84e8782bf9, 0xd0f057f2, 0xc6f93f09, 0x00000000, 0x80000000, 904); 
TEST_RR_OP64_IO( 115 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 912); 
TEST_RR_OP64_IO( 116 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 920); 
TEST_RR_OP64_IO( 117 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 928); 
TEST_RR_OP64_IO( 118 , ursub64, 0x1dd7577acfc2c9fd, 0x9f8593fb, 0x3baeaef5, 0x00000000, 0x00000000, 936); 
TEST_RR_OP64_IO( 119 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 944); 
TEST_RR_OP64_IO( 120 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 952); 
TEST_RR_OP64_IO( 121 , ursub64, 0xa0c8511b82424a7b, 0x048494f5, 0x4190a237, 0xffffffff, 0xffffffff, 960); 
TEST_RR_OP64_IO( 122 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 968); 
TEST_RR_OP64_IO( 123 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 976); 
TEST_RR_OP64_IO( 124 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 984); 
TEST_RR_OP64_IO( 125 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 992); 
TEST_RR_OP64_IO( 126 , ursub64, 0xf8676f22a6da46c7, 0x4db48d8e, 0xf0cede45, 0xffffffff, 0xffffffff, 1000); 
TEST_RR_OP64_IO( 127 , ursub64, 0x19601a083883c01e, 0xffffffff, 0xffffffff, 0x8ef87fc2, 0xcd3fcbef, 1008); 
TEST_RR_OP64_IO( 128 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1016); 
TEST_RR_OP64_IO( 129 , ursub64, 0xc6bb1cd641d51ed5, 0x83aa3daa, 0x8d7639ac, 0xffffffff, 0xffffffff, 1024); 
TEST_RR_OP64_IO( 130 , ursub64, 0x83e7e1747636eaef, 0x00000000, 0x00000000, 0x13922a21, 0xf8303d17, 1032); 
TEST_RR_OP64_IO( 131 , ursub64, 0x422e3967d007d900, 0xa00fb200, 0x845c72cf, 0x00000000, 0x00000000, 1040); 
TEST_RR_OP64_IO( 132 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1048); 
TEST_RR_OP64_IO( 133 , ursub64, 0x7243b712a3f57c4b, 0xffffffff, 0xffffffff, 0xb8150769, 0x1b7891da, 1056); 
TEST_RR_OP64_IO( 134 , ursub64, 0x2862dbd25ce272fd, 0xb9c4e5fb, 0xd0c5b7a4, 0x00000000, 0x80000000, 1064); 
TEST_RR_OP64_IO( 135 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1072); 
TEST_RR_OP64_IO( 136 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1080); 
TEST_RR_OP64_IO( 137 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1088); 
TEST_RR_OP64_IO( 138 , ursub64, 0x8d3ed6ddb2bbb453, 0x00000000, 0x00000000, 0x9a88975a, 0xe5825244, 1096); 
TEST_RR_OP64_IO( 139 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1104); 
TEST_RR_OP64_IO( 140 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1112); 
TEST_RR_OP64_IO( 141 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1120); 
TEST_RR_OP64_IO( 142 , ursub64, 0xbec452a60d2ef533, 0x1a5dea65, 0x7d88a54c, 0xffffffff, 0xffffffff, 1128); 
TEST_RR_OP64_IO( 143 , ursub64, 0xc8937deedc7cae1d, 0x24162c0e, 0x22ad7039, 0x6b1ccfd3, 0x9186745b, 1136); 
TEST_RR_OP64_IO( 144 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1144); 
TEST_RR_OP64_IO( 145 , ursub64, 0x3fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1152); 
TEST_RR_OP64_IO( 146 , ursub64, 0xfcce6b7e7f56fc9e, 0x7b72b1b9, 0x9785ecc4, 0x7cc4b87c, 0x9de915c7, 1160); 
TEST_RR_OP64_IO( 147 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1168); 
TEST_RR_OP64_IO( 148 , ursub64, 0x39d7a7fd4a926d3a, 0xffffffff, 0xffffffff, 0x6adb258a, 0x8c50b005, 1176); 
TEST_RR_OP64_IO( 149 , ursub64, 0x282e03adda43f215, 0xb487e42a, 0x505c075b, 0x00000000, 0x00000000, 1184); 
TEST_RR_OP64_IO( 150 , ursub64, 0x93621cbc13fad5e4, 0x00000000, 0x00000000, 0xd80a5438, 0xd93bc687, 1192); 
TEST_RR_OP64_IO( 151 , ursub64, 0x4db7037235dfa7c5, 0x6bbf4f8a, 0x9b6e06e4, 0x00000000, 0x00000000, 1200); 
TEST_RR_OP64_IO( 152 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1208); 
TEST_RR_OP64_IO( 153 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1216); 
TEST_RR_OP64_IO( 154 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1224); 
TEST_RR_OP64_IO( 155 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1232); 
TEST_RR_OP64_IO( 156 , ursub64, 0xbdf23ea203e9598a, 0x00000000, 0x00000000, 0xf82d4ceb, 0x841b82bb, 1240); 
TEST_RR_OP64_IO( 157 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1248); 
TEST_RR_OP64_IO( 158 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1256); 
TEST_RR_OP64_IO( 159 , ursub64, 0xda2ae1e62095728e, 0x412ae51b, 0xb455c3cc, 0xffffffff, 0xffffffff, 1264); 
TEST_RR_OP64_IO( 160 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1272); 
TEST_RR_OP64_IO( 161 , ursub64, 0x07f0835fa1426a57, 0xffffffff, 0xffffffff, 0xbd7b2b50, 0xf01ef940, 1280); 
TEST_RR_OP64_IO( 162 , ursub64, 0x6dcd3f694fbe3aa2, 0xffffffff, 0xffffffff, 0x60838abb, 0x2465812d, 1288); 
TEST_RR_OP64_IO( 163 , ursub64, 0x02d142ed4ba13ce0, 0x00000000, 0x80000000, 0x68bd8640, 0x7a5d7a25, 1296); 
TEST_RR_OP64_IO( 164 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1304); 
TEST_RR_OP64_IO( 165 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1312); 
TEST_RR_OP64_IO( 166 , ursub64, 0xe95392cebc5979a9, 0x3d5852cb, 0xa3aae41a, 0xc4a55f78, 0xd103be7c, 1320); 
TEST_RR_OP64_IO( 167 , ursub64, 0x7abe1bca06d96185, 0xffffffff, 0xffffffff, 0xf24d3cf4, 0x0a83c86b, 1328); 
TEST_RR_OP64_IO( 168 , ursub64, 0xd0304a79ff3ad6b0, 0xfe75ad61, 0x206094f3, 0x00000000, 0x80000000, 1336); 
TEST_RR_OP64_IO( 169 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1344); 
TEST_RR_OP64_IO( 170 , ursub64, 0xd2a5ec37ca3323d0, 0x00000000, 0x80000000, 0x6b99b85f, 0xdab42790, 1352); 
TEST_RR_OP64_IO( 171 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1360); 
TEST_RR_OP64_IO( 172 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1368); 
TEST_RR_OP64_IO( 173 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1376); 
TEST_RR_OP64_IO( 174 , ursub64, 0x5e606d402ed454ad, 0xffffffff, 0xffffffff, 0xa25756a4, 0x433f257f, 1384); 
TEST_RR_OP64_IO( 175 , ursub64, 0x718421ac02b8c39a, 0xffffffff, 0xffffffff, 0xfa8e78ca, 0x1cf7bca7, 1392); 
TEST_RR_OP64_IO( 176 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1400); 
TEST_RR_OP64_IO( 177 , ursub64, 0x0468e5667d1dcd6a, 0x686aa9a0, 0x9a0227bd, 0x6e2f0ecb, 0x91305cf0, 1408); 
TEST_RR_OP64_IO( 178 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1416); 
TEST_RR_OP64_IO( 179 , ursub64, 0xed2fb4d9650e56dd, 0xca1cadb9, 0xda5f69b2, 0xffffffff, 0xffffffff, 1424); 
TEST_RR_OP64_IO( 180 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1432); 
TEST_RR_OP64_IO( 181 , ursub64, 0xc000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1440); 
TEST_RR_OP64_IO( 182 , ursub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1448); 
TEST_RR_OP64_IO( 183 , ursub64, 0x2ac2ac12cfa681d7, 0x00000000, 0x80000000, 0x60b2fc52, 0x2a7aa7da, 1456); 
TEST_RR_OP64_IO( 184 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1464); 
TEST_RR_OP64_IO( 185 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1472); 
TEST_RR_OP64_IO( 186 , ursub64, 0x1b4e87de9efe67f7, 0x3dfccfef, 0x369d0fbd, 0x00000000, 0x00000000, 1480); 
TEST_RR_OP64_IO( 187 , ursub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1488); 
TEST_RR_OP64_IO( 188 , ursub64, 0x04f1b582e5365449, 0xca6ca892, 0x09e36b05, 0x00000000, 0x00000000, 1496); 
TEST_RR_OP64_IO( 189 , ursub64, 0x94b21a98aa41da2a, 0x00000000, 0x00000000, 0xab7c4bab, 0xd69bcace, 1504); 
TEST_RR_OP64_IO( 190 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1512); 
TEST_RR_OP64_IO( 191 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1520); 
TEST_RR_OP64_IO( 192 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1528); 
TEST_RR_OP64_IO( 193 , ursub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1536); 
TEST_RR_OP64_IO( 194 , ursub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1544); 
TEST_RR_OP64_IO( 195 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1552); 
TEST_RR_OP64_IO( 196 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1560); 
TEST_RR_OP64_IO( 197 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1568); 
TEST_RR_OP64_IO( 198 , ursub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1576); 
TEST_RR_OP64_IO( 199 , ursub64, 0x4000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1584); 

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
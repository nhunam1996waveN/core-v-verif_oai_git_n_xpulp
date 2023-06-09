# See LICENSE for license details.
#*****************************************************************************
# smar64.S
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

TEST_RR_OP64_OO( 2 , smar64, 0x0000000000000000, 0x00000000, 0x11859ae2 , 8); 
TEST_RR_OP64_OO( 3 , smar64, 0x0000000000000000, 0x00000000, 0x80000000 , 16); 
TEST_RR_OP64_OO( 4 , smar64, 0x0000000080000000, 0x80000000, 0xffffffff , 24); 
TEST_RR_OP64_OO( 5 , smar64, 0x0c6349a0f6b45080, 0x7c9f1c83, 0x19728580 , 32); 
TEST_RR_OP64_OO( 6 , smar64, 0x0c6349a0bd715394, 0x3942fcec, 0xffffffff , 40); 
TEST_RR_OP64_OO( 7 , smar64, 0x0c6349a0bd715394, 0x00000000, 0x80000000 , 48); 
TEST_RR_OP64_OO( 8 , smar64, 0x0c6349a1071ec8ab, 0xffffffff, 0xb6528ae9 , 56); 
TEST_RR_OP64_OO( 9 , smar64, 0x0c6349a1071ec8ab, 0xffffffff, 0x00000000 , 64); 
TEST_RR_OP64_OO( 10 , smar64, 0x0c6349a0b130a169, 0x55ee2742, 0xffffffff , 72); 
TEST_RR_OP64_OO( 11 , smar64, 0x0c6349a0b130a169, 0x00000000, 0x80000000 , 80); 
TEST_RR_OP64_OO( 12 , smar64, 0x0c6349a0b130a169, 0x00000000, 0x00000000 , 88); 
TEST_RR_OP64_OO( 13 , smar64, 0x0c6349a082eedc5d, 0xffffffff, 0x2e41c50c , 96); 
TEST_RR_OP64_OO( 14 , smar64, 0x0c6349a101214f28, 0x81cd8d35, 0xffffffff , 104); 
TEST_RR_OP64_OO( 15 , smar64, 0x0c1129e781214f28, 0x80000000, 0x00a43f73 , 112); 
TEST_RR_OP64_OO( 16 , smar64, 0x0c1129e781214f28, 0x80000000, 0x00000000 , 120); 
TEST_RR_OP64_OO( 17 , smar64, 0x0c1129e781214f28, 0x00000000, 0xffffffff , 128); 
TEST_RR_OP64_OO( 18 , smar64, 0x0c1129e781214f28, 0x00000000, 0x80000000 , 136); 
TEST_RR_OP64_OO( 19 , smar64, 0x0c1129e781214f28, 0x00000000, 0xffffffff , 144); 
TEST_RR_OP64_OO( 20 , smar64, 0x4c1129e781214f28, 0x80000000, 0x80000000 , 152); 
TEST_RR_OP64_OO( 21 , smar64, 0x4c1129e781214f29, 0xffffffff, 0xffffffff , 160); 
TEST_RR_OP64_OO( 22 , smar64, 0x8c1129e781214f29, 0x80000000, 0x80000000 , 168); 
TEST_RR_OP64_OO( 23 , smar64, 0x8c1129e781214f29, 0x00000000, 0x00000000 , 176); 
TEST_RR_OP64_OO( 24 , smar64, 0x8c1129e707305b99, 0x79f0f390, 0xffffffff , 184); 
TEST_RR_OP64_OO( 25 , smar64, 0x8c1129e707305b99, 0x80000000, 0x00000000 , 192); 
TEST_RR_OP64_OO( 26 , smar64, 0x8c1129e707305b99, 0x00000000, 0x478e2274 , 200); 
TEST_RR_OP64_OO( 27 , smar64, 0x8c1129e707305b99, 0x887a5b7d, 0x00000000 , 208); 
TEST_RR_OP64_OO( 28 , smar64, 0x91737fc987305b99, 0x80000000, 0xf53b543b , 216); 
TEST_RR_OP64_OO( 29 , smar64, 0x9768bbee87305b99, 0xf41587b6, 0x80000000 , 224); 
TEST_RR_OP64_OO( 30 , smar64, 0x9768bbee87305b99, 0x00000000, 0x00000000 , 232); 
TEST_RR_OP64_OO( 31 , smar64, 0x9768bbee87305b99, 0xffffffff, 0x00000000 , 240); 
TEST_RR_OP64_OO( 32 , smar64, 0x9768bbee87305b99, 0x00000000, 0x00000000 , 248); 
TEST_RR_OP64_OO( 33 , smar64, 0x9768bbee87305b99, 0x00000000, 0x00000000 , 256); 
TEST_RR_OP64_OO( 34 , smar64, 0xbc9a085b07305b99, 0x80000000, 0xb59d6727 , 264); 
TEST_RR_OP64_OO( 35 , smar64, 0xbc9a085b07305b99, 0x00000000, 0xffffffff , 272); 
TEST_RR_OP64_OO( 36 , smar64, 0xbc9a085abe58c196, 0x48d79a03, 0xffffffff , 280); 
TEST_RR_OP64_OO( 37 , smar64, 0xbc9a085abe58c196, 0xffffffff, 0x00000000 , 288); 
TEST_RR_OP64_OO( 38 , smar64, 0xbc9a085aa9588206, 0x15003f90, 0xffffffff , 296); 
TEST_RR_OP64_OO( 39 , smar64, 0xbc9a085aa9588206, 0x00000000, 0x6157fec2 , 304); 
TEST_RR_OP64_OO( 40 , smar64, 0xbc9a085aa9588206, 0x00000000, 0x80000000 , 312); 
TEST_RR_OP64_OO( 41 , smar64, 0xbc9a085aa9588206, 0xffffffff, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , smar64, 0xbc9a085b29588206, 0x80000000, 0xffffffff , 328); 
TEST_RR_OP64_OO( 43 , smar64, 0xc3d31d9b2533b7f5, 0xd173f8a9, 0xd84660d7 , 336); 
TEST_RR_OP64_OO( 44 , smar64, 0xc3d31d9b2533b7f5, 0xffffffff, 0x00000000 , 344); 
TEST_RR_OP64_OO( 45 , smar64, 0xc3d31d9b2533b7f5, 0x00000000, 0x00000000 , 352); 
TEST_RR_OP64_OO( 46 , smar64, 0xc3d31d9b2533b7f5, 0x00000000, 0xffffffff , 360); 
TEST_RR_OP64_OO( 47 , smar64, 0xc3d31d9b2533b7f5, 0x00000000, 0x80000000 , 368); 
TEST_RR_OP64_OO( 48 , smar64, 0xc3d31d9ba533b7f5, 0x80000000, 0xffffffff , 376); 
TEST_RR_OP64_OO( 49 , smar64, 0xc3d31d9bba1814ab, 0xffffffff, 0xeb1ba34a , 384); 
TEST_RR_OP64_OO( 50 , smar64, 0xc398bc22ba1814ab, 0x0074c2f2, 0x80000000 , 392); 
TEST_RR_OP64_OO( 51 , smar64, 0xc398bc22a5d9bbbf, 0x143e58ec, 0xffffffff , 400); 
TEST_RR_OP64_OO( 52 , smar64, 0xc398bc22a5d9bbbf, 0x00000000, 0x80000000 , 408); 
TEST_RR_OP64_OO( 53 , smar64, 0xc398bc229ed9b33e, 0x07000881, 0xffffffff , 416); 
TEST_RR_OP64_OO( 54 , smar64, 0xc398bc229ed9b33e, 0x3abfaae2, 0x00000000 , 424); 
TEST_RR_OP64_OO( 55 , smar64, 0x0398bc229ed9b33e, 0x80000000, 0x80000000 , 432); 
TEST_RR_OP64_OO( 56 , smar64, 0x0398bc22bfe503a3, 0xdef4af9b, 0xffffffff , 440); 
TEST_RR_OP64_OO( 57 , smar64, 0x14ddf14fbfe503a3, 0x80000000, 0xdd7595a6 , 448); 
TEST_RR_OP64_OO( 58 , smar64, 0x14ddf14fbfe503a3, 0xffffffff, 0x00000000 , 456); 
TEST_RR_OP64_OO( 59 , smar64, 0x54ddf14fbfe503a3, 0x80000000, 0x80000000 , 464); 
TEST_RR_OP64_OO( 60 , smar64, 0x54ddf14fbfe503a4, 0xffffffff, 0xffffffff , 472); 
TEST_RR_OP64_OO( 61 , smar64, 0x54ddf14fbfe503a4, 0xffffffff, 0x00000000 , 480); 
TEST_RR_OP64_OO( 62 , smar64, 0x54ddf14fbfe503a4, 0xffffffff, 0x00000000 , 488); 
TEST_RR_OP64_OO( 63 , smar64, 0x54ddf1503fe503a4, 0x80000000, 0xffffffff , 496); 
TEST_RR_OP64_OO( 64 , smar64, 0x94ddf1503fe503a4, 0x80000000, 0x80000000 , 504); 
TEST_RR_OP64_OO( 65 , smar64, 0xd4ddf1503fe503a4, 0x80000000, 0x80000000 , 512); 
TEST_RR_OP64_OO( 66 , smar64, 0xd4ddf1503fe503a4, 0x00000000, 0x689f9631 , 520); 
TEST_RR_OP64_OO( 67 , smar64, 0xd4ddf1503fe503a4, 0x00000000, 0x4aa0fea3 , 528); 
TEST_RR_OP64_OO( 68 , smar64, 0xd615a3dc10a3018e, 0x0639fc8e, 0x320f4ae3 , 536); 
TEST_RR_OP64_OO( 69 , smar64, 0xd615a3dc10a3018e, 0x00000000, 0xffffffff , 544); 
TEST_RR_OP64_OO( 70 , smar64, 0xd615a3dbe2e3c205, 0x2dbf3f89, 0xffffffff , 552); 
TEST_RR_OP64_OO( 71 , smar64, 0xb61991e562e3c205, 0x3ff823ed, 0x80000000 , 560); 
TEST_RR_OP64_OO( 72 , smar64, 0xb205550285c564d6, 0x6404ad81, 0xf58f3d51 , 568); 
TEST_RR_OP64_OO( 73 , smar64, 0xb205550305c564d6, 0xffffffff, 0x80000000 , 576); 
TEST_RR_OP64_OO( 74 , smar64, 0xb205550385c564d6, 0xffffffff, 0x80000000 , 584); 
TEST_RR_OP64_OO( 75 , smar64, 0xb950195305c564d6, 0xf16a7761, 0x80000000 , 592); 
TEST_RR_OP64_OO( 76 , smar64, 0xb950195385c564d6, 0x80000000, 0xffffffff , 600); 
TEST_RR_OP64_OO( 77 , smar64, 0xb950195405c564d6, 0x80000000, 0xffffffff , 608); 
TEST_RR_OP64_OO( 78 , smar64, 0xf950195405c564d6, 0x80000000, 0x80000000 , 616); 
TEST_RR_OP64_OO( 79 , smar64, 0xf950195485c564d6, 0xffffffff, 0x80000000 , 624); 
TEST_RR_OP64_OO( 80 , smar64, 0x3950195485c564d6, 0x80000000, 0x80000000 , 632); 
TEST_RR_OP64_OO( 81 , smar64, 0x3950195485c564d7, 0xffffffff, 0xffffffff , 640); 
TEST_RR_OP64_OO( 82 , smar64, 0x3950195485c564d7, 0x01b7998a, 0x00000000 , 648); 
TEST_RR_OP64_OO( 83 , smar64, 0x39501954a894113f, 0xdd315398, 0xffffffff , 656); 
TEST_RR_OP64_OO( 84 , smar64, 0x39501954a8941140, 0xffffffff, 0xffffffff , 664); 
TEST_RR_OP64_OO( 85 , smar64, 0x79501954a8941140, 0x80000000, 0x80000000 , 672); 
TEST_RR_OP64_OO( 86 , smar64, 0x47b2a8d7a8941140, 0x80000000, 0x633ae0fa , 680); 
TEST_RR_OP64_OO( 87 , smar64, 0x47b2a8d7a8941140, 0x80000000, 0x00000000 , 688); 
TEST_RR_OP64_OO( 88 , smar64, 0x47b2a8d7a8941140, 0x00000000, 0x00000000 , 696); 
TEST_RR_OP64_OO( 89 , smar64, 0x4cbd6ba828941140, 0xf5ea7a5f, 0x80000000 , 704); 
TEST_RR_OP64_OO( 90 , smar64, 0x4cbd6ba826131aeb, 0x0280f655, 0xffffffff , 712); 
TEST_RR_OP64_OO( 91 , smar64, 0x4cbd6ba826131aeb, 0x80000000, 0x00000000 , 720); 
TEST_RR_OP64_OO( 92 , smar64, 0x396e719b26131aeb, 0x80000000, 0x269df41a , 728); 
TEST_RR_OP64_OO( 93 , smar64, 0x396e719b26131aeb, 0xffffffff, 0x00000000 , 736); 
TEST_RR_OP64_OO( 94 , smar64, 0x49c6b42a26131aeb, 0xdf4f7ae2, 0x80000000 , 744); 
TEST_RR_OP64_OO( 95 , smar64, 0x49c6b42a26131aeb, 0x66eb8fc6, 0x00000000 , 752); 
TEST_RR_OP64_OO( 96 , smar64, 0x49c6b42a70525de0, 0xffffffff, 0xb5c0bd0b , 760); 
TEST_RR_OP64_OO( 97 , smar64, 0x49c6b42af0525de0, 0xffffffff, 0x80000000 , 768); 
TEST_RR_OP64_OO( 98 , smar64, 0x49c6b42b70525de0, 0x80000000, 0xffffffff , 776); 
TEST_RR_OP64_OO( 99 , smar64, 0x49c6b42b9e348ea8, 0xffffffff, 0xd21dcf38 , 784); 
TEST_RR_OP64_OO( 100 , smar64, 0x49c6b42b9e348ea8, 0xffffffff, 0x00000000 , 792); 
TEST_RR_OP64_OO( 101 , smar64, 0x49c6b42b304579ff, 0xffffffff, 0x6def14a9 , 800); 
TEST_RR_OP64_OO( 102 , smar64, 0x701171d0b04579ff, 0x80000000, 0xb36a84b5 , 808); 
TEST_RR_OP64_OO( 103 , smar64, 0x701171d0b04579ff, 0xffffffff, 0x00000000 , 816); 
TEST_RR_OP64_OO( 104 , smar64, 0x701171d046bc6ef4, 0x69890b0b, 0xffffffff , 824); 
TEST_RR_OP64_OO( 105 , smar64, 0x701171d046bc6ef4, 0x00000000, 0x00000000 , 832); 
TEST_RR_OP64_OO( 106 , smar64, 0xb01171d046bc6ef4, 0x80000000, 0x80000000 , 840); 
TEST_RR_OP64_OO( 107 , smar64, 0xb01171d046bc6ef4, 0x0bf7d3ed, 0x00000000 , 848); 
TEST_RR_OP64_OO( 108 , smar64, 0xb01171d046bc6ef4, 0xafbc5b12, 0x00000000 , 856); 
TEST_RR_OP64_OO( 109 , smar64, 0xb01171d0c6bc6ef4, 0xffffffff, 0x80000000 , 864); 
TEST_RR_OP64_OO( 110 , smar64, 0xb01171d146bc6ef4, 0x80000000, 0xffffffff , 872); 
TEST_RR_OP64_OO( 111 , smar64, 0x797418b7c6bc6ef4, 0x6d3ab233, 0x80000000 , 880); 
TEST_RR_OP64_OO( 112 , smar64, 0x98c9bca346bc6ef4, 0x80000000, 0xc154b829 , 888); 
TEST_RR_OP64_OO( 113 , smar64, 0x98c9bca39a7bc8d7, 0xffffffff, 0xac40a61d , 896); 
TEST_RR_OP64_OO( 114 , smar64, 0x98c9bca39a7bc8d7, 0x9a20ab75, 0x00000000 , 904); 
TEST_RR_OP64_OO( 115 , smar64, 0x98c9bca39a7bc8d7, 0x00000000, 0x80000000 , 912); 
TEST_RR_OP64_OO( 116 , smar64, 0xd8c9bca39a7bc8d7, 0x80000000, 0x80000000 , 920); 
TEST_RR_OP64_OO( 117 , smar64, 0xd8c9bca39a7bc8d8, 0xffffffff, 0xffffffff , 928); 
TEST_RR_OP64_OO( 118 , smar64, 0x18c9bca39a7bc8d8, 0x80000000, 0x80000000 , 936); 
TEST_RR_OP64_OO( 119 , smar64, 0x18c9bca39a7bc8d8, 0x58126f86, 0x00000000 , 944); 
TEST_RR_OP64_OO( 120 , smar64, 0x18c9bca39a7bc8d8, 0x00000000, 0x1c232a43 , 952); 
TEST_RR_OP64_OO( 121 , smar64, 0x18c9bca39a7bc8d9, 0xffffffff, 0xffffffff , 960); 
TEST_RR_OP64_OO( 122 , smar64, 0x58c9bca39a7bc8d9, 0x80000000, 0x80000000 , 968); 
TEST_RR_OP64_OO( 123 , smar64, 0x35ed39721a7bc8d9, 0x45b90663, 0x80000000 , 976); 
TEST_RR_OP64_OO( 124 , smar64, 0x35ed39721a7bc8d9, 0x00000000, 0x2a56ffae , 984); 
TEST_RR_OP64_OO( 125 , smar64, 0x268f487c9a7bc8d9, 0x1ebbe1eb, 0x80000000 , 992); 
TEST_RR_OP64_OO( 126 , smar64, 0x268f487cdf46462c, 0xbb3582ad, 0xffffffff , 1000); 
TEST_RR_OP64_OO( 127 , smar64, 0x35b143fbc811adda, 0xd3685e96, 0xa91fda25 , 1008); 
TEST_RR_OP64_OO( 128 , smar64, 0x35b143fbc811adda, 0xffffffff, 0x00000000 , 1016); 
TEST_RR_OP64_OO( 129 , smar64, 0x35b143fc4811adda, 0xffffffff, 0x80000000 , 1024); 
TEST_RR_OP64_OO( 130 , smar64, 0x330c1baf79e9b20a, 0x07555bab, 0xa3a95c90 , 1032); 
TEST_RR_OP64_OO( 131 , smar64, 0x15a1632feb8c0dac, 0x77910609, 0xc1043712 , 1040); 
TEST_RR_OP64_OO( 132 , smar64, 0x15a1632feb8c0dad, 0xffffffff, 0xffffffff , 1048); 
TEST_RR_OP64_OO( 133 , smar64, 0x51404a8a6b8c0dad, 0x88c2314b, 0x80000000 , 1056); 
TEST_RR_OP64_OO( 134 , smar64, 0x51404a8a6b8c0dad, 0x00000000, 0x3c09a5c0 , 1064); 
TEST_RR_OP64_OO( 135 , smar64, 0x91404a8a6b8c0dad, 0x80000000, 0x80000000 , 1072); 
TEST_RR_OP64_OO( 136 , smar64, 0x579397256b8c0dad, 0x80000000, 0x735966ca , 1080); 
TEST_RR_OP64_OO( 137 , smar64, 0x579397256b8c0dad, 0x00000000, 0x80000000 , 1088); 
TEST_RR_OP64_OO( 138 , smar64, 0x579397256b8c0dad, 0x00000000, 0xffffffff , 1096); 
TEST_RR_OP64_OO( 139 , smar64, 0x579397256b8c0dad, 0x00000000, 0x80000000 , 1104); 
TEST_RR_OP64_OO( 140 , smar64, 0x579397256b8c0dad, 0x00000000, 0x80000000 , 1112); 
TEST_RR_OP64_OO( 141 , smar64, 0x579397256b8c0dad, 0x00000000, 0x3eb44c10 , 1120); 
TEST_RR_OP64_OO( 142 , smar64, 0x579397256b8c0dae, 0xffffffff, 0xffffffff , 1128); 
TEST_RR_OP64_OO( 143 , smar64, 0x579397256b8c0dae, 0x00000000, 0xe5ecdea7 , 1136); 
TEST_RR_OP64_OO( 144 , smar64, 0x979397256b8c0dae, 0x80000000, 0x80000000 , 1144); 
TEST_RR_OP64_OO( 145 , smar64, 0x979397256b8c0dae, 0x98e6422b, 0x00000000 , 1152); 
TEST_RR_OP64_OO( 146 , smar64, 0x71a4b2ca6b8c0dae, 0x4bddc8b6, 0x80000000 , 1160); 
TEST_RR_OP64_OO( 147 , smar64, 0x71a4b2ca6b8c0dae, 0x00000000, 0xffffffff , 1168); 
TEST_RR_OP64_OO( 148 , smar64, 0x71a4b2ca6b8c0dae, 0x80000000, 0x00000000 , 1176); 
TEST_RR_OP64_OO( 149 , smar64, 0x71a4b2ca6b8c0dae, 0xffffffff, 0x00000000 , 1184); 
TEST_RR_OP64_OO( 150 , smar64, 0x71a4b2ca6b8c0dae, 0x00000000, 0x00000000 , 1192); 
TEST_RR_OP64_OO( 151 , smar64, 0x71a4b2ca6b8c0dae, 0x00000000, 0x00000000 , 1200); 
TEST_RR_OP64_OO( 152 , smar64, 0x71a4b2ca6b8c0dae, 0x9c7af1b7, 0x00000000 , 1208); 
TEST_RR_OP64_OO( 153 , smar64, 0x71a4b2ca6b8c0dae, 0x00000000, 0x80000000 , 1216); 
TEST_RR_OP64_OO( 154 , smar64, 0x71a4b2ca6b8c0dae, 0x00000000, 0xffffffff , 1224); 
TEST_RR_OP64_OO( 155 , smar64, 0x71a4b2ca0847c0d4, 0xffffffff, 0x63444cda , 1232); 
TEST_RR_OP64_OO( 156 , smar64, 0x85abb9470847c0d4, 0x80000000, 0xd7f1f306 , 1240); 
TEST_RR_OP64_OO( 157 , smar64, 0x85abb9470847c0d4, 0x00000000, 0xb549c0bc , 1248); 
TEST_RR_OP64_OO( 158 , smar64, 0x85abb9470847c0d4, 0x00000000, 0x00000000 , 1256); 
TEST_RR_OP64_OO( 159 , smar64, 0x85abb9470847c0d4, 0x00000000, 0xafd7a27a , 1264); 
TEST_RR_OP64_OO( 160 , smar64, 0x85abb9478847c0d4, 0x80000000, 0xffffffff , 1272); 
TEST_RR_OP64_OO( 161 , smar64, 0x85abb9478847c0d4, 0x00000000, 0x80000000 , 1280); 
TEST_RR_OP64_OO( 162 , smar64, 0xc5abb9478847c0d4, 0x80000000, 0x80000000 , 1288); 
TEST_RR_OP64_OO( 163 , smar64, 0xc5abb9478847c0d4, 0x00000000, 0x00000000 , 1296); 
TEST_RR_OP64_OO( 164 , smar64, 0xc5abb9478847c0d4, 0x00000000, 0x00000000 , 1304); 
TEST_RR_OP64_OO( 165 , smar64, 0xc5abb9478847c0d4, 0xffffffff, 0x00000000 , 1312); 
TEST_RR_OP64_OO( 166 , smar64, 0xc3e0e02826115ba0, 0xeee0cf6a, 0x1acc8b8e , 1320); 
TEST_RR_OP64_OO( 167 , smar64, 0xc3e0e02826115ba0, 0x00000000, 0xffffffff , 1328); 
TEST_RR_OP64_OO( 168 , smar64, 0xc3e0e02826115ba0, 0x0f89a51b, 0x00000000 , 1336); 
TEST_RR_OP64_OO( 169 , smar64, 0x03e0e02826115ba0, 0x80000000, 0x80000000 , 1344); 
TEST_RR_OP64_OO( 170 , smar64, 0x03e0e02826115ba0, 0xffffffff, 0x00000000 , 1352); 
TEST_RR_OP64_OO( 171 , smar64, 0x03e0e02826115ba0, 0x00000000, 0x80000000 , 1360); 
TEST_RR_OP64_OO( 172 , smar64, 0x03e0e028a6115ba0, 0xffffffff, 0x80000000 , 1368); 
TEST_RR_OP64_OO( 173 , smar64, 0x03e0e02902e3db26, 0xffffffff, 0xa32d807a , 1376); 
TEST_RR_OP64_OO( 174 , smar64, 0x03e0e02902e3db26, 0xd4b05adc, 0x00000000 , 1384); 
TEST_RR_OP64_OO( 175 , smar64, 0x03e0e02982e3db26, 0xffffffff, 0x80000000 , 1392); 
TEST_RR_OP64_OO( 176 , smar64, 0xdff82ad782e3db26, 0x47d16aa4, 0x80000000 , 1400); 
TEST_RR_OP64_OO( 177 , smar64, 0xdff82ad782e3db26, 0x00000000, 0x9abac200 , 1408); 
TEST_RR_OP64_OO( 178 , smar64, 0xdff82ad802e3db26, 0x80000000, 0xffffffff , 1416); 
TEST_RR_OP64_OO( 179 , smar64, 0x0562f38d02e3db26, 0xb52a6e96, 0x80000000 , 1424); 
TEST_RR_OP64_OO( 180 , smar64, 0x0562f38d02e3db27, 0xffffffff, 0xffffffff , 1432); 
TEST_RR_OP64_OO( 181 , smar64, 0x068a3c1cd6b334e7, 0xf7f66e40, 0xdb42e01f , 1440); 
TEST_RR_OP64_OO( 182 , smar64, 0x068a3c1cce3b4fa8, 0xffffffff, 0x0877e53f , 1448); 
TEST_RR_OP64_OO( 183 , smar64, 0x068a3c1cce3b4fa8, 0x4c0719b9, 0x00000000 , 1456); 
TEST_RR_OP64_OO( 184 , smar64, 0x068a3c1cce3b4fa8, 0x05dc1713, 0x00000000 , 1464); 
TEST_RR_OP64_OO( 185 , smar64, 0x068a3c1cce3b4fa8, 0x00000000, 0xdbc3ec9f , 1472); 
TEST_RR_OP64_OO( 186 , smar64, 0x068a3c1cce3b4fa8, 0x00000000, 0xffffffff , 1480); 
TEST_RR_OP64_OO( 187 , smar64, 0x068a3c1d4e3b4fa8, 0xffffffff, 0x80000000 , 1488); 
TEST_RR_OP64_OO( 188 , smar64, 0x068a3c1d4e3b4fa8, 0x00000000, 0x80000000 , 1496); 
TEST_RR_OP64_OO( 189 , smar64, 0x068a3c1dce3b4fa8, 0xffffffff, 0x80000000 , 1504); 
TEST_RR_OP64_OO( 190 , smar64, 0x068a3c1dd3fcc168, 0xfa3e8e40, 0xffffffff , 1512); 
TEST_RR_OP64_OO( 191 , smar64, 0x068a3c1e1f3c9154, 0xffffffff, 0xb4c03014 , 1520); 
TEST_RR_OP64_OO( 192 , smar64, 0x068a3c1e1f3c9154, 0x00000000, 0x35a93a5f , 1528); 
TEST_RR_OP64_OO( 193 , smar64, 0x068a3c1e1f3c9154, 0xffffffff, 0x00000000 , 1536); 
TEST_RR_OP64_OO( 194 , smar64, 0x068a3c1e1f3c9154, 0xffffffff, 0x00000000 , 1544); 
TEST_RR_OP64_OO( 195 , smar64, 0x068a3c1e1f3c9154, 0xffffffff, 0x00000000 , 1552); 
TEST_RR_OP64_OO( 196 , smar64, 0x068a3c1e1f3c9154, 0x00000000, 0xffffffff , 1560); 
TEST_RR_OP64_OO( 197 , smar64, 0x15a209cb1f3c9154, 0xe1d064a6, 0x80000000 , 1568); 
TEST_RR_OP64_OO( 198 , smar64, 0x15a209cb1f3c9154, 0x00000000, 0xffffffff , 1576); 
TEST_RR_OP64_OO( 199 , smar64, 0x15a209cb1f3c9154, 0xffffffff, 0x00000000 , 1584); 

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
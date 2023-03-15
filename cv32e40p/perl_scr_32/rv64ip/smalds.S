# See LICENSE for license details.
#*****************************************************************************
# smalds.S
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

TEST_RR_OP64_OO( 2 , smalds, 0x0000000000008000, 0xffffffff, 0x80000000 , 8); 
TEST_RR_OP64_OO( 3 , smalds, 0x0000000000008000, 0x00000000, 0x80000000 , 16); 
TEST_RR_OP64_OO( 4 , smalds, 0x00000000047c8953, 0xe0c96546, 0xa9df0f36 , 24); 
TEST_RR_OP64_OO( 5 , smalds, 0x00000000047c8953, 0x00000000, 0xffffffff , 32); 
TEST_RR_OP64_OO( 6 , smalds, 0x00000000047c8953, 0x00000000, 0x99a4eebc , 40); 
TEST_RR_OP64_OO( 7 , smalds, 0x00000000047d0953, 0xffffffff, 0x80000000 , 48); 
TEST_RR_OP64_OO( 8 , smalds, 0x00000000047d0953, 0x00000000, 0x80000000 , 56); 
TEST_RR_OP64_OO( 9 , smalds, 0x00000000047d0953, 0x00000000, 0x06649bc5 , 64); 
TEST_RR_OP64_OO( 10 , smalds, 0x00000000047d8953, 0x80000000, 0xffffffff , 72); 
TEST_RR_OP64_OO( 11 , smalds, 0x00000000047d8953, 0x00000000, 0x00000000 , 80); 
TEST_RR_OP64_OO( 12 , smalds, 0x00000000047d8953, 0x00000000, 0xffffffff , 88); 
TEST_RR_OP64_OO( 13 , smalds, 0x00000000047d8953, 0x80000000, 0x00000000 , 96); 
TEST_RR_OP64_OO( 14 , smalds, 0x00000000047e0953, 0x80000000, 0xffffffff , 104); 
TEST_RR_OP64_OO( 15 , smalds, 0x00000000047d2c18, 0xffffffff, 0x7085934a , 112); 
TEST_RR_OP64_OO( 16 , smalds, 0x00000000047dac18, 0xffffffff, 0x80000000 , 120); 
TEST_RR_OP64_OO( 17 , smalds, 0x00000000047d1490, 0x76ecdf64, 0xffffffff , 128); 
TEST_RR_OP64_OO( 18 , smalds, 0x00000000047d9490, 0x80000000, 0xffffffff , 136); 
TEST_RR_OP64_OO( 19 , smalds, 0x00000000047e3847, 0xa7264add, 0xffffffff , 144); 
TEST_RR_OP64_OO( 20 , smalds, 0x00000000047e3847, 0xffffffff, 0x00000000 , 152); 
TEST_RR_OP64_OO( 21 , smalds, 0x00000000047e3847, 0x00000000, 0x80000000 , 160); 
TEST_RR_OP64_OO( 22 , smalds, 0x00000000047e3847, 0x00000000, 0x00000000 , 168); 
TEST_RR_OP64_OO( 23 , smalds, 0x00000000047eb847, 0xffffffff, 0x80000000 , 176); 
TEST_RR_OP64_OO( 24 , smalds, 0x00000000047f3847, 0xffffffff, 0x80000000 , 184); 
TEST_RR_OP64_OO( 25 , smalds, 0x00000000047f3847, 0x00000000, 0x80000000 , 192); 
TEST_RR_OP64_OO( 26 , smalds, 0x00000000047fb847, 0xffffffff, 0x80000000 , 200); 
TEST_RR_OP64_OO( 27 , smalds, 0x00000000048049b9, 0x9e1b2f8d, 0xffffffff , 208); 
TEST_RR_OP64_OO( 28 , smalds, 0x00000000048049b9, 0x00000000, 0x00000000 , 216); 
TEST_RR_OP64_OO( 29 , smalds, 0x00000000048049b9, 0xffffffff, 0xffffffff , 224); 
TEST_RR_OP64_OO( 30 , smalds, 0x00000000047fec74, 0x22e8c5a3, 0xffffffff , 232); 
TEST_RR_OP64_OO( 31 , smalds, 0x00000000047fec74, 0x80000000, 0x00000000 , 240); 
TEST_RR_OP64_OO( 32 , smalds, 0xffffffffbcb2434e, 0x4d269db0, 0xab2f8796 , 248); 
TEST_RR_OP64_OO( 33 , smalds, 0xffffffffbcb2434e, 0xffffffff, 0xffffffff , 256); 
TEST_RR_OP64_OO( 34 , smalds, 0xffffffffbcb2434e, 0x00000000, 0x00000000 , 264); 
TEST_RR_OP64_OO( 35 , smalds, 0xffffffffa2a8434e, 0x80000000, 0x3414f0b0 , 272); 
TEST_RR_OP64_OO( 36 , smalds, 0xffffffffa2a8434e, 0x00000000, 0x00000000 , 280); 
TEST_RR_OP64_OO( 37 , smalds, 0xffffffffa2a8434e, 0x00000000, 0xffffffff , 288); 
TEST_RR_OP64_OO( 38 , smalds, 0xffffffffa2a8434e, 0xffffffff, 0x00000000 , 296); 
TEST_RR_OP64_OO( 39 , smalds, 0xffffffffa2a8434e, 0x00000000, 0xa381be3a , 304); 
TEST_RR_OP64_OO( 40 , smalds, 0xffffffffa2a8434e, 0x00000000, 0x00000000 , 312); 
TEST_RR_OP64_OO( 41 , smalds, 0xffffffffa2a8434e, 0x38905992, 0x00000000 , 320); 
TEST_RR_OP64_OO( 42 , smalds, 0xffffffff6babc34e, 0x6df94ef7, 0x80000000 , 328); 
TEST_RR_OP64_OO( 43 , smalds, 0xffffffff6babc34e, 0xffffffff, 0xffffffff , 336); 
TEST_RR_OP64_OO( 44 , smalds, 0xffffffff6bac434e, 0xffffffff, 0x80000000 , 344); 
TEST_RR_OP64_OO( 45 , smalds, 0xffffffff6ad4434e, 0x01b09aca, 0x80000000 , 352); 
TEST_RR_OP64_OO( 46 , smalds, 0xffffffff3d51c34e, 0x80000000, 0x5b05c4a7 , 360); 
TEST_RR_OP64_OO( 47 , smalds, 0xffffffff3d51c34e, 0x80000000, 0x00000000 , 368); 
TEST_RR_OP64_OO( 48 , smalds, 0xffffffff3d51fdde, 0xffffffff, 0xd43e0ece , 376); 
TEST_RR_OP64_OO( 49 , smalds, 0xffffffff4c9f5b0c, 0x03b284d0, 0x0aa71f7b , 384); 
TEST_RR_OP64_OO( 50 , smalds, 0xffffffff4c9f5b0c, 0x00000000, 0xffffffff , 392); 
TEST_RR_OP64_OO( 51 , smalds, 0xffffffff4c9fdb0c, 0x80000000, 0xffffffff , 400); 
TEST_RR_OP64_OO( 52 , smalds, 0xffffffff2b61a380, 0x41fc9d42, 0xbd54d65e , 408); 
TEST_RR_OP64_OO( 53 , smalds, 0xffffffff2b61a380, 0x80000000, 0x00000000 , 416); 
TEST_RR_OP64_OO( 54 , smalds, 0xffffffff2b61a380, 0x29049110, 0x00000000 , 424); 
TEST_RR_OP64_OO( 55 , smalds, 0xffffffff6b61a380, 0x80000000, 0x80000000 , 432); 
TEST_RR_OP64_OO( 56 , smalds, 0xffffffff6b61a380, 0xefb8807e, 0x00000000 , 440); 
TEST_RR_OP64_OO( 57 , smalds, 0xffffffff6b622380, 0x80000000, 0xffffffff , 448); 
TEST_RR_OP64_OO( 58 , smalds, 0xffffffff6b622380, 0x80000000, 0x00000000 , 456); 
TEST_RR_OP64_OO( 59 , smalds, 0xffffffff6b62a380, 0x80000000, 0xffffffff , 464); 
TEST_RR_OP64_OO( 60 , smalds, 0xffffffff6b62a380, 0x00000000, 0xffffffff , 472); 
TEST_RR_OP64_OO( 61 , smalds, 0xffffffff6b62a380, 0x80000000, 0x00000000 , 480); 
TEST_RR_OP64_OO( 62 , smalds, 0xffffffff6b632380, 0x80000000, 0xffffffff , 488); 
TEST_RR_OP64_OO( 63 , smalds, 0xffffffff39eda380, 0x62eb447d, 0x80000000 , 496); 
TEST_RR_OP64_OO( 64 , smalds, 0xffffffff39eda380, 0x00000000, 0x00000000 , 504); 
TEST_RR_OP64_OO( 65 , smalds, 0xffffffff3f9ba380, 0xf4a4593d, 0x80000000 , 512); 
TEST_RR_OP64_OO( 66 , smalds, 0xffffffff625ca380, 0x80000000, 0xba7e0f0e , 520); 
TEST_RR_OP64_OO( 67 , smalds, 0xffffffff625c503d, 0x74952152, 0xffffffff , 528); 
TEST_RR_OP64_OO( 68 , smalds, 0xffffffff625cd03d, 0x80000000, 0xffffffff , 536); 
TEST_RR_OP64_OO( 69 , smalds, 0xffffffff625ceb2a, 0xffffffff, 0x2eb649a3 , 544); 
TEST_RR_OP64_OO( 70 , smalds, 0xffffffff625ceb2a, 0xffffffff, 0xffffffff , 552); 
TEST_RR_OP64_OO( 71 , smalds, 0xffffffff9387eb2a, 0x80000000, 0x9daaa10e , 560); 
TEST_RR_OP64_OO( 72 , smalds, 0xffffffff9387eb2a, 0xd9474f4f, 0x00000000 , 568); 
TEST_RR_OP64_OO( 73 , smalds, 0xffffffff93886b2a, 0x80000000, 0xffffffff , 576); 
TEST_RR_OP64_OO( 74 , smalds, 0xffffffff93886b2a, 0x00000000, 0x80000000 , 584); 
TEST_RR_OP64_OO( 75 , smalds, 0xffffffff93886b2a, 0x00000000, 0x80000000 , 592); 
TEST_RR_OP64_OO( 76 , smalds, 0xffffffff93886b2a, 0x00000000, 0xc51036a0 , 600); 
TEST_RR_OP64_OO( 77 , smalds, 0xffffffff93886b2a, 0x80000000, 0x00000000 , 608); 
TEST_RR_OP64_OO( 78 , smalds, 0xffffffff93886b2a, 0x00000000, 0xffffffff , 616); 
TEST_RR_OP64_OO( 79 , smalds, 0xffffffffd3886b2a, 0x80000000, 0x80000000 , 624); 
TEST_RR_OP64_OO( 80 , smalds, 0x0000000013886b2a, 0x80000000, 0x80000000 , 632); 
TEST_RR_OP64_OO( 81 , smalds, 0x0000000013886b2a, 0x00000000, 0x80000000 , 640); 
TEST_RR_OP64_OO( 82 , smalds, 0x0000000013886b2a, 0x00000000, 0x00000000 , 648); 
TEST_RR_OP64_OO( 83 , smalds, 0x0000000013886b2a, 0xffffffff, 0xffffffff , 656); 
TEST_RR_OP64_OO( 84 , smalds, 0xffffffffe941eb2a, 0x548daada, 0x80000000 , 664); 
TEST_RR_OP64_OO( 85 , smalds, 0xffffffffe941eb2a, 0x00000000, 0x50062801 , 672); 
TEST_RR_OP64_OO( 86 , smalds, 0xffffffffc61e6b2a, 0x46475a4e, 0x80000000 , 680); 
TEST_RR_OP64_OO( 87 , smalds, 0xfffffffffc326b2a, 0x80000000, 0x93d8999a , 688); 
TEST_RR_OP64_OO( 88 , smalds, 0xfffffffffc326b2a, 0x00000000, 0x80000000 , 696); 
TEST_RR_OP64_OO( 89 , smalds, 0xfffffffff8fa805a, 0x32f06340, 0x47952d0a , 704); 
TEST_RR_OP64_OO( 90 , smalds, 0xfffffffff8fa805a, 0xffffffff, 0x00000000 , 712); 
TEST_RR_OP64_OO( 91 , smalds, 0xfffffffff8fa805a, 0x00000000, 0x80000000 , 720); 
TEST_RR_OP64_OO( 92 , smalds, 0xfffffffff8fa805a, 0x00000000, 0xd5c1f28d , 728); 
TEST_RR_OP64_OO( 93 , smalds, 0xfffffffff8fa805a, 0x80000000, 0x00000000 , 736); 
TEST_RR_OP64_OO( 94 , smalds, 0x0000000038fa805a, 0x80000000, 0x80000000 , 744); 
TEST_RR_OP64_OO( 95 , smalds, 0x000000001a4cc3b6, 0x2c2bbed4, 0x8e40d495 , 752); 
TEST_RR_OP64_OO( 96 , smalds, 0x000000001a4cc3b6, 0xa2a9b796, 0x00000000 , 760); 
TEST_RR_OP64_OO( 97 , smalds, 0x000000001a4cc3b6, 0x80000000, 0x00000000 , 768); 
TEST_RR_OP64_OO( 98 , smalds, 0x000000001a4cc3b6, 0x00000000, 0x80000000 , 776); 
TEST_RR_OP64_OO( 99 , smalds, 0x000000001a4cc3b6, 0x42c2ba9d, 0x00000000 , 784); 
TEST_RR_OP64_OO( 100 , smalds, 0x00000000068343b6, 0x80000000, 0x27939bf6 , 792); 
TEST_RR_OP64_OO( 101 , smalds, 0x000000000682ddf9, 0x71b90bfc, 0xffffffff , 800); 
TEST_RR_OP64_OO( 102 , smalds, 0x000000000711b4d5, 0x711c6e34, 0x2dbe2da7 , 808); 
TEST_RR_OP64_OO( 103 , smalds, 0x00000000071234d5, 0x80000000, 0xffffffff , 816); 
TEST_RR_OP64_OO( 104 , smalds, 0x00000000071234d5, 0x00000000, 0x80000000 , 824); 
TEST_RR_OP64_OO( 105 , smalds, 0x00000000471234d5, 0x80000000, 0x80000000 , 832); 
TEST_RR_OP64_OO( 106 , smalds, 0x000000004712b4d5, 0xffffffff, 0x80000000 , 840); 
TEST_RR_OP64_OO( 107 , smalds, 0x00000000471334d5, 0x80000000, 0xffffffff , 848); 
TEST_RR_OP64_OO( 108 , smalds, 0x00000000471334d5, 0x00000000, 0x80000000 , 856); 
TEST_RR_OP64_OO( 109 , smalds, 0x00000000471334d5, 0xffffffff, 0x00000000 , 864); 
TEST_RR_OP64_OO( 110 , smalds, 0x00000000471334d5, 0x80000000, 0x00000000 , 872); 
TEST_RR_OP64_OO( 111 , smalds, 0x00000000471334d5, 0x00000000, 0x00000000 , 880); 
TEST_RR_OP64_OO( 112 , smalds, 0x000000004713b4d5, 0x80000000, 0xffffffff , 888); 
TEST_RR_OP64_OO( 113 , smalds, 0x000000001d6c34d5, 0x534fe06f, 0x80000000 , 896); 
TEST_RR_OP64_OO( 114 , smalds, 0x000000001d6c34d5, 0xc90951a4, 0x00000000 , 904); 
TEST_RR_OP64_OO( 115 , smalds, 0xffffffffe9549999, 0x9344bfe8, 0x38a39005 , 912); 
TEST_RR_OP64_OO( 116 , smalds, 0xffffffffc3ac9999, 0x4b5006bb, 0x80000000 , 920); 
TEST_RR_OP64_OO( 117 , smalds, 0xffffffffcc5e4154, 0xaf84edd1, 0xeb051d89 , 928); 
TEST_RR_OP64_OO( 118 , smalds, 0xffffffffcc5e4154, 0xffffffff, 0x00000000 , 936); 
TEST_RR_OP64_OO( 119 , smalds, 0xffffffffcc5e4154, 0xffffffff, 0x00000000 , 944); 
TEST_RR_OP64_OO( 120 , smalds, 0xffffffffcc5e4154, 0x00000000, 0x00000000 , 952); 
TEST_RR_OP64_OO( 121 , smalds, 0x000000000ca9a0c8, 0x8972a292, 0x948d27d3 , 960); 
TEST_RR_OP64_OO( 122 , smalds, 0x000000002f6ba0c8, 0x80000000, 0xba7c523d , 968); 
TEST_RR_OP64_OO( 123 , smalds, 0x000000004d4d20c8, 0x80000000, 0xc43d437b , 976); 
TEST_RR_OP64_OO( 124 , smalds, 0x000000008d4d20c8, 0x80000000, 0x80000000 , 984); 
TEST_RR_OP64_OO( 125 , smalds, 0x000000007aa820c8, 0x254ae554, 0x80000000 , 992); 
TEST_RR_OP64_OO( 126 , smalds, 0x000000007aa820c8, 0x00000000, 0x80000000 , 1000); 
TEST_RR_OP64_OO( 127 , smalds, 0x0000000059cb20c8, 0x80000000, 0x41ba5c02 , 1008); 
TEST_RR_OP64_OO( 128 , smalds, 0x0000000059cb20c8, 0x890db417, 0x00000000 , 1016); 
TEST_RR_OP64_OO( 129 , smalds, 0x0000000059cba0c8, 0xffffffff, 0x80000000 , 1024); 
TEST_RR_OP64_OO( 130 , smalds, 0x0000000059cba0c8, 0x00000000, 0xffffffff , 1032); 
TEST_RR_OP64_OO( 131 , smalds, 0x0000000039f91dba, 0x82ca20a1, 0x5ce49536 , 1040); 
TEST_RR_OP64_OO( 132 , smalds, 0x0000000039f99dba, 0x80000000, 0xffffffff , 1048); 
TEST_RR_OP64_OO( 133 , smalds, 0x0000000039f99dba, 0x3338529d, 0x00000000 , 1056); 
TEST_RR_OP64_OO( 134 , smalds, 0x00000000263a1dba, 0x80000000, 0x277f20b4 , 1064); 
TEST_RR_OP64_OO( 135 , smalds, 0x00000000263a9dba, 0xffffffff, 0x80000000 , 1072); 
TEST_RR_OP64_OO( 136 , smalds, 0x0000000023229dba, 0x80000000, 0x06309f1a , 1080); 
TEST_RR_OP64_OO( 137 , smalds, 0x0000000023226766, 0xffffffff, 0x73a93d55 , 1088); 
TEST_RR_OP64_OO( 138 , smalds, 0xffffffffffaa6766, 0x80000000, 0x46f06928 , 1096); 
TEST_RR_OP64_OO( 139 , smalds, 0xffffffffffaa6766, 0x9563465a, 0x00000000 , 1104); 
TEST_RR_OP64_OO( 140 , smalds, 0xffffffffffaae766, 0xffffffff, 0x80000000 , 1112); 
TEST_RR_OP64_OO( 141 , smalds, 0xffffffffffaae766, 0x80000000, 0x00000000 , 1120); 
TEST_RR_OP64_OO( 142 , smalds, 0xffffffffffaae766, 0x00000000, 0x80000000 , 1128); 
TEST_RR_OP64_OO( 143 , smalds, 0xffffffffffaae766, 0xffffffff, 0xffffffff , 1136); 
TEST_RR_OP64_OO( 144 , smalds, 0xffffffffffaae766, 0x00000000, 0x80000000 , 1144); 
TEST_RR_OP64_OO( 145 , smalds, 0x000000003faae766, 0x80000000, 0x80000000 , 1152); 
TEST_RR_OP64_OO( 146 , smalds, 0x000000003faae766, 0x80000000, 0x00000000 , 1160); 
TEST_RR_OP64_OO( 147 , smalds, 0x0000000025cde766, 0x80000000, 0x33ba8919 , 1168); 
TEST_RR_OP64_OO( 148 , smalds, 0x0000000025cde766, 0x00000000, 0x00000000 , 1176); 
TEST_RR_OP64_OO( 149 , smalds, 0x0000000025cde766, 0x00000000, 0x00000000 , 1184); 
TEST_RR_OP64_OO( 150 , smalds, 0x0000000025cde766, 0xffffffff, 0xffffffff , 1192); 
TEST_RR_OP64_OO( 151 , smalds, 0x0000000025cde766, 0x80000000, 0x00000000 , 1200); 
TEST_RR_OP64_OO( 152 , smalds, 0x0000000025cde766, 0x00000000, 0xffffffff , 1208); 
TEST_RR_OP64_OO( 153 , smalds, 0x0000000025cde766, 0x00000000, 0x00000000 , 1216); 
TEST_RR_OP64_OO( 154 , smalds, 0x0000000025cde766, 0x6ca8ab37, 0x00000000 , 1224); 
TEST_RR_OP64_OO( 155 , smalds, 0x0000000025ce6766, 0xffffffff, 0x80000000 , 1232); 
TEST_RR_OP64_OO( 156 , smalds, 0x0000000025ce6766, 0xffffffff, 0xffffffff , 1240); 
TEST_RR_OP64_OO( 157 , smalds, 0x0000000025ce6766, 0x00000000, 0x62c85b76 , 1248); 
TEST_RR_OP64_OO( 158 , smalds, 0x0000000025cee766, 0xffffffff, 0x80000000 , 1256); 
TEST_RR_OP64_OO( 159 , smalds, 0x000000005eebe766, 0x8dc62aee, 0x80000000 , 1264); 
TEST_RR_OP64_OO( 160 , smalds, 0x000000005eebe766, 0x00000000, 0x80000000 , 1272); 
TEST_RR_OP64_OO( 161 , smalds, 0x00000000628ce766, 0xf8be4bb9, 0x80000000 , 1280); 
TEST_RR_OP64_OO( 162 , smalds, 0x00000000628c51a8, 0xffffffff, 0x60cdcb0f , 1288); 
TEST_RR_OP64_OO( 163 , smalds, 0x00000000708c51a8, 0xe400155d, 0x80000000 , 1296); 
TEST_RR_OP64_OO( 164 , smalds, 0x00000000b08c51a8, 0x80000000, 0x80000000 , 1304); 
TEST_RR_OP64_OO( 165 , smalds, 0x00000000b08c51a8, 0x00000000, 0x80000000 , 1312); 
TEST_RR_OP64_OO( 166 , smalds, 0x00000000b08c12bf, 0xffffffff, 0x62602377 , 1320); 
TEST_RR_OP64_OO( 167 , smalds, 0x00000000b08c12bf, 0xffffffff, 0x00000000 , 1328); 
TEST_RR_OP64_OO( 168 , smalds, 0x00000000b08c12bf, 0xffffffff, 0xffffffff , 1336); 
TEST_RR_OP64_OO( 169 , smalds, 0x00000000b08b5e27, 0xffffffff, 0x656eb0d6 , 1344); 
TEST_RR_OP64_OO( 170 , smalds, 0x00000000b08b5e27, 0xffffffff, 0xffffffff , 1352); 
TEST_RR_OP64_OO( 171 , smalds, 0x00000000b08b5e27, 0xffffffff, 0xffffffff , 1360); 
TEST_RR_OP64_OO( 172 , smalds, 0x00000000b08b5e27, 0x80000000, 0x00000000 , 1368); 
TEST_RR_OP64_OO( 173 , smalds, 0x000000009c07de27, 0x80000000, 0x29071d38 , 1376); 
TEST_RR_OP64_OO( 174 , smalds, 0x000000009c07de27, 0x390c7ec9, 0x00000000 , 1384); 
TEST_RR_OP64_OO( 175 , smalds, 0x000000009c07de27, 0xffffffff, 0xffffffff , 1392); 
TEST_RR_OP64_OO( 176 , smalds, 0x000000009c07de27, 0xffffffff, 0xffffffff , 1400); 
TEST_RR_OP64_OO( 177 , smalds, 0x000000008cdede27, 0x1e520a74, 0x80000000 , 1408); 
TEST_RR_OP64_OO( 178 , smalds, 0x000000008cdede27, 0x3845161b, 0x00000000 , 1416); 
TEST_RR_OP64_OO( 179 , smalds, 0x000000008cdede27, 0x8baed9e1, 0x00000000 , 1424); 
TEST_RR_OP64_OO( 180 , smalds, 0x000000008cdf2eff, 0xe0803158, 0xffffffff , 1432); 
TEST_RR_OP64_OO( 181 , smalds, 0x000000008e09aeff, 0xfdabd543, 0x80000000 , 1440); 
TEST_RR_OP64_OO( 182 , smalds, 0x000000008e09aeff, 0x00000000, 0x3391f8dc , 1448); 
TEST_RR_OP64_OO( 183 , smalds, 0x000000008e09aeff, 0x00000000, 0xbbeadd7d , 1456); 
TEST_RR_OP64_OO( 184 , smalds, 0x00000000ce09aeff, 0x80000000, 0x80000000 , 1464); 
TEST_RR_OP64_OO( 185 , smalds, 0x00000000ce09aeff, 0x00000000, 0x00000000 , 1472); 
TEST_RR_OP64_OO( 186 , smalds, 0x00000000ce09aeff, 0x00000000, 0x80000000 , 1480); 
TEST_RR_OP64_OO( 187 , smalds, 0x00000000ce09aeff, 0x00000000, 0x71b73aeb , 1488); 
TEST_RR_OP64_OO( 188 , smalds, 0x00000000ce09aeff, 0xffffffff, 0x00000000 , 1496); 
TEST_RR_OP64_OO( 189 , smalds, 0x00000000ce09aeff, 0x80000000, 0x00000000 , 1504); 
TEST_RR_OP64_OO( 190 , smalds, 0x00000000ce09aeff, 0xffffffff, 0xffffffff , 1512); 
TEST_RR_OP64_OO( 191 , smalds, 0x00000000ce09aeff, 0x00000000, 0x193fb36b , 1520); 
TEST_RR_OP64_OO( 192 , smalds, 0x00000000a356aeff, 0x55667633, 0x80000000 , 1528); 
TEST_RR_OP64_OO( 193 , smalds, 0x00000000a356aeff, 0x00000000, 0xffffffff , 1536); 
TEST_RR_OP64_OO( 194 , smalds, 0x00000000a356aeff, 0x4a5e57b2, 0x00000000 , 1544); 
TEST_RR_OP64_OO( 195 , smalds, 0x00000000a356aeff, 0x00000000, 0x80000000 , 1552); 
TEST_RR_OP64_OO( 196 , smalds, 0x00000000a356aeff, 0x00000000, 0x80000000 , 1560); 
TEST_RR_OP64_OO( 197 , smalds, 0x00000000a3561dd3, 0xffffffff, 0x5785c659 , 1568); 
TEST_RR_OP64_OO( 198 , smalds, 0x00000000a355b64d, 0xffffffff, 0x1774afee , 1576); 
TEST_RR_OP64_OO( 199 , smalds, 0x00000000a355b64d, 0x00000000, 0xffffffff , 1584); 

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
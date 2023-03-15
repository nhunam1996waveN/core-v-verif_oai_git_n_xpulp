# See LICENSE for license details.
#*****************************************************************************
# kadd64.S
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

TEST_RR_OP64_IO( 2 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 8); 
TEST_RR_OP64_IO( 3 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 16); 
TEST_CASE( 4 ,24, x14, 1, rdov x14;);
TEST_CASE( 5 ,28, x14, 1, clrov;);
TEST_CASE( 6 ,32, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 7 , kadd64, 0x261a36f86c02015d, 0x00000000, 0x00000000, 0x6c02015d, 0x261a36f8, 36); 
TEST_RR_OP64_IO( 8 , kadd64, 0xc4e98b7ad782fc6a, 0x00000000, 0x80000000, 0xd782fc6a, 0x44e98b7a, 44); 
TEST_RR_OP64_IO( 9 , kadd64, 0x1e445523a266b2cc, 0xa266b2cc, 0x1e445523, 0x00000000, 0x00000000, 52); 
TEST_RR_OP64_IO( 10 , kadd64, 0xfbcf199e66e53daf, 0xffffffff, 0xffffffff, 0x66e53db0, 0xfbcf199e, 60); 
TEST_RR_OP64_IO( 11 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 68); 
TEST_CASE( 12 ,76, x14, 1, rdov x14;);
TEST_CASE( 13 ,80, x14, 1, clrov;);
TEST_CASE( 14 ,84, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 15 , kadd64, 0x8000000000000000, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 88); 
TEST_CASE( 16 ,96, x14, 1, rdov x14;);
TEST_CASE( 17 ,100, x14, 1, clrov;);
TEST_CASE( 18 ,104, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 19 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 108); 
TEST_RR_OP64_IO( 20 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 116); 
TEST_RR_OP64_IO( 21 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 124); 
TEST_CASE( 22 ,132, x14, 1, rdov x14;);
TEST_CASE( 23 ,136, x14, 1, clrov;);
TEST_CASE( 24 ,140, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 25 , kadd64, 0x5fad695fb9e27c09, 0x00000000, 0x00000000, 0xb9e27c09, 0x5fad695f, 144); 
TEST_RR_OP64_IO( 26 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 152); 
TEST_RR_OP64_IO( 27 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 160); 
TEST_RR_OP64_IO( 28 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 168); 
TEST_RR_OP64_IO( 29 , kadd64, 0x8000000000000000, 0xe2ca6058, 0x89785981, 0x00000000, 0x80000000, 176); 
TEST_CASE( 30 ,184, x14, 1, rdov x14;);
TEST_CASE( 31 ,188, x14, 1, clrov;);
TEST_CASE( 32 ,192, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 33 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 196); 
TEST_RR_OP64_IO( 34 , kadd64, 0xa935453db0cba9c7, 0x00000000, 0x00000000, 0xb0cba9c7, 0xa935453d, 204); 
TEST_RR_OP64_IO( 35 , kadd64, 0x79d3d1693deb0e76, 0xffffffff, 0xffffffff, 0x3deb0e77, 0x79d3d169, 212); 
TEST_RR_OP64_IO( 36 , kadd64, 0x7f390cfc32d78bc5, 0x32d78bc5, 0x7f390cfc, 0x00000000, 0x00000000, 220); 
TEST_RR_OP64_IO( 37 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 228); 
TEST_CASE( 38 ,236, x14, 1, rdov x14;);
TEST_CASE( 39 ,240, x14, 1, clrov;);
TEST_CASE( 40 ,244, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 41 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 248); 
TEST_RR_OP64_IO( 42 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 256); 
TEST_RR_OP64_IO( 43 , kadd64, 0xe3c8885a159e28e3, 0x159e28e3, 0xe3c8885a, 0x00000000, 0x00000000, 264); 
TEST_RR_OP64_IO( 44 , kadd64, 0xa4880af09b541139, 0x9b541139, 0x24880af0, 0x00000000, 0x80000000, 272); 
TEST_RR_OP64_IO( 45 , kadd64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 280); 
TEST_RR_OP64_IO( 46 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 288); 
TEST_RR_OP64_IO( 47 , kadd64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 296); 
TEST_RR_OP64_IO( 48 , kadd64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 304); 
TEST_RR_OP64_IO( 49 , kadd64, 0x84edd396ab4fe41d, 0x00000000, 0x00000000, 0xab4fe41d, 0x84edd396, 312); 
TEST_RR_OP64_IO( 50 , kadd64, 0x8000000000000000, 0xadb84823, 0x9c39ba80, 0x93faedf3, 0xb25d40e2, 320); 
TEST_CASE( 51 ,328, x14, 1, rdov x14;);
TEST_CASE( 52 ,332, x14, 1, clrov;);
TEST_CASE( 53 ,336, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 54 , kadd64, 0xa5e82b86aafd2903, 0x00000000, 0x00000000, 0xaafd2903, 0xa5e82b86, 340); 
TEST_RR_OP64_IO( 55 , kadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 348); 
TEST_RR_OP64_IO( 56 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 356); 
TEST_RR_OP64_IO( 57 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 364); 
TEST_RR_OP64_IO( 58 , kadd64, 0x8000000000000000, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 372); 
TEST_CASE( 59 ,380, x14, 1, rdov x14;);
TEST_CASE( 60 ,384, x14, 1, clrov;);
TEST_CASE( 61 ,388, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 62 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xe6b45b48, 0x881678bd, 392); 
TEST_CASE( 63 ,400, x14, 1, rdov x14;);
TEST_CASE( 64 ,404, x14, 1, clrov;);
TEST_CASE( 65 ,408, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 66 , kadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 412); 
TEST_RR_OP64_IO( 67 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 420); 
TEST_RR_OP64_IO( 68 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 428); 
TEST_CASE( 69 ,436, x14, 1, rdov x14;);
TEST_CASE( 70 ,440, x14, 1, clrov;);
TEST_CASE( 71 ,444, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 72 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 448); 
TEST_CASE( 73 ,456, x14, 1, rdov x14;);
TEST_CASE( 74 ,460, x14, 1, clrov;);
TEST_CASE( 75 ,464, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 76 , kadd64, 0x7fffffffffffffff, 0x94a517f7, 0x73289bce, 0x7302d142, 0x5bdcc33c, 468); 
TEST_CASE( 77 ,476, x14, 1, rdov x14;);
TEST_CASE( 78 ,480, x14, 1, clrov;);
TEST_CASE( 79 ,484, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 80 , kadd64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 488); 
TEST_RR_OP64_IO( 81 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 496); 
TEST_RR_OP64_IO( 82 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 504); 
TEST_RR_OP64_IO( 83 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 512); 
TEST_RR_OP64_IO( 84 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 520); 
TEST_CASE( 85 ,528, x14, 1, rdov x14;);
TEST_CASE( 86 ,532, x14, 1, clrov;);
TEST_CASE( 87 ,536, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 88 , kadd64, 0x8000000000000000, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 540); 
TEST_CASE( 89 ,548, x14, 1, rdov x14;);
TEST_CASE( 90 ,552, x14, 1, clrov;);
TEST_CASE( 91 ,556, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 92 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 560); 
TEST_CASE( 93 ,568, x14, 1, rdov x14;);
TEST_CASE( 94 ,572, x14, 1, clrov;);
TEST_CASE( 95 ,576, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 96 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 580); 
TEST_RR_OP64_IO( 97 , kadd64, 0xe284dda3320cd255, 0xffffffff, 0xffffffff, 0x320cd256, 0xe284dda3, 588); 
TEST_RR_OP64_IO( 98 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 596); 
TEST_CASE( 99 ,604, x14, 1, rdov x14;);
TEST_CASE( 100 ,608, x14, 1, clrov;);
TEST_CASE( 101 ,612, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 102 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 616); 
TEST_RR_OP64_IO( 103 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 624); 
TEST_RR_OP64_IO( 104 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 632); 
TEST_CASE( 105 ,640, x14, 1, rdov x14;);
TEST_CASE( 106 ,644, x14, 1, clrov;);
TEST_CASE( 107 ,648, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 108 , kadd64, 0xdc45ce08bfaa6cc8, 0xbfaa6cc9, 0xdc45ce08, 0xffffffff, 0xffffffff, 652); 
TEST_RR_OP64_IO( 109 , kadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 660); 
TEST_RR_OP64_IO( 110 , kadd64, 0x939ee6f8b4f7db6a, 0x00000000, 0x80000000, 0xb4f7db6a, 0x139ee6f8, 668); 
TEST_RR_OP64_IO( 111 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 676); 
TEST_CASE( 112 ,684, x14, 1, rdov x14;);
TEST_CASE( 113 ,688, x14, 1, clrov;);
TEST_CASE( 114 ,692, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 115 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP64_IO( 116 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 704); 
TEST_RR_OP64_IO( 117 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 712); 
TEST_RR_OP64_IO( 118 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 720); 
TEST_RR_OP64_IO( 119 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 728); 
TEST_RR_OP64_IO( 120 , kadd64, 0x92e2a5fcf0defec9, 0xf0defec9, 0x12e2a5fc, 0x00000000, 0x80000000, 736); 
TEST_RR_OP64_IO( 121 , kadd64, 0x8000000000000000, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 744); 
TEST_CASE( 122 ,752, x14, 1, rdov x14;);
TEST_CASE( 123 ,756, x14, 1, clrov;);
TEST_CASE( 124 ,760, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 125 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 764); 
TEST_CASE( 126 ,772, x14, 1, rdov x14;);
TEST_CASE( 127 ,776, x14, 1, clrov;);
TEST_CASE( 128 ,780, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 129 , kadd64, 0xee95df9f7a6bb9fe, 0x00000000, 0x80000000, 0x7a6bb9fe, 0x6e95df9f, 784); 
TEST_RR_OP64_IO( 130 , kadd64, 0xac9edb6b20377dd0, 0x20377dd0, 0xac9edb6b, 0x00000000, 0x00000000, 792); 
TEST_RR_OP64_IO( 131 , kadd64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 800); 
TEST_RR_OP64_IO( 132 , kadd64, 0xc97b23cd459318bd, 0x459318bd, 0x497b23cd, 0x00000000, 0x80000000, 808); 
TEST_RR_OP64_IO( 133 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 816); 
TEST_CASE( 134 ,824, x14, 1, rdov x14;);
TEST_CASE( 135 ,828, x14, 1, clrov;);
TEST_CASE( 136 ,832, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 137 , kadd64, 0x8000000000000000, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 836); 
TEST_CASE( 138 ,844, x14, 1, rdov x14;);
TEST_CASE( 139 ,848, x14, 1, clrov;);
TEST_CASE( 140 ,852, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 141 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 856); 
TEST_RR_OP64_IO( 142 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xb3f75345, 0xa635dea0, 864); 
TEST_CASE( 143 ,872, x14, 1, rdov x14;);
TEST_CASE( 144 ,876, x14, 1, clrov;);
TEST_CASE( 145 ,880, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 146 , kadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 884); 
TEST_RR_OP64_IO( 147 , kadd64, 0x431160bb8928cd41, 0x6d373316, 0xc508af8b, 0x1bf19a2b, 0x7e08b130, 892); 
TEST_RR_OP64_IO( 148 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 900); 
TEST_RR_OP64_IO( 149 , kadd64, 0xf1c9a5bcd7f1e5ec, 0x7554dadf, 0x082c862d, 0x629d0b0d, 0xe99d1f8f, 908); 
TEST_RR_OP64_IO( 150 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 916); 
TEST_CASE( 151 ,924, x14, 1, rdov x14;);
TEST_CASE( 152 ,928, x14, 1, clrov;);
TEST_CASE( 153 ,932, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 154 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 936); 
TEST_CASE( 155 ,944, x14, 1, rdov x14;);
TEST_CASE( 156 ,948, x14, 1, clrov;);
TEST_CASE( 157 ,952, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 158 , kadd64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 956); 
TEST_RR_OP64_IO( 159 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x2259432b, 0xbf96a3d4, 964); 
TEST_CASE( 160 ,972, x14, 1, rdov x14;);
TEST_CASE( 161 ,976, x14, 1, clrov;);
TEST_CASE( 162 ,980, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 163 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 984); 
TEST_CASE( 164 ,992, x14, 1, rdov x14;);
TEST_CASE( 165 ,996, x14, 1, clrov;);
TEST_CASE( 166 ,1000, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 167 , kadd64, 0x8000000000000000, 0x77a82ccd, 0xb2d71e54, 0x00000000, 0x80000000, 1004); 
TEST_CASE( 168 ,1012, x14, 1, rdov x14;);
TEST_CASE( 169 ,1016, x14, 1, clrov;);
TEST_CASE( 170 ,1020, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 171 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1024); 
TEST_RR_OP64_IO( 172 , kadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1032); 
TEST_RR_OP64_IO( 173 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1040); 
TEST_RR_OP64_IO( 174 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1048); 
TEST_CASE( 175 ,1056, x14, 1, rdov x14;);
TEST_CASE( 176 ,1060, x14, 1, clrov;);
TEST_CASE( 177 ,1064, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 178 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1068); 
TEST_RR_OP64_IO( 179 , kadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1076); 
TEST_RR_OP64_IO( 180 , kadd64, 0x8000000000000000, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1084); 
TEST_CASE( 181 ,1092, x14, 1, rdov x14;);
TEST_CASE( 182 ,1096, x14, 1, clrov;);
TEST_CASE( 183 ,1100, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 184 , kadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1104); 
TEST_RR_OP64_IO( 185 , kadd64, 0xa15361a496ea581d, 0x00000000, 0x00000000, 0x96ea581d, 0xa15361a4, 1112); 
TEST_RR_OP64_IO( 186 , kadd64, 0x8000000000000000, 0x14b669d5, 0xd7db4260, 0x00000000, 0x80000000, 1120); 
TEST_CASE( 187 ,1128, x14, 1, rdov x14;);
TEST_CASE( 188 ,1132, x14, 1, clrov;);
TEST_CASE( 189 ,1136, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 190 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1140); 
TEST_CASE( 191 ,1148, x14, 1, rdov x14;);
TEST_CASE( 192 ,1152, x14, 1, clrov;);
TEST_CASE( 193 ,1156, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 194 , kadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1160); 
TEST_RR_OP64_IO( 195 , kadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1168); 
TEST_RR_OP64_IO( 196 , kadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1176); 
TEST_CASE( 197 ,1184, x14, 1, rdov x14;);
TEST_CASE( 198 ,1188, x14, 1, clrov;);
TEST_CASE( 199 ,1192, x14, 0, rdov x14;);

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 299, 4, -1
RV_COMPLIANCE_DATA_END
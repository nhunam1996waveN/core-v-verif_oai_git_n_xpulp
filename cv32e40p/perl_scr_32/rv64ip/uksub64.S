# See LICENSE for license details.
#*****************************************************************************
# uksub64.S
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

TEST_RR_OP64_IO( 2 , uksub64, 0x721b4eb973bfc346, 0x73bfc346, 0x721b4eb9, 0x00000000, 0x00000000, 8); 
TEST_RR_OP64_IO( 3 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0xae72d5e5, 0xc11441b2, 16); 
TEST_CASE( 4 ,24, x14, 1, rdov x14;);
TEST_CASE( 5 ,28, x14, 1, clrov;);
TEST_CASE( 6 ,32, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 7 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 36); 
TEST_RR_OP64_IO( 8 , uksub64, 0x3ee0834890e3b341, 0x90e3b341, 0xbee08348, 0x00000000, 0x80000000, 44); 
TEST_RR_OP64_IO( 9 , uksub64, 0x0000000000000000, 0xe926509e, 0x1e1d1a10, 0xddebb42b, 0xce6d19db, 52); 
TEST_CASE( 10 ,60, x14, 1, rdov x14;);
TEST_CASE( 11 ,64, x14, 1, clrov;);
TEST_CASE( 12 ,68, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 13 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x270b2836, 0xe4867818, 72); 
TEST_CASE( 14 ,80, x14, 1, rdov x14;);
TEST_CASE( 15 ,84, x14, 1, clrov;);
TEST_CASE( 16 ,88, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 17 , uksub64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 92); 
TEST_RR_OP64_IO( 18 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 100); 
TEST_RR_OP64_IO( 19 , uksub64, 0x607ddaf2b7fc8a9a, 0xb7fc8a9a, 0xe07ddaf2, 0x00000000, 0x80000000, 108); 
TEST_RR_OP64_IO( 20 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 116); 
TEST_CASE( 21 ,124, x14, 1, rdov x14;);
TEST_CASE( 22 ,128, x14, 1, clrov;);
TEST_CASE( 23 ,132, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 24 , uksub64, 0xca21bb8cf0070c22, 0xf0070c22, 0xca21bb8c, 0x00000000, 0x00000000, 136); 
TEST_RR_OP64_IO( 25 , uksub64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 144); 
TEST_RR_OP64_IO( 26 , uksub64, 0x0000000000000000, 0x41d56f33, 0x8fb41d22, 0x6dd2d248, 0xeb549853, 152); 
TEST_CASE( 27 ,160, x14, 1, rdov x14;);
TEST_CASE( 28 ,164, x14, 1, clrov;);
TEST_CASE( 29 ,168, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 30 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 172); 
TEST_CASE( 31 ,180, x14, 1, rdov x14;);
TEST_CASE( 32 ,184, x14, 1, clrov;);
TEST_CASE( 33 ,188, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 34 , uksub64, 0x0550b0478cd1e42a, 0x814c0815, 0x4a3bc6ea, 0xf47a23eb, 0x44eb16a2, 192); 
TEST_RR_OP64_IO( 35 , uksub64, 0x5c931d9369feb6f7, 0x00000000, 0x80000000, 0x96014909, 0x236ce26c, 200); 
TEST_RR_OP64_IO( 36 , uksub64, 0x4dcc48c2dfa9de40, 0x00000000, 0x80000000, 0x205621c0, 0x3233b73d, 208); 
TEST_RR_OP64_IO( 37 , uksub64, 0x3628a5c4e72bfcaa, 0x00000000, 0x80000000, 0x18d40356, 0x49d75a3b, 216); 
TEST_RR_OP64_IO( 38 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 224); 
TEST_RR_OP64_IO( 39 , uksub64, 0x0000000000000000, 0x78dee8d5, 0xcc9fbe33, 0xffffffff, 0xffffffff, 232); 
TEST_CASE( 40 ,240, x14, 1, rdov x14;);
TEST_CASE( 41 ,244, x14, 1, clrov;);
TEST_CASE( 42 ,248, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 43 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0xe42abf3f, 0x9a489cc9, 252); 
TEST_CASE( 44 ,260, x14, 1, rdov x14;);
TEST_CASE( 45 ,264, x14, 1, clrov;);
TEST_CASE( 46 ,268, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 47 , uksub64, 0x53bef36f18483d76, 0x00000000, 0x80000000, 0xe7b7c28a, 0x2c410c90, 272); 
TEST_RR_OP64_IO( 48 , uksub64, 0xc5ecd39cc3c4faa6, 0xffffffff, 0xffffffff, 0x3c3b0559, 0x3a132c63, 280); 
TEST_RR_OP64_IO( 49 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 288); 
TEST_RR_OP64_IO( 50 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 296); 
TEST_CASE( 51 ,304, x14, 1, rdov x14;);
TEST_CASE( 52 ,308, x14, 1, clrov;);
TEST_CASE( 53 ,312, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 54 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 316); 
TEST_RR_OP64_IO( 55 , uksub64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 324); 
TEST_RR_OP64_IO( 56 , uksub64, 0x38918dfc3f920882, 0x3f920882, 0x38918dfc, 0x00000000, 0x00000000, 332); 
TEST_RR_OP64_IO( 57 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 340); 
TEST_RR_OP64_IO( 58 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x8898ca9b, 0x9b9ecc18, 348); 
TEST_CASE( 59 ,356, x14, 1, rdov x14;);
TEST_CASE( 60 ,360, x14, 1, clrov;);
TEST_CASE( 61 ,364, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 62 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 368); 
TEST_RR_OP64_IO( 63 , uksub64, 0x330b25b90e1c54dc, 0x00000000, 0x80000000, 0xf1e3ab24, 0x4cf4da46, 376); 
TEST_RR_OP64_IO( 64 , uksub64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 384); 
TEST_RR_OP64_IO( 65 , uksub64, 0x0000000000000000, 0xaf6b3bd6, 0x63a24d0b, 0x1beda9a9, 0xa4e59fec, 392); 
TEST_CASE( 66 ,400, x14, 1, rdov x14;);
TEST_CASE( 67 ,404, x14, 1, clrov;);
TEST_CASE( 68 ,408, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 69 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 412); 
TEST_RR_OP64_IO( 70 , uksub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 420); 
TEST_RR_OP64_IO( 71 , uksub64, 0x0000000000000000, 0x3665619e, 0x71544f83, 0x00000000, 0x80000000, 428); 
TEST_CASE( 72 ,436, x14, 1, rdov x14;);
TEST_CASE( 73 ,440, x14, 1, clrov;);
TEST_CASE( 74 ,444, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 75 , uksub64, 0x798a8f404d634bb5, 0x4d634bb5, 0xf98a8f40, 0x00000000, 0x80000000, 448); 
TEST_RR_OP64_IO( 76 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 456); 
TEST_CASE( 77 ,464, x14, 1, rdov x14;);
TEST_CASE( 78 ,468, x14, 1, clrov;);
TEST_CASE( 79 ,472, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 80 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 476); 
TEST_CASE( 81 ,484, x14, 1, rdov x14;);
TEST_CASE( 82 ,488, x14, 1, clrov;);
TEST_CASE( 83 ,492, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 84 , uksub64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 496); 
TEST_RR_OP64_IO( 85 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 504); 
TEST_RR_OP64_IO( 86 , uksub64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 512); 
TEST_RR_OP64_IO( 87 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 520); 
TEST_CASE( 88 ,528, x14, 1, rdov x14;);
TEST_CASE( 89 ,532, x14, 1, clrov;);
TEST_CASE( 90 ,536, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 91 , uksub64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 540); 
TEST_RR_OP64_IO( 92 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 548); 
TEST_RR_OP64_IO( 93 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 556); 
TEST_RR_OP64_IO( 94 , uksub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 564); 
TEST_RR_OP64_IO( 95 , uksub64, 0xd75226b083787cde, 0xffffffff, 0xffffffff, 0x7c878321, 0x28add94f, 572); 
TEST_RR_OP64_IO( 96 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 580); 
TEST_RR_OP64_IO( 97 , uksub64, 0x0000000000000000, 0x2fa58e16, 0x3aa7902e, 0x5f1203b3, 0x43baf3a4, 588); 
TEST_CASE( 98 ,596, x14, 1, rdov x14;);
TEST_CASE( 99 ,600, x14, 1, clrov;);
TEST_CASE( 100 ,604, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 101 , uksub64, 0x0000000000000000, 0x4c5af9d0, 0x68ab57e3, 0x00000000, 0x80000000, 608); 
TEST_CASE( 102 ,616, x14, 1, rdov x14;);
TEST_CASE( 103 ,620, x14, 1, clrov;);
TEST_CASE( 104 ,624, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 105 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 628); 
TEST_RR_OP64_IO( 106 , uksub64, 0x254a278d8db71edf, 0x8db71edf, 0xa54a278d, 0x00000000, 0x80000000, 636); 
TEST_RR_OP64_IO( 107 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x284cb0b7, 0xbe47e2a6, 644); 
TEST_CASE( 108 ,652, x14, 1, rdov x14;);
TEST_CASE( 109 ,656, x14, 1, clrov;);
TEST_CASE( 110 ,660, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 111 , uksub64, 0xabcac062efa9a4c9, 0xefa9a4c9, 0xabcac062, 0x00000000, 0x00000000, 664); 
TEST_RR_OP64_IO( 112 , uksub64, 0x0000000000000000, 0x9caa8781, 0xe82b88b7, 0xffffffff, 0xffffffff, 672); 
TEST_CASE( 113 ,680, x14, 1, rdov x14;);
TEST_CASE( 114 ,684, x14, 1, clrov;);
TEST_CASE( 115 ,688, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 116 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 692); 
TEST_CASE( 117 ,700, x14, 1, rdov x14;);
TEST_CASE( 118 ,704, x14, 1, clrov;);
TEST_CASE( 119 ,708, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 120 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 712); 
TEST_CASE( 121 ,720, x14, 1, rdov x14;);
TEST_CASE( 122 ,724, x14, 1, clrov;);
TEST_CASE( 123 ,728, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 124 , uksub64, 0x115058fc8b7a9a96, 0x8b7a9a96, 0x115058fc, 0x00000000, 0x00000000, 732); 
TEST_RR_OP64_IO( 125 , uksub64, 0x0000000000000000, 0x68acfb54, 0x629fcf78, 0x00000000, 0x80000000, 740); 
TEST_CASE( 126 ,748, x14, 1, rdov x14;);
TEST_CASE( 127 ,752, x14, 1, clrov;);
TEST_CASE( 128 ,756, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 129 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x8e6ee198, 0x823c05a1, 760); 
TEST_CASE( 130 ,768, x14, 1, rdov x14;);
TEST_CASE( 131 ,772, x14, 1, clrov;);
TEST_CASE( 132 ,776, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 133 , uksub64, 0x44822c90da70293a, 0xda70293a, 0x44822c90, 0x00000000, 0x00000000, 780); 
TEST_RR_OP64_IO( 134 , uksub64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 788); 
TEST_RR_OP64_IO( 135 , uksub64, 0x0283f71cdabb4c3d, 0xdabb4c3d, 0x0283f71c, 0x00000000, 0x00000000, 796); 
TEST_RR_OP64_IO( 136 , uksub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 804); 
TEST_RR_OP64_IO( 137 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 812); 
TEST_CASE( 138 ,820, x14, 1, rdov x14;);
TEST_CASE( 139 ,824, x14, 1, clrov;);
TEST_CASE( 140 ,828, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 141 , uksub64, 0x0000000000000000, 0xad0419d9, 0x2f68d092, 0x79d63670, 0x3edc127b, 832); 
TEST_CASE( 142 ,840, x14, 1, rdov x14;);
TEST_CASE( 143 ,844, x14, 1, clrov;);
TEST_CASE( 144 ,848, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 145 , uksub64, 0xd12e9fffa12f6eae, 0xffffffff, 0xffffffff, 0x5ed09151, 0x2ed16000, 852); 
TEST_RR_OP64_IO( 146 , uksub64, 0x1450d7883c4679ee, 0x3c4679ee, 0x9450d788, 0x00000000, 0x80000000, 860); 
TEST_RR_OP64_IO( 147 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 868); 
TEST_CASE( 148 ,876, x14, 1, rdov x14;);
TEST_CASE( 149 ,880, x14, 1, clrov;);
TEST_CASE( 150 ,884, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 151 , uksub64, 0x28d5777be6f0aecf, 0xffffffff, 0xffffffff, 0x190f5130, 0xd72a8884, 888); 
TEST_RR_OP64_IO( 152 , uksub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 896); 
TEST_RR_OP64_IO( 153 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 904); 
TEST_CASE( 154 ,912, x14, 1, rdov x14;);
TEST_CASE( 155 ,916, x14, 1, clrov;);
TEST_CASE( 156 ,920, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 157 , uksub64, 0x0000000000000000, 0x2652ad93, 0xe9b2e209, 0xffffffff, 0xffffffff, 924); 
TEST_CASE( 158 ,932, x14, 1, rdov x14;);
TEST_CASE( 159 ,936, x14, 1, clrov;);
TEST_CASE( 160 ,940, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 161 , uksub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 944); 
TEST_RR_OP64_IO( 162 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 952); 
TEST_RR_OP64_IO( 163 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 960); 
TEST_CASE( 164 ,968, x14, 1, rdov x14;);
TEST_CASE( 165 ,972, x14, 1, clrov;);
TEST_CASE( 166 ,976, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 167 , uksub64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 980); 
TEST_RR_OP64_IO( 168 , uksub64, 0x9f879d6db941aa72, 0xffffffff, 0xffffffff, 0x46be558d, 0x60786292, 988); 
TEST_RR_OP64_IO( 169 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 996); 
TEST_CASE( 170 ,1004, x14, 1, rdov x14;);
TEST_CASE( 171 ,1008, x14, 1, clrov;);
TEST_CASE( 172 ,1012, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 173 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x70805a9a, 0xc5bbe911, 1016); 
TEST_CASE( 174 ,1024, x14, 1, rdov x14;);
TEST_CASE( 175 ,1028, x14, 1, clrov;);
TEST_CASE( 176 ,1032, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 177 , uksub64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1036); 
TEST_RR_OP64_IO( 178 , uksub64, 0x0000000000000000, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1044); 
TEST_RR_OP64_IO( 179 , uksub64, 0x0000000000000000, 0x145c2c33, 0x5ac8305f, 0x00000000, 0x80000000, 1052); 
TEST_CASE( 180 ,1060, x14, 1, rdov x14;);
TEST_CASE( 181 ,1064, x14, 1, clrov;);
TEST_CASE( 182 ,1068, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 183 , uksub64, 0x3e207def539b2ea4, 0xffffffff, 0xffffffff, 0xac64d15b, 0xc1df8210, 1072); 
TEST_RR_OP64_IO( 184 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1080); 
TEST_CASE( 185 ,1088, x14, 1, rdov x14;);
TEST_CASE( 186 ,1092, x14, 1, clrov;);
TEST_CASE( 187 ,1096, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 188 , uksub64, 0x0000000000000000, 0x00000000, 0x80000000, 0x06ea5e40, 0x9742787b, 1100); 
TEST_CASE( 189 ,1108, x14, 1, rdov x14;);
TEST_CASE( 190 ,1112, x14, 1, clrov;);
TEST_CASE( 191 ,1116, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 192 , uksub64, 0x0000000000000000, 0x41e94be1, 0x2dd86078, 0x00000000, 0x80000000, 1120); 
TEST_CASE( 193 ,1128, x14, 1, rdov x14;);
TEST_CASE( 194 ,1132, x14, 1, clrov;);
TEST_CASE( 195 ,1136, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 196 , uksub64, 0x0000000000000000, 0x00000000, 0x00000000, 0xa7fc179b, 0x9c6ca1ee, 1140); 
TEST_CASE( 197 ,1148, x14, 1, rdov x14;);
TEST_CASE( 198 ,1152, x14, 1, clrov;);
TEST_CASE( 199 ,1156, x14, 0, rdov x14;);

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 290, 4, -1
RV_COMPLIANCE_DATA_END
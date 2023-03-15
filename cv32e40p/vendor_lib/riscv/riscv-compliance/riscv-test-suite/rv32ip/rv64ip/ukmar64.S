# See LICENSE for license details.
#*****************************************************************************
# ukmar64.S
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

TEST_RR_OP64_OO( 2 , ukmar64, 0xfffffffe00000001, 0xffffffff, 0xffffffff , 8); 
TEST_RR_OP64_OO( 3 , ukmar64, 0xffffffffffffffff, 0x80000000, 0xffffffff , 16); 
TEST_CASE( 4 ,24, x14, 1, rdov x14;);
TEST_CASE( 5 ,28, x14, 1, clrov;);
TEST_CASE( 6 ,32, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 7 , ukmar64, 0x0fa883d9f0577c26, 0x0fa883da, 0xffffffff , 36); 
TEST_RR_OP64_OO( 8 , ukmar64, 0x0fa883d9f0577c26, 0x00000000, 0xffffffff , 44); 
TEST_RR_OP64_OO( 9 , ukmar64, 0x0fa883d9f0577c26, 0x80000000, 0x00000000 , 52); 
TEST_RR_OP64_OO( 10 , ukmar64, 0x0fa883d9f0577c26, 0xffffffff, 0x00000000 , 60); 
TEST_RR_OP64_OO( 11 , ukmar64, 0x6db2248f60ca2b4e, 0x65163698, 0xee25ed67 , 68); 
TEST_RR_OP64_OO( 12 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 76); 
TEST_CASE( 13 ,84, x14, 1, rdov x14;);
TEST_CASE( 14 ,88, x14, 1, clrov;);
TEST_CASE( 15 ,92, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 16 , ukmar64, 0x4000000000000000, 0x80000000, 0x80000000 , 96); 
TEST_RR_OP64_OO( 17 , ukmar64, 0x404b74846d9074c7, 0x0459f6e9, 0x1157202f , 104); 
TEST_RR_OP64_OO( 18 , ukmar64, 0xbc986d2c31879795, 0xfed69712, 0x7cde096f , 112); 
TEST_RR_OP64_OO( 19 , ukmar64, 0xbc986d2c31879795, 0x00000000, 0x00000000 , 120); 
TEST_RR_OP64_OO( 20 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 128); 
TEST_CASE( 21 ,136, x14, 1, rdov x14;);
TEST_CASE( 22 ,140, x14, 1, clrov;);
TEST_CASE( 23 ,144, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 24 , ukmar64, 0x2a85f5b7d57a0a48, 0x2a85f5b8, 0xffffffff , 148); 
TEST_RR_OP64_OO( 25 , ukmar64, 0x2a85f5b7d57a0a48, 0x00000000, 0xffffffff , 156); 
TEST_RR_OP64_OO( 26 , ukmar64, 0x7fc94f248036b0db, 0xffffffff, 0x5543596d , 164); 
TEST_RR_OP64_OO( 27 , ukmar64, 0x7fc94f248036b0db, 0x00000000, 0x00000000 , 172); 
TEST_RR_OP64_OO( 28 , ukmar64, 0xbfc94f248036b0db, 0x80000000, 0x80000000 , 180); 
TEST_RR_OP64_OO( 29 , ukmar64, 0xbfc94f248036b0db, 0x00000000, 0x00000000 , 188); 
TEST_RR_OP64_OO( 30 , ukmar64, 0xbfc94f248036b0db, 0x00000000, 0x00000000 , 196); 
TEST_RR_OP64_OO( 31 , ukmar64, 0xbfc94f248036b0db, 0x80000000, 0x00000000 , 204); 
TEST_RR_OP64_OO( 32 , ukmar64, 0xffffffffffffffff, 0x80000000, 0xffffffff , 212); 
TEST_CASE( 33 ,220, x14, 1, rdov x14;);
TEST_CASE( 34 ,224, x14, 1, clrov;);
TEST_CASE( 35 ,228, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 36 , ukmar64, 0x4000000000000000, 0x80000000, 0x80000000 , 232); 
TEST_RR_OP64_OO( 37 , ukmar64, 0x8000000000000000, 0x80000000, 0x80000000 , 240); 
TEST_RR_OP64_OO( 38 , ukmar64, 0x8000000000000000, 0x00000000, 0x80000000 , 248); 
TEST_RR_OP64_OO( 39 , ukmar64, 0xffffffff80000000, 0x80000000, 0xffffffff , 256); 
TEST_RR_OP64_OO( 40 , ukmar64, 0xffffffff80000000, 0x80000000, 0x00000000 , 264); 
TEST_RR_OP64_OO( 41 , ukmar64, 0xffffffff80000000, 0x80000000, 0x00000000 , 272); 
TEST_RR_OP64_OO( 42 , ukmar64, 0xffffffff80000000, 0x00000000, 0x00000000 , 280); 
TEST_RR_OP64_OO( 43 , ukmar64, 0xffffffff80000000, 0xffffffff, 0x00000000 , 288); 
TEST_RR_OP64_OO( 44 , ukmar64, 0xffffffffffffffff, 0x80000000, 0x80000000 , 296); 
TEST_CASE( 45 ,304, x14, 1, rdov x14;);
TEST_CASE( 46 ,308, x14, 1, clrov;);
TEST_CASE( 47 ,312, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 48 , ukmar64, 0x4ceadf6eb3152091, 0x4ceadf6f, 0xffffffff , 316); 
TEST_RR_OP64_OO( 49 , ukmar64, 0x9df5685a620a97a5, 0xffffffff, 0x510a88ec , 324); 
TEST_RR_OP64_OO( 50 , ukmar64, 0xd4c57271fa458949, 0x68bcb58c, 0x85f94ec3 , 332); 
TEST_RR_OP64_OO( 51 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0x80000000 , 340); 
TEST_CASE( 52 ,348, x14, 1, rdov x14;);
TEST_CASE( 53 ,352, x14, 1, clrov;);
TEST_CASE( 54 ,356, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 55 , ukmar64, 0x0b1a0c70f4e5f38f, 0xffffffff, 0x0b1a0c71 , 360); 
TEST_RR_OP64_OO( 56 , ukmar64, 0x8b1a0c7074e5f38f, 0xffffffff, 0x80000000 , 368); 
TEST_RR_OP64_OO( 57 , ukmar64, 0xffffffffffffffff, 0xc5355243, 0xffffffff , 376); 
TEST_CASE( 58 ,384, x14, 1, rdov x14;);
TEST_CASE( 59 ,388, x14, 1, clrov;);
TEST_CASE( 60 ,392, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 61 , ukmar64, 0x0000000000000000, 0x00000000, 0x80000000 , 396); 
TEST_RR_OP64_OO( 62 , ukmar64, 0xfffffffe00000001, 0xffffffff, 0xffffffff , 404); 
TEST_RR_OP64_OO( 63 , ukmar64, 0xffffffffffffffff, 0x80000000, 0xffffffff , 412); 
TEST_CASE( 64 ,420, x14, 1, rdov x14;);
TEST_CASE( 65 ,424, x14, 1, clrov;);
TEST_CASE( 66 ,428, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 67 , ukmar64, 0x308e8d1dcf7172e2, 0xffffffff, 0x308e8d1e , 432); 
TEST_RR_OP64_OO( 68 , ukmar64, 0x308e8d1dcf7172e2, 0xfbdf1037, 0x00000000 , 440); 
TEST_RR_OP64_OO( 69 , ukmar64, 0x308e8d1dcf7172e2, 0x00000000, 0x80000000 , 448); 
TEST_RR_OP64_OO( 70 , ukmar64, 0x708e8d1dcf7172e2, 0x80000000, 0x80000000 , 456); 
TEST_RR_OP64_OO( 71 , ukmar64, 0x708e8d1dcf7172e2, 0x6d8a1db3, 0x00000000 , 464); 
TEST_RR_OP64_OO( 72 , ukmar64, 0x76c42b8cc93bd473, 0xffffffff, 0x06359e6f , 472); 
TEST_RR_OP64_OO( 73 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 480); 
TEST_CASE( 74 ,488, x14, 1, rdov x14;);
TEST_CASE( 75 ,492, x14, 1, clrov;);
TEST_CASE( 76 ,496, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 77 , ukmar64, 0x46f93ce1de6a8386, 0xd77b869b, 0x54519ff2 , 500); 
TEST_RR_OP64_OO( 78 , ukmar64, 0xd9f9ef076c3d6f97, 0xb7a4c3bb, 0xccec24a3 , 508); 
TEST_RR_OP64_OO( 79 , ukmar64, 0xf3b6f8efec3d6f97, 0x337a13d1, 0x80000000 , 516); 
TEST_RR_OP64_OO( 80 , ukmar64, 0xffffffffffffffff, 0x80000000, 0xffffffff , 524); 
TEST_CASE( 81 ,532, x14, 1, rdov x14;);
TEST_CASE( 82 ,536, x14, 1, clrov;);
TEST_CASE( 83 ,540, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 84 , ukmar64, 0x0000000000000000, 0x00000000, 0xffffffff , 544); 
TEST_RR_OP64_OO( 85 , ukmar64, 0x0000000000000000, 0x00000000, 0x80000000 , 552); 
TEST_RR_OP64_OO( 86 , ukmar64, 0x0000000000000000, 0xaae9a2b9, 0x00000000 , 560); 
TEST_RR_OP64_OO( 87 , ukmar64, 0x0000000000000000, 0x80000000, 0x00000000 , 568); 
TEST_RR_OP64_OO( 88 , ukmar64, 0x7fffffff80000000, 0x80000000, 0xffffffff , 576); 
TEST_RR_OP64_OO( 89 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 584); 
TEST_CASE( 90 ,592, x14, 1, rdov x14;);
TEST_CASE( 91 ,596, x14, 1, clrov;);
TEST_CASE( 92 ,600, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 93 , ukmar64, 0x4000000000000000, 0x80000000, 0x80000000 , 604); 
TEST_RR_OP64_OO( 94 , ukmar64, 0xe76e121d5891ede2, 0xffffffff, 0xa76e121e , 612); 
TEST_RR_OP64_OO( 95 , ukmar64, 0xffffffffffffffff, 0xbbe54ea7, 0x92538d3d , 620); 
TEST_CASE( 96 ,628, x14, 1, rdov x14;);
TEST_CASE( 97 ,632, x14, 1, clrov;);
TEST_CASE( 98 ,636, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 99 , ukmar64, 0x0000000000000000, 0x00000000, 0x80000000 , 640); 
TEST_RR_OP64_OO( 100 , ukmar64, 0x0000000000000000, 0xffffffff, 0x00000000 , 648); 
TEST_RR_OP64_OO( 101 , ukmar64, 0x0000000000000000, 0x00000000, 0x00000000 , 656); 
TEST_RR_OP64_OO( 102 , ukmar64, 0x2e24e481d1db1b7e, 0xffffffff, 0x2e24e482 , 664); 
TEST_RR_OP64_OO( 103 , ukmar64, 0xae24e48151db1b7e, 0xffffffff, 0x80000000 , 672); 
TEST_RR_OP64_OO( 104 , ukmar64, 0xffffffffffffffff, 0x6f13dfbd, 0xffffffff , 680); 
TEST_CASE( 105 ,688, x14, 1, rdov x14;);
TEST_CASE( 106 ,692, x14, 1, clrov;);
TEST_CASE( 107 ,696, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 108 , ukmar64, 0x53eea7e680000000, 0x80000000, 0xa7dd4fcd , 700); 
TEST_RR_OP64_OO( 109 , ukmar64, 0x90a1cfa4434cd842, 0x3cb327be, 0xffffffff , 708); 
TEST_RR_OP64_OO( 110 , ukmar64, 0xffffffffffffffff, 0x80000000, 0xffffffff , 716); 
TEST_CASE( 111 ,724, x14, 1, rdov x14;);
TEST_CASE( 112 ,728, x14, 1, clrov;);
TEST_CASE( 113 ,732, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 114 , ukmar64, 0x7fffffff80000000, 0xffffffff, 0x80000000 , 736); 
TEST_RR_OP64_OO( 115 , ukmar64, 0x7fffffff80000000, 0xffffffff, 0x00000000 , 744); 
TEST_RR_OP64_OO( 116 , ukmar64, 0xffffffff00000000, 0xffffffff, 0x80000000 , 752); 
TEST_RR_OP64_OO( 117 , ukmar64, 0xffffffffffffffff, 0x80000000, 0x8e688cb0 , 760); 
TEST_CASE( 118 ,768, x14, 1, rdov x14;);
TEST_CASE( 119 ,772, x14, 1, clrov;);
TEST_CASE( 120 ,776, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 121 , ukmar64, 0x4000000000000000, 0x80000000, 0x80000000 , 780); 
TEST_RR_OP64_OO( 122 , ukmar64, 0x5e8f7275e1708d8a, 0xffffffff, 0x1e8f7276 , 788); 
TEST_RR_OP64_OO( 123 , ukmar64, 0x5e8f7275e1708d8a, 0x00000000, 0x00000000 , 796); 
TEST_RR_OP64_OO( 124 , ukmar64, 0x8441b20e4d8b19c4, 0x39cdb663, 0xa6f2f2fe , 804); 
TEST_RR_OP64_OO( 125 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 812); 
TEST_CASE( 126 ,820, x14, 1, rdov x14;);
TEST_CASE( 127 ,824, x14, 1, clrov;);
TEST_CASE( 128 ,828, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 129 , ukmar64, 0x0000000000000000, 0x80000000, 0x00000000 , 832); 
TEST_RR_OP64_OO( 130 , ukmar64, 0x65e9dc4d80000000, 0x80000000, 0xcbd3b89b , 840); 
TEST_RR_OP64_OO( 131 , ukmar64, 0xb11a05fd00000000, 0x80000000, 0x9660535f , 848); 
TEST_RR_OP64_OO( 132 , ukmar64, 0xb11a05fd00000000, 0x00000000, 0x80000000 , 856); 
TEST_RR_OP64_OO( 133 , ukmar64, 0xf5e7552900000000, 0x80000000, 0x899a9e58 , 864); 
TEST_RR_OP64_OO( 134 , ukmar64, 0xffffffffffffffff, 0x80000000, 0x921e4f0a , 872); 
TEST_CASE( 135 ,880, x14, 1, rdov x14;);
TEST_CASE( 136 ,884, x14, 1, clrov;);
TEST_CASE( 137 ,888, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 138 , ukmar64, 0x7fffffff80000000, 0xffffffff, 0x80000000 , 892); 
TEST_RR_OP64_OO( 139 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 900); 
TEST_CASE( 140 ,908, x14, 1, rdov x14;);
TEST_CASE( 141 ,912, x14, 1, clrov;);
TEST_CASE( 142 ,916, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 143 , ukmar64, 0x7fffffff80000000, 0xffffffff, 0x80000000 , 920); 
TEST_RR_OP64_OO( 144 , ukmar64, 0xbfffffff80000000, 0x80000000, 0x80000000 , 928); 
TEST_RR_OP64_OO( 145 , ukmar64, 0xbfffffff80000000, 0x80000000, 0x00000000 , 936); 
TEST_RR_OP64_OO( 146 , ukmar64, 0xbfffffff80000000, 0x80000000, 0x00000000 , 944); 
TEST_RR_OP64_OO( 147 , ukmar64, 0xf428e80567d6f876, 0xa002bf21, 0x537337b6 , 952); 
TEST_RR_OP64_OO( 148 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 960); 
TEST_CASE( 149 ,968, x14, 1, rdov x14;);
TEST_CASE( 150 ,972, x14, 1, clrov;);
TEST_CASE( 151 ,976, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 152 , ukmar64, 0x0000000000000000, 0x00000000, 0x80000000 , 980); 
TEST_RR_OP64_OO( 153 , ukmar64, 0x0000000000000000, 0x00000000, 0x80000000 , 988); 
TEST_RR_OP64_OO( 154 , ukmar64, 0x0000000000000000, 0x00000000, 0x67ea7246 , 996); 
TEST_RR_OP64_OO( 155 , ukmar64, 0x0000000000000000, 0x80000000, 0x00000000 , 1004); 
TEST_RR_OP64_OO( 156 , ukmar64, 0x3bfc781d00000000, 0x80000000, 0x77f8f03a , 1012); 
TEST_RR_OP64_OO( 157 , ukmar64, 0x3bfc781d00000000, 0x80000000, 0x00000000 , 1020); 
TEST_RR_OP64_OO( 158 , ukmar64, 0x3bfc781d00000000, 0x00000000, 0xffffffff , 1028); 
TEST_RR_OP64_OO( 159 , ukmar64, 0x7bfc781d00000000, 0x80000000, 0x80000000 , 1036); 
TEST_RR_OP64_OO( 160 , ukmar64, 0xfbfc781c80000000, 0xffffffff, 0x80000000 , 1044); 
TEST_RR_OP64_OO( 161 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0x80000000 , 1052); 
TEST_CASE( 162 ,1060, x14, 1, rdov x14;);
TEST_CASE( 163 ,1064, x14, 1, clrov;);
TEST_CASE( 164 ,1068, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 165 , ukmar64, 0x7fffffff80000000, 0xffffffff, 0x80000000 , 1072); 
TEST_RR_OP64_OO( 166 , ukmar64, 0xffffffff00000000, 0x80000000, 0xffffffff , 1080); 
TEST_RR_OP64_OO( 167 , ukmar64, 0xffffffffffffffff, 0xc84c9394, 0xbbb22ee7 , 1088); 
TEST_CASE( 168 ,1096, x14, 1, rdov x14;);
TEST_CASE( 169 ,1100, x14, 1, clrov;);
TEST_CASE( 170 ,1104, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 171 , ukmar64, 0xfffffffe00000001, 0xffffffff, 0xffffffff , 1108); 
TEST_RR_OP64_OO( 172 , ukmar64, 0xffffffffffffffff, 0xba82bbd7, 0xffffffff , 1116); 
TEST_CASE( 173 ,1124, x14, 1, rdov x14;);
TEST_CASE( 174 ,1128, x14, 1, clrov;);
TEST_CASE( 175 ,1132, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 176 , ukmar64, 0xfffffffe00000001, 0xffffffff, 0xffffffff , 1136); 
TEST_RR_OP64_OO( 177 , ukmar64, 0xffffffffffffffff, 0x06500fc7, 0xffffffff , 1144); 
TEST_CASE( 178 ,1152, x14, 1, rdov x14;);
TEST_CASE( 179 ,1156, x14, 1, clrov;);
TEST_CASE( 180 ,1160, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 181 , ukmar64, 0x7fffffff80000000, 0x80000000, 0xffffffff , 1164); 
TEST_RR_OP64_OO( 182 , ukmar64, 0xffffffff00000000, 0xffffffff, 0x80000000 , 1172); 
TEST_RR_OP64_OO( 183 , ukmar64, 0xffffffff00000000, 0x00000000, 0x89f59767 , 1180); 
TEST_RR_OP64_OO( 184 , ukmar64, 0xffffffff00000000, 0xffffffff, 0x00000000 , 1188); 
TEST_RR_OP64_OO( 185 , ukmar64, 0xffffffffffffffff, 0x80000000, 0x80000000 , 1196); 
TEST_CASE( 186 ,1204, x14, 1, rdov x14;);
TEST_CASE( 187 ,1208, x14, 1, clrov;);
TEST_CASE( 188 ,1212, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 189 , ukmar64, 0x7c8f9f9500000000, 0x80000000, 0xf91f3f2a , 1216); 
TEST_RR_OP64_OO( 190 , ukmar64, 0xc385892d6a61421c, 0xff989c69, 0x47129dbc , 1224); 
TEST_RR_OP64_OO( 191 , ukmar64, 0xc385892d6a61421c, 0x00000000, 0x80000000 , 1232); 
TEST_RR_OP64_OO( 192 , ukmar64, 0xffffffffffffffff, 0xffffffff, 0xffffffff , 1240); 
TEST_CASE( 193 ,1248, x14, 1, rdov x14;);
TEST_CASE( 194 ,1252, x14, 1, clrov;);
TEST_CASE( 195 ,1256, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 196 , ukmar64, 0xc93ae77936c51886, 0xffffffff, 0xc93ae77a , 1260); 
TEST_RR_OP64_OO( 197 , ukmar64, 0xd23b3c71b6c51886, 0x80000000, 0x1200a9f1 , 1268); 
TEST_RR_OP64_OO( 198 , ukmar64, 0xd23b3c71b6c51886, 0x80000000, 0x00000000 , 1276); 
TEST_RR_OP64_OO( 199 , ukmar64, 0xffffffffffffffff, 0x80000000, 0x654f1bf1 , 1284); 

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 323, 4, -1
RV_COMPLIANCE_DATA_END
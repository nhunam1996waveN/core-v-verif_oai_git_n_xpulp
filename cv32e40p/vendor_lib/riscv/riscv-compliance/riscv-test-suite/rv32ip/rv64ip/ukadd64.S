# See LICENSE for license details.
#*****************************************************************************
# ukadd64.S
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

TEST_RR_OP64_IO( 2 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 8); 
TEST_RR_OP64_IO( 3 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 16); 
TEST_RR_OP64_IO( 4 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 24); 
TEST_RR_OP64_IO( 5 , ukadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 32); 
TEST_RR_OP64_IO( 6 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 40); 
TEST_CASE( 7 ,48, x14, 1, rdov x14;);
TEST_CASE( 8 ,52, x14, 1, clrov;);
TEST_CASE( 9 ,56, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 10 , ukadd64, 0xa8e6a4a12fb95927, 0x00000000, 0x00000000, 0x2fb95927, 0xa8e6a4a1, 60); 
TEST_RR_OP64_IO( 11 , ukadd64, 0x63d6a4e09cbb1e20, 0x00000000, 0x00000000, 0x9cbb1e20, 0x63d6a4e0, 68); 
TEST_RR_OP64_IO( 12 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 76); 
TEST_RR_OP64_IO( 13 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 84); 
TEST_RR_OP64_IO( 14 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 92); 
TEST_CASE( 15 ,100, x14, 1, rdov x14;);
TEST_CASE( 16 ,104, x14, 1, clrov;);
TEST_CASE( 17 ,108, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 18 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 112); 
TEST_RR_OP64_IO( 19 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 120); 
TEST_RR_OP64_IO( 20 , ukadd64, 0x2310c3ac1a8e4878, 0x00000000, 0x00000000, 0x1a8e4878, 0x2310c3ac, 128); 
TEST_RR_OP64_IO( 21 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 136); 
TEST_CASE( 22 ,144, x14, 1, rdov x14;);
TEST_CASE( 23 ,148, x14, 1, clrov;);
TEST_CASE( 24 ,152, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 25 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 156); 
TEST_CASE( 26 ,164, x14, 1, rdov x14;);
TEST_CASE( 27 ,168, x14, 1, clrov;);
TEST_CASE( 28 ,172, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 29 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 176); 
TEST_RR_OP64_IO( 30 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 184); 
TEST_RR_OP64_IO( 31 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 192); 
TEST_CASE( 32 ,200, x14, 1, rdov x14;);
TEST_CASE( 33 ,204, x14, 1, clrov;);
TEST_CASE( 34 ,208, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 35 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 212); 
TEST_RR_OP64_IO( 36 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 220); 
TEST_RR_OP64_IO( 37 , ukadd64, 0xc3b9e0e2c4ea3f56, 0x00000000, 0x80000000, 0xc4ea3f56, 0x43b9e0e2, 228); 
TEST_RR_OP64_IO( 38 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 236); 
TEST_RR_OP64_IO( 39 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 244); 
TEST_RR_OP64_IO( 40 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 252); 
TEST_RR_OP64_IO( 41 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 260); 
TEST_RR_OP64_IO( 42 , ukadd64, 0xaf17a82c026179f6, 0x00000000, 0x80000000, 0x026179f6, 0x2f17a82c, 268); 
TEST_RR_OP64_IO( 43 , ukadd64, 0xffffffffffffffff, 0xe6fdfaff, 0xa2d1b3d1, 0xffffffff, 0xffffffff, 276); 
TEST_CASE( 44 ,284, x14, 1, rdov x14;);
TEST_CASE( 45 ,288, x14, 1, clrov;);
TEST_CASE( 46 ,292, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 47 , ukadd64, 0xd077ac97eab645e4, 0x49d321f6, 0xc0e1f13c, 0xa0e323ee, 0x0f95bb5b, 296); 
TEST_RR_OP64_IO( 48 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 304); 
TEST_CASE( 49 ,312, x14, 1, rdov x14;);
TEST_CASE( 50 ,316, x14, 1, clrov;);
TEST_CASE( 51 ,320, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 52 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 324); 
TEST_RR_OP64_IO( 53 , ukadd64, 0xffffffffffffffff, 0xb801462f, 0xe0a62af3, 0x00000000, 0x80000000, 332); 
TEST_CASE( 54 ,340, x14, 1, rdov x14;);
TEST_CASE( 55 ,344, x14, 1, clrov;);
TEST_CASE( 56 ,348, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 57 , ukadd64, 0xffffffffffffffff, 0x4ee266eb, 0xa6faf5d9, 0x00000000, 0x80000000, 352); 
TEST_CASE( 58 ,360, x14, 1, rdov x14;);
TEST_CASE( 59 ,364, x14, 1, clrov;);
TEST_CASE( 60 ,368, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 61 , ukadd64, 0x0617ca36cb432bb7, 0x00000000, 0x00000000, 0xcb432bb7, 0x0617ca36, 372); 
TEST_RR_OP64_IO( 62 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 380); 
TEST_CASE( 63 ,388, x14, 1, rdov x14;);
TEST_CASE( 64 ,392, x14, 1, clrov;);
TEST_CASE( 65 ,396, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 66 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0xd5b33099, 0xc857bb06, 400); 
TEST_CASE( 67 ,408, x14, 1, rdov x14;);
TEST_CASE( 68 ,412, x14, 1, clrov;);
TEST_CASE( 69 ,416, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 70 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 420); 
TEST_RR_OP64_IO( 71 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 428); 
TEST_CASE( 72 ,436, x14, 1, rdov x14;);
TEST_CASE( 73 ,440, x14, 1, clrov;);
TEST_CASE( 74 ,444, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 75 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 448); 
TEST_CASE( 76 ,456, x14, 1, rdov x14;);
TEST_CASE( 77 ,460, x14, 1, clrov;);
TEST_CASE( 78 ,464, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 79 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 468); 
TEST_RR_OP64_IO( 80 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 476); 
TEST_RR_OP64_IO( 81 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 484); 
TEST_CASE( 82 ,492, x14, 1, rdov x14;);
TEST_CASE( 83 ,496, x14, 1, clrov;);
TEST_CASE( 84 ,500, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 85 , ukadd64, 0x597c7e4c0dd18d31, 0x51dc0583, 0x33835942, 0xbbf587ae, 0x25f92509, 504); 
TEST_RR_OP64_IO( 86 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x229ca7c8, 0xcb64e51a, 512); 
TEST_CASE( 87 ,520, x14, 1, rdov x14;);
TEST_CASE( 88 ,524, x14, 1, clrov;);
TEST_CASE( 89 ,528, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 90 , ukadd64, 0xc33de39ac684b20f, 0x00000000, 0x80000000, 0xc684b20f, 0x433de39a, 532); 
TEST_RR_OP64_IO( 91 , ukadd64, 0xffffffffffffffff, 0xfa694093, 0x946f775a, 0xe791c896, 0x8422d6f2, 540); 
TEST_CASE( 92 ,548, x14, 1, rdov x14;);
TEST_CASE( 93 ,552, x14, 1, clrov;);
TEST_CASE( 94 ,556, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 95 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 560); 
TEST_CASE( 96 ,568, x14, 1, rdov x14;);
TEST_CASE( 97 ,572, x14, 1, clrov;);
TEST_CASE( 98 ,576, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 99 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 580); 
TEST_RR_OP64_IO( 100 , ukadd64, 0xd3c295bb82f19ad9, 0x00000000, 0x00000000, 0x82f19ad9, 0xd3c295bb, 588); 
TEST_RR_OP64_IO( 101 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 596); 
TEST_CASE( 102 ,604, x14, 1, rdov x14;);
TEST_CASE( 103 ,608, x14, 1, clrov;);
TEST_CASE( 104 ,612, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 105 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 616); 
TEST_RR_OP64_IO( 106 , ukadd64, 0xa57e57b50483e5b7, 0x00000000, 0x00000000, 0x0483e5b7, 0xa57e57b5, 624); 
TEST_RR_OP64_IO( 107 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x9f4fc5c0, 0xc0768d1a, 632); 
TEST_CASE( 108 ,640, x14, 1, rdov x14;);
TEST_CASE( 109 ,644, x14, 1, clrov;);
TEST_CASE( 110 ,648, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 111 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 652); 
TEST_CASE( 112 ,660, x14, 1, rdov x14;);
TEST_CASE( 113 ,664, x14, 1, clrov;);
TEST_CASE( 114 ,668, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 115 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 672); 
TEST_CASE( 116 ,680, x14, 1, rdov x14;);
TEST_CASE( 117 ,684, x14, 1, clrov;);
TEST_CASE( 118 ,688, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 119 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x24acead4, 0xaf31505b, 692); 
TEST_CASE( 120 ,700, x14, 1, rdov x14;);
TEST_CASE( 121 ,704, x14, 1, clrov;);
TEST_CASE( 122 ,708, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 123 , ukadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 712); 
TEST_RR_OP64_IO( 124 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 720); 
TEST_CASE( 125 ,728, x14, 1, rdov x14;);
TEST_CASE( 126 ,732, x14, 1, clrov;);
TEST_CASE( 127 ,736, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 128 , ukadd64, 0xda58ec5c600fefae, 0x00000000, 0x00000000, 0x600fefae, 0xda58ec5c, 740); 
TEST_RR_OP64_IO( 129 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 748); 
TEST_RR_OP64_IO( 130 , ukadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 756); 
TEST_RR_OP64_IO( 131 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 764); 
TEST_RR_OP64_IO( 132 , ukadd64, 0xffffffffffffffff, 0x2a60e4d8, 0xeab11e66, 0x00000000, 0x80000000, 772); 
TEST_CASE( 133 ,780, x14, 1, rdov x14;);
TEST_CASE( 134 ,784, x14, 1, clrov;);
TEST_CASE( 135 ,788, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 136 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 792); 
TEST_RR_OP64_IO( 137 , ukadd64, 0xee7282d20d3dd1cf, 0x00000000, 0x80000000, 0x0d3dd1cf, 0x6e7282d2, 800); 
TEST_RR_OP64_IO( 138 , ukadd64, 0xffffffffffffffff, 0xf524c4d7, 0x99f3e77d, 0x00000000, 0x80000000, 808); 
TEST_CASE( 139 ,816, x14, 1, rdov x14;);
TEST_CASE( 140 ,820, x14, 1, clrov;);
TEST_CASE( 141 ,824, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 142 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xa612520e, 0xfcecbb2e, 828); 
TEST_CASE( 143 ,836, x14, 1, rdov x14;);
TEST_CASE( 144 ,840, x14, 1, clrov;);
TEST_CASE( 145 ,844, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 146 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 848); 
TEST_CASE( 147 ,856, x14, 1, rdov x14;);
TEST_CASE( 148 ,860, x14, 1, clrov;);
TEST_CASE( 149 ,864, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 150 , ukadd64, 0xffffffffffffffff, 0xf5271472, 0x3ff62aa3, 0xffffffff, 0xffffffff, 868); 
TEST_CASE( 151 ,876, x14, 1, rdov x14;);
TEST_CASE( 152 ,880, x14, 1, clrov;);
TEST_CASE( 153 ,884, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 154 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 888); 
TEST_CASE( 155 ,896, x14, 1, rdov x14;);
TEST_CASE( 156 ,900, x14, 1, clrov;);
TEST_CASE( 157 ,904, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 158 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0xb76262e0, 0xd79085c7, 908); 
TEST_CASE( 159 ,916, x14, 1, rdov x14;);
TEST_CASE( 160 ,920, x14, 1, clrov;);
TEST_CASE( 161 ,924, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 162 , ukadd64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 928); 
TEST_RR_OP64_IO( 163 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 936); 
TEST_CASE( 164 ,944, x14, 1, rdov x14;);
TEST_CASE( 165 ,948, x14, 1, clrov;);
TEST_CASE( 166 ,952, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 167 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x593eaf57, 0xf4ac7344, 956); 
TEST_CASE( 168 ,964, x14, 1, rdov x14;);
TEST_CASE( 169 ,968, x14, 1, clrov;);
TEST_CASE( 170 ,972, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 171 , ukadd64, 0x25e101c7f2abb616, 0xf2abb616, 0x25e101c7, 0x00000000, 0x00000000, 976); 
TEST_RR_OP64_IO( 172 , ukadd64, 0x3a9eff50a9780b92, 0x00000000, 0x00000000, 0xa9780b92, 0x3a9eff50, 984); 
TEST_RR_OP64_IO( 173 , ukadd64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 992); 
TEST_RR_OP64_IO( 174 , ukadd64, 0xffffffffffffffff, 0xab8ec8b7, 0xe56cc866, 0x00000000, 0x80000000, 1000); 
TEST_CASE( 175 ,1008, x14, 1, rdov x14;);
TEST_CASE( 176 ,1012, x14, 1, clrov;);
TEST_CASE( 177 ,1016, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 178 , ukadd64, 0x1421c4c29130543d, 0x00000000, 0x00000000, 0x9130543d, 0x1421c4c2, 1020); 
TEST_RR_OP64_IO( 179 , ukadd64, 0x97c16b7989e31f92, 0x89e31f92, 0x17c16b79, 0x00000000, 0x80000000, 1028); 
TEST_RR_OP64_IO( 180 , ukadd64, 0xffffffffffffffff, 0x4e763b17, 0xae106b73, 0x00000000, 0x80000000, 1036); 
TEST_CASE( 181 ,1044, x14, 1, rdov x14;);
TEST_CASE( 182 ,1048, x14, 1, clrov;);
TEST_CASE( 183 ,1052, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 184 , ukadd64, 0xffffffffffffffff, 0x2319b8aa, 0xf89edbaf, 0x00000000, 0x80000000, 1056); 
TEST_CASE( 185 ,1064, x14, 1, rdov x14;);
TEST_CASE( 186 ,1068, x14, 1, clrov;);
TEST_CASE( 187 ,1072, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 188 , ukadd64, 0xffffffffffffffff, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1076); 
TEST_CASE( 189 ,1084, x14, 1, rdov x14;);
TEST_CASE( 190 ,1088, x14, 1, clrov;);
TEST_CASE( 191 ,1092, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 192 , ukadd64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1096); 
TEST_RR_OP64_IO( 193 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1104); 
TEST_CASE( 194 ,1112, x14, 1, rdov x14;);
TEST_CASE( 195 ,1116, x14, 1, clrov;);
TEST_CASE( 196 ,1120, x14, 0, rdov x14;);
TEST_RR_OP64_IO( 197 , ukadd64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x53003177, 0xe8d9f661, 1124); 
TEST_CASE( 198 ,1132, x14, 1, rdov x14;);
TEST_CASE( 199 ,1136, x14, 1, clrov;);

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 285, 4, -1
RV_COMPLIANCE_DATA_END
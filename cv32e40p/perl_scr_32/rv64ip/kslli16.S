# See LICENSE for license details.
#*****************************************************************************
# kslli16.S
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

TEST_IMM_OP( 2 , kslli16, 0xffff0000, 0xffff0000, 0 , 8); 
TEST_IMM_OP( 3 , kslli16, 0xfe000000, 0xffff0000, 9 , 12); 
TEST_IMM_OP( 4 , kslli16, 0xfff00000, 0xffff0000, 4 , 16); 
TEST_IMM_OP( 5 , kslli16, 0x00008000, 0x000099ee, 10 , 20); 
TEST_CASE( 6 ,24, x14, 1, rdov x14;);
TEST_CASE( 7 ,28, x14, 1, clrov;);
TEST_CASE( 8 ,32, x14, 0, rdov x14;);
TEST_IMM_OP( 9 , kslli16, 0x00008000, 0x0000bce0, 12 , 36); 
TEST_CASE( 10 ,40, x14, 1, rdov x14;);
TEST_CASE( 11 ,44, x14, 1, clrov;);
TEST_CASE( 12 ,48, x14, 0, rdov x14;);
TEST_IMM_OP( 13 , kslli16, 0x80000000, 0x888a0000, 8 , 52); 
TEST_CASE( 14 ,56, x14, 1, rdov x14;);
TEST_CASE( 15 ,60, x14, 1, clrov;);
TEST_CASE( 16 ,64, x14, 0, rdov x14;);
TEST_IMM_OP( 17 , kslli16, 0x8dd9d154, 0x8dd9d154, 0 , 68); 
TEST_IMM_OP( 18 , kslli16, 0xfe00fe00, 0xffffffff, 9 , 72); 
TEST_IMM_OP( 19 , kslli16, 0x7fff8000, 0x5c999f33, 9 , 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_IMM_OP( 23 , kslli16, 0x80000000, 0xb3590000, 14 , 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_IMM_OP( 27 , kslli16, 0x8000f800, 0x8000ffff, 11 , 108); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_IMM_OP( 31 , kslli16, 0x00008000, 0x00008000, 11 , 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_IMM_OP( 35 , kslli16, 0x80008000, 0xe5958000, 3 , 140); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_IMM_OP( 39 , kslli16, 0x7fff8000, 0x43728000, 3 , 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_IMM_OP( 43 , kslli16, 0xfffefffe, 0xffffffff, 1 , 172); 
TEST_IMM_OP( 44 , kslli16, 0xfff88000, 0xffffb53c, 3 , 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_IMM_OP( 48 , kslli16, 0x8000ff00, 0x8000ffff, 8 , 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_IMM_OP( 52 , kslli16, 0x00000000, 0x00000000, 2 , 208); 
TEST_IMM_OP( 53 , kslli16, 0x0000ffe0, 0x0000ffff, 5 , 212); 
TEST_IMM_OP( 54 , kslli16, 0x80007fff, 0x80001cc0, 4 , 216); 
TEST_CASE( 55 ,220, x14, 1, rdov x14;);
TEST_CASE( 56 ,224, x14, 1, clrov;);
TEST_CASE( 57 ,228, x14, 0, rdov x14;);
TEST_IMM_OP( 58 , kslli16, 0x00000000, 0x00000000, 0 , 232); 
TEST_IMM_OP( 59 , kslli16, 0xe0008000, 0xffffbb2e, 13 , 236); 
TEST_CASE( 60 ,240, x14, 1, rdov x14;);
TEST_CASE( 61 ,244, x14, 1, clrov;);
TEST_CASE( 62 ,248, x14, 0, rdov x14;);
TEST_IMM_OP( 63 , kslli16, 0xfffc8000, 0xffff8000, 2 , 252); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_IMM_OP( 67 , kslli16, 0x00007fff, 0x00002cfa, 10 , 268); 
TEST_CASE( 68 ,272, x14, 1, rdov x14;);
TEST_CASE( 69 ,276, x14, 1, clrov;);
TEST_CASE( 70 ,280, x14, 0, rdov x14;);
TEST_IMM_OP( 71 , kslli16, 0x29058000, 0x29058000, 0 , 284); 
TEST_IMM_OP( 72 , kslli16, 0x80000000, 0x80000000, 2 , 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_IMM_OP( 76 , kslli16, 0x80008000, 0xb96e8000, 3 , 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_IMM_OP( 80 , kslli16, 0x00008000, 0x00008000, 8 , 320); 
TEST_CASE( 81 ,324, x14, 1, rdov x14;);
TEST_CASE( 82 ,328, x14, 1, clrov;);
TEST_CASE( 83 ,332, x14, 0, rdov x14;);
TEST_IMM_OP( 84 , kslli16, 0x00000000, 0x00000000, 1 , 336); 
TEST_IMM_OP( 85 , kslli16, 0x0000f000, 0x0000ffff, 12 , 340); 
TEST_IMM_OP( 86 , kslli16, 0xffff8000, 0xffff8000, 0 , 344); 
TEST_IMM_OP( 87 , kslli16, 0xffe07fff, 0xffff2f15, 5 , 348); 
TEST_CASE( 88 ,352, x14, 1, rdov x14;);
TEST_CASE( 89 ,356, x14, 1, clrov;);
TEST_CASE( 90 ,360, x14, 0, rdov x14;);
TEST_IMM_OP( 91 , kslli16, 0x0000ff80, 0x0000ffff, 7 , 364); 
TEST_IMM_OP( 92 , kslli16, 0x00008000, 0x0000975c, 8 , 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_IMM_OP( 96 , kslli16, 0x0000ff80, 0x0000ffff, 7 , 384); 
TEST_IMM_OP( 97 , kslli16, 0x80000000, 0x80000000, 4 , 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_IMM_OP( 101 , kslli16, 0x0000ff00, 0x0000ffff, 8 , 404); 
TEST_IMM_OP( 102 , kslli16, 0xf800f800, 0xffffffff, 11 , 408); 
TEST_IMM_OP( 103 , kslli16, 0xff800000, 0xffff0000, 7 , 412); 
TEST_IMM_OP( 104 , kslli16, 0xfff0fff0, 0xffffffff, 4 , 416); 
TEST_IMM_OP( 105 , kslli16, 0x8000fe00, 0x8000ffff, 9 , 420); 
TEST_CASE( 106 ,424, x14, 1, rdov x14;);
TEST_CASE( 107 ,428, x14, 1, clrov;);
TEST_CASE( 108 ,432, x14, 0, rdov x14;);
TEST_IMM_OP( 109 , kslli16, 0xf0007fff, 0xffff4886, 12 , 436); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_IMM_OP( 113 , kslli16, 0x8000ffc0, 0x8000ffff, 6 , 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_IMM_OP( 117 , kslli16, 0x3f3efffe, 0x1f9fffff, 1 , 468); 
TEST_IMM_OP( 118 , kslli16, 0xf8008000, 0xffffccff, 11 , 472); 
TEST_CASE( 119 ,476, x14, 1, rdov x14;);
TEST_CASE( 120 ,480, x14, 1, clrov;);
TEST_CASE( 121 ,484, x14, 0, rdov x14;);
TEST_IMM_OP( 122 , kslli16, 0x80008000, 0x80009fc7, 9 , 488); 
TEST_CASE( 123 ,492, x14, 1, rdov x14;);
TEST_CASE( 124 ,496, x14, 1, clrov;);
TEST_CASE( 125 ,500, x14, 0, rdov x14;);
TEST_IMM_OP( 126 , kslli16, 0x8000c000, 0xe05effff, 14 , 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_IMM_OP( 130 , kslli16, 0x80007fff, 0xb36b5a2c, 5 , 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_IMM_OP( 134 , kslli16, 0x80008000, 0x80008000, 4 , 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_IMM_OP( 138 , kslli16, 0x7fff8000, 0x48f28000, 1 , 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_IMM_OP( 142 , kslli16, 0x8000fff8, 0x8000ffff, 3 , 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_IMM_OP( 146 , kslli16, 0x7fff8000, 0x415b8000, 6 , 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_IMM_OP( 150 , kslli16, 0xff80ff80, 0xffffffff, 7 , 600); 
TEST_IMM_OP( 151 , kslli16, 0xffc08000, 0xffff8f4f, 6 , 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_IMM_OP( 155 , kslli16, 0xff008000, 0xffff8000, 8 , 620); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_IMM_OP( 159 , kslli16, 0x80000000, 0x80000000, 3 , 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_IMM_OP( 163 , kslli16, 0x00008000, 0x00008f75, 5 , 652); 
TEST_CASE( 164 ,656, x14, 1, rdov x14;);
TEST_CASE( 165 ,660, x14, 1, clrov;);
TEST_CASE( 166 ,664, x14, 0, rdov x14;);
TEST_IMM_OP( 167 , kslli16, 0x8000ffff, 0x8000ffff, 0 , 668); 
TEST_IMM_OP( 168 , kslli16, 0x00008000, 0x0000afc7, 5 , 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_IMM_OP( 172 , kslli16, 0xe000e000, 0xffffffff, 13 , 688); 
TEST_IMM_OP( 173 , kslli16, 0x00008000, 0x0000a188, 6 , 692); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_IMM_OP( 177 , kslli16, 0x7fff0000, 0x3b660000, 5 , 708); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_IMM_OP( 181 , kslli16, 0x80008000, 0x80008000, 4 , 724); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_IMM_OP( 185 , kslli16, 0x0000fe00, 0x0000ffff, 9 , 740); 
TEST_IMM_OP( 186 , kslli16, 0x8000fc00, 0x8000ffff, 10 , 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_IMM_OP( 190 , kslli16, 0x8000ff00, 0x8000ffff, 8 , 760); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_IMM_OP( 194 , kslli16, 0x0000ff00, 0x0000ffff, 8 , 776); 
TEST_IMM_OP( 195 , kslli16, 0x80000000, 0x80000000, 0 , 780); 
TEST_IMM_OP( 196 , kslli16, 0x80008000, 0x8000e2e3, 4 , 784); 
TEST_CASE( 197 ,788, x14, 1, rdov x14;);
TEST_CASE( 198 ,792, x14, 1, clrov;);
TEST_CASE( 199 ,796, x14, 0, rdov x14;);

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 200, 4, -1
RV_COMPLIANCE_DATA_END
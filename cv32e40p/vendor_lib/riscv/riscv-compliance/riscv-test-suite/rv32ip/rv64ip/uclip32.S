# See LICENSE for license details.
#*****************************************************************************
# uclip32.S
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

TEST_IMM_OP( 2 , uclip32, 0x00000000, 0xffffffff, 9, 8 ); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_IMM_OP( 6 , uclip32, 0x00000000, 0x80000000, 18, 24 ); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_IMM_OP( 10 , uclip32, 0x00000000, 0x00000000, 4, 40 ); 
TEST_IMM_OP( 11 , uclip32, 0x00000000, 0x00000000, 10, 44 ); 
TEST_IMM_OP( 12 , uclip32, 0x00000000, 0x00000000, 18, 48 ); 
TEST_IMM_OP( 13 , uclip32, 0x00000000, 0x00000000, 24, 52 ); 
TEST_IMM_OP( 14 , uclip32, 0x00000000, 0xffffffff, 23, 56 ); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_IMM_OP( 18 , uclip32, 0x00000000, 0x00000000, 1, 72 ); 
TEST_IMM_OP( 19 , uclip32, 0x00000000, 0xffffffff, 20, 76 ); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_IMM_OP( 23 , uclip32, 0x00000000, 0x88957b4c, 19, 92 ); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_IMM_OP( 27 , uclip32, 0x00000000, 0x80000000, 27, 108 ); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_IMM_OP( 31 , uclip32, 0x00000000, 0x82574d69, 21, 124 ); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_IMM_OP( 35 , uclip32, 0x00000000, 0xffffffff, 12, 140 ); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_IMM_OP( 39 , uclip32, 0x00000000, 0xffffffff, 25, 156 ); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_IMM_OP( 43 , uclip32, 0x00000000, 0xffffffff, 20, 172 ); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_IMM_OP( 47 , uclip32, 0x0000ffff, 0x2f1853b1, 16, 188 ); 
TEST_CASE( 48 ,192, x14, 1, rdov x14;);
TEST_CASE( 49 ,196, x14, 1, clrov;);
TEST_CASE( 50 ,200, x14, 0, rdov x14;);
TEST_IMM_OP( 51 , uclip32, 0x00000000, 0x80000000, 13, 204 ); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_IMM_OP( 55 , uclip32, 0x00000000, 0x00000000, 4, 220 ); 
TEST_IMM_OP( 56 , uclip32, 0x00000000, 0xffffffff, 17, 224 ); 
TEST_CASE( 57 ,228, x14, 1, rdov x14;);
TEST_CASE( 58 ,232, x14, 1, clrov;);
TEST_CASE( 59 ,236, x14, 0, rdov x14;);
TEST_IMM_OP( 60 , uclip32, 0x00000000, 0xec1b815c, 18, 240 ); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_IMM_OP( 64 , uclip32, 0x00000000, 0xae6fd5aa, 26, 256 ); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_IMM_OP( 68 , uclip32, 0x00000000, 0x80000000, 10, 272 ); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_IMM_OP( 72 , uclip32, 0x00000000, 0xffffffff, 6, 288 ); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_IMM_OP( 76 , uclip32, 0x00000000, 0xffffffff, 23, 304 ); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_IMM_OP( 80 , uclip32, 0x00000000, 0x00000000, 25, 320 ); 
TEST_IMM_OP( 81 , uclip32, 0x00000000, 0x80000000, 30, 324 ); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_IMM_OP( 85 , uclip32, 0x00000000, 0x00000000, 11, 340 ); 
TEST_IMM_OP( 86 , uclip32, 0x00000000, 0x80000000, 25, 344 ); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_IMM_OP( 90 , uclip32, 0x00000000, 0xc8e83875, 8, 360 ); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_IMM_OP( 94 , uclip32, 0x00000000, 0x00000000, 9, 376 ); 
TEST_IMM_OP( 95 , uclip32, 0x00000000, 0x80000000, 5, 380 ); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_IMM_OP( 99 , uclip32, 0x00000000, 0x9c804dc6, 18, 396 ); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_IMM_OP( 103 , uclip32, 0x00000000, 0x80000000, 16, 412 ); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_IMM_OP( 107 , uclip32, 0x00000000, 0x80000000, 11, 428 ); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_IMM_OP( 111 , uclip32, 0x00000000, 0xffffffff, 28, 444 ); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_IMM_OP( 115 , uclip32, 0x000fffff, 0x59dbf6b3, 20, 460 ); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_IMM_OP( 119 , uclip32, 0x0000001f, 0x44af5edf, 5, 476 ); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_IMM_OP( 123 , uclip32, 0x00000000, 0x80000000, 7, 492 ); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_IMM_OP( 127 , uclip32, 0x00000000, 0xffffffff, 12, 508 ); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_IMM_OP( 131 , uclip32, 0x00000000, 0x80000000, 23, 524 ); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_IMM_OP( 135 , uclip32, 0x00000000, 0x00000000, 10, 540 ); 
TEST_IMM_OP( 136 , uclip32, 0x00000000, 0x00000000, 10, 544 ); 
TEST_IMM_OP( 137 , uclip32, 0x00000000, 0x80000000, 23, 548 ); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_IMM_OP( 141 , uclip32, 0x00000000, 0xffffffff, 11, 564 ); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_IMM_OP( 145 , uclip32, 0x00000000, 0xffffffff, 6, 580 ); 
TEST_CASE( 146 ,584, x14, 1, rdov x14;);
TEST_CASE( 147 ,588, x14, 1, clrov;);
TEST_CASE( 148 ,592, x14, 0, rdov x14;);
TEST_IMM_OP( 149 , uclip32, 0x00000000, 0x00000000, 4, 596 ); 
TEST_IMM_OP( 150 , uclip32, 0x00000000, 0x00000000, 11, 600 ); 
TEST_IMM_OP( 151 , uclip32, 0x00000000, 0x00000000, 10, 604 ); 
TEST_IMM_OP( 152 , uclip32, 0x00000000, 0xffffffff, 11, 608 ); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_IMM_OP( 156 , uclip32, 0x00000000, 0xffffffff, 6, 624 ); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_IMM_OP( 160 , uclip32, 0x00000000, 0xffffffff, 20, 640 ); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_IMM_OP( 164 , uclip32, 0x00000000, 0x80000000, 20, 656 ); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_IMM_OP( 168 , uclip32, 0x00000000, 0x00000000, 14, 672 ); 
TEST_IMM_OP( 169 , uclip32, 0x00000001, 0x442b6e30, 1, 676 ); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_IMM_OP( 173 , uclip32, 0x00000000, 0x99b627bc, 14, 692 ); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_IMM_OP( 177 , uclip32, 0x00000000, 0x80000000, 28, 708 ); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_IMM_OP( 181 , uclip32, 0x00000000, 0x80000000, 0, 724 ); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_IMM_OP( 185 , uclip32, 0x00000000, 0x00000000, 25, 740 ); 
TEST_IMM_OP( 186 , uclip32, 0x00000000, 0xffffffff, 27, 744 ); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_IMM_OP( 190 , uclip32, 0x00000000, 0x1dedc1dc, 0, 760 ); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_IMM_OP( 194 , uclip32, 0x00000000, 0x00000000, 16, 776 ); 
TEST_IMM_OP( 195 , uclip32, 0x00000000, 0x80000000, 21, 780 ); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_IMM_OP( 199 , uclip32, 0x000fffff, 0x5241a544, 20, 796 ); 

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
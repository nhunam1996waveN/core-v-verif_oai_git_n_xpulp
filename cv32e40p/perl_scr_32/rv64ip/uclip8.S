# See LICENSE for license details.
#*****************************************************************************
# uclip8.S
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

TEST_IMM_OP( 2 , uclip8, 0x03000000, 0x46800080, 2 , 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_IMM_OP( 6 , uclip8, 0x0000001f, 0xff00d721, 5 , 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_IMM_OP( 10 , uclip8, 0x00000000, 0x000080d0, 0 , 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_IMM_OP( 14 , uclip8, 0x00000000, 0x00cbcf80, 6 , 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_IMM_OP( 18 , uclip8, 0x00010000, 0x0040dd00, 1 , 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_IMM_OP( 22 , uclip8, 0x00000000, 0x00000000, 4 , 88); 
TEST_IMM_OP( 23 , uclip8, 0x00000000, 0x80858080, 6 , 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_IMM_OP( 27 , uclip8, 0x00070000, 0x800ae4ff, 3 , 108); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_IMM_OP( 31 , uclip8, 0x0000003f, 0xff00005b, 6 , 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_IMM_OP( 35 , uclip8, 0x00000f00, 0xffff748e, 4 , 140); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_IMM_OP( 39 , uclip8, 0x000c0000, 0x800cffff, 6 , 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_IMM_OP( 43 , uclip8, 0x01000100, 0x2e002d00, 1 , 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_IMM_OP( 47 , uclip8, 0x0f000000, 0x700000e1, 4 , 188); 
TEST_CASE( 48 ,192, x14, 1, rdov x14;);
TEST_CASE( 49 ,196, x14, 1, clrov;);
TEST_CASE( 50 ,200, x14, 0, rdov x14;);
TEST_IMM_OP( 51 , uclip8, 0x00000800, 0x80000880, 6 , 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_IMM_OP( 55 , uclip8, 0x00000100, 0xff807780, 1 , 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_IMM_OP( 59 , uclip8, 0x00000000, 0xc4fffff6, 2 , 236); 
TEST_CASE( 60 ,240, x14, 1, rdov x14;);
TEST_CASE( 61 ,244, x14, 1, clrov;);
TEST_CASE( 62 ,248, x14, 0, rdov x14;);
TEST_IMM_OP( 63 , uclip8, 0x00000001, 0xff00003c, 1 , 252); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_IMM_OP( 67 , uclip8, 0x00000000, 0x8080b4ff, 3 , 268); 
TEST_CASE( 68 ,272, x14, 1, rdov x14;);
TEST_CASE( 69 ,276, x14, 1, clrov;);
TEST_CASE( 70 ,280, x14, 0, rdov x14;);
TEST_IMM_OP( 71 , uclip8, 0x0f000000, 0x6d80ff00, 4 , 284); 
TEST_CASE( 72 ,288, x14, 1, rdov x14;);
TEST_CASE( 73 ,292, x14, 1, clrov;);
TEST_CASE( 74 ,296, x14, 0, rdov x14;);
TEST_IMM_OP( 75 , uclip8, 0x00000000, 0xcaffffb0, 3 , 300); 
TEST_CASE( 76 ,304, x14, 1, rdov x14;);
TEST_CASE( 77 ,308, x14, 1, clrov;);
TEST_CASE( 78 ,312, x14, 0, rdov x14;);
TEST_IMM_OP( 79 , uclip8, 0x00000000, 0x80ffff00, 3 , 316); 
TEST_CASE( 80 ,320, x14, 1, rdov x14;);
TEST_CASE( 81 ,324, x14, 1, clrov;);
TEST_CASE( 82 ,328, x14, 0, rdov x14;);
TEST_IMM_OP( 83 , uclip8, 0x00000000, 0x808000ff, 0 , 332); 
TEST_CASE( 84 ,336, x14, 1, rdov x14;);
TEST_CASE( 85 ,340, x14, 1, clrov;);
TEST_CASE( 86 ,344, x14, 0, rdov x14;);
TEST_IMM_OP( 87 , uclip8, 0x05000000, 0x05858000, 6 , 348); 
TEST_CASE( 88 ,352, x14, 1, rdov x14;);
TEST_CASE( 89 ,356, x14, 1, clrov;);
TEST_CASE( 90 ,360, x14, 0, rdov x14;);
TEST_IMM_OP( 91 , uclip8, 0x00010000, 0xff0b9cfb, 1 , 364); 
TEST_CASE( 92 ,368, x14, 1, rdov x14;);
TEST_CASE( 93 ,372, x14, 1, clrov;);
TEST_CASE( 94 ,376, x14, 0, rdov x14;);
TEST_IMM_OP( 95 , uclip8, 0x00000000, 0x800080ff, 4 , 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_IMM_OP( 99 , uclip8, 0x00000000, 0xff00ffff, 3 , 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_IMM_OP( 103 , uclip8, 0x00000000, 0x00ff8000, 3 , 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_IMM_OP( 107 , uclip8, 0x00000000, 0x0000ff00, 4 , 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_IMM_OP( 111 , uclip8, 0x00000000, 0x8080ff00, 4 , 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_IMM_OP( 115 , uclip8, 0x00000000, 0xe784d980, 3 , 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_IMM_OP( 119 , uclip8, 0x00000f0f, 0xff001b1e, 4 , 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_IMM_OP( 123 , uclip8, 0x00000000, 0x0080ff39, 0 , 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_IMM_OP( 127 , uclip8, 0x00001800, 0xfffe1800, 6 , 508); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_IMM_OP( 131 , uclip8, 0x00000000, 0xa4ff00ff, 3 , 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_IMM_OP( 135 , uclip8, 0x000f0000, 0x8032ffac, 4 , 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_IMM_OP( 139 , uclip8, 0x00000000, 0x80ff00ff, 0 , 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_IMM_OP( 143 , uclip8, 0x00000000, 0x98ff8000, 4 , 572); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_IMM_OP( 147 , uclip8, 0x00000003, 0xffff801a, 2 , 588); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_IMM_OP( 151 , uclip8, 0x00000000, 0xd08080ff, 1 , 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_IMM_OP( 155 , uclip8, 0x00000000, 0x8080ff00, 6 , 620); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_IMM_OP( 159 , uclip8, 0x00000000, 0x80008080, 0 , 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_IMM_OP( 163 , uclip8, 0x00000000, 0x8000ff00, 3 , 652); 
TEST_CASE( 164 ,656, x14, 1, rdov x14;);
TEST_CASE( 165 ,660, x14, 1, clrov;);
TEST_CASE( 166 ,664, x14, 0, rdov x14;);
TEST_IMM_OP( 167 , uclip8, 0x00000000, 0x80808080, 1 , 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_IMM_OP( 171 , uclip8, 0x07000000, 0x7b808080, 3 , 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_IMM_OP( 175 , uclip8, 0x00000000, 0x008effff, 2 , 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_IMM_OP( 179 , uclip8, 0x07030000, 0x1f0300ff, 3 , 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_IMM_OP( 183 , uclip8, 0x00000000, 0xff00ff80, 6 , 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_IMM_OP( 187 , uclip8, 0x00000000, 0xff80009d, 4 , 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_IMM_OP( 191 , uclip8, 0x00000000, 0x00ff0000, 1 , 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_IMM_OP( 195 , uclip8, 0x00000000, 0xffb300ff, 0 , 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_IMM_OP( 199 , uclip8, 0x00000000, 0x80800080, 4 , 796); 

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
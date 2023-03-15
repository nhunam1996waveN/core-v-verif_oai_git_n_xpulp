# See LICENSE for license details.
#*****************************************************************************
# uclip16.S
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

TEST_IMM_OP( 2 , uclip16, 0x00000000, 0x8000caac, 4 , 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_IMM_OP( 6 , uclip16, 0x00000000, 0xffff0000, 4 , 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_IMM_OP( 10 , uclip16, 0x001f0000, 0x1aa38000, 5 , 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_IMM_OP( 14 , uclip16, 0x0000007f, 0x80005194, 7 , 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_IMM_OP( 18 , uclip16, 0x00000000, 0x0000ffff, 0 , 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_IMM_OP( 22 , uclip16, 0x00000000, 0x00000000, 12 , 88); 
TEST_IMM_OP( 23 , uclip16, 0x0000007f, 0x80006e54, 7 , 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_IMM_OP( 27 , uclip16, 0x0000000f, 0x000028d0, 4 , 108); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_IMM_OP( 31 , uclip16, 0x00ff0000, 0x27eb8000, 8 , 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_IMM_OP( 35 , uclip16, 0x00000000, 0x0000ffff, 9 , 140); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_IMM_OP( 39 , uclip16, 0x00000000, 0xbb65ac6b, 4 , 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_IMM_OP( 43 , uclip16, 0x00000000, 0xffffca3d, 6 , 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_IMM_OP( 47 , uclip16, 0x00000000, 0x92640000, 14 , 188); 
TEST_CASE( 48 ,192, x14, 1, rdov x14;);
TEST_CASE( 49 ,196, x14, 1, clrov;);
TEST_CASE( 50 ,200, x14, 0, rdov x14;);
TEST_IMM_OP( 51 , uclip16, 0x00000000, 0x80000000, 2 , 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_IMM_OP( 55 , uclip16, 0x00000000, 0xbd600000, 0 , 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_IMM_OP( 59 , uclip16, 0x00000000, 0xebc48000, 4 , 236); 
TEST_CASE( 60 ,240, x14, 1, rdov x14;);
TEST_CASE( 61 ,244, x14, 1, clrov;);
TEST_CASE( 62 ,248, x14, 0, rdov x14;);
TEST_IMM_OP( 63 , uclip16, 0x00001f93, 0x00001f93, 13 , 252); 
TEST_IMM_OP( 64 , uclip16, 0x00000000, 0xa1cd0000, 4 , 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_IMM_OP( 68 , uclip16, 0x00000000, 0x8a130000, 4 , 272); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_IMM_OP( 72 , uclip16, 0x003f0000, 0x40b48000, 6 , 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_IMM_OP( 76 , uclip16, 0x000007ff, 0x00002ee1, 11 , 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_IMM_OP( 80 , uclip16, 0x00000000, 0x80008000, 0 , 320); 
TEST_CASE( 81 ,324, x14, 1, rdov x14;);
TEST_CASE( 82 ,328, x14, 1, clrov;);
TEST_CASE( 83 ,332, x14, 0, rdov x14;);
TEST_IMM_OP( 84 , uclip16, 0x00000000, 0x8000ffff, 12 , 336); 
TEST_CASE( 85 ,340, x14, 1, rdov x14;);
TEST_CASE( 86 ,344, x14, 1, clrov;);
TEST_CASE( 87 ,348, x14, 0, rdov x14;);
TEST_IMM_OP( 88 , uclip16, 0x00000000, 0xffff0000, 14 , 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_IMM_OP( 92 , uclip16, 0x1fff0000, 0x25d48000, 13 , 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_IMM_OP( 96 , uclip16, 0x000001ff, 0x00007d7e, 9 , 384); 
TEST_CASE( 97 ,388, x14, 1, rdov x14;);
TEST_CASE( 98 ,392, x14, 1, clrov;);
TEST_CASE( 99 ,396, x14, 0, rdov x14;);
TEST_IMM_OP( 100 , uclip16, 0x01ff0000, 0x3a360000, 9 , 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_IMM_OP( 104 , uclip16, 0x00000000, 0xb9230000, 5 , 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_IMM_OP( 108 , uclip16, 0x00000000, 0x00000000, 14 , 432); 
TEST_IMM_OP( 109 , uclip16, 0x00000000, 0x00008000, 2 , 436); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_IMM_OP( 113 , uclip16, 0x00000000, 0xfffffd51, 11 , 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_IMM_OP( 117 , uclip16, 0x00000000, 0x80008000, 2 , 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_IMM_OP( 121 , uclip16, 0x07ff0000, 0x66ebffff, 11 , 484); 
TEST_CASE( 122 ,488, x14, 1, rdov x14;);
TEST_CASE( 123 ,492, x14, 1, clrov;);
TEST_CASE( 124 ,496, x14, 0, rdov x14;);
TEST_IMM_OP( 125 , uclip16, 0x00000000, 0x00000000, 13 , 500); 
TEST_IMM_OP( 126 , uclip16, 0x00000000, 0xefef8000, 3 , 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_IMM_OP( 130 , uclip16, 0x00000000, 0xa3090000, 11 , 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_IMM_OP( 134 , uclip16, 0x00000000, 0x8000ffff, 7 , 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_IMM_OP( 138 , uclip16, 0x00000000, 0x00000000, 8 , 552); 
TEST_IMM_OP( 139 , uclip16, 0x00000000, 0x80008000, 9 , 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_IMM_OP( 143 , uclip16, 0x00000000, 0x0000b95d, 9 , 572); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_IMM_OP( 147 , uclip16, 0x00000000, 0x874e0000, 5 , 588); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_IMM_OP( 151 , uclip16, 0x00000000, 0x80000000, 4 , 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_IMM_OP( 155 , uclip16, 0x00000000, 0xffffc71c, 0 , 620); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_IMM_OP( 159 , uclip16, 0x00000000, 0x80000000, 11 , 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_IMM_OP( 163 , uclip16, 0x00000000, 0x0000ffff, 8 , 652); 
TEST_CASE( 164 ,656, x14, 1, rdov x14;);
TEST_CASE( 165 ,660, x14, 1, clrov;);
TEST_CASE( 166 ,664, x14, 0, rdov x14;);
TEST_IMM_OP( 167 , uclip16, 0x00000000, 0x80008ce4, 12 , 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_IMM_OP( 171 , uclip16, 0x00000000, 0x0000ffff, 11 , 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_IMM_OP( 175 , uclip16, 0x00000000, 0x99718000, 1 , 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_IMM_OP( 179 , uclip16, 0x00000000, 0xffffb1c1, 7 , 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_IMM_OP( 183 , uclip16, 0x00000000, 0xffffffff, 3 , 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_IMM_OP( 187 , uclip16, 0x00000000, 0xffff0000, 14 , 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_IMM_OP( 191 , uclip16, 0x0000003f, 0x0000503b, 6 , 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_IMM_OP( 195 , uclip16, 0x00000000, 0xffffffff, 1 , 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_IMM_OP( 199 , uclip16, 0x00000000, 0x00008000, 9 , 796); 

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
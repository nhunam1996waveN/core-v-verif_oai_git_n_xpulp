# See LICENSE for license details.
#*****************************************************************************
# sclip8.S
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

TEST_IMM_OP( 2 , sclip8, 0xffff07f8, 0xffff53ce, 3 , 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_IMM_OP( 6 , sclip8, 0x00e3001f, 0x00e30047, 5 , 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_IMM_OP( 10 , sclip8, 0xffffff00, 0x8080a842, 0 , 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_IMM_OP( 14 , sclip8, 0xc0c03fc0, 0x80804c80, 6 , 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_IMM_OP( 18 , sclip8, 0xffe01fff, 0xff802dff, 5 , 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_IMM_OP( 22 , sclip8, 0x00ff0000, 0x1bff000f, 0 , 88); 
TEST_CASE( 23 ,92, x14, 1, rdov x14;);
TEST_CASE( 24 ,96, x14, 1, clrov;);
TEST_CASE( 25 ,100, x14, 0, rdov x14;);
TEST_IMM_OP( 26 , sclip8, 0xf0ff0fff, 0xc6ff43ff, 4 , 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_IMM_OP( 30 , sclip8, 0xff00f0f0, 0xff008080, 4 , 120); 
TEST_CASE( 31 ,124, x14, 1, rdov x14;);
TEST_CASE( 32 ,128, x14, 1, clrov;);
TEST_CASE( 33 ,132, x14, 0, rdov x14;);
TEST_IMM_OP( 34 , sclip8, 0x0000fcfc, 0x0000a980, 2 , 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_IMM_OP( 38 , sclip8, 0x00c0ffc0, 0x0080ff80, 6 , 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_IMM_OP( 42 , sclip8, 0xf800f8ff, 0x8000c6ff, 3 , 168); 
TEST_CASE( 43 ,172, x14, 1, rdov x14;);
TEST_CASE( 44 ,176, x14, 1, clrov;);
TEST_CASE( 45 ,180, x14, 0, rdov x14;);
TEST_IMM_OP( 46 , sclip8, 0x00fe0000, 0x00800000, 1 , 184); 
TEST_CASE( 47 ,188, x14, 1, rdov x14;);
TEST_CASE( 48 ,192, x14, 1, clrov;);
TEST_CASE( 49 ,196, x14, 0, rdov x14;);
TEST_IMM_OP( 50 , sclip8, 0x0ff0f00f, 0x2ed48041, 4 , 200); 
TEST_CASE( 51 ,204, x14, 1, rdov x14;);
TEST_CASE( 52 ,208, x14, 1, clrov;);
TEST_CASE( 53 ,212, x14, 0, rdov x14;);
TEST_IMM_OP( 54 , sclip8, 0xf8f800f8, 0xdd8000a3, 3 , 216); 
TEST_CASE( 55 ,220, x14, 1, rdov x14;);
TEST_CASE( 56 ,224, x14, 1, clrov;);
TEST_CASE( 57 ,228, x14, 0, rdov x14;);
TEST_IMM_OP( 58 , sclip8, 0xfcfc0000, 0xd8800000, 2 , 232); 
TEST_CASE( 59 ,236, x14, 1, rdov x14;);
TEST_CASE( 60 ,240, x14, 1, clrov;);
TEST_CASE( 61 ,244, x14, 0, rdov x14;);
TEST_IMM_OP( 62 , sclip8, 0xfefefefe, 0x8c80be92, 1 , 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_IMM_OP( 66 , sclip8, 0x00fffc00, 0x00ff9300, 2 , 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_IMM_OP( 70 , sclip8, 0xfffefefe, 0xff94c080, 1 , 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_IMM_OP( 74 , sclip8, 0x00ffc0c0, 0x00ff8080, 6 , 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_IMM_OP( 78 , sclip8, 0xffffe01f, 0xffff8076, 5 , 312); 
TEST_CASE( 79 ,316, x14, 1, rdov x14;);
TEST_CASE( 80 ,320, x14, 1, clrov;);
TEST_CASE( 81 ,324, x14, 0, rdov x14;);
TEST_IMM_OP( 82 , sclip8, 0xfffffff0, 0xffffffa8, 4 , 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_IMM_OP( 86 , sclip8, 0x00030003, 0x001f0020, 2 , 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_IMM_OP( 90 , sclip8, 0xff00f0ff, 0xff00e4ff, 4 , 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_IMM_OP( 94 , sclip8, 0xfe010001, 0x804a0046, 1 , 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_IMM_OP( 98 , sclip8, 0x00c0ff00, 0x0091ff00, 6 , 392); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_IMM_OP( 102 , sclip8, 0x00ffff00, 0x00ffff00, 4 , 408); 
TEST_IMM_OP( 103 , sclip8, 0xff0fffff, 0xff6bffff, 4 , 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_IMM_OP( 107 , sclip8, 0xff0000ff, 0xff6100ff, 0 , 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_IMM_OP( 111 , sclip8, 0xfff8f807, 0xff80800a, 3 , 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_IMM_OP( 115 , sclip8, 0xfcfcfcfc, 0xa4a28080, 2 , 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_IMM_OP( 119 , sclip8, 0xffff0000, 0x80ff0000, 0 , 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_IMM_OP( 123 , sclip8, 0xfffc00ff, 0xff8000ff, 2 , 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_IMM_OP( 127 , sclip8, 0x0f00f0ff, 0x720080ff, 4 , 508); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_IMM_OP( 131 , sclip8, 0x00ff0000, 0x00ff6700, 0 , 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_IMM_OP( 135 , sclip8, 0x00f000f0, 0x008000c1, 4 , 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_IMM_OP( 139 , sclip8, 0xe0e000e0, 0x80800080, 5 , 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_IMM_OP( 143 , sclip8, 0x002e00c0, 0x002e0080, 6 , 572); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_IMM_OP( 147 , sclip8, 0xf0f000ff, 0x808000ff, 4 , 588); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_IMM_OP( 151 , sclip8, 0xffc03f0d, 0xff806c0d, 6 , 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_IMM_OP( 155 , sclip8, 0xe0e00000, 0xa0910000, 5 , 620); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_IMM_OP( 159 , sclip8, 0xe0e0ffe0, 0x8080ff80, 5 , 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_IMM_OP( 163 , sclip8, 0xffffffff, 0x80808080, 0 , 652); 
TEST_CASE( 164 ,656, x14, 1, rdov x14;);
TEST_CASE( 165 ,660, x14, 1, clrov;);
TEST_CASE( 166 ,664, x14, 0, rdov x14;);
TEST_IMM_OP( 167 , sclip8, 0x3fff00c0, 0x5cff0090, 6 , 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_IMM_OP( 171 , sclip8, 0xff00fffe, 0xff00fff8, 1 , 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_IMM_OP( 175 , sclip8, 0xfc0003fc, 0x80000980, 2 , 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_IMM_OP( 179 , sclip8, 0x00ff3fff, 0x00ff58ff, 6 , 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_IMM_OP( 183 , sclip8, 0x03030000, 0x06790000, 2 , 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_IMM_OP( 187 , sclip8, 0xff0607ff, 0xff067cff, 3 , 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_IMM_OP( 191 , sclip8, 0x0ff0f0ff, 0x118280ff, 4 , 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_IMM_OP( 195 , sclip8, 0x00ffffff, 0x00ff80ff, 0 , 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_IMM_OP( 199 , sclip8, 0xff00ffc0, 0xff00ff8f, 6 , 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# kslli8.S
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

TEST_IMM_OP( 2 , kslli8, 0x8080f0f0, 0x80d3ffff, 4 , 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_IMM_OP( 6 , kslli8, 0xe0e07f80, 0xffff6180, 5 , 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_IMM_OP( 10 , kslli8, 0xfefe00fe, 0xffff00ff, 1 , 40); 
TEST_IMM_OP( 11 , kslli8, 0x2300ff00, 0x2300ff00, 0 , 44); 
TEST_IMM_OP( 12 , kslli8, 0x80008080, 0xf7008098, 4 , 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_IMM_OP( 16 , kslli8, 0xe08000e0, 0xff8000ff, 5 , 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_IMM_OP( 20 , kslli8, 0x807f7f80, 0x80222e80, 5 , 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_IMM_OP( 24 , kslli8, 0x007f807f, 0x001b8047, 4 , 96); 
TEST_CASE( 25 ,100, x14, 1, rdov x14;);
TEST_CASE( 26 ,104, x14, 1, clrov;);
TEST_CASE( 27 ,108, x14, 0, rdov x14;);
TEST_IMM_OP( 28 , kslli8, 0xfcfc7f80, 0xffff7080, 2 , 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_IMM_OP( 32 , kslli8, 0xfc80807f, 0xff808055, 2 , 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_IMM_OP( 36 , kslli8, 0x00fc0000, 0x00ff0000, 2 , 144); 
TEST_IMM_OP( 37 , kslli8, 0x8080fe80, 0x8080ff80, 1 , 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_IMM_OP( 41 , kslli8, 0x80000080, 0x80000087, 6 , 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_IMM_OP( 45 , kslli8, 0x80800000, 0x80800000, 3 , 180); 
TEST_CASE( 46 ,184, x14, 1, rdov x14;);
TEST_CASE( 47 ,188, x14, 1, clrov;);
TEST_CASE( 48 ,192, x14, 0, rdov x14;);
TEST_IMM_OP( 49 , kslli8, 0x7f807f00, 0x118f6f00, 5 , 196); 
TEST_CASE( 50 ,200, x14, 1, rdov x14;);
TEST_CASE( 51 ,204, x14, 1, clrov;);
TEST_CASE( 52 ,208, x14, 0, rdov x14;);
TEST_IMM_OP( 53 , kslli8, 0xf8008080, 0xff008080, 3 , 212); 
TEST_CASE( 54 ,216, x14, 1, rdov x14;);
TEST_CASE( 55 ,220, x14, 1, clrov;);
TEST_CASE( 56 ,224, x14, 0, rdov x14;);
TEST_IMM_OP( 57 , kslli8, 0xc0fe8080, 0xe0ff8380, 1 , 228); 
TEST_CASE( 58 ,232, x14, 1, rdov x14;);
TEST_CASE( 59 ,236, x14, 1, clrov;);
TEST_CASE( 60 ,240, x14, 0, rdov x14;);
TEST_IMM_OP( 61 , kslli8, 0x00e000e0, 0x00ff00ff, 5 , 244); 
TEST_IMM_OP( 62 , kslli8, 0xfcfc807f, 0xffff9f7d, 2 , 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_IMM_OP( 66 , kslli8, 0xfc7f00fc, 0xff5600ff, 2 , 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_IMM_OP( 70 , kslli8, 0x8000fc80, 0x8000ff80, 2 , 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_IMM_OP( 74 , kslli8, 0x008080fe, 0x008080ff, 1 , 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_IMM_OP( 78 , kslli8, 0x007cd880, 0x001ff680, 2 , 312); 
TEST_CASE( 79 ,316, x14, 1, rdov x14;);
TEST_CASE( 80 ,320, x14, 1, clrov;);
TEST_CASE( 81 ,324, x14, 0, rdov x14;);
TEST_IMM_OP( 82 , kslli8, 0x80008000, 0x80008000, 2 , 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_IMM_OP( 86 , kslli8, 0x8000fe80, 0xb100ff91, 1 , 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_IMM_OP( 90 , kslli8, 0x00807f80, 0x008079c3, 5 , 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_IMM_OP( 94 , kslli8, 0xffffffff, 0xffffffff, 0 , 376); 
TEST_IMM_OP( 95 , kslli8, 0x80fc7f80, 0x80ff6e80, 2 , 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_IMM_OP( 99 , kslli8, 0x8080a8f8, 0x8080f5ff, 3 , 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_IMM_OP( 103 , kslli8, 0x80ffc880, 0x80ffc880, 0 , 412); 
TEST_IMM_OP( 104 , kslli8, 0x7fdc7f80, 0x78f76f80, 2 , 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_IMM_OP( 108 , kslli8, 0x8080007f, 0xe480000b, 5 , 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_IMM_OP( 112 , kslli8, 0xffff1180, 0xffff1180, 0 , 448); 
TEST_IMM_OP( 113 , kslli8, 0x80808000, 0x86808000, 4 , 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_IMM_OP( 117 , kslli8, 0xf89880c0, 0xfff380f8, 3 , 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_IMM_OP( 121 , kslli8, 0x80ff0020, 0x80ff0020, 0 , 484); 
TEST_IMM_OP( 122 , kslli8, 0x00807f80, 0x008077b7, 4 , 488); 
TEST_CASE( 123 ,492, x14, 1, rdov x14;);
TEST_CASE( 124 ,496, x14, 1, clrov;);
TEST_CASE( 125 ,500, x14, 0, rdov x14;);
TEST_IMM_OP( 126 , kslli8, 0x00fc8080, 0x00ff8080, 2 , 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_IMM_OP( 130 , kslli8, 0x007f8080, 0x00218080, 6 , 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_IMM_OP( 134 , kslli8, 0xf0f080f0, 0xffffb3ff, 4 , 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_IMM_OP( 138 , kslli8, 0x80e0007f, 0xeeff0078, 5 , 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_IMM_OP( 142 , kslli8, 0xf0f08080, 0xffff80bd, 4 , 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_IMM_OP( 146 , kslli8, 0x007f8080, 0x00278e80, 2 , 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_IMM_OP( 150 , kslli8, 0xc07fc080, 0xff25ff94, 6 , 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_IMM_OP( 154 , kslli8, 0xc0800000, 0xffa20000, 6 , 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_IMM_OP( 158 , kslli8, 0x18fe8000, 0x0cff8000, 1 , 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_IMM_OP( 162 , kslli8, 0x007f807f, 0x0058804e, 2 , 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_IMM_OP( 166 , kslli8, 0xc0c0c080, 0xffffff80, 6 , 664); 
TEST_CASE( 167 ,668, x14, 1, rdov x14;);
TEST_CASE( 168 ,672, x14, 1, clrov;);
TEST_CASE( 169 ,676, x14, 0, rdov x14;);
TEST_IMM_OP( 170 , kslli8, 0xff37ff90, 0xff37ff90, 0 , 680); 
TEST_IMM_OP( 171 , kslli8, 0x80807f00, 0x80907f00, 4 , 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_IMM_OP( 175 , kslli8, 0x00000080, 0x00000080, 2 , 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_IMM_OP( 179 , kslli8, 0xfefe8000, 0xffff8000, 1 , 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_IMM_OP( 183 , kslli8, 0x80808000, 0x80c08000, 3 , 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_IMM_OP( 187 , kslli8, 0x00807f7f, 0x00807455, 1 , 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_IMM_OP( 191 , kslli8, 0x17000080, 0x17000080, 0 , 764); 
TEST_IMM_OP( 192 , kslli8, 0xff800080, 0xff800080, 0 , 768); 
TEST_IMM_OP( 193 , kslli8, 0x00fe8080, 0x00ff8080, 1 , 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_IMM_OP( 197 , kslli8, 0x0000fe80, 0x0000ff80, 1 , 788); 
TEST_CASE( 198 ,792, x14, 1, rdov x14;);
TEST_CASE( 199 ,796, x14, 1, clrov;);

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
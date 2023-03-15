# See LICENSE for license details.
#*****************************************************************************
# sclip16.S
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

TEST_IMM_OP( 2 , sclip16, 0xff0000ff, 0xd35a1cc7, 8 , 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_IMM_OP( 6 , sclip16, 0xffff0000, 0xffff0000, 2 , 24); 
TEST_IMM_OP( 7 , sclip16, 0xffff0000, 0xffff0000, 5 , 28); 
TEST_IMM_OP( 8 , sclip16, 0xffffffff, 0xbd588000, 0 , 32); 
TEST_CASE( 9 ,36, x14, 1, rdov x14;);
TEST_CASE( 10 ,40, x14, 1, clrov;);
TEST_CASE( 11 ,44, x14, 0, rdov x14;);
TEST_IMM_OP( 12 , sclip16, 0xff80ffff, 0x8000ffff, 7 , 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_IMM_OP( 16 , sclip16, 0x2624ffff, 0x2624ffff, 14 , 64); 
TEST_IMM_OP( 17 , sclip16, 0xffffffff, 0xffffffff, 9 , 68); 
TEST_IMM_OP( 18 , sclip16, 0x0000ffff, 0x0000ffff, 8 , 72); 
TEST_IMM_OP( 19 , sclip16, 0xffe00000, 0xe3f00000, 5 , 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_IMM_OP( 23 , sclip16, 0xffff11b7, 0xffff11b7, 14 , 92); 
TEST_IMM_OP( 24 , sclip16, 0x3fffc868, 0x6a8ac868, 14 , 96); 
TEST_CASE( 25 ,100, x14, 1, rdov x14;);
TEST_CASE( 26 ,104, x14, 1, clrov;);
TEST_CASE( 27 ,108, x14, 0, rdov x14;);
TEST_IMM_OP( 28 , sclip16, 0x01fffe00, 0x3c178000, 9 , 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_IMM_OP( 32 , sclip16, 0xe000e000, 0xd0f28000, 13 , 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_IMM_OP( 36 , sclip16, 0xf0000000, 0x80000000, 12 , 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_IMM_OP( 40 , sclip16, 0x00000000, 0x00000000, 2 , 160); 
TEST_IMM_OP( 41 , sclip16, 0xfffffff0, 0xffff8000, 4 , 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_IMM_OP( 45 , sclip16, 0x0000ffff, 0x0000ffff, 0 , 180); 
TEST_IMM_OP( 46 , sclip16, 0xffff0000, 0x80003b78, 0 , 184); 
TEST_CASE( 47 ,188, x14, 1, rdov x14;);
TEST_CASE( 48 ,192, x14, 1, clrov;);
TEST_CASE( 49 ,196, x14, 0, rdov x14;);
TEST_IMM_OP( 50 , sclip16, 0xffff0000, 0xffff0000, 12 , 200); 
TEST_IMM_OP( 51 , sclip16, 0xf000f000, 0xd9988000, 12 , 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_IMM_OP( 55 , sclip16, 0xffff0000, 0xffff0000, 13 , 220); 
TEST_IMM_OP( 56 , sclip16, 0xfffcfffc, 0x8000af07, 2 , 224); 
TEST_CASE( 57 ,228, x14, 1, rdov x14;);
TEST_CASE( 58 ,232, x14, 1, clrov;);
TEST_CASE( 59 ,236, x14, 0, rdov x14;);
TEST_IMM_OP( 60 , sclip16, 0xfc00fc00, 0x80008000, 10 , 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_IMM_OP( 64 , sclip16, 0xffe0ffff, 0x8000ffff, 5 , 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_IMM_OP( 68 , sclip16, 0x0000e000, 0x00008000, 13 , 272); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_IMM_OP( 72 , sclip16, 0xffffffff, 0xffffffff, 8 , 288); 
TEST_IMM_OP( 73 , sclip16, 0xffff0000, 0xffff0000, 11 , 292); 
TEST_IMM_OP( 74 , sclip16, 0x0000ff00, 0x00008000, 8 , 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_IMM_OP( 78 , sclip16, 0xff800000, 0xbd3a0000, 7 , 312); 
TEST_CASE( 79 ,316, x14, 1, rdov x14;);
TEST_CASE( 80 ,320, x14, 1, clrov;);
TEST_CASE( 81 ,324, x14, 0, rdov x14;);
TEST_IMM_OP( 82 , sclip16, 0xffffffff, 0xffffffff, 10 , 328); 
TEST_IMM_OP( 83 , sclip16, 0x0000f800, 0x00008000, 11 , 332); 
TEST_CASE( 84 ,336, x14, 1, rdov x14;);
TEST_CASE( 85 ,340, x14, 1, clrov;);
TEST_CASE( 86 ,344, x14, 0, rdov x14;);
TEST_IMM_OP( 87 , sclip16, 0xff80ff80, 0x90c58000, 7 , 348); 
TEST_CASE( 88 ,352, x14, 1, rdov x14;);
TEST_CASE( 89 ,356, x14, 1, clrov;);
TEST_CASE( 90 ,360, x14, 0, rdov x14;);
TEST_IMM_OP( 91 , sclip16, 0xf80007ff, 0x842526ca, 11 , 364); 
TEST_CASE( 92 ,368, x14, 1, rdov x14;);
TEST_CASE( 93 ,372, x14, 1, clrov;);
TEST_CASE( 94 ,376, x14, 0, rdov x14;);
TEST_IMM_OP( 95 , sclip16, 0xffff07ff, 0xffff4383, 11 , 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_IMM_OP( 99 , sclip16, 0xffffffff, 0xffffffff, 11 , 396); 
TEST_IMM_OP( 100 , sclip16, 0xc000ffff, 0x8000ffff, 14 , 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_IMM_OP( 104 , sclip16, 0xffffff00, 0xffff81f4, 8 , 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_IMM_OP( 108 , sclip16, 0xfc000000, 0xca130000, 10 , 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_IMM_OP( 112 , sclip16, 0x00010001, 0x4e5c433f, 1 , 448); 
TEST_CASE( 113 ,452, x14, 1, rdov x14;);
TEST_CASE( 114 ,456, x14, 1, clrov;);
TEST_CASE( 115 ,460, x14, 0, rdov x14;);
TEST_IMM_OP( 116 , sclip16, 0x0000fffc, 0x0000e1d4, 2 , 464); 
TEST_CASE( 117 ,468, x14, 1, rdov x14;);
TEST_CASE( 118 ,472, x14, 1, clrov;);
TEST_CASE( 119 ,476, x14, 0, rdov x14;);
TEST_IMM_OP( 120 , sclip16, 0xffff0000, 0xffff0000, 3 , 480); 
TEST_IMM_OP( 121 , sclip16, 0x00000000, 0x00000000, 2 , 484); 
TEST_IMM_OP( 122 , sclip16, 0xffffffff, 0xffffffff, 2 , 488); 
TEST_IMM_OP( 123 , sclip16, 0x03ffffff, 0x750bffff, 10 , 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_IMM_OP( 127 , sclip16, 0xffffffff, 0xffffffff, 10 , 508); 
TEST_IMM_OP( 128 , sclip16, 0xe0000e44, 0x96990e44, 13 , 512); 
TEST_CASE( 129 ,516, x14, 1, rdov x14;);
TEST_CASE( 130 ,520, x14, 1, clrov;);
TEST_CASE( 131 ,524, x14, 0, rdov x14;);
TEST_IMM_OP( 132 , sclip16, 0xffe0ffff, 0x8ec1ffff, 5 , 528); 
TEST_CASE( 133 ,532, x14, 1, rdov x14;);
TEST_CASE( 134 ,536, x14, 1, clrov;);
TEST_CASE( 135 ,540, x14, 0, rdov x14;);
TEST_IMM_OP( 136 , sclip16, 0xfffcffff, 0x8000ffff, 2 , 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_IMM_OP( 140 , sclip16, 0xfffffe00, 0xffff8000, 9 , 560); 
TEST_CASE( 141 ,564, x14, 1, rdov x14;);
TEST_CASE( 142 ,568, x14, 1, clrov;);
TEST_CASE( 143 ,572, x14, 0, rdov x14;);
TEST_IMM_OP( 144 , sclip16, 0xe000e000, 0x8000ccfa, 13 , 576); 
TEST_CASE( 145 ,580, x14, 1, rdov x14;);
TEST_CASE( 146 ,584, x14, 1, clrov;);
TEST_CASE( 147 ,588, x14, 0, rdov x14;);
TEST_IMM_OP( 148 , sclip16, 0xff00ff00, 0x80008000, 8 , 592); 
TEST_CASE( 149 ,596, x14, 1, rdov x14;);
TEST_CASE( 150 ,600, x14, 1, clrov;);
TEST_CASE( 151 ,604, x14, 0, rdov x14;);
TEST_IMM_OP( 152 , sclip16, 0xfff00000, 0x80000000, 4 , 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_IMM_OP( 156 , sclip16, 0xffffffff, 0xffffffff, 13 , 624); 
TEST_IMM_OP( 157 , sclip16, 0x07fff800, 0x143289a4, 11 , 628); 
TEST_CASE( 158 ,632, x14, 1, rdov x14;);
TEST_CASE( 159 ,636, x14, 1, clrov;);
TEST_CASE( 160 ,640, x14, 0, rdov x14;);
TEST_IMM_OP( 161 , sclip16, 0x00000000, 0x00000000, 7 , 644); 
TEST_IMM_OP( 162 , sclip16, 0xffffffff, 0x8000ffff, 0 , 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_IMM_OP( 166 , sclip16, 0x0000ffff, 0x0000ffff, 9 , 664); 
TEST_IMM_OP( 167 , sclip16, 0x00000000, 0x00000000, 2 , 668); 
TEST_IMM_OP( 168 , sclip16, 0xf8000000, 0x80000000, 11 , 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_IMM_OP( 172 , sclip16, 0xe0000000, 0x80000000, 13 , 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_IMM_OP( 176 , sclip16, 0x01ffffff, 0x6536ffff, 9 , 704); 
TEST_CASE( 177 ,708, x14, 1, rdov x14;);
TEST_CASE( 178 ,712, x14, 1, clrov;);
TEST_CASE( 179 ,716, x14, 0, rdov x14;);
TEST_IMM_OP( 180 , sclip16, 0xfffffffc, 0xffff8000, 2 , 720); 
TEST_CASE( 181 ,724, x14, 1, rdov x14;);
TEST_CASE( 182 ,728, x14, 1, clrov;);
TEST_CASE( 183 ,732, x14, 0, rdov x14;);
TEST_IMM_OP( 184 , sclip16, 0x0000ffff, 0x0000ffff, 11 , 736); 
TEST_IMM_OP( 185 , sclip16, 0xfff80000, 0x98d50000, 3 , 740); 
TEST_CASE( 186 ,744, x14, 1, rdov x14;);
TEST_CASE( 187 ,748, x14, 1, clrov;);
TEST_CASE( 188 ,752, x14, 0, rdov x14;);
TEST_IMM_OP( 189 , sclip16, 0x03ffffff, 0x791cffff, 10 , 756); 
TEST_CASE( 190 ,760, x14, 1, rdov x14;);
TEST_CASE( 191 ,764, x14, 1, clrov;);
TEST_CASE( 192 ,768, x14, 0, rdov x14;);
TEST_IMM_OP( 193 , sclip16, 0xfffffff0, 0xffff8b77, 4 , 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_IMM_OP( 197 , sclip16, 0xfff00000, 0x80000000, 4 , 788); 
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
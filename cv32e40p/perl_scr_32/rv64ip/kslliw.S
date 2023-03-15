# See LICENSE for license details.
#*****************************************************************************
# kslliw.S
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

TEST_IMM_OP( 2 , kslliw, 0x80000000, 0x80000000, 17, 8 ); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_IMM_OP( 6 , kslliw, 0x80000000, 0x80000000, 21, 24 ); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_IMM_OP( 10 , kslliw, 0x00000000, 0x00000000, 24, 40 ); 
TEST_IMM_OP( 11 , kslliw, 0xfffffffe, 0xffffffff, 1, 44 ); 
TEST_IMM_OP( 12 , kslliw, 0x80000000, 0x80000000, 3, 48 ); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_IMM_OP( 16 , kslliw, 0x80000000, 0x80000000, 25, 64 ); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_IMM_OP( 20 , kslliw, 0x00000000, 0x00000000, 21, 80 ); 
TEST_IMM_OP( 21 , kslliw, 0x80000000, 0xd4f6cf38, 30, 84 ); 
TEST_CASE( 22 ,88, x14, 1, rdov x14;);
TEST_CASE( 23 ,92, x14, 1, clrov;);
TEST_CASE( 24 ,96, x14, 0, rdov x14;);
TEST_IMM_OP( 25 , kslliw, 0x00000000, 0x00000000, 13, 100 ); 
TEST_IMM_OP( 26 , kslliw, 0x80000000, 0x80000000, 27, 104 ); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_IMM_OP( 30 , kslliw, 0xfff00000, 0xffffffff, 20, 120 ); 
TEST_IMM_OP( 31 , kslliw, 0x00000000, 0x00000000, 2, 124 ); 
TEST_IMM_OP( 32 , kslliw, 0x80000000, 0xc0d048cc, 6, 128 ); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_IMM_OP( 36 , kslliw, 0xffffff80, 0xffffffff, 7, 144 ); 
TEST_IMM_OP( 37 , kslliw, 0x80000000, 0x80000000, 17, 148 ); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_IMM_OP( 41 , kslliw, 0x80000000, 0x80000000, 11, 164 ); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_IMM_OP( 45 , kslliw, 0x80000000, 0x80000000, 6, 180 ); 
TEST_CASE( 46 ,184, x14, 1, rdov x14;);
TEST_CASE( 47 ,188, x14, 1, clrov;);
TEST_CASE( 48 ,192, x14, 0, rdov x14;);
TEST_IMM_OP( 49 , kslliw, 0x80000000, 0x80000000, 11, 196 ); 
TEST_CASE( 50 ,200, x14, 1, rdov x14;);
TEST_CASE( 51 ,204, x14, 1, clrov;);
TEST_CASE( 52 ,208, x14, 0, rdov x14;);
TEST_IMM_OP( 53 , kslliw, 0xfff80000, 0xffffffff, 19, 212 ); 
TEST_IMM_OP( 54 , kslliw, 0x7fffffff, 0x2408b3de, 15, 216 ); 
TEST_CASE( 55 ,220, x14, 1, rdov x14;);
TEST_CASE( 56 ,224, x14, 1, clrov;);
TEST_CASE( 57 ,228, x14, 0, rdov x14;);
TEST_IMM_OP( 58 , kslliw, 0x80000000, 0x80000000, 25, 232 ); 
TEST_CASE( 59 ,236, x14, 1, rdov x14;);
TEST_CASE( 60 ,240, x14, 1, clrov;);
TEST_CASE( 61 ,244, x14, 0, rdov x14;);
TEST_IMM_OP( 62 , kslliw, 0xfffc0000, 0xffffffff, 18, 248 ); 
TEST_IMM_OP( 63 , kslliw, 0x80000000, 0xdbf54684, 5, 252 ); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_IMM_OP( 67 , kslliw, 0xffff0000, 0xffffffff, 16, 268 ); 
TEST_IMM_OP( 68 , kslliw, 0x00000000, 0x00000000, 19, 272 ); 
TEST_IMM_OP( 69 , kslliw, 0x80000000, 0x8759a1aa, 9, 276 ); 
TEST_CASE( 70 ,280, x14, 1, rdov x14;);
TEST_CASE( 71 ,284, x14, 1, clrov;);
TEST_CASE( 72 ,288, x14, 0, rdov x14;);
TEST_IMM_OP( 73 , kslliw, 0x80000000, 0x80000000, 24, 292 ); 
TEST_CASE( 74 ,296, x14, 1, rdov x14;);
TEST_CASE( 75 ,300, x14, 1, clrov;);
TEST_CASE( 76 ,304, x14, 0, rdov x14;);
TEST_IMM_OP( 77 , kslliw, 0xff000000, 0xffffffff, 24, 308 ); 
TEST_IMM_OP( 78 , kslliw, 0x00000000, 0x00000000, 3, 312 ); 
TEST_IMM_OP( 79 , kslliw, 0x80000000, 0x80000000, 1, 316 ); 
TEST_CASE( 80 ,320, x14, 1, rdov x14;);
TEST_CASE( 81 ,324, x14, 1, clrov;);
TEST_CASE( 82 ,328, x14, 0, rdov x14;);
TEST_IMM_OP( 83 , kslliw, 0x7fffffff, 0x61acac6e, 8, 332 ); 
TEST_CASE( 84 ,336, x14, 1, rdov x14;);
TEST_CASE( 85 ,340, x14, 1, clrov;);
TEST_CASE( 86 ,344, x14, 0, rdov x14;);
TEST_IMM_OP( 87 , kslliw, 0xffe00000, 0xffffffff, 21, 348 ); 
TEST_IMM_OP( 88 , kslliw, 0x80000000, 0x80000000, 20, 352 ); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_IMM_OP( 92 , kslliw, 0x00000000, 0x00000000, 8, 368 ); 
TEST_IMM_OP( 93 , kslliw, 0x80000000, 0x80000000, 1, 372 ); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_IMM_OP( 97 , kslliw, 0xfffffff8, 0xffffffff, 3, 388 ); 
TEST_IMM_OP( 98 , kslliw, 0x80000000, 0x80000000, 6, 392 ); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_IMM_OP( 102 , kslliw, 0x80000000, 0xc1aa7fb0, 3, 408 ); 
TEST_CASE( 103 ,412, x14, 1, rdov x14;);
TEST_CASE( 104 ,416, x14, 1, clrov;);
TEST_CASE( 105 ,420, x14, 0, rdov x14;);
TEST_IMM_OP( 106 , kslliw, 0x00000000, 0x00000000, 20, 424 ); 
TEST_IMM_OP( 107 , kslliw, 0x80000000, 0xd2ca42cd, 18, 428 ); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_IMM_OP( 111 , kslliw, 0xfff00000, 0xffffffff, 20, 444 ); 
TEST_IMM_OP( 112 , kslliw, 0x00000000, 0x00000000, 4, 448 ); 
TEST_IMM_OP( 113 , kslliw, 0x00000000, 0x00000000, 17, 452 ); 
TEST_IMM_OP( 114 , kslliw, 0x00000000, 0x00000000, 19, 456 ); 
TEST_IMM_OP( 115 , kslliw, 0x80000000, 0xc87aec78, 18, 460 ); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_IMM_OP( 119 , kslliw, 0x80000000, 0x80000000, 7, 476 ); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_IMM_OP( 123 , kslliw, 0x00000000, 0x00000000, 8, 492 ); 
TEST_IMM_OP( 124 , kslliw, 0x80000000, 0x80000000, 18, 496 ); 
TEST_CASE( 125 ,500, x14, 1, rdov x14;);
TEST_CASE( 126 ,504, x14, 1, clrov;);
TEST_CASE( 127 ,508, x14, 0, rdov x14;);
TEST_IMM_OP( 128 , kslliw, 0x80000000, 0x80000000, 27, 512 ); 
TEST_CASE( 129 ,516, x14, 1, rdov x14;);
TEST_CASE( 130 ,520, x14, 1, clrov;);
TEST_CASE( 131 ,524, x14, 0, rdov x14;);
TEST_IMM_OP( 132 , kslliw, 0x80000000, 0x80000000, 1, 528 ); 
TEST_CASE( 133 ,532, x14, 1, rdov x14;);
TEST_CASE( 134 ,536, x14, 1, clrov;);
TEST_CASE( 135 ,540, x14, 0, rdov x14;);
TEST_IMM_OP( 136 , kslliw, 0xfff80000, 0xffffffff, 19, 544 ); 
TEST_IMM_OP( 137 , kslliw, 0x00000000, 0x00000000, 20, 548 ); 
TEST_IMM_OP( 138 , kslliw, 0x80000000, 0x80000000, 16, 552 ); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_IMM_OP( 142 , kslliw, 0x00000000, 0x00000000, 29, 568 ); 
TEST_IMM_OP( 143 , kslliw, 0xfffff800, 0xffffffff, 11, 572 ); 
TEST_IMM_OP( 144 , kslliw, 0x00000000, 0x00000000, 8, 576 ); 
TEST_IMM_OP( 145 , kslliw, 0xffc00000, 0xffffffff, 22, 580 ); 
TEST_IMM_OP( 146 , kslliw, 0x80000000, 0xcec7368b, 5, 584 ); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_IMM_OP( 150 , kslliw, 0x80000000, 0x80000000, 15, 600 ); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_IMM_OP( 154 , kslliw, 0x80000000, 0xa6bf0e4a, 7, 616 ); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_IMM_OP( 158 , kslliw, 0xff000000, 0xffffffff, 24, 632 ); 
TEST_IMM_OP( 159 , kslliw, 0x00000000, 0x00000000, 27, 636 ); 
TEST_IMM_OP( 160 , kslliw, 0x80000000, 0x806040cc, 9, 640 ); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_IMM_OP( 164 , kslliw, 0x80000000, 0x80000000, 16, 656 ); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_IMM_OP( 168 , kslliw, 0x00000000, 0x00000000, 29, 672 ); 
TEST_IMM_OP( 169 , kslliw, 0x80000000, 0xb7c212b3, 9, 676 ); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_IMM_OP( 173 , kslliw, 0x80000000, 0x80000000, 25, 692 ); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_IMM_OP( 177 , kslliw, 0x7fffffff, 0x4b8016bc, 16, 708 ); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_IMM_OP( 181 , kslliw, 0x80000000, 0x80000000, 10, 724 ); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_IMM_OP( 185 , kslliw, 0x80000000, 0x80000000, 5, 740 ); 
TEST_CASE( 186 ,744, x14, 1, rdov x14;);
TEST_CASE( 187 ,748, x14, 1, clrov;);
TEST_CASE( 188 ,752, x14, 0, rdov x14;);
TEST_IMM_OP( 189 , kslliw, 0x80000000, 0x80000000, 5, 756 ); 
TEST_CASE( 190 ,760, x14, 1, rdov x14;);
TEST_CASE( 191 ,764, x14, 1, clrov;);
TEST_CASE( 192 ,768, x14, 0, rdov x14;);
TEST_IMM_OP( 193 , kslliw, 0xfffc0000, 0xffffffff, 18, 772 ); 
TEST_IMM_OP( 194 , kslliw, 0x80000000, 0xa6c762ea, 1, 776 ); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_IMM_OP( 198 , kslliw, 0x80000000, 0xe86ca168, 27, 792 ); 
TEST_CASE( 199 ,796, x14, 1, rdov x14;);

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
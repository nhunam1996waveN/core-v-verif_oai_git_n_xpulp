# See LICENSE for license details.
#*****************************************************************************
# kadd16.S
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

TEST_RR_OP( 2 , kadd16, 0xbef6ffff, 0x3ef6ffff, 0x80000000, 8); 
TEST_RR_OP( 3 , kadd16, 0x80008000, 0x80000000, 0x80008000, 12); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_RR_OP( 7 , kadd16, 0x80000000, 0xffff0000, 0x80000000, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_RR_OP( 11 , kadd16, 0x80008000, 0x80008000, 0x8000d684, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_RR_OP( 15 , kadd16, 0xb538f47f, 0xffffffff, 0xb539f480, 60); 
TEST_RR_OP( 16 , kadd16, 0x8000740a, 0x8000740a, 0xffff0000, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , kadd16, 0xffff174d, 0xffffffff, 0x0000174e, 80); 
TEST_RR_OP( 21 , kadd16, 0xfd658000, 0xfd658000, 0x00008000, 84); 
TEST_CASE( 22 ,88, x14, 1, rdov x14;);
TEST_CASE( 23 ,92, x14, 1, clrov;);
TEST_CASE( 24 ,96, x14, 0, rdov x14;);
TEST_RR_OP( 25 , kadd16, 0x1d59a405, 0x1d5a0000, 0xffffa405, 100); 
TEST_RR_OP( 26 , kadd16, 0x80008000, 0xffff9af5, 0x80008000, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , kadd16, 0x4534ffff, 0x4534ffff, 0x00000000, 120); 
TEST_RR_OP( 31 , kadd16, 0xffffd41e, 0x0000d41e, 0xffff0000, 124); 
TEST_RR_OP( 32 , kadd16, 0x8000f7fa, 0x8000f7fb, 0x8000ffff, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , kadd16, 0x00008000, 0x00008000, 0x0000eec1, 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_RR_OP( 40 , kadd16, 0xfffe8000, 0xffff8000, 0xffffe45b, 160); 
TEST_CASE( 41 ,164, x14, 1, rdov x14;);
TEST_CASE( 42 ,168, x14, 1, clrov;);
TEST_CASE( 43 ,172, x14, 0, rdov x14;);
TEST_RR_OP( 44 , kadd16, 0x80008000, 0x80008000, 0xdc670000, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , kadd16, 0x80008000, 0x80008000, 0x00000000, 192); 
TEST_RR_OP( 49 , kadd16, 0x689fffff, 0x2038ffff, 0x48670000, 196); 
TEST_RR_OP( 50 , kadd16, 0x8000ffff, 0x8000ffff, 0x9dae0000, 200); 
TEST_CASE( 51 ,204, x14, 1, rdov x14;);
TEST_CASE( 52 ,208, x14, 1, clrov;);
TEST_CASE( 53 ,212, x14, 0, rdov x14;);
TEST_RR_OP( 54 , kadd16, 0x0000c919, 0x00000000, 0x0000c919, 216); 
TEST_RR_OP( 55 , kadd16, 0x80002c40, 0x8000ffff, 0x863e2c41, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_RR_OP( 59 , kadd16, 0x80002120, 0x80002120, 0x80000000, 236); 
TEST_CASE( 60 ,240, x14, 1, rdov x14;);
TEST_CASE( 61 ,244, x14, 1, clrov;);
TEST_CASE( 62 ,248, x14, 0, rdov x14;);
TEST_RR_OP( 63 , kadd16, 0xffff16d9, 0x00009c54, 0xffff7a85, 252); 
TEST_RR_OP( 64 , kadd16, 0x38508000, 0x38510000, 0xffff8000, 256); 
TEST_RR_OP( 65 , kadd16, 0xfffe8000, 0xffff8000, 0xffffb456, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , kadd16, 0x80000c03, 0x80000000, 0xffff0c03, 276); 
TEST_CASE( 70 ,280, x14, 1, rdov x14;);
TEST_CASE( 71 ,284, x14, 1, clrov;);
TEST_CASE( 72 ,288, x14, 0, rdov x14;);
TEST_RR_OP( 73 , kadd16, 0x8aa00000, 0x8aa10000, 0xffff0000, 292); 
TEST_RR_OP( 74 , kadd16, 0xdff88000, 0xffff0000, 0xdff98000, 296); 
TEST_RR_OP( 75 , kadd16, 0x8000fffe, 0x8000ffff, 0x8000ffff, 300); 
TEST_CASE( 76 ,304, x14, 1, rdov x14;);
TEST_CASE( 77 ,308, x14, 1, clrov;);
TEST_CASE( 78 ,312, x14, 0, rdov x14;);
TEST_RR_OP( 79 , kadd16, 0x01ff1fe3, 0xffffffff, 0x02001fe4, 316); 
TEST_RR_OP( 80 , kadd16, 0x8f278000, 0xffff0000, 0x8f288000, 320); 
TEST_RR_OP( 81 , kadd16, 0x88978000, 0x0000ffff, 0x88978000, 324); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_RR_OP( 85 , kadd16, 0x80000000, 0x80000000, 0x00000000, 340); 
TEST_RR_OP( 86 , kadd16, 0xae0e9842, 0xae0e1842, 0x00008000, 344); 
TEST_RR_OP( 87 , kadd16, 0x80008000, 0x80008000, 0x80008000, 348); 
TEST_CASE( 88 ,352, x14, 1, rdov x14;);
TEST_CASE( 89 ,356, x14, 1, clrov;);
TEST_CASE( 90 ,360, x14, 0, rdov x14;);
TEST_RR_OP( 91 , kadd16, 0x80008000, 0x00008000, 0x80008000, 364); 
TEST_CASE( 92 ,368, x14, 1, rdov x14;);
TEST_CASE( 93 ,372, x14, 1, clrov;);
TEST_CASE( 94 ,376, x14, 0, rdov x14;);
TEST_RR_OP( 95 , kadd16, 0x80008000, 0xffff0000, 0x80008000, 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_RR_OP( 99 , kadd16, 0x8000cb95, 0xffff9e44, 0x80002d51, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , kadd16, 0xbe18fffe, 0x0000ffff, 0xbe18ffff, 412); 
TEST_RR_OP( 104 , kadd16, 0x80008000, 0x80008000, 0xffff0000, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , kadd16, 0x80008000, 0x80008000, 0xffffffff, 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_RR_OP( 112 , kadd16, 0xfffe8000, 0xffffa25b, 0xffff8000, 448); 
TEST_CASE( 113 ,452, x14, 1, rdov x14;);
TEST_CASE( 114 ,456, x14, 1, clrov;);
TEST_CASE( 115 ,460, x14, 0, rdov x14;);
TEST_RR_OP( 116 , kadd16, 0x8000d068, 0x8000d069, 0x9ab2ffff, 464); 
TEST_CASE( 117 ,468, x14, 1, rdov x14;);
TEST_CASE( 118 ,472, x14, 1, clrov;);
TEST_CASE( 119 ,476, x14, 0, rdov x14;);
TEST_RR_OP( 120 , kadd16, 0xbfc88000, 0xbfc98000, 0xffff0000, 480); 
TEST_RR_OP( 121 , kadd16, 0xffff3bb1, 0x00003bb1, 0xffff0000, 484); 
TEST_RR_OP( 122 , kadd16, 0xfffeffff, 0xffffffff, 0xffff0000, 488); 
TEST_RR_OP( 123 , kadd16, 0x80008000, 0x00008000, 0x80000000, 492); 
TEST_RR_OP( 124 , kadd16, 0x8000fffe, 0x8000ffff, 0x0000ffff, 496); 
TEST_RR_OP( 125 , kadd16, 0x0000fffe, 0x0000ffff, 0x0000ffff, 500); 
TEST_RR_OP( 126 , kadd16, 0xfffe8000, 0xffff8000, 0xffffffff, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_RR_OP( 130 , kadd16, 0x80003f9d, 0x8000eec2, 0xffff50db, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , kadd16, 0x14b55c00, 0xffff5c00, 0x14b60000, 536); 
TEST_RR_OP( 135 , kadd16, 0xfffe8000, 0xffffffff, 0xffff8000, 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_RR_OP( 139 , kadd16, 0x8000e287, 0x8000e288, 0xffffffff, 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_RR_OP( 143 , kadd16, 0x8000ffff, 0x8000ffff, 0x88f50000, 572); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_RR_OP( 147 , kadd16, 0x8000fa60, 0xffff7a60, 0x80008000, 588); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_RR_OP( 151 , kadd16, 0x924cd818, 0x924cffff, 0x0000d819, 604); 
TEST_RR_OP( 152 , kadd16, 0x620b8000, 0x620c8000, 0xffffb74d, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , kadd16, 0x8000cfb5, 0x8000ffff, 0xffffcfb6, 624); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_RR_OP( 160 , kadd16, 0x80008000, 0x80000000, 0x80008000, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , kadd16, 0x8000898e, 0x00008000, 0x8000098e, 656); 
TEST_RR_OP( 165 , kadd16, 0x00008000, 0x00000000, 0x00008000, 660); 
TEST_RR_OP( 166 , kadd16, 0x80008000, 0x00000000, 0x80008000, 664); 
TEST_RR_OP( 167 , kadd16, 0xe7848000, 0xe7848000, 0x00000000, 668); 
TEST_RR_OP( 168 , kadd16, 0xfffe3f56, 0xffffffff, 0xffff3f57, 672); 
TEST_RR_OP( 169 , kadd16, 0x47cabda1, 0x47ca0000, 0x0000bda1, 676); 
TEST_RR_OP( 170 , kadd16, 0xec41737f, 0x00001d6c, 0xec415613, 680); 
TEST_RR_OP( 171 , kadd16, 0x8000ffff, 0x80000000, 0xffffffff, 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_RR_OP( 175 , kadd16, 0x55f4fffe, 0x55f4ffff, 0x0000ffff, 700); 
TEST_RR_OP( 176 , kadd16, 0x7b40ffff, 0x7b41ffff, 0xffff0000, 704); 
TEST_RR_OP( 177 , kadd16, 0x8000ffff, 0x8000ffff, 0xc2460000, 708); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_RR_OP( 181 , kadd16, 0x80006e09, 0x80006e0a, 0x0000ffff, 724); 
TEST_RR_OP( 182 , kadd16, 0xfffe0000, 0xffff0000, 0xffff0000, 728); 
TEST_RR_OP( 183 , kadd16, 0xffff00f2, 0x00000000, 0xffff00f2, 732); 
TEST_RR_OP( 184 , kadd16, 0x9de84d00, 0x82464d01, 0x1ba2ffff, 736); 
TEST_RR_OP( 185 , kadd16, 0xcd398000, 0xa8a88000, 0x2491ffff, 740); 
TEST_CASE( 186 ,744, x14, 1, rdov x14;);
TEST_CASE( 187 ,748, x14, 1, clrov;);
TEST_CASE( 188 ,752, x14, 0, rdov x14;);
TEST_RR_OP( 189 , kadd16, 0x80008000, 0x00008000, 0x80000000, 756); 
TEST_RR_OP( 190 , kadd16, 0x8080fffe, 0x0000ffff, 0x8080ffff, 760); 
TEST_RR_OP( 191 , kadd16, 0x80000ea4, 0x80000000, 0x00000ea4, 764); 
TEST_RR_OP( 192 , kadd16, 0xfffe93f7, 0xffff0000, 0xffff93f7, 768); 
TEST_RR_OP( 193 , kadd16, 0x5c5c8000, 0x5c5dffff, 0xffff8000, 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_RR_OP( 197 , kadd16, 0xd5038000, 0xffffffff, 0xd5048000, 788); 
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
# See LICENSE for license details.
#*****************************************************************************
# kadd8.S
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

TEST_RR_OP( 2 , kadd8, 0x9f7b80fe, 0xff7c80ff, 0xa0ff80ff, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , kadd8, 0x80808080, 0x80ceff80, 0x008080ff, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , kadd8, 0x80805780, 0x80ff07ff, 0x80805080, 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_RR_OP( 14 , kadd8, 0x70adb285, 0x61adb285, 0x0f000000, 56); 
TEST_RR_OP( 15 , kadd8, 0x80fe80ff, 0x80ff80ff, 0x80ffff00, 60); 
TEST_CASE( 16 ,64, x14, 1, rdov x14;);
TEST_CASE( 17 ,68, x14, 1, clrov;);
TEST_CASE( 18 ,72, x14, 0, rdov x14;);
TEST_RR_OP( 19 , kadd8, 0x8000ae80, 0x8200ae80, 0x80000080, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , kadd8, 0xca80807d, 0xca80007e, 0x008080ff, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , kadd8, 0xfffffeff, 0xff00ff00, 0x00ffffff, 108); 
TEST_RR_OP( 28 , kadd8, 0x80808080, 0xfffffff8, 0x80808080, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_RR_OP( 32 , kadd8, 0x9a80c280, 0xff804280, 0x9bff8080, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , kadd8, 0x806980ff, 0x00008000, 0x806900ff, 144); 
TEST_RR_OP( 37 , kadd8, 0x80ff8080, 0x80ff0080, 0x00008000, 148); 
TEST_RR_OP( 38 , kadd8, 0xfe80feff, 0xff80ffff, 0xffb7ff00, 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_RR_OP( 42 , kadd8, 0xff80804b, 0x0000004c, 0xff8080ff, 168); 
TEST_RR_OP( 43 , kadd8, 0x49b3feff, 0x4ab3ff00, 0xff00ffff, 172); 
TEST_RR_OP( 44 , kadd8, 0xfe80e200, 0xff80e300, 0xff80ff00, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , kadd8, 0x80ffd480, 0x00005400, 0x80ff8080, 192); 
TEST_RR_OP( 49 , kadd8, 0x80ffbfff, 0x80ff92ff, 0x00002d00, 196); 
TEST_RR_OP( 50 , kadd8, 0x802680aa, 0xff0080ff, 0x8026feab, 200); 
TEST_CASE( 51 ,204, x14, 1, rdov x14;);
TEST_CASE( 52 ,208, x14, 1, clrov;);
TEST_CASE( 53 ,212, x14, 0, rdov x14;);
TEST_RR_OP( 54 , kadd8, 0xf7ff8080, 0xf70080ff, 0x00ff8080, 216); 
TEST_CASE( 55 ,220, x14, 1, rdov x14;);
TEST_CASE( 56 ,224, x14, 1, clrov;);
TEST_CASE( 57 ,228, x14, 0, rdov x14;);
TEST_RR_OP( 58 , kadd8, 0x80801da1, 0x80ff1721, 0x80800680, 232); 
TEST_CASE( 59 ,236, x14, 1, rdov x14;);
TEST_CASE( 60 ,240, x14, 1, clrov;);
TEST_CASE( 61 ,244, x14, 0, rdov x14;);
TEST_RR_OP( 62 , kadd8, 0xbb80ffd8, 0x8080ff97, 0x3bff0041, 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_RR_OP( 66 , kadd8, 0x7fd9feff, 0x5da2ffff, 0x3537ff00, 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_RR_OP( 70 , kadd8, 0xf0bc86bd, 0xffbc980a, 0xf100eeb3, 280); 
TEST_RR_OP( 71 , kadd8, 0xf2fefffe, 0x72ffffff, 0x80ff00ff, 284); 
TEST_RR_OP( 72 , kadd8, 0x850680cf, 0x86a3fd10, 0xff6380bf, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , kadd8, 0x80deffff, 0x8080ffff, 0x805e0000, 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_RR_OP( 80 , kadd8, 0x8080809f, 0xff0000a0, 0x808080ff, 320); 
TEST_CASE( 81 ,324, x14, 1, rdov x14;);
TEST_CASE( 82 ,328, x14, 1, clrov;);
TEST_CASE( 83 ,332, x14, 0, rdov x14;);
TEST_RR_OP( 84 , kadd8, 0xfedcffdc, 0xff5c005c, 0xff80ff80, 336); 
TEST_RR_OP( 85 , kadd8, 0xd4bc8075, 0xd5bd8075, 0xffff0000, 340); 
TEST_RR_OP( 86 , kadd8, 0x052e1204, 0x002e0000, 0x05001204, 344); 
TEST_RR_OP( 87 , kadd8, 0x9ba06280, 0x80006380, 0x1ba0ff00, 348); 
TEST_RR_OP( 88 , kadd8, 0x758080b0, 0x75ff8000, 0x008000b0, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_RR_OP( 92 , kadd8, 0x808080ff, 0xf7a680ff, 0x8080b100, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , kadd8, 0x80e280de, 0x80bb805e, 0x8027ff80, 384); 
TEST_CASE( 97 ,388, x14, 1, rdov x14;);
TEST_CASE( 98 ,392, x14, 1, clrov;);
TEST_CASE( 99 ,396, x14, 0, rdov x14;);
TEST_RR_OP( 100 , kadd8, 0xe3fc8980, 0x80fd8985, 0x63ff0080, 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_RR_OP( 104 , kadd8, 0x803de680, 0x80cc66ff, 0x00718080, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , kadd8, 0x800096dc, 0x0000c45c, 0x8000d280, 432); 
TEST_RR_OP( 109 , kadd8, 0x8080815e, 0x8080805f, 0x80e801ff, 436); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_RR_OP( 113 , kadd8, 0x80feffca, 0x80ffff00, 0x00ff00ca, 452); 
TEST_RR_OP( 114 , kadd8, 0x80809380, 0x80808080, 0xc2ae13ff, 456); 
TEST_CASE( 115 ,460, x14, 1, rdov x14;);
TEST_CASE( 116 ,464, x14, 1, clrov;);
TEST_CASE( 117 ,468, x14, 0, rdov x14;);
TEST_RR_OP( 118 , kadd8, 0x1f6ea8bd, 0x1f00ff3d, 0x006ea980, 472); 
TEST_RR_OP( 119 , kadd8, 0xff80fe00, 0x0080ff00, 0xffffff00, 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_RR_OP( 123 , kadd8, 0xfa8080a1, 0x7a808086, 0x80ff8c1b, 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_RR_OP( 127 , kadd8, 0x80ff9080, 0x80ff1080, 0xf1008000, 508); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_RR_OP( 131 , kadd8, 0xfefe8042, 0xffff804b, 0xffff00f7, 524); 
TEST_RR_OP( 132 , kadd8, 0x84804527, 0x85804500, 0xffff0027, 528); 
TEST_CASE( 133 ,532, x14, 1, rdov x14;);
TEST_CASE( 134 ,536, x14, 1, clrov;);
TEST_CASE( 135 ,540, x14, 0, rdov x14;);
TEST_RR_OP( 136 , kadd8, 0x00d8fffe, 0x0000ffff, 0x00d800ff, 544); 
TEST_RR_OP( 137 , kadd8, 0xfe8089fe, 0xff8080ff, 0xff8009ff, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_RR_OP( 141 , kadd8, 0x8000fffe, 0x8000ffff, 0xff0000ff, 564); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_RR_OP( 145 , kadd8, 0xe2e5fe80, 0x8080ff80, 0x6265ff00, 580); 
TEST_RR_OP( 146 , kadd8, 0xa7eb8080, 0xa86bff80, 0xff808000, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , kadd8, 0xfe802280, 0xff0000ff, 0xff802280, 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_RR_OP( 154 , kadd8, 0xffff8000, 0xff008000, 0x00ff8000, 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_RR_OP( 158 , kadd8, 0xfecd80c6, 0xff03f6ff, 0xffca80c7, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , kadd8, 0xfef3fe75, 0xff73ff76, 0xff80ffff, 648); 
TEST_RR_OP( 163 , kadd8, 0xfffe8080, 0x00ff0080, 0xffff80c6, 652); 
TEST_CASE( 164 ,656, x14, 1, rdov x14;);
TEST_CASE( 165 ,660, x14, 1, clrov;);
TEST_CASE( 166 ,664, x14, 0, rdov x14;);
TEST_RR_OP( 167 , kadd8, 0xffff8080, 0x000000ff, 0xffff8080, 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_RR_OP( 171 , kadd8, 0x00ff8076, 0x00ffffff, 0x00008077, 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_RR_OP( 175 , kadd8, 0xff80aa27, 0x0080d500, 0xffc9d527, 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_RR_OP( 179 , kadd8, 0x80fffe4d, 0x80ffffff, 0x8000ff4e, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , kadd8, 0x8080fe7f, 0x8080ff76, 0x0080ff2a, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , kadd8, 0x0c808080, 0xff8080ff, 0x0d800080, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , kadd8, 0xdc7f8080, 0x80000080, 0x5c7f8080, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , kadd8, 0x8080fead, 0x80ffffff, 0x0080ffae, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , kadd8, 0xb480ba80, 0x80d4ba80, 0x348000ff, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# ukadd8.S
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

TEST_RR_OP( 2 , ukadd8, 0xffffff80, 0xc1ffff00, 0xff008080, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , ukadd8, 0xffff8000, 0xffb30000, 0xff808000, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , ukadd8, 0xffffffc6, 0x00ff8075, 0xff00d951, 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_RR_OP( 14 , ukadd8, 0xffff374d, 0xffff0000, 0x0080374d, 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_RR_OP( 18 , ukadd8, 0xfffffff0, 0xff9cffa0, 0x00808050, 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_RR_OP( 22 , ukadd8, 0xf08033ed, 0x70000000, 0x808033ed, 88); 
TEST_RR_OP( 23 , ukadd8, 0x8080ff00, 0x8080ff00, 0x0000ff00, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , ukadd8, 0x80ffffff, 0x808080ff, 0x00ffc500, 108); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_RR_OP( 31 , ukadd8, 0xcdffff58, 0xcdffff13, 0x00000045, 124); 
TEST_RR_OP( 32 , ukadd8, 0x80ffff00, 0x80ffff00, 0x00ff8000, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , ukadd8, 0xffff2cff, 0xff800680, 0x008026db, 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_RR_OP( 40 , ukadd8, 0xffffffff, 0xffffff80, 0x801d8080, 160); 
TEST_CASE( 41 ,164, x14, 1, rdov x14;);
TEST_CASE( 42 ,168, x14, 1, clrov;);
TEST_CASE( 43 ,172, x14, 0, rdov x14;);
TEST_RR_OP( 44 , ukadd8, 0xfffffff0, 0xffb98070, 0xe1ffff80, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , ukadd8, 0xffffff80, 0xffffff80, 0xff00ff00, 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_RR_OP( 52 , ukadd8, 0xffc7c0af, 0x80163500, 0xfcb18baf, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , ukadd8, 0xa8ffffff, 0x63ff80ff, 0x4580ff00, 224); 
TEST_CASE( 57 ,228, x14, 1, rdov x14;);
TEST_CASE( 58 ,232, x14, 1, clrov;);
TEST_CASE( 59 ,236, x14, 0, rdov x14;);
TEST_RR_OP( 60 , ukadd8, 0xe5ffff80, 0x65f4ff00, 0x8080ff80, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , ukadd8, 0xffffffff, 0xffffff80, 0xff00a380, 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_RR_OP( 68 , ukadd8, 0xffff80ff, 0xffb28080, 0xff800080, 272); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_RR_OP( 72 , ukadd8, 0x809eff13, 0x801e8013, 0x0080ff00, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , ukadd8, 0x8080ff06, 0x8000ff00, 0x00800006, 304); 
TEST_RR_OP( 77 , ukadd8, 0x9bffff80, 0x1bff8080, 0x80008000, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , ukadd8, 0x8bff8080, 0x8bff8000, 0x00000080, 324); 
TEST_RR_OP( 82 , ukadd8, 0xbaff6679, 0xbaff6600, 0x00300079, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , ukadd8, 0xffff303b, 0x80803000, 0x96ff003b, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , ukadd8, 0xffffffff, 0xf180ff80, 0x6380ff80, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , ukadd8, 0xedffc3ff, 0x00ae8080, 0xedff4380, 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_RR_OP( 98 , ukadd8, 0xffe9ffff, 0xa480dbff, 0x80696c80, 392); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_RR_OP( 102 , ukadd8, 0xffae18ff, 0xff741880, 0x803a0080, 408); 
TEST_CASE( 103 ,412, x14, 1, rdov x14;);
TEST_CASE( 104 ,416, x14, 1, clrov;);
TEST_CASE( 105 ,420, x14, 0, rdov x14;);
TEST_RR_OP( 106 , ukadd8, 0xff87ffff, 0xff87ffff, 0x00000002, 424); 
TEST_CASE( 107 ,428, x14, 1, rdov x14;);
TEST_CASE( 108 ,432, x14, 1, clrov;);
TEST_CASE( 109 ,436, x14, 0, rdov x14;);
TEST_RR_OP( 110 , ukadd8, 0xffce8080, 0xff998080, 0x80350000, 440); 
TEST_CASE( 111 ,444, x14, 1, rdov x14;);
TEST_CASE( 112 ,448, x14, 1, clrov;);
TEST_CASE( 113 ,452, x14, 0, rdov x14;);
TEST_RR_OP( 114 , ukadd8, 0xe18009ff, 0x618000c2, 0x80000980, 456); 
TEST_CASE( 115 ,460, x14, 1, rdov x14;);
TEST_CASE( 116 ,464, x14, 1, clrov;);
TEST_CASE( 117 ,468, x14, 0, rdov x14;);
TEST_RR_OP( 118 , ukadd8, 0xffa4ffff, 0x6880ffff, 0xff243fff, 472); 
TEST_CASE( 119 ,476, x14, 1, rdov x14;);
TEST_CASE( 120 ,480, x14, 1, clrov;);
TEST_CASE( 121 ,484, x14, 0, rdov x14;);
TEST_RR_OP( 122 , ukadd8, 0xffeeffff, 0xff0080e5, 0xc1ee8d94, 488); 
TEST_CASE( 123 ,492, x14, 1, rdov x14;);
TEST_CASE( 124 ,496, x14, 1, clrov;);
TEST_CASE( 125 ,500, x14, 0, rdov x14;);
TEST_RR_OP( 126 , ukadd8, 0xffffffff, 0x80ce4fff, 0xff33ffff, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_RR_OP( 130 , ukadd8, 0xff80ff80, 0xff00ff80, 0xff808000, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , ukadd8, 0xffafffff, 0xffafffff, 0x80000080, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , ukadd8, 0x801fff80, 0x801fff80, 0x00008000, 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_RR_OP( 142 , ukadd8, 0xb09cff00, 0x809cff00, 0x30008000, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , ukadd8, 0x6cffffff, 0x6c0080ff, 0x00ffffd7, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , ukadd8, 0x8080ffff, 0x0080e4ff, 0x8000ff00, 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_RR_OP( 154 , ukadd8, 0xffff0000, 0x80800000, 0xff800000, 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_RR_OP( 158 , ukadd8, 0x8080ffae, 0x0000ff00, 0x80806dae, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , ukadd8, 0xffffffff, 0x4fff00ff, 0xffffffff, 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_RR_OP( 166 , ukadd8, 0xff46ff80, 0x30468080, 0xff00a600, 664); 
TEST_CASE( 167 ,668, x14, 1, rdov x14;);
TEST_CASE( 168 ,672, x14, 1, clrov;);
TEST_CASE( 169 ,676, x14, 0, rdov x14;);
TEST_RR_OP( 170 , ukadd8, 0xffffffff, 0x80808080, 0x80808080, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_RR_OP( 174 , ukadd8, 0x008080ff, 0x00808080, 0x00000080, 696); 
TEST_CASE( 175 ,700, x14, 1, rdov x14;);
TEST_CASE( 176 ,704, x14, 1, clrov;);
TEST_CASE( 177 ,708, x14, 0, rdov x14;);
TEST_RR_OP( 178 , ukadd8, 0x80ff1dff, 0x00ff1d00, 0x800000ff, 712); 
TEST_RR_OP( 179 , ukadd8, 0x00ffff78, 0x00ff8000, 0x00cbff78, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , ukadd8, 0xffffff80, 0xff008000, 0xffff8080, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , ukadd8, 0xfffbffff, 0x808000fb, 0xff7bff80, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , ukadd8, 0x808eff80, 0x80000080, 0x008eff00, 764); 
TEST_RR_OP( 192 , ukadd8, 0xfff0ffa0, 0xfff06300, 0x8000ffa0, 768); 
TEST_CASE( 193 ,772, x14, 1, rdov x14;);
TEST_CASE( 194 ,776, x14, 1, clrov;);
TEST_CASE( 195 ,780, x14, 0, rdov x14;);
TEST_RR_OP( 196 , ukadd8, 0xffffff36, 0x9b8bff36, 0xff808000, 784); 
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
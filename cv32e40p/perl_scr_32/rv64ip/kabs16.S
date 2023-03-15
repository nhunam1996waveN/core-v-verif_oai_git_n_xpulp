# See LICENSE for license details.
#*****************************************************************************
# kabs16.S
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

TEST_R_OP( 2 , kabs16, 0x000017d0, 0x000017d0, 8); 
TEST_R_OP( 3 , kabs16, 0x660226ab, 0x99fe26ab, 12); 
TEST_R_OP( 4 , kabs16, 0x00014eb9, 0xffffb147, 16); 
TEST_R_OP( 5 , kabs16, 0x00000001, 0x0000ffff, 20); 
TEST_R_OP( 6 , kabs16, 0x00000001, 0x0000ffff, 24); 
TEST_R_OP( 7 , kabs16, 0x00000000, 0x00000000, 28); 
TEST_R_OP( 8 , kabs16, 0x0000515b, 0x0000515b, 32); 
TEST_R_OP( 9 , kabs16, 0x4a130000, 0x4a130000, 36); 
TEST_R_OP( 10 , kabs16, 0x1399773b, 0x1399773b, 40); 
TEST_R_OP( 11 , kabs16, 0x7fff0000, 0x80000000, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_R_OP( 15 , kabs16, 0x00000000, 0x00000000, 60); 
TEST_R_OP( 16 , kabs16, 0x0000193c, 0x0000e6c4, 64); 
TEST_R_OP( 17 , kabs16, 0x00000001, 0x0000ffff, 68); 
TEST_R_OP( 18 , kabs16, 0x7fff0001, 0x8000ffff, 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_R_OP( 22 , kabs16, 0x2f7e0000, 0x2f7e0000, 88); 
TEST_R_OP( 23 , kabs16, 0x28091f62, 0xd7f7e09e, 92); 
TEST_R_OP( 24 , kabs16, 0x0ec57fff, 0x0ec58000, 96); 
TEST_CASE( 25 ,100, x14, 1, rdov x14;);
TEST_CASE( 26 ,104, x14, 1, clrov;);
TEST_CASE( 27 ,108, x14, 0, rdov x14;);
TEST_R_OP( 28 , kabs16, 0x7fff1da5, 0x80001da5, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_R_OP( 32 , kabs16, 0x00000000, 0x00000000, 128); 
TEST_R_OP( 33 , kabs16, 0x00000000, 0x00000000, 132); 
TEST_R_OP( 34 , kabs16, 0x7fff0000, 0x80000000, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_R_OP( 38 , kabs16, 0x29e3684c, 0xd61d684c, 152); 
TEST_R_OP( 39 , kabs16, 0x7fff0000, 0x80000000, 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_R_OP( 43 , kabs16, 0x000013c8, 0x000013c8, 172); 
TEST_R_OP( 44 , kabs16, 0x0000477b, 0x0000b885, 176); 
TEST_R_OP( 45 , kabs16, 0x71490000, 0x71490000, 180); 
TEST_R_OP( 46 , kabs16, 0x00010000, 0xffff0000, 184); 
TEST_R_OP( 47 , kabs16, 0x00010001, 0xffffffff, 188); 
TEST_R_OP( 48 , kabs16, 0x37320001, 0xc8ceffff, 192); 
TEST_R_OP( 49 , kabs16, 0x00010000, 0xffff0000, 196); 
TEST_R_OP( 50 , kabs16, 0x00000001, 0x0000ffff, 200); 
TEST_R_OP( 51 , kabs16, 0x7fff0000, 0x80000000, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_R_OP( 55 , kabs16, 0x7fff0001, 0x8000ffff, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_R_OP( 59 , kabs16, 0x7fff0001, 0x8000ffff, 236); 
TEST_CASE( 60 ,240, x14, 1, rdov x14;);
TEST_CASE( 61 ,244, x14, 1, clrov;);
TEST_CASE( 62 ,248, x14, 0, rdov x14;);
TEST_R_OP( 63 , kabs16, 0x000020b6, 0x0000df4a, 252); 
TEST_R_OP( 64 , kabs16, 0x69454b6f, 0x96bbb491, 256); 
TEST_R_OP( 65 , kabs16, 0x00017fff, 0xffff8000, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_R_OP( 69 , kabs16, 0x5e5b7fff, 0x5e5b8000, 276); 
TEST_CASE( 70 ,280, x14, 1, rdov x14;);
TEST_CASE( 71 ,284, x14, 1, clrov;);
TEST_CASE( 72 ,288, x14, 0, rdov x14;);
TEST_R_OP( 73 , kabs16, 0x78f10001, 0x78f1ffff, 292); 
TEST_R_OP( 74 , kabs16, 0x00010000, 0xffff0000, 296); 
TEST_R_OP( 75 , kabs16, 0x00000000, 0x00000000, 300); 
TEST_R_OP( 76 , kabs16, 0x0c8572f2, 0xf37b8d0e, 304); 
TEST_R_OP( 77 , kabs16, 0x7fff7161, 0x80007161, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_R_OP( 81 , kabs16, 0x5f583d1b, 0x5f58c2e5, 324); 
TEST_R_OP( 82 , kabs16, 0x2f717fff, 0xd08f8000, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_R_OP( 86 , kabs16, 0x00000001, 0x0000ffff, 344); 
TEST_R_OP( 87 , kabs16, 0x7fff6bf5, 0x8000940b, 348); 
TEST_CASE( 88 ,352, x14, 1, rdov x14;);
TEST_CASE( 89 ,356, x14, 1, clrov;);
TEST_CASE( 90 ,360, x14, 0, rdov x14;);
TEST_R_OP( 91 , kabs16, 0x7fff0001, 0x8000ffff, 364); 
TEST_CASE( 92 ,368, x14, 1, rdov x14;);
TEST_CASE( 93 ,372, x14, 1, clrov;);
TEST_CASE( 94 ,376, x14, 0, rdov x14;);
TEST_R_OP( 95 , kabs16, 0x2e272643, 0x2e27d9bd, 380); 
TEST_R_OP( 96 , kabs16, 0x00007fff, 0x00008000, 384); 
TEST_CASE( 97 ,388, x14, 1, rdov x14;);
TEST_CASE( 98 ,392, x14, 1, clrov;);
TEST_CASE( 99 ,396, x14, 0, rdov x14;);
TEST_R_OP( 100 , kabs16, 0x00017fff, 0xffff8000, 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_R_OP( 104 , kabs16, 0x7d847fff, 0x7d848000, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_R_OP( 108 , kabs16, 0x00010000, 0xffff0000, 432); 
TEST_R_OP( 109 , kabs16, 0x00007fff, 0x00008000, 436); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_R_OP( 113 , kabs16, 0x2dc90001, 0x2dc9ffff, 452); 
TEST_R_OP( 114 , kabs16, 0x0001468a, 0xffffb976, 456); 
TEST_R_OP( 115 , kabs16, 0x00017482, 0xffff8b7e, 460); 
TEST_R_OP( 116 , kabs16, 0x00011427, 0xffff1427, 464); 
TEST_R_OP( 117 , kabs16, 0x00000001, 0x0000ffff, 468); 
TEST_R_OP( 118 , kabs16, 0x56db3338, 0xa925ccc8, 472); 
TEST_R_OP( 119 , kabs16, 0x00010a96, 0xfffff56a, 476); 
TEST_R_OP( 120 , kabs16, 0x00017fff, 0xffff8000, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_R_OP( 124 , kabs16, 0x000014cf, 0x0000eb31, 496); 
TEST_R_OP( 125 , kabs16, 0x00007fff, 0x00008000, 500); 
TEST_CASE( 126 ,504, x14, 1, rdov x14;);
TEST_CASE( 127 ,508, x14, 1, clrov;);
TEST_CASE( 128 ,512, x14, 0, rdov x14;);
TEST_R_OP( 129 , kabs16, 0x00007fff, 0x00008000, 516); 
TEST_CASE( 130 ,520, x14, 1, rdov x14;);
TEST_CASE( 131 ,524, x14, 1, clrov;);
TEST_CASE( 132 ,528, x14, 0, rdov x14;);
TEST_R_OP( 133 , kabs16, 0x7fff0000, 0x80000000, 532); 
TEST_CASE( 134 ,536, x14, 1, rdov x14;);
TEST_CASE( 135 ,540, x14, 1, clrov;);
TEST_CASE( 136 ,544, x14, 0, rdov x14;);
TEST_R_OP( 137 , kabs16, 0x00007fff, 0x00008000, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_R_OP( 141 , kabs16, 0x7fff0001, 0x8000ffff, 564); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_R_OP( 145 , kabs16, 0x7fff0000, 0x80000000, 580); 
TEST_CASE( 146 ,584, x14, 1, rdov x14;);
TEST_CASE( 147 ,588, x14, 1, clrov;);
TEST_CASE( 148 ,592, x14, 0, rdov x14;);
TEST_R_OP( 149 , kabs16, 0x00017fff, 0xffff8000, 596); 
TEST_CASE( 150 ,600, x14, 1, rdov x14;);
TEST_CASE( 151 ,604, x14, 1, clrov;);
TEST_CASE( 152 ,608, x14, 0, rdov x14;);
TEST_R_OP( 153 , kabs16, 0x00000001, 0x0000ffff, 612); 
TEST_R_OP( 154 , kabs16, 0x00010000, 0xffff0000, 616); 
TEST_R_OP( 155 , kabs16, 0x7fff0001, 0x8000ffff, 620); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_R_OP( 159 , kabs16, 0x7fff0000, 0x80000000, 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_R_OP( 163 , kabs16, 0x000167df, 0xffff67df, 652); 
TEST_R_OP( 164 , kabs16, 0x00000001, 0x0000ffff, 656); 
TEST_R_OP( 165 , kabs16, 0x7fff0001, 0x8000ffff, 660); 
TEST_CASE( 166 ,664, x14, 1, rdov x14;);
TEST_CASE( 167 ,668, x14, 1, clrov;);
TEST_CASE( 168 ,672, x14, 0, rdov x14;);
TEST_R_OP( 169 , kabs16, 0x3dc87cb2, 0xc238834e, 676); 
TEST_R_OP( 170 , kabs16, 0x1da970ef, 0xe25770ef, 680); 
TEST_R_OP( 171 , kabs16, 0x2f7e0001, 0x2f7effff, 684); 
TEST_R_OP( 172 , kabs16, 0x00017fff, 0xffff8000, 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_R_OP( 176 , kabs16, 0x7fff7fff, 0x80008000, 704); 
TEST_CASE( 177 ,708, x14, 1, rdov x14;);
TEST_CASE( 178 ,712, x14, 1, clrov;);
TEST_CASE( 179 ,716, x14, 0, rdov x14;);
TEST_R_OP( 180 , kabs16, 0x00010000, 0xffff0000, 720); 
TEST_R_OP( 181 , kabs16, 0x7fff0000, 0x80000000, 724); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_R_OP( 185 , kabs16, 0x62c90000, 0x9d370000, 740); 
TEST_R_OP( 186 , kabs16, 0x00017fff, 0xffff8000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_R_OP( 190 , kabs16, 0x4b027fff, 0xb4fe8000, 760); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_R_OP( 194 , kabs16, 0x619b7fff, 0x9e658000, 776); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_R_OP( 198 , kabs16, 0x7fff0000, 0x80000000, 792); 
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
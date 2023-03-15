# See LICENSE for license details.
#*****************************************************************************
# kabs8.S
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

TEST_R_OP( 2 , kabs8, 0x7f7f7f01, 0x808080ff, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_R_OP( 6 , kabs8, 0x00016e09, 0x00ff6ef7, 24); 
TEST_R_OP( 7 , kabs8, 0x01017f63, 0xffff809d, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_R_OP( 11 , kabs8, 0x7f000010, 0x80000010, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_R_OP( 15 , kabs8, 0x6f010000, 0x6fff0000, 60); 
TEST_R_OP( 16 , kabs8, 0x00320001, 0x00ce00ff, 64); 
TEST_R_OP( 17 , kabs8, 0x2a66007f, 0x2a9a0080, 68); 
TEST_CASE( 18 ,72, x14, 1, rdov x14;);
TEST_CASE( 19 ,76, x14, 1, clrov;);
TEST_CASE( 20 ,80, x14, 0, rdov x14;);
TEST_R_OP( 21 , kabs8, 0x011b277f, 0xffe5d980, 84); 
TEST_CASE( 22 ,88, x14, 1, rdov x14;);
TEST_CASE( 23 ,92, x14, 1, clrov;);
TEST_CASE( 24 ,96, x14, 0, rdov x14;);
TEST_R_OP( 25 , kabs8, 0x01000000, 0xff000000, 100); 
TEST_R_OP( 26 , kabs8, 0x01116501, 0xffef65ff, 104); 
TEST_R_OP( 27 , kabs8, 0x01180171, 0xffe8ff8f, 108); 
TEST_R_OP( 28 , kabs8, 0x7f010712, 0x80ff07ee, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_R_OP( 32 , kabs8, 0x01567f3e, 0xffaa803e, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_R_OP( 36 , kabs8, 0x7f000001, 0x800000ff, 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_R_OP( 40 , kabs8, 0x7f01014c, 0x80ffff4c, 160); 
TEST_CASE( 41 ,164, x14, 1, rdov x14;);
TEST_CASE( 42 ,168, x14, 1, clrov;);
TEST_CASE( 43 ,172, x14, 0, rdov x14;);
TEST_R_OP( 44 , kabs8, 0x7f44017f, 0x80bcff80, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_R_OP( 48 , kabs8, 0x01010065, 0xffff0065, 192); 
TEST_R_OP( 49 , kabs8, 0x00003c3c, 0x00003cc4, 196); 
TEST_R_OP( 50 , kabs8, 0x017d7f7f, 0xff838080, 200); 
TEST_CASE( 51 ,204, x14, 1, rdov x14;);
TEST_CASE( 52 ,208, x14, 1, clrov;);
TEST_CASE( 53 ,212, x14, 0, rdov x14;);
TEST_R_OP( 54 , kabs8, 0x7f7f7f58, 0x80808058, 216); 
TEST_CASE( 55 ,220, x14, 1, rdov x14;);
TEST_CASE( 56 ,224, x14, 1, clrov;);
TEST_CASE( 57 ,228, x14, 0, rdov x14;);
TEST_R_OP( 58 , kabs8, 0x00007f7f, 0x00008080, 232); 
TEST_CASE( 59 ,236, x14, 1, rdov x14;);
TEST_CASE( 60 ,240, x14, 1, clrov;);
TEST_CASE( 61 ,244, x14, 0, rdov x14;);
TEST_R_OP( 62 , kabs8, 0x2b007f7f, 0x2b008080, 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_R_OP( 66 , kabs8, 0x7f00740c, 0x80008c0c, 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_R_OP( 70 , kabs8, 0x011c0101, 0xff1cffff, 280); 
TEST_R_OP( 71 , kabs8, 0x0156017f, 0xffaaff80, 284); 
TEST_CASE( 72 ,288, x14, 1, rdov x14;);
TEST_CASE( 73 ,292, x14, 1, clrov;);
TEST_CASE( 74 ,296, x14, 0, rdov x14;);
TEST_R_OP( 75 , kabs8, 0x7f010001, 0x80ff00ff, 300); 
TEST_CASE( 76 ,304, x14, 1, rdov x14;);
TEST_CASE( 77 ,308, x14, 1, clrov;);
TEST_CASE( 78 ,312, x14, 0, rdov x14;);
TEST_R_OP( 79 , kabs8, 0x017f0064, 0xff800064, 316); 
TEST_CASE( 80 ,320, x14, 1, rdov x14;);
TEST_CASE( 81 ,324, x14, 1, clrov;);
TEST_CASE( 82 ,328, x14, 0, rdov x14;);
TEST_R_OP( 83 , kabs8, 0x0001017f, 0x00ffff80, 332); 
TEST_CASE( 84 ,336, x14, 1, rdov x14;);
TEST_CASE( 85 ,340, x14, 1, clrov;);
TEST_CASE( 86 ,344, x14, 0, rdov x14;);
TEST_R_OP( 87 , kabs8, 0x15640100, 0x159cff00, 348); 
TEST_R_OP( 88 , kabs8, 0x586c737f, 0xa86c7380, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_R_OP( 92 , kabs8, 0x01000101, 0xff00ffff, 368); 
TEST_R_OP( 93 , kabs8, 0x017f7f01, 0xff8080ff, 372); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_R_OP( 97 , kabs8, 0x7f00017f, 0x8000ff80, 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_R_OP( 101 , kabs8, 0x017f7f01, 0xff8080ff, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_R_OP( 105 , kabs8, 0x007f0701, 0x0080f9ff, 420); 
TEST_CASE( 106 ,424, x14, 1, rdov x14;);
TEST_CASE( 107 ,428, x14, 1, clrov;);
TEST_CASE( 108 ,432, x14, 0, rdov x14;);
TEST_R_OP( 109 , kabs8, 0x00007f01, 0x000080ff, 436); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_R_OP( 113 , kabs8, 0x0001205b, 0x00ff20a5, 452); 
TEST_R_OP( 114 , kabs8, 0x7f467f01, 0x804680ff, 456); 
TEST_CASE( 115 ,460, x14, 1, rdov x14;);
TEST_CASE( 116 ,464, x14, 1, clrov;);
TEST_CASE( 117 ,468, x14, 0, rdov x14;);
TEST_R_OP( 118 , kabs8, 0x007f7f01, 0x008080ff, 472); 
TEST_CASE( 119 ,476, x14, 1, rdov x14;);
TEST_CASE( 120 ,480, x14, 1, clrov;);
TEST_CASE( 121 ,484, x14, 0, rdov x14;);
TEST_R_OP( 122 , kabs8, 0x7f000100, 0x8000ff00, 488); 
TEST_CASE( 123 ,492, x14, 1, rdov x14;);
TEST_CASE( 124 ,496, x14, 1, clrov;);
TEST_CASE( 125 ,500, x14, 0, rdov x14;);
TEST_R_OP( 126 , kabs8, 0x7f7f0001, 0x808000ff, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_R_OP( 130 , kabs8, 0x4d017f7f, 0x4dff8080, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_R_OP( 134 , kabs8, 0x7f00011e, 0x8000ff1e, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_R_OP( 138 , kabs8, 0x00017f01, 0x00ff80ff, 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_R_OP( 142 , kabs8, 0x017f5200, 0xff805200, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_R_OP( 146 , kabs8, 0x2631017f, 0x26cfff80, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_R_OP( 150 , kabs8, 0x017f0101, 0xff80ffff, 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_R_OP( 154 , kabs8, 0x6800397f, 0x98003980, 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_R_OP( 158 , kabs8, 0x787f7f7f, 0x78808080, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_R_OP( 162 , kabs8, 0x01010100, 0xffffff00, 648); 
TEST_R_OP( 163 , kabs8, 0x007f0109, 0x0080fff7, 652); 
TEST_CASE( 164 ,656, x14, 1, rdov x14;);
TEST_CASE( 165 ,660, x14, 1, clrov;);
TEST_CASE( 166 ,664, x14, 0, rdov x14;);
TEST_R_OP( 167 , kabs8, 0x5a000101, 0x5a00ffff, 668); 
TEST_R_OP( 168 , kabs8, 0x4b007f39, 0xb5008039, 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_R_OP( 172 , kabs8, 0x7f010100, 0x80ffff00, 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_R_OP( 176 , kabs8, 0x7f7f0001, 0x808000ff, 704); 
TEST_CASE( 177 ,708, x14, 1, rdov x14;);
TEST_CASE( 178 ,712, x14, 1, clrov;);
TEST_CASE( 179 ,716, x14, 0, rdov x14;);
TEST_R_OP( 180 , kabs8, 0x005e0000, 0x00a20000, 720); 
TEST_R_OP( 181 , kabs8, 0x31000030, 0x31000030, 724); 
TEST_R_OP( 182 , kabs8, 0x17016a01, 0xe9ff6aff, 728); 
TEST_R_OP( 183 , kabs8, 0x017f007c, 0xff800084, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_R_OP( 187 , kabs8, 0x00000001, 0x000000ff, 748); 
TEST_R_OP( 188 , kabs8, 0x01640175, 0xff64ff75, 752); 
TEST_R_OP( 189 , kabs8, 0x017f0610, 0xff80fa10, 756); 
TEST_CASE( 190 ,760, x14, 1, rdov x14;);
TEST_CASE( 191 ,764, x14, 1, clrov;);
TEST_CASE( 192 ,768, x14, 0, rdov x14;);
TEST_R_OP( 193 , kabs8, 0x00010154, 0x00ffff54, 772); 
TEST_R_OP( 194 , kabs8, 0x5b460001, 0x5b4600ff, 776); 
TEST_R_OP( 195 , kabs8, 0x017f0100, 0xff80ff00, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_R_OP( 199 , kabs8, 0x01007f7f, 0xff008080, 796); 

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
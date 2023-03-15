# See LICENSE for license details.
#*****************************************************************************
# ksub8.S
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

TEST_RR_OP( 2 , ksub8, 0x7f7f00ff, 0x4e0000ff, 0x80800000, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , ksub8, 0x06003081, 0x06002f80, 0x0000ffff, 24); 
TEST_RR_OP( 7 , ksub8, 0xdb2c8137, 0x802c80f3, 0xa500ffbc, 28); 
TEST_RR_OP( 8 , ksub8, 0x817f7f00, 0x806400ff, 0xffbd80ff, 32); 
TEST_CASE( 9 ,36, x14, 1, rdov x14;);
TEST_CASE( 10 ,40, x14, 1, clrov;);
TEST_CASE( 11 ,44, x14, 0, rdov x14;);
TEST_RR_OP( 12 , ksub8, 0x815680ff, 0x805580ff, 0xffff6a00, 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_RR_OP( 16 , ksub8, 0x80ba7f00, 0x8081ffff, 0x00c780ff, 64); 
TEST_RR_OP( 17 , ksub8, 0x807f11d9, 0x804500d9, 0x69bbef00, 68); 
TEST_CASE( 18 ,72, x14, 1, rdov x14;);
TEST_CASE( 19 ,76, x14, 1, clrov;);
TEST_CASE( 20 ,80, x14, 0, rdov x14;);
TEST_RR_OP( 21 , ksub8, 0x46808181, 0x45808080, 0xff00ffff, 84); 
TEST_RR_OP( 22 , ksub8, 0x77c601ed, 0xf7c500ed, 0x80ffff00, 88); 
TEST_RR_OP( 23 , ksub8, 0xdf008000, 0xdf809380, 0x00807a80, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , ksub8, 0x7f807f81, 0x0080ff80, 0x800080ff, 108); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_RR_OP( 31 , ksub8, 0x00007f00, 0x80ffff80, 0x80ff8080, 124); 
TEST_RR_OP( 32 , ksub8, 0x19018780, 0xff00ff80, 0xe6ff7800, 128); 
TEST_RR_OP( 33 , ksub8, 0xff007101, 0xffff0000, 0x00ff8fff, 132); 
TEST_RR_OP( 34 , ksub8, 0xff7fff6f, 0xff73ff6e, 0x00a900ff, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_RR_OP( 38 , ksub8, 0x0000ba00, 0xff80b980, 0xff80ff80, 152); 
TEST_RR_OP( 39 , ksub8, 0x00fe8060, 0x009980e0, 0x009b0080, 156); 
TEST_RR_OP( 40 , ksub8, 0x80807fa9, 0x80803c80, 0x430080d7, 160); 
TEST_CASE( 41 ,164, x14, 1, rdov x14;);
TEST_CASE( 42 ,168, x14, 1, clrov;);
TEST_CASE( 43 ,172, x14, 0, rdov x14;);
TEST_RR_OP( 44 , ksub8, 0x00c680ff, 0x80c680ff, 0x80000000, 176); 
TEST_RR_OP( 45 , ksub8, 0x00007f34, 0x0080ff00, 0x008080cc, 180); 
TEST_RR_OP( 46 , ksub8, 0x80007f91, 0x80ff2191, 0x00ff8000, 184); 
TEST_CASE( 47 ,188, x14, 1, rdov x14;);
TEST_CASE( 48 ,192, x14, 1, clrov;);
TEST_CASE( 49 ,196, x14, 0, rdov x14;);
TEST_RR_OP( 50 , ksub8, 0x818000bf, 0x8080ff80, 0xff00ffc1, 200); 
TEST_RR_OP( 51 , ksub8, 0xaf8181ff, 0xff8080ff, 0x50ffff00, 204); 
TEST_RR_OP( 52 , ksub8, 0x7f84007d, 0xff80ff7c, 0x80fcffff, 208); 
TEST_RR_OP( 53 , ksub8, 0x80ff01a9, 0x80ff00dc, 0x0000ff33, 212); 
TEST_RR_OP( 54 , ksub8, 0x0081007a, 0x0080ff79, 0x00ffffff, 216); 
TEST_RR_OP( 55 , ksub8, 0x142fff39, 0x13afff39, 0xff800000, 220); 
TEST_RR_OP( 56 , ksub8, 0x77f9477f, 0x77baff00, 0x00c1b880, 224); 
TEST_CASE( 57 ,228, x14, 1, rdov x14;);
TEST_CASE( 58 ,232, x14, 1, clrov;);
TEST_CASE( 59 ,236, x14, 0, rdov x14;);
TEST_RR_OP( 60 , ksub8, 0x7f680380, 0xff686580, 0x80006200, 240); 
TEST_RR_OP( 61 , ksub8, 0xf5428080, 0x97ff8080, 0xa2bd2800, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , ksub8, 0xda80d918, 0xda800018, 0x005d2700, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , ksub8, 0x0100fff0, 0x0000ff8c, 0xff00009c, 276); 
TEST_RR_OP( 70 , ksub8, 0x81009c01, 0x80ff9b00, 0xffffffff, 280); 
TEST_RR_OP( 71 , ksub8, 0x818a0080, 0x80ff0080, 0xff750000, 284); 
TEST_RR_OP( 72 , ksub8, 0x01b3fe00, 0x00ff6980, 0xff4c6b80, 288); 
TEST_RR_OP( 73 , ksub8, 0x80bf1f80, 0x80801f80, 0x19c1005a, 292); 
TEST_CASE( 74 ,296, x14, 1, rdov x14;);
TEST_CASE( 75 ,300, x14, 1, clrov;);
TEST_CASE( 76 ,304, x14, 0, rdov x14;);
TEST_RR_OP( 77 , ksub8, 0x007fff00, 0xffffffff, 0xff8000ff, 308); 
TEST_RR_OP( 78 , ksub8, 0x7f007f00, 0x008000ff, 0x808080ff, 312); 
TEST_CASE( 79 ,316, x14, 1, rdov x14;);
TEST_CASE( 80 ,320, x14, 1, clrov;);
TEST_CASE( 81 ,324, x14, 0, rdov x14;);
TEST_RR_OP( 82 , ksub8, 0x01810022, 0x008000a2, 0xffff0080, 328); 
TEST_RR_OP( 83 , ksub8, 0x8a7d2393, 0xffff0000, 0x7582dd6d, 332); 
TEST_RR_OP( 84 , ksub8, 0x3700801a, 0x6b808019, 0x348004ff, 336); 
TEST_CASE( 85 ,340, x14, 1, rdov x14;);
TEST_CASE( 86 ,344, x14, 1, clrov;);
TEST_CASE( 87 ,348, x14, 0, rdov x14;);
TEST_RR_OP( 88 , ksub8, 0xff7fbc42, 0xffffbc41, 0x008000ff, 352); 
TEST_RR_OP( 89 , ksub8, 0xd900344a, 0x800000ff, 0xa700ccb5, 356); 
TEST_RR_OP( 90 , ksub8, 0x7f807f85, 0xff95ffff, 0x8044807a, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , ksub8, 0x7f321680, 0x00000080, 0x80ceea00, 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_RR_OP( 98 , ksub8, 0x7f0d881e, 0x578d8800, 0x808000e2, 392); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_RR_OP( 102 , ksub8, 0x80c2007f, 0x80808000, 0x00be8080, 408); 
TEST_CASE( 103 ,412, x14, 1, rdov x14;);
TEST_CASE( 104 ,416, x14, 1, clrov;);
TEST_CASE( 105 ,420, x14, 0, rdov x14;);
TEST_RR_OP( 106 , ksub8, 0xc7000009, 0xc7ffff09, 0x00ffff00, 424); 
TEST_RR_OP( 107 , ksub8, 0x007f0001, 0x80048000, 0x808080ff, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , ksub8, 0x0000005f, 0x80ff8072, 0x80ff8013, 444); 
TEST_RR_OP( 112 , ksub8, 0x0080ff75, 0x0080fff5, 0x00000080, 448); 
TEST_RR_OP( 113 , ksub8, 0x7f7f7f72, 0x000aff00, 0x8080808e, 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_RR_OP( 117 , ksub8, 0x81672b7f, 0x80ffab00, 0xff988080, 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_RR_OP( 121 , ksub8, 0x9cffed00, 0x9cff00ff, 0x000013ff, 484); 
TEST_RR_OP( 122 , ksub8, 0x4fda01dd, 0x00d900dc, 0xb1ffffff, 488); 
TEST_RR_OP( 123 , ksub8, 0x807d7ff3, 0x807c55f2, 0x19ff80ff, 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_RR_OP( 127 , ksub8, 0xbe7f5a7f, 0x00ff0010, 0x4280a680, 508); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_RR_OP( 131 , ksub8, 0x81007f01, 0x80800300, 0xff8080ff, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , ksub8, 0x7f55ffff, 0x3800ffff, 0x80ab0000, 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_RR_OP( 139 , ksub8, 0x7f800054, 0x00800053, 0x800000ff, 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_RR_OP( 143 , ksub8, 0x00ff7f7f, 0xffff0000, 0xff008080, 572); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_RR_OP( 147 , ksub8, 0xd47f80ff, 0xff7680ff, 0x2b803b00, 588); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_RR_OP( 151 , ksub8, 0xaf8000ff, 0xaf80ffff, 0x002fff00, 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_RR_OP( 155 , ksub8, 0x814d0000, 0x804dffff, 0xff00ffff, 620); 
TEST_RR_OP( 156 , ksub8, 0x21800180, 0x21800080, 0x0073ff00, 624); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_RR_OP( 160 , ksub8, 0xd1818c00, 0xd1808c00, 0x00ff0000, 640); 
TEST_RR_OP( 161 , ksub8, 0x7f008000, 0xff008000, 0x80000700, 644); 
TEST_CASE( 162 ,648, x14, 1, rdov x14;);
TEST_CASE( 163 ,652, x14, 1, clrov;);
TEST_CASE( 164 ,656, x14, 0, rdov x14;);
TEST_RR_OP( 165 , ksub8, 0x4d801ea9, 0xcd80ff00, 0x8000e157, 660); 
TEST_RR_OP( 166 , ksub8, 0xb07fc4ff, 0x00ffc3ff, 0x5080ff00, 664); 
TEST_RR_OP( 167 , ksub8, 0x00807f7f, 0x0080ffff, 0x00008080, 668); 
TEST_RR_OP( 168 , ksub8, 0x8000004e, 0x8080004d, 0x368000ff, 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_RR_OP( 172 , ksub8, 0x00ffffe6, 0x00ffff3b, 0x00000055, 688); 
TEST_RR_OP( 173 , ksub8, 0xab80d300, 0xbb802980, 0x10005680, 692); 
TEST_RR_OP( 174 , ksub8, 0x7f808017, 0xffce8016, 0x806700ff, 696); 
TEST_CASE( 175 ,700, x14, 1, rdov x14;);
TEST_CASE( 176 ,704, x14, 1, clrov;);
TEST_CASE( 177 ,708, x14, 0, rdov x14;);
TEST_RR_OP( 178 , ksub8, 0x80000184, 0x80ff00aa, 0x00ffff26, 712); 
TEST_RR_OP( 179 , ksub8, 0x80f77f7f, 0x80f7ffff, 0x27008080, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , ksub8, 0x802efc7f, 0x80ae80ff, 0x3c808480, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , ksub8, 0x7fe480ff, 0x160080ff, 0x801c0000, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , ksub8, 0x27007f80, 0xffff5180, 0xd8ff8000, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , ksub8, 0x00000000, 0x80800000, 0x80800000, 780); 
TEST_RR_OP( 196 , ksub8, 0x0080007f, 0xff808000, 0xff008080, 784); 
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
# See LICENSE for license details.
#*****************************************************************************
# ukcrsa16.S
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

TEST_RR_OP( 2 , ukcrsa16, 0x0000ffff, 0x9e508000, 0x8000ffff, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , ukcrsa16, 0x00008000, 0x7d2a0000, 0x80008000, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , ukcrsa16, 0x7fffffff, 0xffff0000, 0xffff8000, 40); 
TEST_RR_OP( 11 , ukcrsa16, 0xffff47af, 0xffff47af, 0x00000000, 44); 
TEST_RR_OP( 12 , ukcrsa16, 0x7d27ffff, 0x7d270000, 0xffff0000, 48); 
TEST_RR_OP( 13 , ukcrsa16, 0xafe9aadd, 0xffffaadd, 0x00005016, 52); 
TEST_RR_OP( 14 , ukcrsa16, 0x00008bb1, 0x00000000, 0x8bb10000, 56); 
TEST_RR_OP( 15 , ukcrsa16, 0x7fffffff, 0xffffffff, 0x00008000, 60); 
TEST_RR_OP( 16 , ukcrsa16, 0xa3b80000, 0xa3b80000, 0x00000000, 64); 
TEST_RR_OP( 17 , ukcrsa16, 0x8000ffff, 0x80000000, 0xffff0000, 68); 
TEST_RR_OP( 18 , ukcrsa16, 0x5895ffff, 0xf8848000, 0x80009fef, 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_RR_OP( 22 , ukcrsa16, 0x0000caa0, 0x80007ca8, 0x4df8bbbb, 88); 
TEST_CASE( 23 ,92, x14, 1, rdov x14;);
TEST_CASE( 24 ,96, x14, 1, clrov;);
TEST_CASE( 25 ,100, x14, 0, rdov x14;);
TEST_RR_OP( 26 , ukcrsa16, 0x8000ffff, 0x80007e10, 0xe3a10000, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , ukcrsa16, 0x00000000, 0xb8d50000, 0x0000ffff, 120); 
TEST_CASE( 31 ,124, x14, 1, rdov x14;);
TEST_CASE( 32 ,128, x14, 1, clrov;);
TEST_CASE( 33 ,132, x14, 0, rdov x14;);
TEST_RR_OP( 34 , ukcrsa16, 0x7fffffff, 0xffffffff, 0x4ab88000, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_RR_OP( 38 , ukcrsa16, 0x69efffff, 0x69ef8000, 0x80000000, 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_RR_OP( 42 , ukcrsa16, 0x0000ffff, 0x8000ffff, 0x80008000, 168); 
TEST_CASE( 43 ,172, x14, 1, rdov x14;);
TEST_CASE( 44 ,176, x14, 1, clrov;);
TEST_CASE( 45 ,180, x14, 0, rdov x14;);
TEST_RR_OP( 46 , ukcrsa16, 0x1d738000, 0xffff0000, 0x8000e28c, 184); 
TEST_RR_OP( 47 , ukcrsa16, 0x8000ffff, 0x80008000, 0x80000000, 188); 
TEST_CASE( 48 ,192, x14, 1, rdov x14;);
TEST_CASE( 49 ,196, x14, 1, clrov;);
TEST_CASE( 50 ,200, x14, 0, rdov x14;);
TEST_RR_OP( 51 , ukcrsa16, 0xfffff449, 0xffff0000, 0xf4490000, 204); 
TEST_RR_OP( 52 , ukcrsa16, 0x00008000, 0x00000000, 0x8000ffff, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , ukcrsa16, 0xddfeffff, 0xffff0000, 0xffff2201, 224); 
TEST_RR_OP( 57 , ukcrsa16, 0x0000ab23, 0x00000000, 0xab238000, 228); 
TEST_CASE( 58 ,232, x14, 1, rdov x14;);
TEST_CASE( 59 ,236, x14, 1, clrov;);
TEST_CASE( 60 ,240, x14, 0, rdov x14;);
TEST_RR_OP( 61 , ukcrsa16, 0x00000000, 0x00000000, 0x00008000, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , ukcrsa16, 0xffffffff, 0xffff8b5c, 0xffff0000, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , ukcrsa16, 0x0000ffff, 0x000056b2, 0xffff8000, 276); 
TEST_CASE( 70 ,280, x14, 1, rdov x14;);
TEST_CASE( 71 ,284, x14, 1, clrov;);
TEST_CASE( 72 ,288, x14, 0, rdov x14;);
TEST_RR_OP( 73 , ukcrsa16, 0x0000ffff, 0xdfdaffff, 0x8000e63f, 292); 
TEST_CASE( 74 ,296, x14, 1, rdov x14;);
TEST_CASE( 75 ,300, x14, 1, clrov;);
TEST_CASE( 76 ,304, x14, 0, rdov x14;);
TEST_RR_OP( 77 , ukcrsa16, 0x0000ffff, 0x8000637e, 0xffff8000, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , ukcrsa16, 0x0000ffff, 0xffffffff, 0x8000ffff, 324); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_RR_OP( 85 , ukcrsa16, 0x0000ffff, 0x0000ffff, 0xffffacd4, 340); 
TEST_CASE( 86 ,344, x14, 1, rdov x14;);
TEST_CASE( 87 ,348, x14, 1, clrov;);
TEST_CASE( 88 ,352, x14, 0, rdov x14;);
TEST_RR_OP( 89 , ukcrsa16, 0x7fffcb67, 0xffff8000, 0x4b678000, 356); 
TEST_RR_OP( 90 , ukcrsa16, 0x0000ffff, 0x0000ffff, 0x8000c57e, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , ukcrsa16, 0x1373bbb2, 0x80003bb2, 0x80006c8d, 376); 
TEST_RR_OP( 95 , ukcrsa16, 0x7fffffff, 0xffffffff, 0x80008000, 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_RR_OP( 99 , ukcrsa16, 0x0000ffff, 0x800065ee, 0xffff8000, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , ukcrsa16, 0x8000ffff, 0x8000ffff, 0x9d0c0000, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , ukcrsa16, 0x62838000, 0xffff0000, 0x80009d7c, 428); 
TEST_RR_OP( 108 , ukcrsa16, 0x00004230, 0x80004230, 0x0000fe3b, 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_RR_OP( 112 , ukcrsa16, 0xffff8e15, 0xffff1a0f, 0x74060000, 448); 
TEST_RR_OP( 113 , ukcrsa16, 0x8000ffff, 0x80008000, 0xffff0000, 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_RR_OP( 117 , ukcrsa16, 0x8000ffff, 0x8000ffff, 0xffff0000, 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_RR_OP( 121 , ukcrsa16, 0x0000ffff, 0xffff8000, 0xf2dcffff, 484); 
TEST_CASE( 122 ,488, x14, 1, rdov x14;);
TEST_CASE( 123 ,492, x14, 1, clrov;);
TEST_CASE( 124 ,496, x14, 0, rdov x14;);
TEST_RR_OP( 125 , ukcrsa16, 0x7fff5ab8, 0xffff0000, 0x5ab88000, 500); 
TEST_RR_OP( 126 , ukcrsa16, 0x0000ffff, 0xa182ffff, 0xffffffff, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_RR_OP( 130 , ukcrsa16, 0x10f6ffff, 0x10f68000, 0xffff0000, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , ukcrsa16, 0x0000ca9b, 0x34d08000, 0x4a9b8000, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , ukcrsa16, 0x0000ffff, 0x0000ffff, 0x8000ffff, 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_RR_OP( 142 , ukcrsa16, 0x0000ffff, 0x0000ffff, 0xffffffff, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , ukcrsa16, 0x00000000, 0x80000000, 0x0000ffff, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , ukcrsa16, 0x0000ffff, 0xffffffff, 0x0000ffff, 600); 
TEST_RR_OP( 151 , ukcrsa16, 0x7fffd9ba, 0xffff59ba, 0x80008000, 604); 
TEST_RR_OP( 152 , ukcrsa16, 0x0000ffff, 0x4e9e0000, 0xffff8000, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , ukcrsa16, 0xdab9ffff, 0xdab9ffbd, 0x80000000, 624); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_RR_OP( 160 , ukcrsa16, 0x9c7affff, 0x9c7acb27, 0x80000000, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , ukcrsa16, 0xffff103e, 0xffff0000, 0x103e0000, 656); 
TEST_RR_OP( 165 , ukcrsa16, 0x00008000, 0x00000000, 0x8000ffff, 660); 
TEST_CASE( 166 ,664, x14, 1, rdov x14;);
TEST_CASE( 167 ,668, x14, 1, clrov;);
TEST_CASE( 168 ,672, x14, 0, rdov x14;);
TEST_RR_OP( 169 , ukcrsa16, 0x7fffffff, 0xffffffff, 0xffff8000, 676); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_RR_OP( 173 , ukcrsa16, 0x8000ffff, 0x80008000, 0xe0770000, 692); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_RR_OP( 177 , ukcrsa16, 0x0000ffff, 0xffffc92a, 0x8000ffff, 708); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_RR_OP( 181 , ukcrsa16, 0x7fffbf5c, 0xffff3f5c, 0x80008000, 724); 
TEST_RR_OP( 182 , ukcrsa16, 0x8000ffff, 0x8000ffff, 0x00000000, 728); 
TEST_RR_OP( 183 , ukcrsa16, 0x00000000, 0x80000000, 0x0000ffff, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , ukcrsa16, 0x0000ffff, 0x8000ffff, 0x2370ffff, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , ukcrsa16, 0x0000ffff, 0x0000ffff, 0x00001988, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , ukcrsa16, 0x0000ffff, 0xffff8000, 0x8000ffff, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , ukcrsa16, 0x00009995, 0x00008000, 0x1995ffff, 796); 

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
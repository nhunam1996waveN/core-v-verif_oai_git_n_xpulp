# See LICENSE for license details.
#*****************************************************************************
# uksub16.S
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

TEST_RR_OP( 2 , uksub16, 0x00000000, 0xff76cbc7, 0xffffe068, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , uksub16, 0xffffffff, 0xffffffff, 0x00000000, 24); 
TEST_RR_OP( 7 , uksub16, 0x3bdbee12, 0x8000ee12, 0x44250000, 28); 
TEST_RR_OP( 8 , uksub16, 0x7fff0000, 0xffff0000, 0x80000000, 32); 
TEST_RR_OP( 9 , uksub16, 0x80000000, 0x80000000, 0x0000b5c6, 36); 
TEST_CASE( 10 ,40, x14, 1, rdov x14;);
TEST_CASE( 11 ,44, x14, 1, clrov;);
TEST_CASE( 12 ,48, x14, 0, rdov x14;);
TEST_RR_OP( 13 , uksub16, 0x7fff8000, 0xffff8000, 0x80000000, 52); 
TEST_RR_OP( 14 , uksub16, 0x7fff0000, 0xffff0000, 0x80000000, 56); 
TEST_RR_OP( 15 , uksub16, 0xffff0000, 0xffff8000, 0x0000de1e, 60); 
TEST_CASE( 16 ,64, x14, 1, rdov x14;);
TEST_CASE( 17 ,68, x14, 1, clrov;);
TEST_CASE( 18 ,72, x14, 0, rdov x14;);
TEST_RR_OP( 19 , uksub16, 0x00000000, 0x8000ffff, 0x8000ffff, 76); 
TEST_RR_OP( 20 , uksub16, 0x00000000, 0x00000000, 0x00008000, 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 24 , uksub16, 0xffff0000, 0xffff8000, 0x0000e976, 96); 
TEST_CASE( 25 ,100, x14, 1, rdov x14;);
TEST_CASE( 26 ,104, x14, 1, clrov;);
TEST_CASE( 27 ,108, x14, 0, rdov x14;);
TEST_RR_OP( 28 , uksub16, 0xffff1b0e, 0xffffffff, 0x0000e4f1, 112); 
TEST_RR_OP( 29 , uksub16, 0x00000000, 0x00008000, 0x80008000, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , uksub16, 0x00000000, 0x83b00000, 0xffff0000, 132); 
TEST_CASE( 34 ,136, x14, 1, rdov x14;);
TEST_CASE( 35 ,140, x14, 1, clrov;);
TEST_CASE( 36 ,144, x14, 0, rdov x14;);
TEST_RR_OP( 37 , uksub16, 0x25e10000, 0xa5e10000, 0x80000000, 148); 
TEST_RR_OP( 38 , uksub16, 0x5b6b0000, 0xdb6b0000, 0x80008000, 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_RR_OP( 42 , uksub16, 0x7fff0000, 0xffff0000, 0x8000cc9f, 168); 
TEST_CASE( 43 ,172, x14, 1, rdov x14;);
TEST_CASE( 44 ,176, x14, 1, clrov;);
TEST_CASE( 45 ,180, x14, 0, rdov x14;);
TEST_RR_OP( 46 , uksub16, 0xffff706a, 0xfffff4d4, 0x0000846a, 184); 
TEST_RR_OP( 47 , uksub16, 0x00006c3a, 0x0000ffff, 0x800093c5, 188); 
TEST_CASE( 48 ,192, x14, 1, rdov x14;);
TEST_CASE( 49 ,196, x14, 1, clrov;);
TEST_CASE( 50 ,200, x14, 0, rdov x14;);
TEST_RR_OP( 51 , uksub16, 0xffff7fff, 0xffffffff, 0x00008000, 204); 
TEST_RR_OP( 52 , uksub16, 0x806b0000, 0xffffffff, 0x7f94ffff, 208); 
TEST_RR_OP( 53 , uksub16, 0x00000000, 0x70928000, 0x80008000, 212); 
TEST_CASE( 54 ,216, x14, 1, rdov x14;);
TEST_CASE( 55 ,220, x14, 1, clrov;);
TEST_CASE( 56 ,224, x14, 0, rdov x14;);
TEST_RR_OP( 57 , uksub16, 0x60060000, 0x80008000, 0x1ffaffff, 228); 
TEST_CASE( 58 ,232, x14, 1, rdov x14;);
TEST_CASE( 59 ,236, x14, 1, clrov;);
TEST_CASE( 60 ,240, x14, 0, rdov x14;);
TEST_RR_OP( 61 , uksub16, 0x00000000, 0x00008000, 0xb45f8000, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , uksub16, 0xffff7fff, 0xffffffff, 0x00008000, 260); 
TEST_RR_OP( 66 , uksub16, 0x00008000, 0x00008000, 0x00000000, 264); 
TEST_RR_OP( 67 , uksub16, 0x00000000, 0x00005939, 0x80008000, 268); 
TEST_CASE( 68 ,272, x14, 1, rdov x14;);
TEST_CASE( 69 ,276, x14, 1, clrov;);
TEST_CASE( 70 ,280, x14, 0, rdov x14;);
TEST_RR_OP( 71 , uksub16, 0xf41d0000, 0xffffffff, 0x0be2ffff, 284); 
TEST_RR_OP( 72 , uksub16, 0x00000000, 0x00000573, 0x45c2384f, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , uksub16, 0x67f50000, 0xffff8000, 0x980affff, 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_RR_OP( 80 , uksub16, 0x00000000, 0xffffffff, 0xffffffff, 320); 
TEST_RR_OP( 81 , uksub16, 0xd7167fff, 0xffffffff, 0x28e98000, 324); 
TEST_RR_OP( 82 , uksub16, 0x000045e8, 0x80006779, 0xd23f2191, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , uksub16, 0x80000000, 0x800011b1, 0x00008000, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , uksub16, 0xffff0000, 0xffff0000, 0x0000cf75, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , uksub16, 0x00000000, 0x80000000, 0xfd3dffff, 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_RR_OP( 98 , uksub16, 0x00000000, 0xffff8000, 0xffff8000, 392); 
TEST_RR_OP( 99 , uksub16, 0x60a4f41b, 0xffffffff, 0x9f5b0be4, 396); 
TEST_RR_OP( 100 , uksub16, 0x00000000, 0x00000000, 0x0000ffff, 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_RR_OP( 104 , uksub16, 0x00000000, 0x8000881b, 0xffffb4c2, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , uksub16, 0x0000104a, 0xffff104a, 0xffff0000, 432); 
TEST_RR_OP( 109 , uksub16, 0x00000000, 0x80000000, 0x80008000, 436); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_RR_OP( 113 , uksub16, 0x00007644, 0x00008000, 0x57b809bc, 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_RR_OP( 117 , uksub16, 0x00000000, 0xc85d3847, 0xffffffff, 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_RR_OP( 121 , uksub16, 0x8000afb1, 0x8000afb1, 0x00000000, 484); 
TEST_RR_OP( 122 , uksub16, 0x0000d7ab, 0x8000ffff, 0x80002854, 488); 
TEST_RR_OP( 123 , uksub16, 0x00007fff, 0x0000ffff, 0x80008000, 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_RR_OP( 127 , uksub16, 0x57682f50, 0xffffffff, 0xa897d0af, 508); 
TEST_RR_OP( 128 , uksub16, 0x00000000, 0x1ffb0000, 0x80008000, 512); 
TEST_CASE( 129 ,516, x14, 1, rdov x14;);
TEST_CASE( 130 ,520, x14, 1, clrov;);
TEST_CASE( 131 ,524, x14, 0, rdov x14;);
TEST_RR_OP( 132 , uksub16, 0xffff0000, 0xffff8000, 0x0000ffff, 528); 
TEST_CASE( 133 ,532, x14, 1, rdov x14;);
TEST_CASE( 134 ,536, x14, 1, clrov;);
TEST_CASE( 135 ,540, x14, 0, rdov x14;);
TEST_RR_OP( 136 , uksub16, 0x00007fff, 0x0000ffff, 0x80008000, 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_RR_OP( 140 , uksub16, 0x95ce0000, 0x95ceffff, 0x0000ffff, 560); 
TEST_RR_OP( 141 , uksub16, 0x000027e6, 0xbf879f04, 0xffff771e, 564); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_RR_OP( 145 , uksub16, 0x7daf7e77, 0xfffffe77, 0x82508000, 580); 
TEST_RR_OP( 146 , uksub16, 0x00000000, 0xcd970000, 0xffff0000, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , uksub16, 0x00004c63, 0x9c6e8000, 0xa681339d, 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_RR_OP( 154 , uksub16, 0x199359f1, 0x9993f008, 0x80009617, 616); 
TEST_RR_OP( 155 , uksub16, 0x00000000, 0x80000a39, 0xffff8000, 620); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_RR_OP( 159 , uksub16, 0x00000000, 0x80000000, 0x80005189, 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_RR_OP( 163 , uksub16, 0x00000000, 0xffffffff, 0xffffffff, 652); 
TEST_RR_OP( 164 , uksub16, 0x00004a21, 0x8000ca21, 0xffff8000, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , uksub16, 0x2cc87fff, 0xf1f5ffff, 0xc52d8000, 672); 
TEST_RR_OP( 169 , uksub16, 0x7fff0000, 0xffff0000, 0x80000000, 676); 
TEST_RR_OP( 170 , uksub16, 0xffff0000, 0xffff2ee0, 0x00008000, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_RR_OP( 174 , uksub16, 0x03c80000, 0x80008000, 0x7c38bed1, 696); 
TEST_CASE( 175 ,700, x14, 1, rdov x14;);
TEST_CASE( 176 ,704, x14, 1, clrov;);
TEST_CASE( 177 ,708, x14, 0, rdov x14;);
TEST_RR_OP( 178 , uksub16, 0x00000000, 0x10288000, 0x80008000, 712); 
TEST_CASE( 179 ,716, x14, 1, rdov x14;);
TEST_CASE( 180 ,720, x14, 1, clrov;);
TEST_CASE( 181 ,724, x14, 0, rdov x14;);
TEST_RR_OP( 182 , uksub16, 0xe7220000, 0xffff8000, 0x18ddffff, 728); 
TEST_CASE( 183 ,732, x14, 1, rdov x14;);
TEST_CASE( 184 ,736, x14, 1, clrov;);
TEST_CASE( 185 ,740, x14, 0, rdov x14;);
TEST_RR_OP( 186 , uksub16, 0x8000ffff, 0x8000ffff, 0x00000000, 744); 
TEST_RR_OP( 187 , uksub16, 0x00000000, 0x00000000, 0xffff8000, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , uksub16, 0x00000000, 0x00008000, 0x80008000, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , uksub16, 0x00007fff, 0x0000ffff, 0x00008000, 780); 
TEST_RR_OP( 196 , uksub16, 0xffff0000, 0xffff8000, 0x00008000, 784); 
TEST_RR_OP( 197 , uksub16, 0x00000000, 0x249e0000, 0xffff0000, 788); 
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
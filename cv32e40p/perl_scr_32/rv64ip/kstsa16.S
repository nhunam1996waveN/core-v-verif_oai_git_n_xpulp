# See LICENSE for license details.
#*****************************************************************************
# kstsa16.S
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

TEST_RR_OP( 2 , kstsa16, 0x7fff8d55, 0x27d98d55, 0x80000000, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , kstsa16, 0xbf628000, 0x3d358000, 0x7dd3ffff, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , kstsa16, 0xea738000, 0xffff8000, 0x158c8000, 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_RR_OP( 14 , kstsa16, 0x1d888000, 0xffff8000, 0xe2778000, 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_RR_OP( 18 , kstsa16, 0x9ca0ffff, 0xffff0000, 0x635fffff, 72); 
TEST_RR_OP( 19 , kstsa16, 0xd6baffff, 0xd6b90000, 0xffffffff, 76); 
TEST_RR_OP( 20 , kstsa16, 0xffffffff, 0xffff0000, 0x0000ffff, 80); 
TEST_RR_OP( 21 , kstsa16, 0xc8d58000, 0xffff8000, 0x372affff, 84); 
TEST_CASE( 22 ,88, x14, 1, rdov x14;);
TEST_CASE( 23 ,92, x14, 1, clrov;);
TEST_CASE( 24 ,96, x14, 0, rdov x14;);
TEST_RR_OP( 25 , kstsa16, 0x7fff8000, 0x44db8000, 0x8000ffff, 100); 
TEST_CASE( 26 ,104, x14, 1, rdov x14;);
TEST_CASE( 27 ,108, x14, 1, clrov;);
TEST_CASE( 28 ,112, x14, 0, rdov x14;);
TEST_RR_OP( 29 , kstsa16, 0x1c628000, 0xffff8000, 0xe39d0000, 116); 
TEST_RR_OP( 30 , kstsa16, 0x7fff8000, 0xffff8000, 0x8000ffff, 120); 
TEST_CASE( 31 ,124, x14, 1, rdov x14;);
TEST_CASE( 32 ,128, x14, 1, clrov;);
TEST_CASE( 33 ,132, x14, 0, rdov x14;);
TEST_RR_OP( 34 , kstsa16, 0x7fff8000, 0x48ba8000, 0xb92e96ad, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_RR_OP( 38 , kstsa16, 0xed3affff, 0xffff0000, 0x12c5ffff, 152); 
TEST_RR_OP( 39 , kstsa16, 0xf4618000, 0x00008000, 0x0b9fffff, 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_RR_OP( 43 , kstsa16, 0x0000ffff, 0x8000ffff, 0x80000000, 172); 
TEST_RR_OP( 44 , kstsa16, 0x7fff8000, 0x7e878000, 0x8000efba, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , kstsa16, 0x0000dabf, 0x0000dac0, 0x0000ffff, 192); 
TEST_RR_OP( 49 , kstsa16, 0x7fff050b, 0xffff0000, 0x8000050b, 196); 
TEST_RR_OP( 50 , kstsa16, 0x5f8bfffe, 0xdf8bffff, 0x8000ffff, 200); 
TEST_RR_OP( 51 , kstsa16, 0x0f5bc210, 0x8f5b0000, 0x8000c210, 204); 
TEST_RR_OP( 52 , kstsa16, 0x05428000, 0xffff9c1e, 0xfabd8000, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , kstsa16, 0xfded8000, 0x00008000, 0x0213ffff, 224); 
TEST_CASE( 57 ,228, x14, 1, rdov x14;);
TEST_CASE( 58 ,232, x14, 1, clrov;);
TEST_CASE( 59 ,236, x14, 0, rdov x14;);
TEST_RR_OP( 60 , kstsa16, 0x8001de8f, 0x8000de8f, 0xffff0000, 240); 
TEST_RR_OP( 61 , kstsa16, 0x7fff8000, 0x402c8000, 0x99748000, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , kstsa16, 0x00000000, 0x00000000, 0x00000000, 260); 
TEST_RR_OP( 66 , kstsa16, 0x8d9752df, 0x000052df, 0x72690000, 264); 
TEST_RR_OP( 67 , kstsa16, 0x664d8000, 0xe64dffff, 0x80008000, 268); 
TEST_CASE( 68 ,272, x14, 1, rdov x14;);
TEST_CASE( 69 ,276, x14, 1, clrov;);
TEST_CASE( 70 ,280, x14, 0, rdov x14;);
TEST_RR_OP( 71 , kstsa16, 0x00008000, 0xffff8000, 0xffff8000, 284); 
TEST_CASE( 72 ,288, x14, 1, rdov x14;);
TEST_CASE( 73 ,292, x14, 1, clrov;);
TEST_CASE( 74 ,296, x14, 0, rdov x14;);
TEST_RR_OP( 75 , kstsa16, 0xcb069a50, 0x80009a50, 0xb4fa0000, 300); 
TEST_RR_OP( 76 , kstsa16, 0x2865fd37, 0xa865fd38, 0x8000ffff, 304); 
TEST_RR_OP( 77 , kstsa16, 0xffff66cb, 0xffffffff, 0x000066cc, 308); 
TEST_RR_OP( 78 , kstsa16, 0xcfbcffff, 0x80000000, 0xb044ffff, 312); 
TEST_RR_OP( 79 , kstsa16, 0xfcd68000, 0xfcd68000, 0x0000ffff, 316); 
TEST_CASE( 80 ,320, x14, 1, rdov x14;);
TEST_CASE( 81 ,324, x14, 1, clrov;);
TEST_CASE( 82 ,328, x14, 0, rdov x14;);
TEST_RR_OP( 83 , kstsa16, 0x0001ffff, 0x00000000, 0xffffffff, 332); 
TEST_RR_OP( 84 , kstsa16, 0x7fffffff, 0x6eae0000, 0xccfcffff, 336); 
TEST_CASE( 85 ,340, x14, 1, rdov x14;);
TEST_CASE( 86 ,344, x14, 1, clrov;);
TEST_CASE( 87 ,348, x14, 0, rdov x14;);
TEST_RR_OP( 88 , kstsa16, 0x6db68000, 0x6db5ffff, 0xffff8000, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_RR_OP( 92 , kstsa16, 0x00015f54, 0x0000ffff, 0xffff5f55, 368); 
TEST_RR_OP( 93 , kstsa16, 0x2c6c8000, 0x54638000, 0x27f78000, 372); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_RR_OP( 97 , kstsa16, 0x63588000, 0x00008000, 0x9ca88000, 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_RR_OP( 101 , kstsa16, 0x80008000, 0x80008000, 0x0000bd52, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , kstsa16, 0xb7578000, 0xffffffff, 0x48a88000, 420); 
TEST_CASE( 106 ,424, x14, 1, rdov x14;);
TEST_CASE( 107 ,428, x14, 1, clrov;);
TEST_CASE( 108 ,432, x14, 0, rdov x14;);
TEST_RR_OP( 109 , kstsa16, 0x8000d9d6, 0x8000c202, 0x000017d4, 436); 
TEST_RR_OP( 110 , kstsa16, 0x00000678, 0x00000000, 0x00000678, 440); 
TEST_RR_OP( 111 , kstsa16, 0x7fff8000, 0xffffffff, 0x80008000, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , kstsa16, 0x0000fffe, 0x0000ffff, 0x0000ffff, 460); 
TEST_RR_OP( 116 , kstsa16, 0x8000c7a0, 0x80008000, 0x1c9447a0, 464); 
TEST_CASE( 117 ,468, x14, 1, rdov x14;);
TEST_CASE( 118 ,472, x14, 1, clrov;);
TEST_CASE( 119 ,476, x14, 0, rdov x14;);
TEST_RR_OP( 120 , kstsa16, 0x7fff8000, 0xffffa81c, 0x80008000, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_RR_OP( 124 , kstsa16, 0x80000000, 0x80000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kstsa16, 0x0000b105, 0x00000000, 0x0000b105, 500); 
TEST_RR_OP( 126 , kstsa16, 0x0000f2d4, 0x0000f2d5, 0x0000ffff, 504); 
TEST_RR_OP( 127 , kstsa16, 0xd8468000, 0xf70a8000, 0x1ec40000, 508); 
TEST_RR_OP( 128 , kstsa16, 0x80000000, 0x80000000, 0x00000000, 512); 
TEST_RR_OP( 129 , kstsa16, 0x7fff29e9, 0x000029e9, 0x80000000, 516); 
TEST_CASE( 130 ,520, x14, 1, rdov x14;);
TEST_CASE( 131 ,524, x14, 1, clrov;);
TEST_CASE( 132 ,528, x14, 0, rdov x14;);
TEST_RR_OP( 133 , kstsa16, 0x00008000, 0x00008000, 0x00000000, 532); 
TEST_RR_OP( 134 , kstsa16, 0x7fff8455, 0x00008455, 0x80000000, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , kstsa16, 0xe0a5ffff, 0x0000ffff, 0x1f5b0000, 552); 
TEST_RR_OP( 139 , kstsa16, 0x7fff8000, 0x0000dd0b, 0x80008000, 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_RR_OP( 143 , kstsa16, 0x0000fffe, 0x0000ffff, 0x0000ffff, 572); 
TEST_RR_OP( 144 , kstsa16, 0xcd7c9f98, 0xcd7bffff, 0xffff9f99, 576); 
TEST_RR_OP( 145 , kstsa16, 0x800066b5, 0x8000ffff, 0x000066b6, 580); 
TEST_RR_OP( 146 , kstsa16, 0x80000000, 0xbbf10000, 0x589e0000, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , kstsa16, 0x8d191bf0, 0x8d180000, 0xffff1bf0, 600); 
TEST_RR_OP( 151 , kstsa16, 0x00008000, 0xffff8000, 0xffff8000, 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_RR_OP( 155 , kstsa16, 0x00008000, 0x80008000, 0x80000000, 620); 
TEST_RR_OP( 156 , kstsa16, 0x80016cec, 0x8000ffff, 0xffff6ced, 624); 
TEST_RR_OP( 157 , kstsa16, 0x80005078, 0x80000000, 0x00005078, 628); 
TEST_RR_OP( 158 , kstsa16, 0x58f49eb2, 0x58f31eb2, 0xffff8000, 632); 
TEST_RR_OP( 159 , kstsa16, 0x8f370000, 0x8f360000, 0xffff0000, 636); 
TEST_RR_OP( 160 , kstsa16, 0x68b0ffff, 0x68af0000, 0xffffffff, 640); 
TEST_RR_OP( 161 , kstsa16, 0x7fff8000, 0x00008000, 0x8000ffff, 644); 
TEST_CASE( 162 ,648, x14, 1, rdov x14;);
TEST_CASE( 163 ,652, x14, 1, clrov;);
TEST_CASE( 164 ,656, x14, 0, rdov x14;);
TEST_RR_OP( 165 , kstsa16, 0x80008000, 0x80008000, 0x4bdbffff, 660); 
TEST_CASE( 166 ,664, x14, 1, rdov x14;);
TEST_CASE( 167 ,668, x14, 1, clrov;);
TEST_CASE( 168 ,672, x14, 0, rdov x14;);
TEST_RR_OP( 169 , kstsa16, 0x0000da8a, 0x00003a97, 0x00009ff3, 676); 
TEST_RR_OP( 170 , kstsa16, 0x8000bf55, 0x8000bf56, 0x0000ffff, 680); 
TEST_RR_OP( 171 , kstsa16, 0x80008000, 0x8000ffff, 0x00008000, 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_RR_OP( 175 , kstsa16, 0x000138df, 0x000017d1, 0xffff210e, 700); 
TEST_RR_OP( 176 , kstsa16, 0x8001ce06, 0x80000000, 0xffffce06, 704); 
TEST_RR_OP( 177 , kstsa16, 0x80008000, 0x8000ffff, 0x00008000, 708); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_RR_OP( 181 , kstsa16, 0xc1c4ebe1, 0x00008afd, 0x3e3c60e4, 724); 
TEST_RR_OP( 182 , kstsa16, 0x809f9c61, 0x00001c61, 0x7f618000, 728); 
TEST_RR_OP( 183 , kstsa16, 0x0b910000, 0x00000000, 0xf46f0000, 732); 
TEST_RR_OP( 184 , kstsa16, 0x0001880e, 0x0000080e, 0xffff8000, 736); 
TEST_RR_OP( 185 , kstsa16, 0x0000fffe, 0x0000ffff, 0x0000ffff, 740); 
TEST_RR_OP( 186 , kstsa16, 0x00000000, 0x00000000, 0x00000000, 744); 
TEST_RR_OP( 187 , kstsa16, 0xe7bf99b5, 0xe7bfffff, 0x000099b6, 748); 
TEST_RR_OP( 188 , kstsa16, 0x480b6926, 0x480affff, 0xffff6927, 752); 
TEST_RR_OP( 189 , kstsa16, 0x0000be96, 0xffff3e96, 0xffff8000, 756); 
TEST_RR_OP( 190 , kstsa16, 0xce1b0000, 0xce1a0000, 0xffff0000, 760); 
TEST_RR_OP( 191 , kstsa16, 0x80018000, 0x80008000, 0xffff8000, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , kstsa16, 0x13018000, 0xfb9d8000, 0xe89c0000, 780); 
TEST_RR_OP( 196 , kstsa16, 0x26d60000, 0x32120000, 0x0b3c0000, 784); 
TEST_RR_OP( 197 , kstsa16, 0x7fff8000, 0x16b28000, 0x8000ffff, 788); 
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
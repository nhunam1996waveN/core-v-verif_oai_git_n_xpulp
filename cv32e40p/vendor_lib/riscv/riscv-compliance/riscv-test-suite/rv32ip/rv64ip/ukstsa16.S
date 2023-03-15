# See LICENSE for license details.
#*****************************************************************************
# ukstsa16.S
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

TEST_RR_OP( 2 , ukstsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , ukstsa16, 0x80008000, 0x80008000, 0x00000000, 24); 
TEST_RR_OP( 7 , ukstsa16, 0x00000000, 0x80000000, 0x80000000, 28); 
TEST_RR_OP( 8 , ukstsa16, 0x0000ffff, 0x0000e5b3, 0xffffe01b, 32); 
TEST_CASE( 9 ,36, x14, 1, rdov x14;);
TEST_CASE( 10 ,40, x14, 1, clrov;);
TEST_CASE( 11 ,44, x14, 0, rdov x14;);
TEST_RR_OP( 12 , ukstsa16, 0x0000ffff, 0x8000ffff, 0xffff8000, 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_RR_OP( 16 , ukstsa16, 0x00002fa6, 0x00000000, 0xf1542fa6, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , ukstsa16, 0x0000ffff, 0x0000ef3e, 0x56468000, 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 24 , ukstsa16, 0x0000ffff, 0xffff0000, 0xffffffff, 96); 
TEST_RR_OP( 25 , ukstsa16, 0x0000ffff, 0x1f5effff, 0x79d08000, 100); 
TEST_CASE( 26 ,104, x14, 1, rdov x14;);
TEST_CASE( 27 ,108, x14, 1, clrov;);
TEST_CASE( 28 ,112, x14, 0, rdov x14;);
TEST_RR_OP( 29 , ukstsa16, 0x7fff8d04, 0xffff3a1f, 0x800052e5, 116); 
TEST_RR_OP( 30 , ukstsa16, 0x0000ffff, 0x8000ffff, 0xffff8000, 120); 
TEST_CASE( 31 ,124, x14, 1, rdov x14;);
TEST_CASE( 32 ,128, x14, 1, clrov;);
TEST_CASE( 33 ,132, x14, 0, rdov x14;);
TEST_RR_OP( 34 , ukstsa16, 0x0000ffff, 0x0000ffff, 0x80008000, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_RR_OP( 38 , ukstsa16, 0x4c510000, 0x80000000, 0x33af0000, 152); 
TEST_RR_OP( 39 , ukstsa16, 0x7fff0000, 0xffff0000, 0x80000000, 156); 
TEST_RR_OP( 40 , ukstsa16, 0x80000000, 0x80000000, 0x00000000, 160); 
TEST_RR_OP( 41 , ukstsa16, 0x0000ffff, 0xd4f6ffff, 0xffffffff, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , ukstsa16, 0x0000ffff, 0x29120000, 0x770fffff, 180); 
TEST_CASE( 46 ,184, x14, 1, rdov x14;);
TEST_CASE( 47 ,188, x14, 1, clrov;);
TEST_CASE( 48 ,192, x14, 0, rdov x14;);
TEST_RR_OP( 49 , ukstsa16, 0x0000ffff, 0x8000ffff, 0xffff8fce, 196); 
TEST_CASE( 50 ,200, x14, 1, rdov x14;);
TEST_CASE( 51 ,204, x14, 1, clrov;);
TEST_CASE( 52 ,208, x14, 0, rdov x14;);
TEST_RR_OP( 53 , ukstsa16, 0x6fde8000, 0xefde8000, 0x80000000, 212); 
TEST_RR_OP( 54 , ukstsa16, 0xd19a9057, 0xffff8000, 0x2e651057, 216); 
TEST_RR_OP( 55 , ukstsa16, 0x7fffffff, 0xffff8000, 0x80008000, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_RR_OP( 59 , ukstsa16, 0x6784d616, 0x67840000, 0x0000d616, 236); 
TEST_RR_OP( 60 , ukstsa16, 0x5ebaffff, 0x8000ffff, 0x21468000, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , ukstsa16, 0x0000ffff, 0x80008000, 0x8000ffff, 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_RR_OP( 68 , ukstsa16, 0x0000ffff, 0x80008000, 0xffffffff, 272); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_RR_OP( 72 , ukstsa16, 0x7fff8000, 0xffff0000, 0x80008000, 288); 
TEST_RR_OP( 73 , ukstsa16, 0x0000ffff, 0x8000ffff, 0x8fec8000, 292); 
TEST_CASE( 74 ,296, x14, 1, rdov x14;);
TEST_CASE( 75 ,300, x14, 1, clrov;);
TEST_CASE( 76 ,304, x14, 0, rdov x14;);
TEST_RR_OP( 77 , ukstsa16, 0x000012ad, 0x80000000, 0xffff12ad, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , ukstsa16, 0x7fffffff, 0xffff0000, 0x8000ffff, 324); 
TEST_RR_OP( 82 , ukstsa16, 0x7fffb512, 0xffff3512, 0x80008000, 328); 
TEST_RR_OP( 83 , ukstsa16, 0xffffffff, 0xffffffff, 0x00000000, 332); 
TEST_RR_OP( 84 , ukstsa16, 0xb7ee8000, 0xffff8000, 0x48110000, 336); 
TEST_RR_OP( 85 , ukstsa16, 0x93547f8f, 0xffff7f8f, 0x6cab0000, 340); 
TEST_RR_OP( 86 , ukstsa16, 0x0000ffff, 0x0000f033, 0x9576eecf, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , ukstsa16, 0x0000fd63, 0x80007d63, 0xc69d8000, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , ukstsa16, 0x00000000, 0x80000000, 0x80000000, 376); 
TEST_RR_OP( 95 , ukstsa16, 0x2fdcffff, 0x8000ffff, 0x50240000, 380); 
TEST_RR_OP( 96 , ukstsa16, 0x00000000, 0xffff0000, 0xffff0000, 384); 
TEST_RR_OP( 97 , ukstsa16, 0x0000ffff, 0x567a6c58, 0x8000ffff, 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_RR_OP( 101 , ukstsa16, 0x0000ec87, 0x8000103a, 0x8cbedc4d, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , ukstsa16, 0x0000ffff, 0x8000ffff, 0x80008000, 420); 
TEST_CASE( 106 ,424, x14, 1, rdov x14;);
TEST_CASE( 107 ,428, x14, 1, clrov;);
TEST_CASE( 108 ,432, x14, 0, rdov x14;);
TEST_RR_OP( 109 , ukstsa16, 0x91d0ffff, 0x91d0ffff, 0x00000000, 436); 
TEST_RR_OP( 110 , ukstsa16, 0x0000f00e, 0xfffff00e, 0xffff0000, 440); 
TEST_RR_OP( 111 , ukstsa16, 0x00000000, 0x80000000, 0xc58f0000, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , ukstsa16, 0x7fffffff, 0xffffffff, 0x80008000, 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_RR_OP( 119 , ukstsa16, 0x8000ffff, 0x80000000, 0x0000ffff, 476); 
TEST_RR_OP( 120 , ukstsa16, 0x0000ffff, 0xfcdc8000, 0xffff8000, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_RR_OP( 124 , ukstsa16, 0x0000ffff, 0x80008000, 0x80008000, 496); 
TEST_CASE( 125 ,500, x14, 1, rdov x14;);
TEST_CASE( 126 ,504, x14, 1, clrov;);
TEST_CASE( 127 ,508, x14, 0, rdov x14;);
TEST_RR_OP( 128 , ukstsa16, 0x5151ffff, 0xd151ffff, 0x80000000, 512); 
TEST_RR_OP( 129 , ukstsa16, 0x8000ffff, 0x80009fa9, 0x0000ffff, 516); 
TEST_CASE( 130 ,520, x14, 1, rdov x14;);
TEST_CASE( 131 ,524, x14, 1, clrov;);
TEST_CASE( 132 ,528, x14, 0, rdov x14;);
TEST_RR_OP( 133 , ukstsa16, 0x0000ffff, 0x0000ffff, 0x7b3dd5cc, 532); 
TEST_CASE( 134 ,536, x14, 1, rdov x14;);
TEST_CASE( 135 ,540, x14, 1, clrov;);
TEST_CASE( 136 ,544, x14, 0, rdov x14;);
TEST_RR_OP( 137 , ukstsa16, 0xc7a2ffff, 0xffffffff, 0x385d8000, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_RR_OP( 141 , ukstsa16, 0x94528000, 0xffff0000, 0x6bad8000, 564); 
TEST_RR_OP( 142 , ukstsa16, 0x8d04ffff, 0x8d048000, 0x0000a1b2, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , ukstsa16, 0x00000000, 0x00000000, 0x80000000, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , ukstsa16, 0x0e7b6a14, 0x0e7b0000, 0x00006a14, 600); 
TEST_RR_OP( 151 , ukstsa16, 0x00006bd9, 0x00006bd9, 0x00000000, 604); 
TEST_RR_OP( 152 , ukstsa16, 0xbb00ffff, 0xbb008000, 0x0000afb2, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , ukstsa16, 0xffffca16, 0xffff0000, 0x0000ca16, 624); 
TEST_RR_OP( 157 , ukstsa16, 0x2812d522, 0x28125522, 0x00008000, 628); 
TEST_RR_OP( 158 , ukstsa16, 0x7fffffff, 0xffffffff, 0x8000ffff, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , ukstsa16, 0x0000ffff, 0x58838000, 0xffff8000, 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_RR_OP( 166 , ukstsa16, 0x0000f04a, 0x8000f04a, 0xffff0000, 664); 
TEST_CASE( 167 ,668, x14, 1, rdov x14;);
TEST_CASE( 168 ,672, x14, 1, clrov;);
TEST_CASE( 169 ,676, x14, 0, rdov x14;);
TEST_RR_OP( 170 , ukstsa16, 0x0000d8f2, 0x00000000, 0xe958d8f2, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_RR_OP( 174 , ukstsa16, 0x118cffff, 0x118c8000, 0x0000ffff, 696); 
TEST_CASE( 175 ,700, x14, 1, rdov x14;);
TEST_CASE( 176 ,704, x14, 1, clrov;);
TEST_CASE( 177 ,708, x14, 0, rdov x14;);
TEST_RR_OP( 178 , ukstsa16, 0x0000ffff, 0x0000ea07, 0x00008000, 712); 
TEST_CASE( 179 ,716, x14, 1, rdov x14;);
TEST_CASE( 180 ,720, x14, 1, clrov;);
TEST_CASE( 181 ,724, x14, 0, rdov x14;);
TEST_RR_OP( 182 , ukstsa16, 0x0000ffff, 0x123affff, 0x8000ffff, 728); 
TEST_CASE( 183 ,732, x14, 1, rdov x14;);
TEST_CASE( 184 ,736, x14, 1, clrov;);
TEST_CASE( 185 ,740, x14, 0, rdov x14;);
TEST_RR_OP( 186 , ukstsa16, 0x0000ffff, 0x8000ffff, 0xffff8000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , ukstsa16, 0xb7b5ffff, 0xffffffff, 0x484a8000, 760); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_RR_OP( 194 , ukstsa16, 0x0000ffff, 0x8000be58, 0xffff6615, 776); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_RR_OP( 198 , ukstsa16, 0x0000ffff, 0x00008000, 0x00008000, 792); 
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
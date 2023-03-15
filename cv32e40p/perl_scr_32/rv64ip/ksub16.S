# See LICENSE for license details.
#*****************************************************************************
# ksub16.S
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

TEST_RR_OP( 2 , ksub16, 0xe15e8000, 0xe15d8000, 0xffff0000, 8); 
TEST_RR_OP( 3 , ksub16, 0x8001ffff, 0x8000ffff, 0xffff0000, 12); 
TEST_RR_OP( 4 , ksub16, 0x77f9ffff, 0x77f9ffff, 0x00000000, 16); 
TEST_RR_OP( 5 , ksub16, 0xb0e469a2, 0x800069a1, 0xcf1cffff, 20); 
TEST_RR_OP( 6 , ksub16, 0x8f8a8000, 0xdd418000, 0x4db70000, 24); 
TEST_RR_OP( 7 , ksub16, 0x67e68001, 0x67e58000, 0xffffffff, 28); 
TEST_RR_OP( 8 , ksub16, 0x7fff8000, 0x00008000, 0x80006098, 32); 
TEST_CASE( 9 ,36, x14, 1, rdov x14;);
TEST_CASE( 10 ,40, x14, 1, clrov;);
TEST_CASE( 11 ,44, x14, 0, rdov x14;);
TEST_RR_OP( 12 , ksub16, 0x7fff8001, 0x00008000, 0x8000ffff, 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_RR_OP( 16 , ksub16, 0x4ca359a8, 0x4ca359a7, 0x0000ffff, 64); 
TEST_RR_OP( 17 , ksub16, 0x0001c312, 0x0000ffff, 0xffff3ced, 68); 
TEST_RR_OP( 18 , ksub16, 0x7fff0000, 0xffffffff, 0x8000ffff, 72); 
TEST_RR_OP( 19 , ksub16, 0x9e6e0001, 0xffff0000, 0x6191ffff, 76); 
TEST_RR_OP( 20 , ksub16, 0x8001ffff, 0x8000ffff, 0xffff0000, 80); 
TEST_RR_OP( 21 , ksub16, 0x23938000, 0xdf688000, 0xbbd572e8, 84); 
TEST_CASE( 22 ,88, x14, 1, rdov x14;);
TEST_CASE( 23 ,92, x14, 1, clrov;);
TEST_CASE( 24 ,96, x14, 0, rdov x14;);
TEST_RR_OP( 25 , ksub16, 0x00010000, 0x00000000, 0xffff0000, 100); 
TEST_RR_OP( 26 , ksub16, 0xcd008000, 0xccff8000, 0xffff0000, 104); 
TEST_RR_OP( 27 , ksub16, 0xffff7fff, 0xffffffff, 0x00008000, 108); 
TEST_RR_OP( 28 , ksub16, 0x80000000, 0x8000ffff, 0x34dcffff, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_RR_OP( 32 , ksub16, 0x93c07fff, 0xffff7863, 0x6c3f8000, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , ksub16, 0xaffc33d1, 0x80000000, 0xd004cc2f, 144); 
TEST_RR_OP( 37 , ksub16, 0x80007fff, 0x80000000, 0x18df8000, 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_RR_OP( 41 , ksub16, 0xffffd21c, 0xffff0000, 0x00002de4, 164); 
TEST_RR_OP( 42 , ksub16, 0xffffa2e0, 0xffff8000, 0x0000dd20, 168); 
TEST_RR_OP( 43 , ksub16, 0x52d30000, 0x52d2ffff, 0xffffffff, 172); 
TEST_RR_OP( 44 , ksub16, 0x78ad8000, 0xffff8000, 0x8752435f, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , ksub16, 0x80007fff, 0x8000ffff, 0x59788000, 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_RR_OP( 52 , ksub16, 0x00002049, 0x00002ab8, 0x00000a6f, 208); 
TEST_RR_OP( 53 , ksub16, 0x8df39dd2, 0xffff9dd2, 0x720c0000, 212); 
TEST_RR_OP( 54 , ksub16, 0x00008000, 0x00008000, 0x00000000, 216); 
TEST_RR_OP( 55 , ksub16, 0x80007fff, 0x80000000, 0x1cd28000, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_RR_OP( 59 , ksub16, 0x80000001, 0x80000000, 0x0000ffff, 236); 
TEST_RR_OP( 60 , ksub16, 0x3fbd0db9, 0x3fbc0000, 0xfffff247, 240); 
TEST_RR_OP( 61 , ksub16, 0x3bd37fff, 0xffff6411, 0xc42c8000, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , ksub16, 0x21930000, 0x7b510000, 0x59be0000, 260); 
TEST_RR_OP( 66 , ksub16, 0x7fffabbf, 0x2e87bbe4, 0x80001025, 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_RR_OP( 70 , ksub16, 0x7fff0e10, 0x54d80000, 0x8000f1f0, 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_RR_OP( 74 , ksub16, 0x4d410000, 0x00008000, 0xb2bf8000, 296); 
TEST_RR_OP( 75 , ksub16, 0x7dbf0000, 0x00000000, 0x82410000, 300); 
TEST_RR_OP( 76 , ksub16, 0x4e5e8000, 0x4e5e8000, 0x00004719, 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_RR_OP( 80 , ksub16, 0x7fff8000, 0x00008000, 0x80000000, 320); 
TEST_CASE( 81 ,324, x14, 1, rdov x14;);
TEST_CASE( 82 ,328, x14, 1, clrov;);
TEST_CASE( 83 ,332, x14, 0, rdov x14;);
TEST_RR_OP( 84 , ksub16, 0xe8fc0000, 0x80008000, 0x97048000, 336); 
TEST_RR_OP( 85 , ksub16, 0x80012dfc, 0x8000adfc, 0xffff8000, 340); 
TEST_RR_OP( 86 , ksub16, 0x4fdd47db, 0x000047db, 0xb0230000, 344); 
TEST_RR_OP( 87 , ksub16, 0x00008000, 0xffff8000, 0xffff0000, 348); 
TEST_RR_OP( 88 , ksub16, 0x7f767fff, 0xffff0000, 0x80898000, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_RR_OP( 92 , ksub16, 0x800070bb, 0x800062ca, 0x0000f20f, 368); 
TEST_RR_OP( 93 , ksub16, 0x8001d996, 0x80000000, 0xffff266a, 372); 
TEST_RR_OP( 94 , ksub16, 0x9d477fff, 0x8000ffff, 0xe2b98000, 376); 
TEST_RR_OP( 95 , ksub16, 0xbfde0000, 0xaef80000, 0xef1a0000, 380); 
TEST_RR_OP( 96 , ksub16, 0x0001d63d, 0x0000ffff, 0xffff29c2, 384); 
TEST_RR_OP( 97 , ksub16, 0x8001b6fb, 0x80008000, 0xffffc905, 388); 
TEST_RR_OP( 98 , ksub16, 0xee37d15f, 0xffff8000, 0x11c8aea1, 392); 
TEST_RR_OP( 99 , ksub16, 0x9b610000, 0x80000000, 0xe49f0000, 396); 
TEST_RR_OP( 100 , ksub16, 0xee6c0000, 0x00000000, 0x11940000, 400); 
TEST_RR_OP( 101 , ksub16, 0x7fff7fff, 0x00000000, 0x80008000, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , ksub16, 0x09e67fff, 0x09e6ffff, 0x00008000, 420); 
TEST_RR_OP( 106 , ksub16, 0xffff7fff, 0xffff0000, 0x00008000, 424); 
TEST_CASE( 107 ,428, x14, 1, rdov x14;);
TEST_CASE( 108 ,432, x14, 1, clrov;);
TEST_CASE( 109 ,436, x14, 0, rdov x14;);
TEST_RR_OP( 110 , ksub16, 0x80018b23, 0x8000dbdb, 0xffff50b8, 440); 
TEST_RR_OP( 111 , ksub16, 0x00007fff, 0xffff0000, 0xffff8000, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , ksub16, 0x3987236c, 0x3986a36c, 0xffff8000, 460); 
TEST_RR_OP( 116 , ksub16, 0xe79c7fff, 0x0000ffff, 0x18648000, 464); 
TEST_RR_OP( 117 , ksub16, 0x713931c7, 0x000031c6, 0x8ec7ffff, 468); 
TEST_RR_OP( 118 , ksub16, 0x7fffffbf, 0x0000ffbf, 0x80000000, 472); 
TEST_CASE( 119 ,476, x14, 1, rdov x14;);
TEST_CASE( 120 ,480, x14, 1, clrov;);
TEST_CASE( 121 ,484, x14, 0, rdov x14;);
TEST_RR_OP( 122 , ksub16, 0xc6be0000, 0x80000000, 0xb9420000, 488); 
TEST_RR_OP( 123 , ksub16, 0x0cd5de05, 0x8cd5de04, 0x8000ffff, 492); 
TEST_RR_OP( 124 , ksub16, 0x80000001, 0x80000000, 0x0000ffff, 496); 
TEST_RR_OP( 125 , ksub16, 0x8000fd7d, 0x8000fd7c, 0x166fffff, 500); 
TEST_CASE( 126 ,504, x14, 1, rdov x14;);
TEST_CASE( 127 ,508, x14, 1, clrov;);
TEST_CASE( 128 ,512, x14, 0, rdov x14;);
TEST_RR_OP( 129 , ksub16, 0x8000ffff, 0x8000ffff, 0x00000000, 516); 
TEST_RR_OP( 130 , ksub16, 0x80000001, 0x80000000, 0x68c9ffff, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , ksub16, 0x80017fff, 0x80006ba5, 0xffff8000, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , ksub16, 0x5c50b3ff, 0x5c50b3fe, 0x0000ffff, 552); 
TEST_RR_OP( 139 , ksub16, 0xe1139262, 0xe113abbe, 0x0000195c, 556); 
TEST_RR_OP( 140 , ksub16, 0x35e92632, 0x35e92631, 0x0000ffff, 560); 
TEST_RR_OP( 141 , ksub16, 0x99798000, 0x8000aaba, 0xe68771c0, 564); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_RR_OP( 145 , ksub16, 0x00007fff, 0x00000000, 0x00008000, 580); 
TEST_CASE( 146 ,584, x14, 1, rdov x14;);
TEST_CASE( 147 ,588, x14, 1, clrov;);
TEST_CASE( 148 ,592, x14, 0, rdov x14;);
TEST_RR_OP( 149 , ksub16, 0x418effff, 0x418effff, 0x00000000, 596); 
TEST_RR_OP( 150 , ksub16, 0x00006fbd, 0x8000ffff, 0x80009042, 600); 
TEST_RR_OP( 151 , ksub16, 0x0000ffff, 0xffffffff, 0xffff0000, 604); 
TEST_RR_OP( 152 , ksub16, 0x5b453a8c, 0x5b45ba8c, 0x00008000, 608); 
TEST_RR_OP( 153 , ksub16, 0x80018b5d, 0x80008b5d, 0xffff0000, 612); 
TEST_RR_OP( 154 , ksub16, 0x7fffb101, 0xffffb101, 0x80000000, 616); 
TEST_RR_OP( 155 , ksub16, 0x7fff0001, 0xffff0000, 0x8000ffff, 620); 
TEST_RR_OP( 156 , ksub16, 0x0f5c0000, 0xffff8000, 0xf0a38000, 624); 
TEST_RR_OP( 157 , ksub16, 0xf0920000, 0xffffffff, 0x0f6dffff, 628); 
TEST_RR_OP( 158 , ksub16, 0x7fff7fff, 0x00000000, 0x80008000, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , ksub16, 0x7fff63b9, 0x000063b9, 0x80000000, 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_RR_OP( 166 , ksub16, 0x00005392, 0x00005391, 0x0000ffff, 664); 
TEST_RR_OP( 167 , ksub16, 0x16397fff, 0x0000ffff, 0xe9c78000, 668); 
TEST_RR_OP( 168 , ksub16, 0x80012526, 0x80000000, 0xffffdada, 672); 
TEST_RR_OP( 169 , ksub16, 0xf7f00000, 0x80000000, 0x88100000, 676); 
TEST_RR_OP( 170 , ksub16, 0x8000dda6, 0x800046b7, 0x00006911, 680); 
TEST_RR_OP( 171 , ksub16, 0x80000000, 0x80000000, 0x00000000, 684); 
TEST_RR_OP( 172 , ksub16, 0x80018000, 0x80008000, 0xffff0000, 688); 
TEST_RR_OP( 173 , ksub16, 0x00008001, 0xffff8000, 0xffffffff, 692); 
TEST_RR_OP( 174 , ksub16, 0x80000001, 0x80000000, 0x0000ffff, 696); 
TEST_RR_OP( 175 , ksub16, 0xffff8001, 0xffff8000, 0x0000ffff, 700); 
TEST_RR_OP( 176 , ksub16, 0x00007fff, 0x8000ffff, 0x80008000, 704); 
TEST_RR_OP( 177 , ksub16, 0xcb0e8001, 0xcb0d8000, 0xffffffff, 708); 
TEST_RR_OP( 178 , ksub16, 0x7fff0000, 0x00000000, 0x80000000, 712); 
TEST_CASE( 179 ,716, x14, 1, rdov x14;);
TEST_CASE( 180 ,720, x14, 1, clrov;);
TEST_CASE( 181 ,724, x14, 0, rdov x14;);
TEST_RR_OP( 182 , ksub16, 0x00010000, 0x00000000, 0xffff0000, 728); 
TEST_RR_OP( 183 , ksub16, 0x49c148e7, 0xffff0000, 0xb63eb719, 732); 
TEST_RR_OP( 184 , ksub16, 0x0000d1e7, 0x0000d1e6, 0x0000ffff, 736); 
TEST_RR_OP( 185 , ksub16, 0xa4340000, 0x8000ffff, 0xdbccffff, 740); 
TEST_RR_OP( 186 , ksub16, 0x7fff7f01, 0x0000ff01, 0x80008000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , ksub16, 0x77dc0001, 0xf7dc0000, 0x8000ffff, 760); 
TEST_RR_OP( 191 , ksub16, 0x80013336, 0x80003335, 0xffffffff, 764); 
TEST_RR_OP( 192 , ksub16, 0x87a25027, 0x00005026, 0x785effff, 768); 
TEST_RR_OP( 193 , ksub16, 0x80007fff, 0x8000ffff, 0x00008000, 772); 
TEST_RR_OP( 194 , ksub16, 0x80008001, 0x80008000, 0x0000ffff, 776); 
TEST_RR_OP( 195 , ksub16, 0x80008000, 0x80008000, 0x00005ab6, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , ksub16, 0x80006b0b, 0x8000ffff, 0x000094f4, 796); 

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
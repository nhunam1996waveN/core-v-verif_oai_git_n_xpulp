# See LICENSE for license details.
#*****************************************************************************
# ukadd16.S
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

TEST_RR_OP( 2 , ukadd16, 0x80008000, 0x80000000, 0x00008000, 8); 
TEST_RR_OP( 3 , ukadd16, 0xffffffff, 0xffff8000, 0xca3fffff, 12); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_RR_OP( 7 , ukadd16, 0xffffffff, 0xffffffff, 0x8000eb90, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_RR_OP( 11 , ukadd16, 0xffffffff, 0x8000ffff, 0x89e5ea51, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_RR_OP( 15 , ukadd16, 0xfb420a48, 0xfb420000, 0x00000a48, 60); 
TEST_RR_OP( 16 , ukadd16, 0xff45ffff, 0x0000d43c, 0xff458000, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , ukadd16, 0xffffffff, 0xffff71e0, 0xffffffff, 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 24 , ukadd16, 0xffffc2a4, 0x0000345c, 0xffff8e48, 96); 
TEST_RR_OP( 25 , ukadd16, 0x0000acb5, 0x00000000, 0x0000acb5, 100); 
TEST_RR_OP( 26 , ukadd16, 0xffffffff, 0x800890bb, 0xba588000, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , ukadd16, 0xffff0000, 0x00000000, 0xffff0000, 120); 
TEST_RR_OP( 31 , ukadd16, 0x80008000, 0x80008000, 0x00000000, 124); 
TEST_RR_OP( 32 , ukadd16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , ukadd16, 0xffffffff, 0xd1322b5d, 0x8000ffff, 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_RR_OP( 40 , ukadd16, 0x8000ffff, 0x00008000, 0x80009aad, 160); 
TEST_CASE( 41 ,164, x14, 1, rdov x14;);
TEST_CASE( 42 ,168, x14, 1, clrov;);
TEST_CASE( 43 ,172, x14, 0, rdov x14;);
TEST_RR_OP( 44 , ukadd16, 0xffffffff, 0x6127ffff, 0xffff8000, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , ukadd16, 0xffffffff, 0x28b6ffff, 0xf8f80000, 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_RR_OP( 52 , ukadd16, 0x875dffff, 0x00008000, 0x875d8e1b, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , ukadd16, 0xffffffff, 0xffffffff, 0xffff0000, 224); 
TEST_CASE( 57 ,228, x14, 1, rdov x14;);
TEST_CASE( 58 ,232, x14, 1, clrov;);
TEST_CASE( 59 ,236, x14, 0, rdov x14;);
TEST_RR_OP( 60 , ukadd16, 0xffff8000, 0xffff8000, 0x00000000, 240); 
TEST_RR_OP( 61 , ukadd16, 0xffffffff, 0x80000000, 0xa0edffff, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , ukadd16, 0xffffffff, 0xffffffff, 0x00002778, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , ukadd16, 0xa60dffff, 0x260d0000, 0x8000ffff, 276); 
TEST_RR_OP( 70 , ukadd16, 0xffffffff, 0x0000ffff, 0xffffe28b, 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_RR_OP( 74 , ukadd16, 0xcda8ffff, 0x4da8ffff, 0x80008000, 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_RR_OP( 78 , ukadd16, 0xffffffff, 0xe8bfffff, 0x8000ffff, 312); 
TEST_CASE( 79 ,316, x14, 1, rdov x14;);
TEST_CASE( 80 ,320, x14, 1, clrov;);
TEST_CASE( 81 ,324, x14, 0, rdov x14;);
TEST_RR_OP( 82 , ukadd16, 0xffff8000, 0x00000000, 0xffff8000, 328); 
TEST_RR_OP( 83 , ukadd16, 0xffffffff, 0xffff0000, 0x0000ffff, 332); 
TEST_RR_OP( 84 , ukadd16, 0x76000000, 0x76000000, 0x00000000, 336); 
TEST_RR_OP( 85 , ukadd16, 0x86bcffff, 0x0000ffff, 0x86bc0000, 340); 
TEST_RR_OP( 86 , ukadd16, 0xdddfffff, 0x00008000, 0xdddfffff, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , ukadd16, 0xffffffff, 0x23b2ffff, 0xffff0000, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , ukadd16, 0x0000ffff, 0x00008000, 0x0000ffff, 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_RR_OP( 98 , ukadd16, 0x9d708463, 0x80008463, 0x1d700000, 392); 
TEST_RR_OP( 99 , ukadd16, 0x63a0ffff, 0x00008000, 0x63a08000, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , ukadd16, 0x0000ffff, 0x0000ffff, 0x000042d9, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , ukadd16, 0xffffffff, 0x000091bc, 0xffff8000, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , ukadd16, 0xffff8000, 0x80008000, 0xffff0000, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , ukadd16, 0xffff8000, 0xffff8000, 0x00000000, 460); 
TEST_RR_OP( 116 , ukadd16, 0xffff8000, 0xffff8000, 0x00000000, 464); 
TEST_RR_OP( 117 , ukadd16, 0x8000ffff, 0x0000ffff, 0x8000ffff, 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_RR_OP( 121 , ukadd16, 0x80000000, 0x80000000, 0x00000000, 484); 
TEST_RR_OP( 122 , ukadd16, 0xffffffff, 0x63eb6f2c, 0xffffb415, 488); 
TEST_CASE( 123 ,492, x14, 1, rdov x14;);
TEST_CASE( 124 ,496, x14, 1, clrov;);
TEST_CASE( 125 ,500, x14, 0, rdov x14;);
TEST_RR_OP( 126 , ukadd16, 0xffff66ba, 0xffff66ba, 0x99fa0000, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_RR_OP( 130 , ukadd16, 0xffffffff, 0xffffffff, 0xffff2517, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , ukadd16, 0xffffffff, 0xffffffff, 0x8000c5c4, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , ukadd16, 0x0d6fffff, 0x0d6fffff, 0x00000000, 552); 
TEST_RR_OP( 139 , ukadd16, 0xffffffff, 0xffff8000, 0x0000ef6c, 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_RR_OP( 143 , ukadd16, 0xffff8000, 0x80000000, 0xffff8000, 572); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_RR_OP( 147 , ukadd16, 0xffffb8c1, 0x00008000, 0xffff38c1, 588); 
TEST_RR_OP( 148 , ukadd16, 0x80008000, 0x00008000, 0x80000000, 592); 
TEST_RR_OP( 149 , ukadd16, 0x8000d6b8, 0x8000af62, 0x00002756, 596); 
TEST_RR_OP( 150 , ukadd16, 0x8000ffff, 0x8000ffff, 0x0000767a, 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_RR_OP( 154 , ukadd16, 0xffffffff, 0x8000ffff, 0xffffffff, 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_RR_OP( 158 , ukadd16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , ukadd16, 0xffffffff, 0xffffb089, 0x00008000, 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_RR_OP( 166 , ukadd16, 0x0000ffff, 0x00000000, 0x0000ffff, 664); 
TEST_RR_OP( 167 , ukadd16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_RR_OP( 171 , ukadd16, 0xffff58fe, 0x000058fe, 0xffff0000, 684); 
TEST_RR_OP( 172 , ukadd16, 0xffffffff, 0xffff0000, 0x0000ffff, 688); 
TEST_RR_OP( 173 , ukadd16, 0xa1ddffff, 0x21ddffff, 0x80003360, 692); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_RR_OP( 177 , ukadd16, 0xffffffff, 0x6a0a8000, 0x9f99d975, 708); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_RR_OP( 181 , ukadd16, 0x80008000, 0x80008000, 0x00000000, 724); 
TEST_RR_OP( 182 , ukadd16, 0x80000000, 0x80000000, 0x00000000, 728); 
TEST_RR_OP( 183 , ukadd16, 0xffff4971, 0xe6a54971, 0x80000000, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , ukadd16, 0xffffffff, 0xffff0000, 0xffffffff, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , ukadd16, 0xffffffff, 0xffffffff, 0x80000000, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , ukadd16, 0xffffffff, 0xede5bd5e, 0x8000d3d4, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , ukadd16, 0x8000ffff, 0x8000ffff, 0x00000000, 796); 

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
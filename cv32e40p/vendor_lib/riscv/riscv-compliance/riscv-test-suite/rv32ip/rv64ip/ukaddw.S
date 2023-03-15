# See LICENSE for license details.
#*****************************************************************************
# ukaddw.S
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

TEST_RR_OP( 2 , ukaddw, 0x00000000, 0x00000000, 0x00000000, 8); 
TEST_RR_OP( 3 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 12); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_RR_OP( 7 , ukaddw, 0xffffffffffffffff, 0x80000000, 0xae3b79b2, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_RR_OP( 11 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 44); 
TEST_RR_OP( 12 , ukaddw, 0x00000000, 0x00000000, 0x00000000, 48); 
TEST_RR_OP( 13 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 52); 
TEST_RR_OP( 14 , ukaddw, 0xffffffffffffffff, 0x80000000, 0xffffffff, 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_RR_OP( 18 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_RR_OP( 22 , ukaddw, 0xffffffffffffffff, 0xf3cfc6e1, 0x80000000, 88); 
TEST_CASE( 23 ,92, x14, 1, rdov x14;);
TEST_CASE( 24 ,96, x14, 1, clrov;);
TEST_CASE( 25 ,100, x14, 0, rdov x14;);
TEST_RR_OP( 26 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x1e8efdf0, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 120); 
TEST_RR_OP( 31 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0xd160a998, 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_RR_OP( 35 , ukaddw, 0x19715396, 0x05f92291, 0x13783105, 140); 
TEST_RR_OP( 36 , ukaddw, 0xffffffffffffffff, 0x80000000, 0x80000000, 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_RR_OP( 40 , ukaddw, 0xffffffffdf875c77, 0x446db2f8, 0x9b19a97f, 160); 
TEST_RR_OP( 41 , ukaddw, 0xffffffffffffffff, 0x80000000, 0x80000000, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , ukaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 180); 
TEST_RR_OP( 46 , ukaddw, 0xffffffffebda060c, 0xebda060c, 0x00000000, 184); 
TEST_RR_OP( 47 , ukaddw, 0x6a719153, 0x6a719153, 0x00000000, 188); 
TEST_RR_OP( 48 , ukaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 196); 
TEST_RR_OP( 50 , ukaddw, 0xffffffffb1cb6cf8, 0x80000000, 0x31cb6cf8, 200); 
TEST_RR_OP( 51 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0xe4e4cf0e, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_RR_OP( 55 , ukaddw, 0x3af425fa, 0x00000000, 0x3af425fa, 220); 
TEST_RR_OP( 56 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 224); 
TEST_RR_OP( 57 , ukaddw, 0xffffffffffffffff, 0x80000000, 0xffffffff, 228); 
TEST_CASE( 58 ,232, x14, 1, rdov x14;);
TEST_CASE( 59 ,236, x14, 1, clrov;);
TEST_CASE( 60 ,240, x14, 0, rdov x14;);
TEST_RR_OP( 61 , ukaddw, 0x00000000, 0x00000000, 0x00000000, 244); 
TEST_RR_OP( 62 , ukaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 248); 
TEST_RR_OP( 63 , ukaddw, 0x00000000, 0x00000000, 0x00000000, 252); 
TEST_RR_OP( 64 , ukaddw, 0xffffffffffffffff, 0x8eab17c7, 0x80000000, 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_RR_OP( 68 , ukaddw, 0xffffffffffffffff, 0x48e3122c, 0xffffffff, 272); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_RR_OP( 72 , ukaddw, 0xffffffffffffffff, 0x34e8e26f, 0xffffffff, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , ukaddw, 0xffffffff947d8962, 0x3705c550, 0x5d77c412, 304); 
TEST_RR_OP( 77 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 308); 
TEST_RR_OP( 78 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 312); 
TEST_CASE( 79 ,316, x14, 1, rdov x14;);
TEST_CASE( 80 ,320, x14, 1, clrov;);
TEST_CASE( 81 ,324, x14, 0, rdov x14;);
TEST_RR_OP( 82 , ukaddw, 0xffffffffffffffff, 0xf970b1c1, 0x80000000, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 344); 
TEST_RR_OP( 87 , ukaddw, 0xffffffffffffffff, 0x80685f21, 0xffffffff, 348); 
TEST_CASE( 88 ,352, x14, 1, rdov x14;);
TEST_CASE( 89 ,356, x14, 1, clrov;);
TEST_CASE( 90 ,360, x14, 0, rdov x14;);
TEST_RR_OP( 91 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 364); 
TEST_RR_OP( 92 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 368); 
TEST_RR_OP( 93 , ukaddw, 0xffffffffffffffff, 0x80000000, 0x80000000, 372); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_RR_OP( 97 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 388); 
TEST_RR_OP( 98 , ukaddw, 0xffffffffffffffff, 0xeeae0ca8, 0x80000000, 392); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_RR_OP( 102 , ukaddw, 0xffffffff83d4c527, 0x5218ff86, 0x31bbc5a1, 408); 
TEST_RR_OP( 103 , ukaddw, 0xffffffffffffffff, 0x3f1d9528, 0xffffffff, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , ukaddw, 0xffffffffffffffff, 0x80000000, 0xbfa52812, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 444); 
TEST_RR_OP( 112 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 448); 
TEST_RR_OP( 113 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 452); 
TEST_RR_OP( 114 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 456); 
TEST_RR_OP( 115 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x80000000, 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_RR_OP( 119 , ukaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x80000000, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_RR_OP( 124 , ukaddw, 0xffffffffffffffff, 0xf3eb1e58, 0x715b3d3c, 496); 
TEST_CASE( 125 ,500, x14, 1, rdov x14;);
TEST_CASE( 126 ,504, x14, 1, clrov;);
TEST_CASE( 127 ,508, x14, 0, rdov x14;);
TEST_RR_OP( 128 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 512); 
TEST_RR_OP( 129 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 516); 
TEST_RR_OP( 130 , ukaddw, 0xfffffffffe3645f2, 0x00000000, 0xfe3645f2, 520); 
TEST_RR_OP( 131 , ukaddw, 0xffffffffffffffff, 0x80000000, 0x80000000, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , ukaddw, 0xffffffffc160e2bf, 0x80000000, 0x4160e2bf, 540); 
TEST_RR_OP( 136 , ukaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , ukaddw, 0xffffffffffffffff, 0x3d5ea5c6, 0xffffffff, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_RR_OP( 141 , ukaddw, 0xffffffffa94f8440, 0x1774df47, 0x91daa4f9, 564); 
TEST_RR_OP( 142 , ukaddw, 0xffffffffa5770fa9, 0x80000000, 0x25770fa9, 568); 
TEST_RR_OP( 143 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 572); 
TEST_RR_OP( 144 , ukaddw, 0xffffffffa488b1c2, 0x00000000, 0xa488b1c2, 576); 
TEST_RR_OP( 145 , ukaddw, 0xffffffffffffffff, 0xfc9e5045, 0xffffffff, 580); 
TEST_CASE( 146 ,584, x14, 1, rdov x14;);
TEST_CASE( 147 ,588, x14, 1, clrov;);
TEST_CASE( 148 ,592, x14, 0, rdov x14;);
TEST_RR_OP( 149 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x80000000, 596); 
TEST_CASE( 150 ,600, x14, 1, rdov x14;);
TEST_CASE( 151 ,604, x14, 1, clrov;);
TEST_CASE( 152 ,608, x14, 0, rdov x14;);
TEST_RR_OP( 153 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x5d65cb91, 612); 
TEST_CASE( 154 ,616, x14, 1, rdov x14;);
TEST_CASE( 155 ,620, x14, 1, clrov;);
TEST_CASE( 156 ,624, x14, 0, rdov x14;);
TEST_RR_OP( 157 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 628); 
TEST_RR_OP( 158 , ukaddw, 0xffffffffcfc13b32, 0x00000000, 0xcfc13b32, 632); 
TEST_RR_OP( 159 , ukaddw, 0xffffffffffffffff, 0xbc354daa, 0x80000000, 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_RR_OP( 163 , ukaddw, 0xffffffffffffffff, 0x80000000, 0xffffffff, 652); 
TEST_CASE( 164 ,656, x14, 1, rdov x14;);
TEST_CASE( 165 ,660, x14, 1, clrov;);
TEST_CASE( 166 ,664, x14, 0, rdov x14;);
TEST_RR_OP( 167 , ukaddw, 0xffffffffc2f14527, 0x1d1890fc, 0xa5d8b42b, 668); 
TEST_RR_OP( 168 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 672); 
TEST_RR_OP( 169 , ukaddw, 0xffffffffffffffff, 0xb87fdaec, 0xffffffff, 676); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_RR_OP( 173 , ukaddw, 0xffffffffe49d7313, 0xe49d7313, 0x00000000, 692); 
TEST_RR_OP( 174 , ukaddw, 0xffffffffffffffff, 0x80000000, 0x80000000, 696); 
TEST_CASE( 175 ,700, x14, 1, rdov x14;);
TEST_CASE( 176 ,704, x14, 1, clrov;);
TEST_CASE( 177 ,708, x14, 0, rdov x14;);
TEST_RR_OP( 178 , ukaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 712); 
TEST_RR_OP( 179 , ukaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , ukaddw, 0xffffffffffffffff, 0x80000000, 0xf01556e9, 720); 
TEST_CASE( 181 ,724, x14, 1, rdov x14;);
TEST_CASE( 182 ,728, x14, 1, clrov;);
TEST_CASE( 183 ,732, x14, 0, rdov x14;);
TEST_RR_OP( 184 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 736); 
TEST_RR_OP( 185 , ukaddw, 0x00000000, 0x00000000, 0x00000000, 740); 
TEST_RR_OP( 186 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x80000000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 760); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_RR_OP( 194 , ukaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , ukaddw, 0xffffffffffffffff, 0x68b911b7, 0xffffffff, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , ukaddw, 0xffffffffffffffff, 0x80000000, 0xffffffff, 796); 

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
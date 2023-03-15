# See LICENSE for license details.
#*****************************************************************************
# ukmsr64.S
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

TEST_RR_OP64_OO( 2 , ukmsr64, 0x0000000000000000, 0xe886001c, 0x80000000 , 8); 
TEST_CASE( 3 ,16, x14, 1, rdov x14;);
TEST_CASE( 4 ,20, x14, 1, clrov;);
TEST_CASE( 5 ,24, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 6 , ukmsr64, 0x0000000000000000, 0xfd739f91, 0x80000000 , 28); 
TEST_CASE( 7 ,36, x14, 1, rdov x14;);
TEST_CASE( 8 ,40, x14, 1, clrov;);
TEST_CASE( 9 ,44, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 10 , ukmsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 48); 
TEST_RR_OP64_OO( 11 , ukmsr64, 0x0000000000000000, 0xb13fd051, 0x80000000 , 56); 
TEST_CASE( 12 ,64, x14, 1, rdov x14;);
TEST_CASE( 13 ,68, x14, 1, clrov;);
TEST_CASE( 14 ,72, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 15 , ukmsr64, 0x0000000000000000, 0x80000000, 0x80000000 , 76); 
TEST_CASE( 16 ,84, x14, 1, rdov x14;);
TEST_CASE( 17 ,88, x14, 1, clrov;);
TEST_CASE( 18 ,92, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 19 , ukmsr64, 0x0000000000000000, 0x7f47fb3c, 0xffffffff , 96); 
TEST_CASE( 20 ,104, x14, 1, rdov x14;);
TEST_CASE( 21 ,108, x14, 1, clrov;);
TEST_CASE( 22 ,112, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 23 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 116); 
TEST_CASE( 24 ,124, x14, 1, rdov x14;);
TEST_CASE( 25 ,128, x14, 1, clrov;);
TEST_CASE( 26 ,132, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 27 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 136); 
TEST_CASE( 28 ,144, x14, 1, rdov x14;);
TEST_CASE( 29 ,148, x14, 1, clrov;);
TEST_CASE( 30 ,152, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 31 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x132d2763 , 156); 
TEST_CASE( 32 ,164, x14, 1, rdov x14;);
TEST_CASE( 33 ,168, x14, 1, clrov;);
TEST_CASE( 34 ,172, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 35 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x80000000 , 176); 
TEST_CASE( 36 ,184, x14, 1, rdov x14;);
TEST_CASE( 37 ,188, x14, 1, clrov;);
TEST_CASE( 38 ,192, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 39 , ukmsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 196); 
TEST_RR_OP64_OO( 40 , ukmsr64, 0x0000000000000000, 0x80000000, 0xb069d19f , 204); 
TEST_CASE( 41 ,212, x14, 1, rdov x14;);
TEST_CASE( 42 ,216, x14, 1, clrov;);
TEST_CASE( 43 ,220, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 44 , ukmsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 224); 
TEST_RR_OP64_OO( 45 , ukmsr64, 0x0000000000000000, 0x80000000, 0xb9cd6111 , 232); 
TEST_CASE( 46 ,240, x14, 1, rdov x14;);
TEST_CASE( 47 ,244, x14, 1, clrov;);
TEST_CASE( 48 ,248, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 49 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 252); 
TEST_RR_OP64_OO( 50 , ukmsr64, 0x0000000000000000, 0x54d7da20, 0x80000000 , 260); 
TEST_CASE( 51 ,268, x14, 1, rdov x14;);
TEST_CASE( 52 ,272, x14, 1, clrov;);
TEST_CASE( 53 ,276, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 54 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 280); 
TEST_RR_OP64_OO( 55 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 288); 
TEST_CASE( 56 ,296, x14, 1, rdov x14;);
TEST_CASE( 57 ,300, x14, 1, clrov;);
TEST_CASE( 58 ,304, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 59 , ukmsr64, 0x0000000000000000, 0xcb4d441c, 0x80000000 , 308); 
TEST_CASE( 60 ,316, x14, 1, rdov x14;);
TEST_CASE( 61 ,320, x14, 1, clrov;);
TEST_CASE( 62 ,324, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 63 , ukmsr64, 0x0000000000000000, 0x80000000, 0x307f234b , 328); 
TEST_CASE( 64 ,336, x14, 1, rdov x14;);
TEST_CASE( 65 ,340, x14, 1, clrov;);
TEST_CASE( 66 ,344, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 67 , ukmsr64, 0x0000000000000000, 0x80000000, 0x80000000 , 348); 
TEST_CASE( 68 ,356, x14, 1, rdov x14;);
TEST_CASE( 69 ,360, x14, 1, clrov;);
TEST_CASE( 70 ,364, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 71 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 368); 
TEST_RR_OP64_OO( 72 , ukmsr64, 0x0000000000000000, 0x80000000, 0xf8908a86 , 376); 
TEST_CASE( 73 ,384, x14, 1, rdov x14;);
TEST_CASE( 74 ,388, x14, 1, clrov;);
TEST_CASE( 75 ,392, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 76 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 396); 
TEST_CASE( 77 ,404, x14, 1, rdov x14;);
TEST_CASE( 78 ,408, x14, 1, clrov;);
TEST_CASE( 79 ,412, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 80 , ukmsr64, 0x0000000000000000, 0xffffffff, 0xffffffff , 416); 
TEST_CASE( 81 ,424, x14, 1, rdov x14;);
TEST_CASE( 82 ,428, x14, 1, clrov;);
TEST_CASE( 83 ,432, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 84 , ukmsr64, 0x0000000000000000, 0xffffffff, 0xc1a41289 , 436); 
TEST_CASE( 85 ,444, x14, 1, rdov x14;);
TEST_CASE( 86 ,448, x14, 1, clrov;);
TEST_CASE( 87 ,452, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 88 , ukmsr64, 0x0000000000000000, 0x328a1949, 0x00000000 , 456); 
TEST_RR_OP64_OO( 89 , ukmsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 464); 
TEST_RR_OP64_OO( 90 , ukmsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 472); 
TEST_RR_OP64_OO( 91 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 480); 
TEST_CASE( 92 ,488, x14, 1, rdov x14;);
TEST_CASE( 93 ,492, x14, 1, clrov;);
TEST_CASE( 94 ,496, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 95 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 500); 
TEST_CASE( 96 ,508, x14, 1, rdov x14;);
TEST_CASE( 97 ,512, x14, 1, clrov;);
TEST_CASE( 98 ,516, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 99 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 520); 
TEST_CASE( 100 ,528, x14, 1, rdov x14;);
TEST_CASE( 101 ,532, x14, 1, clrov;);
TEST_CASE( 102 ,536, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 103 , ukmsr64, 0x0000000000000000, 0x80000000, 0x80000000 , 540); 
TEST_CASE( 104 ,548, x14, 1, rdov x14;);
TEST_CASE( 105 ,552, x14, 1, clrov;);
TEST_CASE( 106 ,556, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 107 , ukmsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 560); 
TEST_RR_OP64_OO( 108 , ukmsr64, 0x0000000000000000, 0x7b0ac763, 0xffffffff , 568); 
TEST_CASE( 109 ,576, x14, 1, rdov x14;);
TEST_CASE( 110 ,580, x14, 1, clrov;);
TEST_CASE( 111 ,584, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 112 , ukmsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 588); 
TEST_RR_OP64_OO( 113 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x80000000 , 596); 
TEST_CASE( 114 ,604, x14, 1, rdov x14;);
TEST_CASE( 115 ,608, x14, 1, clrov;);
TEST_CASE( 116 ,612, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 117 , ukmsr64, 0x0000000000000000, 0xb1044727, 0x411037d7 , 616); 
TEST_CASE( 118 ,624, x14, 1, rdov x14;);
TEST_CASE( 119 ,628, x14, 1, clrov;);
TEST_CASE( 120 ,632, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 121 , ukmsr64, 0x0000000000000000, 0xb4c8bade, 0xc1ab48c1 , 636); 
TEST_CASE( 122 ,644, x14, 1, rdov x14;);
TEST_CASE( 123 ,648, x14, 1, clrov;);
TEST_CASE( 124 ,652, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 125 , ukmsr64, 0x0000000000000000, 0xdc3ba42c, 0xffffffff , 656); 
TEST_CASE( 126 ,664, x14, 1, rdov x14;);
TEST_CASE( 127 ,668, x14, 1, clrov;);
TEST_CASE( 128 ,672, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 129 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x80000000 , 676); 
TEST_CASE( 130 ,684, x14, 1, rdov x14;);
TEST_CASE( 131 ,688, x14, 1, clrov;);
TEST_CASE( 132 ,692, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 133 , ukmsr64, 0x0000000000000000, 0xffffffff, 0xd7da5105 , 696); 
TEST_CASE( 134 ,704, x14, 1, rdov x14;);
TEST_CASE( 135 ,708, x14, 1, clrov;);
TEST_CASE( 136 ,712, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 137 , ukmsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 716); 
TEST_RR_OP64_OO( 138 , ukmsr64, 0x0000000000000000, 0x898abf91, 0x2922e0e4 , 724); 
TEST_CASE( 139 ,732, x14, 1, rdov x14;);
TEST_CASE( 140 ,736, x14, 1, clrov;);
TEST_CASE( 141 ,740, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 142 , ukmsr64, 0x0000000000000000, 0xffffffff, 0xffffffff , 744); 
TEST_CASE( 143 ,752, x14, 1, rdov x14;);
TEST_CASE( 144 ,756, x14, 1, clrov;);
TEST_CASE( 145 ,760, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 146 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x80000000 , 764); 
TEST_CASE( 147 ,772, x14, 1, rdov x14;);
TEST_CASE( 148 ,776, x14, 1, clrov;);
TEST_CASE( 149 ,780, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 150 , ukmsr64, 0x0000000000000000, 0xc4a52bd6, 0x00000000 , 784); 
TEST_RR_OP64_OO( 151 , ukmsr64, 0x0000000000000000, 0x04758e33, 0x80000000 , 792); 
TEST_CASE( 152 ,800, x14, 1, rdov x14;);
TEST_CASE( 153 ,804, x14, 1, clrov;);
TEST_CASE( 154 ,808, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 155 , ukmsr64, 0x0000000000000000, 0x00000000, 0x00000000 , 812); 
TEST_RR_OP64_OO( 156 , ukmsr64, 0x0000000000000000, 0xffffffff, 0xffffffff , 820); 
TEST_CASE( 157 ,828, x14, 1, rdov x14;);
TEST_CASE( 158 ,832, x14, 1, clrov;);
TEST_CASE( 159 ,836, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 160 , ukmsr64, 0x0000000000000000, 0x0c5ecf64, 0x80000000 , 840); 
TEST_CASE( 161 ,848, x14, 1, rdov x14;);
TEST_CASE( 162 ,852, x14, 1, clrov;);
TEST_CASE( 163 ,856, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 164 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 860); 
TEST_RR_OP64_OO( 165 , ukmsr64, 0x0000000000000000, 0x80000000, 0xffffffff , 868); 
TEST_CASE( 166 ,876, x14, 1, rdov x14;);
TEST_CASE( 167 ,880, x14, 1, clrov;);
TEST_CASE( 168 ,884, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 169 , ukmsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 888); 
TEST_RR_OP64_OO( 170 , ukmsr64, 0x0000000000000000, 0xf664ba5b, 0x80000000 , 896); 
TEST_CASE( 171 ,904, x14, 1, rdov x14;);
TEST_CASE( 172 ,908, x14, 1, clrov;);
TEST_CASE( 173 ,912, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 174 , ukmsr64, 0x0000000000000000, 0x39a0e150, 0xffffffff , 916); 
TEST_CASE( 175 ,924, x14, 1, rdov x14;);
TEST_CASE( 176 ,928, x14, 1, clrov;);
TEST_CASE( 177 ,932, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 178 , ukmsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 936); 
TEST_RR_OP64_OO( 179 , ukmsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 944); 
TEST_RR_OP64_OO( 180 , ukmsr64, 0x0000000000000000, 0x80000000, 0x00000000 , 952); 
TEST_RR_OP64_OO( 181 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x80000000 , 960); 
TEST_CASE( 182 ,968, x14, 1, rdov x14;);
TEST_CASE( 183 ,972, x14, 1, clrov;);
TEST_CASE( 184 ,976, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 185 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 980); 
TEST_RR_OP64_OO( 186 , ukmsr64, 0x0000000000000000, 0x80000000, 0x80000000 , 988); 
TEST_CASE( 187 ,996, x14, 1, rdov x14;);
TEST_CASE( 188 ,1000, x14, 1, clrov;);
TEST_CASE( 189 ,1004, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 190 , ukmsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 1008); 
TEST_RR_OP64_OO( 191 , ukmsr64, 0x0000000000000000, 0xe3cb3dc2, 0x00000000 , 1016); 
TEST_RR_OP64_OO( 192 , ukmsr64, 0x0000000000000000, 0x80000000, 0x80000000 , 1024); 
TEST_CASE( 193 ,1032, x14, 1, rdov x14;);
TEST_CASE( 194 ,1036, x14, 1, clrov;);
TEST_CASE( 195 ,1040, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 196 , ukmsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 1044); 
TEST_RR_OP64_OO( 197 , ukmsr64, 0x0000000000000000, 0x80000000, 0x4fb23a08 , 1052); 
TEST_CASE( 198 ,1060, x14, 1, rdov x14;);
TEST_CASE( 199 ,1064, x14, 1, clrov;);

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 267, 4, -1
RV_COMPLIANCE_DATA_END
# See LICENSE for license details.
#*****************************************************************************
# ukaddh.S
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

TEST_RR_OP( 2 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 8); 
TEST_RR_OP( 3 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 12); 
TEST_RR_OP( 4 , ukaddh, 0xffffffffffff9f02, 0x3f4b9f02, 0x80000000, 16); 
TEST_RR_OP( 5 , ukaddh, 0xffffffffffff87ca, 0x80000000, 0xd6c287ca, 20); 
TEST_RR_OP( 6 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 24); 
TEST_RR_OP( 7 , ukaddh, 0xffffffffffffe41f, 0xce23e41f, 0x80000000, 28); 
TEST_RR_OP( 8 , ukaddh, 0x00004bc9, 0x00000000, 0xee684bc9, 32); 
TEST_RR_OP( 9 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 36); 
TEST_RR_OP( 10 , ukaddh, 0xffffffffffffffff, 0x80000000, 0xffffffff, 40); 
TEST_RR_OP( 11 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 44); 
TEST_RR_OP( 12 , ukaddh, 0xffffffffffffffff, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , ukaddh, 0x000069cb, 0x00000000, 0x220669cb, 52); 
TEST_RR_OP( 14 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 56); 
TEST_RR_OP( 15 , ukaddh, 0xffffffffffffffff, 0x7e38b790, 0xffffffff, 60); 
TEST_CASE( 16 ,64, x14, 1, rdov x14;);
TEST_CASE( 17 ,68, x14, 1, clrov;);
TEST_CASE( 18 ,72, x14, 0, rdov x14;);
TEST_RR_OP( 19 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xc2308a56, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , ukaddh, 0xffffffffffffffff, 0x7724143a, 0xffffffff, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 108); 
TEST_RR_OP( 28 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_RR_OP( 32 , ukaddh, 0xffffffffffffffff, 0x80000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 132); 
TEST_CASE( 34 ,136, x14, 1, rdov x14;);
TEST_CASE( 35 ,140, x14, 1, clrov;);
TEST_CASE( 36 ,144, x14, 0, rdov x14;);
TEST_RR_OP( 37 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 148); 
TEST_RR_OP( 38 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 152); 
TEST_RR_OP( 39 , ukaddh, 0xffffffffffffffff, 0x4166475f, 0xffffffff, 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_RR_OP( 43 , ukaddh, 0xffffffffffffffff, 0x5e3df172, 0x23c5ac08, 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_RR_OP( 47 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 188); 
TEST_RR_OP( 48 , ukaddh, 0x000066f0, 0x80000000, 0xe86966f0, 192); 
TEST_RR_OP( 49 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 196); 
TEST_RR_OP( 50 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 200); 
TEST_RR_OP( 51 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 204); 
TEST_RR_OP( 52 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 208); 
TEST_RR_OP( 53 , ukaddh, 0xffffffffffffffff, 0x00000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 220); 
TEST_RR_OP( 56 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 228); 
TEST_RR_OP( 58 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 232); 
TEST_RR_OP( 59 , ukaddh, 0xfffffffffffff4cb, 0x82a47a5e, 0x3d1b7a6d, 236); 
TEST_RR_OP( 60 , ukaddh, 0x00005692, 0x80000000, 0x1b4e5692, 240); 
TEST_RR_OP( 61 , ukaddh, 0xffffffffffffffff, 0xda6ed539, 0xffffffff, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , ukaddh, 0xffffffffffffffff, 0xf9aed00c, 0x1b5dc5a9, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 276); 
TEST_CASE( 70 ,280, x14, 1, rdov x14;);
TEST_CASE( 71 ,284, x14, 1, clrov;);
TEST_CASE( 72 ,288, x14, 0, rdov x14;);
TEST_RR_OP( 73 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 292); 
TEST_RR_OP( 74 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 296); 
TEST_RR_OP( 75 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 300); 
TEST_RR_OP( 76 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 304); 
TEST_RR_OP( 77 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 308); 
TEST_RR_OP( 78 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 312); 
TEST_RR_OP( 79 , ukaddh, 0xffffffffffffb581, 0x32dbb581, 0x80000000, 316); 
TEST_RR_OP( 80 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 320); 
TEST_RR_OP( 81 , ukaddh, 0xffffffffffffb9a4, 0x00000000, 0x24f8b9a4, 324); 
TEST_RR_OP( 82 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 360); 
TEST_RR_OP( 91 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 364); 
TEST_RR_OP( 92 , ukaddh, 0xffffffffffffffff, 0x00000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 372); 
TEST_RR_OP( 94 , ukaddh, 0x00000e26, 0x24960e26, 0x00000000, 376); 
TEST_RR_OP( 95 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 380); 
TEST_RR_OP( 96 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x07e74c71, 384); 
TEST_CASE( 97 ,388, x14, 1, rdov x14;);
TEST_CASE( 98 ,392, x14, 1, clrov;);
TEST_CASE( 99 ,396, x14, 0, rdov x14;);
TEST_RR_OP( 100 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 101 , ukaddh, 0x000006e3, 0x00000000, 0x83eb06e3, 404); 
TEST_RR_OP( 102 , ukaddh, 0x0000659a, 0xe4c3659a, 0x00000000, 408); 
TEST_RR_OP( 103 , ukaddh, 0xffffffffffff9b22, 0x80000000, 0x3ef49b22, 412); 
TEST_RR_OP( 104 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 432); 
TEST_RR_OP( 109 , ukaddh, 0xffffffffffffffff, 0x80000000, 0xffffffff, 436); 
TEST_RR_OP( 110 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x228acf5f, 440); 
TEST_CASE( 111 ,444, x14, 1, rdov x14;);
TEST_CASE( 112 ,448, x14, 1, clrov;);
TEST_CASE( 113 ,452, x14, 0, rdov x14;);
TEST_RR_OP( 114 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 456); 
TEST_RR_OP( 115 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 460); 
TEST_RR_OP( 116 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 464); 
TEST_RR_OP( 117 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xd15072a3, 468); 
TEST_CASE( 118 ,472, x14, 1, rdov x14;);
TEST_CASE( 119 ,476, x14, 1, clrov;);
TEST_CASE( 120 ,480, x14, 0, rdov x14;);
TEST_RR_OP( 121 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 484); 
TEST_CASE( 122 ,488, x14, 1, rdov x14;);
TEST_CASE( 123 ,492, x14, 1, clrov;);
TEST_CASE( 124 ,496, x14, 0, rdov x14;);
TEST_RR_OP( 125 , ukaddh, 0xffffffffffffb6d6, 0xf7ecb6d6, 0x00000000, 500); 
TEST_RR_OP( 126 , ukaddh, 0x000031c1, 0x0b6b31c1, 0x80000000, 504); 
TEST_RR_OP( 127 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 508); 
TEST_RR_OP( 128 , ukaddh, 0x00005741, 0x44205741, 0x80000000, 512); 
TEST_RR_OP( 129 , ukaddh, 0xffffffffffffffff, 0x00000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , ukaddh, 0x00001f1f, 0x80000000, 0xfee41f1f, 520); 
TEST_RR_OP( 131 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 528); 
TEST_RR_OP( 133 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 532); 
TEST_RR_OP( 134 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 536); 
TEST_RR_OP( 135 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 540); 
TEST_RR_OP( 136 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 544); 
TEST_RR_OP( 137 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 548); 
TEST_RR_OP( 138 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 552); 
TEST_RR_OP( 139 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 556); 
TEST_RR_OP( 140 , ukaddh, 0x00004784, 0x90a44784, 0x00000000, 560); 
TEST_RR_OP( 141 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x3a384581, 564); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_RR_OP( 145 , ukaddh, 0xffffffffffffffff, 0x00000000, 0xffffffff, 580); 
TEST_RR_OP( 146 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , ukaddh, 0xffffffffffffa88a, 0x3adba88a, 0x80000000, 600); 
TEST_RR_OP( 151 , ukaddh, 0xffffffffffffffff, 0x44a6c900, 0x761dc64a, 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_RR_OP( 155 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x5cfb57ba, 620); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_RR_OP( 159 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 636); 
TEST_RR_OP( 160 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , ukaddh, 0xffffffffffffffff, 0x80000000, 0xffffffff, 656); 
TEST_RR_OP( 165 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 660); 
TEST_RR_OP( 166 , ukaddh, 0x00000000, 0x80000000, 0x80000000, 664); 
TEST_RR_OP( 167 , ukaddh, 0x00002162, 0x00000000, 0x2ec32162, 668); 
TEST_RR_OP( 168 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xca97b640, 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_RR_OP( 172 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 688); 
TEST_RR_OP( 173 , ukaddh, 0xffffffffffffffff, 0x80000000, 0xffffffff, 692); 
TEST_RR_OP( 174 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , ukaddh, 0x00000000, 0x80000000, 0x00000000, 700); 
TEST_RR_OP( 176 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 704); 
TEST_RR_OP( 177 , ukaddh, 0x000064da, 0x00000000, 0x5d2764da, 708); 
TEST_RR_OP( 178 , ukaddh, 0xffffffffffffffff, 0x0f1c126a, 0xffffffff, 712); 
TEST_CASE( 179 ,716, x14, 1, rdov x14;);
TEST_CASE( 180 ,720, x14, 1, clrov;);
TEST_CASE( 181 ,724, x14, 0, rdov x14;);
TEST_RR_OP( 182 , ukaddh, 0xffffffffffffffff, 0x34d37e99, 0xffffffff, 728); 
TEST_CASE( 183 ,732, x14, 1, rdov x14;);
TEST_CASE( 184 ,736, x14, 1, clrov;);
TEST_CASE( 185 ,740, x14, 0, rdov x14;);
TEST_RR_OP( 186 , ukaddh, 0xffffffffffffe8eb, 0xedaaa535, 0x3cc343b6, 744); 
TEST_RR_OP( 187 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x6d41cb4d, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , ukaddh, 0x00000000, 0x00000000, 0x80000000, 764); 
TEST_RR_OP( 192 , ukaddh, 0xffffffffffffffff, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_RR_OP( 197 , ukaddh, 0x00000000, 0x00000000, 0x00000000, 788); 
TEST_RR_OP( 198 , ukaddh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 792); 
TEST_RR_OP( 199 , ukaddh, 0xffffffffffffd7a0, 0x4e8cd7a0, 0x00000000, 796); 

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
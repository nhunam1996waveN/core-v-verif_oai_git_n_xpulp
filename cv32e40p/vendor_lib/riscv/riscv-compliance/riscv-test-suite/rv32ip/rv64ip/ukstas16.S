# See LICENSE for license details.
#*****************************************************************************
# ukstas16.S
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

TEST_RR_OP( 2 , ukstas16, 0x8bd50000, 0x00000000, 0x8bd5ad47, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , ukstas16, 0xffff1d69, 0xffff9d69, 0x91728000, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , ukstas16, 0xffff0000, 0x00008000, 0xffff8000, 40); 
TEST_RR_OP( 11 , ukstas16, 0x80000000, 0x80008000, 0x0000ffff, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_RR_OP( 15 , ukstas16, 0xffff8000, 0xbde48000, 0xffff0000, 60); 
TEST_CASE( 16 ,64, x14, 1, rdov x14;);
TEST_CASE( 17 ,68, x14, 1, clrov;);
TEST_CASE( 18 ,72, x14, 0, rdov x14;);
TEST_RR_OP( 19 , ukstas16, 0xffff0000, 0x80008000, 0xffffffff, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , ukstas16, 0xffff0000, 0x80008000, 0xe7b3ffff, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , ukstas16, 0xffffb2f0, 0x0000bba2, 0xffff08b2, 108); 
TEST_RR_OP( 28 , ukstas16, 0x0000ffff, 0x0000ffff, 0x00000000, 112); 
TEST_RR_OP( 29 , ukstas16, 0xffff0000, 0x80008000, 0x80008000, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , ukstas16, 0xffff0000, 0x80000000, 0x8000ffff, 132); 
TEST_CASE( 34 ,136, x14, 1, rdov x14;);
TEST_CASE( 35 ,140, x14, 1, clrov;);
TEST_CASE( 36 ,144, x14, 0, rdov x14;);
TEST_RR_OP( 37 , ukstas16, 0xffff0000, 0x80000000, 0xf709ffff, 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_RR_OP( 41 , ukstas16, 0xffff0000, 0x80000000, 0xffff0cd0, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , ukstas16, 0xffff0000, 0x8000ffff, 0xffffffff, 180); 
TEST_CASE( 46 ,184, x14, 1, rdov x14;);
TEST_CASE( 47 ,188, x14, 1, clrov;);
TEST_CASE( 48 ,192, x14, 0, rdov x14;);
TEST_RR_OP( 49 , ukstas16, 0xffff0000, 0xe3e0ffff, 0x8000ffff, 196); 
TEST_CASE( 50 ,200, x14, 1, rdov x14;);
TEST_CASE( 51 ,204, x14, 1, clrov;);
TEST_CASE( 52 ,208, x14, 0, rdov x14;);
TEST_RR_OP( 53 , ukstas16, 0x80000000, 0x80000000, 0x000021ce, 212); 
TEST_CASE( 54 ,216, x14, 1, rdov x14;);
TEST_CASE( 55 ,220, x14, 1, clrov;);
TEST_CASE( 56 ,224, x14, 0, rdov x14;);
TEST_RR_OP( 57 , ukstas16, 0xdb507e3d, 0x8eb9fe3d, 0x4c978000, 228); 
TEST_RR_OP( 58 , ukstas16, 0x3e450000, 0x00000000, 0x3e450000, 232); 
TEST_RR_OP( 59 , ukstas16, 0xffff0000, 0x80008000, 0xa2ef8de7, 236); 
TEST_CASE( 60 ,240, x14, 1, rdov x14;);
TEST_CASE( 61 ,244, x14, 1, clrov;);
TEST_CASE( 62 ,248, x14, 0, rdov x14;);
TEST_RR_OP( 63 , ukstas16, 0xffff8000, 0x80008000, 0xffff0000, 252); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_RR_OP( 67 , ukstas16, 0xecd90000, 0x6cd95765, 0x8000ffff, 268); 
TEST_CASE( 68 ,272, x14, 1, rdov x14;);
TEST_CASE( 69 ,276, x14, 1, clrov;);
TEST_CASE( 70 ,280, x14, 0, rdov x14;);
TEST_RR_OP( 71 , ukstas16, 0xffff7fff, 0xd84dffff, 0xffff8000, 284); 
TEST_CASE( 72 ,288, x14, 1, rdov x14;);
TEST_CASE( 73 ,292, x14, 1, clrov;);
TEST_CASE( 74 ,296, x14, 0, rdov x14;);
TEST_RR_OP( 75 , ukstas16, 0xe9c20000, 0x80008000, 0x69c29e84, 300); 
TEST_CASE( 76 ,304, x14, 1, rdov x14;);
TEST_CASE( 77 ,308, x14, 1, clrov;);
TEST_CASE( 78 ,312, x14, 0, rdov x14;);
TEST_RR_OP( 79 , ukstas16, 0xffff0000, 0x800089f9, 0xffffd562, 316); 
TEST_CASE( 80 ,320, x14, 1, rdov x14;);
TEST_CASE( 81 ,324, x14, 1, clrov;);
TEST_CASE( 82 ,328, x14, 0, rdov x14;);
TEST_RR_OP( 83 , ukstas16, 0xda630000, 0x58328000, 0x8231f420, 332); 
TEST_CASE( 84 ,336, x14, 1, rdov x14;);
TEST_CASE( 85 ,340, x14, 1, clrov;);
TEST_CASE( 86 ,344, x14, 0, rdov x14;);
TEST_RR_OP( 87 , ukstas16, 0xffffbafd, 0x309dbafd, 0xffff0000, 348); 
TEST_CASE( 88 ,352, x14, 1, rdov x14;);
TEST_CASE( 89 ,356, x14, 1, clrov;);
TEST_CASE( 90 ,360, x14, 0, rdov x14;);
TEST_RR_OP( 91 , ukstas16, 0xffff0000, 0xffff0000, 0xc587c02c, 364); 
TEST_CASE( 92 ,368, x14, 1, rdov x14;);
TEST_CASE( 93 ,372, x14, 1, clrov;);
TEST_CASE( 94 ,376, x14, 0, rdov x14;);
TEST_RR_OP( 95 , ukstas16, 0x80000000, 0x00000000, 0x8000ffff, 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_RR_OP( 99 , ukstas16, 0xffff0000, 0x7fcf8000, 0xffffffff, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , ukstas16, 0xffff0000, 0x8000ffff, 0x8000ffff, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , ukstas16, 0xffff0000, 0xe4a90000, 0xffff0000, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , ukstas16, 0xffff0000, 0xffff1a1a, 0x8000ffff, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , ukstas16, 0xffff0000, 0xffff0000, 0xffffffff, 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_RR_OP( 119 , ukstas16, 0x8ae62920, 0x8ae6ffff, 0x0000d6df, 476); 
TEST_RR_OP( 120 , ukstas16, 0x4b9747c5, 0x417ac7c5, 0x0a1d8000, 480); 
TEST_RR_OP( 121 , ukstas16, 0xffff8000, 0xfbbe8000, 0xa4940000, 484); 
TEST_CASE( 122 ,488, x14, 1, rdov x14;);
TEST_CASE( 123 ,492, x14, 1, clrov;);
TEST_CASE( 124 ,496, x14, 0, rdov x14;);
TEST_RR_OP( 125 , ukstas16, 0x80000000, 0x80008000, 0x00008000, 500); 
TEST_RR_OP( 126 , ukstas16, 0x80000000, 0x00008000, 0x80008000, 504); 
TEST_RR_OP( 127 , ukstas16, 0xffff0000, 0x8000ffff, 0xae29ffff, 508); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_RR_OP( 131 , ukstas16, 0xffff3ef9, 0xffffbef9, 0x80008000, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , ukstas16, 0xffff9e1a, 0xffff9e1a, 0x80000000, 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_RR_OP( 139 , ukstas16, 0xffff0000, 0x80000000, 0xffffffff, 556); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_RR_OP( 143 , ukstas16, 0x6a797fff, 0x6a79ffff, 0x00008000, 572); 
TEST_RR_OP( 144 , ukstas16, 0xf4a80000, 0xf4a83a18, 0x0000ffff, 576); 
TEST_CASE( 145 ,580, x14, 1, rdov x14;);
TEST_CASE( 146 ,584, x14, 1, clrov;);
TEST_CASE( 147 ,588, x14, 0, rdov x14;);
TEST_RR_OP( 148 , ukstas16, 0xffff0000, 0x887ec1c7, 0xffffffff, 592); 
TEST_CASE( 149 ,596, x14, 1, rdov x14;);
TEST_CASE( 150 ,600, x14, 1, clrov;);
TEST_CASE( 151 ,604, x14, 0, rdov x14;);
TEST_RR_OP( 152 , ukstas16, 0xffff0000, 0xffff0000, 0x0000ffff, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , ukstas16, 0xffff2039, 0xffff6cc1, 0x80004c88, 624); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_RR_OP( 160 , ukstas16, 0xffff0000, 0xffff0000, 0x00008000, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , ukstas16, 0xffff2038, 0x80002925, 0x800008ed, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , ukstas16, 0xffff0000, 0xffff0000, 0xdb9dffff, 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_RR_OP( 172 , ukstas16, 0x80007fff, 0x0000ffff, 0x80008000, 688); 
TEST_RR_OP( 173 , ukstas16, 0xffff7963, 0xffffffff, 0x8000869c, 692); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_RR_OP( 177 , ukstas16, 0x80000000, 0x8000ffff, 0x0000ffff, 708); 
TEST_RR_OP( 178 , ukstas16, 0x80008000, 0x00008000, 0x80000000, 712); 
TEST_RR_OP( 179 , ukstas16, 0x93be0000, 0x13be0000, 0x80001aed, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , ukstas16, 0xffff0000, 0xffffffff, 0x0000ffff, 732); 
TEST_RR_OP( 184 , ukstas16, 0xffff0000, 0x701b0000, 0xffffe77e, 736); 
TEST_CASE( 185 ,740, x14, 1, rdov x14;);
TEST_CASE( 186 ,744, x14, 1, clrov;);
TEST_CASE( 187 ,748, x14, 0, rdov x14;);
TEST_RR_OP( 188 , ukstas16, 0xffff0000, 0x80008000, 0xffff8000, 752); 
TEST_CASE( 189 ,756, x14, 1, rdov x14;);
TEST_CASE( 190 ,760, x14, 1, clrov;);
TEST_CASE( 191 ,764, x14, 0, rdov x14;);
TEST_RR_OP( 192 , ukstas16, 0xfffff381, 0x0710f381, 0xffff0000, 768); 
TEST_CASE( 193 ,772, x14, 1, rdov x14;);
TEST_CASE( 194 ,776, x14, 1, clrov;);
TEST_CASE( 195 ,780, x14, 0, rdov x14;);
TEST_RR_OP( 196 , ukstas16, 0xffff7fff, 0xffffffff, 0xcbf58000, 784); 
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
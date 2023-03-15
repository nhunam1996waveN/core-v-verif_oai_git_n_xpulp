# See LICENSE for license details.
#*****************************************************************************
# uksubh.S
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

TEST_RR_OP( 2 , uksubh, 0x00000000, 0x80000000, 0x00000000, 8); 
TEST_RR_OP( 3 , uksubh, 0xffffffffffffc198, 0xffffffff, 0x9f603e67, 12); 
TEST_RR_OP( 4 , uksubh, 0x0000723b, 0xa6a490b3, 0x7fb41e78, 16); 
TEST_RR_OP( 5 , uksubh, 0x00000000, 0x00000000, 0x00000000, 20); 
TEST_RR_OP( 6 , uksubh, 0x00000000, 0x893df50d, 0xffffffff, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , uksubh, 0x00006b47, 0xf4b8808e, 0x9a681547, 40); 
TEST_RR_OP( 11 , uksubh, 0x00006158, 0x1ceab521, 0xa56653c9, 44); 
TEST_RR_OP( 12 , uksubh, 0x00000b19, 0xffffffff, 0x7ba0f4e6, 48); 
TEST_RR_OP( 13 , uksubh, 0x00000000, 0x00000000, 0x10ac4653, 52); 
TEST_CASE( 14 ,56, x14, 1, rdov x14;);
TEST_CASE( 15 ,60, x14, 1, clrov;);
TEST_CASE( 16 ,64, x14, 0, rdov x14;);
TEST_RR_OP( 17 , uksubh, 0x00000000, 0xffffffff, 0xffffffff, 68); 
TEST_RR_OP( 18 , uksubh, 0xfffffffffffffa4e, 0xf379fa4e, 0x00000000, 72); 
TEST_RR_OP( 19 , uksubh, 0x00000000, 0x00000000, 0x00ee9a58, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , uksubh, 0xffffffffffffbed2, 0xaf81bed2, 0x00000000, 96); 
TEST_RR_OP( 25 , uksubh, 0x00000356, 0xf3fd635f, 0x9c896009, 100); 
TEST_RR_OP( 26 , uksubh, 0x00000000, 0x80000000, 0xffffffff, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , uksubh, 0x00000000, 0x00000000, 0x80000000, 120); 
TEST_RR_OP( 31 , uksubh, 0x00000000, 0x80000000, 0x00000000, 124); 
TEST_RR_OP( 32 , uksubh, 0xfffffffffffff364, 0x73dafdb4, 0xf0eb0a50, 128); 
TEST_RR_OP( 33 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 132); 
TEST_RR_OP( 34 , uksubh, 0x00000000, 0x80000000, 0xffffffff, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_RR_OP( 38 , uksubh, 0x00000000, 0x00000000, 0x80000000, 152); 
TEST_RR_OP( 39 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 156); 
TEST_RR_OP( 40 , uksubh, 0x00000000, 0x80000000, 0x80000000, 160); 
TEST_RR_OP( 41 , uksubh, 0x00000000, 0x80000000, 0xffffffff, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , uksubh, 0x00000000, 0x00000000, 0x00000000, 180); 
TEST_RR_OP( 46 , uksubh, 0x00000000, 0x00000000, 0x80000000, 184); 
TEST_RR_OP( 47 , uksubh, 0x00000aef, 0x275f0aef, 0x80000000, 188); 
TEST_RR_OP( 48 , uksubh, 0x00000000, 0x00000000, 0x80000000, 192); 
TEST_RR_OP( 49 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , uksubh, 0x00000000, 0x80000000, 0x80000000, 200); 
TEST_RR_OP( 51 , uksubh, 0x00000000, 0x80000000, 0x00000000, 204); 
TEST_RR_OP( 52 , uksubh, 0x00000000, 0x4e280a80, 0xffffffff, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , uksubh, 0xffffffffffffae6c, 0xffffffff, 0xc61b5193, 224); 
TEST_RR_OP( 57 , uksubh, 0x00000000, 0x80000000, 0xffffffff, 228); 
TEST_CASE( 58 ,232, x14, 1, rdov x14;);
TEST_CASE( 59 ,236, x14, 1, clrov;);
TEST_CASE( 60 ,240, x14, 0, rdov x14;);
TEST_RR_OP( 61 , uksubh, 0x00000000, 0x00000000, 0xc3111589, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , uksubh, 0x00000000, 0x179fbd48, 0xc8a0c858, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , uksubh, 0x00000000, 0x00000000, 0xffffffff, 276); 
TEST_CASE( 70 ,280, x14, 1, rdov x14;);
TEST_CASE( 71 ,284, x14, 1, clrov;);
TEST_CASE( 72 ,288, x14, 0, rdov x14;);
TEST_RR_OP( 73 , uksubh, 0x00000000, 0x00000000, 0x80000000, 292); 
TEST_RR_OP( 74 , uksubh, 0xfffffffffffff347, 0xffffffff, 0x555f0cb8, 296); 
TEST_RR_OP( 75 , uksubh, 0x00000000, 0x1b463521, 0x70ed5c71, 300); 
TEST_CASE( 76 ,304, x14, 1, rdov x14;);
TEST_CASE( 77 ,308, x14, 1, clrov;);
TEST_CASE( 78 ,312, x14, 0, rdov x14;);
TEST_RR_OP( 79 , uksubh, 0x00000000, 0xffffffff, 0xffffffff, 316); 
TEST_RR_OP( 80 , uksubh, 0x00000000, 0x80000000, 0x80000000, 320); 
TEST_RR_OP( 81 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 324); 
TEST_RR_OP( 82 , uksubh, 0x000065ff, 0xffffffff, 0x13f39a00, 328); 
TEST_RR_OP( 83 , uksubh, 0xffffffffffff9e9f, 0xffffffff, 0x35e16160, 332); 
TEST_RR_OP( 84 , uksubh, 0x00000000, 0x00000000, 0xf9406514, 336); 
TEST_CASE( 85 ,340, x14, 1, rdov x14;);
TEST_CASE( 86 ,344, x14, 1, clrov;);
TEST_CASE( 87 ,348, x14, 0, rdov x14;);
TEST_RR_OP( 88 , uksubh, 0x00000000, 0x80000000, 0x80000000, 352); 
TEST_RR_OP( 89 , uksubh, 0x00000000, 0x80000000, 0x00000000, 356); 
TEST_RR_OP( 90 , uksubh, 0x00000000, 0x80000000, 0x2267dde9, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , uksubh, 0xffffffffffffb9c8, 0x56b1b9c8, 0x80000000, 376); 
TEST_RR_OP( 95 , uksubh, 0x00000000, 0xe312486f, 0x128bd0e5, 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_RR_OP( 99 , uksubh, 0xffffffffffffc28c, 0xffffffff, 0x63d43d73, 396); 
TEST_RR_OP( 100 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 400); 
TEST_RR_OP( 101 , uksubh, 0x0000279c, 0xffffffff, 0xe6b6d863, 404); 
TEST_RR_OP( 102 , uksubh, 0x00000000, 0x80000000, 0x9506ee34, 408); 
TEST_CASE( 103 ,412, x14, 1, rdov x14;);
TEST_CASE( 104 ,416, x14, 1, clrov;);
TEST_CASE( 105 ,420, x14, 0, rdov x14;);
TEST_RR_OP( 106 , uksubh, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 428); 
TEST_RR_OP( 108 , uksubh, 0xffffffffffffda95, 0x5563da95, 0x00000000, 432); 
TEST_RR_OP( 109 , uksubh, 0x00000000, 0x00000000, 0x00000000, 436); 
TEST_RR_OP( 110 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 440); 
TEST_RR_OP( 111 , uksubh, 0x00000000, 0x80000000, 0x80000000, 444); 
TEST_RR_OP( 112 , uksubh, 0x00000000, 0x80000000, 0x80000000, 448); 
TEST_RR_OP( 113 , uksubh, 0x00000000, 0x00000000, 0x80000000, 452); 
TEST_RR_OP( 114 , uksubh, 0x00000000, 0x00000000, 0x1070061b, 456); 
TEST_CASE( 115 ,460, x14, 1, rdov x14;);
TEST_CASE( 116 ,464, x14, 1, clrov;);
TEST_CASE( 117 ,468, x14, 0, rdov x14;);
TEST_RR_OP( 118 , uksubh, 0x000078b2, 0x7ad378b2, 0x00000000, 472); 
TEST_RR_OP( 119 , uksubh, 0x000066ae, 0xffffffff, 0xf6489951, 476); 
TEST_RR_OP( 120 , uksubh, 0x00000000, 0x00000000, 0x00000000, 480); 
TEST_RR_OP( 121 , uksubh, 0x000000a0, 0xffffffff, 0x73c0ff5f, 484); 
TEST_RR_OP( 122 , uksubh, 0x00000000, 0x00000000, 0x80000000, 488); 
TEST_RR_OP( 123 , uksubh, 0x00000000, 0x80000000, 0xffffffff, 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_RR_OP( 127 , uksubh, 0x00000000, 0x80000000, 0x80000000, 508); 
TEST_RR_OP( 128 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 512); 
TEST_RR_OP( 129 , uksubh, 0x00000000, 0x80000000, 0xf8dfa6bd, 516); 
TEST_CASE( 130 ,520, x14, 1, rdov x14;);
TEST_CASE( 131 ,524, x14, 1, clrov;);
TEST_CASE( 132 ,528, x14, 0, rdov x14;);
TEST_RR_OP( 133 , uksubh, 0xffffffffffffb224, 0x5387b224, 0x00000000, 532); 
TEST_RR_OP( 134 , uksubh, 0xffffffffffffb33f, 0x8685b33f, 0x80000000, 536); 
TEST_RR_OP( 135 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 540); 
TEST_RR_OP( 136 , uksubh, 0xffffffffffffde70, 0xecd9de70, 0x80000000, 544); 
TEST_RR_OP( 137 , uksubh, 0x00000000, 0x80000000, 0x80000000, 548); 
TEST_RR_OP( 138 , uksubh, 0x00000000, 0x00000000, 0xfa5f97cb, 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_RR_OP( 142 , uksubh, 0x00000000, 0x00000000, 0xffffffff, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , uksubh, 0x00000000, 0x80000000, 0xe5b19054, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , uksubh, 0x00000000, 0x00000000, 0x81ba724f, 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_RR_OP( 154 , uksubh, 0x0000704a, 0x5dbd704a, 0x80000000, 616); 
TEST_RR_OP( 155 , uksubh, 0x00000000, 0x00000000, 0x00000000, 620); 
TEST_RR_OP( 156 , uksubh, 0x00000000, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x80000000, 628); 
TEST_RR_OP( 158 , uksubh, 0x00005c78, 0x988c5c78, 0x00000000, 632); 
TEST_RR_OP( 159 , uksubh, 0x00000000, 0x00000000, 0x7816b898, 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_RR_OP( 163 , uksubh, 0x00000000, 0x00000000, 0x80000000, 652); 
TEST_RR_OP( 164 , uksubh, 0x00000000, 0x00000000, 0x80000000, 656); 
TEST_RR_OP( 165 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 660); 
TEST_RR_OP( 166 , uksubh, 0x00000000, 0x00000000, 0x00000000, 664); 
TEST_RR_OP( 167 , uksubh, 0x00006205, 0xf04e6205, 0x00000000, 668); 
TEST_RR_OP( 168 , uksubh, 0x00000000, 0x00000000, 0x8fbe0584, 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_RR_OP( 172 , uksubh, 0x00000000, 0x00000000, 0xffffffff, 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_RR_OP( 176 , uksubh, 0x00000000, 0x80000000, 0xffffffff, 704); 
TEST_CASE( 177 ,708, x14, 1, rdov x14;);
TEST_CASE( 178 ,712, x14, 1, clrov;);
TEST_CASE( 179 ,716, x14, 0, rdov x14;);
TEST_RR_OP( 180 , uksubh, 0x00000000, 0x80000000, 0x80000000, 720); 
TEST_RR_OP( 181 , uksubh, 0x00000d4a, 0xffffffff, 0xe0a3f2b5, 724); 
TEST_RR_OP( 182 , uksubh, 0x00000000, 0x00000000, 0x00000000, 728); 
TEST_RR_OP( 183 , uksubh, 0x00000000, 0x0afcb868, 0xffffffff, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , uksubh, 0xffffffffffffc598, 0xffffffff, 0x6abc3a67, 748); 
TEST_RR_OP( 188 , uksubh, 0x00000000, 0x4397bcf8, 0x9926e881, 752); 
TEST_CASE( 189 ,756, x14, 1, rdov x14;);
TEST_CASE( 190 ,760, x14, 1, clrov;);
TEST_CASE( 191 ,764, x14, 0, rdov x14;);
TEST_RR_OP( 192 , uksubh, 0x00000000, 0x00000000, 0x00000000, 768); 
TEST_RR_OP( 193 , uksubh, 0xffffffffffffffff, 0xffffffff, 0x00000000, 772); 
TEST_RR_OP( 194 , uksubh, 0xffffffffffffd245, 0xffffffff, 0x25c32dba, 776); 
TEST_RR_OP( 195 , uksubh, 0x00000000, 0x00000000, 0xffffffff, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , uksubh, 0x00000000, 0x00000000, 0x00000000, 796); 

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
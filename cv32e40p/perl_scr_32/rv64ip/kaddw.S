# See LICENSE for license details.
#*****************************************************************************
# kaddw.S
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

TEST_RR_OP( 2 , kaddw, 0xffffffffb2fa9215, 0x80000000, 0x32fa9215, 8); 
TEST_RR_OP( 3 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 12); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_RR_OP( 7 , kaddw, 0x09d42a5c, 0x00000000, 0x09d42a5c, 28); 
TEST_RR_OP( 8 , kaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 32); 
TEST_RR_OP( 9 , kaddw, 0xffffffff80000000, 0xd32dd65b, 0x80000000, 36); 
TEST_CASE( 10 ,40, x14, 1, rdov x14;);
TEST_CASE( 11 ,44, x14, 1, clrov;);
TEST_CASE( 12 ,48, x14, 0, rdov x14;);
TEST_RR_OP( 13 , kaddw, 0xffffffff80000000, 0x80000000, 0xffffffff, 52); 
TEST_CASE( 14 ,56, x14, 1, rdov x14;);
TEST_CASE( 15 ,60, x14, 1, clrov;);
TEST_CASE( 16 ,64, x14, 0, rdov x14;);
TEST_RR_OP( 17 , kaddw, 0x00000000, 0x00000000, 0x00000000, 68); 
TEST_RR_OP( 18 , kaddw, 0xffffffff80000000, 0xd980a1cd, 0x989e0535, 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_RR_OP( 22 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 88); 
TEST_RR_OP( 23 , kaddw, 0xffffffffc3bce9c4, 0xd56f3a6b, 0xee4daf59, 92); 
TEST_RR_OP( 24 , kaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 96); 
TEST_RR_OP( 25 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 100); 
TEST_CASE( 26 ,104, x14, 1, rdov x14;);
TEST_CASE( 27 ,108, x14, 1, clrov;);
TEST_CASE( 28 ,112, x14, 0, rdov x14;);
TEST_RR_OP( 29 , kaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 116); 
TEST_RR_OP( 30 , kaddw, 0xffffffffa0d2d27a, 0x20d2d27a, 0x80000000, 120); 
TEST_RR_OP( 31 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_RR_OP( 35 , kaddw, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 140); 
TEST_RR_OP( 36 , kaddw, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 144); 
TEST_RR_OP( 37 , kaddw, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , kaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , kaddw, 0xffffffff80000000, 0x80000000, 0xa2a99034, 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_RR_OP( 43 , kaddw, 0x7fffffff, 0x2e0d1fdc, 0x6d1998ce, 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_RR_OP( 47 , kaddw, 0xffffffffa026d916, 0x80000000, 0x2026d916, 188); 
TEST_RR_OP( 48 , kaddw, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 192); 
TEST_RR_OP( 49 , kaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 196); 
TEST_RR_OP( 50 , kaddw, 0x34f5b789, 0x2d236f4d, 0x07d2483c, 200); 
TEST_RR_OP( 51 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_RR_OP( 55 , kaddw, 0xffffffffb5d6f332, 0xffffffff, 0xb5d6f333, 220); 
TEST_RR_OP( 56 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 224); 
TEST_RR_OP( 57 , kaddw, 0xffffffffd76e8fe9, 0x00000000, 0xd76e8fe9, 228); 
TEST_RR_OP( 58 , kaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kaddw, 0xffffffffada62bd4, 0xa1b72c5d, 0x0beeff77, 236); 
TEST_RR_OP( 60 , kaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kaddw, 0x69021245, 0xffffffff, 0x69021246, 244); 
TEST_RR_OP( 62 , kaddw, 0xffffffffaab4281f, 0x80000000, 0x2ab4281f, 248); 
TEST_RR_OP( 63 , kaddw, 0xffffffff80000000, 0xffffffff, 0x80000000, 252); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_RR_OP( 67 , kaddw, 0xffffffff80000000, 0x80000000, 0xb52bc2b1, 268); 
TEST_CASE( 68 ,272, x14, 1, rdov x14;);
TEST_CASE( 69 ,276, x14, 1, clrov;);
TEST_CASE( 70 ,280, x14, 0, rdov x14;);
TEST_RR_OP( 71 , kaddw, 0xffffffffd53883d8, 0xa6069cda, 0x2f31e6fe, 284); 
TEST_RR_OP( 72 , kaddw, 0xffffffff80000000, 0x80000000, 0xffffffff, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , kaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 304); 
TEST_RR_OP( 77 , kaddw, 0x7fffffff, 0x2bdd7efa, 0x5bf605ce, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , kaddw, 0x2a7c6afc, 0xffffffff, 0x2a7c6afd, 324); 
TEST_RR_OP( 82 , kaddw, 0x4c1fbf93, 0x4c1fbf94, 0xffffffff, 328); 
TEST_RR_OP( 83 , kaddw, 0x2a31f470, 0x2a31f471, 0xffffffff, 332); 
TEST_RR_OP( 84 , kaddw, 0xffffffff80000000, 0x80000000, 0xffffffff, 336); 
TEST_CASE( 85 ,340, x14, 1, rdov x14;);
TEST_CASE( 86 ,344, x14, 1, clrov;);
TEST_CASE( 87 ,348, x14, 0, rdov x14;);
TEST_RR_OP( 88 , kaddw, 0x07145f2e, 0x93ff4ebc, 0x73151072, 352); 
TEST_RR_OP( 89 , kaddw, 0xffffffff80000000, 0xb5f7eb7e, 0x80e1e6e2, 356); 
TEST_CASE( 90 ,360, x14, 1, rdov x14;);
TEST_CASE( 91 ,364, x14, 1, clrov;);
TEST_CASE( 92 ,368, x14, 0, rdov x14;);
TEST_RR_OP( 93 , kaddw, 0x610b2265, 0xffffffff, 0x610b2266, 372); 
TEST_RR_OP( 94 , kaddw, 0x57ff6dc5, 0xffffffff, 0x57ff6dc6, 376); 
TEST_RR_OP( 95 , kaddw, 0xffffffff8224dc31, 0x8224dc32, 0xffffffff, 380); 
TEST_RR_OP( 96 , kaddw, 0x44a96e90, 0x44a96e91, 0xffffffff, 384); 
TEST_RR_OP( 97 , kaddw, 0xffffffff80000000, 0xffffffff, 0x80000000, 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_RR_OP( 101 , kaddw, 0x657d491b, 0xffffffff, 0x657d491c, 404); 
TEST_RR_OP( 102 , kaddw, 0xffffffff80000000, 0xffffffff, 0x80000000, 408); 
TEST_CASE( 103 ,412, x14, 1, rdov x14;);
TEST_CASE( 104 ,416, x14, 1, clrov;);
TEST_CASE( 105 ,420, x14, 0, rdov x14;);
TEST_RR_OP( 106 , kaddw, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , kaddw, 0xffffffff80000000, 0x80000000, 0xffffffff, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , kaddw, 0x28a46890, 0x28a46890, 0x00000000, 444); 
TEST_RR_OP( 112 , kaddw, 0xffffffff80000000, 0xffffffff, 0x80000000, 448); 
TEST_CASE( 113 ,452, x14, 1, rdov x14;);
TEST_CASE( 114 ,456, x14, 1, clrov;);
TEST_CASE( 115 ,460, x14, 0, rdov x14;);
TEST_RR_OP( 116 , kaddw, 0xffffffff80000000, 0xe60d59b3, 0x80000000, 464); 
TEST_CASE( 117 ,468, x14, 1, rdov x14;);
TEST_CASE( 118 ,472, x14, 1, clrov;);
TEST_CASE( 119 ,476, x14, 0, rdov x14;);
TEST_RR_OP( 120 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_RR_OP( 124 , kaddw, 0xffffffff80000000, 0x80000000, 0x81b2100e, 496); 
TEST_CASE( 125 ,500, x14, 1, rdov x14;);
TEST_CASE( 126 ,504, x14, 1, clrov;);
TEST_CASE( 127 ,508, x14, 0, rdov x14;);
TEST_RR_OP( 128 , kaddw, 0x40f1481b, 0xffffffff, 0x40f1481c, 512); 
TEST_RR_OP( 129 , kaddw, 0xffffffffde4c4924, 0x5e4c4924, 0x80000000, 516); 
TEST_RR_OP( 130 , kaddw, 0x7bd8575e, 0x7bd8575f, 0xffffffff, 520); 
TEST_RR_OP( 131 , kaddw, 0xffffffff80000000, 0x80000000, 0xffffffff, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 540); 
TEST_RR_OP( 136 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_RR_OP( 140 , kaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 560); 
TEST_RR_OP( 141 , kaddw, 0xffffffff80000000, 0xffffffff, 0x80000000, 564); 
TEST_CASE( 142 ,568, x14, 1, rdov x14;);
TEST_CASE( 143 ,572, x14, 1, clrov;);
TEST_CASE( 144 ,576, x14, 0, rdov x14;);
TEST_RR_OP( 145 , kaddw, 0x6f5f7173, 0x35739252, 0x39ebdf21, 580); 
TEST_RR_OP( 146 , kaddw, 0xffffffffdc175d1b, 0xdc175d1c, 0xffffffff, 584); 
TEST_RR_OP( 147 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 588); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_RR_OP( 151 , kaddw, 0xffffffffbb39a9ce, 0xbb39a9cf, 0xffffffff, 604); 
TEST_RR_OP( 152 , kaddw, 0xffffffff80000000, 0x80000000, 0xffffffff, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , kaddw, 0xfffffffffae4729c, 0x61623e85, 0x99823417, 624); 
TEST_RR_OP( 157 , kaddw, 0x0ff8242a, 0xffffffff, 0x0ff8242b, 628); 
TEST_RR_OP( 158 , kaddw, 0xffffffff80000000, 0x00000000, 0x80000000, 632); 
TEST_RR_OP( 159 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_RR_OP( 163 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 652); 
TEST_RR_OP( 164 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 656); 
TEST_RR_OP( 165 , kaddw, 0x6941f723, 0x6941f723, 0x00000000, 660); 
TEST_RR_OP( 166 , kaddw, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , kaddw, 0xffffffffe04ce0a5, 0x80000000, 0x604ce0a5, 668); 
TEST_RR_OP( 168 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 672); 
TEST_RR_OP( 169 , kaddw, 0xffffffff80000000, 0xffffffff, 0x80000000, 676); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_RR_OP( 173 , kaddw, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 696); 
TEST_RR_OP( 175 , kaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kaddw, 0x4cdc19c2, 0x4cdc19c3, 0xffffffff, 708); 
TEST_RR_OP( 178 , kaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 712); 
TEST_RR_OP( 179 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , kaddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , kaddw, 0xffffffffe42c1246, 0x99036873, 0x4b28a9d3, 736); 
TEST_RR_OP( 185 , kaddw, 0xffffffffdba19faa, 0x00000000, 0xdba19faa, 740); 
TEST_RR_OP( 186 , kaddw, 0xfffffffff2497d65, 0xa1ac78fa, 0x509d046b, 744); 
TEST_RR_OP( 187 , kaddw, 0x27274dd9, 0x27274dda, 0xffffffff, 748); 
TEST_RR_OP( 188 , kaddw, 0xffffffff80000000, 0x80000000, 0xffffffff, 752); 
TEST_CASE( 189 ,756, x14, 1, rdov x14;);
TEST_CASE( 190 ,760, x14, 1, clrov;);
TEST_CASE( 191 ,764, x14, 0, rdov x14;);
TEST_RR_OP( 192 , kaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 768); 
TEST_RR_OP( 193 , kaddw, 0xffffffffd8316c53, 0xb6ab8016, 0x2185ec3d, 772); 
TEST_RR_OP( 194 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 776); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_RR_OP( 198 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 792); 
TEST_RR_OP( 199 , kaddw, 0xffffffff80000000, 0x80000000, 0x80000000, 796); 

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
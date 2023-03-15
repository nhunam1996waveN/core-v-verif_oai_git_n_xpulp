# See LICENSE for license details.
#*****************************************************************************
# kabsw.S
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

TEST_R_OP( 2 , kabsw, 0x7fffffff, 0x80000000, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_R_OP( 6 , kabsw, 0x7fffffff, 0x80000000, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_R_OP( 10 , kabsw, 0x2886595e, 0x2886595e, 40); 
TEST_R_OP( 11 , kabsw, 0x00000001, 0xffffffff, 44); 
TEST_R_OP( 12 , kabsw, 0x594d95d5, 0x594d95d5, 48); 
TEST_R_OP( 13 , kabsw, 0x00000000, 0x00000000, 52); 
TEST_R_OP( 14 , kabsw, 0x2f996d30, 0x2f996d30, 56); 
TEST_R_OP( 15 , kabsw, 0x00000001, 0xffffffff, 60); 
TEST_R_OP( 16 , kabsw, 0x4cb9aa88, 0x4cb9aa88, 64); 
TEST_R_OP( 17 , kabsw, 0x00000001, 0xffffffff, 68); 
TEST_R_OP( 18 , kabsw, 0x3ee8f53d, 0x3ee8f53d, 72); 
TEST_R_OP( 19 , kabsw, 0x00000000, 0x00000000, 76); 
TEST_R_OP( 20 , kabsw, 0x0f4a9573, 0x0f4a9573, 80); 
TEST_R_OP( 21 , kabsw, 0x00000001, 0xffffffff, 84); 
TEST_R_OP( 22 , kabsw, 0x00000000, 0x00000000, 88); 
TEST_R_OP( 23 , kabsw, 0x7fffffff, 0x80000000, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_R_OP( 27 , kabsw, 0x0101da42, 0xfefe25be, 108); 
TEST_R_OP( 28 , kabsw, 0x7fffffff, 0x80000000, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_R_OP( 32 , kabsw, 0x2a4d6d91, 0xd5b2926f, 128); 
TEST_R_OP( 33 , kabsw, 0x3bbcd13a, 0x3bbcd13a, 132); 
TEST_R_OP( 34 , kabsw, 0x337846d6, 0x337846d6, 136); 
TEST_R_OP( 35 , kabsw, 0x00000000, 0x00000000, 140); 
TEST_R_OP( 36 , kabsw, 0x00000000, 0x00000000, 144); 
TEST_R_OP( 37 , kabsw, 0x00000001, 0xffffffff, 148); 
TEST_R_OP( 38 , kabsw, 0x00c29060, 0x00c29060, 152); 
TEST_R_OP( 39 , kabsw, 0x00000000, 0x00000000, 156); 
TEST_R_OP( 40 , kabsw, 0x1bf13c3f, 0x1bf13c3f, 160); 
TEST_R_OP( 41 , kabsw, 0x00000000, 0x00000000, 164); 
TEST_R_OP( 42 , kabsw, 0x16f029ba, 0xe90fd646, 168); 
TEST_R_OP( 43 , kabsw, 0x00000000, 0x00000000, 172); 
TEST_R_OP( 44 , kabsw, 0x00000001, 0xffffffff, 176); 
TEST_R_OP( 45 , kabsw, 0x00000001, 0xffffffff, 180); 
TEST_R_OP( 46 , kabsw, 0x00000000, 0x00000000, 184); 
TEST_R_OP( 47 , kabsw, 0x700d4d93, 0x8ff2b26d, 188); 
TEST_R_OP( 48 , kabsw, 0x00000001, 0xffffffff, 192); 
TEST_R_OP( 49 , kabsw, 0x2eb8e888, 0x2eb8e888, 196); 
TEST_R_OP( 50 , kabsw, 0x00000001, 0xffffffff, 200); 
TEST_R_OP( 51 , kabsw, 0x7fffffff, 0x80000000, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_R_OP( 55 , kabsw, 0x00000001, 0xffffffff, 220); 
TEST_R_OP( 56 , kabsw, 0x59265952, 0xa6d9a6ae, 224); 
TEST_R_OP( 57 , kabsw, 0x7414cf00, 0x8beb3100, 228); 
TEST_R_OP( 58 , kabsw, 0x39b7156e, 0xc648ea92, 232); 
TEST_R_OP( 59 , kabsw, 0x7fffffff, 0x80000000, 236); 
TEST_CASE( 60 ,240, x14, 1, rdov x14;);
TEST_CASE( 61 ,244, x14, 1, clrov;);
TEST_CASE( 62 ,248, x14, 0, rdov x14;);
TEST_R_OP( 63 , kabsw, 0x00000001, 0xffffffff, 252); 
TEST_R_OP( 64 , kabsw, 0x23e9eb8e, 0xdc161472, 256); 
TEST_R_OP( 65 , kabsw, 0x5598f8af, 0x5598f8af, 260); 
TEST_R_OP( 66 , kabsw, 0x7fffffff, 0x80000000, 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_R_OP( 70 , kabsw, 0x00000001, 0xffffffff, 280); 
TEST_R_OP( 71 , kabsw, 0x7fffffff, 0x80000000, 284); 
TEST_CASE( 72 ,288, x14, 1, rdov x14;);
TEST_CASE( 73 ,292, x14, 1, clrov;);
TEST_CASE( 74 ,296, x14, 0, rdov x14;);
TEST_R_OP( 75 , kabsw, 0x00000001, 0xffffffff, 300); 
TEST_R_OP( 76 , kabsw, 0x00000000, 0x00000000, 304); 
TEST_R_OP( 77 , kabsw, 0x7fffffff, 0x80000000, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_R_OP( 81 , kabsw, 0x00000000, 0x00000000, 324); 
TEST_R_OP( 82 , kabsw, 0x00000000, 0x00000000, 328); 
TEST_R_OP( 83 , kabsw, 0x41463fea, 0xbeb9c016, 332); 
TEST_R_OP( 84 , kabsw, 0x40f9f4f9, 0xbf060b07, 336); 
TEST_R_OP( 85 , kabsw, 0x00000001, 0xffffffff, 340); 
TEST_R_OP( 86 , kabsw, 0x00000001, 0xffffffff, 344); 
TEST_R_OP( 87 , kabsw, 0x00000000, 0x00000000, 348); 
TEST_R_OP( 88 , kabsw, 0x7fffffff, 0x80000000, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_R_OP( 92 , kabsw, 0x7fffffff, 0x80000000, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_R_OP( 96 , kabsw, 0x00000001, 0xffffffff, 384); 
TEST_R_OP( 97 , kabsw, 0x7fffffff, 0x80000000, 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_R_OP( 101 , kabsw, 0x00000001, 0xffffffff, 404); 
TEST_R_OP( 102 , kabsw, 0x00000001, 0xffffffff, 408); 
TEST_R_OP( 103 , kabsw, 0x00000001, 0xffffffff, 412); 
TEST_R_OP( 104 , kabsw, 0x7fffffff, 0x80000000, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_R_OP( 108 , kabsw, 0x04e26041, 0xfb1d9fbf, 432); 
TEST_R_OP( 109 , kabsw, 0x7fffffff, 0x80000000, 436); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_R_OP( 113 , kabsw, 0x088722c8, 0xf778dd38, 452); 
TEST_R_OP( 114 , kabsw, 0x00000000, 0x00000000, 456); 
TEST_R_OP( 115 , kabsw, 0x7fffffff, 0x80000000, 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_R_OP( 119 , kabsw, 0x00000000, 0x00000000, 476); 
TEST_R_OP( 120 , kabsw, 0x7fffffff, 0x80000000, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_R_OP( 124 , kabsw, 0x00000000, 0x00000000, 496); 
TEST_R_OP( 125 , kabsw, 0x7c192292, 0x7c192292, 500); 
TEST_R_OP( 126 , kabsw, 0x00000000, 0x00000000, 504); 
TEST_R_OP( 127 , kabsw, 0x6b11d37a, 0x6b11d37a, 508); 
TEST_R_OP( 128 , kabsw, 0x0acd400f, 0x0acd400f, 512); 
TEST_R_OP( 129 , kabsw, 0x046389df, 0xfb9c7621, 516); 
TEST_R_OP( 130 , kabsw, 0x00000000, 0x00000000, 520); 
TEST_R_OP( 131 , kabsw, 0x00000000, 0x00000000, 524); 
TEST_R_OP( 132 , kabsw, 0x7fffffff, 0x80000000, 528); 
TEST_CASE( 133 ,532, x14, 1, rdov x14;);
TEST_CASE( 134 ,536, x14, 1, clrov;);
TEST_CASE( 135 ,540, x14, 0, rdov x14;);
TEST_R_OP( 136 , kabsw, 0x7fffffff, 0x80000000, 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_R_OP( 140 , kabsw, 0x12c5a479, 0xed3a5b87, 560); 
TEST_R_OP( 141 , kabsw, 0x00000001, 0xffffffff, 564); 
TEST_R_OP( 142 , kabsw, 0x00000000, 0x00000000, 568); 
TEST_R_OP( 143 , kabsw, 0x7fffffff, 0x80000000, 572); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_R_OP( 147 , kabsw, 0x00000000, 0x00000000, 588); 
TEST_R_OP( 148 , kabsw, 0x00000001, 0xffffffff, 592); 
TEST_R_OP( 149 , kabsw, 0x00000000, 0x00000000, 596); 
TEST_R_OP( 150 , kabsw, 0x00000000, 0x00000000, 600); 
TEST_R_OP( 151 , kabsw, 0x00000000, 0x00000000, 604); 
TEST_R_OP( 152 , kabsw, 0x00000001, 0xffffffff, 608); 
TEST_R_OP( 153 , kabsw, 0x42e5a281, 0xbd1a5d7f, 612); 
TEST_R_OP( 154 , kabsw, 0x7fffffff, 0x80000000, 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_R_OP( 158 , kabsw, 0x7fffffff, 0x80000000, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_R_OP( 162 , kabsw, 0x00000001, 0xffffffff, 648); 
TEST_R_OP( 163 , kabsw, 0x0c7a2d5b, 0x0c7a2d5b, 652); 
TEST_R_OP( 164 , kabsw, 0x3f852937, 0xc07ad6c9, 656); 
TEST_R_OP( 165 , kabsw, 0x7fffffff, 0x80000000, 660); 
TEST_CASE( 166 ,664, x14, 1, rdov x14;);
TEST_CASE( 167 ,668, x14, 1, clrov;);
TEST_CASE( 168 ,672, x14, 0, rdov x14;);
TEST_R_OP( 169 , kabsw, 0x00000000, 0x00000000, 676); 
TEST_R_OP( 170 , kabsw, 0x7fffffff, 0x80000000, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_R_OP( 174 , kabsw, 0x7fffffff, 0x80000000, 696); 
TEST_CASE( 175 ,700, x14, 1, rdov x14;);
TEST_CASE( 176 ,704, x14, 1, clrov;);
TEST_CASE( 177 ,708, x14, 0, rdov x14;);
TEST_R_OP( 178 , kabsw, 0x00000000, 0x00000000, 712); 
TEST_R_OP( 179 , kabsw, 0x00000001, 0xffffffff, 716); 
TEST_R_OP( 180 , kabsw, 0x7fffffff, 0x80000000, 720); 
TEST_CASE( 181 ,724, x14, 1, rdov x14;);
TEST_CASE( 182 ,728, x14, 1, clrov;);
TEST_CASE( 183 ,732, x14, 0, rdov x14;);
TEST_R_OP( 184 , kabsw, 0x00000000, 0x00000000, 736); 
TEST_R_OP( 185 , kabsw, 0x00000001, 0xffffffff, 740); 
TEST_R_OP( 186 , kabsw, 0x00000001, 0xffffffff, 744); 
TEST_R_OP( 187 , kabsw, 0x00000001, 0xffffffff, 748); 
TEST_R_OP( 188 , kabsw, 0x4e28c083, 0xb1d73f7d, 752); 
TEST_R_OP( 189 , kabsw, 0x00000000, 0x00000000, 756); 
TEST_R_OP( 190 , kabsw, 0x00000000, 0x00000000, 760); 
TEST_R_OP( 191 , kabsw, 0x00000001, 0xffffffff, 764); 
TEST_R_OP( 192 , kabsw, 0x00000001, 0xffffffff, 768); 
TEST_R_OP( 193 , kabsw, 0x00000000, 0x00000000, 772); 
TEST_R_OP( 194 , kabsw, 0x00000000, 0x00000000, 776); 
TEST_R_OP( 195 , kabsw, 0x7fffffff, 0x80000000, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_R_OP( 199 , kabsw, 0x00000000, 0x00000000, 796); 

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
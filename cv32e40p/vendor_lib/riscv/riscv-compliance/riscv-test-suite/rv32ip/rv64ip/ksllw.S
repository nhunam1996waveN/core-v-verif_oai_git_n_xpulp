# See LICENSE for license details.
#*****************************************************************************
# ksllw.S
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

TEST_RR_OP( 2 , ksllw, 0x00000000, 0x00000000, 0x00000000, 8); 
TEST_RR_OP( 3 , ksllw, 0x80000000, 0x80000000, 0x80000000, 12); 
TEST_RR_OP( 4 , ksllw, 0xfffffe00, 0xffffffff, 0xfd3e4489, 16); 
TEST_RR_OP( 5 , ksllw, 0x00000000, 0x00000000, 0x00000000, 20); 
TEST_RR_OP( 6 , ksllw, 0x80000000, 0x80000000, 0x00000000, 24); 
TEST_RR_OP( 7 , ksllw, 0x520d6cb8, 0x520d6cb8, 0x00000000, 28); 
TEST_RR_OP( 8 , ksllw, 0x00000000, 0x00000000, 0xffffffff, 32); 
TEST_RR_OP( 9 , ksllw, 0x5976a4af, 0x5976a4af, 0x80000000, 36); 
TEST_RR_OP( 10 , ksllw, 0x1b8c6322, 0x1b8c6322, 0x00000000, 40); 
TEST_RR_OP( 11 , ksllw, 0x80000000, 0x80000000, 0xffffffff, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_RR_OP( 15 , ksllw, 0x00000000, 0x00000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , ksllw, 0x80000000, 0x80000000, 0x73c2e131, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , ksllw, 0x00000000, 0x00000000, 0x60e6af02, 80); 
TEST_RR_OP( 21 , ksllw, 0x7fffffff, 0x543ed7ce, 0xffffffff, 84); 
TEST_CASE( 22 ,88, x14, 1, rdov x14;);
TEST_CASE( 23 ,92, x14, 1, clrov;);
TEST_CASE( 24 ,96, x14, 0, rdov x14;);
TEST_RR_OP( 25 , ksllw, 0x80000000, 0xffffffff, 0xffffffff, 100); 
TEST_RR_OP( 26 , ksllw, 0x762a30cb, 0x762a30cb, 0x80000000, 104); 
TEST_RR_OP( 27 , ksllw, 0xc1b5ecff, 0xc1b5ecff, 0x00000000, 108); 
TEST_RR_OP( 28 , ksllw, 0x80000000, 0x9411190a, 0xffffffff, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_RR_OP( 32 , ksllw, 0xd2cbbade, 0xd2cbbade, 0x80000000, 128); 
TEST_RR_OP( 33 , ksllw, 0x80000000, 0xacd05aaf, 0xa15c6443, 132); 
TEST_CASE( 34 ,136, x14, 1, rdov x14;);
TEST_CASE( 35 ,140, x14, 1, clrov;);
TEST_CASE( 36 ,144, x14, 0, rdov x14;);
TEST_RR_OP( 37 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , ksllw, 0x7fffffff, 0x2537d5ff, 0xffffffff, 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_RR_OP( 42 , ksllw, 0xc4d95d76, 0xc4d95d76, 0x00000000, 168); 
TEST_RR_OP( 43 , ksllw, 0x80000000, 0x80000000, 0x59f0df22, 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_RR_OP( 47 , ksllw, 0x80000000, 0x80000000, 0x00000000, 188); 
TEST_RR_OP( 48 , ksllw, 0xd29cbc6c, 0xd29cbc6c, 0x00000000, 192); 
TEST_RR_OP( 49 , ksllw, 0x00000000, 0x00000000, 0x80000000, 196); 
TEST_RR_OP( 50 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 200); 
TEST_RR_OP( 51 , ksllw, 0x80000000, 0x80000000, 0xf370a27e, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_RR_OP( 55 , ksllw, 0x80000000, 0x80000000, 0xf03d0952, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_RR_OP( 59 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 236); 
TEST_RR_OP( 60 , ksllw, 0x80000000, 0x80000000, 0xd11b788a, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , ksllw, 0x00000000, 0x00000000, 0xd51538da, 256); 
TEST_RR_OP( 65 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 260); 
TEST_RR_OP( 66 , ksllw, 0x390ef996, 0x390ef996, 0x00000000, 264); 
TEST_RR_OP( 67 , ksllw, 0xffff8000, 0xffffffff, 0x990e826f, 268); 
TEST_RR_OP( 68 , ksllw, 0x80000000, 0x80000000, 0x00000000, 272); 
TEST_RR_OP( 69 , ksllw, 0x00000000, 0x00000000, 0x00000000, 276); 
TEST_RR_OP( 70 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 280); 
TEST_RR_OP( 71 , ksllw, 0x00000000, 0x00000000, 0xffffffff, 284); 
TEST_RR_OP( 72 , ksllw, 0x00000000, 0x00000000, 0x80000000, 288); 
TEST_RR_OP( 73 , ksllw, 0xb3e0f6af, 0xb3e0f6af, 0x80000000, 292); 
TEST_RR_OP( 74 , ksllw, 0x80000000, 0xd2e36212, 0x4dccf464, 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_RR_OP( 78 , ksllw, 0x936daf25, 0x936daf25, 0x80000000, 312); 
TEST_RR_OP( 79 , ksllw, 0xfe000000, 0xffffffff, 0x440b6919, 316); 
TEST_RR_OP( 80 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 320); 
TEST_RR_OP( 81 , ksllw, 0x80000000, 0x80000000, 0x52f556ee, 324); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_RR_OP( 85 , ksllw, 0xffffffff, 0xffffffff, 0x00000000, 340); 
TEST_RR_OP( 86 , ksllw, 0x80000000, 0x80000000, 0x80000000, 344); 
TEST_RR_OP( 87 , ksllw, 0x6c4aa7a0, 0x6c4aa7a0, 0x00000000, 348); 
TEST_RR_OP( 88 , ksllw, 0xfe638eaf, 0xfe638eaf, 0x00000000, 352); 
TEST_RR_OP( 89 , ksllw, 0x83656e75, 0x83656e75, 0x00000000, 356); 
TEST_RR_OP( 90 , ksllw, 0x62e72e53, 0x62e72e53, 0x00000000, 360); 
TEST_RR_OP( 91 , ksllw, 0x86c70e77, 0x86c70e77, 0x00000000, 364); 
TEST_RR_OP( 92 , ksllw, 0xffe00000, 0xffffffff, 0x162cfab5, 368); 
TEST_RR_OP( 93 , ksllw, 0x7fffffff, 0x6e394cd1, 0xffffffff, 372); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_RR_OP( 97 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 388); 
TEST_RR_OP( 98 , ksllw, 0xff800000, 0xffffffff, 0xff82d677, 392); 
TEST_RR_OP( 99 , ksllw, 0xffffffff, 0xffffffff, 0x00000000, 396); 
TEST_RR_OP( 100 , ksllw, 0x80000000, 0x80000000, 0x00000000, 400); 
TEST_RR_OP( 101 , ksllw, 0xffffffff, 0xffffffff, 0x00000000, 404); 
TEST_RR_OP( 102 , ksllw, 0x00000000, 0x00000000, 0x61eb5e9b, 408); 
TEST_RR_OP( 103 , ksllw, 0x80000000, 0x9dd0f9e9, 0xffffffff, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , ksllw, 0x80000000, 0x80000000, 0xffffffff, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , ksllw, 0xffff8000, 0xffffffff, 0x6454528f, 444); 
TEST_RR_OP( 112 , ksllw, 0xffffffff, 0xffffffff, 0x00000000, 448); 
TEST_RR_OP( 113 , ksllw, 0x80000000, 0x80000000, 0x80000000, 452); 
TEST_RR_OP( 114 , ksllw, 0x00000000, 0x00000000, 0x00000000, 456); 
TEST_RR_OP( 115 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 460); 
TEST_RR_OP( 116 , ksllw, 0x00000000, 0x00000000, 0x2b4e0f48, 464); 
TEST_RR_OP( 117 , ksllw, 0x80000000, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , ksllw, 0x80000000, 0x80000000, 0x52a20bf5, 472); 
TEST_CASE( 119 ,476, x14, 1, rdov x14;);
TEST_CASE( 120 ,480, x14, 1, clrov;);
TEST_CASE( 121 ,484, x14, 0, rdov x14;);
TEST_RR_OP( 122 , ksllw, 0x80000000, 0x80000000, 0x2145d7dc, 488); 
TEST_CASE( 123 ,492, x14, 1, rdov x14;);
TEST_CASE( 124 ,496, x14, 1, clrov;);
TEST_CASE( 125 ,500, x14, 0, rdov x14;);
TEST_RR_OP( 126 , ksllw, 0x00000000, 0x00000000, 0x80000000, 504); 
TEST_RR_OP( 127 , ksllw, 0x80000000, 0x80000000, 0x00000000, 508); 
TEST_RR_OP( 128 , ksllw, 0xbc61e4d0, 0xfbc61e4d, 0x239d9ba4, 512); 
TEST_RR_OP( 129 , ksllw, 0x80000000, 0x80000000, 0x00000000, 516); 
TEST_RR_OP( 130 , ksllw, 0x00000000, 0x00000000, 0x80000000, 520); 
TEST_RR_OP( 131 , ksllw, 0x80000000, 0x80000000, 0xf95f363e, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , ksllw, 0x00000000, 0x00000000, 0x80000000, 540); 
TEST_RR_OP( 136 , ksllw, 0xffffffff, 0xffffffff, 0x00000000, 544); 
TEST_RR_OP( 137 , ksllw, 0x80000000, 0x80000000, 0xffffffff, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_RR_OP( 141 , ksllw, 0x61ae2d0a, 0x61ae2d0a, 0x00000000, 564); 
TEST_RR_OP( 142 , ksllw, 0x80000000, 0xe48ecc53, 0xffffffff, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , ksllw, 0xffff8000, 0xffffffff, 0x7d37ebcf, 584); 
TEST_RR_OP( 147 , ksllw, 0x00000000, 0x00000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , ksllw, 0x80000000, 0x80000000, 0x80000000, 592); 
TEST_RR_OP( 149 , ksllw, 0x00000000, 0x00000000, 0xa3ae5d58, 596); 
TEST_RR_OP( 150 , ksllw, 0xc8c7b2f5, 0xc8c7b2f5, 0x00000000, 600); 
TEST_RR_OP( 151 , ksllw, 0xa57993ac, 0xa57993ac, 0x00000000, 604); 
TEST_RR_OP( 152 , ksllw, 0x80000000, 0x9da3cb41, 0xffffffff, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , ksllw, 0x80000000, 0xeec74a1b, 0xffffffff, 624); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_RR_OP( 160 , ksllw, 0x80000000, 0xffffffff, 0xffffffff, 640); 
TEST_RR_OP( 161 , ksllw, 0xc58d47ba, 0xc58d47ba, 0x80000000, 644); 
TEST_RR_OP( 162 , ksllw, 0x7fffffff, 0x7025807b, 0xffffffff, 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_RR_OP( 166 , ksllw, 0x6ef31f82, 0x6ef31f82, 0x00000000, 664); 
TEST_RR_OP( 167 , ksllw, 0x00000000, 0x00000000, 0xffffffff, 668); 
TEST_RR_OP( 168 , ksllw, 0x80000000, 0x80000000, 0x80000000, 672); 
TEST_RR_OP( 169 , ksllw, 0x80000000, 0xec4a8eca, 0xb727119f, 676); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_RR_OP( 173 , ksllw, 0x80000000, 0x80000000, 0xecd521b9, 692); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_RR_OP( 177 , ksllw, 0x80000000, 0x80000000, 0x80000000, 708); 
TEST_RR_OP( 178 , ksllw, 0x7fffffff, 0x7a5d4db7, 0x192e3397, 712); 
TEST_CASE( 179 ,716, x14, 1, rdov x14;);
TEST_CASE( 180 ,720, x14, 1, clrov;);
TEST_CASE( 181 ,724, x14, 0, rdov x14;);
TEST_RR_OP( 182 , ksllw, 0x80000000, 0x80000000, 0xffffffff, 728); 
TEST_CASE( 183 ,732, x14, 1, rdov x14;);
TEST_CASE( 184 ,736, x14, 1, clrov;);
TEST_CASE( 185 ,740, x14, 0, rdov x14;);
TEST_RR_OP( 186 , ksllw, 0x8e882a3b, 0x8e882a3b, 0x00000000, 744); 
TEST_RR_OP( 187 , ksllw, 0xfffffff8, 0xffffffff, 0x95a0a5c3, 748); 
TEST_RR_OP( 188 , ksllw, 0xffffffff, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , ksllw, 0x80000000, 0x80000000, 0x00000000, 756); 
TEST_RR_OP( 190 , ksllw, 0x80000000, 0x80000000, 0x00000000, 760); 
TEST_RR_OP( 191 , ksllw, 0x80000000, 0x80000000, 0x80000000, 764); 
TEST_RR_OP( 192 , ksllw, 0x80000000, 0x80000000, 0x56d72d1a, 768); 
TEST_CASE( 193 ,772, x14, 1, rdov x14;);
TEST_CASE( 194 ,776, x14, 1, clrov;);
TEST_CASE( 195 ,780, x14, 0, rdov x14;);
TEST_RR_OP( 196 , ksllw, 0x706a7b20, 0x706a7b20, 0x80000000, 784); 
TEST_RR_OP( 197 , ksllw, 0xffffffff, 0xffffffff, 0x80000000, 788); 
TEST_RR_OP( 198 , ksllw, 0x80000000, 0xf5baa6d7, 0xffffffff, 792); 
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
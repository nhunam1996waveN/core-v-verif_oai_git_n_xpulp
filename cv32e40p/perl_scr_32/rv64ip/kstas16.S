# See LICENSE for license details.
#*****************************************************************************
# kstas16.S
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

TEST_RR_OP( 2 , kstas16, 0x8000e36e, 0x00008000, 0x80009c92, 8); 
TEST_RR_OP( 3 , kstas16, 0x8000ffff, 0xffffffff, 0x80000000, 12); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_RR_OP( 7 , kstas16, 0xdfb30001, 0x5fb30000, 0x8000ffff, 28); 
TEST_RR_OP( 8 , kstas16, 0x0000f314, 0x0000f314, 0x00000000, 32); 
TEST_RR_OP( 9 , kstas16, 0xffff8000, 0xffff8000, 0x00000000, 36); 
TEST_RR_OP( 10 , kstas16, 0x6ebd0727, 0x6ebeffff, 0xfffff8d8, 40); 
TEST_RR_OP( 11 , kstas16, 0x80000000, 0x0000ffff, 0x8000ffff, 44); 
TEST_RR_OP( 12 , kstas16, 0x43c27fff, 0x00007547, 0x43c28870, 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_RR_OP( 16 , kstas16, 0x80007fff, 0x8000795c, 0x80008000, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , kstas16, 0xffff0000, 0x00008000, 0xffff8000, 80); 
TEST_RR_OP( 21 , kstas16, 0x93158000, 0x93158000, 0x00000000, 84); 
TEST_RR_OP( 22 , kstas16, 0xffff8001, 0xffff8000, 0x0000ffff, 88); 
TEST_RR_OP( 23 , kstas16, 0x80008000, 0x80008000, 0x97860000, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , kstas16, 0x00008001, 0x00008000, 0x0000ffff, 108); 
TEST_RR_OP( 28 , kstas16, 0xffff0000, 0xffffffff, 0x0000ffff, 112); 
TEST_RR_OP( 29 , kstas16, 0x80007fff, 0x80000000, 0xd5778000, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , kstas16, 0xf5dc1018, 0xf5dc0000, 0x0000efe8, 132); 
TEST_RR_OP( 34 , kstas16, 0x80000000, 0x00000000, 0x80000000, 136); 
TEST_RR_OP( 35 , kstas16, 0xb79e07e7, 0xb79f07e7, 0xffff0000, 140); 
TEST_RR_OP( 36 , kstas16, 0x8000c4d0, 0xffffc4cf, 0x8000ffff, 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_RR_OP( 40 , kstas16, 0x4ac78000, 0x4ac78000, 0x00000000, 160); 
TEST_RR_OP( 41 , kstas16, 0x876f13f1, 0x8770329a, 0xffff1ea9, 164); 
TEST_RR_OP( 42 , kstas16, 0x8000596d, 0xffff0000, 0x8000a693, 168); 
TEST_CASE( 43 ,172, x14, 1, rdov x14;);
TEST_CASE( 44 ,176, x14, 1, clrov;);
TEST_CASE( 45 ,180, x14, 0, rdov x14;);
TEST_RR_OP( 46 , kstas16, 0x80000000, 0x00000000, 0x80000000, 184); 
TEST_RR_OP( 47 , kstas16, 0x80000b41, 0x8000ffff, 0xfffff4be, 188); 
TEST_CASE( 48 ,192, x14, 1, rdov x14;);
TEST_CASE( 49 ,196, x14, 1, clrov;);
TEST_CASE( 50 ,200, x14, 0, rdov x14;);
TEST_RR_OP( 51 , kstas16, 0xfffe8000, 0xffff8000, 0xffff0000, 204); 
TEST_RR_OP( 52 , kstas16, 0x80008001, 0xffff8000, 0x8000ffff, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , kstas16, 0x80000000, 0x00000000, 0x80000000, 224); 
TEST_RR_OP( 57 , kstas16, 0xbe6d0001, 0x00000000, 0xbe6dffff, 228); 
TEST_RR_OP( 58 , kstas16, 0x00003005, 0x00006ab4, 0x00003aaf, 232); 
TEST_RR_OP( 59 , kstas16, 0xffff90f2, 0x000090f1, 0xffffffff, 236); 
TEST_RR_OP( 60 , kstas16, 0x8000c7f6, 0xffff0000, 0x8000380a, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , kstas16, 0x19480001, 0x00000000, 0x1948ffff, 256); 
TEST_RR_OP( 65 , kstas16, 0xc10bc9b0, 0x410b8000, 0x8000b650, 260); 
TEST_RR_OP( 66 , kstas16, 0x80000000, 0x8000ffff, 0xffffffff, 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_RR_OP( 70 , kstas16, 0x8875a52c, 0x80008000, 0x0875dad4, 280); 
TEST_RR_OP( 71 , kstas16, 0x8000c7cf, 0x8000c7ce, 0x0000ffff, 284); 
TEST_RR_OP( 72 , kstas16, 0x80003978, 0x80003977, 0xdc62ffff, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , kstas16, 0x80008000, 0xffff8000, 0x80000000, 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_RR_OP( 80 , kstas16, 0xffff8000, 0xffff8000, 0x00000000, 320); 
TEST_RR_OP( 81 , kstas16, 0x80000000, 0x80000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kstas16, 0xfffe0000, 0xffff8000, 0xffff8000, 328); 
TEST_RR_OP( 83 , kstas16, 0x80000000, 0x80008000, 0x00008000, 332); 
TEST_RR_OP( 84 , kstas16, 0xf6220000, 0x76228000, 0x80008000, 336); 
TEST_RR_OP( 85 , kstas16, 0xfffeffff, 0xffffffff, 0xffff0000, 340); 
TEST_RR_OP( 86 , kstas16, 0x80000001, 0x80000000, 0x8000ffff, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , kstas16, 0xffffa191, 0xffffa190, 0x0000ffff, 360); 
TEST_RR_OP( 91 , kstas16, 0x94c08000, 0x8000a3db, 0x14c071aa, 364); 
TEST_CASE( 92 ,368, x14, 1, rdov x14;);
TEST_CASE( 93 ,372, x14, 1, clrov;);
TEST_CASE( 94 ,376, x14, 0, rdov x14;);
TEST_RR_OP( 95 , kstas16, 0x80000001, 0xb7ab0000, 0x8000ffff, 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_RR_OP( 99 , kstas16, 0xc38f0000, 0x438fffff, 0x8000ffff, 396); 
TEST_RR_OP( 100 , kstas16, 0xfffe0001, 0xffff0000, 0xffffffff, 400); 
TEST_RR_OP( 101 , kstas16, 0xffff7fff, 0x00002576, 0xffff8000, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , kstas16, 0xff960000, 0x7f96ffff, 0x8000ffff, 420); 
TEST_RR_OP( 106 , kstas16, 0xfffe7fff, 0xffffffff, 0xffff8000, 424); 
TEST_RR_OP( 107 , kstas16, 0x7fff7fff, 0x7f97ffff, 0x31d08000, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , kstas16, 0xa1060000, 0xa107ffff, 0xffffffff, 444); 
TEST_RR_OP( 112 , kstas16, 0x8000ffff, 0x8000ffff, 0x80000000, 448); 
TEST_CASE( 113 ,452, x14, 1, rdov x14;);
TEST_CASE( 114 ,456, x14, 1, clrov;);
TEST_CASE( 115 ,460, x14, 0, rdov x14;);
TEST_RR_OP( 116 , kstas16, 0x80007fff, 0xc3250000, 0x80008000, 464); 
TEST_CASE( 117 ,468, x14, 1, rdov x14;);
TEST_CASE( 118 ,472, x14, 1, clrov;);
TEST_CASE( 119 ,476, x14, 0, rdov x14;);
TEST_RR_OP( 120 , kstas16, 0x80008b67, 0x00008b67, 0x80000000, 480); 
TEST_RR_OP( 121 , kstas16, 0x0ea2b22d, 0x0ea3b22d, 0xffff0000, 484); 
TEST_RR_OP( 122 , kstas16, 0xcfd47fff, 0xcfd4ffff, 0x00008000, 488); 
TEST_RR_OP( 123 , kstas16, 0xac3fdb0d, 0xffffdb0d, 0xac400000, 492); 
TEST_RR_OP( 124 , kstas16, 0xeb4f7fff, 0x6b4fffff, 0x80008000, 496); 
TEST_RR_OP( 125 , kstas16, 0xfe438001, 0xfe438000, 0x0000ffff, 500); 
TEST_RR_OP( 126 , kstas16, 0x80007fff, 0x80000000, 0x80008000, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_RR_OP( 130 , kstas16, 0x00007fff, 0x0000ffff, 0x00008000, 520); 
TEST_RR_OP( 131 , kstas16, 0xb12e8000, 0xffff8000, 0xb12f52f8, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , kstas16, 0x80000001, 0x00000000, 0x8000ffff, 540); 
TEST_RR_OP( 136 , kstas16, 0x80000000, 0x8000ffff, 0x8000ffff, 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_RR_OP( 140 , kstas16, 0x8000ffff, 0xffffffff, 0x80000000, 560); 
TEST_CASE( 141 ,564, x14, 1, rdov x14;);
TEST_CASE( 142 ,568, x14, 1, clrov;);
TEST_CASE( 143 ,572, x14, 0, rdov x14;);
TEST_RR_OP( 144 , kstas16, 0x2bb57636, 0x2bb57635, 0x0000ffff, 576); 
TEST_RR_OP( 145 , kstas16, 0x8c3d0001, 0x0c3d0000, 0x8000ffff, 580); 
TEST_RR_OP( 146 , kstas16, 0x8000ffff, 0xffffffff, 0x80000000, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , kstas16, 0xfb968000, 0x7b968000, 0x80000000, 600); 
TEST_RR_OP( 151 , kstas16, 0x909ea3d5, 0x109ea3d4, 0x8000ffff, 604); 
TEST_RR_OP( 152 , kstas16, 0xf0557fff, 0xf0564024, 0xffff8000, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , kstas16, 0xdf9f3f52, 0xffff3f51, 0xdfa0ffff, 624); 
TEST_RR_OP( 157 , kstas16, 0x80008000, 0x00008000, 0x80004077, 628); 
TEST_CASE( 158 ,632, x14, 1, rdov x14;);
TEST_CASE( 159 ,636, x14, 1, clrov;);
TEST_CASE( 160 ,640, x14, 0, rdov x14;);
TEST_RR_OP( 161 , kstas16, 0x5161ffff, 0xffffffff, 0x51620000, 644); 
TEST_RR_OP( 162 , kstas16, 0x8000ffff, 0x8000ffff, 0x8b860000, 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_RR_OP( 166 , kstas16, 0x80000000, 0x80000000, 0xffff0000, 664); 
TEST_CASE( 167 ,668, x14, 1, rdov x14;);
TEST_CASE( 168 ,672, x14, 1, clrov;);
TEST_CASE( 169 ,676, x14, 0, rdov x14;);
TEST_RR_OP( 170 , kstas16, 0xe6720000, 0xe6728000, 0x00008000, 680); 
TEST_RR_OP( 171 , kstas16, 0x8000ffff, 0x8000ffff, 0xffff0000, 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_RR_OP( 175 , kstas16, 0xfffe7fff, 0xffff0000, 0xffff8000, 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_RR_OP( 179 , kstas16, 0xffff0001, 0x00000000, 0xffffffff, 716); 
TEST_RR_OP( 180 , kstas16, 0x8e60ccc8, 0x0e60ffff, 0x80003337, 720); 
TEST_RR_OP( 181 , kstas16, 0x80000000, 0x8000ffff, 0xf25dffff, 724); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_RR_OP( 185 , kstas16, 0x8000ef89, 0x80000000, 0x00001077, 740); 
TEST_RR_OP( 186 , kstas16, 0x80000000, 0x8000ffff, 0x0000ffff, 744); 
TEST_RR_OP( 187 , kstas16, 0x80007fff, 0x80000000, 0x80008000, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , kstas16, 0x80007fff, 0x8000649d, 0x00008000, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , kstas16, 0x00007fff, 0x00000000, 0x00008000, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , kstas16, 0xffff5dff, 0x0000ddff, 0xffff8000, 796); 

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
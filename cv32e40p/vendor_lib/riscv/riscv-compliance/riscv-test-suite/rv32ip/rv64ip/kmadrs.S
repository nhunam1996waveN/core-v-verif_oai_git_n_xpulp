# See LICENSE for license details.
#*****************************************************************************
# kmadrs.S
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

TEST_RR_OP( 2 , kmadrs, 0x00000000, 0x00000000, 0x00000000, 8); 
TEST_RR_OP( 3 , kmadrs, 0x3b500000, 0x80000000, 0x76a08a6e, 12); 
TEST_RR_OP( 4 , kmadrs, 0x3b500000, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , kmadrs, 0x1b1e8000, 0x80000000, 0xbf9d25b9, 20); 
TEST_RR_OP( 6 , kmadrs, 0x1b1e8000, 0x00000000, 0x4fd92f20, 24); 
TEST_RR_OP( 7 , kmadrs, 0x1b1e8000, 0x00000000, 0xb86fe745, 28); 
TEST_RR_OP( 8 , kmadrs, 0x1b1e8000, 0xffffffff, 0x00000000, 32); 
TEST_RR_OP( 9 , kmadrs, 0x1b1e0000, 0xffffffff, 0x80000000, 36); 
TEST_RR_OP( 10 , kmadrs, 0x1b1e0000, 0x96595c5a, 0x00000000, 40); 
TEST_RR_OP( 11 , kmadrs, 0x1b1e0000, 0x83bd54e2, 0x00000000, 44); 
TEST_RR_OP( 12 , kmadrs, 0x1b1e0000, 0x00000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmadrs, 0x1b1e0000, 0x00000000, 0x80000000, 52); 
TEST_RR_OP( 14 , kmadrs, 0x3d88760e, 0xb94df333, 0x68dc92de, 56); 
TEST_RR_OP( 15 , kmadrs, 0x2f656f4d, 0xc175ff7a, 0xc5c3d35b, 60); 
TEST_RR_OP( 16 , kmadrs, 0x2f64ef4d, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmadrs, 0xef64ef4d, 0x80000000, 0x80000000, 68); 
TEST_RR_OP( 18 , kmadrs, 0x238c6f4d, 0x80000000, 0x684fad5d, 72); 
TEST_RR_OP( 19 , kmadrs, 0x238c6f4d, 0x00000000, 0x4682a79d, 76); 
TEST_RR_OP( 20 , kmadrs, 0x6c8ef783, 0x99af6b4a, 0x3a92765a, 80); 
TEST_RR_OP( 21 , kmadrs, 0x6c8ef783, 0x00000000, 0x80000000, 84); 
TEST_RR_OP( 22 , kmadrs, 0x6c8f2fc9, 0xdca8a462, 0xffffffff, 88); 
TEST_RR_OP( 23 , kmadrs, 0x6c8f2fc9, 0x80000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kmadrs, 0x5d622fc9, 0x80000000, 0xe1a6197e, 96); 
TEST_RR_OP( 25 , kmadrs, 0x5d622fc9, 0xffffffff, 0xffffffff, 100); 
TEST_RR_OP( 26 , kmadrs, 0x5d622fc9, 0x00000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmadrs, 0x7a7a2fc9, 0x80000000, 0x3a30ddf0, 108); 
TEST_RR_OP( 28 , kmadrs, 0x7a7a2fc9, 0xffffffff, 0x00000000, 112); 
TEST_RR_OP( 29 , kmadrs, 0x7a7a2fc9, 0xcff5c32f, 0x00000000, 116); 
TEST_RR_OP( 30 , kmadrs, 0x7a7a2fc9, 0x00000000, 0x80000000, 120); 
TEST_RR_OP( 31 , kmadrs, 0x7fffffff, 0x80000000, 0x793ab284, 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_RR_OP( 35 , kmadrs, 0xffff8000, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , kmadrs, 0xffff8000, 0x00000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , kmadrs, 0xffff8000, 0x00000000, 0x00000000, 148); 
TEST_RR_OP( 38 , kmadrs, 0xbfff8000, 0x80000000, 0x80000000, 152); 
TEST_RR_OP( 39 , kmadrs, 0xe6f70000, 0x80000000, 0x4def5824, 156); 
TEST_RR_OP( 40 , kmadrs, 0xe6f70000, 0x80000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kmadrs, 0xe6f70000, 0x00000000, 0x80000000, 164); 
TEST_RR_OP( 42 , kmadrs, 0xe6f6ea3f, 0xa231b7f2, 0xffffffff, 168); 
TEST_RR_OP( 43 , kmadrs, 0xe6f6ea3f, 0x00000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmadrs, 0xe6f6ea3f, 0x80000000, 0x00000000, 176); 
TEST_RR_OP( 45 , kmadrs, 0xe6f6ea3f, 0xffffffff, 0xffffffff, 180); 
TEST_RR_OP( 46 , kmadrs, 0xe6f6ea3f, 0x80000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kmadrs, 0xe6f6ea3f, 0x00000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kmadrs, 0xda7d6a3f, 0xe70dbf78, 0x80000000, 192); 
TEST_RR_OP( 49 , kmadrs, 0x9cb6ea3f, 0x84731646, 0x80000000, 196); 
TEST_RR_OP( 50 , kmadrs, 0x80000000, 0x80000000, 0x80000000, 200); 
TEST_CASE( 51 ,204, x14, 1, rdov x14;);
TEST_CASE( 52 ,208, x14, 1, clrov;);
TEST_CASE( 53 ,212, x14, 0, rdov x14;);
TEST_RR_OP( 54 , kmadrs, 0x00000000, 0x3b06a8ce, 0x00000000, 216); 
TEST_RR_OP( 55 , kmadrs, 0x00000000, 0x00000000, 0x00000000, 220); 
TEST_RR_OP( 56 , kmadrs, 0x00000000, 0x00000000, 0x80000000, 224); 
TEST_RR_OP( 57 , kmadrs, 0xffffd9ba, 0xffffffff, 0xddf6043c, 228); 
TEST_RR_OP( 58 , kmadrs, 0xbfffd9ba, 0x80000000, 0x80000000, 232); 
TEST_RR_OP( 59 , kmadrs, 0xbfffd9ba, 0xdcbb1647, 0x00000000, 236); 
TEST_RR_OP( 60 , kmadrs, 0xbfffd9ba, 0x00000000, 0x9abd4661, 240); 
TEST_RR_OP( 61 , kmadrs, 0xbfffd9ba, 0xa5e1fc58, 0x00000000, 244); 
TEST_RR_OP( 62 , kmadrs, 0xe649d9ba, 0x80000000, 0x4c940e6e, 248); 
TEST_RR_OP( 63 , kmadrs, 0xe649d9ba, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , kmadrs, 0xbd1bd9ba, 0x80000000, 0xada482c5, 256); 
TEST_RR_OP( 65 , kmadrs, 0xe83ed9ba, 0x80000000, 0x56468e36, 260); 
TEST_RR_OP( 66 , kmadrs, 0xe83e59ba, 0x80000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , kmadrs, 0xe83e59ba, 0x00000000, 0x00000000, 268); 
TEST_RR_OP( 68 , kmadrs, 0xe83dd9ba, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , kmadrs, 0xe83db47b, 0x8330a86f, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmadrs, 0xf72c347b, 0x1ddd67cb, 0x80000000, 280); 
TEST_RR_OP( 71 , kmadrs, 0xf72bb47b, 0x80000000, 0xffffffff, 284); 
TEST_RR_OP( 72 , kmadrs, 0xf72bb47b, 0x00000000, 0x15c8f622, 288); 
TEST_RR_OP( 73 , kmadrs, 0xf72bb47b, 0x80000000, 0x00000000, 292); 
TEST_RR_OP( 74 , kmadrs, 0xf72b7fa2, 0x2a0e5ee7, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmadrs, 0xf72b7fa2, 0x00000000, 0xffffffff, 300); 
TEST_RR_OP( 76 , kmadrs, 0xf72b7fa2, 0xffffffff, 0x00000000, 304); 
TEST_RR_OP( 77 , kmadrs, 0xf72b7fa2, 0x00000000, 0x00000000, 308); 
TEST_RR_OP( 78 , kmadrs, 0xf72b7fa2, 0x00000000, 0x6b48dbd5, 312); 
TEST_RR_OP( 79 , kmadrs, 0xf72b7fa2, 0x00000000, 0xffffffff, 316); 
TEST_RR_OP( 80 , kmadrs, 0xbadeffa2, 0x80000000, 0x8767cd4a, 320); 
TEST_RR_OP( 81 , kmadrs, 0x9f5d7fa2, 0xc8fd52c9, 0x80000000, 324); 
TEST_RR_OP( 82 , kmadrs, 0x9f5e4421, 0xffffffff, 0x5f579ad8, 328); 
TEST_RR_OP( 83 , kmadrs, 0x9f5e4421, 0x38116339, 0x00000000, 332); 
TEST_RR_OP( 84 , kmadrs, 0x9f5e4421, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , kmadrs, 0x9f5e669d, 0xffffffff, 0x24a10225, 340); 
TEST_RR_OP( 86 , kmadrs, 0x9f5e669d, 0x00000000, 0xffffffff, 344); 
TEST_RR_OP( 87 , kmadrs, 0x9f5de69d, 0xffffffff, 0x80000000, 348); 
TEST_RR_OP( 88 , kmadrs, 0x80000000, 0x80000000, 0x80000000, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_RR_OP( 92 , kmadrs, 0x00000000, 0xffffffff, 0x00000000, 368); 
TEST_RR_OP( 93 , kmadrs, 0x00000000, 0x00000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , kmadrs, 0x00000000, 0x80000000, 0x00000000, 376); 
TEST_RR_OP( 95 , kmadrs, 0x2fc20000, 0x5f845b3c, 0x80000000, 380); 
TEST_RR_OP( 96 , kmadrs, 0x2fc20000, 0x00000000, 0x7aacac39, 384); 
TEST_RR_OP( 97 , kmadrs, 0x2fc20000, 0x80000000, 0x00000000, 388); 
TEST_RR_OP( 98 , kmadrs, 0x2fc20000, 0x00000000, 0xeed9ba4b, 392); 
TEST_RR_OP( 99 , kmadrs, 0x2fc20000, 0x00000000, 0x0d70d122, 396); 
TEST_RR_OP( 100 , kmadrs, 0xefc20000, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 101 , kmadrs, 0xefc18000, 0xffffffff, 0x80000000, 404); 
TEST_RR_OP( 102 , kmadrs, 0xefc18000, 0x00000000, 0xd6f3a112, 408); 
TEST_RR_OP( 103 , kmadrs, 0xefc18355, 0x4af0479b, 0xffffffff, 412); 
TEST_RR_OP( 104 , kmadrs, 0x051d0355, 0x2ab7c068, 0x80000000, 416); 
TEST_RR_OP( 105 , kmadrs, 0x051d0355, 0xffffffff, 0xffffffff, 420); 
TEST_RR_OP( 106 , kmadrs, 0x051d0355, 0x84931a74, 0x00000000, 424); 
TEST_RR_OP( 107 , kmadrs, 0x051c8355, 0x80000000, 0xffffffff, 428); 
TEST_RR_OP( 108 , kmadrs, 0x051c8355, 0x00000000, 0x80000000, 432); 
TEST_RR_OP( 109 , kmadrs, 0xf5448355, 0x80000000, 0xe050cd13, 436); 
TEST_RR_OP( 110 , kmadrs, 0xb5448355, 0x80000000, 0x80000000, 440); 
TEST_RR_OP( 111 , kmadrs, 0x80000000, 0x80000000, 0x82f755b8, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , kmadrs, 0xffff8000, 0x80000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmadrs, 0xffff7cc0, 0xffffffff, 0x9e82a1c2, 464); 
TEST_RR_OP( 117 , kmadrs, 0xffff7cc0, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kmadrs, 0xffff7cc0, 0x00000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmadrs, 0xffff7cc0, 0x00000000, 0x7dc0ecf5, 476); 
TEST_RR_OP( 120 , kmadrs, 0xfffec75d, 0x88b33e16, 0xffffffff, 480); 
TEST_RR_OP( 121 , kmadrs, 0xfffec75d, 0x00000000, 0x80000000, 484); 
TEST_RR_OP( 122 , kmadrs, 0xfffec75d, 0x80000000, 0x00000000, 488); 
TEST_RR_OP( 123 , kmadrs, 0xfffe475d, 0xffffffff, 0x80000000, 492); 
TEST_RR_OP( 124 , kmadrs, 0x14d1b2e8, 0x1e7dae46, 0x0f09b928, 496); 
TEST_RR_OP( 125 , kmadrs, 0x14d20963, 0xffffffff, 0xfbc1a546, 500); 
TEST_RR_OP( 126 , kmadrs, 0x14d20963, 0x00000000, 0xa6464bab, 504); 
TEST_RR_OP( 127 , kmadrs, 0x14d18963, 0x80000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmadrs, 0x29490963, 0x28ef4d18, 0x80000000, 512); 
TEST_RR_OP( 129 , kmadrs, 0x29488963, 0x80000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , kmadrs, 0x29488963, 0xffffffff, 0x00000000, 520); 
TEST_RR_OP( 131 , kmadrs, 0xe9488963, 0x80000000, 0x80000000, 524); 
TEST_RR_OP( 132 , kmadrs, 0xe9488963, 0x80000000, 0x00000000, 528); 
TEST_RR_OP( 133 , kmadrs, 0xa9488963, 0x80000000, 0x80000000, 532); 
TEST_RR_OP( 134 , kmadrs, 0xa9480963, 0x80000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmadrs, 0xa9480963, 0x00000000, 0x80000000, 540); 
TEST_RR_OP( 136 , kmadrs, 0xa9480963, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , kmadrs, 0xa9480963, 0x00000000, 0x80000000, 548); 
TEST_RR_OP( 138 , kmadrs, 0xa9480963, 0x00000000, 0xe0ae6146, 552); 
TEST_RR_OP( 139 , kmadrs, 0xa9480963, 0x00000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , kmadrs, 0x9f6e78e3, 0x45f0ea70, 0x380bbf2b, 560); 
TEST_RR_OP( 141 , kmadrs, 0x9f6e78e3, 0x00000000, 0xffffffff, 564); 
TEST_RR_OP( 142 , kmadrs, 0x9f6e0b79, 0x04097173, 0xffffffff, 568); 
TEST_RR_OP( 143 , kmadrs, 0x9f6d8b79, 0xffffffff, 0x80000000, 572); 
TEST_RR_OP( 144 , kmadrs, 0x9f6d8b79, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kmadrs, 0x80000000, 0x80000000, 0x80000000, 580); 
TEST_CASE( 146 ,584, x14, 1, rdov x14;);
TEST_CASE( 147 ,588, x14, 1, clrov;);
TEST_CASE( 148 ,592, x14, 0, rdov x14;);
TEST_RR_OP( 149 , kmadrs, 0x00000000, 0x00000000, 0x780745fc, 596); 
TEST_RR_OP( 150 , kmadrs, 0x00000000, 0x00000000, 0xffffffff, 600); 
TEST_RR_OP( 151 , kmadrs, 0xc0000000, 0x80000000, 0x80000000, 604); 
TEST_RR_OP( 152 , kmadrs, 0xc0000000, 0x00000000, 0x21418432, 608); 
TEST_RR_OP( 153 , kmadrs, 0xc0000000, 0xffffffff, 0xffffffff, 612); 
TEST_RR_OP( 154 , kmadrs, 0xc0000000, 0xffffffff, 0x00000000, 616); 
TEST_RR_OP( 155 , kmadrs, 0xe5bb8000, 0x80000000, 0x4b778d2e, 620); 
TEST_RR_OP( 156 , kmadrs, 0xe5bb8000, 0x00000000, 0xffffffff, 624); 
TEST_RR_OP( 157 , kmadrs, 0xe5bb8000, 0x00000000, 0x43dc6703, 628); 
TEST_RR_OP( 158 , kmadrs, 0x1eb48000, 0x71f2185a, 0x80000000, 632); 
TEST_RR_OP( 159 , kmadrs, 0x1eb48000, 0x00000000, 0x156a0659, 636); 
TEST_RR_OP( 160 , kmadrs, 0x2760de39, 0xc9535d06, 0x7b77cf4d, 640); 
TEST_RR_OP( 161 , kmadrs, 0x333aa4fb, 0x70f39b54, 0x208ebd57, 644); 
TEST_RR_OP( 162 , kmadrs, 0x333adda5, 0x50011757, 0xffffffff, 648); 
TEST_RR_OP( 163 , kmadrs, 0x333aaaba, 0x3bf66ee1, 0xffffffff, 652); 
TEST_RR_OP( 164 , kmadrs, 0x333a2aba, 0xffffffff, 0x80000000, 656); 
TEST_RR_OP( 165 , kmadrs, 0x333a2aba, 0x00000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , kmadrs, 0x333ab441, 0xffffffff, 0x4e9bc514, 664); 
TEST_RR_OP( 167 , kmadrs, 0x333ab441, 0xffffffff, 0xffffffff, 668); 
TEST_RR_OP( 168 , kmadrs, 0x65079cdb, 0x743eeddc, 0xa51387db, 672); 
TEST_RR_OP( 169 , kmadrs, 0x65079cdb, 0x2c5b9060, 0x00000000, 676); 
TEST_RR_OP( 170 , kmadrs, 0x65079cdb, 0x00000000, 0x00000000, 680); 
TEST_RR_OP( 171 , kmadrs, 0x65071cdb, 0xffffffff, 0x80000000, 684); 
TEST_RR_OP( 172 , kmadrs, 0x65071cdb, 0x00000000, 0x80000000, 688); 
TEST_RR_OP( 173 , kmadrs, 0x65071cdb, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , kmadrs, 0x65071cdb, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , kmadrs, 0x65071cdb, 0x00000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , kmadrs, 0x65071cdb, 0x00000000, 0x20f4bee5, 704); 
TEST_RR_OP( 177 , kmadrs, 0x65071cdb, 0xffffffff, 0xffffffff, 708); 
TEST_RR_OP( 178 , kmadrs, 0x65071cdb, 0x00000000, 0x00000000, 712); 
TEST_RR_OP( 179 , kmadrs, 0x65071cdb, 0x00000000, 0x00000000, 716); 
TEST_RR_OP( 180 , kmadrs, 0x65069cdb, 0xffffffff, 0x80000000, 720); 
TEST_RR_OP( 181 , kmadrs, 0x65069cdb, 0xffffffff, 0xffffffff, 724); 
TEST_RR_OP( 182 , kmadrs, 0x6505bb68, 0x883669a9, 0xffffffff, 728); 
TEST_RR_OP( 183 , kmadrs, 0x65053b68, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmadrs, 0x65053de2, 0x5d775afd, 0xffffffff, 736); 
TEST_RR_OP( 185 , kmadrs, 0x65053de2, 0x00000000, 0x00000000, 740); 
TEST_RR_OP( 186 , kmadrs, 0x65053de2, 0xa8c12d3c, 0x00000000, 744); 
TEST_RR_OP( 187 , kmadrs, 0x6504cb7f, 0xffffffff, 0xa1131376, 748); 
TEST_RR_OP( 188 , kmadrs, 0x7fffffff, 0x4bfb81e9, 0x80000000, 752); 
TEST_CASE( 189 ,756, x14, 1, rdov x14;);
TEST_CASE( 190 ,760, x14, 1, clrov;);
TEST_CASE( 191 ,764, x14, 0, rdov x14;);
TEST_RR_OP( 192 , kmadrs, 0x00000000, 0x6dfcef13, 0x00000000, 768); 
TEST_RR_OP( 193 , kmadrs, 0x00000000, 0xbc936c3a, 0x00000000, 772); 
TEST_RR_OP( 194 , kmadrs, 0x00000000, 0x00000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmadrs, 0x00000000, 0x00000000, 0xd543a08b, 780); 
TEST_RR_OP( 196 , kmadrs, 0x00000000, 0xffffffff, 0x00000000, 784); 
TEST_RR_OP( 197 , kmadrs, 0x1b3b0000, 0x80000000, 0x3676e434, 788); 
TEST_RR_OP( 198 , kmadrs, 0x1b3b0000, 0x00000000, 0xa4dbb4fc, 792); 
TEST_RR_OP( 199 , kmadrs, 0x1b3a8000, 0xffffffff, 0x80000000, 796); 

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
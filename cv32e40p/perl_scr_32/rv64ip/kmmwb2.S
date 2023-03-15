# See LICENSE for license details.
#*****************************************************************************
# kmmwb2.S
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

TEST_RR_OP( 2 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 12); 
TEST_RR_OP( 4 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 24); 
TEST_RR_OP( 7 , kmmwb2, 0x00000000, 0xffffffff, 0x88a7d1ce, 28); 
TEST_RR_OP( 8 , kmmwb2, 0x1da15d0e, 0x50b8e197, 0xa4992efc, 32); 
TEST_RR_OP( 9 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 36); 
TEST_RR_OP( 10 , kmmwb2, 0x9fd60000, 0x80000000, 0x5536602a, 40); 
TEST_RR_OP( 11 , kmmwb2, 0x00000000, 0x07dc3699, 0x80000000, 44); 
TEST_RR_OP( 12 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 52); 
TEST_RR_OP( 14 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 56); 
TEST_RR_OP( 15 , kmmwb2, 0x00000000, 0xa49a8ec3, 0x00000000, 60); 
TEST_RR_OP( 16 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 72); 
TEST_RR_OP( 19 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 76); 
TEST_RR_OP( 20 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmmwb2, 0x87b50000, 0x80000000, 0x6a39784b, 88); 
TEST_RR_OP( 23 , kmmwb2, 0x00000000, 0xffffffff, 0x3cc988c3, 92); 
TEST_RR_OP( 24 , kmmwb2, 0x057c9da0, 0x86edc23d, 0xf853fa33, 96); 
TEST_RR_OP( 25 , kmmwb2, 0x00000000, 0x0bcea7b1, 0x80000000, 100); 
TEST_RR_OP( 26 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 108); 
TEST_RR_OP( 28 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 112); 
TEST_RR_OP( 29 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 116); 
TEST_RR_OP( 30 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 120); 
TEST_RR_OP( 31 , kmmwb2, 0x00000000, 0x00000000, 0x5c47b5da, 124); 
TEST_RR_OP( 32 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 128); 
TEST_RR_OP( 33 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 132); 
TEST_RR_OP( 34 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 136); 
TEST_RR_OP( 35 , kmmwb2, 0xbb8f0000, 0x80000000, 0xac0d4471, 140); 
TEST_RR_OP( 36 , kmmwb2, 0x93c70000, 0x80000000, 0x63e86c39, 144); 
TEST_RR_OP( 37 , kmmwb2, 0x6c9c0000, 0x80000000, 0x01719364, 148); 
TEST_RR_OP( 38 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 156); 
TEST_RR_OP( 40 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 160); 
TEST_RR_OP( 41 , kmmwb2, 0xffffffff, 0xffffffff, 0xb2a367a9, 164); 
TEST_RR_OP( 42 , kmmwb2, 0x00000000, 0x1c2b07d9, 0x00000000, 168); 
TEST_RR_OP( 43 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmmwb2, 0x00000000, 0x309ec7a8, 0x00000000, 176); 
TEST_RR_OP( 45 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 180); 
TEST_RR_OP( 46 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 188); 
TEST_RR_OP( 48 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 192); 
TEST_RR_OP( 49 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 196); 
TEST_RR_OP( 50 , kmmwb2, 0x00000000, 0x00000000, 0x2a4daaff, 200); 
TEST_RR_OP( 51 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 204); 
TEST_RR_OP( 52 , kmmwb2, 0x00000000, 0x00000000, 0x1c04daad, 208); 
TEST_RR_OP( 53 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 212); 
TEST_RR_OP( 54 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 216); 
TEST_RR_OP( 55 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmmwb2, 0x00000000, 0xd70cff8f, 0x00000000, 224); 
TEST_RR_OP( 57 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 228); 
TEST_RR_OP( 58 , kmmwb2, 0x0000dd92, 0x9136c21f, 0xffffffff, 232); 
TEST_RR_OP( 59 , kmmwb2, 0x00000000, 0x3cc14f14, 0x00000000, 236); 
TEST_RR_OP( 60 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kmmwb2, 0x00000000, 0x8b47652c, 0x80000000, 244); 
TEST_RR_OP( 62 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 248); 
TEST_RR_OP( 63 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 252); 
TEST_RR_OP( 64 , kmmwb2, 0xf0ea3194, 0xd600a04f, 0x1eba2dfa, 256); 
TEST_RR_OP( 65 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 260); 
TEST_RR_OP( 66 , kmmwb2, 0x00000000, 0x1888ec56, 0x80000000, 264); 
TEST_RR_OP( 67 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 268); 
TEST_RR_OP( 68 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP( 69 , kmmwb2, 0xf6360000, 0x80000000, 0x425009ca, 276); 
TEST_RR_OP( 70 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 280); 
TEST_RR_OP( 71 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 284); 
TEST_RR_OP( 72 , kmmwb2, 0x5ec59e00, 0x6e07aebc, 0x12966e40, 288); 
TEST_RR_OP( 73 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 292); 
TEST_RR_OP( 74 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 296); 
TEST_RR_OP( 75 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 300); 
TEST_RR_OP( 76 , kmmwb2, 0x11167771, 0x836eac88, 0xad48ee71, 304); 
TEST_RR_OP( 77 , kmmwb2, 0x207c0000, 0x80000000, 0x4184df84, 308); 
TEST_RR_OP( 78 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 312); 
TEST_RR_OP( 79 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 316); 
TEST_RR_OP( 80 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 320); 
TEST_RR_OP( 81 , kmmwb2, 0xc6fd5bd2, 0xb715713f, 0xfd136414, 324); 
TEST_RR_OP( 82 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmmwb2, 0xffffffff, 0xffffffff, 0xcf8619d1, 332); 
TEST_RR_OP( 84 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 336); 
TEST_RR_OP( 85 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 340); 
TEST_RR_OP( 86 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 344); 
TEST_RR_OP( 87 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 348); 
TEST_RR_OP( 88 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 352); 
TEST_RR_OP( 89 , kmmwb2, 0x00000000, 0x3e244463, 0x80000000, 356); 
TEST_RR_OP( 90 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 360); 
TEST_RR_OP( 91 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , kmmwb2, 0x00000000, 0xadfb7bd3, 0x80000000, 368); 
TEST_RR_OP( 93 , kmmwb2, 0xffffffff, 0xffffffff, 0x38ec13a3, 372); 
TEST_RR_OP( 94 , kmmwb2, 0xd1531239, 0x33e28860, 0x27c68cda, 376); 
TEST_RR_OP( 95 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 380); 
TEST_RR_OP( 96 , kmmwb2, 0x00000000, 0x0766bfa6, 0x80000000, 384); 
TEST_RR_OP( 97 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 388); 
TEST_RR_OP( 98 , kmmwb2, 0x00000000, 0xdb5f56af, 0x80000000, 392); 
TEST_RR_OP( 99 , kmmwb2, 0x00000000, 0x24b669f9, 0x00000000, 396); 
TEST_RR_OP( 100 , kmmwb2, 0x00000000, 0xab64dd3c, 0x80000000, 400); 
TEST_RR_OP( 101 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 404); 
TEST_RR_OP( 102 , kmmwb2, 0x00000000, 0xd356603d, 0x00000000, 408); 
TEST_RR_OP( 103 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 412); 
TEST_RR_OP( 104 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 420); 
TEST_RR_OP( 106 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , kmmwb2, 0x5df90000, 0x80000000, 0x60b8a207, 428); 
TEST_RR_OP( 108 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 436); 
TEST_RR_OP( 110 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 440); 
TEST_RR_OP( 111 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , kmmwb2, 0x00000000, 0xffffffff, 0xa79fdeec, 448); 
TEST_RR_OP( 113 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmmwb2, 0xc0155a28, 0x85eef28b, 0x1dd44306, 456); 
TEST_RR_OP( 115 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmmwb2, 0xffff55fa, 0x5502895a, 0xffffffff, 464); 
TEST_RR_OP( 117 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 476); 
TEST_RR_OP( 120 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 480); 
TEST_RR_OP( 121 , kmmwb2, 0x00000000, 0x00000000, 0x87b09f78, 484); 
TEST_RR_OP( 122 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , kmmwb2, 0x00000000, 0xec92ad2f, 0x00000000, 492); 
TEST_RR_OP( 124 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kmmwb2, 0x0b8a61b1, 0xcfa90eac, 0x45c2e171, 500); 
TEST_RR_OP( 126 , kmmwb2, 0x00000b08, 0xfa7b973b, 0xffffffff, 504); 
TEST_RR_OP( 127 , kmmwb2, 0xffffffff, 0xffffffff, 0x76b173ff, 508); 
TEST_RR_OP( 128 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , kmmwb2, 0x00000000, 0x00000000, 0x361f12d4, 516); 
TEST_RR_OP( 130 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 520); 
TEST_RR_OP( 131 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , kmmwb2, 0x00000000, 0xc8ede83f, 0x80000000, 528); 
TEST_RR_OP( 133 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 532); 
TEST_RR_OP( 134 , kmmwb2, 0x00000000, 0xfe608337, 0x00000000, 536); 
TEST_RR_OP( 135 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 540); 
TEST_RR_OP( 136 , kmmwb2, 0x00000000, 0x9cdcf155, 0x80000000, 544); 
TEST_RR_OP( 137 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 548); 
TEST_RR_OP( 138 , kmmwb2, 0x00000000, 0xfc9958b3, 0x00000000, 552); 
TEST_RR_OP( 139 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 556); 
TEST_RR_OP( 140 , kmmwb2, 0x00000000, 0x29744c21, 0x00000000, 560); 
TEST_RR_OP( 141 , kmmwb2, 0x00000000, 0x00000000, 0x76a3439f, 564); 
TEST_RR_OP( 142 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 584); 
TEST_RR_OP( 147 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 588); 
TEST_RR_OP( 148 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 592); 
TEST_RR_OP( 149 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 596); 
TEST_RR_OP( 150 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 600); 
TEST_RR_OP( 151 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 604); 
TEST_RR_OP( 152 , kmmwb2, 0x00000000, 0xfe56b1b5, 0x00000000, 608); 
TEST_RR_OP( 153 , kmmwb2, 0x00000000, 0x80000000, 0x80000000, 612); 
TEST_RR_OP( 154 , kmmwb2, 0x0936815e, 0x1c8ac036, 0xa2332951, 616); 
TEST_RR_OP( 155 , kmmwb2, 0x6fcb0000, 0x80000000, 0xc69e9035, 620); 
TEST_RR_OP( 156 , kmmwb2, 0x00000000, 0x4f0c0689, 0x00000000, 624); 
TEST_RR_OP( 157 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , kmmwb2, 0x00000000, 0xf8f4ba53, 0x00000000, 632); 
TEST_RR_OP( 159 , kmmwb2, 0xffffe581, 0x0d3f6552, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmmwb2, 0x00000000, 0xe9d6e6ea, 0x80000000, 640); 
TEST_RR_OP( 161 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 644); 
TEST_RR_OP( 162 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 648); 
TEST_RR_OP( 163 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , kmmwb2, 0xecb60000, 0x80000000, 0x85de134a, 656); 
TEST_RR_OP( 165 , kmmwb2, 0xffff246a, 0x6dcafef5, 0xffffffff, 660); 
TEST_RR_OP( 166 , kmmwb2, 0x00009d3a, 0xb1629cef, 0xffffffff, 664); 
TEST_RR_OP( 167 , kmmwb2, 0x6ef83852, 0x828c0f13, 0x763f8ec7, 668); 
TEST_RR_OP( 168 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , kmmwb2, 0x00000000, 0x00000000, 0xffffffff, 676); 
TEST_RR_OP( 170 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 680); 
TEST_RR_OP( 171 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 684); 
TEST_RR_OP( 172 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 688); 
TEST_RR_OP( 173 , kmmwb2, 0x00000000, 0xf215a8ca, 0x80000000, 692); 
TEST_RR_OP( 174 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , kmmwb2, 0x00000000, 0x80000000, 0x00000000, 700); 
TEST_RR_OP( 176 , kmmwb2, 0x00000000, 0xe6a28f26, 0x00000000, 704); 
TEST_RR_OP( 177 , kmmwb2, 0x00000000, 0xc7f3676a, 0x80000000, 708); 
TEST_RR_OP( 178 , kmmwb2, 0x00000000, 0x81b98bb3, 0x80000000, 712); 
TEST_RR_OP( 179 , kmmwb2, 0x43220000, 0x80000000, 0x96a9bcde, 716); 
TEST_RR_OP( 180 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 720); 
TEST_RR_OP( 181 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 724); 
TEST_RR_OP( 182 , kmmwb2, 0xffff5d1a, 0x5172a171, 0xffffffff, 728); 
TEST_RR_OP( 183 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 732); 
TEST_RR_OP( 184 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 736); 
TEST_RR_OP( 185 , kmmwb2, 0x00000000, 0xffffffff, 0xffffffff, 740); 
TEST_RR_OP( 186 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 744); 
TEST_RR_OP( 187 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmmwb2, 0xffff4843, 0x5bde624f, 0xffffffff, 752); 
TEST_RR_OP( 189 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 756); 
TEST_RR_OP( 190 , kmmwb2, 0x00000000, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , kmmwb2, 0x00000000, 0xffffffff, 0x80000000, 764); 
TEST_RR_OP( 192 , kmmwb2, 0xf6ad0000, 0x80000000, 0xa6b70953, 768); 
TEST_RR_OP( 193 , kmmwb2, 0x00000000, 0x00000000, 0x2772d24c, 772); 
TEST_RR_OP( 194 , kmmwb2, 0x00010000, 0x80000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmmwb2, 0xffff1aa6, 0x72ace648, 0xffffffff, 780); 
TEST_RR_OP( 196 , kmmwb2, 0x00000000, 0x00000000, 0x00000000, 784); 
TEST_RR_OP( 197 , kmmwb2, 0x00000000, 0x00000000, 0x80000000, 788); 
TEST_RR_OP( 198 , kmmwb2, 0x00000000, 0xfc5cb763, 0x80000000, 792); 
TEST_RR_OP( 199 , kmmwb2, 0x00000000, 0x00000000, 0x2bf126e0, 796); 

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
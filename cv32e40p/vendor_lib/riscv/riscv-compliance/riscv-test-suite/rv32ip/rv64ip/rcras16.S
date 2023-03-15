# See LICENSE for license details.
#*****************************************************************************
# rcras16.S
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

TEST_RR_OP( 2 , rcras16, 0x83500000, 0x86a0ffff, 0xffff8000, 8); 
TEST_RR_OP( 3 , rcras16, 0xd1b70000, 0xb8100000, 0xffffeb5e, 12); 
TEST_RR_OP( 4 , rcras16, 0xf6460000, 0x8000ffff, 0xffff6c8d, 16); 
TEST_RR_OP( 5 , rcras16, 0xdf483fff, 0xbe91ffff, 0x8000ffff, 20); 
TEST_RR_OP( 6 , rcras16, 0xbfff0000, 0xffff8000, 0x80008000, 24); 
TEST_RR_OP( 7 , rcras16, 0xffff0000, 0xffff0000, 0x0000ffff, 28); 
TEST_RR_OP( 8 , rcras16, 0xffff2ee1, 0xffff5dc2, 0xffffffff, 32); 
TEST_RR_OP( 9 , rcras16, 0x06e20000, 0x0dc50000, 0xffff0000, 36); 
TEST_RR_OP( 10 , rcras16, 0xc0000000, 0x80000000, 0x00000000, 40); 
TEST_RR_OP( 11 , rcras16, 0x00000000, 0x00008000, 0x80000000, 44); 
TEST_RR_OP( 12 , rcras16, 0xffff0000, 0xffff8000, 0x80000000, 48); 
TEST_RR_OP( 13 , rcras16, 0xd083ffff, 0x8000ffff, 0x00002107, 52); 
TEST_RR_OP( 14 , rcras16, 0xc000c000, 0x00008000, 0xffff8000, 56); 
TEST_RR_OP( 15 , rcras16, 0xc000c000, 0x00008000, 0x00008000, 60); 
TEST_RR_OP( 16 , rcras16, 0xbfffc000, 0xffff8000, 0xffff8000, 64); 
TEST_RR_OP( 17 , rcras16, 0xc000c000, 0x80008000, 0x00000000, 68); 
TEST_RR_OP( 18 , rcras16, 0xc236015e, 0x846dffff, 0xfd430000, 72); 
TEST_RR_OP( 19 , rcras16, 0xffff0000, 0x00000000, 0xffffffff, 76); 
TEST_RR_OP( 20 , rcras16, 0xffffc000, 0xffff8000, 0x0000ffff, 80); 
TEST_RR_OP( 21 , rcras16, 0x0000c2df, 0x0000ffff, 0x7a400000, 84); 
TEST_RR_OP( 22 , rcras16, 0xd5e3e166, 0xffffffff, 0x3d32abc7, 88); 
TEST_RR_OP( 23 , rcras16, 0xffff0000, 0xffff8000, 0x8000ffff, 92); 
TEST_RR_OP( 24 , rcras16, 0xe8b5faff, 0xd16cf5fd, 0xffffffff, 96); 
TEST_RR_OP( 25 , rcras16, 0x2000c000, 0x00008000, 0xffff4000, 100); 
TEST_RR_OP( 26 , rcras16, 0xffffc000, 0x00008000, 0xffffffff, 104); 
TEST_RR_OP( 27 , rcras16, 0xbfff4cf4, 0x800019e8, 0x8000ffff, 108); 
TEST_RR_OP( 28 , rcras16, 0xbffff387, 0xffffe70d, 0xffff8000, 112); 
TEST_RR_OP( 29 , rcras16, 0xc153c000, 0x00008000, 0x000082a7, 116); 
TEST_RR_OP( 30 , rcras16, 0x1da7ff94, 0x0000ff27, 0xffff3b4e, 120); 
TEST_RR_OP( 31 , rcras16, 0xdb75d1b0, 0xffffa360, 0x0000b6ec, 124); 
TEST_RR_OP( 32 , rcras16, 0x00003fff, 0x0000ffff, 0x80000000, 128); 
TEST_RR_OP( 33 , rcras16, 0x23c84000, 0x00000000, 0x80004791, 132); 
TEST_RR_OP( 34 , rcras16, 0x8000ffff, 0x8000ffff, 0x00008000, 136); 
TEST_RR_OP( 35 , rcras16, 0xbfff3ac9, 0x8000ffff, 0x8a6cffff, 140); 
TEST_RR_OP( 36 , rcras16, 0xffff3fff, 0xffffffff, 0x8000ffff, 144); 
TEST_RR_OP( 37 , rcras16, 0xd3620000, 0xffff0000, 0x0000a6c5, 148); 
TEST_RR_OP( 38 , rcras16, 0x2e42c000, 0x6f208000, 0xffffed65, 152); 
TEST_RR_OP( 39 , rcras16, 0xeb010000, 0xd6028000, 0x80000000, 156); 
TEST_RR_OP( 40 , rcras16, 0x0ae811e4, 0xbd88a3c8, 0x80005848, 160); 
TEST_RR_OP( 41 , rcras16, 0xffffc000, 0xffff8000, 0x0000ffff, 164); 
TEST_RR_OP( 42 , rcras16, 0x2c94c53f, 0xffff8000, 0xf5815929, 168); 
TEST_RR_OP( 43 , rcras16, 0xbfff4000, 0x80000000, 0x8000ffff, 172); 
TEST_RR_OP( 44 , rcras16, 0xc000f488, 0x80000000, 0x16ef0000, 176); 
TEST_RR_OP( 45 , rcras16, 0xc000c8b4, 0x80008000, 0xee970000, 180); 
TEST_RR_OP( 46 , rcras16, 0xc0000000, 0x00000000, 0x00008000, 184); 
TEST_RR_OP( 47 , rcras16, 0x3a8b35e2, 0x000002ed, 0x97297516, 188); 
TEST_RR_OP( 48 , rcras16, 0x2117ba71, 0x00008000, 0x0b1e422f, 192); 
TEST_RR_OP( 49 , rcras16, 0xffffc000, 0xffff8000, 0xffff0000, 196); 
TEST_RR_OP( 50 , rcras16, 0x80000000, 0x80008000, 0x80008000, 200); 
TEST_RR_OP( 51 , rcras16, 0xc9dcc000, 0xffff8000, 0x000093ba, 204); 
TEST_RR_OP( 52 , rcras16, 0xbfff2a6e, 0xffff0000, 0xab238000, 208); 
TEST_RR_OP( 53 , rcras16, 0x12760000, 0x0000ffff, 0xffff24ec, 212); 
TEST_RR_OP( 54 , rcras16, 0xffff3fff, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , rcras16, 0x1f9a0000, 0xffffffff, 0xffff3f35, 220); 
TEST_RR_OP( 56 , rcras16, 0x370d0000, 0x00008000, 0x80006e1a, 224); 
TEST_RR_OP( 57 , rcras16, 0xc0000000, 0x00000000, 0xffff8000, 228); 
TEST_RR_OP( 58 , rcras16, 0x00006b41, 0x00005682, 0x80000000, 232); 
TEST_RR_OP( 59 , rcras16, 0x8522cb47, 0x8a44968d, 0xffff8000, 236); 
TEST_RR_OP( 60 , rcras16, 0xbfff3fff, 0x8000ffff, 0x8000ffff, 240); 
TEST_RR_OP( 61 , rcras16, 0xc0000000, 0x00000000, 0xffff8000, 244); 
TEST_RR_OP( 62 , rcras16, 0xdc67c000, 0x80008000, 0xffff38cf, 248); 
TEST_RR_OP( 63 , rcras16, 0xbffff993, 0x8000f325, 0xffffffff, 252); 
TEST_RR_OP( 64 , rcras16, 0x11340000, 0xffff8000, 0x80002269, 256); 
TEST_RR_OP( 65 , rcras16, 0xbfffffff, 0xffffffff, 0x00008000, 260); 
TEST_RR_OP( 66 , rcras16, 0xffff0000, 0x00000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , rcras16, 0xffff3a31, 0x0000ffff, 0x8b9cffff, 268); 
TEST_RR_OP( 68 , rcras16, 0xde99fc35, 0xa766f86b, 0x000015cc, 272); 
TEST_RR_OP( 69 , rcras16, 0x34f00000, 0x69e10000, 0x00000000, 276); 
TEST_RR_OP( 70 , rcras16, 0xffff2153, 0x0000c2a6, 0x8000ffff, 280); 
TEST_RR_OP( 71 , rcras16, 0x00003fff, 0x0000ffff, 0x80000000, 284); 
TEST_RR_OP( 72 , rcras16, 0xbfff2c17, 0x8000d82e, 0x8000ffff, 288); 
TEST_RR_OP( 73 , rcras16, 0xc00025db, 0x8000cbb7, 0x80000000, 292); 
TEST_RR_OP( 74 , rcras16, 0xd207ed7d, 0xa40fdafb, 0x00000000, 296); 
TEST_RR_OP( 75 , rcras16, 0xffffffff, 0xffffffff, 0x0000ffff, 300); 
TEST_RR_OP( 76 , rcras16, 0x251f0000, 0x00000000, 0xffff4a3f, 304); 
TEST_RR_OP( 77 , rcras16, 0x19090000, 0x3212ffff, 0xffff0000, 308); 
TEST_RR_OP( 78 , rcras16, 0xc0000000, 0x80000000, 0xffff0000, 312); 
TEST_RR_OP( 79 , rcras16, 0x0acb0000, 0xffff0000, 0xffff1597, 316); 
TEST_RR_OP( 80 , rcras16, 0xc000db10, 0x0000b620, 0xffff8000, 320); 
TEST_RR_OP( 81 , rcras16, 0xbfff0000, 0x80000000, 0x0000ffff, 324); 
TEST_RR_OP( 82 , rcras16, 0xffffde86, 0xffffffff, 0x42f20000, 328); 
TEST_RR_OP( 83 , rcras16, 0xe0fbcf60, 0x80008000, 0xe14041f6, 332); 
TEST_RR_OP( 84 , rcras16, 0x19b9868c, 0x33738000, 0x72e80000, 336); 
TEST_RR_OP( 85 , rcras16, 0xffff4c3c, 0xffff1878, 0x8000ffff, 340); 
TEST_RR_OP( 86 , rcras16, 0x28cfc000, 0x51a08000, 0x0000ffff, 344); 
TEST_RR_OP( 87 , rcras16, 0xdb403d24, 0xb6825ace, 0xe085ffff, 348); 
TEST_RR_OP( 88 , rcras16, 0xffff2319, 0x00004632, 0x0000ffff, 352); 
TEST_RR_OP( 89 , rcras16, 0xbfff0daa, 0xffff9b55, 0x80008000, 356); 
TEST_RR_OP( 90 , rcras16, 0xbf464000, 0xfe8c0000, 0x80008000, 360); 
TEST_RR_OP( 91 , rcras16, 0x356ceba9, 0x6ad80000, 0x28ae0000, 364); 
TEST_RR_OP( 92 , rcras16, 0xc4f70fbd, 0x8000ffff, 0xe08409ef, 368); 
TEST_RR_OP( 93 , rcras16, 0x1e0e0000, 0x4f020000, 0xffffed1b, 372); 
TEST_RR_OP( 94 , rcras16, 0x8000c000, 0x80008000, 0x00008000, 376); 
TEST_RR_OP( 95 , rcras16, 0xbfff0000, 0x80000000, 0x0000ffff, 380); 
TEST_RR_OP( 96 , rcras16, 0xbfff0000, 0xffffffff, 0xffff8000, 384); 
TEST_RR_OP( 97 , rcras16, 0xbfffffff, 0x8000ffff, 0x0000ffff, 388); 
TEST_RR_OP( 98 , rcras16, 0xc315c000, 0x062a8000, 0xffff8000, 392); 
TEST_RR_OP( 99 , rcras16, 0xba67fa30, 0x80008000, 0x8ba0f4ce, 396); 
TEST_RR_OP( 100 , rcras16, 0xf69bff39, 0x6d366a32, 0x6bc08000, 400); 
TEST_RR_OP( 101 , rcras16, 0xffff24d6, 0x0000ffff, 0xb652ffff, 404); 
TEST_RR_OP( 102 , rcras16, 0xbfff2259, 0x800044b2, 0xffffffff, 408); 
TEST_RR_OP( 103 , rcras16, 0xbfff3fff, 0xffffffff, 0x80008000, 412); 
TEST_RR_OP( 104 , rcras16, 0xbfff0000, 0x80000000, 0xffffffff, 416); 
TEST_RR_OP( 105 , rcras16, 0xc000efc5, 0x0000ffff, 0x20748000, 420); 
TEST_RR_OP( 106 , rcras16, 0xe7893fff, 0x4f12ffff, 0x80008000, 424); 
TEST_RR_OP( 107 , rcras16, 0xbfff307f, 0xffff0000, 0x9f018000, 428); 
TEST_RR_OP( 108 , rcras16, 0xc0000000, 0x8000ffff, 0xffff0000, 432); 
TEST_RR_OP( 109 , rcras16, 0xbfffc000, 0x80008000, 0xffffffff, 436); 
TEST_RR_OP( 110 , rcras16, 0xc0773a96, 0xc0f40000, 0x8ad4bffa, 440); 
TEST_RR_OP( 111 , rcras16, 0xffff0000, 0x00000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , rcras16, 0x022e0000, 0xffff8000, 0x8000045d, 448); 
TEST_RR_OP( 113 , rcras16, 0xffffdcd8, 0xffffb9b1, 0x0000ffff, 452); 
TEST_RR_OP( 114 , rcras16, 0xffff0000, 0x0000ffff, 0xffffffff, 456); 
TEST_RR_OP( 115 , rcras16, 0xc0004000, 0x80000000, 0x80000000, 460); 
TEST_RR_OP( 116 , rcras16, 0x1622c000, 0x2c468000, 0x0000ffff, 464); 
TEST_RR_OP( 117 , rcras16, 0xffffbe65, 0x00008000, 0x0335ffff, 468); 
TEST_RR_OP( 118 , rcras16, 0x8000f505, 0x80004138, 0x572e8000, 472); 
TEST_RR_OP( 119 , rcras16, 0xffffc000, 0xffff8000, 0x00000000, 476); 
TEST_RR_OP( 120 , rcras16, 0xbfffc000, 0x80008000, 0xffffffff, 480); 
TEST_RR_OP( 121 , rcras16, 0xd95c2133, 0x8000c267, 0x800032b9, 484); 
TEST_RR_OP( 122 , rcras16, 0xc000fb0f, 0x8000ffff, 0x09e00000, 488); 
TEST_RR_OP( 123 , rcras16, 0xffff25a0, 0xffffffff, 0xb4bfffff, 492); 
TEST_RR_OP( 124 , rcras16, 0xbfffed14, 0x80008000, 0xa5d7ffff, 496); 
TEST_RR_OP( 125 , rcras16, 0xfffff4bf, 0xffff8000, 0x9681ffff, 500); 
TEST_RR_OP( 126 , rcras16, 0x0000250e, 0x00006f94, 0x25780000, 504); 
TEST_RR_OP( 127 , rcras16, 0xffffc000, 0xffff8000, 0x00000000, 508); 
TEST_RR_OP( 128 , rcras16, 0xffff0000, 0xffff0000, 0x00000000, 512); 
TEST_RR_OP( 129 , rcras16, 0xe9c7f4dd, 0x538ee9ba, 0xffff8000, 516); 
TEST_RR_OP( 130 , rcras16, 0xffff0000, 0xffff0000, 0x0000ffff, 520); 
TEST_RR_OP( 131 , rcras16, 0xffff3fff, 0x0000ffff, 0x8000ffff, 524); 
TEST_RR_OP( 132 , rcras16, 0xbfffecc2, 0xffffd985, 0x00008000, 528); 
TEST_RR_OP( 133 , rcras16, 0xffff813f, 0xffff8000, 0x7d81ffff, 532); 
TEST_RR_OP( 134 , rcras16, 0x3f57ffff, 0x7eafffff, 0x00000000, 536); 
TEST_RR_OP( 135 , rcras16, 0x312cc000, 0x62598000, 0xffffffff, 540); 
TEST_RR_OP( 136 , rcras16, 0x80000000, 0x80000000, 0x00008000, 544); 
TEST_RR_OP( 137 , rcras16, 0x00000000, 0x00008000, 0x80000000, 548); 
TEST_RR_OP( 138 , rcras16, 0x00000000, 0x00008000, 0x80000000, 552); 
TEST_RR_OP( 139 , rcras16, 0x180d3fff, 0x1fe8ffff, 0x80001032, 556); 
TEST_RR_OP( 140 , rcras16, 0x8ab0c000, 0x95618000, 0x00008000, 560); 
TEST_RR_OP( 141 , rcras16, 0xffff9637, 0xffff8000, 0x53920000, 564); 
TEST_RR_OP( 142 , rcras16, 0xc0000000, 0x00000000, 0xffff8000, 568); 
TEST_RR_OP( 143 , rcras16, 0xfc384658, 0x56fd1bdc, 0x8f2ca174, 572); 
TEST_RR_OP( 144 , rcras16, 0x00004000, 0x00000000, 0x80000000, 576); 
TEST_RR_OP( 145 , rcras16, 0xffffffff, 0xffffffff, 0x00000000, 580); 
TEST_RR_OP( 146 , rcras16, 0xffffc000, 0x00008000, 0x0000ffff, 584); 
TEST_RR_OP( 147 , rcras16, 0xd0890000, 0x0e520000, 0x000092c0, 588); 
TEST_RR_OP( 148 , rcras16, 0x00004000, 0x00000000, 0x80000000, 592); 
TEST_RR_OP( 149 , rcras16, 0xbfff0000, 0xffffffff, 0xffff8000, 596); 
TEST_RR_OP( 150 , rcras16, 0xbfffc000, 0x80008000, 0x0000ffff, 600); 
TEST_RR_OP( 151 , rcras16, 0xfc94c000, 0x40f88000, 0x0000b831, 604); 
TEST_RR_OP( 152 , rcras16, 0xffffeb4e, 0xffffd69b, 0xffff0000, 608); 
TEST_RR_OP( 153 , rcras16, 0x22ca0000, 0x45940000, 0xffff0000, 612); 
TEST_RR_OP( 154 , rcras16, 0x170d4000, 0xffff0000, 0x80002e1c, 616); 
TEST_RR_OP( 155 , rcras16, 0xc000187d, 0x8000c9b7, 0x98bd0000, 620); 
TEST_RR_OP( 156 , rcras16, 0xc00009a2, 0x00000000, 0xecbc8000, 624); 
TEST_RR_OP( 157 , rcras16, 0x00000000, 0x0000ffff, 0xffff0000, 628); 
TEST_RR_OP( 158 , rcras16, 0xbfff0000, 0xffff8000, 0x80008000, 632); 
TEST_RR_OP( 159 , rcras16, 0x80000000, 0x80000000, 0x00008000, 636); 
TEST_RR_OP( 160 , rcras16, 0x36a8ebe2, 0x6d518000, 0xa83b0000, 640); 
TEST_RR_OP( 161 , rcras16, 0x0b23ffff, 0x0000ffff, 0x00001646, 644); 
TEST_RR_OP( 162 , rcras16, 0x943a0000, 0xa8758000, 0x80008000, 648); 
TEST_RR_OP( 163 , rcras16, 0xffff1859, 0xffff30b2, 0x00000000, 652); 
TEST_RR_OP( 164 , rcras16, 0xc2f2d6ad, 0x05e5ffff, 0x52a48000, 656); 
TEST_RR_OP( 165 , rcras16, 0xe17c0000, 0xffff8000, 0x8000c2fa, 660); 
TEST_RR_OP( 166 , rcras16, 0x1908edaa, 0x32128000, 0xa4abffff, 664); 
TEST_RR_OP( 167 , rcras16, 0x80001e08, 0x80003c10, 0xffff8000, 668); 
TEST_RR_OP( 168 , rcras16, 0xffff0000, 0xffff0000, 0x0000ffff, 672); 
TEST_RR_OP( 169 , rcras16, 0x2e190ae4, 0xffff021c, 0xec535c33, 676); 
TEST_RR_OP( 170 , rcras16, 0xe9c8ffff, 0xd390ffff, 0x00000000, 680); 
TEST_RR_OP( 171 , rcras16, 0x8000c000, 0x80008000, 0x00008000, 684); 
TEST_RR_OP( 172 , rcras16, 0x80003fff, 0x8000ffff, 0x80008000, 688); 
TEST_RR_OP( 173 , rcras16, 0x05140000, 0x00008000, 0x80000a28, 692); 
TEST_RR_OP( 174 , rcras16, 0xbfff0000, 0x8000ffff, 0xffffffff, 696); 
TEST_RR_OP( 175 , rcras16, 0x00001cf2, 0x000039e5, 0x00000000, 700); 
TEST_RR_OP( 176 , rcras16, 0xffffe366, 0xffffffff, 0x3932ffff, 704); 
TEST_RR_OP( 177 , rcras16, 0xfa860000, 0x8000ffff, 0xffff750c, 708); 
TEST_RR_OP( 178 , rcras16, 0xd1930000, 0xa3280000, 0xffffffff, 712); 
TEST_RR_OP( 179 , rcras16, 0xbfff1deb, 0xffffffff, 0xc4288000, 716); 
TEST_RR_OP( 180 , rcras16, 0xffffc000, 0xffff8000, 0xffffffff, 720); 
TEST_RR_OP( 181 , rcras16, 0x80820000, 0x80000000, 0x00008104, 724); 
TEST_RR_OP( 182 , rcras16, 0xc000c000, 0x80008000, 0x00000000, 728); 
TEST_RR_OP( 183 , rcras16, 0xcb974000, 0x172e0000, 0x80008000, 732); 
TEST_RR_OP( 184 , rcras16, 0xd3374000, 0x80000000, 0x8000266f, 736); 
TEST_RR_OP( 185 , rcras16, 0xf58b4000, 0x00000000, 0x8000eb17, 740); 
TEST_RR_OP( 186 , rcras16, 0xc000087f, 0x800090ff, 0x80000000, 744); 
TEST_RR_OP( 187 , rcras16, 0x9f8dc112, 0xbf1a8225, 0x00008000, 748); 
TEST_RR_OP( 188 , rcras16, 0xe8923fff, 0x8000ffff, 0x80005124, 752); 
TEST_RR_OP( 189 , rcras16, 0x236218cf, 0x46c4319e, 0xffff0000, 756); 
TEST_RR_OP( 190 , rcras16, 0xffff0000, 0x00008000, 0x8000ffff, 760); 
TEST_RR_OP( 191 , rcras16, 0xffff0000, 0xffffffff, 0xffffffff, 764); 
TEST_RR_OP( 192 , rcras16, 0x175affff, 0x0000ffff, 0x00002eb4, 768); 
TEST_RR_OP( 193 , rcras16, 0xef580000, 0x00000000, 0x0000deb1, 772); 
TEST_RR_OP( 194 , rcras16, 0x8000c000, 0x80008000, 0xffff8000, 776); 
TEST_RR_OP( 195 , rcras16, 0xb6193878, 0xec32f0f0, 0x80008000, 780); 
TEST_RR_OP( 196 , rcras16, 0x000011ec, 0x000023d8, 0x00000000, 784); 
TEST_RR_OP( 197 , rcras16, 0xb895d900, 0x8000b200, 0xfffff12b, 788); 
TEST_RR_OP( 198 , rcras16, 0xffff3fff, 0x0000ffff, 0x8000ffff, 792); 
TEST_RR_OP( 199 , rcras16, 0xffff9085, 0xffff8000, 0x5ef5ffff, 796); 

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
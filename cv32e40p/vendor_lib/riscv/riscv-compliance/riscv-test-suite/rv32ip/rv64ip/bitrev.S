# See LICENSE for license details.
#*****************************************************************************
# bitrev.S
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

TEST_RR_OP( 2 , bitrev, 0x00000000, 0x80000000, 0x80000000, 8); 
TEST_RR_OP( 3 , bitrev, 0x00000000, 0x00000000, 0x80000000, 12); 
TEST_RR_OP( 4 , bitrev, 0x00000000, 0x80000000, 0x00000000, 16); 
TEST_RR_OP( 5 , bitrev, 0x00000000, 0x80000000, 0x00000000, 20); 
TEST_RR_OP( 6 , bitrev, 0x00000000, 0x00000000, 0x80000000, 24); 
TEST_RR_OP( 7 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 28); 
TEST_RR_OP( 8 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 32); 
TEST_RR_OP( 9 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 36); 
TEST_RR_OP( 10 , bitrev, 0xc04d489f, 0xf912b203, 0xffffffff, 40); 
TEST_RR_OP( 11 , bitrev, 0x00184da3, 0x97716c86, 0x28a95ad5, 44); 
TEST_RR_OP( 12 , bitrev, 0x00000000, 0x80000000, 0xcc3f70a4, 48); 
TEST_RR_OP( 13 , bitrev, 0x00000001, 0x681e47cf, 0x80000000, 52); 
TEST_RR_OP( 14 , bitrev, 0x93cc7791, 0x89ee33c9, 0xffffffff, 56); 
TEST_RR_OP( 15 , bitrev, 0x00000000, 0x80000000, 0x7ce7fa4a, 60); 
TEST_RR_OP( 16 , bitrev, 0x00000000, 0x00000000, 0x4e0c468a, 64); 
TEST_RR_OP( 17 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , bitrev, 0x00000000, 0xfeb058b6, 0x80000000, 72); 
TEST_RR_OP( 19 , bitrev, 0x00001fff, 0xffffffff, 0xb3dec0ec, 76); 
TEST_RR_OP( 20 , bitrev, 0x00000000, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 84); 
TEST_RR_OP( 22 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 88); 
TEST_RR_OP( 23 , bitrev, 0x00000003, 0xffffffff, 0x9ffe6501, 92); 
TEST_RR_OP( 24 , bitrev, 0x00000000, 0x00000000, 0x00000000, 96); 
TEST_RR_OP( 25 , bitrev, 0x00000000, 0x80000000, 0x176a1c4f, 100); 
TEST_RR_OP( 26 , bitrev, 0x00000001, 0x6e8f22e7, 0x80000000, 104); 
TEST_RR_OP( 27 , bitrev, 0x00000000, 0x00000000, 0x0895b80d, 108); 
TEST_RR_OP( 28 , bitrev, 0x00000000, 0x80000000, 0x32409e32, 112); 
TEST_RR_OP( 29 , bitrev, 0xbf18396e, 0x769c18fd, 0xffffffff, 116); 
TEST_RR_OP( 30 , bitrev, 0x000003ff, 0xffffffff, 0x3bc42789, 120); 
TEST_RR_OP( 31 , bitrev, 0x00000000, 0x80000000, 0x80000000, 124); 
TEST_RR_OP( 32 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 128); 
TEST_RR_OP( 33 , bitrev, 0x00000000, 0xd1a07a04, 0x00000000, 132); 
TEST_RR_OP( 34 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 136); 
TEST_RR_OP( 35 , bitrev, 0x00000000, 0x00000000, 0x00000000, 140); 
TEST_RR_OP( 36 , bitrev, 0x00000000, 0x00000000, 0x00000000, 144); 
TEST_RR_OP( 37 , bitrev, 0x0007ffff, 0xffffffff, 0xa459b672, 148); 
TEST_RR_OP( 38 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , bitrev, 0x00000001, 0xc324812d, 0x80000000, 156); 
TEST_RR_OP( 40 , bitrev, 0x000000ff, 0xffffffff, 0x70cfcc67, 160); 
TEST_RR_OP( 41 , bitrev, 0x2f2359e7, 0xe79ac4f4, 0xffffffff, 164); 
TEST_RR_OP( 42 , bitrev, 0x00000003, 0xe4c386e3, 0x55e965e1, 168); 
TEST_RR_OP( 43 , bitrev, 0x00000000, 0x00000000, 0x80000000, 172); 
TEST_RR_OP( 44 , bitrev, 0x00000001, 0x45fde851, 0x00000000, 176); 
TEST_RR_OP( 45 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 180); 
TEST_RR_OP( 46 , bitrev, 0x0000ffff, 0xffffffff, 0xa76469af, 184); 
TEST_RR_OP( 47 , bitrev, 0x0365cc95, 0x3ea4ce9b, 0x904d1079, 188); 
TEST_RR_OP( 48 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 200); 
TEST_RR_OP( 51 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 204); 
TEST_RR_OP( 52 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 208); 
TEST_RR_OP( 53 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 212); 
TEST_RR_OP( 54 , bitrev, 0x5c1029bd, 0xbd94083a, 0xffffffff, 216); 
TEST_RR_OP( 55 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , bitrev, 0x00000001, 0xfdd1137f, 0x00000000, 224); 
TEST_RR_OP( 57 , bitrev, 0x00000000, 0x3a08fcdc, 0x80000000, 228); 
TEST_RR_OP( 58 , bitrev, 0x00000000, 0x80000000, 0x80000000, 232); 
TEST_RR_OP( 59 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 236); 
TEST_RR_OP( 60 , bitrev, 0x00000000, 0x80000000, 0x80000000, 240); 
TEST_RR_OP( 61 , bitrev, 0x00000000, 0x00000000, 0x8fef259a, 244); 
TEST_RR_OP( 62 , bitrev, 0x03ffffff, 0xffffffff, 0xedb94739, 248); 
TEST_RR_OP( 63 , bitrev, 0x00000000, 0xf3af5cde, 0x00000000, 252); 
TEST_RR_OP( 64 , bitrev, 0x00739aea, 0xd1abace7, 0xbbef2696, 256); 
TEST_RR_OP( 65 , bitrev, 0x00000000, 0x00000000, 0xe2dce15a, 260); 
TEST_RR_OP( 66 , bitrev, 0x00000001, 0xaea43817, 0x00000000, 264); 
TEST_RR_OP( 67 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 268); 
TEST_RR_OP( 68 , bitrev, 0x052e5d13, 0x1e45d3a5, 0x78fc123a, 272); 
TEST_RR_OP( 69 , bitrev, 0x00000000, 0x00000000, 0x80000000, 276); 
TEST_RR_OP( 70 , bitrev, 0x000000d0, 0x6b2d5f0b, 0x515e6867, 280); 
TEST_RR_OP( 71 , bitrev, 0xa2e1803d, 0xbc018745, 0xffffffff, 284); 
TEST_RR_OP( 72 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 288); 
TEST_RR_OP( 73 , bitrev, 0x00000000, 0x00000000, 0x55e2852c, 292); 
TEST_RR_OP( 74 , bitrev, 0x248c420f, 0xf0423124, 0xffffffff, 296); 
TEST_RR_OP( 75 , bitrev, 0x00000000, 0x00000000, 0x8b432161, 300); 
TEST_RR_OP( 76 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 304); 
TEST_RR_OP( 77 , bitrev, 0x00000000, 0x80000000, 0x00000000, 308); 
TEST_RR_OP( 78 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 312); 
TEST_RR_OP( 79 , bitrev, 0x00000000, 0x00000000, 0x22da0005, 316); 
TEST_RR_OP( 80 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , bitrev, 0x00000000, 0x80000000, 0x00000000, 324); 
TEST_RR_OP( 82 , bitrev, 0x00000000, 0x00000000, 0x00000000, 328); 
TEST_RR_OP( 83 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 332); 
TEST_RR_OP( 84 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 336); 
TEST_RR_OP( 85 , bitrev, 0x00000000, 0x00000000, 0x80000000, 340); 
TEST_RR_OP( 86 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 344); 
TEST_RR_OP( 87 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 348); 
TEST_RR_OP( 88 , bitrev, 0x00000941, 0x51b920a4, 0xcd9dc9cd, 352); 
TEST_RR_OP( 89 , bitrev, 0x00000000, 0x00000000, 0x00000000, 356); 
TEST_RR_OP( 90 , bitrev, 0x001fffff, 0xffffffff, 0x1185d9b4, 360); 
TEST_RR_OP( 91 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , bitrev, 0x00ffffff, 0xffffffff, 0xd2e21cb7, 368); 
TEST_RR_OP( 93 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , bitrev, 0x00000000, 0x00000000, 0xc92ce976, 376); 
TEST_RR_OP( 95 , bitrev, 0x00000000, 0x80000000, 0x538aa86e, 380); 
TEST_RR_OP( 96 , bitrev, 0x00000000, 0x3498f4ac, 0x62f9d181, 384); 
TEST_RR_OP( 97 , bitrev, 0x00000000, 0x00000000, 0xb3b50d0f, 388); 
TEST_RR_OP( 98 , bitrev, 0x00000001, 0x45795a31, 0x00000000, 392); 
TEST_RR_OP( 99 , bitrev, 0x00000000, 0x00000000, 0x80000000, 396); 
TEST_RR_OP( 100 , bitrev, 0x00000000, 0x00000000, 0x7e5eaf7f, 400); 
TEST_RR_OP( 101 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 404); 
TEST_RR_OP( 102 , bitrev, 0x00000000, 0x80000000, 0x34c43dd8, 408); 
TEST_RR_OP( 103 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 412); 
TEST_RR_OP( 104 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 416); 
TEST_RR_OP( 105 , bitrev, 0x00000000, 0x21bb9d0e, 0x00000000, 420); 
TEST_RR_OP( 106 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 428); 
TEST_RR_OP( 108 , bitrev, 0x00000000, 0x80000000, 0x82abd0ad, 432); 
TEST_RR_OP( 109 , bitrev, 0x00000000, 0x00000000, 0x00000000, 436); 
TEST_RR_OP( 110 , bitrev, 0x000007ff, 0xffffffff, 0x8bbbd8aa, 440); 
TEST_RR_OP( 111 , bitrev, 0x00000000, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 448); 
TEST_RR_OP( 113 , bitrev, 0x000006db, 0x546a96db, 0x26eddaea, 452); 
TEST_RR_OP( 114 , bitrev, 0x0000013e, 0x4bd5e5f2, 0x8467bfa9, 456); 
TEST_RR_OP( 115 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , bitrev, 0x00000000, 0x0734ae86, 0x00000000, 464); 
TEST_RR_OP( 117 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , bitrev, 0x00000001, 0x7f7826a5, 0x80000000, 476); 
TEST_RR_OP( 120 , bitrev, 0x00000001, 0xb310d709, 0x00000000, 480); 
TEST_RR_OP( 121 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 484); 
TEST_RR_OP( 122 , bitrev, 0x00000001, 0xefe917fb, 0x00000000, 488); 
TEST_RR_OP( 123 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 492); 
TEST_RR_OP( 124 , bitrev, 0x00000000, 0x80000000, 0x00000000, 496); 
TEST_RR_OP( 125 , bitrev, 0x00000000, 0x00000000, 0x00000000, 500); 
TEST_RR_OP( 126 , bitrev, 0x00000000, 0x64653a82, 0x00000000, 504); 
TEST_RR_OP( 127 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 508); 
TEST_RR_OP( 128 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 512); 
TEST_RR_OP( 129 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , bitrev, 0x00000000, 0x00000000, 0x80000000, 520); 
TEST_RR_OP( 131 , bitrev, 0x00000000, 0x00000000, 0xd3638d4e, 524); 
TEST_RR_OP( 132 , bitrev, 0x00000000, 0x00000000, 0xa4cd4330, 528); 
TEST_RR_OP( 133 , bitrev, 0x00000000, 0x00000000, 0x5542d28e, 532); 
TEST_RR_OP( 134 , bitrev, 0x003fffff, 0xffffffff, 0x19838a55, 536); 
TEST_RR_OP( 135 , bitrev, 0x00000000, 0x00000000, 0xde49b656, 540); 
TEST_RR_OP( 136 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 548); 
TEST_RR_OP( 138 , bitrev, 0x00000000, 0x00000000, 0xe0822bf2, 552); 
TEST_RR_OP( 139 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , bitrev, 0xc2fc31bb, 0xdd8c3f43, 0xffffffff, 560); 
TEST_RR_OP( 141 , bitrev, 0x9cae87c9, 0x93e17539, 0xffffffff, 564); 
TEST_RR_OP( 142 , bitrev, 0x0bcf1dd8, 0x1bb8f3d0, 0xffffffff, 568); 
TEST_RR_OP( 143 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 576); 
TEST_RR_OP( 145 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 580); 
TEST_RR_OP( 146 , bitrev, 0x00000001, 0x3a1cce1d, 0x80000000, 584); 
TEST_RR_OP( 147 , bitrev, 0x00000000, 0x00000000, 0x80000000, 588); 
TEST_RR_OP( 148 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 592); 
TEST_RR_OP( 149 , bitrev, 0x00000000, 0x80000000, 0x00000000, 596); 
TEST_RR_OP( 150 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 600); 
TEST_RR_OP( 151 , bitrev, 0x00000000, 0x00000000, 0x80000000, 604); 
TEST_RR_OP( 152 , bitrev, 0x000f5113, 0xf2fc88af, 0xfd2a8e33, 608); 
TEST_RR_OP( 153 , bitrev, 0x00000000, 0x80000000, 0x00000000, 612); 
TEST_RR_OP( 154 , bitrev, 0x00000000, 0x80000000, 0x00000000, 616); 
TEST_RR_OP( 155 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 620); 
TEST_RR_OP( 156 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 624); 
TEST_RR_OP( 157 , bitrev, 0x00000000, 0x00000000, 0x80000000, 628); 
TEST_RR_OP( 158 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , bitrev, 0x00000000, 0x80000000, 0x00000000, 636); 
TEST_RR_OP( 160 , bitrev, 0x00000000, 0x80000000, 0x620304dd, 640); 
TEST_RR_OP( 161 , bitrev, 0x00000000, 0x00000000, 0x00000000, 644); 
TEST_RR_OP( 162 , bitrev, 0x00000000, 0x00000000, 0x00000000, 648); 
TEST_RR_OP( 163 , bitrev, 0xffffffff, 0xffffffff, 0xffffffff, 652); 
TEST_RR_OP( 164 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 656); 
TEST_RR_OP( 165 , bitrev, 0x37a9ae39, 0x9c7595ec, 0xffffffff, 660); 
TEST_RR_OP( 166 , bitrev, 0x00000000, 0x00000000, 0x00000000, 664); 
TEST_RR_OP( 167 , bitrev, 0x00000000, 0x80000000, 0x80000000, 668); 
TEST_RR_OP( 168 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , bitrev, 0x0003ffff, 0xffffffff, 0x6ac5f131, 676); 
TEST_RR_OP( 170 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , bitrev, 0x00000000, 0x80000000, 0x00000000, 688); 
TEST_RR_OP( 173 , bitrev, 0x00000000, 0x00000000, 0x00000000, 692); 
TEST_RR_OP( 174 , bitrev, 0x018e56bd, 0x7f7ad4e3, 0x43334dd8, 696); 
TEST_RR_OP( 175 , bitrev, 0x00000000, 0x80000000, 0x80000000, 700); 
TEST_RR_OP( 176 , bitrev, 0x00000000, 0x80000000, 0x00000000, 704); 
TEST_RR_OP( 177 , bitrev, 0x00000000, 0x00000000, 0xffffffff, 708); 
TEST_RR_OP( 178 , bitrev, 0x00000000, 0x00000000, 0x00000000, 712); 
TEST_RR_OP( 179 , bitrev, 0x008c7981, 0xaa819e31, 0xdffd1a97, 716); 
TEST_RR_OP( 180 , bitrev, 0x00000001, 0xffffffff, 0x00000000, 720); 
TEST_RR_OP( 181 , bitrev, 0x00000000, 0x80000000, 0x00000000, 724); 
TEST_RR_OP( 182 , bitrev, 0x00000001, 0x80000000, 0xffffffff, 728); 
TEST_RR_OP( 183 , bitrev, 0x00000000, 0x80000000, 0x00000000, 732); 
TEST_RR_OP( 184 , bitrev, 0x00000000, 0x00000000, 0x80000000, 736); 
TEST_RR_OP( 185 , bitrev, 0x00000000, 0x8fa2e5f4, 0x80000000, 740); 
TEST_RR_OP( 186 , bitrev, 0x00000001, 0xa858e943, 0x00000000, 744); 
TEST_RR_OP( 187 , bitrev, 0x00000000, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 752); 
TEST_RR_OP( 189 , bitrev, 0x00000000, 0x46a6d458, 0x80000000, 756); 
TEST_RR_OP( 190 , bitrev, 0x00000000, 0x00000000, 0x3249837c, 760); 
TEST_RR_OP( 191 , bitrev, 0x00000000, 0xe7c2eb38, 0x80000000, 764); 
TEST_RR_OP( 192 , bitrev, 0x0000fe62, 0xad78467f, 0xb1b5614f, 768); 
TEST_RR_OP( 193 , bitrev, 0x00000000, 0xfe45b30c, 0x00000000, 772); 
TEST_RR_OP( 194 , bitrev, 0x00000000, 0x80000000, 0x80000000, 776); 
TEST_RR_OP( 195 , bitrev, 0x00000000, 0x00000000, 0xe95f5154, 780); 
TEST_RR_OP( 196 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 784); 
TEST_RR_OP( 197 , bitrev, 0x00000001, 0xffffffff, 0x80000000, 788); 
TEST_RR_OP( 198 , bitrev, 0x00000000, 0x00000000, 0xc3c93076, 792); 
TEST_RR_OP( 199 , bitrev, 0x00000000, 0x80000000, 0x00000000, 796); 

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
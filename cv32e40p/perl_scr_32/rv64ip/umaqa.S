# See LICENSE for license details.
#*****************************************************************************
# umaqa.S
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

TEST_RR_OP( 2 , umaqa, 0x00000000, 0x00000000, 0x692cf557, 8); 
TEST_RR_OP( 3 , umaqa, 0x00000000, 0xffffffff, 0x00000000, 12); 
TEST_RR_OP( 4 , umaqa, 0x00000000, 0x00000000, 0xffffffff, 16); 
TEST_RR_OP( 5 , umaqa, 0x00007f80, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , umaqa, 0x0001cf06, 0xdac69006, 0xdd0af804, 24); 
TEST_RR_OP( 7 , umaqa, 0x0001fd86, 0x5d65276e, 0x80000000, 28); 
TEST_RR_OP( 8 , umaqa, 0x0001fd86, 0x00000000, 0x80000000, 32); 
TEST_RR_OP( 9 , umaqa, 0x00023e06, 0x80000000, 0x8121dda7, 36); 
TEST_RR_OP( 10 , umaqa, 0x00023e06, 0x00000000, 0x80000000, 40); 
TEST_RR_OP( 11 , umaqa, 0x0002bd86, 0xffffffff, 0x80000000, 44); 
TEST_RR_OP( 12 , umaqa, 0x0002d906, 0x80000000, 0x371bbfb2, 48); 
TEST_RR_OP( 13 , umaqa, 0x0002e286, 0x13ffb685, 0x80000000, 52); 
TEST_RR_OP( 14 , umaqa, 0x0004b5b1, 0x4d3975da, 0xffffffff, 56); 
TEST_RR_OP( 15 , umaqa, 0x0004b5b1, 0x00000000, 0x80000000, 60); 
TEST_RR_OP( 16 , umaqa, 0x0007451f, 0x3acad5b9, 0xffffffff, 64); 
TEST_RR_OP( 17 , umaqa, 0x0009a6bb, 0xffffffff, 0xfaa8863c, 68); 
TEST_RR_OP( 18 , umaqa, 0x0009a6bb, 0xffffffff, 0x00000000, 72); 
TEST_RR_OP( 19 , umaqa, 0x0009a6bb, 0x80000000, 0x00000000, 76); 
TEST_RR_OP( 20 , umaqa, 0x000aea76, 0x036206da, 0xffffffff, 80); 
TEST_RR_OP( 21 , umaqa, 0x000c86d8, 0xffffffff, 0xe347680c, 84); 
TEST_RR_OP( 22 , umaqa, 0x000c86d8, 0x978d798d, 0x00000000, 88); 
TEST_RR_OP( 23 , umaqa, 0x000c86d8, 0xffffffff, 0x00000000, 92); 
TEST_RR_OP( 24 , umaqa, 0x000d03d8, 0x80000000, 0xfa57c4cd, 96); 
TEST_RR_OP( 25 , umaqa, 0x000d8358, 0xffffffff, 0x80000000, 100); 
TEST_RR_OP( 26 , umaqa, 0x000ef8e1, 0x5e586d54, 0xffffffff, 104); 
TEST_RR_OP( 27 , umaqa, 0x000f7861, 0x80000000, 0xffffffff, 108); 
TEST_RR_OP( 28 , umaqa, 0x00137065, 0xffffffff, 0xffffffff, 112); 
TEST_RR_OP( 29 , umaqa, 0x00137065, 0x00000000, 0xf9e40cf3, 116); 
TEST_RR_OP( 30 , umaqa, 0x00137065, 0x80000000, 0x00000000, 120); 
TEST_RR_OP( 31 , umaqa, 0x00137465, 0x080f8908, 0x80000000, 124); 
TEST_RR_OP( 32 , umaqa, 0x00137465, 0x00000000, 0x4108e93f, 128); 
TEST_RR_OP( 33 , umaqa, 0x0013f3e5, 0x80000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , umaqa, 0x00144de5, 0x80000000, 0xb47c1a31, 136); 
TEST_RR_OP( 35 , umaqa, 0x00144de5, 0x00000000, 0x00000000, 140); 
TEST_RR_OP( 36 , umaqa, 0x00144de5, 0x00000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , umaqa, 0x001845e9, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , umaqa, 0x001845e9, 0x80000000, 0x00000000, 152); 
TEST_RR_OP( 39 , umaqa, 0x001845e9, 0x00000000, 0x80000000, 156); 
TEST_RR_OP( 40 , umaqa, 0x00185fe9, 0x80000000, 0x340eecd4, 160); 
TEST_RR_OP( 41 , umaqa, 0x001b182e, 0xffffffff, 0x948de1b9, 164); 
TEST_RR_OP( 42 , umaqa, 0x001d0d37, 0xa76d9e45, 0xffffffff, 168); 
TEST_RR_OP( 43 , umaqa, 0x001d0d37, 0x00000000, 0x00000000, 172); 
TEST_RR_OP( 44 , umaqa, 0x001d0d37, 0x00000000, 0x5e5d17ab, 176); 
TEST_RR_OP( 45 , umaqa, 0x001d0d37, 0x00000000, 0x8533335d, 180); 
TEST_RR_OP( 46 , umaqa, 0x0021053b, 0xffffffff, 0xffffffff, 184); 
TEST_RR_OP( 47 , umaqa, 0x002155bb, 0xa1b636e5, 0x80000000, 188); 
TEST_RR_OP( 48 , umaqa, 0x002155bb, 0x80000000, 0x00000000, 192); 
TEST_RR_OP( 49 , umaqa, 0x002195bb, 0x80000000, 0x80000000, 196); 
TEST_RR_OP( 50 , umaqa, 0x00226270, 0xf110003d, 0xcbd27302, 200); 
TEST_RR_OP( 51 , umaqa, 0x00265a74, 0xffffffff, 0xffffffff, 204); 
TEST_RR_OP( 52 , umaqa, 0x0028dfec, 0xf3c82f9e, 0xffffffff, 208); 
TEST_RR_OP( 53 , umaqa, 0x002acdfc, 0xffffffff, 0xab62746f, 212); 
TEST_RR_OP( 54 , umaqa, 0x002acdfc, 0x00000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , umaqa, 0x002ec600, 0xffffffff, 0xffffffff, 220); 
TEST_RR_OP( 56 , umaqa, 0x002ec600, 0x80000000, 0x00000000, 224); 
TEST_RR_OP( 57 , umaqa, 0x00322f93, 0xeedbaef6, 0xffffffff, 228); 
TEST_RR_OP( 58 , umaqa, 0x0032e33e, 0x77c8b269, 0x36226c81, 232); 
TEST_RR_OP( 59 , umaqa, 0x0032e33e, 0x1742f90b, 0x00000000, 236); 
TEST_RR_OP( 60 , umaqa, 0x0035b767, 0xffffffff, 0xf300fde7, 240); 
TEST_RR_OP( 61 , umaqa, 0x0037cf4d, 0x787b40e7, 0xffffffff, 244); 
TEST_RR_OP( 62 , umaqa, 0x00380f4d, 0x80000000, 0x80000000, 248); 
TEST_RR_OP( 63 , umaqa, 0x00380f4d, 0xd5398d98, 0x00000000, 252); 
TEST_RR_OP( 64 , umaqa, 0x00391843, 0xffffffff, 0x1a2c873d, 256); 
TEST_RR_OP( 65 , umaqa, 0x00395843, 0x80000000, 0x80000000, 260); 
TEST_RR_OP( 66 , umaqa, 0x00395843, 0x00000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , umaqa, 0x00398743, 0x80000000, 0x5e4d0a0c, 268); 
TEST_RR_OP( 68 , umaqa, 0x00398743, 0xffffffff, 0x00000000, 272); 
TEST_RR_OP( 69 , umaqa, 0x00398743, 0x00000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , umaqa, 0x00398743, 0x80000000, 0x00000000, 280); 
TEST_RR_OP( 71 , umaqa, 0x00398743, 0x00000000, 0xffffffff, 284); 
TEST_RR_OP( 72 , umaqa, 0x00398743, 0x00000000, 0x80000000, 288); 
TEST_RR_OP( 73 , umaqa, 0x00398743, 0x00000000, 0x00000000, 292); 
TEST_RR_OP( 74 , umaqa, 0x003c6d5a, 0xbad65cfd, 0xffffffff, 296); 
TEST_RR_OP( 75 , umaqa, 0x003ccc5a, 0x80000000, 0xbe455e18, 300); 
TEST_RR_OP( 76 , umaqa, 0x003d4bda, 0xffffffff, 0x80000000, 304); 
TEST_RR_OP( 77 , umaqa, 0x003d4bda, 0x000364b7, 0x80000000, 308); 
TEST_RR_OP( 78 , umaqa, 0x003d4bda, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , umaqa, 0x003d4bda, 0x80000000, 0x00000000, 316); 
TEST_RR_OP( 80 , umaqa, 0x003d4bda, 0xffffffff, 0x00000000, 320); 
TEST_RR_OP( 81 , umaqa, 0x003d4bda, 0x00000000, 0xb5018838, 324); 
TEST_RR_OP( 82 , umaqa, 0x003d8bda, 0x80000000, 0x80000000, 328); 
TEST_RR_OP( 83 , umaqa, 0x003dd55a, 0x80000000, 0x933bf0f4, 332); 
TEST_RR_OP( 84 , umaqa, 0x003dd55a, 0x00000000, 0x80000000, 336); 
TEST_RR_OP( 85 , umaqa, 0x003f7bb2, 0x517f14c4, 0xffffffff, 340); 
TEST_RR_OP( 86 , umaqa, 0x00412b01, 0x8407b373, 0xffffffff, 344); 
TEST_RR_OP( 87 , umaqa, 0x00412b01, 0x00000000, 0x80000000, 348); 
TEST_RR_OP( 88 , umaqa, 0x0042cc5e, 0xffffffff, 0xb9c12009, 352); 
TEST_RR_OP( 89 , umaqa, 0x00442306, 0x6da04a01, 0xffffffff, 356); 
TEST_RR_OP( 90 , umaqa, 0x00442306, 0x00000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , umaqa, 0x00442306, 0xffffffff, 0x00000000, 364); 
TEST_RR_OP( 92 , umaqa, 0x00481b0a, 0xffffffff, 0xffffffff, 368); 
TEST_RR_OP( 93 , umaqa, 0x004a1e07, 0xc02fe774, 0xf8e8e3b4, 372); 
TEST_RR_OP( 94 , umaqa, 0x004a9707, 0xf2d6c451, 0x80000000, 376); 
TEST_RR_OP( 95 , umaqa, 0x004a9707, 0x5993527f, 0x00000000, 380); 
TEST_RR_OP( 96 , umaqa, 0x004d2c6f, 0xb8faa046, 0xffffffff, 384); 
TEST_RR_OP( 97 , umaqa, 0x004d6c6f, 0x80000000, 0x80000000, 388); 
TEST_RR_OP( 98 , umaqa, 0x004d78ef, 0x19872a8d, 0x80000000, 392); 
TEST_RR_OP( 99 , umaqa, 0x00506ef6, 0xc3c4d59d, 0xffffffff, 396); 
TEST_RR_OP( 100 , umaqa, 0x00506ef6, 0x80000000, 0x00000000, 400); 
TEST_RR_OP( 101 , umaqa, 0x00506ef6, 0x00000000, 0x00000000, 404); 
TEST_RR_OP( 102 , umaqa, 0x0050ee76, 0xffffffff, 0x80000000, 408); 
TEST_RR_OP( 103 , umaqa, 0x0050ee76, 0x80000000, 0x00000000, 412); 
TEST_RR_OP( 104 , umaqa, 0x0050ee76, 0x80000000, 0x00000000, 416); 
TEST_RR_OP( 105 , umaqa, 0x00516df6, 0xffffffff, 0x80000000, 420); 
TEST_RR_OP( 106 , umaqa, 0x00516df6, 0x00000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , umaqa, 0x0052a5bd, 0x838f0d1a, 0xffffffff, 428); 
TEST_RR_OP( 108 , umaqa, 0x00531d3d, 0x80000000, 0xef74949f, 432); 
TEST_RR_OP( 109 , umaqa, 0x00571541, 0xffffffff, 0xffffffff, 436); 
TEST_RR_OP( 110 , umaqa, 0x005794c1, 0xffffffff, 0x80000000, 440); 
TEST_RR_OP( 111 , umaqa, 0x00581441, 0xffffffff, 0x80000000, 444); 
TEST_RR_OP( 112 , umaqa, 0x00582441, 0x80000000, 0x20c7fbd3, 448); 
TEST_RR_OP( 113 , umaqa, 0x00592f75, 0xbcf39092, 0x218818b0, 452); 
TEST_RR_OP( 114 , umaqa, 0x00592f75, 0x80000000, 0x00000000, 456); 
TEST_RR_OP( 115 , umaqa, 0x00592f75, 0x00000000, 0x80000000, 460); 
TEST_RR_OP( 116 , umaqa, 0x005bcad7, 0xffffffff, 0x18d1c2f3, 464); 
TEST_RR_OP( 117 , umaqa, 0x005fc2db, 0xffffffff, 0xffffffff, 468); 
TEST_RR_OP( 118 , umaqa, 0x006002db, 0x80000000, 0x80000000, 472); 
TEST_RR_OP( 119 , umaqa, 0x0060825b, 0x80000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , umaqa, 0x0061adf9, 0x9367b6ed, 0x52cf8f49, 480); 
TEST_RR_OP( 121 , umaqa, 0x0061de79, 0x61379682, 0x80000000, 484); 
TEST_RR_OP( 122 , umaqa, 0x0063f461, 0xffffffff, 0x18d89f89, 488); 
TEST_RR_OP( 123 , umaqa, 0x0063f461, 0x00000000, 0x8253d0b9, 492); 
TEST_RR_OP( 124 , umaqa, 0x0065f360, 0x6eaf38ac, 0xffffffff, 496); 
TEST_RR_OP( 125 , umaqa, 0x006672e0, 0x80000000, 0xffffffff, 500); 
TEST_RR_OP( 126 , umaqa, 0x0066b2e0, 0x80000000, 0x80000000, 504); 
TEST_RR_OP( 127 , umaqa, 0x0068d3bd, 0xa53391ba, 0xffffffff, 508); 
TEST_RR_OP( 128 , umaqa, 0x0068d3bd, 0x80000000, 0x00000000, 512); 
TEST_RR_OP( 129 , umaqa, 0x0068ff3d, 0x80000000, 0x57f5feaa, 516); 
TEST_RR_OP( 130 , umaqa, 0x006a2d0e, 0xffffffff, 0x98494905, 520); 
TEST_RR_OP( 131 , umaqa, 0x006a2d0e, 0x00000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , umaqa, 0x006a2d0e, 0x00000000, 0xffffffff, 528); 
TEST_RR_OP( 133 , umaqa, 0x006c3702, 0xffffffff, 0x5718dac3, 532); 
TEST_RR_OP( 134 , umaqa, 0x006c3702, 0x00000000, 0x653b39f3, 536); 
TEST_RR_OP( 135 , umaqa, 0x006c7b02, 0x88f365f2, 0x80000000, 540); 
TEST_RR_OP( 136 , umaqa, 0x006cfa82, 0xffffffff, 0x80000000, 544); 
TEST_RR_OP( 137 , umaqa, 0x006d7a02, 0xffffffff, 0x80000000, 548); 
TEST_RR_OP( 138 , umaqa, 0x006d7a02, 0xffffffff, 0x00000000, 552); 
TEST_RR_OP( 139 , umaqa, 0x00717206, 0xffffffff, 0xffffffff, 556); 
TEST_RR_OP( 140 , umaqa, 0x0071f186, 0x80000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , umaqa, 0x0071f186, 0x876601bd, 0x00000000, 564); 
TEST_RR_OP( 142 , umaqa, 0x0075e98a, 0xffffffff, 0xffffffff, 568); 
TEST_RR_OP( 143 , umaqa, 0x0075e98a, 0x00000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , umaqa, 0x0076098a, 0x80000000, 0x403a2633, 576); 
TEST_RR_OP( 145 , umaqa, 0x0076098a, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , umaqa, 0x0076098a, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , umaqa, 0x0077286a, 0xd904073c, 0xffffffff, 588); 
TEST_RR_OP( 148 , umaqa, 0x0077a7ea, 0xffffffff, 0x80000000, 592); 
TEST_RR_OP( 149 , umaqa, 0x0077a7ea, 0x00000000, 0x80000000, 596); 
TEST_RR_OP( 150 , umaqa, 0x0077a7ea, 0x00000000, 0x00000000, 600); 
TEST_RR_OP( 151 , umaqa, 0x0077a7ea, 0x00000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , umaqa, 0x0077a7ea, 0x00000000, 0x80000000, 608); 
TEST_RR_OP( 153 , umaqa, 0x0077e7ea, 0x80000000, 0x80000000, 612); 
TEST_RR_OP( 154 , umaqa, 0x0077f96a, 0x23dd8447, 0x80000000, 616); 
TEST_RR_OP( 155 , umaqa, 0x0077f96a, 0x00000000, 0xeffb41fb, 620); 
TEST_RR_OP( 156 , umaqa, 0x007878ea, 0x80000000, 0xffffffff, 624); 
TEST_RR_OP( 157 , umaqa, 0x0078f86a, 0x80000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , umaqa, 0x007a7be5, 0xf143232e, 0xffffffff, 632); 
TEST_RR_OP( 159 , umaqa, 0x007a7be5, 0x00000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , umaqa, 0x007a7be5, 0x00000000, 0x725622bc, 640); 
TEST_RR_OP( 161 , umaqa, 0x007a91e5, 0x80000000, 0x2ca48d5b, 644); 
TEST_RR_OP( 162 , umaqa, 0x007a91e5, 0x00000000, 0x274b7f63, 648); 
TEST_RR_OP( 163 , umaqa, 0x007a91e5, 0x00000000, 0x00000000, 652); 
TEST_RR_OP( 164 , umaqa, 0x007a91e5, 0x00000000, 0x00000000, 656); 
TEST_RR_OP( 165 , umaqa, 0x007b1165, 0xffffffff, 0x80000000, 660); 
TEST_RR_OP( 166 , umaqa, 0x007b24e5, 0x80000000, 0x276fad81, 664); 
TEST_RR_OP( 167 , umaqa, 0x007b3ce5, 0x80000000, 0x30d9ffae, 668); 
TEST_RR_OP( 168 , umaqa, 0x007b3ce5, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , umaqa, 0x007bbc65, 0x80000000, 0xffffffff, 676); 
TEST_RR_OP( 170 , umaqa, 0x007bbc65, 0x00000000, 0x00000000, 680); 
TEST_RR_OP( 171 , umaqa, 0x007bbc65, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , umaqa, 0x007bbc65, 0x00000000, 0xffffffff, 688); 
TEST_RR_OP( 173 , umaqa, 0x007bbc65, 0x00000000, 0x80000000, 692); 
TEST_RR_OP( 174 , umaqa, 0x007bbc65, 0xf2bd08a8, 0x00000000, 696); 
TEST_RR_OP( 175 , umaqa, 0x007bd165, 0x80000000, 0x2a54eabe, 700); 
TEST_RR_OP( 176 , umaqa, 0x007c69db, 0x5d4c055b, 0xb52331d4, 704); 
TEST_RR_OP( 177 , umaqa, 0x007c69db, 0x98cef2d8, 0x00000000, 708); 
TEST_RR_OP( 178 , umaqa, 0x007ce95b, 0xffffffff, 0x80000000, 712); 
TEST_RR_OP( 179 , umaqa, 0x007d28db, 0x7f5a20f5, 0x80000000, 716); 
TEST_RR_OP( 180 , umaqa, 0x007d28db, 0x00000000, 0x7e7fd08d, 720); 
TEST_RR_OP( 181 , umaqa, 0x007ec582, 0xb57bdc54, 0xc49da7a8, 724); 
TEST_RR_OP( 182 , umaqa, 0x007ec582, 0x00000000, 0x80000000, 728); 
TEST_RR_OP( 183 , umaqa, 0x007f4502, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , umaqa, 0x00802f3d, 0xb6f1455c, 0xcd328b0b, 736); 
TEST_RR_OP( 185 , umaqa, 0x0080aebd, 0xffffffff, 0x80000000, 740); 
TEST_RR_OP( 186 , umaqa, 0x0080aebd, 0x00000000, 0x528d3e15, 744); 
TEST_RR_OP( 187 , umaqa, 0x0080be3d, 0x80000000, 0x1fc12d30, 748); 
TEST_RR_OP( 188 , umaqa, 0x00813dbd, 0xffffffff, 0x80000000, 752); 
TEST_RR_OP( 189 , umaqa, 0x00839c5c, 0xd39b975c, 0xffffffff, 756); 
TEST_RR_OP( 190 , umaqa, 0x008407dc, 0x80000000, 0xd7108c50, 760); 
TEST_RR_OP( 191 , umaqa, 0x008407dc, 0xab866730, 0x00000000, 764); 
TEST_RR_OP( 192 , umaqa, 0x008407dc, 0x00000000, 0x2f3dfdbe, 768); 
TEST_RR_OP( 193 , umaqa, 0x0085eff2, 0xffffffff, 0xf62e695d, 772); 
TEST_RR_OP( 194 , umaqa, 0x00861572, 0x80000000, 0x4b7ae722, 776); 
TEST_RR_OP( 195 , umaqa, 0x00861572, 0x00000000, 0x80000000, 780); 
TEST_RR_OP( 196 , umaqa, 0x00861572, 0x80000000, 0x00000000, 784); 
TEST_RR_OP( 197 , umaqa, 0x0088f68e, 0xd6df5fd0, 0xffffffff, 788); 
TEST_RR_OP( 198 , umaqa, 0x0088f68e, 0x00000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , umaqa, 0x008a88fa, 0xffffffff, 0xfe10077f, 796); 

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
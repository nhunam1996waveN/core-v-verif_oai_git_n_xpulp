# See LICENSE for license details.
#*****************************************************************************
# smxds.S
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

TEST_RR_OP( 2 , smxds, 0x00000000, 0x545263fa, 0x00000000, 8); 
TEST_RR_OP( 3 , smxds, 0x000094b7, 0xbd84523b, 0xffffffff, 12); 
TEST_RR_OP( 4 , smxds, 0xea0b0000, 0x80000000, 0x64e72bea, 16); 
TEST_RR_OP( 5 , smxds, 0x00000000, 0x80000000, 0x80000000, 20); 
TEST_RR_OP( 6 , smxds, 0x00000000, 0x80000000, 0x80000000, 24); 
TEST_RR_OP( 7 , smxds, 0x00000000, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , smxds, 0x00000000, 0xffffffff, 0x00000000, 32); 
TEST_RR_OP( 9 , smxds, 0xc1eb8000, 0xb4b683d7, 0x80000000, 36); 
TEST_RR_OP( 10 , smxds, 0x00000000, 0x00000000, 0x80000000, 40); 
TEST_RR_OP( 11 , smxds, 0xd2ed4d36, 0x1fb649f6, 0x698c8a4d, 44); 
TEST_RR_OP( 12 , smxds, 0x367ce4a0, 0x8d0925f9, 0xf37d8acd, 48); 
TEST_RR_OP( 13 , smxds, 0x00000000, 0xf6f4903e, 0x00000000, 52); 
TEST_RR_OP( 14 , smxds, 0x00008000, 0x80000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , smxds, 0x00000000, 0x00000000, 0xe31ae0ee, 60); 
TEST_RR_OP( 16 , smxds, 0x0bc70000, 0xff7e178e, 0x80000000, 64); 
TEST_RR_OP( 17 , smxds, 0x00000000, 0xffffffff, 0x00000000, 68); 
TEST_RR_OP( 18 , smxds, 0x00000000, 0x00000000, 0x00000000, 72); 
TEST_RR_OP( 19 , smxds, 0x00000000, 0x80000000, 0x00000000, 76); 
TEST_RR_OP( 20 , smxds, 0x00000000, 0x00000000, 0xdbad74d2, 80); 
TEST_RR_OP( 21 , smxds, 0xc4e30000, 0x22a089c6, 0x80000000, 84); 
TEST_RR_OP( 22 , smxds, 0x0b7c53c7, 0x6e2b6569, 0xcc16eae7, 88); 
TEST_RR_OP( 23 , smxds, 0x00000000, 0x80000000, 0x00000000, 92); 
TEST_RR_OP( 24 , smxds, 0x00000000, 0x80000000, 0x80000000, 96); 
TEST_RR_OP( 25 , smxds, 0xd85c8000, 0x80000000, 0x86e44f47, 100); 
TEST_RR_OP( 26 , smxds, 0xffff76b1, 0xffffffff, 0xc16d4abc, 104); 
TEST_RR_OP( 27 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 108); 
TEST_RR_OP( 28 , smxds, 0x00000000, 0x80000000, 0x80000000, 112); 
TEST_RR_OP( 29 , smxds, 0x00000000, 0x00000000, 0x475a7dc7, 116); 
TEST_RR_OP( 30 , smxds, 0x0000340f, 0x13724781, 0xffffffff, 120); 
TEST_RR_OP( 31 , smxds, 0x34ea7e83, 0xe73f9b87, 0x7415b3ea, 124); 
TEST_RR_OP( 32 , smxds, 0x00000000, 0x00000000, 0x110a05fe, 128); 
TEST_RR_OP( 33 , smxds, 0x00000000, 0x5113c20a, 0x00000000, 132); 
TEST_RR_OP( 34 , smxds, 0x00000000, 0x00000000, 0x80000000, 136); 
TEST_RR_OP( 35 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 140); 
TEST_RR_OP( 36 , smxds, 0x00000000, 0xffffffff, 0x00000000, 144); 
TEST_RR_OP( 37 , smxds, 0x00000000, 0x80000000, 0x80000000, 148); 
TEST_RR_OP( 38 , smxds, 0x00000000, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , smxds, 0x00008000, 0x80000000, 0xffffffff, 156); 
TEST_RR_OP( 40 , smxds, 0x00003d08, 0xffffffff, 0xf174b46c, 160); 
TEST_RR_OP( 41 , smxds, 0x00000000, 0x00000000, 0x80000000, 164); 
TEST_RR_OP( 42 , smxds, 0x24430000, 0x01674886, 0x80000000, 168); 
TEST_RR_OP( 43 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 172); 
TEST_RR_OP( 44 , smxds, 0x00005e39, 0xffffffff, 0x153cb703, 176); 
TEST_RR_OP( 45 , smxds, 0x00000000, 0x00000000, 0x0362c36e, 180); 
TEST_RR_OP( 46 , smxds, 0x00000000, 0xffffffff, 0x00000000, 184); 
TEST_RR_OP( 47 , smxds, 0x00000000, 0x00000000, 0xffffffff, 188); 
TEST_RR_OP( 48 , smxds, 0x00000000, 0xffffffff, 0x00000000, 192); 
TEST_RR_OP( 49 , smxds, 0x00000000, 0x80000000, 0x80000000, 196); 
TEST_RR_OP( 50 , smxds, 0x00008000, 0x80000000, 0xffffffff, 200); 
TEST_RR_OP( 51 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 204); 
TEST_RR_OP( 52 , smxds, 0x00000000, 0x00000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , smxds, 0x00000000, 0x16efe7e2, 0x00000000, 212); 
TEST_RR_OP( 54 , smxds, 0x00000000, 0x00000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , smxds, 0x23d889dd, 0x58df031c, 0x7a826b8b, 220); 
TEST_RR_OP( 56 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , smxds, 0x00000000, 0xffffffff, 0x00000000, 228); 
TEST_RR_OP( 58 , smxds, 0x00000000, 0x00000000, 0x00000000, 232); 
TEST_RR_OP( 59 , smxds, 0x0406161c, 0x01c80f03, 0xc2443a05, 236); 
TEST_RR_OP( 60 , smxds, 0x00000000, 0x80000000, 0x00000000, 240); 
TEST_RR_OP( 61 , smxds, 0x00000000, 0x9c095c30, 0x00000000, 244); 
TEST_RR_OP( 62 , smxds, 0x00000000, 0x43ad1831, 0x00000000, 248); 
TEST_RR_OP( 63 , smxds, 0x00000000, 0x58684207, 0x00000000, 252); 
TEST_RR_OP( 64 , smxds, 0x00000000, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , smxds, 0x00000000, 0x00000000, 0xffffffff, 260); 
TEST_RR_OP( 66 , smxds, 0x00000000, 0x00000000, 0xfd52d058, 264); 
TEST_RR_OP( 67 , smxds, 0x00000000, 0x00000000, 0x00000000, 268); 
TEST_RR_OP( 68 , smxds, 0x00006a90, 0xb2d21d62, 0xffffffff, 272); 
TEST_RR_OP( 69 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 276); 
TEST_RR_OP( 70 , smxds, 0x00000000, 0x00000000, 0x00000000, 280); 
TEST_RR_OP( 71 , smxds, 0x00000000, 0x80000000, 0x80000000, 284); 
TEST_RR_OP( 72 , smxds, 0x0000120a, 0xffffffff, 0xe273d069, 288); 
TEST_RR_OP( 73 , smxds, 0x00000000, 0x80000000, 0x00000000, 292); 
TEST_RR_OP( 74 , smxds, 0x00000000, 0x00000000, 0x80000000, 296); 
TEST_RR_OP( 75 , smxds, 0x00000000, 0x00000000, 0x00000000, 300); 
TEST_RR_OP( 76 , smxds, 0xec250000, 0x043ad84a, 0x80000000, 304); 
TEST_RR_OP( 77 , smxds, 0x1ee25270, 0xebfcb0d4, 0x77664d46, 308); 
TEST_RR_OP( 78 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 312); 
TEST_RR_OP( 79 , smxds, 0x00000000, 0x00000000, 0x00000000, 316); 
TEST_RR_OP( 80 , smxds, 0xe1a90000, 0xbaebc352, 0x80000000, 320); 
TEST_RR_OP( 81 , smxds, 0x00000000, 0x80000000, 0x80000000, 324); 
TEST_RR_OP( 82 , smxds, 0xf1468000, 0x6448e28d, 0x80000000, 328); 
TEST_RR_OP( 83 , smxds, 0xea820000, 0x0266d504, 0x80000000, 332); 
TEST_RR_OP( 84 , smxds, 0x00000000, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 340); 
TEST_RR_OP( 86 , smxds, 0x00000000, 0x00000000, 0x80000000, 344); 
TEST_RR_OP( 87 , smxds, 0x00000000, 0xffffffff, 0x00000000, 348); 
TEST_RR_OP( 88 , smxds, 0x00000000, 0x80000000, 0x80000000, 352); 
TEST_RR_OP( 89 , smxds, 0x0b978000, 0x80000000, 0xfeb3e8d1, 356); 
TEST_RR_OP( 90 , smxds, 0x07fa0000, 0x589e0ff4, 0x80000000, 360); 
TEST_RR_OP( 91 , smxds, 0x00000000, 0x00000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , smxds, 0x00005762, 0xffffffff, 0x1f22c7c0, 368); 
TEST_RR_OP( 93 , smxds, 0x00000000, 0x00000000, 0x80000000, 372); 
TEST_RR_OP( 94 , smxds, 0x00000000, 0x80000000, 0x00000000, 376); 
TEST_RR_OP( 95 , smxds, 0x00000000, 0x80000000, 0x00000000, 380); 
TEST_RR_OP( 96 , smxds, 0x00000000, 0x00000000, 0x80000000, 384); 
TEST_RR_OP( 97 , smxds, 0xfffff88c, 0x303928c5, 0xffffffff, 388); 
TEST_RR_OP( 98 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 392); 
TEST_RR_OP( 99 , smxds, 0x00008000, 0x80000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , smxds, 0x00000000, 0x00000000, 0xf979fe57, 400); 
TEST_RR_OP( 101 , smxds, 0x00000000, 0x00000000, 0x00000000, 404); 
TEST_RR_OP( 102 , smxds, 0x00000000, 0x00000000, 0xffffffff, 408); 
TEST_RR_OP( 103 , smxds, 0x00000000, 0x00000000, 0x80000000, 412); 
TEST_RR_OP( 104 , smxds, 0x00008000, 0x80000000, 0xffffffff, 416); 
TEST_RR_OP( 105 , smxds, 0x00000000, 0x80000000, 0x80000000, 420); 
TEST_RR_OP( 106 , smxds, 0x00000000, 0x80000000, 0x00000000, 424); 
TEST_RR_OP( 107 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 428); 
TEST_RR_OP( 108 , smxds, 0x05336873, 0xbd019236, 0x1e611de9, 432); 
TEST_RR_OP( 109 , smxds, 0xffff4cf0, 0xffffffff, 0x83c736d7, 436); 
TEST_RR_OP( 110 , smxds, 0x00000000, 0x00000000, 0x00000000, 440); 
TEST_RR_OP( 111 , smxds, 0x00000000, 0x00000000, 0x00000000, 444); 
TEST_RR_OP( 112 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , smxds, 0x093d0000, 0x80000000, 0x69c0ed86, 452); 
TEST_RR_OP( 114 , smxds, 0xf83b34b2, 0x8597105e, 0x0cc60e8a, 456); 
TEST_RR_OP( 115 , smxds, 0x00000000, 0x80000000, 0x00000000, 460); 
TEST_RR_OP( 116 , smxds, 0x0000529a, 0xffffffff, 0xd99786fd, 464); 
TEST_RR_OP( 117 , smxds, 0xcfca0000, 0x80000000, 0x717f606c, 468); 
TEST_RR_OP( 118 , smxds, 0x00000000, 0x00000000, 0xef039434, 472); 
TEST_RR_OP( 119 , smxds, 0x00000000, 0x00000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , smxds, 0x00000000, 0x80000000, 0x80000000, 480); 
TEST_RR_OP( 121 , smxds, 0x00000000, 0x00000000, 0x9c7d5d4c, 484); 
TEST_RR_OP( 122 , smxds, 0x00000000, 0x80000000, 0x00000000, 488); 
TEST_RR_OP( 123 , smxds, 0x00000000, 0x80000000, 0x80000000, 492); 
TEST_RR_OP( 124 , smxds, 0x00000000, 0xcc5f55bc, 0x00000000, 496); 
TEST_RR_OP( 125 , smxds, 0x00000000, 0xffffffff, 0x00000000, 500); 
TEST_RR_OP( 126 , smxds, 0xffff5876, 0x418299f8, 0xffffffff, 504); 
TEST_RR_OP( 127 , smxds, 0xfffff9cc, 0xb511aedd, 0xffffffff, 508); 
TEST_RR_OP( 128 , smxds, 0x00000000, 0x00000000, 0x00000000, 512); 
TEST_RR_OP( 129 , smxds, 0x00000000, 0x00000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , smxds, 0x00000000, 0x232bc80c, 0x00000000, 520); 
TEST_RR_OP( 131 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 524); 
TEST_RR_OP( 132 , smxds, 0x00008ef9, 0xc2775170, 0xffffffff, 528); 
TEST_RR_OP( 133 , smxds, 0xffffb14e, 0xffffffff, 0xdc572b09, 532); 
TEST_RR_OP( 134 , smxds, 0x00008000, 0x80000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , smxds, 0x07400000, 0xb7380e80, 0x80000000, 540); 
TEST_RR_OP( 136 , smxds, 0x00000000, 0x00000000, 0x00000000, 544); 
TEST_RR_OP( 137 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 548); 
TEST_RR_OP( 138 , smxds, 0xdd3f5e6f, 0xa63254df, 0x3edb27aa, 552); 
TEST_RR_OP( 139 , smxds, 0x00000000, 0xcc3d20ea, 0x00000000, 556); 
TEST_RR_OP( 140 , smxds, 0x00007f8d, 0xffffffff, 0x1c279c9a, 560); 
TEST_RR_OP( 141 , smxds, 0x00000000, 0x80000000, 0x80000000, 564); 
TEST_RR_OP( 142 , smxds, 0x00000000, 0x00000000, 0x80000000, 568); 
TEST_RR_OP( 143 , smxds, 0x00008000, 0x80000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , smxds, 0x00000000, 0x00000000, 0x00000000, 576); 
TEST_RR_OP( 145 , smxds, 0x232a8000, 0x80000000, 0xfd8db9ab, 580); 
TEST_RR_OP( 146 , smxds, 0x3225f0ad, 0x5dab473c, 0xd5bd68eb, 584); 
TEST_RR_OP( 147 , smxds, 0xee1d06ac, 0x114a8307, 0xea629369, 588); 
TEST_RR_OP( 148 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 592); 
TEST_RR_OP( 149 , smxds, 0x00008000, 0x80000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 600); 
TEST_RR_OP( 151 , smxds, 0x00000000, 0x00000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , smxds, 0x00000000, 0x80000000, 0x00000000, 608); 
TEST_RR_OP( 153 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 612); 
TEST_RR_OP( 154 , smxds, 0x00000000, 0x4680a3ca, 0x00000000, 616); 
TEST_RR_OP( 155 , smxds, 0x00000000, 0x80000000, 0x80000000, 620); 
TEST_RR_OP( 156 , smxds, 0x00000000, 0xa837fc2c, 0x00000000, 624); 
TEST_RR_OP( 157 , smxds, 0xfb7a0000, 0x80000000, 0x32e9090c, 628); 
TEST_RR_OP( 158 , smxds, 0x00000000, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , smxds, 0xe8006028, 0x592a0934, 0xab7eb260, 636); 
TEST_RR_OP( 160 , smxds, 0x00000000, 0x80000000, 0x00000000, 640); 
TEST_RR_OP( 161 , smxds, 0x00000000, 0x80000000, 0x00000000, 644); 
TEST_RR_OP( 162 , smxds, 0x00000000, 0x80000000, 0x80000000, 648); 
TEST_RR_OP( 163 , smxds, 0x0000a3e0, 0xbdd161b1, 0xffffffff, 652); 
TEST_RR_OP( 164 , smxds, 0x00000000, 0x32cc427b, 0x00000000, 656); 
TEST_RR_OP( 165 , smxds, 0x00000000, 0x80000000, 0x80000000, 660); 
TEST_RR_OP( 166 , smxds, 0xffff9909, 0x5458ed61, 0xffffffff, 664); 
TEST_RR_OP( 167 , smxds, 0x00000000, 0x00000000, 0x80000000, 668); 
TEST_RR_OP( 168 , smxds, 0x3c140000, 0x80000000, 0xa98e87d8, 672); 
TEST_RR_OP( 169 , smxds, 0x00000000, 0x00000000, 0x80000000, 676); 
TEST_RR_OP( 170 , smxds, 0x00004d09, 0xffffffff, 0x05ccb8c3, 680); 
TEST_RR_OP( 171 , smxds, 0x00000000, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , smxds, 0x00000000, 0x80000000, 0x00000000, 688); 
TEST_RR_OP( 173 , smxds, 0x00000000, 0x80000000, 0x80000000, 692); 
TEST_RR_OP( 174 , smxds, 0x00000000, 0x00000000, 0xffffffff, 696); 
TEST_RR_OP( 175 , smxds, 0xefdd0000, 0x6d06dfba, 0x80000000, 700); 
TEST_RR_OP( 176 , smxds, 0x00000000, 0xffffffff, 0x00000000, 704); 
TEST_RR_OP( 177 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 708); 
TEST_RR_OP( 178 , smxds, 0x00000000, 0xffffffff, 0x00000000, 712); 
TEST_RR_OP( 179 , smxds, 0x00000000, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , smxds, 0x00000000, 0x80000000, 0x00000000, 720); 
TEST_RR_OP( 181 , smxds, 0x00008000, 0x80000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , smxds, 0x019b8f92, 0x02e138ac, 0xf32291aa, 728); 
TEST_RR_OP( 183 , smxds, 0x00000000, 0xeb2c07e0, 0x00000000, 732); 
TEST_RR_OP( 184 , smxds, 0x00000000, 0x80000000, 0x80000000, 736); 
TEST_RR_OP( 185 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 740); 
TEST_RR_OP( 186 , smxds, 0x00004061, 0xffffffff, 0x4b130ab2, 744); 
TEST_RR_OP( 187 , smxds, 0xffff9b2a, 0xffffffff, 0x0eae7384, 748); 
TEST_RR_OP( 188 , smxds, 0x12640000, 0xbbcf24c8, 0x80000000, 752); 
TEST_RR_OP( 189 , smxds, 0x00000000, 0xffffffff, 0xffffffff, 756); 
TEST_RR_OP( 190 , smxds, 0x00000000, 0x00000000, 0x29a71bfe, 760); 
TEST_RR_OP( 191 , smxds, 0xf5f18000, 0x80000000, 0x5d55141d, 764); 
TEST_RR_OP( 192 , smxds, 0x00000000, 0x00000000, 0x00000000, 768); 
TEST_RR_OP( 193 , smxds, 0x00003fc6, 0xffffffff, 0x27bce7f6, 772); 
TEST_RR_OP( 194 , smxds, 0xffff8000, 0xffffffff, 0x80000000, 776); 
TEST_RR_OP( 195 , smxds, 0x00000000, 0xffffffff, 0x00000000, 780); 
TEST_RR_OP( 196 , smxds, 0x00000000, 0x00000000, 0x00000000, 784); 
TEST_RR_OP( 197 , smxds, 0xffff0ba4, 0xffffffff, 0x83b0780c, 788); 
TEST_RR_OP( 198 , smxds, 0x00000000, 0x00000000, 0x80000000, 792); 
TEST_RR_OP( 199 , smxds, 0x00008000, 0x80000000, 0xffffffff, 796); 

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
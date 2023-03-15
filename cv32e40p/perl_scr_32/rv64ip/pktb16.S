# See LICENSE for license details.
#*****************************************************************************
# pktb16.S
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

TEST_RR_OP( 2 , pktb16, 0x8000ffff, 0x80000000, 0x9f54ffff, 8); 
TEST_RR_OP( 3 , pktb16, 0x6aab0000, 0x6aab0000, 0x80000000, 12); 
TEST_RR_OP( 4 , pktb16, 0xffff0000, 0xffff0000, 0x80000000, 16); 
TEST_RR_OP( 5 , pktb16, 0x761affff, 0x761a8000, 0xd798ffff, 20); 
TEST_RR_OP( 6 , pktb16, 0x0000cb57, 0x0000ffff, 0x8000cb57, 24); 
TEST_RR_OP( 7 , pktb16, 0x00009202, 0x00008000, 0x80009202, 28); 
TEST_RR_OP( 8 , pktb16, 0xef240000, 0xef248000, 0xffff0000, 32); 
TEST_RR_OP( 9 , pktb16, 0xffffffff, 0xffff8000, 0xffffffff, 36); 
TEST_RR_OP( 10 , pktb16, 0x80008000, 0x80008000, 0x00008000, 40); 
TEST_RR_OP( 11 , pktb16, 0x00008000, 0x0000386b, 0x47558000, 44); 
TEST_RR_OP( 12 , pktb16, 0x80000000, 0x80000000, 0xffff0000, 48); 
TEST_RR_OP( 13 , pktb16, 0x80000000, 0x8000ffff, 0x00000000, 52); 
TEST_RR_OP( 14 , pktb16, 0x00008000, 0x00000000, 0x00008000, 56); 
TEST_RR_OP( 15 , pktb16, 0xffff6b9f, 0xffff8000, 0x4eb16b9f, 60); 
TEST_RR_OP( 16 , pktb16, 0x8000468d, 0x8000ffff, 0x8000468d, 64); 
TEST_RR_OP( 17 , pktb16, 0x30140000, 0x3014ffff, 0x00000000, 68); 
TEST_RR_OP( 18 , pktb16, 0xffff8000, 0xffff0000, 0x00008000, 72); 
TEST_RR_OP( 19 , pktb16, 0x00009cc2, 0x0000685c, 0xffff9cc2, 76); 
TEST_RR_OP( 20 , pktb16, 0x80008000, 0x80000000, 0x80008000, 80); 
TEST_RR_OP( 21 , pktb16, 0x0000ffff, 0x0000ffff, 0xe672ffff, 84); 
TEST_RR_OP( 22 , pktb16, 0x71beffff, 0x71beffff, 0xffffffff, 88); 
TEST_RR_OP( 23 , pktb16, 0xae810000, 0xae81882e, 0x2fdb0000, 92); 
TEST_RR_OP( 24 , pktb16, 0x8000ffff, 0x8000ef79, 0xffffffff, 96); 
TEST_RR_OP( 25 , pktb16, 0xffff3924, 0xffffffff, 0x00003924, 100); 
TEST_RR_OP( 26 , pktb16, 0x00008000, 0x00000000, 0x80008000, 104); 
TEST_RR_OP( 27 , pktb16, 0xffff8000, 0xffffffff, 0xffff8000, 108); 
TEST_RR_OP( 28 , pktb16, 0x2b2dffff, 0x2b2dffff, 0x8000ffff, 112); 
TEST_RR_OP( 29 , pktb16, 0x00008000, 0x0000ffff, 0x80008000, 116); 
TEST_RR_OP( 30 , pktb16, 0x80000000, 0x80000000, 0x00000000, 120); 
TEST_RR_OP( 31 , pktb16, 0xffff0000, 0xffff0000, 0xffff0000, 124); 
TEST_RR_OP( 32 , pktb16, 0x00000000, 0x0000ffff, 0xffff0000, 128); 
TEST_RR_OP( 33 , pktb16, 0xb4910acc, 0xb4918000, 0xffff0acc, 132); 
TEST_RR_OP( 34 , pktb16, 0xffff0000, 0xffff8000, 0x00000000, 136); 
TEST_RR_OP( 35 , pktb16, 0x80000000, 0x80000000, 0x00000000, 140); 
TEST_RR_OP( 36 , pktb16, 0x54f38000, 0x54f30000, 0xffff8000, 144); 
TEST_RR_OP( 37 , pktb16, 0x80008000, 0x80005a62, 0x80008000, 148); 
TEST_RR_OP( 38 , pktb16, 0xffff0000, 0xffff8000, 0x00000000, 152); 
TEST_RR_OP( 39 , pktb16, 0xffffffff, 0xffff0000, 0x8000ffff, 156); 
TEST_RR_OP( 40 , pktb16, 0x9a718000, 0x9a71316e, 0x00008000, 160); 
TEST_RR_OP( 41 , pktb16, 0x8000f011, 0x8000ffff, 0xcd9cf011, 164); 
TEST_RR_OP( 42 , pktb16, 0xe14b0000, 0xe14ba31b, 0x4b170000, 168); 
TEST_RR_OP( 43 , pktb16, 0x00008000, 0x00008000, 0xffff8000, 172); 
TEST_RR_OP( 44 , pktb16, 0x80009990, 0x8000ffff, 0xffff9990, 176); 
TEST_RR_OP( 45 , pktb16, 0x00004928, 0x00000c49, 0x80004928, 180); 
TEST_RR_OP( 46 , pktb16, 0x1fa80000, 0x1fa8ffff, 0xffff0000, 184); 
TEST_RR_OP( 47 , pktb16, 0x00008000, 0x00006f52, 0xce478000, 188); 
TEST_RR_OP( 48 , pktb16, 0x8000ffff, 0x80000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , pktb16, 0x00000000, 0x0000ffff, 0x80000000, 196); 
TEST_RR_OP( 50 , pktb16, 0x40ba3c4f, 0x40ba0000, 0xffff3c4f, 200); 
TEST_RR_OP( 51 , pktb16, 0x0000ffff, 0x00008000, 0x8000ffff, 204); 
TEST_RR_OP( 52 , pktb16, 0x80008000, 0x80000000, 0xffff8000, 208); 
TEST_RR_OP( 53 , pktb16, 0x00008000, 0x00008000, 0xffff8000, 212); 
TEST_RR_OP( 54 , pktb16, 0xffff0000, 0xffff8000, 0x546d0000, 216); 
TEST_RR_OP( 55 , pktb16, 0x80005151, 0x80000000, 0x00005151, 220); 
TEST_RR_OP( 56 , pktb16, 0x00008000, 0x00000000, 0x80008000, 224); 
TEST_RR_OP( 57 , pktb16, 0x00009f85, 0x0000ffff, 0x00009f85, 228); 
TEST_RR_OP( 58 , pktb16, 0x800019d3, 0x80008000, 0xffff19d3, 232); 
TEST_RR_OP( 59 , pktb16, 0xffff3a8f, 0xffff8000, 0xffff3a8f, 236); 
TEST_RR_OP( 60 , pktb16, 0xffff71dd, 0xffffffff, 0x800071dd, 240); 
TEST_RR_OP( 61 , pktb16, 0xd4fd8000, 0xd4fd3578, 0x80008000, 244); 
TEST_RR_OP( 62 , pktb16, 0xffffffff, 0xffffc625, 0x8000ffff, 248); 
TEST_RR_OP( 63 , pktb16, 0x80000000, 0x800007b5, 0x80000000, 252); 
TEST_RR_OP( 64 , pktb16, 0x8000ffff, 0x80008000, 0xb6abffff, 256); 
TEST_RR_OP( 65 , pktb16, 0x19cdffff, 0x19cd3422, 0x0000ffff, 260); 
TEST_RR_OP( 66 , pktb16, 0xffffb362, 0xffffffff, 0x8000b362, 264); 
TEST_RR_OP( 67 , pktb16, 0xffff0000, 0xffff8000, 0xffff0000, 268); 
TEST_RR_OP( 68 , pktb16, 0xffffed48, 0xffff8000, 0x8000ed48, 272); 
TEST_RR_OP( 69 , pktb16, 0x8000ffff, 0x80000000, 0xfe5fffff, 276); 
TEST_RR_OP( 70 , pktb16, 0x5e78fa7b, 0x5e788000, 0x0000fa7b, 280); 
TEST_RR_OP( 71 , pktb16, 0x6dc78000, 0x6dc7eadf, 0xffff8000, 284); 
TEST_RR_OP( 72 , pktb16, 0xf31f0000, 0xf31fffff, 0xa3690000, 288); 
TEST_RR_OP( 73 , pktb16, 0x0255ffff, 0x02550000, 0x10ecffff, 292); 
TEST_RR_OP( 74 , pktb16, 0x80008000, 0x80002f33, 0xffff8000, 296); 
TEST_RR_OP( 75 , pktb16, 0xffff8000, 0xffff8000, 0xeb458000, 300); 
TEST_RR_OP( 76 , pktb16, 0x8000ffff, 0x800064e9, 0xffffffff, 304); 
TEST_RR_OP( 77 , pktb16, 0x0000ffff, 0x0000adfb, 0x3769ffff, 308); 
TEST_RR_OP( 78 , pktb16, 0xffffffff, 0xffff8000, 0x0000ffff, 312); 
TEST_RR_OP( 79 , pktb16, 0x00008000, 0x00008000, 0x80008000, 316); 
TEST_RR_OP( 80 , pktb16, 0x80008000, 0x800016f5, 0xc2948000, 320); 
TEST_RR_OP( 81 , pktb16, 0x0000ffff, 0x00009df8, 0x0000ffff, 324); 
TEST_RR_OP( 82 , pktb16, 0x501d6978, 0x501dc225, 0x00006978, 328); 
TEST_RR_OP( 83 , pktb16, 0xffffbc08, 0xffff0000, 0xffffbc08, 332); 
TEST_RR_OP( 84 , pktb16, 0x00008000, 0x000058bb, 0xd7498000, 336); 
TEST_RR_OP( 85 , pktb16, 0x62766559, 0x6276ffff, 0xffff6559, 340); 
TEST_RR_OP( 86 , pktb16, 0xcf848000, 0xcf848000, 0x80008000, 344); 
TEST_RR_OP( 87 , pktb16, 0x982d0000, 0x982dffff, 0x80000000, 348); 
TEST_RR_OP( 88 , pktb16, 0xd0900000, 0xd0908000, 0x442f0000, 352); 
TEST_RR_OP( 89 , pktb16, 0x33968000, 0x33967aea, 0x80008000, 356); 
TEST_RR_OP( 90 , pktb16, 0xe454720a, 0xe454ffff, 0xffff720a, 360); 
TEST_RR_OP( 91 , pktb16, 0x80000000, 0x80000000, 0x00000000, 364); 
TEST_RR_OP( 92 , pktb16, 0x0000ffff, 0x00008000, 0xffffffff, 368); 
TEST_RR_OP( 93 , pktb16, 0x80008000, 0x8000ffff, 0xffff8000, 372); 
TEST_RR_OP( 94 , pktb16, 0x7533ffff, 0x75338000, 0x8000ffff, 376); 
TEST_RR_OP( 95 , pktb16, 0x93178000, 0x93170000, 0x040a8000, 380); 
TEST_RR_OP( 96 , pktb16, 0x00000000, 0x00000000, 0x74e10000, 384); 
TEST_RR_OP( 97 , pktb16, 0x00006c7e, 0x0000ffff, 0x00006c7e, 388); 
TEST_RR_OP( 98 , pktb16, 0xa57c0000, 0xa57c8000, 0x00000000, 392); 
TEST_RR_OP( 99 , pktb16, 0xffffffff, 0xffffffff, 0x8000ffff, 396); 
TEST_RR_OP( 100 , pktb16, 0xffff8000, 0xffffffff, 0x80008000, 400); 
TEST_RR_OP( 101 , pktb16, 0x80008000, 0x8000430f, 0xdc598000, 404); 
TEST_RR_OP( 102 , pktb16, 0x80008000, 0x80008000, 0xa1278000, 408); 
TEST_RR_OP( 103 , pktb16, 0x6f91fb0e, 0x6f910000, 0xfffffb0e, 412); 
TEST_RR_OP( 104 , pktb16, 0x80000000, 0x8000449c, 0x80000000, 416); 
TEST_RR_OP( 105 , pktb16, 0xfec63627, 0xfec6991e, 0xffff3627, 420); 
TEST_RR_OP( 106 , pktb16, 0x00008000, 0x0000ffff, 0xffff8000, 424); 
TEST_RR_OP( 107 , pktb16, 0x00008000, 0x00000000, 0xd1f98000, 428); 
TEST_RR_OP( 108 , pktb16, 0xffff8000, 0xffffffff, 0x9e718000, 432); 
TEST_RR_OP( 109 , pktb16, 0x0000056f, 0x00000000, 0x8000056f, 436); 
TEST_RR_OP( 110 , pktb16, 0x5a09ffff, 0x5a09ac50, 0x8000ffff, 440); 
TEST_RR_OP( 111 , pktb16, 0xffff0000, 0xffff0fbb, 0x80000000, 444); 
TEST_RR_OP( 112 , pktb16, 0x5ce4ffff, 0x5ce4ffff, 0x0000ffff, 448); 
TEST_RR_OP( 113 , pktb16, 0xffffffff, 0xffff6af2, 0x8000ffff, 452); 
TEST_RR_OP( 114 , pktb16, 0x80008000, 0x80008000, 0x00008000, 456); 
TEST_RR_OP( 115 , pktb16, 0xffff0000, 0xffff0000, 0x00000000, 460); 
TEST_RR_OP( 116 , pktb16, 0x00000000, 0x0000ffff, 0x00000000, 464); 
TEST_RR_OP( 117 , pktb16, 0xe4568000, 0xe4568000, 0xd3ac8000, 468); 
TEST_RR_OP( 118 , pktb16, 0xffffd787, 0xffff8000, 0xffffd787, 472); 
TEST_RR_OP( 119 , pktb16, 0x0d1a0000, 0x0d1affff, 0xffc30000, 476); 
TEST_RR_OP( 120 , pktb16, 0x8000f5e1, 0x8000d11e, 0xfffff5e1, 480); 
TEST_RR_OP( 121 , pktb16, 0x00008000, 0x00002e92, 0x80008000, 484); 
TEST_RR_OP( 122 , pktb16, 0x80000000, 0x80000000, 0xbcb00000, 488); 
TEST_RR_OP( 123 , pktb16, 0x7b250000, 0x7b25ffff, 0x00000000, 492); 
TEST_RR_OP( 124 , pktb16, 0x0000972d, 0x000061a5, 0x608c972d, 496); 
TEST_RR_OP( 125 , pktb16, 0x931d8000, 0x931dffff, 0x80008000, 500); 
TEST_RR_OP( 126 , pktb16, 0x0000ffff, 0x00000000, 0xffffffff, 504); 
TEST_RR_OP( 127 , pktb16, 0x80000000, 0x80000000, 0x12630000, 508); 
TEST_RR_OP( 128 , pktb16, 0x800094ff, 0x80000194, 0x000094ff, 512); 
TEST_RR_OP( 129 , pktb16, 0xe606ffff, 0xe6068000, 0x0000ffff, 516); 
TEST_RR_OP( 130 , pktb16, 0x00008000, 0x0000ffff, 0xffff8000, 520); 
TEST_RR_OP( 131 , pktb16, 0x80000000, 0x80000000, 0xffff0000, 524); 
TEST_RR_OP( 132 , pktb16, 0x6514ffff, 0x65140000, 0x8000ffff, 528); 
TEST_RR_OP( 133 , pktb16, 0x80006881, 0x80000000, 0x00006881, 532); 
TEST_RR_OP( 134 , pktb16, 0xffff0000, 0xffffea90, 0x80000000, 536); 
TEST_RR_OP( 135 , pktb16, 0x00008000, 0x00000000, 0x80008000, 540); 
TEST_RR_OP( 136 , pktb16, 0x00008000, 0x00001b32, 0x00008000, 544); 
TEST_RR_OP( 137 , pktb16, 0x00000000, 0x0000ffff, 0x00000000, 548); 
TEST_RR_OP( 138 , pktb16, 0xc661ffff, 0xc6610000, 0x8004ffff, 552); 
TEST_RR_OP( 139 , pktb16, 0x80008000, 0x80008000, 0x80008000, 556); 
TEST_RR_OP( 140 , pktb16, 0x80000000, 0x800099a6, 0x2be00000, 560); 
TEST_RR_OP( 141 , pktb16, 0xffff71e5, 0xffffffff, 0x6bc571e5, 564); 
TEST_RR_OP( 142 , pktb16, 0xb945ffff, 0xb9458000, 0xffffffff, 568); 
TEST_RR_OP( 143 , pktb16, 0x0000ffff, 0x00000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , pktb16, 0x03ebc4e5, 0x03ebffff, 0x6112c4e5, 576); 
TEST_RR_OP( 145 , pktb16, 0x0000ffff, 0x00008000, 0xdb07ffff, 580); 
TEST_RR_OP( 146 , pktb16, 0x0000931d, 0x0000d570, 0xffff931d, 584); 
TEST_RR_OP( 147 , pktb16, 0xffff8000, 0xffff07f6, 0x80008000, 588); 
TEST_RR_OP( 148 , pktb16, 0xffffffff, 0xffffffff, 0x8000ffff, 592); 
TEST_RR_OP( 149 , pktb16, 0x80000000, 0x8000ffff, 0xffff0000, 596); 
TEST_RR_OP( 150 , pktb16, 0x80008000, 0x8000ffff, 0xffff8000, 600); 
TEST_RR_OP( 151 , pktb16, 0x0000f448, 0x0000c252, 0x8000f448, 604); 
TEST_RR_OP( 152 , pktb16, 0x00008000, 0x00000000, 0x80008000, 608); 
TEST_RR_OP( 153 , pktb16, 0x00000000, 0x00000000, 0x00000000, 612); 
TEST_RR_OP( 154 , pktb16, 0x68fc0000, 0x68fc0000, 0x80000000, 616); 
TEST_RR_OP( 155 , pktb16, 0x2a7a0000, 0x2a7a0000, 0x80000000, 620); 
TEST_RR_OP( 156 , pktb16, 0x80004357, 0x80008000, 0xffff4357, 624); 
TEST_RR_OP( 157 , pktb16, 0xffff4fea, 0xffff8000, 0x00004fea, 628); 
TEST_RR_OP( 158 , pktb16, 0xffff0000, 0xffffffff, 0x00000000, 632); 
TEST_RR_OP( 159 , pktb16, 0x00008000, 0x00008000, 0x33cd8000, 636); 
TEST_RR_OP( 160 , pktb16, 0x03d50000, 0x03d50000, 0x56940000, 640); 
TEST_RR_OP( 161 , pktb16, 0x27ea9b86, 0x27ea69a9, 0xffff9b86, 644); 
TEST_RR_OP( 162 , pktb16, 0x98cfffff, 0x98cfffff, 0x8ac1ffff, 648); 
TEST_RR_OP( 163 , pktb16, 0x8000ffff, 0x80003b1e, 0x103dffff, 652); 
TEST_RR_OP( 164 , pktb16, 0xffff8000, 0xffff8000, 0xffff8000, 656); 
TEST_RR_OP( 165 , pktb16, 0xacd0ffff, 0xacd09f8d, 0xdc00ffff, 660); 
TEST_RR_OP( 166 , pktb16, 0x0000bdc7, 0x0000b839, 0xffffbdc7, 664); 
TEST_RR_OP( 167 , pktb16, 0xebab998d, 0xebab0000, 0xffff998d, 668); 
TEST_RR_OP( 168 , pktb16, 0xa44dffff, 0xa44deb09, 0x0000ffff, 672); 
TEST_RR_OP( 169 , pktb16, 0xffffffff, 0xffff3998, 0xffffffff, 676); 
TEST_RR_OP( 170 , pktb16, 0x4b9cffff, 0x4b9c73c6, 0x8000ffff, 680); 
TEST_RR_OP( 171 , pktb16, 0x0000ffff, 0x00009711, 0x0000ffff, 684); 
TEST_RR_OP( 172 , pktb16, 0x0000ab96, 0x00008000, 0xafc3ab96, 688); 
TEST_RR_OP( 173 , pktb16, 0x8000ffff, 0x8000ffff, 0x87a1ffff, 692); 
TEST_RR_OP( 174 , pktb16, 0xffff0000, 0xffff0000, 0x80000000, 696); 
TEST_RR_OP( 175 , pktb16, 0x80008000, 0x8000ffff, 0xb8ff8000, 700); 
TEST_RR_OP( 176 , pktb16, 0x60590000, 0x6059ffff, 0x00000000, 704); 
TEST_RR_OP( 177 , pktb16, 0x8000ffff, 0x8000ffff, 0xc00cffff, 708); 
TEST_RR_OP( 178 , pktb16, 0x80009e53, 0x8000ffff, 0xc9ba9e53, 712); 
TEST_RR_OP( 179 , pktb16, 0xffff8936, 0xffff8000, 0x00008936, 716); 
TEST_RR_OP( 180 , pktb16, 0x3e7affff, 0x3e7a0000, 0xc983ffff, 720); 
TEST_RR_OP( 181 , pktb16, 0xffff0000, 0xffff0fcd, 0x583f0000, 724); 
TEST_RR_OP( 182 , pktb16, 0x00008000, 0x00000066, 0x00008000, 728); 
TEST_RR_OP( 183 , pktb16, 0x000000de, 0x00008000, 0xffff00de, 732); 
TEST_RR_OP( 184 , pktb16, 0x87bb8000, 0x87bb0000, 0x80008000, 736); 
TEST_RR_OP( 185 , pktb16, 0x5045ffff, 0x5045ffff, 0xffffffff, 740); 
TEST_RR_OP( 186 , pktb16, 0x557e8000, 0x557e8000, 0x00008000, 744); 
TEST_RR_OP( 187 , pktb16, 0x0000ffff, 0x00008000, 0x0000ffff, 748); 
TEST_RR_OP( 188 , pktb16, 0x00000058, 0x0000ffff, 0xffff0058, 752); 
TEST_RR_OP( 189 , pktb16, 0x0000ffff, 0x00000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , pktb16, 0x000086c4, 0x00008000, 0x000086c4, 760); 
TEST_RR_OP( 191 , pktb16, 0x00002615, 0x0000deeb, 0x80002615, 764); 
TEST_RR_OP( 192 , pktb16, 0x00008000, 0x00000000, 0xc3468000, 768); 
TEST_RR_OP( 193 , pktb16, 0xebaabd8e, 0xebaa8000, 0xffffbd8e, 772); 
TEST_RR_OP( 194 , pktb16, 0xffff82c3, 0xffff0aa9, 0x9cf482c3, 776); 
TEST_RR_OP( 195 , pktb16, 0xffff0000, 0xffff8000, 0xc4e10000, 780); 
TEST_RR_OP( 196 , pktb16, 0x80000000, 0x80008000, 0x00000000, 784); 
TEST_RR_OP( 197 , pktb16, 0x8fd38000, 0x8fd3ffff, 0xffff8000, 788); 
TEST_RR_OP( 198 , pktb16, 0x80008000, 0x80002ce6, 0xef908000, 792); 
TEST_RR_OP( 199 , pktb16, 0xffff0000, 0xffff8000, 0x80000000, 796); 

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
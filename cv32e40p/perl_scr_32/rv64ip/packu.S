# See LICENSE for license details.
#*****************************************************************************
# packu.S
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

TEST_RR_OP( 2 , packu, 0x35849622, 0x96228000, 0x35840000, 8); 
TEST_RR_OP( 3 , packu, 0x8000ffc6, 0xffc6ffff, 0x80008000, 12); 
TEST_RR_OP( 4 , packu, 0x8000a4cd, 0xa4cd8000, 0x8000ca36, 16); 
TEST_RR_OP( 5 , packu, 0xffffffff, 0xffff8000, 0xffffffff, 20); 
TEST_RR_OP( 6 , packu, 0x2eb9ffff, 0xffff9d0a, 0x2eb98000, 24); 
TEST_RR_OP( 7 , packu, 0xffff8000, 0x80000000, 0xffff0000, 28); 
TEST_RR_OP( 8 , packu, 0x800023b8, 0x23b80000, 0x80001ce6, 32); 
TEST_RR_OP( 9 , packu, 0xffff0000, 0x00008000, 0xffff8000, 36); 
TEST_RR_OP( 10 , packu, 0xd223fbfa, 0xfbfa8000, 0xd223bf13, 40); 
TEST_RR_OP( 11 , packu, 0x8000ffff, 0xffff0000, 0x800093c4, 44); 
TEST_RR_OP( 12 , packu, 0xffff0000, 0x00008000, 0xffffce71, 48); 
TEST_RR_OP( 13 , packu, 0xffff8000, 0x8000db5e, 0xffffffff, 52); 
TEST_RR_OP( 14 , packu, 0xffff0000, 0x00000000, 0xffffd137, 56); 
TEST_RR_OP( 15 , packu, 0x80000250, 0x0250ac01, 0x8000ffff, 60); 
TEST_RR_OP( 16 , packu, 0x71b5a088, 0xa08840c2, 0x71b5d631, 64); 
TEST_RR_OP( 17 , packu, 0xdc9affff, 0xffff8000, 0xdc9a0000, 68); 
TEST_RR_OP( 18 , packu, 0xfffffaf1, 0xfaf18000, 0xffffdddc, 72); 
TEST_RR_OP( 19 , packu, 0x17fc14cc, 0x14cc8000, 0x17fc8000, 76); 
TEST_RR_OP( 20 , packu, 0x80000000, 0x0000ffff, 0x80008000, 80); 
TEST_RR_OP( 21 , packu, 0x1edc10aa, 0x10aaffff, 0x1edc5918, 84); 
TEST_RR_OP( 22 , packu, 0xffff8000, 0x80008000, 0xffff8000, 88); 
TEST_RR_OP( 23 , packu, 0x8000ffff, 0xffff8000, 0x8000396f, 92); 
TEST_RR_OP( 24 , packu, 0x0000ffff, 0xffff8000, 0x0000ffff, 96); 
TEST_RR_OP( 25 , packu, 0x00007434, 0x7434ffff, 0x00000000, 100); 
TEST_RR_OP( 26 , packu, 0x4085ffff, 0xffff8000, 0x4085e00e, 104); 
TEST_RR_OP( 27 , packu, 0x80008000, 0x80000000, 0x80000000, 108); 
TEST_RR_OP( 28 , packu, 0xffffbf5c, 0xbf5c8000, 0xffff0000, 112); 
TEST_RR_OP( 29 , packu, 0xffffffff, 0xffff0000, 0xffff8000, 116); 
TEST_RR_OP( 30 , packu, 0x085d8000, 0x80004a4a, 0x085d0000, 120); 
TEST_RR_OP( 31 , packu, 0x0000ffff, 0xffff8000, 0x00000000, 124); 
TEST_RR_OP( 32 , packu, 0x80000000, 0x0000ffff, 0x80008000, 128); 
TEST_RR_OP( 33 , packu, 0x000057d6, 0x57d60000, 0x00008000, 132); 
TEST_RR_OP( 34 , packu, 0x80008000, 0x80000000, 0x8000ffff, 136); 
TEST_RR_OP( 35 , packu, 0x80002d34, 0x2d348000, 0x80008000, 140); 
TEST_RR_OP( 36 , packu, 0x8000ffff, 0xffff8000, 0x800071dd, 144); 
TEST_RR_OP( 37 , packu, 0x80009517, 0x9517ffff, 0x8000ffff, 148); 
TEST_RR_OP( 38 , packu, 0x00008000, 0x80000000, 0x00000000, 152); 
TEST_RR_OP( 39 , packu, 0x23388000, 0x800063a5, 0x23380000, 156); 
TEST_RR_OP( 40 , packu, 0xffff0000, 0x0000ffff, 0xffffffff, 160); 
TEST_RR_OP( 41 , packu, 0xdea28000, 0x80008a52, 0xdea20000, 164); 
TEST_RR_OP( 42 , packu, 0xffff0000, 0x00000554, 0xffffe727, 168); 
TEST_RR_OP( 43 , packu, 0x8000ffff, 0xffff0000, 0x8000ffff, 172); 
TEST_RR_OP( 44 , packu, 0x8000ffff, 0xffffffff, 0x80000000, 176); 
TEST_RR_OP( 45 , packu, 0xffffffff, 0xffff0000, 0xffffffff, 180); 
TEST_RR_OP( 46 , packu, 0x80008000, 0x8000ffff, 0x800043fb, 184); 
TEST_RR_OP( 47 , packu, 0xffff8000, 0x8000ffff, 0xffff0000, 188); 
TEST_RR_OP( 48 , packu, 0xffffeaa9, 0xeaa90000, 0xffffffff, 192); 
TEST_RR_OP( 49 , packu, 0xffff8000, 0x80008000, 0xffff8000, 196); 
TEST_RR_OP( 50 , packu, 0xffffffff, 0xffffb5fc, 0xffff8000, 200); 
TEST_RR_OP( 51 , packu, 0xffff6750, 0x6750d320, 0xffff8000, 204); 
TEST_RR_OP( 52 , packu, 0xffff0000, 0x0000ffff, 0xffffffff, 208); 
TEST_RR_OP( 53 , packu, 0xffff62c6, 0x62c6ffff, 0xffffffff, 212); 
TEST_RR_OP( 54 , packu, 0x00000000, 0x00008000, 0x0000b4be, 216); 
TEST_RR_OP( 55 , packu, 0x80000000, 0x00008000, 0x80008000, 220); 
TEST_RR_OP( 56 , packu, 0xa13f0ed8, 0x0ed88000, 0xa13f0000, 224); 
TEST_RR_OP( 57 , packu, 0x000023d5, 0x23d50000, 0x0000e576, 228); 
TEST_RR_OP( 58 , packu, 0xffff8000, 0x80008e47, 0xffff0000, 232); 
TEST_RR_OP( 59 , packu, 0x0000ddf5, 0xddf5ffff, 0x00000000, 236); 
TEST_RR_OP( 60 , packu, 0x3fc3ffff, 0xffff0000, 0x3fc30000, 240); 
TEST_RR_OP( 61 , packu, 0x02d98000, 0x80000000, 0x02d9ffff, 244); 
TEST_RR_OP( 62 , packu, 0x00000000, 0x00000000, 0x0000ffff, 248); 
TEST_RR_OP( 63 , packu, 0xc6240000, 0x00000000, 0xc6248000, 252); 
TEST_RR_OP( 64 , packu, 0x80008000, 0x8000599c, 0x80008000, 256); 
TEST_RR_OP( 65 , packu, 0x0000ddb9, 0xddb9ffff, 0x00000000, 260); 
TEST_RR_OP( 66 , packu, 0x00008267, 0x8267ffff, 0x00008000, 264); 
TEST_RR_OP( 67 , packu, 0x8000ffff, 0xffff32b8, 0x800020ce, 268); 
TEST_RR_OP( 68 , packu, 0x00000000, 0x0000ffff, 0x00000000, 272); 
TEST_RR_OP( 69 , packu, 0x1373ffff, 0xffff8000, 0x13730000, 276); 
TEST_RR_OP( 70 , packu, 0xffffb9b1, 0xb9b1ffff, 0xffff8000, 280); 
TEST_RR_OP( 71 , packu, 0xffffffff, 0xffffffff, 0xffff8000, 284); 
TEST_RR_OP( 72 , packu, 0x8000ffff, 0xffff0000, 0x80008000, 288); 
TEST_RR_OP( 73 , packu, 0xffff0000, 0x0000ffff, 0xffff8000, 292); 
TEST_RR_OP( 74 , packu, 0x00008000, 0x80008000, 0x00008000, 296); 
TEST_RR_OP( 75 , packu, 0x00008000, 0x80000000, 0x0000ffff, 300); 
TEST_RR_OP( 76 , packu, 0x11a1ffff, 0xffff0000, 0x11a18000, 304); 
TEST_RR_OP( 77 , packu, 0x0000ffff, 0xffffffff, 0x0000ffff, 308); 
TEST_RR_OP( 78 , packu, 0x1a178000, 0x80000000, 0x1a178000, 312); 
TEST_RR_OP( 79 , packu, 0xffffffff, 0xffff0000, 0xffff0000, 316); 
TEST_RR_OP( 80 , packu, 0x8000969c, 0x969cffff, 0x80000000, 320); 
TEST_RR_OP( 81 , packu, 0x8000ffff, 0xffff0000, 0x8000825e, 324); 
TEST_RR_OP( 82 , packu, 0xffff0000, 0x00008000, 0xffff0000, 328); 
TEST_RR_OP( 83 , packu, 0xffff9e27, 0x9e278000, 0xffff0000, 332); 
TEST_RR_OP( 84 , packu, 0xffffffff, 0xffffffff, 0xffff8000, 336); 
TEST_RR_OP( 85 , packu, 0xffffffff, 0xffff8000, 0xffff0000, 340); 
TEST_RR_OP( 86 , packu, 0x00008000, 0x80000000, 0x00008000, 344); 
TEST_RR_OP( 87 , packu, 0xaee4ffff, 0xffff8000, 0xaee4ffff, 348); 
TEST_RR_OP( 88 , packu, 0xef3776b1, 0x76b11a06, 0xef370000, 352); 
TEST_RR_OP( 89 , packu, 0x0000d29d, 0xd29dffff, 0x00000000, 356); 
TEST_RR_OP( 90 , packu, 0x800073cf, 0x73cf8000, 0x8000360c, 360); 
TEST_RR_OP( 91 , packu, 0x00008000, 0x80009403, 0x00000000, 364); 
TEST_RR_OP( 92 , packu, 0x00000000, 0x0000ffff, 0x00000000, 368); 
TEST_RR_OP( 93 , packu, 0x5b92ffff, 0xffff9b83, 0x5b920000, 372); 
TEST_RR_OP( 94 , packu, 0xffffffff, 0xffff14c8, 0xffff0000, 376); 
TEST_RR_OP( 95 , packu, 0x80000000, 0x0000ffff, 0x8000ffff, 380); 
TEST_RR_OP( 96 , packu, 0x00000000, 0x00000000, 0x00004f3a, 384); 
TEST_RR_OP( 97 , packu, 0x00000000, 0x0000f68e, 0x00008000, 388); 
TEST_RR_OP( 98 , packu, 0x88f20000, 0x00006c99, 0x88f2d679, 392); 
TEST_RR_OP( 99 , packu, 0x7c35ffff, 0xffff8000, 0x7c35c7a4, 396); 
TEST_RR_OP( 100 , packu, 0x00009082, 0x90827860, 0x00000000, 400); 
TEST_RR_OP( 101 , packu, 0xffffffff, 0xffff0000, 0xffff0000, 404); 
TEST_RR_OP( 102 , packu, 0x80008000, 0x80008000, 0x8000ffff, 408); 
TEST_RR_OP( 103 , packu, 0xcc83ffff, 0xffff8000, 0xcc830000, 412); 
TEST_RR_OP( 104 , packu, 0x8000ffff, 0xffff0000, 0x8000b107, 416); 
TEST_RR_OP( 105 , packu, 0xffff8000, 0x8000ffff, 0xffff0000, 420); 
TEST_RR_OP( 106 , packu, 0x8000aaed, 0xaaedffff, 0x80003dbc, 424); 
TEST_RR_OP( 107 , packu, 0x0417cb64, 0xcb640000, 0x0417ffff, 428); 
TEST_RR_OP( 108 , packu, 0x80000000, 0x0000ffff, 0x80009ce9, 432); 
TEST_RR_OP( 109 , packu, 0x00000000, 0x0000ffff, 0x00008000, 436); 
TEST_RR_OP( 110 , packu, 0xffff8000, 0x8000ffff, 0xffff8000, 440); 
TEST_RR_OP( 111 , packu, 0x00008000, 0x8000ffff, 0x00000000, 444); 
TEST_RR_OP( 112 , packu, 0x80000000, 0x0000ffff, 0x80000000, 448); 
TEST_RR_OP( 113 , packu, 0x50528000, 0x8000ffff, 0x5052ffff, 452); 
TEST_RR_OP( 114 , packu, 0x00008000, 0x8000ffff, 0x00000000, 456); 
TEST_RR_OP( 115 , packu, 0xffff0000, 0x00008000, 0xffff8000, 460); 
TEST_RR_OP( 116 , packu, 0x82468000, 0x80008000, 0x8246d966, 464); 
TEST_RR_OP( 117 , packu, 0x80000000, 0x0000ffff, 0x80008000, 468); 
TEST_RR_OP( 118 , packu, 0x39439d54, 0x9d548000, 0x3943321c, 472); 
TEST_RR_OP( 119 , packu, 0xffff0000, 0x00000000, 0xffff0000, 476); 
TEST_RR_OP( 120 , packu, 0x8000ffff, 0xffff0000, 0x80004dfe, 480); 
TEST_RR_OP( 121 , packu, 0x80008000, 0x80000000, 0x8000ffff, 484); 
TEST_RR_OP( 122 , packu, 0x80003728, 0x37280000, 0x80000000, 488); 
TEST_RR_OP( 123 , packu, 0x80008000, 0x80000000, 0x8000ffff, 492); 
TEST_RR_OP( 124 , packu, 0x8000ffff, 0xffff8000, 0x8000ffff, 496); 
TEST_RR_OP( 125 , packu, 0xc4d10000, 0x00008000, 0xc4d10000, 500); 
TEST_RR_OP( 126 , packu, 0x8000881b, 0x881b8000, 0x80008000, 504); 
TEST_RR_OP( 127 , packu, 0xffff8000, 0x80008000, 0xffffd079, 508); 
TEST_RR_OP( 128 , packu, 0xffffffff, 0xffffffff, 0xffffffff, 512); 
TEST_RR_OP( 129 , packu, 0xffffffff, 0xffff0000, 0xffff02b1, 516); 
TEST_RR_OP( 130 , packu, 0x8000435a, 0x435a0000, 0x8000165a, 520); 
TEST_RR_OP( 131 , packu, 0x0000ffff, 0xffff8000, 0x000049dd, 524); 
TEST_RR_OP( 132 , packu, 0xd3920000, 0x00008000, 0xd3928000, 528); 
TEST_RR_OP( 133 , packu, 0x64828000, 0x80000000, 0x64828000, 532); 
TEST_RR_OP( 134 , packu, 0xef1f0000, 0x0000ffff, 0xef1f0000, 536); 
TEST_RR_OP( 135 , packu, 0x0000ffff, 0xffff7c90, 0x00000000, 540); 
TEST_RR_OP( 136 , packu, 0x8000ffff, 0xffffffff, 0x80000099, 544); 
TEST_RR_OP( 137 , packu, 0x568e9540, 0x9540ffff, 0x568effff, 548); 
TEST_RR_OP( 138 , packu, 0xffffffff, 0xffff8000, 0xffff3bfd, 552); 
TEST_RR_OP( 139 , packu, 0x80000000, 0x00000000, 0x8000ffff, 556); 
TEST_RR_OP( 140 , packu, 0xbbb6ffff, 0xffff6cf7, 0xbbb6ffff, 560); 
TEST_RR_OP( 141 , packu, 0x9c0dffff, 0xffff0000, 0x9c0dffff, 564); 
TEST_RR_OP( 142 , packu, 0xd9d00000, 0x00008000, 0xd9d00000, 568); 
TEST_RR_OP( 143 , packu, 0x0000fb80, 0xfb80ffff, 0x00008000, 572); 
TEST_RR_OP( 144 , packu, 0xffffffff, 0xffff8000, 0xffff8000, 576); 
TEST_RR_OP( 145 , packu, 0x00008000, 0x80004381, 0x0000fc10, 580); 
TEST_RR_OP( 146 , packu, 0x00008000, 0x80008000, 0x00000000, 584); 
TEST_RR_OP( 147 , packu, 0xffff3afc, 0x3afcffff, 0xffff0000, 588); 
TEST_RR_OP( 148 , packu, 0xcfcf0000, 0x00000000, 0xcfcf0000, 592); 
TEST_RR_OP( 149 , packu, 0xffff8000, 0x800039a7, 0xffff0000, 596); 
TEST_RR_OP( 150 , packu, 0xffff8000, 0x80008000, 0xffff8000, 600); 
TEST_RR_OP( 151 , packu, 0xa962ffff, 0xffff8000, 0xa9621317, 604); 
TEST_RR_OP( 152 , packu, 0xffffa762, 0xa762ffff, 0xffffee6c, 608); 
TEST_RR_OP( 153 , packu, 0xffff46d0, 0x46d0cb43, 0xffff0000, 612); 
TEST_RR_OP( 154 , packu, 0x80003726, 0x37268000, 0x8000ea04, 616); 
TEST_RR_OP( 155 , packu, 0x07920000, 0x0000ffff, 0x079236a3, 620); 
TEST_RR_OP( 156 , packu, 0x41140000, 0x00000000, 0x41140000, 624); 
TEST_RR_OP( 157 , packu, 0x0000ffff, 0xffff85cc, 0x000069e3, 628); 
TEST_RR_OP( 158 , packu, 0xe30c26cd, 0x26cd5213, 0xe30cffff, 632); 
TEST_RR_OP( 159 , packu, 0xfffffa8f, 0xfa8f0000, 0xffffffff, 636); 
TEST_RR_OP( 160 , packu, 0xffffffff, 0xffff0000, 0xffffaf98, 640); 
TEST_RR_OP( 161 , packu, 0xffff142e, 0x142e0000, 0xffffffff, 644); 
TEST_RR_OP( 162 , packu, 0x8000cede, 0xcede0000, 0x80008000, 648); 
TEST_RR_OP( 163 , packu, 0x80008000, 0x8000ffff, 0x8000d579, 652); 
TEST_RR_OP( 164 , packu, 0xfffff6e5, 0xf6e5ab1a, 0xffff0000, 656); 
TEST_RR_OP( 165 , packu, 0xffffffff, 0xffffffff, 0xffffffff, 660); 
TEST_RR_OP( 166 , packu, 0xffffffff, 0xffff0000, 0xffffffff, 664); 
TEST_RR_OP( 167 , packu, 0x80008000, 0x8000315d, 0x80008000, 668); 
TEST_RR_OP( 168 , packu, 0x0000a472, 0xa4728000, 0x00000000, 672); 
TEST_RR_OP( 169 , packu, 0x80006452, 0x6452ffff, 0x80000000, 676); 
TEST_RR_OP( 170 , packu, 0x02350000, 0x00000000, 0x0235ffff, 680); 
TEST_RR_OP( 171 , packu, 0x0009aa04, 0xaa04a846, 0x00098000, 684); 
TEST_RR_OP( 172 , packu, 0xf7ecffff, 0xffffffff, 0xf7ecffff, 688); 
TEST_RR_OP( 173 , packu, 0x733f8000, 0x80008000, 0x733f8c89, 692); 
TEST_RR_OP( 174 , packu, 0x80001838, 0x18388000, 0x80000000, 696); 
TEST_RR_OP( 175 , packu, 0x0000dc1b, 0xdc1bffff, 0x00007843, 700); 
TEST_RR_OP( 176 , packu, 0x00000000, 0x0000aa9c, 0x00008000, 704); 
TEST_RR_OP( 177 , packu, 0x00008000, 0x80008000, 0x00000000, 708); 
TEST_RR_OP( 178 , packu, 0xffff0000, 0x00000000, 0xffff0000, 712); 
TEST_RR_OP( 179 , packu, 0x0000ffff, 0xffff9b5f, 0x0000ffff, 716); 
TEST_RR_OP( 180 , packu, 0xafe300e0, 0x00e00000, 0xafe355b4, 720); 
TEST_RR_OP( 181 , packu, 0x0000ffff, 0xffff7b67, 0x0000ffff, 724); 
TEST_RR_OP( 182 , packu, 0x00000000, 0x0000ffff, 0x00008000, 728); 
TEST_RR_OP( 183 , packu, 0xe1da4853, 0x4853ffff, 0xe1da8000, 732); 
TEST_RR_OP( 184 , packu, 0x80009f8e, 0x9f8e0000, 0x80000000, 736); 
TEST_RR_OP( 185 , packu, 0x7b510000, 0x00000000, 0x7b51ffff, 740); 
TEST_RR_OP( 186 , packu, 0xffffffff, 0xffff0000, 0xffffffff, 744); 
TEST_RR_OP( 187 , packu, 0x82500000, 0x00008000, 0x8250ffff, 748); 
TEST_RR_OP( 188 , packu, 0x00000000, 0x0000ffff, 0x0000edc5, 752); 
TEST_RR_OP( 189 , packu, 0x80000000, 0x00000000, 0x80008de9, 756); 
TEST_RR_OP( 190 , packu, 0xec4f0000, 0x0000e335, 0xec4f0000, 760); 
TEST_RR_OP( 191 , packu, 0xffff15e4, 0x15e48000, 0xffff8000, 764); 
TEST_RR_OP( 192 , packu, 0x00003654, 0x3654ffff, 0x0000ffff, 768); 
TEST_RR_OP( 193 , packu, 0xebce8000, 0x8000ffff, 0xebce0000, 772); 
TEST_RR_OP( 194 , packu, 0x00008000, 0x80000000, 0x0000ffff, 776); 
TEST_RR_OP( 195 , packu, 0x8000ffff, 0xffffffff, 0x80000000, 780); 
TEST_RR_OP( 196 , packu, 0x8000e1f7, 0xe1f7ffff, 0x80008000, 784); 
TEST_RR_OP( 197 , packu, 0x0000ffff, 0xffff0000, 0x00000000, 788); 
TEST_RR_OP( 198 , packu, 0xffff3e72, 0x3e72e97d, 0xffff8000, 792); 
TEST_RR_OP( 199 , packu, 0x0000ffff, 0xffffffff, 0x00008000, 796); 

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
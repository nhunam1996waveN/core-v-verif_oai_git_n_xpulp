# See LICENSE for license details.
#*****************************************************************************
# smmul.u.S
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

TEST_RR_OP( 2 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 8); 
TEST_RR_OP( 3 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 12); 
TEST_RR_OP( 4 , smmul.u, 0xc6f46aa8, 0x80000000, 0x72172ab0, 16); 
TEST_RR_OP( 5 , smmul.u, 0xf0a3698a, 0x1eb92ced, 0x80000000, 20); 
TEST_RR_OP( 6 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 24); 
TEST_RR_OP( 7 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , smmul.u, 0x00000000, 0x7cdf40db, 0x00000000, 36); 
TEST_RR_OP( 10 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 40); 
TEST_RR_OP( 11 , smmul.u, 0x3d29e5aa, 0x80000000, 0x85ac34ad, 44); 
TEST_RR_OP( 12 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 48); 
TEST_RR_OP( 13 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 52); 
TEST_RR_OP( 14 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 56); 
TEST_RR_OP( 15 , smmul.u, 0x00000000, 0x00000000, 0x80000000, 60); 
TEST_RR_OP( 16 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 64); 
TEST_RR_OP( 17 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 72); 
TEST_RR_OP( 19 , smmul.u, 0x00000000, 0x5bbc27fa, 0x00000000, 76); 
TEST_RR_OP( 20 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 80); 
TEST_RR_OP( 21 , smmul.u, 0x00000000, 0x8f4b6cad, 0xffffffff, 84); 
TEST_RR_OP( 22 , smmul.u, 0x00000000, 0x00000000, 0x80000000, 88); 
TEST_RR_OP( 23 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 92); 
TEST_RR_OP( 24 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 96); 
TEST_RR_OP( 25 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 100); 
TEST_RR_OP( 26 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 104); 
TEST_RR_OP( 27 , smmul.u, 0x00000000, 0x00000000, 0xb6c4cd6c, 108); 
TEST_RR_OP( 28 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 116); 
TEST_RR_OP( 30 , smmul.u, 0x00000000, 0x00000000, 0xc6fdc00f, 120); 
TEST_RR_OP( 31 , smmul.u, 0x00000000, 0x372eb58c, 0xffffffff, 124); 
TEST_RR_OP( 32 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 128); 
TEST_RR_OP( 33 , smmul.u, 0x00000000, 0x00000000, 0x80000000, 132); 
TEST_RR_OP( 34 , smmul.u, 0x00000000, 0x4beb7773, 0x00000000, 136); 
TEST_RR_OP( 35 , smmul.u, 0xe218908c, 0x80000000, 0x3bcedee9, 140); 
TEST_RR_OP( 36 , smmul.u, 0xf4cab0d9, 0x166a9e4f, 0x80000000, 144); 
TEST_RR_OP( 37 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 148); 
TEST_RR_OP( 38 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , smmul.u, 0x00000000, 0x00000000, 0x484a7669, 156); 
TEST_RR_OP( 40 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 160); 
TEST_RR_OP( 41 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 164); 
TEST_RR_OP( 42 , smmul.u, 0x00000000, 0xc317b221, 0xffffffff, 168); 
TEST_RR_OP( 43 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 180); 
TEST_RR_OP( 46 , smmul.u, 0x00000000, 0xfdafc5a7, 0xffffffff, 184); 
TEST_RR_OP( 47 , smmul.u, 0x1c03fef6, 0x80000000, 0xc7f80214, 188); 
TEST_RR_OP( 48 , smmul.u, 0x00000000, 0x00000000, 0xb40abc88, 192); 
TEST_RR_OP( 49 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 200); 
TEST_RR_OP( 51 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 204); 
TEST_RR_OP( 52 , smmul.u, 0x00000000, 0xdf2012ac, 0xffffffff, 208); 
TEST_RR_OP( 53 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 216); 
TEST_RR_OP( 55 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 220); 
TEST_RR_OP( 56 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 224); 
TEST_RR_OP( 57 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 228); 
TEST_RR_OP( 58 , smmul.u, 0x00000000, 0xefa93f33, 0x00000000, 232); 
TEST_RR_OP( 59 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 236); 
TEST_RR_OP( 60 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 240); 
TEST_RR_OP( 61 , smmul.u, 0x00000000, 0x00000000, 0xec6f230a, 244); 
TEST_RR_OP( 62 , smmul.u, 0xf6361780, 0x80000000, 0x1393d100, 248); 
TEST_RR_OP( 63 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 252); 
TEST_RR_OP( 64 , smmul.u, 0x00000000, 0xffffffff, 0x1321ebc6, 256); 
TEST_RR_OP( 65 , smmul.u, 0x00000000, 0x2ef6d6ac, 0x00000000, 260); 
TEST_RR_OP( 66 , smmul.u, 0x0e01de03, 0x80000000, 0xe3fc43fb, 264); 
TEST_RR_OP( 67 , smmul.u, 0x00000000, 0xffffffff, 0xf2edaa50, 268); 
TEST_RR_OP( 68 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 276); 
TEST_RR_OP( 70 , smmul.u, 0x00000000, 0xe72958af, 0x00000000, 280); 
TEST_RR_OP( 71 , smmul.u, 0xcd0ebd68, 0x80000000, 0x65e28530, 284); 
TEST_RR_OP( 72 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 288); 
TEST_RR_OP( 73 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 292); 
TEST_RR_OP( 74 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 296); 
TEST_RR_OP( 75 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 300); 
TEST_RR_OP( 76 , smmul.u, 0x00000000, 0x00000000, 0x80000000, 304); 
TEST_RR_OP( 77 , smmul.u, 0x0de5fae0, 0xe4340a40, 0x80000000, 308); 
TEST_RR_OP( 78 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 312); 
TEST_RR_OP( 79 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 316); 
TEST_RR_OP( 80 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 320); 
TEST_RR_OP( 81 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , smmul.u, 0x00000000, 0x0149d1f1, 0xffffffff, 328); 
TEST_RR_OP( 83 , smmul.u, 0x00000000, 0xffffffff, 0x197fe356, 332); 
TEST_RR_OP( 84 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 336); 
TEST_RR_OP( 85 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , smmul.u, 0x00000000, 0xffffffff, 0x30f21e7d, 344); 
TEST_RR_OP( 87 , smmul.u, 0xfae2e435, 0x882745d0, 0x0aec56fd, 348); 
TEST_RR_OP( 88 , smmul.u, 0x00000000, 0xffffffff, 0x776715aa, 352); 
TEST_RR_OP( 89 , smmul.u, 0x00000000, 0x00000000, 0x8ebdaf3d, 356); 
TEST_RR_OP( 90 , smmul.u, 0x00000000, 0x77511e93, 0x00000000, 360); 
TEST_RR_OP( 91 , smmul.u, 0x00000000, 0x38b67034, 0xffffffff, 364); 
TEST_RR_OP( 92 , smmul.u, 0xc93fb52c, 0x80000000, 0x6d8095a9, 368); 
TEST_RR_OP( 93 , smmul.u, 0xdf28561a, 0x80000000, 0x41af53cc, 372); 
TEST_RR_OP( 94 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 376); 
TEST_RR_OP( 95 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 380); 
TEST_RR_OP( 96 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 388); 
TEST_RR_OP( 98 , smmul.u, 0x00000000, 0xffffffff, 0x67a2c35a, 392); 
TEST_RR_OP( 99 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 400); 
TEST_RR_OP( 101 , smmul.u, 0x00000000, 0x2459e392, 0xffffffff, 404); 
TEST_RR_OP( 102 , smmul.u, 0x00000000, 0xffffffff, 0x6f70d2d4, 408); 
TEST_RR_OP( 103 , smmul.u, 0x00000000, 0x00000000, 0xdf02b00f, 412); 
TEST_RR_OP( 104 , smmul.u, 0x1fab89c4, 0x80000000, 0xc0a8ec79, 416); 
TEST_RR_OP( 105 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 420); 
TEST_RR_OP( 106 , smmul.u, 0x00000000, 0xffffffff, 0x9d7edcf8, 424); 
TEST_RR_OP( 107 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 428); 
TEST_RR_OP( 108 , smmul.u, 0x00000000, 0x4a2dac89, 0x00000000, 432); 
TEST_RR_OP( 109 , smmul.u, 0x00000000, 0xc247ad29, 0x00000000, 436); 
TEST_RR_OP( 110 , smmul.u, 0x29d367b4, 0x80000000, 0xac593098, 440); 
TEST_RR_OP( 111 , smmul.u, 0xc6e998fe, 0x722cce04, 0x80000000, 444); 
TEST_RR_OP( 112 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 448); 
TEST_RR_OP( 113 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , smmul.u, 0xeb87469e, 0x80000000, 0x28f172c4, 456); 
TEST_RR_OP( 115 , smmul.u, 0x00000000, 0x00000000, 0x3cc07d43, 460); 
TEST_RR_OP( 116 , smmul.u, 0xde961a4b, 0x80000000, 0x42d3cb6a, 464); 
TEST_RR_OP( 117 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 468); 
TEST_RR_OP( 118 , smmul.u, 0x00000000, 0x00000000, 0xeba0aecd, 472); 
TEST_RR_OP( 119 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 476); 
TEST_RR_OP( 120 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , smmul.u, 0x00000000, 0xffffffff, 0xb479c3ec, 484); 
TEST_RR_OP( 122 , smmul.u, 0x00000000, 0x00000000, 0x15cd6644, 488); 
TEST_RR_OP( 123 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 492); 
TEST_RR_OP( 124 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 496); 
TEST_RR_OP( 125 , smmul.u, 0x00000000, 0xffffffff, 0xf60b4c05, 500); 
TEST_RR_OP( 126 , smmul.u, 0x00000000, 0x00000000, 0x0535a0fb, 504); 
TEST_RR_OP( 127 , smmul.u, 0x00000000, 0xcda03cbb, 0x00000000, 508); 
TEST_RR_OP( 128 , smmul.u, 0x00000000, 0xffffffff, 0x09f579a4, 512); 
TEST_RR_OP( 129 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 516); 
TEST_RR_OP( 130 , smmul.u, 0x00000000, 0x99e13b3b, 0x00000000, 520); 
TEST_RR_OP( 131 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , smmul.u, 0x00000000, 0xd85ef95c, 0x00000000, 528); 
TEST_RR_OP( 133 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 532); 
TEST_RR_OP( 134 , smmul.u, 0x00000000, 0x00000000, 0x0b9ebea9, 536); 
TEST_RR_OP( 135 , smmul.u, 0x00000000, 0x00000000, 0x80000000, 540); 
TEST_RR_OP( 136 , smmul.u, 0x00000000, 0xc0eedb1d, 0x00000000, 544); 
TEST_RR_OP( 137 , smmul.u, 0x00000000, 0x00000000, 0xf7c2c599, 548); 
TEST_RR_OP( 138 , smmul.u, 0x00000000, 0x00000000, 0x9c63e082, 552); 
TEST_RR_OP( 139 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 556); 
TEST_RR_OP( 140 , smmul.u, 0x00000000, 0x00000000, 0x80000000, 560); 
TEST_RR_OP( 141 , smmul.u, 0x00000000, 0x325a82cf, 0x00000000, 564); 
TEST_RR_OP( 142 , smmul.u, 0x00000000, 0x5973bab2, 0x00000000, 568); 
TEST_RR_OP( 143 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 572); 
TEST_RR_OP( 144 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 576); 
TEST_RR_OP( 145 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 580); 
TEST_RR_OP( 146 , smmul.u, 0xf9f4029b, 0xe598d68f, 0x3aa11e50, 584); 
TEST_RR_OP( 147 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , smmul.u, 0x00000000, 0xcbd7f79d, 0xffffffff, 592); 
TEST_RR_OP( 149 , smmul.u, 0x33127d98, 0x99db04d1, 0x80000000, 596); 
TEST_RR_OP( 150 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 600); 
TEST_RR_OP( 151 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 604); 
TEST_RR_OP( 152 , smmul.u, 0x00000000, 0x00000000, 0x2cd0cbe6, 608); 
TEST_RR_OP( 153 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 612); 
TEST_RR_OP( 154 , smmul.u, 0x006054f1, 0x0163c539, 0x455127f2, 616); 
TEST_RR_OP( 155 , smmul.u, 0x00000000, 0xd9dbe151, 0xffffffff, 620); 
TEST_RR_OP( 156 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 628); 
TEST_RR_OP( 158 , smmul.u, 0x00000000, 0x00000000, 0xdb2e2405, 632); 
TEST_RR_OP( 159 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 640); 
TEST_RR_OP( 161 , smmul.u, 0xda4d1883, 0x80000000, 0x4b65cefb, 644); 
TEST_RR_OP( 162 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 648); 
TEST_RR_OP( 163 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 652); 
TEST_RR_OP( 164 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 656); 
TEST_RR_OP( 165 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 660); 
TEST_RR_OP( 166 , smmul.u, 0xf5b7e625, 0x8f436967, 0x1758eb06, 664); 
TEST_RR_OP( 167 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 668); 
TEST_RR_OP( 168 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 672); 
TEST_RR_OP( 169 , smmul.u, 0x00000000, 0x00000000, 0x2676b0de, 676); 
TEST_RR_OP( 170 , smmul.u, 0x00000000, 0xffffffff, 0xa47a58d4, 680); 
TEST_RR_OP( 171 , smmul.u, 0x00000000, 0xffffffff, 0x65d3ed50, 684); 
TEST_RR_OP( 172 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 688); 
TEST_RR_OP( 173 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 692); 
TEST_RR_OP( 174 , smmul.u, 0x00000000, 0x00000000, 0x7f2d4f2e, 696); 
TEST_RR_OP( 175 , smmul.u, 0x02d4c272, 0x89cba96d, 0xf9de5c1e, 700); 
TEST_RR_OP( 176 , smmul.u, 0x1e744b35, 0x80000000, 0xc3176996, 704); 
TEST_RR_OP( 177 , smmul.u, 0x00000000, 0xfb9cec3a, 0xffffffff, 708); 
TEST_RR_OP( 178 , smmul.u, 0x00000000, 0x00000000, 0xffffffff, 712); 
TEST_RR_OP( 179 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 716); 
TEST_RR_OP( 180 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP( 181 , smmul.u, 0x1bf17410, 0xb514bff3, 0xa084766a, 724); 
TEST_RR_OP( 182 , smmul.u, 0x00000000, 0xffffffff, 0xffffffff, 728); 
TEST_RR_OP( 183 , smmul.u, 0x00000000, 0x00000000, 0xbd0d134d, 732); 
TEST_RR_OP( 184 , smmul.u, 0x00000000, 0xffffffff, 0xbc216c81, 736); 
TEST_RR_OP( 185 , smmul.u, 0x00000000, 0xffffffff, 0xf3638af5, 740); 
TEST_RR_OP( 186 , smmul.u, 0x40000000, 0x80000000, 0x80000000, 744); 
TEST_RR_OP( 187 , smmul.u, 0x00000000, 0x80000000, 0x00000000, 748); 
TEST_RR_OP( 188 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , smmul.u, 0x00000001, 0x80000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , smmul.u, 0x00000000, 0x6428a153, 0xffffffff, 760); 
TEST_RR_OP( 191 , smmul.u, 0x00000000, 0xd3912201, 0x00000000, 764); 
TEST_RR_OP( 192 , smmul.u, 0x00000000, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , smmul.u, 0x00000000, 0xffffffff, 0x9dc1993a, 772); 
TEST_RR_OP( 194 , smmul.u, 0x383dec6b, 0x80000000, 0x8f84272a, 776); 
TEST_RR_OP( 195 , smmul.u, 0x00000000, 0x00000000, 0x00000000, 780); 
TEST_RR_OP( 196 , smmul.u, 0x00000001, 0xffffffff, 0x80000000, 784); 
TEST_RR_OP( 197 , smmul.u, 0xffb4c9d3, 0x00966c5b, 0x80000000, 788); 
TEST_RR_OP( 198 , smmul.u, 0x00000000, 0xffffffff, 0x00000000, 792); 
TEST_RR_OP( 199 , smmul.u, 0xce5d0698, 0x6345f2d1, 0x80000000, 796); 

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
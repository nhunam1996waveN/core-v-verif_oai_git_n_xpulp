# See LICENSE for license details.
#*****************************************************************************
# smmwb.S
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

TEST_RR_OP( 2 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , smmwb, 0x00000000, 0x00000000, 0x67713821, 12); 
TEST_RR_OP( 4 , smmwb, 0x00000000, 0x00000000, 0x076abd70, 16); 
TEST_RR_OP( 5 , smmwb, 0xec2d0000, 0x80000000, 0x77f627a6, 20); 
TEST_RR_OP( 6 , smmwb, 0x00000000, 0x00000000, 0x12922366, 24); 
TEST_RR_OP( 7 , smmwb, 0xfca4b982, 0xb834ee22, 0x8c5b0bf8, 28); 
TEST_RR_OP( 8 , smmwb, 0xfe240000, 0x80000000, 0x1cba03b8, 32); 
TEST_RR_OP( 9 , smmwb, 0x00000000, 0x00000000, 0x80000000, 36); 
TEST_RR_OP( 10 , smmwb, 0xc63e0000, 0x80000000, 0x65df7384, 40); 
TEST_RR_OP( 11 , smmwb, 0x00000000, 0x80000000, 0x00000000, 44); 
TEST_RR_OP( 12 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , smmwb, 0x000069ed, 0x96128204, 0xffffffff, 52); 
TEST_RR_OP( 14 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 56); 
TEST_RR_OP( 15 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , smmwb, 0x00000000, 0x80000000, 0x80000000, 64); 
TEST_RR_OP( 17 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , smmwb, 0xffffffff, 0xffffffff, 0x534834cf, 72); 
TEST_RR_OP( 19 , smmwb, 0x00000000, 0x00000000, 0x806a083a, 76); 
TEST_RR_OP( 20 , smmwb, 0x00000000, 0x00000000, 0x00000000, 80); 
TEST_RR_OP( 21 , smmwb, 0xffffffff, 0xffffffff, 0x34a52de0, 84); 
TEST_RR_OP( 22 , smmwb, 0x00000000, 0xffffffff, 0x00000000, 88); 
TEST_RR_OP( 23 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , smmwb, 0x00000000, 0x80000000, 0x00000000, 96); 
TEST_RR_OP( 25 , smmwb, 0x1eb90000, 0x80000000, 0x07bfc28e, 100); 
TEST_RR_OP( 26 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , smmwb, 0xffffffff, 0xffffffff, 0x8e4f042e, 108); 
TEST_RR_OP( 28 , smmwb, 0x00000000, 0x218f5227, 0x80000000, 112); 
TEST_RR_OP( 29 , smmwb, 0xfffffbd3, 0x042c739f, 0xffffffff, 116); 
TEST_RR_OP( 30 , smmwb, 0x00000000, 0xee5ecfcf, 0x00000000, 120); 
TEST_RR_OP( 31 , smmwb, 0x00000000, 0x00000000, 0x6226f80d, 124); 
TEST_RR_OP( 32 , smmwb, 0x00000000, 0x00000000, 0xef9436fa, 128); 
TEST_RR_OP( 33 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , smmwb, 0x00000000, 0x922f541c, 0x80000000, 136); 
TEST_RR_OP( 35 , smmwb, 0x00000000, 0x00000000, 0xa5506571, 140); 
TEST_RR_OP( 36 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 152); 
TEST_RR_OP( 39 , smmwb, 0xfc528000, 0x80000000, 0x7cd4075b, 156); 
TEST_RR_OP( 40 , smmwb, 0xffffb1e4, 0x4e1b6072, 0xffffffff, 160); 
TEST_RR_OP( 41 , smmwb, 0xffffffff, 0xffffffff, 0xa97a0720, 164); 
TEST_RR_OP( 42 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 172); 
TEST_RR_OP( 44 , smmwb, 0x00000000, 0x00000000, 0x00000000, 176); 
TEST_RR_OP( 45 , smmwb, 0x00000000, 0x80000000, 0x80000000, 180); 
TEST_RR_OP( 46 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 184); 
TEST_RR_OP( 47 , smmwb, 0x00000000, 0x00000000, 0xea3db004, 188); 
TEST_RR_OP( 48 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 196); 
TEST_RR_OP( 50 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 200); 
TEST_RR_OP( 51 , smmwb, 0x00000000, 0x80000000, 0x00000000, 204); 
TEST_RR_OP( 52 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , smmwb, 0x00000000, 0x00000000, 0x80000000, 212); 
TEST_RR_OP( 54 , smmwb, 0x00000000, 0x19bd1f05, 0x00000000, 216); 
TEST_RR_OP( 55 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 220); 
TEST_RR_OP( 56 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , smmwb, 0x00000000, 0x00000000, 0x80000000, 228); 
TEST_RR_OP( 58 , smmwb, 0xff2db902, 0xf5ed451a, 0x0b8c14e0, 232); 
TEST_RR_OP( 59 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 236); 
TEST_RR_OP( 60 , smmwb, 0x1f9a0000, 0x80000000, 0x9358c0cc, 240); 
TEST_RR_OP( 61 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 244); 
TEST_RR_OP( 62 , smmwb, 0x0000773f, 0x88c0d167, 0xffffffff, 248); 
TEST_RR_OP( 63 , smmwb, 0x00001421, 0xebded874, 0xffffffff, 252); 
TEST_RR_OP( 64 , smmwb, 0x00000000, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , smmwb, 0x07d70d0e, 0x1dca7dc3, 0x4ac9435f, 260); 
TEST_RR_OP( 66 , smmwb, 0x00000000, 0x00000000, 0x80000000, 264); 
TEST_RR_OP( 67 , smmwb, 0x00002145, 0xdeba3af7, 0xffffffff, 268); 
TEST_RR_OP( 68 , smmwb, 0x00000000, 0x80000000, 0x00000000, 272); 
TEST_RR_OP( 69 , smmwb, 0xf35400ab, 0x224e29d8, 0xe35ca170, 276); 
TEST_RR_OP( 70 , smmwb, 0x00000000, 0x00000000, 0x80000000, 280); 
TEST_RR_OP( 71 , smmwb, 0x00000000, 0xd7411a60, 0x00000000, 284); 
TEST_RR_OP( 72 , smmwb, 0x00000000, 0x80000000, 0x00000000, 288); 
TEST_RR_OP( 73 , smmwb, 0xce4c0000, 0x80000000, 0xec396368, 292); 
TEST_RR_OP( 74 , smmwb, 0x00003d0f, 0xc2f0e01e, 0xffffffff, 296); 
TEST_RR_OP( 75 , smmwb, 0x00000000, 0x80000000, 0x80000000, 300); 
TEST_RR_OP( 76 , smmwb, 0xffffffff, 0xffffffff, 0x66ce6e67, 304); 
TEST_RR_OP( 77 , smmwb, 0x00000000, 0x0423f73b, 0x00000000, 308); 
TEST_RR_OP( 78 , smmwb, 0x00000000, 0x2f97a614, 0x00000000, 312); 
TEST_RR_OP( 79 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 316); 
TEST_RR_OP( 80 , smmwb, 0x00007cd6, 0x8329a97b, 0xffffffff, 320); 
TEST_RR_OP( 81 , smmwb, 0x00000000, 0x80000000, 0x80000000, 324); 
TEST_RR_OP( 82 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , smmwb, 0x00000000, 0x5dc7e2b7, 0x80000000, 332); 
TEST_RR_OP( 84 , smmwb, 0x00000000, 0x80000000, 0x00000000, 336); 
TEST_RR_OP( 85 , smmwb, 0x00000000, 0x00000000, 0xc24fb3c2, 340); 
TEST_RR_OP( 86 , smmwb, 0x00000000, 0x1a7bf7ae, 0x00000000, 344); 
TEST_RR_OP( 87 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 348); 
TEST_RR_OP( 88 , smmwb, 0x00000000, 0x00000000, 0x00000000, 352); 
TEST_RR_OP( 89 , smmwb, 0x00000000, 0xb993762a, 0x80000000, 356); 
TEST_RR_OP( 90 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 364); 
TEST_RR_OP( 92 , smmwb, 0x00000000, 0x80000000, 0x80000000, 368); 
TEST_RR_OP( 93 , smmwb, 0x00000000, 0x76ca3c33, 0x80000000, 372); 
TEST_RR_OP( 94 , smmwb, 0x00000000, 0x00000000, 0x80000000, 376); 
TEST_RR_OP( 95 , smmwb, 0xeadf8000, 0x80000000, 0xf34c2a41, 380); 
TEST_RR_OP( 96 , smmwb, 0x00000000, 0x80000000, 0x80000000, 384); 
TEST_RR_OP( 97 , smmwb, 0x00000000, 0x80000000, 0x80000000, 388); 
TEST_RR_OP( 98 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , smmwb, 0x00000000, 0x00000000, 0xba75427c, 396); 
TEST_RR_OP( 100 , smmwb, 0x00000000, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 101 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 408); 
TEST_RR_OP( 103 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 412); 
TEST_RR_OP( 104 , smmwb, 0x00000000, 0x00000000, 0xe074f96a, 416); 
TEST_RR_OP( 105 , smmwb, 0x00000000, 0x84f3aabd, 0x00000000, 420); 
TEST_RR_OP( 106 , smmwb, 0x00000000, 0x19e3c839, 0x80000000, 424); 
TEST_RR_OP( 107 , smmwb, 0x2719da5f, 0x71cf1783, 0x8b5457f4, 428); 
TEST_RR_OP( 108 , smmwb, 0xffa49251, 0x0ca198cc, 0x198cf8c3, 432); 
TEST_RR_OP( 109 , smmwb, 0x00000000, 0xa1d41d22, 0x80000000, 436); 
TEST_RR_OP( 110 , smmwb, 0x00000000, 0x248ca96f, 0x00000000, 440); 
TEST_RR_OP( 111 , smmwb, 0x00000000, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , smmwb, 0x00acd9da, 0x047bd537, 0x9be7268d, 448); 
TEST_RR_OP( 113 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 452); 
TEST_RR_OP( 114 , smmwb, 0x00000000, 0x00000000, 0x80000000, 456); 
TEST_RR_OP( 115 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , smmwb, 0x0a3f583b, 0x1f604ecb, 0x5da4539c, 464); 
TEST_RR_OP( 117 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , smmwb, 0x00000000, 0xf51ee684, 0x00000000, 472); 
TEST_RR_OP( 119 , smmwb, 0x00000000, 0xffffffff, 0xab8fd93c, 476); 
TEST_RR_OP( 120 , smmwb, 0xffffffff, 0xffffffff, 0x1d6f26fe, 480); 
TEST_RR_OP( 121 , smmwb, 0x00000000, 0xffffffff, 0x509cc16d, 484); 
TEST_RR_OP( 122 , smmwb, 0xffffffff, 0xffffffff, 0xc5bc58c8, 488); 
TEST_RR_OP( 123 , smmwb, 0x00000000, 0xffffffff, 0x21b2c8c9, 492); 
TEST_RR_OP( 124 , smmwb, 0x00000000, 0x00000000, 0x00000000, 496); 
TEST_RR_OP( 125 , smmwb, 0xf020d70d, 0xdaeb8348, 0x0f6f6d94, 500); 
TEST_RR_OP( 126 , smmwb, 0x00000000, 0xbffa129d, 0x80000000, 504); 
TEST_RR_OP( 127 , smmwb, 0x00000000, 0x00000000, 0x40f9a832, 508); 
TEST_RR_OP( 128 , smmwb, 0x00000000, 0xe2fe2dd0, 0x80000000, 512); 
TEST_RR_OP( 129 , smmwb, 0x00000000, 0x80000000, 0x00000000, 516); 
TEST_RR_OP( 130 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 520); 
TEST_RR_OP( 131 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , smmwb, 0x00000000, 0x80000000, 0x00000000, 528); 
TEST_RR_OP( 133 , smmwb, 0xffffebfb, 0x140474b4, 0xffffffff, 532); 
TEST_RR_OP( 134 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 536); 
TEST_RR_OP( 135 , smmwb, 0x0000351d, 0xcae2e292, 0xffffffff, 540); 
TEST_RR_OP( 136 , smmwb, 0x1a0f0000, 0x80000000, 0xf2b3cbe2, 544); 
TEST_RR_OP( 137 , smmwb, 0xffffffff, 0xffffffff, 0xfaa82f85, 548); 
TEST_RR_OP( 138 , smmwb, 0x00000000, 0x00000000, 0x2b10d985, 552); 
TEST_RR_OP( 139 , smmwb, 0x00000000, 0xef9a4aee, 0x00000000, 556); 
TEST_RR_OP( 140 , smmwb, 0x00000000, 0xffffffff, 0x00000000, 560); 
TEST_RR_OP( 141 , smmwb, 0x00000000, 0x80000000, 0x00000000, 564); 
TEST_RR_OP( 142 , smmwb, 0x00000000, 0x80000000, 0x80000000, 568); 
TEST_RR_OP( 143 , smmwb, 0x00000000, 0x00000000, 0x80000000, 572); 
TEST_RR_OP( 144 , smmwb, 0x00000000, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , smmwb, 0x00000000, 0x80000000, 0x00000000, 580); 
TEST_RR_OP( 146 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 588); 
TEST_RR_OP( 148 , smmwb, 0x00000000, 0x00000000, 0x80000000, 592); 
TEST_RR_OP( 149 , smmwb, 0x051a2210, 0x92ccd405, 0xa94ef40a, 596); 
TEST_RR_OP( 150 , smmwb, 0x00000000, 0x041fd588, 0x00000000, 600); 
TEST_RR_OP( 151 , smmwb, 0x00000000, 0x00000000, 0x00000000, 604); 
TEST_RR_OP( 152 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 608); 
TEST_RR_OP( 153 , smmwb, 0x00000000, 0x45e5dae3, 0x80000000, 612); 
TEST_RR_OP( 154 , smmwb, 0x00000000, 0x1d92c84b, 0x00000000, 616); 
TEST_RR_OP( 155 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , smmwb, 0x00000000, 0xccb692bb, 0x00000000, 624); 
TEST_RR_OP( 157 , smmwb, 0x00007dfd, 0x8202c43b, 0xffffffff, 628); 
TEST_RR_OP( 158 , smmwb, 0x00000000, 0x00000000, 0x80000000, 632); 
TEST_RR_OP( 159 , smmwb, 0x00000000, 0x00000000, 0x80000000, 636); 
TEST_RR_OP( 160 , smmwb, 0x00000000, 0x80000000, 0x00000000, 640); 
TEST_RR_OP( 161 , smmwb, 0x00000000, 0x80000000, 0x00000000, 644); 
TEST_RR_OP( 162 , smmwb, 0x00000000, 0xffffffff, 0x00000000, 648); 
TEST_RR_OP( 163 , smmwb, 0x00000000, 0x80000000, 0x80000000, 652); 
TEST_RR_OP( 164 , smmwb, 0x00000000, 0x80000000, 0x80000000, 656); 
TEST_RR_OP( 165 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , smmwb, 0xffffffff, 0xffffffff, 0xafe17d1f, 664); 
TEST_RR_OP( 167 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 668); 
TEST_RR_OP( 168 , smmwb, 0x00000000, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , smmwb, 0x00000000, 0x0eeb1a93, 0x80000000, 676); 
TEST_RR_OP( 170 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 680); 
TEST_RR_OP( 171 , smmwb, 0x00000000, 0xa293b296, 0x80000000, 684); 
TEST_RR_OP( 172 , smmwb, 0x00000000, 0xffffffff, 0xea8ee116, 688); 
TEST_RR_OP( 173 , smmwb, 0x00000000, 0xffffffff, 0x80000000, 692); 
TEST_RR_OP( 174 , smmwb, 0x00000000, 0xa3f98b2c, 0x00000000, 696); 
TEST_RR_OP( 175 , smmwb, 0x00000000, 0x00000000, 0x80000000, 700); 
TEST_RR_OP( 176 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 704); 
TEST_RR_OP( 177 , smmwb, 0x00000000, 0x00000000, 0x80000000, 708); 
TEST_RR_OP( 178 , smmwb, 0x00000000, 0xffffffff, 0x00000000, 712); 
TEST_RR_OP( 179 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 716); 
TEST_RR_OP( 180 , smmwb, 0x02560000, 0x80000000, 0x6e36fb54, 720); 
TEST_RR_OP( 181 , smmwb, 0x00000000, 0x00000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , smmwb, 0x00000000, 0xffffffff, 0xd63dcc7d, 728); 
TEST_RR_OP( 183 , smmwb, 0x00000000, 0x00000000, 0x1366c64b, 732); 
TEST_RR_OP( 184 , smmwb, 0xf515f299, 0xab54ed60, 0x85ca2100, 736); 
TEST_RR_OP( 185 , smmwb, 0x00000000, 0x00000000, 0x1fede995, 740); 
TEST_RR_OP( 186 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 744); 
TEST_RR_OP( 187 , smmwb, 0x1af90000, 0x80000000, 0x57fbca0e, 748); 
TEST_RR_OP( 188 , smmwb, 0x00000000, 0xffffffff, 0xffffffff, 752); 
TEST_RR_OP( 189 , smmwb, 0x00000000, 0x80000000, 0x80000000, 756); 
TEST_RR_OP( 190 , smmwb, 0x00000000, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , smmwb, 0x0000188f, 0xe7704b0f, 0xffffffff, 764); 
TEST_RR_OP( 192 , smmwb, 0x00000000, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , smmwb, 0x3995842e, 0x79724d11, 0xcbf77962, 772); 
TEST_RR_OP( 194 , smmwb, 0xffff8144, 0x7ebb4a84, 0xffffffff, 776); 
TEST_RR_OP( 195 , smmwb, 0x00000000, 0x3b7f9221, 0x00000000, 780); 
TEST_RR_OP( 196 , smmwb, 0x00000000, 0xffffffff, 0x00000000, 784); 
TEST_RR_OP( 197 , smmwb, 0x00000000, 0x00000000, 0x00000000, 788); 
TEST_RR_OP( 198 , smmwb, 0x00008000, 0x80000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , smmwb, 0x00000000, 0x4a8e96b8, 0x80000000, 796); 

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
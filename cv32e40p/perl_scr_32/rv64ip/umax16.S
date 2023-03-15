# See LICENSE for license details.
#*****************************************************************************
# umax16.S
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

TEST_RR_OP( 2 , umax16, 0xa070ffff, 0xa070ffff, 0x00008000, 8); 
TEST_RR_OP( 3 , umax16, 0x7a03c41f, 0x0000c41f, 0x7a036c5c, 12); 
TEST_RR_OP( 4 , umax16, 0x9defffff, 0x9def0000, 0x0573ffff, 16); 
TEST_RR_OP( 5 , umax16, 0x84da305d, 0x84da305d, 0x00000000, 20); 
TEST_RR_OP( 6 , umax16, 0xffff8000, 0xffff8000, 0x00006742, 24); 
TEST_RR_OP( 7 , umax16, 0x2bca863d, 0x0000863d, 0x2bca0000, 28); 
TEST_RR_OP( 8 , umax16, 0xa7bcffff, 0xa7bc8000, 0x8000ffff, 32); 
TEST_RR_OP( 9 , umax16, 0xffff0000, 0x80000000, 0xffff0000, 36); 
TEST_RR_OP( 10 , umax16, 0xffffffff, 0x115c0000, 0xffffffff, 40); 
TEST_RR_OP( 11 , umax16, 0xecd88000, 0xecd88000, 0x87d13ee0, 44); 
TEST_RR_OP( 12 , umax16, 0x8000ffff, 0x8000ffff, 0x00009eeb, 48); 
TEST_RR_OP( 13 , umax16, 0xf8aeac61, 0xf8aeac61, 0xd7453f92, 52); 
TEST_RR_OP( 14 , umax16, 0x80000000, 0x2cfe0000, 0x80000000, 56); 
TEST_RR_OP( 15 , umax16, 0x8000ffff, 0x8000ffff, 0x00008000, 60); 
TEST_RR_OP( 16 , umax16, 0x0000fbc4, 0x0000fbc4, 0x00008000, 64); 
TEST_RR_OP( 17 , umax16, 0xffffffff, 0x26bbffff, 0xffff828a, 68); 
TEST_RR_OP( 18 , umax16, 0x8000ffff, 0x0000ffff, 0x80008000, 72); 
TEST_RR_OP( 19 , umax16, 0xffff8000, 0x03c88000, 0xffff0000, 76); 
TEST_RR_OP( 20 , umax16, 0xffffffff, 0xfffffd1f, 0x0000ffff, 80); 
TEST_RR_OP( 21 , umax16, 0xffff8000, 0xffff8000, 0x80008000, 84); 
TEST_RR_OP( 22 , umax16, 0xffff8000, 0xffff52dd, 0x00008000, 88); 
TEST_RR_OP( 23 , umax16, 0xffff8000, 0xffff0000, 0x00008000, 92); 
TEST_RR_OP( 24 , umax16, 0xe58d3a82, 0x86763a82, 0xe58d0000, 96); 
TEST_RR_OP( 25 , umax16, 0xffff7e65, 0x80007e65, 0xffff0000, 100); 
TEST_RR_OP( 26 , umax16, 0x8000ffff, 0x8000a635, 0x0000ffff, 104); 
TEST_RR_OP( 27 , umax16, 0x9f7dc928, 0x8000c928, 0x9f7d0000, 108); 
TEST_RR_OP( 28 , umax16, 0xffffffff, 0xffffffff, 0x80008000, 112); 
TEST_RR_OP( 29 , umax16, 0xb28d8000, 0xb28d8000, 0x745e47e1, 116); 
TEST_RR_OP( 30 , umax16, 0x87dc55c4, 0x80000000, 0x87dc55c4, 120); 
TEST_RR_OP( 31 , umax16, 0xffffffff, 0xffffffff, 0x0000fb06, 124); 
TEST_RR_OP( 32 , umax16, 0xffffffff, 0x00000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , umax16, 0xffffffff, 0xffffffff, 0xffff37a4, 132); 
TEST_RR_OP( 34 , umax16, 0xffff8000, 0x00008000, 0xffff8000, 136); 
TEST_RR_OP( 35 , umax16, 0x0000ffff, 0x0000ffff, 0x000035c5, 140); 
TEST_RR_OP( 36 , umax16, 0x80008000, 0x80000000, 0x00008000, 144); 
TEST_RR_OP( 37 , umax16, 0x8000ffff, 0x80007c50, 0x0000ffff, 148); 
TEST_RR_OP( 38 , umax16, 0x1d4b8000, 0x00000000, 0x1d4b8000, 152); 
TEST_RR_OP( 39 , umax16, 0x80004e96, 0x80004e96, 0x80000000, 156); 
TEST_RR_OP( 40 , umax16, 0x8000ffff, 0x800028c5, 0x8000ffff, 160); 
TEST_RR_OP( 41 , umax16, 0xa8252465, 0xa8252465, 0x80000211, 164); 
TEST_RR_OP( 42 , umax16, 0x61a70000, 0x00000000, 0x61a70000, 168); 
TEST_RR_OP( 43 , umax16, 0xffffffff, 0xffff0000, 0x780cffff, 172); 
TEST_RR_OP( 44 , umax16, 0xffffc6a4, 0xffff6768, 0x8000c6a4, 176); 
TEST_RR_OP( 45 , umax16, 0xead7ffff, 0xead7ffff, 0x0000ffff, 180); 
TEST_RR_OP( 46 , umax16, 0x8000f127, 0x0000c517, 0x8000f127, 184); 
TEST_RR_OP( 47 , umax16, 0xd914ffff, 0x00008000, 0xd914ffff, 188); 
TEST_RR_OP( 48 , umax16, 0xf78aba3e, 0x00002630, 0xf78aba3e, 192); 
TEST_RR_OP( 49 , umax16, 0xffffffff, 0x4ceeffff, 0xffffffff, 196); 
TEST_RR_OP( 50 , umax16, 0xe19fc4fd, 0x0000c4fd, 0xe19f4e41, 200); 
TEST_RR_OP( 51 , umax16, 0x8000be72, 0x800004fc, 0x8000be72, 204); 
TEST_RR_OP( 52 , umax16, 0xffffffff, 0x1ed0ffff, 0xffff8000, 208); 
TEST_RR_OP( 53 , umax16, 0xffff8000, 0x00008000, 0xffff0000, 212); 
TEST_RR_OP( 54 , umax16, 0xffff8000, 0xffff0000, 0x981a8000, 216); 
TEST_RR_OP( 55 , umax16, 0x8d77ffff, 0x8d77ffff, 0x8000ffff, 220); 
TEST_RR_OP( 56 , umax16, 0x119e8000, 0x119e8000, 0x00000000, 224); 
TEST_RR_OP( 57 , umax16, 0x80009c71, 0x00008000, 0x80009c71, 228); 
TEST_RR_OP( 58 , umax16, 0x80000000, 0x80000000, 0x00000000, 232); 
TEST_RR_OP( 59 , umax16, 0xffff8000, 0xffff610b, 0x00008000, 236); 
TEST_RR_OP( 60 , umax16, 0x8000ffff, 0x64d7ffff, 0x80008000, 240); 
TEST_RR_OP( 61 , umax16, 0xffff7ac8, 0xffff7ac8, 0x00000000, 244); 
TEST_RR_OP( 62 , umax16, 0x63a670ff, 0x63a60000, 0x000070ff, 248); 
TEST_RR_OP( 63 , umax16, 0xd2a3890e, 0x8000890e, 0xd2a38000, 252); 
TEST_RR_OP( 64 , umax16, 0xffff8000, 0xffff8000, 0x80008000, 256); 
TEST_RR_OP( 65 , umax16, 0xffffffff, 0xffffffff, 0x42fbffff, 260); 
TEST_RR_OP( 66 , umax16, 0x80008000, 0x00008000, 0x80000000, 264); 
TEST_RR_OP( 67 , umax16, 0x14628000, 0x14628000, 0x00008000, 268); 
TEST_RR_OP( 68 , umax16, 0x4800ffff, 0x4800ffff, 0x0000ffff, 272); 
TEST_RR_OP( 69 , umax16, 0x8000ffff, 0x80008000, 0x0000ffff, 276); 
TEST_RR_OP( 70 , umax16, 0x89c68000, 0x89c64867, 0x80008000, 280); 
TEST_RR_OP( 71 , umax16, 0x0000a17b, 0x00000000, 0x0000a17b, 284); 
TEST_RR_OP( 72 , umax16, 0x8000ffff, 0x80008000, 0x8000ffff, 288); 
TEST_RR_OP( 73 , umax16, 0x80009a4d, 0x80009a4d, 0x00000000, 292); 
TEST_RR_OP( 74 , umax16, 0x8000ffff, 0x0000ffff, 0x80000000, 296); 
TEST_RR_OP( 75 , umax16, 0x80000000, 0x80000000, 0x338d0000, 300); 
TEST_RR_OP( 76 , umax16, 0xffffffff, 0xffffa5b5, 0x8000ffff, 304); 
TEST_RR_OP( 77 , umax16, 0x0000fc7d, 0x0000fc7d, 0x00008000, 308); 
TEST_RR_OP( 78 , umax16, 0xbab48000, 0x0bf18000, 0xbab48000, 312); 
TEST_RR_OP( 79 , umax16, 0xd6618000, 0x80008000, 0xd6615fde, 316); 
TEST_RR_OP( 80 , umax16, 0xffff8000, 0xffff0000, 0x80008000, 320); 
TEST_RR_OP( 81 , umax16, 0x0000ffff, 0x0000ffff, 0x00000000, 324); 
TEST_RR_OP( 82 , umax16, 0x80008000, 0x80000000, 0x80008000, 328); 
TEST_RR_OP( 83 , umax16, 0xffffffff, 0x0000ffff, 0xffff0000, 332); 
TEST_RR_OP( 84 , umax16, 0x80009f33, 0x0c299f33, 0x80000000, 336); 
TEST_RR_OP( 85 , umax16, 0xffff8000, 0xffff0000, 0x80008000, 340); 
TEST_RR_OP( 86 , umax16, 0x820dba3f, 0x8000ba3f, 0x820d0000, 344); 
TEST_RR_OP( 87 , umax16, 0xffff6ba4, 0x80006ba4, 0xffff0000, 348); 
TEST_RR_OP( 88 , umax16, 0x8000ffff, 0x80000000, 0x55c5ffff, 352); 
TEST_RR_OP( 89 , umax16, 0xffffffff, 0x0000ffff, 0xffff0000, 356); 
TEST_RR_OP( 90 , umax16, 0x8000a58d, 0x8000a58d, 0x80008000, 360); 
TEST_RR_OP( 91 , umax16, 0x8000ffff, 0x8000ffff, 0x8000ffff, 364); 
TEST_RR_OP( 92 , umax16, 0x8000ffff, 0x8000ffff, 0x8000ffff, 368); 
TEST_RR_OP( 93 , umax16, 0xffff4ae3, 0x80000000, 0xffff4ae3, 372); 
TEST_RR_OP( 94 , umax16, 0x0000ffff, 0x00001f20, 0x0000ffff, 376); 
TEST_RR_OP( 95 , umax16, 0xffffffff, 0xffffffff, 0x92254aaf, 380); 
TEST_RR_OP( 96 , umax16, 0xffff8000, 0x51b90000, 0xffff8000, 384); 
TEST_RR_OP( 97 , umax16, 0x8000ffff, 0x00008000, 0x8000ffff, 388); 
TEST_RR_OP( 98 , umax16, 0xa2cbffff, 0x00008000, 0xa2cbffff, 392); 
TEST_RR_OP( 99 , umax16, 0x80003555, 0x80003555, 0x00000000, 396); 
TEST_RR_OP( 100 , umax16, 0xc0018000, 0xc0010000, 0x80008000, 400); 
TEST_RR_OP( 101 , umax16, 0xffffc6ff, 0x80000000, 0xffffc6ff, 404); 
TEST_RR_OP( 102 , umax16, 0x9e2dffff, 0x9537152a, 0x9e2dffff, 408); 
TEST_RR_OP( 103 , umax16, 0x8000ffff, 0x8000ffff, 0x0000ffff, 412); 
TEST_RR_OP( 104 , umax16, 0xffff0000, 0x00000000, 0xffff0000, 416); 
TEST_RR_OP( 105 , umax16, 0xb79bffff, 0x8000ffff, 0xb79b8000, 420); 
TEST_RR_OP( 106 , umax16, 0xffffffff, 0xffffffff, 0x7f56fd98, 424); 
TEST_RR_OP( 107 , umax16, 0xffff8bdd, 0x80008000, 0xffff8bdd, 428); 
TEST_RR_OP( 108 , umax16, 0xffffffff, 0x80008000, 0xffffffff, 432); 
TEST_RR_OP( 109 , umax16, 0xffff8000, 0xffff0000, 0xffff8000, 436); 
TEST_RR_OP( 110 , umax16, 0x8000ffff, 0x8000ffff, 0x0000ffff, 440); 
TEST_RR_OP( 111 , umax16, 0xffffb8e5, 0xffff0000, 0x0000b8e5, 444); 
TEST_RR_OP( 112 , umax16, 0x299effff, 0x299effff, 0x0d5a81e0, 448); 
TEST_RR_OP( 113 , umax16, 0xffffd016, 0xffffd016, 0xe48c0000, 452); 
TEST_RR_OP( 114 , umax16, 0xffff9b8c, 0xffff8000, 0x80009b8c, 456); 
TEST_RR_OP( 115 , umax16, 0x123b8000, 0x00008000, 0x123b8000, 460); 
TEST_RR_OP( 116 , umax16, 0x8000ffff, 0x8000ffff, 0x8000df9d, 464); 
TEST_RR_OP( 117 , umax16, 0xffff0000, 0x00000000, 0xffff0000, 468); 
TEST_RR_OP( 118 , umax16, 0xffffffff, 0xc6b8ffff, 0xffff0000, 472); 
TEST_RR_OP( 119 , umax16, 0xffffffff, 0x8000ffff, 0xffffc81e, 476); 
TEST_RR_OP( 120 , umax16, 0xffff8000, 0x80000000, 0xffff8000, 480); 
TEST_RR_OP( 121 , umax16, 0xffff8000, 0xe41e8000, 0xffff8000, 484); 
TEST_RR_OP( 122 , umax16, 0xffffffff, 0x0000ffff, 0xffff8000, 488); 
TEST_RR_OP( 123 , umax16, 0xffffbd51, 0x63768000, 0xffffbd51, 492); 
TEST_RR_OP( 124 , umax16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 496); 
TEST_RR_OP( 125 , umax16, 0xffff9164, 0x00008000, 0xffff9164, 500); 
TEST_RR_OP( 126 , umax16, 0x8000ffff, 0x0000ffff, 0x80000000, 504); 
TEST_RR_OP( 127 , umax16, 0xffffffff, 0x8000ffff, 0xffff0000, 508); 
TEST_RR_OP( 128 , umax16, 0xf4eeffff, 0xf4eeffff, 0x80000000, 512); 
TEST_RR_OP( 129 , umax16, 0xffffbbad, 0xffffbbad, 0x00000cfd, 516); 
TEST_RR_OP( 130 , umax16, 0x0fcae35a, 0x0fcae35a, 0x00000000, 520); 
TEST_RR_OP( 131 , umax16, 0xffffe0c0, 0xffffe0c0, 0x80008000, 524); 
TEST_RR_OP( 132 , umax16, 0x6c6151db, 0x6c610000, 0x000051db, 528); 
TEST_RR_OP( 133 , umax16, 0xffffd89c, 0xffff0000, 0x0000d89c, 532); 
TEST_RR_OP( 134 , umax16, 0x8000ffff, 0x8000ffff, 0x80000000, 536); 
TEST_RR_OP( 135 , umax16, 0x8000ffff, 0x8000f53c, 0x0000ffff, 540); 
TEST_RR_OP( 136 , umax16, 0xffff8000, 0xffff8000, 0x80008000, 544); 
TEST_RR_OP( 137 , umax16, 0xed02ffff, 0xed020000, 0x8000ffff, 548); 
TEST_RR_OP( 138 , umax16, 0xffffffff, 0xffffffff, 0x80008000, 552); 
TEST_RR_OP( 139 , umax16, 0x8898ffff, 0x8000598a, 0x8898ffff, 556); 
TEST_RR_OP( 140 , umax16, 0x8000ffff, 0x70a1ffff, 0x8000ffff, 560); 
TEST_RR_OP( 141 , umax16, 0xffff8000, 0xffff8000, 0x80008000, 564); 
TEST_RR_OP( 142 , umax16, 0x8000ffff, 0x8000167c, 0x0000ffff, 568); 
TEST_RR_OP( 143 , umax16, 0x93eb982e, 0x93eb982e, 0x00000000, 572); 
TEST_RR_OP( 144 , umax16, 0xffff8000, 0xffff0000, 0x00008000, 576); 
TEST_RR_OP( 145 , umax16, 0xc3c58000, 0xc3c58000, 0x80008000, 580); 
TEST_RR_OP( 146 , umax16, 0xffff8000, 0xffff8000, 0x00008000, 584); 
TEST_RR_OP( 147 , umax16, 0xda97ffff, 0xda978000, 0x0000ffff, 588); 
TEST_RR_OP( 148 , umax16, 0x8000eb8d, 0x00000000, 0x8000eb8d, 592); 
TEST_RR_OP( 149 , umax16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 596); 
TEST_RR_OP( 150 , umax16, 0x8000f068, 0x80002481, 0x0000f068, 600); 
TEST_RR_OP( 151 , umax16, 0x2d11df12, 0x0000df12, 0x2d118000, 604); 
TEST_RR_OP( 152 , umax16, 0x7042ffff, 0x00008000, 0x7042ffff, 608); 
TEST_RR_OP( 153 , umax16, 0x8000f7c4, 0x80008000, 0x218bf7c4, 612); 
TEST_RR_OP( 154 , umax16, 0x00000000, 0x00000000, 0x00000000, 616); 
TEST_RR_OP( 155 , umax16, 0xd57affff, 0xd57a0000, 0x5c0cffff, 620); 
TEST_RR_OP( 156 , umax16, 0xb0798000, 0x00008000, 0xb0798000, 624); 
TEST_RR_OP( 157 , umax16, 0x00008000, 0x00008000, 0x00000000, 628); 
TEST_RR_OP( 158 , umax16, 0xf5fd0000, 0x80000000, 0xf5fd0000, 632); 
TEST_RR_OP( 159 , umax16, 0xffffffff, 0xffffffff, 0x00000000, 636); 
TEST_RR_OP( 160 , umax16, 0x80000000, 0x80000000, 0x00000000, 640); 
TEST_RR_OP( 161 , umax16, 0x8000ffff, 0x8000ffff, 0x00000000, 644); 
TEST_RR_OP( 162 , umax16, 0xffffffff, 0x80008000, 0xffffffff, 648); 
TEST_RR_OP( 163 , umax16, 0x8000ffff, 0x8000ffff, 0x0000ffff, 652); 
TEST_RR_OP( 164 , umax16, 0xffffffff, 0xedb9ffff, 0xffffc3f4, 656); 
TEST_RR_OP( 165 , umax16, 0xffffb90c, 0xffff0000, 0x8000b90c, 660); 
TEST_RR_OP( 166 , umax16, 0xffffd056, 0x8000d056, 0xffffb61e, 664); 
TEST_RR_OP( 167 , umax16, 0x00009019, 0x00005eaf, 0x00009019, 668); 
TEST_RR_OP( 168 , umax16, 0xb2da6da2, 0x80000000, 0xb2da6da2, 672); 
TEST_RR_OP( 169 , umax16, 0xffffffff, 0xc0b0ffff, 0xffffffff, 676); 
TEST_RR_OP( 170 , umax16, 0xffff8000, 0xffff0000, 0x80008000, 680); 
TEST_RR_OP( 171 , umax16, 0xffff2f21, 0x80002f21, 0xffff0000, 684); 
TEST_RR_OP( 172 , umax16, 0xfa420c5a, 0x80000c5a, 0xfa420000, 688); 
TEST_RR_OP( 173 , umax16, 0x8000d6e4, 0x80006ebb, 0x4966d6e4, 692); 
TEST_RR_OP( 174 , umax16, 0xfca0ffff, 0x80008000, 0xfca0ffff, 696); 
TEST_RR_OP( 175 , umax16, 0xffffffff, 0x8000ffff, 0xffff0000, 700); 
TEST_RR_OP( 176 , umax16, 0xdb798000, 0x36b80000, 0xdb798000, 704); 
TEST_RR_OP( 177 , umax16, 0xfb936e60, 0x00006e60, 0xfb930000, 708); 
TEST_RR_OP( 178 , umax16, 0xffffffff, 0xffff0000, 0x1595ffff, 712); 
TEST_RR_OP( 179 , umax16, 0xaa5bffff, 0xaa5b8000, 0x8000ffff, 716); 
TEST_RR_OP( 180 , umax16, 0xffff8000, 0xffff8000, 0x00000000, 720); 
TEST_RR_OP( 181 , umax16, 0x80008000, 0x80000000, 0x80008000, 724); 
TEST_RR_OP( 182 , umax16, 0xf96f8000, 0xf96f8000, 0x80008000, 728); 
TEST_RR_OP( 183 , umax16, 0xffff8000, 0xffff8000, 0x81088000, 732); 
TEST_RR_OP( 184 , umax16, 0x31a5ffff, 0x22b5ffff, 0x31a50000, 736); 
TEST_RR_OP( 185 , umax16, 0x800069e8, 0x80000000, 0x800069e8, 740); 
TEST_RR_OP( 186 , umax16, 0x8000ffff, 0x0000ffff, 0x8000ffff, 744); 
TEST_RR_OP( 187 , umax16, 0xffff0000, 0xffff0000, 0xffff0000, 748); 
TEST_RR_OP( 188 , umax16, 0xf2238000, 0xf2230000, 0x090c8000, 752); 
TEST_RR_OP( 189 , umax16, 0xffffffff, 0xffff701f, 0x0000ffff, 756); 
TEST_RR_OP( 190 , umax16, 0x8fa2ffff, 0x00008000, 0x8fa2ffff, 760); 
TEST_RR_OP( 191 , umax16, 0x108782c0, 0x00008000, 0x108782c0, 764); 
TEST_RR_OP( 192 , umax16, 0xffffffff, 0xffffffff, 0xffffffff, 768); 
TEST_RR_OP( 193 , umax16, 0xffffbe08, 0x00000000, 0xffffbe08, 772); 
TEST_RR_OP( 194 , umax16, 0xdab48000, 0x80000000, 0xdab48000, 776); 
TEST_RR_OP( 195 , umax16, 0xffff0000, 0xaf430000, 0xffff0000, 780); 
TEST_RR_OP( 196 , umax16, 0xffffffff, 0x8000ffff, 0xffff8000, 784); 
TEST_RR_OP( 197 , umax16, 0xffff8000, 0x800012c1, 0xffff8000, 788); 
TEST_RR_OP( 198 , umax16, 0x8000ffff, 0x00000000, 0x8000ffff, 792); 
TEST_RR_OP( 199 , umax16, 0x0000ffff, 0x0000ffff, 0x00000000, 796); 

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
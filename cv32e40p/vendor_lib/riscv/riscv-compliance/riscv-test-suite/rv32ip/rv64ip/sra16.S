# See LICENSE for license details.
#*****************************************************************************
# sra16.S
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

TEST_RR_OP( 2 , sra16, 0xffffffff, 0x8000ffff, 0x0000ffff, 8); 
TEST_RR_OP( 3 , sra16, 0x00000000, 0x00000f90, 0x8000ffff, 12); 
TEST_RR_OP( 4 , sra16, 0x0000ffe0, 0x00008000, 0xffff82ea, 16); 
TEST_RR_OP( 5 , sra16, 0xffffffff, 0xffffffff, 0x8000ffff, 20); 
TEST_RR_OP( 6 , sra16, 0x39cf0000, 0x39cf0000, 0xffff8000, 24); 
TEST_RR_OP( 7 , sra16, 0xffffffff, 0xffffffff, 0x8000ffff, 28); 
TEST_RR_OP( 8 , sra16, 0x0000ffe0, 0x00008000, 0x0000310a, 32); 
TEST_RR_OP( 9 , sra16, 0xffffffff, 0xffffffff, 0xffff0000, 36); 
TEST_RR_OP( 10 , sra16, 0x80000000, 0x80000000, 0xffff8000, 40); 
TEST_RR_OP( 11 , sra16, 0xffffffff, 0x8000d9af, 0xffffffff, 44); 
TEST_RR_OP( 12 , sra16, 0xfffc0000, 0x80000000, 0x791a1cbd, 48); 
TEST_RR_OP( 13 , sra16, 0x00000000, 0x00000000, 0xaacd8000, 52); 
TEST_RR_OP( 14 , sra16, 0x800062c1, 0x800062c1, 0x00000000, 56); 
TEST_RR_OP( 15 , sra16, 0x00000000, 0x00000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , sra16, 0x58018000, 0x58018000, 0x80000000, 64); 
TEST_RR_OP( 17 , sra16, 0x80000000, 0x80000000, 0xd1548000, 68); 
TEST_RR_OP( 18 , sra16, 0xffc30000, 0x86fc0000, 0x8000cdb9, 72); 
TEST_RR_OP( 19 , sra16, 0x5b23c684, 0x5b23c684, 0x66570000, 76); 
TEST_RR_OP( 20 , sra16, 0x8f32ffff, 0x8f32ffff, 0x00000000, 80); 
TEST_RR_OP( 21 , sra16, 0x00008000, 0x00008000, 0x00008000, 84); 
TEST_RR_OP( 22 , sra16, 0x8000ffff, 0x8000ffff, 0xffff0000, 88); 
TEST_RR_OP( 23 , sra16, 0x00000000, 0x00000000, 0x00008000, 92); 
TEST_RR_OP( 24 , sra16, 0x80008000, 0x80008000, 0x00008000, 96); 
TEST_RR_OP( 25 , sra16, 0xffffffff, 0xffffffff, 0xffff0000, 100); 
TEST_RR_OP( 26 , sra16, 0xd0088000, 0xd0088000, 0xfc8f8000, 104); 
TEST_RR_OP( 27 , sra16, 0xbd286a1b, 0xbd286a1b, 0xf4c28000, 108); 
TEST_RR_OP( 28 , sra16, 0x0000b345, 0x0000b345, 0x00008000, 112); 
TEST_RR_OP( 29 , sra16, 0x80000000, 0x80000000, 0x00008000, 116); 
TEST_RR_OP( 30 , sra16, 0xf97d99af, 0xf97d99af, 0x80008000, 120); 
TEST_RR_OP( 31 , sra16, 0x80007221, 0x80007221, 0x80000000, 124); 
TEST_RR_OP( 32 , sra16, 0x00008000, 0x00008000, 0xffff0000, 128); 
TEST_RR_OP( 33 , sra16, 0x0000ae48, 0x0000ae48, 0x80000000, 132); 
TEST_RR_OP( 34 , sra16, 0x80008000, 0x80008000, 0xffff8000, 136); 
TEST_RR_OP( 35 , sra16, 0x00000000, 0x00000000, 0x45f05778, 140); 
TEST_RR_OP( 36 , sra16, 0xffffffff, 0xffffffff, 0xb87fbfa2, 144); 
TEST_RR_OP( 37 , sra16, 0xffff0000, 0xffff0000, 0x80000000, 148); 
TEST_RR_OP( 38 , sra16, 0x80008000, 0x80008000, 0x31f48000, 152); 
TEST_RR_OP( 39 , sra16, 0xffffd4aa, 0xffffd4aa, 0x00008000, 156); 
TEST_RR_OP( 40 , sra16, 0xffffffff, 0xffffffff, 0x1f6c0000, 160); 
TEST_RR_OP( 41 , sra16, 0x3ed50000, 0x3ed50000, 0x00000000, 164); 
TEST_RR_OP( 42 , sra16, 0xffff0000, 0xffff0000, 0x00008000, 168); 
TEST_RR_OP( 43 , sra16, 0x8000ffff, 0x8000ffff, 0x16af0000, 172); 
TEST_RR_OP( 44 , sra16, 0xffff0000, 0xbb620000, 0x8000ffff, 176); 
TEST_RR_OP( 45 , sra16, 0x0000ffff, 0x0000ffff, 0x80008000, 180); 
TEST_RR_OP( 46 , sra16, 0xffffffff, 0x8000ffff, 0xffffffff, 184); 
TEST_RR_OP( 47 , sra16, 0x8000ffff, 0x8000ffff, 0x00000000, 188); 
TEST_RR_OP( 48 , sra16, 0x0000ffff, 0x0000ffff, 0xffff8726, 192); 
TEST_RR_OP( 49 , sra16, 0x92089220, 0x92089220, 0x00000000, 196); 
TEST_RR_OP( 50 , sra16, 0xfffff58b, 0xffffac5c, 0x8000be13, 200); 
TEST_RR_OP( 51 , sra16, 0xffffffff, 0xffffffff, 0x00000000, 204); 
TEST_RR_OP( 52 , sra16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 208); 
TEST_RR_OP( 53 , sra16, 0x0000ffff, 0x1d68ffff, 0x8a91bbcd, 212); 
TEST_RR_OP( 54 , sra16, 0x00000000, 0x00004d22, 0x8000ffff, 216); 
TEST_RR_OP( 55 , sra16, 0xea770000, 0xea770000, 0x4a368000, 220); 
TEST_RR_OP( 56 , sra16, 0xfffe0000, 0x800026f0, 0xffff7f8e, 224); 
TEST_RR_OP( 57 , sra16, 0x0000ff80, 0x00008000, 0xffff95f8, 228); 
TEST_RR_OP( 58 , sra16, 0x0000ffff, 0x00008000, 0x8000ffff, 232); 
TEST_RR_OP( 59 , sra16, 0xffff8000, 0xffff8000, 0x80000000, 236); 
TEST_RR_OP( 60 , sra16, 0x8000ffff, 0x8000ffff, 0x38a28000, 240); 
TEST_RR_OP( 61 , sra16, 0x0000ffff, 0x0000ffff, 0x80003ac5, 244); 
TEST_RR_OP( 62 , sra16, 0x0000ffff, 0x739affff, 0xffffffff, 248); 
TEST_RR_OP( 63 , sra16, 0xffff8000, 0xffff8000, 0xc43c0000, 252); 
TEST_RR_OP( 64 , sra16, 0x8000063c, 0x8000063c, 0x00000000, 256); 
TEST_RR_OP( 65 , sra16, 0xffff0000, 0xffff0000, 0x009e8000, 260); 
TEST_RR_OP( 66 , sra16, 0xffff0000, 0xffff0000, 0x80000000, 264); 
TEST_RR_OP( 67 , sra16, 0x0000ffff, 0x79db8000, 0xb471ffff, 268); 
TEST_RR_OP( 68 , sra16, 0xffffffff, 0xffff8000, 0x0000ffff, 272); 
TEST_RR_OP( 69 , sra16, 0x745b8000, 0x745b8000, 0xffff0000, 276); 
TEST_RR_OP( 70 , sra16, 0x00000000, 0x00000000, 0x00000000, 280); 
TEST_RR_OP( 71 , sra16, 0x00000000, 0x00000000, 0x66108000, 284); 
TEST_RR_OP( 72 , sra16, 0xffffffff, 0xa4c78000, 0x8000ffff, 288); 
TEST_RR_OP( 73 , sra16, 0x4dde0455, 0x4dde0455, 0xf8df0000, 292); 
TEST_RR_OP( 74 , sra16, 0x0000ffff, 0x00008000, 0x0000ffff, 296); 
TEST_RR_OP( 75 , sra16, 0x00000000, 0x00000000, 0x000062a9, 300); 
TEST_RR_OP( 76 , sra16, 0xffff8000, 0xffff8000, 0x00000000, 304); 
TEST_RR_OP( 77 , sra16, 0x80000000, 0x80000000, 0xffff8000, 308); 
TEST_RR_OP( 78 , sra16, 0xffff0000, 0xffff0000, 0x80000000, 312); 
TEST_RR_OP( 79 , sra16, 0x80008000, 0x80008000, 0x9c588000, 316); 
TEST_RR_OP( 80 , sra16, 0xffff0000, 0xffff0000, 0x8000454e, 320); 
TEST_RR_OP( 81 , sra16, 0x8000ffff, 0x8000ffff, 0x80008000, 324); 
TEST_RR_OP( 82 , sra16, 0x00000000, 0x00000000, 0xffff0000, 328); 
TEST_RR_OP( 83 , sra16, 0xfffffed9, 0xffffb672, 0x000001b6, 332); 
TEST_RR_OP( 84 , sra16, 0xffff24b4, 0xffff24b4, 0x80008000, 336); 
TEST_RR_OP( 85 , sra16, 0x6662ffff, 0x6662ffff, 0xffff0000, 340); 
TEST_RR_OP( 86 , sra16, 0x0000ffff, 0x2883ffff, 0x8000ffff, 344); 
TEST_RR_OP( 87 , sra16, 0xaedb8000, 0xaedb8000, 0x80000000, 348); 
TEST_RR_OP( 88 , sra16, 0x800062be, 0x800062be, 0x80008000, 352); 
TEST_RR_OP( 89 , sra16, 0xffff0000, 0xffff0000, 0x08e90000, 356); 
TEST_RR_OP( 90 , sra16, 0x80007e22, 0x80007e22, 0xffff0000, 360); 
TEST_RR_OP( 91 , sra16, 0xffffffff, 0xffffffff, 0x8000ffff, 364); 
TEST_RR_OP( 92 , sra16, 0xffff0000, 0xffff0000, 0x8000ffff, 368); 
TEST_RR_OP( 93 , sra16, 0x80008000, 0x80008000, 0xffff0000, 372); 
TEST_RR_OP( 94 , sra16, 0xffe0fff3, 0x8000cdce, 0x0000baba, 376); 
TEST_RR_OP( 95 , sra16, 0x80000000, 0x80000000, 0xffff8000, 380); 
TEST_RR_OP( 96 , sra16, 0x0000ffff, 0x0000f5bf, 0x0000ffff, 384); 
TEST_RR_OP( 97 , sra16, 0xf000f000, 0x80008000, 0x6f6dd8a3, 388); 
TEST_RR_OP( 98 , sra16, 0xffffffff, 0xffffffff, 0x53d4d6c9, 392); 
TEST_RR_OP( 99 , sra16, 0x0000f2fe, 0x0000f2fe, 0xffff0000, 396); 
TEST_RR_OP( 100 , sra16, 0x00000000, 0x16d20000, 0xffffffff, 400); 
TEST_RR_OP( 101 , sra16, 0x00003771, 0x00003771, 0xffff0000, 404); 
TEST_RR_OP( 102 , sra16, 0x8000f591, 0x8000f591, 0x7e318000, 408); 
TEST_RR_OP( 103 , sra16, 0x00000000, 0x400a294a, 0x8000ffff, 412); 
TEST_RR_OP( 104 , sra16, 0xffffffff, 0xffffffff, 0x00008000, 416); 
TEST_RR_OP( 105 , sra16, 0x00009c83, 0x00009c83, 0x178f8000, 420); 
TEST_RR_OP( 106 , sra16, 0x948e8000, 0x948e8000, 0x00000000, 424); 
TEST_RR_OP( 107 , sra16, 0xc000ffff, 0x8000ffff, 0xffff3941, 428); 
TEST_RR_OP( 108 , sra16, 0x0000ffff, 0x1774ffff, 0x0000ffff, 432); 
TEST_RR_OP( 109 , sra16, 0xffff0000, 0xffff0000, 0x3dafffff, 436); 
TEST_RR_OP( 110 , sra16, 0x800029cc, 0x800029cc, 0x49e80000, 440); 
TEST_RR_OP( 111 , sra16, 0x00006ec2, 0x00006ec2, 0x80000000, 444); 
TEST_RR_OP( 112 , sra16, 0xffffff28, 0xffff940c, 0x00009ad7, 448); 
TEST_RR_OP( 113 , sra16, 0x80008000, 0x80008000, 0x00008000, 452); 
TEST_RR_OP( 114 , sra16, 0x80004d6b, 0x80004d6b, 0xffff0000, 456); 
TEST_RR_OP( 115 , sra16, 0x8000ffff, 0x8000ffff, 0x80000000, 460); 
TEST_RR_OP( 116 , sra16, 0xffffffff, 0x8000b7a0, 0x0000ffff, 464); 
TEST_RR_OP( 117 , sra16, 0x0000ffff, 0x0b898000, 0x8000ffff, 468); 
TEST_RR_OP( 118 , sra16, 0xffff0000, 0x80000000, 0x0000ffff, 472); 
TEST_RR_OP( 119 , sra16, 0xffffffff, 0x8000ffff, 0x8000ffff, 476); 
TEST_RR_OP( 120 , sra16, 0xffff0000, 0xffff0000, 0xffff5f71, 480); 
TEST_RR_OP( 121 , sra16, 0x0000ffff, 0x40388000, 0x8a9bffff, 484); 
TEST_RR_OP( 122 , sra16, 0x000030a3, 0x000030a3, 0xffff8000, 488); 
TEST_RR_OP( 123 , sra16, 0x80000000, 0x80000000, 0xcd790000, 492); 
TEST_RR_OP( 124 , sra16, 0x80008000, 0x80008000, 0x80008000, 496); 
TEST_RR_OP( 125 , sra16, 0xffffffff, 0xffffffff, 0x04a68000, 500); 
TEST_RR_OP( 126 , sra16, 0x00000000, 0x00000000, 0x00008000, 504); 
TEST_RR_OP( 127 , sra16, 0xffffffff, 0xffffffff, 0x00009832, 508); 
TEST_RR_OP( 128 , sra16, 0x80008000, 0x80008000, 0x80008000, 512); 
TEST_RR_OP( 129 , sra16, 0xffffffff, 0xa4db8000, 0x8000ffff, 516); 
TEST_RR_OP( 130 , sra16, 0xffff8000, 0xffff8000, 0x80008000, 520); 
TEST_RR_OP( 131 , sra16, 0x80008000, 0x80008000, 0x80000000, 524); 
TEST_RR_OP( 132 , sra16, 0xffffffff, 0xffffea74, 0xffffffff, 528); 
TEST_RR_OP( 133 , sra16, 0xffffff49, 0xffffa487, 0x80003a17, 532); 
TEST_RR_OP( 134 , sra16, 0xfc000000, 0x80000000, 0x1eb4dd45, 536); 
TEST_RR_OP( 135 , sra16, 0xfff0fff0, 0x80008000, 0xffffb6ab, 540); 
TEST_RR_OP( 136 , sra16, 0x80008000, 0x80008000, 0x8ebc0000, 544); 
TEST_RR_OP( 137 , sra16, 0x6253ffff, 0x6253ffff, 0x80008000, 548); 
TEST_RR_OP( 138 , sra16, 0x80008000, 0x80008000, 0x06c48000, 552); 
TEST_RR_OP( 139 , sra16, 0xffffffff, 0x80008000, 0x8000ffff, 556); 
TEST_RR_OP( 140 , sra16, 0xffffffff, 0x8000ca0e, 0x0aeeffff, 560); 
TEST_RR_OP( 141 , sra16, 0xffff0000, 0xffff0000, 0x0000ffff, 564); 
TEST_RR_OP( 142 , sra16, 0xffff0000, 0xffff0000, 0x80000000, 568); 
TEST_RR_OP( 143 , sra16, 0x0000ffff, 0x0000ffff, 0xffff0000, 572); 
TEST_RR_OP( 144 , sra16, 0x22e7ffff, 0x45ceffff, 0x8000e181, 576); 
TEST_RR_OP( 145 , sra16, 0x0000a60d, 0x0000a60d, 0x80000000, 580); 
TEST_RR_OP( 146 , sra16, 0xffffffff, 0x8000ffff, 0x0000ffff, 584); 
TEST_RR_OP( 147 , sra16, 0xfe00fe00, 0x80008000, 0x8000a536, 588); 
TEST_RR_OP( 148 , sra16, 0x90578000, 0x90578000, 0x80000000, 592); 
TEST_RR_OP( 149 , sra16, 0x8000ffff, 0x8000ffff, 0x6a870000, 596); 
TEST_RR_OP( 150 , sra16, 0xffffcba6, 0xffffcba6, 0x00008000, 600); 
TEST_RR_OP( 151 , sra16, 0x00000000, 0x00003a1d, 0xffffffff, 604); 
TEST_RR_OP( 152 , sra16, 0x98ba0000, 0x98ba0000, 0x80000000, 608); 
TEST_RR_OP( 153 , sra16, 0xffffffef, 0xffffdf47, 0x32b9b949, 612); 
TEST_RR_OP( 154 , sra16, 0xffffffff, 0xffffffff, 0x13c5c092, 616); 
TEST_RR_OP( 155 , sra16, 0x0186e000, 0x06198000, 0xffff50f2, 620); 
TEST_RR_OP( 156 , sra16, 0x0000ffff, 0x0000ffff, 0x000037b7, 624); 
TEST_RR_OP( 157 , sra16, 0x80008000, 0x80008000, 0x00008000, 628); 
TEST_RR_OP( 158 , sra16, 0x3f680000, 0x7ed10000, 0x28af5711, 632); 
TEST_RR_OP( 159 , sra16, 0xffffffff, 0xffff8000, 0x0000ffff, 636); 
TEST_RR_OP( 160 , sra16, 0xffff8000, 0xffff8000, 0xffff8000, 640); 
TEST_RR_OP( 161 , sra16, 0xffffffff, 0xffffffff, 0x80968000, 644); 
TEST_RR_OP( 162 , sra16, 0xffffffff, 0x80008000, 0x0000ffff, 648); 
TEST_RR_OP( 163 , sra16, 0x0000ffff, 0x0000d07d, 0xc98941fe, 652); 
TEST_RR_OP( 164 , sra16, 0x0000ffff, 0x0000ffff, 0x00008000, 656); 
TEST_RR_OP( 165 , sra16, 0xffffff8c, 0xffff8c73, 0x8000a188, 660); 
TEST_RR_OP( 166 , sra16, 0x80000000, 0x80000000, 0x87968000, 664); 
TEST_RR_OP( 167 , sra16, 0xf1340000, 0xf1340000, 0x00008000, 668); 
TEST_RR_OP( 168 , sra16, 0xffffffff, 0xffff8000, 0x8000ffff, 672); 
TEST_RR_OP( 169 , sra16, 0xffffffff, 0xffffffff, 0x80000000, 676); 
TEST_RR_OP( 170 , sra16, 0xffffffff, 0x96e7db48, 0x8000ffff, 680); 
TEST_RR_OP( 171 , sra16, 0xffffffff, 0xffff8000, 0xffffffff, 684); 
TEST_RR_OP( 172 , sra16, 0x8000294b, 0x8000294b, 0x80000000, 688); 
TEST_RR_OP( 173 , sra16, 0x8000ffff, 0x8000ffff, 0x00000000, 692); 
TEST_RR_OP( 174 , sra16, 0x979b8000, 0x979b8000, 0x00008000, 696); 
TEST_RR_OP( 175 , sra16, 0x00008000, 0x00008000, 0xffff8000, 700); 
TEST_RR_OP( 176 , sra16, 0xb4b80000, 0xb4b80000, 0xffff0000, 704); 
TEST_RR_OP( 177 , sra16, 0xfffeffff, 0xf229ffff, 0x8000b48b, 708); 
TEST_RR_OP( 178 , sra16, 0x0000fc00, 0x00008000, 0xbcb68465, 712); 
TEST_RR_OP( 179 , sra16, 0x8000db7d, 0x8000db7d, 0x5a848000, 716); 
TEST_RR_OP( 180 , sra16, 0xffffffff, 0xca08c441, 0x0000ffff, 720); 
TEST_RR_OP( 181 , sra16, 0x00000000, 0x00000000, 0x8000ffff, 724); 
TEST_RR_OP( 182 , sra16, 0xffffffff, 0x80008000, 0x0000c5df, 728); 
TEST_RR_OP( 183 , sra16, 0xffffffff, 0xffff8000, 0x2aecffff, 732); 
TEST_RR_OP( 184 , sra16, 0xffffffff, 0xffffffff, 0xffff8000, 736); 
TEST_RR_OP( 185 , sra16, 0xffff0000, 0xffff0000, 0xffff7652, 740); 
TEST_RR_OP( 186 , sra16, 0xffff0000, 0xffff3dc6, 0xffffffff, 744); 
TEST_RR_OP( 187 , sra16, 0x0000ffff, 0x00009b79, 0x0000ffff, 748); 
TEST_RR_OP( 188 , sra16, 0xd0edffff, 0xa1dbffff, 0x0000e741, 752); 
TEST_RR_OP( 189 , sra16, 0x00000000, 0x00000000, 0xa71affff, 756); 
TEST_RR_OP( 190 , sra16, 0x00000000, 0x00000000, 0x00008000, 760); 
TEST_RR_OP( 191 , sra16, 0xffff95ef, 0xffff95ef, 0xffff0000, 764); 
TEST_RR_OP( 192 , sra16, 0xffffac25, 0xffffac25, 0x5ff38000, 768); 
TEST_RR_OP( 193 , sra16, 0xffffffff, 0xef6bffff, 0x8000ffff, 772); 
TEST_RR_OP( 194 , sra16, 0xffffffff, 0x80008000, 0x8000ffff, 776); 
TEST_RR_OP( 195 , sra16, 0xfff3fff0, 0x9c358000, 0xfffffd9b, 780); 
TEST_RR_OP( 196 , sra16, 0x0000ffff, 0x00008000, 0xf5e3ffff, 784); 
TEST_RR_OP( 197 , sra16, 0x85f52c03, 0x85f52c03, 0x9cd68000, 788); 
TEST_RR_OP( 198 , sra16, 0xeafe926e, 0xeafe926e, 0x00008000, 792); 
TEST_RR_OP( 199 , sra16, 0x00007ec7, 0x00007ec7, 0x00000000, 796); 

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
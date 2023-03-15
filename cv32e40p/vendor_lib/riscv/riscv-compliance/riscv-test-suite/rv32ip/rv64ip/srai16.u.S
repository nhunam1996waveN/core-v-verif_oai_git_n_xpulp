# See LICENSE for license details.
#*****************************************************************************
# srai16.u.S
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

TEST_IMM_OP( 2 , srai16.u, 0x00000000, 0x0000ffff, 6 , 8); 
TEST_IMM_OP( 3 , srai16.u, 0xf0000000, 0x8000ffff, 3 , 12); 
TEST_IMM_OP( 4 , srai16.u, 0x0001fffc, 0x10ee8000, 13 , 16); 
TEST_IMM_OP( 5 , srai16.u, 0xfffe0000, 0x80000000, 14 , 20); 
TEST_IMM_OP( 6 , srai16.u, 0xf800fe70, 0x8000e704, 4 , 24); 
TEST_IMM_OP( 7 , srai16.u, 0x00f200ce, 0x78cf6729, 7 , 28); 
TEST_IMM_OP( 8 , srai16.u, 0xfffe0000, 0x80000000, 14 , 32); 
TEST_IMM_OP( 9 , srai16.u, 0x00070000, 0x073e0000, 8 , 36); 
TEST_IMM_OP( 10 , srai16.u, 0xc0000000, 0x8000ffff, 1 , 40); 
TEST_IMM_OP( 11 , srai16.u, 0x0000fffe, 0x00008000, 14 , 44); 
TEST_IMM_OP( 12 , srai16.u, 0x00000000, 0xffffffff, 3 , 48); 
TEST_IMM_OP( 13 , srai16.u, 0x00000000, 0x00000000, 3 , 52); 
TEST_IMM_OP( 14 , srai16.u, 0x0005ffe0, 0x15a28000, 10 , 56); 
TEST_IMM_OP( 15 , srai16.u, 0x00000000, 0x00000000, 8 , 60); 
TEST_IMM_OP( 16 , srai16.u, 0x00000000, 0xffffffff, 10 , 64); 
TEST_IMM_OP( 17 , srai16.u, 0x0000fe00, 0x00008000, 6 , 68); 
TEST_IMM_OP( 18 , srai16.u, 0x000000a7, 0x0000534a, 7 , 72); 
TEST_IMM_OP( 19 , srai16.u, 0xfffe0000, 0xf9a0ffff, 10 , 76); 
TEST_IMM_OP( 20 , srai16.u, 0xf0000000, 0x80000000, 3 , 80); 
TEST_IMM_OP( 21 , srai16.u, 0x00000000, 0xffffffff, 14 , 84); 
TEST_IMM_OP( 22 , srai16.u, 0xe000fb9b, 0x8000ee6d, 2 , 88); 
TEST_IMM_OP( 23 , srai16.u, 0x0000fff5, 0xffffa7cd, 11 , 92); 
TEST_IMM_OP( 24 , srai16.u, 0xff800000, 0x8000ffff, 8 , 96); 
TEST_IMM_OP( 25 , srai16.u, 0xffe00000, 0x80000000, 10 , 100); 
TEST_IMM_OP( 26 , srai16.u, 0xfc300000, 0x85f40000, 5 , 104); 
TEST_IMM_OP( 27 , srai16.u, 0x0000fffe, 0x0b408000, 14 , 108); 
TEST_IMM_OP( 28 , srai16.u, 0xffc00000, 0x80000000, 9 , 112); 
TEST_IMM_OP( 29 , srai16.u, 0x00000000, 0x00000000, 9 , 116); 
TEST_IMM_OP( 30 , srai16.u, 0x0000fffd, 0x00009a8c, 13 , 120); 
TEST_IMM_OP( 31 , srai16.u, 0xfff9fff8, 0x94238000, 12 , 124); 
TEST_IMM_OP( 32 , srai16.u, 0x00000000, 0x00000000, 11 , 128); 
TEST_IMM_OP( 33 , srai16.u, 0x0000ffe0, 0x00008000, 10 , 132); 
TEST_IMM_OP( 34 , srai16.u, 0x0032ff8d, 0x31978d75, 8 , 136); 
TEST_IMM_OP( 35 , srai16.u, 0x0000ffe0, 0x00008000, 10 , 140); 
TEST_IMM_OP( 36 , srai16.u, 0xffc0ffc0, 0x80008000, 9 , 144); 
TEST_IMM_OP( 37 , srai16.u, 0xfff8fff8, 0x80008000, 12 , 148); 
TEST_IMM_OP( 38 , srai16.u, 0x00000498, 0xffff4979, 4 , 152); 
TEST_IMM_OP( 39 , srai16.u, 0x00000000, 0x00000000, 8 , 156); 
TEST_IMM_OP( 40 , srai16.u, 0x00000000, 0x00000000, 1 , 160); 
TEST_IMM_OP( 41 , srai16.u, 0x00000000, 0xffff0000, 2 , 164); 
TEST_IMM_OP( 42 , srai16.u, 0x00000000, 0xffff0000, 12 , 168); 
TEST_IMM_OP( 43 , srai16.u, 0xffc0ffc6, 0x80008c86, 9 , 172); 
TEST_IMM_OP( 44 , srai16.u, 0x00000000, 0x0000ffff, 2 , 176); 
TEST_IMM_OP( 45 , srai16.u, 0xe000f895, 0x8000e254, 2 , 180); 
TEST_IMM_OP( 46 , srai16.u, 0x00000000, 0xffff0000, 13 , 184); 
TEST_IMM_OP( 47 , srai16.u, 0x00000000, 0x00000000, 1 , 188); 
TEST_IMM_OP( 48 , srai16.u, 0x00000000, 0x00000000, 2 , 192); 
TEST_IMM_OP( 49 , srai16.u, 0x00000000, 0xffff0000, 3 , 196); 
TEST_IMM_OP( 50 , srai16.u, 0xf8000000, 0x80000000, 4 , 200); 
TEST_IMM_OP( 51 , srai16.u, 0x00000000, 0x0000ffff, 1 , 204); 
TEST_IMM_OP( 52 , srai16.u, 0x00000000, 0xe631ffff, 14 , 208); 
TEST_IMM_OP( 53 , srai16.u, 0xfff30000, 0x9701ffff, 11 , 212); 
TEST_IMM_OP( 54 , srai16.u, 0x0000fffe, 0xffff8000, 14 , 216); 
TEST_IMM_OP( 55 , srai16.u, 0xfffefffe, 0x969b8000, 14 , 220); 
TEST_IMM_OP( 56 , srai16.u, 0x00000000, 0xffff0000, 5 , 224); 
TEST_IMM_OP( 57 , srai16.u, 0xf0000b9a, 0x80005cd0, 3 , 228); 
TEST_IMM_OP( 58 , srai16.u, 0xff00ff00, 0x80008000, 7 , 232); 
TEST_IMM_OP( 59 , srai16.u, 0x05bafb11, 0x5b9ab112, 4 , 236); 
TEST_IMM_OP( 60 , srai16.u, 0x0000fe00, 0xffff8000, 6 , 240); 
TEST_IMM_OP( 61 , srai16.u, 0x80008000, 0x80008000, 0 , 244); 
TEST_IMM_OP( 62 , srai16.u, 0xfe000000, 0x8000ffff, 6 , 248); 
TEST_IMM_OP( 63 , srai16.u, 0x0000ff80, 0x00008000, 8 , 252); 
TEST_IMM_OP( 64 , srai16.u, 0x00f40000, 0x79fe0000, 7 , 256); 
TEST_IMM_OP( 65 , srai16.u, 0xf8851c33, 0xe21370cb, 2 , 260); 
TEST_IMM_OP( 66 , srai16.u, 0xfff80000, 0x80000000, 12 , 264); 
TEST_IMM_OP( 67 , srai16.u, 0x00000000, 0x00000000, 13 , 268); 
TEST_IMM_OP( 68 , srai16.u, 0xff800000, 0x8000ffff, 8 , 272); 
TEST_IMM_OP( 69 , srai16.u, 0xff13fe00, 0xc4be8000, 6 , 276); 
TEST_IMM_OP( 70 , srai16.u, 0xffc00000, 0x8000ffff, 9 , 280); 
TEST_IMM_OP( 71 , srai16.u, 0x0000ffff, 0xfffffb73, 11 , 284); 
TEST_IMM_OP( 72 , srai16.u, 0x00000000, 0x00000000, 13 , 288); 
TEST_IMM_OP( 73 , srai16.u, 0x00000000, 0xffffffff, 11 , 292); 
TEST_IMM_OP( 74 , srai16.u, 0xfc951f98, 0xf2537e61, 2 , 296); 
TEST_IMM_OP( 75 , srai16.u, 0x00000000, 0x0000ffff, 6 , 300); 
TEST_IMM_OP( 76 , srai16.u, 0xfff80000, 0x8000ffff, 12 , 304); 
TEST_IMM_OP( 77 , srai16.u, 0x00000007, 0xffff6e68, 12 , 308); 
TEST_IMM_OP( 78 , srai16.u, 0x0000fbc3, 0x0000f786, 1 , 312); 
TEST_IMM_OP( 79 , srai16.u, 0x00000000, 0xffff0000, 14 , 316); 
TEST_IMM_OP( 80 , srai16.u, 0x0000fffc, 0xffff8000, 13 , 320); 
TEST_IMM_OP( 81 , srai16.u, 0x001cffc0, 0x382e8000, 9 , 324); 
TEST_IMM_OP( 82 , srai16.u, 0x00000000, 0x00000000, 8 , 328); 
TEST_IMM_OP( 83 , srai16.u, 0xf92f0000, 0xf25effff, 1 , 332); 
TEST_IMM_OP( 84 , srai16.u, 0xf000099d, 0x80004ce4, 3 , 336); 
TEST_IMM_OP( 85 , srai16.u, 0x0000fc00, 0x00008000, 5 , 340); 
TEST_IMM_OP( 86 , srai16.u, 0xfffc0001, 0x8000139a, 13 , 344); 
TEST_IMM_OP( 87 , srai16.u, 0xfffa0006, 0x9e78639e, 12 , 348); 
TEST_IMM_OP( 88 , srai16.u, 0x8000ffff, 0x8000ffff, 0 , 352); 
TEST_IMM_OP( 89 , srai16.u, 0x00000000, 0x0000ffff, 13 , 356); 
TEST_IMM_OP( 90 , srai16.u, 0x00000017, 0x00005beb, 10 , 360); 
TEST_IMM_OP( 91 , srai16.u, 0xe0000976, 0x800025d6, 2 , 364); 
TEST_IMM_OP( 92 , srai16.u, 0x00000000, 0xffffffff, 2 , 368); 
TEST_IMM_OP( 93 , srai16.u, 0xfe00fe00, 0x80008000, 6 , 372); 
TEST_IMM_OP( 94 , srai16.u, 0x00000000, 0x0000ffff, 4 , 376); 
TEST_IMM_OP( 95 , srai16.u, 0x000000a8, 0x00000a81, 4 , 380); 
TEST_IMM_OP( 96 , srai16.u, 0x0000fff0, 0x000083f3, 11 , 384); 
TEST_IMM_OP( 97 , srai16.u, 0x80000000, 0x80000000, 0 , 388); 
TEST_IMM_OP( 98 , srai16.u, 0xf9310000, 0x93150000, 4 , 392); 
TEST_IMM_OP( 99 , srai16.u, 0xfffc0001, 0x80002977, 13 , 396); 
TEST_IMM_OP( 100 , srai16.u, 0x00000000, 0x0000f0e2, 14 , 400); 
TEST_IMM_OP( 101 , srai16.u, 0x00000001, 0xffff0fba, 12 , 404); 
TEST_IMM_OP( 102 , srai16.u, 0x0000ff80, 0xffff8000, 8 , 408); 
TEST_IMM_OP( 103 , srai16.u, 0xffbc0000, 0xbbc9ffff, 8 , 412); 
TEST_IMM_OP( 104 , srai16.u, 0x00000000, 0x0000ffff, 2 , 416); 
TEST_IMM_OP( 105 , srai16.u, 0x000003ef, 0x00007ddb, 5 , 420); 
TEST_IMM_OP( 106 , srai16.u, 0x00000000, 0xffff0000, 4 , 424); 
TEST_IMM_OP( 107 , srai16.u, 0x0005fff8, 0x53268000, 12 , 428); 
TEST_IMM_OP( 108 , srai16.u, 0x0000ffeb, 0x0000d618, 9 , 432); 
TEST_IMM_OP( 109 , srai16.u, 0xfff30000, 0xcb400000, 10 , 436); 
TEST_IMM_OP( 110 , srai16.u, 0x00000000, 0x00000000, 13 , 440); 
TEST_IMM_OP( 111 , srai16.u, 0xffff8000, 0xffff8000, 0 , 444); 
TEST_IMM_OP( 112 , srai16.u, 0x00000000, 0xffffffff, 11 , 448); 
TEST_IMM_OP( 113 , srai16.u, 0xfff0ffff, 0x8000f605, 11 , 452); 
TEST_IMM_OP( 114 , srai16.u, 0x0000ffe2, 0xffff88a2, 10 , 456); 
TEST_IMM_OP( 115 , srai16.u, 0xffc00000, 0x80000000, 9 , 460); 
TEST_IMM_OP( 116 , srai16.u, 0x0000ffff, 0x0000ffff, 0 , 464); 
TEST_IMM_OP( 117 , srai16.u, 0xfade0000, 0xaddbffff, 4 , 468); 
TEST_IMM_OP( 118 , srai16.u, 0x00130000, 0x4b5cffff, 10 , 472); 
TEST_IMM_OP( 119 , srai16.u, 0xf5ad17c1, 0xd6b45f05, 2 , 476); 
TEST_IMM_OP( 120 , srai16.u, 0x0000e31e, 0x00008c77, 2 , 480); 
TEST_IMM_OP( 121 , srai16.u, 0xfcd10000, 0xe684ffff, 3 , 484); 
TEST_IMM_OP( 122 , srai16.u, 0xffe00000, 0x8000ffff, 10 , 488); 
TEST_IMM_OP( 123 , srai16.u, 0x06de0000, 0x1b78ffff, 2 , 492); 
TEST_IMM_OP( 124 , srai16.u, 0x0004fffc, 0x73bd8000, 13 , 496); 
TEST_IMM_OP( 125 , srai16.u, 0x00000000, 0x0000ffff, 2 , 500); 
TEST_IMM_OP( 126 , srai16.u, 0x00000000, 0x0000ffff, 3 , 504); 
TEST_IMM_OP( 127 , srai16.u, 0x00000000, 0xffff0000, 4 , 508); 
TEST_IMM_OP( 128 , srai16.u, 0x00000000, 0xffffffff, 1 , 512); 
TEST_IMM_OP( 129 , srai16.u, 0xfb7d0000, 0xb7d50000, 4 , 516); 
TEST_IMM_OP( 130 , srai16.u, 0xfe5d0000, 0xcba80000, 5 , 520); 
TEST_IMM_OP( 131 , srai16.u, 0xf8000000, 0x8000ffff, 4 , 524); 
TEST_IMM_OP( 132 , srai16.u, 0x00000000, 0x00000000, 2 , 528); 
TEST_IMM_OP( 133 , srai16.u, 0xfff0fff0, 0x80008000, 11 , 532); 
TEST_IMM_OP( 134 , srai16.u, 0xffff0000, 0xf2bf0000, 12 , 536); 
TEST_IMM_OP( 135 , srai16.u, 0x0000fff0, 0xffff8000, 11 , 540); 
TEST_IMM_OP( 136 , srai16.u, 0xc0000000, 0x80000000, 1 , 544); 
TEST_IMM_OP( 137 , srai16.u, 0x00100000, 0x3e5f0000, 10 , 548); 
TEST_IMM_OP( 138 , srai16.u, 0x00000000, 0x0000ffff, 2 , 552); 
TEST_IMM_OP( 139 , srai16.u, 0xfff80008, 0x80007e69, 12 , 556); 
TEST_IMM_OP( 140 , srai16.u, 0x00000000, 0x00000000, 6 , 560); 
TEST_IMM_OP( 141 , srai16.u, 0x00000000, 0xffffffff, 14 , 564); 
TEST_IMM_OP( 142 , srai16.u, 0x048f01f9, 0x48f31f95, 4 , 568); 
TEST_IMM_OP( 143 , srai16.u, 0xfff8fff8, 0x80e28000, 12 , 572); 
TEST_IMM_OP( 144 , srai16.u, 0xd872329e, 0xb0e3653c, 1 , 576); 
TEST_IMM_OP( 145 , srai16.u, 0xf8f1f800, 0x8f0b8000, 4 , 580); 
TEST_IMM_OP( 146 , srai16.u, 0x8000ffff, 0x8000ffff, 0 , 584); 
TEST_IMM_OP( 147 , srai16.u, 0x0006fff8, 0x615e8000, 12 , 588); 
TEST_IMM_OP( 148 , srai16.u, 0xfffcffff, 0x8000d2e2, 13 , 592); 
TEST_IMM_OP( 149 , srai16.u, 0x0000f195, 0xffff8ca4, 3 , 596); 
TEST_IMM_OP( 150 , srai16.u, 0x0000fffe, 0x00008000, 14 , 600); 
TEST_IMM_OP( 151 , srai16.u, 0x013afe00, 0x4e838000, 6 , 604); 
TEST_IMM_OP( 152 , srai16.u, 0x00000000, 0xffffffff, 6 , 608); 
TEST_IMM_OP( 153 , srai16.u, 0x00000000, 0x0000ffff, 6 , 612); 
TEST_IMM_OP( 154 , srai16.u, 0xfee80000, 0xb9e8ffff, 6 , 616); 
TEST_IMM_OP( 155 , srai16.u, 0xdc990000, 0xb9310000, 1 , 620); 
TEST_IMM_OP( 156 , srai16.u, 0x00000000, 0x0000ffff, 11 , 624); 
TEST_IMM_OP( 157 , srai16.u, 0xc0000000, 0x80000000, 1 , 628); 
TEST_IMM_OP( 158 , srai16.u, 0x00000000, 0x00000000, 1 , 632); 
TEST_IMM_OP( 159 , srai16.u, 0xfff80003, 0x80002c54, 12 , 636); 
TEST_IMM_OP( 160 , srai16.u, 0x00000000, 0x0000ffff, 8 , 640); 
TEST_IMM_OP( 161 , srai16.u, 0xfe000000, 0x80000000, 6 , 644); 
TEST_IMM_OP( 162 , srai16.u, 0xfed60000, 0xfb56ffff, 2 , 648); 
TEST_IMM_OP( 163 , srai16.u, 0x0010ffc0, 0x20bd8000, 9 , 652); 
TEST_IMM_OP( 164 , srai16.u, 0x00000000, 0xffffffff, 2 , 656); 
TEST_IMM_OP( 165 , srai16.u, 0xff800000, 0x80000000, 8 , 660); 
TEST_IMM_OP( 166 , srai16.u, 0x000f0000, 0x3aa90000, 10 , 664); 
TEST_IMM_OP( 167 , srai16.u, 0x00000121, 0xffff241f, 5 , 668); 
TEST_IMM_OP( 168 , srai16.u, 0xc73c0000, 0xc73c0000, 0 , 672); 
TEST_IMM_OP( 169 , srai16.u, 0xe0000000, 0x80000000, 2 , 676); 
TEST_IMM_OP( 170 , srai16.u, 0xf000f000, 0x80008000, 3 , 680); 
TEST_IMM_OP( 171 , srai16.u, 0x0000fe00, 0x00008000, 6 , 684); 
TEST_IMM_OP( 172 , srai16.u, 0xff00ffc0, 0x8000e01d, 7 , 688); 
TEST_IMM_OP( 173 , srai16.u, 0xff000000, 0x8000ffff, 7 , 692); 
TEST_IMM_OP( 174 , srai16.u, 0x00170000, 0x5d3affff, 10 , 696); 
TEST_IMM_OP( 175 , srai16.u, 0xff80fff0, 0x8000f027, 8 , 700); 
TEST_IMM_OP( 176 , srai16.u, 0x0000038d, 0xffff1c66, 3 , 704); 
TEST_IMM_OP( 177 , srai16.u, 0xc0000000, 0x80000000, 1 , 708); 
TEST_IMM_OP( 178 , srai16.u, 0xe000fcad, 0x8000f2b4, 2 , 712); 
TEST_IMM_OP( 179 , srai16.u, 0x00000000, 0x0000ffff, 9 , 716); 
TEST_IMM_OP( 180 , srai16.u, 0xfe00fef7, 0x8000bda2, 6 , 720); 
TEST_IMM_OP( 181 , srai16.u, 0xf800f800, 0x80008000, 4 , 724); 
TEST_IMM_OP( 182 , srai16.u, 0xffe10009, 0xf09b047c, 7 , 728); 
TEST_IMM_OP( 183 , srai16.u, 0x0000ffc0, 0x00008000, 9 , 732); 
TEST_IMM_OP( 184 , srai16.u, 0x048b0000, 0x122a0000, 2 , 736); 
TEST_IMM_OP( 185 , srai16.u, 0x0000fffc, 0xffff8000, 13 , 740); 
TEST_IMM_OP( 186 , srai16.u, 0x0000fffc, 0x052b8000, 13 , 744); 
TEST_IMM_OP( 187 , srai16.u, 0xffc0ffc0, 0x80008000, 9 , 748); 
TEST_IMM_OP( 188 , srai16.u, 0x0000ff80, 0x00008000, 8 , 752); 
TEST_IMM_OP( 189 , srai16.u, 0xc0000000, 0x8000ffff, 1 , 756); 
TEST_IMM_OP( 190 , srai16.u, 0x00010000, 0x3826ffff, 14 , 760); 
TEST_IMM_OP( 191 , srai16.u, 0xfff00000, 0x8000ffff, 11 , 764); 
TEST_IMM_OP( 192 , srai16.u, 0x0000ffff, 0x0000ffff, 0 , 768); 
TEST_IMM_OP( 193 , srai16.u, 0x002f0000, 0x5d990000, 9 , 772); 
TEST_IMM_OP( 194 , srai16.u, 0x0000fffe, 0xffff8000, 14 , 776); 
TEST_IMM_OP( 195 , srai16.u, 0x00000000, 0x0000ffff, 5 , 780); 
TEST_IMM_OP( 196 , srai16.u, 0xffc00000, 0x8000ffff, 9 , 784); 
TEST_IMM_OP( 197 , srai16.u, 0x0000fffc, 0xffff8000, 13 , 788); 
TEST_IMM_OP( 198 , srai16.u, 0x0000f000, 0x00008000, 3 , 792); 
TEST_IMM_OP( 199 , srai16.u, 0x0000ffff, 0x0000ffff, 0 , 796); 

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
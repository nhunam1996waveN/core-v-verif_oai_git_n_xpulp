# See LICENSE for license details.
#*****************************************************************************
# srai16.S
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

TEST_IMM_OP( 2 , srai16, 0x07ebffff, 0x7eb1ffff, 4 , 8); 
TEST_IMM_OP( 3 , srai16, 0xffffffff, 0xfffff851, 13 , 12); 
TEST_IMM_OP( 4 , srai16, 0xffff0001, 0xffff5228, 14 , 16); 
TEST_IMM_OP( 5 , srai16, 0xffff0002, 0xffff4ebb, 13 , 20); 
TEST_IMM_OP( 6 , srai16, 0xffffffff, 0xffffffff, 8 , 24); 
TEST_IMM_OP( 7 , srai16, 0xffffffff, 0xfffff507, 12 , 28); 
TEST_IMM_OP( 8 , srai16, 0xf000f44d, 0x8000a268, 3 , 32); 
TEST_IMM_OP( 9 , srai16, 0x0000ffff, 0x0000ffff, 0 , 36); 
TEST_IMM_OP( 10 , srai16, 0xe1db0cb0, 0xc3b71961, 1 , 40); 
TEST_IMM_OP( 11 , srai16, 0xfbd4f800, 0xbd4b8000, 4 , 44); 
TEST_IMM_OP( 12 , srai16, 0x00000000, 0x000008eb, 14 , 48); 
TEST_IMM_OP( 13 , srai16, 0xff80ff91, 0x80009108, 8 , 52); 
TEST_IMM_OP( 14 , srai16, 0x00000000, 0x00000000, 6 , 56); 
TEST_IMM_OP( 15 , srai16, 0x0363f000, 0x1b1c8000, 3 , 60); 
TEST_IMM_OP( 16 , srai16, 0x0001fffe, 0x51c08000, 14 , 64); 
TEST_IMM_OP( 17 , srai16, 0x0000ffff, 0x0000ffff, 11 , 68); 
TEST_IMM_OP( 18 , srai16, 0xffc0ffc0, 0x80008000, 9 , 72); 
TEST_IMM_OP( 19 , srai16, 0xfe000000, 0x80000000, 6 , 76); 
TEST_IMM_OP( 20 , srai16, 0xffe0ffe0, 0x80008000, 10 , 80); 
TEST_IMM_OP( 21 , srai16, 0xfff0ffff, 0x8000ffff, 11 , 84); 
TEST_IMM_OP( 22 , srai16, 0xfc1f0000, 0xc1fb0000, 4 , 88); 
TEST_IMM_OP( 23 , srai16, 0x80000000, 0x80000000, 0 , 92); 
TEST_IMM_OP( 24 , srai16, 0xffabff80, 0xab278000, 8 , 96); 
TEST_IMM_OP( 25 , srai16, 0x0000fff8, 0x02618000, 12 , 100); 
TEST_IMM_OP( 26 , srai16, 0xffff0000, 0xffff0000, 4 , 104); 
TEST_IMM_OP( 27 , srai16, 0xffffffff, 0xffffffff, 14 , 108); 
TEST_IMM_OP( 28 , srai16, 0xe000e000, 0x80008000, 2 , 112); 
TEST_IMM_OP( 29 , srai16, 0x0050fe00, 0x141b8000, 6 , 116); 
TEST_IMM_OP( 30 , srai16, 0xffaf0000, 0xaf880000, 8 , 120); 
TEST_IMM_OP( 31 , srai16, 0xfc00ffff, 0x8000ffff, 5 , 124); 
TEST_IMM_OP( 32 , srai16, 0xffe60030, 0xccfb6087, 9 , 128); 
TEST_IMM_OP( 33 , srai16, 0xc000c000, 0x80008000, 1 , 132); 
TEST_IMM_OP( 34 , srai16, 0x0000ffc1, 0x0000c1fc, 8 , 136); 
TEST_IMM_OP( 35 , srai16, 0xfffc0000, 0x80000000, 13 , 140); 
TEST_IMM_OP( 36 , srai16, 0xffffffff, 0xffffffff, 5 , 144); 
TEST_IMM_OP( 37 , srai16, 0xfff80000, 0x8c250000, 12 , 148); 
TEST_IMM_OP( 38 , srai16, 0xffe00000, 0x80000000, 10 , 152); 
TEST_IMM_OP( 39 , srai16, 0x0000fffa, 0x0000a8fd, 12 , 156); 
TEST_IMM_OP( 40 , srai16, 0xffffffff, 0xffffffff, 5 , 160); 
TEST_IMM_OP( 41 , srai16, 0x000fffe0, 0x3e308000, 10 , 164); 
TEST_IMM_OP( 42 , srai16, 0xf983ffff, 0x983cffff, 4 , 168); 
TEST_IMM_OP( 43 , srai16, 0x00001bee, 0x00006fb8, 2 , 172); 
TEST_IMM_OP( 44 , srai16, 0x00000002, 0x000014e3, 11 , 176); 
TEST_IMM_OP( 45 , srai16, 0x0000ffff, 0x0000ffff, 1 , 180); 
TEST_IMM_OP( 46 , srai16, 0xffff0004, 0xffff271e, 11 , 184); 
TEST_IMM_OP( 47 , srai16, 0xfff80000, 0x80000000, 12 , 188); 
TEST_IMM_OP( 48 , srai16, 0x0a03ffff, 0x5019ffff, 3 , 192); 
TEST_IMM_OP( 49 , srai16, 0xfffc0000, 0x80000000, 13 , 196); 
TEST_IMM_OP( 50 , srai16, 0xf681e624, 0xda069891, 2 , 200); 
TEST_IMM_OP( 51 , srai16, 0xfa16f800, 0xa16a8000, 4 , 204); 
TEST_IMM_OP( 52 , srai16, 0xfffff800, 0xffff8000, 4 , 208); 
TEST_IMM_OP( 53 , srai16, 0x000c0014, 0x32595245, 10 , 212); 
TEST_IMM_OP( 54 , srai16, 0x0000c000, 0x00008000, 1 , 216); 
TEST_IMM_OP( 55 , srai16, 0x0000ffff, 0x0000ffff, 14 , 220); 
TEST_IMM_OP( 56 , srai16, 0xffff0000, 0xffff0000, 2 , 224); 
TEST_IMM_OP( 57 , srai16, 0x004eff80, 0x4eb18000, 8 , 228); 
TEST_IMM_OP( 58 , srai16, 0xfff00000, 0x80000000, 11 , 232); 
TEST_IMM_OP( 59 , srai16, 0xffc9ffc0, 0x92858000, 9 , 236); 
TEST_IMM_OP( 60 , srai16, 0x0000ffff, 0x0000ffff, 11 , 240); 
TEST_IMM_OP( 61 , srai16, 0x0000f07c, 0x000083e6, 3 , 244); 
TEST_IMM_OP( 62 , srai16, 0x0000ffff, 0x0000ffff, 7 , 248); 
TEST_IMM_OP( 63 , srai16, 0x0019ff80, 0x19538000, 8 , 252); 
TEST_IMM_OP( 64 , srai16, 0xfffcffff, 0xc87bffff, 12 , 256); 
TEST_IMM_OP( 65 , srai16, 0x0000fc00, 0x00008000, 5 , 260); 
TEST_IMM_OP( 66 , srai16, 0xfffffff0, 0xffff8000, 11 , 264); 
TEST_IMM_OP( 67 , srai16, 0xfc00028b, 0x80005169, 5 , 268); 
TEST_IMM_OP( 68 , srai16, 0xfffeffff, 0x8000ecd8, 14 , 272); 
TEST_IMM_OP( 69 , srai16, 0x00000000, 0x00000000, 1 , 276); 
TEST_IMM_OP( 70 , srai16, 0xffa8004d, 0xd43326da, 7 , 280); 
TEST_IMM_OP( 71 , srai16, 0xfffffff8, 0xffff8000, 12 , 284); 
TEST_IMM_OP( 72 , srai16, 0x07c70000, 0x3e380000, 3 , 288); 
TEST_IMM_OP( 73 , srai16, 0xfff00007, 0x81693c6f, 11 , 292); 
TEST_IMM_OP( 74 , srai16, 0xff00ff00, 0x80008000, 7 , 296); 
TEST_IMM_OP( 75 , srai16, 0xfffff800, 0xffff8000, 4 , 300); 
TEST_IMM_OP( 76 , srai16, 0x0000f000, 0x00008000, 3 , 304); 
TEST_IMM_OP( 77 , srai16, 0x0000ffff, 0x0000ffff, 7 , 308); 
TEST_IMM_OP( 78 , srai16, 0xfffffff0, 0xffff8000, 11 , 312); 
TEST_IMM_OP( 79 , srai16, 0xff80ff80, 0x80008000, 8 , 316); 
TEST_IMM_OP( 80 , srai16, 0x00000000, 0x00000000, 2 , 320); 
TEST_IMM_OP( 81 , srai16, 0xffe0ffe0, 0x80008000, 10 , 324); 
TEST_IMM_OP( 82 , srai16, 0xfffc0000, 0x80001752, 13 , 328); 
TEST_IMM_OP( 83 , srai16, 0x0000ffff, 0x0000ffff, 13 , 332); 
TEST_IMM_OP( 84 , srai16, 0xffc00000, 0x80000000, 9 , 336); 
TEST_IMM_OP( 85 , srai16, 0xfc360000, 0xc3690000, 4 , 340); 
TEST_IMM_OP( 86 , srai16, 0x00000000, 0x00000000, 10 , 344); 
TEST_IMM_OP( 87 , srai16, 0xfffffff0, 0xffff8000, 11 , 348); 
TEST_IMM_OP( 88 , srai16, 0x0000ffff, 0x0000ffff, 13 , 352); 
TEST_IMM_OP( 89 , srai16, 0x00010000, 0x77a90000, 14 , 356); 
TEST_IMM_OP( 90 , srai16, 0xffffffff, 0xffe7ffff, 5 , 360); 
TEST_IMM_OP( 91 , srai16, 0xfffff800, 0xffff8000, 4 , 364); 
TEST_IMM_OP( 92 , srai16, 0xffff0000, 0xffff0000, 1 , 368); 
TEST_IMM_OP( 93 , srai16, 0xfff0ffff, 0x8000ffff, 11 , 372); 
TEST_IMM_OP( 94 , srai16, 0x000a0000, 0x28890000, 10 , 376); 
TEST_IMM_OP( 95 , srai16, 0x8000ffff, 0x8000ffff, 0 , 380); 
TEST_IMM_OP( 96 , srai16, 0xfffffffa, 0xfffffaa7, 8 , 384); 
TEST_IMM_OP( 97 , srai16, 0xc000c000, 0x80008000, 1 , 388); 
TEST_IMM_OP( 98 , srai16, 0xfffe000a, 0xf4fd5431, 11 , 392); 
TEST_IMM_OP( 99 , srai16, 0xffc00000, 0x80000000, 9 , 396); 
TEST_IMM_OP( 100 , srai16, 0x00000000, 0x00000000, 5 , 400); 
TEST_IMM_OP( 101 , srai16, 0x0004fff8, 0x485b8000, 12 , 404); 
TEST_IMM_OP( 102 , srai16, 0xfff3ff96, 0xf365964e, 8 , 408); 
TEST_IMM_OP( 103 , srai16, 0x0000ffc0, 0x00008000, 9 , 412); 
TEST_IMM_OP( 104 , srai16, 0xfffeffff, 0x8000c41b, 14 , 416); 
TEST_IMM_OP( 105 , srai16, 0xd83cffff, 0xd83cffff, 0 , 420); 
TEST_IMM_OP( 106 , srai16, 0xfffcfffe, 0x8000c026, 13 , 424); 
TEST_IMM_OP( 107 , srai16, 0xfffe0000, 0x80000000, 14 , 428); 
TEST_IMM_OP( 108 , srai16, 0xffc0ffff, 0x8000ffff, 9 , 432); 
TEST_IMM_OP( 109 , srai16, 0x3ecc0587, 0x3ecc0587, 0 , 436); 
TEST_IMM_OP( 110 , srai16, 0x0000fffe, 0x00008000, 14 , 440); 
TEST_IMM_OP( 111 , srai16, 0x8000ffff, 0x8000ffff, 0 , 444); 
TEST_IMM_OP( 112 , srai16, 0x0000fffc, 0x00008000, 13 , 448); 
TEST_IMM_OP( 113 , srai16, 0xffff01e5, 0xffff794f, 6 , 452); 
TEST_IMM_OP( 114 , srai16, 0xa8adffff, 0xa8adffff, 0 , 456); 
TEST_IMM_OP( 115 , srai16, 0x0000ffff, 0x0000ffff, 4 , 460); 
TEST_IMM_OP( 116 , srai16, 0xfffffffe, 0xffff8000, 14 , 464); 
TEST_IMM_OP( 117 , srai16, 0x0000ffe0, 0x00008000, 10 , 468); 
TEST_IMM_OP( 118 , srai16, 0x00000000, 0x00000000, 6 , 472); 
TEST_IMM_OP( 119 , srai16, 0xffffe000, 0xffff8000, 2 , 476); 
TEST_IMM_OP( 120 , srai16, 0x00000000, 0x00000000, 7 , 480); 
TEST_IMM_OP( 121 , srai16, 0x00020000, 0x132d0000, 11 , 484); 
TEST_IMM_OP( 122 , srai16, 0xffff8000, 0xffff8000, 0 , 488); 
TEST_IMM_OP( 123 , srai16, 0x00000000, 0x00000000, 0 , 492); 
TEST_IMM_OP( 124 , srai16, 0x00020000, 0x504f0000, 13 , 496); 
TEST_IMM_OP( 125 , srai16, 0xfe000000, 0x80000000, 6 , 500); 
TEST_IMM_OP( 126 , srai16, 0xfffffc00, 0xffff8000, 5 , 504); 
TEST_IMM_OP( 127 , srai16, 0xff00004c, 0x8000265f, 7 , 508); 
TEST_IMM_OP( 128 , srai16, 0xf8000000, 0x80000000, 4 , 512); 
TEST_IMM_OP( 129 , srai16, 0xf800f800, 0x80008000, 4 , 516); 
TEST_IMM_OP( 130 , srai16, 0x0000ffff, 0x0000ffff, 4 , 520); 
TEST_IMM_OP( 131 , srai16, 0xe6460000, 0x991b0000, 2 , 524); 
TEST_IMM_OP( 132 , srai16, 0x000bffff, 0x5a2effff, 11 , 528); 
TEST_IMM_OP( 133 , srai16, 0xe000ffff, 0x8000ffff, 2 , 532); 
TEST_IMM_OP( 134 , srai16, 0xfffefffe, 0x80008000, 14 , 536); 
TEST_IMM_OP( 135 , srai16, 0x00190000, 0x66cc0000, 10 , 540); 
TEST_IMM_OP( 136 , srai16, 0xfffffff0, 0xffff8000, 11 , 544); 
TEST_IMM_OP( 137 , srai16, 0x013200a9, 0x4c9b2a70, 6 , 548); 
TEST_IMM_OP( 138 , srai16, 0x80000000, 0x80000000, 0 , 552); 
TEST_IMM_OP( 139 , srai16, 0x0002fffc, 0x51958000, 13 , 556); 
TEST_IMM_OP( 140 , srai16, 0xffffffff, 0xffffffff, 12 , 560); 
TEST_IMM_OP( 141 , srai16, 0x0000e556, 0x00009559, 2 , 564); 
TEST_IMM_OP( 142 , srai16, 0xc000f782, 0x8000ef05, 1 , 568); 
TEST_IMM_OP( 143 , srai16, 0xfffffff8, 0xffff8000, 12 , 572); 
TEST_IMM_OP( 144 , srai16, 0xffff0001, 0xffff11d3, 12 , 576); 
TEST_IMM_OP( 145 , srai16, 0xf000f953, 0x8000ca9e, 3 , 580); 
TEST_IMM_OP( 146 , srai16, 0xfffefffe, 0x80008000, 14 , 584); 
TEST_IMM_OP( 147 , srai16, 0x06b1f000, 0x358f8000, 3 , 588); 
TEST_IMM_OP( 148 , srai16, 0xffe0ffe0, 0x80008000, 10 , 592); 
TEST_IMM_OP( 149 , srai16, 0x000001ce, 0x00000e77, 3 , 596); 
TEST_IMM_OP( 150 , srai16, 0xfffffe00, 0xffff8000, 6 , 600); 
TEST_IMM_OP( 151 , srai16, 0xc000d754, 0x8000aea9, 1 , 604); 
TEST_IMM_OP( 152 , srai16, 0x00050000, 0x5f230000, 12 , 608); 
TEST_IMM_OP( 153 , srai16, 0xfffeffff, 0xc3a5ffff, 13 , 612); 
TEST_IMM_OP( 154 , srai16, 0x007effff, 0x07edffff, 4 , 616); 
TEST_IMM_OP( 155 , srai16, 0x0000fc00, 0x00008000, 5 , 620); 
TEST_IMM_OP( 156 , srai16, 0x0000ffc0, 0x00008000, 9 , 624); 
TEST_IMM_OP( 157 , srai16, 0xffffffff, 0xffffffff, 13 , 628); 
TEST_IMM_OP( 158 , srai16, 0x0000ffe0, 0x00008000, 10 , 632); 
TEST_IMM_OP( 159 , srai16, 0xffffe4ce, 0xffff933a, 2 , 636); 
TEST_IMM_OP( 160 , srai16, 0x00000000, 0x00000000, 3 , 640); 
TEST_IMM_OP( 161 , srai16, 0x0000ffff, 0x0000ffff, 10 , 644); 
TEST_IMM_OP( 162 , srai16, 0x0000fff2, 0x000094b7, 11 , 648); 
TEST_IMM_OP( 163 , srai16, 0x00000000, 0x00000000, 9 , 652); 
TEST_IMM_OP( 164 , srai16, 0xffffffff, 0xffffffff, 0 , 656); 
TEST_IMM_OP( 165 , srai16, 0xfffe0000, 0x80000000, 14 , 660); 
TEST_IMM_OP( 166 , srai16, 0xffffffe0, 0xffff8000, 10 , 664); 
TEST_IMM_OP( 167 , srai16, 0x00000000, 0x00000000, 7 , 668); 
TEST_IMM_OP( 168 , srai16, 0xfffffe00, 0xffff8000, 6 , 672); 
TEST_IMM_OP( 169 , srai16, 0xfe00ff90, 0x8000e403, 6 , 676); 
TEST_IMM_OP( 170 , srai16, 0x00003524, 0x00003524, 0 , 680); 
TEST_IMM_OP( 171 , srai16, 0xffff0000, 0xffff0000, 12 , 684); 
TEST_IMM_OP( 172 , srai16, 0x8000ffff, 0x8000ffff, 0 , 688); 
TEST_IMM_OP( 173 , srai16, 0x0010fff9, 0x429ce75e, 10 , 692); 
TEST_IMM_OP( 174 , srai16, 0xfffc0001, 0x80003245, 13 , 696); 
TEST_IMM_OP( 175 , srai16, 0xffffe000, 0xffff8000, 2 , 700); 
TEST_IMM_OP( 176 , srai16, 0x0000fffe, 0x0000a6b9, 14 , 704); 
TEST_IMM_OP( 177 , srai16, 0x00270000, 0x27250000, 8 , 708); 
TEST_IMM_OP( 178 , srai16, 0x0000ffff, 0x0000ffff, 4 , 712); 
TEST_IMM_OP( 179 , srai16, 0xfcceffb8, 0x99d3f715, 5 , 716); 
TEST_IMM_OP( 180 , srai16, 0xffe00000, 0x80000000, 10 , 720); 
TEST_IMM_OP( 181 , srai16, 0xffff0000, 0xffff0000, 0 , 724); 
TEST_IMM_OP( 182 , srai16, 0xffffffff, 0xffffffff, 12 , 728); 
TEST_IMM_OP( 183 , srai16, 0x0000f48e, 0x0000d23b, 2 , 732); 
TEST_IMM_OP( 184 , srai16, 0x0000ffff, 0x0000ffff, 10 , 736); 
TEST_IMM_OP( 185 , srai16, 0xfffeffff, 0x8000ffff, 14 , 740); 
TEST_IMM_OP( 186 , srai16, 0x0000ffe0, 0x00008000, 10 , 744); 
TEST_IMM_OP( 187 , srai16, 0xfffff690, 0xffffb486, 3 , 748); 
TEST_IMM_OP( 188 , srai16, 0x0000fcd7, 0x0000e6ba, 3 , 752); 
TEST_IMM_OP( 189 , srai16, 0xff00ffff, 0x8000ffff, 7 , 756); 
TEST_IMM_OP( 190 , srai16, 0x0000fe5a, 0x0000e5a8, 4 , 760); 
TEST_IMM_OP( 191 , srai16, 0x0000fffe, 0x00008000, 14 , 764); 
TEST_IMM_OP( 192 , srai16, 0xfffffffe, 0xffff8000, 14 , 768); 
TEST_IMM_OP( 193 , srai16, 0x00000000, 0x00000000, 4 , 772); 
TEST_IMM_OP( 194 , srai16, 0x1073ffff, 0x41ccffff, 2 , 776); 
TEST_IMM_OP( 195 , srai16, 0xfffe0000, 0xe1e20000, 12 , 780); 
TEST_IMM_OP( 196 , srai16, 0xfffff800, 0xffff8000, 4 , 784); 
TEST_IMM_OP( 197 , srai16, 0xfffffe3f, 0xffff8fd1, 6 , 788); 
TEST_IMM_OP( 198 , srai16, 0x0000fffe, 0x00008000, 14 , 792); 
TEST_IMM_OP( 199 , srai16, 0xfffffc00, 0xffff8000, 5 , 796); 

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
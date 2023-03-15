# See LICENSE for license details.
#*****************************************************************************
# urcrsa16.S
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

TEST_RR_OP( 2 , urcrsa16, 0x770b8000, 0xee178000, 0x80000000, 8); 
TEST_RR_OP( 3 , urcrsa16, 0x3fff7b7d, 0xffff8000, 0x76fa8000, 12); 
TEST_RR_OP( 4 , urcrsa16, 0x0000cfa8, 0xffff9f52, 0xffffffff, 16); 
TEST_RR_OP( 5 , urcrsa16, 0x000021e7, 0xffff0000, 0x43ceffff, 20); 
TEST_RR_OP( 6 , urcrsa16, 0xfc244000, 0xf8488000, 0x0000ffff, 24); 
TEST_RR_OP( 7 , urcrsa16, 0x00002b31, 0x00005663, 0x00000000, 28); 
TEST_RR_OP( 8 , urcrsa16, 0x0000d420, 0xffffffff, 0xa842ffff, 32); 
TEST_RR_OP( 9 , urcrsa16, 0xd8ad4bf0, 0x800097e1, 0x0000cea6, 36); 
TEST_RR_OP( 10 , urcrsa16, 0x40007fff, 0x80000000, 0xffff0000, 40); 
TEST_RR_OP( 11 , urcrsa16, 0x4000a116, 0x8000422e, 0xffff0000, 44); 
TEST_RR_OP( 12 , urcrsa16, 0x8000bfff, 0x0000ffff, 0x8000ffff, 48); 
TEST_RR_OP( 13 , urcrsa16, 0x80000000, 0x00000000, 0x0000ffff, 52); 
TEST_RR_OP( 14 , urcrsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 56); 
TEST_RR_OP( 15 , urcrsa16, 0x3fffe52c, 0xffffca5a, 0xffff8000, 60); 
TEST_RR_OP( 16 , urcrsa16, 0x00006016, 0x0000c02c, 0x00000000, 64); 
TEST_RR_OP( 17 , urcrsa16, 0x80007fff, 0x0000ffff, 0x0000ffff, 68); 
TEST_RR_OP( 18 , urcrsa16, 0xf949bfff, 0xf2928000, 0xffffffff, 72); 
TEST_RR_OP( 19 , urcrsa16, 0x577fc29d, 0xaefe9372, 0xf1c80000, 76); 
TEST_RR_OP( 20 , urcrsa16, 0x270d7fff, 0xffff0000, 0xffffb1e5, 80); 
TEST_RR_OP( 21 , urcrsa16, 0x80007fff, 0x0000ffff, 0x0000ffff, 84); 
TEST_RR_OP( 22 , urcrsa16, 0x40004000, 0x80008000, 0x00000000, 88); 
TEST_RR_OP( 23 , urcrsa16, 0x3fffffff, 0xffffffff, 0xffff8000, 92); 
TEST_RR_OP( 24 , urcrsa16, 0x00004000, 0x80008000, 0x00008000, 96); 
TEST_RR_OP( 25 , urcrsa16, 0x194b41fc, 0x329783f9, 0x00000000, 100); 
TEST_RR_OP( 26 , urcrsa16, 0x4000bfff, 0x80008000, 0xffff0000, 104); 
TEST_RR_OP( 27 , urcrsa16, 0x7a354000, 0xf46a0000, 0x80000000, 108); 
TEST_RR_OP( 28 , urcrsa16, 0xc000bfbe, 0x80007f7d, 0xffffffff, 112); 
TEST_RR_OP( 29 , urcrsa16, 0x8000bfff, 0x00008000, 0xffffffff, 116); 
TEST_RR_OP( 30 , urcrsa16, 0xcd5e0000, 0x9abb0000, 0x0000ffff, 120); 
TEST_RR_OP( 31 , urcrsa16, 0x6fe9c9f3, 0xdfd393e7, 0xffff0000, 124); 
TEST_RR_OP( 32 , urcrsa16, 0x00008000, 0xffff8000, 0x8000ffff, 128); 
TEST_RR_OP( 33 , urcrsa16, 0x0000fd96, 0xffffffff, 0xfb2dffff, 132); 
TEST_RR_OP( 34 , urcrsa16, 0xe94fffff, 0x529fffff, 0xffff8000, 136); 
TEST_RR_OP( 35 , urcrsa16, 0x4000bfff, 0x8000ffff, 0x80000000, 140); 
TEST_RR_OP( 36 , urcrsa16, 0xfc82bfff, 0x00008000, 0xffff06fc, 144); 
TEST_RR_OP( 37 , urcrsa16, 0xd237917c, 0x246f22f9, 0xffff8000, 148); 
TEST_RR_OP( 38 , urcrsa16, 0x0e750710, 0x1cea0e21, 0x00000000, 152); 
TEST_RR_OP( 39 , urcrsa16, 0x0000bfff, 0x00008000, 0xffff0000, 156); 
TEST_RR_OP( 40 , urcrsa16, 0x3fffefb0, 0xffffffff, 0xdf618000, 160); 
TEST_RR_OP( 41 , urcrsa16, 0xd4d74000, 0xa9ad8000, 0x0000ffff, 164); 
TEST_RR_OP( 42 , urcrsa16, 0xc0006fe9, 0x80000000, 0xdfd3ffff, 168); 
TEST_RR_OP( 43 , urcrsa16, 0x4000bfff, 0x80008000, 0xffff0000, 172); 
TEST_RR_OP( 44 , urcrsa16, 0x37404738, 0x6e810000, 0x8e700000, 176); 
TEST_RR_OP( 45 , urcrsa16, 0xc00063a6, 0x0000c74c, 0x00008000, 180); 
TEST_RR_OP( 46 , urcrsa16, 0x0342bfff, 0x8000ffff, 0x8000797c, 184); 
TEST_RR_OP( 47 , urcrsa16, 0x00008000, 0x00008000, 0x80000000, 188); 
TEST_RR_OP( 48 , urcrsa16, 0x3fff6481, 0xffff8000, 0x49028000, 192); 
TEST_RR_OP( 49 , urcrsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 196); 
TEST_RR_OP( 50 , urcrsa16, 0x7d168000, 0xfa2c8000, 0x80000000, 200); 
TEST_RR_OP( 51 , urcrsa16, 0x9aa34000, 0x35458000, 0x0000ffff, 204); 
TEST_RR_OP( 52 , urcrsa16, 0x7fffaa30, 0xffffffff, 0x54610000, 208); 
TEST_RR_OP( 53 , urcrsa16, 0x311d30ae, 0xc115615d, 0x00005eda, 212); 
TEST_RR_OP( 54 , urcrsa16, 0x9b1b1827, 0x3635304e, 0x0000ffff, 216); 
TEST_RR_OP( 55 , urcrsa16, 0x63807fff, 0xc7000000, 0xffff0000, 220); 
TEST_RR_OP( 56 , urcrsa16, 0xc000ae09, 0x00005c14, 0xffff8000, 224); 
TEST_RR_OP( 57 , urcrsa16, 0x8000bfff, 0x00008000, 0xffffffff, 228); 
TEST_RR_OP( 58 , urcrsa16, 0x40008000, 0x80008000, 0x80000000, 232); 
TEST_RR_OP( 59 , urcrsa16, 0x33fc0000, 0xffff0000, 0x00009806, 236); 
TEST_RR_OP( 60 , urcrsa16, 0x00007fff, 0x00000000, 0xffff0000, 240); 
TEST_RR_OP( 61 , urcrsa16, 0x114e0000, 0x80000000, 0x00005d63, 244); 
TEST_RR_OP( 62 , urcrsa16, 0x00008000, 0x00008000, 0x80000000, 248); 
TEST_RR_OP( 63 , urcrsa16, 0xc0008c02, 0x8000ffff, 0x1805ffff, 252); 
TEST_RR_OP( 64 , urcrsa16, 0xc0000000, 0x80000000, 0x0000ffff, 256); 
TEST_RR_OP( 65 , urcrsa16, 0x4000568b, 0x80008000, 0x2d170000, 260); 
TEST_RR_OP( 66 , urcrsa16, 0xdff5560a, 0x0000ab74, 0x00a14016, 264); 
TEST_RR_OP( 67 , urcrsa16, 0x3fff7fff, 0xffffffff, 0x00008000, 268); 
TEST_RR_OP( 68 , urcrsa16, 0x48d3ae91, 0x91a7dd22, 0x80000000, 272); 
TEST_RR_OP( 69 , urcrsa16, 0x73bb8000, 0xe7768000, 0x80000000, 276); 
TEST_RR_OP( 70 , urcrsa16, 0x7fff7fff, 0xffff0000, 0xffff0000, 280); 
TEST_RR_OP( 71 , urcrsa16, 0x33da8000, 0xffff8000, 0x8000984a, 284); 
TEST_RR_OP( 72 , urcrsa16, 0x40007fff, 0x8000ffff, 0x00000000, 288); 
TEST_RR_OP( 73 , urcrsa16, 0xf392a0b9, 0x67248000, 0xc1728000, 292); 
TEST_RR_OP( 74 , urcrsa16, 0x8000ffff, 0x0000ffff, 0xffffffff, 296); 
TEST_RR_OP( 75 , urcrsa16, 0x0000d65c, 0xffffacba, 0xffffffff, 300); 
TEST_RR_OP( 76 , urcrsa16, 0x40000000, 0x80000000, 0x00000000, 304); 
TEST_RR_OP( 77 , urcrsa16, 0x06bcbfff, 0xa329ffff, 0x800095b1, 308); 
TEST_RR_OP( 78 , urcrsa16, 0x80004000, 0x00000000, 0x8000ffff, 312); 
TEST_RR_OP( 79 , urcrsa16, 0xc000bfff, 0x80008000, 0xffffffff, 316); 
TEST_RR_OP( 80 , urcrsa16, 0xa9b0ffff, 0x535fffff, 0xffffffff, 320); 
TEST_RR_OP( 81 , urcrsa16, 0x00004000, 0x00000000, 0x80000000, 324); 
TEST_RR_OP( 82 , urcrsa16, 0x3c784000, 0xf8f18000, 0x00008000, 328); 
TEST_RR_OP( 83 , urcrsa16, 0x7fff8000, 0xffff8000, 0x80000000, 332); 
TEST_RR_OP( 84 , urcrsa16, 0x80004000, 0x00000000, 0x8000ffff, 336); 
TEST_RR_OP( 85 , urcrsa16, 0x32097aab, 0x8000f557, 0x00001bee, 340); 
TEST_RR_OP( 86 , urcrsa16, 0x7fff4000, 0xffff0000, 0x80000000, 344); 
TEST_RR_OP( 87 , urcrsa16, 0x400070cb, 0x80008905, 0x58920000, 348); 
TEST_RR_OP( 88 , urcrsa16, 0x01de746a, 0x83bdd5d1, 0x13048000, 352); 
TEST_RR_OP( 89 , urcrsa16, 0x26a4bfff, 0xffff8000, 0xffffb2b7, 356); 
TEST_RR_OP( 90 , urcrsa16, 0x2db1ffff, 0x8000ffff, 0xffff249d, 360); 
TEST_RR_OP( 91 , urcrsa16, 0xe5027fff, 0x6aa00000, 0xffffa09b, 364); 
TEST_RR_OP( 92 , urcrsa16, 0x8cc5ffff, 0x1989ffff, 0xffffffff, 368); 
TEST_RR_OP( 93 , urcrsa16, 0x00000000, 0x80000000, 0x00008000, 372); 
TEST_RR_OP( 94 , urcrsa16, 0xa7dc0000, 0x4fb70000, 0x0000ffff, 376); 
TEST_RR_OP( 95 , urcrsa16, 0xe2270000, 0xc44e0000, 0x0000ffff, 380); 
TEST_RR_OP( 96 , urcrsa16, 0x00000000, 0x00000000, 0x00000000, 384); 
TEST_RR_OP( 97 , urcrsa16, 0x80004000, 0x00000000, 0x8000ffff, 388); 
TEST_RR_OP( 98 , urcrsa16, 0x40004dd5, 0x80003839, 0x63720000, 392); 
TEST_RR_OP( 99 , urcrsa16, 0x0000bfff, 0x80008000, 0xffff8000, 396); 
TEST_RR_OP( 100 , urcrsa16, 0xc0007fff, 0x0000ffff, 0x00008000, 400); 
TEST_RR_OP( 101 , urcrsa16, 0xc00098ac, 0x80003232, 0xff27ffff, 404); 
TEST_RR_OP( 102 , urcrsa16, 0x2cd49786, 0xd9a82f0d, 0xffff8000, 408); 
TEST_RR_OP( 103 , urcrsa16, 0x8000984c, 0x0000b098, 0x8000ffff, 412); 
TEST_RR_OP( 104 , urcrsa16, 0xc0004000, 0x80008000, 0x0000ffff, 416); 
TEST_RR_OP( 105 , urcrsa16, 0xd1e779e7, 0x1ed40000, 0xf3cf7b06, 420); 
TEST_RR_OP( 106 , urcrsa16, 0xbd1cbfff, 0x00008000, 0xffff85c7, 424); 
TEST_RR_OP( 107 , urcrsa16, 0x7beebfff, 0xffff8000, 0xffff0822, 428); 
TEST_RR_OP( 108 , urcrsa16, 0x2ef25cae, 0xffff8000, 0x395ca21b, 432); 
TEST_RR_OP( 109 , urcrsa16, 0x40004000, 0x80008000, 0x00000000, 436); 
TEST_RR_OP( 110 , urcrsa16, 0xd1a17fff, 0x23430000, 0xffff8000, 440); 
TEST_RR_OP( 111 , urcrsa16, 0xd3f62fbd, 0x27ec0000, 0x5f7b8000, 444); 
TEST_RR_OP( 112 , urcrsa16, 0xc0004000, 0x80008000, 0x0000ffff, 448); 
TEST_RR_OP( 113 , urcrsa16, 0x80000000, 0x00000000, 0x0000ffff, 452); 
TEST_RR_OP( 114 , urcrsa16, 0xe9b94000, 0xa3f00000, 0x8000d07e, 456); 
TEST_RR_OP( 115 , urcrsa16, 0xcaf54000, 0x95e90000, 0x8000ffff, 460); 
TEST_RR_OP( 116 , urcrsa16, 0x0000bfff, 0x00008000, 0xffff0000, 464); 
TEST_RR_OP( 117 , urcrsa16, 0x818d27ac, 0x03194f58, 0x0000ffff, 468); 
TEST_RR_OP( 118 , urcrsa16, 0x647c7ef0, 0xc8f8fb3b, 0x02a50000, 472); 
TEST_RR_OP( 119 , urcrsa16, 0x7ffffe56, 0xfffffcad, 0xffff0000, 476); 
TEST_RR_OP( 120 , urcrsa16, 0x4000cf66, 0x8000ffff, 0x9ece0000, 480); 
TEST_RR_OP( 121 , urcrsa16, 0xc22dc520, 0x045b8a42, 0xffff8000, 484); 
TEST_RR_OP( 122 , urcrsa16, 0xc0004000, 0x80000000, 0x8000ffff, 488); 
TEST_RR_OP( 123 , urcrsa16, 0x368dffff, 0x6d1bffff, 0xffff0000, 492); 
TEST_RR_OP( 124 , urcrsa16, 0xe7c48000, 0xcf878000, 0x8000ffff, 496); 
TEST_RR_OP( 125 , urcrsa16, 0x0000bc05, 0xffffffff, 0x780bffff, 500); 
TEST_RR_OP( 126 , urcrsa16, 0x163b9301, 0x80008000, 0xa602538a, 504); 
TEST_RR_OP( 127 , urcrsa16, 0x41f3ffff, 0x9eadffff, 0xffff1ac7, 508); 
TEST_RR_OP( 128 , urcrsa16, 0x0000bfff, 0x80008000, 0xffff8000, 512); 
TEST_RR_OP( 129 , urcrsa16, 0x2b694000, 0x56d20000, 0x80000000, 516); 
TEST_RR_OP( 130 , urcrsa16, 0x80000000, 0x00000000, 0x0000ffff, 520); 
TEST_RR_OP( 131 , urcrsa16, 0x00000000, 0x80000000, 0x00008000, 524); 
TEST_RR_OP( 132 , urcrsa16, 0xa2a3b881, 0x4545f102, 0x8000ffff, 528); 
TEST_RR_OP( 133 , urcrsa16, 0xdcb47fff, 0xb968ffff, 0x0000ffff, 532); 
TEST_RR_OP( 134 , urcrsa16, 0xc000bfff, 0x8000ffff, 0x8000ffff, 536); 
TEST_RR_OP( 135 , urcrsa16, 0x3ffff039, 0xffffe073, 0xffff8000, 540); 
TEST_RR_OP( 136 , urcrsa16, 0x18b0ffff, 0x8000ffff, 0xffff4e9f, 544); 
TEST_RR_OP( 137 , urcrsa16, 0xc00038cd, 0x0000719a, 0x00008000, 548); 
TEST_RR_OP( 138 , urcrsa16, 0xc4165cab, 0x80008000, 0x3957f7d4, 552); 
TEST_RR_OP( 139 , urcrsa16, 0xf29affff, 0x0000ffff, 0xffff1acc, 556); 
TEST_RR_OP( 140 , urcrsa16, 0x557b8078, 0xffff9ee5, 0x620b5508, 560); 
TEST_RR_OP( 141 , urcrsa16, 0xc0007fff, 0x80000000, 0xffffffff, 564); 
TEST_RR_OP( 142 , urcrsa16, 0x00007fff, 0xffffffff, 0x0000ffff, 568); 
TEST_RR_OP( 143 , urcrsa16, 0x00008000, 0x80008000, 0x80008000, 572); 
TEST_RR_OP( 144 , urcrsa16, 0x3fffbfff, 0xffffffff, 0x80008000, 576); 
TEST_RR_OP( 145 , urcrsa16, 0x00004000, 0x80008000, 0x00008000, 580); 
TEST_RR_OP( 146 , urcrsa16, 0x7fffccf1, 0xffff99e3, 0xffff0000, 584); 
TEST_RR_OP( 147 , urcrsa16, 0x0dfd3bcb, 0x1bfb7797, 0x00000000, 588); 
TEST_RR_OP( 148 , urcrsa16, 0x785b7fff, 0xffffffff, 0x00000f49, 592); 
TEST_RR_OP( 149 , urcrsa16, 0x0a6cc4ba, 0x14d9d1ad, 0xb7c80000, 596); 
TEST_RR_OP( 150 , urcrsa16, 0x00002ab9, 0x00005572, 0x00000000, 600); 
TEST_RR_OP( 151 , urcrsa16, 0x0000edb6, 0x8000db6d, 0xffff8000, 604); 
TEST_RR_OP( 152 , urcrsa16, 0x0000cee3, 0x8000ffff, 0x9dc78000, 608); 
TEST_RR_OP( 153 , urcrsa16, 0xc0004000, 0x00000000, 0x80008000, 612); 
TEST_RR_OP( 154 , urcrsa16, 0xc0008b4e, 0x00003181, 0xe51c8000, 616); 
TEST_RR_OP( 155 , urcrsa16, 0x7fff6d20, 0xffff5a40, 0x80000000, 620); 
TEST_RR_OP( 156 , urcrsa16, 0x40008000, 0x80008000, 0x80000000, 624); 
TEST_RR_OP( 157 , urcrsa16, 0x3fffffff, 0xffffffff, 0xffff8000, 628); 
TEST_RR_OP( 158 , urcrsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 632); 
TEST_RR_OP( 159 , urcrsa16, 0x000061bb, 0x00000000, 0xc3770000, 636); 
TEST_RR_OP( 160 , urcrsa16, 0x33007fff, 0xe6000000, 0xffff8000, 640); 
TEST_RR_OP( 161 , urcrsa16, 0x5920bfff, 0xb241ffff, 0x80000000, 644); 
TEST_RR_OP( 162 , urcrsa16, 0x00004000, 0x80008000, 0x00008000, 648); 
TEST_RR_OP( 163 , urcrsa16, 0x3bf85433, 0xa7302867, 0x80002f40, 652); 
TEST_RR_OP( 164 , urcrsa16, 0x80007fff, 0x0000ffff, 0x0000ffff, 656); 
TEST_RR_OP( 165 , urcrsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 660); 
TEST_RR_OP( 166 , urcrsa16, 0x7543bfff, 0xffff8000, 0xffff1578, 664); 
TEST_RR_OP( 167 , urcrsa16, 0x3fff8000, 0xffff8000, 0x80008000, 668); 
TEST_RR_OP( 168 , urcrsa16, 0xd863afa7, 0x30c68000, 0xdf4f8000, 672); 
TEST_RR_OP( 169 , urcrsa16, 0x8000bfff, 0x0000ffff, 0x8000ffff, 676); 
TEST_RR_OP( 170 , urcrsa16, 0xc0004000, 0x80008000, 0x0000ffff, 680); 
TEST_RR_OP( 171 , urcrsa16, 0xc0002290, 0x00000959, 0x3bc78000, 684); 
TEST_RR_OP( 172 , urcrsa16, 0x00007fff, 0xffffffff, 0x0000ffff, 688); 
TEST_RR_OP( 173 , urcrsa16, 0x9d3ebfff, 0x2638ffff, 0x8000ebbc, 692); 
TEST_RR_OP( 174 , urcrsa16, 0x85077db7, 0x00008000, 0x7b6ff5f2, 696); 
TEST_RR_OP( 175 , urcrsa16, 0x8000abe6, 0x00008000, 0xd7cdffff, 700); 
TEST_RR_OP( 176 , urcrsa16, 0x8df187ff, 0x0000f839, 0x17c6e41e, 704); 
TEST_RR_OP( 177 , urcrsa16, 0x7fff66ad, 0xffffcd16, 0x00450000, 708); 
TEST_RR_OP( 178 , urcrsa16, 0x00008000, 0x00008000, 0x80000000, 712); 
TEST_RR_OP( 179 , urcrsa16, 0x0000ea84, 0x8000d509, 0xffff8000, 716); 
TEST_RR_OP( 180 , urcrsa16, 0xd0194000, 0x00008000, 0x00005fcd, 720); 
TEST_RR_OP( 181 , urcrsa16, 0xd5df4000, 0x2bbf8000, 0x00008000, 724); 
TEST_RR_OP( 182 , urcrsa16, 0x3fffbfff, 0xffffffff, 0x80008000, 728); 
TEST_RR_OP( 183 , urcrsa16, 0xddddbfff, 0x8000ffff, 0x8000c445, 732); 
TEST_RR_OP( 184 , urcrsa16, 0x40004000, 0x80008000, 0x00000000, 736); 
TEST_RR_OP( 185 , urcrsa16, 0xe412b05c, 0x8000ffff, 0x60b9b7db, 740); 
TEST_RR_OP( 186 , urcrsa16, 0x00004000, 0x80008000, 0x00008000, 744); 
TEST_RR_OP( 187 , urcrsa16, 0x0000bfff, 0x0000ffff, 0x80000000, 748); 
TEST_RR_OP( 188 , urcrsa16, 0x8000a6cd, 0x00004d9c, 0xffffffff, 752); 
TEST_RR_OP( 189 , urcrsa16, 0x0000bfff, 0xffffffff, 0x8000ffff, 756); 
TEST_RR_OP( 190 , urcrsa16, 0x0058f1c6, 0x80b1e38d, 0xffff8000, 760); 
TEST_RR_OP( 191 , urcrsa16, 0x0000b0ee, 0x800061de, 0xffff8000, 764); 
TEST_RR_OP( 192 , urcrsa16, 0xc000b1b5, 0x80008000, 0xe36affff, 768); 
TEST_RR_OP( 193 , urcrsa16, 0x4000ffff, 0x8000ffff, 0xffff0000, 772); 
TEST_RR_OP( 194 , urcrsa16, 0x0000bfff, 0xffffffff, 0x8000ffff, 776); 
TEST_RR_OP( 195 , urcrsa16, 0x4000bfff, 0x80008000, 0xffff0000, 780); 
TEST_RR_OP( 196 , urcrsa16, 0x3fff7fff, 0xffff0000, 0xffff8000, 784); 
TEST_RR_OP( 197 , urcrsa16, 0x07f40000, 0x80000000, 0x00007018, 788); 
TEST_RR_OP( 198 , urcrsa16, 0x000095a0, 0x8000ffff, 0x2b428000, 792); 
TEST_RR_OP( 199 , urcrsa16, 0x2136ffff, 0x8000ffff, 0xffff3d93, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# rcrsa16.S
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

TEST_RR_OP( 2 , rcrsa16, 0x4e9e0000, 0x1d3c0000, 0x00008000, 8); 
TEST_RR_OP( 3 , rcrsa16, 0x01888000, 0x00008000, 0x8000fcf0, 12); 
TEST_RR_OP( 4 , rcrsa16, 0xd716c55c, 0xae2cffff, 0x8abaffff, 16); 
TEST_RR_OP( 5 , rcrsa16, 0x3f240000, 0x00000000, 0x000081b7, 20); 
TEST_RR_OP( 6 , rcrsa16, 0xfb76f031, 0xa4bfffff, 0xe063add3, 24); 
TEST_RR_OP( 7 , rcrsa16, 0x0000c000, 0x00008000, 0x00000000, 28); 
TEST_RR_OP( 8 , rcrsa16, 0x0a2dffff, 0xffff0000, 0xffffeba4, 32); 
TEST_RR_OP( 9 , rcrsa16, 0x4000bfff, 0x00008000, 0xffff8000, 36); 
TEST_RR_OP( 10 , rcrsa16, 0x0000ffff, 0xffffffff, 0x0000ffff, 40); 
TEST_RR_OP( 11 , rcrsa16, 0x2da20000, 0xdb450000, 0x00008000, 44); 
TEST_RR_OP( 12 , rcrsa16, 0xffff0e2d, 0xffff1c5a, 0x00000000, 48); 
TEST_RR_OP( 13 , rcrsa16, 0x23e70285, 0x47ce0000, 0x050bffff, 52); 
TEST_RR_OP( 14 , rcrsa16, 0x00001f1c, 0x00003e38, 0x0000ffff, 56); 
TEST_RR_OP( 15 , rcrsa16, 0xace7fc6b, 0x800078d7, 0x80002632, 60); 
TEST_RR_OP( 16 , rcrsa16, 0x0000bfff, 0x0000ffff, 0x80000000, 64); 
TEST_RR_OP( 17 , rcrsa16, 0x0ec61332, 0xffffffff, 0x2665e273, 68); 
TEST_RR_OP( 18 , rcrsa16, 0xc000ffff, 0x80000000, 0xffff0000, 72); 
TEST_RR_OP( 19 , rcrsa16, 0x3fff8000, 0xffff8000, 0x80008000, 76); 
TEST_RR_OP( 20 , rcrsa16, 0x3fffd2b3, 0xffffffff, 0xa5678000, 80); 
TEST_RR_OP( 21 , rcrsa16, 0xf578ffff, 0xeaf00000, 0xffffffff, 84); 
TEST_RR_OP( 22 , rcrsa16, 0xc285c000, 0x850a8000, 0x0000ffff, 88); 
TEST_RR_OP( 23 , rcrsa16, 0x00002107, 0x00004210, 0xffffffff, 92); 
TEST_RR_OP( 24 , rcrsa16, 0x4000f7ed, 0x0000ffff, 0xefdb8000, 96); 
TEST_RR_OP( 25 , rcrsa16, 0x000027f5, 0x00000000, 0x4feaffff, 100); 
TEST_RR_OP( 26 , rcrsa16, 0xc0000000, 0x80000000, 0x0000ffff, 104); 
TEST_RR_OP( 27 , rcrsa16, 0x0000bfff, 0xffff8000, 0xffffffff, 108); 
TEST_RR_OP( 28 , rcrsa16, 0x0000f3f3, 0xffff87c2, 0x6025ffff, 112); 
TEST_RR_OP( 29 , rcrsa16, 0x0dccffff, 0xffff0000, 0xffffe466, 116); 
TEST_RR_OP( 30 , rcrsa16, 0x0000ffff, 0x8000ffff, 0xffff8000, 120); 
TEST_RR_OP( 31 , rcrsa16, 0x3d802e76, 0x37aa5ced, 0x0000bca9, 124); 
TEST_RR_OP( 32 , rcrsa16, 0x438affff, 0x6db1ffff, 0x0000e69c, 128); 
TEST_RR_OP( 33 , rcrsa16, 0x0000c000, 0x00008000, 0x0000ffff, 132); 
TEST_RR_OP( 34 , rcrsa16, 0x0000ffff, 0x0000ffff, 0x00000000, 136); 
TEST_RR_OP( 35 , rcrsa16, 0x30a5ffff, 0x614affff, 0x0000ffff, 140); 
TEST_RR_OP( 36 , rcrsa16, 0xffff87d2, 0xffff8fa4, 0x80000000, 144); 
TEST_RR_OP( 37 , rcrsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , rcrsa16, 0x219ebfff, 0x433d8000, 0xffff0000, 152); 
TEST_RR_OP( 39 , rcrsa16, 0x0000ffff, 0x00000000, 0xffff0000, 156); 
TEST_RR_OP( 40 , rcrsa16, 0x0000ffff, 0x8000ffff, 0x00008000, 160); 
TEST_RR_OP( 41 , rcrsa16, 0x0000eab0, 0xffffffff, 0xd562ffff, 164); 
TEST_RR_OP( 42 , rcrsa16, 0x1f1b3147, 0x3e370000, 0x628e0000, 168); 
TEST_RR_OP( 43 , rcrsa16, 0x40001d0a, 0x0000ffff, 0x3a158000, 172); 
TEST_RR_OP( 44 , rcrsa16, 0xc000b023, 0x8000e047, 0x8000ffff, 176); 
TEST_RR_OP( 45 , rcrsa16, 0x262d8000, 0x00008000, 0x8000b3a5, 180); 
TEST_RR_OP( 46 , rcrsa16, 0x0000bfff, 0x0000ffff, 0x8000ffff, 184); 
TEST_RR_OP( 47 , rcrsa16, 0x00000a76, 0x80000000, 0x14ed8000, 188); 
TEST_RR_OP( 48 , rcrsa16, 0x50f2e3dd, 0x21e4c7bb, 0x00008000, 192); 
TEST_RR_OP( 49 , rcrsa16, 0x0000ffff, 0x0000ffff, 0xffff0000, 196); 
TEST_RR_OP( 50 , rcrsa16, 0xffff2b2b, 0xffffffff, 0x56570000, 200); 
TEST_RR_OP( 51 , rcrsa16, 0x40000000, 0x00000000, 0x00008000, 204); 
TEST_RR_OP( 52 , rcrsa16, 0x0e51bfff, 0xffff8000, 0xffffe35d, 208); 
TEST_RR_OP( 53 , rcrsa16, 0x3fffbfff, 0xffff8000, 0xffff8000, 212); 
TEST_RR_OP( 54 , rcrsa16, 0x0000c000, 0x80000000, 0x80008000, 216); 
TEST_RR_OP( 55 , rcrsa16, 0xc1920000, 0x00000000, 0x00007cdb, 220); 
TEST_RR_OP( 56 , rcrsa16, 0x4000cfb7, 0x00009f70, 0xffff8000, 224); 
TEST_RR_OP( 57 , rcrsa16, 0xc000c000, 0x80008000, 0x0000ffff, 228); 
TEST_RR_OP( 58 , rcrsa16, 0x00009331, 0x00008000, 0xa662ffff, 232); 
TEST_RR_OP( 59 , rcrsa16, 0xc000c000, 0x80000000, 0x8000ffff, 236); 
TEST_RR_OP( 60 , rcrsa16, 0x0000dd9b, 0xffffffff, 0xbb37ffff, 240); 
TEST_RR_OP( 61 , rcrsa16, 0x0000dfb8, 0x80003f71, 0x80008000, 244); 
TEST_RR_OP( 62 , rcrsa16, 0x4000bfff, 0x00008000, 0xffff8000, 248); 
TEST_RR_OP( 63 , rcrsa16, 0x3fff8000, 0xffff8000, 0x80008000, 252); 
TEST_RR_OP( 64 , rcrsa16, 0x4000ffff, 0x0000ffff, 0x00008000, 256); 
TEST_RR_OP( 65 , rcrsa16, 0x1aafffff, 0x355effff, 0xffffffff, 260); 
TEST_RR_OP( 66 , rcrsa16, 0x0000937f, 0x00008000, 0xa6fe0000, 264); 
TEST_RR_OP( 67 , rcrsa16, 0x0000c000, 0x80008000, 0x00008000, 268); 
TEST_RR_OP( 68 , rcrsa16, 0x4408a438, 0x08108000, 0xc8708000, 272); 
TEST_RR_OP( 69 , rcrsa16, 0x4000c000, 0x00008000, 0x00008000, 276); 
TEST_RR_OP( 70 , rcrsa16, 0xce11ab5d, 0x9c22d6ba, 0x8000ffff, 280); 
TEST_RR_OP( 71 , rcrsa16, 0x000034d4, 0x0000ffff, 0x69aa0000, 284); 
TEST_RR_OP( 72 , rcrsa16, 0x1704bfff, 0x2e07ffff, 0x8000ffff, 288); 
TEST_RR_OP( 73 , rcrsa16, 0xd798c000, 0x80000000, 0x8000d0d0, 292); 
TEST_RR_OP( 74 , rcrsa16, 0xc000c000, 0x80008000, 0x0000ffff, 296); 
TEST_RR_OP( 75 , rcrsa16, 0xdb341376, 0xffff0000, 0x26ec4997, 300); 
TEST_RR_OP( 76 , rcrsa16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 304); 
TEST_RR_OP( 77 , rcrsa16, 0xfb82c000, 0x80000000, 0x800088fb, 308); 
TEST_RR_OP( 78 , rcrsa16, 0x0000186a, 0x00000000, 0x30d4ffff, 312); 
TEST_RR_OP( 79 , rcrsa16, 0x4000bfff, 0x00008000, 0xffff8000, 316); 
TEST_RR_OP( 80 , rcrsa16, 0xfc66e263, 0x0000ffff, 0xc4c80734, 320); 
TEST_RR_OP( 81 , rcrsa16, 0x0000ffff, 0x00000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , rcrsa16, 0x4000ffff, 0x0000ffff, 0xffff8000, 328); 
TEST_RR_OP( 83 , rcrsa16, 0x0000bfff, 0x0000ffff, 0x8000ffff, 332); 
TEST_RR_OP( 84 , rcrsa16, 0xf0e31333, 0xe1c7ffff, 0x26680000, 336); 
TEST_RR_OP( 85 , rcrsa16, 0x00000000, 0x80000000, 0x00008000, 340); 
TEST_RR_OP( 86 , rcrsa16, 0x40008000, 0x00008000, 0x80008000, 344); 
TEST_RR_OP( 87 , rcrsa16, 0x9a92ea11, 0x993effff, 0xd423641a, 348); 
TEST_RR_OP( 88 , rcrsa16, 0xffffc000, 0xffff0000, 0x80000000, 352); 
TEST_RR_OP( 89 , rcrsa16, 0xc0008000, 0x80008000, 0x80000000, 356); 
TEST_RR_OP( 90 , rcrsa16, 0xf4b78cdd, 0xffff8000, 0x99ba1691, 360); 
TEST_RR_OP( 91 , rcrsa16, 0x0e86bfff, 0x1d0c8000, 0xffffffff, 364); 
TEST_RR_OP( 92 , rcrsa16, 0xce08eda3, 0x9c100000, 0xdb46ffff, 368); 
TEST_RR_OP( 93 , rcrsa16, 0x0a87c000, 0x150d0000, 0x8000ffff, 372); 
TEST_RR_OP( 94 , rcrsa16, 0x4000b9f2, 0x00009df5, 0xd5ef8000, 376); 
TEST_RR_OP( 95 , rcrsa16, 0x40008000, 0x00008000, 0x80008000, 380); 
TEST_RR_OP( 96 , rcrsa16, 0x997bffff, 0x80000000, 0xffff4d0a, 384); 
TEST_RR_OP( 97 , rcrsa16, 0xc000bfff, 0x8000ffff, 0x80000000, 388); 
TEST_RR_OP( 98 , rcrsa16, 0xf7edffff, 0xefdaffff, 0xffffffff, 392); 
TEST_RR_OP( 99 , rcrsa16, 0x90fe8000, 0x80008000, 0x80005e03, 396); 
TEST_RR_OP( 100 , rcrsa16, 0x4bb4e986, 0x1768d30e, 0xffff8000, 400); 
TEST_RR_OP( 101 , rcrsa16, 0x0000c000, 0xffff0000, 0x8000ffff, 404); 
TEST_RR_OP( 102 , rcrsa16, 0x12e53758, 0xa5caffff, 0x6eb18000, 408); 
TEST_RR_OP( 103 , rcrsa16, 0x0000d0d2, 0x80008000, 0x21a58000, 412); 
TEST_RR_OP( 104 , rcrsa16, 0x0000e02d, 0x00008000, 0x405affff, 416); 
TEST_RR_OP( 105 , rcrsa16, 0x0000a296, 0xffff8f86, 0xb5a6ffff, 420); 
TEST_RR_OP( 106 , rcrsa16, 0x170a8000, 0x2e138000, 0x8000ffff, 424); 
TEST_RR_OP( 107 , rcrsa16, 0x0000d67a, 0x80008000, 0x2cf58000, 428); 
TEST_RR_OP( 108 , rcrsa16, 0x00008000, 0x00008000, 0x8000ffff, 432); 
TEST_RR_OP( 109 , rcrsa16, 0x0000ffff, 0x0000ffff, 0xffff0000, 436); 
TEST_RR_OP( 110 , rcrsa16, 0x62948000, 0x45288000, 0x80008000, 440); 
TEST_RR_OP( 111 , rcrsa16, 0xd2e88000, 0x80108000, 0x8000da3f, 444); 
TEST_RR_OP( 112 , rcrsa16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 448); 
TEST_RR_OP( 113 , rcrsa16, 0x1a40ffff, 0xb4810000, 0xffff8000, 452); 
TEST_RR_OP( 114 , rcrsa16, 0xc0008000, 0x80008000, 0x80000000, 456); 
TEST_RR_OP( 115 , rcrsa16, 0x110affff, 0xffffffff, 0xffffddea, 460); 
TEST_RR_OP( 116 , rcrsa16, 0x2c9e264c, 0x593c0000, 0x4c990000, 464); 
TEST_RR_OP( 117 , rcrsa16, 0xffffffff, 0xffffffff, 0xffff0000, 468); 
TEST_RR_OP( 118 , rcrsa16, 0x169dffff, 0xad3bffff, 0x00008000, 472); 
TEST_RR_OP( 119 , rcrsa16, 0x2739152b, 0x4e732a56, 0x00000000, 476); 
TEST_RR_OP( 120 , rcrsa16, 0xc000d525, 0x80002a4a, 0x80000000, 480); 
TEST_RR_OP( 121 , rcrsa16, 0x4000ebb2, 0x00005765, 0x80008000, 484); 
TEST_RR_OP( 122 , rcrsa16, 0xc746c09e, 0x8000013d, 0x8000f173, 488); 
TEST_RR_OP( 123 , rcrsa16, 0x0000938c, 0xffffa718, 0x8000ffff, 492); 
TEST_RR_OP( 124 , rcrsa16, 0x1778ffff, 0x2ef1ffff, 0x00000000, 496); 
TEST_RR_OP( 125 , rcrsa16, 0xc000ffff, 0x8000ffff, 0xffffffff, 500); 
TEST_RR_OP( 126 , rcrsa16, 0x4000c000, 0x00000000, 0x80008000, 504); 
TEST_RR_OP( 127 , rcrsa16, 0xe760ffff, 0xcec00000, 0xffff0000, 508); 
TEST_RR_OP( 128 , rcrsa16, 0xd995af1c, 0xb32ade38, 0x8000ffff, 512); 
TEST_RR_OP( 129 , rcrsa16, 0x0000d4b3, 0x0000a967, 0x00000000, 516); 
TEST_RR_OP( 130 , rcrsa16, 0x3fffd01c, 0xffff8000, 0x20398000, 520); 
TEST_RR_OP( 131 , rcrsa16, 0x00001e65, 0x8000ffff, 0x3ccb8000, 524); 
TEST_RR_OP( 132 , rcrsa16, 0x0000c000, 0x80000000, 0x80008000, 528); 
TEST_RR_OP( 133 , rcrsa16, 0xc000ffff, 0x80000000, 0xffffffff, 532); 
TEST_RR_OP( 134 , rcrsa16, 0xc000db63, 0x80000000, 0xb6c6ffff, 536); 
TEST_RR_OP( 135 , rcrsa16, 0x0000fb4d, 0x0000ffff, 0xf69c0000, 540); 
TEST_RR_OP( 136 , rcrsa16, 0x0000ffff, 0xffff0000, 0xffffffff, 544); 
TEST_RR_OP( 137 , rcrsa16, 0x0000c000, 0x00000000, 0x80000000, 548); 
TEST_RR_OP( 138 , rcrsa16, 0x4000ccad, 0x0000995b, 0xffff8000, 552); 
TEST_RR_OP( 139 , rcrsa16, 0xff5b0000, 0xfeb60000, 0x0000ffff, 556); 
TEST_RR_OP( 140 , rcrsa16, 0x00000000, 0x80000000, 0x00008000, 560); 
TEST_RR_OP( 141 , rcrsa16, 0x4000bfff, 0x0000ffff, 0x80008000, 564); 
TEST_RR_OP( 142 , rcrsa16, 0x23cbc968, 0x00000000, 0x92d1b869, 568); 
TEST_RR_OP( 143 , rcrsa16, 0x74ff0000, 0x6a800000, 0x00008081, 572); 
TEST_RR_OP( 144 , rcrsa16, 0xc6d702e1, 0x800005c4, 0xfffff252, 576); 
TEST_RR_OP( 145 , rcrsa16, 0xc000ffff, 0x8000ffff, 0x00000000, 580); 
TEST_RR_OP( 146 , rcrsa16, 0x3eaaf41b, 0xfd54e837, 0x00008000, 584); 
TEST_RR_OP( 147 , rcrsa16, 0xc000f31b, 0x80000000, 0xe6360000, 588); 
TEST_RR_OP( 148 , rcrsa16, 0xc000e757, 0x8000a7bc, 0x26f20000, 592); 
TEST_RR_OP( 149 , rcrsa16, 0xecf18000, 0xd9e18000, 0x8000ffff, 596); 
TEST_RR_OP( 150 , rcrsa16, 0x0000c000, 0x80000000, 0x80008000, 600); 
TEST_RR_OP( 151 , rcrsa16, 0x00000000, 0x00000000, 0x00000000, 604); 
TEST_RR_OP( 152 , rcrsa16, 0xdb2914e6, 0x800029cd, 0xffffc9ad, 608); 
TEST_RR_OP( 153 , rcrsa16, 0x3b52bfff, 0xf6a58000, 0xffff8000, 612); 
TEST_RR_OP( 154 , rcrsa16, 0xf70af9a5, 0xee15734b, 0x80000000, 616); 
TEST_RR_OP( 155 , rcrsa16, 0xc0001624, 0x8000d125, 0x5b240000, 620); 
TEST_RR_OP( 156 , rcrsa16, 0xc3aac000, 0x00008000, 0x000078ab, 624); 
TEST_RR_OP( 157 , rcrsa16, 0x0000bfff, 0x8000ffff, 0x80008000, 628); 
TEST_RR_OP( 158 , rcrsa16, 0x00000000, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , rcrsa16, 0x0000bd41, 0xffffba42, 0xc040ffff, 636); 
TEST_RR_OP( 160 , rcrsa16, 0x3fffd179, 0xffff0000, 0xa2f38000, 640); 
TEST_RR_OP( 161 , rcrsa16, 0x0000c000, 0xffff8000, 0x0000ffff, 644); 
TEST_RR_OP( 162 , rcrsa16, 0x1d3e8000, 0xcbee8000, 0x80009172, 648); 
TEST_RR_OP( 163 , rcrsa16, 0x0000bfff, 0x8000ffff, 0x80008000, 652); 
TEST_RR_OP( 164 , rcrsa16, 0xce04c000, 0xffff0000, 0x800063f7, 656); 
TEST_RR_OP( 165 , rcrsa16, 0xd4b7ffff, 0x8000ffff, 0x0000d692, 660); 
TEST_RR_OP( 166 , rcrsa16, 0xd2240000, 0x00000000, 0x00005bb8, 664); 
TEST_RR_OP( 167 , rcrsa16, 0x09b73e34, 0x0000ffff, 0x7c6aec91, 668); 
TEST_RR_OP( 168 , rcrsa16, 0xcf18c000, 0xffff0000, 0x800061ce, 672); 
TEST_RR_OP( 169 , rcrsa16, 0x3fff4371, 0xffff59d8, 0x2d0b8000, 676); 
TEST_RR_OP( 170 , rcrsa16, 0x3fffc000, 0xffff8000, 0x00008000, 680); 
TEST_RR_OP( 171 , rcrsa16, 0x0000daf9, 0xffffc28f, 0xf364ffff, 684); 
TEST_RR_OP( 172 , rcrsa16, 0x0000db18, 0xffff9c95, 0x199cffff, 688); 
TEST_RR_OP( 173 , rcrsa16, 0xe825c000, 0xd04b8000, 0x00000000, 692); 
TEST_RR_OP( 174 , rcrsa16, 0x133abfff, 0x2674ffff, 0x8000ffff, 696); 
TEST_RR_OP( 175 , rcrsa16, 0x3fff1eef, 0xffff0000, 0x3ddf8000, 700); 
TEST_RR_OP( 176 , rcrsa16, 0x0000cac4, 0x00000000, 0x95890000, 704); 
TEST_RR_OP( 177 , rcrsa16, 0xdc71bfff, 0xb8e2ffff, 0x80000000, 708); 
TEST_RR_OP( 178 , rcrsa16, 0xdf09ffff, 0xffffffff, 0x000041ec, 712); 
TEST_RR_OP( 179 , rcrsa16, 0x0ac1c000, 0x15810000, 0x8000ffff, 716); 
TEST_RR_OP( 180 , rcrsa16, 0x4000c000, 0x00008000, 0x00008000, 720); 
TEST_RR_OP( 181 , rcrsa16, 0x0000fa69, 0x0000f4d2, 0x00000000, 724); 
TEST_RR_OP( 182 , rcrsa16, 0xc0008000, 0x80008000, 0x80000000, 728); 
TEST_RR_OP( 183 , rcrsa16, 0x3675c000, 0x00008000, 0x00009316, 732); 
TEST_RR_OP( 184 , rcrsa16, 0x3f29999c, 0x7e52b339, 0x80000000, 736); 
TEST_RR_OP( 185 , rcrsa16, 0x102ff640, 0xffffec80, 0x0000dfa0, 740); 
TEST_RR_OP( 186 , rcrsa16, 0x28640d74, 0xffff451e, 0xd5caaf37, 744); 
TEST_RR_OP( 187 , rcrsa16, 0x3fffe30d, 0xffff8000, 0x461a8000, 748); 
TEST_RR_OP( 188 , rcrsa16, 0x008ffa05, 0x011dffff, 0xf40cffff, 752); 
TEST_RR_OP( 189 , rcrsa16, 0x0000ccb5, 0xffff196b, 0x8000ffff, 756); 
TEST_RR_OP( 190 , rcrsa16, 0xffff9477, 0xffff8000, 0xa8ef0000, 760); 
TEST_RR_OP( 191 , rcrsa16, 0xd5bcffff, 0xffffffff, 0x00005487, 764); 
TEST_RR_OP( 192 , rcrsa16, 0xc3b9d720, 0x8771ae40, 0x0000ffff, 768); 
TEST_RR_OP( 193 , rcrsa16, 0x4000c000, 0x00000000, 0x80008000, 772); 
TEST_RR_OP( 194 , rcrsa16, 0x0000ffff, 0x80000000, 0xffff8000, 776); 
TEST_RR_OP( 195 , rcrsa16, 0x0000c000, 0x80008000, 0x00008000, 780); 
TEST_RR_OP( 196 , rcrsa16, 0x4000c220, 0x0000ffff, 0x84418000, 784); 
TEST_RR_OP( 197 , rcrsa16, 0x0000d2fc, 0x0000a8ad, 0xfd4cffff, 788); 
TEST_RR_OP( 198 , rcrsa16, 0x0521e4b7, 0x99aa496f, 0x80008f67, 792); 
TEST_RR_OP( 199 , rcrsa16, 0x05f00b93, 0xffffffff, 0x1728f41f, 796); 

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
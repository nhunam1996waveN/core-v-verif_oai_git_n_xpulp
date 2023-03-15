# See LICENSE for license details.
#*****************************************************************************
# urstsa16.S
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

TEST_RR_OP( 2 , urstsa16, 0x2734ad56, 0xffff8000, 0xb197daad, 8); 
TEST_RR_OP( 3 , urstsa16, 0x0000d380, 0xffffa701, 0xffffffff, 12); 
TEST_RR_OP( 4 , urstsa16, 0xfd91ffff, 0x8000ffff, 0x84ddffff, 16); 
TEST_RR_OP( 5 , urstsa16, 0x0bec8000, 0x552e8000, 0x3d568000, 20); 
TEST_RR_OP( 6 , urstsa16, 0x1f255821, 0x3e4a8000, 0x00003043, 24); 
TEST_RR_OP( 7 , urstsa16, 0xc2c786c6, 0x80008d8d, 0xfa718000, 28); 
TEST_RR_OP( 8 , urstsa16, 0xde6e7fff, 0x0000ffff, 0x43240000, 32); 
TEST_RR_OP( 9 , urstsa16, 0x3fffa7bf, 0xffff9e16, 0x8000b168, 36); 
TEST_RR_OP( 10 , urstsa16, 0x0000bfff, 0xffff8000, 0xffffffff, 40); 
TEST_RR_OP( 11 , urstsa16, 0x00004964, 0x00000000, 0x000092c9, 44); 
TEST_RR_OP( 12 , urstsa16, 0xe1224000, 0x80000000, 0xbdbc8000, 48); 
TEST_RR_OP( 13 , urstsa16, 0x3fff0e9e, 0xffff1d3c, 0x80000000, 52); 
TEST_RR_OP( 14 , urstsa16, 0xf1177fff, 0x9c170000, 0xb9e9ffff, 56); 
TEST_RR_OP( 15 , urstsa16, 0xfbcbffff, 0xf795ffff, 0xffffffff, 60); 
TEST_RR_OP( 16 , urstsa16, 0x7fff0000, 0xffff0000, 0x00000000, 64); 
TEST_RR_OP( 17 , urstsa16, 0x2e7e71bb, 0x80008000, 0x23036376, 68); 
TEST_RR_OP( 18 , urstsa16, 0x0000cbc8, 0x00009791, 0x0000ffff, 72); 
TEST_RR_OP( 19 , urstsa16, 0x4feebfff, 0xffffffff, 0x60238000, 76); 
TEST_RR_OP( 20 , urstsa16, 0x14174000, 0xffff0000, 0xd7d18000, 80); 
TEST_RR_OP( 21 , urstsa16, 0x7fffbfff, 0xffffffff, 0x00008000, 84); 
TEST_RR_OP( 22 , urstsa16, 0x3fff4000, 0xffff8000, 0x80000000, 88); 
TEST_RR_OP( 23 , urstsa16, 0x9cec7fff, 0x39d8ffff, 0xffff0000, 92); 
TEST_RR_OP( 24 , urstsa16, 0x8000bfff, 0x0000ffff, 0xffff8000, 96); 
TEST_RR_OP( 25 , urstsa16, 0x6a5b4b35, 0xd4b70000, 0x0000966a, 100); 
TEST_RR_OP( 26 , urstsa16, 0x387c6d7d, 0x70f8dafb, 0x00000000, 104); 
TEST_RR_OP( 27 , urstsa16, 0x6d76bc48, 0xdaec7892, 0x0000ffff, 108); 
TEST_RR_OP( 28 , urstsa16, 0x2bfa4000, 0x80000000, 0x280b8000, 112); 
TEST_RR_OP( 29 , urstsa16, 0x00007b68, 0x800076d0, 0x80008000, 116); 
TEST_RR_OP( 30 , urstsa16, 0x4000a52f, 0x8000ffff, 0x00004a5f, 120); 
TEST_RR_OP( 31 , urstsa16, 0xf8c58000, 0x718a8000, 0x80008000, 124); 
TEST_RR_OP( 32 , urstsa16, 0x3fff5995, 0xffff8000, 0x8000332a, 128); 
TEST_RR_OP( 33 , urstsa16, 0xc0008000, 0x00008000, 0x80008000, 132); 
TEST_RR_OP( 34 , urstsa16, 0x3fff19cb, 0xffff0000, 0x80003396, 136); 
TEST_RR_OP( 35 , urstsa16, 0x376a8000, 0x6ed58000, 0x00008000, 140); 
TEST_RR_OP( 36 , urstsa16, 0xc0904000, 0x811f0000, 0xffff8000, 144); 
TEST_RR_OP( 37 , urstsa16, 0xde6a4af2, 0x800095e4, 0xc32c0000, 148); 
TEST_RR_OP( 38 , urstsa16, 0x96ab4000, 0x00000000, 0xd2a98000, 152); 
TEST_RR_OP( 39 , urstsa16, 0x8a94caf4, 0x1527ffff, 0xffff95ea, 156); 
TEST_RR_OP( 40 , urstsa16, 0x1cb81460, 0x80000000, 0x468f28c1, 160); 
TEST_RR_OP( 41 , urstsa16, 0xd7c63da4, 0x80002a97, 0xd07350b2, 164); 
TEST_RR_OP( 42 , urstsa16, 0xcf0abfff, 0x1e14ffff, 0x80008000, 168); 
TEST_RR_OP( 43 , urstsa16, 0x3fffbfff, 0xffff8000, 0x8000ffff, 172); 
TEST_RR_OP( 44 , urstsa16, 0xc75c4000, 0x80008000, 0xf1480000, 176); 
TEST_RR_OP( 45 , urstsa16, 0x5be50000, 0xffff0000, 0x48350000, 180); 
TEST_RR_OP( 46 , urstsa16, 0x065b7fff, 0x8cb7ffff, 0x80000000, 184); 
TEST_RR_OP( 47 , urstsa16, 0x3fff7fff, 0xffffffff, 0x80000000, 188); 
TEST_RR_OP( 48 , urstsa16, 0x2a1abfff, 0xd434ffff, 0x80008000, 192); 
TEST_RR_OP( 49 , urstsa16, 0x0000c09e, 0xffff97fd, 0xffffe93f, 196); 
TEST_RR_OP( 50 , urstsa16, 0x00006289, 0x80000000, 0x8000c513, 200); 
TEST_RR_OP( 51 , urstsa16, 0x00008976, 0x000012ee, 0x0000ffff, 204); 
TEST_RR_OP( 52 , urstsa16, 0x00008000, 0x00008000, 0x00008000, 208); 
TEST_RR_OP( 53 , urstsa16, 0x0eaae5f7, 0xffffffff, 0xe2aacbef, 212); 
TEST_RR_OP( 54 , urstsa16, 0xe5138000, 0x3c4f8000, 0x72288000, 216); 
TEST_RR_OP( 55 , urstsa16, 0x00007fff, 0x8000ffff, 0x80000000, 220); 
TEST_RR_OP( 56 , urstsa16, 0xb0dc8000, 0x098e8000, 0xa7d58000, 224); 
TEST_RR_OP( 57 , urstsa16, 0x3c577fff, 0x8000ffff, 0x07520000, 228); 
TEST_RR_OP( 58 , urstsa16, 0xba4846bd, 0x00008d7a, 0x8b6f0000, 232); 
TEST_RR_OP( 59 , urstsa16, 0x00007fff, 0xffffffff, 0xffff0000, 236); 
TEST_RR_OP( 60 , urstsa16, 0x3fffffff, 0xffffffff, 0x8000ffff, 240); 
TEST_RR_OP( 61 , urstsa16, 0x0000846e, 0xffffffff, 0xffff08dd, 244); 
TEST_RR_OP( 62 , urstsa16, 0xd9a7445a, 0xb34d08b5, 0xffff8000, 248); 
TEST_RR_OP( 63 , urstsa16, 0x40000000, 0x80000000, 0x00000000, 252); 
TEST_RR_OP( 64 , urstsa16, 0xc000ffff, 0x0000ffff, 0x8000ffff, 256); 
TEST_RR_OP( 65 , urstsa16, 0xad795f8a, 0x103f8000, 0xb54d3f14, 260); 
TEST_RR_OP( 66 , urstsa16, 0x00008a49, 0x80008000, 0x80009492, 264); 
TEST_RR_OP( 67 , urstsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 268); 
TEST_RR_OP( 68 , urstsa16, 0x00004cd4, 0x800019a9, 0x80008000, 272); 
TEST_RR_OP( 69 , urstsa16, 0xfb1d4000, 0xf63a0000, 0xffff8000, 276); 
TEST_RR_OP( 70 , urstsa16, 0x0436eb80, 0xffffd701, 0xf792ffff, 280); 
TEST_RR_OP( 71 , urstsa16, 0x3fff0000, 0xffff0000, 0x80000000, 284); 
TEST_RR_OP( 72 , urstsa16, 0xf4654726, 0x68ca8e4d, 0x80000000, 288); 
TEST_RR_OP( 73 , urstsa16, 0x7fff7fff, 0xffff0000, 0x0000ffff, 292); 
TEST_RR_OP( 74 , urstsa16, 0x4000bfff, 0x80008000, 0x0000ffff, 296); 
TEST_RR_OP( 75 , urstsa16, 0x7fff223b, 0xffff4476, 0x00000000, 300); 
TEST_RR_OP( 76 , urstsa16, 0x80004d03, 0x0000349c, 0xffff656b, 304); 
TEST_RR_OP( 77 , urstsa16, 0x4f0af477, 0xe09de8ef, 0x4289ffff, 308); 
TEST_RR_OP( 78 , urstsa16, 0x80000000, 0x00000000, 0xffff0000, 312); 
TEST_RR_OP( 79 , urstsa16, 0x4000d097, 0x8000a12f, 0x0000ffff, 316); 
TEST_RR_OP( 80 , urstsa16, 0x31febfff, 0xffffffff, 0x9c028000, 320); 
TEST_RR_OP( 81 , urstsa16, 0x8005bfff, 0x000a8000, 0xffffffff, 324); 
TEST_RR_OP( 82 , urstsa16, 0xc00092f1, 0x00008000, 0x8000a5e3, 328); 
TEST_RR_OP( 83 , urstsa16, 0x0000ffff, 0xffffffff, 0xffffffff, 332); 
TEST_RR_OP( 84 , urstsa16, 0x12194000, 0x8e5b8000, 0x6a290000, 336); 
TEST_RR_OP( 85 , urstsa16, 0x0000bfff, 0xffff8000, 0xffffffff, 340); 
TEST_RR_OP( 86 , urstsa16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 344); 
TEST_RR_OP( 87 , urstsa16, 0x000089c7, 0x8000938f, 0x80008000, 348); 
TEST_RR_OP( 88 , urstsa16, 0x22e40000, 0xc5c90000, 0x80000000, 352); 
TEST_RR_OP( 89 , urstsa16, 0xf37f4000, 0x00008000, 0x19010000, 356); 
TEST_RR_OP( 90 , urstsa16, 0x1e947686, 0xffff6d0d, 0xc2d78000, 360); 
TEST_RR_OP( 91 , urstsa16, 0x3fffbfb3, 0xffff7f67, 0x8000ffff, 364); 
TEST_RR_OP( 92 , urstsa16, 0x4000bfff, 0x80008000, 0x0000ffff, 368); 
TEST_RR_OP( 93 , urstsa16, 0xcc46c21e, 0x988b843e, 0xffffffff, 372); 
TEST_RR_OP( 94 , urstsa16, 0x80004000, 0x00008000, 0xffff0000, 376); 
TEST_RR_OP( 95 , urstsa16, 0x2baebfff, 0xd75dffff, 0x80008000, 380); 
TEST_RR_OP( 96 , urstsa16, 0x0ee30000, 0x1dc70000, 0x00000000, 384); 
TEST_RR_OP( 97 , urstsa16, 0xa5c5bfff, 0x4b8a8000, 0xffffffff, 388); 
TEST_RR_OP( 98 , urstsa16, 0x7fff4000, 0xffff0000, 0x00008000, 392); 
TEST_RR_OP( 99 , urstsa16, 0x7fffbfff, 0xffff8000, 0x0000ffff, 396); 
TEST_RR_OP( 100 , urstsa16, 0x00004000, 0x80008000, 0x80000000, 400); 
TEST_RR_OP( 101 , urstsa16, 0xc0000000, 0x00000000, 0x80000000, 404); 
TEST_RR_OP( 102 , urstsa16, 0x00000000, 0x00000000, 0x00000000, 408); 
TEST_RR_OP( 103 , urstsa16, 0x3fffffff, 0xffffffff, 0x8000ffff, 412); 
TEST_RR_OP( 104 , urstsa16, 0xc90bbfff, 0x00008000, 0x6de9ffff, 416); 
TEST_RR_OP( 105 , urstsa16, 0x00004000, 0x80008000, 0x80000000, 420); 
TEST_RR_OP( 106 , urstsa16, 0x21090000, 0xffff0000, 0xbdec0000, 424); 
TEST_RR_OP( 107 , urstsa16, 0x7fff4000, 0xffff8000, 0x00000000, 428); 
TEST_RR_OP( 108 , urstsa16, 0x21d57fff, 0xffff0000, 0xbc55ffff, 432); 
TEST_RR_OP( 109 , urstsa16, 0x31fb7fff, 0xffff0000, 0x9c09ffff, 436); 
TEST_RR_OP( 110 , urstsa16, 0x000083a9, 0x8000783e, 0x80008f15, 440); 
TEST_RR_OP( 111 , urstsa16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 444); 
TEST_RR_OP( 112 , urstsa16, 0x06deffff, 0xffffffff, 0xf243ffff, 448); 
TEST_RR_OP( 113 , urstsa16, 0x96a87bcf, 0x0000779e, 0xd2b08000, 452); 
TEST_RR_OP( 114 , urstsa16, 0x80005a48, 0x00008000, 0xffff3491, 456); 
TEST_RR_OP( 115 , urstsa16, 0x80001a0f, 0x0000341e, 0xffff0000, 460); 
TEST_RR_OP( 116 , urstsa16, 0x00004150, 0x80008000, 0x800002a1, 464); 
TEST_RR_OP( 117 , urstsa16, 0x0644c4e8, 0x3ae7ffff, 0x2e5f89d2, 468); 
TEST_RR_OP( 118 , urstsa16, 0x0000bfff, 0x80008000, 0x8000ffff, 472); 
TEST_RR_OP( 119 , urstsa16, 0xc0007fff, 0x0000ffff, 0x80000000, 476); 
TEST_RR_OP( 120 , urstsa16, 0x1643a139, 0x2c86ffff, 0x00004273, 480); 
TEST_RR_OP( 121 , urstsa16, 0xeda34000, 0x5b460000, 0x80008000, 484); 
TEST_RR_OP( 122 , urstsa16, 0x2d254b6d, 0xda4b101c, 0x800086be, 488); 
TEST_RR_OP( 123 , urstsa16, 0x00003a7a, 0xffff0000, 0xffff74f4, 492); 
TEST_RR_OP( 124 , urstsa16, 0x0000ffff, 0x8000ffff, 0x8000ffff, 496); 
TEST_RR_OP( 125 , urstsa16, 0x00008000, 0x00008000, 0x00008000, 500); 
TEST_RR_OP( 126 , urstsa16, 0x5eab4000, 0xbd578000, 0x00000000, 504); 
TEST_RR_OP( 127 , urstsa16, 0xc0000000, 0x80000000, 0xffff0000, 508); 
TEST_RR_OP( 128 , urstsa16, 0x0000d248, 0x8000e490, 0x8000c000, 512); 
TEST_RR_OP( 129 , urstsa16, 0x6d42bfff, 0xffffffff, 0x257a8000, 516); 
TEST_RR_OP( 130 , urstsa16, 0xc000bfff, 0x8000ffff, 0xffff8000, 520); 
TEST_RR_OP( 131 , urstsa16, 0xccc8b8b8, 0x19907171, 0x8000ffff, 524); 
TEST_RR_OP( 132 , urstsa16, 0x00004000, 0x80000000, 0x80008000, 528); 
TEST_RR_OP( 133 , urstsa16, 0x00008000, 0x00008000, 0x00008000, 532); 
TEST_RR_OP( 134 , urstsa16, 0x0000ab4f, 0x8000d69f, 0x80008000, 536); 
TEST_RR_OP( 135 , urstsa16, 0x31f18000, 0x63e28000, 0x00008000, 540); 
TEST_RR_OP( 136 , urstsa16, 0xdaf04000, 0x60b00000, 0xaacf8000, 544); 
TEST_RR_OP( 137 , urstsa16, 0x80007fff, 0x0000ffff, 0xffff0000, 548); 
TEST_RR_OP( 138 , urstsa16, 0x40005f97, 0x80006890, 0x0000569f, 552); 
TEST_RR_OP( 139 , urstsa16, 0xebeaa45e, 0x57d455bb, 0x8000f301, 556); 
TEST_RR_OP( 140 , urstsa16, 0xd4914685, 0x80008406, 0xd6dd0904, 560); 
TEST_RR_OP( 141 , urstsa16, 0xc9c6bfff, 0x938cffff, 0xffff8000, 564); 
TEST_RR_OP( 142 , urstsa16, 0x00002afd, 0x000055fb, 0x00000000, 568); 
TEST_RR_OP( 143 , urstsa16, 0x3fff4000, 0xffff0000, 0x80008000, 572); 
TEST_RR_OP( 144 , urstsa16, 0xf4987fff, 0x8000ffff, 0x96d00000, 576); 
TEST_RR_OP( 145 , urstsa16, 0x80004000, 0x00008000, 0xffff0000, 580); 
TEST_RR_OP( 146 , urstsa16, 0xc0005755, 0x00002eaa, 0x80008000, 584); 
TEST_RR_OP( 147 , urstsa16, 0x40006535, 0x80000000, 0x0000ca6a, 588); 
TEST_RR_OP( 148 , urstsa16, 0xc000ffff, 0x0000ffff, 0x8000ffff, 592); 
TEST_RR_OP( 149 , urstsa16, 0x24a4ffff, 0xc949ffff, 0x8000ffff, 596); 
TEST_RR_OP( 150 , urstsa16, 0xc000ea55, 0x8000d4ab, 0xffffffff, 600); 
TEST_RR_OP( 151 , urstsa16, 0x8000bfff, 0x00008000, 0xffffffff, 604); 
TEST_RR_OP( 152 , urstsa16, 0x40004e62, 0x80001cc5, 0x00008000, 608); 
TEST_RR_OP( 153 , urstsa16, 0xc0007fff, 0x0000ffff, 0x80000000, 612); 
TEST_RR_OP( 154 , urstsa16, 0xc0007fff, 0x8000ffff, 0xffff0000, 616); 
TEST_RR_OP( 155 , urstsa16, 0x33afffff, 0xe75fffff, 0x8000ffff, 620); 
TEST_RR_OP( 156 , urstsa16, 0xc0008000, 0x00008000, 0x80008000, 624); 
TEST_RR_OP( 157 , urstsa16, 0xc0006486, 0x800005ea, 0xffffc323, 628); 
TEST_RR_OP( 158 , urstsa16, 0xc4ac0000, 0x89570000, 0xffff0000, 632); 
TEST_RR_OP( 159 , urstsa16, 0xd3d74389, 0xa7ae7f6f, 0xffff07a3, 636); 
TEST_RR_OP( 160 , urstsa16, 0xf89f4000, 0x713e8000, 0x80000000, 640); 
TEST_RR_OP( 161 , urstsa16, 0x98ac1cb9, 0x31570000, 0xffff3972, 644); 
TEST_RR_OP( 162 , urstsa16, 0xb186bfff, 0x00008000, 0x9cf3ffff, 648); 
TEST_RR_OP( 163 , urstsa16, 0x2930422d, 0xffff0000, 0xad9f845b, 652); 
TEST_RR_OP( 164 , urstsa16, 0xc0007fff, 0x80000000, 0xffffffff, 656); 
TEST_RR_OP( 165 , urstsa16, 0x00004000, 0x00000000, 0x00008000, 660); 
TEST_RR_OP( 166 , urstsa16, 0x80004000, 0x00008000, 0xffff0000, 664); 
TEST_RR_OP( 167 , urstsa16, 0x00004000, 0x80008000, 0x80000000, 668); 
TEST_RR_OP( 168 , urstsa16, 0x755d7fff, 0xeabb0000, 0x0000ffff, 672); 
TEST_RR_OP( 169 , urstsa16, 0x00008000, 0x80008000, 0x80008000, 676); 
TEST_RR_OP( 170 , urstsa16, 0xc000bfff, 0x00008000, 0x8000ffff, 680); 
TEST_RR_OP( 171 , urstsa16, 0x7fffbfff, 0xffffffff, 0x00008000, 684); 
TEST_RR_OP( 172 , urstsa16, 0xf06b9c79, 0x0000ffff, 0x1f2a38f4, 688); 
TEST_RR_OP( 173 , urstsa16, 0x28e9bfff, 0x51d2ffff, 0x00008000, 692); 
TEST_RR_OP( 174 , urstsa16, 0x7fff4e4e, 0xffff1c9c, 0x00008000, 696); 
TEST_RR_OP( 175 , urstsa16, 0x4fa98713, 0xfffffce9, 0x60ac113e, 700); 
TEST_RR_OP( 176 , urstsa16, 0xebb68000, 0x00008000, 0x28938000, 704); 
TEST_RR_OP( 177 , urstsa16, 0x3fff7fff, 0xffff0000, 0x8000ffff, 708); 
TEST_RR_OP( 178 , urstsa16, 0xc000c4c8, 0x80009a71, 0xffffef20, 712); 
TEST_RR_OP( 179 , urstsa16, 0x573ee40e, 0xffffffff, 0x5183c81d, 716); 
TEST_RR_OP( 180 , urstsa16, 0x40007fff, 0x8000ffff, 0x00000000, 720); 
TEST_RR_OP( 181 , urstsa16, 0x0ea35f36, 0x9d468000, 0x80003e6c, 724); 
TEST_RR_OP( 182 , urstsa16, 0x3fff4000, 0xffff0000, 0x80008000, 728); 
TEST_RR_OP( 183 , urstsa16, 0xc31ebfff, 0x063dffff, 0x80008000, 732); 
TEST_RR_OP( 184 , urstsa16, 0xc0004304, 0x00008609, 0x80000000, 736); 
TEST_RR_OP( 185 , urstsa16, 0x40009957, 0x80008000, 0x0000b2af, 740); 
TEST_RR_OP( 186 , urstsa16, 0xff074000, 0xfe0e0000, 0xffff8000, 744); 
TEST_RR_OP( 187 , urstsa16, 0x09270fe9, 0x924f0000, 0x80001fd2, 748); 
TEST_RR_OP( 188 , urstsa16, 0xd11bbfff, 0xa235ffff, 0xffff8000, 752); 
TEST_RR_OP( 189 , urstsa16, 0x0000bfff, 0xffffffff, 0xffff8000, 756); 
TEST_RR_OP( 190 , urstsa16, 0x00004000, 0x80000000, 0x80008000, 760); 
TEST_RR_OP( 191 , urstsa16, 0x0000bfff, 0xffffffff, 0xffff8000, 764); 
TEST_RR_OP( 192 , urstsa16, 0x06187fff, 0x8c30ffff, 0x80000000, 768); 
TEST_RR_OP( 193 , urstsa16, 0x7fff7fff, 0xffff0000, 0x0000ffff, 772); 
TEST_RR_OP( 194 , urstsa16, 0x0ad44000, 0x26950000, 0x10ec8000, 776); 
TEST_RR_OP( 195 , urstsa16, 0x7fff31b3, 0xffff0000, 0x00006366, 780); 
TEST_RR_OP( 196 , urstsa16, 0x3fff7fff, 0xffff0000, 0x8000ffff, 784); 
TEST_RR_OP( 197 , urstsa16, 0x3fff4000, 0xffff0000, 0x80008000, 788); 
TEST_RR_OP( 198 , urstsa16, 0x11e44c14, 0xa3c81829, 0x80008000, 792); 
TEST_RR_OP( 199 , urstsa16, 0x7fff7fff, 0xffff0000, 0x0000ffff, 796); 

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
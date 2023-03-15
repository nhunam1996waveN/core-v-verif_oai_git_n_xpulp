# See LICENSE for license details.
#*****************************************************************************
# smmwt.u.S
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

TEST_RR_OP( 2 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 8); 
TEST_RR_OP( 3 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 12); 
TEST_RR_OP( 4 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , smmwt.u, 0xffffdd35, 0x22ca94da, 0xffffffff, 24); 
TEST_RR_OP( 7 , smmwt.u, 0x00000000, 0xa0e3409f, 0x00000000, 28); 
TEST_RR_OP( 8 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 32); 
TEST_RR_OP( 9 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 36); 
TEST_RR_OP( 10 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 40); 
TEST_RR_OP( 11 , smmwt.u, 0xd960ebc6, 0x9d7dad21, 0x645e1e54, 44); 
TEST_RR_OP( 12 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , smmwt.u, 0x00000f64, 0xf09c3fd3, 0xffffffff, 60); 
TEST_RR_OP( 16 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 64); 
TEST_RR_OP( 17 , smmwt.u, 0xda5fdb3d, 0x7293ea7b, 0xabefbee5, 68); 
TEST_RR_OP( 18 , smmwt.u, 0xd29a3c8e, 0x5acb86e5, 0x80000000, 72); 
TEST_RR_OP( 19 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 76); 
TEST_RR_OP( 20 , smmwt.u, 0xe9cc0000, 0x80000000, 0x2c68360f, 80); 
TEST_RR_OP( 21 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 84); 
TEST_RR_OP( 22 , smmwt.u, 0xd47125c5, 0x571db477, 0x80000000, 88); 
TEST_RR_OP( 23 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 92); 
TEST_RR_OP( 24 , smmwt.u, 0xd01f3625, 0x5fc193b7, 0x80000000, 96); 
TEST_RR_OP( 25 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 100); 
TEST_RR_OP( 26 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 104); 
TEST_RR_OP( 27 , smmwt.u, 0x000014d0, 0xeb3020f8, 0xffffffff, 108); 
TEST_RR_OP( 28 , smmwt.u, 0x12e58000, 0x80000000, 0xda3560c8, 112); 
TEST_RR_OP( 29 , smmwt.u, 0x00000000, 0x00000000, 0x34b13971, 116); 
TEST_RR_OP( 30 , smmwt.u, 0x00000214, 0xfdebb9cc, 0xffffffff, 120); 
TEST_RR_OP( 31 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 124); 
TEST_RR_OP( 32 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 128); 
TEST_RR_OP( 33 , smmwt.u, 0x000043cb, 0xbc3526c1, 0xffffffff, 132); 
TEST_RR_OP( 34 , smmwt.u, 0x00000000, 0x00000000, 0xaf12c54c, 136); 
TEST_RR_OP( 35 , smmwt.u, 0xf634c934, 0x40f1ccc5, 0xd9659a53, 140); 
TEST_RR_OP( 36 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 144); 
TEST_RR_OP( 37 , smmwt.u, 0xf0b1a741, 0x1e9cb17f, 0x80000000, 148); 
TEST_RR_OP( 38 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 156); 
TEST_RR_OP( 40 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 160); 
TEST_RR_OP( 41 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 164); 
TEST_RR_OP( 42 , smmwt.u, 0x00000000, 0xef529d27, 0x00000000, 168); 
TEST_RR_OP( 43 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 172); 
TEST_RR_OP( 44 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 176); 
TEST_RR_OP( 45 , smmwt.u, 0x007b45a8, 0x17ece9b4, 0x05274d79, 180); 
TEST_RR_OP( 46 , smmwt.u, 0x17845399, 0xd0f758cf, 0x80000000, 184); 
TEST_RR_OP( 47 , smmwt.u, 0x00000000, 0x00000000, 0xe074503d, 188); 
TEST_RR_OP( 48 , smmwt.u, 0x00000000, 0x80000000, 0x00000000, 192); 
TEST_RR_OP( 49 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 196); 
TEST_RR_OP( 50 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 200); 
TEST_RR_OP( 51 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 204); 
TEST_RR_OP( 52 , smmwt.u, 0x3b344ef6, 0x89976215, 0x80000000, 208); 
TEST_RR_OP( 53 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 212); 
TEST_RR_OP( 54 , smmwt.u, 0x00000000, 0x80000000, 0x00000000, 216); 
TEST_RR_OP( 55 , smmwt.u, 0xe3a11f7d, 0x38bdc107, 0x80000000, 220); 
TEST_RR_OP( 56 , smmwt.u, 0xcf543e79, 0x6157830e, 0x80000000, 224); 
TEST_RR_OP( 57 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 228); 
TEST_RR_OP( 58 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 232); 
TEST_RR_OP( 59 , smmwt.u, 0x00000000, 0x954e398c, 0x00000000, 236); 
TEST_RR_OP( 60 , smmwt.u, 0xc7902536, 0x881ec6e0, 0x78854267, 240); 
TEST_RR_OP( 61 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 244); 
TEST_RR_OP( 62 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 248); 
TEST_RR_OP( 63 , smmwt.u, 0xfd8116e2, 0xcd8c9ffe, 0x0caa0a52, 252); 
TEST_RR_OP( 64 , smmwt.u, 0x00000000, 0x00000000, 0x71d82dc1, 256); 
TEST_RR_OP( 65 , smmwt.u, 0xd9ff9bdc, 0xa8d5121c, 0x6f9b1a03, 260); 
TEST_RR_OP( 66 , smmwt.u, 0x112b8000, 0x80000000, 0xdda9a434, 264); 
TEST_RR_OP( 67 , smmwt.u, 0xea7f94f0, 0x2b00d620, 0x80000000, 268); 
TEST_RR_OP( 68 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP( 69 , smmwt.u, 0x00000000, 0xffffffff, 0xeecd9e59, 276); 
TEST_RR_OP( 70 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , smmwt.u, 0xf2548000, 0x80000000, 0x1b57cdd0, 284); 
TEST_RR_OP( 72 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 288); 
TEST_RR_OP( 73 , smmwt.u, 0x00000000, 0x5206fc9c, 0x00000000, 292); 
TEST_RR_OP( 74 , smmwt.u, 0x00000000, 0x00000000, 0x9331e553, 296); 
TEST_RR_OP( 75 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 300); 
TEST_RR_OP( 76 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 304); 
TEST_RR_OP( 77 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 308); 
TEST_RR_OP( 78 , smmwt.u, 0x0c15cc8e, 0x40af8e8d, 0x2fd42ef8, 312); 
TEST_RR_OP( 79 , smmwt.u, 0x00000000, 0x80000000, 0x00000000, 316); 
TEST_RR_OP( 80 , smmwt.u, 0xf4cfaa68, 0xc260229a, 0x2e7b48c4, 320); 
TEST_RR_OP( 81 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , smmwt.u, 0x18a28000, 0x80000000, 0xcebbe1ab, 328); 
TEST_RR_OP( 83 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 332); 
TEST_RR_OP( 84 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 344); 
TEST_RR_OP( 87 , smmwt.u, 0x07d36f39, 0xf059218f, 0x80000000, 348); 
TEST_RR_OP( 88 , smmwt.u, 0xfe61f464, 0x08362cd2, 0xcd94e23f, 352); 
TEST_RR_OP( 89 , smmwt.u, 0xebd59bd3, 0x36f5cd80, 0xa212bf2c, 356); 
TEST_RR_OP( 90 , smmwt.u, 0x01be0400, 0x32ed8099, 0x08c2f0c4, 360); 
TEST_RR_OP( 91 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , smmwt.u, 0x0f22b338, 0x207b4a65, 0x774adeaf, 368); 
TEST_RR_OP( 93 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 376); 
TEST_RR_OP( 95 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 380); 
TEST_RR_OP( 96 , smmwt.u, 0x00000000, 0xffffffff, 0x12ff25c2, 384); 
TEST_RR_OP( 97 , smmwt.u, 0xecef8000, 0x80000000, 0x26218743, 388); 
TEST_RR_OP( 98 , smmwt.u, 0x00000000, 0x0ba757f3, 0x00000000, 392); 
TEST_RR_OP( 99 , smmwt.u, 0x14891794, 0xd6edd0d8, 0x80000000, 396); 
TEST_RR_OP( 100 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 400); 
TEST_RR_OP( 101 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , smmwt.u, 0x00005c4c, 0xa3b439ca, 0xffffffff, 408); 
TEST_RR_OP( 103 , smmwt.u, 0x00000000, 0x77b7140f, 0x00000000, 412); 
TEST_RR_OP( 104 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 416); 
TEST_RR_OP( 105 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 420); 
TEST_RR_OP( 106 , smmwt.u, 0x00000000, 0xd4fbad45, 0x00000000, 424); 
TEST_RR_OP( 107 , smmwt.u, 0x2dd10000, 0x80000000, 0xa45ee7b6, 428); 
TEST_RR_OP( 108 , smmwt.u, 0x00000000, 0x80000000, 0x00000000, 432); 
TEST_RR_OP( 109 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 436); 
TEST_RR_OP( 110 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 440); 
TEST_RR_OP( 111 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 444); 
TEST_RR_OP( 112 , smmwt.u, 0xee710000, 0x80000000, 0x231ee8fa, 448); 
TEST_RR_OP( 113 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , smmwt.u, 0x1f434164, 0xc1797d39, 0x80000000, 456); 
TEST_RR_OP( 115 , smmwt.u, 0xfb918000, 0x80000000, 0x08dde2d3, 460); 
TEST_RR_OP( 116 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 464); 
TEST_RR_OP( 117 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , smmwt.u, 0x40000000, 0x80000000, 0x80000000, 472); 
TEST_RR_OP( 119 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 476); 
TEST_RR_OP( 120 , smmwt.u, 0x00000000, 0x94d3fb02, 0x00000000, 480); 
TEST_RR_OP( 121 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 484); 
TEST_RR_OP( 122 , smmwt.u, 0x00000000, 0x80000000, 0x00000000, 488); 
TEST_RR_OP( 123 , smmwt.u, 0x00004af7, 0xb509714b, 0xffffffff, 492); 
TEST_RR_OP( 124 , smmwt.u, 0x08adc0b3, 0xee0ce796, 0x8439d7a0, 496); 
TEST_RR_OP( 125 , smmwt.u, 0x3694329f, 0x92d79ac3, 0x80000000, 500); 
TEST_RR_OP( 126 , smmwt.u, 0x40000000, 0x80000000, 0x80000000, 504); 
TEST_RR_OP( 127 , smmwt.u, 0x00000000, 0x80000000, 0x00000000, 508); 
TEST_RR_OP( 128 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , smmwt.u, 0x00000000, 0xffffffff, 0x9bddd2fd, 516); 
TEST_RR_OP( 130 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 520); 
TEST_RR_OP( 131 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , smmwt.u, 0x00000000, 0xc754c9d2, 0x00000000, 528); 
TEST_RR_OP( 133 , smmwt.u, 0xea900000, 0x80000000, 0x2ae03dfa, 532); 
TEST_RR_OP( 134 , smmwt.u, 0x00000000, 0xffffffff, 0xaf6ceca1, 536); 
TEST_RR_OP( 135 , smmwt.u, 0x00000000, 0xffffffff, 0xd75da8c9, 540); 
TEST_RR_OP( 136 , smmwt.u, 0xe7a6db8f, 0x30b248e3, 0x80000000, 544); 
TEST_RR_OP( 137 , smmwt.u, 0x00000000, 0x00000000, 0x6f5485ea, 548); 
TEST_RR_OP( 138 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 552); 
TEST_RR_OP( 139 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 560); 
TEST_RR_OP( 141 , smmwt.u, 0xffff89ab, 0x76555e4b, 0xffffffff, 564); 
TEST_RR_OP( 142 , smmwt.u, 0x00000000, 0xffffffff, 0x1e55f171, 568); 
TEST_RR_OP( 143 , smmwt.u, 0x00000000, 0xba1b96d5, 0x00000000, 572); 
TEST_RR_OP( 144 , smmwt.u, 0x35af5198, 0x94a15cd1, 0x80000000, 576); 
TEST_RR_OP( 145 , smmwt.u, 0x40000000, 0x80000000, 0x80000000, 580); 
TEST_RR_OP( 146 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , smmwt.u, 0x00000000, 0x00000000, 0x597c9c18, 592); 
TEST_RR_OP( 149 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 600); 
TEST_RR_OP( 151 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 604); 
TEST_RR_OP( 152 , smmwt.u, 0x19bf0000, 0x80000000, 0xcc8233a8, 608); 
TEST_RR_OP( 153 , smmwt.u, 0x40000000, 0x80000000, 0x80000000, 612); 
TEST_RR_OP( 154 , smmwt.u, 0x00000000, 0xffffffff, 0x3f23fc5b, 616); 
TEST_RR_OP( 155 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 620); 
TEST_RR_OP( 156 , smmwt.u, 0x0929bbc5, 0xedac8876, 0x80000000, 624); 
TEST_RR_OP( 157 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 628); 
TEST_RR_OP( 158 , smmwt.u, 0xf3136cf0, 0xa8feaefa, 0x2607c8cd, 632); 
TEST_RR_OP( 159 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 636); 
TEST_RR_OP( 160 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 640); 
TEST_RR_OP( 161 , smmwt.u, 0x00000000, 0xffffffff, 0xed743f2f, 644); 
TEST_RR_OP( 162 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 648); 
TEST_RR_OP( 163 , smmwt.u, 0x00000001, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 656); 
TEST_RR_OP( 165 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 660); 
TEST_RR_OP( 166 , smmwt.u, 0xdff70000, 0x80000000, 0x4012d269, 664); 
TEST_RR_OP( 167 , smmwt.u, 0x00000000, 0xffffffff, 0x5984db8b, 668); 
TEST_RR_OP( 168 , smmwt.u, 0x0f9ed707, 0x24929477, 0x6d579624, 672); 
TEST_RR_OP( 169 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 676); 
TEST_RR_OP( 170 , smmwt.u, 0x04507870, 0xc58ba598, 0xed1b13f6, 680); 
TEST_RR_OP( 171 , smmwt.u, 0x25f30000, 0x80000000, 0xb41a5420, 684); 
TEST_RR_OP( 172 , smmwt.u, 0x00000000, 0xffffffff, 0x5b87e526, 688); 
TEST_RR_OP( 173 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 696); 
TEST_RR_OP( 175 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 700); 
TEST_RR_OP( 176 , smmwt.u, 0xffffbd20, 0x42df81d1, 0xffffffff, 704); 
TEST_RR_OP( 177 , smmwt.u, 0x02f6ff32, 0x381fe289, 0x0d866e16, 708); 
TEST_RR_OP( 178 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 712); 
TEST_RR_OP( 179 , smmwt.u, 0x00000000, 0x00000000, 0xffffffff, 716); 
TEST_RR_OP( 180 , smmwt.u, 0x00000000, 0xffffffff, 0xc2a4fd00, 720); 
TEST_RR_OP( 181 , smmwt.u, 0x00000000, 0xffffffff, 0xb99618b8, 724); 
TEST_RR_OP( 182 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 728); 
TEST_RR_OP( 183 , smmwt.u, 0x40000000, 0x80000000, 0x80000000, 732); 
TEST_RR_OP( 184 , smmwt.u, 0x00000000, 0x21eaacaa, 0x00000000, 736); 
TEST_RR_OP( 185 , smmwt.u, 0x00000000, 0x80000000, 0x00000000, 740); 
TEST_RR_OP( 186 , smmwt.u, 0x00000000, 0x00000000, 0x2e5105f5, 744); 
TEST_RR_OP( 187 , smmwt.u, 0x00000000, 0xffffffff, 0xffffffff, 748); 
TEST_RR_OP( 188 , smmwt.u, 0xc8150000, 0x80000000, 0x6fd6677d, 752); 
TEST_RR_OP( 189 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , smmwt.u, 0x00000000, 0x00000000, 0x9332e55b, 760); 
TEST_RR_OP( 191 , smmwt.u, 0x40000000, 0x80000000, 0x80000000, 764); 
TEST_RR_OP( 192 , smmwt.u, 0x000023d9, 0xdc274ca9, 0xffffffff, 768); 
TEST_RR_OP( 193 , smmwt.u, 0x00000000, 0x00000000, 0x00000000, 772); 
TEST_RR_OP( 194 , smmwt.u, 0x005a8000, 0x80000000, 0xff4be22c, 776); 
TEST_RR_OP( 195 , smmwt.u, 0x00000000, 0x00000000, 0x80000000, 780); 
TEST_RR_OP( 196 , smmwt.u, 0x00000000, 0xffffffff, 0x29d97924, 784); 
TEST_RR_OP( 197 , smmwt.u, 0xdd068000, 0x80000000, 0x45f3a07e, 788); 
TEST_RR_OP( 198 , smmwt.u, 0x00008000, 0x80000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , smmwt.u, 0x00000000, 0xffffffff, 0x00000000, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# urcras16.S
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

TEST_RR_OP( 2 , urcras16, 0xbfff244a, 0xffffc83d, 0x7fa98000, 8); 
TEST_RR_OP( 3 , urcras16, 0xea443304, 0xffffe608, 0x8000d48a, 12); 
TEST_RR_OP( 4 , urcras16, 0x830fc000, 0x06208000, 0xffffffff, 16); 
TEST_RR_OP( 5 , urcras16, 0x80000000, 0x8000ffff, 0xffff8000, 20); 
TEST_RR_OP( 6 , urcras16, 0x98b63bc0, 0x316dffff, 0x887effff, 24); 
TEST_RR_OP( 7 , urcras16, 0x40006019, 0x0000ffff, 0x3fcd8000, 28); 
TEST_RR_OP( 8 , urcras16, 0x4000f0d7, 0x000061ae, 0x80008000, 32); 
TEST_RR_OP( 9 , urcras16, 0xffff9439, 0xffff2872, 0xffffffff, 36); 
TEST_RR_OP( 10 , urcras16, 0x7ffff6c7, 0x0000ed8d, 0xffffffff, 40); 
TEST_RR_OP( 11 , urcras16, 0xa1f28ef4, 0x80001de7, 0xffffc3e5, 44); 
TEST_RR_OP( 12 , urcras16, 0xffff7fff, 0xffffffff, 0x0000ffff, 48); 
TEST_RR_OP( 13 , urcras16, 0x85b1465a, 0xffffffff, 0x734b0b64, 52); 
TEST_RR_OP( 14 , urcras16, 0xffff8a6e, 0xffff0000, 0xeb23ffff, 56); 
TEST_RR_OP( 15 , urcras16, 0x80007fff, 0x8000ffff, 0x00008000, 60); 
TEST_RR_OP( 16 , urcras16, 0xffff0112, 0xffff8000, 0x7ddcffff, 64); 
TEST_RR_OP( 17 , urcras16, 0x7fff0000, 0x00008000, 0x8000ffff, 68); 
TEST_RR_OP( 18 , urcras16, 0x00000000, 0x00000000, 0x00000000, 72); 
TEST_RR_OP( 19 , urcras16, 0x7fff0d56, 0x00009aac, 0x8000ffff, 76); 
TEST_RR_OP( 20 , urcras16, 0xbfff0000, 0xffff0000, 0x00008000, 80); 
TEST_RR_OP( 21 , urcras16, 0xb13fc000, 0x80000000, 0x8000e27e, 84); 
TEST_RR_OP( 22 , urcras16, 0x7fffdc1e, 0xffff0000, 0x47c30000, 88); 
TEST_RR_OP( 23 , urcras16, 0x7fff4000, 0x00008000, 0x0000ffff, 92); 
TEST_RR_OP( 24 , urcras16, 0x7fff0000, 0x00000000, 0x0000ffff, 96); 
TEST_RR_OP( 25 , urcras16, 0x7fff4abc, 0x0000ffff, 0x6a86ffff, 100); 
TEST_RR_OP( 26 , urcras16, 0xbfff09be, 0x8000937d, 0x8000ffff, 104); 
TEST_RR_OP( 27 , urcras16, 0x8000212e, 0x8000425d, 0x00008000, 108); 
TEST_RR_OP( 28 , urcras16, 0xbfffa7db, 0xffff0000, 0xb04a8000, 112); 
TEST_RR_OP( 29 , urcras16, 0x0000e399, 0x0000c731, 0xffff0000, 116); 
TEST_RR_OP( 30 , urcras16, 0x70b8eebc, 0xe1705d79, 0x80000000, 120); 
TEST_RR_OP( 31 , urcras16, 0x80000000, 0x80000000, 0x00008000, 124); 
TEST_RR_OP( 32 , urcras16, 0x4000c000, 0x80000000, 0x80000000, 128); 
TEST_RR_OP( 33 , urcras16, 0x2cd00000, 0x00008000, 0x800059a1, 132); 
TEST_RR_OP( 34 , urcras16, 0x3e165cbc, 0x0000b979, 0x00007c2d, 136); 
TEST_RR_OP( 35 , urcras16, 0xbfff0000, 0x80008000, 0x8000ffff, 140); 
TEST_RR_OP( 36 , urcras16, 0x632f0000, 0x5e5c8000, 0x80006802, 144); 
TEST_RR_OP( 37 , urcras16, 0x00000000, 0x00008000, 0x80000000, 148); 
TEST_RR_OP( 38 , urcras16, 0xe5364000, 0xffff8000, 0x0000ca6d, 152); 
TEST_RR_OP( 39 , urcras16, 0x00007fff, 0x0000ffff, 0x00000000, 156); 
TEST_RR_OP( 40 , urcras16, 0x80000000, 0x80000000, 0x00008000, 160); 
TEST_RR_OP( 41 , urcras16, 0x4000decb, 0x00002864, 0x6ace8000, 164); 
TEST_RR_OP( 42 , urcras16, 0x7fff0000, 0xffffffff, 0xffff0000, 168); 
TEST_RR_OP( 43 , urcras16, 0xf1680000, 0xe2d18000, 0x8000ffff, 172); 
TEST_RR_OP( 44 , urcras16, 0xb9148ebe, 0x722a0000, 0xe283ffff, 176); 
TEST_RR_OP( 45 , urcras16, 0xbc9a0000, 0xf9358000, 0x80008000, 180); 
TEST_RR_OP( 46 , urcras16, 0x9f21f955, 0x71a614d0, 0x2225cc9d, 184); 
TEST_RR_OP( 47 , urcras16, 0xbfff7fff, 0xffffffff, 0x00008000, 188); 
TEST_RR_OP( 48 , urcras16, 0x40003fd3, 0x8000ffa6, 0x80000000, 192); 
TEST_RR_OP( 49 , urcras16, 0x9a1b0000, 0x80008000, 0x8000b437, 196); 
TEST_RR_OP( 50 , urcras16, 0x81c53fff, 0x8000ffff, 0x8000838a, 200); 
TEST_RR_OP( 51 , urcras16, 0x98e527a9, 0x31cc4f52, 0x0000ffff, 204); 
TEST_RR_OP( 52 , urcras16, 0x80000000, 0x80000000, 0x00008000, 208); 
TEST_RR_OP( 53 , urcras16, 0x800070dc, 0x8000e1b9, 0x00008000, 212); 
TEST_RR_OP( 54 , urcras16, 0x80008000, 0x80000000, 0xffff8000, 216); 
TEST_RR_OP( 55 , urcras16, 0x40000000, 0x00008000, 0x80008000, 220); 
TEST_RR_OP( 56 , urcras16, 0x884d8000, 0x218d0000, 0xffffef0e, 224); 
TEST_RR_OP( 57 , urcras16, 0x7fff4000, 0xffff8000, 0x00000000, 228); 
TEST_RR_OP( 58 , urcras16, 0x80004000, 0x80008000, 0x00008000, 232); 
TEST_RR_OP( 59 , urcras16, 0xfa0ec000, 0xf41d0000, 0x8000ffff, 236); 
TEST_RR_OP( 60 , urcras16, 0xa628c000, 0xcc500000, 0x80008000, 240); 
TEST_RR_OP( 61 , urcras16, 0xffff7fff, 0xffffffff, 0x0000ffff, 244); 
TEST_RR_OP( 62 , urcras16, 0xffffa914, 0xffff51ea, 0xffc2ffff, 248); 
TEST_RR_OP( 63 , urcras16, 0x00007fff, 0x0000ffff, 0x00000000, 252); 
TEST_RR_OP( 64 , urcras16, 0x00000000, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , urcras16, 0x400031cd, 0x0000ffff, 0x9c658000, 260); 
TEST_RR_OP( 66 , urcras16, 0x7fff0000, 0xffffffff, 0xffff0000, 264); 
TEST_RR_OP( 67 , urcras16, 0x24c63fff, 0x498cffff, 0x80000000, 268); 
TEST_RR_OP( 68 , urcras16, 0xbfff3744, 0x8000ffff, 0x9177ffff, 272); 
TEST_RR_OP( 69 , urcras16, 0x2dcc9423, 0x00002846, 0xffff5b99, 276); 
TEST_RR_OP( 70 , urcras16, 0x7fff0000, 0xffffffff, 0xffff0000, 280); 
TEST_RR_OP( 71 , urcras16, 0xffff4000, 0xffff8000, 0x0000ffff, 284); 
TEST_RR_OP( 72 , urcras16, 0x4000c000, 0x80008000, 0xffff0000, 288); 
TEST_RR_OP( 73 , urcras16, 0x0a9d658d, 0x0000ffff, 0x34e4153b, 292); 
TEST_RR_OP( 74 , urcras16, 0x52f24556, 0x25e5ffff, 0x75538000, 296); 
TEST_RR_OP( 75 , urcras16, 0xffffc000, 0xffff8000, 0xffffffff, 300); 
TEST_RR_OP( 76 , urcras16, 0x563e0000, 0x2c7c8000, 0x80008000, 304); 
TEST_RR_OP( 77 , urcras16, 0x4000ce69, 0x00000000, 0x632e8000, 308); 
TEST_RR_OP( 78 , urcras16, 0x4000fe7f, 0x80007cff, 0x80000000, 312); 
TEST_RR_OP( 79 , urcras16, 0x0000393d, 0x0000ffff, 0x8d850000, 316); 
TEST_RR_OP( 80 , urcras16, 0x0000095c, 0x000012b9, 0x00000000, 320); 
TEST_RR_OP( 81 , urcras16, 0x7fffedcd, 0x00008000, 0xa466ffff, 324); 
TEST_RR_OP( 82 , urcras16, 0xbfff4000, 0xffff8000, 0x00008000, 328); 
TEST_RR_OP( 83 , urcras16, 0x00000000, 0x0000ffff, 0xffff0000, 332); 
TEST_RR_OP( 84 , urcras16, 0x6eec7fff, 0x0000ffff, 0x0000ddd8, 336); 
TEST_RR_OP( 85 , urcras16, 0x40000000, 0x8000ffff, 0xffff0000, 340); 
TEST_RR_OP( 86 , urcras16, 0x7fff7fff, 0x0000ffff, 0x0000ffff, 344); 
TEST_RR_OP( 87 , urcras16, 0x37e129b1, 0x6fc3ffff, 0xac9d0000, 348); 
TEST_RR_OP( 88 , urcras16, 0xbfff4000, 0xffff8000, 0x00008000, 352); 
TEST_RR_OP( 89 , urcras16, 0xffffb474, 0xffff0000, 0x9717ffff, 356); 
TEST_RR_OP( 90 , urcras16, 0x7fff18f7, 0xffff5f83, 0x2d950000, 360); 
TEST_RR_OP( 91 , urcras16, 0xb5d80e1d, 0x8000399f, 0x1d65ebb0, 364); 
TEST_RR_OP( 92 , urcras16, 0x0ddfeb8b, 0x0000d716, 0xffff1bbe, 368); 
TEST_RR_OP( 93 , urcras16, 0xbfffffcb, 0xffffff96, 0xffff8000, 372); 
TEST_RR_OP( 94 , urcras16, 0x13c1c000, 0x00000000, 0x80002782, 376); 
TEST_RR_OP( 95 , urcras16, 0xf8788000, 0xffff0000, 0xfffff0f2, 380); 
TEST_RR_OP( 96 , urcras16, 0xbfff8000, 0xffff0000, 0xffff8000, 384); 
TEST_RR_OP( 97 , urcras16, 0xbfff5a08, 0x8000b411, 0x0000ffff, 388); 
TEST_RR_OP( 98 , urcras16, 0x00001e5b, 0x0000ffff, 0xc3480000, 392); 
TEST_RR_OP( 99 , urcras16, 0xbfff002d, 0xffffffff, 0xffa48000, 396); 
TEST_RR_OP( 100 , urcras16, 0x7fffc000, 0xffff0000, 0x80000000, 400); 
TEST_RR_OP( 101 , urcras16, 0x40008000, 0x80000000, 0xffff0000, 404); 
TEST_RR_OP( 102 , urcras16, 0x71614000, 0x62c28000, 0x00008000, 408); 
TEST_RR_OP( 103 , urcras16, 0x007f4000, 0x00fe8000, 0x00000000, 412); 
TEST_RR_OP( 104 , urcras16, 0x53620000, 0x00000000, 0x0000a6c5, 416); 
TEST_RR_OP( 105 , urcras16, 0x8000e512, 0x80000000, 0x35dc8000, 420); 
TEST_RR_OP( 106 , urcras16, 0x40003fff, 0x8000ffff, 0x80000000, 424); 
TEST_RR_OP( 107 , urcras16, 0xbfff2051, 0x8000ffff, 0xbf5dffff, 428); 
TEST_RR_OP( 108 , urcras16, 0x40000000, 0x00008000, 0x80008000, 432); 
TEST_RR_OP( 109 , urcras16, 0x8000c000, 0x80000000, 0x80008000, 436); 
TEST_RR_OP( 110 , urcras16, 0xffffdbbf, 0xffff0000, 0x4882ffff, 440); 
TEST_RR_OP( 111 , urcras16, 0xffff0000, 0xffff0000, 0x0000ffff, 444); 
TEST_RR_OP( 112 , urcras16, 0x63dece25, 0x7d2c9c4a, 0xffff4a91, 448); 
TEST_RR_OP( 113 , urcras16, 0x7fffcfe9, 0x00008000, 0xe02dffff, 452); 
TEST_RR_OP( 114 , urcras16, 0x70fbdbc3, 0x80008000, 0xc87a61f7, 456); 
TEST_RR_OP( 115 , urcras16, 0xffff4000, 0xffff8000, 0x0000ffff, 460); 
TEST_RR_OP( 116 , urcras16, 0x7ce30000, 0x0db88000, 0x8000ec0f, 464); 
TEST_RR_OP( 117 , urcras16, 0x00004000, 0x00008000, 0x00000000, 468); 
TEST_RR_OP( 118 , urcras16, 0x7fffc000, 0x00000000, 0x8000ffff, 472); 
TEST_RR_OP( 119 , urcras16, 0x4000c000, 0x80000000, 0x80000000, 476); 
TEST_RR_OP( 120 , urcras16, 0xbfff8000, 0xffff0000, 0xffff8000, 480); 
TEST_RR_OP( 121 , urcras16, 0x80000000, 0x80000000, 0x00008000, 484); 
TEST_RR_OP( 122 , urcras16, 0x41cb0000, 0x0397ffff, 0xffff8000, 488); 
TEST_RR_OP( 123 , urcras16, 0x00006176, 0x0000ffff, 0x3d130000, 492); 
TEST_RR_OP( 124 , urcras16, 0x91760000, 0xa2edffff, 0xffff8000, 496); 
TEST_RR_OP( 125 , urcras16, 0xbfff325c, 0xffff8000, 0x1b488000, 500); 
TEST_RR_OP( 126 , urcras16, 0xa5d37fff, 0x8000ffff, 0x0000cba6, 504); 
TEST_RR_OP( 127 , urcras16, 0x70e0ed87, 0xe1c12e13, 0x53040000, 508); 
TEST_RR_OP( 128 , urcras16, 0x67e8fa06, 0x80008000, 0x8bf44fd0, 512); 
TEST_RR_OP( 129 , urcras16, 0xbfff0000, 0xffff8000, 0x80008000, 516); 
TEST_RR_OP( 130 , urcras16, 0xed310000, 0xda648000, 0x8000ffff, 520); 
TEST_RR_OP( 131 , urcras16, 0xbfff0000, 0xffff8000, 0x80008000, 524); 
TEST_RR_OP( 132 , urcras16, 0x1e028000, 0x3c040000, 0xffff0000, 528); 
TEST_RR_OP( 133 , urcras16, 0x7fff14fa, 0xffffde72, 0xb47d0000, 532); 
TEST_RR_OP( 134 , urcras16, 0x80008633, 0x80000000, 0xf39a8000, 536); 
TEST_RR_OP( 135 , urcras16, 0x7fffc000, 0x00000000, 0x8000ffff, 540); 
TEST_RR_OP( 136 , urcras16, 0x35cac000, 0x6b958000, 0xffff0000, 544); 
TEST_RR_OP( 137 , urcras16, 0x0000cc3a, 0x00008000, 0xe78c0000, 548); 
TEST_RR_OP( 138 , urcras16, 0x98b92da2, 0x8000db44, 0x8000b172, 552); 
TEST_RR_OP( 139 , urcras16, 0x20778acd, 0x00001599, 0xffff40ef, 556); 
TEST_RR_OP( 140 , urcras16, 0x64097a1d, 0x8ee1ffff, 0x0bc43931, 560); 
TEST_RR_OP( 141 , urcras16, 0xd3c17fff, 0xa783ffff, 0x0000ffff, 564); 
TEST_RR_OP( 142 , urcras16, 0x27b43fff, 0x0000ffff, 0x80004f69, 568); 
TEST_RR_OP( 143 , urcras16, 0x00008000, 0x00000000, 0xffff0000, 572); 
TEST_RR_OP( 144 , urcras16, 0x7fff3b40, 0xfffff680, 0x80000000, 576); 
TEST_RR_OP( 145 , urcras16, 0x3d39848c, 0x5f630918, 0xffff1b0f, 580); 
TEST_RR_OP( 146 , urcras16, 0x0000d251, 0x00008000, 0xdb5d0000, 584); 
TEST_RR_OP( 147 , urcras16, 0xbfffc000, 0xffff0000, 0x80008000, 588); 
TEST_RR_OP( 148 , urcras16, 0xbfff3fff, 0xffffffff, 0x80008000, 592); 
TEST_RR_OP( 149 , urcras16, 0xec824000, 0xffff8000, 0x0000d906, 596); 
TEST_RR_OP( 150 , urcras16, 0x7fffe1cb, 0xffff8000, 0xbc690000, 600); 
TEST_RR_OP( 151 , urcras16, 0x7fff1f3c, 0xffff3e78, 0x00000000, 604); 
TEST_RR_OP( 152 , urcras16, 0xfc633fff, 0xffffffff, 0x8000f8c7, 608); 
TEST_RR_OP( 153 , urcras16, 0x400006e9, 0x8000a4d1, 0x96ff0000, 612); 
TEST_RR_OP( 154 , urcras16, 0x40008000, 0x80000000, 0xffff0000, 616); 
TEST_RR_OP( 155 , urcras16, 0xbfff0000, 0xffff8000, 0x80008000, 620); 
TEST_RR_OP( 156 , urcras16, 0x4000c000, 0x80008000, 0xffff0000, 624); 
TEST_RR_OP( 157 , urcras16, 0x80000000, 0x80000000, 0x00008000, 628); 
TEST_RR_OP( 158 , urcras16, 0x367f3fff, 0x4ed9ffff, 0x80001e26, 632); 
TEST_RR_OP( 159 , urcras16, 0x40004000, 0x00008000, 0x00008000, 636); 
TEST_RR_OP( 160 , urcras16, 0x99cb7fff, 0xffffffff, 0x00003398, 640); 
TEST_RR_OP( 161 , urcras16, 0x87738000, 0x80000000, 0xffff8ee7, 644); 
TEST_RR_OP( 162 , urcras16, 0xf75b7fff, 0xffffffff, 0x0000eeb8, 648); 
TEST_RR_OP( 163 , urcras16, 0xb19b3fff, 0xffffffff, 0x80006338, 652); 
TEST_RR_OP( 164 , urcras16, 0x84088000, 0x80000000, 0xffff8810, 656); 
TEST_RR_OP( 165 , urcras16, 0xffff055d, 0xffff8000, 0x7545ffff, 660); 
TEST_RR_OP( 166 , urcras16, 0x70f7f89a, 0x0b668000, 0x8ecbd689, 664); 
TEST_RR_OP( 167 , urcras16, 0xffff3fff, 0xffffffff, 0x8000ffff, 668); 
TEST_RR_OP( 168 , urcras16, 0xa1990000, 0xffff8000, 0x80004333, 672); 
TEST_RR_OP( 169 , urcras16, 0xbfffeb9d, 0xffff573a, 0x80008000, 676); 
TEST_RR_OP( 170 , urcras16, 0x717e36aa, 0x80008000, 0x12ac62fc, 680); 
TEST_RR_OP( 171 , urcras16, 0xbfff8000, 0x80000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , urcras16, 0xbfff3fff, 0xffffffff, 0x80008000, 688); 
TEST_RR_OP( 173 , urcras16, 0x3eed31cc, 0x6c478000, 0x1c671193, 692); 
TEST_RR_OP( 174 , urcras16, 0xbfff3e5d, 0xfffffcbb, 0x80008000, 696); 
TEST_RR_OP( 175 , urcras16, 0x7fff6cbc, 0xffffd979, 0x00000000, 700); 
TEST_RR_OP( 176 , urcras16, 0xadb1205f, 0xdb6240bf, 0x00008000, 704); 
TEST_RR_OP( 177 , urcras16, 0x916f4000, 0xffff8000, 0x000022df, 708); 
TEST_RR_OP( 178 , urcras16, 0x8000b755, 0x800004e1, 0x96378000, 712); 
TEST_RR_OP( 179 , urcras16, 0xbdf984e0, 0x80000000, 0xf640fbf3, 716); 
TEST_RR_OP( 180 , urcras16, 0x40008000, 0x80000000, 0xffff0000, 720); 
TEST_RR_OP( 181 , urcras16, 0x0000c000, 0x00000000, 0x80000000, 724); 
TEST_RR_OP( 182 , urcras16, 0x40001ce4, 0x00008000, 0x46378000, 728); 
TEST_RR_OP( 183 , urcras16, 0x8dc97fff, 0x1b93ffff, 0x0000ffff, 732); 
TEST_RR_OP( 184 , urcras16, 0xbfff968f, 0xffff2d1e, 0xffff8000, 736); 
TEST_RR_OP( 185 , urcras16, 0xa5830000, 0x80008000, 0x8000cb06, 740); 
TEST_RR_OP( 186 , urcras16, 0xbfffab18, 0x8000562f, 0xffffffff, 744); 
TEST_RR_OP( 187 , urcras16, 0xe2c0ca5f, 0xffff14be, 0x8000c582, 748); 
TEST_RR_OP( 188 , urcras16, 0xbfffd584, 0x80002b08, 0x8000ffff, 752); 
TEST_RR_OP( 189 , urcras16, 0x80000000, 0x80000000, 0x00008000, 756); 
TEST_RR_OP( 190 , urcras16, 0xe720c000, 0xce420000, 0x8000ffff, 760); 
TEST_RR_OP( 191 , urcras16, 0x7fffdba8, 0x0000b74f, 0xffffffff, 764); 
TEST_RR_OP( 192 , urcras16, 0x6be70000, 0x00008000, 0x8000d7ce, 768); 
TEST_RR_OP( 193 , urcras16, 0x40000000, 0x0000ffff, 0xffff8000, 772); 
TEST_RR_OP( 194 , urcras16, 0xbfff0000, 0x80008000, 0x8000ffff, 776); 
TEST_RR_OP( 195 , urcras16, 0xffffe4d0, 0xffff9a14, 0xd074ffff, 780); 
TEST_RR_OP( 196 , urcras16, 0x7fffc000, 0xffff0000, 0x80000000, 784); 
TEST_RR_OP( 197 , urcras16, 0xb5428124, 0x6a860000, 0xfdb7ffff, 788); 
TEST_RR_OP( 198 , urcras16, 0x7fffc000, 0x00008000, 0xffffffff, 792); 
TEST_RR_OP( 199 , urcras16, 0x0000de41, 0x00008000, 0xc37e0000, 796); 

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
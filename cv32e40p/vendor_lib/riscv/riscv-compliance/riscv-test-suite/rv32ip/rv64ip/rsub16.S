# See LICENSE for license details.
#*****************************************************************************
# rsub16.S
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

TEST_RR_OP( 2 , rsub16, 0xd8690000, 0xb0d30000, 0x0000ffff, 8); 
TEST_RR_OP( 3 , rsub16, 0x03443fff, 0x0688ffff, 0x00008000, 12); 
TEST_RR_OP( 4 , rsub16, 0xb80f0000, 0x80008000, 0x0fe28000, 16); 
TEST_RR_OP( 5 , rsub16, 0x16781e1a, 0x2cf1bc34, 0x00008000, 20); 
TEST_RR_OP( 6 , rsub16, 0xffff1295, 0xffff252a, 0x00000000, 24); 
TEST_RR_OP( 7 , rsub16, 0x00000000, 0x0000ffff, 0xffffffff, 28); 
TEST_RR_OP( 8 , rsub16, 0x00004000, 0x80000000, 0x80008000, 32); 
TEST_RR_OP( 9 , rsub16, 0x00000000, 0xffff0000, 0xffffffff, 36); 
TEST_RR_OP( 10 , rsub16, 0x7073c000, 0x651d8000, 0x84370000, 40); 
TEST_RR_OP( 11 , rsub16, 0xfffffbad, 0xffff8000, 0x000088a6, 44); 
TEST_RR_OP( 12 , rsub16, 0x0000de07, 0x00000000, 0x000043f2, 48); 
TEST_RR_OP( 13 , rsub16, 0xc0000e6b, 0x8000bc11, 0xffff9f3a, 52); 
TEST_RR_OP( 14 , rsub16, 0xc000ffff, 0x8000ffff, 0x00000000, 56); 
TEST_RR_OP( 15 , rsub16, 0x294d0d40, 0xffff0000, 0xad65e580, 60); 
TEST_RR_OP( 16 , rsub16, 0xeb54c000, 0xd6a78000, 0xffff0000, 64); 
TEST_RR_OP( 17 , rsub16, 0x1ae74000, 0x25690000, 0xef9b8000, 68); 
TEST_RR_OP( 18 , rsub16, 0x3fffc000, 0xffff8000, 0x8000ffff, 72); 
TEST_RR_OP( 19 , rsub16, 0xd331c000, 0xffff8000, 0x599cffff, 76); 
TEST_RR_OP( 20 , rsub16, 0x0000299a, 0x000068d0, 0x0000159c, 80); 
TEST_RR_OP( 21 , rsub16, 0x56225554, 0x2c442aa9, 0x80008000, 84); 
TEST_RR_OP( 22 , rsub16, 0x00000000, 0x00008000, 0xffff8000, 88); 
TEST_RR_OP( 23 , rsub16, 0x0000ec26, 0xffffd84d, 0xffff0000, 92); 
TEST_RR_OP( 24 , rsub16, 0x65f1a972, 0x4be38000, 0x80002d1c, 96); 
TEST_RR_OP( 25 , rsub16, 0x35920000, 0xeb248000, 0x80008000, 100); 
TEST_RR_OP( 26 , rsub16, 0xc000d2f2, 0x80008000, 0xffffda1c, 104); 
TEST_RR_OP( 27 , rsub16, 0x000023fc, 0x00000000, 0x0000b808, 108); 
TEST_RR_OP( 28 , rsub16, 0x400037c2, 0x00000000, 0x8000907b, 112); 
TEST_RR_OP( 29 , rsub16, 0x0000231f, 0x0000c63e, 0x00008000, 116); 
TEST_RR_OP( 30 , rsub16, 0x0000c000, 0xffff8000, 0xffffffff, 120); 
TEST_RR_OP( 31 , rsub16, 0x40003fff, 0x0000ffff, 0x80008000, 124); 
TEST_RR_OP( 32 , rsub16, 0x60de4000, 0x41bd0000, 0x80008000, 128); 
TEST_RR_OP( 33 , rsub16, 0x6953a9ec, 0x52a78000, 0x80002c28, 132); 
TEST_RR_OP( 34 , rsub16, 0xc000cf17, 0x80008000, 0x0000e1d1, 136); 
TEST_RR_OP( 35 , rsub16, 0x1a710000, 0x34e2ffff, 0x0000ffff, 140); 
TEST_RR_OP( 36 , rsub16, 0xc000c000, 0x80008000, 0xffffffff, 144); 
TEST_RR_OP( 37 , rsub16, 0xc0004000, 0x80000000, 0x00008000, 148); 
TEST_RR_OP( 38 , rsub16, 0x00000123, 0x80000246, 0x80000000, 152); 
TEST_RR_OP( 39 , rsub16, 0xed3e0000, 0xda7b0000, 0xffff0000, 156); 
TEST_RR_OP( 40 , rsub16, 0x0000ffff, 0x0000ffff, 0xffff0000, 160); 
TEST_RR_OP( 41 , rsub16, 0x061fb5d3, 0x45e58000, 0x39a6145a, 164); 
TEST_RR_OP( 42 , rsub16, 0x00000000, 0x80000000, 0x8000ffff, 168); 
TEST_RR_OP( 43 , rsub16, 0x000013db, 0x8000ffff, 0x8000d849, 172); 
TEST_RR_OP( 44 , rsub16, 0x0000c000, 0xffff8000, 0xffff0000, 176); 
TEST_RR_OP( 45 , rsub16, 0x00002b18, 0x0000562f, 0xffffffff, 180); 
TEST_RR_OP( 46 , rsub16, 0xc0000000, 0x80008000, 0x00008000, 184); 
TEST_RR_OP( 47 , rsub16, 0xc00002b6, 0x8000056b, 0xffffffff, 188); 
TEST_RR_OP( 48 , rsub16, 0xa1a70000, 0x80000000, 0x3cb20000, 192); 
TEST_RR_OP( 49 , rsub16, 0xc00036b8, 0x8000ffff, 0x0000928f, 196); 
TEST_RR_OP( 50 , rsub16, 0xc00070c7, 0x8000618e, 0xffff8000, 200); 
TEST_RR_OP( 51 , rsub16, 0x000094d1, 0x80008000, 0x8000565e, 204); 
TEST_RR_OP( 52 , rsub16, 0xffff5cc3, 0xffff3986, 0x00008000, 208); 
TEST_RR_OP( 53 , rsub16, 0xc0004000, 0x80000000, 0x00008000, 212); 
TEST_RR_OP( 54 , rsub16, 0x3fffffff, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , rsub16, 0x3fffc000, 0xffff8000, 0x80000000, 220); 
TEST_RR_OP( 56 , rsub16, 0x22880000, 0x4510ffff, 0x0000ffff, 224); 
TEST_RR_OP( 57 , rsub16, 0x4000ffff, 0x0000ffff, 0x80000000, 228); 
TEST_RR_OP( 58 , rsub16, 0x265541e3, 0x4cab03c6, 0x00008000, 232); 
TEST_RR_OP( 59 , rsub16, 0x5d3fc000, 0x3a7f8000, 0x8000ffff, 236); 
TEST_RR_OP( 60 , rsub16, 0x00000c91, 0x0000080f, 0xffffeeed, 240); 
TEST_RR_OP( 61 , rsub16, 0x00000000, 0x80000000, 0x80000000, 244); 
TEST_RR_OP( 62 , rsub16, 0x0000d28b, 0x80008000, 0x8000daea, 248); 
TEST_RR_OP( 63 , rsub16, 0x1d701d96, 0xe8d30000, 0xadf2c4d3, 252); 
TEST_RR_OP( 64 , rsub16, 0xc000d2e3, 0x8000a5c6, 0x00000000, 256); 
TEST_RR_OP( 65 , rsub16, 0x00000000, 0x00000000, 0xffff0000, 260); 
TEST_RR_OP( 66 , rsub16, 0xc0000000, 0x8000ffff, 0xffffffff, 264); 
TEST_RR_OP( 67 , rsub16, 0x00000523, 0x00000a46, 0xffffffff, 268); 
TEST_RR_OP( 68 , rsub16, 0xef680000, 0xffffffff, 0x212effff, 272); 
TEST_RR_OP( 69 , rsub16, 0xc0000000, 0x8000ffff, 0x0000ffff, 276); 
TEST_RR_OP( 70 , rsub16, 0xe73f0000, 0x80000000, 0xb182ffff, 280); 
TEST_RR_OP( 71 , rsub16, 0x0000e212, 0x0000c425, 0xffff0000, 284); 
TEST_RR_OP( 72 , rsub16, 0xe215e614, 0xc42a8000, 0x0000b3d7, 288); 
TEST_RR_OP( 73 , rsub16, 0x4000d536, 0x0000aa6d, 0x80000000, 292); 
TEST_RR_OP( 74 , rsub16, 0x0000cda3, 0x00009b47, 0x00000000, 296); 
TEST_RR_OP( 75 , rsub16, 0x00003fff, 0xffffffff, 0xffff8000, 300); 
TEST_RR_OP( 76 , rsub16, 0xc0003fff, 0x8000ffff, 0xffff8000, 304); 
TEST_RR_OP( 77 , rsub16, 0x3fffffff, 0xffffffff, 0x80000000, 308); 
TEST_RR_OP( 78 , rsub16, 0x00000000, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , rsub16, 0xd8fafa5c, 0x00008000, 0x4e0c8b48, 316); 
TEST_RR_OP( 80 , rsub16, 0x3fff56b7, 0xffff2d6f, 0x80008000, 320); 
TEST_RR_OP( 81 , rsub16, 0xc0000000, 0x80000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , rsub16, 0x42b30000, 0x05668000, 0x80008000, 328); 
TEST_RR_OP( 83 , rsub16, 0xffffc000, 0xffff8000, 0x0000ffff, 332); 
TEST_RR_OP( 84 , rsub16, 0x00003fff, 0x0000ffff, 0x00008000, 336); 
TEST_RR_OP( 85 , rsub16, 0x2b8759aa, 0xe7593355, 0x904a8000, 340); 
TEST_RR_OP( 86 , rsub16, 0x3c7bc000, 0x78f78000, 0x00000000, 344); 
TEST_RR_OP( 87 , rsub16, 0xa477c1db, 0xbe1c8000, 0x752efc4a, 348); 
TEST_RR_OP( 88 , rsub16, 0x19a3c241, 0x00000000, 0xccba7b7d, 352); 
TEST_RR_OP( 89 , rsub16, 0x00003378, 0x00003ef0, 0xffffd800, 356); 
TEST_RR_OP( 90 , rsub16, 0xacf63112, 0x80006224, 0x26130000, 360); 
TEST_RR_OP( 91 , rsub16, 0xfffa0780, 0xffff8f01, 0x000a8000, 364); 
TEST_RR_OP( 92 , rsub16, 0x0000ffff, 0xffffffff, 0xffff0000, 368); 
TEST_RR_OP( 93 , rsub16, 0xffffb272, 0xffff9eef, 0x00003a0b, 372); 
TEST_RR_OP( 94 , rsub16, 0x0a7afed1, 0x426de6c8, 0x2d79e926, 376); 
TEST_RR_OP( 95 , rsub16, 0x40003fff, 0x0000ffff, 0x80008000, 380); 
TEST_RR_OP( 96 , rsub16, 0x0000d95c, 0xffff8000, 0xffffcd47, 384); 
TEST_RR_OP( 97 , rsub16, 0xa926f887, 0x92faffff, 0x40ad0ef0, 388); 
TEST_RR_OP( 98 , rsub16, 0x40000000, 0x00000000, 0x8000ffff, 392); 
TEST_RR_OP( 99 , rsub16, 0x00009a4c, 0x80008000, 0x80004b67, 396); 
TEST_RR_OP( 100 , rsub16, 0xc000210b, 0x8000c216, 0xffff8000, 400); 
TEST_RR_OP( 101 , rsub16, 0x385301b9, 0x16318373, 0xa58a8000, 404); 
TEST_RR_OP( 102 , rsub16, 0x00000334, 0x80000668, 0x8000ffff, 408); 
TEST_RR_OP( 103 , rsub16, 0x12930000, 0xa5260000, 0x8000ffff, 412); 
TEST_RR_OP( 104 , rsub16, 0xcf3a27b4, 0x00004f69, 0x618b0000, 416); 
TEST_RR_OP( 105 , rsub16, 0x17cfcf0f, 0x2f9e9e1e, 0xffffffff, 420); 
TEST_RR_OP( 106 , rsub16, 0x4000f651, 0x0000eca3, 0x80000000, 424); 
TEST_RR_OP( 107 , rsub16, 0x7e263fff, 0x7c4cffff, 0x80008000, 428); 
TEST_RR_OP( 108 , rsub16, 0x0000cb48, 0x00008000, 0x0000e96f, 432); 
TEST_RR_OP( 109 , rsub16, 0x40006035, 0x0000406a, 0x80008000, 436); 
TEST_RR_OP( 110 , rsub16, 0x00006cf1, 0xffff59e3, 0xffff8000, 440); 
TEST_RR_OP( 111 , rsub16, 0xffff0d9c, 0xffff1b38, 0x0000ffff, 444); 
TEST_RR_OP( 112 , rsub16, 0xffff3e73, 0xffff7ce6, 0x0000ffff, 448); 
TEST_RR_OP( 113 , rsub16, 0x00004000, 0xffff0000, 0xffff8000, 452); 
TEST_RR_OP( 114 , rsub16, 0xfc503f3c, 0xffffffff, 0x075e8186, 456); 
TEST_RR_OP( 115 , rsub16, 0xffff0000, 0xffff0000, 0x00000000, 460); 
TEST_RR_OP( 116 , rsub16, 0xffff307e, 0xffff60fc, 0x0000ffff, 464); 
TEST_RR_OP( 117 , rsub16, 0x267e3fff, 0x4cfbffff, 0xffff8000, 468); 
TEST_RR_OP( 118 , rsub16, 0x0000fa76, 0x8000f4eb, 0x8000ffff, 472); 
TEST_RR_OP( 119 , rsub16, 0x40001de4, 0x00003bc8, 0x8000ffff, 476); 
TEST_RR_OP( 120 , rsub16, 0x0000deaf, 0x0000bd5e, 0x0000ffff, 480); 
TEST_RR_OP( 121 , rsub16, 0x3fff48f9, 0xffff11f3, 0x80008000, 484); 
TEST_RR_OP( 122 , rsub16, 0x3fff3a31, 0xffff7461, 0x8000ffff, 488); 
TEST_RR_OP( 123 , rsub16, 0x0000c000, 0x00008000, 0x00000000, 492); 
TEST_RR_OP( 124 , rsub16, 0xc9ccc000, 0x80008000, 0xec68ffff, 496); 
TEST_RR_OP( 125 , rsub16, 0xdcdbffff, 0xb9b7ffff, 0x00000000, 500); 
TEST_RR_OP( 126 , rsub16, 0xcaa4c000, 0xffff8000, 0x6ab70000, 504); 
TEST_RR_OP( 127 , rsub16, 0x0da2c90c, 0x00008000, 0xe4bcede7, 508); 
TEST_RR_OP( 128 , rsub16, 0x0d793fff, 0xffffffff, 0xe50c8000, 512); 
TEST_RR_OP( 129 , rsub16, 0xffffc4b5, 0xffff8000, 0x0000f695, 516); 
TEST_RR_OP( 130 , rsub16, 0x0c872ec2, 0x990f5d84, 0x8000ffff, 520); 
TEST_RR_OP( 131 , rsub16, 0x40000000, 0x00000000, 0x80000000, 524); 
TEST_RR_OP( 132 , rsub16, 0x77b9ffff, 0x6f72ffff, 0x80000000, 528); 
TEST_RR_OP( 133 , rsub16, 0x3672daed, 0xffff0cc6, 0x931a56eb, 532); 
TEST_RR_OP( 134 , rsub16, 0xc000c000, 0x80008000, 0x00000000, 536); 
TEST_RR_OP( 135 , rsub16, 0x3e0d3fff, 0x7c1bffff, 0x00008000, 540); 
TEST_RR_OP( 136 , rsub16, 0xc0003bf9, 0x8000ffff, 0xffff880d, 544); 
TEST_RR_OP( 137 , rsub16, 0x3133f59d, 0xe267eb3a, 0x80000000, 548); 
TEST_RR_OP( 138 , rsub16, 0xffffb074, 0xffffc04a, 0x00005f61, 552); 
TEST_RR_OP( 139 , rsub16, 0x00001206, 0x00000000, 0x0000dbf3, 556); 
TEST_RR_OP( 140 , rsub16, 0x00004000, 0x00000000, 0xffff8000, 560); 
TEST_RR_OP( 141 , rsub16, 0x0000ff75, 0x80003b95, 0x80003cab, 564); 
TEST_RR_OP( 142 , rsub16, 0xc0003fff, 0x8000ffff, 0x00008000, 568); 
TEST_RR_OP( 143 , rsub16, 0x00000a3a, 0x80000000, 0x8000eb8b, 572); 
TEST_RR_OP( 144 , rsub16, 0x00004000, 0x00000000, 0xffff8000, 576); 
TEST_RR_OP( 145 , rsub16, 0xc000c000, 0x80008000, 0x0000ffff, 580); 
TEST_RR_OP( 146 , rsub16, 0xc2ac3ae9, 0x00002db8, 0x7aa8b7e5, 584); 
TEST_RR_OP( 147 , rsub16, 0xfcdcffff, 0xf9b8ffff, 0xffff0000, 588); 
TEST_RR_OP( 148 , rsub16, 0x3fffc000, 0xffff8000, 0x8000ffff, 592); 
TEST_RR_OP( 149 , rsub16, 0x2fd9febf, 0x5fb2fd7f, 0x00000000, 596); 
TEST_RR_OP( 150 , rsub16, 0x3ce4ff54, 0x79c8d2a3, 0x0000d3fa, 600); 
TEST_RR_OP( 151 , rsub16, 0xa53f0000, 0x80008000, 0x35818000, 604); 
TEST_RR_OP( 152 , rsub16, 0xf12d22a2, 0xffff4544, 0x1da40000, 608); 
TEST_RR_OP( 153 , rsub16, 0x375a2fce, 0x6eb46999, 0x000009fd, 612); 
TEST_RR_OP( 154 , rsub16, 0xc000c000, 0x80008000, 0xffffffff, 616); 
TEST_RR_OP( 155 , rsub16, 0x2a0d0000, 0x0000ffff, 0xabe6ffff, 620); 
TEST_RR_OP( 156 , rsub16, 0x114a64cd, 0x2294499b, 0x00008000, 624); 
TEST_RR_OP( 157 , rsub16, 0xffffffff, 0xffffffff, 0x00000000, 628); 
TEST_RR_OP( 158 , rsub16, 0x02d5c000, 0x05aa8000, 0xffffffff, 632); 
TEST_RR_OP( 159 , rsub16, 0xffffdb8c, 0xffff0000, 0x000048e7, 636); 
TEST_RR_OP( 160 , rsub16, 0xe35cfa54, 0x8000ffff, 0xb9470b57, 640); 
TEST_RR_OP( 161 , rsub16, 0x3fff0000, 0xffff8000, 0x80008000, 644); 
TEST_RR_OP( 162 , rsub16, 0x00000000, 0xffff8000, 0xffff8000, 648); 
TEST_RR_OP( 163 , rsub16, 0xa93070f6, 0x800061ec, 0x2da08000, 652); 
TEST_RR_OP( 164 , rsub16, 0x40000000, 0x00008000, 0x80008000, 656); 
TEST_RR_OP( 165 , rsub16, 0x00003fff, 0x8000ffff, 0x80008000, 660); 
TEST_RR_OP( 166 , rsub16, 0x0000dcfb, 0x00000000, 0xffff460a, 664); 
TEST_RR_OP( 167 , rsub16, 0xc3411ffa, 0x8000bff5, 0xf97e8000, 668); 
TEST_RR_OP( 168 , rsub16, 0x1aa3cd41, 0xb5478000, 0x8000e57e, 672); 
TEST_RR_OP( 169 , rsub16, 0x0000f22f, 0x00008000, 0x00009ba2, 676); 
TEST_RR_OP( 170 , rsub16, 0xe62e0000, 0xcc5bffff, 0xffffffff, 680); 
TEST_RR_OP( 171 , rsub16, 0x87440000, 0x8000ffff, 0x7177ffff, 684); 
TEST_RR_OP( 172 , rsub16, 0x00000000, 0x00000000, 0x00000000, 688); 
TEST_RR_OP( 173 , rsub16, 0xf003ffff, 0x8000ffff, 0x9ffa0000, 692); 
TEST_RR_OP( 174 , rsub16, 0x00000000, 0x80000000, 0x8000ffff, 696); 
TEST_RR_OP( 175 , rsub16, 0x3dde0000, 0x7bbd0000, 0x0000ffff, 700); 
TEST_RR_OP( 176 , rsub16, 0x40000000, 0x00008000, 0x80008000, 704); 
TEST_RR_OP( 177 , rsub16, 0x00000000, 0xffff0000, 0xffff0000, 708); 
TEST_RR_OP( 178 , rsub16, 0xefc0c000, 0xdf808000, 0xffffffff, 712); 
TEST_RR_OP( 179 , rsub16, 0x23dc0000, 0x47b90000, 0x00000000, 716); 
TEST_RR_OP( 180 , rsub16, 0xec55c8ca, 0x8a009194, 0xb156ffff, 720); 
TEST_RR_OP( 181 , rsub16, 0xfb69cf0a, 0xf6d19e15, 0xffff0000, 724); 
TEST_RR_OP( 182 , rsub16, 0x0000ddd1, 0x80000000, 0x8000445e, 728); 
TEST_RR_OP( 183 , rsub16, 0x4000ffff, 0x0000ffff, 0x80000000, 732); 
TEST_RR_OP( 184 , rsub16, 0x0000de96, 0x00008000, 0xffffc2d3, 736); 
TEST_RR_OP( 185 , rsub16, 0xc0002dd3, 0x80000000, 0x0000a45a, 740); 
TEST_RR_OP( 186 , rsub16, 0x3fff0000, 0xffffffff, 0x8000ffff, 744); 
TEST_RR_OP( 187 , rsub16, 0xc000ffff, 0x8000ffff, 0xffff0000, 748); 
TEST_RR_OP( 188 , rsub16, 0x3fff94e3, 0xffff8000, 0x8000563a, 752); 
TEST_RR_OP( 189 , rsub16, 0xd8ef3157, 0x800062ad, 0xce22ffff, 756); 
TEST_RR_OP( 190 , rsub16, 0x0000ffff, 0x8000ffff, 0x80000000, 760); 
TEST_RR_OP( 191 , rsub16, 0x4000e994, 0x00008000, 0x8000acd8, 764); 
TEST_RR_OP( 192 , rsub16, 0x0000ed79, 0xffffffff, 0xffff250d, 768); 
TEST_RR_OP( 193 , rsub16, 0xffffeca7, 0xffffffff, 0x000026b0, 772); 
TEST_RR_OP( 194 , rsub16, 0x167c0000, 0x0000ffff, 0xd307ffff, 776); 
TEST_RR_OP( 195 , rsub16, 0xd1a9ffff, 0xa351ffff, 0xffff0000, 780); 
TEST_RR_OP( 196 , rsub16, 0x261a1be9, 0xffffb7d2, 0xb3ca8000, 784); 
TEST_RR_OP( 197 , rsub16, 0xe9580000, 0x80008000, 0xad508000, 788); 
TEST_RR_OP( 198 , rsub16, 0xffffde49, 0xffffbc92, 0x0000ffff, 792); 
TEST_RR_OP( 199 , rsub16, 0x0000ffef, 0x8000ffdf, 0x80000000, 796); 

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
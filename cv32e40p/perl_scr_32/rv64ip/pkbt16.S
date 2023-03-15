# See LICENSE for license details.
#*****************************************************************************
# pkbt16.S
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

TEST_RR_OP( 2 , pkbt16, 0xffff7fa6, 0x8000ffff, 0x7fa60000, 8); 
TEST_RR_OP( 3 , pkbt16, 0xffff0000, 0x3035ffff, 0x0000e120, 12); 
TEST_RR_OP( 4 , pkbt16, 0x80000000, 0x80008000, 0x00003bac, 16); 
TEST_RR_OP( 5 , pkbt16, 0x00000000, 0x00000000, 0x0000fd60, 20); 
TEST_RR_OP( 6 , pkbt16, 0xc7ee8000, 0xffffc7ee, 0x8000b0c0, 24); 
TEST_RR_OP( 7 , pkbt16, 0xffffffff, 0x0000ffff, 0xffffe189, 28); 
TEST_RR_OP( 8 , pkbt16, 0x55d1ffff, 0x000055d1, 0xffffffff, 32); 
TEST_RR_OP( 9 , pkbt16, 0xffffbb42, 0x8000ffff, 0xbb428000, 36); 
TEST_RR_OP( 10 , pkbt16, 0x00008000, 0xffff0000, 0x8000ffff, 40); 
TEST_RR_OP( 11 , pkbt16, 0x2cf5ffff, 0xd6962cf5, 0xffffffff, 44); 
TEST_RR_OP( 12 , pkbt16, 0x8000ffff, 0xffff8000, 0xffffd68e, 48); 
TEST_RR_OP( 13 , pkbt16, 0x80008000, 0x00008000, 0x8000b4a7, 52); 
TEST_RR_OP( 14 , pkbt16, 0xffffffff, 0x991cffff, 0xffffa2fd, 56); 
TEST_RR_OP( 15 , pkbt16, 0xffff0000, 0xffffffff, 0x00000000, 60); 
TEST_RR_OP( 16 , pkbt16, 0xffff0000, 0x09cfffff, 0x00005919, 64); 
TEST_RR_OP( 17 , pkbt16, 0xffffffff, 0x1a67ffff, 0xffffffff, 68); 
TEST_RR_OP( 18 , pkbt16, 0x8000ffff, 0x00008000, 0xffff8c21, 72); 
TEST_RR_OP( 19 , pkbt16, 0x00008000, 0x80000000, 0x8000982c, 76); 
TEST_RR_OP( 20 , pkbt16, 0xffffffff, 0x8000ffff, 0xffff8000, 80); 
TEST_RR_OP( 21 , pkbt16, 0x8000ffff, 0xffff8000, 0xffffffff, 84); 
TEST_RR_OP( 22 , pkbt16, 0xffff8000, 0x8000ffff, 0x80000000, 88); 
TEST_RR_OP( 23 , pkbt16, 0x50a88000, 0x000050a8, 0x80008000, 92); 
TEST_RR_OP( 24 , pkbt16, 0xffff8000, 0x662bffff, 0x80000000, 96); 
TEST_RR_OP( 25 , pkbt16, 0xffff8000, 0x0000ffff, 0x8000ffff, 100); 
TEST_RR_OP( 26 , pkbt16, 0xffff0000, 0xffffffff, 0x0000ffff, 104); 
TEST_RR_OP( 27 , pkbt16, 0xe65827c2, 0x9c25e658, 0x27c28000, 108); 
TEST_RR_OP( 28 , pkbt16, 0xbd8d8000, 0xffffbd8d, 0x8000ffff, 112); 
TEST_RR_OP( 29 , pkbt16, 0x8000f3dc, 0x80008000, 0xf3dcffff, 116); 
TEST_RR_OP( 30 , pkbt16, 0xffffffff, 0x8000ffff, 0xffff0000, 120); 
TEST_RR_OP( 31 , pkbt16, 0xcac1ffff, 0x8000cac1, 0xffffe451, 124); 
TEST_RR_OP( 32 , pkbt16, 0x00000000, 0x47b20000, 0x0000ffff, 128); 
TEST_RR_OP( 33 , pkbt16, 0x00008000, 0x80000000, 0x80000000, 132); 
TEST_RR_OP( 34 , pkbt16, 0xffffffff, 0x23ebffff, 0xffffffff, 136); 
TEST_RR_OP( 35 , pkbt16, 0xffffffff, 0xffffffff, 0xffff0000, 140); 
TEST_RR_OP( 36 , pkbt16, 0xffff8000, 0xffffffff, 0x8000ffff, 144); 
TEST_RR_OP( 37 , pkbt16, 0x8556ffff, 0x80008556, 0xffff5922, 148); 
TEST_RR_OP( 38 , pkbt16, 0xffffffff, 0xaf36ffff, 0xffff0000, 152); 
TEST_RR_OP( 39 , pkbt16, 0x80008000, 0x6e478000, 0x80008000, 156); 
TEST_RR_OP( 40 , pkbt16, 0x80001996, 0xffff8000, 0x19962f37, 160); 
TEST_RR_OP( 41 , pkbt16, 0x00008000, 0xf3020000, 0x800001f5, 164); 
TEST_RR_OP( 42 , pkbt16, 0x80000000, 0xffff8000, 0x00000000, 168); 
TEST_RR_OP( 43 , pkbt16, 0xffffffff, 0x8000ffff, 0xffffffff, 172); 
TEST_RR_OP( 44 , pkbt16, 0x20e60000, 0x800020e6, 0x00008000, 176); 
TEST_RR_OP( 45 , pkbt16, 0xf9bd0000, 0x0000f9bd, 0x0000ffff, 180); 
TEST_RR_OP( 46 , pkbt16, 0xc04ea06e, 0x8000c04e, 0xa06effff, 184); 
TEST_RR_OP( 47 , pkbt16, 0x4db22e45, 0x00004db2, 0x2e450000, 188); 
TEST_RR_OP( 48 , pkbt16, 0x80008000, 0xc9748000, 0x8000a3f8, 192); 
TEST_RR_OP( 49 , pkbt16, 0x80008000, 0x00008000, 0x8000ae61, 196); 
TEST_RR_OP( 50 , pkbt16, 0x0000ffff, 0xffff0000, 0xffff8000, 200); 
TEST_RR_OP( 51 , pkbt16, 0xffff0000, 0x074cffff, 0x00000000, 204); 
TEST_RR_OP( 52 , pkbt16, 0xba224dfb, 0xffffba22, 0x4dfbffff, 208); 
TEST_RR_OP( 53 , pkbt16, 0xe8dbd218, 0xffffe8db, 0xd2180000, 212); 
TEST_RR_OP( 54 , pkbt16, 0x00000cad, 0xffff0000, 0x0cad8000, 216); 
TEST_RR_OP( 55 , pkbt16, 0x80000000, 0x3d698000, 0x00008000, 220); 
TEST_RR_OP( 56 , pkbt16, 0xffffffff, 0x8000ffff, 0xffff8000, 224); 
TEST_RR_OP( 57 , pkbt16, 0x00001146, 0x00000000, 0x1146ffff, 228); 
TEST_RR_OP( 58 , pkbt16, 0x5d6c8000, 0x80005d6c, 0x8000ffff, 232); 
TEST_RR_OP( 59 , pkbt16, 0x6da5ffff, 0x97296da5, 0xffff2c87, 236); 
TEST_RR_OP( 60 , pkbt16, 0x76eb8000, 0x800076eb, 0x80004f65, 240); 
TEST_RR_OP( 61 , pkbt16, 0x80000000, 0x80008000, 0x00004fdd, 244); 
TEST_RR_OP( 62 , pkbt16, 0x00008000, 0x80000000, 0x80008000, 248); 
TEST_RR_OP( 63 , pkbt16, 0xffff7bd6, 0x8000ffff, 0x7bd60000, 252); 
TEST_RR_OP( 64 , pkbt16, 0x80000000, 0x7e418000, 0x00008bfa, 256); 
TEST_RR_OP( 65 , pkbt16, 0xffff9f9e, 0xffffffff, 0x9f9e2912, 260); 
TEST_RR_OP( 66 , pkbt16, 0xffff0000, 0xffffffff, 0x0000ffff, 264); 
TEST_RR_OP( 67 , pkbt16, 0x0000ffff, 0x03e40000, 0xffffffff, 268); 
TEST_RR_OP( 68 , pkbt16, 0x00000000, 0xffff0000, 0x00000000, 272); 
TEST_RR_OP( 69 , pkbt16, 0x4a798000, 0x00004a79, 0x8000ffff, 276); 
TEST_RR_OP( 70 , pkbt16, 0x827416dc, 0x80008274, 0x16dcffff, 280); 
TEST_RR_OP( 71 , pkbt16, 0xa3b30000, 0x5de0a3b3, 0x00008000, 284); 
TEST_RR_OP( 72 , pkbt16, 0xffffffff, 0x8000ffff, 0xffff8000, 288); 
TEST_RR_OP( 73 , pkbt16, 0x08ab91fb, 0xffff08ab, 0x91fb5c65, 292); 
TEST_RR_OP( 74 , pkbt16, 0x80000907, 0xc8298000, 0x090736fc, 296); 
TEST_RR_OP( 75 , pkbt16, 0x00008000, 0x00000000, 0x80000000, 300); 
TEST_RR_OP( 76 , pkbt16, 0x00008000, 0x00000000, 0x8000ffff, 304); 
TEST_RR_OP( 77 , pkbt16, 0x80000000, 0xaa558000, 0x0000eb0c, 308); 
TEST_RR_OP( 78 , pkbt16, 0xffffffff, 0xffffffff, 0xffff0000, 312); 
TEST_RR_OP( 79 , pkbt16, 0x8000ffff, 0x80008000, 0xffff153f, 316); 
TEST_RR_OP( 80 , pkbt16, 0x1fc28000, 0x80001fc2, 0x800070f8, 320); 
TEST_RR_OP( 81 , pkbt16, 0x00000000, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , pkbt16, 0x0000ffff, 0x00000000, 0xffff8000, 328); 
TEST_RR_OP( 83 , pkbt16, 0x80000000, 0xffff8000, 0x00008a0e, 332); 
TEST_RR_OP( 84 , pkbt16, 0x80000000, 0xb1908000, 0x0000028f, 336); 
TEST_RR_OP( 85 , pkbt16, 0x8000fd81, 0x00008000, 0xfd81ffff, 340); 
TEST_RR_OP( 86 , pkbt16, 0xa0f30000, 0x0000a0f3, 0x00008000, 344); 
TEST_RR_OP( 87 , pkbt16, 0xffff8000, 0x8000ffff, 0x80000000, 348); 
TEST_RR_OP( 88 , pkbt16, 0xffff8000, 0x8000ffff, 0x80008000, 352); 
TEST_RR_OP( 89 , pkbt16, 0x800046d6, 0x80008000, 0x46d68000, 356); 
TEST_RR_OP( 90 , pkbt16, 0x00000000, 0xffff0000, 0x00002500, 360); 
TEST_RR_OP( 91 , pkbt16, 0x22bdca48, 0x000022bd, 0xca48ffff, 364); 
TEST_RR_OP( 92 , pkbt16, 0xffff0000, 0x4cfdffff, 0x00008000, 368); 
TEST_RR_OP( 93 , pkbt16, 0xffffffff, 0x8f0cffff, 0xffff97dd, 372); 
TEST_RR_OP( 94 , pkbt16, 0xf4908000, 0xfffff490, 0x8000682a, 376); 
TEST_RR_OP( 95 , pkbt16, 0xffff0000, 0x0000ffff, 0x0000ffff, 380); 
TEST_RR_OP( 96 , pkbt16, 0x00008000, 0x00000000, 0x80007380, 384); 
TEST_RR_OP( 97 , pkbt16, 0x77958000, 0xffff7795, 0x80000000, 388); 
TEST_RR_OP( 98 , pkbt16, 0x80000000, 0x00008000, 0x00000000, 392); 
TEST_RR_OP( 99 , pkbt16, 0x80008000, 0x53ba8000, 0x80000000, 396); 
TEST_RR_OP( 100 , pkbt16, 0x00008000, 0xffff0000, 0x80008000, 400); 
TEST_RR_OP( 101 , pkbt16, 0xffffffff, 0x8000ffff, 0xffff8000, 404); 
TEST_RR_OP( 102 , pkbt16, 0x8000ffff, 0x80008000, 0xffffd4d8, 408); 
TEST_RR_OP( 103 , pkbt16, 0x00008000, 0x00000000, 0x8000ffff, 412); 
TEST_RR_OP( 104 , pkbt16, 0x00000f00, 0xf8fc0000, 0x0f001e53, 416); 
TEST_RR_OP( 105 , pkbt16, 0x80008000, 0x49548000, 0x80008cab, 420); 
TEST_RR_OP( 106 , pkbt16, 0x8000ffff, 0xffff8000, 0xffffffff, 424); 
TEST_RR_OP( 107 , pkbt16, 0xffffffff, 0x0000ffff, 0xffff0000, 428); 
TEST_RR_OP( 108 , pkbt16, 0x00005614, 0x00000000, 0x5614aad2, 432); 
TEST_RR_OP( 109 , pkbt16, 0xffffffff, 0x0000ffff, 0xfffffbba, 436); 
TEST_RR_OP( 110 , pkbt16, 0x0000ffff, 0x80000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , pkbt16, 0x0000ffff, 0x5f620000, 0xffffeea0, 444); 
TEST_RR_OP( 112 , pkbt16, 0xffff0000, 0x8000ffff, 0x0000ffff, 448); 
TEST_RR_OP( 113 , pkbt16, 0x9532ffff, 0xffff9532, 0xffffffff, 452); 
TEST_RR_OP( 114 , pkbt16, 0xffff8000, 0xa49bffff, 0x8000ffff, 456); 
TEST_RR_OP( 115 , pkbt16, 0x80008000, 0xcb338000, 0x8000ffff, 460); 
TEST_RR_OP( 116 , pkbt16, 0xffff8615, 0x0000ffff, 0x8615e8cb, 464); 
TEST_RR_OP( 117 , pkbt16, 0x8000ffff, 0x80008000, 0xffff0000, 468); 
TEST_RR_OP( 118 , pkbt16, 0x80000000, 0x39658000, 0x00000000, 472); 
TEST_RR_OP( 119 , pkbt16, 0x0000ffff, 0xffff0000, 0xffff8000, 476); 
TEST_RR_OP( 120 , pkbt16, 0x297c4128, 0x0000297c, 0x41288000, 480); 
TEST_RR_OP( 121 , pkbt16, 0xffff8000, 0x0000ffff, 0x8000ffff, 484); 
TEST_RR_OP( 122 , pkbt16, 0xffff8000, 0x8000ffff, 0x8000d245, 488); 
TEST_RR_OP( 123 , pkbt16, 0x51b88000, 0x000051b8, 0x8000b566, 492); 
TEST_RR_OP( 124 , pkbt16, 0x3715ffff, 0x466e3715, 0xffff8000, 496); 
TEST_RR_OP( 125 , pkbt16, 0x8c348000, 0xffff8c34, 0x80000000, 500); 
TEST_RR_OP( 126 , pkbt16, 0x00000000, 0x00000000, 0x00005974, 504); 
TEST_RR_OP( 127 , pkbt16, 0x398d8000, 0xee01398d, 0x80008000, 508); 
TEST_RR_OP( 128 , pkbt16, 0x800014ce, 0x00008000, 0x14ceffff, 512); 
TEST_RR_OP( 129 , pkbt16, 0xffffffff, 0x0000ffff, 0xffff0000, 516); 
TEST_RR_OP( 130 , pkbt16, 0x8000ffff, 0x00008000, 0xffffffff, 520); 
TEST_RR_OP( 131 , pkbt16, 0xffff0000, 0x0000ffff, 0x0000cc06, 524); 
TEST_RR_OP( 132 , pkbt16, 0x8000f823, 0xffff8000, 0xf8238000, 528); 
TEST_RR_OP( 133 , pkbt16, 0x2fbaffff, 0x00002fba, 0xffffffff, 532); 
TEST_RR_OP( 134 , pkbt16, 0xa0e04d12, 0xe211a0e0, 0x4d12ea0f, 536); 
TEST_RR_OP( 135 , pkbt16, 0xffff19fe, 0xffffffff, 0x19fe2568, 540); 
TEST_RR_OP( 136 , pkbt16, 0xcd96ffff, 0xffffcd96, 0xffff4fba, 544); 
TEST_RR_OP( 137 , pkbt16, 0x00008000, 0x80000000, 0x800066f6, 548); 
TEST_RR_OP( 138 , pkbt16, 0xffff37f8, 0xffffffff, 0x37f8ffff, 552); 
TEST_RR_OP( 139 , pkbt16, 0x00008000, 0x34e50000, 0x8000ffff, 556); 
TEST_RR_OP( 140 , pkbt16, 0xfc0d0000, 0x0000fc0d, 0x00000000, 560); 
TEST_RR_OP( 141 , pkbt16, 0x80000000, 0x80008000, 0x0000ffff, 564); 
TEST_RR_OP( 142 , pkbt16, 0x0000ffff, 0x2e530000, 0xffff8000, 568); 
TEST_RR_OP( 143 , pkbt16, 0x8000b8c6, 0x886e8000, 0xb8c64c91, 572); 
TEST_RR_OP( 144 , pkbt16, 0xffff8000, 0xffffffff, 0x8000ffff, 576); 
TEST_RR_OP( 145 , pkbt16, 0xffff0000, 0xffffffff, 0x0000194e, 580); 
TEST_RR_OP( 146 , pkbt16, 0x532b8000, 0x8000532b, 0x80000000, 584); 
TEST_RR_OP( 147 , pkbt16, 0xffff046e, 0x8000ffff, 0x046eb712, 588); 
TEST_RR_OP( 148 , pkbt16, 0x8000ffff, 0x00008000, 0xffffd669, 592); 
TEST_RR_OP( 149 , pkbt16, 0xffff0000, 0x0000ffff, 0x0000d8c6, 596); 
TEST_RR_OP( 150 , pkbt16, 0xffffffff, 0x9d9effff, 0xffffffff, 600); 
TEST_RR_OP( 151 , pkbt16, 0x8000ffff, 0xe9c28000, 0xffffffff, 604); 
TEST_RR_OP( 152 , pkbt16, 0xffff5b2e, 0x701fffff, 0x5b2effff, 608); 
TEST_RR_OP( 153 , pkbt16, 0x00008000, 0x00000000, 0x8000d342, 612); 
TEST_RR_OP( 154 , pkbt16, 0x00008000, 0xb9130000, 0x80008000, 616); 
TEST_RR_OP( 155 , pkbt16, 0x8000134e, 0x80008000, 0x134e8000, 620); 
TEST_RR_OP( 156 , pkbt16, 0xffff0000, 0x0000ffff, 0x00000000, 624); 
TEST_RR_OP( 157 , pkbt16, 0x00000000, 0x2d480000, 0x00000000, 628); 
TEST_RR_OP( 158 , pkbt16, 0xffff8000, 0x0000ffff, 0x8000ffff, 632); 
TEST_RR_OP( 159 , pkbt16, 0x80000000, 0xffff8000, 0x00008000, 636); 
TEST_RR_OP( 160 , pkbt16, 0x00008000, 0x80000000, 0x80000000, 640); 
TEST_RR_OP( 161 , pkbt16, 0x0000ffff, 0xef540000, 0xffff8000, 644); 
TEST_RR_OP( 162 , pkbt16, 0x0000ba8e, 0x80000000, 0xba8e6548, 648); 
TEST_RR_OP( 163 , pkbt16, 0x27d1ffff, 0x800027d1, 0xffff0000, 652); 
TEST_RR_OP( 164 , pkbt16, 0xffff0000, 0xffffffff, 0x00000000, 656); 
TEST_RR_OP( 165 , pkbt16, 0x12cc0000, 0xffff12cc, 0x00008000, 660); 
TEST_RR_OP( 166 , pkbt16, 0x00005ea4, 0x80000000, 0x5ea48000, 664); 
TEST_RR_OP( 167 , pkbt16, 0x00000000, 0x80000000, 0x0000ffff, 668); 
TEST_RR_OP( 168 , pkbt16, 0x8000ffff, 0xffff8000, 0xffffffff, 672); 
TEST_RR_OP( 169 , pkbt16, 0xffffa888, 0x8000ffff, 0xa8880000, 676); 
TEST_RR_OP( 170 , pkbt16, 0xffffdd9e, 0xffffffff, 0xdd9effff, 680); 
TEST_RR_OP( 171 , pkbt16, 0xffff8e25, 0x0000ffff, 0x8e2521b2, 684); 
TEST_RR_OP( 172 , pkbt16, 0x00008000, 0xffff0000, 0x800093f4, 688); 
TEST_RR_OP( 173 , pkbt16, 0x80008000, 0xffff8000, 0x80008000, 692); 
TEST_RR_OP( 174 , pkbt16, 0xffff8000, 0xffffffff, 0x80008000, 696); 
TEST_RR_OP( 175 , pkbt16, 0xcf258000, 0xffffcf25, 0x80000000, 700); 
TEST_RR_OP( 176 , pkbt16, 0x00007c32, 0x00000000, 0x7c32ffff, 704); 
TEST_RR_OP( 177 , pkbt16, 0xffffffff, 0x8000ffff, 0xffff8000, 708); 
TEST_RR_OP( 178 , pkbt16, 0x8000ffff, 0xffff8000, 0xffffcc86, 712); 
TEST_RR_OP( 179 , pkbt16, 0xd4b8ffff, 0x0000d4b8, 0xffff8000, 716); 
TEST_RR_OP( 180 , pkbt16, 0x8000ffff, 0xec2f8000, 0xffff0000, 720); 
TEST_RR_OP( 181 , pkbt16, 0xffffffff, 0x7aecffff, 0xffff0000, 724); 
TEST_RR_OP( 182 , pkbt16, 0xc3f4ffff, 0x882cc3f4, 0xffff0000, 728); 
TEST_RR_OP( 183 , pkbt16, 0x80008000, 0xe3c38000, 0x80008000, 732); 
TEST_RR_OP( 184 , pkbt16, 0x63a1f62d, 0x2c0763a1, 0xf62d0000, 736); 
TEST_RR_OP( 185 , pkbt16, 0x37e8865f, 0xfa1037e8, 0x865f2119, 740); 
TEST_RR_OP( 186 , pkbt16, 0x00000000, 0x80000000, 0x000087eb, 744); 
TEST_RR_OP( 187 , pkbt16, 0x80007efa, 0xc7f98000, 0x7efa1f80, 748); 
TEST_RR_OP( 188 , pkbt16, 0x0000ffff, 0x80000000, 0xffff8000, 752); 
TEST_RR_OP( 189 , pkbt16, 0xffffffff, 0xffffffff, 0xffffa409, 756); 
TEST_RR_OP( 190 , pkbt16, 0x9a51ffff, 0xffff9a51, 0xffff0000, 760); 
TEST_RR_OP( 191 , pkbt16, 0xffffffff, 0x0000ffff, 0xffffffff, 764); 
TEST_RR_OP( 192 , pkbt16, 0xffff661a, 0xc4b1ffff, 0x661affff, 768); 
TEST_RR_OP( 193 , pkbt16, 0xffffbd01, 0x0000ffff, 0xbd01ffff, 772); 
TEST_RR_OP( 194 , pkbt16, 0x8000ffff, 0x00008000, 0xffff8000, 776); 
TEST_RR_OP( 195 , pkbt16, 0xf303ffff, 0x8000f303, 0xffff0000, 780); 
TEST_RR_OP( 196 , pkbt16, 0x000015df, 0x502f0000, 0x15df8000, 784); 
TEST_RR_OP( 197 , pkbt16, 0xffffffff, 0xffffffff, 0xffff0000, 788); 
TEST_RR_OP( 198 , pkbt16, 0x80000000, 0x00008000, 0x0000edb9, 792); 
TEST_RR_OP( 199 , pkbt16, 0x80003d29, 0x1b6a8000, 0x3d290000, 796); 

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
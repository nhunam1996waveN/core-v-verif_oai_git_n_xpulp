# See LICENSE for license details.
#*****************************************************************************
# sra16.u.S
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

TEST_RR_OP( 2 , sra16.u, 0x8000e2eb, 0x8000e2eb, 0x8b9d0000, 8); 
TEST_RR_OP( 3 , sra16.u, 0xffff0000, 0xffff0000, 0xffff0000, 12); 
TEST_RR_OP( 4 , sra16.u, 0x131bffff, 0x131bffff, 0x80008000, 16); 
TEST_RR_OP( 5 , sra16.u, 0x00000000, 0xc4690000, 0xffffffff, 20); 
TEST_RR_OP( 6 , sra16.u, 0x009b0036, 0x4d901afb, 0x80006d57, 24); 
TEST_RR_OP( 7 , sra16.u, 0x0000e182, 0x0000c303, 0xffffaa81, 28); 
TEST_RR_OP( 8 , sra16.u, 0x00000000, 0x00000000, 0x00004fc7, 32); 
TEST_RR_OP( 9 , sra16.u, 0xffff0000, 0x80000000, 0x8000a0bf, 36); 
TEST_RR_OP( 10 , sra16.u, 0xffff0000, 0xffff0000, 0x832e8000, 40); 
TEST_RR_OP( 11 , sra16.u, 0xeb86b780, 0xeb86b780, 0x800021e0, 44); 
TEST_RR_OP( 12 , sra16.u, 0xffff0000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , sra16.u, 0x80007f0a, 0x80007f0a, 0xffff0000, 52); 
TEST_RR_OP( 14 , sra16.u, 0xffff0000, 0x8000daea, 0x8000ffff, 56); 
TEST_RR_OP( 15 , sra16.u, 0xffffffff, 0xffffffff, 0x05aa8000, 60); 
TEST_RR_OP( 16 , sra16.u, 0xffffffff, 0x80008000, 0x0000ffff, 64); 
TEST_RR_OP( 17 , sra16.u, 0x80000000, 0x80000000, 0xffff8000, 68); 
TEST_RR_OP( 18 , sra16.u, 0x00000000, 0x00000000, 0x00008000, 72); 
TEST_RR_OP( 19 , sra16.u, 0xb7698000, 0xb7698000, 0x0f070000, 76); 
TEST_RR_OP( 20 , sra16.u, 0x80000000, 0x80000000, 0x00008000, 80); 
TEST_RR_OP( 21 , sra16.u, 0x00008000, 0x00008000, 0x00000000, 84); 
TEST_RR_OP( 22 , sra16.u, 0x00000000, 0xffff0000, 0x8000ffff, 88); 
TEST_RR_OP( 23 , sra16.u, 0xffffffff, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , sra16.u, 0xffff0000, 0x8000ffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , sra16.u, 0x0000fff0, 0xffff8000, 0xfc21f1bb, 100); 
TEST_RR_OP( 26 , sra16.u, 0x00000000, 0x35aaffff, 0x99edffff, 104); 
TEST_RR_OP( 27 , sra16.u, 0xfffffff1, 0xf5438557, 0x800007cb, 108); 
TEST_RR_OP( 28 , sra16.u, 0x8000ffff, 0x8000ffff, 0x80000000, 112); 
TEST_RR_OP( 29 , sra16.u, 0xffff0000, 0x8000ffff, 0x0000960f, 116); 
TEST_RR_OP( 30 , sra16.u, 0xfe690000, 0xcd2effff, 0x800045b5, 120); 
TEST_RR_OP( 31 , sra16.u, 0x00008000, 0x00008000, 0x00000000, 124); 
TEST_RR_OP( 32 , sra16.u, 0x00010000, 0x78020000, 0xffffffff, 128); 
TEST_RR_OP( 33 , sra16.u, 0x00000000, 0xffffffff, 0x8000ffff, 132); 
TEST_RR_OP( 34 , sra16.u, 0xffffffff, 0xffffffff, 0xa2978000, 136); 
TEST_RR_OP( 35 , sra16.u, 0x0000ffff, 0x0000ffff, 0xfe9d8000, 140); 
TEST_RR_OP( 36 , sra16.u, 0x0000ffec, 0x0000fd89, 0x8000b125, 144); 
TEST_RR_OP( 37 , sra16.u, 0xffff8000, 0xffff8000, 0x80000000, 148); 
TEST_RR_OP( 38 , sra16.u, 0x0000ffff, 0x0000ad69, 0x0000ffff, 152); 
TEST_RR_OP( 39 , sra16.u, 0xffffffff, 0xffffffff, 0x00008000, 156); 
TEST_RR_OP( 40 , sra16.u, 0xffffffff, 0xffffffff, 0x00008000, 160); 
TEST_RR_OP( 41 , sra16.u, 0x00000000, 0x00000000, 0x0000a03e, 164); 
TEST_RR_OP( 42 , sra16.u, 0x0000ffff, 0xffff8000, 0x88a1ffff, 168); 
TEST_RR_OP( 43 , sra16.u, 0x80000000, 0x80000000, 0x80008000, 172); 
TEST_RR_OP( 44 , sra16.u, 0x00006a0b, 0x00006a0b, 0xffff0000, 176); 
TEST_RR_OP( 45 , sra16.u, 0x80008000, 0x80008000, 0x80008000, 180); 
TEST_RR_OP( 46 , sra16.u, 0x80000000, 0x80000000, 0xffff0000, 184); 
TEST_RR_OP( 47 , sra16.u, 0x00000000, 0xffff0000, 0x800071b7, 188); 
TEST_RR_OP( 48 , sra16.u, 0x8000b19c, 0x8000b19c, 0x00008000, 192); 
TEST_RR_OP( 49 , sra16.u, 0x0000fffc, 0xffff8000, 0x00005afd, 196); 
TEST_RR_OP( 50 , sra16.u, 0x0000fff0, 0xffff8000, 0x8000667b, 200); 
TEST_RR_OP( 51 , sra16.u, 0xffe00000, 0x8000ffff, 0x80003b3a, 204); 
TEST_RR_OP( 52 , sra16.u, 0x00010000, 0x50170683, 0x0000ffff, 208); 
TEST_RR_OP( 53 , sra16.u, 0x00000000, 0x0000ffff, 0x0000ffff, 212); 
TEST_RR_OP( 54 , sra16.u, 0x00000000, 0xffff0000, 0x0000ffff, 216); 
TEST_RR_OP( 55 , sra16.u, 0x00f80000, 0x03e00000, 0x8000af22, 220); 
TEST_RR_OP( 56 , sra16.u, 0x00000000, 0x0000ffff, 0x0000ff9a, 224); 
TEST_RR_OP( 57 , sra16.u, 0x80000000, 0x80000000, 0x234c0000, 228); 
TEST_RR_OP( 58 , sra16.u, 0x000bfff0, 0x57558000, 0x8000b1db, 232); 
TEST_RR_OP( 59 , sra16.u, 0x0000ffda, 0xffffb3ba, 0x703f6719, 236); 
TEST_RR_OP( 60 , sra16.u, 0x8000ffff, 0x8000ffff, 0x00000000, 240); 
TEST_RR_OP( 61 , sra16.u, 0x80000000, 0x80000000, 0xffff8000, 244); 
TEST_RR_OP( 62 , sra16.u, 0xc121ffff, 0xc121ffff, 0x00008000, 248); 
TEST_RR_OP( 63 , sra16.u, 0x00008000, 0x00008000, 0x80008000, 252); 
TEST_RR_OP( 64 , sra16.u, 0x80000000, 0x80000000, 0x00008000, 256); 
TEST_RR_OP( 65 , sra16.u, 0x8000ffff, 0x8000ffff, 0x80008000, 260); 
TEST_RR_OP( 66 , sra16.u, 0x80000000, 0x80000000, 0x80008000, 264); 
TEST_RR_OP( 67 , sra16.u, 0xffff0000, 0x8000ffff, 0x8000ffff, 268); 
TEST_RR_OP( 68 , sra16.u, 0x00000000, 0x0000ffff, 0x6692ffff, 272); 
TEST_RR_OP( 69 , sra16.u, 0xffff8000, 0xffff8000, 0xca668000, 276); 
TEST_RR_OP( 70 , sra16.u, 0xffff0000, 0x8000f51f, 0xffffffff, 280); 
TEST_RR_OP( 71 , sra16.u, 0xffff0000, 0xffff0000, 0xffff8000, 284); 
TEST_RR_OP( 72 , sra16.u, 0xd2f80000, 0xd2f80000, 0xffff8000, 288); 
TEST_RR_OP( 73 , sra16.u, 0xffffffff, 0x80008000, 0xfea8ffff, 292); 
TEST_RR_OP( 74 , sra16.u, 0xffff0000, 0x8000ffff, 0x8000ffff, 296); 
TEST_RR_OP( 75 , sra16.u, 0x0000ffff, 0x00009437, 0x4ce3cd4f, 300); 
TEST_RR_OP( 76 , sra16.u, 0xffff0001, 0x80006c82, 0x4937ffff, 304); 
TEST_RR_OP( 77 , sra16.u, 0x00000000, 0xffff0000, 0xffffffff, 308); 
TEST_RR_OP( 78 , sra16.u, 0x88730000, 0x88730000, 0x514b3180, 312); 
TEST_RR_OP( 79 , sra16.u, 0x00003c67, 0x00003c67, 0x0000e270, 316); 
TEST_RR_OP( 80 , sra16.u, 0x003b0000, 0x7691ffff, 0x80001d49, 320); 
TEST_RR_OP( 81 , sra16.u, 0x80008000, 0x80008000, 0xc54d0000, 324); 
TEST_RR_OP( 82 , sra16.u, 0x00000000, 0xffff0000, 0x023e057a, 328); 
TEST_RR_OP( 83 , sra16.u, 0x4c32ffff, 0x4c32ffff, 0x83f80000, 332); 
TEST_RR_OP( 84 , sra16.u, 0x80008000, 0x80008000, 0x80000000, 336); 
TEST_RR_OP( 85 , sra16.u, 0x00000000, 0x00000000, 0x80000000, 340); 
TEST_RR_OP( 86 , sra16.u, 0x0000ffff, 0xc68b8000, 0xffffffff, 344); 
TEST_RR_OP( 87 , sra16.u, 0x8000ffff, 0x8000ffff, 0x80008000, 348); 
TEST_RR_OP( 88 , sra16.u, 0x0000e000, 0xffff8000, 0x0000d6b2, 352); 
TEST_RR_OP( 89 , sra16.u, 0x00008000, 0x00008000, 0x75700000, 356); 
TEST_RR_OP( 90 , sra16.u, 0xffff8000, 0xffff8000, 0x80000000, 360); 
TEST_RR_OP( 91 , sra16.u, 0x47f10000, 0x47f10000, 0xffff0000, 364); 
TEST_RR_OP( 92 , sra16.u, 0x73880000, 0x73880000, 0xffff8000, 368); 
TEST_RR_OP( 93 , sra16.u, 0xffff0000, 0xffff0000, 0x5c4d0000, 372); 
TEST_RR_OP( 94 , sra16.u, 0x80000000, 0x80000000, 0x80008000, 376); 
TEST_RR_OP( 95 , sra16.u, 0x00060000, 0x6613ffff, 0x8000d67c, 380); 
TEST_RR_OP( 96 , sra16.u, 0x00000000, 0xffffcd87, 0x8000ffff, 384); 
TEST_RR_OP( 97 , sra16.u, 0x80008000, 0x80008000, 0x01d70000, 388); 
TEST_RR_OP( 98 , sra16.u, 0x0000ffff, 0x0000ffff, 0xffff0000, 392); 
TEST_RR_OP( 99 , sra16.u, 0x00000001, 0x00007a02, 0x0000ffff, 396); 
TEST_RR_OP( 100 , sra16.u, 0x00010000, 0x4fed0000, 0xcacaffff, 400); 
TEST_RR_OP( 101 , sra16.u, 0x349cf04f, 0x6937e09d, 0x80000d11, 404); 
TEST_RR_OP( 102 , sra16.u, 0x8000ffff, 0x8000ffff, 0xf3ac0000, 408); 
TEST_RR_OP( 103 , sra16.u, 0xffffffff, 0xffffffff, 0x00008000, 412); 
TEST_RR_OP( 104 , sra16.u, 0x00000000, 0x37ee36fc, 0x06f1ffff, 416); 
TEST_RR_OP( 105 , sra16.u, 0x77d40000, 0x77d40000, 0x2c7b0000, 420); 
TEST_RR_OP( 106 , sra16.u, 0xfffa0000, 0xa6d7ffff, 0xffffb02c, 424); 
TEST_RR_OP( 107 , sra16.u, 0xffff0000, 0x8000ffff, 0xffffffff, 428); 
TEST_RR_OP( 108 , sra16.u, 0x00008000, 0x00008000, 0x00008000, 432); 
TEST_RR_OP( 109 , sra16.u, 0x0000ffe0, 0x00008000, 0x0000851a, 436); 
TEST_RR_OP( 110 , sra16.u, 0xffffffff, 0xffffffff, 0x00000000, 440); 
TEST_RR_OP( 111 , sra16.u, 0xff00ff00, 0x80008000, 0xffffd777, 444); 
TEST_RR_OP( 112 , sra16.u, 0xb1686b48, 0xb1686b48, 0x00008000, 448); 
TEST_RR_OP( 113 , sra16.u, 0xe000083a, 0x800020e6, 0xffff3c12, 452); 
TEST_RR_OP( 114 , sra16.u, 0x00008000, 0x00008000, 0x80008000, 456); 
TEST_RR_OP( 115 , sra16.u, 0x00020000, 0x265effff, 0x8000759c, 460); 
TEST_RR_OP( 116 , sra16.u, 0x00f300e0, 0x79a97014, 0xffffb007, 464); 
TEST_RR_OP( 117 , sra16.u, 0xcc24bc2d, 0xcc24bc2d, 0xffff0000, 468); 
TEST_RR_OP( 118 , sra16.u, 0x0000fffc, 0x00008000, 0x151a521d, 472); 
TEST_RR_OP( 119 , sra16.u, 0x5ba6ffff, 0x5ba6ffff, 0xffff0000, 476); 
TEST_RR_OP( 120 , sra16.u, 0xffff0000, 0xb70bffff, 0x4e36ffff, 480); 
TEST_RR_OP( 121 , sra16.u, 0xffff0000, 0x8000ffff, 0x8000ffff, 484); 
TEST_RR_OP( 122 , sra16.u, 0xffff0000, 0xb6bcffff, 0xc49cffff, 488); 
TEST_RR_OP( 123 , sra16.u, 0xffff8000, 0xffff8000, 0xffff0000, 492); 
TEST_RR_OP( 124 , sra16.u, 0x62d18000, 0x62d18000, 0x80000000, 496); 
TEST_RR_OP( 125 , sra16.u, 0x80000165, 0x80000165, 0x00008000, 500); 
TEST_RR_OP( 126 , sra16.u, 0x00000000, 0xef01c99c, 0x2bdeffff, 504); 
TEST_RR_OP( 127 , sra16.u, 0xffffffff, 0x80008000, 0xa98cffff, 508); 
TEST_RR_OP( 128 , sra16.u, 0xffff0000, 0xffff0000, 0xffff8000, 512); 
TEST_RR_OP( 129 , sra16.u, 0x0001ffff, 0x4cdd8ab5, 0x8000ffff, 516); 
TEST_RR_OP( 130 , sra16.u, 0x80002b2d, 0x80002b2d, 0x00008000, 520); 
TEST_RR_OP( 131 , sra16.u, 0xffff8000, 0xffff8000, 0x80008000, 524); 
TEST_RR_OP( 132 , sra16.u, 0xfff00000, 0x8000ffff, 0x80007d8b, 528); 
TEST_RR_OP( 133 , sra16.u, 0xc000c000, 0x80008000, 0x8000e681, 532); 
TEST_RR_OP( 134 , sra16.u, 0xffff0000, 0x800015d4, 0x0000aeaf, 536); 
TEST_RR_OP( 135 , sra16.u, 0x0000ffff, 0xffff8000, 0xffffffff, 540); 
TEST_RR_OP( 136 , sra16.u, 0xfffc0000, 0x8000ffff, 0xffff3c7d, 544); 
TEST_RR_OP( 137 , sra16.u, 0xffffffff, 0xffffffff, 0x00008000, 548); 
TEST_RR_OP( 138 , sra16.u, 0x0000ffe0, 0x00008000, 0xffff002a, 552); 
TEST_RR_OP( 139 , sra16.u, 0xffff8000, 0xffff8000, 0x80000000, 556); 
TEST_RR_OP( 140 , sra16.u, 0xffffffff, 0xffffffff, 0x00008000, 560); 
TEST_RR_OP( 141 , sra16.u, 0xffff0000, 0xffff0000, 0x12f70000, 564); 
TEST_RR_OP( 142 , sra16.u, 0x00000000, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , sra16.u, 0xfffc0000, 0x8000ffff, 0x00003e1d, 572); 
TEST_RR_OP( 144 , sra16.u, 0xffff0000, 0xffff0000, 0x969fb0d0, 576); 
TEST_RR_OP( 145 , sra16.u, 0x00008000, 0x00008000, 0x80000000, 580); 
TEST_RR_OP( 146 , sra16.u, 0x00000000, 0x0000ffff, 0x8000e319, 584); 
TEST_RR_OP( 147 , sra16.u, 0xffff0000, 0x80000000, 0xcbb50e2f, 588); 
TEST_RR_OP( 148 , sra16.u, 0x0000ffff, 0x00008000, 0x0000ffff, 592); 
TEST_RR_OP( 149 , sra16.u, 0x3b7b0000, 0x3b7b0000, 0x0000e9c0, 596); 
TEST_RR_OP( 150 , sra16.u, 0x00000000, 0x0000ffff, 0x0000f42c, 600); 
TEST_RR_OP( 151 , sra16.u, 0x90f8ffff, 0x90f8ffff, 0xdbf70000, 604); 
TEST_RR_OP( 152 , sra16.u, 0x00010000, 0x5dbc0000, 0x0000ffff, 608); 
TEST_RR_OP( 153 , sra16.u, 0xfffe0000, 0x80000000, 0xf56cd16e, 612); 
TEST_RR_OP( 154 , sra16.u, 0x1f18e97d, 0x7c5fa5f3, 0xfffff0c2, 616); 
TEST_RR_OP( 155 , sra16.u, 0xfffe0000, 0x80000000, 0xffff235e, 620); 
TEST_RR_OP( 156 , sra16.u, 0x0000ffff, 0x0000ffff, 0x00000000, 624); 
TEST_RR_OP( 157 , sra16.u, 0xfe00fe00, 0x80008000, 0x80007326, 628); 
TEST_RR_OP( 158 , sra16.u, 0x0000ffff, 0x0000ffff, 0x80000000, 632); 
TEST_RR_OP( 159 , sra16.u, 0x22a08000, 0x22a08000, 0xffff8000, 636); 
TEST_RR_OP( 160 , sra16.u, 0xffff0000, 0x8000ffff, 0x8000ffff, 640); 
TEST_RR_OP( 161 , sra16.u, 0x00008000, 0x00008000, 0x80000000, 644); 
TEST_RR_OP( 162 , sra16.u, 0x3935bbcc, 0x3935bbcc, 0x80000000, 648); 
TEST_RR_OP( 163 , sra16.u, 0xffff0000, 0x80000000, 0x36e4ffff, 652); 
TEST_RR_OP( 164 , sra16.u, 0x391b8000, 0x391b8000, 0x80000000, 656); 
TEST_RR_OP( 165 , sra16.u, 0x0000ffff, 0x0000ffff, 0x8000e2c0, 660); 
TEST_RR_OP( 166 , sra16.u, 0xa7bd3728, 0xa7bd3728, 0x00008000, 664); 
TEST_RR_OP( 167 , sra16.u, 0x03ce0000, 0x79c6ffff, 0x0000b845, 668); 
TEST_RR_OP( 168 , sra16.u, 0x031c0000, 0x031c0000, 0xd51c0000, 672); 
TEST_RR_OP( 169 , sra16.u, 0xf0000000, 0x80000000, 0x8000a773, 676); 
TEST_RR_OP( 170 , sra16.u, 0x0000ffff, 0x00008000, 0xffffffff, 680); 
TEST_RR_OP( 171 , sra16.u, 0x00000000, 0xffff0000, 0x80001b02, 684); 
TEST_RR_OP( 172 , sra16.u, 0x05620000, 0x56230000, 0x00000b64, 688); 
TEST_RR_OP( 173 , sra16.u, 0x0000fc00, 0x00008000, 0xde85d405, 692); 
TEST_RR_OP( 174 , sra16.u, 0x00000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , sra16.u, 0x80008000, 0x80008000, 0x800054f0, 700); 
TEST_RR_OP( 176 , sra16.u, 0x0001ffff, 0x60148000, 0x8000ffff, 704); 
TEST_RR_OP( 177 , sra16.u, 0x00000000, 0xffff0000, 0xce5c40dd, 708); 
TEST_RR_OP( 178 , sra16.u, 0x8000ffff, 0x8000ffff, 0xffff0000, 712); 
TEST_RR_OP( 179 , sra16.u, 0x00000000, 0xffff0000, 0xefc3ffff, 716); 
TEST_RR_OP( 180 , sra16.u, 0x9687ffff, 0x9687ffff, 0x80007eb0, 720); 
TEST_RR_OP( 181 , sra16.u, 0x0000ffff, 0xffff8000, 0x8000ffff, 724); 
TEST_RR_OP( 182 , sra16.u, 0x800041f7, 0x800041f7, 0xffff8000, 728); 
TEST_RR_OP( 183 , sra16.u, 0xe07dffff, 0xe07dffff, 0x00008000, 732); 
TEST_RR_OP( 184 , sra16.u, 0x0000ffff, 0x0000ffff, 0x80008000, 736); 
TEST_RR_OP( 185 , sra16.u, 0x057b8000, 0x057b8000, 0xffff0000, 740); 
TEST_RR_OP( 186 , sra16.u, 0xffff0001, 0x8000705b, 0xff7bffff, 744); 
TEST_RR_OP( 187 , sra16.u, 0xfd54fc00, 0xaa8a8000, 0x54a094d5, 748); 
TEST_RR_OP( 188 , sra16.u, 0xffffffff, 0xffffffff, 0x00008000, 752); 
TEST_RR_OP( 189 , sra16.u, 0x00000000, 0x0000ffff, 0x76ed8ae9, 756); 
TEST_RR_OP( 190 , sra16.u, 0xffff8000, 0xffff8000, 0xffff0000, 760); 
TEST_RR_OP( 191 , sra16.u, 0x0000ffff, 0xffff8000, 0xffffffff, 764); 
TEST_RR_OP( 192 , sra16.u, 0x00000001, 0xffff4c25, 0x8000ffff, 768); 
TEST_RR_OP( 193 , sra16.u, 0xfff00000, 0x80000000, 0x8000648b, 772); 
TEST_RR_OP( 194 , sra16.u, 0x00000000, 0x00000000, 0x8000ffff, 776); 
TEST_RR_OP( 195 , sra16.u, 0xff800000, 0x80000000, 0x00007818, 780); 
TEST_RR_OP( 196 , sra16.u, 0x00000000, 0x00000000, 0xffff0000, 784); 
TEST_RR_OP( 197 , sra16.u, 0x0000ffff, 0xffff8000, 0x0000ffff, 788); 
TEST_RR_OP( 198 , sra16.u, 0x0000ffff, 0xffff9e70, 0x7a4cffff, 792); 
TEST_RR_OP( 199 , sra16.u, 0x80008000, 0x80008000, 0xffff0000, 796); 

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
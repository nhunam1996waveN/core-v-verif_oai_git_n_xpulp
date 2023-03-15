# See LICENSE for license details.
#*****************************************************************************
# rstas16.S
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

TEST_RR_OP( 2 , rstas16, 0xc0000000, 0x00000000, 0x8000ffff, 8); 
TEST_RR_OP( 3 , rstas16, 0x08ae3fff, 0xffffffff, 0x115d8000, 12); 
TEST_RR_OP( 4 , rstas16, 0xbfff0000, 0x80000000, 0xffff0000, 16); 
TEST_RR_OP( 5 , rstas16, 0xffffc87e, 0xffff90fc, 0xffff0000, 20); 
TEST_RR_OP( 6 , rstas16, 0xbfff71d0, 0xffff63a0, 0x80008000, 24); 
TEST_RR_OP( 7 , rstas16, 0xffff3fff, 0xffffffff, 0x00008000, 28); 
TEST_RR_OP( 8 , rstas16, 0xc000c95c, 0x800092b8, 0x00000000, 32); 
TEST_RR_OP( 9 , rstas16, 0x80004000, 0x80000000, 0x80008000, 36); 
TEST_RR_OP( 10 , rstas16, 0x00004000, 0x00000000, 0x00008000, 40); 
TEST_RR_OP( 11 , rstas16, 0x28e4dbe3, 0x51cab7c6, 0xffff0000, 44); 
TEST_RR_OP( 12 , rstas16, 0xffffd27f, 0x00000000, 0xffff5b01, 48); 
TEST_RR_OP( 13 , rstas16, 0xc000d148, 0x0000e596, 0x80004305, 52); 
TEST_RR_OP( 14 , rstas16, 0x80003fff, 0x8000ffff, 0x80008000, 56); 
TEST_RR_OP( 15 , rstas16, 0x11ee67c4, 0x1d2b4f88, 0x06b28000, 60); 
TEST_RR_OP( 16 , rstas16, 0xc0000000, 0x00000000, 0x80000000, 64); 
TEST_RR_OP( 17 , rstas16, 0xf256c000, 0x64ac8000, 0x8000ffff, 68); 
TEST_RR_OP( 18 , rstas16, 0xbfffd522, 0xffff8000, 0x8000d5bc, 72); 
TEST_RR_OP( 19 , rstas16, 0xbfff3df8, 0x8000ffff, 0xffff840e, 76); 
TEST_RR_OP( 20 , rstas16, 0xffff2a73, 0xffffffff, 0x0000ab19, 80); 
TEST_RR_OP( 21 , rstas16, 0xbfff21d3, 0x8000015d, 0xffffbdb6, 84); 
TEST_RR_OP( 22 , rstas16, 0x2e7b0000, 0x5cf70000, 0xffffffff, 88); 
TEST_RR_OP( 23 , rstas16, 0xde801296, 0x00000000, 0xbd01dad3, 92); 
TEST_RR_OP( 24 , rstas16, 0xcdc6dd9d, 0x80008000, 0x1b8cc4c6, 96); 
TEST_RR_OP( 25 , rstas16, 0xc0000000, 0x80008000, 0x00008000, 100); 
TEST_RR_OP( 26 , rstas16, 0xc0000000, 0x80000000, 0x00000000, 104); 
TEST_RR_OP( 27 , rstas16, 0xbfffed36, 0x80000278, 0xffff280b, 108); 
TEST_RR_OP( 28 , rstas16, 0xbfffc000, 0xffff8000, 0x80000000, 112); 
TEST_RR_OP( 29 , rstas16, 0x80000000, 0x80008000, 0x80008000, 116); 
TEST_RR_OP( 30 , rstas16, 0x8000c000, 0x80008000, 0x80000000, 120); 
TEST_RR_OP( 31 , rstas16, 0x158fc838, 0xffffffff, 0x2b1f6f8f, 124); 
TEST_RR_OP( 32 , rstas16, 0x80000000, 0x80000000, 0x8000ffff, 128); 
TEST_RR_OP( 33 , rstas16, 0xbfff3fff, 0xffffffff, 0x80008000, 132); 
TEST_RR_OP( 34 , rstas16, 0xffff5d63, 0x00003ac6, 0xffff8000, 136); 
TEST_RR_OP( 35 , rstas16, 0xc0003fff, 0x0000ffff, 0x80008000, 140); 
TEST_RR_OP( 36 , rstas16, 0xffff4000, 0x00000000, 0xffff8000, 144); 
TEST_RR_OP( 37 , rstas16, 0xffffffff, 0xffffffff, 0xffff0000, 148); 
TEST_RR_OP( 38 , rstas16, 0xbfffe2e7, 0x80008000, 0xffffba31, 152); 
TEST_RR_OP( 39 , rstas16, 0xffff3da2, 0xfffffb44, 0x00008000, 156); 
TEST_RR_OP( 40 , rstas16, 0xc63c3726, 0x8c7927c2, 0xffffb976, 160); 
TEST_RR_OP( 41 , rstas16, 0xe7847417, 0x4f08682e, 0x80008000, 164); 
TEST_RR_OP( 42 , rstas16, 0xa5174000, 0x80000000, 0xca2f8000, 168); 
TEST_RR_OP( 43 , rstas16, 0xffff0000, 0xffff0000, 0x00000000, 172); 
TEST_RR_OP( 44 , rstas16, 0xf9dbec93, 0x73b6ffff, 0x800026d8, 176); 
TEST_RR_OP( 45 , rstas16, 0xbfffc000, 0xffff8000, 0x8000ffff, 180); 
TEST_RR_OP( 46 , rstas16, 0xffffd5e5, 0xffffffff, 0x00005434, 184); 
TEST_RR_OP( 47 , rstas16, 0x0a2d3fff, 0x145cffff, 0xffff8000, 188); 
TEST_RR_OP( 48 , rstas16, 0xb7240e0f, 0xee480000, 0x8000e3e2, 192); 
TEST_RR_OP( 49 , rstas16, 0x8000f6ed, 0x8000ffff, 0x80001225, 196); 
TEST_RR_OP( 50 , rstas16, 0xf1f917af, 0x845aaf5f, 0x5f988000, 200); 
TEST_RR_OP( 51 , rstas16, 0xffff0000, 0xffff8000, 0x00008000, 204); 
TEST_RR_OP( 52 , rstas16, 0xc00001f7, 0x000003ee, 0x8000ffff, 208); 
TEST_RR_OP( 53 , rstas16, 0x231cc000, 0x46398000, 0x0000ffff, 212); 
TEST_RR_OP( 54 , rstas16, 0xa8730000, 0x80000000, 0xd0e6ffff, 216); 
TEST_RR_OP( 55 , rstas16, 0x0000c000, 0x00008000, 0x0000ffff, 220); 
TEST_RR_OP( 56 , rstas16, 0xc000d7a4, 0x8000187c, 0x00006933, 224); 
TEST_RR_OP( 57 , rstas16, 0xbfff0000, 0xffffffff, 0x8000ffff, 228); 
TEST_RR_OP( 58 , rstas16, 0x0000df16, 0x0000be2c, 0x0000ffff, 232); 
TEST_RR_OP( 59 , rstas16, 0x40c10000, 0x19de0000, 0x67a5ffff, 236); 
TEST_RR_OP( 60 , rstas16, 0xc000025c, 0x000004b8, 0x8000ffff, 240); 
TEST_RR_OP( 61 , rstas16, 0xe26eff73, 0xdc7efee5, 0xe85fffff, 244); 
TEST_RR_OP( 62 , rstas16, 0xffff0000, 0xffff8000, 0xffff8000, 248); 
TEST_RR_OP( 63 , rstas16, 0xffff0000, 0xffff0000, 0xffffffff, 252); 
TEST_RR_OP( 64 , rstas16, 0x00000240, 0x00000481, 0x00000000, 256); 
TEST_RR_OP( 65 , rstas16, 0xffff7f63, 0xffff7ec7, 0x00008000, 260); 
TEST_RR_OP( 66 , rstas16, 0xe3444000, 0x46890000, 0x80008000, 264); 
TEST_RR_OP( 67 , rstas16, 0x0000c000, 0x00008000, 0x00000000, 268); 
TEST_RR_OP( 68 , rstas16, 0xbfffd40c, 0x80000000, 0xffff57e7, 272); 
TEST_RR_OP( 69 , rstas16, 0xc0000000, 0x80000000, 0x00000000, 276); 
TEST_RR_OP( 70 , rstas16, 0xbfff0000, 0xffff8000, 0x80008000, 280); 
TEST_RR_OP( 71 , rstas16, 0xe9640000, 0x80008000, 0x52c98000, 284); 
TEST_RR_OP( 72 , rstas16, 0xecf8d1d3, 0xffffffff, 0xd9f15c58, 288); 
TEST_RR_OP( 73 , rstas16, 0xffffc000, 0xffff8000, 0x0000ffff, 292); 
TEST_RR_OP( 74 , rstas16, 0xc0000000, 0x00000000, 0x8000ffff, 296); 
TEST_RR_OP( 75 , rstas16, 0xcb97ffff, 0x172fffff, 0x80000000, 300); 
TEST_RR_OP( 76 , rstas16, 0xffff2584, 0xffff0000, 0x0000b4f8, 304); 
TEST_RR_OP( 77 , rstas16, 0x3d74c000, 0x00008000, 0x7ae90000, 308); 
TEST_RR_OP( 78 , rstas16, 0xc0000935, 0x0000d41a, 0x8000c1b0, 312); 
TEST_RR_OP( 79 , rstas16, 0x80570000, 0x80008000, 0x80af8000, 316); 
TEST_RR_OP( 80 , rstas16, 0x80000000, 0x8000ffff, 0x8000ffff, 320); 
TEST_RR_OP( 81 , rstas16, 0xd8010000, 0x87a1ffff, 0x2861ffff, 324); 
TEST_RR_OP( 82 , rstas16, 0x1a99c000, 0x35338000, 0x00000000, 328); 
TEST_RR_OP( 83 , rstas16, 0xbfff4000, 0x80000000, 0xffff8000, 332); 
TEST_RR_OP( 84 , rstas16, 0xbeeec000, 0xf9b18000, 0x842cffff, 336); 
TEST_RR_OP( 85 , rstas16, 0xbfffc000, 0xffff8000, 0x80000000, 340); 
TEST_RR_OP( 86 , rstas16, 0xc0003b83, 0x8000ffff, 0x000088f9, 344); 
TEST_RR_OP( 87 , rstas16, 0x0000c000, 0x00008000, 0x00000000, 348); 
TEST_RR_OP( 88 , rstas16, 0xbfff395c, 0x8000f2b8, 0xffff8000, 352); 
TEST_RR_OP( 89 , rstas16, 0xffff0000, 0x00000000, 0xffff0000, 356); 
TEST_RR_OP( 90 , rstas16, 0xffffc000, 0x00008000, 0xffff0000, 360); 
TEST_RR_OP( 91 , rstas16, 0x30916982, 0xffff5304, 0x61248000, 364); 
TEST_RR_OP( 92 , rstas16, 0xc0008d73, 0x00008000, 0x8000651a, 368); 
TEST_RR_OP( 93 , rstas16, 0x04742547, 0x00004a8f, 0x08e90000, 372); 
TEST_RR_OP( 94 , rstas16, 0x15b00000, 0xffff0000, 0x2b61ffff, 376); 
TEST_RR_OP( 95 , rstas16, 0xdca4c031, 0x8000ffff, 0x39497f9c, 380); 
TEST_RR_OP( 96 , rstas16, 0xffffc000, 0xffff8000, 0xffffffff, 384); 
TEST_RR_OP( 97 , rstas16, 0xffff3fff, 0xffffffff, 0xffff8000, 388); 
TEST_RR_OP( 98 , rstas16, 0xbfffc000, 0xffff8000, 0x8000ffff, 392); 
TEST_RR_OP( 99 , rstas16, 0xa98a4000, 0xd3150000, 0x80008000, 396); 
TEST_RR_OP( 100 , rstas16, 0xffff3fff, 0xffffffff, 0x00008000, 400); 
TEST_RR_OP( 101 , rstas16, 0x00000000, 0x0000ffff, 0x0000ffff, 404); 
TEST_RR_OP( 102 , rstas16, 0xd053c000, 0xa0a78000, 0x00000000, 408); 
TEST_RR_OP( 103 , rstas16, 0xc000c000, 0x00008000, 0x8000ffff, 412); 
TEST_RR_OP( 104 , rstas16, 0x000004f6, 0x00000000, 0x0000f614, 416); 
TEST_RR_OP( 105 , rstas16, 0xf7843fff, 0xef0affff, 0xffff8000, 420); 
TEST_RR_OP( 106 , rstas16, 0x01795ab9, 0xffff3572, 0x02f38000, 424); 
TEST_RR_OP( 107 , rstas16, 0x31ef0000, 0xffff8000, 0x63e08000, 428); 
TEST_RR_OP( 108 , rstas16, 0xeab93fff, 0x5573ffff, 0x80008000, 432); 
TEST_RR_OP( 109 , rstas16, 0xbfff0000, 0xffffffff, 0x8000ffff, 436); 
TEST_RR_OP( 110 , rstas16, 0xc0006de4, 0x00005bc9, 0x80008000, 440); 
TEST_RR_OP( 111 , rstas16, 0xa29be263, 0x80008000, 0xc536bb3a, 444); 
TEST_RR_OP( 112 , rstas16, 0xedfbffff, 0x8000ffff, 0x5bf60000, 448); 
TEST_RR_OP( 113 , rstas16, 0xfffff4ae, 0xffff0000, 0xffff16a3, 452); 
TEST_RR_OP( 114 , rstas16, 0xedb4c1f4, 0xdb6983e8, 0x00000000, 456); 
TEST_RR_OP( 115 , rstas16, 0xfdf333e1, 0xfbe767c3, 0xffff0000, 460); 
TEST_RR_OP( 116 , rstas16, 0xffffe8ac, 0xffffd157, 0x0000ffff, 464); 
TEST_RR_OP( 117 , rstas16, 0xf0d0e51d, 0xd377ca3b, 0x0e2a0000, 468); 
TEST_RR_OP( 118 , rstas16, 0xffff1784, 0xffffaf09, 0xffff8000, 472); 
TEST_RR_OP( 119 , rstas16, 0xd539155c, 0x00002ab7, 0xaa72ffff, 476); 
TEST_RR_OP( 120 , rstas16, 0xfaa3d966, 0x995f8000, 0x5be8cd33, 480); 
TEST_RR_OP( 121 , rstas16, 0x8433cbad, 0x8866975a, 0x80000000, 484); 
TEST_RR_OP( 122 , rstas16, 0xa56d0000, 0xcadb8000, 0x80008000, 488); 
TEST_RR_OP( 123 , rstas16, 0xffff0000, 0xffff0000, 0x0000ffff, 492); 
TEST_RR_OP( 124 , rstas16, 0xc000c000, 0x00008000, 0x8000ffff, 496); 
TEST_RR_OP( 125 , rstas16, 0x2e733039, 0xffff6073, 0x5ce80000, 500); 
TEST_RR_OP( 126 , rstas16, 0xdd5b0000, 0xd10a0000, 0xe9adffff, 504); 
TEST_RR_OP( 127 , rstas16, 0xf0b9eca9, 0x6173d952, 0x80000000, 508); 
TEST_RR_OP( 128 , rstas16, 0xbffffb97, 0xffff8000, 0x800088d2, 512); 
TEST_RR_OP( 129 , rstas16, 0x21753fff, 0x42eaffff, 0x00008000, 516); 
TEST_RR_OP( 130 , rstas16, 0xbdd00000, 0xfba00000, 0x8000ffff, 520); 
TEST_RR_OP( 131 , rstas16, 0xc0004000, 0x80000000, 0x00008000, 524); 
TEST_RR_OP( 132 , rstas16, 0x00003fff, 0x0000ffff, 0x00008000, 528); 
TEST_RR_OP( 133 , rstas16, 0xffff3fff, 0xffffffff, 0xffff8000, 532); 
TEST_RR_OP( 134 , rstas16, 0xffff0000, 0x00008000, 0xffff8000, 536); 
TEST_RR_OP( 135 , rstas16, 0x908cffff, 0x8000ffff, 0xa1190000, 540); 
TEST_RR_OP( 136 , rstas16, 0xffff0000, 0xffffffff, 0x0000ffff, 544); 
TEST_RR_OP( 137 , rstas16, 0x136508cd, 0x0000119a, 0x26cb0000, 548); 
TEST_RR_OP( 138 , rstas16, 0xbfff0000, 0x80008000, 0xffff8000, 552); 
TEST_RR_OP( 139 , rstas16, 0x8ed014eb, 0x800029d6, 0x9da10000, 556); 
TEST_RR_OP( 140 , rstas16, 0xc000ffff, 0x8000ffff, 0x00000000, 560); 
TEST_RR_OP( 141 , rstas16, 0xeafcdcb0, 0xd5f8b95f, 0x0000ffff, 564); 
TEST_RR_OP( 142 , rstas16, 0x0000c000, 0x00008000, 0x0000ffff, 568); 
TEST_RR_OP( 143 , rstas16, 0x0cdc208b, 0xffffe684, 0x19baa56e, 572); 
TEST_RR_OP( 144 , rstas16, 0xbfff0000, 0x80000000, 0xffffffff, 576); 
TEST_RR_OP( 145 , rstas16, 0xd7141379, 0xae2826f2, 0x0000ffff, 580); 
TEST_RR_OP( 146 , rstas16, 0xf4d30000, 0xe9a60000, 0x0000ffff, 584); 
TEST_RR_OP( 147 , rstas16, 0x32ed0000, 0x65da0000, 0x00000000, 588); 
TEST_RR_OP( 148 , rstas16, 0xc000dfc1, 0x8000ffff, 0x0000407c, 592); 
TEST_RR_OP( 149 , rstas16, 0xc0002382, 0x00004704, 0x80000000, 596); 
TEST_RR_OP( 150 , rstas16, 0x0000e1d4, 0x00000e28, 0x00004a80, 600); 
TEST_RR_OP( 151 , rstas16, 0xf8724000, 0xffff0000, 0xf0e68000, 604); 
TEST_RR_OP( 152 , rstas16, 0xc733c000, 0x82098000, 0x0c5d0000, 608); 
TEST_RR_OP( 153 , rstas16, 0xd248ffff, 0x0000ffff, 0xa4910000, 612); 
TEST_RR_OP( 154 , rstas16, 0xffff3fff, 0xffffffff, 0xffff8000, 616); 
TEST_RR_OP( 155 , rstas16, 0xffff199c, 0xffff3338, 0x00000000, 620); 
TEST_RR_OP( 156 , rstas16, 0xbfff4000, 0xffff0000, 0x80008000, 624); 
TEST_RR_OP( 157 , rstas16, 0xcab01e56, 0x1560bcad, 0x80008000, 628); 
TEST_RR_OP( 158 , rstas16, 0x0000c954, 0x00008000, 0x0000ed58, 632); 
TEST_RR_OP( 159 , rstas16, 0xc000fcf8, 0x00000000, 0x80000610, 636); 
TEST_RR_OP( 160 , rstas16, 0xd28edb4c, 0x00008000, 0xa51cc968, 640); 
TEST_RR_OP( 161 , rstas16, 0xc1333b2b, 0x80000000, 0x026789aa, 644); 
TEST_RR_OP( 162 , rstas16, 0x7056ffff, 0x74c5ffff, 0x6be70000, 648); 
TEST_RR_OP( 163 , rstas16, 0x800061e6, 0x800043cc, 0x80008000, 652); 
TEST_RR_OP( 164 , rstas16, 0x1a82c4da, 0xffff0000, 0x3506764c, 656); 
TEST_RR_OP( 165 , rstas16, 0x164d4000, 0x2c9b0000, 0xffff8000, 660); 
TEST_RR_OP( 166 , rstas16, 0xd5ab0000, 0xab57ffff, 0x0000ffff, 664); 
TEST_RR_OP( 167 , rstas16, 0xfffff045, 0xffff8000, 0x00009f76, 668); 
TEST_RR_OP( 168 , rstas16, 0x2fc6683e, 0x0000507d, 0x5f8d8000, 672); 
TEST_RR_OP( 169 , rstas16, 0xc0001f5c, 0x80003eb9, 0x00000000, 676); 
TEST_RR_OP( 170 , rstas16, 0xbfffcc2b, 0x80000000, 0xffff67aa, 680); 
TEST_RR_OP( 171 , rstas16, 0xc000c000, 0x00008000, 0x8000ffff, 684); 
TEST_RR_OP( 172 , rstas16, 0x8000e3ca, 0x80000000, 0x8000386c, 688); 
TEST_RR_OP( 173 , rstas16, 0x80003710, 0x80000000, 0x800091df, 692); 
TEST_RR_OP( 174 , rstas16, 0xffffc000, 0xffff8000, 0x00000000, 696); 
TEST_RR_OP( 175 , rstas16, 0xffff3fff, 0x0000ffff, 0xffff8000, 700); 
TEST_RR_OP( 176 , rstas16, 0xc0001e13, 0x8000bc26, 0x00008000, 704); 
TEST_RR_OP( 177 , rstas16, 0x3365df08, 0x66cb8000, 0x0000c1ef, 708); 
TEST_RR_OP( 178 , rstas16, 0xa5ea1bff, 0xcbd437fd, 0x8000ffff, 712); 
TEST_RR_OP( 179 , rstas16, 0xcd710000, 0x00000000, 0x9ae20000, 716); 
TEST_RR_OP( 180 , rstas16, 0xffffc000, 0xffff8000, 0xffffffff, 720); 
TEST_RR_OP( 181 , rstas16, 0x0000a338, 0x0000ae68, 0x000067f8, 724); 
TEST_RR_OP( 182 , rstas16, 0xffffc891, 0xffff9121, 0x0000ffff, 728); 
TEST_RR_OP( 183 , rstas16, 0xede40000, 0xffff0000, 0xdbc90000, 732); 
TEST_RR_OP( 184 , rstas16, 0xe0080000, 0xffffffff, 0xc011ffff, 736); 
TEST_RR_OP( 185 , rstas16, 0xc0000000, 0x00008000, 0x80008000, 740); 
TEST_RR_OP( 186 , rstas16, 0xffff1dee, 0xffffc025, 0xffff8448, 744); 
TEST_RR_OP( 187 , rstas16, 0x8000d4b4, 0x8000a969, 0x80000000, 748); 
TEST_RR_OP( 188 , rstas16, 0xdbdd0000, 0x00000000, 0xb7bb0000, 752); 
TEST_RR_OP( 189 , rstas16, 0xbe14c000, 0xfc298000, 0x8000ffff, 756); 
TEST_RR_OP( 190 , rstas16, 0xbfffc000, 0x80008000, 0xffff0000, 760); 
TEST_RR_OP( 191 , rstas16, 0xbfff0000, 0xffffffff, 0x8000ffff, 764); 
TEST_RR_OP( 192 , rstas16, 0xc0002470, 0x0000c8e1, 0x80008000, 768); 
TEST_RR_OP( 193 , rstas16, 0x2278e135, 0x44f08000, 0x0000bd95, 772); 
TEST_RR_OP( 194 , rstas16, 0xffff19ea, 0x00000000, 0xffffcc2c, 776); 
TEST_RR_OP( 195 , rstas16, 0xfe300000, 0x80008000, 0x7c618000, 780); 
TEST_RR_OP( 196 , rstas16, 0xd62e6874, 0x2c5c50e8, 0x80008000, 784); 
TEST_RR_OP( 197 , rstas16, 0x14561b1c, 0x28ae3639, 0xffff0000, 788); 
TEST_RR_OP( 198 , rstas16, 0x39730a20, 0x72e70000, 0xffffebc0, 792); 
TEST_RR_OP( 199 , rstas16, 0x000019a8, 0x0000334f, 0x0000ffff, 796); 

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
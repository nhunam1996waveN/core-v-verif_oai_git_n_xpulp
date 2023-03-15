# See LICENSE for license details.
#*****************************************************************************
# radd16.S
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

TEST_RR_OP( 2 , radd16, 0x9fbafb42, 0x8000ffff, 0xbf74f686, 8); 
TEST_RR_OP( 3 , radd16, 0xc0005272, 0x80003e86, 0x0000665f, 12); 
TEST_RR_OP( 4 , radd16, 0xc32dc000, 0xffff0000, 0x865b8000, 16); 
TEST_RR_OP( 5 , radd16, 0x3d8bcd26, 0x7b179a4e, 0xffffffff, 20); 
TEST_RR_OP( 6 , radd16, 0xb57bbfff, 0xeaf7ffff, 0x80008000, 24); 
TEST_RR_OP( 7 , radd16, 0xffff6c89, 0xffff67e0, 0xffff7132, 28); 
TEST_RR_OP( 8 , radd16, 0x8000ffff, 0x80000000, 0x8000ffff, 32); 
TEST_RR_OP( 9 , radd16, 0xe75f0000, 0xcebf0000, 0xffff0000, 36); 
TEST_RR_OP( 10 , radd16, 0x00af0073, 0x000000e7, 0x015effff, 40); 
TEST_RR_OP( 11 , radd16, 0x09d61dda, 0xffff6869, 0x13add34c, 44); 
TEST_RR_OP( 12 , radd16, 0xffff8000, 0xffff8000, 0x00008000, 48); 
TEST_RR_OP( 13 , radd16, 0xc000ffff, 0x8000ffff, 0x00000000, 52); 
TEST_RR_OP( 14 , radd16, 0xa965c000, 0xd2ca8000, 0x80000000, 56); 
TEST_RR_OP( 15 , radd16, 0xc000c000, 0x80008000, 0x00000000, 60); 
TEST_RR_OP( 16 , radd16, 0xc1d30000, 0xffff0000, 0x83a80000, 64); 
TEST_RR_OP( 17 , radd16, 0x32d3ffff, 0x65a7ffff, 0xffffffff, 68); 
TEST_RR_OP( 18 , radd16, 0x0a55c0ce, 0x7eef819e, 0x95bbffff, 72); 
TEST_RR_OP( 19 , radd16, 0xca47225f, 0x000044bf, 0x948effff, 76); 
TEST_RR_OP( 20 , radd16, 0xffffffcc, 0x0000ff99, 0xffff0000, 80); 
TEST_RR_OP( 21 , radd16, 0xffffc40b, 0x00008817, 0xffffffff, 84); 
TEST_RR_OP( 22 , radd16, 0xffffffff, 0x0000ffff, 0xffffffff, 88); 
TEST_RR_OP( 23 , radd16, 0xffff0000, 0x00000000, 0xffff0000, 92); 
TEST_RR_OP( 24 , radd16, 0xbfff8000, 0x80008000, 0xffff8000, 96); 
TEST_RR_OP( 25 , radd16, 0x0be7ffff, 0x0000ffff, 0x17cf0000, 100); 
TEST_RR_OP( 26 , radd16, 0x0000bfff, 0x00008000, 0x0000ffff, 104); 
TEST_RR_OP( 27 , radd16, 0xc000e94d, 0x80008000, 0x0000529b, 108); 
TEST_RR_OP( 28 , radd16, 0xc000c000, 0x00008000, 0x80000000, 112); 
TEST_RR_OP( 29 , radd16, 0xc000255b, 0x80004ab7, 0x0000ffff, 116); 
TEST_RR_OP( 30 , radd16, 0xffff0fae, 0x0000fcb6, 0xffff22a7, 120); 
TEST_RR_OP( 31 , radd16, 0x964ec000, 0x80000000, 0xac9c8000, 124); 
TEST_RR_OP( 32 , radd16, 0xc000bfff, 0x8000ffff, 0x00008000, 128); 
TEST_RR_OP( 33 , radd16, 0xffff9143, 0x00008000, 0xffffa287, 132); 
TEST_RR_OP( 34 , radd16, 0xffff0983, 0xffff0000, 0xffff1307, 136); 
TEST_RR_OP( 35 , radd16, 0x00000000, 0x00000000, 0x00000000, 140); 
TEST_RR_OP( 36 , radd16, 0xc0b9f991, 0x0000f323, 0x8172ffff, 144); 
TEST_RR_OP( 37 , radd16, 0x29d9ffff, 0x53b3ffff, 0x0000ffff, 148); 
TEST_RR_OP( 38 , radd16, 0xffffffff, 0xffffffff, 0xffff0000, 152); 
TEST_RR_OP( 39 , radd16, 0xffff000e, 0x00000000, 0xffff001d, 156); 
TEST_RR_OP( 40 , radd16, 0x8000ffff, 0x8000ffff, 0x80000000, 160); 
TEST_RR_OP( 41 , radd16, 0x80000000, 0x80000000, 0x80000000, 164); 
TEST_RR_OP( 42 , radd16, 0x2ba4bfff, 0x0000ffff, 0x57488000, 168); 
TEST_RR_OP( 43 , radd16, 0x12e7efac, 0x0000df5a, 0x25ceffff, 172); 
TEST_RR_OP( 44 , radd16, 0x314c8000, 0x00008000, 0x62988000, 176); 
TEST_RR_OP( 45 , radd16, 0x1fd70964, 0x000012ca, 0x3faeffff, 180); 
TEST_RR_OP( 46 , radd16, 0xc000c000, 0x00000000, 0x80008000, 184); 
TEST_RR_OP( 47 , radd16, 0xac93ce4c, 0xd9268000, 0x80001c98, 188); 
TEST_RR_OP( 48 , radd16, 0xb47fe6a3, 0xc5783328, 0xa3879a1f, 192); 
TEST_RR_OP( 49 , radd16, 0xfffff132, 0x0000e264, 0xffff0000, 196); 
TEST_RR_OP( 50 , radd16, 0xe22dffff, 0x8000ffff, 0x445affff, 200); 
TEST_RR_OP( 51 , radd16, 0xf446cdc5, 0xe88e9b8c, 0xffffffff, 204); 
TEST_RR_OP( 52 , radd16, 0xfffff2f6, 0xffff0000, 0x0000e5ec, 208); 
TEST_RR_OP( 53 , radd16, 0x4cbeffff, 0x2295ffff, 0x76e8ffff, 212); 
TEST_RR_OP( 54 , radd16, 0xc000bfff, 0x8000ffff, 0x00008000, 216); 
TEST_RR_OP( 55 , radd16, 0xbfffffff, 0xffff0000, 0x8000ffff, 220); 
TEST_RR_OP( 56 , radd16, 0xbffff1b6, 0xffffffff, 0x8000e36d, 224); 
TEST_RR_OP( 57 , radd16, 0x0000c55b, 0x00008ab7, 0x0000ffff, 228); 
TEST_RR_OP( 58 , radd16, 0xc0000000, 0x80000000, 0x00000000, 232); 
TEST_RR_OP( 59 , radd16, 0xc0000000, 0x80000000, 0x00000000, 236); 
TEST_RR_OP( 60 , radd16, 0xfffffa78, 0xffffffff, 0xfffff4f1, 240); 
TEST_RR_OP( 61 , radd16, 0x8000ffff, 0x8000ffff, 0x80000000, 244); 
TEST_RR_OP( 62 , radd16, 0xffff2302, 0xffffffff, 0x00004605, 248); 
TEST_RR_OP( 63 , radd16, 0xffffbfff, 0xffff8000, 0xffffffff, 252); 
TEST_RR_OP( 64 , radd16, 0xe00e8000, 0x00008000, 0xc01d8000, 256); 
TEST_RR_OP( 65 , radd16, 0x2c76ffff, 0x0000ffff, 0x58ec0000, 260); 
TEST_RR_OP( 66 , radd16, 0x0000ffff, 0x00000000, 0x0000ffff, 264); 
TEST_RR_OP( 67 , radd16, 0xffffffff, 0x00000000, 0xffffffff, 268); 
TEST_RR_OP( 68 , radd16, 0xc0009e7e, 0x80008000, 0x0000bcfc, 272); 
TEST_RR_OP( 69 , radd16, 0x1f6fffff, 0xffffffff, 0x3edf0000, 276); 
TEST_RR_OP( 70 , radd16, 0xbdcfee38, 0x80008000, 0xfb9e5c71, 280); 
TEST_RR_OP( 71 , radd16, 0xffffc000, 0xffff0000, 0x00008000, 284); 
TEST_RR_OP( 72 , radd16, 0xc000a0d9, 0x80008000, 0x0000c1b3, 288); 
TEST_RR_OP( 73 , radd16, 0x14f51ed5, 0xffffffff, 0x29ec3dac, 292); 
TEST_RR_OP( 74 , radd16, 0xc0000259, 0x800004b3, 0x0000ffff, 296); 
TEST_RR_OP( 75 , radd16, 0xfaa23e15, 0x80007c2a, 0x75450000, 300); 
TEST_RR_OP( 76 , radd16, 0x9829bfff, 0x80008000, 0xb052ffff, 304); 
TEST_RR_OP( 77 , radd16, 0xe848c000, 0xffff0000, 0xd0928000, 308); 
TEST_RR_OP( 78 , radd16, 0x8000b9c5, 0x8000f38a, 0x80008000, 312); 
TEST_RR_OP( 79 , radd16, 0xffffbfff, 0x0000ffff, 0xffff8000, 316); 
TEST_RR_OP( 80 , radd16, 0xd9fac000, 0xb3f60000, 0xffff8000, 320); 
TEST_RR_OP( 81 , radd16, 0x19189828, 0x32328000, 0xffffb051, 324); 
TEST_RR_OP( 82 , radd16, 0xbfff0ab0, 0xffff0000, 0x80001560, 328); 
TEST_RR_OP( 83 , radd16, 0xffffbfff, 0xffff8000, 0x0000ffff, 332); 
TEST_RR_OP( 84 , radd16, 0xbfffc000, 0x80008000, 0xffff0000, 336); 
TEST_RR_OP( 85 , radd16, 0xe5040000, 0x00000000, 0xca080000, 340); 
TEST_RR_OP( 86 , radd16, 0xffff0000, 0xffff0000, 0x00000000, 344); 
TEST_RR_OP( 87 , radd16, 0x05c5c000, 0xffff8000, 0x0b8c0000, 348); 
TEST_RR_OP( 88 , radd16, 0xc000c997, 0x00008000, 0x8000132f, 352); 
TEST_RR_OP( 89 , radd16, 0xc000bfff, 0x00008000, 0x8000ffff, 356); 
TEST_RR_OP( 90 , radd16, 0x00b803e7, 0x017007ce, 0x00000000, 360); 
TEST_RR_OP( 91 , radd16, 0xffff3c66, 0xffffffff, 0x000078ce, 364); 
TEST_RR_OP( 92 , radd16, 0x0000d8a9, 0x0000ffff, 0x0000b153, 368); 
TEST_RR_OP( 93 , radd16, 0xbfffffff, 0x8000ffff, 0xffffffff, 372); 
TEST_RR_OP( 94 , radd16, 0xc000ffff, 0x80000000, 0x0000ffff, 376); 
TEST_RR_OP( 95 , radd16, 0x97b7b5af, 0x80008000, 0xaf6eeb5f, 380); 
TEST_RR_OP( 96 , radd16, 0x3b25a762, 0x764a8000, 0x0000cec5, 384); 
TEST_RR_OP( 97 , radd16, 0x8000c000, 0x80000000, 0x80008000, 388); 
TEST_RR_OP( 98 , radd16, 0x12d3cf12, 0x25a79e26, 0x0000ffff, 392); 
TEST_RR_OP( 99 , radd16, 0xcfb88000, 0x80008000, 0x1f708000, 396); 
TEST_RR_OP( 100 , radd16, 0x9282b733, 0x8000ee67, 0xa5058000, 400); 
TEST_RR_OP( 101 , radd16, 0xc000e8b9, 0x0000d173, 0x80000000, 404); 
TEST_RR_OP( 102 , radd16, 0xc40ec000, 0x00008000, 0x881c0000, 408); 
TEST_RR_OP( 103 , radd16, 0x1195c000, 0x00000000, 0x232a8000, 412); 
TEST_RR_OP( 104 , radd16, 0x05c71984, 0x0b8f0000, 0x00003309, 416); 
TEST_RR_OP( 105 , radd16, 0x3c03c000, 0x78060000, 0x00008000, 420); 
TEST_RR_OP( 106 , radd16, 0xfc940e19, 0xf929ffff, 0x00001c34, 424); 
TEST_RR_OP( 107 , radd16, 0xbfffbfff, 0xffffffff, 0x80008000, 428); 
TEST_RR_OP( 108 , radd16, 0xc0008000, 0x00008000, 0x80008000, 432); 
TEST_RR_OP( 109 , radd16, 0x01b4ef51, 0x03695ea2, 0x00008000, 436); 
TEST_RR_OP( 110 , radd16, 0xc000bfff, 0x0000ffff, 0x80008000, 440); 
TEST_RR_OP( 111 , radd16, 0xc6b6c000, 0x8d6e0000, 0xffff8000, 444); 
TEST_RR_OP( 112 , radd16, 0x8000bfff, 0x8000ffff, 0x80008000, 448); 
TEST_RR_OP( 113 , radd16, 0xbfff8789, 0x80008f12, 0xffff8000, 452); 
TEST_RR_OP( 114 , radd16, 0xd481ffff, 0xa903ffff, 0x0000ffff, 456); 
TEST_RR_OP( 115 , radd16, 0xbfffffff, 0x8000ffff, 0xffff0000, 460); 
TEST_RR_OP( 116 , radd16, 0xffffffff, 0xffffffff, 0xffff0000, 464); 
TEST_RR_OP( 117 , radd16, 0xffff80b2, 0xffff8000, 0x00008165, 468); 
TEST_RR_OP( 118 , radd16, 0x8000c743, 0x80008e87, 0x80000000, 472); 
TEST_RR_OP( 119 , radd16, 0xf55cffff, 0xeab8ffff, 0x00000000, 476); 
TEST_RR_OP( 120 , radd16, 0xbfffbfff, 0x8000ffff, 0xffff8000, 480); 
TEST_RR_OP( 121 , radd16, 0xcb97abe6, 0x0000d7cc, 0x972e8000, 484); 
TEST_RR_OP( 122 , radd16, 0xc000c000, 0x80008000, 0x00000000, 488); 
TEST_RR_OP( 123 , radd16, 0x3f04ffff, 0x0000ffff, 0x7e080000, 492); 
TEST_RR_OP( 124 , radd16, 0x8154ed80, 0x8000db00, 0x82a90000, 496); 
TEST_RR_OP( 125 , radd16, 0x3f88bfff, 0xffff8000, 0x7f11ffff, 500); 
TEST_RR_OP( 126 , radd16, 0xc000ffff, 0x00000000, 0x8000ffff, 504); 
TEST_RR_OP( 127 , radd16, 0x3de30000, 0x7bc60000, 0x00000000, 508); 
TEST_RR_OP( 128 , radd16, 0xb630ffff, 0x8000ffff, 0xec600000, 512); 
TEST_RR_OP( 129 , radd16, 0xc000bfff, 0x00008000, 0x8000ffff, 516); 
TEST_RR_OP( 130 , radd16, 0x000080d2, 0x000081a5, 0x00008000, 520); 
TEST_RR_OP( 131 , radd16, 0xbc52c000, 0xf8a48000, 0x80000000, 524); 
TEST_RR_OP( 132 , radd16, 0x15dcffff, 0xf3c1ffff, 0x37f7ffff, 528); 
TEST_RR_OP( 133 , radd16, 0xffffffff, 0xffff0000, 0x0000ffff, 532); 
TEST_RR_OP( 134 , radd16, 0xc000ffff, 0x80000000, 0x0000ffff, 536); 
TEST_RR_OP( 135 , radd16, 0xbfff8000, 0xffff8000, 0x80008000, 540); 
TEST_RR_OP( 136 , radd16, 0xfffff706, 0x0000ee0d, 0xffff0000, 544); 
TEST_RR_OP( 137 , radd16, 0xffffc000, 0xffff0000, 0x00008000, 548); 
TEST_RR_OP( 138 , radd16, 0x1f678000, 0xffff8000, 0x3ecf8000, 552); 
TEST_RR_OP( 139 , radd16, 0x0000d6c3, 0x00002d86, 0x00008000, 556); 
TEST_RR_OP( 140 , radd16, 0xffff3b76, 0xffff5cde, 0x00001a0f, 560); 
TEST_RR_OP( 141 , radd16, 0xffffc000, 0x00000000, 0xffff8000, 564); 
TEST_RR_OP( 142 , radd16, 0xc34cc000, 0x06980000, 0x80008000, 568); 
TEST_RR_OP( 143 , radd16, 0xffffbfff, 0x00008000, 0xffffffff, 572); 
TEST_RR_OP( 144 , radd16, 0x2ed9ffad, 0xffff9b54, 0x5db46407, 576); 
TEST_RR_OP( 145 , radd16, 0x2456bd1c, 0xe78b8000, 0x6122fa39, 580); 
TEST_RR_OP( 146 , radd16, 0xffffffff, 0xffffffff, 0x00000000, 584); 
TEST_RR_OP( 147 , radd16, 0xffffffff, 0x0000ffff, 0xffff0000, 588); 
TEST_RR_OP( 148 , radd16, 0xb9e4049c, 0xefd4ffff, 0x83f40939, 592); 
TEST_RR_OP( 149 , radd16, 0xbfffffff, 0x8000ffff, 0xffffffff, 596); 
TEST_RR_OP( 150 , radd16, 0x57f53ed9, 0x779e7db2, 0x384d0000, 600); 
TEST_RR_OP( 151 , radd16, 0xdd72ffff, 0x3ae5ffff, 0x8000ffff, 604); 
TEST_RR_OP( 152 , radd16, 0xd77ebfff, 0x2efdffff, 0x80008000, 608); 
TEST_RR_OP( 153 , radd16, 0xcccdde5e, 0x999b8000, 0xffff3cbd, 612); 
TEST_RR_OP( 154 , radd16, 0xffff0782, 0xffff0000, 0x00000f04, 616); 
TEST_RR_OP( 155 , radd16, 0x00002fbc, 0x00002f5c, 0x0000301d, 620); 
TEST_RR_OP( 156 , radd16, 0xffffbfff, 0xffffffff, 0xffff8000, 624); 
TEST_RR_OP( 157 , radd16, 0x2528fc99, 0x4a51f934, 0xffffffff, 628); 
TEST_RR_OP( 158 , radd16, 0xc000c000, 0x00000000, 0x80008000, 632); 
TEST_RR_OP( 159 , radd16, 0xc7a9bfff, 0x8f538000, 0xffffffff, 636); 
TEST_RR_OP( 160 , radd16, 0xc000bfff, 0x8000ffff, 0x00008000, 640); 
TEST_RR_OP( 161 , radd16, 0xa950b0e4, 0xd2a18000, 0x8000e1c9, 644); 
TEST_RR_OP( 162 , radd16, 0x0000bfff, 0x0000ffff, 0x00008000, 648); 
TEST_RR_OP( 163 , radd16, 0xe3f0c000, 0xc7e20000, 0xffff8000, 652); 
TEST_RR_OP( 164 , radd16, 0xc834094b, 0x00001298, 0x9069ffff, 656); 
TEST_RR_OP( 165 , radd16, 0xc000025d, 0x8000ffff, 0x000004bc, 660); 
TEST_RR_OP( 166 , radd16, 0xffff8264, 0xffff84c8, 0xffff8000, 664); 
TEST_RR_OP( 167 , radd16, 0x00001770, 0x0000bc02, 0x000072de, 668); 
TEST_RR_OP( 168 , radd16, 0xc000ffff, 0x0000ffff, 0x8000ffff, 672); 
TEST_RR_OP( 169 , radd16, 0x2b57bfff, 0x56afffff, 0xffff8000, 676); 
TEST_RR_OP( 170 , radd16, 0xffffffff, 0xffff0000, 0xffffffff, 680); 
TEST_RR_OP( 171 , radd16, 0x1d94efd5, 0x3b2aba43, 0xffff2567, 684); 
TEST_RR_OP( 172 , radd16, 0x887830df, 0x90f00000, 0x800061be, 688); 
TEST_RR_OP( 173 , radd16, 0x9a13c752, 0xb4270000, 0x80008ea5, 692); 
TEST_RR_OP( 174 , radd16, 0x0be237fe, 0xffff6ffd, 0x17c6ffff, 696); 
TEST_RR_OP( 175 , radd16, 0x80000000, 0x80000000, 0x80000000, 700); 
TEST_RR_OP( 176 , radd16, 0xd8fb0000, 0x31f60000, 0x80000000, 704); 
TEST_RR_OP( 177 , radd16, 0xffffffff, 0x0000ffff, 0xffffffff, 708); 
TEST_RR_OP( 178 , radd16, 0x00000c3b, 0x0000ffff, 0x00001877, 712); 
TEST_RR_OP( 179 , radd16, 0xc0000000, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , radd16, 0xc0001576, 0x80002aee, 0x0000ffff, 720); 
TEST_RR_OP( 181 , radd16, 0xc000c000, 0x80000000, 0x00008000, 724); 
TEST_RR_OP( 182 , radd16, 0xffffffff, 0xffffffff, 0x00000000, 728); 
TEST_RR_OP( 183 , radd16, 0xffff96cb, 0x0000ad96, 0xffff8000, 732); 
TEST_RR_OP( 184 , radd16, 0xc0005b9e, 0x00004277, 0x800074c6, 736); 
TEST_RR_OP( 185 , radd16, 0xbb87ffff, 0x8000ffff, 0xf70fffff, 740); 
TEST_RR_OP( 186 , radd16, 0xf2aa1af4, 0xffff35ea, 0xe555ffff, 744); 
TEST_RR_OP( 187 , radd16, 0xd2ffc000, 0xa6000000, 0xffff8000, 748); 
TEST_RR_OP( 188 , radd16, 0xbb5b0000, 0x80000000, 0xf6b70000, 752); 
TEST_RR_OP( 189 , radd16, 0x263bbfff, 0x4c778000, 0x0000ffff, 756); 
TEST_RR_OP( 190 , radd16, 0x0000bfff, 0x00008000, 0x0000ffff, 760); 
TEST_RR_OP( 191 , radd16, 0xffffbfff, 0xffffffff, 0xffff8000, 764); 
TEST_RR_OP( 192 , radd16, 0xffff3b3d, 0xffff7200, 0xffff047a, 768); 
TEST_RR_OP( 193 , radd16, 0x0098eb93, 0xb20bd727, 0x4f25ffff, 772); 
TEST_RR_OP( 194 , radd16, 0xa9c813d0, 0x800027a1, 0xd391ffff, 776); 
TEST_RR_OP( 195 , radd16, 0xce3f9b50, 0x00008000, 0x9c7eb6a0, 780); 
TEST_RR_OP( 196 , radd16, 0xc0008000, 0x00008000, 0x80008000, 784); 
TEST_RR_OP( 197 , radd16, 0xffff24b7, 0xffff496e, 0xffff0000, 788); 
TEST_RR_OP( 198 , radd16, 0xffffb06a, 0x00008d95, 0xffffd340, 792); 
TEST_RR_OP( 199 , radd16, 0xbffff82a, 0x8000d974, 0xffff16e0, 796); 

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
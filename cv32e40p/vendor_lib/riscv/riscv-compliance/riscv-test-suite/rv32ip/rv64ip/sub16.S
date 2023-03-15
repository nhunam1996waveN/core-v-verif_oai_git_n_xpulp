# See LICENSE for license details.
#*****************************************************************************
# sub16.S
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

TEST_RR_OP( 2 , sub16, 0xffff09d0, 0xffff1e06, 0x00001436, 8); 
TEST_RR_OP( 3 , sub16, 0xe3237fff, 0xffffffff, 0x1cdc8000, 12); 
TEST_RR_OP( 4 , sub16, 0x7fff0e05, 0xfffff4b3, 0x8000e6ae, 16); 
TEST_RR_OP( 5 , sub16, 0xc8860001, 0x21a40000, 0x591effff, 20); 
TEST_RR_OP( 6 , sub16, 0x2fe90001, 0xafe90000, 0x8000ffff, 24); 
TEST_RR_OP( 7 , sub16, 0x0000c95f, 0x00008000, 0x0000b6a1, 28); 
TEST_RR_OP( 8 , sub16, 0xf965123e, 0x79658000, 0x80006dc2, 32); 
TEST_RR_OP( 9 , sub16, 0xdbc40000, 0xdbc48000, 0x00008000, 36); 
TEST_RR_OP( 10 , sub16, 0x79090000, 0x0000ffff, 0x86f7ffff, 40); 
TEST_RR_OP( 11 , sub16, 0xf5dd2f5e, 0xffffba8c, 0x0a228b2e, 44); 
TEST_RR_OP( 12 , sub16, 0x0d7b37f7, 0x0d7a8000, 0xffff4809, 48); 
TEST_RR_OP( 13 , sub16, 0x7fffb336, 0xffff0000, 0x80004cca, 52); 
TEST_RR_OP( 14 , sub16, 0xffff7351, 0xffff7350, 0x0000ffff, 56); 
TEST_RR_OP( 15 , sub16, 0x0000233e, 0x8000233e, 0x80000000, 60); 
TEST_RR_OP( 16 , sub16, 0x80010000, 0x8000ffff, 0xffffffff, 64); 
TEST_RR_OP( 17 , sub16, 0x38290ce3, 0xffffffff, 0xc7d6f31c, 68); 
TEST_RR_OP( 18 , sub16, 0x00010000, 0x00008000, 0xffff8000, 72); 
TEST_RR_OP( 19 , sub16, 0x0001e6af, 0x00008000, 0xffff9951, 76); 
TEST_RR_OP( 20 , sub16, 0x00001012, 0x00001011, 0x0000ffff, 80); 
TEST_RR_OP( 21 , sub16, 0x80007fff, 0x8000ffff, 0x00008000, 84); 
TEST_RR_OP( 22 , sub16, 0x00007fff, 0xffffffff, 0xffff8000, 88); 
TEST_RR_OP( 23 , sub16, 0x8bc30000, 0xffffffff, 0x743cffff, 92); 
TEST_RR_OP( 24 , sub16, 0x8000ff95, 0x0000ffff, 0x8000006a, 96); 
TEST_RR_OP( 25 , sub16, 0x000091d2, 0x00008000, 0x0000ee2e, 100); 
TEST_RR_OP( 26 , sub16, 0x00000001, 0x00000000, 0x0000ffff, 104); 
TEST_RR_OP( 27 , sub16, 0x0000ffff, 0x0000ffff, 0x00000000, 108); 
TEST_RR_OP( 28 , sub16, 0x00005b76, 0x8000ffff, 0x8000a489, 112); 
TEST_RR_OP( 29 , sub16, 0x80008000, 0x00008000, 0x80000000, 116); 
TEST_RR_OP( 30 , sub16, 0xac670000, 0x2c670000, 0x80000000, 120); 
TEST_RR_OP( 31 , sub16, 0x000035f8, 0xffff35f7, 0xffffffff, 124); 
TEST_RR_OP( 32 , sub16, 0xa9840001, 0xa9830000, 0xffffffff, 128); 
TEST_RR_OP( 33 , sub16, 0xcc7e0000, 0xcc7dffff, 0xffffffff, 132); 
TEST_RR_OP( 34 , sub16, 0x3f7a0000, 0x3d850000, 0xfe0b0000, 136); 
TEST_RR_OP( 35 , sub16, 0xf4348000, 0x74e58000, 0x80b10000, 140); 
TEST_RR_OP( 36 , sub16, 0xc4db2deb, 0x44db2dea, 0x8000ffff, 144); 
TEST_RR_OP( 37 , sub16, 0x844cebcf, 0x88e1ebcf, 0x04950000, 148); 
TEST_RR_OP( 38 , sub16, 0x699e0000, 0x80008000, 0x16628000, 152); 
TEST_RR_OP( 39 , sub16, 0x000072a6, 0x80000000, 0x80008d5a, 156); 
TEST_RR_OP( 40 , sub16, 0xe5968000, 0xe5950000, 0xffff8000, 160); 
TEST_RR_OP( 41 , sub16, 0x80007fff, 0x0000ffff, 0x80008000, 164); 
TEST_RR_OP( 42 , sub16, 0xec6d0000, 0x86498000, 0x99dc8000, 168); 
TEST_RR_OP( 43 , sub16, 0x80019492, 0x8000b8d7, 0xffff2445, 172); 
TEST_RR_OP( 44 , sub16, 0x800035d5, 0x00000000, 0x8000ca2b, 176); 
TEST_RR_OP( 45 , sub16, 0xdee984a9, 0x00000000, 0x21177b57, 180); 
TEST_RR_OP( 46 , sub16, 0xfd8267fb, 0x0000ffff, 0x027e9804, 184); 
TEST_RR_OP( 47 , sub16, 0xffff5889, 0xffffffff, 0x0000a776, 188); 
TEST_RR_OP( 48 , sub16, 0x00002448, 0x0000ffff, 0x0000dbb7, 192); 
TEST_RR_OP( 49 , sub16, 0x02eec044, 0x02ee4044, 0x00008000, 196); 
TEST_RR_OP( 50 , sub16, 0x00008000, 0x80008000, 0x80000000, 200); 
TEST_RR_OP( 51 , sub16, 0x7fff0000, 0xffffffff, 0x8000ffff, 204); 
TEST_RR_OP( 52 , sub16, 0x0001890b, 0x00008000, 0xfffff6f5, 208); 
TEST_RR_OP( 53 , sub16, 0x3e0dffff, 0x3e0dffff, 0x00000000, 212); 
TEST_RR_OP( 54 , sub16, 0x00007562, 0xffff8000, 0xffff0a9e, 216); 
TEST_RR_OP( 55 , sub16, 0x00016963, 0x00006962, 0xffffffff, 220); 
TEST_RR_OP( 56 , sub16, 0x00008001, 0xffff8000, 0xffffffff, 224); 
TEST_RR_OP( 57 , sub16, 0x80000000, 0x8000ffff, 0x0000ffff, 228); 
TEST_RR_OP( 58 , sub16, 0x76d979f2, 0xffff79f1, 0x8926ffff, 232); 
TEST_RR_OP( 59 , sub16, 0x7fff8000, 0xffff0000, 0x80008000, 236); 
TEST_RR_OP( 60 , sub16, 0x00000000, 0x0000ffff, 0x0000ffff, 240); 
TEST_RR_OP( 61 , sub16, 0x291f4eb3, 0x291e0000, 0xffffb14d, 244); 
TEST_RR_OP( 62 , sub16, 0x00004342, 0x80003b26, 0x8000f7e4, 248); 
TEST_RR_OP( 63 , sub16, 0xfd018000, 0xfd018000, 0x00000000, 252); 
TEST_RR_OP( 64 , sub16, 0x000070e5, 0x00008b50, 0x00001a6b, 256); 
TEST_RR_OP( 65 , sub16, 0x0000c0b9, 0x00000000, 0x00003f47, 260); 
TEST_RR_OP( 66 , sub16, 0xf246313d, 0x0000ffff, 0x0dbacec2, 264); 
TEST_RR_OP( 67 , sub16, 0xc5ff0000, 0xffff0000, 0x3a000000, 268); 
TEST_RR_OP( 68 , sub16, 0x56da0000, 0x56da0000, 0x00000000, 272); 
TEST_RR_OP( 69 , sub16, 0xffff7fff, 0xffffffff, 0x00008000, 276); 
TEST_RR_OP( 70 , sub16, 0x46f70000, 0x7cdb0000, 0x35e40000, 280); 
TEST_RR_OP( 71 , sub16, 0x0001ffff, 0x0000ffff, 0xffff0000, 284); 
TEST_RR_OP( 72 , sub16, 0x5797577f, 0xd797577f, 0x80000000, 288); 
TEST_RR_OP( 73 , sub16, 0x800089d5, 0x80002dab, 0x0000a3d6, 292); 
TEST_RR_OP( 74 , sub16, 0x3dcd70ef, 0x00000000, 0xc2338f11, 296); 
TEST_RR_OP( 75 , sub16, 0x93d37fff, 0x93d2ffff, 0xffff8000, 300); 
TEST_RR_OP( 76 , sub16, 0x84f71395, 0x84f68000, 0xffff6c6b, 304); 
TEST_RR_OP( 77 , sub16, 0x86250000, 0x86250000, 0x00000000, 308); 
TEST_RR_OP( 78 , sub16, 0x23cdc7a6, 0x0000c7a6, 0xdc330000, 312); 
TEST_RR_OP( 79 , sub16, 0xffff8000, 0xffff0000, 0x00008000, 316); 
TEST_RR_OP( 80 , sub16, 0x8001c9f4, 0x80000000, 0xffff360c, 320); 
TEST_RR_OP( 81 , sub16, 0x80000000, 0x00008000, 0x80008000, 324); 
TEST_RR_OP( 82 , sub16, 0x0000fc6e, 0xffff8000, 0xffff8392, 328); 
TEST_RR_OP( 83 , sub16, 0x0001edf8, 0x000050f6, 0xffff62fe, 332); 
TEST_RR_OP( 84 , sub16, 0x00013517, 0x0000b517, 0xffff8000, 336); 
TEST_RR_OP( 85 , sub16, 0xc7e80000, 0xc7e80000, 0x00000000, 340); 
TEST_RR_OP( 86 , sub16, 0x0000ffff, 0x0000ffff, 0x00000000, 344); 
TEST_RR_OP( 87 , sub16, 0x7fff26dc, 0xffff0000, 0x8000d924, 348); 
TEST_RR_OP( 88 , sub16, 0x00007fff, 0x0000ffff, 0x00008000, 352); 
TEST_RR_OP( 89 , sub16, 0x9f290001, 0x280a0000, 0x88e1ffff, 356); 
TEST_RR_OP( 90 , sub16, 0x1e93ffff, 0xf683ffff, 0xd7f00000, 360); 
TEST_RR_OP( 91 , sub16, 0xfb6c8000, 0x7b6c0000, 0x80008000, 364); 
TEST_RR_OP( 92 , sub16, 0xba0db5d5, 0x8dc535d5, 0xd3b88000, 368); 
TEST_RR_OP( 93 , sub16, 0x7107254e, 0xffffa54e, 0x8ef88000, 372); 
TEST_RR_OP( 94 , sub16, 0x00008000, 0xffff0000, 0xffff8000, 376); 
TEST_RR_OP( 95 , sub16, 0xf18d0000, 0xffff0000, 0x0e720000, 380); 
TEST_RR_OP( 96 , sub16, 0x0001f3b8, 0x0000ffff, 0xffff0c47, 384); 
TEST_RR_OP( 97 , sub16, 0xffff7bb7, 0xffff5799, 0x0000dbe2, 388); 
TEST_RR_OP( 98 , sub16, 0x68550001, 0x31a40000, 0xc94fffff, 392); 
TEST_RR_OP( 99 , sub16, 0x0000d7fe, 0x0000d7fd, 0x0000ffff, 396); 
TEST_RR_OP( 100 , sub16, 0xc1798001, 0x00008000, 0x3e87ffff, 400); 
TEST_RR_OP( 101 , sub16, 0xdf0c7fff, 0x8000ffff, 0xa0f48000, 404); 
TEST_RR_OP( 102 , sub16, 0xe4468001, 0x80008000, 0x9bbaffff, 408); 
TEST_RR_OP( 103 , sub16, 0x00008d2e, 0xffffffff, 0xffff72d1, 412); 
TEST_RR_OP( 104 , sub16, 0x81a37fff, 0x81a3ffff, 0x00008000, 416); 
TEST_RR_OP( 105 , sub16, 0x0000abb9, 0xffffabb8, 0xffffffff, 420); 
TEST_RR_OP( 106 , sub16, 0x80002111, 0x00008000, 0x80005eef, 424); 
TEST_RR_OP( 107 , sub16, 0x7ee9ae2c, 0x8000ffff, 0x011751d3, 428); 
TEST_RR_OP( 108 , sub16, 0x03c2db40, 0xffff2ce2, 0xfc3d51a2, 432); 
TEST_RR_OP( 109 , sub16, 0xf5040000, 0xf5040000, 0x00000000, 436); 
TEST_RR_OP( 110 , sub16, 0x98948000, 0xba2d0000, 0x21998000, 440); 
TEST_RR_OP( 111 , sub16, 0x08980000, 0x08978000, 0xffff8000, 444); 
TEST_RR_OP( 112 , sub16, 0x10cf974d, 0x8000c6dc, 0x6f312f8f, 448); 
TEST_RR_OP( 113 , sub16, 0xffff8001, 0xffff8000, 0x0000ffff, 452); 
TEST_RR_OP( 114 , sub16, 0xbfdc30e7, 0xbfdcb0e7, 0x00008000, 456); 
TEST_RR_OP( 115 , sub16, 0x80009380, 0x0000ffff, 0x80006c7f, 460); 
TEST_RR_OP( 116 , sub16, 0x4cffa9b6, 0x4cff8000, 0x0000d64a, 464); 
TEST_RR_OP( 117 , sub16, 0x94dd0000, 0x80008000, 0xeb238000, 468); 
TEST_RR_OP( 118 , sub16, 0x800035b0, 0x000035af, 0x8000ffff, 472); 
TEST_RR_OP( 119 , sub16, 0xc500bfa5, 0x8000bfa4, 0xbb00ffff, 476); 
TEST_RR_OP( 120 , sub16, 0x7089f654, 0x00007654, 0x8f778000, 480); 
TEST_RR_OP( 121 , sub16, 0x7fff0000, 0xffff0000, 0x80000000, 484); 
TEST_RR_OP( 122 , sub16, 0x7fff0001, 0xffff0000, 0x8000ffff, 488); 
TEST_RR_OP( 123 , sub16, 0x0000f39f, 0x8000739f, 0x80008000, 492); 
TEST_RR_OP( 124 , sub16, 0x91c92aa9, 0x70278000, 0xde5e5557, 496); 
TEST_RR_OP( 125 , sub16, 0xc380c56b, 0xc37f456b, 0xffff8000, 500); 
TEST_RR_OP( 126 , sub16, 0x8dedfeee, 0x2cd60000, 0x9ee90112, 504); 
TEST_RR_OP( 127 , sub16, 0x7fff0000, 0xffff8000, 0x80008000, 508); 
TEST_RR_OP( 128 , sub16, 0x37810000, 0x37818000, 0x00008000, 512); 
TEST_RR_OP( 129 , sub16, 0x338c392f, 0xffff93dc, 0xcc735aad, 516); 
TEST_RR_OP( 130 , sub16, 0xc8490001, 0xc8480000, 0xffffffff, 520); 
TEST_RR_OP( 131 , sub16, 0x8001ffff, 0x8000ffff, 0xffff0000, 524); 
TEST_RR_OP( 132 , sub16, 0xdd698000, 0xdd690000, 0x00008000, 528); 
TEST_RR_OP( 133 , sub16, 0x8001ffff, 0x8000ffff, 0xffff0000, 532); 
TEST_RR_OP( 134 , sub16, 0x8000e6fb, 0x8000e6fa, 0x0000ffff, 536); 
TEST_RR_OP( 135 , sub16, 0xdc9e8001, 0x80008000, 0xa362ffff, 540); 
TEST_RR_OP( 136 , sub16, 0x0000fe71, 0xffffffff, 0xffff018e, 544); 
TEST_RR_OP( 137 , sub16, 0xb6760001, 0x00000000, 0x498affff, 548); 
TEST_RR_OP( 138 , sub16, 0x7fff1036, 0xffff7f3d, 0x80006f07, 552); 
TEST_RR_OP( 139 , sub16, 0xf6430001, 0x41820000, 0x4b3fffff, 556); 
TEST_RR_OP( 140 , sub16, 0x00018000, 0x00008000, 0xffff0000, 560); 
TEST_RR_OP( 141 , sub16, 0x80006651, 0x0000e651, 0x80008000, 564); 
TEST_RR_OP( 142 , sub16, 0x80000001, 0x00000000, 0x8000ffff, 568); 
TEST_RR_OP( 143 , sub16, 0x80000000, 0x8000ffff, 0x0000ffff, 572); 
TEST_RR_OP( 144 , sub16, 0x00010000, 0x00008000, 0xffff8000, 576); 
TEST_RR_OP( 145 , sub16, 0x7fff8971, 0xffff8000, 0x8000f68f, 580); 
TEST_RR_OP( 146 , sub16, 0xed6c7d96, 0xafa1153d, 0xc23597a7, 584); 
TEST_RR_OP( 147 , sub16, 0x3a950000, 0x8000ffff, 0x456bffff, 588); 
TEST_RR_OP( 148 , sub16, 0x80004def, 0x0000baee, 0x80006cff, 592); 
TEST_RR_OP( 149 , sub16, 0xffff2420, 0xffff8000, 0x00005be0, 596); 
TEST_RR_OP( 150 , sub16, 0xffff5130, 0xffff28ef, 0x0000d7bf, 600); 
TEST_RR_OP( 151 , sub16, 0x80008000, 0x80008000, 0x00000000, 604); 
TEST_RR_OP( 152 , sub16, 0xf3198001, 0x00008000, 0x0ce7ffff, 608); 
TEST_RR_OP( 153 , sub16, 0x000058fa, 0x80005408, 0x8000fb0e, 612); 
TEST_RR_OP( 154 , sub16, 0x80011269, 0x8000e28d, 0xffffd024, 616); 
TEST_RR_OP( 155 , sub16, 0x7fff0000, 0xffff8000, 0x80008000, 620); 
TEST_RR_OP( 156 , sub16, 0xffe408de, 0x7fe4ffff, 0x8000f721, 624); 
TEST_RR_OP( 157 , sub16, 0x9079d18f, 0xffff0000, 0x6f862e71, 628); 
TEST_RR_OP( 158 , sub16, 0x00000000, 0xffff0000, 0xffff0000, 632); 
TEST_RR_OP( 159 , sub16, 0x8000d713, 0x8000ffff, 0x000028ec, 636); 
TEST_RR_OP( 160 , sub16, 0x80008000, 0x00000000, 0x80008000, 640); 
TEST_RR_OP( 161 , sub16, 0x00017fff, 0x0000ffff, 0xffff8000, 644); 
TEST_RR_OP( 162 , sub16, 0x0000f721, 0xfffff720, 0xffffffff, 648); 
TEST_RR_OP( 163 , sub16, 0x80010000, 0x80000000, 0xffff0000, 652); 
TEST_RR_OP( 164 , sub16, 0x663e8001, 0x7bd48000, 0x1596ffff, 656); 
TEST_RR_OP( 165 , sub16, 0xdce8ffff, 0x0000ffff, 0x23180000, 660); 
TEST_RR_OP( 166 , sub16, 0x00008001, 0x00008000, 0x0000ffff, 664); 
TEST_RR_OP( 167 , sub16, 0x00008000, 0x80000000, 0x80008000, 668); 
TEST_RR_OP( 168 , sub16, 0x14ed8001, 0x14ec8000, 0xffffffff, 672); 
TEST_RR_OP( 169 , sub16, 0x55e378f3, 0x0000f8f3, 0xaa1d8000, 676); 
TEST_RR_OP( 170 , sub16, 0x800171cd, 0x8000f1cd, 0xffff8000, 680); 
TEST_RR_OP( 171 , sub16, 0xffff0001, 0xffff0000, 0x0000ffff, 684); 
TEST_RR_OP( 172 , sub16, 0xa48f7fff, 0xa48fffff, 0x00008000, 688); 
TEST_RR_OP( 173 , sub16, 0x2a467fff, 0xffffffff, 0xd5b98000, 692); 
TEST_RR_OP( 174 , sub16, 0xdfd60000, 0xdfd58000, 0xffff8000, 696); 
TEST_RR_OP( 175 , sub16, 0x7fff0001, 0xffff0000, 0x8000ffff, 700); 
TEST_RR_OP( 176 , sub16, 0xbde38000, 0x00008000, 0x421d0000, 704); 
TEST_RR_OP( 177 , sub16, 0xa5f58000, 0xa5f50000, 0x00008000, 708); 
TEST_RR_OP( 178 , sub16, 0xffff8792, 0xffff8791, 0x0000ffff, 712); 
TEST_RR_OP( 179 , sub16, 0x29cbffff, 0x29cbffff, 0x00000000, 716); 
TEST_RR_OP( 180 , sub16, 0x80007fff, 0x0000ffff, 0x80008000, 720); 
TEST_RR_OP( 181 , sub16, 0xa0f7da60, 0xa0f7da60, 0x00000000, 724); 
TEST_RR_OP( 182 , sub16, 0x00010000, 0x0000ffff, 0xffffffff, 728); 
TEST_RR_OP( 183 , sub16, 0x097c8000, 0x097b0000, 0xffff8000, 732); 
TEST_RR_OP( 184 , sub16, 0x0000021a, 0x8000821a, 0x80008000, 736); 
TEST_RR_OP( 185 , sub16, 0xedb645f4, 0xedb60000, 0x0000ba0c, 740); 
TEST_RR_OP( 186 , sub16, 0x2417ffff, 0x6a5affff, 0x46430000, 744); 
TEST_RR_OP( 187 , sub16, 0x00007fff, 0x8000ffff, 0x80008000, 748); 
TEST_RR_OP( 188 , sub16, 0x80017fff, 0x8000ffff, 0xffff8000, 752); 
TEST_RR_OP( 189 , sub16, 0x0000ffff, 0x8000ffff, 0x80000000, 756); 
TEST_RR_OP( 190 , sub16, 0x8000451a, 0x8000d2f6, 0x00008ddc, 760); 
TEST_RR_OP( 191 , sub16, 0x00000000, 0xffff0000, 0xffff0000, 764); 
TEST_RR_OP( 192 , sub16, 0xfa0eb91c, 0xfa0d0000, 0xffff46e4, 768); 
TEST_RR_OP( 193 , sub16, 0xb37fffff, 0x617cffff, 0xadfd0000, 772); 
TEST_RR_OP( 194 , sub16, 0xd41d0000, 0x541d0000, 0x80000000, 776); 
TEST_RR_OP( 195 , sub16, 0x8f350000, 0x8f340000, 0xffff0000, 780); 
TEST_RR_OP( 196 , sub16, 0xbbe57fff, 0x8000ffff, 0xc41b8000, 784); 
TEST_RR_OP( 197 , sub16, 0xffffffff, 0xffffffff, 0x00000000, 788); 
TEST_RR_OP( 198 , sub16, 0x80000001, 0x80000000, 0x0000ffff, 792); 
TEST_RR_OP( 199 , sub16, 0x099d8000, 0x1bb40000, 0x12178000, 796); 

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
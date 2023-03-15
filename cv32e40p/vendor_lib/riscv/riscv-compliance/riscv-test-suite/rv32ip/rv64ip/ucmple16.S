# See LICENSE for license details.
#*****************************************************************************
# ucmple16.S
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

TEST_RR_OP( 2 , ucmple16, 0x0000ffff, 0xffff8000, 0x00009e5c, 8); 
TEST_RR_OP( 3 , ucmple16, 0x0000ffff, 0x80000000, 0x00008000, 12); 
TEST_RR_OP( 4 , ucmple16, 0xffff0000, 0xc912ffff, 0xffff0000, 16); 
TEST_RR_OP( 5 , ucmple16, 0xffff0000, 0x0000eb0b, 0x00008000, 20); 
TEST_RR_OP( 6 , ucmple16, 0xffffffff, 0x000057e4, 0xffffffff, 24); 
TEST_RR_OP( 7 , ucmple16, 0x00000000, 0xffffb0df, 0x9a072566, 28); 
TEST_RR_OP( 8 , ucmple16, 0x0000ffff, 0xa4c48000, 0x00008000, 32); 
TEST_RR_OP( 9 , ucmple16, 0x0000ffff, 0x80000000, 0x00008000, 36); 
TEST_RR_OP( 10 , ucmple16, 0x00000000, 0x079fc2f6, 0x00008000, 40); 
TEST_RR_OP( 11 , ucmple16, 0xffffffff, 0x00000a81, 0x80008000, 44); 
TEST_RR_OP( 12 , ucmple16, 0x0000ffff, 0x59670000, 0x0000af5e, 48); 
TEST_RR_OP( 13 , ucmple16, 0xffffffff, 0x80000000, 0xffff8000, 52); 
TEST_RR_OP( 14 , ucmple16, 0xffffffff, 0x5e228000, 0x80008000, 56); 
TEST_RR_OP( 15 , ucmple16, 0xffffffff, 0x00000000, 0x80008000, 60); 
TEST_RR_OP( 16 , ucmple16, 0x00000000, 0xffffffff, 0x62d40000, 64); 
TEST_RR_OP( 17 , ucmple16, 0xffff0000, 0x02e6ffff, 0x8000e9ab, 68); 
TEST_RR_OP( 18 , ucmple16, 0xffffffff, 0x00000000, 0x00000000, 72); 
TEST_RR_OP( 19 , ucmple16, 0xffff0000, 0x80008000, 0x80004320, 76); 
TEST_RR_OP( 20 , ucmple16, 0xffff0000, 0x800081d8, 0xd5558000, 80); 
TEST_RR_OP( 21 , ucmple16, 0xffff0000, 0x0000ffff, 0x80000000, 84); 
TEST_RR_OP( 22 , ucmple16, 0x0000ffff, 0x920d8000, 0x80008000, 88); 
TEST_RR_OP( 23 , ucmple16, 0xffff0000, 0x00004135, 0x9dec0000, 92); 
TEST_RR_OP( 24 , ucmple16, 0x0000ffff, 0xffff0000, 0x01c9ffff, 96); 
TEST_RR_OP( 25 , ucmple16, 0xffff0000, 0x0000ffff, 0x80000000, 100); 
TEST_RR_OP( 26 , ucmple16, 0xffffffff, 0xf0f7ffff, 0xffffffff, 104); 
TEST_RR_OP( 27 , ucmple16, 0x00000000, 0xffffffff, 0x80000000, 108); 
TEST_RR_OP( 28 , ucmple16, 0x00000000, 0xffffdeaf, 0x36708000, 112); 
TEST_RR_OP( 29 , ucmple16, 0xffff0000, 0x0000ffff, 0x00000000, 116); 
TEST_RR_OP( 30 , ucmple16, 0x00000000, 0xffffbddf, 0x00000000, 120); 
TEST_RR_OP( 31 , ucmple16, 0x00000000, 0xc1f5ffff, 0x80000000, 124); 
TEST_RR_OP( 32 , ucmple16, 0xffffffff, 0x80000000, 0x8000df6d, 128); 
TEST_RR_OP( 33 , ucmple16, 0x00000000, 0x8abdffff, 0x80004cec, 132); 
TEST_RR_OP( 34 , ucmple16, 0xffffffff, 0x00000000, 0x8000ffff, 136); 
TEST_RR_OP( 35 , ucmple16, 0xffffffff, 0x00008000, 0x00008000, 140); 
TEST_RR_OP( 36 , ucmple16, 0xffffffff, 0xffff0000, 0xffff8000, 144); 
TEST_RR_OP( 37 , ucmple16, 0xffff0000, 0x8000ffff, 0xeb881393, 148); 
TEST_RR_OP( 38 , ucmple16, 0xffffffff, 0x8000153f, 0xffffffff, 152); 
TEST_RR_OP( 39 , ucmple16, 0x00000000, 0x8000ffff, 0x00000000, 156); 
TEST_RR_OP( 40 , ucmple16, 0xffff0000, 0x8000ffff, 0x80009c8a, 160); 
TEST_RR_OP( 41 , ucmple16, 0xffffffff, 0x99438000, 0xd01cffff, 164); 
TEST_RR_OP( 42 , ucmple16, 0x00000000, 0xffffffff, 0x00008000, 168); 
TEST_RR_OP( 43 , ucmple16, 0xffffffff, 0xac80b29f, 0xffffc3eb, 172); 
TEST_RR_OP( 44 , ucmple16, 0xffff0000, 0x419e8000, 0x51820000, 176); 
TEST_RR_OP( 45 , ucmple16, 0xffffffff, 0x80000000, 0xffff0000, 180); 
TEST_RR_OP( 46 , ucmple16, 0xffffffff, 0x0000ffff, 0x0000ffff, 184); 
TEST_RR_OP( 47 , ucmple16, 0xffffffff, 0x80008000, 0xffffffff, 188); 
TEST_RR_OP( 48 , ucmple16, 0xffff0000, 0x8000ffff, 0x80000000, 192); 
TEST_RR_OP( 49 , ucmple16, 0x0000ffff, 0x88578185, 0x5ecfffff, 196); 
TEST_RR_OP( 50 , ucmple16, 0x0000ffff, 0xffff8000, 0x0000ffff, 200); 
TEST_RR_OP( 51 , ucmple16, 0x0000ffff, 0xffff8000, 0x00008000, 204); 
TEST_RR_OP( 52 , ucmple16, 0xffffffff, 0x00006072, 0x80008000, 208); 
TEST_RR_OP( 53 , ucmple16, 0xffffffff, 0x00008000, 0x0000ffff, 212); 
TEST_RR_OP( 54 , ucmple16, 0xffffffff, 0x80000000, 0xffff765e, 216); 
TEST_RR_OP( 55 , ucmple16, 0x0000ffff, 0xffff8000, 0x0ca2ffff, 220); 
TEST_RR_OP( 56 , ucmple16, 0x0000ffff, 0xfd8e0000, 0x80000000, 224); 
TEST_RR_OP( 57 , ucmple16, 0xffffffff, 0x00008000, 0xffffffff, 228); 
TEST_RR_OP( 58 , ucmple16, 0xffffffff, 0x00000000, 0x5b2e0000, 232); 
TEST_RR_OP( 59 , ucmple16, 0xffffffff, 0x80000000, 0x80003578, 236); 
TEST_RR_OP( 60 , ucmple16, 0xffffffff, 0x00000000, 0xd6b25e82, 240); 
TEST_RR_OP( 61 , ucmple16, 0x00000000, 0xffff8000, 0x00000dc0, 244); 
TEST_RR_OP( 62 , ucmple16, 0xffffffff, 0x00008000, 0x6626ffff, 248); 
TEST_RR_OP( 63 , ucmple16, 0xffffffff, 0x80000000, 0x80000000, 252); 
TEST_RR_OP( 64 , ucmple16, 0x0000ffff, 0xffffaaf6, 0x0000ffff, 256); 
TEST_RR_OP( 65 , ucmple16, 0xffffffff, 0xffff429c, 0xffffffff, 260); 
TEST_RR_OP( 66 , ucmple16, 0xffffffff, 0x00000000, 0x800053c9, 264); 
TEST_RR_OP( 67 , ucmple16, 0xffffffff, 0x00000b91, 0x00008567, 268); 
TEST_RR_OP( 68 , ucmple16, 0xffff0000, 0x00008a67, 0x00000000, 272); 
TEST_RR_OP( 69 , ucmple16, 0x0000ffff, 0x43b38000, 0x0000ffff, 276); 
TEST_RR_OP( 70 , ucmple16, 0xffff0000, 0x0000ffff, 0xfbe70000, 280); 
TEST_RR_OP( 71 , ucmple16, 0x0000ffff, 0x80000000, 0x0000ffff, 284); 
TEST_RR_OP( 72 , ucmple16, 0xffff0000, 0x80008000, 0xffff0000, 288); 
TEST_RR_OP( 73 , ucmple16, 0x0000ffff, 0x8000ffff, 0x35f2ffff, 292); 
TEST_RR_OP( 74 , ucmple16, 0xffff0000, 0x8000ffff, 0x80008000, 296); 
TEST_RR_OP( 75 , ucmple16, 0x0000ffff, 0xffff8000, 0x00008d84, 300); 
TEST_RR_OP( 76 , ucmple16, 0xffff0000, 0x80008000, 0x80000000, 304); 
TEST_RR_OP( 77 , ucmple16, 0x0000ffff, 0xffff4a39, 0x80008000, 308); 
TEST_RR_OP( 78 , ucmple16, 0xffffffff, 0x00008000, 0x5476ffff, 312); 
TEST_RR_OP( 79 , ucmple16, 0x0000ffff, 0xb3c38000, 0x0000fc7b, 316); 
TEST_RR_OP( 80 , ucmple16, 0xffffffff, 0xeee40000, 0xffff0000, 320); 
TEST_RR_OP( 81 , ucmple16, 0x0000ffff, 0xffff4dbc, 0x80008000, 324); 
TEST_RR_OP( 82 , ucmple16, 0x00000000, 0xffffb150, 0x00000000, 328); 
TEST_RR_OP( 83 , ucmple16, 0xffff0000, 0x80008000, 0xffff0000, 332); 
TEST_RR_OP( 84 , ucmple16, 0x0000ffff, 0xffff8000, 0x00008000, 336); 
TEST_RR_OP( 85 , ucmple16, 0xffffffff, 0x00000000, 0x80008000, 340); 
TEST_RR_OP( 86 , ucmple16, 0x0000ffff, 0xffffffff, 0x0000ffff, 344); 
TEST_RR_OP( 87 , ucmple16, 0x00000000, 0x1b2cd564, 0x0000140f, 348); 
TEST_RR_OP( 88 , ucmple16, 0xffffffff, 0x7a6b3191, 0x80008000, 352); 
TEST_RR_OP( 89 , ucmple16, 0x00000000, 0x8000686f, 0x00000145, 356); 
TEST_RR_OP( 90 , ucmple16, 0xffffffff, 0x00008000, 0xca62f15c, 360); 
TEST_RR_OP( 91 , ucmple16, 0x0000ffff, 0xffff0000, 0x8000ffff, 364); 
TEST_RR_OP( 92 , ucmple16, 0x0000ffff, 0xf5dcffff, 0x32c9ffff, 368); 
TEST_RR_OP( 93 , ucmple16, 0xffffffff, 0xffff2f9f, 0xffffffff, 372); 
TEST_RR_OP( 94 , ucmple16, 0x0000ffff, 0x878e8000, 0x00008000, 376); 
TEST_RR_OP( 95 , ucmple16, 0xffff0000, 0x3cba24a2, 0x80000000, 380); 
TEST_RR_OP( 96 , ucmple16, 0xffffffff, 0x80000000, 0x8000b1f5, 384); 
TEST_RR_OP( 97 , ucmple16, 0xffff0000, 0x80008000, 0xee8d0000, 388); 
TEST_RR_OP( 98 , ucmple16, 0xffff0000, 0x00008000, 0x80000000, 392); 
TEST_RR_OP( 99 , ucmple16, 0xffffffff, 0x00000000, 0x0000ffff, 396); 
TEST_RR_OP( 100 , ucmple16, 0xffff0000, 0x0000ffff, 0xc5acbfc2, 400); 
TEST_RR_OP( 101 , ucmple16, 0xffffffff, 0x0000f5df, 0x8000ffff, 404); 
TEST_RR_OP( 102 , ucmple16, 0xffff0000, 0x0000ffff, 0x00000000, 408); 
TEST_RR_OP( 103 , ucmple16, 0x0000ffff, 0x840d8000, 0x8000ffff, 412); 
TEST_RR_OP( 104 , ucmple16, 0x0000ffff, 0x8a848000, 0x0000ffff, 416); 
TEST_RR_OP( 105 , ucmple16, 0x00000000, 0xffff8000, 0x80000000, 420); 
TEST_RR_OP( 106 , ucmple16, 0xffff0000, 0x8000ffff, 0x8000a1ea, 424); 
TEST_RR_OP( 107 , ucmple16, 0xffff0000, 0x0000ffff, 0xffff7c33, 428); 
TEST_RR_OP( 108 , ucmple16, 0xffff0000, 0xed68ffff, 0xffff8000, 432); 
TEST_RR_OP( 109 , ucmple16, 0x00000000, 0x8000ffff, 0x0000ee6a, 436); 
TEST_RR_OP( 110 , ucmple16, 0x0000ffff, 0x80008000, 0x2359ffff, 440); 
TEST_RR_OP( 111 , ucmple16, 0xffffffff, 0xffad0000, 0xffff8000, 444); 
TEST_RR_OP( 112 , ucmple16, 0xffffffff, 0x852ac0ca, 0xffffffff, 448); 
TEST_RR_OP( 113 , ucmple16, 0x00000000, 0xffff8000, 0x00000000, 452); 
TEST_RR_OP( 114 , ucmple16, 0xffffffff, 0x00008000, 0x80008000, 456); 
TEST_RR_OP( 115 , ucmple16, 0xffffffff, 0x8cdd5501, 0xffffffff, 460); 
TEST_RR_OP( 116 , ucmple16, 0xffffffff, 0x04d80000, 0x8000ffff, 464); 
TEST_RR_OP( 117 , ucmple16, 0xffffffff, 0x4b4dfba9, 0xffffffff, 468); 
TEST_RR_OP( 118 , ucmple16, 0x00000000, 0xac9fffff, 0x80009624, 472); 
TEST_RR_OP( 119 , ucmple16, 0xffffffff, 0x80000000, 0x800090fd, 476); 
TEST_RR_OP( 120 , ucmple16, 0x0000ffff, 0xffff617e, 0xe092ffff, 480); 
TEST_RR_OP( 121 , ucmple16, 0xffffffff, 0x80000000, 0x80000000, 484); 
TEST_RR_OP( 122 , ucmple16, 0xffffffff, 0x80008000, 0xffffffff, 488); 
TEST_RR_OP( 123 , ucmple16, 0xffff0000, 0xffffffff, 0xffff07d7, 492); 
TEST_RR_OP( 124 , ucmple16, 0xffff0000, 0x19254da9, 0x80001af2, 496); 
TEST_RR_OP( 125 , ucmple16, 0xffff0000, 0x7e928000, 0x80001df9, 500); 
TEST_RR_OP( 126 , ucmple16, 0xffff0000, 0x00008000, 0x7ac60000, 504); 
TEST_RR_OP( 127 , ucmple16, 0xffffffff, 0xb60e2535, 0xffffffff, 508); 
TEST_RR_OP( 128 , ucmple16, 0xffffffff, 0x00000000, 0x80000000, 512); 
TEST_RR_OP( 129 , ucmple16, 0x0000ffff, 0x15ce8000, 0x0000f06c, 516); 
TEST_RR_OP( 130 , ucmple16, 0xffffffff, 0x4faaffff, 0x93aaffff, 520); 
TEST_RR_OP( 131 , ucmple16, 0xffffffff, 0x0000a559, 0xc74affff, 524); 
TEST_RR_OP( 132 , ucmple16, 0xffff0000, 0x0000ffff, 0xffff8069, 528); 
TEST_RR_OP( 133 , ucmple16, 0xffffffff, 0x80005c7e, 0x80008000, 532); 
TEST_RR_OP( 134 , ucmple16, 0xffffffff, 0x00008000, 0x8000af27, 536); 
TEST_RR_OP( 135 , ucmple16, 0x0000ffff, 0xffff8000, 0x8000ffff, 540); 
TEST_RR_OP( 136 , ucmple16, 0x0000ffff, 0x80000000, 0x0000ffff, 544); 
TEST_RR_OP( 137 , ucmple16, 0xffffffff, 0x00000000, 0x03f48000, 548); 
TEST_RR_OP( 138 , ucmple16, 0x0000ffff, 0x96400000, 0x00000000, 552); 
TEST_RR_OP( 139 , ucmple16, 0xffffffff, 0x00001775, 0xee2233f7, 556); 
TEST_RR_OP( 140 , ucmple16, 0x0000ffff, 0xffff04da, 0x0000c6b6, 560); 
TEST_RR_OP( 141 , ucmple16, 0xffffffff, 0x86d68000, 0xb61bffff, 564); 
TEST_RR_OP( 142 , ucmple16, 0xffff0000, 0x0000ffff, 0x80008000, 568); 
TEST_RR_OP( 143 , ucmple16, 0xffff0000, 0x0000ffff, 0xffff0000, 572); 
TEST_RR_OP( 144 , ucmple16, 0xffff0000, 0x461cdb21, 0xffff8000, 576); 
TEST_RR_OP( 145 , ucmple16, 0x0000ffff, 0x80000000, 0x00008000, 580); 
TEST_RR_OP( 146 , ucmple16, 0xffffffff, 0x00000000, 0xf3c38000, 584); 
TEST_RR_OP( 147 , ucmple16, 0xffff0000, 0xffff9c99, 0xffff0000, 588); 
TEST_RR_OP( 148 , ucmple16, 0x0000ffff, 0xffffc4b0, 0x6094ffff, 592); 
TEST_RR_OP( 149 , ucmple16, 0xffffffff, 0xffff8000, 0xffffffff, 596); 
TEST_RR_OP( 150 , ucmple16, 0x0000ffff, 0x80000000, 0x0000ffff, 600); 
TEST_RR_OP( 151 , ucmple16, 0xffffffff, 0x00000000, 0xffff8000, 604); 
TEST_RR_OP( 152 , ucmple16, 0x0000ffff, 0xffff7ff5, 0xd7498000, 608); 
TEST_RR_OP( 153 , ucmple16, 0x00000000, 0xffff8000, 0x80000000, 612); 
TEST_RR_OP( 154 , ucmple16, 0xffffffff, 0x8000ca71, 0x8000dc23, 616); 
TEST_RR_OP( 155 , ucmple16, 0xffffffff, 0x00008000, 0x00008000, 620); 
TEST_RR_OP( 156 , ucmple16, 0xffffffff, 0x0000142d, 0x8000a77e, 624); 
TEST_RR_OP( 157 , ucmple16, 0x0000ffff, 0xffff0000, 0x80000000, 628); 
TEST_RR_OP( 158 , ucmple16, 0x00000000, 0xffffffff, 0x5eb0601b, 632); 
TEST_RR_OP( 159 , ucmple16, 0xffffffff, 0xfc128000, 0xffff8000, 636); 
TEST_RR_OP( 160 , ucmple16, 0xffff0000, 0x000076a6, 0x80000000, 640); 
TEST_RR_OP( 161 , ucmple16, 0x0000ffff, 0x0aa20000, 0x00000000, 644); 
TEST_RR_OP( 162 , ucmple16, 0x0000ffff, 0x1b2e0000, 0x0000ffff, 648); 
TEST_RR_OP( 163 , ucmple16, 0xffffffff, 0x00004a1f, 0x0000ffff, 652); 
TEST_RR_OP( 164 , ucmple16, 0xffffffff, 0x0000f903, 0x0000ffff, 656); 
TEST_RR_OP( 165 , ucmple16, 0x00000000, 0xffff1fff, 0x29400000, 660); 
TEST_RR_OP( 166 , ucmple16, 0xffff0000, 0x8e749273, 0xdc810000, 664); 
TEST_RR_OP( 167 , ucmple16, 0xffffffff, 0x8e2cffff, 0xfc2affff, 668); 
TEST_RR_OP( 168 , ucmple16, 0x0000ffff, 0xffff0000, 0x00008000, 672); 
TEST_RR_OP( 169 , ucmple16, 0x0000ffff, 0xffff0000, 0x0000ffff, 676); 
TEST_RR_OP( 170 , ucmple16, 0xffffffff, 0x00008000, 0x63b08000, 680); 
TEST_RR_OP( 171 , ucmple16, 0xffffffff, 0x80008000, 0xffffffff, 684); 
TEST_RR_OP( 172 , ucmple16, 0xffff0000, 0x0000861b, 0x80000000, 688); 
TEST_RR_OP( 173 , ucmple16, 0x0000ffff, 0x8b1112c8, 0x0000ffff, 692); 
TEST_RR_OP( 174 , ucmple16, 0xffff0000, 0x77868000, 0x800013fb, 696); 
TEST_RR_OP( 175 , ucmple16, 0x0000ffff, 0xffff0000, 0x8000ffff, 700); 
TEST_RR_OP( 176 , ucmple16, 0xffffffff, 0x00008000, 0xffff8000, 704); 
TEST_RR_OP( 177 , ucmple16, 0xffffffff, 0x0000ffff, 0x6960ffff, 708); 
TEST_RR_OP( 178 , ucmple16, 0xffffffff, 0x8000f58d, 0x8000ffff, 712); 
TEST_RR_OP( 179 , ucmple16, 0x00000000, 0xffffffff, 0xde27a79e, 716); 
TEST_RR_OP( 180 , ucmple16, 0xffff0000, 0xffffffff, 0xffff8000, 720); 
TEST_RR_OP( 181 , ucmple16, 0xffff0000, 0x47a9ffff, 0xb2df0000, 724); 
TEST_RR_OP( 182 , ucmple16, 0xffff0000, 0xdc638000, 0xfad32eb9, 728); 
TEST_RR_OP( 183 , ucmple16, 0xffffffff, 0x00008000, 0xac55ffff, 732); 
TEST_RR_OP( 184 , ucmple16, 0x00000000, 0x9a0df170, 0x00008000, 736); 
TEST_RR_OP( 185 , ucmple16, 0xffffffff, 0x00000000, 0xffff8000, 740); 
TEST_RR_OP( 186 , ucmple16, 0xffffffff, 0x00000000, 0xffff0000, 744); 
TEST_RR_OP( 187 , ucmple16, 0x00000000, 0xffff8000, 0x80c00000, 748); 
TEST_RR_OP( 188 , ucmple16, 0x0000ffff, 0x8e980000, 0x00009a37, 752); 
TEST_RR_OP( 189 , ucmple16, 0xffffffff, 0x4edcaf16, 0xfedecf60, 756); 
TEST_RR_OP( 190 , ucmple16, 0x0000ffff, 0xffff0000, 0xf0f88000, 760); 
TEST_RR_OP( 191 , ucmple16, 0xffff0000, 0x8000ffff, 0xffff8000, 764); 
TEST_RR_OP( 192 , ucmple16, 0x00000000, 0xf64202a3, 0x00000000, 768); 
TEST_RR_OP( 193 , ucmple16, 0xffffffff, 0xb6a61fae, 0xffff8000, 772); 
TEST_RR_OP( 194 , ucmple16, 0xffff0000, 0x20baffff, 0xffff0000, 776); 
TEST_RR_OP( 195 , ucmple16, 0x0000ffff, 0x80008000, 0x1db78000, 780); 
TEST_RR_OP( 196 , ucmple16, 0x00000000, 0xffffffff, 0x00000000, 784); 
TEST_RR_OP( 197 , ucmple16, 0xffff0000, 0x8000ffff, 0xffff8000, 788); 
TEST_RR_OP( 198 , ucmple16, 0xffffffff, 0x00000000, 0xffff8000, 792); 
TEST_RR_OP( 199 , ucmple16, 0xffff0000, 0x0000ffff, 0x0000f1c1, 796); 

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
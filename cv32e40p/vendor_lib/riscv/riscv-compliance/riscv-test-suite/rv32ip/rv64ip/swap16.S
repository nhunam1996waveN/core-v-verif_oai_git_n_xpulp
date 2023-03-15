# See LICENSE for license details.
#*****************************************************************************
# swap16.S
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

TEST_R_OP( 2 , swap16, 0x8000cc69, 0xcc698000, 8); 
TEST_R_OP( 3 , swap16, 0xffff0000, 0x0000ffff, 12); 
TEST_R_OP( 4 , swap16, 0xffff8000, 0x8000ffff, 16); 
TEST_R_OP( 5 , swap16, 0xffffffff, 0xffffffff, 20); 
TEST_R_OP( 6 , swap16, 0x00008000, 0x80000000, 24); 
TEST_R_OP( 7 , swap16, 0x80000000, 0x00008000, 28); 
TEST_R_OP( 8 , swap16, 0x00008000, 0x80000000, 32); 
TEST_R_OP( 9 , swap16, 0x80008000, 0x80008000, 36); 
TEST_R_OP( 10 , swap16, 0x0000a8be, 0xa8be0000, 40); 
TEST_R_OP( 11 , swap16, 0x25c08000, 0x800025c0, 44); 
TEST_R_OP( 12 , swap16, 0x0000a679, 0xa6790000, 48); 
TEST_R_OP( 13 , swap16, 0xffffbab1, 0xbab1ffff, 52); 
TEST_R_OP( 14 , swap16, 0x11048000, 0x80001104, 56); 
TEST_R_OP( 15 , swap16, 0x00008000, 0x80000000, 60); 
TEST_R_OP( 16 , swap16, 0x0000f514, 0xf5140000, 64); 
TEST_R_OP( 17 , swap16, 0x00000000, 0x00000000, 68); 
TEST_R_OP( 18 , swap16, 0x8000ffff, 0xffff8000, 72); 
TEST_R_OP( 19 , swap16, 0x80008000, 0x80008000, 76); 
TEST_R_OP( 20 , swap16, 0x0000ffff, 0xffff0000, 80); 
TEST_R_OP( 21 , swap16, 0xffffffff, 0xffffffff, 84); 
TEST_R_OP( 22 , swap16, 0x8000ffff, 0xffff8000, 88); 
TEST_R_OP( 23 , swap16, 0xffff8000, 0x8000ffff, 92); 
TEST_R_OP( 24 , swap16, 0x8000ffff, 0xffff8000, 96); 
TEST_R_OP( 25 , swap16, 0x80000000, 0x00008000, 100); 
TEST_R_OP( 26 , swap16, 0x44800000, 0x00004480, 104); 
TEST_R_OP( 27 , swap16, 0xffffffff, 0xffffffff, 108); 
TEST_R_OP( 28 , swap16, 0xffff8000, 0x8000ffff, 112); 
TEST_R_OP( 29 , swap16, 0xffffffff, 0xffffffff, 116); 
TEST_R_OP( 30 , swap16, 0xd4cfffff, 0xffffd4cf, 120); 
TEST_R_OP( 31 , swap16, 0x17c49a14, 0x9a1417c4, 124); 
TEST_R_OP( 32 , swap16, 0xffff0000, 0x0000ffff, 128); 
TEST_R_OP( 33 , swap16, 0xffff0000, 0x0000ffff, 132); 
TEST_R_OP( 34 , swap16, 0xffff6603, 0x6603ffff, 136); 
TEST_R_OP( 35 , swap16, 0xffffffff, 0xffffffff, 140); 
TEST_R_OP( 36 , swap16, 0x00000000, 0x00000000, 144); 
TEST_R_OP( 37 , swap16, 0x0000ffff, 0xffff0000, 148); 
TEST_R_OP( 38 , swap16, 0xffff0000, 0x0000ffff, 152); 
TEST_R_OP( 39 , swap16, 0x00008000, 0x80000000, 156); 
TEST_R_OP( 40 , swap16, 0xffffdce2, 0xdce2ffff, 160); 
TEST_R_OP( 41 , swap16, 0xffff6b5f, 0x6b5fffff, 164); 
TEST_R_OP( 42 , swap16, 0x80003478, 0x34788000, 168); 
TEST_R_OP( 43 , swap16, 0x0000039f, 0x039f0000, 172); 
TEST_R_OP( 44 , swap16, 0x8000765a, 0x765a8000, 176); 
TEST_R_OP( 45 , swap16, 0x0000ffff, 0xffff0000, 180); 
TEST_R_OP( 46 , swap16, 0xec80ffff, 0xffffec80, 184); 
TEST_R_OP( 47 , swap16, 0xffff0000, 0x0000ffff, 188); 
TEST_R_OP( 48 , swap16, 0x80000000, 0x00008000, 192); 
TEST_R_OP( 49 , swap16, 0xffff0000, 0x0000ffff, 196); 
TEST_R_OP( 50 , swap16, 0xffffffff, 0xffffffff, 200); 
TEST_R_OP( 51 , swap16, 0x80000000, 0x00008000, 204); 
TEST_R_OP( 52 , swap16, 0x8000ffff, 0xffff8000, 208); 
TEST_R_OP( 53 , swap16, 0xaf260000, 0x0000af26, 212); 
TEST_R_OP( 54 , swap16, 0x0000ffff, 0xffff0000, 216); 
TEST_R_OP( 55 , swap16, 0xdcbfffff, 0xffffdcbf, 220); 
TEST_R_OP( 56 , swap16, 0x0000367f, 0x367f0000, 224); 
TEST_R_OP( 57 , swap16, 0x8000da3c, 0xda3c8000, 228); 
TEST_R_OP( 58 , swap16, 0x6114845f, 0x845f6114, 232); 
TEST_R_OP( 59 , swap16, 0xffff8000, 0x8000ffff, 236); 
TEST_R_OP( 60 , swap16, 0x800051fc, 0x51fc8000, 240); 
TEST_R_OP( 61 , swap16, 0x000065a4, 0x65a40000, 244); 
TEST_R_OP( 62 , swap16, 0x80000000, 0x00008000, 248); 
TEST_R_OP( 63 , swap16, 0x80000000, 0x00008000, 252); 
TEST_R_OP( 64 , swap16, 0xffff8000, 0x8000ffff, 256); 
TEST_R_OP( 65 , swap16, 0x079c0000, 0x0000079c, 260); 
TEST_R_OP( 66 , swap16, 0x00008000, 0x80000000, 264); 
TEST_R_OP( 67 , swap16, 0x56d40000, 0x000056d4, 268); 
TEST_R_OP( 68 , swap16, 0x0000ffff, 0xffff0000, 272); 
TEST_R_OP( 69 , swap16, 0x1206ec6f, 0xec6f1206, 276); 
TEST_R_OP( 70 , swap16, 0x00008000, 0x80000000, 280); 
TEST_R_OP( 71 , swap16, 0x80000000, 0x00008000, 284); 
TEST_R_OP( 72 , swap16, 0xffff7e1f, 0x7e1fffff, 288); 
TEST_R_OP( 73 , swap16, 0x80000000, 0x00008000, 292); 
TEST_R_OP( 74 , swap16, 0x00003e4e, 0x3e4e0000, 296); 
TEST_R_OP( 75 , swap16, 0x760c8000, 0x8000760c, 300); 
TEST_R_OP( 76 , swap16, 0x0000ffff, 0xffff0000, 304); 
TEST_R_OP( 77 , swap16, 0x00000000, 0x00000000, 308); 
TEST_R_OP( 78 , swap16, 0x80000000, 0x00008000, 312); 
TEST_R_OP( 79 , swap16, 0x80000000, 0x00008000, 316); 
TEST_R_OP( 80 , swap16, 0x8dc58000, 0x80008dc5, 320); 
TEST_R_OP( 81 , swap16, 0xf6ac8000, 0x8000f6ac, 324); 
TEST_R_OP( 82 , swap16, 0xffff0000, 0x0000ffff, 328); 
TEST_R_OP( 83 , swap16, 0x8000ffff, 0xffff8000, 332); 
TEST_R_OP( 84 , swap16, 0xffffffff, 0xffffffff, 336); 
TEST_R_OP( 85 , swap16, 0xffff0000, 0x0000ffff, 340); 
TEST_R_OP( 86 , swap16, 0x00008000, 0x80000000, 344); 
TEST_R_OP( 87 , swap16, 0xffff0000, 0x0000ffff, 348); 
TEST_R_OP( 88 , swap16, 0x00008000, 0x80000000, 352); 
TEST_R_OP( 89 , swap16, 0xffff1937, 0x1937ffff, 356); 
TEST_R_OP( 90 , swap16, 0xffff8000, 0x8000ffff, 360); 
TEST_R_OP( 91 , swap16, 0xcddbe663, 0xe663cddb, 364); 
TEST_R_OP( 92 , swap16, 0x00000000, 0x00000000, 368); 
TEST_R_OP( 93 , swap16, 0x00000000, 0x00000000, 372); 
TEST_R_OP( 94 , swap16, 0x8000f8f9, 0xf8f98000, 376); 
TEST_R_OP( 95 , swap16, 0x80000000, 0x00008000, 380); 
TEST_R_OP( 96 , swap16, 0x0000ffff, 0xffff0000, 384); 
TEST_R_OP( 97 , swap16, 0xe1390000, 0x0000e139, 388); 
TEST_R_OP( 98 , swap16, 0x7349fdb2, 0xfdb27349, 392); 
TEST_R_OP( 99 , swap16, 0x80000000, 0x00008000, 396); 
TEST_R_OP( 100 , swap16, 0x80008000, 0x80008000, 400); 
TEST_R_OP( 101 , swap16, 0x22002876, 0x28762200, 404); 
TEST_R_OP( 102 , swap16, 0x00008000, 0x80000000, 408); 
TEST_R_OP( 103 , swap16, 0x00006df5, 0x6df50000, 412); 
TEST_R_OP( 104 , swap16, 0xffff0000, 0x0000ffff, 416); 
TEST_R_OP( 105 , swap16, 0x80008000, 0x80008000, 420); 
TEST_R_OP( 106 , swap16, 0x80003135, 0x31358000, 424); 
TEST_R_OP( 107 , swap16, 0x86820000, 0x00008682, 428); 
TEST_R_OP( 108 , swap16, 0x00000000, 0x00000000, 432); 
TEST_R_OP( 109 , swap16, 0x5b758000, 0x80005b75, 436); 
TEST_R_OP( 110 , swap16, 0x8000ffff, 0xffff8000, 440); 
TEST_R_OP( 111 , swap16, 0x80000000, 0x00008000, 444); 
TEST_R_OP( 112 , swap16, 0xffffcc7e, 0xcc7effff, 448); 
TEST_R_OP( 113 , swap16, 0xffff0000, 0x0000ffff, 452); 
TEST_R_OP( 114 , swap16, 0x80003b1e, 0x3b1e8000, 456); 
TEST_R_OP( 115 , swap16, 0xab180000, 0x0000ab18, 460); 
TEST_R_OP( 116 , swap16, 0x0000b643, 0xb6430000, 464); 
TEST_R_OP( 117 , swap16, 0x80000000, 0x00008000, 468); 
TEST_R_OP( 118 , swap16, 0xffff0000, 0x0000ffff, 472); 
TEST_R_OP( 119 , swap16, 0xe08affff, 0xffffe08a, 476); 
TEST_R_OP( 120 , swap16, 0xffffffff, 0xffffffff, 480); 
TEST_R_OP( 121 , swap16, 0xffff8000, 0x8000ffff, 484); 
TEST_R_OP( 122 , swap16, 0x00004039, 0x40390000, 488); 
TEST_R_OP( 123 , swap16, 0x0000ffff, 0xffff0000, 492); 
TEST_R_OP( 124 , swap16, 0x0000bbd2, 0xbbd20000, 496); 
TEST_R_OP( 125 , swap16, 0x781b8000, 0x8000781b, 500); 
TEST_R_OP( 126 , swap16, 0xffff936f, 0x936fffff, 504); 
TEST_R_OP( 127 , swap16, 0xffffffff, 0xffffffff, 508); 
TEST_R_OP( 128 , swap16, 0x00008000, 0x80000000, 512); 
TEST_R_OP( 129 , swap16, 0xd8d75373, 0x5373d8d7, 516); 
TEST_R_OP( 130 , swap16, 0x84718000, 0x80008471, 520); 
TEST_R_OP( 131 , swap16, 0x2194ffff, 0xffff2194, 524); 
TEST_R_OP( 132 , swap16, 0x26d8ffff, 0xffff26d8, 528); 
TEST_R_OP( 133 , swap16, 0xffff8000, 0x8000ffff, 532); 
TEST_R_OP( 134 , swap16, 0x0000ffff, 0xffff0000, 536); 
TEST_R_OP( 135 , swap16, 0xffff8000, 0x8000ffff, 540); 
TEST_R_OP( 136 , swap16, 0x80008191, 0x81918000, 544); 
TEST_R_OP( 137 , swap16, 0xffffe472, 0xe472ffff, 548); 
TEST_R_OP( 138 , swap16, 0xa7a9355e, 0x355ea7a9, 552); 
TEST_R_OP( 139 , swap16, 0x8000ffff, 0xffff8000, 556); 
TEST_R_OP( 140 , swap16, 0xffffffff, 0xffffffff, 560); 
TEST_R_OP( 141 , swap16, 0x0000c5a8, 0xc5a80000, 564); 
TEST_R_OP( 142 , swap16, 0x00000af5, 0x0af50000, 568); 
TEST_R_OP( 143 , swap16, 0x8000d6ea, 0xd6ea8000, 572); 
TEST_R_OP( 144 , swap16, 0x0000ffff, 0xffff0000, 576); 
TEST_R_OP( 145 , swap16, 0x80000000, 0x00008000, 580); 
TEST_R_OP( 146 , swap16, 0x000032ee, 0x32ee0000, 584); 
TEST_R_OP( 147 , swap16, 0xffff4150, 0x4150ffff, 588); 
TEST_R_OP( 148 , swap16, 0x80008000, 0x80008000, 592); 
TEST_R_OP( 149 , swap16, 0x0000ac2d, 0xac2d0000, 596); 
TEST_R_OP( 150 , swap16, 0x0000ffff, 0xffff0000, 600); 
TEST_R_OP( 151 , swap16, 0xffffffff, 0xffffffff, 604); 
TEST_R_OP( 152 , swap16, 0x0000ffff, 0xffff0000, 608); 
TEST_R_OP( 153 , swap16, 0x00008000, 0x80000000, 612); 
TEST_R_OP( 154 , swap16, 0x0000ffff, 0xffff0000, 616); 
TEST_R_OP( 155 , swap16, 0x1c7b8000, 0x80001c7b, 620); 
TEST_R_OP( 156 , swap16, 0x423b8000, 0x8000423b, 624); 
TEST_R_OP( 157 , swap16, 0x80008000, 0x80008000, 628); 
TEST_R_OP( 158 , swap16, 0x04c43721, 0x372104c4, 632); 
TEST_R_OP( 159 , swap16, 0x0000ffff, 0xffff0000, 636); 
TEST_R_OP( 160 , swap16, 0x00008000, 0x80000000, 640); 
TEST_R_OP( 161 , swap16, 0x8000ffff, 0xffff8000, 644); 
TEST_R_OP( 162 , swap16, 0x80005083, 0x50838000, 648); 
TEST_R_OP( 163 , swap16, 0x00008000, 0x80000000, 652); 
TEST_R_OP( 164 , swap16, 0x8000ffff, 0xffff8000, 656); 
TEST_R_OP( 165 , swap16, 0x80000000, 0x00008000, 660); 
TEST_R_OP( 166 , swap16, 0x75cf8000, 0x800075cf, 664); 
TEST_R_OP( 167 , swap16, 0x00000000, 0x00000000, 668); 
TEST_R_OP( 168 , swap16, 0x0000ffff, 0xffff0000, 672); 
TEST_R_OP( 169 , swap16, 0x8000ffff, 0xffff8000, 676); 
TEST_R_OP( 170 , swap16, 0x47d80000, 0x000047d8, 680); 
TEST_R_OP( 171 , swap16, 0xffff8000, 0x8000ffff, 684); 
TEST_R_OP( 172 , swap16, 0x80006d1f, 0x6d1f8000, 688); 
TEST_R_OP( 173 , swap16, 0xfe9bffff, 0xfffffe9b, 692); 
TEST_R_OP( 174 , swap16, 0xffff0000, 0x0000ffff, 696); 
TEST_R_OP( 175 , swap16, 0xf65dffff, 0xfffff65d, 700); 
TEST_R_OP( 176 , swap16, 0xffff8000, 0x8000ffff, 704); 
TEST_R_OP( 177 , swap16, 0x80000000, 0x00008000, 708); 
TEST_R_OP( 178 , swap16, 0x00008000, 0x80000000, 712); 
TEST_R_OP( 179 , swap16, 0xffff1a6d, 0x1a6dffff, 716); 
TEST_R_OP( 180 , swap16, 0xffff0900, 0x0900ffff, 720); 
TEST_R_OP( 181 , swap16, 0xffffffff, 0xffffffff, 724); 
TEST_R_OP( 182 , swap16, 0xa0d68000, 0x8000a0d6, 728); 
TEST_R_OP( 183 , swap16, 0xafb68000, 0x8000afb6, 732); 
TEST_R_OP( 184 , swap16, 0x00000000, 0x00000000, 736); 
TEST_R_OP( 185 , swap16, 0x8000ffff, 0xffff8000, 740); 
TEST_R_OP( 186 , swap16, 0x57922aa5, 0x2aa55792, 744); 
TEST_R_OP( 187 , swap16, 0x8000a5e9, 0xa5e98000, 748); 
TEST_R_OP( 188 , swap16, 0x8000c7f1, 0xc7f18000, 752); 
TEST_R_OP( 189 , swap16, 0xffff0677, 0x0677ffff, 756); 
TEST_R_OP( 190 , swap16, 0x00008000, 0x80000000, 760); 
TEST_R_OP( 191 , swap16, 0x00008000, 0x80000000, 764); 
TEST_R_OP( 192 , swap16, 0x0000ffff, 0xffff0000, 768); 
TEST_R_OP( 193 , swap16, 0x0000ffff, 0xffff0000, 772); 
TEST_R_OP( 194 , swap16, 0x936fffff, 0xffff936f, 776); 
TEST_R_OP( 195 , swap16, 0x00000000, 0x00000000, 780); 
TEST_R_OP( 196 , swap16, 0x8000ffff, 0xffff8000, 784); 
TEST_R_OP( 197 , swap16, 0x5f468000, 0x80005f46, 788); 
TEST_R_OP( 198 , swap16, 0x0000ffff, 0xffff0000, 792); 
TEST_R_OP( 199 , swap16, 0xffff0000, 0x0000ffff, 796); 

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
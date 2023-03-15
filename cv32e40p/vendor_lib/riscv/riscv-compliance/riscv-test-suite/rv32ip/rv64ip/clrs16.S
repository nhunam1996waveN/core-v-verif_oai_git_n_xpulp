# See LICENSE for license details.
#*****************************************************************************
# clrs16.S
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

TEST_R_OP( 2 , clrs16, 0x0003000f, 0xf327ffff, 8); 
TEST_R_OP( 3 , clrs16, 0x0000000f, 0x8000ffff, 12); 
TEST_R_OP( 4 , clrs16, 0x000f000f, 0xffff0000, 16); 
TEST_R_OP( 5 , clrs16, 0x000f000f, 0x00000000, 20); 
TEST_R_OP( 6 , clrs16, 0x000f0000, 0x00008000, 24); 
TEST_R_OP( 7 , clrs16, 0x000f0000, 0xffff5020, 28); 
TEST_R_OP( 8 , clrs16, 0x000f0000, 0xffff8000, 32); 
TEST_R_OP( 9 , clrs16, 0x000f0001, 0x0000d03f, 36); 
TEST_R_OP( 10 , clrs16, 0x000f000f, 0xffffffff, 40); 
TEST_R_OP( 11 , clrs16, 0x00000000, 0x80008000, 44); 
TEST_R_OP( 12 , clrs16, 0x00000000, 0x80008000, 48); 
TEST_R_OP( 13 , clrs16, 0x0000000f, 0x8828ffff, 52); 
TEST_R_OP( 14 , clrs16, 0x000f000f, 0xffffffff, 56); 
TEST_R_OP( 15 , clrs16, 0x000f0000, 0xffff8000, 60); 
TEST_R_OP( 16 , clrs16, 0x00000000, 0xbb798000, 64); 
TEST_R_OP( 17 , clrs16, 0x0000000f, 0x72030000, 68); 
TEST_R_OP( 18 , clrs16, 0x0002000f, 0x1d2effff, 72); 
TEST_R_OP( 19 , clrs16, 0x000f0001, 0x0000cebb, 76); 
TEST_R_OP( 20 , clrs16, 0x00000000, 0x80004360, 80); 
TEST_R_OP( 21 , clrs16, 0x000f0002, 0x00001d93, 84); 
TEST_R_OP( 22 , clrs16, 0x00000002, 0x8000efc3, 88); 
TEST_R_OP( 23 , clrs16, 0x000f0001, 0xffffd8b4, 92); 
TEST_R_OP( 24 , clrs16, 0x00020001, 0x18e4cb88, 96); 
TEST_R_OP( 25 , clrs16, 0x000f000f, 0x0000ffff, 100); 
TEST_R_OP( 26 , clrs16, 0x000f0002, 0x00001496, 104); 
TEST_R_OP( 27 , clrs16, 0x000f0000, 0xffff8000, 108); 
TEST_R_OP( 28 , clrs16, 0x00000001, 0xa39621cf, 112); 
TEST_R_OP( 29 , clrs16, 0x0000000f, 0x66c9ffff, 116); 
TEST_R_OP( 30 , clrs16, 0x0001000f, 0x34950000, 120); 
TEST_R_OP( 31 , clrs16, 0x0000000f, 0x80000000, 124); 
TEST_R_OP( 32 , clrs16, 0x00000003, 0x8000f129, 128); 
TEST_R_OP( 33 , clrs16, 0x0002000f, 0x11160000, 132); 
TEST_R_OP( 34 , clrs16, 0x00010000, 0xcb0e8000, 136); 
TEST_R_OP( 35 , clrs16, 0x00080001, 0x00503b86, 140); 
TEST_R_OP( 36 , clrs16, 0x000f0000, 0xffff8000, 144); 
TEST_R_OP( 37 , clrs16, 0x000f000f, 0x00000000, 148); 
TEST_R_OP( 38 , clrs16, 0x000f000f, 0x00000000, 152); 
TEST_R_OP( 39 , clrs16, 0x0000000f, 0x80000000, 156); 
TEST_R_OP( 40 , clrs16, 0x000f0000, 0x00007ca5, 160); 
TEST_R_OP( 41 , clrs16, 0x000f000f, 0x00000000, 164); 
TEST_R_OP( 42 , clrs16, 0x000f0002, 0x00001cdc, 168); 
TEST_R_OP( 43 , clrs16, 0x0000000f, 0x61aa0000, 172); 
TEST_R_OP( 44 , clrs16, 0x000f0000, 0x0000606e, 176); 
TEST_R_OP( 45 , clrs16, 0x000f0000, 0xffff9c8d, 180); 
TEST_R_OP( 46 , clrs16, 0x000f0003, 0x00000db4, 184); 
TEST_R_OP( 47 , clrs16, 0x000f0000, 0x00008000, 188); 
TEST_R_OP( 48 , clrs16, 0x000f0000, 0x00008000, 192); 
TEST_R_OP( 49 , clrs16, 0x00000002, 0x8000e734, 196); 
TEST_R_OP( 50 , clrs16, 0x000f000f, 0xffff0000, 200); 
TEST_R_OP( 51 , clrs16, 0x000f000f, 0x00000000, 204); 
TEST_R_OP( 52 , clrs16, 0x000f000f, 0x0000ffff, 208); 
TEST_R_OP( 53 , clrs16, 0x00020000, 0x178c43bc, 212); 
TEST_R_OP( 54 , clrs16, 0x0000000f, 0x80000000, 216); 
TEST_R_OP( 55 , clrs16, 0x000f0000, 0xffff8000, 220); 
TEST_R_OP( 56 , clrs16, 0x00020002, 0x16ab1543, 224); 
TEST_R_OP( 57 , clrs16, 0x0000000f, 0x5f740000, 228); 
TEST_R_OP( 58 , clrs16, 0x00000000, 0x6b7c8000, 232); 
TEST_R_OP( 59 , clrs16, 0x000f0000, 0x00008000, 236); 
TEST_R_OP( 60 , clrs16, 0x000f000f, 0xffff0000, 240); 
TEST_R_OP( 61 , clrs16, 0x000f000f, 0xffff0000, 244); 
TEST_R_OP( 62 , clrs16, 0x000f000f, 0xffff0000, 248); 
TEST_R_OP( 63 , clrs16, 0x000f000f, 0xffffffff, 252); 
TEST_R_OP( 64 , clrs16, 0x000f000f, 0x0000ffff, 256); 
TEST_R_OP( 65 , clrs16, 0x000f0000, 0x00008000, 260); 
TEST_R_OP( 66 , clrs16, 0x00000001, 0x80002688, 264); 
TEST_R_OP( 67 , clrs16, 0x00000000, 0x80008000, 268); 
TEST_R_OP( 68 , clrs16, 0x0002000f, 0xe906ffff, 272); 
TEST_R_OP( 69 , clrs16, 0x00010000, 0x23248000, 276); 
TEST_R_OP( 70 , clrs16, 0x000f0000, 0xffff6af8, 280); 
TEST_R_OP( 71 , clrs16, 0x0000000f, 0x8000ffff, 284); 
TEST_R_OP( 72 , clrs16, 0x00000000, 0x80008000, 288); 
TEST_R_OP( 73 , clrs16, 0x000f0000, 0xffffb499, 292); 
TEST_R_OP( 74 , clrs16, 0x000f000f, 0x0000ffff, 296); 
TEST_R_OP( 75 , clrs16, 0x000f000f, 0xffffffff, 300); 
TEST_R_OP( 76 , clrs16, 0x000f000f, 0xffff0000, 304); 
TEST_R_OP( 77 , clrs16, 0x00000000, 0x80008000, 308); 
TEST_R_OP( 78 , clrs16, 0x0001000f, 0xd85bffff, 312); 
TEST_R_OP( 79 , clrs16, 0x0000000f, 0x80000000, 316); 
TEST_R_OP( 80 , clrs16, 0x000f000f, 0x00000000, 320); 
TEST_R_OP( 81 , clrs16, 0x00010000, 0x2311999b, 324); 
TEST_R_OP( 82 , clrs16, 0x0002000f, 0xe922ffff, 328); 
TEST_R_OP( 83 , clrs16, 0x000f0000, 0x00008000, 332); 
TEST_R_OP( 84 , clrs16, 0x000f000f, 0xffffffff, 336); 
TEST_R_OP( 85 , clrs16, 0x000f000f, 0x0000ffff, 340); 
TEST_R_OP( 86 , clrs16, 0x00030001, 0xf4e7cd5b, 344); 
TEST_R_OP( 87 , clrs16, 0x00020000, 0x17a28000, 348); 
TEST_R_OP( 88 , clrs16, 0x00000002, 0x49d9ec5c, 352); 
TEST_R_OP( 89 , clrs16, 0x00040000, 0x05a78000, 356); 
TEST_R_OP( 90 , clrs16, 0x00000000, 0x56a78000, 360); 
TEST_R_OP( 91 , clrs16, 0x000f000f, 0x0000ffff, 364); 
TEST_R_OP( 92 , clrs16, 0x0000000f, 0xa9080000, 368); 
TEST_R_OP( 93 , clrs16, 0x000f000f, 0xffff0000, 372); 
TEST_R_OP( 94 , clrs16, 0x000f000f, 0x0000ffff, 376); 
TEST_R_OP( 95 , clrs16, 0x00000000, 0x83b95539, 380); 
TEST_R_OP( 96 , clrs16, 0x0004000f, 0xf8e6ffff, 384); 
TEST_R_OP( 97 , clrs16, 0x000f0000, 0xffff8000, 388); 
TEST_R_OP( 98 , clrs16, 0x0000000f, 0x8000ffff, 392); 
TEST_R_OP( 99 , clrs16, 0x000f0000, 0xffff8000, 396); 
TEST_R_OP( 100 , clrs16, 0x000f0000, 0x00008000, 400); 
TEST_R_OP( 101 , clrs16, 0x000f0000, 0x00008000, 404); 
TEST_R_OP( 102 , clrs16, 0x00000001, 0x80003bde, 408); 
TEST_R_OP( 103 , clrs16, 0x0000000f, 0x80000000, 412); 
TEST_R_OP( 104 , clrs16, 0x000f000f, 0xffffffff, 416); 
TEST_R_OP( 105 , clrs16, 0x000f0000, 0x00009e70, 420); 
TEST_R_OP( 106 , clrs16, 0x000f000f, 0xffffffff, 424); 
TEST_R_OP( 107 , clrs16, 0x0000000f, 0x80000000, 428); 
TEST_R_OP( 108 , clrs16, 0x00020000, 0xea7d8000, 432); 
TEST_R_OP( 109 , clrs16, 0x00000000, 0x800075b0, 436); 
TEST_R_OP( 110 , clrs16, 0x0002000f, 0xe975ffff, 440); 
TEST_R_OP( 111 , clrs16, 0x0000000f, 0x80000000, 444); 
TEST_R_OP( 112 , clrs16, 0x000f0001, 0xffff2677, 448); 
TEST_R_OP( 113 , clrs16, 0x00000000, 0x80008000, 452); 
TEST_R_OP( 114 , clrs16, 0x000f0000, 0x00008000, 456); 
TEST_R_OP( 115 , clrs16, 0x00020000, 0xec10405b, 460); 
TEST_R_OP( 116 , clrs16, 0x000f0000, 0xffff62f5, 464); 
TEST_R_OP( 117 , clrs16, 0x0000000f, 0x8000ffff, 468); 
TEST_R_OP( 118 , clrs16, 0x000f0000, 0xffff8000, 472); 
TEST_R_OP( 119 , clrs16, 0x000f000f, 0xffffffff, 476); 
TEST_R_OP( 120 , clrs16, 0x0000000f, 0x60b50000, 480); 
TEST_R_OP( 121 , clrs16, 0x000f0000, 0x0000666b, 484); 
TEST_R_OP( 122 , clrs16, 0x0000000f, 0x80000000, 488); 
TEST_R_OP( 123 , clrs16, 0x000f000f, 0xffffffff, 492); 
TEST_R_OP( 124 , clrs16, 0x00020000, 0x13838000, 496); 
TEST_R_OP( 125 , clrs16, 0x0001000f, 0xc15f0000, 500); 
TEST_R_OP( 126 , clrs16, 0x000f0000, 0xffff8000, 504); 
TEST_R_OP( 127 , clrs16, 0x000f000f, 0x00000000, 508); 
TEST_R_OP( 128 , clrs16, 0x0001000f, 0xd556ffff, 512); 
TEST_R_OP( 129 , clrs16, 0x00000001, 0xa05226fe, 516); 
TEST_R_OP( 130 , clrs16, 0x000f0000, 0xffff92d2, 520); 
TEST_R_OP( 131 , clrs16, 0x0000000f, 0x80000000, 524); 
TEST_R_OP( 132 , clrs16, 0x00000000, 0x8000b1e6, 528); 
TEST_R_OP( 133 , clrs16, 0x0000000f, 0x80000000, 532); 
TEST_R_OP( 134 , clrs16, 0x000f0000, 0x00008000, 536); 
TEST_R_OP( 135 , clrs16, 0x00000000, 0x43e08000, 540); 
TEST_R_OP( 136 , clrs16, 0x00000000, 0xbb9a8000, 544); 
TEST_R_OP( 137 , clrs16, 0x00010000, 0xc42c8000, 548); 
TEST_R_OP( 138 , clrs16, 0x000f000f, 0x0000ffff, 552); 
TEST_R_OP( 139 , clrs16, 0x000f000f, 0x0000ffff, 556); 
TEST_R_OP( 140 , clrs16, 0x00000000, 0x80008000, 560); 
TEST_R_OP( 141 , clrs16, 0x000f0000, 0x00008000, 564); 
TEST_R_OP( 142 , clrs16, 0x000f0000, 0x00008000, 568); 
TEST_R_OP( 143 , clrs16, 0x0000000f, 0x80000000, 572); 
TEST_R_OP( 144 , clrs16, 0x00000001, 0x8000d2c0, 576); 
TEST_R_OP( 145 , clrs16, 0x000f0000, 0x00009e5b, 580); 
TEST_R_OP( 146 , clrs16, 0x000f0000, 0xffffaa1b, 584); 
TEST_R_OP( 147 , clrs16, 0x00000000, 0x69f58000, 588); 
TEST_R_OP( 148 , clrs16, 0x000f0000, 0x00008000, 592); 
TEST_R_OP( 149 , clrs16, 0x000f000f, 0x00000000, 596); 
TEST_R_OP( 150 , clrs16, 0x00010000, 0xd9c58000, 600); 
TEST_R_OP( 151 , clrs16, 0x000f0000, 0xffff8000, 604); 
TEST_R_OP( 152 , clrs16, 0x0000000f, 0x80000000, 608); 
TEST_R_OP( 153 , clrs16, 0x00000001, 0x800020a9, 612); 
TEST_R_OP( 154 , clrs16, 0x00000000, 0x80008000, 616); 
TEST_R_OP( 155 , clrs16, 0x000f0001, 0xffff23b6, 620); 
TEST_R_OP( 156 , clrs16, 0x00000000, 0x80008000, 624); 
TEST_R_OP( 157 , clrs16, 0x000f0000, 0x00008000, 628); 
TEST_R_OP( 158 , clrs16, 0x00000000, 0x85b58000, 632); 
TEST_R_OP( 159 , clrs16, 0x00000000, 0x80008000, 636); 
TEST_R_OP( 160 , clrs16, 0x00010000, 0x3bf052b9, 640); 
TEST_R_OP( 161 , clrs16, 0x000f0000, 0xffff8000, 644); 
TEST_R_OP( 162 , clrs16, 0x00000000, 0x80008000, 648); 
TEST_R_OP( 163 , clrs16, 0x000f000f, 0xffffffff, 652); 
TEST_R_OP( 164 , clrs16, 0x000f000f, 0xffff0000, 656); 
TEST_R_OP( 165 , clrs16, 0x000f000f, 0x0000ffff, 660); 
TEST_R_OP( 166 , clrs16, 0x00010000, 0x28798000, 664); 
TEST_R_OP( 167 , clrs16, 0x000f000f, 0x0000ffff, 668); 
TEST_R_OP( 168 , clrs16, 0x0001000f, 0xd1bd0000, 672); 
TEST_R_OP( 169 , clrs16, 0x0000000f, 0x8000ffff, 676); 
TEST_R_OP( 170 , clrs16, 0x00000001, 0xb1c33450, 680); 
TEST_R_OP( 171 , clrs16, 0x0000000f, 0x8000ffff, 684); 
TEST_R_OP( 172 , clrs16, 0x00030001, 0xf136d2f6, 688); 
TEST_R_OP( 173 , clrs16, 0x000f0002, 0xffffe1db, 692); 
TEST_R_OP( 174 , clrs16, 0x000f000f, 0xffff0000, 696); 
TEST_R_OP( 175 , clrs16, 0x0000000f, 0x8000ffff, 700); 
TEST_R_OP( 176 , clrs16, 0x000f0000, 0xffff8000, 704); 
TEST_R_OP( 177 , clrs16, 0x000f000f, 0x0000ffff, 708); 
TEST_R_OP( 178 , clrs16, 0x00010000, 0x2d788000, 712); 
TEST_R_OP( 179 , clrs16, 0x000f0000, 0x00008000, 716); 
TEST_R_OP( 180 , clrs16, 0x00000000, 0x78338000, 720); 
TEST_R_OP( 181 , clrs16, 0x000f000f, 0xffff0000, 724); 
TEST_R_OP( 182 , clrs16, 0x00000001, 0x8000ce64, 728); 
TEST_R_OP( 183 , clrs16, 0x00030000, 0xf68b8000, 732); 
TEST_R_OP( 184 , clrs16, 0x000f0000, 0x000098f4, 736); 
TEST_R_OP( 185 , clrs16, 0x000f000f, 0x00000000, 740); 
TEST_R_OP( 186 , clrs16, 0x0000000f, 0x4136ffff, 744); 
TEST_R_OP( 187 , clrs16, 0x000f0000, 0x0000610d, 748); 
TEST_R_OP( 188 , clrs16, 0x0001000f, 0x2be3ffff, 752); 
TEST_R_OP( 189 , clrs16, 0x000f000f, 0xffffffff, 756); 
TEST_R_OP( 190 , clrs16, 0x00020002, 0xe4ade09d, 760); 
TEST_R_OP( 191 , clrs16, 0x0000000f, 0x93ceffff, 764); 
TEST_R_OP( 192 , clrs16, 0x000f000f, 0x0000ffff, 768); 
TEST_R_OP( 193 , clrs16, 0x000f0000, 0xffff8000, 772); 
TEST_R_OP( 194 , clrs16, 0x000f0002, 0x000012ad, 776); 
TEST_R_OP( 195 , clrs16, 0x00000002, 0x8000ea70, 780); 
TEST_R_OP( 196 , clrs16, 0x00000000, 0x8000843d, 784); 
TEST_R_OP( 197 , clrs16, 0x000f0000, 0x00004e4a, 788); 
TEST_R_OP( 198 , clrs16, 0x000f0000, 0xffff8000, 792); 
TEST_R_OP( 199 , clrs16, 0x0000000f, 0x80000000, 796); 

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
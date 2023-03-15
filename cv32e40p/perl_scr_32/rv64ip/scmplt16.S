# See LICENSE for license details.
#*****************************************************************************
# scmplt16.S
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

TEST_RR_OP( 2 , scmplt16, 0xffffffff, 0x80000000, 0x78264a47, 8); 
TEST_RR_OP( 3 , scmplt16, 0x00000000, 0x00005dd0, 0x00008000, 12); 
TEST_RR_OP( 4 , scmplt16, 0x0000ffff, 0x733a0000, 0xffff29a1, 16); 
TEST_RR_OP( 5 , scmplt16, 0x0000ffff, 0x80008000, 0x8000ffff, 20); 
TEST_RR_OP( 6 , scmplt16, 0x0000ffff, 0x0000ffff, 0x8000209f, 24); 
TEST_RR_OP( 7 , scmplt16, 0x00000000, 0x6bb8ffff, 0x8000ffff, 28); 
TEST_RR_OP( 8 , scmplt16, 0x00000000, 0x00000000, 0xffff8000, 32); 
TEST_RR_OP( 9 , scmplt16, 0xffff0000, 0x80007c04, 0xffff8000, 36); 
TEST_RR_OP( 10 , scmplt16, 0xffff0000, 0xfab8ffff, 0x0b28ffff, 40); 
TEST_RR_OP( 11 , scmplt16, 0xffff0000, 0x8000ffff, 0xffff8046, 44); 
TEST_RR_OP( 12 , scmplt16, 0xffffffff, 0x80000000, 0xffff6a3d, 48); 
TEST_RR_OP( 13 , scmplt16, 0xffffffff, 0xf4658000, 0x0000d543, 52); 
TEST_RR_OP( 14 , scmplt16, 0x0000ffff, 0x0ff4ffff, 0x00000000, 56); 
TEST_RR_OP( 15 , scmplt16, 0x0000ffff, 0x0000ffff, 0x80000000, 60); 
TEST_RR_OP( 16 , scmplt16, 0x00000000, 0x000007ec, 0x8000ffff, 64); 
TEST_RR_OP( 17 , scmplt16, 0xffffffff, 0xffff8000, 0x0000b6c4, 68); 
TEST_RR_OP( 18 , scmplt16, 0xffff0000, 0x80000000, 0x00008000, 72); 
TEST_RR_OP( 19 , scmplt16, 0x00000000, 0x00007868, 0x8000ffff, 76); 
TEST_RR_OP( 20 , scmplt16, 0x00000000, 0x63ea0000, 0xb578b104, 80); 
TEST_RR_OP( 21 , scmplt16, 0x00000000, 0xffff2560, 0x80000000, 84); 
TEST_RR_OP( 22 , scmplt16, 0x00000000, 0x00000000, 0x0000ffff, 88); 
TEST_RR_OP( 23 , scmplt16, 0xffffffff, 0xffff8000, 0x2d08ffff, 92); 
TEST_RR_OP( 24 , scmplt16, 0xffffffff, 0x8000e987, 0x00000000, 96); 
TEST_RR_OP( 25 , scmplt16, 0xffff0000, 0xffff8000, 0x00008000, 100); 
TEST_RR_OP( 26 , scmplt16, 0xffff0000, 0x80000000, 0x00000000, 104); 
TEST_RR_OP( 27 , scmplt16, 0x0000ffff, 0x00008000, 0xffff0000, 108); 
TEST_RR_OP( 28 , scmplt16, 0x0000ffff, 0x80000000, 0x800054fa, 112); 
TEST_RR_OP( 29 , scmplt16, 0xffff0000, 0xffff0000, 0x00000000, 116); 
TEST_RR_OP( 30 , scmplt16, 0x0000ffff, 0x00008000, 0xffff0000, 120); 
TEST_RR_OP( 31 , scmplt16, 0xffff0000, 0x80008000, 0x0cba8000, 124); 
TEST_RR_OP( 32 , scmplt16, 0x0000ffff, 0xffffffff, 0xdba60000, 128); 
TEST_RR_OP( 33 , scmplt16, 0xffff0000, 0x80000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , scmplt16, 0x00000000, 0xbf190000, 0x9143ba63, 136); 
TEST_RR_OP( 35 , scmplt16, 0xffffffff, 0xbcec8000, 0x0000ffff, 140); 
TEST_RR_OP( 36 , scmplt16, 0x00000000, 0x00000000, 0xffff8000, 144); 
TEST_RR_OP( 37 , scmplt16, 0x00000000, 0x000044ad, 0x80000000, 148); 
TEST_RR_OP( 38 , scmplt16, 0x00000000, 0x32bf57bc, 0xffffffff, 152); 
TEST_RR_OP( 39 , scmplt16, 0xffff0000, 0x8000411c, 0xea1c8000, 156); 
TEST_RR_OP( 40 , scmplt16, 0xffffffff, 0x80008000, 0x86a10000, 160); 
TEST_RR_OP( 41 , scmplt16, 0xffffffff, 0x8000ffff, 0xa7c263d3, 164); 
TEST_RR_OP( 42 , scmplt16, 0xffffffff, 0x80008000, 0xffffa16e, 168); 
TEST_RR_OP( 43 , scmplt16, 0x00000000, 0xffff8000, 0x80008000, 172); 
TEST_RR_OP( 44 , scmplt16, 0xffffffff, 0x80008000, 0xffff0000, 176); 
TEST_RR_OP( 45 , scmplt16, 0xffff0000, 0xffff3da1, 0x25e3ffff, 180); 
TEST_RR_OP( 46 , scmplt16, 0xffff0000, 0x80000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , scmplt16, 0x00000000, 0x02b50000, 0x8000ffff, 188); 
TEST_RR_OP( 48 , scmplt16, 0xffff0000, 0xffff0000, 0x57100000, 192); 
TEST_RR_OP( 49 , scmplt16, 0x0000ffff, 0x0000d05f, 0x00000000, 196); 
TEST_RR_OP( 50 , scmplt16, 0x00000000, 0x0000ffff, 0x8000ffff, 200); 
TEST_RR_OP( 51 , scmplt16, 0x0000ffff, 0x8000ffff, 0x80007be5, 204); 
TEST_RR_OP( 52 , scmplt16, 0xffff0000, 0x80000000, 0xffff9c1c, 208); 
TEST_RR_OP( 53 , scmplt16, 0x00000000, 0x53520000, 0xffffffff, 212); 
TEST_RR_OP( 54 , scmplt16, 0x0000ffff, 0x23668000, 0xffffffff, 216); 
TEST_RR_OP( 55 , scmplt16, 0x00000000, 0xffffffff, 0x8000ffff, 220); 
TEST_RR_OP( 56 , scmplt16, 0x00000000, 0x8000d714, 0x80008000, 224); 
TEST_RR_OP( 57 , scmplt16, 0xffff0000, 0x8000ffff, 0x0816b0be, 228); 
TEST_RR_OP( 58 , scmplt16, 0x00000000, 0x00002829, 0x80000000, 232); 
TEST_RR_OP( 59 , scmplt16, 0x00000000, 0xc5cd0000, 0x8000fe38, 236); 
TEST_RR_OP( 60 , scmplt16, 0x0000ffff, 0xffffa0f7, 0x80000000, 240); 
TEST_RR_OP( 61 , scmplt16, 0x0000ffff, 0x1819ffff, 0xdb610000, 244); 
TEST_RR_OP( 62 , scmplt16, 0x00000000, 0x6e010000, 0x80008000, 248); 
TEST_RR_OP( 63 , scmplt16, 0x0000ffff, 0xffff8000, 0xffffc2c5, 252); 
TEST_RR_OP( 64 , scmplt16, 0x00000000, 0x00004172, 0x0000ffff, 256); 
TEST_RR_OP( 65 , scmplt16, 0x00000000, 0xffffffff, 0xffffd8e6, 260); 
TEST_RR_OP( 66 , scmplt16, 0x00000000, 0x8000ffff, 0x8000ffff, 264); 
TEST_RR_OP( 67 , scmplt16, 0x00000000, 0x00000000, 0xffffffff, 268); 
TEST_RR_OP( 68 , scmplt16, 0xffff0000, 0x80006f03, 0x00000000, 272); 
TEST_RR_OP( 69 , scmplt16, 0xffff0000, 0xffff0000, 0x00000000, 276); 
TEST_RR_OP( 70 , scmplt16, 0xffff0000, 0x80008000, 0xffff8000, 280); 
TEST_RR_OP( 71 , scmplt16, 0xffff0000, 0x98a30000, 0xffff8000, 284); 
TEST_RR_OP( 72 , scmplt16, 0x0000ffff, 0x8000ffff, 0x80000000, 288); 
TEST_RR_OP( 73 , scmplt16, 0x0000ffff, 0x0f9cffff, 0x80000000, 292); 
TEST_RR_OP( 74 , scmplt16, 0x0000ffff, 0x00008000, 0x0000ffff, 296); 
TEST_RR_OP( 75 , scmplt16, 0xffff0000, 0xffff8000, 0x00008000, 300); 
TEST_RR_OP( 76 , scmplt16, 0xffff0000, 0x80000000, 0xffff0000, 304); 
TEST_RR_OP( 77 , scmplt16, 0x00000000, 0x80000000, 0x80000000, 308); 
TEST_RR_OP( 78 , scmplt16, 0xffff0000, 0xfb690000, 0x00008000, 312); 
TEST_RR_OP( 79 , scmplt16, 0x00000000, 0x0000ffff, 0x00008000, 316); 
TEST_RR_OP( 80 , scmplt16, 0xffff0000, 0x46580000, 0x47008000, 320); 
TEST_RR_OP( 81 , scmplt16, 0x0000ffff, 0x00008000, 0x8000981e, 324); 
TEST_RR_OP( 82 , scmplt16, 0x00000000, 0xc894ffff, 0x8000d78a, 328); 
TEST_RR_OP( 83 , scmplt16, 0x0000ffff, 0x306a8000, 0xffffb4be, 332); 
TEST_RR_OP( 84 , scmplt16, 0x0000ffff, 0x00008000, 0xffff0000, 336); 
TEST_RR_OP( 85 , scmplt16, 0x00000000, 0x0000ffff, 0x8000ffff, 340); 
TEST_RR_OP( 86 , scmplt16, 0xffff0000, 0x8f2d0000, 0xffffffff, 344); 
TEST_RR_OP( 87 , scmplt16, 0x0000ffff, 0xda298000, 0xbee5ffff, 348); 
TEST_RR_OP( 88 , scmplt16, 0x0000ffff, 0x3733ffff, 0x00000000, 352); 
TEST_RR_OP( 89 , scmplt16, 0xffff0000, 0x00000000, 0x415affff, 356); 
TEST_RR_OP( 90 , scmplt16, 0x00000000, 0x8000ffff, 0x8000ffff, 360); 
TEST_RR_OP( 91 , scmplt16, 0x0000ffff, 0x0000146b, 0xffff2216, 364); 
TEST_RR_OP( 92 , scmplt16, 0x0000ffff, 0x5b2f8000, 0x50d9ffff, 368); 
TEST_RR_OP( 93 , scmplt16, 0x0000ffff, 0xffff8000, 0xffff0000, 372); 
TEST_RR_OP( 94 , scmplt16, 0x00000000, 0xffffffff, 0x800099ba, 376); 
TEST_RR_OP( 95 , scmplt16, 0xffff0000, 0x0000edcc, 0x0cd1bc99, 380); 
TEST_RR_OP( 96 , scmplt16, 0x0000ffff, 0x00008000, 0xffff3d9d, 384); 
TEST_RR_OP( 97 , scmplt16, 0x0000ffff, 0xc0b68000, 0xab8d0000, 388); 
TEST_RR_OP( 98 , scmplt16, 0xffff0000, 0x80000000, 0xc9850000, 392); 
TEST_RR_OP( 99 , scmplt16, 0x00000000, 0xffffffff, 0xa6b5ffff, 396); 
TEST_RR_OP( 100 , scmplt16, 0x00000000, 0x8000ffff, 0x8000ffff, 400); 
TEST_RR_OP( 101 , scmplt16, 0x0000ffff, 0x0000ffff, 0x80005723, 404); 
TEST_RR_OP( 102 , scmplt16, 0xffff0000, 0xffff0000, 0x00008039, 408); 
TEST_RR_OP( 103 , scmplt16, 0x0000ffff, 0x0000ffff, 0xffff68a0, 412); 
TEST_RR_OP( 104 , scmplt16, 0xffff0000, 0x8000b3a1, 0xffff8000, 416); 
TEST_RR_OP( 105 , scmplt16, 0xffff0000, 0x80000000, 0xffff8000, 420); 
TEST_RR_OP( 106 , scmplt16, 0x0000ffff, 0xe89ed170, 0x80003c9b, 424); 
TEST_RR_OP( 107 , scmplt16, 0x0000ffff, 0xffff0000, 0x80001489, 428); 
TEST_RR_OP( 108 , scmplt16, 0x00000000, 0x00000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , scmplt16, 0xffff0000, 0x8000635e, 0xffff8000, 436); 
TEST_RR_OP( 110 , scmplt16, 0x0000ffff, 0x0000c70b, 0xffff0000, 440); 
TEST_RR_OP( 111 , scmplt16, 0x00000000, 0x0000ffff, 0x0000ffff, 444); 
TEST_RR_OP( 112 , scmplt16, 0xffff0000, 0xffff7667, 0x00008000, 448); 
TEST_RR_OP( 113 , scmplt16, 0x0000ffff, 0xd7338000, 0x8000ffff, 452); 
TEST_RR_OP( 114 , scmplt16, 0x00000000, 0x7bcf0000, 0x0000833a, 456); 
TEST_RR_OP( 115 , scmplt16, 0x0000ffff, 0xffff8000, 0x8000ffff, 460); 
TEST_RR_OP( 116 , scmplt16, 0x0000ffff, 0x00008000, 0x00009e47, 464); 
TEST_RR_OP( 117 , scmplt16, 0xffff0000, 0x8000ffff, 0xffffce22, 468); 
TEST_RR_OP( 118 , scmplt16, 0x00000000, 0x00000000, 0x8000ffff, 472); 
TEST_RR_OP( 119 , scmplt16, 0x0000ffff, 0x00000000, 0xffff490c, 476); 
TEST_RR_OP( 120 , scmplt16, 0xffff0000, 0x8000ffff, 0x2452ffff, 480); 
TEST_RR_OP( 121 , scmplt16, 0xffff0000, 0xffffffff, 0x00008000, 484); 
TEST_RR_OP( 122 , scmplt16, 0x0000ffff, 0x80008000, 0x8000761b, 488); 
TEST_RR_OP( 123 , scmplt16, 0x0000ffff, 0xffff8000, 0xffffffff, 492); 
TEST_RR_OP( 124 , scmplt16, 0x0000ffff, 0x8000e5dd, 0x8000ffff, 496); 
TEST_RR_OP( 125 , scmplt16, 0xffffffff, 0x8000ffff, 0xffff0000, 500); 
TEST_RR_OP( 126 , scmplt16, 0xffff0000, 0x80000000, 0xb4148000, 504); 
TEST_RR_OP( 127 , scmplt16, 0x00000000, 0xffffffff, 0xc2e7ffff, 508); 
TEST_RR_OP( 128 , scmplt16, 0xffffffff, 0xffffa7e2, 0x00000000, 512); 
TEST_RR_OP( 129 , scmplt16, 0xffff0000, 0xffff0000, 0x70928000, 516); 
TEST_RR_OP( 130 , scmplt16, 0x00000000, 0x80008000, 0x80008000, 520); 
TEST_RR_OP( 131 , scmplt16, 0x00000000, 0x00000000, 0x80008000, 524); 
TEST_RR_OP( 132 , scmplt16, 0x00000000, 0x3b85180c, 0x80008000, 528); 
TEST_RR_OP( 133 , scmplt16, 0xffff0000, 0x0000ffff, 0x4639ffff, 532); 
TEST_RR_OP( 134 , scmplt16, 0xffff0000, 0x80007a13, 0xfffff10e, 536); 
TEST_RR_OP( 135 , scmplt16, 0x00000000, 0x0de25092, 0xffff8000, 540); 
TEST_RR_OP( 136 , scmplt16, 0xffffffff, 0xffff8000, 0x00000000, 544); 
TEST_RR_OP( 137 , scmplt16, 0x00000000, 0xffff0000, 0x80008000, 548); 
TEST_RR_OP( 138 , scmplt16, 0x0000ffff, 0xffff8000, 0xffff10ab, 552); 
TEST_RR_OP( 139 , scmplt16, 0xffff0000, 0xcb98ffff, 0xfb08df24, 556); 
TEST_RR_OP( 140 , scmplt16, 0xffff0000, 0x8000244c, 0xc159ffff, 560); 
TEST_RR_OP( 141 , scmplt16, 0xffffffff, 0x8000febb, 0x0000ffff, 564); 
TEST_RR_OP( 142 , scmplt16, 0x00000000, 0xffffffff, 0xffffa3bc, 568); 
TEST_RR_OP( 143 , scmplt16, 0x0000ffff, 0xffff9213, 0x8000ffff, 572); 
TEST_RR_OP( 144 , scmplt16, 0x00000000, 0xffff37d1, 0x8000a46c, 576); 
TEST_RR_OP( 145 , scmplt16, 0xffffffff, 0x8000f1ae, 0x526b0000, 580); 
TEST_RR_OP( 146 , scmplt16, 0xffff0000, 0xf4f90000, 0x45ba8000, 584); 
TEST_RR_OP( 147 , scmplt16, 0x00000000, 0xe418a7a5, 0x80008000, 588); 
TEST_RR_OP( 148 , scmplt16, 0x0000ffff, 0xffffffff, 0x80000000, 592); 
TEST_RR_OP( 149 , scmplt16, 0xffffffff, 0xca7fffff, 0x0bee0525, 596); 
TEST_RR_OP( 150 , scmplt16, 0xffff0000, 0xee850000, 0x0000ffff, 600); 
TEST_RR_OP( 151 , scmplt16, 0xffffffff, 0x8000ffff, 0xc2b60000, 604); 
TEST_RR_OP( 152 , scmplt16, 0x00000000, 0x0000ffff, 0x92188000, 608); 
TEST_RR_OP( 153 , scmplt16, 0xffffffff, 0x80008000, 0xffff54da, 612); 
TEST_RR_OP( 154 , scmplt16, 0x00000000, 0x00008000, 0xffff8000, 616); 
TEST_RR_OP( 155 , scmplt16, 0x00000000, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , scmplt16, 0xffff0000, 0x8000420c, 0x23f10000, 624); 
TEST_RR_OP( 157 , scmplt16, 0xffffffff, 0x9d438000, 0xffff4d58, 628); 
TEST_RR_OP( 158 , scmplt16, 0x0000ffff, 0x00008000, 0xaa090000, 632); 
TEST_RR_OP( 159 , scmplt16, 0x0000ffff, 0x8000cfe5, 0x80000000, 636); 
TEST_RR_OP( 160 , scmplt16, 0xffffffff, 0x94c58000, 0xa8aeffff, 640); 
TEST_RR_OP( 161 , scmplt16, 0x0000ffff, 0xffffffff, 0x80001e9d, 644); 
TEST_RR_OP( 162 , scmplt16, 0xffff0000, 0xffff0000, 0x4da9ef79, 648); 
TEST_RR_OP( 163 , scmplt16, 0xffff0000, 0xb9270000, 0x00009bca, 652); 
TEST_RR_OP( 164 , scmplt16, 0x0000ffff, 0x0000ae99, 0x8000ffff, 656); 
TEST_RR_OP( 165 , scmplt16, 0x00000000, 0x9cd60000, 0x8000c843, 660); 
TEST_RR_OP( 166 , scmplt16, 0x0000ffff, 0x0000ffff, 0x80000000, 664); 
TEST_RR_OP( 167 , scmplt16, 0x0000ffff, 0xffffbc54, 0xffff0000, 668); 
TEST_RR_OP( 168 , scmplt16, 0xffff0000, 0x8000df80, 0x9c718000, 672); 
TEST_RR_OP( 169 , scmplt16, 0x00000000, 0x2311ffff, 0xf573ffff, 676); 
TEST_RR_OP( 170 , scmplt16, 0xffff0000, 0x8000ffff, 0xffff8b21, 680); 
TEST_RR_OP( 171 , scmplt16, 0xffff0000, 0x80da0000, 0xffff8000, 684); 
TEST_RR_OP( 172 , scmplt16, 0x00000000, 0x68aa0000, 0x5765ffff, 688); 
TEST_RR_OP( 173 , scmplt16, 0xffffffff, 0x80008000, 0x00000000, 692); 
TEST_RR_OP( 174 , scmplt16, 0xffff0000, 0xffff8000, 0x00008000, 696); 
TEST_RR_OP( 175 , scmplt16, 0x00000000, 0xffff3d61, 0xf1348000, 700); 
TEST_RR_OP( 176 , scmplt16, 0x0000ffff, 0xffff8129, 0x948e2bcb, 704); 
TEST_RR_OP( 177 , scmplt16, 0x0000ffff, 0xffff8000, 0x8f82ffff, 708); 
TEST_RR_OP( 178 , scmplt16, 0x00000000, 0x63210000, 0x00000000, 712); 
TEST_RR_OP( 179 , scmplt16, 0xffff0000, 0x8000ffff, 0xffffffff, 716); 
TEST_RR_OP( 180 , scmplt16, 0x00000000, 0x00000000, 0xea860000, 720); 
TEST_RR_OP( 181 , scmplt16, 0x0000ffff, 0x0000ffff, 0x00000000, 724); 
TEST_RR_OP( 182 , scmplt16, 0x0000ffff, 0x00008000, 0xffffffff, 728); 
TEST_RR_OP( 183 , scmplt16, 0xffffffff, 0xffffecc0, 0x36060000, 732); 
TEST_RR_OP( 184 , scmplt16, 0xffff0000, 0x8000ffff, 0x00008000, 736); 
TEST_RR_OP( 185 , scmplt16, 0xffff0000, 0x80000000, 0x26508000, 740); 
TEST_RR_OP( 186 , scmplt16, 0x00000000, 0x46e08000, 0x00008000, 744); 
TEST_RR_OP( 187 , scmplt16, 0x0000ffff, 0x80008000, 0x8000ffff, 748); 
TEST_RR_OP( 188 , scmplt16, 0xffff0000, 0xec2b0000, 0xffff8000, 752); 
TEST_RR_OP( 189 , scmplt16, 0x00000000, 0x80006c43, 0x80003798, 756); 
TEST_RR_OP( 190 , scmplt16, 0xffffffff, 0xffff9178, 0x00000000, 760); 
TEST_RR_OP( 191 , scmplt16, 0xffffffff, 0xfffffee1, 0x00000000, 764); 
TEST_RR_OP( 192 , scmplt16, 0x0000ffff, 0xffff8000, 0x8000ffff, 768); 
TEST_RR_OP( 193 , scmplt16, 0x0000ffff, 0x790eb2ff, 0xffff6901, 772); 
TEST_RR_OP( 194 , scmplt16, 0x00000000, 0x7806ffff, 0x914f8000, 776); 
TEST_RR_OP( 195 , scmplt16, 0x00000000, 0xe67b67aa, 0x80000000, 780); 
TEST_RR_OP( 196 , scmplt16, 0x0000ffff, 0x80008000, 0x8000aa27, 784); 
TEST_RR_OP( 197 , scmplt16, 0x00000000, 0x80008000, 0x80008000, 788); 
TEST_RR_OP( 198 , scmplt16, 0xffffffff, 0x8000e2ad, 0xffffffff, 792); 
TEST_RR_OP( 199 , scmplt16, 0xffff0000, 0x80000000, 0xffffffff, 796); 

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
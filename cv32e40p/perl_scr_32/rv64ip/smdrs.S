# See LICENSE for license details.
#*****************************************************************************
# smdrs.S
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

TEST_RR_OP( 2 , smdrs, 0x000041df, 0xf6edb50e, 0xffffffff, 8); 
TEST_RR_OP( 3 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 12); 
TEST_RR_OP( 4 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 28); 
TEST_RR_OP( 8 , smdrs, 0x00000000, 0x00000000, 0x00000000, 32); 
TEST_RR_OP( 9 , smdrs, 0xffffbe7f, 0x28dd6a5e, 0xffffffff, 36); 
TEST_RR_OP( 10 , smdrs, 0x00000000, 0x0362f832, 0x00000000, 40); 
TEST_RR_OP( 11 , smdrs, 0xffff4aa4, 0x869d3bf9, 0xffffffff, 44); 
TEST_RR_OP( 12 , smdrs, 0xea130000, 0xd4266a8a, 0x80000000, 48); 
TEST_RR_OP( 13 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 52); 
TEST_RR_OP( 14 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 56); 
TEST_RR_OP( 15 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 60); 
TEST_RR_OP( 16 , smdrs, 0x00000000, 0x00000000, 0x00000000, 64); 
TEST_RR_OP( 17 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 68); 
TEST_RR_OP( 18 , smdrs, 0x000031f2, 0xffffffff, 0x3adb08e9, 72); 
TEST_RR_OP( 19 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 76); 
TEST_RR_OP( 20 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 80); 
TEST_RR_OP( 21 , smdrs, 0x00000000, 0x80000000, 0x00000000, 84); 
TEST_RR_OP( 22 , smdrs, 0x00000000, 0x00000000, 0x80000000, 88); 
TEST_RR_OP( 23 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , smdrs, 0x00000000, 0x00000000, 0x00000000, 96); 
TEST_RR_OP( 25 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 100); 
TEST_RR_OP( 26 , smdrs, 0x00000000, 0x00000000, 0x00000000, 104); 
TEST_RR_OP( 27 , smdrs, 0x00000000, 0x00000000, 0x4d03ba26, 108); 
TEST_RR_OP( 28 , smdrs, 0xffffaec5, 0xffffffff, 0xd844297f, 112); 
TEST_RR_OP( 29 , smdrs, 0x00000000, 0x00000000, 0x00000000, 116); 
TEST_RR_OP( 30 , smdrs, 0xffffcf85, 0xc0c9f144, 0xffffffff, 120); 
TEST_RR_OP( 31 , smdrs, 0x00000000, 0x2ec95075, 0x00000000, 124); 
TEST_RR_OP( 32 , smdrs, 0xcf198000, 0x9e331ea3, 0x80000000, 128); 
TEST_RR_OP( 33 , smdrs, 0x00000000, 0x00000000, 0x00000000, 132); 
TEST_RR_OP( 34 , smdrs, 0x094a8000, 0x80000000, 0x12952ea3, 136); 
TEST_RR_OP( 35 , smdrs, 0x00000f93, 0xffffffff, 0xb221a28e, 140); 
TEST_RR_OP( 36 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 144); 
TEST_RR_OP( 37 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , smdrs, 0x27530000, 0x4ea62b94, 0x80000000, 156); 
TEST_RR_OP( 40 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 160); 
TEST_RR_OP( 41 , smdrs, 0xffff800d, 0xffffffff, 0x8cd80ccb, 164); 
TEST_RR_OP( 42 , smdrs, 0x00000000, 0x00000000, 0xd924de68, 168); 
TEST_RR_OP( 43 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 172); 
TEST_RR_OP( 44 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , smdrs, 0x00000000, 0x9d9b341b, 0x00000000, 180); 
TEST_RR_OP( 46 , smdrs, 0x020f0000, 0x041e812b, 0x80000000, 184); 
TEST_RR_OP( 47 , smdrs, 0xffff7dcc, 0x92521486, 0xffffffff, 188); 
TEST_RR_OP( 48 , smdrs, 0x22708000, 0x44e17eb0, 0x80000000, 192); 
TEST_RR_OP( 49 , smdrs, 0xfdab0000, 0xfb56106f, 0x80000000, 196); 
TEST_RR_OP( 50 , smdrs, 0x00000000, 0x00000000, 0x80000000, 200); 
TEST_RR_OP( 51 , smdrs, 0x00007efe, 0x1f12a014, 0xffffffff, 204); 
TEST_RR_OP( 52 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 208); 
TEST_RR_OP( 53 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 212); 
TEST_RR_OP( 54 , smdrs, 0x2a508000, 0x54a1e199, 0x80000000, 216); 
TEST_RR_OP( 55 , smdrs, 0xeed00000, 0xdda01174, 0x80000000, 220); 
TEST_RR_OP( 56 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , smdrs, 0x00000000, 0x00000000, 0x80000000, 228); 
TEST_RR_OP( 58 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 232); 
TEST_RR_OP( 59 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 236); 
TEST_RR_OP( 60 , smdrs, 0x2fc30000, 0x80000000, 0x5f867dc5, 240); 
TEST_RR_OP( 61 , smdrs, 0xe6dc0000, 0x80000000, 0xcdb89a16, 244); 
TEST_RR_OP( 62 , smdrs, 0x00000000, 0x00000000, 0x1fd7863f, 248); 
TEST_RR_OP( 63 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , smdrs, 0xd96d8000, 0xb2db6a60, 0x80000000, 256); 
TEST_RR_OP( 65 , smdrs, 0x00000000, 0x00000000, 0x80000000, 260); 
TEST_RR_OP( 66 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 264); 
TEST_RR_OP( 67 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 268); 
TEST_RR_OP( 68 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , smdrs, 0x26180000, 0x80000000, 0x4c3012e8, 276); 
TEST_RR_OP( 70 , smdrs, 0x00000000, 0x80000000, 0x00000000, 280); 
TEST_RR_OP( 71 , smdrs, 0xc55b8000, 0x8ab763e4, 0x80000000, 284); 
TEST_RR_OP( 72 , smdrs, 0xe6a20000, 0xcd4460b9, 0x80000000, 288); 
TEST_RR_OP( 73 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 292); 
TEST_RR_OP( 74 , smdrs, 0x00000000, 0x00000000, 0x70b5c697, 296); 
TEST_RR_OP( 75 , smdrs, 0x31d30000, 0x80000000, 0x63a657e6, 300); 
TEST_RR_OP( 76 , smdrs, 0x00000000, 0x00000000, 0x4cedc293, 304); 
TEST_RR_OP( 77 , smdrs, 0xf5550472, 0x1cb50624, 0x478e91c6, 308); 
TEST_RR_OP( 78 , smdrs, 0xf15e0000, 0x80000000, 0xe2bca71f, 312); 
TEST_RR_OP( 79 , smdrs, 0x00000000, 0x00000000, 0x481b83da, 316); 
TEST_RR_OP( 80 , smdrs, 0x00000000, 0x00000000, 0x3135802e, 320); 
TEST_RR_OP( 81 , smdrs, 0x000040c0, 0x799138d1, 0xffffffff, 324); 
TEST_RR_OP( 82 , smdrs, 0x00000000, 0x80000000, 0x00000000, 328); 
TEST_RR_OP( 83 , smdrs, 0xdc448000, 0x80000000, 0xb889280c, 332); 
TEST_RR_OP( 84 , smdrs, 0xffffd660, 0x25114eb1, 0xffffffff, 336); 
TEST_RR_OP( 85 , smdrs, 0x00000000, 0x80000000, 0x00000000, 340); 
TEST_RR_OP( 86 , smdrs, 0x00000000, 0x80000000, 0x00000000, 344); 
TEST_RR_OP( 87 , smdrs, 0x00000000, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 352); 
TEST_RR_OP( 89 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 356); 
TEST_RR_OP( 90 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 360); 
TEST_RR_OP( 91 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , smdrs, 0x00000000, 0x9a6c7437, 0x00000000, 368); 
TEST_RR_OP( 93 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 376); 
TEST_RR_OP( 95 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 380); 
TEST_RR_OP( 96 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 384); 
TEST_RR_OP( 97 , smdrs, 0x00000000, 0x80000000, 0x00000000, 388); 
TEST_RR_OP( 98 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , smdrs, 0x0a538000, 0x80000000, 0x14a7be13, 396); 
TEST_RR_OP( 100 , smdrs, 0xe46a8000, 0x80000000, 0xc8d57812, 400); 
TEST_RR_OP( 101 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 404); 
TEST_RR_OP( 102 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 408); 
TEST_RR_OP( 103 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 412); 
TEST_RR_OP( 104 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 416); 
TEST_RR_OP( 105 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 420); 
TEST_RR_OP( 106 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 424); 
TEST_RR_OP( 107 , smdrs, 0x00000000, 0x00000000, 0x00000000, 428); 
TEST_RR_OP( 108 , smdrs, 0x29e20000, 0x53c4bafa, 0x80000000, 432); 
TEST_RR_OP( 109 , smdrs, 0x08688000, 0x80000000, 0x10d15e68, 436); 
TEST_RR_OP( 110 , smdrs, 0x00000000, 0x80000000, 0x00000000, 440); 
TEST_RR_OP( 111 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 448); 
TEST_RR_OP( 113 , smdrs, 0x00000000, 0xee64558e, 0x00000000, 452); 
TEST_RR_OP( 114 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 456); 
TEST_RR_OP( 115 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 460); 
TEST_RR_OP( 116 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 464); 
TEST_RR_OP( 117 , smdrs, 0x00000000, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 476); 
TEST_RR_OP( 120 , smdrs, 0x00000000, 0x00000000, 0x80000000, 480); 
TEST_RR_OP( 121 , smdrs, 0x00000000, 0x00000000, 0x69cfb01d, 484); 
TEST_RR_OP( 122 , smdrs, 0x00000000, 0xa1432504, 0x00000000, 488); 
TEST_RR_OP( 123 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 492); 
TEST_RR_OP( 124 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 496); 
TEST_RR_OP( 125 , smdrs, 0xebe70000, 0x80000000, 0xd7ce33d9, 500); 
TEST_RR_OP( 126 , smdrs, 0x00000000, 0x00000000, 0x15de7fa0, 504); 
TEST_RR_OP( 127 , smdrs, 0x00000000, 0xfaccfce0, 0x00000000, 508); 
TEST_RR_OP( 128 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , smdrs, 0x00000000, 0x00000000, 0x00000000, 516); 
TEST_RR_OP( 130 , smdrs, 0xf7802c72, 0xfe18ecd1, 0xc2eb6b5a, 520); 
TEST_RR_OP( 131 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 524); 
TEST_RR_OP( 132 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 528); 
TEST_RR_OP( 133 , smdrs, 0xd15c0000, 0x80000000, 0xa2b8e5f7, 532); 
TEST_RR_OP( 134 , smdrs, 0x0000447a, 0xffffffff, 0xee73a9f9, 536); 
TEST_RR_OP( 135 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , smdrs, 0x00000000, 0x80000000, 0x00000000, 544); 
TEST_RR_OP( 137 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 548); 
TEST_RR_OP( 138 , smdrs, 0x00000000, 0x00000000, 0x80000000, 552); 
TEST_RR_OP( 139 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 556); 
TEST_RR_OP( 140 , smdrs, 0x00000000, 0x80000000, 0x00000000, 560); 
TEST_RR_OP( 141 , smdrs, 0xc6b98000, 0x80000000, 0x8d73be62, 564); 
TEST_RR_OP( 142 , smdrs, 0x00000000, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , smdrs, 0x00000000, 0x00000000, 0x00000000, 572); 
TEST_RR_OP( 144 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 576); 
TEST_RR_OP( 145 , smdrs, 0xffffd853, 0x88fcb0a9, 0xffffffff, 580); 
TEST_RR_OP( 146 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , smdrs, 0xd2bc0000, 0x80000000, 0xa578d03b, 588); 
TEST_RR_OP( 148 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 592); 
TEST_RR_OP( 149 , smdrs, 0x00004544, 0xf81ab2d6, 0xffffffff, 596); 
TEST_RR_OP( 150 , smdrs, 0xffffa325, 0xffffffff, 0xbb1d17f8, 600); 
TEST_RR_OP( 151 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 608); 
TEST_RR_OP( 153 , smdrs, 0xf09733da, 0xb5aacb5a, 0x043550de, 612); 
TEST_RR_OP( 154 , smdrs, 0x00000000, 0x00000000, 0x00000000, 616); 
TEST_RR_OP( 155 , smdrs, 0xfb088000, 0xf6114c05, 0x80000000, 620); 
TEST_RR_OP( 156 , smdrs, 0xeb230000, 0xd646c436, 0x80000000, 624); 
TEST_RR_OP( 157 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 628); 
TEST_RR_OP( 158 , smdrs, 0x00000000, 0x00000000, 0x1014fcae, 632); 
TEST_RR_OP( 159 , smdrs, 0x0ffe0000, 0x1ffca529, 0x80000000, 636); 
TEST_RR_OP( 160 , smdrs, 0xf9130000, 0xf2268ae3, 0x80000000, 640); 
TEST_RR_OP( 161 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , smdrs, 0xc1a18000, 0x80000000, 0x834381e9, 648); 
TEST_RR_OP( 163 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 652); 
TEST_RR_OP( 164 , smdrs, 0x01990000, 0x0332b488, 0x80000000, 656); 
TEST_RR_OP( 165 , smdrs, 0x00000000, 0x00000000, 0x92549dc4, 660); 
TEST_RR_OP( 166 , smdrs, 0x00000000, 0x00000000, 0x7b093c92, 664); 
TEST_RR_OP( 167 , smdrs, 0xfa174c77, 0xd3df0044, 0xddbbfe67, 668); 
TEST_RR_OP( 168 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 672); 
TEST_RR_OP( 169 , smdrs, 0x00000000, 0x998167ee, 0x00000000, 676); 
TEST_RR_OP( 170 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 680); 
TEST_RR_OP( 171 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , smdrs, 0xcdc78000, 0x9b8f7fc6, 0x80000000, 688); 
TEST_RR_OP( 173 , smdrs, 0x00000000, 0x00000000, 0xffffffff, 692); 
TEST_RR_OP( 174 , smdrs, 0xe3070000, 0xc60e06b5, 0x80000000, 696); 
TEST_RR_OP( 175 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 700); 
TEST_RR_OP( 176 , smdrs, 0xd635dc1a, 0x59381b0a, 0x589c98b9, 704); 
TEST_RR_OP( 177 , smdrs, 0xffffcff6, 0xffffffff, 0xaf87df91, 708); 
TEST_RR_OP( 178 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 712); 
TEST_RR_OP( 179 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 716); 
TEST_RR_OP( 180 , smdrs, 0x00005401, 0xffffffff, 0x753c213b, 720); 
TEST_RR_OP( 181 , smdrs, 0x00000000, 0x0502a58e, 0x00000000, 724); 
TEST_RR_OP( 182 , smdrs, 0xf4d0da70, 0x25a40650, 0x4608dc05, 728); 
TEST_RR_OP( 183 , smdrs, 0x00000000, 0x00000000, 0x00000000, 732); 
TEST_RR_OP( 184 , smdrs, 0x0000372b, 0xffffffff, 0x5d8a265f, 736); 
TEST_RR_OP( 185 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 740); 
TEST_RR_OP( 186 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 744); 
TEST_RR_OP( 187 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 748); 
TEST_RR_OP( 188 , smdrs, 0x303f0000, 0x607e35a9, 0x80000000, 752); 
TEST_RR_OP( 189 , smdrs, 0xc0000000, 0x80000000, 0x80000000, 756); 
TEST_RR_OP( 190 , smdrs, 0xfe22efd2, 0xd753bef1, 0xeee6fca4, 760); 
TEST_RR_OP( 191 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 764); 
TEST_RR_OP( 192 , smdrs, 0x000000ef, 0xffffffff, 0x57fc570d, 768); 
TEST_RR_OP( 193 , smdrs, 0x00000000, 0xe3e9181f, 0x00000000, 772); 
TEST_RR_OP( 194 , smdrs, 0x00000000, 0xffffffff, 0xffffffff, 776); 
TEST_RR_OP( 195 , smdrs, 0x3f270000, 0x7e4e0e17, 0x80000000, 780); 
TEST_RR_OP( 196 , smdrs, 0x00000000, 0xffffffff, 0x00000000, 784); 
TEST_RR_OP( 197 , smdrs, 0xffff8000, 0xffffffff, 0x80000000, 788); 
TEST_RR_OP( 198 , smdrs, 0x0000a99a, 0x75dccc42, 0xffffffff, 792); 
TEST_RR_OP( 199 , smdrs, 0xffff8000, 0x80000000, 0xffffffff, 796); 

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
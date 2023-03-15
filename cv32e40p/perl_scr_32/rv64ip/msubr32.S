# See LICENSE for license details.
#*****************************************************************************
# msubr32.S
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

TEST_RR_OP( 2 , msubr32, 0x3c815c1f, 0x3c815c1f, 0xffffffff, 8); 
TEST_RR_OP( 3 , msubr32, 0x3c815c1f, 0xffffffff, 0x00000000, 12); 
TEST_RR_OP( 4 , msubr32, 0x3c815c1f, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , msubr32, 0xbc815c1f, 0x80000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , msubr32, 0xbc815c1f, 0x80000000, 0x00000000, 24); 
TEST_RR_OP( 7 , msubr32, 0xbc815c1e, 0xffffffff, 0xffffffff, 28); 
TEST_RR_OP( 8 , msubr32, 0xbc815c1e, 0x00000000, 0x38234b46, 32); 
TEST_RR_OP( 9 , msubr32, 0x5964b932, 0xffffffff, 0x9ce35d14, 36); 
TEST_RR_OP( 10 , msubr32, 0x0dbacd76, 0x14f3e5cc, 0x42a6c995, 40); 
TEST_RR_OP( 11 , msubr32, 0x0dbacd76, 0x80000000, 0x00000000, 44); 
TEST_RR_OP( 12 , msubr32, 0x0dbacd76, 0x00000000, 0x80000000, 48); 
TEST_RR_OP( 13 , msubr32, 0x0dbacd76, 0x80000000, 0x00000000, 52); 
TEST_RR_OP( 14 , msubr32, 0x0dbacd76, 0xcd1f2eab, 0x00000000, 56); 
TEST_RR_OP( 15 , msubr32, 0x0dbacd76, 0x80000000, 0xcb2ac1aa, 60); 
TEST_RR_OP( 16 , msubr32, 0x8dbacd76, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , msubr32, 0x8dbacd76, 0xffffffff, 0x00000000, 68); 
TEST_RR_OP( 18 , msubr32, 0x8dbacd76, 0x80000000, 0x00000000, 72); 
TEST_RR_OP( 19 , msubr32, 0x8dbacd76, 0x80000000, 0x00000000, 76); 
TEST_RR_OP( 20 , msubr32, 0x5d14a596, 0xffffffff, 0xcf59d820, 80); 
TEST_RR_OP( 21 , msubr32, 0xdd14a596, 0x80000000, 0xec5590d7, 84); 
TEST_RR_OP( 22 , msubr32, 0xdd14a596, 0x00000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , msubr32, 0xdd14a595, 0xffffffff, 0xffffffff, 92); 
TEST_RR_OP( 24 , msubr32, 0xdd14a595, 0x00000000, 0xffffffff, 96); 
TEST_RR_OP( 25 , msubr32, 0xdd14a595, 0x80000000, 0x00000000, 100); 
TEST_RR_OP( 26 , msubr32, 0xdd14a594, 0xffffffff, 0xffffffff, 104); 
TEST_RR_OP( 27 , msubr32, 0xdd14a593, 0xffffffff, 0xffffffff, 108); 
TEST_RR_OP( 28 , msubr32, 0xdd14a593, 0x80000000, 0x00000000, 112); 
TEST_RR_OP( 29 , msubr32, 0xdd14a593, 0x3fcb58e1, 0x00000000, 116); 
TEST_RR_OP( 30 , msubr32, 0xdd14a592, 0xffffffff, 0xffffffff, 120); 
TEST_RR_OP( 31 , msubr32, 0xdd14a591, 0xffffffff, 0xffffffff, 124); 
TEST_RR_OP( 32 , msubr32, 0x5d14a591, 0x80000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , msubr32, 0xdd14a591, 0xffffffff, 0x80000000, 132); 
TEST_RR_OP( 34 , msubr32, 0xdd14a591, 0x00000000, 0xfb2a9124, 136); 
TEST_RR_OP( 35 , msubr32, 0xdd14a591, 0x80000000, 0xeea2d9b0, 140); 
TEST_RR_OP( 36 , msubr32, 0xdd14a591, 0x80000000, 0x00000000, 144); 
TEST_RR_OP( 37 , msubr32, 0xdd14a591, 0x00000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , msubr32, 0x5d14a591, 0xffffffff, 0x80000000, 152); 
TEST_RR_OP( 39 , msubr32, 0x5d14a591, 0x80000000, 0x00000000, 156); 
TEST_RR_OP( 40 , msubr32, 0xdd14a591, 0x80000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , msubr32, 0x5d14a591, 0xffffffff, 0x80000000, 164); 
TEST_RR_OP( 42 , msubr32, 0x5d14a591, 0xffffffff, 0x00000000, 168); 
TEST_RR_OP( 43 , msubr32, 0x5d14a591, 0x156babc1, 0x00000000, 172); 
TEST_RR_OP( 44 , msubr32, 0x282f3c25, 0xcb1a9694, 0xffffffff, 176); 
TEST_RR_OP( 45 , msubr32, 0x282f3c25, 0x6ef7acde, 0x80000000, 180); 
TEST_RR_OP( 46 , msubr32, 0x282f3c25, 0x00000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , msubr32, 0x9b6fd302, 0x734096dd, 0xffffffff, 188); 
TEST_RR_OP( 48 , msubr32, 0x9b6fd302, 0x59b11147, 0x00000000, 192); 
TEST_RR_OP( 49 , msubr32, 0x1b6fd302, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , msubr32, 0x1b6fd302, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , msubr32, 0x1b6fd301, 0xffffffff, 0xffffffff, 204); 
TEST_RR_OP( 52 , msubr32, 0x1b6fd301, 0x00000000, 0x80000000, 208); 
TEST_RR_OP( 53 , msubr32, 0x1b6fd301, 0x00000000, 0xf4127ec6, 212); 
TEST_RR_OP( 54 , msubr32, 0x1b6fd301, 0x00000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , msubr32, 0x1b6fd301, 0x577cfc64, 0x00000000, 220); 
TEST_RR_OP( 56 , msubr32, 0x1b6fd301, 0x00000000, 0x00000000, 224); 
TEST_RR_OP( 57 , msubr32, 0x1b6fd301, 0x00000000, 0x80000000, 228); 
TEST_RR_OP( 58 , msubr32, 0x9b6fd301, 0x74b610e9, 0x80000000, 232); 
TEST_RR_OP( 59 , msubr32, 0x9b6fd301, 0x80000000, 0xd419abb2, 236); 
TEST_RR_OP( 60 , msubr32, 0x1b6fd301, 0xffffffff, 0x80000000, 240); 
TEST_RR_OP( 61 , msubr32, 0x1b6fd301, 0x00000000, 0xffffffff, 244); 
TEST_RR_OP( 62 , msubr32, 0xc5013ed1, 0x1ad2f2be, 0x794634e8, 248); 
TEST_RR_OP( 63 , msubr32, 0xc5013ed1, 0x80000000, 0x80000000, 252); 
TEST_RR_OP( 64 , msubr32, 0xc5013ed1, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , msubr32, 0xc5013ed1, 0x80000000, 0x80000000, 260); 
TEST_RR_OP( 66 , msubr32, 0xe065ffc1, 0x88bbb290, 0xc1fa9389, 264); 
TEST_RR_OP( 67 , msubr32, 0x908f70f8, 0x4deacd09, 0x61abe3c1, 268); 
TEST_RR_OP( 68 , msubr32, 0x908f70f7, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP( 69 , msubr32, 0x60acfb87, 0x93d26f6c, 0x477264d4, 276); 
TEST_RR_OP( 70 , msubr32, 0x60acfb87, 0x00000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , msubr32, 0x2e666f60, 0x65577c93, 0xbe82029d, 284); 
TEST_RR_OP( 72 , msubr32, 0x2e666f60, 0xffffffff, 0x00000000, 288); 
TEST_RR_OP( 73 , msubr32, 0x553a4e6d, 0x26d3df0d, 0xffffffff, 292); 
TEST_RR_OP( 74 , msubr32, 0x648640f2, 0xffffffff, 0x0f4bf285, 296); 
TEST_RR_OP( 75 , msubr32, 0xae147684, 0x498e3592, 0xffffffff, 300); 
TEST_RR_OP( 76 , msubr32, 0xd7e54803, 0x29d0d17f, 0xffffffff, 304); 
TEST_RR_OP( 77 , msubr32, 0x57e54803, 0xffffffff, 0x80000000, 308); 
TEST_RR_OP( 78 , msubr32, 0x57e54803, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , msubr32, 0x57e54803, 0x80000000, 0xc4504d20, 316); 
TEST_RR_OP( 80 , msubr32, 0xd7e54803, 0x80000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , msubr32, 0x57e54803, 0x38b30d1b, 0x80000000, 324); 
TEST_RR_OP( 82 , msubr32, 0x57e54802, 0xffffffff, 0xffffffff, 328); 
TEST_RR_OP( 83 , msubr32, 0x57e54802, 0x00000000, 0x451ecb63, 332); 
TEST_RR_OP( 84 , msubr32, 0x57e54802, 0xb081bc91, 0x00000000, 336); 
TEST_RR_OP( 85 , msubr32, 0x57e54802, 0x00000000, 0x00000000, 340); 
TEST_RR_OP( 86 , msubr32, 0xb7f0b5fa, 0xe9ab6c7c, 0x97148d3e, 344); 
TEST_RR_OP( 87 , msubr32, 0xb7f0b5fa, 0x00000000, 0x80000000, 348); 
TEST_RR_OP( 88 , msubr32, 0xbcebffe1, 0x04fb49e7, 0xffffffff, 352); 
TEST_RR_OP( 89 , msubr32, 0xf4cef63d, 0x2b3424aa, 0xa2ef178a, 356); 
TEST_RR_OP( 90 , msubr32, 0x74cef63d, 0x8aad2385, 0x80000000, 360); 
TEST_RR_OP( 91 , msubr32, 0x156ee43d, 0xb5d42300, 0x27c7cfc6, 364); 
TEST_RR_OP( 92 , msubr32, 0x156ee43d, 0x80000000, 0x80000000, 368); 
TEST_RR_OP( 93 , msubr32, 0x156ee43d, 0x00000000, 0x80000000, 372); 
TEST_RR_OP( 94 , msubr32, 0x156ee43d, 0x00000000, 0x80000000, 376); 
TEST_RR_OP( 95 , msubr32, 0x956ee43d, 0x80000000, 0xffffffff, 380); 
TEST_RR_OP( 96 , msubr32, 0x956ee43c, 0xffffffff, 0xffffffff, 384); 
TEST_RR_OP( 97 , msubr32, 0x956ee43c, 0x00000000, 0x80000000, 388); 
TEST_RR_OP( 98 , msubr32, 0x956ee43c, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , msubr32, 0x98fc0338, 0xe1f7d5f4, 0x78d5f915, 396); 
TEST_RR_OP( 100 , msubr32, 0x98fc0338, 0x1513a8a4, 0x00000000, 400); 
TEST_RR_OP( 101 , msubr32, 0x98fc0338, 0x00000000, 0x80000000, 404); 
TEST_RR_OP( 102 , msubr32, 0x98fc0338, 0xefc75920, 0x80000000, 408); 
TEST_RR_OP( 103 , msubr32, 0x98fc0338, 0x80000000, 0xdb4f692e, 412); 
TEST_RR_OP( 104 , msubr32, 0x98fc0338, 0xffffffff, 0x00000000, 416); 
TEST_RR_OP( 105 , msubr32, 0x5bed77a4, 0xc2f1746c, 0xffffffff, 420); 
TEST_RR_OP( 106 , msubr32, 0xdbed77a4, 0xffffffff, 0x80000000, 424); 
TEST_RR_OP( 107 , msubr32, 0xdbed77a4, 0x80000000, 0x00000000, 428); 
TEST_RR_OP( 108 , msubr32, 0xdbed77a4, 0x00000000, 0x7ac47b5a, 432); 
TEST_RR_OP( 109 , msubr32, 0xdbed77a4, 0x00000000, 0xffffffff, 436); 
TEST_RR_OP( 110 , msubr32, 0xdbed77a4, 0x00000000, 0x80000000, 440); 
TEST_RR_OP( 111 , msubr32, 0xdbed77a4, 0x631b0dae, 0x80000000, 444); 
TEST_RR_OP( 112 , msubr32, 0xdbed77a3, 0xffffffff, 0xffffffff, 448); 
TEST_RR_OP( 113 , msubr32, 0xdbed77a3, 0xde1bf8b0, 0x00000000, 452); 
TEST_RR_OP( 114 , msubr32, 0xdbed77a3, 0x80000000, 0x00000000, 456); 
TEST_RR_OP( 115 , msubr32, 0xdbed77a3, 0x80000000, 0x690c001a, 460); 
TEST_RR_OP( 116 , msubr32, 0xdbed77a3, 0xffffffff, 0x00000000, 464); 
TEST_RR_OP( 117 , msubr32, 0xdbed77a3, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , msubr32, 0xdbed77a3, 0x2b3c4540, 0x80000000, 472); 
TEST_RR_OP( 119 , msubr32, 0xdbed77a3, 0x00000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , msubr32, 0x5bed77a3, 0xffffffff, 0x80000000, 480); 
TEST_RR_OP( 121 , msubr32, 0x5bed77a3, 0x80000000, 0x87bf9514, 484); 
TEST_RR_OP( 122 , msubr32, 0x5bed77a3, 0x00000000, 0x80000000, 488); 
TEST_RR_OP( 123 , msubr32, 0x5bed77a3, 0x80000000, 0x00000000, 492); 
TEST_RR_OP( 124 , msubr32, 0x5bed77a3, 0x00000000, 0x00000000, 496); 
TEST_RR_OP( 125 , msubr32, 0x38ba43e3, 0x1163edc0, 0x3e0c7ba9, 500); 
TEST_RR_OP( 126 , msubr32, 0x0522e3d4, 0xcc689ff1, 0xffffffff, 504); 
TEST_RR_OP( 127 , msubr32, 0x49753c22, 0xd527193e, 0xc9ecd487, 508); 
TEST_RR_OP( 128 , msubr32, 0x49753c22, 0x00000000, 0x80000000, 512); 
TEST_RR_OP( 129 , msubr32, 0xc9753c22, 0xffffffff, 0x80000000, 516); 
TEST_RR_OP( 130 , msubr32, 0x49753c22, 0xffffffff, 0x80000000, 520); 
TEST_RR_OP( 131 , msubr32, 0x49753c22, 0xffffffff, 0x00000000, 524); 
TEST_RR_OP( 132 , msubr32, 0xc9753c22, 0x80000000, 0xa9fcbfcd, 528); 
TEST_RR_OP( 133 , msubr32, 0xc9753c22, 0x00000000, 0x00000000, 532); 
TEST_RR_OP( 134 , msubr32, 0x49753c22, 0x80000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , msubr32, 0xb02a8c67, 0xffffffff, 0x66b55045, 540); 
TEST_RR_OP( 136 , msubr32, 0xb02a8c67, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , msubr32, 0xb02a8c67, 0xffffffff, 0x00000000, 548); 
TEST_RR_OP( 138 , msubr32, 0xb02a8c67, 0x00000000, 0xffffffff, 552); 
TEST_RR_OP( 139 , msubr32, 0xb02a8c67, 0x00000000, 0xd701efb4, 556); 
TEST_RR_OP( 140 , msubr32, 0x302a8c67, 0x80000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , msubr32, 0x23105537, 0x80e90243, 0xb6e3f110, 564); 
TEST_RR_OP( 142 , msubr32, 0xa3105537, 0xffffffff, 0x80000000, 568); 
TEST_RR_OP( 143 , msubr32, 0xa3105537, 0x00000000, 0x5b1e0cac, 572); 
TEST_RR_OP( 144 , msubr32, 0x23105537, 0x80000000, 0xffffffff, 576); 
TEST_RR_OP( 145 , msubr32, 0x23105537, 0x80000000, 0x00000000, 580); 
TEST_RR_OP( 146 , msubr32, 0x23105537, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , msubr32, 0x23105536, 0xffffffff, 0xffffffff, 588); 
TEST_RR_OP( 148 , msubr32, 0x23105536, 0x80000000, 0x00000000, 592); 
TEST_RR_OP( 149 , msubr32, 0x8be00b92, 0x68cfb65c, 0xffffffff, 596); 
TEST_RR_OP( 150 , msubr32, 0x0be00b92, 0x80000000, 0xd4b9b041, 600); 
TEST_RR_OP( 151 , msubr32, 0x0be00b92, 0x00000000, 0x80000000, 604); 
TEST_RR_OP( 152 , msubr32, 0x0be00b92, 0x00000000, 0xf4ec3ec9, 608); 
TEST_RR_OP( 153 , msubr32, 0x0be00b92, 0xffffffff, 0x00000000, 612); 
TEST_RR_OP( 154 , msubr32, 0x0be00b92, 0x80000000, 0x80000000, 616); 
TEST_RR_OP( 155 , msubr32, 0x0be00b92, 0xffffffff, 0x00000000, 620); 
TEST_RR_OP( 156 , msubr32, 0x8be00b92, 0x80000000, 0xffffffff, 624); 
TEST_RR_OP( 157 , msubr32, 0x8be00b92, 0x80000000, 0xf57f6cd0, 628); 
TEST_RR_OP( 158 , msubr32, 0x0be00b92, 0x5e8a18a9, 0x80000000, 632); 
TEST_RR_OP( 159 , msubr32, 0x8be00b92, 0xffffffff, 0x80000000, 636); 
TEST_RR_OP( 160 , msubr32, 0x789b592e, 0x331e8a54, 0xee8744f5, 640); 
TEST_RR_OP( 161 , msubr32, 0x789b592e, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , msubr32, 0x789b592e, 0x00000000, 0x00000000, 648); 
TEST_RR_OP( 163 , msubr32, 0xf89b592e, 0xac10a377, 0x80000000, 652); 
TEST_RR_OP( 164 , msubr32, 0xf89b592e, 0xb19fc5e2, 0x00000000, 656); 
TEST_RR_OP( 165 , msubr32, 0xf89b592e, 0x80000000, 0x00000000, 660); 
TEST_RR_OP( 166 , msubr32, 0xf89b592e, 0x00000000, 0x00000000, 664); 
TEST_RR_OP( 167 , msubr32, 0xf89b592e, 0x00000000, 0xffffffff, 668); 
TEST_RR_OP( 168 , msubr32, 0xf89b592e, 0x00000000, 0x8656e2b7, 672); 
TEST_RR_OP( 169 , msubr32, 0x5f2bd5d5, 0xffffffff, 0x66907ca7, 676); 
TEST_RR_OP( 170 , msubr32, 0xdf2bd5d5, 0xc6a8967f, 0x80000000, 680); 
TEST_RR_OP( 171 , msubr32, 0xdf2bd5d5, 0x80000000, 0x00000000, 684); 
TEST_RR_OP( 172 , msubr32, 0xb088da05, 0xffffffff, 0xd15d0430, 688); 
TEST_RR_OP( 173 , msubr32, 0xb088da05, 0x00000000, 0xcf670a29, 692); 
TEST_RR_OP( 174 , msubr32, 0xb088da05, 0x00000000, 0x80000000, 696); 
TEST_RR_OP( 175 , msubr32, 0xb088da05, 0x63189464, 0x00000000, 700); 
TEST_RR_OP( 176 , msubr32, 0xb088da05, 0x0825e4de, 0x00000000, 704); 
TEST_RR_OP( 177 , msubr32, 0x3088da05, 0x80000000, 0xffffffff, 708); 
TEST_RR_OP( 178 , msubr32, 0x3088da05, 0x64156632, 0x80000000, 712); 
TEST_RR_OP( 179 , msubr32, 0xb088da05, 0x80000000, 0xffffffff, 716); 
TEST_RR_OP( 180 , msubr32, 0xb088da04, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP( 181 , msubr32, 0xb088da04, 0x2d3213cc, 0x80000000, 724); 
TEST_RR_OP( 182 , msubr32, 0xb088da04, 0x80000000, 0x80000000, 728); 
TEST_RR_OP( 183 , msubr32, 0xb088da04, 0x80000000, 0x00000000, 732); 
TEST_RR_OP( 184 , msubr32, 0xb088da04, 0xe41c953c, 0x00000000, 736); 
TEST_RR_OP( 185 , msubr32, 0xb088da04, 0x00000000, 0x80000000, 740); 
TEST_RR_OP( 186 , msubr32, 0xb088da04, 0x00000000, 0x80000000, 744); 
TEST_RR_OP( 187 , msubr32, 0xb088da04, 0x5bfc029f, 0x00000000, 748); 
TEST_RR_OP( 188 , msubr32, 0xb088da04, 0x00000000, 0x80000000, 752); 
TEST_RR_OP( 189 , msubr32, 0xb088da04, 0x80000000, 0x80000000, 756); 
TEST_RR_OP( 190 , msubr32, 0xb088da04, 0x27502ac9, 0x00000000, 760); 
TEST_RR_OP( 191 , msubr32, 0xb088da04, 0x80000000, 0x80000000, 764); 
TEST_RR_OP( 192 , msubr32, 0xf4743891, 0xffffffff, 0x43eb5e8d, 768); 
TEST_RR_OP( 193 , msubr32, 0xf4743891, 0x00000000, 0xffffffff, 772); 
TEST_RR_OP( 194 , msubr32, 0xad2823f1, 0xb8b3eb60, 0xffffffff, 776); 
TEST_RR_OP( 195 , msubr32, 0xad2823f1, 0xffffffff, 0x00000000, 780); 
TEST_RR_OP( 196 , msubr32, 0xed4e18d4, 0xffffffff, 0x4025f4e3, 784); 
TEST_RR_OP( 197 , msubr32, 0xed4e18d4, 0x7a5258c4, 0x00000000, 788); 
TEST_RR_OP( 198 , msubr32, 0xed4e18d4, 0x00000000, 0x00000000, 792); 
TEST_RR_OP( 199 , msubr32, 0x5a21e919, 0x6cd3d045, 0xffffffff, 796); 

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
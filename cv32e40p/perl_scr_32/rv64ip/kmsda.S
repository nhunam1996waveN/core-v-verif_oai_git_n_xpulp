# See LICENSE for license details.
#*****************************************************************************
# kmsda.S
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

TEST_RR_OP( 2 , kmsda, 0x00000000, 0x00000000, 0x00000000, 8); 
TEST_RR_OP( 3 , kmsda, 0xfffffffe, 0xffffffff, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmsda, 0xfffffffe, 0x80000000, 0x00000000, 16); 
TEST_RR_OP( 5 , kmsda, 0xfffffffe, 0x00000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , kmsda, 0x06c2e726, 0x2cafd302, 0x08e62f4f, 24); 
TEST_RR_OP( 7 , kmsda, 0x06c26726, 0x80000000, 0xffffffff, 28); 
TEST_RR_OP( 8 , kmsda, 0x06c26726, 0x80000000, 0x00000000, 32); 
TEST_RR_OP( 9 , kmsda, 0x06c26724, 0xffffffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmsda, 0x06c1e724, 0xffffffff, 0x80000000, 40); 
TEST_RR_OP( 11 , kmsda, 0x06c1e724, 0x6d79368e, 0x00000000, 44); 
TEST_RR_OP( 12 , kmsda, 0x06c1e724, 0x80000000, 0x00000000, 48); 
TEST_RR_OP( 13 , kmsda, 0x06c1e724, 0x00000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , kmsda, 0x06c16724, 0x80000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , kmsda, 0x06c16724, 0x00000000, 0x80000000, 60); 
TEST_RR_OP( 16 , kmsda, 0x06c16724, 0x89198425, 0x00000000, 64); 
TEST_RR_OP( 17 , kmsda, 0x06c16724, 0x00000000, 0x80000000, 68); 
TEST_RR_OP( 18 , kmsda, 0x06c16f52, 0xa5e96245, 0xffffffff, 72); 
TEST_RR_OP( 19 , kmsda, 0x06c0ef52, 0x80000000, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmsda, 0xe131a89c, 0x2b72ad16, 0x1ef39c40, 80); 
TEST_RR_OP( 21 , kmsda, 0x12caa89c, 0x80000000, 0x63326eec, 84); 
TEST_RR_OP( 22 , kmsda, 0x12cb0e90, 0xffffffff, 0x7d21e8d3, 88); 
TEST_RR_OP( 23 , kmsda, 0x12cb0e90, 0x80000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kmsda, 0x44630e90, 0x80000000, 0x63308df2, 96); 
TEST_RR_OP( 25 , kmsda, 0x44630e90, 0x00000000, 0x253aa3a0, 100); 
TEST_RR_OP( 26 , kmsda, 0x15de8e90, 0xa2f7174c, 0x80000000, 104); 
TEST_RR_OP( 27 , kmsda, 0x15de0e90, 0xffffffff, 0x80000000, 108); 
TEST_RR_OP( 28 , kmsda, 0x07fccbdc, 0xf9911d03, 0xbedc6c08, 112); 
TEST_RR_OP( 29 , kmsda, 0x123d766e, 0x214c327f, 0xb716fc1a, 116); 
TEST_RR_OP( 30 , kmsda, 0x123cf66e, 0xffffffff, 0x80000000, 120); 
TEST_RR_OP( 31 , kmsda, 0x123cf66e, 0x00000000, 0x00000000, 124); 
TEST_RR_OP( 32 , kmsda, 0x123cf66e, 0xffffffff, 0x00000000, 128); 
TEST_RR_OP( 33 , kmsda, 0x123cf66e, 0x80000000, 0x00000000, 132); 
TEST_RR_OP( 34 , kmsda, 0x4959f66e, 0x6e3a839c, 0x80000000, 136); 
TEST_RR_OP( 35 , kmsda, 0x4959f66e, 0x00000000, 0xa660546a, 140); 
TEST_RR_OP( 36 , kmsda, 0x4959f66e, 0x00000000, 0x00000000, 144); 
TEST_RR_OP( 37 , kmsda, 0x1fe7f66e, 0x80000000, 0xad1cf266, 148); 
TEST_RR_OP( 38 , kmsda, 0x1fe7f66e, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , kmsda, 0x1fe7f66e, 0x5368da64, 0x00000000, 156); 
TEST_RR_OP( 40 , kmsda, 0x1fe7f66c, 0xffffffff, 0xffffffff, 160); 
TEST_RR_OP( 41 , kmsda, 0x1fe7f66a, 0xffffffff, 0xffffffff, 164); 
TEST_RR_OP( 42 , kmsda, 0x1fe7f66a, 0x00000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , kmsda, 0x1fe7dcd5, 0xb9e02c8b, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmsda, 0x1fe7d746, 0xffffffff, 0x2acecfa3, 176); 
TEST_RR_OP( 45 , kmsda, 0x1fe7d746, 0x00000000, 0x00000000, 180); 
TEST_RR_OP( 46 , kmsda, 0x1fe7d746, 0x00000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kmsda, 0x1fe7d35e, 0xffffffff, 0x211ddafb, 188); 
TEST_RR_OP( 48 , kmsda, 0x1fe7d35e, 0xffffffff, 0x00000000, 192); 
TEST_RR_OP( 49 , kmsda, 0x1fe7d35e, 0x00000000, 0xfd5b0cd4, 196); 
TEST_RR_OP( 50 , kmsda, 0x20c0d35e, 0x80000000, 0x01b2f57c, 200); 
TEST_RR_OP( 51 , kmsda, 0x20c0d35e, 0x0f519293, 0x00000000, 204); 
TEST_RR_OP( 52 , kmsda, 0x20c12225, 0xffffffff, 0xf3435b84, 208); 
TEST_RR_OP( 53 , kmsda, 0x20c12225, 0x00000000, 0x80000000, 212); 
TEST_RR_OP( 54 , kmsda, 0x20c0a225, 0x80000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , kmsda, 0x20c07391, 0xffffffff, 0x82474f25, 220); 
TEST_RR_OP( 56 , kmsda, 0x20c07391, 0x80000000, 0x00000000, 224); 
TEST_RR_OP( 57 , kmsda, 0x20c07391, 0x00000000, 0x80000000, 228); 
TEST_RR_OP( 58 , kmsda, 0x20c07391, 0x00000000, 0x80000000, 232); 
TEST_RR_OP( 59 , kmsda, 0xe0c07391, 0x80000000, 0x80000000, 236); 
TEST_RR_OP( 60 , kmsda, 0xe0c07391, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kmsda, 0xe0bfadf7, 0x82c9b79d, 0xffffffff, 244); 
TEST_RR_OP( 62 , kmsda, 0xe0bfadf7, 0xffffffff, 0x00000000, 248); 
TEST_RR_OP( 63 , kmsda, 0xe0bfadf7, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , kmsda, 0xe0bfadf7, 0x00000000, 0x80000000, 256); 
TEST_RR_OP( 65 , kmsda, 0xe0bf2df7, 0xffffffff, 0x80000000, 260); 
TEST_RR_OP( 66 , kmsda, 0xe0bf344a, 0x598dacc6, 0xffffffff, 264); 
TEST_RR_OP( 67 , kmsda, 0xda3b344a, 0x80000000, 0xf2f825e9, 268); 
TEST_RR_OP( 68 , kmsda, 0xda3b3907, 0xffffffff, 0x2324e199, 272); 
TEST_RR_OP( 69 , kmsda, 0xda3b3907, 0xffffffff, 0x00000000, 276); 
TEST_RR_OP( 70 , kmsda, 0xda3b3907, 0x00000000, 0x00000000, 280); 
TEST_RR_OP( 71 , kmsda, 0xda3b3907, 0x00000000, 0xffffffff, 284); 
TEST_RR_OP( 72 , kmsda, 0x9a3b3907, 0x80000000, 0x80000000, 288); 
TEST_RR_OP( 73 , kmsda, 0x80000000, 0x80000000, 0x80000000, 292); 
TEST_CASE( 74 ,296, x14, 1, rdov x14;);
TEST_CASE( 75 ,300, x14, 1, clrov;);
TEST_CASE( 76 ,304, x14, 0, rdov x14;);
TEST_RR_OP( 77 , kmsda, 0x0000405b, 0xffffffff, 0xeefc515f, 308); 
TEST_RR_OP( 78 , kmsda, 0x0000405b, 0xffffffff, 0x00000000, 312); 
TEST_RR_OP( 79 , kmsda, 0xffffc05b, 0xffffffff, 0x80000000, 316); 
TEST_RR_OP( 80 , kmsda, 0xffff6006, 0x83e61bc5, 0xffffffff, 320); 
TEST_RR_OP( 81 , kmsda, 0xffff1e23, 0xf278cba5, 0xffffffff, 324); 
TEST_RR_OP( 82 , kmsda, 0xffff1e23, 0x00000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmsda, 0xffff1e23, 0x00000000, 0x12bfa906, 332); 
TEST_RR_OP( 84 , kmsda, 0xfffe9e23, 0xffffffff, 0x80000000, 336); 
TEST_RR_OP( 85 , kmsda, 0xfffe9e23, 0xffffffff, 0x00000000, 340); 
TEST_RR_OP( 86 , kmsda, 0xfffe9e23, 0x00000000, 0x00000000, 344); 
TEST_RR_OP( 87 , kmsda, 0xfffe9e23, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , kmsda, 0xfffe6366, 0x99b82b8b, 0xffffffff, 352); 
TEST_RR_OP( 89 , kmsda, 0xfffde366, 0xffffffff, 0x80000000, 356); 
TEST_RR_OP( 90 , kmsda, 0xfffd8170, 0xffffffff, 0xd935c4d5, 360); 
TEST_RR_OP( 91 , kmsda, 0xfffd0170, 0x80000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , kmsda, 0xd9518170, 0xb2a997ac, 0x80000000, 368); 
TEST_RR_OP( 93 , kmsda, 0x99518170, 0x80000000, 0x80000000, 372); 
TEST_RR_OP( 94 , kmsda, 0x981bcf91, 0x0066d2b9, 0x7a87fa3d, 376); 
TEST_RR_OP( 95 , kmsda, 0x981bcf91, 0x00000000, 0x00000000, 380); 
TEST_RR_OP( 96 , kmsda, 0x981bcf91, 0x80000000, 0x00000000, 384); 
TEST_RR_OP( 97 , kmsda, 0x981b0501, 0x9b7599fb, 0xffffffff, 388); 
TEST_RR_OP( 98 , kmsda, 0xc13a8501, 0x80000000, 0x523f8f2c, 392); 
TEST_RR_OP( 99 , kmsda, 0xc13a0501, 0x80000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , kmsda, 0xc13a0501, 0xf60e1893, 0x00000000, 400); 
TEST_RR_OP( 101 , kmsda, 0xe9180501, 0x80000000, 0x4fbcdb04, 404); 
TEST_RR_OP( 102 , kmsda, 0xe9180501, 0xffffffff, 0x00000000, 408); 
TEST_RR_OP( 103 , kmsda, 0xe91804ff, 0xffffffff, 0xffffffff, 412); 
TEST_RR_OP( 104 , kmsda, 0xe91804ff, 0x00000000, 0x2c87a4d9, 416); 
TEST_RR_OP( 105 , kmsda, 0xe91804ff, 0x00000000, 0x80000000, 420); 
TEST_RR_OP( 106 , kmsda, 0xe6b2d46e, 0xe10a8c5b, 0xf32ffe21, 424); 
TEST_RR_OP( 107 , kmsda, 0xe6b2df64, 0xffffffff, 0xeb8b1f6b, 428); 
TEST_RR_OP( 108 , kmsda, 0xe6b2df62, 0xffffffff, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmsda, 0xe6b23d48, 0xffffffff, 0x9aeac2fc, 436); 
TEST_RR_OP( 110 , kmsda, 0xe6b1bd48, 0x80000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , kmsda, 0xfd0742e0, 0xb21b1d86, 0x4fa0106c, 444); 
TEST_RR_OP( 112 , kmsda, 0xbd0742e0, 0x80000000, 0x80000000, 448); 
TEST_RR_OP( 113 , kmsda, 0xbd0742e0, 0x00000000, 0x00000000, 452); 
TEST_RR_OP( 114 , kmsda, 0xbd0742e0, 0x00000000, 0x00000000, 456); 
TEST_RR_OP( 115 , kmsda, 0xbd070cb6, 0xffffffff, 0xdc11edc5, 460); 
TEST_RR_OP( 116 , kmsda, 0xbd070cb6, 0x00000000, 0x00000000, 464); 
TEST_RR_OP( 117 , kmsda, 0xbd070cb6, 0xac6b8d80, 0x00000000, 468); 
TEST_RR_OP( 118 , kmsda, 0xbd068cb6, 0x80000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmsda, 0xbd068cb6, 0x00000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , kmsda, 0xd2590cb6, 0x80000000, 0x2aa52fd8, 480); 
TEST_RR_OP( 121 , kmsda, 0xd258fc6a, 0x81046eb0, 0xffffffff, 484); 
TEST_RR_OP( 122 , kmsda, 0xd258fc6a, 0x00000000, 0x00000000, 488); 
TEST_RR_OP( 123 , kmsda, 0xd258fc6a, 0x80000000, 0x00000000, 492); 
TEST_RR_OP( 124 , kmsda, 0xa4fa7c6a, 0x80000000, 0xa54324fe, 496); 
TEST_RR_OP( 125 , kmsda, 0xa4f9fc6a, 0xffffffff, 0x80000000, 500); 
TEST_RR_OP( 126 , kmsda, 0xa4f9fc6a, 0x00000000, 0x80000000, 504); 
TEST_RR_OP( 127 , kmsda, 0xa4f9fc6a, 0x00000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmsda, 0xa4f9fc68, 0xffffffff, 0xffffffff, 512); 
TEST_RR_OP( 129 , kmsda, 0x80000000, 0x80000000, 0x80000000, 516); 
TEST_CASE( 130 ,520, x14, 1, rdov x14;);
TEST_CASE( 131 ,524, x14, 1, clrov;);
TEST_CASE( 132 ,528, x14, 0, rdov x14;);
TEST_RR_OP( 133 , kmsda, 0x00000000, 0x00000000, 0x6feace18, 532); 
TEST_RR_OP( 134 , kmsda, 0xfc6536f0, 0xfba03ad0, 0xf6ab0eff, 536); 
TEST_RR_OP( 135 , kmsda, 0xcba4b6f0, 0x80000000, 0x9e7fea5a, 540); 
TEST_RR_OP( 136 , kmsda, 0xcba4b6f0, 0x3f73bc12, 0x00000000, 544); 
TEST_RR_OP( 137 , kmsda, 0xcba436f0, 0x80000000, 0xffffffff, 548); 
TEST_RR_OP( 138 , kmsda, 0xcba436f0, 0x00000000, 0x80000000, 552); 
TEST_RR_OP( 139 , kmsda, 0xcba436f0, 0x00000000, 0x80000000, 556); 
TEST_RR_OP( 140 , kmsda, 0xcba3b6f0, 0x80000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , kmsda, 0xebd3e21d, 0x3387e8eb, 0x8ff56ae0, 564); 
TEST_RR_OP( 142 , kmsda, 0xebd3d07c, 0x8dd2608d, 0xffffffff, 568); 
TEST_RR_OP( 143 , kmsda, 0xf1369298, 0x0922f713, 0x845e1bf8, 572); 
TEST_RR_OP( 144 , kmsda, 0xf1369298, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kmsda, 0xf136e86e, 0xffffffff, 0xe7d86dfe, 580); 
TEST_RR_OP( 146 , kmsda, 0xf1375d5e, 0xffffffff, 0x759aff56, 584); 
TEST_RR_OP( 147 , kmsda, 0x0b4add5e, 0x80000000, 0x3427c5e2, 588); 
TEST_RR_OP( 148 , kmsda, 0x1b02dd5e, 0x80000000, 0x1f70ad0a, 592); 
TEST_RR_OP( 149 , kmsda, 0x1b025d5e, 0x80000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , kmsda, 0xdb025d5e, 0x80000000, 0x80000000, 600); 
TEST_RR_OP( 151 , kmsda, 0xdb025d5e, 0x1d6c82c3, 0x00000000, 604); 
TEST_RR_OP( 152 , kmsda, 0xdb01dd5e, 0xffffffff, 0x80000000, 608); 
TEST_RR_OP( 153 , kmsda, 0xdb01dd5e, 0x571244c5, 0x00000000, 612); 
TEST_RR_OP( 154 , kmsda, 0x9b01dd5e, 0x80000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmsda, 0x9b01dd5e, 0x00000000, 0x80000000, 620); 
TEST_RR_OP( 156 , kmsda, 0x9b015d5e, 0x80000000, 0xffffffff, 624); 
TEST_RR_OP( 157 , kmsda, 0x80000000, 0x80000000, 0x80000000, 628); 
TEST_CASE( 158 ,632, x14, 1, rdov x14;);
TEST_CASE( 159 ,636, x14, 1, clrov;);
TEST_CASE( 160 ,640, x14, 0, rdov x14;);
TEST_RR_OP( 161 , kmsda, 0x2fe28000, 0x80000000, 0x5fc5c499, 644); 
TEST_RR_OP( 162 , kmsda, 0x2fe28000, 0x00000000, 0x80000000, 648); 
TEST_RR_OP( 163 , kmsda, 0x2fe20000, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , kmsda, 0x2fe20000, 0x80000000, 0x00000000, 656); 
TEST_RR_OP( 165 , kmsda, 0x2fe20000, 0x00000000, 0xd7c5034c, 660); 
TEST_RR_OP( 166 , kmsda, 0x2fe1fffe, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , kmsda, 0x2fe1fffc, 0xffffffff, 0xffffffff, 668); 
TEST_RR_OP( 168 , kmsda, 0xefe1fffc, 0x80000000, 0x80000000, 672); 
TEST_RR_OP( 169 , kmsda, 0xcb12fffc, 0xb6622fb7, 0x80000000, 676); 
TEST_RR_OP( 170 , kmsda, 0xcb129164, 0xa2d4ee94, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmsda, 0xcb129164, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , kmsda, 0xce951164, 0x80000000, 0x0705ec1e, 688); 
TEST_RR_OP( 173 , kmsda, 0xbffdcdc1, 0x8471894e, 0x2e9bb004, 692); 
TEST_RR_OP( 174 , kmsda, 0xbffdddb2, 0xffffffff, 0x7f0190f0, 696); 
TEST_RR_OP( 175 , kmsda, 0xb9a8cfd3, 0x056bede9, 0x79fecaed, 700); 
TEST_RR_OP( 176 , kmsda, 0xb9a84fd3, 0xffffffff, 0x80000000, 704); 
TEST_RR_OP( 177 , kmsda, 0xb9a7cfd3, 0xffffffff, 0x80000000, 708); 
TEST_RR_OP( 178 , kmsda, 0xb9a73906, 0xd32f9604, 0xffffffff, 712); 
TEST_RR_OP( 179 , kmsda, 0x80000000, 0x80000000, 0x80000000, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , kmsda, 0xffff8000, 0xffffffff, 0x80000000, 732); 
TEST_RR_OP( 184 , kmsda, 0xffff8000, 0x49437224, 0x00000000, 736); 
TEST_RR_OP( 185 , kmsda, 0xffff0000, 0x80000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , kmsda, 0xbfff0000, 0x80000000, 0x80000000, 744); 
TEST_RR_OP( 187 , kmsda, 0xbfff0000, 0xe84d8424, 0x00000000, 748); 
TEST_RR_OP( 188 , kmsda, 0xbffe8000, 0xffffffff, 0x80000000, 752); 
TEST_RR_OP( 189 , kmsda, 0xbffe8000, 0x00000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , kmsda, 0xc0ac4f73, 0xb947a443, 0x6e53acd8, 760); 
TEST_RR_OP( 191 , kmsda, 0x80000000, 0xa68e7719, 0x8d144f06, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , kmsda, 0x00000000, 0x00000000, 0x5edef113, 780); 
TEST_RR_OP( 196 , kmsda, 0x3b498000, 0x80000000, 0x7693d4d7, 784); 
TEST_RR_OP( 197 , kmsda, 0x3b48d364, 0x934ac01a, 0xffffffff, 788); 
TEST_RR_OP( 198 , kmsda, 0x3b48d364, 0x00000000, 0x80000000, 792); 
TEST_RR_OP( 199 , kmsda, 0x3b48990c, 0xffffffff, 0x03a6c202, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# kmmac.S
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

TEST_RR_OP( 2 , kmmac, 0x00000000, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmmac, 0x2168c6a2, 0x9648c4f3, 0xaf18b2e2, 12); 
TEST_RR_OP( 4 , kmmac, 0x2168c6a2, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , kmmac, 0x2168c6a2, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , kmmac, 0x2168c6a2, 0x80000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , kmmac, 0x2168c6a2, 0xffffffff, 0xffffffff, 28); 
TEST_RR_OP( 8 , kmmac, 0x2168c6a2, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , kmmac, 0x2168c6a2, 0xd220d140, 0x00000000, 36); 
TEST_RR_OP( 10 , kmmac, 0x2168c6a2, 0xa83f277b, 0x00000000, 40); 
TEST_RR_OP( 11 , kmmac, 0x2168c6a2, 0xd682bee2, 0x00000000, 44); 
TEST_RR_OP( 12 , kmmac, 0x2168c6a2, 0x00000000, 0x2e38758a, 48); 
TEST_RR_OP( 13 , kmmac, 0x2168c6a2, 0x80000000, 0x00000000, 52); 
TEST_RR_OP( 14 , kmmac, 0x2168c6a2, 0x80000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , kmmac, 0x2168c6a2, 0x00000000, 0x1caf950e, 60); 
TEST_RR_OP( 16 , kmmac, 0x2168c6a2, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmmac, 0x2168c6a2, 0x00000000, 0x90ce9c89, 68); 
TEST_RR_OP( 18 , kmmac, 0x2168c6a1, 0x75a8eb27, 0xffffffff, 72); 
TEST_RR_OP( 19 , kmmac, 0x2168c6a1, 0xffffffff, 0x80000000, 76); 
TEST_RR_OP( 20 , kmmac, 0x2168c6a1, 0x00000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , kmmac, 0x2168c6a1, 0xffffffff, 0x00000000, 84); 
TEST_RR_OP( 22 , kmmac, 0x2168c6a1, 0xffffffff, 0x80000000, 88); 
TEST_RR_OP( 23 , kmmac, 0x2168c6a1, 0x00000000, 0xbd599d71, 92); 
TEST_RR_OP( 24 , kmmac, 0x2168c6a1, 0x00000000, 0x00000000, 96); 
TEST_RR_OP( 25 , kmmac, 0x2168c6a1, 0xffffffff, 0x00000000, 100); 
TEST_RR_OP( 26 , kmmac, 0xf5a231ff, 0x7cf9df33, 0xa65486e2, 104); 
TEST_RR_OP( 27 , kmmac, 0xefad26d7, 0x89802f56, 0x0cdea104, 108); 
TEST_RR_OP( 28 , kmmac, 0xefad26d7, 0x00000000, 0x00000000, 112); 
TEST_RR_OP( 29 , kmmac, 0xefad26d7, 0x00000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kmmac, 0xc2a9e265, 0x80000000, 0x5a0688e4, 120); 
TEST_RR_OP( 31 , kmmac, 0xe5dfe232, 0x751357fc, 0x4cfe358c, 124); 
TEST_RR_OP( 32 , kmmac, 0xe5dfe232, 0xffffffff, 0xffffffff, 128); 
TEST_RR_OP( 33 , kmmac, 0xe5dfe232, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmmac, 0x25dfe232, 0x80000000, 0x80000000, 136); 
TEST_RR_OP( 35 , kmmac, 0x0b3ab7a9, 0x80000000, 0x354a5511, 140); 
TEST_RR_OP( 36 , kmmac, 0x0b3ab7a9, 0x80000000, 0x00000000, 144); 
TEST_RR_OP( 37 , kmmac, 0x4b3ab7a9, 0x80000000, 0x80000000, 148); 
TEST_RR_OP( 38 , kmmac, 0x4b3ab7a8, 0xffffffff, 0x4bcdfd42, 152); 
TEST_RR_OP( 39 , kmmac, 0x7fffffff, 0x80000000, 0x80000000, 156); 
TEST_CASE( 40 ,160, x14, 1, rdov x14;);
TEST_CASE( 41 ,164, x14, 1, clrov;);
TEST_CASE( 42 ,168, x14, 0, rdov x14;);
TEST_RR_OP( 43 , kmmac, 0x00000000, 0xffffffff, 0x9362109a, 172); 
TEST_RR_OP( 44 , kmmac, 0x00000000, 0x00000000, 0x0bcfcb7e, 176); 
TEST_RR_OP( 45 , kmmac, 0x00000000, 0x00000000, 0x00000000, 180); 
TEST_RR_OP( 46 , kmmac, 0xffffffff, 0xffffffff, 0x19f65135, 184); 
TEST_RR_OP( 47 , kmmac, 0xffffffff, 0x80000000, 0xffffffff, 188); 
TEST_RR_OP( 48 , kmmac, 0xffffffff, 0x80000000, 0x00000000, 192); 
TEST_RR_OP( 49 , kmmac, 0xfffffffe, 0xffffffff, 0x09a1324e, 196); 
TEST_RR_OP( 50 , kmmac, 0xfffffffe, 0xffffffff, 0x80000000, 200); 
TEST_RR_OP( 51 , kmmac, 0xfffffffe, 0xebb4d549, 0xffffffff, 204); 
TEST_RR_OP( 52 , kmmac, 0xfffffffe, 0x00000000, 0x80000000, 208); 
TEST_RR_OP( 53 , kmmac, 0xfffffffe, 0x00000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , kmmac, 0xe0cc6527, 0x80000000, 0x3e6735ae, 216); 
TEST_RR_OP( 55 , kmmac, 0xe0cc6527, 0x00000000, 0x38932c38, 220); 
TEST_RR_OP( 56 , kmmac, 0xe5744e08, 0x0c45c09c, 0x611edfb9, 224); 
TEST_RR_OP( 57 , kmmac, 0x25744e08, 0x80000000, 0x80000000, 228); 
TEST_RR_OP( 58 , kmmac, 0xfd12beb8, 0x80000000, 0x50c31e9f, 232); 
TEST_RR_OP( 59 , kmmac, 0xfd12beb7, 0xffffffff, 0x76a25c9c, 236); 
TEST_RR_OP( 60 , kmmac, 0xfd12beb7, 0x00000000, 0x00000000, 240); 
TEST_RR_OP( 61 , kmmac, 0xfd12beb7, 0x00000000, 0x00000000, 244); 
TEST_RR_OP( 62 , kmmac, 0xfd12beb7, 0x00000000, 0x00000000, 248); 
TEST_RR_OP( 63 , kmmac, 0xfd12beb7, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , kmmac, 0xfd12beb7, 0x00000000, 0x80000000, 256); 
TEST_RR_OP( 65 , kmmac, 0x3d12beb7, 0x80000000, 0x80000000, 260); 
TEST_RR_OP( 66 , kmmac, 0x3d12beb7, 0x00000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , kmmac, 0x3d12beb7, 0xffffffff, 0x80000000, 268); 
TEST_RR_OP( 68 , kmmac, 0x6473f341, 0x80000000, 0xb13d96eb, 272); 
TEST_RR_OP( 69 , kmmac, 0x6473f341, 0xffffffff, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmmac, 0x6473f341, 0xffffffff, 0x00000000, 280); 
TEST_RR_OP( 71 , kmmac, 0x6473f341, 0x00000000, 0x00000000, 284); 
TEST_RR_OP( 72 , kmmac, 0x5bb3c031, 0x80000000, 0x1180661f, 288); 
TEST_RR_OP( 73 , kmmac, 0x42ba81f7, 0x31f27c73, 0x80000000, 292); 
TEST_RR_OP( 74 , kmmac, 0x42ba81f7, 0x00000000, 0x00000000, 296); 
TEST_RR_OP( 75 , kmmac, 0x42ba81f7, 0xffffffff, 0x00000000, 300); 
TEST_RR_OP( 76 , kmmac, 0x7fffffff, 0x80000000, 0x80000000, 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_RR_OP( 80 , kmmac, 0x00000000, 0x80000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , kmmac, 0x00000000, 0x3fadff60, 0x00000000, 324); 
TEST_RR_OP( 82 , kmmac, 0x00000000, 0x00000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmmac, 0x00000000, 0x00000000, 0x80000000, 332); 
TEST_RR_OP( 84 , kmmac, 0x00000000, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , kmmac, 0x00000000, 0xffffffff, 0x80000000, 340); 
TEST_RR_OP( 86 , kmmac, 0xfcd3fdea, 0x0aac726f, 0xb3ec8091, 344); 
TEST_RR_OP( 87 , kmmac, 0xdce188a0, 0x80000000, 0x3fe4ea93, 348); 
TEST_RR_OP( 88 , kmmac, 0xdce188a0, 0xffffffff, 0x80000000, 352); 
TEST_RR_OP( 89 , kmmac, 0xdce1889f, 0xffffffff, 0x046f1ff3, 356); 
TEST_RR_OP( 90 , kmmac, 0xcd0205ba, 0x80000000, 0x1fbf05ca, 360); 
TEST_RR_OP( 91 , kmmac, 0xcd0205ba, 0x00000000, 0x5c93191d, 364); 
TEST_RR_OP( 92 , kmmac, 0xcd0205ba, 0x00000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , kmmac, 0xcd0205ba, 0x00000000, 0x00000000, 372); 
TEST_RR_OP( 94 , kmmac, 0xcd0205ba, 0xf4ba22bd, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmmac, 0xcd0205ba, 0x00000000, 0xffffffff, 380); 
TEST_RR_OP( 96 , kmmac, 0xcd0205ba, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmmac, 0xcd0205ba, 0x80000000, 0xffffffff, 388); 
TEST_RR_OP( 98 , kmmac, 0xcd0205ba, 0x00000000, 0x80000000, 392); 
TEST_RR_OP( 99 , kmmac, 0xcd0205ba, 0x80000000, 0x00000000, 396); 
TEST_RR_OP( 100 , kmmac, 0xcd0205ba, 0x00000000, 0x00000000, 400); 
TEST_RR_OP( 101 , kmmac, 0xcd0205ba, 0xffffffff, 0xe8ddc9fc, 404); 
TEST_RR_OP( 102 , kmmac, 0xcd0205ba, 0xce6f2c5c, 0x00000000, 408); 
TEST_RR_OP( 103 , kmmac, 0xcd0205ba, 0x00000000, 0xd001ec53, 412); 
TEST_RR_OP( 104 , kmmac, 0xceb3d2be, 0x80000000, 0xfc9c65f8, 416); 
TEST_RR_OP( 105 , kmmac, 0xceb3d2be, 0x6ef23887, 0x00000000, 420); 
TEST_RR_OP( 106 , kmmac, 0xceb3d2be, 0x00000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , kmmac, 0x0eb3d2be, 0x80000000, 0x80000000, 428); 
TEST_RR_OP( 108 , kmmac, 0x0eb3d2be, 0xe62677a7, 0x00000000, 432); 
TEST_RR_OP( 109 , kmmac, 0x0eb3d2be, 0x80356d25, 0xffffffff, 436); 
TEST_RR_OP( 110 , kmmac, 0x0eb3d2be, 0xffffffff, 0x80000000, 440); 
TEST_RR_OP( 111 , kmmac, 0x0eb3d2be, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , kmmac, 0x0eb3d2be, 0xffffffff, 0xc1134d17, 448); 
TEST_RR_OP( 113 , kmmac, 0xe309d906, 0x80000000, 0x5753f370, 452); 
TEST_RR_OP( 114 , kmmac, 0xe309d906, 0x00000000, 0xed59a055, 456); 
TEST_RR_OP( 115 , kmmac, 0xe309d906, 0x00000000, 0x00000000, 460); 
TEST_RR_OP( 116 , kmmac, 0xe309d906, 0x00000000, 0x80000000, 464); 
TEST_RR_OP( 117 , kmmac, 0xe309d906, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kmmac, 0xe309d906, 0x00000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmmac, 0xe309d906, 0xffffffff, 0x80000000, 476); 
TEST_RR_OP( 120 , kmmac, 0xe309d906, 0x00000000, 0x80000000, 480); 
TEST_RR_OP( 121 , kmmac, 0x00702599, 0xc53366da, 0x80000000, 484); 
TEST_RR_OP( 122 , kmmac, 0x00702599, 0x00000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , kmmac, 0x3e031f27, 0x80000000, 0x84da0ce4, 492); 
TEST_RR_OP( 124 , kmmac, 0xfef05e88, 0x7e25813e, 0x80000000, 496); 
TEST_RR_OP( 125 , kmmac, 0xfef05e88, 0x00000000, 0x79985326, 500); 
TEST_RR_OP( 126 , kmmac, 0xfef05e88, 0x8828ad94, 0x00000000, 504); 
TEST_RR_OP( 127 , kmmac, 0xfef05e88, 0xffffffff, 0xf081f9c3, 508); 
TEST_RR_OP( 128 , kmmac, 0xfef05e88, 0xffffffff, 0x00000000, 512); 
TEST_RR_OP( 129 , kmmac, 0xf48e5a5b, 0x151c9f70, 0x82191e5e, 516); 
TEST_RR_OP( 130 , kmmac, 0xf48e5a5b, 0x00000000, 0x00000000, 520); 
TEST_RR_OP( 131 , kmmac, 0x184315f0, 0x80000000, 0xb89688d5, 524); 
TEST_RR_OP( 132 , kmmac, 0x184315f0, 0xffffffff, 0x96dec138, 528); 
TEST_RR_OP( 133 , kmmac, 0x184315ef, 0xffffffff, 0x0fe8bb4b, 532); 
TEST_RR_OP( 134 , kmmac, 0x184315ef, 0xa139a8ef, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmmac, 0x584315ef, 0x80000000, 0x80000000, 540); 
TEST_RR_OP( 136 , kmmac, 0x584315ef, 0x00000000, 0x7be2ec4a, 544); 
TEST_RR_OP( 137 , kmmac, 0x584315ef, 0xffffffff, 0x00000000, 548); 
TEST_RR_OP( 138 , kmmac, 0x5ed1cc1d, 0x9f9f59df, 0xee94f8b0, 552); 
TEST_RR_OP( 139 , kmmac, 0x62574f1d, 0xd9556b42, 0xe8af51ac, 556); 
TEST_RR_OP( 140 , kmmac, 0x7fffffff, 0x80000000, 0x80000000, 560); 
TEST_CASE( 141 ,564, x14, 1, rdov x14;);
TEST_CASE( 142 ,568, x14, 1, clrov;);
TEST_CASE( 143 ,572, x14, 0, rdov x14;);
TEST_RR_OP( 144 , kmmac, 0x00000000, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kmmac, 0x40000000, 0x80000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kmmac, 0x3fffffff, 0x6aea018f, 0xffffffff, 584); 
TEST_RR_OP( 147 , kmmac, 0x7fffffff, 0x80000000, 0x80000000, 588); 
TEST_RR_OP( 148 , kmmac, 0x7fffffff, 0xffffffff, 0xffffffff, 592); 
TEST_RR_OP( 149 , kmmac, 0x7fffffff, 0x00000000, 0x35321fb6, 596); 
TEST_RR_OP( 150 , kmmac, 0x7fffffff, 0xffffffff, 0xffffffff, 600); 
TEST_RR_OP( 151 , kmmac, 0x7fffffff, 0xffffffff, 0xffffffff, 604); 
TEST_RR_OP( 152 , kmmac, 0x7fffffff, 0x00000000, 0x80000000, 608); 
TEST_RR_OP( 153 , kmmac, 0x7fffffff, 0xb9f37f94, 0x00000000, 612); 
TEST_RR_OP( 154 , kmmac, 0x7fffffff, 0x6db760ea, 0x4b261a2c, 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_RR_OP( 158 , kmmac, 0x30c6ea1b, 0x80000000, 0x9e722bc9, 632); 
TEST_RR_OP( 159 , kmmac, 0x30c6ea1b, 0x00000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmmac, 0x30c6ea1b, 0x00000000, 0x00000000, 640); 
TEST_RR_OP( 161 , kmmac, 0x30c6ea1b, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , kmmac, 0x44aaaeba, 0x949a5e61, 0xd096db9d, 648); 
TEST_RR_OP( 163 , kmmac, 0x44aaaeba, 0x0aee253d, 0x00000000, 652); 
TEST_RR_OP( 164 , kmmac, 0x7fffffff, 0x80000000, 0x80000000, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , kmmac, 0x27d55182, 0xb0555cfc, 0x80000000, 672); 
TEST_RR_OP( 169 , kmmac, 0x27d55182, 0x00000000, 0x4df9c77d, 676); 
TEST_RR_OP( 170 , kmmac, 0x27d55181, 0x4074030b, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmmac, 0x10178ab3, 0x80000000, 0x2f7b8d9c, 684); 
TEST_RR_OP( 172 , kmmac, 0x10178ab3, 0x8782da2d, 0x00000000, 688); 
TEST_RR_OP( 173 , kmmac, 0x440fb72f, 0x980fa708, 0x80000000, 692); 
TEST_RR_OP( 174 , kmmac, 0x440fb72f, 0x00000000, 0x01e5dbfe, 696); 
TEST_RR_OP( 175 , kmmac, 0x440fb72f, 0x80000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , kmmac, 0x440fb72f, 0x00000000, 0xffffffff, 704); 
TEST_RR_OP( 177 , kmmac, 0x440fb72f, 0x80000000, 0x00000000, 708); 
TEST_RR_OP( 178 , kmmac, 0x726cf9ed, 0xa3457a83, 0x80000000, 712); 
TEST_RR_OP( 179 , kmmac, 0x726cf9ec, 0xffffffff, 0x182564fd, 716); 
TEST_RR_OP( 180 , kmmac, 0x726cf9ec, 0xffffffff, 0x80000000, 720); 
TEST_RR_OP( 181 , kmmac, 0x726cf9ec, 0x00000000, 0x055209b3, 724); 
TEST_RR_OP( 182 , kmmac, 0x726cf9ec, 0xffffffff, 0xaa9d6571, 728); 
TEST_RR_OP( 183 , kmmac, 0x726cf9ec, 0xffffffff, 0x00000000, 732); 
TEST_RR_OP( 184 , kmmac, 0x726cf9ec, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kmmac, 0x71c4459d, 0x0151689d, 0x80000000, 740); 
TEST_RR_OP( 186 , kmmac, 0x71c4459d, 0xffffffff, 0x00000000, 744); 
TEST_RR_OP( 187 , kmmac, 0x71c4459d, 0x2d93b08d, 0x00000000, 748); 
TEST_RR_OP( 188 , kmmac, 0x71c4459d, 0x00000000, 0x3d925821, 752); 
TEST_RR_OP( 189 , kmmac, 0x71c4459d, 0xffffffff, 0x00000000, 756); 
TEST_RR_OP( 190 , kmmac, 0x71c4459c, 0xffffffff, 0x585e431c, 760); 
TEST_RR_OP( 191 , kmmac, 0x4920f2ba, 0x77d38f96, 0xa92e174a, 764); 
TEST_RR_OP( 192 , kmmac, 0x4920f2ba, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , kmmac, 0x4920f2b9, 0x33bfc13a, 0xffffffff, 772); 
TEST_RR_OP( 194 , kmmac, 0x4920f2b9, 0x00000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmmac, 0x4920f2b9, 0xffffffff, 0x8dce1dd8, 780); 
TEST_RR_OP( 196 , kmmac, 0x4920f2b9, 0xffffffff, 0x80000000, 784); 
TEST_RR_OP( 197 , kmmac, 0x4920f2b8, 0xffffffff, 0x3e448a82, 788); 
TEST_RR_OP( 198 , kmmac, 0x4920f2b8, 0x00000000, 0x00000000, 792); 
TEST_RR_OP( 199 , kmmac, 0x4920f2b8, 0x00000000, 0xc33d97ae, 796); 

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
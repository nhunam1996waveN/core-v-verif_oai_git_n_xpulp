# See LICENSE for license details.
#*****************************************************************************
# smmul.S
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

TEST_RR_OP( 2 , smmul, 0xffffffff, 0xffffffff, 0x37480a28, 8); 
TEST_RR_OP( 3 , smmul, 0x00000000, 0x00000000, 0xdbceba06, 12); 
TEST_RR_OP( 4 , smmul, 0x00000000, 0x00000000, 0xfd9c927a, 16); 
TEST_RR_OP( 5 , smmul, 0x40000000, 0x80000000, 0x80000000, 20); 
TEST_RR_OP( 6 , smmul, 0x00000000, 0x00000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , smmul, 0x00000000, 0x3729b694, 0x00000000, 28); 
TEST_RR_OP( 8 , smmul, 0x00000000, 0x80000000, 0x00000000, 32); 
TEST_RR_OP( 9 , smmul, 0xea693129, 0x2b2d9dad, 0x80000000, 36); 
TEST_RR_OP( 10 , smmul, 0x00000000, 0xffffffff, 0x00000000, 40); 
TEST_RR_OP( 11 , smmul, 0xffffffff, 0xffffffff, 0x07ca1d2e, 44); 
TEST_RR_OP( 12 , smmul, 0x40000000, 0x80000000, 0x80000000, 48); 
TEST_RR_OP( 13 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 52); 
TEST_RR_OP( 14 , smmul, 0x00000000, 0x80000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 60); 
TEST_RR_OP( 16 , smmul, 0x13dbb2c4, 0x80000000, 0xd8489a78, 64); 
TEST_RR_OP( 17 , smmul, 0x015cd996, 0xa047b206, 0xfc5b02fc, 68); 
TEST_RR_OP( 18 , smmul, 0x00000000, 0x00000000, 0x00000000, 72); 
TEST_RR_OP( 19 , smmul, 0x00000000, 0x80000000, 0x00000000, 76); 
TEST_RR_OP( 20 , smmul, 0x148161d5, 0x4a94c6d6, 0x46628432, 80); 
TEST_RR_OP( 21 , smmul, 0x00000000, 0xffffffff, 0x80000000, 84); 
TEST_RR_OP( 22 , smmul, 0x0566d0d4, 0x80000000, 0xf5325e58, 88); 
TEST_RR_OP( 23 , smmul, 0xffffffff, 0x03bb811c, 0xffffffff, 92); 
TEST_RR_OP( 24 , smmul, 0x00000000, 0x00000000, 0x80000000, 96); 
TEST_RR_OP( 25 , smmul, 0x00000000, 0x00000000, 0x00000000, 100); 
TEST_RR_OP( 26 , smmul, 0x00000000, 0x00000000, 0x80000000, 104); 
TEST_RR_OP( 27 , smmul, 0x40000000, 0x80000000, 0x80000000, 108); 
TEST_RR_OP( 28 , smmul, 0x40000000, 0x80000000, 0x80000000, 112); 
TEST_RR_OP( 29 , smmul, 0xfaa6d977, 0xf52dc861, 0x7e86791e, 116); 
TEST_RR_OP( 30 , smmul, 0x00000000, 0xffffffff, 0x00000000, 120); 
TEST_RR_OP( 31 , smmul, 0x00000000, 0xffffffff, 0x80000000, 124); 
TEST_RR_OP( 32 , smmul, 0x2d8a5bfe, 0xa4eb4804, 0x80000000, 128); 
TEST_RR_OP( 33 , smmul, 0x00000000, 0x00000000, 0x75a63b31, 132); 
TEST_RR_OP( 34 , smmul, 0x00000000, 0x00000000, 0x00000000, 136); 
TEST_RR_OP( 35 , smmul, 0x00000000, 0xffffffff, 0x00000000, 140); 
TEST_RR_OP( 36 , smmul, 0x0f0c8137, 0xe1e6fd92, 0x80000000, 144); 
TEST_RR_OP( 37 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , smmul, 0xe36ad35c, 0x80000000, 0x392a5948, 152); 
TEST_RR_OP( 39 , smmul, 0x00000000, 0x00000000, 0x80000000, 156); 
TEST_RR_OP( 40 , smmul, 0x00000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , smmul, 0x00000000, 0xd089c87e, 0xffffffff, 164); 
TEST_RR_OP( 42 , smmul, 0xffffffff, 0x5f8bdbb3, 0xffffffff, 168); 
TEST_RR_OP( 43 , smmul, 0x00176b16, 0x80000000, 0xffd129d4, 172); 
TEST_RR_OP( 44 , smmul, 0x00000000, 0x00000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , smmul, 0x00000000, 0x00000000, 0x2bc7fbcd, 180); 
TEST_RR_OP( 46 , smmul, 0x05af0508, 0x2d120f26, 0x20487d4f, 184); 
TEST_RR_OP( 47 , smmul, 0x00000000, 0x80000000, 0x00000000, 188); 
TEST_RR_OP( 48 , smmul, 0x00000000, 0x80000000, 0x00000000, 192); 
TEST_RR_OP( 49 , smmul, 0xd33b29d8, 0x5989ac50, 0x80000000, 196); 
TEST_RR_OP( 50 , smmul, 0x00000000, 0xffffffff, 0x80000000, 200); 
TEST_RR_OP( 51 , smmul, 0x00000000, 0x80000000, 0x00000000, 204); 
TEST_RR_OP( 52 , smmul, 0x40000000, 0x80000000, 0x80000000, 208); 
TEST_RR_OP( 53 , smmul, 0x00000000, 0xffffffff, 0x00000000, 212); 
TEST_RR_OP( 54 , smmul, 0x00000000, 0xffffffff, 0x974c5fc0, 216); 
TEST_RR_OP( 55 , smmul, 0xffffffff, 0x063738e8, 0xffffffff, 220); 
TEST_RR_OP( 56 , smmul, 0x00000000, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , smmul, 0x00000000, 0x80000000, 0xffffffff, 228); 
TEST_RR_OP( 58 , smmul, 0x40000000, 0x80000000, 0x80000000, 232); 
TEST_RR_OP( 59 , smmul, 0x00c76143, 0xfbf87e5c, 0xce848b05, 236); 
TEST_RR_OP( 60 , smmul, 0x00000000, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 244); 
TEST_RR_OP( 62 , smmul, 0xdf1b073a, 0x80de0bb6, 0x423cd924, 248); 
TEST_RR_OP( 63 , smmul, 0x00000000, 0xffffffff, 0xbe0178b1, 252); 
TEST_RR_OP( 64 , smmul, 0x00000000, 0x80000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , smmul, 0x00000000, 0x3e4af760, 0x00000000, 260); 
TEST_RR_OP( 66 , smmul, 0x00000000, 0xc4377a54, 0x00000000, 264); 
TEST_RR_OP( 67 , smmul, 0x004a659c, 0xff47e179, 0x988eeb71, 268); 
TEST_RR_OP( 68 , smmul, 0x00000000, 0x80000000, 0xffffffff, 272); 
TEST_RR_OP( 69 , smmul, 0xebba94b3, 0x2cd8662a, 0x8c482303, 276); 
TEST_RR_OP( 70 , smmul, 0x00000000, 0x80000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , smmul, 0x00000000, 0xffffffff, 0x00000000, 284); 
TEST_RR_OP( 72 , smmul, 0x00000000, 0x80000000, 0xffffffff, 288); 
TEST_RR_OP( 73 , smmul, 0xeba55222, 0xa4443cee, 0x38cd6999, 292); 
TEST_RR_OP( 74 , smmul, 0x2f728c7e, 0x80000000, 0xa11ae703, 296); 
TEST_RR_OP( 75 , smmul, 0x40000000, 0x80000000, 0x80000000, 300); 
TEST_RR_OP( 76 , smmul, 0xffffffff, 0x44bd699f, 0xffffffff, 304); 
TEST_RR_OP( 77 , smmul, 0x00000000, 0xffffffff, 0x80000000, 308); 
TEST_RR_OP( 78 , smmul, 0x00000000, 0xffffffff, 0x00000000, 312); 
TEST_RR_OP( 79 , smmul, 0x0ef62643, 0x80000000, 0xe213b37a, 316); 
TEST_RR_OP( 80 , smmul, 0x00000000, 0xffffffff, 0x80000000, 320); 
TEST_RR_OP( 81 , smmul, 0x00000000, 0x00000000, 0x80000000, 324); 
TEST_RR_OP( 82 , smmul, 0x00000000, 0xffffffff, 0xc10cf158, 328); 
TEST_RR_OP( 83 , smmul, 0x00000000, 0xfb03324f, 0xffffffff, 332); 
TEST_RR_OP( 84 , smmul, 0x10480f33, 0xdf6fe199, 0x80000000, 336); 
TEST_RR_OP( 85 , smmul, 0x00000000, 0x00000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , smmul, 0x40000000, 0x80000000, 0x80000000, 344); 
TEST_RR_OP( 87 , smmul, 0x00000000, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , smmul, 0x00000000, 0x80000000, 0xffffffff, 352); 
TEST_RR_OP( 89 , smmul, 0x40000000, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , smmul, 0x00000000, 0x00000000, 0x00000000, 360); 
TEST_RR_OP( 91 , smmul, 0x00000000, 0x00000000, 0xdc9aec62, 364); 
TEST_RR_OP( 92 , smmul, 0x00000000, 0x00000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , smmul, 0x00000000, 0x4ec2bc8f, 0x00000000, 372); 
TEST_RR_OP( 94 , smmul, 0x00000000, 0x00000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , smmul, 0x0a6a14e5, 0xbc32872e, 0xd8adc4d1, 380); 
TEST_RR_OP( 96 , smmul, 0xe292f5c0, 0x80000000, 0x3ada147f, 384); 
TEST_RR_OP( 97 , smmul, 0x00000000, 0x80000000, 0xffffffff, 388); 
TEST_RR_OP( 98 , smmul, 0x00000000, 0x00000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , smmul, 0x00000000, 0x221f6e56, 0x00000000, 396); 
TEST_RR_OP( 100 , smmul, 0x00000000, 0x80000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , smmul, 0xcc32e824, 0x679a2fb7, 0x80000000, 404); 
TEST_RR_OP( 102 , smmul, 0x40000000, 0x80000000, 0x80000000, 408); 
TEST_RR_OP( 103 , smmul, 0x00000000, 0xffffffff, 0x8f13bb06, 412); 
TEST_RR_OP( 104 , smmul, 0x0c36782b, 0x800bdf9e, 0xe790cb6b, 416); 
TEST_RR_OP( 105 , smmul, 0xf7f4f81e, 0x80000000, 0x10160fc4, 420); 
TEST_RR_OP( 106 , smmul, 0x00000000, 0x00000000, 0x80000000, 424); 
TEST_RR_OP( 107 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 428); 
TEST_RR_OP( 108 , smmul, 0x00000000, 0x80000000, 0x00000000, 432); 
TEST_RR_OP( 109 , smmul, 0xffffffff, 0x5da962a5, 0xffffffff, 436); 
TEST_RR_OP( 110 , smmul, 0x00000000, 0x80000000, 0x00000000, 440); 
TEST_RR_OP( 111 , smmul, 0x00000000, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , smmul, 0x00000000, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , smmul, 0x00000000, 0x80000000, 0x00000000, 452); 
TEST_RR_OP( 114 , smmul, 0xee99fee8, 0xd308044d, 0x630bfb10, 456); 
TEST_RR_OP( 115 , smmul, 0x00000000, 0xffffffff, 0x80000000, 460); 
TEST_RR_OP( 116 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 464); 
TEST_RR_OP( 117 , smmul, 0x00000000, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , smmul, 0x00000000, 0xffffffff, 0x80000000, 472); 
TEST_RR_OP( 119 , smmul, 0xec53ea62, 0xd6f05676, 0x7aa5f7aa, 476); 
TEST_RR_OP( 120 , smmul, 0x00000000, 0x00000000, 0xe5d5947a, 480); 
TEST_RR_OP( 121 , smmul, 0x00000000, 0x00000000, 0x1b92926b, 484); 
TEST_RR_OP( 122 , smmul, 0x33ca22a4, 0x986bbab7, 0x80000000, 488); 
TEST_RR_OP( 123 , smmul, 0x00000000, 0x00000000, 0xcd9598b8, 492); 
TEST_RR_OP( 124 , smmul, 0x01399805, 0x80000000, 0xfd8ccff5, 496); 
TEST_RR_OP( 125 , smmul, 0x00000000, 0x00000000, 0x00000000, 500); 
TEST_RR_OP( 126 , smmul, 0xffffffff, 0xffffffff, 0x5a694622, 504); 
TEST_RR_OP( 127 , smmul, 0x00000000, 0x00000000, 0xb0bb0c2a, 508); 
TEST_RR_OP( 128 , smmul, 0x00000000, 0x00000000, 0x861145ad, 512); 
TEST_RR_OP( 129 , smmul, 0x00000000, 0xace122e6, 0x00000000, 516); 
TEST_RR_OP( 130 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 520); 
TEST_RR_OP( 131 , smmul, 0x00000000, 0x80000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , smmul, 0xffffffff, 0xffffffff, 0x46ce5175, 528); 
TEST_RR_OP( 133 , smmul, 0x00000000, 0xffffffff, 0x00000000, 532); 
TEST_RR_OP( 134 , smmul, 0x00000000, 0x00000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , smmul, 0x40000000, 0x80000000, 0x80000000, 540); 
TEST_RR_OP( 136 , smmul, 0x00000000, 0xe346f7e0, 0x00000000, 544); 
TEST_RR_OP( 137 , smmul, 0x00000000, 0x80000000, 0xffffffff, 548); 
TEST_RR_OP( 138 , smmul, 0x1032af67, 0x23f5f917, 0x734fa807, 552); 
TEST_RR_OP( 139 , smmul, 0x1e8c9c30, 0x80000000, 0xc2e6c7a0, 556); 
TEST_RR_OP( 140 , smmul, 0x00000000, 0xd1710a70, 0x00000000, 560); 
TEST_RR_OP( 141 , smmul, 0x00000000, 0x00000000, 0xffffffff, 564); 
TEST_RR_OP( 142 , smmul, 0x00000000, 0x4111f20e, 0x00000000, 568); 
TEST_RR_OP( 143 , smmul, 0x00000000, 0xc5d986bc, 0x00000000, 572); 
TEST_RR_OP( 144 , smmul, 0x40000000, 0x80000000, 0x80000000, 576); 
TEST_RR_OP( 145 , smmul, 0x00000000, 0x80000000, 0xffffffff, 580); 
TEST_RR_OP( 146 , smmul, 0x00000000, 0x00000000, 0x80000000, 584); 
TEST_RR_OP( 147 , smmul, 0xffffffff, 0x3498b202, 0xffffffff, 588); 
TEST_RR_OP( 148 , smmul, 0x00000000, 0x00000000, 0xffffffff, 592); 
TEST_RR_OP( 149 , smmul, 0x00000000, 0x80000000, 0x00000000, 596); 
TEST_RR_OP( 150 , smmul, 0xffffffff, 0xffffffff, 0x764466eb, 600); 
TEST_RR_OP( 151 , smmul, 0xfb488aa1, 0x80000000, 0x096eeabe, 604); 
TEST_RR_OP( 152 , smmul, 0x40000000, 0x80000000, 0x80000000, 608); 
TEST_RR_OP( 153 , smmul, 0x00000000, 0x00000000, 0x00000000, 612); 
TEST_RR_OP( 154 , smmul, 0x00000000, 0x00000000, 0x28fd03ea, 616); 
TEST_RR_OP( 155 , smmul, 0xffffffff, 0x74851409, 0xffffffff, 620); 
TEST_RR_OP( 156 , smmul, 0x00000000, 0x80000000, 0x00000000, 624); 
TEST_RR_OP( 157 , smmul, 0x00000000, 0x00000000, 0x80000000, 628); 
TEST_RR_OP( 158 , smmul, 0xffffffff, 0x4a947e61, 0xffffffff, 632); 
TEST_RR_OP( 159 , smmul, 0x40000000, 0x80000000, 0x80000000, 636); 
TEST_RR_OP( 160 , smmul, 0x01e46ed2, 0x5af978e4, 0x05532ea6, 640); 
TEST_RR_OP( 161 , smmul, 0x00000000, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , smmul, 0x077a1d4f, 0x520f155d, 0x17537b3a, 648); 
TEST_RR_OP( 163 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 652); 
TEST_RR_OP( 164 , smmul, 0x00000000, 0xc4edad68, 0x00000000, 656); 
TEST_RR_OP( 165 , smmul, 0x00000000, 0x00000000, 0x00000000, 660); 
TEST_RR_OP( 166 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , smmul, 0x00000000, 0xae85dc39, 0xffffffff, 668); 
TEST_RR_OP( 168 , smmul, 0x00000000, 0x794d27ef, 0x00000000, 672); 
TEST_RR_OP( 169 , smmul, 0x00000000, 0xffffffff, 0x00000000, 676); 
TEST_RR_OP( 170 , smmul, 0x00000000, 0xffffffff, 0x00000000, 680); 
TEST_RR_OP( 171 , smmul, 0xf19b4f12, 0x1cc961db, 0x80000000, 684); 
TEST_RR_OP( 172 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 688); 
TEST_RR_OP( 173 , smmul, 0x00000000, 0x00000000, 0x6fa0a526, 692); 
TEST_RR_OP( 174 , smmul, 0x00000000, 0x00000000, 0xa66ebf9c, 696); 
TEST_RR_OP( 175 , smmul, 0x00000000, 0x00000000, 0x00000000, 700); 
TEST_RR_OP( 176 , smmul, 0x00000000, 0x80000000, 0xffffffff, 704); 
TEST_RR_OP( 177 , smmul, 0x1a594867, 0x80000000, 0xcb4d6f31, 708); 
TEST_RR_OP( 178 , smmul, 0xdf597562, 0x80000000, 0x414d153c, 712); 
TEST_RR_OP( 179 , smmul, 0xe2e60b25, 0xa6cfedf6, 0x5387f8ba, 716); 
TEST_RR_OP( 180 , smmul, 0x00000000, 0xffffffff, 0x80000000, 720); 
TEST_RR_OP( 181 , smmul, 0x00000000, 0xffffffff, 0x00000000, 724); 
TEST_RR_OP( 182 , smmul, 0xe53ebd30, 0x9b68da63, 0x441730f7, 728); 
TEST_RR_OP( 183 , smmul, 0x00000000, 0x00000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , smmul, 0x00000000, 0xffffffff, 0xffffffff, 736); 
TEST_RR_OP( 185 , smmul, 0x00000000, 0x00000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , smmul, 0xe32c9014, 0x39a6dfd8, 0x80000000, 744); 
TEST_RR_OP( 187 , smmul, 0x40000000, 0x80000000, 0x80000000, 748); 
TEST_RR_OP( 188 , smmul, 0x40000000, 0x80000000, 0x80000000, 752); 
TEST_RR_OP( 189 , smmul, 0x00000000, 0x00000000, 0x00000000, 756); 
TEST_RR_OP( 190 , smmul, 0xf97d1ed9, 0xf0655f49, 0x6ad2e1c4, 760); 
TEST_RR_OP( 191 , smmul, 0x00000000, 0xa1828f25, 0x00000000, 764); 
TEST_RR_OP( 192 , smmul, 0x00000000, 0x00000000, 0x00000000, 768); 
TEST_RR_OP( 193 , smmul, 0x00000000, 0xffffffff, 0x00000000, 772); 
TEST_RR_OP( 194 , smmul, 0x00000000, 0xffffffff, 0x00000000, 776); 
TEST_RR_OP( 195 , smmul, 0x33f38c54, 0x9818e757, 0x80000000, 780); 
TEST_RR_OP( 196 , smmul, 0x00000000, 0xabe4bbbe, 0x00000000, 784); 
TEST_RR_OP( 197 , smmul, 0x00000000, 0x00000000, 0x00000000, 788); 
TEST_RR_OP( 198 , smmul, 0x00000000, 0x00000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , smmul, 0x00000000, 0xffffffff, 0x00000000, 796); 

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
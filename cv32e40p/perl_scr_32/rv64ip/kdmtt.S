# See LICENSE for license details.
#*****************************************************************************
# kdmtt.S
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

TEST_RR_OP( 2 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 8); 
TEST_RR_OP( 3 , kdmtt, 0x00000000, 0x3cd73c24, 0x00000000, 12); 
TEST_RR_OP( 4 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 16); 
TEST_RR_OP( 5 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 20); 
TEST_RR_OP( 6 , kdmtt, 0x00000000, 0xd6fba275, 0x00000000, 24); 
TEST_RR_OP( 7 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , kdmtt, 0x00000000, 0x00000000, 0xdd3aa934, 32); 
TEST_RR_OP( 9 , kdmtt, 0xfffffffff49f0000, 0x80000000, 0x0b61dd0f, 36); 
TEST_RR_OP( 10 , kdmtt, 0x0000a812, 0xffffffff, 0xabf759b1, 40); 
TEST_RR_OP( 11 , kdmtt, 0x00000000, 0xb834d141, 0x00000000, 44); 
TEST_RR_OP( 12 , kdmtt, 0x00000000, 0x00000000, 0x3872b295, 48); 
TEST_RR_OP( 13 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 52); 
TEST_RR_OP( 14 , kdmtt, 0x00000000, 0x00000000, 0x80000000, 56); 
TEST_RR_OP( 15 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 60); 
TEST_RR_OP( 16 , kdmtt, 0x7fffffff, 0x80000000, 0x80000000, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kdmtt, 0xffffffffffe78c3c, 0x003274a6, 0xc16733b4, 84); 
TEST_RR_OP( 22 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 88); 
TEST_RR_OP( 23 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kdmtt, 0x00000000, 0x00000000, 0x92c99026, 96); 
TEST_RR_OP( 25 , kdmtt, 0x48023948, 0x684edc2b, 0x585e498c, 100); 
TEST_RR_OP( 26 , kdmtt, 0x66ce0000, 0x80000000, 0x99321efd, 104); 
TEST_RR_OP( 27 , kdmtt, 0x095cd9c0, 0xe971b690, 0xcae0b806, 108); 
TEST_RR_OP( 28 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kdmtt, 0x00000000, 0xace4acc0, 0x00000000, 120); 
TEST_RR_OP( 31 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 124); 
TEST_RR_OP( 32 , kdmtt, 0x00000000, 0x00000000, 0x80000000, 128); 
TEST_RR_OP( 33 , kdmtt, 0x00000000, 0x00000000, 0x80000000, 132); 
TEST_RR_OP( 34 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 136); 
TEST_RR_OP( 35 , kdmtt, 0xffffffff9a060000, 0x80000000, 0x65faecc3, 140); 
TEST_RR_OP( 36 , kdmtt, 0x00000000, 0x00000000, 0x88e614f1, 144); 
TEST_RR_OP( 37 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , kdmtt, 0xfffffffff8bd0000, 0x80000000, 0x0743fd6f, 152); 
TEST_RR_OP( 39 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 156); 
TEST_RR_OP( 40 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 164); 
TEST_RR_OP( 42 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , kdmtt, 0x03531072, 0xe6cdc791, 0xef1d74eb, 176); 
TEST_RR_OP( 45 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 180); 
TEST_RR_OP( 46 , kdmtt, 0xffffffffc4afb23a, 0xbc9b04cd, 0x70a77646, 184); 
TEST_RR_OP( 47 , kdmtt, 0x38970000, 0x80000000, 0xc7690dcb, 188); 
TEST_RR_OP( 48 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 192); 
TEST_RR_OP( 49 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , kdmtt, 0xffffffffffff0b0a, 0xffffffff, 0x7a7bd3a3, 200); 
TEST_RR_OP( 51 , kdmtt, 0xffffffffffff531e, 0x56717e59, 0xffffffff, 204); 
TEST_RR_OP( 52 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 208); 
TEST_RR_OP( 53 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 212); 
TEST_RR_OP( 54 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 216); 
TEST_RR_OP( 55 , kdmtt, 0x00000000, 0x9ca3d171, 0x00000000, 220); 
TEST_RR_OP( 56 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , kdmtt, 0xffffffffe5891fd8, 0xe44f4725, 0x7a54aed6, 228); 
TEST_RR_OP( 58 , kdmtt, 0x20a55486, 0x2d734b03, 0x5bf12960, 232); 
TEST_RR_OP( 59 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 236); 
TEST_RR_OP( 60 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 240); 
TEST_RR_OP( 61 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 244); 
TEST_RR_OP( 62 , kdmtt, 0x00000000, 0x00000000, 0xd9dd485a, 248); 
TEST_RR_OP( 63 , kdmtt, 0x29ef8ed0, 0x5343140e, 0x4078af7e, 252); 
TEST_RR_OP( 64 , kdmtt, 0xffffffff8ebe0000, 0x714267b9, 0x80000000, 256); 
TEST_RR_OP( 65 , kdmtt, 0xffffffffffff221c, 0x6ef2b210, 0xffffffff, 260); 
TEST_RR_OP( 66 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 264); 
TEST_RR_OP( 67 , kdmtt, 0x00000000, 0x00000000, 0x80000000, 268); 
TEST_RR_OP( 68 , kdmtt, 0xfffffffffffffc6c, 0xffffffff, 0x01ca049b, 272); 
TEST_RR_OP( 69 , kdmtt, 0x00000000, 0x00000000, 0x15747fcc, 276); 
TEST_RR_OP( 70 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 284); 
TEST_RR_OP( 72 , kdmtt, 0x7fffffff, 0x80000000, 0x80000000, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , kdmtt, 0x00007b4e, 0xc25940e9, 0xffffffff, 304); 
TEST_RR_OP( 77 , kdmtt, 0x30f97d3c, 0x42257fe3, 0x5ec65b94, 308); 
TEST_RR_OP( 78 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 312); 
TEST_RR_OP( 79 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 316); 
TEST_RR_OP( 80 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , kdmtt, 0xffffffffc5251ff8, 0x3eb4cb92, 0x87db5700, 324); 
TEST_RR_OP( 82 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kdmtt, 0x7fffffff, 0x80000000, 0x80000000, 332); 
TEST_CASE( 84 ,336, x14, 1, rdov x14;);
TEST_CASE( 85 ,340, x14, 1, clrov;);
TEST_CASE( 86 ,344, x14, 0, rdov x14;);
TEST_RR_OP( 87 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 348); 
TEST_RR_OP( 88 , kdmtt, 0x000091c0, 0xffffffff, 0xb720a8d9, 352); 
TEST_RR_OP( 89 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 356); 
TEST_RR_OP( 90 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 364); 
TEST_RR_OP( 92 , kdmtt, 0xffffffffd4520000, 0x2bae4681, 0x80000000, 368); 
TEST_RR_OP( 93 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 372); 
TEST_RR_OP( 94 , kdmtt, 0x1a3e0000, 0x80000000, 0xe5c2046a, 376); 
TEST_RR_OP( 95 , kdmtt, 0x00000000, 0x00000000, 0x523344d5, 380); 
TEST_RR_OP( 96 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 384); 
TEST_RR_OP( 97 , kdmtt, 0x0d040000, 0xf2fcd79c, 0x80000000, 388); 
TEST_RR_OP( 98 , kdmtt, 0xfffffffff9610000, 0x069f4a1f, 0x80000000, 392); 
TEST_RR_OP( 99 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 396); 
TEST_RR_OP( 100 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 400); 
TEST_RR_OP( 101 , kdmtt, 0xffffffffaf270000, 0x80000000, 0x50d9bf54, 404); 
TEST_RR_OP( 102 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 408); 
TEST_RR_OP( 103 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 412); 
TEST_RR_OP( 104 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 416); 
TEST_RR_OP( 105 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 420); 
TEST_RR_OP( 106 , kdmtt, 0xffffffff95f50000, 0x6a0b9682, 0x80000000, 424); 
TEST_RR_OP( 107 , kdmtt, 0x0000af9e, 0xffffffff, 0xa831ae82, 428); 
TEST_RR_OP( 108 , kdmtt, 0x0000fdb4, 0xffffffff, 0x8126e825, 432); 
TEST_RR_OP( 109 , kdmtt, 0xffffffffffff8b6c, 0xffffffff, 0x3a4ad555, 436); 
TEST_RR_OP( 110 , kdmtt, 0xffffffffffff815e, 0x3f51b277, 0xffffffff, 440); 
TEST_RR_OP( 111 , kdmtt, 0x000071ca, 0xc71b9240, 0xffffffff, 444); 
TEST_RR_OP( 112 , kdmtt, 0xffffffffffff2294, 0x6eb6dd9e, 0xffffffff, 448); 
TEST_RR_OP( 113 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 452); 
TEST_RR_OP( 114 , kdmtt, 0x26ac0000, 0xd95480af, 0x80000000, 456); 
TEST_RR_OP( 115 , kdmtt, 0x0b10ce78, 0xd92525da, 0xdb8cbafe, 460); 
TEST_RR_OP( 116 , kdmtt, 0x0000b1aa, 0xa72be790, 0xffffffff, 464); 
TEST_RR_OP( 117 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 468); 
TEST_RR_OP( 118 , kdmtt, 0xffffffffb5adf8ac, 0xb4ae68cb, 0x7e4d2208, 472); 
TEST_RR_OP( 119 , kdmtt, 0xfffffffffe9278c0, 0xfe5062ba, 0x6c4ea02f, 476); 
TEST_RR_OP( 120 , kdmtt, 0x267e0000, 0x80000000, 0xd9825895, 480); 
TEST_RR_OP( 121 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 484); 
TEST_RR_OP( 122 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 488); 
TEST_RR_OP( 123 , kdmtt, 0x2ecfb338, 0xbbdc77d2, 0xa811c269, 492); 
TEST_RR_OP( 124 , kdmtt, 0xffffffffcb980000, 0x3468761d, 0x80000000, 496); 
TEST_RR_OP( 125 , kdmtt, 0x00000000, 0x00000000, 0x54b4ae22, 500); 
TEST_RR_OP( 126 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 504); 
TEST_RR_OP( 127 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 508); 
TEST_RR_OP( 128 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 512); 
TEST_RR_OP( 129 , kdmtt, 0x00000000, 0x00000000, 0x80000000, 516); 
TEST_RR_OP( 130 , kdmtt, 0xfffffffff5b69a48, 0xefe2a286, 0x51b28828, 520); 
TEST_RR_OP( 131 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , kdmtt, 0x013edf92, 0xfd335a24, 0xc713eed8, 528); 
TEST_RR_OP( 133 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 532); 
TEST_RR_OP( 134 , kdmtt, 0x00000000, 0x00000000, 0x3401db76, 536); 
TEST_RR_OP( 135 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , kdmtt, 0x58da0000, 0xa7260361, 0x80000000, 544); 
TEST_RR_OP( 137 , kdmtt, 0x7fffffff, 0x80000000, 0x80000000, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_RR_OP( 141 , kdmtt, 0x00000000, 0x00000000, 0x97de095c, 564); 
TEST_RR_OP( 142 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 568); 
TEST_RR_OP( 143 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 572); 
TEST_RR_OP( 144 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 580); 
TEST_RR_OP( 146 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 584); 
TEST_RR_OP( 147 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 588); 
TEST_RR_OP( 148 , kdmtt, 0x0000d72a, 0x946b4e6d, 0xffffffff, 592); 
TEST_RR_OP( 149 , kdmtt, 0x05a40000, 0xfa5cffe3, 0x80000000, 596); 
TEST_RR_OP( 150 , kdmtt, 0x00000000, 0x00000000, 0x00000000, 600); 
TEST_RR_OP( 151 , kdmtt, 0x00000000, 0x79ce1ac7, 0x00000000, 604); 
TEST_RR_OP( 152 , kdmtt, 0x00000000, 0x00000000, 0x5f9002ec, 608); 
TEST_RR_OP( 153 , kdmtt, 0x0117202e, 0xfebd37c7, 0x9163475d, 612); 
TEST_RR_OP( 154 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 616); 
TEST_RR_OP( 155 , kdmtt, 0x00000000, 0x00000000, 0x80000000, 620); 
TEST_RR_OP( 156 , kdmtt, 0xffffffff8fa30000, 0x80000000, 0x705d3741, 624); 
TEST_RR_OP( 157 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 628); 
TEST_RR_OP( 158 , kdmtt, 0x00000000, 0x00000000, 0x80000000, 632); 
TEST_RR_OP( 159 , kdmtt, 0x6b920000, 0x946ecd72, 0x80000000, 636); 
TEST_RR_OP( 160 , kdmtt, 0x0000852e, 0xffffffff, 0xbd69c04d, 640); 
TEST_RR_OP( 161 , kdmtt, 0x7fffffff, 0x80000000, 0x80000000, 644); 
TEST_CASE( 162 ,648, x14, 1, rdov x14;);
TEST_CASE( 163 ,652, x14, 1, clrov;);
TEST_CASE( 164 ,656, x14, 0, rdov x14;);
TEST_RR_OP( 165 , kdmtt, 0x559918f8, 0x7c0ef688, 0x5852eaf2, 660); 
TEST_RR_OP( 166 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 668); 
TEST_RR_OP( 168 , kdmtt, 0x00000000, 0x00000000, 0xafd02587, 672); 
TEST_RR_OP( 169 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 676); 
TEST_RR_OP( 170 , kdmtt, 0x7fffffff, 0x80000000, 0x80000000, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_RR_OP( 174 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 696); 
TEST_RR_OP( 175 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , kdmtt, 0xffffffffffffcab4, 0xffffffff, 0x1aa645d5, 704); 
TEST_RR_OP( 177 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 708); 
TEST_RR_OP( 178 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 712); 
TEST_RR_OP( 179 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 716); 
TEST_RR_OP( 180 , kdmtt, 0x00010000, 0x80000000, 0xffffffff, 720); 
TEST_RR_OP( 181 , kdmtt, 0xffffffffd92a661e, 0x9d517ca2, 0x325f1df0, 724); 
TEST_RR_OP( 182 , kdmtt, 0x00000e36, 0xffffffff, 0xf8e5082a, 728); 
TEST_RR_OP( 183 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 732); 
TEST_RR_OP( 184 , kdmtt, 0xffffffffbb4c0000, 0x44b4e32a, 0x80000000, 736); 
TEST_RR_OP( 185 , kdmtt, 0x00000000, 0x80000000, 0x00000000, 740); 
TEST_RR_OP( 186 , kdmtt, 0x00000000, 0xd068ab4d, 0x00000000, 744); 
TEST_RR_OP( 187 , kdmtt, 0x274a0000, 0xd8b6ee30, 0x80000000, 748); 
TEST_RR_OP( 188 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , kdmtt, 0x00000000, 0xffffffff, 0x00000000, 756); 
TEST_RR_OP( 190 , kdmtt, 0x00000000, 0x00000000, 0xffffffff, 760); 
TEST_RR_OP( 191 , kdmtt, 0x00000000, 0x00000000, 0xbd7e6398, 764); 
TEST_RR_OP( 192 , kdmtt, 0x00000000, 0x00000000, 0x0b9241fc, 768); 
TEST_RR_OP( 193 , kdmtt, 0xffffffffffff1396, 0x7635c10c, 0xffffffff, 772); 
TEST_RR_OP( 194 , kdmtt, 0x00000002, 0xffffffff, 0xffffffff, 776); 
TEST_RR_OP( 195 , kdmtt, 0x7fffffff, 0x80000000, 0x80000000, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 796); 

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
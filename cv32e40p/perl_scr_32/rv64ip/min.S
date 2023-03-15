# See LICENSE for license details.
#*****************************************************************************
# min.S
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

TEST_RR_OP( 2 , min, 0x00000000, 0x00000000, 0x00000000, 8); 
TEST_RR_OP( 3 , min, 0x00000000, 0x00000000, 0x639eedd5, 12); 
TEST_RR_OP( 4 , min, 0xcd866e5b, 0x18ff5ebc, 0xcd866e5b, 16); 
TEST_RR_OP( 5 , min, 0x80000000, 0x80000000, 0x8430462e, 20); 
TEST_RR_OP( 6 , min, 0x80000000, 0x80000000, 0x80000000, 24); 
TEST_RR_OP( 7 , min, 0x63fb89ff, 0x63fb89ff, 0x67ac6fef, 28); 
TEST_RR_OP( 8 , min, 0xffffffff, 0xffffffff, 0xffffffff, 32); 
TEST_RR_OP( 9 , min, 0x80000000, 0xf3aeebcc, 0x80000000, 36); 
TEST_RR_OP( 10 , min, 0xffffffff, 0x74b8d9a4, 0xffffffff, 40); 
TEST_RR_OP( 11 , min, 0x80000000, 0x80000000, 0x201f02fc, 44); 
TEST_RR_OP( 12 , min, 0xe4fec329, 0xe4fec329, 0x00000000, 48); 
TEST_RR_OP( 13 , min, 0x80000000, 0xffffffff, 0x80000000, 52); 
TEST_RR_OP( 14 , min, 0x00000000, 0x00000000, 0x62936d7d, 56); 
TEST_RR_OP( 15 , min, 0xffffffff, 0x252dc8de, 0xffffffff, 60); 
TEST_RR_OP( 16 , min, 0x80000000, 0xffffffff, 0x80000000, 64); 
TEST_RR_OP( 17 , min, 0x80000000, 0x409df85c, 0x80000000, 68); 
TEST_RR_OP( 18 , min, 0x80000000, 0x80000000, 0x00000000, 72); 
TEST_RR_OP( 19 , min, 0x80000000, 0x80000000, 0x61ec0325, 76); 
TEST_RR_OP( 20 , min, 0xffffffff, 0xffffffff, 0x37ceb696, 80); 
TEST_RR_OP( 21 , min, 0x80000000, 0xffffffff, 0x80000000, 84); 
TEST_RR_OP( 22 , min, 0x80000000, 0x80000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , min, 0xffffffff, 0x00000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , min, 0x80000000, 0x4a80397d, 0x80000000, 96); 
TEST_RR_OP( 25 , min, 0x80000000, 0x80000000, 0xe39772eb, 100); 
TEST_RR_OP( 26 , min, 0x80000000, 0x00000000, 0x80000000, 104); 
TEST_RR_OP( 27 , min, 0xffffffff, 0xffffffff, 0x00000000, 108); 
TEST_RR_OP( 28 , min, 0x80000000, 0x80000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , min, 0xc3f988d6, 0x64267104, 0xc3f988d6, 116); 
TEST_RR_OP( 30 , min, 0x80000000, 0x80000000, 0x80000000, 120); 
TEST_RR_OP( 31 , min, 0x00000000, 0x00000000, 0x00000000, 124); 
TEST_RR_OP( 32 , min, 0x00000000, 0x7a63416b, 0x00000000, 128); 
TEST_RR_OP( 33 , min, 0x00000000, 0x00000000, 0x5f161e5d, 132); 
TEST_RR_OP( 34 , min, 0x80000000, 0x80000000, 0xffffffff, 136); 
TEST_RR_OP( 35 , min, 0x8887041a, 0xaec88042, 0x8887041a, 140); 
TEST_RR_OP( 36 , min, 0x80000000, 0x00000000, 0x80000000, 144); 
TEST_RR_OP( 37 , min, 0x00000000, 0x6982e7e5, 0x00000000, 148); 
TEST_RR_OP( 38 , min, 0x00000000, 0x00000000, 0x1c9b6744, 152); 
TEST_RR_OP( 39 , min, 0x80000000, 0x80000000, 0x00000000, 156); 
TEST_RR_OP( 40 , min, 0x80000000, 0xffffffff, 0x80000000, 160); 
TEST_RR_OP( 41 , min, 0x00000000, 0x00000000, 0x54e34aee, 164); 
TEST_RR_OP( 42 , min, 0x80000000, 0x80000000, 0x00000000, 168); 
TEST_RR_OP( 43 , min, 0x00000000, 0x6ab2e45a, 0x00000000, 172); 
TEST_RR_OP( 44 , min, 0x80000000, 0x00000000, 0x80000000, 176); 
TEST_RR_OP( 45 , min, 0xffffffff, 0xffffffff, 0x00000000, 180); 
TEST_RR_OP( 46 , min, 0x80000000, 0x80000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , min, 0x80000000, 0xffffffff, 0x80000000, 188); 
TEST_RR_OP( 48 , min, 0xfb794c93, 0xfb794c93, 0x00000000, 192); 
TEST_RR_OP( 49 , min, 0x80000000, 0x78fdbc35, 0x80000000, 196); 
TEST_RR_OP( 50 , min, 0x41c8e486, 0x42c88a38, 0x41c8e486, 200); 
TEST_RR_OP( 51 , min, 0x80000000, 0x80000000, 0xa76c37f5, 204); 
TEST_RR_OP( 52 , min, 0x80000000, 0x80000000, 0x80000000, 208); 
TEST_RR_OP( 53 , min, 0x80000000, 0x80000000, 0xcaca4084, 212); 
TEST_RR_OP( 54 , min, 0x00000000, 0x2e27125e, 0x00000000, 216); 
TEST_RR_OP( 55 , min, 0xffffffff, 0xffffffff, 0x00000000, 220); 
TEST_RR_OP( 56 , min, 0x80000000, 0x80000000, 0x7156313a, 224); 
TEST_RR_OP( 57 , min, 0x80000000, 0x80000000, 0x00000000, 228); 
TEST_RR_OP( 58 , min, 0x80000000, 0x80000000, 0x80000000, 232); 
TEST_RR_OP( 59 , min, 0xf1b962bc, 0x04196dce, 0xf1b962bc, 236); 
TEST_RR_OP( 60 , min, 0x817cad8d, 0x817cad8d, 0xffffffff, 240); 
TEST_RR_OP( 61 , min, 0x80000000, 0x80000000, 0x00000000, 244); 
TEST_RR_OP( 62 , min, 0x80000000, 0x80000000, 0x73afe046, 248); 
TEST_RR_OP( 63 , min, 0x80000000, 0x80000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , min, 0x80000000, 0x3a6a9b03, 0x80000000, 256); 
TEST_RR_OP( 65 , min, 0xffffffff, 0xffffffff, 0x00000000, 260); 
TEST_RR_OP( 66 , min, 0x8cad8817, 0x40432465, 0x8cad8817, 264); 
TEST_RR_OP( 67 , min, 0x80000000, 0x80000000, 0x00000000, 268); 
TEST_RR_OP( 68 , min, 0x80000000, 0x80000000, 0x00000000, 272); 
TEST_RR_OP( 69 , min, 0x80000000, 0x80000000, 0x00000000, 276); 
TEST_RR_OP( 70 , min, 0x00000000, 0x13aabd48, 0x00000000, 280); 
TEST_RR_OP( 71 , min, 0x80000000, 0xffffffff, 0x80000000, 284); 
TEST_RR_OP( 72 , min, 0xffffffff, 0xffffffff, 0x00000000, 288); 
TEST_RR_OP( 73 , min, 0xffffffff, 0xffffffff, 0xffffffff, 292); 
TEST_RR_OP( 74 , min, 0xffffffff, 0xffffffff, 0x00000000, 296); 
TEST_RR_OP( 75 , min, 0x80000000, 0xffffffff, 0x80000000, 300); 
TEST_RR_OP( 76 , min, 0x80000000, 0xffffffff, 0x80000000, 304); 
TEST_RR_OP( 77 , min, 0xee1d4dc5, 0xee1d4dc5, 0x30be1eb1, 308); 
TEST_RR_OP( 78 , min, 0x80000000, 0x80000000, 0x00000000, 312); 
TEST_RR_OP( 79 , min, 0x80000000, 0x80000000, 0x80000000, 316); 
TEST_RR_OP( 80 , min, 0x80000000, 0x80000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , min, 0x8651e5b6, 0x8651e5b6, 0xcf06e94e, 324); 
TEST_RR_OP( 82 , min, 0x80000000, 0x3c5e649f, 0x80000000, 328); 
TEST_RR_OP( 83 , min, 0xffffffff, 0xffffffff, 0xffffffff, 332); 
TEST_RR_OP( 84 , min, 0xffffffff, 0x2c8e03c2, 0xffffffff, 336); 
TEST_RR_OP( 85 , min, 0x80000000, 0x80000000, 0xe1a195c0, 340); 
TEST_RR_OP( 86 , min, 0xce37057b, 0xffffffff, 0xce37057b, 344); 
TEST_RR_OP( 87 , min, 0x80000000, 0x00000000, 0x80000000, 348); 
TEST_RR_OP( 88 , min, 0xffffffff, 0xffffffff, 0xffffffff, 352); 
TEST_RR_OP( 89 , min, 0x80000000, 0x80000000, 0x8c4650a3, 356); 
TEST_RR_OP( 90 , min, 0xa22bd815, 0xa22bd815, 0xb298a1e6, 360); 
TEST_RR_OP( 91 , min, 0x80000000, 0x80000000, 0x6d6d4357, 364); 
TEST_RR_OP( 92 , min, 0x80000000, 0x00000000, 0x80000000, 368); 
TEST_RR_OP( 93 , min, 0x80000000, 0xffffffff, 0x80000000, 372); 
TEST_RR_OP( 94 , min, 0xb6986332, 0xb6986332, 0x33dbf128, 376); 
TEST_RR_OP( 95 , min, 0x956f0526, 0xffffffff, 0x956f0526, 380); 
TEST_RR_OP( 96 , min, 0x80000000, 0x0df682b4, 0x80000000, 384); 
TEST_RR_OP( 97 , min, 0x80000000, 0x80000000, 0x00000000, 388); 
TEST_RR_OP( 98 , min, 0x00000000, 0x00000000, 0x26c8672e, 392); 
TEST_RR_OP( 99 , min, 0x80000000, 0x80000000, 0x80000000, 396); 
TEST_RR_OP( 100 , min, 0x00000000, 0x00000000, 0x00000000, 400); 
TEST_RR_OP( 101 , min, 0xffffffff, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , min, 0x00000000, 0x00000000, 0x00000000, 408); 
TEST_RR_OP( 103 , min, 0x9e64cce0, 0x9e64cce0, 0xd1246b13, 412); 
TEST_RR_OP( 104 , min, 0x00000000, 0x43f49d90, 0x00000000, 416); 
TEST_RR_OP( 105 , min, 0x80824082, 0x80824082, 0x00000000, 420); 
TEST_RR_OP( 106 , min, 0x80000000, 0x00000000, 0x80000000, 424); 
TEST_RR_OP( 107 , min, 0xa26ee66c, 0xffffffff, 0xa26ee66c, 428); 
TEST_RR_OP( 108 , min, 0x80000000, 0xad46ad19, 0x80000000, 432); 
TEST_RR_OP( 109 , min, 0xa89b00a4, 0x00000000, 0xa89b00a4, 436); 
TEST_RR_OP( 110 , min, 0xffffffff, 0x00000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , min, 0xffffffff, 0xffffffff, 0x00000000, 444); 
TEST_RR_OP( 112 , min, 0x80000000, 0x80000000, 0x3f58fe35, 448); 
TEST_RR_OP( 113 , min, 0xf3a1e10c, 0x00000000, 0xf3a1e10c, 452); 
TEST_RR_OP( 114 , min, 0xffffffff, 0x23a6783f, 0xffffffff, 456); 
TEST_RR_OP( 115 , min, 0x80000000, 0x00000000, 0x80000000, 460); 
TEST_RR_OP( 116 , min, 0x80000000, 0xffffffff, 0x80000000, 464); 
TEST_RR_OP( 117 , min, 0x80000000, 0x00000000, 0x80000000, 468); 
TEST_RR_OP( 118 , min, 0x80000000, 0x00000000, 0x80000000, 472); 
TEST_RR_OP( 119 , min, 0x80000000, 0xffffffff, 0x80000000, 476); 
TEST_RR_OP( 120 , min, 0xffffffff, 0xffffffff, 0x1aa00ccb, 480); 
TEST_RR_OP( 121 , min, 0x80000000, 0x80000000, 0xffffffff, 484); 
TEST_RR_OP( 122 , min, 0x00000000, 0x00000000, 0x00000000, 488); 
TEST_RR_OP( 123 , min, 0x80000000, 0x80000000, 0xffffffff, 492); 
TEST_RR_OP( 124 , min, 0x80000000, 0x80000000, 0xc664adf0, 496); 
TEST_RR_OP( 125 , min, 0xffffffff, 0x10c96833, 0xffffffff, 500); 
TEST_RR_OP( 126 , min, 0x80000000, 0x80000000, 0x80000000, 504); 
TEST_RR_OP( 127 , min, 0x80000000, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , min, 0x80000000, 0x80000000, 0x80000000, 512); 
TEST_RR_OP( 129 , min, 0x80000000, 0x80000000, 0x80000000, 516); 
TEST_RR_OP( 130 , min, 0x00000000, 0x5f68bc24, 0x00000000, 520); 
TEST_RR_OP( 131 , min, 0x80000000, 0x80000000, 0x80000000, 524); 
TEST_RR_OP( 132 , min, 0x80000000, 0x80000000, 0x00000000, 528); 
TEST_RR_OP( 133 , min, 0x80000000, 0x80000000, 0x80000000, 532); 
TEST_RR_OP( 134 , min, 0x80000000, 0x00000000, 0x80000000, 536); 
TEST_RR_OP( 135 , min, 0xffffffff, 0xffffffff, 0x2c6a8f1f, 540); 
TEST_RR_OP( 136 , min, 0x80000000, 0x80000000, 0x5847c026, 544); 
TEST_RR_OP( 137 , min, 0xf6d6f1bb, 0xf6d6f1bb, 0x00000000, 548); 
TEST_RR_OP( 138 , min, 0xffffffff, 0x00000000, 0xffffffff, 552); 
TEST_RR_OP( 139 , min, 0x80000000, 0x80000000, 0x702f1667, 556); 
TEST_RR_OP( 140 , min, 0xb5161f70, 0xb5161f70, 0xffffffff, 560); 
TEST_RR_OP( 141 , min, 0x80000000, 0xffffffff, 0x80000000, 564); 
TEST_RR_OP( 142 , min, 0x80000000, 0x80000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , min, 0xf46865be, 0xffffffff, 0xf46865be, 572); 
TEST_RR_OP( 144 , min, 0x9f88f7bb, 0xddaccd0b, 0x9f88f7bb, 576); 
TEST_RR_OP( 145 , min, 0xd22debbf, 0xffffffff, 0xd22debbf, 580); 
TEST_RR_OP( 146 , min, 0x80000000, 0x80000000, 0x4daa9271, 584); 
TEST_RR_OP( 147 , min, 0x80000000, 0xffffffff, 0x80000000, 588); 
TEST_RR_OP( 148 , min, 0x5158b424, 0x5158b424, 0x7829e375, 592); 
TEST_RR_OP( 149 , min, 0xffffffff, 0xffffffff, 0x00000000, 596); 
TEST_RR_OP( 150 , min, 0x00000000, 0x00000000, 0x3d234a6b, 600); 
TEST_RR_OP( 151 , min, 0xffffffff, 0xffffffff, 0x00000000, 604); 
TEST_RR_OP( 152 , min, 0x80000000, 0x79b87c99, 0x80000000, 608); 
TEST_RR_OP( 153 , min, 0x80000000, 0xe0e0a967, 0x80000000, 612); 
TEST_RR_OP( 154 , min, 0x80000000, 0xffffffff, 0x80000000, 616); 
TEST_RR_OP( 155 , min, 0xffffffff, 0x00000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , min, 0x80000000, 0x80000000, 0x80000000, 624); 
TEST_RR_OP( 157 , min, 0xffffffff, 0xffffffff, 0x00000000, 628); 
TEST_RR_OP( 158 , min, 0x1ed7ebfb, 0x4deadb5e, 0x1ed7ebfb, 632); 
TEST_RR_OP( 159 , min, 0x80000000, 0x80000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , min, 0x80000000, 0x80000000, 0x80000000, 640); 
TEST_RR_OP( 161 , min, 0x80000000, 0x80000000, 0xe18aee55, 644); 
TEST_RR_OP( 162 , min, 0xb116602a, 0x00000000, 0xb116602a, 648); 
TEST_RR_OP( 163 , min, 0x80000000, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , min, 0x80000000, 0x80000000, 0xffffffff, 656); 
TEST_RR_OP( 165 , min, 0xffffffff, 0xffffffff, 0xffffffff, 660); 
TEST_RR_OP( 166 , min, 0x80000000, 0xffffffff, 0x80000000, 664); 
TEST_RR_OP( 167 , min, 0x00000000, 0x231bcdf8, 0x00000000, 668); 
TEST_RR_OP( 168 , min, 0x80000000, 0x80000000, 0xed9feaf8, 672); 
TEST_RR_OP( 169 , min, 0x80000000, 0xffffffff, 0x80000000, 676); 
TEST_RR_OP( 170 , min, 0x00000000, 0x539a134c, 0x00000000, 680); 
TEST_RR_OP( 171 , min, 0x80000000, 0x00000000, 0x80000000, 684); 
TEST_RR_OP( 172 , min, 0xcb7e0e1b, 0xd26efca0, 0xcb7e0e1b, 688); 
TEST_RR_OP( 173 , min, 0xffffffff, 0xffffffff, 0x6cd471aa, 692); 
TEST_RR_OP( 174 , min, 0x891b3985, 0x891b3985, 0xffffffff, 696); 
TEST_RR_OP( 175 , min, 0x80000000, 0xffffffff, 0x80000000, 700); 
TEST_RR_OP( 176 , min, 0xffffffff, 0xffffffff, 0x00000000, 704); 
TEST_RR_OP( 177 , min, 0x00000000, 0x6a3d1830, 0x00000000, 708); 
TEST_RR_OP( 178 , min, 0x00000000, 0x00000000, 0x4e77e2f4, 712); 
TEST_RR_OP( 179 , min, 0x80000000, 0x80000000, 0x80000000, 716); 
TEST_RR_OP( 180 , min, 0x00000000, 0x00000000, 0x00000000, 720); 
TEST_RR_OP( 181 , min, 0x80000000, 0x80000000, 0x80000000, 724); 
TEST_RR_OP( 182 , min, 0xf2e862fb, 0xf2e862fb, 0xffffffff, 728); 
TEST_RR_OP( 183 , min, 0xffffffff, 0xffffffff, 0xffffffff, 732); 
TEST_RR_OP( 184 , min, 0xffffffff, 0x00000000, 0xffffffff, 736); 
TEST_RR_OP( 185 , min, 0xc8a5ee24, 0xffffffff, 0xc8a5ee24, 740); 
TEST_RR_OP( 186 , min, 0xffffffff, 0xffffffff, 0x71b211c4, 744); 
TEST_RR_OP( 187 , min, 0xf965b3a5, 0xffffffff, 0xf965b3a5, 748); 
TEST_RR_OP( 188 , min, 0x80000000, 0x80000000, 0x80000000, 752); 
TEST_RR_OP( 189 , min, 0xffffffff, 0x4e814709, 0xffffffff, 756); 
TEST_RR_OP( 190 , min, 0x80000000, 0x80000000, 0xffffffff, 760); 
TEST_RR_OP( 191 , min, 0x80000000, 0x80000000, 0x80000000, 764); 
TEST_RR_OP( 192 , min, 0xffffffff, 0x00000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , min, 0xb682826d, 0xb682826d, 0xffffffff, 772); 
TEST_RR_OP( 194 , min, 0x80000000, 0x80000000, 0x80000000, 776); 
TEST_RR_OP( 195 , min, 0xffffffff, 0xffffffff, 0x00000000, 780); 
TEST_RR_OP( 196 , min, 0x80000000, 0x80000000, 0x25189bda, 784); 
TEST_RR_OP( 197 , min, 0xffffffff, 0xffffffff, 0x4158f253, 788); 
TEST_RR_OP( 198 , min, 0x80000000, 0xffffffff, 0x80000000, 792); 
TEST_RR_OP( 199 , min, 0xffffffff, 0xffffffff, 0xffffffff, 796); 

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
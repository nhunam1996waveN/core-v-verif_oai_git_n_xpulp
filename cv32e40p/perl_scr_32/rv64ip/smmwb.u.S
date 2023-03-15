# See LICENSE for license details.
#*****************************************************************************
# smmwb.u.S
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

TEST_RR_OP( 2 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 12); 
TEST_RR_OP( 4 , smmwb.u, 0x00000000, 0xd0384b12, 0x80000000, 16); 
TEST_RR_OP( 5 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 24); 
TEST_RR_OP( 7 , smmwb.u, 0x00000000, 0x00000000, 0x7198e842, 28); 
TEST_RR_OP( 8 , smmwb.u, 0x00000000, 0xffffffff, 0x84ab57ca, 32); 
TEST_RR_OP( 9 , smmwb.u, 0x00b83d6a, 0x06f30a50, 0x68511a83, 36); 
TEST_RR_OP( 10 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 40); 
TEST_RR_OP( 11 , smmwb.u, 0x00006560, 0x9aa00cdb, 0xffffffff, 44); 
TEST_RR_OP( 12 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 48); 
TEST_RR_OP( 13 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 52); 
TEST_RR_OP( 14 , smmwb.u, 0x00000000, 0xd31e72c2, 0x00000000, 56); 
TEST_RR_OP( 15 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 60); 
TEST_RR_OP( 16 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 64); 
TEST_RR_OP( 17 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 68); 
TEST_RR_OP( 18 , smmwb.u, 0x00000000, 0x340ca926, 0x80000000, 72); 
TEST_RR_OP( 19 , smmwb.u, 0x00000000, 0xffffffff, 0x313e0fee, 76); 
TEST_RR_OP( 20 , smmwb.u, 0x000040a8, 0xbf57d18b, 0xffffffff, 80); 
TEST_RR_OP( 21 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 84); 
TEST_RR_OP( 22 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 88); 
TEST_RR_OP( 23 , smmwb.u, 0xffffab78, 0x54885bb7, 0xffffffff, 92); 
TEST_RR_OP( 24 , smmwb.u, 0x00000000, 0xc4acc57f, 0x00000000, 96); 
TEST_RR_OP( 25 , smmwb.u, 0x19548000, 0x80000000, 0x90decd57, 100); 
TEST_RR_OP( 26 , smmwb.u, 0x00000000, 0x41df1283, 0x80000000, 104); 
TEST_RR_OP( 27 , smmwb.u, 0x00000000, 0xfff4a5ac, 0x80000000, 108); 
TEST_RR_OP( 28 , smmwb.u, 0xeac51002, 0x337862c7, 0xd6249668, 112); 
TEST_RR_OP( 29 , smmwb.u, 0x00000000, 0xb468ed43, 0x00000000, 116); 
TEST_RR_OP( 30 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 120); 
TEST_RR_OP( 31 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 124); 
TEST_RR_OP( 32 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , smmwb.u, 0x00000000, 0xffffffff, 0xecee2101, 136); 
TEST_RR_OP( 35 , smmwb.u, 0x27ba8000, 0x80000000, 0xa581b08b, 140); 
TEST_RR_OP( 36 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 144); 
TEST_RR_OP( 37 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 148); 
TEST_RR_OP( 38 , smmwb.u, 0x00000000, 0xfc51bee2, 0x80000000, 152); 
TEST_RR_OP( 39 , smmwb.u, 0x00000000, 0x00000000, 0x9af97ca7, 156); 
TEST_RR_OP( 40 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 164); 
TEST_RR_OP( 42 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , smmwb.u, 0x00001efa, 0xe10590c6, 0xffffffff, 172); 
TEST_RR_OP( 44 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 180); 
TEST_RR_OP( 46 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 184); 
TEST_RR_OP( 47 , smmwb.u, 0x0455fd1d, 0x3503aed5, 0x289b14f0, 188); 
TEST_RR_OP( 48 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 192); 
TEST_RR_OP( 49 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 196); 
TEST_RR_OP( 50 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 204); 
TEST_RR_OP( 52 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 208); 
TEST_RR_OP( 53 , smmwb.u, 0xfffff0b0, 0x0f5043e6, 0xffffffff, 212); 
TEST_RR_OP( 54 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 224); 
TEST_RR_OP( 57 , smmwb.u, 0x00000000, 0xd85a274b, 0x80000000, 228); 
TEST_RR_OP( 58 , smmwb.u, 0x00000000, 0x9dc0e958, 0x00000000, 232); 
TEST_RR_OP( 59 , smmwb.u, 0x00000000, 0x71a38766, 0x80000000, 236); 
TEST_RR_OP( 60 , smmwb.u, 0x00000000, 0x00000000, 0xc96c5ddf, 240); 
TEST_RR_OP( 61 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 244); 
TEST_RR_OP( 62 , smmwb.u, 0x22ea0000, 0x80000000, 0x4d5aba2c, 248); 
TEST_RR_OP( 63 , smmwb.u, 0x356c8000, 0x80000000, 0x69729527, 252); 
TEST_RR_OP( 64 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 256); 
TEST_RR_OP( 65 , smmwb.u, 0x00000000, 0x00000000, 0xe2c0774d, 260); 
TEST_RR_OP( 66 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 264); 
TEST_RR_OP( 67 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 268); 
TEST_RR_OP( 68 , smmwb.u, 0x00000000, 0xffffffff, 0xe8052615, 272); 
TEST_RR_OP( 69 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 276); 
TEST_RR_OP( 70 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 280); 
TEST_RR_OP( 71 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 284); 
TEST_RR_OP( 72 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 288); 
TEST_RR_OP( 73 , smmwb.u, 0x00000000, 0xba70df88, 0x80000000, 292); 
TEST_RR_OP( 74 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 296); 
TEST_RR_OP( 75 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 300); 
TEST_RR_OP( 76 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 304); 
TEST_RR_OP( 77 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 308); 
TEST_RR_OP( 78 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 312); 
TEST_RR_OP( 79 , smmwb.u, 0x00000000, 0x00000000, 0xd79be3c4, 316); 
TEST_RR_OP( 80 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 320); 
TEST_RR_OP( 81 , smmwb.u, 0x01adb4e2, 0x049b1597, 0x6b1a5d4c, 324); 
TEST_RR_OP( 82 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 328); 
TEST_RR_OP( 83 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 332); 
TEST_RR_OP( 84 , smmwb.u, 0x2240dd08, 0x635f6881, 0x1c30583e, 336); 
TEST_RR_OP( 85 , smmwb.u, 0x00000000, 0x970a9123, 0x00000000, 340); 
TEST_RR_OP( 86 , smmwb.u, 0x00000000, 0x43d4d421, 0x80000000, 344); 
TEST_RR_OP( 87 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 348); 
TEST_RR_OP( 88 , smmwb.u, 0x00000000, 0x409fc778, 0x00000000, 352); 
TEST_RR_OP( 89 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 356); 
TEST_RR_OP( 90 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 364); 
TEST_RR_OP( 92 , smmwb.u, 0x00000000, 0x8e809712, 0x00000000, 368); 
TEST_RR_OP( 93 , smmwb.u, 0x00000000, 0x8b44bcc0, 0x00000000, 372); 
TEST_RR_OP( 94 , smmwb.u, 0x00002f5a, 0xd0a6599a, 0xffffffff, 376); 
TEST_RR_OP( 95 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 380); 
TEST_RR_OP( 96 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 384); 
TEST_RR_OP( 97 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 388); 
TEST_RR_OP( 98 , smmwb.u, 0x2334650c, 0x57eb4a33, 0xbf4b6682, 392); 
TEST_RR_OP( 99 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , smmwb.u, 0xffffd3b0, 0x2c502399, 0xffffffff, 404); 
TEST_RR_OP( 102 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 408); 
TEST_RR_OP( 103 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 412); 
TEST_RR_OP( 104 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 416); 
TEST_RR_OP( 105 , smmwb.u, 0xfa3131cb, 0xecb5dd5f, 0xcf824d14, 420); 
TEST_RR_OP( 106 , smmwb.u, 0xffffe55c, 0x1aa385e9, 0xffffffff, 424); 
TEST_RR_OP( 107 , smmwb.u, 0xe0cc3ee8, 0xa4abacf2, 0x5cd85776, 428); 
TEST_RR_OP( 108 , smmwb.u, 0x00000000, 0x98413a39, 0x80000000, 432); 
TEST_RR_OP( 109 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 436); 
TEST_RR_OP( 110 , smmwb.u, 0x00000000, 0x00000000, 0x6d31f730, 440); 
TEST_RR_OP( 111 , smmwb.u, 0x00000000, 0x6442b230, 0x80000000, 444); 
TEST_RR_OP( 112 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 448); 
TEST_RR_OP( 113 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 452); 
TEST_RR_OP( 114 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 456); 
TEST_RR_OP( 115 , smmwb.u, 0x09f7ed9f, 0xa4a7e36b, 0x036ce410, 460); 
TEST_RR_OP( 116 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 464); 
TEST_RR_OP( 117 , smmwb.u, 0x00000000, 0x56d23f9e, 0x80000000, 468); 
TEST_RR_OP( 118 , smmwb.u, 0x037ace1d, 0xe83af79a, 0xad42da86, 472); 
TEST_RR_OP( 119 , smmwb.u, 0x00000000, 0x1816caea, 0x80000000, 476); 
TEST_RR_OP( 120 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 480); 
TEST_RR_OP( 121 , smmwb.u, 0x00000000, 0x51aa857b, 0x00000000, 484); 
TEST_RR_OP( 122 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , smmwb.u, 0x000001fa, 0xfe060e2f, 0xffffffff, 492); 
TEST_RR_OP( 124 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 496); 
TEST_RR_OP( 125 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 500); 
TEST_RR_OP( 126 , smmwb.u, 0x00000000, 0x00000000, 0xa9f925b5, 504); 
TEST_RR_OP( 127 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , smmwb.u, 0x00000000, 0x2d19bc1f, 0x00000000, 512); 
TEST_RR_OP( 129 , smmwb.u, 0x00000000, 0x00000000, 0xf5a9af5c, 516); 
TEST_RR_OP( 130 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 520); 
TEST_RR_OP( 131 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 524); 
TEST_RR_OP( 132 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 528); 
TEST_RR_OP( 133 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 532); 
TEST_RR_OP( 134 , smmwb.u, 0xffdd0000, 0x80000000, 0x07430046, 536); 
TEST_RR_OP( 135 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 540); 
TEST_RR_OP( 136 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , smmwb.u, 0xf628f4e0, 0x67ba4ab5, 0x12f5e7b7, 548); 
TEST_RR_OP( 138 , smmwb.u, 0x00000000, 0x4b42c7bf, 0x80000000, 552); 
TEST_RR_OP( 139 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 556); 
TEST_RR_OP( 140 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 560); 
TEST_RR_OP( 141 , smmwb.u, 0x000071c6, 0x8e398dcd, 0xffffffff, 564); 
TEST_RR_OP( 142 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 568); 
TEST_RR_OP( 143 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 572); 
TEST_RR_OP( 144 , smmwb.u, 0x00000000, 0x00000000, 0xfaf7ba5f, 576); 
TEST_RR_OP( 145 , smmwb.u, 0x00000000, 0xdd73e121, 0x00000000, 580); 
TEST_RR_OP( 146 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 584); 
TEST_RR_OP( 147 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 588); 
TEST_RR_OP( 148 , smmwb.u, 0xffffbdc3, 0x423cdd2a, 0xffffffff, 592); 
TEST_RR_OP( 149 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , smmwb.u, 0x00004b86, 0xb479dd21, 0xffffffff, 600); 
TEST_RR_OP( 151 , smmwb.u, 0x00000000, 0xa283f90a, 0x00000000, 604); 
TEST_RR_OP( 152 , smmwb.u, 0x00000000, 0xffffffff, 0x64bdaec9, 608); 
TEST_RR_OP( 153 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 612); 
TEST_RR_OP( 154 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 616); 
TEST_RR_OP( 155 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 628); 
TEST_RR_OP( 158 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 640); 
TEST_RR_OP( 161 , smmwb.u, 0x00000000, 0x00000000, 0x8166bdfa, 644); 
TEST_RR_OP( 162 , smmwb.u, 0x00000000, 0x8bdabaa5, 0x80000000, 648); 
TEST_RR_OP( 163 , smmwb.u, 0x00000000, 0x313560cc, 0x80000000, 652); 
TEST_RR_OP( 164 , smmwb.u, 0x000003ad, 0xfc52a057, 0xffffffff, 656); 
TEST_RR_OP( 165 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , smmwb.u, 0x00000000, 0x67ed836d, 0x80000000, 668); 
TEST_RR_OP( 168 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 676); 
TEST_RR_OP( 170 , smmwb.u, 0x00000000, 0x9d4ffde1, 0x00000000, 680); 
TEST_RR_OP( 171 , smmwb.u, 0xf0c18000, 0x80000000, 0x6ccf1e7d, 684); 
TEST_RR_OP( 172 , smmwb.u, 0x00000000, 0x00000000, 0x211aacad, 688); 
TEST_RR_OP( 173 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 692); 
TEST_RR_OP( 174 , smmwb.u, 0x229f10d3, 0x52950863, 0xe7606b53, 696); 
TEST_RR_OP( 175 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 700); 
TEST_RR_OP( 176 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 704); 
TEST_RR_OP( 177 , smmwb.u, 0xfffffaec, 0x0513bbe3, 0xffffffff, 708); 
TEST_RR_OP( 178 , smmwb.u, 0x00000000, 0x78c39202, 0x80000000, 712); 
TEST_RR_OP( 179 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP( 181 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 724); 
TEST_RR_OP( 182 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 728); 
TEST_RR_OP( 183 , smmwb.u, 0x00000000, 0xffffffff, 0xd7497b82, 732); 
TEST_RR_OP( 184 , smmwb.u, 0x00000000, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , smmwb.u, 0x00000000, 0xffffffff, 0x00000000, 740); 
TEST_RR_OP( 186 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 744); 
TEST_RR_OP( 187 , smmwb.u, 0x00000000, 0x00000000, 0x1f6bc2d6, 748); 
TEST_RR_OP( 188 , smmwb.u, 0x00000000, 0xffffffff, 0x80000000, 752); 
TEST_RR_OP( 189 , smmwb.u, 0x00000000, 0xe08fc904, 0x00000000, 756); 
TEST_RR_OP( 190 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 760); 
TEST_RR_OP( 191 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 764); 
TEST_RR_OP( 192 , smmwb.u, 0x00000000, 0xffffffff, 0xb7dff4ab, 768); 
TEST_RR_OP( 193 , smmwb.u, 0x00000000, 0x80000000, 0x80000000, 772); 
TEST_RR_OP( 194 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 776); 
TEST_RR_OP( 195 , smmwb.u, 0x00008000, 0x80000000, 0xffffffff, 780); 
TEST_RR_OP( 196 , smmwb.u, 0x00000000, 0x00000000, 0x80000000, 784); 
TEST_RR_OP( 197 , smmwb.u, 0x00000000, 0x00000000, 0x00000000, 788); 
TEST_RR_OP( 198 , smmwb.u, 0x00000000, 0xffffffff, 0xffffffff, 792); 
TEST_RR_OP( 199 , smmwb.u, 0x00000000, 0x00000000, 0xffffffff, 796); 

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
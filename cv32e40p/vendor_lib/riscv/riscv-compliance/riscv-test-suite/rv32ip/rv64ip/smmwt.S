# See LICENSE for license details.
#*****************************************************************************
# smmwt.S
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

TEST_RR_OP( 2 , smmwt, 0x157ad3b8, 0x9f8c970b, 0xc6fd77ec, 8); 
TEST_RR_OP( 3 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 12); 
TEST_RR_OP( 4 , smmwt, 0x40000000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , smmwt, 0x40000000, 0x80000000, 0x80000000, 20); 
TEST_RR_OP( 6 , smmwt, 0xf602992c, 0xe6d0493e, 0x658afe7d, 24); 
TEST_RR_OP( 7 , smmwt, 0x00000000, 0x00000000, 0x00000000, 28); 
TEST_RR_OP( 8 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , smmwt, 0x00000000, 0x00000000, 0xceac7d0e, 36); 
TEST_RR_OP( 10 , smmwt, 0x00000000, 0x4b0d03f6, 0x00000000, 40); 
TEST_RR_OP( 11 , smmwt, 0x00000000, 0x00000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 52); 
TEST_RR_OP( 14 , smmwt, 0x00000000, 0x00000000, 0x00000000, 56); 
TEST_RR_OP( 15 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 60); 
TEST_RR_OP( 16 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 64); 
TEST_RR_OP( 17 , smmwt, 0xf630b08f, 0x139e9ee2, 0x80000000, 68); 
TEST_RR_OP( 18 , smmwt, 0xffffffff, 0xffffffff, 0x19133ff8, 72); 
TEST_RR_OP( 19 , smmwt, 0xffffb6da, 0x4925b56c, 0xffffffff, 76); 
TEST_RR_OP( 20 , smmwt, 0x36a27580, 0x85010d06, 0x8e493c7c, 80); 
TEST_RR_OP( 21 , smmwt, 0x00000000, 0xffffffff, 0xc8ff16cb, 84); 
TEST_RR_OP( 22 , smmwt, 0xe9ef8000, 0x80000000, 0x2c213bdc, 88); 
TEST_RR_OP( 23 , smmwt, 0x00000000, 0x00000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , smmwt, 0x00000000, 0x00000000, 0x7b178947, 96); 
TEST_RR_OP( 25 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 100); 
TEST_RR_OP( 26 , smmwt, 0x00000000, 0x80000000, 0x00000000, 104); 
TEST_RR_OP( 27 , smmwt, 0x00000000, 0x00000000, 0xffffffff, 108); 
TEST_RR_OP( 28 , smmwt, 0x00000000, 0x8f7afa4c, 0x00000000, 112); 
TEST_RR_OP( 29 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 116); 
TEST_RR_OP( 30 , smmwt, 0xc4610000, 0x80000000, 0x773e8d05, 120); 
TEST_RR_OP( 31 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 128); 
TEST_RR_OP( 33 , smmwt, 0xed25f3e9, 0x9dc485a2, 0x3121d711, 132); 
TEST_RR_OP( 34 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 136); 
TEST_RR_OP( 35 , smmwt, 0x0afa606a, 0x834f93a1, 0xe976f0f3, 140); 
TEST_RR_OP( 36 , smmwt, 0x00000000, 0x00000000, 0x1a3d206b, 144); 
TEST_RR_OP( 37 , smmwt, 0x00000099, 0xff664ea6, 0xffffffff, 148); 
TEST_RR_OP( 38 , smmwt, 0x036d7a9d, 0xf9250ac5, 0x80000000, 152); 
TEST_RR_OP( 39 , smmwt, 0x40000000, 0x80000000, 0x80000000, 156); 
TEST_RR_OP( 40 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 160); 
TEST_RR_OP( 41 , smmwt, 0xf6670000, 0x80000000, 0x133284e0, 164); 
TEST_RR_OP( 42 , smmwt, 0x00000000, 0x00000000, 0x80000000, 168); 
TEST_RR_OP( 43 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , smmwt, 0x40000000, 0x80000000, 0x80000000, 176); 
TEST_RR_OP( 45 , smmwt, 0x40000000, 0x80000000, 0x80000000, 180); 
TEST_RR_OP( 46 , smmwt, 0xfffffedc, 0x0123cad9, 0xffffffff, 184); 
TEST_RR_OP( 47 , smmwt, 0x00000000, 0x00000000, 0x00000000, 188); 
TEST_RR_OP( 48 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 192); 
TEST_RR_OP( 49 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 196); 
TEST_RR_OP( 50 , smmwt, 0x31190000, 0x80000000, 0x9dce310b, 200); 
TEST_RR_OP( 51 , smmwt, 0x00000000, 0xffffffff, 0x878ef6d0, 204); 
TEST_RR_OP( 52 , smmwt, 0x40000000, 0x80000000, 0x80000000, 208); 
TEST_RR_OP( 53 , smmwt, 0x00000000, 0xffffffff, 0x9438e61a, 212); 
TEST_RR_OP( 54 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 216); 
TEST_RR_OP( 55 , smmwt, 0x000035f4, 0xca0bd3e3, 0xffffffff, 220); 
TEST_RR_OP( 56 , smmwt, 0x00000000, 0x00000000, 0x80000000, 224); 
TEST_RR_OP( 57 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 228); 
TEST_RR_OP( 58 , smmwt, 0xfc238bb3, 0xf6d3e6cb, 0x6bc4c31f, 232); 
TEST_RR_OP( 59 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 236); 
TEST_RR_OP( 60 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 240); 
TEST_RR_OP( 61 , smmwt, 0x00000000, 0xffffffff, 0xc2e5baef, 244); 
TEST_RR_OP( 62 , smmwt, 0x00000000, 0x00000000, 0x49c7a13d, 248); 
TEST_RR_OP( 63 , smmwt, 0x00000000, 0x00000000, 0x80000000, 252); 
TEST_RR_OP( 64 , smmwt, 0x40000000, 0x80000000, 0x80000000, 256); 
TEST_RR_OP( 65 , smmwt, 0xdaf30000, 0x80000000, 0x4a1a1e25, 260); 
TEST_RR_OP( 66 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 264); 
TEST_RR_OP( 67 , smmwt, 0xee4d4462, 0xc96122e9, 0x52f3387a, 268); 
TEST_RR_OP( 68 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 272); 
TEST_RR_OP( 69 , smmwt, 0x00000000, 0x80000000, 0x00000000, 276); 
TEST_RR_OP( 70 , smmwt, 0xc6ef8000, 0x80000000, 0x7221b8d8, 280); 
TEST_RR_OP( 71 , smmwt, 0x00000000, 0xcb00e511, 0x00000000, 284); 
TEST_RR_OP( 72 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 288); 
TEST_RR_OP( 73 , smmwt, 0x03142742, 0xa7d0a470, 0xf7105149, 292); 
TEST_RR_OP( 74 , smmwt, 0x00000000, 0x00000000, 0x00000000, 296); 
TEST_RR_OP( 75 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 300); 
TEST_RR_OP( 76 , smmwt, 0x40000000, 0x80000000, 0x80000000, 304); 
TEST_RR_OP( 77 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 308); 
TEST_RR_OP( 78 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 312); 
TEST_RR_OP( 79 , smmwt, 0xeb57488c, 0x82d5b896, 0x2a418be8, 316); 
TEST_RR_OP( 80 , smmwt, 0x00000000, 0x00000000, 0x80000000, 320); 
TEST_RR_OP( 81 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 324); 
TEST_RR_OP( 82 , smmwt, 0x00000000, 0x80000000, 0x00000000, 328); 
TEST_RR_OP( 83 , smmwt, 0x00000000, 0x4090367d, 0x00000000, 332); 
TEST_RR_OP( 84 , smmwt, 0xe9d1e533, 0x2c5c359a, 0x80000000, 336); 
TEST_RR_OP( 85 , smmwt, 0x00000000, 0xffffffff, 0xf5cd32c1, 340); 
TEST_RR_OP( 86 , smmwt, 0x00000000, 0x00000000, 0x00000000, 344); 
TEST_RR_OP( 87 , smmwt, 0x00000000, 0x80000000, 0x00000000, 348); 
TEST_RR_OP( 88 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 352); 
TEST_RR_OP( 89 , smmwt, 0x00000000, 0x00000000, 0x989501d8, 356); 
TEST_RR_OP( 90 , smmwt, 0x1f400000, 0x80000000, 0xc180d296, 360); 
TEST_RR_OP( 91 , smmwt, 0x40000000, 0x80000000, 0x80000000, 364); 
TEST_RR_OP( 92 , smmwt, 0x40000000, 0x80000000, 0x80000000, 368); 
TEST_RR_OP( 93 , smmwt, 0x00000000, 0x00000000, 0x00000000, 372); 
TEST_RR_OP( 94 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 376); 
TEST_RR_OP( 95 , smmwt, 0x0375e7b6, 0xcea79042, 0xee0cbb15, 380); 
TEST_RR_OP( 96 , smmwt, 0x00000000, 0x00000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , smmwt, 0x00000000, 0x00000000, 0xa8b2ab52, 388); 
TEST_RR_OP( 98 , smmwt, 0x00002c83, 0xd37cb869, 0xffffffff, 392); 
TEST_RR_OP( 99 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 396); 
TEST_RR_OP( 100 , smmwt, 0x40000000, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 101 , smmwt, 0x0d6960d6, 0xa2a7742e, 0xdb3860b6, 404); 
TEST_RR_OP( 102 , smmwt, 0x00000000, 0xf98ca499, 0x00000000, 408); 
TEST_RR_OP( 103 , smmwt, 0xffffcf0c, 0x30f3d4bb, 0xffffffff, 412); 
TEST_RR_OP( 104 , smmwt, 0x00000000, 0x00000000, 0x00000000, 416); 
TEST_RR_OP( 105 , smmwt, 0x00000000, 0x00000000, 0x80000000, 420); 
TEST_RR_OP( 106 , smmwt, 0xffff9d52, 0x62ad9246, 0xffffffff, 424); 
TEST_RR_OP( 107 , smmwt, 0x00000000, 0x00000000, 0x00000000, 428); 
TEST_RR_OP( 108 , smmwt, 0x00000000, 0x80000000, 0x00000000, 432); 
TEST_RR_OP( 109 , smmwt, 0x00485533, 0x029450b4, 0x1c0bf536, 436); 
TEST_RR_OP( 110 , smmwt, 0x00000000, 0x00000000, 0x80000000, 440); 
TEST_RR_OP( 111 , smmwt, 0x00000000, 0x00000000, 0x00000000, 444); 
TEST_RR_OP( 112 , smmwt, 0x00000000, 0x80000000, 0x00000000, 448); 
TEST_RR_OP( 113 , smmwt, 0xfef77eed, 0xf41ba59f, 0x163e5cd2, 452); 
TEST_RR_OP( 114 , smmwt, 0xe5c00000, 0x80000000, 0x34808e30, 456); 
TEST_RR_OP( 115 , smmwt, 0x00003fc2, 0xc03dcbc1, 0xffffffff, 460); 
TEST_RR_OP( 116 , smmwt, 0x00000000, 0x00000000, 0x80000000, 464); 
TEST_RR_OP( 117 , smmwt, 0xffffffff, 0xffffffff, 0x2613fec2, 468); 
TEST_RR_OP( 118 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , smmwt, 0x00000000, 0x00000000, 0x00000000, 476); 
TEST_RR_OP( 120 , smmwt, 0xededa255, 0x3fd98b86, 0xb78b3929, 480); 
TEST_RR_OP( 121 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 484); 
TEST_RR_OP( 122 , smmwt, 0x00000000, 0x00000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , smmwt, 0xf7570000, 0x80000000, 0x1152d0e3, 492); 
TEST_RR_OP( 124 , smmwt, 0x40000000, 0x80000000, 0x80000000, 496); 
TEST_RR_OP( 125 , smmwt, 0x00000000, 0x00000000, 0x00000000, 500); 
TEST_RR_OP( 126 , smmwt, 0x40000000, 0x80000000, 0x80000000, 504); 
TEST_RR_OP( 127 , smmwt, 0x00000000, 0x00000000, 0x80000000, 508); 
TEST_RR_OP( 128 , smmwt, 0x0c560000, 0x80000000, 0xe7547826, 512); 
TEST_RR_OP( 129 , smmwt, 0xfc570746, 0x5ae46c6b, 0xf5b10097, 516); 
TEST_RR_OP( 130 , smmwt, 0x40000000, 0x80000000, 0x80000000, 520); 
TEST_RR_OP( 131 , smmwt, 0x00000000, 0x00000000, 0x80000000, 524); 
TEST_RR_OP( 132 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 528); 
TEST_RR_OP( 133 , smmwt, 0x40000000, 0x80000000, 0x80000000, 532); 
TEST_RR_OP( 134 , smmwt, 0x00000000, 0x80000000, 0x00000000, 536); 
TEST_RR_OP( 135 , smmwt, 0xd1270000, 0x80000000, 0x5db2edbb, 540); 
TEST_RR_OP( 136 , smmwt, 0x00000000, 0x00000000, 0x00000000, 544); 
TEST_RR_OP( 137 , smmwt, 0x3e52458f, 0x835b74e1, 0x80000000, 548); 
TEST_RR_OP( 138 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 552); 
TEST_RR_OP( 139 , smmwt, 0x27770000, 0x80000000, 0xb11267c5, 556); 
TEST_RR_OP( 140 , smmwt, 0x40000000, 0x80000000, 0x80000000, 560); 
TEST_RR_OP( 141 , smmwt, 0x00000000, 0x564d82ba, 0x00000000, 564); 
TEST_RR_OP( 142 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 572); 
TEST_RR_OP( 144 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 576); 
TEST_RR_OP( 145 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 580); 
TEST_RR_OP( 146 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , smmwt, 0x00002a9b, 0xd5645182, 0xffffffff, 588); 
TEST_RR_OP( 148 , smmwt, 0x00000000, 0x00000000, 0x00000000, 592); 
TEST_RR_OP( 149 , smmwt, 0xdfef1e7f, 0x4021c301, 0x80000000, 596); 
TEST_RR_OP( 150 , smmwt, 0x00000000, 0x00000000, 0x80000000, 600); 
TEST_RR_OP( 151 , smmwt, 0xffffffff, 0xffffffff, 0x585df2ba, 604); 
TEST_RR_OP( 152 , smmwt, 0x1c6b3b49, 0xc729896e, 0x80000000, 608); 
TEST_RR_OP( 153 , smmwt, 0x00000000, 0xdefc97b7, 0x00000000, 612); 
TEST_RR_OP( 154 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 616); 
TEST_RR_OP( 155 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , smmwt, 0x00000000, 0x00000000, 0x80000000, 624); 
TEST_RR_OP( 157 , smmwt, 0xffffd3dd, 0x2c222919, 0xffffffff, 628); 
TEST_RR_OP( 158 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 632); 
TEST_RR_OP( 159 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , smmwt, 0x00000000, 0x00000000, 0x00000000, 640); 
TEST_RR_OP( 161 , smmwt, 0x40000000, 0x80000000, 0x80000000, 644); 
TEST_RR_OP( 162 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 648); 
TEST_RR_OP( 163 , smmwt, 0x022c6445, 0xf4d2c1b1, 0xce387863, 652); 
TEST_RR_OP( 164 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 656); 
TEST_RR_OP( 165 , smmwt, 0x00000000, 0x00000000, 0x80000000, 660); 
TEST_RR_OP( 166 , smmwt, 0x00000000, 0xa791ca22, 0x00000000, 664); 
TEST_RR_OP( 167 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 668); 
TEST_RR_OP( 168 , smmwt, 0x00000000, 0x5db460b7, 0x00000000, 672); 
TEST_RR_OP( 169 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 676); 
TEST_RR_OP( 170 , smmwt, 0x00000000, 0x00000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , smmwt, 0x00000000, 0x80000000, 0x00000000, 684); 
TEST_RR_OP( 172 , smmwt, 0x00000000, 0x74207378, 0x00000000, 688); 
TEST_RR_OP( 173 , smmwt, 0x00000000, 0x00000000, 0xffffffff, 692); 
TEST_RR_OP( 174 , smmwt, 0x00000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , smmwt, 0x295d0000, 0x80000000, 0xad466b5d, 700); 
TEST_RR_OP( 176 , smmwt, 0x0a1c1d45, 0x33c3253d, 0x32005681, 704); 
TEST_RR_OP( 177 , smmwt, 0xffffcfc7, 0x30386819, 0xffffffff, 708); 
TEST_RR_OP( 178 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 712); 
TEST_RR_OP( 179 , smmwt, 0x00000000, 0x00000000, 0x80000000, 716); 
TEST_RR_OP( 180 , smmwt, 0x00000000, 0x00000000, 0x00000000, 720); 
TEST_RR_OP( 181 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 724); 
TEST_RR_OP( 182 , smmwt, 0x40000000, 0x80000000, 0x80000000, 728); 
TEST_RR_OP( 183 , smmwt, 0x00000000, 0xffffffff, 0x00000000, 732); 
TEST_RR_OP( 184 , smmwt, 0x00000000, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , smmwt, 0x00000000, 0xdf75696a, 0x00000000, 740); 
TEST_RR_OP( 186 , smmwt, 0x00000000, 0xffffffff, 0xd72739f3, 744); 
TEST_RR_OP( 187 , smmwt, 0x40000000, 0x80000000, 0x80000000, 748); 
TEST_RR_OP( 188 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 752); 
TEST_RR_OP( 189 , smmwt, 0x00000000, 0xffffffff, 0xffffffff, 756); 
TEST_RR_OP( 190 , smmwt, 0x00000000, 0x00000000, 0x5fc05e36, 760); 
TEST_RR_OP( 191 , smmwt, 0x0000071a, 0xf8e54dce, 0xffffffff, 764); 
TEST_RR_OP( 192 , smmwt, 0xf2e9dfda, 0x9b840f52, 0x21573464, 768); 
TEST_RR_OP( 193 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 772); 
TEST_RR_OP( 194 , smmwt, 0xe94d4d91, 0x2d6564dd, 0x80000000, 776); 
TEST_RR_OP( 195 , smmwt, 0x00a38000, 0x80000000, 0xfeb98ccd, 780); 
TEST_RR_OP( 196 , smmwt, 0x00000000, 0xffffffff, 0x80000000, 784); 
TEST_RR_OP( 197 , smmwt, 0xffffdc59, 0x23a63754, 0xffffffff, 788); 
TEST_RR_OP( 198 , smmwt, 0x00008000, 0x80000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , smmwt, 0x00000000, 0xfb7fe824, 0x00000000, 796); 

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
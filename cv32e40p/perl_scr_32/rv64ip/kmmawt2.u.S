# See LICENSE for license details.
#*****************************************************************************
# kmmawt2.u.S
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

TEST_RR_OP( 2 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , kmmawt2.u, 0x00010000, 0x80000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , kmmawt2.u, 0x00010bda, 0xfa12dcc1, 0xffffffff, 28); 
TEST_RR_OP( 8 , kmmawt2.u, 0x00010bda, 0xffffffff, 0xffffffff, 32); 
TEST_RR_OP( 9 , kmmawt2.u, 0x00010bda, 0x00000000, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmmawt2.u, 0x09a9681a, 0xe32c4dcc, 0xd51ea7e0, 40); 
TEST_RR_OP( 11 , kmmawt2.u, 0x09a8c53c, 0x516eea23, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmmawt2.u, 0x09a8c53c, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , kmmawt2.u, 0x58d7c53c, 0x80000000, 0xb0d1299a, 52); 
TEST_RR_OP( 14 , kmmawt2.u, 0x58d8c41e, 0x808f3b09, 0xffffffff, 56); 
TEST_RR_OP( 15 , kmmawt2.u, 0x58d8da37, 0xf4f3ae7e, 0xffffffff, 60); 
TEST_RR_OP( 16 , kmmawt2.u, 0x58d8da37, 0xffffffff, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmmawt2.u, 0x58d8da37, 0x00000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmmawt2.u, 0x58d8da37, 0xffffffff, 0x00000000, 72); 
TEST_RR_OP( 19 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , kmmawt2.u, 0x00000000, 0x26a3283e, 0x00000000, 92); 
TEST_RR_OP( 24 , kmmawt2.u, 0x00000000, 0xffffffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmmawt2.u, 0x00000000, 0xffffffff, 0xd7a9ff6c, 100); 
TEST_RR_OP( 26 , kmmawt2.u, 0x00000000, 0xffffffff, 0x00000000, 104); 
TEST_RR_OP( 27 , kmmawt2.u, 0x00000000, 0x80000000, 0x00000000, 108); 
TEST_RR_OP( 28 , kmmawt2.u, 0x6f4f3c68, 0x90b0c398, 0x80000000, 112); 
TEST_RR_OP( 29 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , kmmawt2.u, 0x00000001, 0xffffffff, 0x80000000, 132); 
TEST_RR_OP( 34 , kmmawt2.u, 0x00000001, 0xffffffff, 0x0a785fb1, 136); 
TEST_RR_OP( 35 , kmmawt2.u, 0x00000000, 0xffffffff, 0x7a4374b2, 140); 
TEST_RR_OP( 36 , kmmawt2.u, 0x00000000, 0xe06dfa93, 0x00000000, 144); 
TEST_RR_OP( 37 , kmmawt2.u, 0x000027d6, 0xec14cd95, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmmawt2.u, 0x000027d6, 0xffffffff, 0x066315c9, 152); 
TEST_RR_OP( 39 , kmmawt2.u, 0xab4298d4, 0x54bd8f02, 0x80000000, 156); 
TEST_RR_OP( 40 , kmmawt2.u, 0xab4298d4, 0x00000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , kmmawt2.u, 0xab4298d4, 0x00000000, 0x2425f790, 164); 
TEST_RR_OP( 42 , kmmawt2.u, 0xab433d42, 0xadc8e503, 0xffffffff, 168); 
TEST_RR_OP( 43 , kmmawt2.u, 0xab433d42, 0x80000000, 0x00000000, 172); 
TEST_RR_OP( 44 , kmmawt2.u, 0xab433d42, 0xf534fe74, 0x00000000, 176); 
TEST_RR_OP( 45 , kmmawt2.u, 0x2a1b3d42, 0x80000000, 0x81282aa5, 180); 
TEST_RR_OP( 46 , kmmawt2.u, 0x2a1ab773, 0x42e7812b, 0xffffffff, 184); 
TEST_RR_OP( 47 , kmmawt2.u, 0x2a1ab773, 0xffffffff, 0xffffffff, 188); 
TEST_RR_OP( 48 , kmmawt2.u, 0x2a1ab773, 0x00000000, 0x80000000, 192); 
TEST_RR_OP( 49 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 196); 
TEST_CASE( 50 ,200, x14, 1, rdov x14;);
TEST_CASE( 51 ,204, x14, 1, clrov;);
TEST_CASE( 52 ,208, x14, 0, rdov x14;);
TEST_RR_OP( 53 , kmmawt2.u, 0xffff33b5, 0x6625865e, 0xffffffff, 212); 
TEST_RR_OP( 54 , kmmawt2.u, 0xffff33b5, 0xd1020808, 0x00000000, 216); 
TEST_RR_OP( 55 , kmmawt2.u, 0xcd2b0517, 0x32d42e9e, 0x80000000, 220); 
TEST_RR_OP( 56 , kmmawt2.u, 0xcd2b0517, 0x00000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , kmmawt2.u, 0xcd2b0517, 0xffffffff, 0x00000000, 228); 
TEST_RR_OP( 58 , kmmawt2.u, 0xcd2b0517, 0x00000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kmmawt2.u, 0xcd2b0517, 0x00000000, 0x2647db71, 236); 
TEST_RR_OP( 60 , kmmawt2.u, 0xcd2b0517, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kmmawt2.u, 0xcd2be7e2, 0x8e9a873f, 0xffffffff, 244); 
TEST_RR_OP( 62 , kmmawt2.u, 0xcd2be7e2, 0x7a37bc46, 0x00000000, 248); 
TEST_RR_OP( 63 , kmmawt2.u, 0x80000000, 0x7172db37, 0x80000000, 252); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_RR_OP( 67 , kmmawt2.u, 0x508f0000, 0x80000000, 0xaf71960f, 268); 
TEST_RR_OP( 68 , kmmawt2.u, 0x508f0000, 0x80000000, 0x00000000, 272); 
TEST_RR_OP( 69 , kmmawt2.u, 0x508f0000, 0x00000000, 0x80000000, 276); 
TEST_RR_OP( 70 , kmmawt2.u, 0x508f0000, 0x80000000, 0x00000000, 280); 
TEST_RR_OP( 71 , kmmawt2.u, 0x508f0000, 0xffffffff, 0x00000000, 284); 
TEST_RR_OP( 72 , kmmawt2.u, 0x508f0000, 0x00000000, 0xffffffff, 288); 
TEST_RR_OP( 73 , kmmawt2.u, 0x508f0000, 0x00000000, 0x80000000, 292); 
TEST_RR_OP( 74 , kmmawt2.u, 0x508f0000, 0x00000000, 0x80000000, 296); 
TEST_RR_OP( 75 , kmmawt2.u, 0x508f0000, 0xf0ad709e, 0x00000000, 300); 
TEST_RR_OP( 76 , kmmawt2.u, 0x508f0000, 0xffffffff, 0x00000000, 304); 
TEST_RR_OP( 77 , kmmawt2.u, 0x508f0000, 0x00000000, 0x80000000, 308); 
TEST_RR_OP( 78 , kmmawt2.u, 0x508f0000, 0x00000000, 0x5b56e455, 312); 
TEST_RR_OP( 79 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 316); 
TEST_CASE( 80 ,320, x14, 1, rdov x14;);
TEST_CASE( 81 ,324, x14, 1, clrov;);
TEST_CASE( 82 ,328, x14, 0, rdov x14;);
TEST_RR_OP( 83 , kmmawt2.u, 0x0e1887cd, 0xf1e77833, 0x80000000, 332); 
TEST_RR_OP( 84 , kmmawt2.u, 0x0e1887cd, 0x00000000, 0x80000000, 336); 
TEST_RR_OP( 85 , kmmawt2.u, 0x0e1887cd, 0x00000000, 0x80000000, 340); 
TEST_RR_OP( 86 , kmmawt2.u, 0x0e1887cd, 0x00000000, 0x80000000, 344); 
TEST_RR_OP( 87 , kmmawt2.u, 0x0e1887cd, 0x00000000, 0xffffffff, 348); 
TEST_RR_OP( 88 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_RR_OP( 92 , kmmawt2.u, 0x11040000, 0x80000000, 0xeefc281b, 368); 
TEST_RR_OP( 93 , kmmawt2.u, 0x11040000, 0x00000000, 0x80000000, 372); 
TEST_RR_OP( 94 , kmmawt2.u, 0x11040000, 0xffffffff, 0x00000000, 376); 
TEST_RR_OP( 95 , kmmawt2.u, 0x11040000, 0x00000000, 0x00000000, 380); 
TEST_RR_OP( 96 , kmmawt2.u, 0x11040001, 0xffffffff, 0x80000000, 384); 
TEST_RR_OP( 97 , kmmawt2.u, 0x11050001, 0x80000000, 0xffffffff, 388); 
TEST_RR_OP( 98 , kmmawt2.u, 0x11050001, 0xaf3c2c1b, 0x00000000, 392); 
TEST_RR_OP( 99 , kmmawt2.u, 0x11050001, 0xffffffff, 0x00000000, 396); 
TEST_RR_OP( 100 , kmmawt2.u, 0x11050001, 0xffffffff, 0x0f96f379, 400); 
TEST_RR_OP( 101 , kmmawt2.u, 0x11050001, 0x80000000, 0x00000000, 404); 
TEST_RR_OP( 102 , kmmawt2.u, 0x11050002, 0xffffffff, 0x80000000, 408); 
TEST_RR_OP( 103 , kmmawt2.u, 0x65f80002, 0x80000000, 0xab0d74d3, 412); 
TEST_RR_OP( 104 , kmmawt2.u, 0x65f80002, 0xffffffff, 0xffffffff, 416); 
TEST_RR_OP( 105 , kmmawt2.u, 0x65f80002, 0x00000000, 0x80000000, 420); 
TEST_RR_OP( 106 , kmmawt2.u, 0x65f90002, 0x80000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , kmmawt2.u, 0x65f90002, 0xffffffff, 0x00000000, 428); 
TEST_RR_OP( 108 , kmmawt2.u, 0x65f90002, 0x85898f37, 0x00000000, 432); 
TEST_RR_OP( 109 , kmmawt2.u, 0x37040002, 0x80000000, 0x2ef59449, 436); 
TEST_RR_OP( 110 , kmmawt2.u, 0x37040002, 0xffffffff, 0x00000000, 440); 
TEST_RR_OP( 111 , kmmawt2.u, 0x37040002, 0x9ebc488d, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmawt2.u, 0x37040002, 0x00000000, 0xffffffff, 448); 
TEST_RR_OP( 113 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 452); 
TEST_CASE( 114 ,456, x14, 1, rdov x14;);
TEST_CASE( 115 ,460, x14, 1, clrov;);
TEST_CASE( 116 ,464, x14, 0, rdov x14;);
TEST_RR_OP( 117 , kmmawt2.u, 0x00000000, 0xffffffff, 0xffffffff, 468); 
TEST_RR_OP( 118 , kmmawt2.u, 0x00000000, 0x00000000, 0xbbb3d523, 472); 
TEST_RR_OP( 119 , kmmawt2.u, 0x00000000, 0xffffffff, 0xffffffff, 476); 
TEST_RR_OP( 120 , kmmawt2.u, 0xffffffff, 0xffffffff, 0x731d92f8, 480); 
TEST_RR_OP( 121 , kmmawt2.u, 0x00000000, 0xffffffff, 0x80000000, 484); 
TEST_RR_OP( 122 , kmmawt2.u, 0x00000000, 0x06464c04, 0x00000000, 488); 
TEST_RR_OP( 123 , kmmawt2.u, 0xfc28f8a3, 0x08193cb9, 0xc34f9695, 492); 
TEST_RR_OP( 124 , kmmawt2.u, 0xfc28f8a3, 0x80000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kmmawt2.u, 0x2b979237, 0x426a5688, 0x5b6a7224, 500); 
TEST_RR_OP( 126 , kmmawt2.u, 0x243f14e1, 0x88d71b7c, 0x07e4b058, 504); 
TEST_RR_OP( 127 , kmmawt2.u, 0x243f14e1, 0x00000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmmawt2.u, 0x243f14e1, 0x00000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , kmmawt2.u, 0x174a14e1, 0x80000000, 0x0cf53047, 516); 
TEST_RR_OP( 130 , kmmawt2.u, 0x174a14e1, 0x80000000, 0x00000000, 520); 
TEST_RR_OP( 131 , kmmawt2.u, 0x174a14e1, 0x00000000, 0x00000000, 524); 
TEST_RR_OP( 132 , kmmawt2.u, 0x174a14e0, 0xffffffff, 0x70ca61df, 528); 
TEST_RR_OP( 133 , kmmawt2.u, 0xda9ef9b0, 0x3cab1b30, 0x80000000, 532); 
TEST_RR_OP( 134 , kmmawt2.u, 0x9d99575e, 0x3d05a252, 0x80000000, 536); 
TEST_RR_OP( 135 , kmmawt2.u, 0x9d99575e, 0x61eb24db, 0x00000000, 540); 
TEST_RR_OP( 136 , kmmawt2.u, 0x9d99575e, 0xbb7115e0, 0x00000000, 544); 
TEST_RR_OP( 137 , kmmawt2.u, 0x9d99575d, 0xffffffff, 0x5fffb712, 548); 
TEST_RR_OP( 138 , kmmawt2.u, 0xcb9e87c4, 0xd1facf99, 0x80000000, 552); 
TEST_RR_OP( 139 , kmmawt2.u, 0xcb9e87c4, 0x99105a77, 0x00000000, 556); 
TEST_RR_OP( 140 , kmmawt2.u, 0xcb9e87c4, 0x00000000, 0x78470d2b, 560); 
TEST_RR_OP( 141 , kmmawt2.u, 0xf7fa6213, 0xd3a425b1, 0x80000000, 564); 
TEST_RR_OP( 142 , kmmawt2.u, 0xf7fa891a, 0xec7c60ce, 0xffffffff, 568); 
TEST_RR_OP( 143 , kmmawt2.u, 0xf7fa8919, 0xffffffff, 0x6fcb0445, 572); 
TEST_RR_OP( 144 , kmmawt2.u, 0xf7f99675, 0x79523951, 0xffffffff, 576); 
TEST_RR_OP( 145 , kmmawt2.u, 0xf7fa9675, 0x80000000, 0xffffffff, 580); 
TEST_RR_OP( 146 , kmmawt2.u, 0xf2809675, 0x80000000, 0x057a691b, 584); 
TEST_RR_OP( 147 , kmmawt2.u, 0xe7709421, 0xe1780206, 0x2e61edfd, 588); 
TEST_RR_OP( 148 , kmmawt2.u, 0xa157f709, 0x46189d18, 0x80000000, 592); 
TEST_RR_OP( 149 , kmmawt2.u, 0xa157f709, 0x00000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , kmmawt2.u, 0x98afb3d5, 0xe53ec29a, 0x296b464d, 600); 
TEST_RR_OP( 151 , kmmawt2.u, 0x80000000, 0x7e922204, 0xa526d8d8, 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_RR_OP( 155 , kmmawt2.u, 0x00000001, 0xffffffff, 0x80000000, 620); 
TEST_RR_OP( 156 , kmmawt2.u, 0x00000001, 0x00000000, 0xcf9a3814, 624); 
TEST_RR_OP( 157 , kmmawt2.u, 0x00010001, 0x80000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , kmmawt2.u, 0x00010001, 0xffffffff, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmmawt2.u, 0x00020001, 0x80000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmmawt2.u, 0x00020001, 0x2014c4e2, 0x00000000, 640); 
TEST_RR_OP( 161 , kmmawt2.u, 0x00030001, 0x80000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , kmmawt2.u, 0x7fffffff, 0x80000000, 0x80000000, 648); 
TEST_CASE( 163 ,652, x14, 1, rdov x14;);
TEST_CASE( 164 ,656, x14, 1, clrov;);
TEST_CASE( 165 ,660, x14, 0, rdov x14;);
TEST_RR_OP( 166 , kmmawt2.u, 0xfb86c4f2, 0x06025de5, 0xa0b66274, 664); 
TEST_RR_OP( 167 , kmmawt2.u, 0xfb86c4f2, 0x00000000, 0xffffffff, 668); 
TEST_RR_OP( 168 , kmmawt2.u, 0xfb86c4f2, 0x00000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , kmmawt2.u, 0xfb86c4f2, 0xffffffff, 0xffffffff, 676); 
TEST_RR_OP( 170 , kmmawt2.u, 0xfb86c4f3, 0xffffffff, 0x80000000, 680); 
TEST_RR_OP( 171 , kmmawt2.u, 0xfb87c4f3, 0x80000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , kmmawt2.u, 0x7b87c4f2, 0x80000000, 0x80000000, 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_RR_OP( 176 , kmmawt2.u, 0x00000000, 0x80000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kmmawt2.u, 0x1503d3a9, 0xeafc2c57, 0x80000000, 708); 
TEST_RR_OP( 178 , kmmawt2.u, 0x1503d3a9, 0xaad0ad73, 0x00000000, 712); 
TEST_RR_OP( 179 , kmmawt2.u, 0x1503d3a9, 0x00000000, 0x00000000, 716); 
TEST_RR_OP( 180 , kmmawt2.u, 0x1503d3a9, 0xbb931953, 0x00000000, 720); 
TEST_RR_OP( 181 , kmmawt2.u, 0xf69515ed, 0x309e589d, 0xafe1b9e6, 724); 
TEST_RR_OP( 182 , kmmawt2.u, 0xf69515ed, 0x80000000, 0x00000000, 728); 
TEST_RR_OP( 183 , kmmawt2.u, 0xf695a309, 0xb9723c65, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmmawt2.u, 0xf696a309, 0x80000000, 0xffffffff, 736); 
TEST_RR_OP( 185 , kmmawt2.u, 0xf696a309, 0xffffffff, 0x386a5231, 740); 
TEST_RR_OP( 186 , kmmawt2.u, 0xf696a309, 0xffffffff, 0xffffffff, 744); 
TEST_RR_OP( 187 , kmmawt2.u, 0xf22cbbe6, 0xfa718fb0, 0x65ad88e5, 748); 
TEST_RR_OP( 188 , kmmawt2.u, 0xf22cbbe6, 0xcdd801d1, 0x00000000, 752); 
TEST_RR_OP( 189 , kmmawt2.u, 0x722cbbe5, 0x80000000, 0x80000000, 756); 
TEST_CASE( 190 ,760, x14, 1, rdov x14;);
TEST_CASE( 191 ,764, x14, 1, clrov;);
TEST_CASE( 192 ,768, x14, 0, rdov x14;);
TEST_RR_OP( 193 , kmmawt2.u, 0x00000001, 0xffffffff, 0x80000000, 772); 
TEST_RR_OP( 194 , kmmawt2.u, 0x00000001, 0x00000000, 0x80000000, 776); 
TEST_RR_OP( 195 , kmmawt2.u, 0x00000001, 0xffffffff, 0xffffffff, 780); 
TEST_RR_OP( 196 , kmmawt2.u, 0x00000001, 0x00000000, 0xd5b7f484, 784); 
TEST_RR_OP( 197 , kmmawt2.u, 0x00000001, 0x00000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , kmmawt2.u, 0x00000001, 0xffffffff, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmmawt2.u, 0xffff29af, 0x6b291cf0, 0xffffffff, 796); 

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
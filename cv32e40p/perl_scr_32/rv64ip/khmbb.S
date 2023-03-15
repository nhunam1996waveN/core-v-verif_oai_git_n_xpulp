# See LICENSE for license details.
#*****************************************************************************
# khmbb.S
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

TEST_RR_OP( 2 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , khmbb, 0x00000000, 0xffffffff, 0x52a8b6de, 16); 
TEST_RR_OP( 5 , khmbb, 0x00000000, 0x00000000, 0x80000000, 20); 
TEST_RR_OP( 6 , khmbb, 0x00000000, 0x80000000, 0x00000000, 24); 
TEST_RR_OP( 7 , khmbb, 0x00000000, 0x80000000, 0x80000000, 28); 
TEST_RR_OP( 8 , khmbb, 0x00000000, 0x00000000, 0xfab65c46, 32); 
TEST_RR_OP( 9 , khmbb, 0x00000000, 0x128d8a31, 0x00000000, 36); 
TEST_RR_OP( 10 , khmbb, 0xffffffff, 0x590b6a31, 0xffffffff, 40); 
TEST_RR_OP( 11 , khmbb, 0x00000000, 0xba2aba62, 0xffffffff, 44); 
TEST_RR_OP( 12 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , khmbb, 0x00000000, 0x80000000, 0x00000000, 52); 
TEST_RR_OP( 14 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 56); 
TEST_RR_OP( 15 , khmbb, 0x00000000, 0x00000000, 0xf3ad8e0f, 60); 
TEST_RR_OP( 16 , khmbb, 0x00000000, 0x80000000, 0x00000000, 64); 
TEST_RR_OP( 17 , khmbb, 0x00000000, 0x80000000, 0x8d679c0c, 68); 
TEST_RR_OP( 18 , khmbb, 0x00000000, 0xffffffff, 0x9102c372, 72); 
TEST_RR_OP( 19 , khmbb, 0x00000000, 0x5cd3741d, 0x80000000, 76); 
TEST_RR_OP( 20 , khmbb, 0x00000000, 0xedce3342, 0x80000000, 80); 
TEST_RR_OP( 21 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 84); 
TEST_RR_OP( 22 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 88); 
TEST_RR_OP( 23 , khmbb, 0xffffa888, 0xf2eca499, 0x24327a7d, 92); 
TEST_RR_OP( 24 , khmbb, 0x00000000, 0x4191a49a, 0x80000000, 96); 
TEST_RR_OP( 25 , khmbb, 0x00000000, 0x80000000, 0x80000000, 100); 
TEST_RR_OP( 26 , khmbb, 0x00000000, 0x00000000, 0x00000000, 104); 
TEST_RR_OP( 27 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 108); 
TEST_RR_OP( 28 , khmbb, 0x00000000, 0x00000000, 0x00000000, 112); 
TEST_RR_OP( 29 , khmbb, 0x00000000, 0xffffffff, 0x42c6c8ac, 116); 
TEST_RR_OP( 30 , khmbb, 0x00000000, 0x80000000, 0xab2a5fc6, 120); 
TEST_RR_OP( 31 , khmbb, 0x00000002, 0xad0dfcc5, 0xb11bffa1, 124); 
TEST_RR_OP( 32 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 136); 
TEST_RR_OP( 35 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 140); 
TEST_RR_OP( 36 , khmbb, 0x00000000, 0x4d39e9ce, 0x00000000, 144); 
TEST_RR_OP( 37 , khmbb, 0x00000000, 0x087eb102, 0x80000000, 148); 
TEST_RR_OP( 38 , khmbb, 0x00000000, 0xdbf3cf76, 0x80000000, 152); 
TEST_RR_OP( 39 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 156); 
TEST_RR_OP( 40 , khmbb, 0x00000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , khmbb, 0x00000000, 0x00000000, 0x80000000, 164); 
TEST_RR_OP( 42 , khmbb, 0x00000000, 0x3900cab9, 0x80000000, 168); 
TEST_RR_OP( 43 , khmbb, 0x00000000, 0x80000000, 0x80000000, 172); 
TEST_RR_OP( 44 , khmbb, 0x00000000, 0x80000000, 0x80000000, 176); 
TEST_RR_OP( 45 , khmbb, 0x00005b94, 0xf79c92b0, 0xe43194c4, 180); 
TEST_RR_OP( 46 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 184); 
TEST_RR_OP( 47 , khmbb, 0x00000000, 0x80000000, 0x80000000, 188); 
TEST_RR_OP( 48 , khmbb, 0x00000000, 0x80000000, 0x00000000, 192); 
TEST_RR_OP( 49 , khmbb, 0x00000000, 0xd44a1889, 0x80000000, 196); 
TEST_RR_OP( 50 , khmbb, 0xffffffff, 0xffffffff, 0xd490615e, 200); 
TEST_RR_OP( 51 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 204); 
TEST_RR_OP( 52 , khmbb, 0x00000000, 0x00000000, 0x80000000, 208); 
TEST_RR_OP( 53 , khmbb, 0x00000000, 0xe022fcb8, 0xffffffff, 212); 
TEST_RR_OP( 54 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 220); 
TEST_RR_OP( 56 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 224); 
TEST_RR_OP( 57 , khmbb, 0xffffffff, 0xffffffff, 0x76980882, 228); 
TEST_RR_OP( 58 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 232); 
TEST_RR_OP( 59 , khmbb, 0x00001f35, 0x5b34dcce, 0x41088e81, 236); 
TEST_RR_OP( 60 , khmbb, 0xfffff9f7, 0x4a3acc7c, 0x340e0efe, 240); 
TEST_RR_OP( 61 , khmbb, 0x00000000, 0x80000000, 0x80000000, 244); 
TEST_RR_OP( 62 , khmbb, 0xffffc965, 0xa7276eec, 0x2ee2c0fd, 248); 
TEST_RR_OP( 63 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 256); 
TEST_RR_OP( 65 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 260); 
TEST_RR_OP( 66 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 264); 
TEST_RR_OP( 67 , khmbb, 0x00000000, 0x00000000, 0x00000000, 268); 
TEST_RR_OP( 68 , khmbb, 0x00000000, 0x80000000, 0x6d452ecd, 272); 
TEST_RR_OP( 69 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 284); 
TEST_RR_OP( 72 , khmbb, 0x00000000, 0x80000000, 0x3ea8527f, 288); 
TEST_RR_OP( 73 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 292); 
TEST_RR_OP( 74 , khmbb, 0x00000000, 0x0460c81b, 0x00000000, 296); 
TEST_RR_OP( 75 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 300); 
TEST_RR_OP( 76 , khmbb, 0x00000000, 0x1c15638b, 0x00000000, 304); 
TEST_RR_OP( 77 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 308); 
TEST_RR_OP( 78 , khmbb, 0x00000000, 0x12f698c0, 0x80000000, 312); 
TEST_RR_OP( 79 , khmbb, 0x00000000, 0x00000000, 0x00000000, 316); 
TEST_RR_OP( 80 , khmbb, 0x00000000, 0x80000000, 0x56a9e9d9, 320); 
TEST_RR_OP( 81 , khmbb, 0x00000000, 0x80000000, 0xc37184d9, 324); 
TEST_RR_OP( 82 , khmbb, 0x00000000, 0x80000000, 0x80000000, 328); 
TEST_RR_OP( 83 , khmbb, 0x00000000, 0x83649861, 0xffffffff, 332); 
TEST_RR_OP( 84 , khmbb, 0xfffffce8, 0x1d0e0426, 0xb34fa09b, 336); 
TEST_RR_OP( 85 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 340); 
TEST_RR_OP( 86 , khmbb, 0x00000000, 0x00000000, 0x01f84416, 344); 
TEST_RR_OP( 87 , khmbb, 0x00000000, 0x00000000, 0xea057fcc, 348); 
TEST_RR_OP( 88 , khmbb, 0x00000000, 0x6fab2864, 0x80000000, 352); 
TEST_RR_OP( 89 , khmbb, 0x00000000, 0x00000000, 0x00000000, 356); 
TEST_RR_OP( 90 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 360); 
TEST_RR_OP( 91 , khmbb, 0x00000000, 0x00000000, 0xdaee6b26, 364); 
TEST_RR_OP( 92 , khmbb, 0xffffffff, 0xdb1c3ad8, 0xffffffff, 368); 
TEST_RR_OP( 93 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 372); 
TEST_RR_OP( 94 , khmbb, 0x00000000, 0x801ff459, 0x80000000, 376); 
TEST_RR_OP( 95 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 380); 
TEST_RR_OP( 96 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 388); 
TEST_RR_OP( 98 , khmbb, 0xffffffff, 0x6bc479c6, 0xffffffff, 392); 
TEST_RR_OP( 99 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 396); 
TEST_RR_OP( 100 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , khmbb, 0x00000000, 0x00000000, 0x80000000, 404); 
TEST_RR_OP( 102 , khmbb, 0x00000552, 0x27ef5f64, 0x2da60724, 408); 
TEST_RR_OP( 103 , khmbb, 0x00000000, 0x80000000, 0x80000000, 412); 
TEST_RR_OP( 104 , khmbb, 0xffffffff, 0xffffffff, 0x969177c2, 416); 
TEST_RR_OP( 105 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 420); 
TEST_RR_OP( 106 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , khmbb, 0x00000000, 0x80000000, 0x00000000, 428); 
TEST_RR_OP( 108 , khmbb, 0x00000000, 0x80000000, 0x80000000, 432); 
TEST_RR_OP( 109 , khmbb, 0x00000000, 0x00000000, 0x00000000, 436); 
TEST_RR_OP( 110 , khmbb, 0x00001b25, 0x57a151f9, 0x530c2a63, 440); 
TEST_RR_OP( 111 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , khmbb, 0x00000000, 0x00000000, 0x00000000, 448); 
TEST_RR_OP( 113 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 452); 
TEST_RR_OP( 114 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 456); 
TEST_RR_OP( 115 , khmbb, 0x00000000, 0x80000000, 0x80000000, 460); 
TEST_RR_OP( 116 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 464); 
TEST_RR_OP( 117 , khmbb, 0x00000000, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , khmbb, 0x00000000, 0x190aa01f, 0x00000000, 472); 
TEST_RR_OP( 119 , khmbb, 0xffffffff, 0xffffffff, 0x2ab71ca4, 476); 
TEST_RR_OP( 120 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 480); 
TEST_RR_OP( 121 , khmbb, 0x00000000, 0x80000000, 0x80000000, 484); 
TEST_RR_OP( 122 , khmbb, 0x00001212, 0xeb1256a3, 0x01521ab4, 488); 
TEST_RR_OP( 123 , khmbb, 0xffffe329, 0xd8c986f8, 0x8a441e80, 492); 
TEST_RR_OP( 124 , khmbb, 0xffffff07, 0x38850b2e, 0xfa6df4de, 496); 
TEST_RR_OP( 125 , khmbb, 0x00000000, 0x80000000, 0x80000000, 500); 
TEST_RR_OP( 126 , khmbb, 0x00000000, 0x80000000, 0x00000000, 504); 
TEST_RR_OP( 127 , khmbb, 0x00000000, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , khmbb, 0x00000000, 0x80000000, 0x00000000, 516); 
TEST_RR_OP( 130 , khmbb, 0x00000000, 0x00000000, 0x80000000, 520); 
TEST_RR_OP( 131 , khmbb, 0x00000000, 0xffffffff, 0x88e1e0af, 524); 
TEST_RR_OP( 132 , khmbb, 0x00000000, 0x80000000, 0x35be8cd0, 528); 
TEST_RR_OP( 133 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 532); 
TEST_RR_OP( 134 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 540); 
TEST_RR_OP( 136 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 544); 
TEST_RR_OP( 137 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 548); 
TEST_RR_OP( 138 , khmbb, 0x00000000, 0x00000000, 0x00000000, 552); 
TEST_RR_OP( 139 , khmbb, 0x00000000, 0x00000000, 0xf08996d0, 556); 
TEST_RR_OP( 140 , khmbb, 0x00000000, 0x80000000, 0x80000000, 560); 
TEST_RR_OP( 141 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 564); 
TEST_RR_OP( 142 , khmbb, 0x00000000, 0x7f76944b, 0xffffffff, 568); 
TEST_RR_OP( 143 , khmbb, 0x00000000, 0xffffffff, 0xb26d864d, 572); 
TEST_RR_OP( 144 , khmbb, 0xfffff58c, 0xdaed19ce, 0x2bfecc29, 576); 
TEST_RR_OP( 145 , khmbb, 0x00000000, 0x00000000, 0x4a3e57fb, 580); 
TEST_RR_OP( 146 , khmbb, 0x00000000, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , khmbb, 0x00000000, 0x00000000, 0x00000000, 588); 
TEST_RR_OP( 148 , khmbb, 0x00000000, 0x80000000, 0x6c4c58a4, 592); 
TEST_RR_OP( 149 , khmbb, 0x00000000, 0x00000000, 0xc234aa04, 596); 
TEST_RR_OP( 150 , khmbb, 0x00000000, 0xa7c06907, 0x00000000, 600); 
TEST_RR_OP( 151 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , khmbb, 0x00000000, 0x00000000, 0x00000000, 608); 
TEST_RR_OP( 153 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 612); 
TEST_RR_OP( 154 , khmbb, 0xffffefa3, 0xe66144e2, 0x6b37e198, 616); 
TEST_RR_OP( 155 , khmbb, 0x00000e38, 0xc2a834ab, 0x145b228f, 620); 
TEST_RR_OP( 156 , khmbb, 0x00000000, 0x0a787f7c, 0x00000000, 624); 
TEST_RR_OP( 157 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , khmbb, 0x00000000, 0x3459597e, 0x00000000, 632); 
TEST_RR_OP( 159 , khmbb, 0x00000000, 0xffffffff, 0xf095d6c9, 636); 
TEST_RR_OP( 160 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 640); 
TEST_RR_OP( 161 , khmbb, 0x00000000, 0x00000000, 0x00000000, 644); 
TEST_RR_OP( 162 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 648); 
TEST_RR_OP( 163 , khmbb, 0x00000000, 0x00000000, 0x80000000, 652); 
TEST_RR_OP( 164 , khmbb, 0x00000000, 0x80000000, 0x80000000, 656); 
TEST_RR_OP( 165 , khmbb, 0x00000000, 0x00000000, 0x63372756, 660); 
TEST_RR_OP( 166 , khmbb, 0x00000000, 0x00000000, 0x80000000, 664); 
TEST_RR_OP( 167 , khmbb, 0x00000000, 0x00000000, 0x80000000, 668); 
TEST_RR_OP( 168 , khmbb, 0x00000000, 0xe718f4af, 0xffffffff, 672); 
TEST_RR_OP( 169 , khmbb, 0x00000000, 0x24fdbaef, 0x80000000, 676); 
TEST_RR_OP( 170 , khmbb, 0xffffffff, 0xffffffff, 0x547764f0, 680); 
TEST_RR_OP( 171 , khmbb, 0x00000000, 0x00000000, 0x387610fb, 684); 
TEST_RR_OP( 172 , khmbb, 0x00000000, 0x80000000, 0x80000000, 688); 
TEST_RR_OP( 173 , khmbb, 0x00000000, 0x00000000, 0x80000000, 692); 
TEST_RR_OP( 174 , khmbb, 0x00000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , khmbb, 0x00000000, 0x00000000, 0x00000000, 704); 
TEST_RR_OP( 177 , khmbb, 0x00000000, 0x263c97a3, 0xffffffff, 708); 
TEST_RR_OP( 178 , khmbb, 0x00000000, 0x00000000, 0x80000000, 712); 
TEST_RR_OP( 179 , khmbb, 0x00000000, 0x80000000, 0xf13dcd75, 716); 
TEST_RR_OP( 180 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 720); 
TEST_RR_OP( 181 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 728); 
TEST_RR_OP( 183 , khmbb, 0x00000000, 0x146591fd, 0x00000000, 732); 
TEST_RR_OP( 184 , khmbb, 0x00000000, 0xe8449ffd, 0xffffffff, 736); 
TEST_RR_OP( 185 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 744); 
TEST_RR_OP( 187 , khmbb, 0x00000000, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , khmbb, 0x00000000, 0x00000000, 0xcdb7f6d3, 752); 
TEST_RR_OP( 189 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 756); 
TEST_RR_OP( 190 , khmbb, 0x00000000, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 764); 
TEST_RR_OP( 192 , khmbb, 0x00000000, 0xffffffff, 0x80000000, 768); 
TEST_RR_OP( 193 , khmbb, 0x00000000, 0x80000000, 0x80000000, 772); 
TEST_RR_OP( 194 , khmbb, 0x00000000, 0x9c1800d7, 0x80000000, 776); 
TEST_RR_OP( 195 , khmbb, 0x00000000, 0x80000000, 0xffffffff, 780); 
TEST_RR_OP( 196 , khmbb, 0x00000000, 0xffffffff, 0xffffffff, 784); 
TEST_RR_OP( 197 , khmbb, 0x00000000, 0x95a52213, 0x80000000, 788); 
TEST_RR_OP( 198 , khmbb, 0x00000000, 0x80000000, 0x789586bf, 792); 
TEST_RR_OP( 199 , khmbb, 0x00000000, 0x00000000, 0xffffffff, 796); 

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
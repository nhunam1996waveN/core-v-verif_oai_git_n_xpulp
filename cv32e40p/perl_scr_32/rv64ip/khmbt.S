# See LICENSE for license details.
#*****************************************************************************
# khmbt.S
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

TEST_RR_OP( 2 , khmbt, 0x00000000, 0x80000000, 0xa108c82c, 8); 
TEST_RR_OP( 3 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 12); 
TEST_RR_OP( 4 , khmbt, 0x00000000, 0x80000000, 0x00000000, 16); 
TEST_RR_OP( 5 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , khmbt, 0x00000000, 0x0d0559c4, 0x00000000, 24); 
TEST_RR_OP( 7 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 28); 
TEST_RR_OP( 8 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 40); 
TEST_RR_OP( 11 , khmbt, 0xfffff946, 0x7f414ee0, 0xf517e571, 44); 
TEST_RR_OP( 12 , khmbt, 0x00000000, 0x80000000, 0x2c42f867, 48); 
TEST_RR_OP( 13 , khmbt, 0xffffffff, 0xffffffff, 0x2be65451, 52); 
TEST_RR_OP( 14 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , khmbt, 0x00000000, 0x00000000, 0x80000000, 60); 
TEST_RR_OP( 16 , khmbt, 0x000010c5, 0x08401fa4, 0x43d92c8f, 64); 
TEST_RR_OP( 17 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 68); 
TEST_RR_OP( 18 , khmbt, 0x00000000, 0x00000000, 0x00000000, 72); 
TEST_RR_OP( 19 , khmbt, 0x00000000, 0xffffffff, 0xdf526cd5, 76); 
TEST_RR_OP( 20 , khmbt, 0x00000000, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , khmbt, 0x00000000, 0x80000000, 0x80000000, 84); 
TEST_RR_OP( 22 , khmbt, 0x00000000, 0xffffffff, 0xa7910355, 88); 
TEST_RR_OP( 23 , khmbt, 0x00000000, 0x00000000, 0x80000000, 92); 
TEST_RR_OP( 24 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 96); 
TEST_RR_OP( 25 , khmbt, 0x00000000, 0x00000000, 0x00000000, 100); 
TEST_RR_OP( 26 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 104); 
TEST_RR_OP( 27 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 108); 
TEST_RR_OP( 28 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 112); 
TEST_RR_OP( 29 , khmbt, 0x00000000, 0x80000000, 0x80000000, 116); 
TEST_RR_OP( 30 , khmbt, 0x00000000, 0xa243ca0e, 0x00000000, 120); 
TEST_RR_OP( 31 , khmbt, 0x00000000, 0x80000000, 0x80000000, 124); 
TEST_RR_OP( 32 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 128); 
TEST_RR_OP( 33 , khmbt, 0xfffffd8b, 0xf8930275, 0x80000000, 132); 
TEST_RR_OP( 34 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 136); 
TEST_RR_OP( 35 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 140); 
TEST_RR_OP( 36 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 144); 
TEST_RR_OP( 37 , khmbt, 0xffff9dea, 0x7a586216, 0x80000000, 148); 
TEST_RR_OP( 38 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , khmbt, 0xffffffff, 0xffffffff, 0x6ecb1970, 156); 
TEST_RR_OP( 40 , khmbt, 0x00000000, 0x80000000, 0x80000000, 160); 
TEST_RR_OP( 41 , khmbt, 0xffffffff, 0x9b4929dc, 0xffffffff, 164); 
TEST_RR_OP( 42 , khmbt, 0x00000000, 0x80000000, 0x5b794b24, 168); 
TEST_RR_OP( 43 , khmbt, 0xffffe06f, 0x32fe39e6, 0xba38030b, 172); 
TEST_RR_OP( 44 , khmbt, 0xffffffff, 0xffffffff, 0x221059b1, 176); 
TEST_RR_OP( 45 , khmbt, 0x00000000, 0x139dfe79, 0x00000000, 180); 
TEST_RR_OP( 46 , khmbt, 0xffffffff, 0x42f47323, 0xffffffff, 184); 
TEST_RR_OP( 47 , khmbt, 0xfffff57c, 0xb53c0a84, 0x80000000, 188); 
TEST_RR_OP( 48 , khmbt, 0xffffeea9, 0xb93f1157, 0x80000000, 192); 
TEST_RR_OP( 49 , khmbt, 0x00000000, 0x00000000, 0x80000000, 196); 
TEST_RR_OP( 50 , khmbt, 0x00000000, 0xcbb29300, 0xffffffff, 200); 
TEST_RR_OP( 51 , khmbt, 0x00000000, 0x00000000, 0x80000000, 204); 
TEST_RR_OP( 52 , khmbt, 0x00000000, 0x80000000, 0x6f84f6a3, 208); 
TEST_RR_OP( 53 , khmbt, 0x00000000, 0x80000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , khmbt, 0x00000000, 0x80000000, 0xa2fc8f5e, 220); 
TEST_RR_OP( 56 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , khmbt, 0x00000000, 0x00000000, 0xa3d291b4, 228); 
TEST_RR_OP( 58 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 232); 
TEST_RR_OP( 59 , khmbt, 0x00000000, 0x00000000, 0x2d2748f1, 236); 
TEST_RR_OP( 60 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 240); 
TEST_RR_OP( 61 , khmbt, 0x00000000, 0xffffffff, 0x80b92d1e, 244); 
TEST_RR_OP( 62 , khmbt, 0x00000000, 0x80000000, 0x00000000, 248); 
TEST_RR_OP( 63 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 256); 
TEST_RR_OP( 65 , khmbt, 0x00000000, 0x415fcfcf, 0x00000000, 260); 
TEST_RR_OP( 66 , khmbt, 0xffffffff, 0xffffffff, 0x7a00e7a0, 264); 
TEST_RR_OP( 67 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 268); 
TEST_RR_OP( 68 , khmbt, 0x00000000, 0xc980062e, 0x00000000, 272); 
TEST_RR_OP( 69 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , khmbt, 0x00000000, 0x80000000, 0x80000000, 280); 
TEST_RR_OP( 71 , khmbt, 0x00000000, 0x80000000, 0xf1d9a3e1, 284); 
TEST_RR_OP( 72 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 288); 
TEST_RR_OP( 73 , khmbt, 0x00000000, 0xdcafb0cf, 0xffffffff, 292); 
TEST_RR_OP( 74 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 296); 
TEST_RR_OP( 75 , khmbt, 0x00000000, 0x00000000, 0x1087fd3b, 300); 
TEST_RR_OP( 76 , khmbt, 0x00000000, 0x3cc82d6b, 0x00000000, 304); 
TEST_RR_OP( 77 , khmbt, 0x00000000, 0x872be305, 0xffffffff, 308); 
TEST_RR_OP( 78 , khmbt, 0x00000000, 0x80000000, 0x1e4256f1, 312); 
TEST_RR_OP( 79 , khmbt, 0x00000000, 0x80000000, 0x1cc3e65f, 316); 
TEST_RR_OP( 80 , khmbt, 0x00000000, 0x00000000, 0x00000000, 320); 
TEST_RR_OP( 81 , khmbt, 0xffff9276, 0xaee06d8a, 0x80000000, 324); 
TEST_RR_OP( 82 , khmbt, 0x00000000, 0x00000000, 0xf43f1fd8, 328); 
TEST_RR_OP( 83 , khmbt, 0x00000000, 0x80000000, 0x80000000, 332); 
TEST_RR_OP( 84 , khmbt, 0x00000000, 0x80000000, 0x00000000, 336); 
TEST_RR_OP( 85 , khmbt, 0x00000000, 0x80000000, 0xd55de1dc, 340); 
TEST_RR_OP( 86 , khmbt, 0x00000000, 0x80000000, 0xa502b568, 344); 
TEST_RR_OP( 87 , khmbt, 0x00000000, 0xffffffff, 0xebe30e39, 348); 
TEST_RR_OP( 88 , khmbt, 0xffffea90, 0x41e3c4f3, 0x2e77b384, 352); 
TEST_RR_OP( 89 , khmbt, 0x00000000, 0x00000000, 0x00000000, 356); 
TEST_RR_OP( 90 , khmbt, 0x00000000, 0x00000000, 0x00000000, 360); 
TEST_RR_OP( 91 , khmbt, 0x00000000, 0x80000000, 0x1f77272b, 364); 
TEST_RR_OP( 92 , khmbt, 0xffffd373, 0xd90e410a, 0xa8546b6e, 368); 
TEST_RR_OP( 93 , khmbt, 0x00000000, 0x80000000, 0xc092993e, 372); 
TEST_RR_OP( 94 , khmbt, 0x00000000, 0x497b2896, 0x00000000, 376); 
TEST_RR_OP( 95 , khmbt, 0x00000000, 0x80000000, 0x80000000, 380); 
TEST_RR_OP( 96 , khmbt, 0xffffe27c, 0x7b891d84, 0x80000000, 384); 
TEST_RR_OP( 97 , khmbt, 0x00000000, 0xc4766050, 0x00000000, 388); 
TEST_RR_OP( 98 , khmbt, 0x00000000, 0x80000000, 0x80000000, 392); 
TEST_RR_OP( 99 , khmbt, 0x00000000, 0x80000000, 0x00000000, 396); 
TEST_RR_OP( 100 , khmbt, 0x00000000, 0xffffffff, 0xa8300a3e, 400); 
TEST_RR_OP( 101 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , khmbt, 0x0000165b, 0xd408e9a5, 0x80000000, 408); 
TEST_RR_OP( 103 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 412); 
TEST_RR_OP( 104 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 416); 
TEST_RR_OP( 105 , khmbt, 0x00000000, 0x4775c36c, 0x00000000, 420); 
TEST_RR_OP( 106 , khmbt, 0x00004479, 0xe0438c8e, 0xb4146c25, 424); 
TEST_RR_OP( 107 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 428); 
TEST_RR_OP( 108 , khmbt, 0x00000000, 0x3121e7c1, 0x00000000, 432); 
TEST_RR_OP( 109 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 436); 
TEST_RR_OP( 110 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , khmbt, 0x00000000, 0x80000000, 0x8e1b230a, 444); 
TEST_RR_OP( 112 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 448); 
TEST_RR_OP( 113 , khmbt, 0xffffbc0f, 0x380e5c61, 0xa1ddbe48, 452); 
TEST_RR_OP( 114 , khmbt, 0x00000000, 0x00000000, 0x00000000, 456); 
TEST_RR_OP( 115 , khmbt, 0x00000000, 0xe47fca26, 0xffffffff, 460); 
TEST_RR_OP( 116 , khmbt, 0x00000000, 0x00000000, 0xecaea8f9, 464); 
TEST_RR_OP( 117 , khmbt, 0x00000000, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , khmbt, 0x00000000, 0x5ea3669a, 0x00000000, 472); 
TEST_RR_OP( 119 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 476); 
TEST_RR_OP( 120 , khmbt, 0x000012f1, 0x72f7ed0f, 0x80000000, 480); 
TEST_RR_OP( 121 , khmbt, 0x00000000, 0x80000000, 0x80000000, 484); 
TEST_RR_OP( 122 , khmbt, 0xffffffff, 0xa7781d3c, 0xffffffff, 488); 
TEST_RR_OP( 123 , khmbt, 0x00000000, 0x00000000, 0x80000000, 492); 
TEST_RR_OP( 124 , khmbt, 0xffffffff, 0xffffffff, 0x08827fb5, 496); 
TEST_RR_OP( 125 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 500); 
TEST_RR_OP( 126 , khmbt, 0xffffffff, 0x6ac64490, 0xffffffff, 504); 
TEST_RR_OP( 127 , khmbt, 0x00000000, 0x7d5d48c3, 0x00000000, 508); 
TEST_RR_OP( 128 , khmbt, 0x00000000, 0x80000000, 0xeee3223f, 512); 
TEST_RR_OP( 129 , khmbt, 0x00000000, 0x80000000, 0x00000000, 516); 
TEST_RR_OP( 130 , khmbt, 0x00000000, 0x00000000, 0x00000000, 520); 
TEST_RR_OP( 131 , khmbt, 0x00000000, 0x00000000, 0x00000000, 524); 
TEST_RR_OP( 132 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 528); 
TEST_RR_OP( 133 , khmbt, 0x00000000, 0xabf8d1f7, 0xffffffff, 532); 
TEST_RR_OP( 134 , khmbt, 0x00000000, 0x80000000, 0xfef0cf42, 536); 
TEST_RR_OP( 135 , khmbt, 0x00000000, 0x80000000, 0x00000000, 540); 
TEST_RR_OP( 136 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 544); 
TEST_RR_OP( 137 , khmbt, 0x00000000, 0x00000000, 0x80000000, 548); 
TEST_RR_OP( 138 , khmbt, 0xffffffff, 0xffffffff, 0x00afa18e, 552); 
TEST_RR_OP( 139 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 556); 
TEST_RR_OP( 140 , khmbt, 0x00000000, 0x00000000, 0x80000000, 560); 
TEST_RR_OP( 141 , khmbt, 0xffffffff, 0xfde325d9, 0xffffffff, 564); 
TEST_RR_OP( 142 , khmbt, 0x00000000, 0xfc71a299, 0xffffffff, 568); 
TEST_RR_OP( 143 , khmbt, 0x00000000, 0x00000000, 0xbff5ff89, 572); 
TEST_RR_OP( 144 , khmbt, 0x00000000, 0x80000000, 0xad83b759, 576); 
TEST_RR_OP( 145 , khmbt, 0x00000000, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , khmbt, 0x00000000, 0xffffffff, 0xbd8bc3a6, 584); 
TEST_RR_OP( 147 , khmbt, 0x00000000, 0x80000000, 0x00000000, 588); 
TEST_RR_OP( 148 , khmbt, 0x00000000, 0x6a47912e, 0xffffffff, 592); 
TEST_RR_OP( 149 , khmbt, 0x00000000, 0x00000000, 0x00000000, 596); 
TEST_RR_OP( 150 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 600); 
TEST_RR_OP( 151 , khmbt, 0x00000286, 0x3c680331, 0x653622ef, 604); 
TEST_RR_OP( 152 , khmbt, 0x00000000, 0x35aceb44, 0xffffffff, 608); 
TEST_RR_OP( 153 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 612); 
TEST_RR_OP( 154 , khmbt, 0x00000000, 0xffffffff, 0xdf57f0db, 616); 
TEST_RR_OP( 155 , khmbt, 0x00000000, 0x40edaf2a, 0xffffffff, 620); 
TEST_RR_OP( 156 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 624); 
TEST_RR_OP( 157 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 628); 
TEST_RR_OP( 158 , khmbt, 0x00000000, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , khmbt, 0x00000000, 0x00000000, 0x80000000, 636); 
TEST_RR_OP( 160 , khmbt, 0xffffe406, 0x15419701, 0x221b3cfc, 640); 
TEST_RR_OP( 161 , khmbt, 0xffffffff, 0xffffffff, 0x6f052c04, 644); 
TEST_RR_OP( 162 , khmbt, 0x00000000, 0x00000000, 0x80000000, 648); 
TEST_RR_OP( 163 , khmbt, 0xffffffff, 0xffffffff, 0x31d58da2, 652); 
TEST_RR_OP( 164 , khmbt, 0x00000000, 0x80000000, 0x80000000, 656); 
TEST_RR_OP( 165 , khmbt, 0x00000000, 0x00000000, 0x00000000, 660); 
TEST_RR_OP( 166 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 664); 
TEST_RR_OP( 167 , khmbt, 0x00001323, 0x7b9244ec, 0x238bb732, 668); 
TEST_RR_OP( 168 , khmbt, 0x00000000, 0x80000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 676); 
TEST_RR_OP( 170 , khmbt, 0xffffffff, 0x391d409d, 0xffffffff, 680); 
TEST_RR_OP( 171 , khmbt, 0x00003b7b, 0x3bbd93d8, 0xb99b5b47, 684); 
TEST_RR_OP( 172 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 688); 
TEST_RR_OP( 173 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 692); 
TEST_RR_OP( 174 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 696); 
TEST_RR_OP( 175 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , khmbt, 0x00000000, 0x00000000, 0x80000000, 704); 
TEST_RR_OP( 177 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 708); 
TEST_RR_OP( 178 , khmbt, 0xffffea4d, 0x91b015b3, 0x80000000, 712); 
TEST_RR_OP( 179 , khmbt, 0x00000000, 0x80000000, 0x8148fc36, 716); 
TEST_RR_OP( 180 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 720); 
TEST_RR_OP( 181 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , khmbt, 0x00000000, 0x00000000, 0x00000000, 728); 
TEST_RR_OP( 183 , khmbt, 0x00000000, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , khmbt, 0x00000000, 0xf8e84191, 0x00000000, 736); 
TEST_RR_OP( 185 , khmbt, 0x00000000, 0x80000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , khmbt, 0x00000000, 0x00000000, 0xffffffff, 744); 
TEST_RR_OP( 187 , khmbt, 0x00000000, 0x2bcbcff8, 0x00000000, 748); 
TEST_RR_OP( 188 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , khmbt, 0x00001267, 0x673f205c, 0x48cbecdd, 756); 
TEST_RR_OP( 190 , khmbt, 0x00000000, 0x80000000, 0x80000000, 760); 
TEST_RR_OP( 191 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 764); 
TEST_RR_OP( 192 , khmbt, 0x00000000, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , khmbt, 0x00000000, 0x80000000, 0x80000000, 772); 
TEST_RR_OP( 194 , khmbt, 0x00000000, 0x00000000, 0x00000000, 776); 
TEST_RR_OP( 195 , khmbt, 0x00000000, 0x00000000, 0xa4af078f, 780); 
TEST_RR_OP( 196 , khmbt, 0x00000000, 0x00000000, 0xdec6e25d, 784); 
TEST_RR_OP( 197 , khmbt, 0x00000000, 0xffffffff, 0x00000000, 788); 
TEST_RR_OP( 198 , khmbt, 0x00000000, 0xffffffff, 0xffffffff, 792); 
TEST_RR_OP( 199 , khmbt, 0x00000001, 0xffffffff, 0x80000000, 796); 

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
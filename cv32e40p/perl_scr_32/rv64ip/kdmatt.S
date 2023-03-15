# See LICENSE for license details.
#*****************************************************************************
# kdmatt.S
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

TEST_RR_OP( 2 , kdmatt, 0x471c3bc0, 0x7c1096b0, 0x495efe46, 8); 
TEST_RR_OP( 3 , kdmatt, 0x471d3bc0, 0x80000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , kdmatt, 0x012fffff, 0x80000000, 0x7ed0ddf5, 20); 
TEST_RR_OP( 6 , kdmatt, 0x01300001, 0xffffffff, 0xffffffff, 24); 
TEST_RR_OP( 7 , kdmatt, 0x01300001, 0x9a4d9554, 0x00000000, 28); 
TEST_RR_OP( 8 , kdmatt, 0x01305bf3, 0xffffffff, 0xd2077f0d, 32); 
TEST_RR_OP( 9 , kdmatt, 0x01305bf5, 0xffffffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , kdmatt, 0x01315bf5, 0x80000000, 0xffffffff, 40); 
TEST_RR_OP( 11 , kdmatt, 0x01325bf5, 0x80000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , kdmatt, 0xeac05bf5, 0x1672effa, 0x80000000, 48); 
TEST_RR_OP( 13 , kdmatt, 0xeac15bf5, 0xffffffff, 0x80000000, 52); 
TEST_RR_OP( 14 , kdmatt, 0xeac15bf5, 0xffffffff, 0x00000000, 56); 
TEST_RR_OP( 15 , kdmatt, 0xeac15bf5, 0x00000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , kdmatt, 0xe6b164f5, 0x80405a6b, 0x041276e7, 64); 
TEST_RR_OP( 17 , kdmatt, 0xe6b264f5, 0x80000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kdmatt, 0xec007967, 0x37f3841e, 0x0c236c58, 72); 
TEST_RR_OP( 19 , kdmatt, 0xcb007967, 0x2100af8a, 0x80000000, 76); 
TEST_RR_OP( 20 , kdmatt, 0xcb007967, 0x00000000, 0x3b73fe4e, 80); 
TEST_RR_OP( 21 , kdmatt, 0xcb007967, 0x00000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kdmatt, 0xcb007967, 0x00000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , kdmatt, 0xcb007967, 0x80000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kdmatt, 0xd4bb7967, 0x80000000, 0xf645b8e1, 96); 
TEST_RR_OP( 25 , kdmatt, 0xd4bb7969, 0xffffffff, 0xffffffff, 100); 
TEST_RR_OP( 26 , kdmatt, 0xd4bb7969, 0x00000000, 0x80000000, 104); 
TEST_RR_OP( 27 , kdmatt, 0xd4bb4e91, 0x156c6400, 0xffffffff, 108); 
TEST_RR_OP( 28 , kdmatt, 0xd4bb4e91, 0xacf45dd6, 0x00000000, 112); 
TEST_RR_OP( 29 , kdmatt, 0xd4bc2623, 0xffffffff, 0x9437ff52, 116); 
TEST_RR_OP( 30 , kdmatt, 0xd4bc2623, 0xffffffff, 0x00000000, 120); 
TEST_RR_OP( 31 , kdmatt, 0xd4bc2623, 0x80000000, 0x00000000, 124); 
TEST_RR_OP( 32 , kdmatt, 0xd4bc2623, 0x27ecee60, 0x00000000, 128); 
TEST_RR_OP( 33 , kdmatt, 0xe5f38bb7, 0x3ecf6729, 0x23163d53, 132); 
TEST_RR_OP( 34 , kdmatt, 0x90468bb7, 0x80000000, 0x55adcc14, 136); 
TEST_RR_OP( 35 , kdmatt, 0x10468bb6, 0x80000000, 0x80000000, 140); 
TEST_RR_OP( 36 , kdmatt, 0x10468bb6, 0x80000000, 0x00000000, 144); 
TEST_RR_OP( 37 , kdmatt, 0x10468bb6, 0xffffffff, 0x00000000, 148); 
TEST_RR_OP( 38 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 152); 
TEST_RR_OP( 39 , kdmatt, 0x7fffffff, 0xffffffff, 0x00000000, 156); 
TEST_RR_OP( 40 , kdmatt, 0x7fffffff, 0x00000000, 0x2c5351d9, 160); 
TEST_RR_OP( 41 , kdmatt, 0x7fffffff, 0x00000000, 0x80000000, 164); 
TEST_RR_OP( 42 , kdmatt, 0x7fffffff, 0xb7ce81ce, 0x00000000, 168); 
TEST_RR_OP( 43 , kdmatt, 0x7fffffff, 0xffffffff, 0xffffffff, 172); 
TEST_RR_OP( 44 , kdmatt, 0x7fffffff, 0xffffffff, 0xffffffff, 176); 
TEST_RR_OP( 45 , kdmatt, 0x7fffffff, 0xffffffff, 0xffffffff, 180); 
TEST_RR_OP( 46 , kdmatt, 0x7fffffff, 0x00000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 188); 
TEST_RR_OP( 48 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 196); 
TEST_RR_OP( 50 , kdmatt, 0x7fffffff, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , kdmatt, 0x7fffffff, 0x80000000, 0xb3877ce9, 204); 
TEST_RR_OP( 52 , kdmatt, 0x7fffef87, 0xffffffff, 0x083c5cc2, 208); 
TEST_RR_OP( 53 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , kdmatt, 0x7fffffff, 0x8786ce21, 0x00000000, 216); 
TEST_RR_OP( 55 , kdmatt, 0x7fffb09f, 0xffffffff, 0x27b0a834, 220); 
TEST_RR_OP( 56 , kdmatt, 0x7fff9719, 0x0cc3101c, 0xffffffff, 224); 
TEST_RR_OP( 57 , kdmatt, 0x7fff9719, 0x9addd222, 0x00000000, 228); 
TEST_RR_OP( 58 , kdmatt, 0x7fff9719, 0x00000000, 0x69276a4c, 232); 
TEST_RR_OP( 59 , kdmatt, 0x7fffffff, 0x8aecb729, 0xa6fd918c, 236); 
TEST_RR_OP( 60 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 240); 
TEST_RR_OP( 61 , kdmatt, 0x7fffffff, 0x73faca97, 0x00000000, 244); 
TEST_RR_OP( 62 , kdmatt, 0x7fffffff, 0x00000000, 0x00000000, 248); 
TEST_RR_OP( 63 , kdmatt, 0x7fffffff, 0x00000000, 0x00000000, 252); 
TEST_RR_OP( 64 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 260); 
TEST_RR_OP( 66 , kdmatt, 0x7fffffff, 0xffffffff, 0x00000000, 264); 
TEST_RR_OP( 67 , kdmatt, 0x7fffffff, 0x00000000, 0x80000000, 268); 
TEST_RR_OP( 68 , kdmatt, 0x7fffffff, 0xffffffff, 0x00000000, 272); 
TEST_RR_OP( 69 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 276); 
TEST_RR_OP( 70 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 280); 
TEST_RR_OP( 71 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 284); 
TEST_RR_OP( 72 , kdmatt, 0x7fffffff, 0x80000000, 0x00000000, 288); 
TEST_RR_OP( 73 , kdmatt, 0x7fffffff, 0x00000000, 0x80000000, 292); 
TEST_RR_OP( 74 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 296); 
TEST_RR_OP( 75 , kdmatt, 0x7fffffff, 0x00000000, 0x2071e528, 300); 
TEST_RR_OP( 76 , kdmatt, 0x7fffffff, 0x00000000, 0x80000000, 304); 
TEST_RR_OP( 77 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 308); 
TEST_RR_OP( 78 , kdmatt, 0x7fffffff, 0xffffffff, 0xffffffff, 312); 
TEST_RR_OP( 79 , kdmatt, 0x7fffffff, 0xd10f9bdd, 0x00000000, 316); 
TEST_RR_OP( 80 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 320); 
TEST_RR_OP( 81 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 324); 
TEST_RR_OP( 82 , kdmatt, 0x7fffffff, 0x00000000, 0x80000000, 328); 
TEST_RR_OP( 83 , kdmatt, 0x7fffffff, 0x00000000, 0x00000000, 332); 
TEST_RR_OP( 84 , kdmatt, 0x7fffffff, 0x00000000, 0x33f93484, 336); 
TEST_RR_OP( 85 , kdmatt, 0x7fffffff, 0xdb981e58, 0xffffffff, 340); 
TEST_RR_OP( 86 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 344); 
TEST_RR_OP( 87 , kdmatt, 0x7fffffff, 0x00000000, 0xfbfca03f, 348); 
TEST_RR_OP( 88 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 352); 
TEST_RR_OP( 89 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , kdmatt, 0x7fffffff, 0x00000000, 0x80000000, 360); 
TEST_RR_OP( 91 , kdmatt, 0x7fffdaf3, 0xffffffff, 0x1286a644, 364); 
TEST_RR_OP( 92 , kdmatt, 0x7fffdaf3, 0x80000000, 0x00000000, 368); 
TEST_RR_OP( 93 , kdmatt, 0x7fffdaf3, 0x00000000, 0x48c4362d, 372); 
TEST_RR_OP( 94 , kdmatt, 0x7fffdaf3, 0x00000000, 0x00000000, 376); 
TEST_RR_OP( 95 , kdmatt, 0x6275b771, 0x463d774c, 0xca2b9e23, 380); 
TEST_RR_OP( 96 , kdmatt, 0x6276893d, 0xffffffff, 0x971af6bc, 384); 
TEST_RR_OP( 97 , kdmatt, 0x6275904b, 0x7c79e09e, 0xffffffff, 388); 
TEST_RR_OP( 98 , kdmatt, 0x6275904b, 0x00000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , kdmatt, 0x6276904b, 0xffffffff, 0x80000000, 396); 
TEST_RR_OP( 100 , kdmatt, 0x6276904b, 0x00000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , kdmatt, 0x6276904b, 0x00000000, 0xffffffff, 404); 
TEST_RR_OP( 102 , kdmatt, 0x6276904b, 0x00000000, 0xffffffff, 408); 
TEST_RR_OP( 103 , kdmatt, 0x6277904b, 0x80000000, 0xffffffff, 412); 
TEST_RR_OP( 104 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kdmatt, 0x7fffffff, 0x1706bec7, 0x00000000, 420); 
TEST_RR_OP( 106 , kdmatt, 0x7fff5de1, 0xffffffff, 0x510f4350, 424); 
TEST_RR_OP( 107 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 428); 
TEST_RR_OP( 108 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 432); 
TEST_RR_OP( 109 , kdmatt, 0x6932ffff, 0x16cd386b, 0x80000000, 436); 
TEST_RR_OP( 110 , kdmatt, 0x75d7ffff, 0xf35b5ee7, 0x80000000, 440); 
TEST_RR_OP( 111 , kdmatt, 0x75d80001, 0xffffffff, 0xffffffff, 444); 
TEST_RR_OP( 112 , kdmatt, 0x75d90001, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , kdmatt, 0x75d8d30d, 0x167a6bfa, 0xffffffff, 452); 
TEST_RR_OP( 114 , kdmatt, 0x75d8d30d, 0x00000000, 0xd3d2738c, 456); 
TEST_RR_OP( 115 , kdmatt, 0x75d8d30d, 0x80000000, 0x00000000, 460); 
TEST_RR_OP( 116 , kdmatt, 0x75d8d30d, 0x00000000, 0x00000000, 464); 
TEST_RR_OP( 117 , kdmatt, 0x75d8d30d, 0x00000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , kdmatt, 0x75d8d30d, 0x00000000, 0xf32628c3, 472); 
TEST_RR_OP( 119 , kdmatt, 0x75d8d30d, 0x00000000, 0x1aec6a08, 476); 
TEST_RR_OP( 120 , kdmatt, 0x7fffffff, 0x80000000, 0xc827297e, 480); 
TEST_RR_OP( 121 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 484); 
TEST_RR_OP( 122 , kdmatt, 0x7fffffff, 0xda5ac5da, 0x80000000, 488); 
TEST_RR_OP( 123 , kdmatt, 0x7fffffff, 0xffffffff, 0xa2ef75f8, 492); 
TEST_RR_OP( 124 , kdmatt, 0x7fffffff, 0xffffffff, 0xffffffff, 496); 
TEST_RR_OP( 125 , kdmatt, 0x7fffffff, 0x8e7e1c29, 0xffffffff, 500); 
TEST_RR_OP( 126 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 504); 
TEST_RR_OP( 127 , kdmatt, 0x7fffffff, 0xffffffff, 0xffffffff, 508); 
TEST_RR_OP( 128 , kdmatt, 0x7fffffff, 0x80000000, 0x00000000, 512); 
TEST_RR_OP( 129 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , kdmatt, 0x2362ffff, 0x80000000, 0x5c9dc38c, 520); 
TEST_RR_OP( 131 , kdmatt, 0x2362ffff, 0x00000000, 0x80000000, 524); 
TEST_RR_OP( 132 , kdmatt, 0x2362ffff, 0xc8584ab9, 0x00000000, 528); 
TEST_RR_OP( 133 , kdmatt, 0x236364a5, 0xffffffff, 0xcdadec89, 532); 
TEST_RR_OP( 134 , kdmatt, 0x648864a5, 0xbedbbe85, 0x80000000, 536); 
TEST_RR_OP( 135 , kdmatt, 0x648964a5, 0x80000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , kdmatt, 0x3ac11e85, 0x4a0e72d6, 0xb7c8db89, 544); 
TEST_RR_OP( 137 , kdmatt, 0x3ac11e87, 0xffffffff, 0xffffffff, 548); 
TEST_RR_OP( 138 , kdmatt, 0x3ac21e87, 0xffffffff, 0x80000000, 552); 
TEST_RR_OP( 139 , kdmatt, 0x3ac31e87, 0xffffffff, 0x80000000, 556); 
TEST_RR_OP( 140 , kdmatt, 0x3ac31e87, 0xa27c7f08, 0x00000000, 560); 
TEST_RR_OP( 141 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , kdmatt, 0x7fffffff, 0xffffffff, 0x00000000, 572); 
TEST_RR_OP( 144 , kdmatt, 0x7fffbf15, 0xffffffff, 0x20750430, 576); 
TEST_RR_OP( 145 , kdmatt, 0x7fffffff, 0x80000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kdmatt, 0x7fffffff, 0xffffffff, 0x00000000, 584); 
TEST_RR_OP( 147 , kdmatt, 0x7fffffff, 0xffffffff, 0x00000000, 588); 
TEST_RR_OP( 148 , kdmatt, 0x7fffffff, 0x00000000, 0x00000000, 592); 
TEST_RR_OP( 149 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 600); 
TEST_RR_OP( 151 , kdmatt, 0x7fffffff, 0x00000000, 0xad260f8e, 604); 
TEST_RR_OP( 152 , kdmatt, 0x7fffffff, 0xffffffff, 0x80000000, 608); 
TEST_RR_OP( 153 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 612); 
TEST_RR_OP( 154 , kdmatt, 0x7fffffff, 0xb3e2ce4b, 0xffffffff, 616); 
TEST_RR_OP( 155 , kdmatt, 0x0dabffff, 0x7254198d, 0x80000000, 620); 
TEST_RR_OP( 156 , kdmatt, 0x0dabffff, 0xffffffff, 0x00000000, 624); 
TEST_RR_OP( 157 , kdmatt, 0x0dabffff, 0x4dbde7dc, 0x00000000, 628); 
TEST_RR_OP( 158 , kdmatt, 0xffb0ffff, 0x0dfbf90b, 0x80000000, 632); 
TEST_RR_OP( 159 , kdmatt, 0xffb18723, 0xbc6eeb30, 0xffffffff, 636); 
TEST_RR_OP( 160 , kdmatt, 0xffb28723, 0x80000000, 0xffffffff, 640); 
TEST_RR_OP( 161 , kdmatt, 0xffb28723, 0x00000000, 0x58800a9c, 644); 
TEST_RR_OP( 162 , kdmatt, 0xffb28723, 0x6fc76f1a, 0x00000000, 648); 
TEST_RR_OP( 163 , kdmatt, 0xffb38723, 0x80000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , kdmatt, 0xffb48723, 0xffffffff, 0x80000000, 656); 
TEST_RR_OP( 165 , kdmatt, 0xc37d8723, 0x3c37bb63, 0x80000000, 660); 
TEST_RR_OP( 166 , kdmatt, 0xc37d8723, 0x80000000, 0x00000000, 664); 
TEST_RR_OP( 167 , kdmatt, 0x437d8722, 0x80000000, 0x80000000, 668); 
TEST_RR_OP( 168 , kdmatt, 0x437d8722, 0x00000000, 0x00000000, 672); 
TEST_RR_OP( 169 , kdmatt, 0x437e8722, 0x80000000, 0xffffffff, 676); 
TEST_RR_OP( 170 , kdmatt, 0x437e8722, 0x00000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , kdmatt, 0x437e8722, 0xb8933189, 0x00000000, 684); 
TEST_RR_OP( 172 , kdmatt, 0x437e8722, 0x00000000, 0xffffffff, 688); 
TEST_RR_OP( 173 , kdmatt, 0x5fc2f4b2, 0x26ecfc50, 0x5cf67ab3, 692); 
TEST_RR_OP( 174 , kdmatt, 0x5fc3f4b2, 0xffffffff, 0x80000000, 696); 
TEST_RR_OP( 175 , kdmatt, 0x5fc3f4b2, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , kdmatt, 0x5fc3f4b2, 0x80000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kdmatt, 0x5fc3f4b2, 0x00000000, 0x00abbc5e, 708); 
TEST_RR_OP( 178 , kdmatt, 0x63fd0f00, 0x74c718ea, 0x04a11f11, 712); 
TEST_RR_OP( 179 , kdmatt, 0x63fd0f00, 0x00000000, 0x16a405f9, 716); 
TEST_RR_OP( 180 , kdmatt, 0x63fe0f00, 0xffffffff, 0x80000000, 720); 
TEST_RR_OP( 181 , kdmatt, 0x7fffffff, 0xcb2a3b6c, 0x80000000, 724); 
TEST_RR_OP( 182 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 728); 
TEST_RR_OP( 183 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , kdmatt, 0x7fffffff, 0xffffffff, 0x98edfdfd, 736); 
TEST_RR_OP( 185 , kdmatt, 0x7fffffff, 0x00000000, 0x00000000, 740); 
TEST_RR_OP( 186 , kdmatt, 0x7fffffff, 0x00000000, 0xffffffff, 744); 
TEST_RR_OP( 187 , kdmatt, 0x7fffffff, 0x00000000, 0x76866e58, 748); 
TEST_RR_OP( 188 , kdmatt, 0x7fffffff, 0x00000000, 0xe89fca8f, 752); 
TEST_RR_OP( 189 , kdmatt, 0x7fffffff, 0x80000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , kdmatt, 0x7fffffff, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , kdmatt, 0x003fffff, 0x80000000, 0x7fc01a33, 764); 
TEST_RR_OP( 192 , kdmatt, 0x0040151d, 0xf5711d37, 0xffffffff, 768); 
TEST_RR_OP( 193 , kdmatt, 0x8f98151d, 0x70a80b3d, 0x80000000, 772); 
TEST_RR_OP( 194 , kdmatt, 0x8f97a2eb, 0x3919f78c, 0xffffffff, 776); 
TEST_RR_OP( 195 , kdmatt, 0xeb4a4843, 0x952c0f13, 0x9221eb47, 780); 
TEST_RR_OP( 196 , kdmatt, 0xf2814843, 0xf8c9dfb6, 0x80000000, 784); 
TEST_RR_OP( 197 , kdmatt, 0xf281e941, 0xaf810b53, 0xffffffff, 788); 
TEST_RR_OP( 198 , kdmatt, 0xf281e941, 0x00000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , kdmatt, 0xf281e941, 0x00000000, 0x00000000, 796); 

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
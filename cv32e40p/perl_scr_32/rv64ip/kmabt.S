# See LICENSE for license details.
#*****************************************************************************
# kmabt.S
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

TEST_RR_OP( 2 , kmabt, 0x00008000, 0xffffffff, 0x80000000, 8); 
TEST_RR_OP( 3 , kmabt, 0x00008000, 0x00000000, 0x77e7beee, 12); 
TEST_RR_OP( 4 , kmabt, 0x00008000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , kmabt, 0x00008000, 0xffffffff, 0x00000000, 20); 
TEST_RR_OP( 6 , kmabt, 0x00008000, 0xffffffff, 0x00000000, 24); 
TEST_RR_OP( 7 , kmabt, 0x00008000, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , kmabt, 0x00008000, 0x00000000, 0xea735923, 32); 
TEST_RR_OP( 9 , kmabt, 0x00008000, 0x00000000, 0x00000000, 36); 
TEST_RR_OP( 10 , kmabt, 0x00008000, 0x00000000, 0xffffffff, 40); 
TEST_RR_OP( 11 , kmabt, 0xd273c1f4, 0xe96e9a94, 0x72f92863, 44); 
TEST_RR_OP( 12 , kmabt, 0xd273c1f4, 0x80000000, 0x00000000, 48); 
TEST_RR_OP( 13 , kmabt, 0xd27441f4, 0xffffffff, 0x80000000, 52); 
TEST_RR_OP( 14 , kmabt, 0xd27441f4, 0x80000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , kmabt, 0xc7a087d8, 0x7a16ca5e, 0x33ae7a24, 60); 
TEST_RR_OP( 16 , kmabt, 0xc7a087d8, 0x00000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmabt, 0xc7a087d9, 0xffffffff, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmabt, 0xc7a087d9, 0x00000000, 0x80000000, 72); 
TEST_RR_OP( 19 , kmabt, 0xc7a087d9, 0x00000000, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmabt, 0xc7050939, 0xddfb0328, 0xcebc7cf6, 80); 
TEST_RR_OP( 21 , kmabt, 0xc7054485, 0x2280c4b4, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmabt, 0xc7054485, 0x00000000, 0x29aed262, 88); 
TEST_RR_OP( 23 , kmabt, 0xc7054485, 0x80000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , kmabt, 0xc705a962, 0xa3449b23, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmabt, 0xc7053bb4, 0xffffffff, 0x6dae8a1a, 100); 
TEST_RR_OP( 26 , kmabt, 0xc7053bb4, 0x00000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmabt, 0xc7053bb4, 0x80000000, 0x00000000, 108); 
TEST_RR_OP( 28 , kmabt, 0xc7053bb4, 0x00000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , kmabt, 0xc704e7db, 0x3c5153d9, 0xffffffff, 116); 
TEST_RR_OP( 30 , kmabt, 0xc704e7db, 0x80000000, 0x80000000, 120); 
TEST_RR_OP( 31 , kmabt, 0xdd9c67db, 0xe43bd2d1, 0x80000000, 124); 
TEST_RR_OP( 32 , kmabt, 0xdd9c67db, 0xffffffff, 0x00000000, 128); 
TEST_RR_OP( 33 , kmabt, 0xdd9c67db, 0x80000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmabt, 0xd1b7e7db, 0xb4f717c9, 0x80000000, 136); 
TEST_RR_OP( 35 , kmabt, 0xd1b855d0, 0xffffffff, 0x920b35c5, 140); 
TEST_RR_OP( 36 , kmabt, 0xd1b8515d, 0xffffffff, 0x0473c9c9, 144); 
TEST_RR_OP( 37 , kmabt, 0xd1b8515e, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmabt, 0xa28dd15e, 0x7daf5e55, 0x80000000, 152); 
TEST_RR_OP( 39 , kmabt, 0xa18b5f04, 0xdd32d0cf, 0x057a37d3, 156); 
TEST_RR_OP( 40 , kmabt, 0xa18b5f04, 0x80000000, 0x80000000, 160); 
TEST_RR_OP( 41 , kmabt, 0xa18b5f04, 0x00000000, 0x8bcd42c5, 164); 
TEST_RR_OP( 42 , kmabt, 0xa18b5f04, 0x80000000, 0x80000000, 168); 
TEST_RR_OP( 43 , kmabt, 0xa18b0a99, 0xffffffff, 0x546bb401, 172); 
TEST_RR_OP( 44 , kmabt, 0xa18b0a99, 0xffffffff, 0x00000000, 176); 
TEST_RR_OP( 45 , kmabt, 0xa18b0a99, 0x80000000, 0x80000000, 180); 
TEST_RR_OP( 46 , kmabt, 0xa18b0a99, 0x80000000, 0x03915edb, 184); 
TEST_RR_OP( 47 , kmabt, 0xa18b0a99, 0x80000000, 0xffffffff, 188); 
TEST_RR_OP( 48 , kmabt, 0xa18b0a99, 0x00000000, 0x00000000, 192); 
TEST_RR_OP( 49 , kmabt, 0xa18b0a99, 0xffffffff, 0x00000000, 196); 
TEST_RR_OP( 50 , kmabt, 0xa18b0a99, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , kmabt, 0x80000000, 0xa49073da, 0x80000000, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_RR_OP( 55 , kmabt, 0xffffef1a, 0xb04d10e6, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmabt, 0xe24eeb44, 0xd0ec594e, 0xaae361d0, 224); 
TEST_RR_OP( 57 , kmabt, 0xe0596f70, 0x60c7f1c4, 0x233b7599, 228); 
TEST_RR_OP( 58 , kmabt, 0xe05930d2, 0xffffffff, 0x3e9ef158, 232); 
TEST_RR_OP( 59 , kmabt, 0xe059b0d2, 0xffffffff, 0x80000000, 236); 
TEST_RR_OP( 60 , kmabt, 0xe059b0d2, 0x00000000, 0x00000000, 240); 
TEST_RR_OP( 61 , kmabt, 0xe30e30d2, 0xec2afa97, 0x80000000, 244); 
TEST_RR_OP( 62 , kmabt, 0xe30e30d2, 0xffffffff, 0x00000000, 248); 
TEST_RR_OP( 63 , kmabt, 0xd8e67c16, 0xd15d30ea, 0xcada4149, 252); 
TEST_RR_OP( 64 , kmabt, 0xd8e67c16, 0x00000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , kmabt, 0xd8e610a6, 0xffffffff, 0x6b70c830, 260); 
TEST_RR_OP( 66 , kmabt, 0xd8e610a6, 0xffffffff, 0x00000000, 264); 
TEST_RR_OP( 67 , kmabt, 0xd8e610a6, 0x80000000, 0x66f0284f, 268); 
TEST_RR_OP( 68 , kmabt, 0xd8e610a6, 0x00000000, 0x3dd4a9c6, 272); 
TEST_RR_OP( 69 , kmabt, 0xd8e610a7, 0xffffffff, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmabt, 0xd8e690a7, 0xffffffff, 0x80000000, 280); 
TEST_RR_OP( 71 , kmabt, 0xd8e690a7, 0x80000000, 0x80000000, 284); 
TEST_RR_OP( 72 , kmabt, 0xd8e690a7, 0x80000000, 0x00000000, 288); 
TEST_RR_OP( 73 , kmabt, 0xd8e690a7, 0x00000000, 0xab997e27, 292); 
TEST_RR_OP( 74 , kmabt, 0xd8e690a7, 0x80000000, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmabt, 0xd8e690a7, 0xffffffff, 0x00000000, 300); 
TEST_RR_OP( 76 , kmabt, 0xd8e710a7, 0xffffffff, 0x80000000, 304); 
TEST_RR_OP( 77 , kmabt, 0xd8e710a7, 0x80000000, 0x80000000, 308); 
TEST_RR_OP( 78 , kmabt, 0xd8e710a7, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , kmabt, 0x9d7b10a7, 0xc04576d8, 0x80000000, 316); 
TEST_RR_OP( 80 , kmabt, 0xc67010a7, 0xdd7aae16, 0x80000000, 320); 
TEST_RR_OP( 81 , kmabt, 0xc67010a7, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kmabt, 0xc67010a7, 0x00000000, 0x00000000, 328); 
TEST_RR_OP( 83 , kmabt, 0xa35790a7, 0x1bb04631, 0x80000000, 332); 
TEST_RR_OP( 84 , kmabt, 0xa35790a8, 0xffffffff, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmabt, 0xa35790a8, 0x80000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , kmabt, 0xa35790a8, 0x80000000, 0x80000000, 344); 
TEST_RR_OP( 87 , kmabt, 0xa35790a8, 0x00000000, 0x80000000, 348); 
TEST_RR_OP( 88 , kmabt, 0xa35790a8, 0x00000000, 0x80000000, 352); 
TEST_RR_OP( 89 , kmabt, 0xa35790a8, 0x80000000, 0x00000000, 356); 
TEST_RR_OP( 90 , kmabt, 0xa35790a8, 0x80000000, 0x00000000, 360); 
TEST_RR_OP( 91 , kmabt, 0xa3579525, 0xffffffff, 0xfb83c575, 364); 
TEST_RR_OP( 92 , kmabt, 0xa3579525, 0x80000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , kmabt, 0xa3579525, 0x80000000, 0xbfcfb79d, 372); 
TEST_RR_OP( 94 , kmabt, 0xa3579525, 0x80000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmabt, 0xa3581525, 0xffffffff, 0x80000000, 380); 
TEST_RR_OP( 96 , kmabt, 0xa3581525, 0x00000000, 0x80000000, 384); 
TEST_RR_OP( 97 , kmabt, 0xa3587093, 0xade9a492, 0xffffffff, 388); 
TEST_RR_OP( 98 , kmabt, 0xa3587093, 0x80000000, 0xd1caab03, 392); 
TEST_RR_OP( 99 , kmabt, 0xa3587093, 0x00000000, 0xf9dae4c2, 396); 
TEST_RR_OP( 100 , kmabt, 0xa358dc3e, 0xffffffff, 0x94552c03, 400); 
TEST_RR_OP( 101 , kmabt, 0xa358dc3e, 0xffffffff, 0x00000000, 404); 
TEST_RR_OP( 102 , kmabt, 0xa3595c3e, 0xffffffff, 0x80000000, 408); 
TEST_RR_OP( 103 , kmabt, 0x98c22547, 0xec79dd4f, 0x4e278499, 412); 
TEST_RR_OP( 104 , kmabt, 0x80000000, 0x8d504468, 0x80000000, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , kmabt, 0x00000000, 0x00000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmabt, 0x00000000, 0x80000000, 0xffffffff, 436); 
TEST_RR_OP( 110 , kmabt, 0x00000000, 0x00000000, 0x80000000, 440); 
TEST_RR_OP( 111 , kmabt, 0x083c7ac5, 0xa00515ab, 0x614f4783, 444); 
TEST_RR_OP( 112 , kmabt, 0x083cf959, 0xffffffff, 0x816cf413, 448); 
TEST_RR_OP( 113 , kmabt, 0x083cf959, 0x00000000, 0x80000000, 452); 
TEST_RR_OP( 114 , kmabt, 0x083d7959, 0xffffffff, 0x80000000, 456); 
TEST_RR_OP( 115 , kmabt, 0x083d795a, 0xffffffff, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmabt, 0x083dd0fe, 0xffffffff, 0xa85c9e3e, 464); 
TEST_RR_OP( 117 , kmabt, 0x083dd0fe, 0x80000000, 0x80000000, 468); 
TEST_RR_OP( 118 , kmabt, 0x22f6d0fe, 0xf1d5ca8e, 0x80000000, 472); 
TEST_RR_OP( 119 , kmabt, 0x22f67370, 0xeecb5d8e, 0xffffffff, 476); 
TEST_RR_OP( 120 , kmabt, 0x22f67370, 0x00000000, 0x10176ffe, 480); 
TEST_RR_OP( 121 , kmabt, 0x22f67371, 0xffffffff, 0xffffffff, 484); 
TEST_RR_OP( 122 , kmabt, 0x22f67371, 0xbd56faa9, 0x00000000, 488); 
TEST_RR_OP( 123 , kmabt, 0x22f67371, 0x59468e3a, 0x00000000, 492); 
TEST_RR_OP( 124 , kmabt, 0x22f67371, 0x80000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kmabt, 0x22f67371, 0xffffffff, 0x00000000, 500); 
TEST_RR_OP( 126 , kmabt, 0x22f5f4e4, 0xffffffff, 0x7e8dcad8, 504); 
TEST_RR_OP( 127 , kmabt, 0x22f5f4e4, 0x80000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmabt, 0x22f674e4, 0xffffffff, 0x80000000, 512); 
TEST_RR_OP( 129 , kmabt, 0x22f674e4, 0x00000000, 0x00000000, 516); 
TEST_RR_OP( 130 , kmabt, 0x22f648d4, 0xffffffff, 0x2c10c6d8, 520); 
TEST_RR_OP( 131 , kmabt, 0x5b787d9a, 0xb843827d, 0x8cbea2c9, 524); 
TEST_RR_OP( 132 , kmabt, 0x5b787d9a, 0x299893da, 0x00000000, 528); 
TEST_RR_OP( 133 , kmabt, 0x5b787d9a, 0x00000000, 0x00000000, 532); 
TEST_RR_OP( 134 , kmabt, 0x5b787d9a, 0x80000000, 0x80000000, 536); 
TEST_RR_OP( 135 , kmabt, 0x5b787d9a, 0xffffffff, 0x00000000, 540); 
TEST_RR_OP( 136 , kmabt, 0x5b787d9a, 0x00000000, 0x00000000, 544); 
TEST_RR_OP( 137 , kmabt, 0x5b787d9a, 0x00000000, 0x00000000, 548); 
TEST_RR_OP( 138 , kmabt, 0x5b60eaa8, 0x14a6455e, 0xffa95b9f, 552); 
TEST_RR_OP( 139 , kmabt, 0x5b61076b, 0xffffffff, 0xe33dbd48, 556); 
TEST_RR_OP( 140 , kmabt, 0x5b61076b, 0x00000000, 0x80000000, 560); 
TEST_RR_OP( 141 , kmabt, 0x5b61076b, 0x00000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kmabt, 0x5b60a560, 0xffffffff, 0x620ba509, 568); 
TEST_RR_OP( 143 , kmabt, 0x5b60a560, 0x80000000, 0x2676b838, 572); 
TEST_RR_OP( 144 , kmabt, 0x5b60a560, 0x00000000, 0x80000000, 576); 
TEST_RR_OP( 145 , kmabt, 0x5b6089f2, 0xffffffff, 0x1b6e98f1, 580); 
TEST_RR_OP( 146 , kmabt, 0x7fffffff, 0x0ee39d5f, 0x8f52eb4d, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , kmabt, 0x00008000, 0xffffffff, 0x80000000, 600); 
TEST_RR_OP( 151 , kmabt, 0x00010000, 0xffffffff, 0x80000000, 604); 
TEST_RR_OP( 152 , kmabt, 0xf76c953f, 0x88c6e87d, 0x5d6b91ee, 608); 
TEST_RR_OP( 153 , kmabt, 0xf76cb1f5, 0xffffffff, 0xe34a6a5c, 612); 
TEST_RR_OP( 154 , kmabt, 0xf76cb1f5, 0x00000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmabt, 0xf76cb1f5, 0x00000000, 0x80000000, 620); 
TEST_RR_OP( 156 , kmabt, 0xf76cb1f5, 0x80000000, 0x80000000, 624); 
TEST_RR_OP( 157 , kmabt, 0xf76d31f5, 0xffffffff, 0x80000000, 628); 
TEST_RR_OP( 158 , kmabt, 0xf76db1f5, 0xffffffff, 0x80000000, 632); 
TEST_RR_OP( 159 , kmabt, 0x32fe31f5, 0x3b7788df, 0x80000000, 636); 
TEST_RR_OP( 160 , kmabt, 0x32fe31f5, 0x00000000, 0x00000000, 640); 
TEST_RR_OP( 161 , kmabt, 0x32fe31f5, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , kmabt, 0x32fe31f5, 0x1e7d66c0, 0x00000000, 648); 
TEST_RR_OP( 163 , kmabt, 0x32fe31f5, 0xffffffff, 0x00000000, 652); 
TEST_RR_OP( 164 , kmabt, 0x32fe31f5, 0x80000000, 0x00000000, 656); 
TEST_RR_OP( 165 , kmabt, 0x32fe31f5, 0x00000000, 0xb051f97c, 660); 
TEST_RR_OP( 166 , kmabt, 0x32fe31f6, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , kmabt, 0x32feb1f6, 0xffffffff, 0x80000000, 668); 
TEST_RR_OP( 168 , kmabt, 0x32feb1f6, 0x80000000, 0x00000000, 672); 
TEST_RR_OP( 169 , kmabt, 0x32feb1f6, 0x00000000, 0xa4390025, 676); 
TEST_RR_OP( 170 , kmabt, 0x32fef8bc, 0xca28b93a, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmabt, 0x32fef8bc, 0xffffffff, 0x00000000, 684); 
TEST_RR_OP( 172 , kmabt, 0x32fef8bc, 0x80000000, 0x00000000, 688); 
TEST_RR_OP( 173 , kmabt, 0x32fef8bd, 0xffffffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , kmabt, 0x32ff2d52, 0xffffffff, 0xcb6b1912, 696); 
TEST_RR_OP( 175 , kmabt, 0x62dfc495, 0x4a1c6e25, 0x6f47b68f, 700); 
TEST_RR_OP( 176 , kmabt, 0x62dfc495, 0x00000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kmabt, 0x62dfc495, 0x80000000, 0x80000000, 708); 
TEST_RR_OP( 178 , kmabt, 0x62dfc495, 0x80000000, 0x80000000, 712); 
TEST_RR_OP( 179 , kmabt, 0x62dfc495, 0x00000000, 0x2c51f462, 716); 
TEST_RR_OP( 180 , kmabt, 0x62dfaceb, 0xffffffff, 0x17aa01f3, 720); 
TEST_RR_OP( 181 , kmabt, 0x62dfaceb, 0x80000000, 0x80000000, 724); 
TEST_RR_OP( 182 , kmabt, 0x62dfaceb, 0x00000000, 0xb50afda0, 728); 
TEST_RR_OP( 183 , kmabt, 0x62dfaceb, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmabt, 0x62dfaceb, 0xffffffff, 0x00000000, 736); 
TEST_RR_OP( 185 , kmabt, 0x62dfaceb, 0x80000000, 0x80000000, 740); 
TEST_RR_OP( 186 , kmabt, 0x62e001a3, 0xbad6ab48, 0xffffffff, 744); 
TEST_RR_OP( 187 , kmabt, 0x62e001a3, 0x80000000, 0x00000000, 748); 
TEST_RR_OP( 188 , kmabt, 0x2c2a01a3, 0x34c26d6c, 0x80000000, 752); 
TEST_RR_OP( 189 , kmabt, 0x2c2a81a3, 0xffffffff, 0x80000000, 756); 
TEST_RR_OP( 190 , kmabt, 0x4c1d01a3, 0x7c6fc01b, 0x80000000, 760); 
TEST_RR_OP( 191 , kmabt, 0x4c1d01a3, 0x80000000, 0xffffffff, 764); 
TEST_RR_OP( 192 , kmabt, 0x4c1d01a3, 0x80000000, 0x80000000, 768); 
TEST_RR_OP( 193 , kmabt, 0x4c1d01a3, 0x80000000, 0x00000000, 772); 
TEST_RR_OP( 194 , kmabt, 0x188801a3, 0xa40a672a, 0x80000000, 776); 
TEST_RR_OP( 195 , kmabt, 0x18880bcc, 0x8c92f5d7, 0xffffffff, 780); 
TEST_RR_OP( 196 , kmabt, 0x18880bcc, 0xffffffff, 0x00000000, 784); 
TEST_RR_OP( 197 , kmabt, 0x1887e104, 0xffffffff, 0x2ac8a40a, 788); 
TEST_RR_OP( 198 , kmabt, 0x1887a769, 0xbc4e399b, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmabt, 0x1887a769, 0x80000000, 0xef7f0e2e, 796); 

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
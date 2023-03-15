# See LICENSE for license details.
#*****************************************************************************
# kdmbb.S
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

TEST_RR_OP( 2 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kdmbb, 0x00000000, 0xeb7a343c, 0x00000000, 12); 
TEST_RR_OP( 4 , kdmbb, 0x00000000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , kdmbb, 0x00000000, 0x3f9967c1, 0x00000000, 20); 
TEST_RR_OP( 6 , kdmbb, 0x0000e0ca, 0xffffffff, 0x657d8f9b, 24); 
TEST_RR_OP( 7 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 28); 
TEST_RR_OP( 8 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 32); 
TEST_RR_OP( 9 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 36); 
TEST_RR_OP( 10 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 40); 
TEST_RR_OP( 11 , kdmbb, 0x0000c60a, 0xffffffff, 0xc6369cfb, 44); 
TEST_RR_OP( 12 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 48); 
TEST_RR_OP( 13 , kdmbb, 0x00000000, 0x00000000, 0xe1a3637d, 52); 
TEST_RR_OP( 14 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 64); 
TEST_RR_OP( 17 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 72); 
TEST_RR_OP( 19 , kdmbb, 0x00000000, 0xf6d33bcd, 0x00000000, 76); 
TEST_RR_OP( 20 , kdmbb, 0x0a9ca360, 0x52f5f128, 0x265ca47e, 80); 
TEST_RR_OP( 21 , kdmbb, 0x00000000, 0x80000000, 0xe4201eef, 84); 
TEST_RR_OP( 22 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 96); 
TEST_RR_OP( 25 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 100); 
TEST_RR_OP( 26 , kdmbb, 0x00000000, 0x00000000, 0x2747bd18, 104); 
TEST_RR_OP( 27 , kdmbb, 0x00000000, 0x80000000, 0xb9b27724, 108); 
TEST_RR_OP( 28 , kdmbb, 0xffffffffdac47fc0, 0x0810d5f4, 0x7e5b7158, 112); 
TEST_RR_OP( 29 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 120); 
TEST_RR_OP( 31 , kdmbb, 0x00000000, 0x00000000, 0xa0765017, 124); 
TEST_RR_OP( 32 , kdmbb, 0x0000e10c, 0xffffffff, 0xa31b8f7a, 128); 
TEST_RR_OP( 33 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 132); 
TEST_RR_OP( 34 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 136); 
TEST_RR_OP( 35 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , kdmbb, 0x00000000, 0x00000000, 0x7f332051, 144); 
TEST_RR_OP( 37 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 152); 
TEST_RR_OP( 39 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 156); 
TEST_RR_OP( 40 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , kdmbb, 0x00000000, 0x00000000, 0xccbe0bd9, 164); 
TEST_RR_OP( 42 , kdmbb, 0x1f1e8294, 0x72d9b2fa, 0x963fcc49, 168); 
TEST_RR_OP( 43 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 172); 
TEST_RR_OP( 44 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 176); 
TEST_RR_OP( 45 , kdmbb, 0x00000000, 0x80000000, 0x08478a46, 180); 
TEST_RR_OP( 46 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 184); 
TEST_RR_OP( 47 , kdmbb, 0x00000000, 0x62f1f43f, 0x80000000, 188); 
TEST_RR_OP( 48 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kdmbb, 0x00000000, 0x3ab5850f, 0x00000000, 196); 
TEST_RR_OP( 50 , kdmbb, 0xfffffffffc377334, 0x364df9ce, 0x55654e2b, 200); 
TEST_RR_OP( 51 , kdmbb, 0x00000000, 0x80000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 208); 
TEST_RR_OP( 53 , kdmbb, 0x00000000, 0x00000000, 0xb59e9f11, 212); 
TEST_RR_OP( 54 , kdmbb, 0x00000000, 0x253b5fb8, 0x80000000, 216); 
TEST_RR_OP( 55 , kdmbb, 0x00000000, 0xca39d2f0, 0x80000000, 220); 
TEST_RR_OP( 56 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 224); 
TEST_RR_OP( 57 , kdmbb, 0x00000000, 0x80000000, 0xffb37b4a, 228); 
TEST_RR_OP( 58 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kdmbb, 0x00000000, 0x00000000, 0x5633719a, 236); 
TEST_RR_OP( 60 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 240); 
TEST_RR_OP( 61 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 244); 
TEST_RR_OP( 62 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 248); 
TEST_RR_OP( 63 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 252); 
TEST_RR_OP( 64 , kdmbb, 0xffffffffffff9d2c, 0xffffffff, 0xc136316a, 256); 
TEST_RR_OP( 65 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 260); 
TEST_RR_OP( 66 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 264); 
TEST_RR_OP( 67 , kdmbb, 0x00000000, 0x80000000, 0x24483008, 268); 
TEST_RR_OP( 68 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 276); 
TEST_RR_OP( 70 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 280); 
TEST_RR_OP( 71 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 284); 
TEST_RR_OP( 72 , kdmbb, 0x00000000, 0x80000000, 0xe3eac0dd, 288); 
TEST_RR_OP( 73 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 292); 
TEST_RR_OP( 74 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 296); 
TEST_RR_OP( 75 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 300); 
TEST_RR_OP( 76 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 304); 
TEST_RR_OP( 77 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 308); 
TEST_RR_OP( 78 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 312); 
TEST_RR_OP( 79 , kdmbb, 0x00000000, 0x00000000, 0x41d50188, 316); 
TEST_RR_OP( 80 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 320); 
TEST_RR_OP( 81 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 328); 
TEST_RR_OP( 83 , kdmbb, 0x00000000, 0xd120a2ff, 0x00000000, 332); 
TEST_RR_OP( 84 , kdmbb, 0x00000000, 0xe47d7b52, 0x00000000, 336); 
TEST_RR_OP( 85 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 340); 
TEST_RR_OP( 86 , kdmbb, 0x00000000, 0x5cfd3bcb, 0x80000000, 344); 
TEST_RR_OP( 87 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 348); 
TEST_RR_OP( 88 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 352); 
TEST_RR_OP( 89 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 356); 
TEST_RR_OP( 90 , kdmbb, 0x00000000, 0x56296525, 0x00000000, 360); 
TEST_RR_OP( 91 , kdmbb, 0x00000000, 0x80000000, 0x80000000, 364); 
TEST_RR_OP( 92 , kdmbb, 0x00000000, 0x80000000, 0x1a04e870, 368); 
TEST_RR_OP( 93 , kdmbb, 0x0943d790, 0x7cb589c7, 0x0710f5f8, 372); 
TEST_RR_OP( 94 , kdmbb, 0xffffffffff7c0aa4, 0x54c9f7cf, 0xc877080e, 376); 
TEST_RR_OP( 95 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 380); 
TEST_RR_OP( 96 , kdmbb, 0xffffffffe475b5b8, 0x69496902, 0xf162de6e, 384); 
TEST_RR_OP( 97 , kdmbb, 0x00000000, 0x80000000, 0xbbbcce7e, 388); 
TEST_RR_OP( 98 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 392); 
TEST_RR_OP( 99 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 396); 
TEST_RR_OP( 100 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 404); 
TEST_RR_OP( 102 , kdmbb, 0x00000000, 0xaa009414, 0x80000000, 408); 
TEST_RR_OP( 103 , kdmbb, 0x00000000, 0xc24d3beb, 0x00000000, 412); 
TEST_RR_OP( 104 , kdmbb, 0x00000000, 0x80000000, 0x47a171b7, 416); 
TEST_RR_OP( 105 , kdmbb, 0xffffffffffff4010, 0xffffffff, 0x39b15ff8, 420); 
TEST_RR_OP( 106 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 424); 
TEST_RR_OP( 107 , kdmbb, 0x43b0b48a, 0xba145237, 0xc4b26963, 428); 
TEST_RR_OP( 108 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kdmbb, 0x00000000, 0xad59d436, 0x80000000, 436); 
TEST_RR_OP( 110 , kdmbb, 0xffffffffffffdfcc, 0xffffffff, 0x6b9e101a, 440); 
TEST_RR_OP( 111 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 448); 
TEST_RR_OP( 113 , kdmbb, 0x0000d020, 0xffffffff, 0x2cd797f0, 452); 
TEST_RR_OP( 114 , kdmbb, 0x00000000, 0x80000000, 0x406e2fb1, 456); 
TEST_RR_OP( 115 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 460); 
TEST_RR_OP( 116 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 464); 
TEST_RR_OP( 117 , kdmbb, 0x00000000, 0x51058bd9, 0x80000000, 468); 
TEST_RR_OP( 118 , kdmbb, 0x00000000, 0x00000000, 0x3768d177, 472); 
TEST_RR_OP( 119 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 480); 
TEST_RR_OP( 121 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 484); 
TEST_RR_OP( 122 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 488); 
TEST_RR_OP( 123 , kdmbb, 0x00000000, 0x80000000, 0x80000000, 492); 
TEST_RR_OP( 124 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 496); 
TEST_RR_OP( 125 , kdmbb, 0x00000000, 0x1b2fb3cd, 0x80000000, 500); 
TEST_RR_OP( 126 , kdmbb, 0x0000db7a, 0xffffffff, 0x8ca69243, 504); 
TEST_RR_OP( 127 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 512); 
TEST_RR_OP( 129 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 516); 
TEST_RR_OP( 130 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 520); 
TEST_RR_OP( 131 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 528); 
TEST_RR_OP( 133 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 532); 
TEST_RR_OP( 134 , kdmbb, 0x00000000, 0x39dffe66, 0x80000000, 536); 
TEST_RR_OP( 135 , kdmbb, 0x0000dfe0, 0xffffffff, 0xba2b9010, 540); 
TEST_RR_OP( 136 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 544); 
TEST_RR_OP( 137 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 548); 
TEST_RR_OP( 138 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 552); 
TEST_RR_OP( 139 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 556); 
TEST_RR_OP( 140 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 560); 
TEST_RR_OP( 141 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 564); 
TEST_RR_OP( 142 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kdmbb, 0x0000dde0, 0x39849110, 0xffffffff, 584); 
TEST_RR_OP( 147 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 588); 
TEST_RR_OP( 148 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 592); 
TEST_RR_OP( 149 , kdmbb, 0x6bf16da8, 0x469671e1, 0xbb007954, 596); 
TEST_RR_OP( 150 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 600); 
TEST_RR_OP( 151 , kdmbb, 0x049ccd1c, 0x6f18f8e6, 0x4962acdd, 604); 
TEST_RR_OP( 152 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 608); 
TEST_RR_OP( 153 , kdmbb, 0x00000000, 0x80000000, 0x62f1a268, 612); 
TEST_RR_OP( 154 , kdmbb, 0x00000000, 0x82232239, 0x00000000, 616); 
TEST_RR_OP( 155 , kdmbb, 0x000007ce, 0xffffffff, 0x14f3fc19, 620); 
TEST_RR_OP( 156 , kdmbb, 0x00000000, 0xd6cdc835, 0x00000000, 624); 
TEST_RR_OP( 157 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 628); 
TEST_RR_OP( 158 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 640); 
TEST_RR_OP( 161 , kdmbb, 0xffffffffffff1244, 0xffffffff, 0x40d776de, 644); 
TEST_RR_OP( 162 , kdmbb, 0x00000000, 0xc24efb21, 0x00000000, 648); 
TEST_RR_OP( 163 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 652); 
TEST_RR_OP( 164 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 656); 
TEST_RR_OP( 165 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 660); 
TEST_RR_OP( 166 , kdmbb, 0x00009702, 0xffffffff, 0x5e51b47f, 664); 
TEST_RR_OP( 167 , kdmbb, 0xffffffffffffcf0a, 0xffffffff, 0xaeb7187b, 668); 
TEST_RR_OP( 168 , kdmbb, 0x00000000, 0x80000000, 0x80000000, 672); 
TEST_RR_OP( 169 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 676); 
TEST_RR_OP( 170 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 680); 
TEST_RR_OP( 171 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 684); 
TEST_RR_OP( 172 , kdmbb, 0x00000000, 0x80000000, 0x80000000, 688); 
TEST_RR_OP( 173 , kdmbb, 0x00000000, 0x80000000, 0x1dedf0da, 692); 
TEST_RR_OP( 174 , kdmbb, 0x00000000, 0x80000000, 0x4e922def, 696); 
TEST_RR_OP( 175 , kdmbb, 0xfffffffffffffd48, 0xffffffff, 0xb66d015c, 700); 
TEST_RR_OP( 176 , kdmbb, 0x00000000, 0x0592955d, 0x80000000, 704); 
TEST_RR_OP( 177 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 708); 
TEST_RR_OP( 178 , kdmbb, 0x00000000, 0x00000000, 0xffffffff, 712); 
TEST_RR_OP( 179 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 716); 
TEST_RR_OP( 180 , kdmbb, 0x00000000, 0x00000000, 0xddcea47a, 720); 
TEST_RR_OP( 181 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 724); 
TEST_RR_OP( 182 , kdmbb, 0x00000000, 0x00000000, 0x00000000, 728); 
TEST_RR_OP( 183 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 732); 
TEST_RR_OP( 184 , kdmbb, 0x00000000, 0x80000000, 0x80000000, 736); 
TEST_RR_OP( 185 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 744); 
TEST_RR_OP( 187 , kdmbb, 0x0000010c, 0x1a05ff7a, 0xffffffff, 748); 
TEST_RR_OP( 188 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 752); 
TEST_RR_OP( 189 , kdmbb, 0x00000000, 0x80000000, 0xa4648c95, 756); 
TEST_RR_OP( 190 , kdmbb, 0x00000000, 0xc59bb82d, 0x80000000, 760); 
TEST_RR_OP( 191 , kdmbb, 0x00000000, 0x00000000, 0x80000000, 764); 
TEST_RR_OP( 192 , kdmbb, 0x00000000, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , kdmbb, 0x00000000, 0x80000000, 0x00000000, 772); 
TEST_RR_OP( 194 , kdmbb, 0x00000000, 0xffffffff, 0x80000000, 776); 
TEST_RR_OP( 195 , kdmbb, 0x0000da56, 0xffffffff, 0xf9bf92d5, 780); 
TEST_RR_OP( 196 , kdmbb, 0x00000000, 0x00000000, 0x3ce05762, 784); 
TEST_RR_OP( 197 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 788); 
TEST_RR_OP( 198 , kdmbb, 0x00000002, 0xffffffff, 0xffffffff, 792); 
TEST_RR_OP( 199 , kdmbb, 0x00000000, 0xffffffff, 0x00000000, 796); 

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
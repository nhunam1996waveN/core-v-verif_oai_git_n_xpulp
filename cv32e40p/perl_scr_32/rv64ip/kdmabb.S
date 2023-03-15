# See LICENSE for license details.
#*****************************************************************************
# kdmabb.S
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

TEST_RR_OP( 2 , kdmabb, 0x00000000, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kdmabb, 0x00000000, 0x00000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , kdmabb, 0x00000000, 0xffffffff, 0x80000000, 16); 
TEST_RR_OP( 5 , kdmabb, 0x00000002, 0xffffffff, 0xffffffff, 20); 
TEST_RR_OP( 6 , kdmabb, 0x00000002, 0x80000000, 0x80000000, 24); 
TEST_RR_OP( 7 , kdmabb, 0x00000002, 0x80000000, 0xf5975f87, 28); 
TEST_RR_OP( 8 , kdmabb, 0x00000002, 0x00000000, 0xffffffff, 32); 
TEST_RR_OP( 9 , kdmabb, 0x00000002, 0xffffffff, 0x80000000, 36); 
TEST_RR_OP( 10 , kdmabb, 0x00000002, 0x80000000, 0x00000000, 40); 
TEST_RR_OP( 11 , kdmabb, 0x00000002, 0x00000000, 0x80000000, 44); 
TEST_RR_OP( 12 , kdmabb, 0x00000002, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kdmabb, 0x00000002, 0x00000000, 0x80000000, 52); 
TEST_RR_OP( 14 , kdmabb, 0x00000002, 0x80000000, 0x8eb03e79, 56); 
TEST_RR_OP( 15 , kdmabb, 0x00000002, 0xffffffff, 0x80000000, 60); 
TEST_RR_OP( 16 , kdmabb, 0x00000002, 0x80000000, 0x00000000, 64); 
TEST_RR_OP( 17 , kdmabb, 0x00000002, 0xffffffff, 0x00000000, 68); 
TEST_RR_OP( 18 , kdmabb, 0x00000002, 0x80000000, 0xffffffff, 72); 
TEST_RR_OP( 19 , kdmabb, 0x0000986e, 0xffffffff, 0x4e9bb3ca, 76); 
TEST_RR_OP( 20 , kdmabb, 0x0000986e, 0x80000000, 0x8d43f9da, 80); 
TEST_RR_OP( 21 , kdmabb, 0x0000986e, 0x00000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kdmabb, 0xffffffffaed843be, 0xc6fd601e, 0x674393ec, 88); 
TEST_RR_OP( 23 , kdmabb, 0xffffffffaed843be, 0x00000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kdmabb, 0xffffffffaed843be, 0x00000000, 0x00000000, 96); 
TEST_RR_OP( 25 , kdmabb, 0xffffffffaed931d4, 0x483188f5, 0xffffffff, 100); 
TEST_RR_OP( 26 , kdmabb, 0xffffffffaed931d4, 0x80000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , kdmabb, 0xffffffffaed931d4, 0x00000000, 0xffffffff, 108); 
TEST_RR_OP( 28 , kdmabb, 0xffffffffaed931d4, 0x00000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , kdmabb, 0xffffffffaed931d4, 0x00000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kdmabb, 0xffffffffaed931d4, 0x80000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kdmabb, 0xffffffffaed931d4, 0x80000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , kdmabb, 0xffffffffaed931d4, 0x00000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , kdmabb, 0xffffffffaeda0e64, 0x200291b8, 0xffffffff, 132); 
TEST_RR_OP( 34 , kdmabb, 0xffffffffaeda0e64, 0x00000000, 0xffffffff, 136); 
TEST_RR_OP( 35 , kdmabb, 0xffffffff80000000, 0xb45285a6, 0x5fc16db0, 140); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_RR_OP( 39 , kdmabb, 0x00000000, 0xffffffff, 0x80000000, 156); 
TEST_RR_OP( 40 , kdmabb, 0x00000000, 0x80000000, 0x05695838, 160); 
TEST_RR_OP( 41 , kdmabb, 0x00000000, 0x00000000, 0xffffffff, 164); 
TEST_RR_OP( 42 , kdmabb, 0x00000000, 0xae00ae7f, 0x00000000, 168); 
TEST_RR_OP( 43 , kdmabb, 0x00000000, 0xffffffff, 0x80000000, 172); 
TEST_RR_OP( 44 , kdmabb, 0x00000000, 0x80000000, 0xa09290d5, 176); 
TEST_RR_OP( 45 , kdmabb, 0xffffffffffff539e, 0xffffffff, 0xe1635631, 180); 
TEST_RR_OP( 46 , kdmabb, 0xffffffffffff539e, 0x80000000, 0x80000000, 184); 
TEST_RR_OP( 47 , kdmabb, 0xffffffffffff539e, 0xffffffff, 0x00000000, 188); 
TEST_RR_OP( 48 , kdmabb, 0xffffffffffff539e, 0x80000000, 0x4fe2b62a, 192); 
TEST_RR_OP( 49 , kdmabb, 0xffffffffffff539e, 0xcbeca16c, 0x80000000, 196); 
TEST_RR_OP( 50 , kdmabb, 0xffffffffffff539e, 0x80000000, 0xffffffff, 200); 
TEST_RR_OP( 51 , kdmabb, 0xffffffffffff539e, 0x80000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kdmabb, 0xffffffffffff539e, 0x00000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , kdmabb, 0xffffffffffff539e, 0x00000000, 0x00000000, 212); 
TEST_RR_OP( 54 , kdmabb, 0xffffffffffff539e, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , kdmabb, 0xffffffffffff539e, 0xffffffff, 0x00000000, 220); 
TEST_RR_OP( 56 , kdmabb, 0xffffffffffff539e, 0xffffffff, 0x00000000, 224); 
TEST_RR_OP( 57 , kdmabb, 0xffffffffffff539e, 0x80000000, 0x00000000, 228); 
TEST_RR_OP( 58 , kdmabb, 0xffffffffffff539e, 0x80000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kdmabb, 0xffffffffd7a54082, 0x0871be4e, 0xcee84e9f, 236); 
TEST_RR_OP( 60 , kdmabb, 0xffffffffd7a54082, 0x80000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kdmabb, 0xffffffffd7a54082, 0x80000000, 0x00000000, 244); 
TEST_RR_OP( 62 , kdmabb, 0xffffffffd7a54082, 0x00000000, 0x80000000, 248); 
TEST_RR_OP( 63 , kdmabb, 0xffffffffd7a54082, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , kdmabb, 0xffffffffd7a54082, 0x80000000, 0x00000000, 256); 
TEST_RR_OP( 65 , kdmabb, 0xffffffffd7a54082, 0x80000000, 0xffffffff, 260); 
TEST_RR_OP( 66 , kdmabb, 0xffffffffd7a54082, 0x9bd60aff, 0x00000000, 264); 
TEST_RR_OP( 67 , kdmabb, 0xffffffffd7a54082, 0xffffffff, 0x80000000, 268); 
TEST_RR_OP( 68 , kdmabb, 0xffffffffd7a54082, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , kdmabb, 0xffffffffd7a54082, 0x80000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , kdmabb, 0xffffffffc811629e, 0x473e7c3a, 0xf4bfeff3, 280); 
TEST_RR_OP( 71 , kdmabb, 0xffffffffc811629e, 0x80000000, 0xffffffff, 284); 
TEST_RR_OP( 72 , kdmabb, 0xffffffffc811629e, 0x80000000, 0x00000000, 288); 
TEST_RR_OP( 73 , kdmabb, 0xffffffff858d0346, 0xfaff7444, 0x5abab6c5, 292); 
TEST_RR_OP( 74 , kdmabb, 0xffffffff858d0346, 0x80000000, 0x00000000, 296); 
TEST_RR_OP( 75 , kdmabb, 0xffffffff858d0346, 0x440fdee7, 0x00000000, 300); 
TEST_RR_OP( 76 , kdmabb, 0xffffffff858d0346, 0x80000000, 0x80000000, 304); 
TEST_RR_OP( 77 , kdmabb, 0xffffffff858d0346, 0x00000000, 0x00000000, 308); 
TEST_RR_OP( 78 , kdmabb, 0xffffffff858d0346, 0x80000000, 0x9fb1f571, 312); 
TEST_RR_OP( 79 , kdmabb, 0xffffffff858d0346, 0xffffffff, 0x00000000, 316); 
TEST_RR_OP( 80 , kdmabb, 0xffffffff858d0346, 0xffffffff, 0x00000000, 320); 
TEST_RR_OP( 81 , kdmabb, 0xffffffff858d0346, 0x80000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kdmabb, 0xffffffff858d0346, 0xffffffff, 0x00000000, 328); 
TEST_RR_OP( 83 , kdmabb, 0xffffffff858dbed0, 0xffffffff, 0x6d44a23b, 332); 
TEST_RR_OP( 84 , kdmabb, 0xffffffff858dbed0, 0x136b9fb3, 0x00000000, 336); 
TEST_RR_OP( 85 , kdmabb, 0xffffffff858dbed0, 0xb50b11db, 0x00000000, 340); 
TEST_RR_OP( 86 , kdmabb, 0xffffffff858dc514, 0xb7f0fcde, 0xffffffff, 344); 
TEST_RR_OP( 87 , kdmabb, 0xffffffff858dc514, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , kdmabb, 0xffffffff858e9a20, 0x49a1957a, 0xffffffff, 352); 
TEST_RR_OP( 89 , kdmabb, 0xffffffff858e9a20, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , kdmabb, 0xffffffff858e33bc, 0x2dac3332, 0xffffffff, 360); 
TEST_RR_OP( 91 , kdmabb, 0xffffffff858e869c, 0xb748d690, 0xffffffff, 364); 
TEST_RR_OP( 92 , kdmabb, 0xffffffff83d6331e, 0x2b40fc39, 0xa2363a49, 368); 
TEST_RR_OP( 93 , kdmabb, 0xffffffff83d6331e, 0xffffffff, 0x80000000, 372); 
TEST_RR_OP( 94 , kdmabb, 0xffffffff83d6331e, 0xdf46ffc2, 0x00000000, 376); 
TEST_RR_OP( 95 , kdmabb, 0xffffffff83d63320, 0xffffffff, 0xffffffff, 380); 
TEST_RR_OP( 96 , kdmabb, 0xffffffff83d63320, 0xffffffff, 0x80000000, 384); 
TEST_RR_OP( 97 , kdmabb, 0xffffffff83d63320, 0x80000000, 0x80000000, 388); 
TEST_RR_OP( 98 , kdmabb, 0xffffffff83d63320, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kdmabb, 0xffffffff83d63320, 0x80000000, 0x0563be1a, 396); 
TEST_RR_OP( 100 , kdmabb, 0xffffffff83d63320, 0x80000000, 0x00000000, 400); 
TEST_RR_OP( 101 , kdmabb, 0xffffffff83d63320, 0x00000000, 0x14152cf6, 404); 
TEST_RR_OP( 102 , kdmabb, 0xffffffff83d63320, 0x80000000, 0xf4946dd3, 408); 
TEST_RR_OP( 103 , kdmabb, 0xffffffff83d55510, 0xffffffff, 0x024d6f08, 412); 
TEST_RR_OP( 104 , kdmabb, 0xffffffff83d55510, 0x80000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kdmabb, 0xffffffff83d55510, 0x80000000, 0x00000000, 420); 
TEST_RR_OP( 106 , kdmabb, 0xffffffff83d52e58, 0xa8b4135c, 0xffffffff, 424); 
TEST_RR_OP( 107 , kdmabb, 0xffffffff83d52e58, 0x00000000, 0x97742d70, 428); 
TEST_RR_OP( 108 , kdmabb, 0xffffffff83d52e58, 0x80000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kdmabb, 0xffffffff83d52e58, 0x57a5a2c1, 0x00000000, 436); 
TEST_RR_OP( 110 , kdmabb, 0xffffffff83d5a924, 0x903cc29a, 0xffffffff, 440); 
TEST_RR_OP( 111 , kdmabb, 0xffffffff83d5a924, 0xffffffff, 0x80000000, 444); 
TEST_RR_OP( 112 , kdmabb, 0xffffffff83d5a924, 0x80000000, 0x00000000, 448); 
TEST_RR_OP( 113 , kdmabb, 0xffffffff83d5b8d0, 0xf286f82a, 0xffffffff, 452); 
TEST_RR_OP( 114 , kdmabb, 0xffffffff83d5b8d0, 0xe3692631, 0x80000000, 456); 
TEST_RR_OP( 115 , kdmabb, 0xffffffff83d5b8d2, 0xffffffff, 0xffffffff, 460); 
TEST_RR_OP( 116 , kdmabb, 0xffffffff83d5b8d2, 0xffffffff, 0x80000000, 464); 
TEST_RR_OP( 117 , kdmabb, 0xffffffff83d674cc, 0xb0c9a203, 0xffffffff, 468); 
TEST_RR_OP( 118 , kdmabb, 0xffffffff83d674cc, 0x00000000, 0x80000000, 472); 
TEST_RR_OP( 119 , kdmabb, 0xffffffff83d674cc, 0x80000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , kdmabb, 0xffffffff83d674cc, 0x80000000, 0x00000000, 480); 
TEST_RR_OP( 121 , kdmabb, 0xffffffff83d674cc, 0x80000000, 0xffffffff, 484); 
TEST_RR_OP( 122 , kdmabb, 0xffffffff83d6afa8, 0x0165e292, 0xffffffff, 488); 
TEST_RR_OP( 123 , kdmabb, 0xffffffff83d6afa8, 0xffffffff, 0x00000000, 492); 
TEST_RR_OP( 124 , kdmabb, 0xffffffff83d6afa8, 0x00000000, 0xeb716472, 496); 
TEST_RR_OP( 125 , kdmabb, 0xffffffff94669b5e, 0x065191e5, 0xe140ecbf, 500); 
TEST_RR_OP( 126 , kdmabb, 0xffffffff94669b5e, 0x00000000, 0x80000000, 504); 
TEST_RR_OP( 127 , kdmabb, 0xffffffff94669b5e, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , kdmabb, 0xffffffff94669b5e, 0x00000000, 0x80000000, 512); 
TEST_RR_OP( 129 , kdmabb, 0xffffffff94669b5e, 0x2a586e00, 0x80000000, 516); 
TEST_RR_OP( 130 , kdmabb, 0xffffffff94669b5e, 0xffffffff, 0x00000000, 520); 
TEST_RR_OP( 131 , kdmabb, 0xffffffff94669b5e, 0x80000000, 0x00000000, 524); 
TEST_RR_OP( 132 , kdmabb, 0xffffffff94669b5e, 0x80000000, 0xffffffff, 528); 
TEST_RR_OP( 133 , kdmabb, 0xffffffff94669b5e, 0x80000000, 0xffffffff, 532); 
TEST_RR_OP( 134 , kdmabb, 0xffffffff94669b5e, 0x00000000, 0xce9eb151, 536); 
TEST_RR_OP( 135 , kdmabb, 0xffffffff80000000, 0xb71e2594, 0x86b1b6ff, 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_RR_OP( 139 , kdmabb, 0x00000000, 0x8de7e020, 0x00000000, 556); 
TEST_RR_OP( 140 , kdmabb, 0x00000000, 0x80000000, 0x80000000, 560); 
TEST_RR_OP( 141 , kdmabb, 0x00000000, 0x00000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kdmabb, 0x00000000, 0xffffffff, 0x80000000, 568); 
TEST_RR_OP( 143 , kdmabb, 0x00000000, 0x80000000, 0x80000000, 572); 
TEST_RR_OP( 144 , kdmabb, 0x00000000, 0xffffffff, 0x80000000, 576); 
TEST_RR_OP( 145 , kdmabb, 0x00000000, 0xffffffff, 0x00000000, 580); 
TEST_RR_OP( 146 , kdmabb, 0x00000000, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , kdmabb, 0xfffffffff5dc9b6c, 0x8e1d1b5e, 0xef00d095, 588); 
TEST_RR_OP( 148 , kdmabb, 0xfffffffff5dc9b6c, 0x80000000, 0x00000000, 592); 
TEST_RR_OP( 149 , kdmabb, 0xfffffffff5dc9b6c, 0x00000000, 0x00000000, 596); 
TEST_RR_OP( 150 , kdmabb, 0x519455bc, 0xfd97a27c, 0xbf9f8276, 600); 
TEST_RR_OP( 151 , kdmabb, 0x51954fee, 0xffffffff, 0xd10d82e7, 604); 
TEST_RR_OP( 152 , kdmabb, 0x51954fee, 0x80000000, 0x00000000, 608); 
TEST_RR_OP( 153 , kdmabb, 0x51954fee, 0xffffffff, 0x80000000, 612); 
TEST_RR_OP( 154 , kdmabb, 0x519572e6, 0x4dabee84, 0xffffffff, 616); 
TEST_RR_OP( 155 , kdmabb, 0x519572e6, 0x80000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , kdmabb, 0x3ac66948, 0xaab7d17d, 0x72e43ec5, 624); 
TEST_RR_OP( 157 , kdmabb, 0x3ac626a2, 0xffffffff, 0x885f2153, 628); 
TEST_RR_OP( 158 , kdmabb, 0x4578ea72, 0x395028d8, 0xb8f82187, 632); 
TEST_RR_OP( 159 , kdmabb, 0x4578ea72, 0x80000000, 0x00000000, 636); 
TEST_RR_OP( 160 , kdmabb, 0x4578ea72, 0x80000000, 0x80000000, 640); 
TEST_RR_OP( 161 , kdmabb, 0x4578ea72, 0x00000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , kdmabb, 0x4578ea72, 0xffffffff, 0x80000000, 648); 
TEST_RR_OP( 163 , kdmabb, 0x45790f96, 0x2149ed6e, 0xffffffff, 652); 
TEST_RR_OP( 164 , kdmabb, 0x45790f96, 0x00000000, 0xde444225, 656); 
TEST_RR_OP( 165 , kdmabb, 0x45790f96, 0x80f0bcf2, 0x00000000, 660); 
TEST_RR_OP( 166 , kdmabb, 0x45790f96, 0x00000000, 0xffffffff, 664); 
TEST_RR_OP( 167 , kdmabb, 0x45790f96, 0x00000000, 0xffffffff, 668); 
TEST_RR_OP( 168 , kdmabb, 0x45790f96, 0x00000000, 0xe4f0ae6e, 672); 
TEST_RR_OP( 169 , kdmabb, 0x457a06c0, 0xffffffff, 0xc7f2846b, 676); 
TEST_RR_OP( 170 , kdmabb, 0x457a06c0, 0xffffffff, 0x00000000, 680); 
TEST_RR_OP( 171 , kdmabb, 0x457a06c0, 0x00000000, 0x80000000, 684); 
TEST_RR_OP( 172 , kdmabb, 0x457a06c0, 0x00000000, 0xffffffff, 688); 
TEST_RR_OP( 173 , kdmabb, 0x457a06c0, 0x00000000, 0x00000000, 692); 
TEST_RR_OP( 174 , kdmabb, 0x457a06c0, 0xffffffff, 0x00000000, 696); 
TEST_RR_OP( 175 , kdmabb, 0x457a06c0, 0x00000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , kdmabb, 0x457a06c0, 0x00000000, 0xffffffff, 704); 
TEST_RR_OP( 177 , kdmabb, 0x457a06c0, 0x80000000, 0xe61d0cce, 708); 
TEST_RR_OP( 178 , kdmabb, 0x457ade0c, 0xffffffff, 0x11f8945a, 712); 
TEST_RR_OP( 179 , kdmabb, 0x457ade0c, 0xffffffff, 0x00000000, 716); 
TEST_RR_OP( 180 , kdmabb, 0x457ade0c, 0x00000000, 0xffffffff, 720); 
TEST_RR_OP( 181 , kdmabb, 0x457ade0c, 0x80000000, 0x00000000, 724); 
TEST_RR_OP( 182 , kdmabb, 0x457ade0c, 0x00000000, 0x80000000, 728); 
TEST_RR_OP( 183 , kdmabb, 0x457ade0c, 0x00000000, 0x72dec9fb, 732); 
TEST_RR_OP( 184 , kdmabb, 0x457a1a1e, 0xa0bd61f7, 0xffffffff, 736); 
TEST_RR_OP( 185 , kdmabb, 0x457a1a1e, 0xffffffff, 0x80000000, 740); 
TEST_RR_OP( 186 , kdmabb, 0x457a1a1e, 0x00000000, 0xb34f3b5f, 744); 
TEST_RR_OP( 187 , kdmabb, 0x457a1a1e, 0x6287d42d, 0x80000000, 748); 
TEST_RR_OP( 188 , kdmabb, 0x457a1a1e, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , kdmabb, 0x2eba8976, 0xa74ab2e4, 0xde0225c3, 756); 
TEST_RR_OP( 190 , kdmabb, 0x2ebaa470, 0xffffffff, 0xafc4f283, 760); 
TEST_RR_OP( 191 , kdmabb, 0x2ebaa470, 0x518aac7f, 0x00000000, 764); 
TEST_RR_OP( 192 , kdmabb, 0x2ebaa470, 0x80000000, 0x7108e58b, 768); 
TEST_RR_OP( 193 , kdmabb, 0x2ebaa470, 0x2a08ecf3, 0x00000000, 772); 
TEST_RR_OP( 194 , kdmabb, 0x2ebaa470, 0xffffffff, 0x80000000, 776); 
TEST_RR_OP( 195 , kdmabb, 0x2ebaa470, 0x00000000, 0x00000000, 780); 
TEST_RR_OP( 196 , kdmabb, 0x2ebaa470, 0x80000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , kdmabb, 0x2ebaa470, 0x00000000, 0x80000000, 788); 
TEST_RR_OP( 198 , kdmabb, 0x2ebaa470, 0x27b245ed, 0x00000000, 792); 
TEST_RR_OP( 199 , kdmabb, 0x2ebb5b04, 0xca3fa4b6, 0xffffffff, 796); 

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
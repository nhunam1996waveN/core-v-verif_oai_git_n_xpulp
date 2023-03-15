# See LICENSE for license details.
#*****************************************************************************
# kmmawb.u.S
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

TEST_RR_OP( 2 , kmmawb.u, 0x00000000, 0xb88f7588, 0x00000000, 8); 
TEST_RR_OP( 3 , kmmawb.u, 0x00000000, 0x00000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmmawb.u, 0x00000000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , kmmawb.u, 0x36328000, 0x80000000, 0x7893939b, 20); 
TEST_RR_OP( 6 , kmmawb.u, 0x36328000, 0x00000000, 0x00000000, 24); 
TEST_RR_OP( 7 , kmmawb.u, 0x36328000, 0xffffffff, 0x80000000, 28); 
TEST_RR_OP( 8 , kmmawb.u, 0x36322c6b, 0x5394f10d, 0xffffffff, 32); 
TEST_RR_OP( 9 , kmmawb.u, 0x36322c6b, 0xffffffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmmawb.u, 0x415de248, 0x3db23348, 0x2aeb2e5a, 40); 
TEST_RR_OP( 11 , kmmawb.u, 0x415de248, 0x00000000, 0x80000000, 44); 
TEST_RR_OP( 12 , kmmawb.u, 0x415de248, 0xffffffff, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmmawb.u, 0x44cce248, 0x80000000, 0x4c5ff922, 52); 
TEST_RR_OP( 14 , kmmawb.u, 0x44cce248, 0x80000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kmmawb.u, 0x3c3d3d87, 0xb00514e1, 0x853f1b67, 60); 
TEST_RR_OP( 16 , kmmawb.u, 0x3c3d3d87, 0x4ed7c3c3, 0x00000000, 64); 
TEST_RR_OP( 17 , kmmawb.u, 0x3c3d3d87, 0x80000000, 0x00000000, 68); 
TEST_RR_OP( 18 , kmmawb.u, 0x3c3d3d87, 0x80000000, 0x00000000, 72); 
TEST_RR_OP( 19 , kmmawb.u, 0x3c3d3d87, 0xffffffff, 0x80000000, 76); 
TEST_RR_OP( 20 , kmmawb.u, 0x3c3d5860, 0xe527588d, 0xffffffff, 80); 
TEST_RR_OP( 21 , kmmawb.u, 0x3c3d5860, 0x00000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmmawb.u, 0x3c3d5860, 0xffffffff, 0x00000000, 88); 
TEST_RR_OP( 23 , kmmawb.u, 0x3c3dd860, 0x80000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , kmmawb.u, 0x3c3dd860, 0xffffffff, 0x80000000, 96); 
TEST_RR_OP( 25 , kmmawb.u, 0x3c3dd860, 0x80000000, 0x80000000, 100); 
TEST_RR_OP( 26 , kmmawb.u, 0x3c3dd860, 0xffffffff, 0xc40be6ea, 104); 
TEST_RR_OP( 27 , kmmawb.u, 0x3c3e2b00, 0xad5fcab8, 0xffffffff, 108); 
TEST_RR_OP( 28 , kmmawb.u, 0x3c3e2b00, 0xa1601c6a, 0x80000000, 112); 
TEST_RR_OP( 29 , kmmawb.u, 0x3c3e2b00, 0x00000000, 0x80000000, 116); 
TEST_RR_OP( 30 , kmmawb.u, 0x3c3e2b00, 0xffffffff, 0x80000000, 120); 
TEST_RR_OP( 31 , kmmawb.u, 0x3c3e2b00, 0x80000000, 0x00000000, 124); 
TEST_RR_OP( 32 , kmmawb.u, 0x3c3e2b00, 0xffffffff, 0x81cba65d, 128); 
TEST_RR_OP( 33 , kmmawb.u, 0x3c3e2b00, 0xffffffff, 0x6b6aa6d5, 132); 
TEST_RR_OP( 34 , kmmawb.u, 0x3c3e2b00, 0x00000000, 0x80000000, 136); 
TEST_RR_OP( 35 , kmmawb.u, 0x3c3e2b00, 0xffffffff, 0xffffffff, 140); 
TEST_RR_OP( 36 , kmmawb.u, 0x3c3e2b00, 0x80000000, 0x00000000, 144); 
TEST_RR_OP( 37 , kmmawb.u, 0x3c3e2b00, 0x3ab27e9c, 0x80000000, 148); 
TEST_RR_OP( 38 , kmmawb.u, 0x3c3e4ecd, 0xdc32fc1e, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmmawb.u, 0x3c3e4ecd, 0x00000000, 0xffffffff, 156); 
TEST_RR_OP( 40 , kmmawb.u, 0x3c3e4ecd, 0x00000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kmmawb.u, 0x3c3e4ecd, 0xffffffff, 0x80000000, 164); 
TEST_RR_OP( 42 , kmmawb.u, 0x3c3e4ecd, 0x80000000, 0x80000000, 168); 
TEST_RR_OP( 43 , kmmawb.u, 0x3c3e4ecd, 0xdfd095ef, 0x80000000, 172); 
TEST_RR_OP( 44 , kmmawb.u, 0x3c3e4ecd, 0x00000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , kmmawb.u, 0x3c3e4ecd, 0x80000000, 0x80000000, 180); 
TEST_RR_OP( 46 , kmmawb.u, 0x3c3e4ecd, 0x79a834db, 0x80000000, 184); 
TEST_RR_OP( 47 , kmmawb.u, 0x3c3e4ecd, 0x00000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kmmawb.u, 0x3c3e4ecd, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kmmawb.u, 0x3c3e4ecd, 0xffffffff, 0xe74ee800, 196); 
TEST_RR_OP( 50 , kmmawb.u, 0x3c3e4ecd, 0xffffffff, 0x1ee60613, 200); 
TEST_RR_OP( 51 , kmmawb.u, 0x3c3e4ecd, 0x4441cd7f, 0x00000000, 204); 
TEST_RR_OP( 52 , kmmawb.u, 0x3c3e4ecd, 0xffffffff, 0x00000000, 208); 
TEST_RR_OP( 53 , kmmawb.u, 0x3c3e4ecd, 0x80000000, 0x80000000, 212); 
TEST_RR_OP( 54 , kmmawb.u, 0x3c3e4ecd, 0x80000000, 0x80000000, 216); 
TEST_RR_OP( 55 , kmmawb.u, 0x3c3e4ecd, 0x80000000, 0x80000000, 220); 
TEST_RR_OP( 56 , kmmawb.u, 0x3c3e4ecd, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , kmmawb.u, 0x3eee670d, 0x5c213d02, 0x2f420778, 228); 
TEST_RR_OP( 58 , kmmawb.u, 0x3eee670d, 0xffffffff, 0x80000000, 232); 
TEST_RR_OP( 59 , kmmawb.u, 0x3eeee0a0, 0x866d568f, 0xffffffff, 236); 
TEST_RR_OP( 60 , kmmawb.u, 0x3eeee0a0, 0xffffffff, 0x80000000, 240); 
TEST_RR_OP( 61 , kmmawb.u, 0x3eeee0a0, 0xffffffff, 0x80000000, 244); 
TEST_RR_OP( 62 , kmmawb.u, 0x3eeee0a0, 0xffffffff, 0x7831bac7, 248); 
TEST_RR_OP( 63 , kmmawb.u, 0x3eeee0a0, 0x00000000, 0x80000000, 252); 
TEST_RR_OP( 64 , kmmawb.u, 0x4fd26378, 0xddf5b1f1, 0x1fa680fd, 256); 
TEST_RR_OP( 65 , kmmawb.u, 0x4fd2e378, 0x80000000, 0xffffffff, 260); 
TEST_RR_OP( 66 , kmmawb.u, 0x4fd36378, 0x80000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , kmmawb.u, 0x4fd36378, 0xffffffff, 0x80000000, 268); 
TEST_RR_OP( 68 , kmmawb.u, 0x4fd36378, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , kmmawb.u, 0x4fd36378, 0xffffffff, 0x00000000, 276); 
TEST_RR_OP( 70 , kmmawb.u, 0x4fd350de, 0x1299d2d6, 0xffffffff, 280); 
TEST_RR_OP( 71 , kmmawb.u, 0x4fd350de, 0xffffffff, 0x00000000, 284); 
TEST_RR_OP( 72 , kmmawb.u, 0x4fd39dfd, 0xb2e08b6b, 0xffffffff, 288); 
TEST_RR_OP( 73 , kmmawb.u, 0x4fd39dfd, 0x00000000, 0x00000000, 292); 
TEST_RR_OP( 74 , kmmawb.u, 0x4fd39dfd, 0x80000000, 0x80000000, 296); 
TEST_RR_OP( 75 , kmmawb.u, 0x4fd39dfd, 0x80000000, 0x00000000, 300); 
TEST_RR_OP( 76 , kmmawb.u, 0x262c1dfd, 0x80000000, 0x1cd8534f, 304); 
TEST_RR_OP( 77 , kmmawb.u, 0x262c1dfd, 0x00000000, 0x80000000, 308); 
TEST_RR_OP( 78 , kmmawb.u, 0x262c1dfd, 0xffffffff, 0x7f92b66d, 312); 
TEST_RR_OP( 79 , kmmawb.u, 0x262c1dfd, 0x80000000, 0x80000000, 316); 
TEST_RR_OP( 80 , kmmawb.u, 0x262c1dfd, 0xffffffff, 0x875b698c, 320); 
TEST_RR_OP( 81 , kmmawb.u, 0x262c1dfd, 0x80000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kmmawb.u, 0x262c1dfd, 0x00000000, 0x00000000, 328); 
TEST_RR_OP( 83 , kmmawb.u, 0x184178cd, 0x1d94f25b, 0x5fd78791, 332); 
TEST_RR_OP( 84 , kmmawb.u, 0x1841f8cd, 0x80000000, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmmawb.u, 0x1841f8cd, 0x80000000, 0x80000000, 340); 
TEST_RR_OP( 86 , kmmawb.u, 0x16d5dcc9, 0x3e641287, 0x25b8fa2a, 344); 
TEST_RR_OP( 87 , kmmawb.u, 0x16d5dcc9, 0x80000000, 0x00000000, 348); 
TEST_RR_OP( 88 , kmmawb.u, 0x16d5dcc9, 0xffffffff, 0xcb1f36ff, 352); 
TEST_RR_OP( 89 , kmmawb.u, 0x16d5dcc9, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , kmmawb.u, 0x16d5dcc9, 0xffffffff, 0x80000000, 360); 
TEST_RR_OP( 91 , kmmawb.u, 0x16d5dcc9, 0x80000000, 0x00000000, 364); 
TEST_RR_OP( 92 , kmmawb.u, 0x16d5dcc9, 0x00000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , kmmawb.u, 0xf540380f, 0xa2de1e98, 0xdce25c51, 372); 
TEST_RR_OP( 94 , kmmawb.u, 0xf540380f, 0x00000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmmawb.u, 0xf540380f, 0x00000000, 0xffffffff, 380); 
TEST_RR_OP( 96 , kmmawb.u, 0xf540b80f, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmmawb.u, 0xf540b80f, 0xa86c480c, 0x80000000, 388); 
TEST_RR_OP( 98 , kmmawb.u, 0xf540b80f, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kmmawb.u, 0xf540b80f, 0xdfe36af4, 0x00000000, 396); 
TEST_RR_OP( 100 , kmmawb.u, 0xf540b80f, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 101 , kmmawb.u, 0xefcab80f, 0x80000000, 0x15770aec, 404); 
TEST_RR_OP( 102 , kmmawb.u, 0xefcab80f, 0x060bbc1c, 0x00000000, 408); 
TEST_RR_OP( 103 , kmmawb.u, 0x1e31380f, 0x80000000, 0xce57a333, 412); 
TEST_RR_OP( 104 , kmmawb.u, 0x1e31380f, 0x00000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kmmawb.u, 0x1e31380f, 0x7b7337df, 0x00000000, 420); 
TEST_RR_OP( 106 , kmmawb.u, 0x1e318fa0, 0xa86ea181, 0xffffffff, 424); 
TEST_RR_OP( 107 , kmmawb.u, 0x1e318fa0, 0x80000000, 0x00000000, 428); 
TEST_RR_OP( 108 , kmmawb.u, 0x1e318fa0, 0x80000000, 0x80000000, 432); 
TEST_RR_OP( 109 , kmmawb.u, 0x1e318fa0, 0x00000000, 0x8297f5fc, 436); 
TEST_RR_OP( 110 , kmmawb.u, 0x1e318fa0, 0xc01058be, 0x80000000, 440); 
TEST_RR_OP( 111 , kmmawb.u, 0x1e318fa0, 0xffffffff, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmawb.u, 0x1e318fa0, 0x0e8ed0a6, 0x00000000, 448); 
TEST_RR_OP( 113 , kmmawb.u, 0x1e318fa0, 0x00000000, 0x80000000, 452); 
TEST_RR_OP( 114 , kmmawb.u, 0xf1248fa0, 0x80000000, 0xd18b5a1a, 456); 
TEST_RR_OP( 115 , kmmawb.u, 0xf124b6b8, 0xd8e80954, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmmawb.u, 0xf124b6b8, 0x9b808aad, 0x00000000, 464); 
TEST_RR_OP( 117 , kmmawb.u, 0xf124b6b8, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kmmawb.u, 0xf124b6b8, 0x00000000, 0x80000000, 472); 
TEST_RR_OP( 119 , kmmawb.u, 0xf124b6b8, 0x5c63de41, 0x80000000, 476); 
TEST_RR_OP( 120 , kmmawb.u, 0xf124b6b8, 0x00000000, 0x00000000, 480); 
TEST_RR_OP( 121 , kmmawb.u, 0xf124b6b8, 0x80000000, 0x80000000, 484); 
TEST_RR_OP( 122 , kmmawb.u, 0xf124b6b8, 0x00000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , kmmawb.u, 0xf124b6b8, 0xfaa1a813, 0x00000000, 492); 
TEST_RR_OP( 124 , kmmawb.u, 0xf124b6b8, 0xffffffff, 0xffffffff, 496); 
TEST_RR_OP( 125 , kmmawb.u, 0xf12536b8, 0x80000000, 0xffffffff, 500); 
TEST_RR_OP( 126 , kmmawb.u, 0xf12536b8, 0x00000000, 0x80000000, 504); 
TEST_RR_OP( 127 , kmmawb.u, 0xf12536b8, 0x00000000, 0x80000000, 508); 
TEST_RR_OP( 128 , kmmawb.u, 0xf12536b8, 0x80000000, 0x80000000, 512); 
TEST_RR_OP( 129 , kmmawb.u, 0xf12536b8, 0xffffffff, 0x80000000, 516); 
TEST_RR_OP( 130 , kmmawb.u, 0xf12536b8, 0xffffffff, 0x66334e3a, 520); 
TEST_RR_OP( 131 , kmmawb.u, 0xf12536b8, 0xffffffff, 0x2c360ad9, 524); 
TEST_RR_OP( 132 , kmmawb.u, 0xf12536b8, 0x00000000, 0x00000000, 528); 
TEST_RR_OP( 133 , kmmawb.u, 0xf12536b8, 0xffffffff, 0x5323b44d, 532); 
TEST_RR_OP( 134 , kmmawb.u, 0xf12536b8, 0xffffffff, 0xe1bb01c5, 536); 
TEST_RR_OP( 135 , kmmawb.u, 0xf12536b8, 0x00000000, 0x4140169e, 540); 
TEST_RR_OP( 136 , kmmawb.u, 0xf12536b8, 0x00000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmmawb.u, 0xf12536b8, 0xef172319, 0x80000000, 548); 
TEST_RR_OP( 138 , kmmawb.u, 0xf12536b8, 0xffffffff, 0x80000000, 552); 
TEST_RR_OP( 139 , kmmawb.u, 0xf12536b8, 0x00000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , kmmawb.u, 0xf12589c8, 0xacefcc36, 0xffffffff, 560); 
TEST_RR_OP( 141 , kmmawb.u, 0xf12589c8, 0x80000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kmmawb.u, 0xf12589c8, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , kmmawb.u, 0xf12589c8, 0x00000000, 0x66653b55, 572); 
TEST_RR_OP( 144 , kmmawb.u, 0xf12529ea, 0x5fdde9a1, 0xffffffff, 576); 
TEST_RR_OP( 145 , kmmawb.u, 0xf12529ea, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kmmawb.u, 0xf12529ea, 0x27c9eb63, 0x80000000, 584); 
TEST_RR_OP( 147 , kmmawb.u, 0xf12529ea, 0x80000000, 0x00000000, 588); 
TEST_RR_OP( 148 , kmmawb.u, 0xf12529ea, 0x00000000, 0xffffffff, 592); 
TEST_RR_OP( 149 , kmmawb.u, 0xf12529ea, 0xffffffff, 0x86790e6c, 596); 
TEST_RR_OP( 150 , kmmawb.u, 0xf12529ea, 0x80000000, 0x00000000, 600); 
TEST_RR_OP( 151 , kmmawb.u, 0xedd0b2c1, 0x128d6610, 0x3ae1d20d, 604); 
TEST_RR_OP( 152 , kmmawb.u, 0x0f65b2c1, 0x80000000, 0xb17fbcd6, 608); 
TEST_RR_OP( 153 , kmmawb.u, 0x0f65b2c1, 0x00000000, 0x80000000, 612); 
TEST_RR_OP( 154 , kmmawb.u, 0x0f65b2c1, 0x08bee4d2, 0x80000000, 616); 
TEST_RR_OP( 155 , kmmawb.u, 0x0f65b2c1, 0x00000000, 0xcf8a5ac4, 620); 
TEST_RR_OP( 156 , kmmawb.u, 0x0f65b2c1, 0x80000000, 0x00000000, 624); 
TEST_RR_OP( 157 , kmmawb.u, 0x0f65b2c1, 0x80000000, 0x80000000, 628); 
TEST_RR_OP( 158 , kmmawb.u, 0x0f65b2c1, 0x80000000, 0x00000000, 632); 
TEST_RR_OP( 159 , kmmawb.u, 0x0f65b2c1, 0x2370ddc6, 0x80000000, 636); 
TEST_RR_OP( 160 , kmmawb.u, 0x0f65b2c1, 0xffffffff, 0x80000000, 640); 
TEST_RR_OP( 161 , kmmawb.u, 0x0f65b2c1, 0x00000000, 0x00000000, 644); 
TEST_RR_OP( 162 , kmmawb.u, 0x0f65b2c1, 0x80000000, 0x80000000, 648); 
TEST_RR_OP( 163 , kmmawb.u, 0x0f6632c1, 0x80000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , kmmawb.u, 0x0f6632c1, 0x7d3453fd, 0x00000000, 656); 
TEST_RR_OP( 165 , kmmawb.u, 0x0f6632c1, 0xffffffff, 0xab0d3728, 660); 
TEST_RR_OP( 166 , kmmawb.u, 0x0f6632c1, 0xffffffff, 0x80000000, 664); 
TEST_RR_OP( 167 , kmmawb.u, 0x0f6632c1, 0x80000000, 0x00000000, 668); 
TEST_RR_OP( 168 , kmmawb.u, 0x0f6632c1, 0x80000000, 0x00000000, 672); 
TEST_RR_OP( 169 , kmmawb.u, 0x0f6632c1, 0xffffffff, 0x00000000, 676); 
TEST_RR_OP( 170 , kmmawb.u, 0x0f6632c1, 0xffffffff, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmmawb.u, 0xfed569df, 0xd3163b33, 0x63145e6c, 684); 
TEST_RR_OP( 172 , kmmawb.u, 0xfed569df, 0x00000000, 0x80000000, 688); 
TEST_RR_OP( 173 , kmmawb.u, 0xfed569df, 0xffffffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , kmmawb.u, 0xfed569df, 0x102498d6, 0x80000000, 696); 
TEST_RR_OP( 175 , kmmawb.u, 0xfed569df, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , kmmawb.u, 0xfed52de4, 0x3bfae849, 0xffffffff, 704); 
TEST_RR_OP( 177 , kmmawb.u, 0xfed57cff, 0xb0e539b2, 0xffffffff, 708); 
TEST_RR_OP( 178 , kmmawb.u, 0xfed57cff, 0xffffffff, 0x35323946, 712); 
TEST_RR_OP( 179 , kmmawb.u, 0xfed57cff, 0x00000000, 0x00000000, 716); 
TEST_RR_OP( 180 , kmmawb.u, 0xfed57cff, 0xffffffff, 0xaabfbb08, 720); 
TEST_RR_OP( 181 , kmmawb.u, 0xfed57cff, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , kmmawb.u, 0xfed57cff, 0xd0c6c810, 0x00000000, 728); 
TEST_RR_OP( 183 , kmmawb.u, 0xfed5ead9, 0x9226353a, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmmawb.u, 0xfed5ead9, 0x117bd2c2, 0x80000000, 736); 
TEST_RR_OP( 185 , kmmawb.u, 0xfed5ead9, 0x00000000, 0x80000000, 740); 
TEST_RR_OP( 186 , kmmawb.u, 0xfed66ad9, 0x80000000, 0xffffffff, 744); 
TEST_RR_OP( 187 , kmmawb.u, 0xfed66ad9, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmmawb.u, 0xfed66ad9, 0x80000000, 0x00000000, 752); 
TEST_RR_OP( 189 , kmmawb.u, 0xfed66ad9, 0x80000000, 0x00000000, 756); 
TEST_RR_OP( 190 , kmmawb.u, 0xfed66ad9, 0x00000000, 0xffffffff, 760); 
TEST_RR_OP( 191 , kmmawb.u, 0x036f1170, 0x191ffa58, 0xb9792ed5, 764); 
TEST_RR_OP( 192 , kmmawb.u, 0x036f1170, 0x00000000, 0x8750a414, 768); 
TEST_RR_OP( 193 , kmmawb.u, 0x036f1170, 0x00000000, 0xffffffff, 772); 
TEST_RR_OP( 194 , kmmawb.u, 0x036f1170, 0x00000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmmawb.u, 0x036f1170, 0xffffffff, 0x80000000, 780); 
TEST_RR_OP( 196 , kmmawb.u, 0x036f9170, 0x80000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , kmmawb.u, 0x036f9170, 0xffffffff, 0xb2bdd57c, 788); 
TEST_RR_OP( 198 , kmmawb.u, 0x036f9170, 0xffffffff, 0x00000000, 792); 
TEST_RR_OP( 199 , kmmawb.u, 0x036f9170, 0xffffffff, 0xffffffff, 796); 

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
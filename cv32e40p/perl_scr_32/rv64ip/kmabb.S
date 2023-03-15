# See LICENSE for license details.
#*****************************************************************************
# kmabb.S
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

TEST_RR_OP( 2 , kmabb, 0x00000000, 0x00000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmabb, 0x00000000, 0x751b972f, 0x00000000, 12); 
TEST_RR_OP( 4 , kmabb, 0x00000000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , kmabb, 0x00000000, 0x80000000, 0x00000000, 20); 
TEST_RR_OP( 6 , kmabb, 0x00000000, 0x00000000, 0x80000000, 24); 
TEST_RR_OP( 7 , kmabb, 0x00000000, 0x80000000, 0x80000000, 28); 
TEST_RR_OP( 8 , kmabb, 0x00000000, 0x80000000, 0x00000000, 32); 
TEST_RR_OP( 9 , kmabb, 0x00000000, 0x00000000, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmabb, 0x00000000, 0xc07cd7f6, 0x00000000, 40); 
TEST_RR_OP( 11 , kmabb, 0x00000000, 0xffffffff, 0x00000000, 44); 
TEST_RR_OP( 12 , kmabb, 0x00000000, 0xbdf0781f, 0x80000000, 48); 
TEST_RR_OP( 13 , kmabb, 0x00000000, 0x00000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , kmabb, 0x00000000, 0x80000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kmabb, 0x00000000, 0x875fc6bf, 0x00000000, 60); 
TEST_RR_OP( 16 , kmabb, 0x00000001, 0xffffffff, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmabb, 0x00000001, 0x00000000, 0x00000000, 68); 
TEST_RR_OP( 18 , kmabb, 0x00000001, 0x80000000, 0xffffffff, 72); 
TEST_RR_OP( 19 , kmabb, 0x00000002, 0xffffffff, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmabb, 0xfa050177, 0xd8c42dd3, 0xc119de97, 80); 
TEST_RR_OP( 21 , kmabb, 0xfa050177, 0x80000000, 0x34e50c62, 84); 
TEST_RR_OP( 22 , kmabb, 0xfa050177, 0x00000000, 0x5cdb8027, 88); 
TEST_RR_OP( 23 , kmabb, 0xfa050177, 0x80000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kmabb, 0xfa050177, 0x80000000, 0x80000000, 96); 
TEST_RR_OP( 25 , kmabb, 0xfa050177, 0x00000000, 0xffffffff, 100); 
TEST_RR_OP( 26 , kmabb, 0xfa04c2d2, 0xf9c93ea5, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmabb, 0xfa04c2d3, 0xffffffff, 0xffffffff, 108); 
TEST_RR_OP( 28 , kmabb, 0xfa04977d, 0xffffffff, 0x67e02b56, 112); 
TEST_RR_OP( 29 , kmabb, 0xfa04977e, 0xffffffff, 0xffffffff, 116); 
TEST_RR_OP( 30 , kmabb, 0xfa04977e, 0x00000000, 0xa7714626, 120); 
TEST_RR_OP( 31 , kmabb, 0xfa04977e, 0x00000000, 0xf5254063, 124); 
TEST_RR_OP( 32 , kmabb, 0xfa04977e, 0x00000000, 0x80000000, 128); 
TEST_RR_OP( 33 , kmabb, 0xfa04977e, 0x00000000, 0xe2d34ed5, 132); 
TEST_RR_OP( 34 , kmabb, 0xfa04977e, 0xfe3eae3b, 0x80000000, 136); 
TEST_RR_OP( 35 , kmabb, 0xfa04977e, 0xffffffff, 0x80000000, 140); 
TEST_RR_OP( 36 , kmabb, 0xfa04977e, 0x00000000, 0xaa3ff90d, 144); 
TEST_RR_OP( 37 , kmabb, 0xfa04977f, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmabb, 0xfa04977f, 0x80000000, 0xdd47dda1, 152); 
TEST_RR_OP( 39 , kmabb, 0xfa04977f, 0x482d1f97, 0x80000000, 156); 
TEST_RR_OP( 40 , kmabb, 0xfa04977f, 0x00000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kmabb, 0xfa04977f, 0xffffffff, 0x80000000, 164); 
TEST_RR_OP( 42 , kmabb, 0xfa04977f, 0x00000000, 0x424ea32f, 168); 
TEST_RR_OP( 43 , kmabb, 0xfa04977f, 0x80000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmabb, 0xfa04977f, 0xb6a8c625, 0x00000000, 176); 
TEST_RR_OP( 45 , kmabb, 0xfa04977f, 0x33771c85, 0x80000000, 180); 
TEST_RR_OP( 46 , kmabb, 0xfa04a515, 0x3305f26a, 0xffffffff, 184); 
TEST_RR_OP( 47 , kmabb, 0xfa04a515, 0x00000000, 0x00000000, 188); 
TEST_RR_OP( 48 , kmabb, 0xfa04a515, 0x813e4c14, 0x80000000, 192); 
TEST_RR_OP( 49 , kmabb, 0xfa04a515, 0x00000000, 0x00000000, 196); 
TEST_RR_OP( 50 , kmabb, 0xfa04a515, 0x00000000, 0x80000000, 200); 
TEST_RR_OP( 51 , kmabb, 0xfa04ba29, 0xf43beaec, 0xffffffff, 204); 
TEST_RR_OP( 52 , kmabb, 0xfa04ba29, 0x00000000, 0x25eb5986, 208); 
TEST_RR_OP( 53 , kmabb, 0xfa04ba29, 0x00000000, 0x80000000, 212); 
TEST_RR_OP( 54 , kmabb, 0x02e582e1, 0x2a74a488, 0x8b70e727, 216); 
TEST_RR_OP( 55 , kmabb, 0x02e582e1, 0x00000000, 0x02b7dc16, 220); 
TEST_RR_OP( 56 , kmabb, 0x02e5cbbe, 0x1489b723, 0xffffffff, 224); 
TEST_RR_OP( 57 , kmabb, 0x02e5cbbe, 0x00000000, 0xffffffff, 228); 
TEST_RR_OP( 58 , kmabb, 0x02e5cbbe, 0x80000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kmabb, 0x02e5cbbe, 0x13848842, 0x80000000, 236); 
TEST_RR_OP( 60 , kmabb, 0x02e5cbbe, 0x00000000, 0x62ea8757, 240); 
TEST_RR_OP( 61 , kmabb, 0x02e5cbbe, 0x00000000, 0xffffffff, 244); 
TEST_RR_OP( 62 , kmabb, 0x02e5cbbe, 0x00000000, 0x80000000, 248); 
TEST_RR_OP( 63 , kmabb, 0x02e5cbbe, 0xffffffff, 0x80000000, 252); 
TEST_RR_OP( 64 , kmabb, 0x02e5cbbf, 0xffffffff, 0xffffffff, 256); 
TEST_RR_OP( 65 , kmabb, 0x0fe221d5, 0xb0269d66, 0xad61de49, 260); 
TEST_RR_OP( 66 , kmabb, 0x0fe221d6, 0xffffffff, 0xffffffff, 264); 
TEST_RR_OP( 67 , kmabb, 0x0fe221d6, 0x80000000, 0x27ff22ed, 268); 
TEST_RR_OP( 68 , kmabb, 0x0fe221d6, 0x00000000, 0x00000000, 272); 
TEST_RR_OP( 69 , kmabb, 0x0fe221d6, 0x00000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmabb, 0x0fe221d6, 0x80000000, 0x00000000, 280); 
TEST_RR_OP( 71 , kmabb, 0x0fe23952, 0xffffffff, 0x9f28e884, 284); 
TEST_RR_OP( 72 , kmabb, 0x0fe23952, 0x1cdd2b8f, 0x80000000, 288); 
TEST_RR_OP( 73 , kmabb, 0x0fe218ba, 0x7f042098, 0xffffffff, 292); 
TEST_RR_OP( 74 , kmabb, 0x0fe1c9cd, 0xffffffff, 0x96054eed, 296); 
TEST_RR_OP( 75 , kmabb, 0x0fe1a3d3, 0xffffffff, 0x642e25fa, 300); 
TEST_RR_OP( 76 , kmabb, 0x0fe1a3d3, 0x9735c537, 0x80000000, 304); 
TEST_RR_OP( 77 , kmabb, 0x0fe1a3d3, 0xffffffff, 0x00000000, 308); 
TEST_RR_OP( 78 , kmabb, 0x0fe1a3d3, 0x80000000, 0x00000000, 312); 
TEST_RR_OP( 79 , kmabb, 0x0fe1a3d3, 0x00000000, 0xffffffff, 316); 
TEST_RR_OP( 80 , kmabb, 0x0fe1a3d3, 0x80000000, 0xf7e088be, 320); 
TEST_RR_OP( 81 , kmabb, 0x0fe1ad2f, 0xc19df6a4, 0xffffffff, 324); 
TEST_RR_OP( 82 , kmabb, 0x0fe1ad2f, 0x00000000, 0x32b4e949, 328); 
TEST_RR_OP( 83 , kmabb, 0x0fe1ad2f, 0xb4f4d097, 0x80000000, 332); 
TEST_RR_OP( 84 , kmabb, 0x0fe1af1d, 0x8a6dfe12, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmabb, 0x0fe1af1d, 0x00000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , kmabb, 0x0fe1af1d, 0x80000000, 0xffffffff, 344); 
TEST_RR_OP( 87 , kmabb, 0x0fe1af1d, 0x00000000, 0xffffffff, 348); 
TEST_RR_OP( 88 , kmabb, 0x0fe1af1e, 0xffffffff, 0xffffffff, 352); 
TEST_RR_OP( 89 , kmabb, 0x0fe1af1e, 0x00000000, 0x86bbde67, 356); 
TEST_RR_OP( 90 , kmabb, 0x0fe1af1e, 0xffffffff, 0x00000000, 360); 
TEST_RR_OP( 91 , kmabb, 0x0fe1af1e, 0x80000000, 0x1db25a5d, 364); 
TEST_RR_OP( 92 , kmabb, 0x0fe1af1e, 0x00000000, 0x00000000, 368); 
TEST_RR_OP( 93 , kmabb, 0x0fe1af1e, 0x00000000, 0x80000000, 372); 
TEST_RR_OP( 94 , kmabb, 0x0fe1af1e, 0xffffffff, 0x80000000, 376); 
TEST_RR_OP( 95 , kmabb, 0x0fe1af1e, 0x80000000, 0x6cd7debc, 380); 
TEST_RR_OP( 96 , kmabb, 0x0fe1af1e, 0x00000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmabb, 0x0fe1af1e, 0x80000000, 0x80000000, 388); 
TEST_RR_OP( 98 , kmabb, 0x0fe1af1e, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kmabb, 0x0fe1af1e, 0x80000000, 0x80000000, 396); 
TEST_RR_OP( 100 , kmabb, 0x0fe215a1, 0xffffffff, 0x6804997d, 400); 
TEST_RR_OP( 101 , kmabb, 0x0fe215a1, 0xffffffff, 0x80000000, 404); 
TEST_RR_OP( 102 , kmabb, 0x0fe215a1, 0x00000000, 0x80000000, 408); 
TEST_RR_OP( 103 , kmabb, 0x0fe215a1, 0xffffffff, 0x80000000, 412); 
TEST_RR_OP( 104 , kmabb, 0x0fe215a1, 0x00000000, 0xffffffff, 416); 
TEST_RR_OP( 105 , kmabb, 0x0fe215a1, 0x7c6df972, 0x80000000, 420); 
TEST_RR_OP( 106 , kmabb, 0x0fe215a1, 0x80000000, 0x00000000, 424); 
TEST_RR_OP( 107 , kmabb, 0x0fe215a1, 0x00000000, 0x28c3d9fd, 428); 
TEST_RR_OP( 108 , kmabb, 0x0fe282c9, 0xffffffff, 0xf45392d8, 432); 
TEST_RR_OP( 109 , kmabb, 0x0fe282c9, 0xffffffff, 0x00000000, 436); 
TEST_RR_OP( 110 , kmabb, 0x0fe282c9, 0xffffffff, 0x00000000, 440); 
TEST_RR_OP( 111 , kmabb, 0x0fe282c9, 0x80000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , kmabb, 0x0fe282c9, 0x00000000, 0x63d9a602, 448); 
TEST_RR_OP( 113 , kmabb, 0x0fe282c9, 0x00000000, 0x17d0aba0, 452); 
TEST_RR_OP( 114 , kmabb, 0x0fe22e6f, 0xffffffff, 0x189d545a, 456); 
TEST_RR_OP( 115 , kmabb, 0x097de457, 0x3c4a0cff, 0x1c918218, 460); 
TEST_RR_OP( 116 , kmabb, 0x097de457, 0xa8d66984, 0x00000000, 464); 
TEST_RR_OP( 117 , kmabb, 0x097de457, 0x00000000, 0x4a177692, 468); 
TEST_RR_OP( 118 , kmabb, 0x097de457, 0x104f24fc, 0x00000000, 472); 
TEST_RR_OP( 119 , kmabb, 0x097de457, 0x00000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , kmabb, 0x097de457, 0xffffffff, 0x80000000, 480); 
TEST_RR_OP( 121 , kmabb, 0x097de457, 0x00000000, 0x80000000, 484); 
TEST_RR_OP( 122 , kmabb, 0x097de457, 0x2ea77e7d, 0x00000000, 488); 
TEST_RR_OP( 123 , kmabb, 0x097de457, 0x80000000, 0x80000000, 492); 
TEST_RR_OP( 124 , kmabb, 0x097de457, 0x80000000, 0xea3065f3, 496); 
TEST_RR_OP( 125 , kmabb, 0x097da876, 0xffffffff, 0x41ff3be1, 500); 
TEST_RR_OP( 126 , kmabb, 0x097e2306, 0xffffffff, 0xf6708570, 504); 
TEST_RR_OP( 127 , kmabb, 0x097e2306, 0x00000000, 0x036538be, 508); 
TEST_RR_OP( 128 , kmabb, 0x097df137, 0xffffffff, 0xa62f31cf, 512); 
TEST_RR_OP( 129 , kmabb, 0x097df137, 0x80000000, 0x80000000, 516); 
TEST_RR_OP( 130 , kmabb, 0x097dcd63, 0x4c2a23d4, 0xffffffff, 520); 
TEST_RR_OP( 131 , kmabb, 0x18732c68, 0x881d46d9, 0xc9b3360d, 524); 
TEST_RR_OP( 132 , kmabb, 0x0d34085a, 0xc74e6272, 0xe192e2c1, 528); 
TEST_RR_OP( 133 , kmabb, 0x0d3450da, 0xffffffff, 0x8fb9b780, 532); 
TEST_RR_OP( 134 , kmabb, 0x0d3450da, 0xfc73b094, 0x00000000, 536); 
TEST_RR_OP( 135 , kmabb, 0x0d3450da, 0xffffffff, 0x80000000, 540); 
TEST_RR_OP( 136 , kmabb, 0x0d3450db, 0xffffffff, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmabb, 0x0d348c12, 0xffffffff, 0x2fe4c4c9, 548); 
TEST_RR_OP( 138 , kmabb, 0x0d348c12, 0x00000000, 0xffffffff, 552); 
TEST_RR_OP( 139 , kmabb, 0x0d348c12, 0x76c224bc, 0x80000000, 556); 
TEST_RR_OP( 140 , kmabb, 0x0d348c12, 0x80000000, 0x80000000, 560); 
TEST_RR_OP( 141 , kmabb, 0x0d348c12, 0xd267f1c7, 0x80000000, 564); 
TEST_RR_OP( 142 , kmabb, 0x0d348c12, 0x00000000, 0x55000b27, 568); 
TEST_RR_OP( 143 , kmabb, 0x0d3486be, 0xffffffff, 0xd98e0554, 572); 
TEST_RR_OP( 144 , kmabb, 0x0d3486bf, 0xffffffff, 0xffffffff, 576); 
TEST_RR_OP( 145 , kmabb, 0x0d3486bf, 0x80000000, 0x3307a632, 580); 
TEST_RR_OP( 146 , kmabb, 0x0d3486c0, 0xffffffff, 0xffffffff, 584); 
TEST_RR_OP( 147 , kmabb, 0x0d3486c0, 0x80000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , kmabb, 0x0d3486c0, 0x00000000, 0x00000000, 592); 
TEST_RR_OP( 149 , kmabb, 0x0d34b0eb, 0xffffffff, 0x19cad5d5, 596); 
TEST_RR_OP( 150 , kmabb, 0x0d34b0eb, 0x80000000, 0x80000000, 600); 
TEST_RR_OP( 151 , kmabb, 0x0d34a14b, 0xffffffff, 0xd3150fa0, 604); 
TEST_RR_OP( 152 , kmabb, 0x0d34a14b, 0x00000000, 0x80000000, 608); 
TEST_RR_OP( 153 , kmabb, 0x0d34a14b, 0xc953d41e, 0x00000000, 612); 
TEST_RR_OP( 154 , kmabb, 0x0d34a14b, 0xffffffff, 0x80000000, 616); 
TEST_RR_OP( 155 , kmabb, 0x0d34a14b, 0x00000000, 0x80000000, 620); 
TEST_RR_OP( 156 , kmabb, 0x0d34a14b, 0x00000000, 0x80000000, 624); 
TEST_RR_OP( 157 , kmabb, 0x0d34a14b, 0xe38e4689, 0x00000000, 628); 
TEST_RR_OP( 158 , kmabb, 0x0d346060, 0xe35640eb, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmabb, 0x0d346061, 0xffffffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmabb, 0x0d346061, 0x00000000, 0x80000000, 640); 
TEST_RR_OP( 161 , kmabb, 0x0d34d3a4, 0xffffffff, 0xc5df8cbd, 644); 
TEST_RR_OP( 162 , kmabb, 0x0d34d3a4, 0x80000000, 0x886a2a48, 648); 
TEST_RR_OP( 163 , kmabb, 0x0d34d3a4, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , kmabb, 0x0d34d3a4, 0x2b4e64f9, 0x00000000, 656); 
TEST_RR_OP( 165 , kmabb, 0x0d34d3a4, 0x80000000, 0x00000000, 660); 
TEST_RR_OP( 166 , kmabb, 0x0d34d3a4, 0x00000000, 0xffffffff, 664); 
TEST_RR_OP( 167 , kmabb, 0x0d34bf41, 0x3d8e1463, 0xffffffff, 668); 
TEST_RR_OP( 168 , kmabb, 0x0d34bf41, 0x00000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , kmabb, 0x0d352552, 0xffffffff, 0x2e5c99ef, 676); 
TEST_RR_OP( 170 , kmabb, 0x0d352552, 0xb6f09d57, 0x80000000, 680); 
TEST_RR_OP( 171 , kmabb, 0x0d352552, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , kmabb, 0x0d352552, 0x80000000, 0x80000000, 688); 
TEST_RR_OP( 173 , kmabb, 0x09436dce, 0x70fe1142, 0xaf61c57e, 692); 
TEST_RR_OP( 174 , kmabb, 0x09436dce, 0x00000000, 0x80000000, 696); 
TEST_RR_OP( 175 , kmabb, 0x303fd366, 0xdc2472d2, 0x5b7756ec, 700); 
TEST_RR_OP( 176 , kmabb, 0x303fd366, 0x8d9a6e81, 0x00000000, 704); 
TEST_RR_OP( 177 , kmabb, 0x303fd366, 0xffffffff, 0x00000000, 708); 
TEST_RR_OP( 178 , kmabb, 0x303f9c2f, 0xffffffff, 0x64753737, 712); 
TEST_RR_OP( 179 , kmabb, 0x303f9c2f, 0xc3fdb204, 0x80000000, 716); 
TEST_RR_OP( 180 , kmabb, 0x303f9c30, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP( 181 , kmabb, 0x303f9c30, 0x00000000, 0x80000000, 724); 
TEST_RR_OP( 182 , kmabb, 0x303f9c30, 0x80000000, 0x05ae62c2, 728); 
TEST_RR_OP( 183 , kmabb, 0x303f9c30, 0x80000000, 0x80000000, 732); 
TEST_RR_OP( 184 , kmabb, 0x303f9c30, 0x00000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kmabb, 0x303f9c30, 0x00000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , kmabb, 0x303f9c30, 0xffffffff, 0x00000000, 744); 
TEST_RR_OP( 187 , kmabb, 0x303ffaad, 0xffffffff, 0xc412a183, 748); 
TEST_RR_OP( 188 , kmabb, 0x3040480f, 0x39eab29e, 0xffffffff, 752); 
TEST_RR_OP( 189 , kmabb, 0x3040480f, 0x00000000, 0x80000000, 756); 
TEST_RR_OP( 190 , kmabb, 0x3040480f, 0x80000000, 0x80000000, 760); 
TEST_RR_OP( 191 , kmabb, 0x3040480f, 0x00000000, 0x00000000, 764); 
TEST_RR_OP( 192 , kmabb, 0x30404810, 0xffffffff, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmabb, 0x30407a7a, 0xffffffff, 0x0d3ccd96, 772); 
TEST_RR_OP( 194 , kmabb, 0x2ee9fb5a, 0x72349a85, 0x43640360, 776); 
TEST_RR_OP( 195 , kmabb, 0x2ee9fb5a, 0x80000000, 0xc52dc712, 780); 
TEST_RR_OP( 196 , kmabb, 0x2ee9fb5a, 0x80000000, 0x00000000, 784); 
TEST_RR_OP( 197 , kmabb, 0x2ee9fb5a, 0x80000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , kmabb, 0x2ee9fb5a, 0x80000000, 0x80000000, 792); 
TEST_RR_OP( 199 , kmabb, 0x2ee9fb5a, 0x0b95570f, 0x80000000, 796); 

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
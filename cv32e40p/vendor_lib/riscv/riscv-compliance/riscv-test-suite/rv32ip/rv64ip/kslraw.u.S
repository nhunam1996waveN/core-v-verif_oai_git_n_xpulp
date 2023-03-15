# See LICENSE for license details.
#*****************************************************************************
# kslraw.u.S
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

TEST_RR_OP( 2 , kslraw.u, 0x00000000, 0x00000000, 0x00000003, 8); 
TEST_RR_OP( 3 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 12); 
TEST_RR_OP( 4 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 20); 
TEST_RR_OP( 6 , kslraw.u, 0xfffffffffffff800, 0xffffffff, 0x0000000b, 24); 
TEST_RR_OP( 7 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x0000000e, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_RR_OP( 11 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 44); 
TEST_RR_OP( 12 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 48); 
TEST_RR_OP( 13 , kslraw.u, 0xffffffffffe00000, 0x80000000, 0x00000036, 52); 
TEST_RR_OP( 14 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 60); 
TEST_RR_OP( 16 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 64); 
TEST_RR_OP( 17 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 68); 
TEST_RR_OP( 18 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 72); 
TEST_RR_OP( 19 , kslraw.u, 0x00000000, 0x00000000, 0x00000006, 76); 
TEST_RR_OP( 20 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kslraw.u, 0xffffffffffffffc0, 0x80000000, 0x00000027, 84); 
TEST_RR_OP( 22 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 88); 
TEST_RR_OP( 23 , kslraw.u, 0x00000000, 0x00000000, 0x00000005, 92); 
TEST_RR_OP( 24 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 96); 
TEST_RR_OP( 25 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000007, 100); 
TEST_CASE( 26 ,104, x14, 1, rdov x14;);
TEST_CASE( 27 ,108, x14, 1, clrov;);
TEST_CASE( 28 ,112, x14, 0, rdov x14;);
TEST_RR_OP( 29 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000013, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 132); 
TEST_RR_OP( 34 , kslraw.u, 0x42d3c21c, 0x42d3c21c, 0x00000000, 136); 
TEST_RR_OP( 35 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 140); 
TEST_RR_OP( 36 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 144); 
TEST_RR_OP( 37 , kslraw.u, 0x00000013, 0x4a28155c, 0x00000026, 148); 
TEST_RR_OP( 38 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000011, 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_RR_OP( 42 , kslraw.u, 0xfffffffffc000000, 0xffffffff, 0x0000001a, 168); 
TEST_RR_OP( 43 , kslraw.u, 0xffffffffffffff80, 0x80000000, 0x00000028, 172); 
TEST_RR_OP( 44 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 176); 
TEST_RR_OP( 45 , kslraw.u, 0xffffffffca815db5, 0x9502bb6a, 0x0000003f, 180); 
TEST_RR_OP( 46 , kslraw.u, 0xfffffffffffffff8, 0x80000000, 0x00000024, 184); 
TEST_RR_OP( 47 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 188); 
TEST_RR_OP( 48 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 192); 
TEST_RR_OP( 49 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 196); 
TEST_RR_OP( 50 , kslraw.u, 0x00000000, 0x00000000, 0x0000002e, 200); 
TEST_RR_OP( 51 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000015, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_RR_OP( 55 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 220); 
TEST_RR_OP( 56 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 224); 
TEST_RR_OP( 57 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 228); 
TEST_RR_OP( 58 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 232); 
TEST_RR_OP( 59 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 236); 
TEST_RR_OP( 60 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 240); 
TEST_RR_OP( 61 , kslraw.u, 0x00000000, 0x00000000, 0x0000002b, 244); 
TEST_RR_OP( 62 , kslraw.u, 0x5b8e0b71, 0x5b8e0b71, 0x00000000, 248); 
TEST_RR_OP( 63 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 252); 
TEST_RR_OP( 64 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 260); 
TEST_RR_OP( 66 , kslraw.u, 0xffffffffffffec99, 0xd93195c6, 0x0000002f, 264); 
TEST_RR_OP( 67 , kslraw.u, 0xffffffffb3e732f4, 0xb3e732f4, 0x00000000, 268); 
TEST_RR_OP( 68 , kslraw.u, 0x00000000, 0x00000000, 0x0000003c, 272); 
TEST_RR_OP( 69 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 276); 
TEST_RR_OP( 70 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 280); 
TEST_RR_OP( 71 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 284); 
TEST_RR_OP( 72 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 288); 
TEST_RR_OP( 73 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003c, 292); 
TEST_RR_OP( 74 , kslraw.u, 0x0204889f, 0x0409113e, 0x0000003f, 296); 
TEST_RR_OP( 75 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 300); 
TEST_RR_OP( 76 , kslraw.u, 0xffffffffffe00000, 0xffffffff, 0x00000015, 304); 
TEST_RR_OP( 77 , kslraw.u, 0xffffffffffffff00, 0xffffffff, 0x00000008, 308); 
TEST_RR_OP( 78 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 312); 
TEST_RR_OP( 79 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 316); 
TEST_RR_OP( 80 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 320); 
TEST_RR_OP( 81 , kslraw.u, 0x699d50aa, 0x699d50aa, 0x00000000, 324); 
TEST_RR_OP( 82 , kslraw.u, 0x303cff79, 0x6079fef2, 0x0000003f, 328); 
TEST_RR_OP( 83 , kslraw.u, 0x0aca8f38, 0x15951e6f, 0x0000003f, 332); 
TEST_RR_OP( 84 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 336); 
TEST_RR_OP( 85 , kslraw.u, 0x00000000, 0x00000000, 0x00000035, 340); 
TEST_RR_OP( 86 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 344); 
TEST_RR_OP( 87 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , kslraw.u, 0xffffffff98ed1636, 0x98ed1636, 0x00000000, 352); 
TEST_RR_OP( 89 , kslraw.u, 0x7f1ce5aa, 0x7f1ce5aa, 0x00000000, 356); 
TEST_RR_OP( 90 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 360); 
TEST_RR_OP( 91 , kslraw.u, 0xffffffffd80e6dcc, 0xb01cdb98, 0x0000003f, 364); 
TEST_RR_OP( 92 , kslraw.u, 0x7fffffff, 0x11fe4efe, 0x00000007, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , kslraw.u, 0x38e6a4d4, 0x38e6a4d4, 0x00000000, 384); 
TEST_RR_OP( 97 , kslraw.u, 0x05d3c04d, 0x0ba78099, 0x0000003f, 388); 
TEST_RR_OP( 98 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 396); 
TEST_RR_OP( 100 , kslraw.u, 0x0005e100, 0x5e0ffd30, 0x00000034, 400); 
TEST_RR_OP( 101 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 404); 
TEST_RR_OP( 102 , kslraw.u, 0x292b9835, 0x52573069, 0x0000003f, 408); 
TEST_RR_OP( 103 , kslraw.u, 0x00000000, 0xffffffff, 0x0000002f, 412); 
TEST_RR_OP( 104 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 416); 
TEST_RR_OP( 105 , kslraw.u, 0xfffffffff51063bd, 0xf51063bd, 0x00000000, 420); 
TEST_RR_OP( 106 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 424); 
TEST_RR_OP( 107 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 428); 
TEST_RR_OP( 108 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 432); 
TEST_RR_OP( 109 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 436); 
TEST_RR_OP( 110 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 440); 
TEST_RR_OP( 111 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 444); 
TEST_RR_OP( 112 , kslraw.u, 0x72643e7d, 0x72643e7d, 0x00000000, 448); 
TEST_RR_OP( 113 , kslraw.u, 0xffffffffff000000, 0x80000000, 0x00000039, 452); 
TEST_RR_OP( 114 , kslraw.u, 0x2d88f27b, 0x5b11e4f5, 0x0000003f, 456); 
TEST_RR_OP( 115 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 460); 
TEST_RR_OP( 116 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 464); 
TEST_RR_OP( 117 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 472); 
TEST_RR_OP( 119 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , kslraw.u, 0x7d32445e, 0x7d32445e, 0x00000000, 484); 
TEST_RR_OP( 122 , kslraw.u, 0x775111ec, 0x775111ec, 0x00000000, 488); 
TEST_RR_OP( 123 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 492); 
TEST_RR_OP( 124 , kslraw.u, 0x5e5c9b33, 0x5e5c9b33, 0x00000000, 496); 
TEST_RR_OP( 125 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 500); 
TEST_RR_OP( 126 , kslraw.u, 0xffffffffffffffe0, 0xffffffff, 0x00000005, 504); 
TEST_RR_OP( 127 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , kslraw.u, 0xffffffffd7bf688b, 0xd7bf688b, 0x00000000, 512); 
TEST_RR_OP( 129 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 516); 
TEST_RR_OP( 130 , kslraw.u, 0x3d9ee2a6, 0x3d9ee2a6, 0x00000000, 520); 
TEST_RR_OP( 131 , kslraw.u, 0xffffffffc02ff47d, 0xc02ff47d, 0x00000000, 524); 
TEST_RR_OP( 132 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 528); 
TEST_RR_OP( 133 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 532); 
TEST_RR_OP( 134 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 536); 
TEST_RR_OP( 135 , kslraw.u, 0x349e244a, 0x349e244a, 0x00000000, 540); 
TEST_RR_OP( 136 , kslraw.u, 0xffffffffffe00000, 0xffffffff, 0x00000015, 544); 
TEST_RR_OP( 137 , kslraw.u, 0xffffffff85dfffa8, 0x85dfffa8, 0x00000000, 548); 
TEST_RR_OP( 138 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 552); 
TEST_RR_OP( 139 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 556); 
TEST_RR_OP( 140 , kslraw.u, 0x00000000, 0x00000000, 0x00000026, 560); 
TEST_RR_OP( 141 , kslraw.u, 0x1cf7252f, 0x39ee4a5d, 0x0000003f, 564); 
TEST_RR_OP( 142 , kslraw.u, 0x00000000, 0x00000000, 0x0000002f, 568); 
TEST_RR_OP( 143 , kslraw.u, 0xfffffffff0000000, 0xffffffff, 0x0000001c, 572); 
TEST_RR_OP( 144 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 576); 
TEST_RR_OP( 145 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 580); 
TEST_RR_OP( 146 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x0000001a, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 600); 
TEST_RR_OP( 151 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 604); 
TEST_RR_OP( 152 , kslraw.u, 0x00002d6f, 0x5add3527, 0x0000002f, 608); 
TEST_RR_OP( 153 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 612); 
TEST_RR_OP( 154 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 616); 
TEST_RR_OP( 155 , kslraw.u, 0x00000000, 0xffffffff, 0x00000032, 620); 
TEST_RR_OP( 156 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 624); 
TEST_RR_OP( 157 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 628); 
TEST_RR_OP( 158 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 632); 
TEST_RR_OP( 159 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 636); 
TEST_RR_OP( 160 , kslraw.u, 0x00000000, 0xffffffff, 0x00000035, 640); 
TEST_RR_OP( 161 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , kslraw.u, 0x00000000, 0x00000000, 0x00000023, 648); 
TEST_RR_OP( 163 , kslraw.u, 0x00000000, 0x00000000, 0x0000001c, 652); 
TEST_RR_OP( 164 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 656); 
TEST_RR_OP( 165 , kslraw.u, 0xffffffffffff8000, 0xffffffff, 0x0000000f, 660); 
TEST_RR_OP( 166 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 664); 
TEST_RR_OP( 167 , kslraw.u, 0xffffffffffe00000, 0xffffffff, 0x00000015, 668); 
TEST_RR_OP( 168 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 672); 
TEST_RR_OP( 169 , kslraw.u, 0xffffffffb0345e3d, 0xb0345e3d, 0x00000000, 676); 
TEST_RR_OP( 170 , kslraw.u, 0xffffffffc0000000, 0x80000000, 0x0000003f, 680); 
TEST_RR_OP( 171 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 684); 
TEST_RR_OP( 172 , kslraw.u, 0xffffffffc0000000, 0x80000000, 0x0000003f, 688); 
TEST_RR_OP( 173 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , kslraw.u, 0xffffffffffffffff, 0xa0ef6da5, 0x00000022, 696); 
TEST_RR_OP( 175 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 700); 
TEST_RR_OP( 176 , kslraw.u, 0xffffffffffffffe0, 0x80000000, 0x00000026, 704); 
TEST_RR_OP( 177 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 708); 
TEST_RR_OP( 178 , kslraw.u, 0xffffffff80000000, 0xffffffff, 0x0000001f, 712); 
TEST_RR_OP( 179 , kslraw.u, 0x377beb9f, 0x377beb9f, 0x00000000, 716); 
TEST_RR_OP( 180 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 720); 
TEST_RR_OP( 181 , kslraw.u, 0x00000000, 0x00000000, 0x0000003f, 724); 
TEST_RR_OP( 182 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 728); 
TEST_RR_OP( 183 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 732); 
TEST_RR_OP( 184 , kslraw.u, 0xffffffffc0000000, 0x80000000, 0x0000003f, 736); 
TEST_RR_OP( 185 , kslraw.u, 0xfffffffff257b637, 0xe4af6c6e, 0x0000003f, 740); 
TEST_RR_OP( 186 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 744); 
TEST_RR_OP( 187 , kslraw.u, 0xffffffffc0000000, 0x80000000, 0x0000003f, 748); 
TEST_RR_OP( 188 , kslraw.u, 0x2788dc07, 0x2788dc07, 0x00000000, 752); 
TEST_RR_OP( 189 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 756); 
TEST_RR_OP( 190 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 760); 
TEST_RR_OP( 191 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 764); 
TEST_RR_OP( 192 , kslraw.u, 0xffffffffffffffff, 0xffffffff, 0x00000000, 768); 
TEST_RR_OP( 193 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 772); 
TEST_RR_OP( 194 , kslraw.u, 0xffffffff80000000, 0x80000000, 0x00000000, 776); 
TEST_RR_OP( 195 , kslraw.u, 0x00000000, 0x00000000, 0x0000000b, 780); 
TEST_RR_OP( 196 , kslraw.u, 0xfffffffffffffffe, 0x80000000, 0x00000022, 784); 
TEST_RR_OP( 197 , kslraw.u, 0x00000000, 0xffffffff, 0x0000003f, 788); 
TEST_RR_OP( 198 , kslraw.u, 0x1b9cd0a2, 0x1b9cd0a2, 0x00000000, 792); 
TEST_RR_OP( 199 , kslraw.u, 0x00000000, 0x00000000, 0x00000000, 796); 

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
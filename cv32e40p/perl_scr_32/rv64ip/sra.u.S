# See LICENSE for license details.
#*****************************************************************************
# sra.u.S
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

TEST_RR_OP( 2 , sra.u, 0x00000001, 0x4245d01a, 0xffffffff, 8); 
TEST_RR_OP( 3 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , sra.u, 0x100000000, 0xffffffff, 0x7ce9adf8, 16); 
TEST_RR_OP( 5 , sra.u, 0x80000000, 0x80000000, 0x80000000, 20); 
TEST_RR_OP( 6 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , sra.u, 0x0461e011, 0x0461e011, 0x00000000, 28); 
TEST_RR_OP( 8 , sra.u, 0xa94819c6, 0xa94819c6, 0x00000000, 32); 
TEST_RR_OP( 9 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 36); 
TEST_RR_OP( 10 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 40); 
TEST_RR_OP( 11 , sra.u, 0x00000000, 0x00000000, 0x80000000, 44); 
TEST_RR_OP( 12 , sra.u, 0xc41291a0, 0x8825233f, 0x819724a1, 48); 
TEST_RR_OP( 13 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 52); 
TEST_RR_OP( 14 , sra.u, 0xfffc0000, 0x80000000, 0xd65a502d, 56); 
TEST_RR_OP( 15 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , sra.u, 0x80000000, 0x80000000, 0x00000000, 64); 
TEST_RR_OP( 17 , sra.u, 0x00000000, 0x00000000, 0x3e12643d, 68); 
TEST_RR_OP( 18 , sra.u, 0x100000000, 0xcfc29926, 0xffffffff, 72); 
TEST_RR_OP( 19 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 76); 
TEST_RR_OP( 20 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , sra.u, 0xc4a33cff, 0xc4a33cff, 0x80000000, 84); 
TEST_RR_OP( 22 , sra.u, 0x00000000, 0x00000000, 0x80000000, 88); 
TEST_RR_OP( 23 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 92); 
TEST_RR_OP( 24 , sra.u, 0xf8000000, 0x80000000, 0xaaf34504, 96); 
TEST_RR_OP( 25 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 100); 
TEST_RR_OP( 26 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 104); 
TEST_RR_OP( 27 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 108); 
TEST_RR_OP( 28 , sra.u, 0x00000000, 0x00000000, 0x80210de3, 112); 
TEST_RR_OP( 29 , sra.u, 0x100000000, 0xdc470407, 0xffffffff, 116); 
TEST_RR_OP( 30 , sra.u, 0xffffffce, 0x9b694658, 0x42754dd9, 120); 
TEST_RR_OP( 31 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 124); 
TEST_RR_OP( 32 , sra.u, 0x000004aa, 0x12a96c6d, 0x5d8fe2d2, 128); 
TEST_RR_OP( 33 , sra.u, 0xbc852a35, 0xbc852a35, 0x00000000, 132); 
TEST_RR_OP( 34 , sra.u, 0xffe00000, 0x80000000, 0x0f591b0a, 136); 
TEST_RR_OP( 35 , sra.u, 0x00000000, 0x00000000, 0xd6113813, 140); 
TEST_RR_OP( 36 , sra.u, 0xaee0c5bc, 0xaee0c5bc, 0x80000000, 144); 
TEST_RR_OP( 37 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , sra.u, 0x100000000, 0xffffffff, 0x2260447d, 152); 
TEST_RR_OP( 39 , sra.u, 0xffffff00, 0x80000000, 0xf3a95e17, 156); 
TEST_RR_OP( 40 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 164); 
TEST_RR_OP( 42 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 172); 
TEST_RR_OP( 44 , sra.u, 0x00000000, 0x00000000, 0x80000000, 176); 
TEST_RR_OP( 45 , sra.u, 0x0c85b2ae, 0x0c85b2ae, 0x00000000, 180); 
TEST_RR_OP( 46 , sra.u, 0x80000000, 0x80000000, 0x80000000, 184); 
TEST_RR_OP( 47 , sra.u, 0xffc00000, 0x80000000, 0x28052369, 188); 
TEST_RR_OP( 48 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , sra.u, 0x80000000, 0x80000000, 0x80000000, 196); 
TEST_RR_OP( 50 , sra.u, 0x00000000, 0x00000000, 0x80000000, 200); 
TEST_RR_OP( 51 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 204); 
TEST_RR_OP( 52 , sra.u, 0xe74cd80d, 0xe74cd80d, 0x80000000, 208); 
TEST_RR_OP( 53 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , sra.u, 0xb9204caf, 0xb9204caf, 0x00000000, 216); 
TEST_RR_OP( 55 , sra.u, 0xff000000, 0x80000000, 0x50d3d787, 220); 
TEST_RR_OP( 56 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 224); 
TEST_RR_OP( 57 , sra.u, 0x00000000, 0x00000000, 0x80000000, 228); 
TEST_RR_OP( 58 , sra.u, 0x2c6631de, 0x2c6631de, 0x00000000, 232); 
TEST_RR_OP( 59 , sra.u, 0x00000000, 0x00000000, 0xd27e4bba, 236); 
TEST_RR_OP( 60 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 240); 
TEST_RR_OP( 61 , sra.u, 0x00000000, 0x00000000, 0x00000000, 244); 
TEST_RR_OP( 62 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 248); 
TEST_RR_OP( 63 , sra.u, 0x00000000, 0x00000000, 0x00000000, 252); 
TEST_RR_OP( 64 , sra.u, 0x00000000, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , sra.u, 0xffffc000, 0x80000000, 0x004924d1, 260); 
TEST_RR_OP( 66 , sra.u, 0xfffffff0, 0x80000000, 0x213171fb, 264); 
TEST_RR_OP( 67 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 268); 
TEST_RR_OP( 68 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP( 69 , sra.u, 0xfffffee4, 0xb8ea2a93, 0x31c67b56, 276); 
TEST_RR_OP( 70 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 280); 
TEST_RR_OP( 71 , sra.u, 0x00000000, 0x00000000, 0x80000000, 284); 
TEST_RR_OP( 72 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 288); 
TEST_RR_OP( 73 , sra.u, 0x00000000, 0x00000000, 0x00000000, 292); 
TEST_RR_OP( 74 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 296); 
TEST_RR_OP( 75 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 300); 
TEST_RR_OP( 76 , sra.u, 0x00480b24, 0x00480b24, 0x80000000, 304); 
TEST_RR_OP( 77 , sra.u, 0xffffffff, 0x8f7e8f2d, 0xffffffff, 308); 
TEST_RR_OP( 78 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , sra.u, 0x00000001, 0x6521d082, 0xffffffff, 316); 
TEST_RR_OP( 80 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 320); 
TEST_RR_OP( 81 , sra.u, 0x00000000, 0x00000000, 0x5f31fa0a, 324); 
TEST_RR_OP( 82 , sra.u, 0x100000000, 0xea34af60, 0xffffffff, 328); 
TEST_RR_OP( 83 , sra.u, 0x80000000, 0x80000000, 0x00000000, 332); 
TEST_RR_OP( 84 , sra.u, 0x100000000, 0xffffffff, 0x14c2cacb, 336); 
TEST_RR_OP( 85 , sra.u, 0x93546ed0, 0x93546ed0, 0x00000000, 340); 
TEST_RR_OP( 86 , sra.u, 0x80000000, 0x80000000, 0x80000000, 344); 
TEST_RR_OP( 87 , sra.u, 0x0000009d, 0x4e685862, 0xe3c36017, 348); 
TEST_RR_OP( 88 , sra.u, 0x80000000, 0x80000000, 0x80000000, 352); 
TEST_RR_OP( 89 , sra.u, 0x80000000, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , sra.u, 0x00000000, 0x00000000, 0x22e904aa, 360); 
TEST_RR_OP( 91 , sra.u, 0x00000000, 0x00000000, 0x9e846c88, 364); 
TEST_RR_OP( 92 , sra.u, 0x266b7e22, 0x266b7e22, 0x00000000, 368); 
TEST_RR_OP( 93 , sra.u, 0x00000000, 0x00000000, 0x00000000, 372); 
TEST_RR_OP( 94 , sra.u, 0x00000001, 0x42a577e8, 0xffffffff, 376); 
TEST_RR_OP( 95 , sra.u, 0x00000000, 0x00000000, 0x00000000, 380); 
TEST_RR_OP( 96 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , sra.u, 0x80000000, 0x80000000, 0x80000000, 388); 
TEST_RR_OP( 98 , sra.u, 0x00000000, 0x00000000, 0x80000000, 392); 
TEST_RR_OP( 99 , sra.u, 0x507a544c, 0x507a544c, 0x00000000, 396); 
TEST_RR_OP( 100 , sra.u, 0x58b6474e, 0x58b6474e, 0x00000000, 400); 
TEST_RR_OP( 101 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , sra.u, 0x00000000, 0x00000000, 0x00000000, 408); 
TEST_RR_OP( 103 , sra.u, 0x35719643, 0x35719643, 0x00000000, 412); 
TEST_RR_OP( 104 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 416); 
TEST_RR_OP( 105 , sra.u, 0x00000000, 0x00000000, 0x5f071ec3, 420); 
TEST_RR_OP( 106 , sra.u, 0xc32f756e, 0xc32f756e, 0x80000000, 424); 
TEST_RR_OP( 107 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 428); 
TEST_RR_OP( 108 , sra.u, 0x019333a3, 0x019333a3, 0x80000000, 432); 
TEST_RR_OP( 109 , sra.u, 0x711bec45, 0x711bec45, 0x00000000, 436); 
TEST_RR_OP( 110 , sra.u, 0x100000000, 0xffffffff, 0x32d95da8, 440); 
TEST_RR_OP( 111 , sra.u, 0x80000000, 0x80000000, 0x00000000, 444); 
TEST_RR_OP( 112 , sra.u, 0x100000000, 0xd8ee21ef, 0xffffffff, 448); 
TEST_RR_OP( 113 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , sra.u, 0x80000000, 0x80000000, 0x80000000, 456); 
TEST_RR_OP( 115 , sra.u, 0xffffffff, 0xafbd22b1, 0xffffffff, 460); 
TEST_RR_OP( 116 , sra.u, 0xfffff000, 0x80000000, 0x325d37b3, 464); 
TEST_RR_OP( 117 , sra.u, 0xb489e85f, 0xb489e85f, 0x00000000, 468); 
TEST_RR_OP( 118 , sra.u, 0xfffe3b06, 0x8ec1699c, 0x3cc1ff8e, 472); 
TEST_RR_OP( 119 , sra.u, 0x2b56b733, 0x2b56b733, 0x80000000, 476); 
TEST_RR_OP( 120 , sra.u, 0x80000000, 0x80000000, 0x80000000, 480); 
TEST_RR_OP( 121 , sra.u, 0x00000001, 0x5ddbfa76, 0xffffffff, 484); 
TEST_RR_OP( 122 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 488); 
TEST_RR_OP( 123 , sra.u, 0x100000000, 0xffffffff, 0x56f445db, 492); 
TEST_RR_OP( 124 , sra.u, 0xffff0000, 0x80000000, 0x7f7e744f, 496); 
TEST_RR_OP( 125 , sra.u, 0x8d4eabaa, 0x8d4eabaa, 0x80000000, 500); 
TEST_RR_OP( 126 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 504); 
TEST_RR_OP( 127 , sra.u, 0x00000000, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , sra.u, 0xbf04da4c, 0xbf04da4c, 0x00000000, 512); 
TEST_RR_OP( 129 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 516); 
TEST_RR_OP( 130 , sra.u, 0x9f7a685f, 0x9f7a685f, 0x80000000, 520); 
TEST_RR_OP( 131 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , sra.u, 0x80000000, 0x80000000, 0x80000000, 528); 
TEST_RR_OP( 133 , sra.u, 0x00000000, 0x00000000, 0x06818814, 532); 
TEST_RR_OP( 134 , sra.u, 0x00000000, 0x00000000, 0x00000000, 536); 
TEST_RR_OP( 135 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 544); 
TEST_RR_OP( 137 , sra.u, 0x00000000, 0x00000000, 0xfa0f331c, 548); 
TEST_RR_OP( 138 , sra.u, 0x00000000, 0x00000000, 0x2e9a77bb, 552); 
TEST_RR_OP( 139 , sra.u, 0x80000000, 0x80000000, 0x80000000, 556); 
TEST_RR_OP( 140 , sra.u, 0x00000000, 0x00000000, 0x80000000, 560); 
TEST_RR_OP( 141 , sra.u, 0xfffffe55, 0xcaa04bf6, 0xd01c9d35, 564); 
TEST_RR_OP( 142 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , sra.u, 0x100000000, 0xff3f30e0, 0xffffffff, 572); 
TEST_RR_OP( 144 , sra.u, 0x00000000, 0x00000000, 0xb0b1abdf, 576); 
TEST_RR_OP( 145 , sra.u, 0x00000000, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 588); 
TEST_RR_OP( 148 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 592); 
TEST_RR_OP( 149 , sra.u, 0x6f00a506, 0x6f00a506, 0x00000000, 596); 
TEST_RR_OP( 150 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 600); 
TEST_RR_OP( 151 , sra.u, 0xffffffff, 0x8bf8433c, 0xffffffff, 604); 
TEST_RR_OP( 152 , sra.u, 0xffffffd2, 0xa30cfb4f, 0x04b6ca79, 608); 
TEST_RR_OP( 153 , sra.u, 0x00000000, 0x00000000, 0x00000000, 612); 
TEST_RR_OP( 154 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 616); 
TEST_RR_OP( 155 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 624); 
TEST_RR_OP( 157 , sra.u, 0xfffffff0, 0xefa2bd68, 0xc1388ff8, 628); 
TEST_RR_OP( 158 , sra.u, 0x100000000, 0xffffffff, 0xd990154f, 632); 
TEST_RR_OP( 159 , sra.u, 0x00000000, 0x00000000, 0x00000000, 636); 
TEST_RR_OP( 160 , sra.u, 0xffffffff, 0xa85ba77f, 0xffffffff, 640); 
TEST_RR_OP( 161 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , sra.u, 0x957d8a77, 0x957d8a77, 0x00000000, 648); 
TEST_RR_OP( 163 , sra.u, 0xffffffd4, 0xa79d8a59, 0x31137c19, 652); 
TEST_RR_OP( 164 , sra.u, 0x80000000, 0x80000000, 0x80000000, 656); 
TEST_RR_OP( 165 , sra.u, 0x80000000, 0x80000000, 0x00000000, 660); 
TEST_RR_OP( 166 , sra.u, 0x0016af17, 0x2d5e2d0b, 0xd0f66ca9, 664); 
TEST_RR_OP( 167 , sra.u, 0x80000000, 0x80000000, 0x00000000, 668); 
TEST_RR_OP( 168 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , sra.u, 0x5a5d601d, 0x5a5d601d, 0x80000000, 676); 
TEST_RR_OP( 170 , sra.u, 0x80000000, 0x80000000, 0x00000000, 680); 
TEST_RR_OP( 171 , sra.u, 0x00000000, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 688); 
TEST_RR_OP( 173 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 692); 
TEST_RR_OP( 174 , sra.u, 0xf0000000, 0x80000000, 0x38729e43, 696); 
TEST_RR_OP( 175 , sra.u, 0xc184ae25, 0xc184ae25, 0x80000000, 700); 
TEST_RR_OP( 176 , sra.u, 0x72d7f4d3, 0x72d7f4d3, 0x80000000, 704); 
TEST_RR_OP( 177 , sra.u, 0x00000000, 0x00000000, 0x00000000, 708); 
TEST_RR_OP( 178 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 712); 
TEST_RR_OP( 179 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 716); 
TEST_RR_OP( 180 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 720); 
TEST_RR_OP( 181 , sra.u, 0x80000000, 0x80000000, 0x80000000, 724); 
TEST_RR_OP( 182 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 728); 
TEST_RR_OP( 183 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 732); 
TEST_RR_OP( 184 , sra.u, 0x80000000, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , sra.u, 0x24c2d62c, 0x24c2d62c, 0x80000000, 740); 
TEST_RR_OP( 186 , sra.u, 0x80000000, 0x80000000, 0x00000000, 744); 
TEST_RR_OP( 187 , sra.u, 0x100000000, 0xffffffff, 0xffffffff, 748); 
TEST_RR_OP( 188 , sra.u, 0xffffffff, 0xffffffff, 0x00000000, 752); 
TEST_RR_OP( 189 , sra.u, 0x00000000, 0x00000000, 0x00000000, 756); 
TEST_RR_OP( 190 , sra.u, 0x00000000, 0x00000000, 0x7c882bd2, 760); 
TEST_RR_OP( 191 , sra.u, 0x00000000, 0x00000000, 0x00000000, 764); 
TEST_RR_OP( 192 , sra.u, 0xa7e216fa, 0xa7e216fa, 0x00000000, 768); 
TEST_RR_OP( 193 , sra.u, 0xffffffff, 0xffffffff, 0x80000000, 772); 
TEST_RR_OP( 194 , sra.u, 0x100000000, 0xc8fceef7, 0xffffffff, 776); 
TEST_RR_OP( 195 , sra.u, 0xff000000, 0x80000000, 0x80883ba7, 780); 
TEST_RR_OP( 196 , sra.u, 0x00000000, 0x00000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , sra.u, 0x80000000, 0x80000000, 0x00000000, 788); 
TEST_RR_OP( 198 , sra.u, 0x0000003a, 0x7306ed3c, 0xe7a70799, 792); 
TEST_RR_OP( 199 , sra.u, 0x00000000, 0x00000000, 0x00000000, 796); 

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
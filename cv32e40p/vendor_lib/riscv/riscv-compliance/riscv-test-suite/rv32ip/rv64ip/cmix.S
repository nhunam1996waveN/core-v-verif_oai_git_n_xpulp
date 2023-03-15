# See LICENSE for license details.
#*****************************************************************************
# cmix.S
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

TEST_RRR_OP( 2 , cmix, 0x4f4e07bb, 0xffffffff, 0x4f4e07bb, 0xffffffff, 8); 
TEST_RRR_OP( 3 , cmix, 0x7fffffff, 0x80000000, 0x4d59f3d1, 0xffffffff, 12); 
TEST_RRR_OP( 4 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 16); 
TEST_RRR_OP( 5 , cmix, 0x80000000, 0x80000000, 0xcb6240f2, 0x80000000, 20); 
TEST_RRR_OP( 6 , cmix, 0x80000000, 0x00000000, 0x80000000, 0x80000000, 24); 
TEST_RRR_OP( 7 , cmix, 0x7fffffff, 0x80000000, 0x00000000, 0xffffffff, 28); 
TEST_RRR_OP( 8 , cmix, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 32); 
TEST_RRR_OP( 9 , cmix, 0x00000000, 0x508a2275, 0x00000000, 0x00000000, 36); 
TEST_RRR_OP( 10 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0xffffffff, 40); 
TEST_RRR_OP( 11 , cmix, 0xc0f4087d, 0x80000000, 0xffffffff, 0x40f4087d, 44); 
TEST_RRR_OP( 12 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0x00000000, 48); 
TEST_RRR_OP( 13 , cmix, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 52); 
TEST_RRR_OP( 14 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x05e2d704, 56); 
TEST_RRR_OP( 15 , cmix, 0xffffffff, 0x80000000, 0xf9bf85f8, 0xffffffff, 60); 
TEST_RRR_OP( 16 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x00000000, 64); 
TEST_RRR_OP( 17 , cmix, 0x80000000, 0x80000000, 0xffffffff, 0x00000000, 68); 
TEST_RRR_OP( 18 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0x80000000, 72); 
TEST_RRR_OP( 19 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 76); 
TEST_RRR_OP( 20 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 80); 
TEST_RRR_OP( 21 , cmix, 0x80000000, 0x196c0072, 0x80000000, 0x80000000, 84); 
TEST_RRR_OP( 22 , cmix, 0x94080010, 0x60f2b324, 0x00000000, 0xf4ba8334, 88); 
TEST_RRR_OP( 23 , cmix, 0x00000000, 0x00000000, 0x80000000, 0x00000000, 92); 
TEST_RRR_OP( 24 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 96); 
TEST_RRR_OP( 25 , cmix, 0x5d1ba9ed, 0x00000000, 0xffffffff, 0x5d1ba9ed, 100); 
TEST_RRR_OP( 26 , cmix, 0xffffffff, 0x00000000, 0xffffffff, 0xffffffff, 104); 
TEST_RRR_OP( 27 , cmix, 0xdff67ff7, 0xa8bb818a, 0xcbf22792, 0xffffffff, 108); 
TEST_RRR_OP( 28 , cmix, 0xd409ed12, 0xffffffff, 0xd409ed12, 0x00000000, 112); 
TEST_RRR_OP( 29 , cmix, 0x04188626, 0x80000000, 0x00000000, 0x04188626, 116); 
TEST_RRR_OP( 30 , cmix, 0xd18c2af8, 0xffffffff, 0xd18c2af8, 0x1cda527a, 120); 
TEST_RRR_OP( 31 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x7c9bd474, 124); 
TEST_RRR_OP( 32 , cmix, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 128); 
TEST_RRR_OP( 33 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 132); 
TEST_RRR_OP( 34 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0x00000000, 136); 
TEST_RRR_OP( 35 , cmix, 0x996772e5, 0x80000000, 0x80000000, 0x996772e5, 140); 
TEST_RRR_OP( 36 , cmix, 0xbf9eeebf, 0x979cee97, 0xffffffff, 0x3d8a2e2f, 144); 
TEST_RRR_OP( 37 , cmix, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 148); 
TEST_RRR_OP( 38 , cmix, 0xffffffff, 0x80000000, 0x80000000, 0xffffffff, 152); 
TEST_RRR_OP( 39 , cmix, 0x80000000, 0xc1ce008b, 0x80000000, 0x00000000, 156); 
TEST_RRR_OP( 40 , cmix, 0xeb924e50, 0x80000000, 0xffffffff, 0x6b924e50, 160); 
TEST_RRR_OP( 41 , cmix, 0xdfeb0aa0, 0x00000000, 0x972db2fa, 0xdfeb0aa0, 164); 
TEST_RRR_OP( 42 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 168); 
TEST_RRR_OP( 43 , cmix, 0x93446011, 0x1b667d13, 0x3755603d, 0x80000000, 172); 
TEST_RRR_OP( 44 , cmix, 0x2bcdbc2a, 0x80000000, 0x00000000, 0xabcdbc2a, 176); 
TEST_RRR_OP( 45 , cmix, 0x1280f5ef, 0x00000000, 0x00000000, 0x1280f5ef, 180); 
TEST_RRR_OP( 46 , cmix, 0x83508521, 0x7c2f0a9c, 0x80000000, 0xd75885b1, 184); 
TEST_RRR_OP( 47 , cmix, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 188); 
TEST_RRR_OP( 48 , cmix, 0xa52e6503, 0xffffffff, 0xa52e6503, 0x00000000, 192); 
TEST_RRR_OP( 49 , cmix, 0xd8bfcf94, 0xd8a34e04, 0xffffffff, 0x889dcf94, 196); 
TEST_RRR_OP( 50 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 200); 
TEST_RRR_OP( 51 , cmix, 0x0eb5b86f, 0x80000000, 0x00000000, 0x8eb5b86f, 204); 
TEST_RRR_OP( 52 , cmix, 0x80000000, 0x00000000, 0x51ef6e4d, 0x80000000, 208); 
TEST_RRR_OP( 53 , cmix, 0xffffffff, 0x00000000, 0xffffffff, 0xffffffff, 212); 
TEST_RRR_OP( 54 , cmix, 0x838ec8f9, 0x00000000, 0x00000000, 0x838ec8f9, 216); 
TEST_RRR_OP( 55 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x04416deb, 220); 
TEST_RRR_OP( 56 , cmix, 0x961c2121, 0x69635cc2, 0x00000000, 0xbe5e7161, 224); 
TEST_RRR_OP( 57 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 228); 
TEST_RRR_OP( 58 , cmix, 0x3a3af116, 0xffffffff, 0x3a3af116, 0x3cfc945e, 232); 
TEST_RRR_OP( 59 , cmix, 0x7fffffff, 0x80000000, 0x00000000, 0xffffffff, 236); 
TEST_RRR_OP( 60 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0xd4aa08e5, 240); 
TEST_RRR_OP( 61 , cmix, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 244); 
TEST_RRR_OP( 62 , cmix, 0xffffffff, 0x00000000, 0x00000000, 0xffffffff, 248); 
TEST_RRR_OP( 63 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 252); 
TEST_RRR_OP( 64 , cmix, 0xfffee2ba, 0xc7e680b0, 0xffffffff, 0x3f5ce23a, 256); 
TEST_RRR_OP( 65 , cmix, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 260); 
TEST_RRR_OP( 66 , cmix, 0x80000000, 0x00000000, 0x80000000, 0x80000000, 264); 
TEST_RRR_OP( 67 , cmix, 0x80000000, 0x37715a54, 0x00000000, 0x80000000, 268); 
TEST_RRR_OP( 68 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x8d28c5db, 272); 
TEST_RRR_OP( 69 , cmix, 0x7fffffff, 0x80000000, 0x1167ecf0, 0xffffffff, 276); 
TEST_RRR_OP( 70 , cmix, 0x00000000, 0x6189c11e, 0x80000000, 0x00000000, 280); 
TEST_RRR_OP( 71 , cmix, 0x80000000, 0x00000000, 0xcc6e72c5, 0x80000000, 284); 
TEST_RRR_OP( 72 , cmix, 0xffffffff, 0x00000000, 0xffffffff, 0xffffffff, 288); 
TEST_RRR_OP( 73 , cmix, 0x0ac45020, 0x4aecd32c, 0x9bd55c60, 0x00000000, 292); 
TEST_RRR_OP( 74 , cmix, 0xb82976ae, 0x290973ad, 0xbacf76ae, 0x982036ab, 296); 
TEST_RRR_OP( 75 , cmix, 0xedaee5ef, 0x72771b3a, 0x6da6c16f, 0xffffffff, 300); 
TEST_RRR_OP( 76 , cmix, 0xf4ee6e5d, 0xf4ee6e5d, 0xffffffff, 0x00000000, 304); 
TEST_RRR_OP( 77 , cmix, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 308); 
TEST_RRR_OP( 78 , cmix, 0x20372cc4, 0x00000000, 0x80000000, 0x20372cc4, 312); 
TEST_RRR_OP( 79 , cmix, 0x00000000, 0x00000000, 0xffffffff, 0x00000000, 316); 
TEST_RRR_OP( 80 , cmix, 0x00000000, 0x00000000, 0xffffffff, 0x00000000, 320); 
TEST_RRR_OP( 81 , cmix, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 324); 
TEST_RRR_OP( 82 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 328); 
TEST_RRR_OP( 83 , cmix, 0xffffffff, 0x8b3e9a7f, 0xffffffff, 0xffffffff, 332); 
TEST_RRR_OP( 84 , cmix, 0x80000000, 0x00000000, 0x00000000, 0x80000000, 336); 
TEST_RRR_OP( 85 , cmix, 0xffffffff, 0x00000000, 0xffffffff, 0xffffffff, 340); 
TEST_RRR_OP( 86 , cmix, 0xffffffff, 0x80000000, 0xffffffff, 0xffffffff, 344); 
TEST_RRR_OP( 87 , cmix, 0x00000000, 0x00000000, 0x071b2aa6, 0x00000000, 348); 
TEST_RRR_OP( 88 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000, 352); 
TEST_RRR_OP( 89 , cmix, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 356); 
TEST_RRR_OP( 90 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x00000000, 360); 
TEST_RRR_OP( 91 , cmix, 0x80000000, 0x7d803e4a, 0x80000000, 0x80000000, 364); 
TEST_RRR_OP( 92 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 368); 
TEST_RRR_OP( 93 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 372); 
TEST_RRR_OP( 94 , cmix, 0x80000000, 0x00000000, 0xdff8ebda, 0x80000000, 376); 
TEST_RRR_OP( 95 , cmix, 0xf4eb61a5, 0x80000000, 0xffffffff, 0xf4eb61a5, 380); 
TEST_RRR_OP( 96 , cmix, 0x80000000, 0x00000000, 0x00000000, 0x80000000, 384); 
TEST_RRR_OP( 97 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 388); 
TEST_RRR_OP( 98 , cmix, 0xffffffff, 0x00000000, 0xffffffff, 0xffffffff, 392); 
TEST_RRR_OP( 99 , cmix, 0x14564401, 0x14564401, 0xffffffff, 0x00000000, 396); 
TEST_RRR_OP( 100 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0x80000000, 400); 
TEST_RRR_OP( 101 , cmix, 0x00000000, 0x00000000, 0xffffffff, 0x00000000, 404); 
TEST_RRR_OP( 102 , cmix, 0xffffffff, 0x80000000, 0x80000000, 0xffffffff, 408); 
TEST_RRR_OP( 103 , cmix, 0x813d064f, 0xfec2f9b0, 0x80000000, 0xffffffff, 412); 
TEST_RRR_OP( 104 , cmix, 0x76a6f147, 0x80000000, 0x00000000, 0x76a6f147, 416); 
TEST_RRR_OP( 105 , cmix, 0x7da6b91a, 0x00000000, 0x9225c2a0, 0x7da6b91a, 420); 
TEST_RRR_OP( 106 , cmix, 0xa12b38d6, 0x00000000, 0x8c9fcdbd, 0xa12b38d6, 424); 
TEST_RRR_OP( 107 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 428); 
TEST_RRR_OP( 108 , cmix, 0x967d974c, 0x00000000, 0x80000000, 0x967d974c, 432); 
TEST_RRR_OP( 109 , cmix, 0x00000000, 0x2a09846a, 0x00000000, 0x00000000, 436); 
TEST_RRR_OP( 110 , cmix, 0xf3fa2d12, 0x0c05d2ed, 0x00000000, 0xffffffff, 440); 
TEST_RRR_OP( 111 , cmix, 0xffffffff, 0x00000000, 0x9ca30308, 0xffffffff, 444); 
TEST_RRR_OP( 112 , cmix, 0x138039a1, 0xdb907db3, 0x17c839ad, 0x80000000, 448); 
TEST_RRR_OP( 113 , cmix, 0x80000000, 0x00000000, 0x00000000, 0x80000000, 452); 
TEST_RRR_OP( 114 , cmix, 0x80000000, 0x00000000, 0xffffffff, 0x80000000, 456); 
TEST_RRR_OP( 115 , cmix, 0x80000000, 0x80000000, 0xc2026afa, 0x80000000, 460); 
TEST_RRR_OP( 116 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 464); 
TEST_RRR_OP( 117 , cmix, 0x58af13b8, 0xffffffff, 0x58af13b8, 0x00000000, 468); 
TEST_RRR_OP( 118 , cmix, 0x80000000, 0x80000000, 0xcdf1f416, 0x80000000, 472); 
TEST_RRR_OP( 119 , cmix, 0x80000000, 0x80000000, 0xffffffff, 0x80000000, 476); 
TEST_RRR_OP( 120 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x4affc849, 480); 
TEST_RRR_OP( 121 , cmix, 0x7fffffff, 0x80000000, 0x10f3ea0e, 0xffffffff, 484); 
TEST_RRR_OP( 122 , cmix, 0x80000000, 0x4dea0bc1, 0x80000000, 0x80000000, 488); 
TEST_RRR_OP( 123 , cmix, 0xffffffff, 0x80000000, 0xfd644c48, 0xffffffff, 492); 
TEST_RRR_OP( 124 , cmix, 0x80000000, 0x80000000, 0xffffffff, 0x00000000, 496); 
TEST_RRR_OP( 125 , cmix, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 500); 
TEST_RRR_OP( 126 , cmix, 0xffffffff, 0x00000000, 0xa102240b, 0xffffffff, 504); 
TEST_RRR_OP( 127 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0xe8f73371, 508); 
TEST_RRR_OP( 128 , cmix, 0x8bbe78dd, 0x80000000, 0x80000000, 0x8bbe78dd, 512); 
TEST_RRR_OP( 129 , cmix, 0x1284ca83, 0x80000000, 0x00000000, 0x9284ca83, 516); 
TEST_RRR_OP( 130 , cmix, 0xffffffff, 0x00000000, 0x5f607435, 0xffffffff, 520); 
TEST_RRR_OP( 131 , cmix, 0x80000000, 0x00000000, 0x7648aff6, 0x80000000, 524); 
TEST_RRR_OP( 132 , cmix, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 528); 
TEST_RRR_OP( 133 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 532); 
TEST_RRR_OP( 134 , cmix, 0x00000000, 0xfa913c02, 0x00000000, 0x00000000, 536); 
TEST_RRR_OP( 135 , cmix, 0x8f48014c, 0x1f7931ce, 0xef4c4f7c, 0x80000000, 540); 
TEST_RRR_OP( 136 , cmix, 0x80000000, 0x80000000, 0x8b809413, 0x00000000, 544); 
TEST_RRR_OP( 137 , cmix, 0x08050064, 0x26f8bd98, 0x00000000, 0x2e4d3574, 548); 
TEST_RRR_OP( 138 , cmix, 0x938bdb94, 0xffffffff, 0x938bdb94, 0xba0cae0d, 552); 
TEST_RRR_OP( 139 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x80000000, 556); 
TEST_RRR_OP( 140 , cmix, 0x10f10714, 0xffffffff, 0x10f10714, 0xff292f82, 560); 
TEST_RRR_OP( 141 , cmix, 0x00000000, 0xd2fe0b63, 0x00000000, 0x80000000, 564); 
TEST_RRR_OP( 142 , cmix, 0x7fffffff, 0x80000000, 0x00000000, 0xffffffff, 568); 
TEST_RRR_OP( 143 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 572); 
TEST_RRR_OP( 144 , cmix, 0xf69c8af4, 0x00000000, 0xc9a8afe3, 0xf69c8af4, 576); 
TEST_RRR_OP( 145 , cmix, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 580); 
TEST_RRR_OP( 146 , cmix, 0xd19347b9, 0xd19347b9, 0xffffffff, 0x80000000, 584); 
TEST_RRR_OP( 147 , cmix, 0xffffffff, 0x00000000, 0xffffffff, 0xffffffff, 588); 
TEST_RRR_OP( 148 , cmix, 0xaaf86d88, 0x00000000, 0x921d07b9, 0xaaf86d88, 592); 
TEST_RRR_OP( 149 , cmix, 0xffffffff, 0x80000000, 0xffffffff, 0xffffffff, 596); 
TEST_RRR_OP( 150 , cmix, 0x80000000, 0x00000000, 0x9bb12c06, 0x80000000, 600); 
TEST_RRR_OP( 151 , cmix, 0x57d6ea7b, 0xffffffff, 0x57d6ea7b, 0xffffffff, 604); 
TEST_RRR_OP( 152 , cmix, 0x51c221ed, 0x00000000, 0x00000000, 0x51c221ed, 608); 
TEST_RRR_OP( 153 , cmix, 0x00000000, 0x00000000, 0x47ecdf7d, 0x00000000, 612); 
TEST_RRR_OP( 154 , cmix, 0xdd39dca6, 0xffffffff, 0xdd39dca6, 0xffffffff, 616); 
TEST_RRR_OP( 155 , cmix, 0x00000000, 0x00000000, 0x20280d52, 0x00000000, 620); 
TEST_RRR_OP( 156 , cmix, 0xffffffff, 0x00000000, 0x00000000, 0xffffffff, 624); 
TEST_RRR_OP( 157 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x00000000, 628); 
TEST_RRR_OP( 158 , cmix, 0xffffffff, 0x80000000, 0xffffffff, 0xffffffff, 632); 
TEST_RRR_OP( 159 , cmix, 0x7fffffff, 0x80000000, 0x00000000, 0xffffffff, 636); 
TEST_RRR_OP( 160 , cmix, 0xdf236eaf, 0xd5dda4fb, 0xd5032dab, 0x9f3f6ae7, 640); 
TEST_RRR_OP( 161 , cmix, 0xc74729cd, 0x474729cd, 0xffffffff, 0x80000000, 644); 
TEST_RRR_OP( 162 , cmix, 0x80000000, 0x80000000, 0x80000000, 0x80000000, 648); 
TEST_RRR_OP( 163 , cmix, 0x6fbb72e8, 0x80000000, 0x2f6f5bd7, 0xefbb72e8, 652); 
TEST_RRR_OP( 164 , cmix, 0x31bfb154, 0x00000000, 0xffffffff, 0x31bfb154, 656); 
TEST_RRR_OP( 165 , cmix, 0x80000000, 0x00000000, 0x00000000, 0x80000000, 660); 
TEST_RRR_OP( 166 , cmix, 0x80000000, 0xad8f6e26, 0x80000000, 0x80000000, 664); 
TEST_RRR_OP( 167 , cmix, 0x80000000, 0x80000000, 0xffffffff, 0x00000000, 668); 
TEST_RRR_OP( 168 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0x80000000, 672); 
TEST_RRR_OP( 169 , cmix, 0x36e02b8c, 0x80000000, 0x00000000, 0xb6e02b8c, 676); 
TEST_RRR_OP( 170 , cmix, 0xffffffff, 0xe3b28d43, 0xffffffff, 0xffffffff, 680); 
TEST_RRR_OP( 171 , cmix, 0x5b90a18e, 0x00000000, 0x80000000, 0x5b90a18e, 684); 
TEST_RRR_OP( 172 , cmix, 0x8f3b97d0, 0x80000000, 0xc72c5f22, 0x0f3b97d0, 688); 
TEST_RRR_OP( 173 , cmix, 0x9728c483, 0x9728c483, 0xffffffff, 0x80000000, 692); 
TEST_RRR_OP( 174 , cmix, 0xfa363fd2, 0x00000000, 0x80000000, 0xfa363fd2, 696); 
TEST_RRR_OP( 175 , cmix, 0x80000000, 0xffffffff, 0x80000000, 0x4e145d00, 700); 
TEST_RRR_OP( 176 , cmix, 0x80450204, 0x125df2c4, 0x2de50706, 0x80000000, 704); 
TEST_RRR_OP( 177 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 708); 
TEST_RRR_OP( 178 , cmix, 0x00000000, 0xb08c8d71, 0x00000000, 0x00000000, 712); 
TEST_RRR_OP( 179 , cmix, 0x3aa55b40, 0x3aa55b40, 0xffffffff, 0x00000000, 716); 
TEST_RRR_OP( 180 , cmix, 0xfaab0ee9, 0x00000000, 0xffffffff, 0xfaab0ee9, 720); 
TEST_RRR_OP( 181 , cmix, 0x7cc12ef5, 0xffffffff, 0x7cc12ef5, 0x00000000, 724); 
TEST_RRR_OP( 182 , cmix, 0x803abc86, 0xffffffff, 0x803abc86, 0x0b246657, 728); 
TEST_RRR_OP( 183 , cmix, 0xa19e4c51, 0xa19e4c51, 0xffffffff, 0x80000000, 732); 
TEST_RRR_OP( 184 , cmix, 0xffffffff, 0x80000000, 0x80000000, 0xffffffff, 736); 
TEST_RRR_OP( 185 , cmix, 0xffffffff, 0x4a0accf4, 0xffffffff, 0xffffffff, 740); 
TEST_RRR_OP( 186 , cmix, 0x00000000, 0x00000000, 0x80000000, 0x00000000, 744); 
TEST_RRR_OP( 187 , cmix, 0x80000000, 0x80000000, 0xffffffff, 0x00000000, 748); 
TEST_RRR_OP( 188 , cmix, 0xcf5b99db, 0xcf5b99db, 0xffffffff, 0x80000000, 752); 
TEST_RRR_OP( 189 , cmix, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 756); 
TEST_RRR_OP( 190 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x00000000, 760); 
TEST_RRR_OP( 191 , cmix, 0x80000000, 0x00000000, 0x53c96695, 0x80000000, 764); 
TEST_RRR_OP( 192 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0xc1dd5fc2, 768); 
TEST_RRR_OP( 193 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x00000000, 772); 
TEST_RRR_OP( 194 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x4cc197c2, 776); 
TEST_RRR_OP( 195 , cmix, 0x80a2010e, 0x25b3655f, 0x82ea818e, 0x80000000, 780); 
TEST_RRR_OP( 196 , cmix, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 784); 
TEST_RRR_OP( 197 , cmix, 0xffffffff, 0x00000000, 0x80000000, 0xffffffff, 788); 
TEST_RRR_OP( 198 , cmix, 0x7fffffff, 0x80000000, 0x00000000, 0xffffffff, 792); 
TEST_RRR_OP( 199 , cmix, 0xffffffff, 0x00000000, 0xb56d32ed, 0xffffffff, 796); 

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
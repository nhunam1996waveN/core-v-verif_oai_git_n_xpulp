# See LICENSE for license details.
#*****************************************************************************
# stas16.S
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

TEST_RR_OP( 2 , stas16, 0x7fff3c76, 0x80003c75, 0xffffffff, 8); 
TEST_RR_OP( 3 , stas16, 0x7fff7fff, 0x8000ffff, 0xffff8000, 12); 
TEST_RR_OP( 4 , stas16, 0xfffedf2f, 0xffff63db, 0xffff84ac, 16); 
TEST_RR_OP( 5 , stas16, 0x000019e6, 0x0000ffff, 0x0000e619, 20); 
TEST_RR_OP( 6 , stas16, 0x7fff2679, 0x800088bb, 0xffff6242, 24); 
TEST_RR_OP( 7 , stas16, 0xaa7734ee, 0x1ba0bc7e, 0x8ed78790, 28); 
TEST_RR_OP( 8 , stas16, 0xffff0000, 0x00008000, 0xffff8000, 32); 
TEST_RR_OP( 9 , stas16, 0x52a20000, 0x52a30000, 0xffff0000, 36); 
TEST_RR_OP( 10 , stas16, 0x5f978001, 0xdf978000, 0x8000ffff, 40); 
TEST_RR_OP( 11 , stas16, 0xeee28000, 0xffff8000, 0xeee30000, 44); 
TEST_RR_OP( 12 , stas16, 0x80001854, 0x80009854, 0x00008000, 48); 
TEST_RR_OP( 13 , stas16, 0x66ef8000, 0x66ef0000, 0x00008000, 52); 
TEST_RR_OP( 14 , stas16, 0x80000000, 0x00008000, 0x80008000, 56); 
TEST_RR_OP( 15 , stas16, 0x80008000, 0x80000000, 0x00008000, 60); 
TEST_RR_OP( 16 , stas16, 0x8000bef7, 0x80000000, 0x00004109, 64); 
TEST_RR_OP( 17 , stas16, 0xffff8000, 0x00008000, 0xffff0000, 68); 
TEST_RR_OP( 18 , stas16, 0xef528952, 0x00000952, 0xef528000, 72); 
TEST_RR_OP( 19 , stas16, 0x52789381, 0x80008000, 0xd278ec7f, 76); 
TEST_RR_OP( 20 , stas16, 0xdf190001, 0xdf1a0000, 0xffffffff, 80); 
TEST_RR_OP( 21 , stas16, 0x0495ffff, 0x0495ffff, 0x00000000, 84); 
TEST_RR_OP( 22 , stas16, 0x3f4b61d4, 0x000061d4, 0x3f4b0000, 88); 
TEST_RR_OP( 23 , stas16, 0x4b7c0001, 0x63530000, 0xe829ffff, 92); 
TEST_RR_OP( 24 , stas16, 0x7fff0000, 0x80008000, 0xffff8000, 96); 
TEST_RR_OP( 25 , stas16, 0x000070df, 0x800070df, 0x80000000, 100); 
TEST_RR_OP( 26 , stas16, 0xffffefdc, 0xffff8000, 0x00009024, 104); 
TEST_RR_OP( 27 , stas16, 0x2c01e01f, 0x2c01e01f, 0x00000000, 108); 
TEST_RR_OP( 28 , stas16, 0x28a34c8c, 0x28a46f3d, 0xffff22b1, 112); 
TEST_RR_OP( 29 , stas16, 0x80000001, 0x00000000, 0x8000ffff, 116); 
TEST_RR_OP( 30 , stas16, 0x86bf0000, 0x00008000, 0x86bf8000, 120); 
TEST_RR_OP( 31 , stas16, 0x80000001, 0x00000000, 0x8000ffff, 124); 
TEST_RR_OP( 32 , stas16, 0x80000000, 0x00008000, 0x80008000, 128); 
TEST_RR_OP( 33 , stas16, 0xf3cc8001, 0xffff8000, 0xf3cdffff, 132); 
TEST_RR_OP( 34 , stas16, 0x78138000, 0xffff0000, 0x78148000, 136); 
TEST_RR_OP( 35 , stas16, 0x8000516e, 0x0000d16e, 0x80008000, 140); 
TEST_RR_OP( 36 , stas16, 0xffff25ee, 0xffff0000, 0x0000da12, 144); 
TEST_RR_OP( 37 , stas16, 0x6e952576, 0xdf6598b4, 0x8f30733e, 148); 
TEST_RR_OP( 38 , stas16, 0x0000d1ee, 0x000091cd, 0x0000bfdf, 152); 
TEST_RR_OP( 39 , stas16, 0x00003efc, 0x80000000, 0x8000c104, 156); 
TEST_RR_OP( 40 , stas16, 0xf0b00000, 0x8000ffff, 0x70b0ffff, 160); 
TEST_RR_OP( 41 , stas16, 0x8c390000, 0x3ad5ffff, 0x5164ffff, 164); 
TEST_RR_OP( 42 , stas16, 0x80008001, 0x00008000, 0x8000ffff, 168); 
TEST_RR_OP( 43 , stas16, 0xe8d65868, 0x80000000, 0x68d6a798, 172); 
TEST_RR_OP( 44 , stas16, 0x000081a3, 0x800001a3, 0x80008000, 176); 
TEST_RR_OP( 45 , stas16, 0x80007183, 0x0000ffff, 0x80008e7c, 180); 
TEST_RR_OP( 46 , stas16, 0x8000ffff, 0x0000ffff, 0x80000000, 184); 
TEST_RR_OP( 47 , stas16, 0x7a337fff, 0x8000ffff, 0xfa338000, 188); 
TEST_RR_OP( 48 , stas16, 0x7fff8001, 0x80008000, 0xffffffff, 192); 
TEST_RR_OP( 49 , stas16, 0x80007787, 0x8000f787, 0x00008000, 196); 
TEST_RR_OP( 50 , stas16, 0xfffec88b, 0xffff82e6, 0xffffba5b, 200); 
TEST_RR_OP( 51 , stas16, 0xb5ef79ac, 0x8000f9ac, 0x35ef8000, 204); 
TEST_RR_OP( 52 , stas16, 0x8000a2ef, 0x8000a2ee, 0x0000ffff, 208); 
TEST_RR_OP( 53 , stas16, 0xf5f60000, 0xf5f70000, 0xffff0000, 212); 
TEST_RR_OP( 54 , stas16, 0x0000578d, 0x00004c9a, 0x0000f50d, 216); 
TEST_RR_OP( 55 , stas16, 0x7fff0c44, 0x80008000, 0xffff73bc, 220); 
TEST_RR_OP( 56 , stas16, 0x80000000, 0x00008000, 0x80008000, 224); 
TEST_RR_OP( 57 , stas16, 0x16d9f889, 0x16da0000, 0xffff0777, 228); 
TEST_RR_OP( 58 , stas16, 0xffff8000, 0xffff0000, 0x00008000, 232); 
TEST_RR_OP( 59 , stas16, 0x00007fff, 0x8000ffff, 0x80008000, 236); 
TEST_RR_OP( 60 , stas16, 0x3124132c, 0x312459c7, 0x0000469b, 240); 
TEST_RR_OP( 61 , stas16, 0xffff9746, 0x0000ffff, 0xffff68b9, 244); 
TEST_RR_OP( 62 , stas16, 0xe5a8d0df, 0xe5a8d0df, 0x00000000, 248); 
TEST_RR_OP( 63 , stas16, 0x20d90000, 0x0000ffff, 0x20d9ffff, 252); 
TEST_RR_OP( 64 , stas16, 0x00000000, 0x00008000, 0x00008000, 256); 
TEST_RR_OP( 65 , stas16, 0x80008001, 0x00008000, 0x8000ffff, 260); 
TEST_RR_OP( 66 , stas16, 0x7fff8000, 0xffff0000, 0x80008000, 264); 
TEST_RR_OP( 67 , stas16, 0xe7a50000, 0x8000ffff, 0x67a5ffff, 268); 
TEST_RR_OP( 68 , stas16, 0xffff2983, 0xffffffff, 0x0000d67c, 272); 
TEST_RR_OP( 69 , stas16, 0x6ed1ffff, 0xeed1ffff, 0x80000000, 276); 
TEST_RR_OP( 70 , stas16, 0xf6768000, 0x76768000, 0x80000000, 280); 
TEST_RR_OP( 71 , stas16, 0xffff6f59, 0xffff0000, 0x000090a7, 284); 
TEST_RR_OP( 72 , stas16, 0xf18b8000, 0x718b0000, 0x80008000, 288); 
TEST_RR_OP( 73 , stas16, 0xffff9324, 0x00000000, 0xffff6cdc, 292); 
TEST_RR_OP( 74 , stas16, 0x00004ff9, 0x80004ff8, 0x8000ffff, 296); 
TEST_RR_OP( 75 , stas16, 0x7fff0000, 0x80008000, 0xffff8000, 300); 
TEST_RR_OP( 76 , stas16, 0x80000000, 0x00008000, 0x80008000, 304); 
TEST_RR_OP( 77 , stas16, 0x80000000, 0x00008000, 0x80008000, 308); 
TEST_RR_OP( 78 , stas16, 0xf6b18000, 0xf6b28000, 0xffff0000, 312); 
TEST_RR_OP( 79 , stas16, 0x00000dd2, 0x000031e7, 0x00002415, 316); 
TEST_RR_OP( 80 , stas16, 0x80008000, 0x00008000, 0x80000000, 320); 
TEST_RR_OP( 81 , stas16, 0x0b4e8001, 0x8b4e8000, 0x8000ffff, 324); 
TEST_RR_OP( 82 , stas16, 0xfffe4cdf, 0xffff8000, 0xffff3321, 328); 
TEST_RR_OP( 83 , stas16, 0xbbfe7fff, 0xbbfeffff, 0x00008000, 332); 
TEST_RR_OP( 84 , stas16, 0xffff0000, 0x00008000, 0xffff8000, 336); 
TEST_RR_OP( 85 , stas16, 0x36f18000, 0x00000000, 0x36f18000, 340); 
TEST_RR_OP( 86 , stas16, 0x172a0000, 0xbe060000, 0x59240000, 344); 
TEST_RR_OP( 87 , stas16, 0xffffbf1a, 0xffffbf19, 0x0000ffff, 348); 
TEST_RR_OP( 88 , stas16, 0x6ad68000, 0xead68000, 0x80000000, 352); 
TEST_RR_OP( 89 , stas16, 0x20520001, 0x80000000, 0xa052ffff, 356); 
TEST_RR_OP( 90 , stas16, 0x00008001, 0x00008000, 0x0000ffff, 360); 
TEST_RR_OP( 91 , stas16, 0x94071ecd, 0xffffffff, 0x9408e132, 364); 
TEST_RR_OP( 92 , stas16, 0x11b88000, 0x11b98000, 0xffff0000, 368); 
TEST_RR_OP( 93 , stas16, 0x671e0000, 0xffff8000, 0x671f8000, 372); 
TEST_RR_OP( 94 , stas16, 0x3a037fff, 0xba03ffff, 0x80008000, 376); 
TEST_RR_OP( 95 , stas16, 0xffffffff, 0xffffffff, 0x00000000, 380); 
TEST_RR_OP( 96 , stas16, 0x19d844dc, 0x19d944dc, 0xffff0000, 384); 
TEST_RR_OP( 97 , stas16, 0x80008001, 0x80008000, 0x0000ffff, 388); 
TEST_RR_OP( 98 , stas16, 0xffff8000, 0x00000000, 0xffff8000, 392); 
TEST_RR_OP( 99 , stas16, 0x80007fff, 0x0000ffff, 0x80008000, 396); 
TEST_RR_OP( 100 , stas16, 0x7fff3a6b, 0x80003a6b, 0xffff0000, 400); 
TEST_RR_OP( 101 , stas16, 0x8000ff2a, 0x8000ffff, 0x000000d5, 404); 
TEST_RR_OP( 102 , stas16, 0x00000000, 0x8000ffff, 0x8000ffff, 408); 
TEST_RR_OP( 103 , stas16, 0xffff113b, 0x00005c85, 0xffff4b4a, 412); 
TEST_RR_OP( 104 , stas16, 0x4a5c8000, 0x9a240000, 0xb0388000, 416); 
TEST_RR_OP( 105 , stas16, 0x33dd0000, 0x00000000, 0x33dd0000, 420); 
TEST_RR_OP( 106 , stas16, 0xffffffff, 0xffffffff, 0x00000000, 424); 
TEST_RR_OP( 107 , stas16, 0x80008000, 0x00008000, 0x80000000, 428); 
TEST_RR_OP( 108 , stas16, 0x7fff0000, 0x80008000, 0xffff8000, 432); 
TEST_RR_OP( 109 , stas16, 0xcd4effff, 0x0000ffff, 0xcd4e0000, 436); 
TEST_RR_OP( 110 , stas16, 0x50b2ab58, 0x37488000, 0x196ad4a8, 440); 
TEST_RR_OP( 111 , stas16, 0xf2578000, 0xffff8000, 0xf2580000, 444); 
TEST_RR_OP( 112 , stas16, 0xe03a9dfd, 0x603affff, 0x80006202, 448); 
TEST_RR_OP( 113 , stas16, 0x9049ffff, 0x0000ffff, 0x90490000, 452); 
TEST_RR_OP( 114 , stas16, 0x350d8001, 0xffff8000, 0x350effff, 456); 
TEST_RR_OP( 115 , stas16, 0x7fff0001, 0x80000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , stas16, 0x800058ba, 0x80008000, 0x00002746, 464); 
TEST_RR_OP( 117 , stas16, 0x62b4e39a, 0x80005878, 0xe2b474de, 468); 
TEST_RR_OP( 118 , stas16, 0xc6810000, 0x4681ffff, 0x8000ffff, 472); 
TEST_RR_OP( 119 , stas16, 0x167e0000, 0x167e8000, 0x00008000, 476); 
TEST_RR_OP( 120 , stas16, 0x75120000, 0x7512ffff, 0x0000ffff, 480); 
TEST_RR_OP( 121 , stas16, 0xfffe0000, 0xffffffff, 0xffffffff, 484); 
TEST_RR_OP( 122 , stas16, 0x00000000, 0x0000ffff, 0x0000ffff, 488); 
TEST_RR_OP( 123 , stas16, 0x7fff1522, 0x80008000, 0xffff6ade, 492); 
TEST_RR_OP( 124 , stas16, 0x2d330001, 0x80000000, 0xad33ffff, 496); 
TEST_RR_OP( 125 , stas16, 0xc08d8001, 0xc08e8000, 0xffffffff, 500); 
TEST_RR_OP( 126 , stas16, 0x3d1d8000, 0x3cc38000, 0x005a0000, 504); 
TEST_RR_OP( 127 , stas16, 0x7fff240e, 0xffffd45c, 0x8000b04e, 508); 
TEST_RR_OP( 128 , stas16, 0xd0990000, 0x00000000, 0xd0990000, 512); 
TEST_RR_OP( 129 , stas16, 0xfffeb533, 0xffff3533, 0xffff8000, 516); 
TEST_RR_OP( 130 , stas16, 0xffff8909, 0xffff8000, 0x0000f6f7, 520); 
TEST_RR_OP( 131 , stas16, 0x00000000, 0x8000ffff, 0x8000ffff, 524); 
TEST_RR_OP( 132 , stas16, 0x749b4a2d, 0x749bca2d, 0x00008000, 528); 
TEST_RR_OP( 133 , stas16, 0x7fff8001, 0x80008000, 0xffffffff, 532); 
TEST_RR_OP( 134 , stas16, 0x7dee8000, 0x7def8000, 0xffff0000, 536); 
TEST_RR_OP( 135 , stas16, 0x7fff766d, 0xffff766c, 0x8000ffff, 540); 
TEST_RR_OP( 136 , stas16, 0x4ee329bf, 0xffffffff, 0x4ee4d640, 544); 
TEST_RR_OP( 137 , stas16, 0x12528000, 0x80000000, 0x92528000, 548); 
TEST_RR_OP( 138 , stas16, 0x8000453b, 0x80000000, 0x0000bac5, 552); 
TEST_RR_OP( 139 , stas16, 0xc1cb60b8, 0x22000000, 0x9fcb9f48, 556); 
TEST_RR_OP( 140 , stas16, 0x7a608001, 0x00008000, 0x7a60ffff, 560); 
TEST_RR_OP( 141 , stas16, 0xaec38000, 0x2ec38000, 0x80000000, 564); 
TEST_RR_OP( 142 , stas16, 0x7cb3cd35, 0x8000a99c, 0xfcb3dc67, 568); 
TEST_RR_OP( 143 , stas16, 0x62dc0001, 0x00000000, 0x62dcffff, 572); 
TEST_RR_OP( 144 , stas16, 0xffff5cd9, 0xffff5cd9, 0x00000000, 576); 
TEST_RR_OP( 145 , stas16, 0xffff8001, 0x00008000, 0xffffffff, 580); 
TEST_RR_OP( 146 , stas16, 0xfffe0000, 0xffff8000, 0xffff8000, 584); 
TEST_RR_OP( 147 , stas16, 0x00008000, 0x80008000, 0x80000000, 588); 
TEST_RR_OP( 148 , stas16, 0xffff0001, 0xffff0000, 0x0000ffff, 592); 
TEST_RR_OP( 149 , stas16, 0xbc870000, 0x80000000, 0x3c870000, 596); 
TEST_RR_OP( 150 , stas16, 0x7fff8000, 0xffff0000, 0x80008000, 600); 
TEST_RR_OP( 151 , stas16, 0x00000000, 0x00008000, 0x00008000, 604); 
TEST_RR_OP( 152 , stas16, 0x80008000, 0x00008000, 0x80000000, 608); 
TEST_RR_OP( 153 , stas16, 0xab3ac6fe, 0x8000ffff, 0x2b3a3901, 612); 
TEST_RR_OP( 154 , stas16, 0xffff5e8d, 0x00005e8d, 0xffff0000, 616); 
TEST_RR_OP( 155 , stas16, 0xffff432f, 0x0000ffff, 0xffffbcd0, 620); 
TEST_RR_OP( 156 , stas16, 0x00009abe, 0x00009abe, 0x00000000, 624); 
TEST_RR_OP( 157 , stas16, 0x0000f058, 0x8000ffff, 0x80000fa7, 628); 
TEST_RR_OP( 158 , stas16, 0x2e058000, 0xffff8000, 0x2e060000, 632); 
TEST_RR_OP( 159 , stas16, 0xb0a90000, 0xfdacffff, 0xb2fdffff, 636); 
TEST_RR_OP( 160 , stas16, 0x80008001, 0x00008000, 0x8000ffff, 640); 
TEST_RR_OP( 161 , stas16, 0xa5348001, 0x80008000, 0x2534ffff, 644); 
TEST_RR_OP( 162 , stas16, 0x156fffff, 0x8000ffff, 0x956f0000, 648); 
TEST_RR_OP( 163 , stas16, 0xffff8000, 0xffff8000, 0x00000000, 652); 
TEST_RR_OP( 164 , stas16, 0x9f2b4a76, 0x9f2c8000, 0xffff358a, 656); 
TEST_RR_OP( 165 , stas16, 0x80008000, 0x80000000, 0x00008000, 660); 
TEST_RR_OP( 166 , stas16, 0x81b2c93a, 0x42d3c939, 0x3edfffff, 664); 
TEST_RR_OP( 167 , stas16, 0x7fff4e8e, 0xffffc8a9, 0x80007a1b, 668); 
TEST_RR_OP( 168 , stas16, 0xffff8000, 0xffff0000, 0x00008000, 672); 
TEST_RR_OP( 169 , stas16, 0xf6c1180e, 0xffff180d, 0xf6c2ffff, 676); 
TEST_RR_OP( 170 , stas16, 0x6de5d437, 0xffffffff, 0x6de62bc8, 680); 
TEST_RR_OP( 171 , stas16, 0xae288001, 0x00008000, 0xae28ffff, 684); 
TEST_RR_OP( 172 , stas16, 0x614a8000, 0x614b0000, 0xffff8000, 688); 
TEST_RR_OP( 173 , stas16, 0xa3f70000, 0xa3f8ffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , stas16, 0x37c87301, 0xb7c8ffff, 0x80008cfe, 696); 
TEST_RR_OP( 175 , stas16, 0x80009dbf, 0x00001dbf, 0x80008000, 700); 
TEST_RR_OP( 176 , stas16, 0x7fff2adc, 0xffff90c4, 0x800065e8, 704); 
TEST_RR_OP( 177 , stas16, 0xffff8000, 0x00000000, 0xffff8000, 708); 
TEST_RR_OP( 178 , stas16, 0x80000001, 0x80000000, 0x0000ffff, 712); 
TEST_RR_OP( 179 , stas16, 0x5c6f7fff, 0xdc6fffff, 0x80008000, 716); 
TEST_RR_OP( 180 , stas16, 0xc0fc70ca, 0x00008000, 0xc0fc0f36, 720); 
TEST_RR_OP( 181 , stas16, 0x756d7fff, 0xffffffff, 0x756e8000, 724); 
TEST_RR_OP( 182 , stas16, 0x4e46ffff, 0x4e46ffff, 0x00000000, 728); 
TEST_RR_OP( 183 , stas16, 0x0000d3fb, 0x000073dd, 0x00009fe2, 732); 
TEST_RR_OP( 184 , stas16, 0x16560001, 0x16570000, 0xffffffff, 736); 
TEST_RR_OP( 185 , stas16, 0xffffad33, 0xffffad32, 0x0000ffff, 740); 
TEST_RR_OP( 186 , stas16, 0x87168000, 0x80008000, 0x07160000, 744); 
TEST_RR_OP( 187 , stas16, 0x8000a4fb, 0x80008000, 0x0000db05, 748); 
TEST_RR_OP( 188 , stas16, 0x00000001, 0x80000000, 0x8000ffff, 752); 
TEST_RR_OP( 189 , stas16, 0x3b20107f, 0xbb20107e, 0x8000ffff, 756); 
TEST_RR_OP( 190 , stas16, 0x7fff4ca7, 0x8000cca7, 0xffff8000, 760); 
TEST_RR_OP( 191 , stas16, 0x1cdc2576, 0x00000000, 0x1cdcda8a, 764); 
TEST_RR_OP( 192 , stas16, 0x7fff2599, 0x8000968b, 0xffff70f2, 768); 
TEST_RR_OP( 193 , stas16, 0xcc6bffff, 0xffffffff, 0xcc6c0000, 772); 
TEST_RR_OP( 194 , stas16, 0xc33d0000, 0xc33e8000, 0xffff8000, 776); 
TEST_RR_OP( 195 , stas16, 0x6164a818, 0xffffa818, 0x61650000, 780); 
TEST_RR_OP( 196 , stas16, 0x7fff0000, 0x80000000, 0xffff0000, 784); 
TEST_RR_OP( 197 , stas16, 0xffff3dee, 0x00008000, 0xffff4212, 788); 
TEST_RR_OP( 198 , stas16, 0x30030be4, 0xb0037899, 0x80006cb5, 792); 
TEST_RR_OP( 199 , stas16, 0x8000c2d0, 0x8000ffff, 0x00003d2f, 796); 

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
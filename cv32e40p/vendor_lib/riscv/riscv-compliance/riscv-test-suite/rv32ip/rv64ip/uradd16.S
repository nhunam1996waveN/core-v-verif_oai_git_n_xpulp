# See LICENSE for license details.
#*****************************************************************************
# uradd16.S
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

TEST_RR_OP( 2 , uradd16, 0x7d258000, 0x15168000, 0xe5348000, 8); 
TEST_RR_OP( 3 , uradd16, 0x40007fff, 0x80000000, 0x0000ffff, 12); 
TEST_RR_OP( 4 , uradd16, 0x7bfe98df, 0x8000ffff, 0x77fc31bf, 16); 
TEST_RR_OP( 5 , uradd16, 0xbd7eaea0, 0xffff5d42, 0x7afeffff, 20); 
TEST_RR_OP( 6 , uradd16, 0x4000bfff, 0x80008000, 0x0000ffff, 24); 
TEST_RR_OP( 7 , uradd16, 0x903a49e1, 0x800066f8, 0xa0752cca, 28); 
TEST_RR_OP( 8 , uradd16, 0x72949691, 0x65292d23, 0x8000ffff, 32); 
TEST_RR_OP( 9 , uradd16, 0x40003fcc, 0x80007f99, 0x00000000, 36); 
TEST_RR_OP( 10 , uradd16, 0x8000bc91, 0x8000f923, 0x80008000, 40); 
TEST_RR_OP( 11 , uradd16, 0x7fffacc6, 0x0000980a, 0xffffc182, 44); 
TEST_RR_OP( 12 , uradd16, 0x4000beab, 0x00007d57, 0x8000ffff, 48); 
TEST_RR_OP( 13 , uradd16, 0x08c2bfff, 0x1185ffff, 0x00008000, 52); 
TEST_RR_OP( 14 , uradd16, 0x7fff4000, 0x00008000, 0xffff0000, 56); 
TEST_RR_OP( 15 , uradd16, 0x22be7fff, 0x0000ffff, 0x457c0000, 60); 
TEST_RR_OP( 16 , uradd16, 0x80001336, 0x8000266d, 0x80000000, 64); 
TEST_RR_OP( 17 , uradd16, 0x7fff0000, 0xffff0000, 0x00000000, 68); 
TEST_RR_OP( 18 , uradd16, 0xbfffffff, 0xffffffff, 0x8000ffff, 72); 
TEST_RR_OP( 19 , uradd16, 0x0537905c, 0x000020b9, 0x0a6effff, 76); 
TEST_RR_OP( 20 , uradd16, 0x70499ff6, 0x60923fee, 0x8000ffff, 80); 
TEST_RR_OP( 21 , uradd16, 0x38237fff, 0x7046ffff, 0x00000000, 84); 
TEST_RR_OP( 22 , uradd16, 0xffff5ec6, 0xffffbd8d, 0xffff0000, 88); 
TEST_RR_OP( 23 , uradd16, 0xbfff33ac, 0xffff6759, 0x80000000, 92); 
TEST_RR_OP( 24 , uradd16, 0x80003bd2, 0x800077a5, 0x80000000, 96); 
TEST_RR_OP( 25 , uradd16, 0xffff6160, 0xffff42c0, 0xffff8000, 100); 
TEST_RR_OP( 26 , uradd16, 0xba30505f, 0x74628000, 0xffff20be, 104); 
TEST_RR_OP( 27 , uradd16, 0xbbb24000, 0xdd5d8000, 0x9a070000, 108); 
TEST_RR_OP( 28 , uradd16, 0xbfff8e46, 0xffff869a, 0x800095f3, 112); 
TEST_RR_OP( 29 , uradd16, 0x40009ae1, 0x0000b5c3, 0x80008000, 116); 
TEST_RR_OP( 30 , uradd16, 0xb8bd7fff, 0xffffffff, 0x717c0000, 120); 
TEST_RR_OP( 31 , uradd16, 0x4000ffff, 0x0000ffff, 0x8000ffff, 124); 
TEST_RR_OP( 32 , uradd16, 0x7fff9584, 0xffffab09, 0x00008000, 128); 
TEST_RR_OP( 33 , uradd16, 0xfd846528, 0xffffca50, 0xfb0a0000, 132); 
TEST_RR_OP( 34 , uradd16, 0x7fff45c5, 0x00006462, 0xffff2729, 136); 
TEST_RR_OP( 35 , uradd16, 0x9708bfff, 0x2e12ffff, 0xffff8000, 140); 
TEST_RR_OP( 36 , uradd16, 0xffff7fff, 0xffffffff, 0xffff0000, 144); 
TEST_RR_OP( 37 , uradd16, 0x4000bfff, 0x0000ffff, 0x80008000, 148); 
TEST_RR_OP( 38 , uradd16, 0x7fff7fff, 0x0000ffff, 0xffff0000, 152); 
TEST_RR_OP( 39 , uradd16, 0x7fffbfff, 0xffffffff, 0x00008000, 156); 
TEST_RR_OP( 40 , uradd16, 0x8000e310, 0x8000c622, 0x8000ffff, 160); 
TEST_RR_OP( 41 , uradd16, 0x726bbfff, 0xe4d6ffff, 0x00008000, 164); 
TEST_RR_OP( 42 , uradd16, 0xbfff0000, 0xffff0000, 0x80000000, 168); 
TEST_RR_OP( 43 , uradd16, 0xb3f7480f, 0xffff901f, 0x67f00000, 172); 
TEST_RR_OP( 44 , uradd16, 0xc249a489, 0x84948000, 0xffffc913, 176); 
TEST_RR_OP( 45 , uradd16, 0x95704000, 0x75fb0000, 0xb4e58000, 180); 
TEST_RR_OP( 46 , uradd16, 0x7fff7fff, 0x00000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , uradd16, 0x97757fff, 0x2eebffff, 0xffff0000, 188); 
TEST_RR_OP( 48 , uradd16, 0x35c5428f, 0x6b8b0000, 0x0000851e, 192); 
TEST_RR_OP( 49 , uradd16, 0xce2d92d7, 0xffffffff, 0x9c5b25af, 196); 
TEST_RR_OP( 50 , uradd16, 0x33f5c086, 0x0000ffff, 0x67ea810e, 200); 
TEST_RR_OP( 51 , uradd16, 0x7fff7fff, 0x0000ffff, 0xffff0000, 204); 
TEST_RR_OP( 52 , uradd16, 0x80005a73, 0x8000b4e7, 0x80000000, 208); 
TEST_RR_OP( 53 , uradd16, 0xffff8e90, 0xffff8000, 0xffff9d20, 212); 
TEST_RR_OP( 54 , uradd16, 0xbfff0000, 0x80000000, 0xffff0000, 216); 
TEST_RR_OP( 55 , uradd16, 0xbfff8315, 0xffffffff, 0x8000062c, 220); 
TEST_RR_OP( 56 , uradd16, 0x7fff86d3, 0x00008da7, 0xffff8000, 224); 
TEST_RR_OP( 57 , uradd16, 0x40007fff, 0x8000ffff, 0x00000000, 228); 
TEST_RR_OP( 58 , uradd16, 0x7fff7fff, 0x0000ffff, 0xffff0000, 232); 
TEST_RR_OP( 59 , uradd16, 0x00005cee, 0x00004690, 0x0000734c, 236); 
TEST_RR_OP( 60 , uradd16, 0x7fff8000, 0xffff8000, 0x00008000, 240); 
TEST_RR_OP( 61 , uradd16, 0xbdfd5766, 0x80002ecd, 0xfbfa8000, 244); 
TEST_RR_OP( 62 , uradd16, 0x40005a71, 0x00008000, 0x800034e2, 248); 
TEST_RR_OP( 63 , uradd16, 0x3b0a7fff, 0x63450000, 0x12cfffff, 252); 
TEST_RR_OP( 64 , uradd16, 0xbfffc795, 0x800096eb, 0xfffff840, 256); 
TEST_RR_OP( 65 , uradd16, 0x40008000, 0x80008000, 0x00008000, 260); 
TEST_RR_OP( 66 , uradd16, 0x2ca8563b, 0x00008000, 0x59512c77, 264); 
TEST_RR_OP( 67 , uradd16, 0x7fff7fff, 0x0000ffff, 0xffff0000, 268); 
TEST_RR_OP( 68 , uradd16, 0x7a308000, 0xf4608000, 0x00008000, 272); 
TEST_RR_OP( 69 , uradd16, 0xbfff6550, 0xffff0000, 0x8000caa0, 276); 
TEST_RR_OP( 70 , uradd16, 0x58e0dbb8, 0x8000ffff, 0x31c1b771, 280); 
TEST_RR_OP( 71 , uradd16, 0xffff8d4a, 0xffff9a94, 0xffff8000, 284); 
TEST_RR_OP( 72 , uradd16, 0x7fff4000, 0x00008000, 0xffff0000, 288); 
TEST_RR_OP( 73 , uradd16, 0xffff0000, 0xffff0000, 0xffff0000, 292); 
TEST_RR_OP( 74 , uradd16, 0x7b37ffff, 0x8000ffff, 0x766fffff, 296); 
TEST_RR_OP( 75 , uradd16, 0xa5177f52, 0xffff7ea4, 0x4a308000, 300); 
TEST_RR_OP( 76 , uradd16, 0x4000b3e0, 0x80008000, 0x0000e7c1, 304); 
TEST_RR_OP( 77 , uradd16, 0xbfff7fff, 0xffff0000, 0x8000ffff, 308); 
TEST_RR_OP( 78 , uradd16, 0x7fff8c37, 0xffff8000, 0x0000986f, 312); 
TEST_RR_OP( 79 , uradd16, 0x40004000, 0x00008000, 0x80000000, 316); 
TEST_RR_OP( 80 , uradd16, 0xffff8000, 0xffff8000, 0xffff8000, 320); 
TEST_RR_OP( 81 , uradd16, 0x59eabfff, 0x8000ffff, 0x33d48000, 324); 
TEST_RR_OP( 82 , uradd16, 0xbfffbfff, 0xffffffff, 0x80008000, 328); 
TEST_RR_OP( 83 , uradd16, 0x4d6149c1, 0x80001383, 0x1ac38000, 332); 
TEST_RR_OP( 84 , uradd16, 0x00006073, 0x0000c0e6, 0x00000000, 336); 
TEST_RR_OP( 85 , uradd16, 0x40008000, 0x80008000, 0x00008000, 340); 
TEST_RR_OP( 86 , uradd16, 0x8000bfff, 0x8000ffff, 0x80008000, 344); 
TEST_RR_OP( 87 , uradd16, 0xffff4000, 0xffff8000, 0xffff0000, 348); 
TEST_RR_OP( 88 , uradd16, 0x67ae0000, 0x95050000, 0x3a580000, 352); 
TEST_RR_OP( 89 , uradd16, 0x40004000, 0x00000000, 0x80008000, 356); 
TEST_RR_OP( 90 , uradd16, 0x40004000, 0x00008000, 0x80000000, 360); 
TEST_RR_OP( 91 , uradd16, 0x7fff59dc, 0x00005ccb, 0xffff56ee, 364); 
TEST_RR_OP( 92 , uradd16, 0xc5537fff, 0x9b7e0000, 0xef29ffff, 368); 
TEST_RR_OP( 93 , uradd16, 0x7fff0000, 0xffff0000, 0x00000000, 372); 
TEST_RR_OP( 94 , uradd16, 0x7fff638b, 0xffff8000, 0x00004716, 376); 
TEST_RR_OP( 95 , uradd16, 0xea1f40de, 0xd4408000, 0xffff01bc, 380); 
TEST_RR_OP( 96 , uradd16, 0x8ca77fff, 0x994e0000, 0x8000ffff, 384); 
TEST_RR_OP( 97 , uradd16, 0x00e2bfff, 0x0000ffff, 0x01c58000, 388); 
TEST_RR_OP( 98 , uradd16, 0x7fffffff, 0x0000ffff, 0xffffffff, 392); 
TEST_RR_OP( 99 , uradd16, 0x4614dc33, 0x0000b868, 0x8c29ffff, 396); 
TEST_RR_OP( 100 , uradd16, 0x5e7a0000, 0x3cf40000, 0x80000000, 400); 
TEST_RR_OP( 101 , uradd16, 0xffff4000, 0xffff8000, 0xffff0000, 404); 
TEST_RR_OP( 102 , uradd16, 0x998798a1, 0xb30eb143, 0x80008000, 408); 
TEST_RR_OP( 103 , uradd16, 0xad168000, 0x80008000, 0xda2c8000, 412); 
TEST_RR_OP( 104 , uradd16, 0x7fff8000, 0x00008000, 0xffff8000, 416); 
TEST_RR_OP( 105 , uradd16, 0x00003818, 0x00000000, 0x00007030, 420); 
TEST_RR_OP( 106 , uradd16, 0xcdf9dc65, 0xffffffff, 0x9bf4b8cb, 424); 
TEST_RR_OP( 107 , uradd16, 0x4000bfff, 0x0000ffff, 0x80008000, 428); 
TEST_RR_OP( 108 , uradd16, 0x26ac0000, 0x4d590000, 0x00000000, 432); 
TEST_RR_OP( 109 , uradd16, 0x4000bfff, 0x80008000, 0x0000ffff, 436); 
TEST_RR_OP( 110 , uradd16, 0x71887fff, 0x25d70000, 0xbd39ffff, 440); 
TEST_RR_OP( 111 , uradd16, 0x400040aa, 0x00000000, 0x80008155, 444); 
TEST_RR_OP( 112 , uradd16, 0xbfffbfff, 0x80008000, 0xffffffff, 448); 
TEST_RR_OP( 113 , uradd16, 0x40004000, 0x00000000, 0x80008000, 452); 
TEST_RR_OP( 114 , uradd16, 0xffff236d, 0xffff0000, 0xffff46da, 456); 
TEST_RR_OP( 115 , uradd16, 0x7fff4000, 0xffff0000, 0x00008000, 460); 
TEST_RR_OP( 116 , uradd16, 0x40005e9c, 0x80003d39, 0x00008000, 464); 
TEST_RR_OP( 117 , uradd16, 0xceeb4000, 0xef2e0000, 0xaea88000, 468); 
TEST_RR_OP( 118 , uradd16, 0x00007fff, 0x0000ffff, 0x00000000, 472); 
TEST_RR_OP( 119 , uradd16, 0x7b29bfff, 0x76528000, 0x8000ffff, 476); 
TEST_RR_OP( 120 , uradd16, 0xbfff8000, 0xffff8000, 0x80008000, 480); 
TEST_RR_OP( 121 , uradd16, 0xb7e54000, 0x80008000, 0xefca0000, 484); 
TEST_RR_OP( 122 , uradd16, 0x8000bfff, 0x80008000, 0x8000ffff, 488); 
TEST_RR_OP( 123 , uradd16, 0xab4d7fff, 0xffffffff, 0x569c0000, 492); 
TEST_RR_OP( 124 , uradd16, 0xbfff7fff, 0xffffffff, 0x80000000, 496); 
TEST_RR_OP( 125 , uradd16, 0x80007fff, 0x8000ffff, 0x80000000, 500); 
TEST_RR_OP( 126 , uradd16, 0x80000000, 0x80000000, 0x80000000, 504); 
TEST_RR_OP( 127 , uradd16, 0x06a68000, 0x0d4c8000, 0x00008000, 508); 
TEST_RR_OP( 128 , uradd16, 0x7fffdf4b, 0x0000ffff, 0xffffbe97, 512); 
TEST_RR_OP( 129 , uradd16, 0xbfff8cf7, 0x800045c4, 0xffffd42b, 516); 
TEST_RR_OP( 130 , uradd16, 0x00008bdc, 0x00008000, 0x000097b8, 520); 
TEST_RR_OP( 131 , uradd16, 0x00004000, 0x00008000, 0x00000000, 524); 
TEST_RR_OP( 132 , uradd16, 0x8bd0bfff, 0x97a18000, 0x8000ffff, 528); 
TEST_RR_OP( 133 , uradd16, 0xbf098000, 0xffff8000, 0x7e138000, 532); 
TEST_RR_OP( 134 , uradd16, 0x8000ffff, 0x8000ffff, 0x8000ffff, 536); 
TEST_RR_OP( 135 , uradd16, 0x00004054, 0x000004be, 0x00007bea, 540); 
TEST_RR_OP( 136 , uradd16, 0x62c9bfff, 0x8000ffff, 0x45928000, 544); 
TEST_RR_OP( 137 , uradd16, 0xe9aa7fff, 0xffffffff, 0xd3550000, 548); 
TEST_RR_OP( 138 , uradd16, 0xe4f0bfff, 0xc9e1ffff, 0xffff8000, 552); 
TEST_RR_OP( 139 , uradd16, 0x7aff11e1, 0x75ff0000, 0x800023c3, 556); 
TEST_RR_OP( 140 , uradd16, 0xa3e10612, 0x80000c25, 0xc7c30000, 560); 
TEST_RR_OP( 141 , uradd16, 0x00007fff, 0x00000000, 0x0000ffff, 564); 
TEST_RR_OP( 142 , uradd16, 0x800078fb, 0x800071f6, 0x80008000, 568); 
TEST_RR_OP( 143 , uradd16, 0x7fff4000, 0xffff0000, 0x00008000, 572); 
TEST_RR_OP( 144 , uradd16, 0x50760b3d, 0xa0ec167a, 0x00000000, 576); 
TEST_RR_OP( 145 , uradd16, 0x27376452, 0x000048a5, 0x4e6e8000, 580); 
TEST_RR_OP( 146 , uradd16, 0xffff0000, 0xffff0000, 0xffff0000, 584); 
TEST_RR_OP( 147 , uradd16, 0x80000000, 0x80000000, 0x80000000, 588); 
TEST_RR_OP( 148 , uradd16, 0xbfff84f1, 0xffffffff, 0x800009e3, 592); 
TEST_RR_OP( 149 , uradd16, 0x4000ab23, 0x0000686e, 0x8000edd9, 596); 
TEST_RR_OP( 150 , uradd16, 0x80000b97, 0x8000172e, 0x80000000, 600); 
TEST_RR_OP( 151 , uradd16, 0x8000790f, 0x80000000, 0x8000f21e, 604); 
TEST_RR_OP( 152 , uradd16, 0xffff91c4, 0xffff2389, 0xffffffff, 608); 
TEST_RR_OP( 153 , uradd16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 612); 
TEST_RR_OP( 154 , uradd16, 0xc81faeb1, 0x903fffff, 0xffff5d64, 616); 
TEST_RR_OP( 155 , uradd16, 0x1679673c, 0x2cf2ce79, 0x00000000, 620); 
TEST_RR_OP( 156 , uradd16, 0x40007fff, 0x00000000, 0x8000ffff, 624); 
TEST_RR_OP( 157 , uradd16, 0xffff4000, 0xffff0000, 0xffff8000, 628); 
TEST_RR_OP( 158 , uradd16, 0x9c5c0000, 0x38b90000, 0xffff0000, 632); 
TEST_RR_OP( 159 , uradd16, 0x8e837fff, 0xa0210000, 0x7ce5ffff, 636); 
TEST_RR_OP( 160 , uradd16, 0xadb8dcd4, 0xffffb9a9, 0x5b72ffff, 640); 
TEST_RR_OP( 161 , uradd16, 0x00004176, 0x000002ed, 0x00008000, 644); 
TEST_RR_OP( 162 , uradd16, 0x944b7442, 0x6d2ae885, 0xbb6d0000, 648); 
TEST_RR_OP( 163 , uradd16, 0x37d17169, 0x00000000, 0x6fa3e2d3, 652); 
TEST_RR_OP( 164 , uradd16, 0x7fffa084, 0x0000410a, 0xffffffff, 656); 
TEST_RR_OP( 165 , uradd16, 0xffffbfff, 0xffffffff, 0xffff8000, 660); 
TEST_RR_OP( 166 , uradd16, 0x7fff4000, 0xffff8000, 0x00000000, 664); 
TEST_RR_OP( 167 , uradd16, 0x4000afc7, 0x0000df8f, 0x80008000, 668); 
TEST_RR_OP( 168 , uradd16, 0x2b1577f4, 0x562bad3a, 0x000042ae, 672); 
TEST_RR_OP( 169 , uradd16, 0xa5332166, 0xb6433cf7, 0x942305d5, 676); 
TEST_RR_OP( 170 , uradd16, 0xa7e39a2c, 0xffff345a, 0x4fc7ffff, 680); 
TEST_RR_OP( 171 , uradd16, 0xbfffb08c, 0xffff611a, 0x8000ffff, 684); 
TEST_RR_OP( 172 , uradd16, 0xbffff0f4, 0xffffe1e9, 0x8000ffff, 688); 
TEST_RR_OP( 173 , uradd16, 0x7fff8000, 0x00008000, 0xffff8000, 692); 
TEST_RR_OP( 174 , uradd16, 0xbfff8000, 0xffff8000, 0x80008000, 696); 
TEST_RR_OP( 175 , uradd16, 0xfe5c7fff, 0xffffffff, 0xfcba0000, 700); 
TEST_RR_OP( 176 , uradd16, 0x59438000, 0xb2878000, 0x00008000, 704); 
TEST_RR_OP( 177 , uradd16, 0xbfffbfff, 0xffff8000, 0x8000ffff, 708); 
TEST_RR_OP( 178 , uradd16, 0x7fff7fff, 0x0000ffff, 0xffff0000, 712); 
TEST_RR_OP( 179 , uradd16, 0x7fffbfff, 0xffff8000, 0x0000ffff, 716); 
TEST_RR_OP( 180 , uradd16, 0x35a27fff, 0x00000000, 0x6b45ffff, 720); 
TEST_RR_OP( 181 , uradd16, 0x40004000, 0x80000000, 0x00008000, 724); 
TEST_RR_OP( 182 , uradd16, 0x40004000, 0x00000000, 0x80008000, 728); 
TEST_RR_OP( 183 , uradd16, 0x00f4bfff, 0x01e9ffff, 0x00008000, 732); 
TEST_RR_OP( 184 , uradd16, 0x7fff4472, 0x00000000, 0xffff88e5, 736); 
TEST_RR_OP( 185 , uradd16, 0x667c4000, 0x4cf90000, 0x80008000, 740); 
TEST_RR_OP( 186 , uradd16, 0x0158c556, 0x02b18aad, 0x0000ffff, 744); 
TEST_RR_OP( 187 , uradd16, 0xffff2805, 0xffff0000, 0xffff500a, 748); 
TEST_RR_OP( 188 , uradd16, 0x4443bfff, 0x88868000, 0x0000ffff, 752); 
TEST_RR_OP( 189 , uradd16, 0xfba27fff, 0xffff0000, 0xf746ffff, 756); 
TEST_RR_OP( 190 , uradd16, 0x40004e6c, 0x00009cd9, 0x80000000, 760); 
TEST_RR_OP( 191 , uradd16, 0x7fffb5d6, 0xffffffff, 0x00006bae, 764); 
TEST_RR_OP( 192 , uradd16, 0x7fff8000, 0x00008000, 0xffff8000, 768); 
TEST_RR_OP( 193 , uradd16, 0x85317fff, 0xffff0000, 0x0a63ffff, 772); 
TEST_RR_OP( 194 , uradd16, 0x31b3ffff, 0x6366ffff, 0x0000ffff, 776); 
TEST_RR_OP( 195 , uradd16, 0x9d484000, 0xba908000, 0x80000000, 780); 
TEST_RR_OP( 196 , uradd16, 0x00007fff, 0x00000000, 0x0000ffff, 784); 
TEST_RR_OP( 197 , uradd16, 0x75af4bd0, 0x0000967b, 0xeb5f0126, 788); 
TEST_RR_OP( 198 , uradd16, 0xbfff40c9, 0xffff0000, 0x80008193, 792); 
TEST_RR_OP( 199 , uradd16, 0x40007fff, 0x0000ffff, 0x80000000, 796); 

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
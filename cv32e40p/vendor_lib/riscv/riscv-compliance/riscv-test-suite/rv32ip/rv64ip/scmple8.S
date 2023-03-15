# See LICENSE for license details.
#*****************************************************************************
# scmple8.S
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

TEST_RR_OP( 2 , scmple8, 0xffff00ff, 0xff800000, 0x00ffe50a, 8); 
TEST_RR_OP( 3 , scmple8, 0x000000ff, 0x00000080, 0xff808080, 12); 
TEST_RR_OP( 4 , scmple8, 0x00ff0000, 0xffffff75, 0x803880a4, 16); 
TEST_RR_OP( 5 , scmple8, 0x00ffffff, 0x0000ff80, 0x802e00ff, 20); 
TEST_RR_OP( 6 , scmple8, 0xff0000ff, 0x80003b93, 0x0080ff00, 24); 
TEST_RR_OP( 7 , scmple8, 0x0000ff00, 0xbe228000, 0x80008080, 28); 
TEST_RR_OP( 8 , scmple8, 0xff00ff00, 0x806f8048, 0x2c1b8006, 32); 
TEST_RR_OP( 9 , scmple8, 0xffffffff, 0x80808080, 0x80800000, 36); 
TEST_RR_OP( 10 , scmple8, 0x00ff00ff, 0x4580ffff, 0xffff8066, 40); 
TEST_RR_OP( 11 , scmple8, 0x00ff0000, 0xe9000000, 0x800080ff, 44); 
TEST_RR_OP( 12 , scmple8, 0xffffffff, 0x80ff00ff, 0x00200000, 48); 
TEST_RR_OP( 13 , scmple8, 0x00ffffff, 0x9a80ff40, 0x80800e76, 52); 
TEST_RR_OP( 14 , scmple8, 0xffff0000, 0xffffff50, 0xff0080ff, 56); 
TEST_RR_OP( 15 , scmple8, 0x00000000, 0x24ff0000, 0xff81a8ff, 60); 
TEST_RR_OP( 16 , scmple8, 0xffffffff, 0x80008080, 0xff00ffff, 64); 
TEST_RR_OP( 17 , scmple8, 0xff0000ff, 0x80ff4300, 0x808dff00, 68); 
TEST_RR_OP( 18 , scmple8, 0xff00ffff, 0x80278080, 0xffff80ff, 72); 
TEST_RR_OP( 19 , scmple8, 0x00ffffff, 0xfff28000, 0x80000000, 76); 
TEST_RR_OP( 20 , scmple8, 0x00ffffff, 0x2e00ff80, 0xbf000080, 80); 
TEST_RR_OP( 21 , scmple8, 0xffffffff, 0xed808080, 0xffc309e3, 84); 
TEST_RR_OP( 22 , scmple8, 0x00ff0000, 0x0bfff13a, 0xd8ffb500, 88); 
TEST_RR_OP( 23 , scmple8, 0x0000ffff, 0x001d9080, 0xffff006a, 92); 
TEST_RR_OP( 24 , scmple8, 0xffff0000, 0xffffff34, 0xffff8000, 96); 
TEST_RR_OP( 25 , scmple8, 0x00ff00ff, 0xff800080, 0x804bb4ff, 100); 
TEST_RR_OP( 26 , scmple8, 0x00ffff00, 0xe9cdff00, 0x8000ffff, 104); 
TEST_RR_OP( 27 , scmple8, 0xff00ff00, 0xff00ffff, 0xffffffb0, 108); 
TEST_RR_OP( 28 , scmple8, 0xffff00ff, 0x00000080, 0x00008050, 112); 
TEST_RR_OP( 29 , scmple8, 0xffff0000, 0xff800063, 0xffff80c6, 116); 
TEST_RR_OP( 30 , scmple8, 0xffff0000, 0xcd001a49, 0x5b001980, 120); 
TEST_RR_OP( 31 , scmple8, 0x0000ffff, 0x3d718000, 0x808c0000, 124); 
TEST_RR_OP( 32 , scmple8, 0xff00ffff, 0xffff8000, 0x00dd003c, 128); 
TEST_RR_OP( 33 , scmple8, 0xff0000ff, 0xff0000ff, 0xff8080ff, 132); 
TEST_RR_OP( 34 , scmple8, 0x00ffffff, 0x009b8000, 0xffff005c, 136); 
TEST_RR_OP( 35 , scmple8, 0x00ffffff, 0x00ff8000, 0x8000ab00, 140); 
TEST_RR_OP( 36 , scmple8, 0xff00ffff, 0x00ff80ff, 0x0080ffff, 144); 
TEST_RR_OP( 37 , scmple8, 0xffff00ff, 0xe0ffffff, 0x16ff8000, 148); 
TEST_RR_OP( 38 , scmple8, 0xff0000ff, 0xff000080, 0x77ff8078, 152); 
TEST_RR_OP( 39 , scmple8, 0x00ff00ff, 0x62004d80, 0x00008000, 156); 
TEST_RR_OP( 40 , scmple8, 0xff0000ff, 0xffff27c4, 0xff80ff00, 160); 
TEST_RR_OP( 41 , scmple8, 0x00ffffff, 0x45808080, 0x804b80ff, 164); 
TEST_RR_OP( 42 , scmple8, 0xffffffff, 0xe2808080, 0xff800088, 168); 
TEST_RR_OP( 43 , scmple8, 0x00ff00ff, 0x1ce40000, 0x00008016, 172); 
TEST_RR_OP( 44 , scmple8, 0x0000ffff, 0x00008080, 0x80dfff80, 176); 
TEST_RR_OP( 45 , scmple8, 0xffffffff, 0x80808000, 0x00a3ff00, 180); 
TEST_RR_OP( 46 , scmple8, 0x00ffffff, 0x7580ff2d, 0x80ff007f, 184); 
TEST_RR_OP( 47 , scmple8, 0xff00ff00, 0xffff80ff, 0x00bf8580, 188); 
TEST_RR_OP( 48 , scmple8, 0xffffff00, 0x8080ff29, 0x8cffffff, 192); 
TEST_RR_OP( 49 , scmple8, 0x0000ffff, 0x00008080, 0xff800080, 196); 
TEST_RR_OP( 50 , scmple8, 0xff000000, 0x8070f4ff, 0xff0080fb, 200); 
TEST_RR_OP( 51 , scmple8, 0xff00ff00, 0x9c0080ff, 0x00ad8080, 204); 
TEST_RR_OP( 52 , scmple8, 0xff000000, 0xd570ff7e, 0x390080ff, 208); 
TEST_RR_OP( 53 , scmple8, 0x0000ffff, 0x167ad8ff, 0x80d3ff00, 212); 
TEST_RR_OP( 54 , scmple8, 0x0000ff00, 0x73ffe6ff, 0x3382ff80, 216); 
TEST_RR_OP( 55 , scmple8, 0x00000000, 0x00396900, 0x80806280, 220); 
TEST_RR_OP( 56 , scmple8, 0xffffffff, 0x00008080, 0x0000ff80, 224); 
TEST_RR_OP( 57 , scmple8, 0xff00ffff, 0x808e80da, 0xff80ffff, 228); 
TEST_RR_OP( 58 , scmple8, 0xffffff00, 0x1b008000, 0x4f0048a1, 232); 
TEST_RR_OP( 59 , scmple8, 0xffffffff, 0x80860081, 0xed0042cb, 236); 
TEST_RR_OP( 60 , scmple8, 0xffffffff, 0x80ff80ff, 0xaf000000, 240); 
TEST_RR_OP( 61 , scmple8, 0x00ffff00, 0xffffe756, 0xb500ed80, 244); 
TEST_RR_OP( 62 , scmple8, 0x0000ffff, 0x4100ff80, 0x80a900ff, 248); 
TEST_RR_OP( 63 , scmple8, 0x00ffffff, 0x3dff8080, 0x80ff0900, 252); 
TEST_RR_OP( 64 , scmple8, 0x00ffff00, 0x00b7ff92, 0x8000ff80, 256); 
TEST_RR_OP( 65 , scmple8, 0xffffffff, 0xff8080ff, 0x008000ff, 260); 
TEST_RR_OP( 66 , scmple8, 0x00ffffff, 0x00008080, 0xff0080ff, 264); 
TEST_RR_OP( 67 , scmple8, 0x00ffffff, 0x0080d5f9, 0x800000ff, 268); 
TEST_RR_OP( 68 , scmple8, 0xffff0000, 0xff8051ff, 0x29008080, 272); 
TEST_RR_OP( 69 , scmple8, 0xffffffff, 0x80ff80ff, 0x000c7aff, 276); 
TEST_RR_OP( 70 , scmple8, 0xff00ffff, 0x0000ff80, 0x608022ba, 280); 
TEST_RR_OP( 71 , scmple8, 0xff0000ff, 0x806aff80, 0x008080ff, 284); 
TEST_RR_OP( 72 , scmple8, 0xffffffff, 0xffffff80, 0xffffff00, 288); 
TEST_RR_OP( 73 , scmple8, 0xff00ffff, 0x80920080, 0x80800000, 292); 
TEST_RR_OP( 74 , scmple8, 0x00ffffff, 0xff808000, 0xb8ff000d, 296); 
TEST_RR_OP( 75 , scmple8, 0x00ffff00, 0x03808000, 0xffde8080, 300); 
TEST_RR_OP( 76 , scmple8, 0xff00ffff, 0xff62801f, 0xff80ff65, 304); 
TEST_RR_OP( 77 , scmple8, 0xffffff00, 0x80d5ffff, 0x28004c80, 308); 
TEST_RR_OP( 78 , scmple8, 0xffffffff, 0xffd380c7, 0x5fffffff, 312); 
TEST_RR_OP( 79 , scmple8, 0xffffff00, 0x80ffff3f, 0x1f005480, 316); 
TEST_RR_OP( 80 , scmple8, 0x00ffffff, 0xb0ff00f3, 0x80ff0000, 320); 
TEST_RR_OP( 81 , scmple8, 0xff00ffff, 0x8000ff80, 0x80b2ff33, 324); 
TEST_RR_OP( 82 , scmple8, 0x000000ff, 0xd626b480, 0x82078080, 328); 
TEST_RR_OP( 83 , scmple8, 0xffffffff, 0x808080ff, 0x00ff00ff, 332); 
TEST_RR_OP( 84 , scmple8, 0x0000ff00, 0x004da600, 0xff80ff94, 336); 
TEST_RR_OP( 85 , scmple8, 0xff00ff00, 0xa4008000, 0xff808080, 340); 
TEST_RR_OP( 86 , scmple8, 0x00ff00ff, 0x62ff00ff, 0x80ff80ff, 344); 
TEST_RR_OP( 87 , scmple8, 0xff00ffff, 0x00ffff80, 0x0180ff00, 348); 
TEST_RR_OP( 88 , scmple8, 0xffffffff, 0x00ff8080, 0x00008073, 352); 
TEST_RR_OP( 89 , scmple8, 0xff00ffff, 0xffffff00, 0x0098ff00, 356); 
TEST_RR_OP( 90 , scmple8, 0xff00ffff, 0xff008080, 0x00ffff00, 360); 
TEST_RR_OP( 91 , scmple8, 0xffffff00, 0x9c809dfc, 0x004ad380, 364); 
TEST_RR_OP( 92 , scmple8, 0x00ff00ff, 0xff800081, 0x808080e2, 368); 
TEST_RR_OP( 93 , scmple8, 0x00ffff00, 0x1b8080fb, 0xff8089ca, 372); 
TEST_RR_OP( 94 , scmple8, 0xffffffff, 0xffffffff, 0x78ff1d12, 376); 
TEST_RR_OP( 95 , scmple8, 0x0000ff00, 0x00ff8003, 0xff8000ff, 380); 
TEST_RR_OP( 96 , scmple8, 0x00ff0000, 0x27ff0000, 0xffffff80, 384); 
TEST_RR_OP( 97 , scmple8, 0x000000ff, 0x00600080, 0x80d98e78, 388); 
TEST_RR_OP( 98 , scmple8, 0x00ff00ff, 0xffff54ff, 0x8000ff00, 392); 
TEST_RR_OP( 99 , scmple8, 0xffffffff, 0x808080ff, 0x35ffffff, 396); 
TEST_RR_OP( 100 , scmple8, 0x00ffffff, 0xe9000090, 0x800000ff, 400); 
TEST_RR_OP( 101 , scmple8, 0xff00ffff, 0x80000080, 0x008012c6, 404); 
TEST_RR_OP( 102 , scmple8, 0xff0000ff, 0x80ffff00, 0x808a9000, 408); 
TEST_RR_OP( 103 , scmple8, 0xffffffff, 0xff008080, 0xff5c0084, 412); 
TEST_RR_OP( 104 , scmple8, 0xffffffff, 0xd90080ff, 0x430e8064, 416); 
TEST_RR_OP( 105 , scmple8, 0xffffffff, 0xffff8080, 0x00ff80ff, 420); 
TEST_RR_OP( 106 , scmple8, 0xffffffff, 0x00ffff80, 0x2100ff80, 424); 
TEST_RR_OP( 107 , scmple8, 0xffffffff, 0xff80ae80, 0x00e2ff80, 428); 
TEST_RR_OP( 108 , scmple8, 0xff00ffff, 0xff009880, 0xff80ff00, 432); 
TEST_RR_OP( 109 , scmple8, 0xffffffff, 0xffff80ff, 0x00ffeaff, 436); 
TEST_RR_OP( 110 , scmple8, 0xff00ff00, 0x805bff00, 0x8000ffff, 440); 
TEST_RR_OP( 111 , scmple8, 0xffffff00, 0x80ff80ff, 0xff448095, 444); 
TEST_RR_OP( 112 , scmple8, 0xff00ffff, 0x000080ff, 0x009c8376, 448); 
TEST_RR_OP( 113 , scmple8, 0x00ff0000, 0xd4800000, 0x8000ffff, 452); 
TEST_RR_OP( 114 , scmple8, 0x000000ff, 0x50ff1180, 0x808080ab, 456); 
TEST_RR_OP( 115 , scmple8, 0xff00ffff, 0xff3080c0, 0x0000b000, 460); 
TEST_RR_OP( 116 , scmple8, 0xffffffff, 0xb9b700ff, 0x55ff457e, 464); 
TEST_RR_OP( 117 , scmple8, 0x00ff00ff, 0xff800080, 0xf000ffea, 468); 
TEST_RR_OP( 118 , scmple8, 0x00ffffff, 0x0b800080, 0xff805700, 472); 
TEST_RR_OP( 119 , scmple8, 0xffffffff, 0xff800080, 0x00800000, 476); 
TEST_RR_OP( 120 , scmple8, 0xffff00ff, 0x80ff001e, 0xffffff7f, 480); 
TEST_RR_OP( 121 , scmple8, 0xffff00ff, 0x80804fff, 0xffff0000, 484); 
TEST_RR_OP( 122 , scmple8, 0xffffffff, 0x80fff180, 0xff7bff80, 488); 
TEST_RR_OP( 123 , scmple8, 0x00ffffff, 0x0080ff80, 0xff006a00, 492); 
TEST_RR_OP( 124 , scmple8, 0xffffff00, 0x80ffff00, 0xffff0a80, 496); 
TEST_RR_OP( 125 , scmple8, 0xffffffff, 0x08ff8000, 0x4a658000, 500); 
TEST_RR_OP( 126 , scmple8, 0x0000ffff, 0x3a008087, 0xff8080ff, 504); 
TEST_RR_OP( 127 , scmple8, 0xffffffff, 0x808080d6, 0xffdc7500, 508); 
TEST_RR_OP( 128 , scmple8, 0xffffff00, 0x8000a002, 0x80206900, 512); 
TEST_RR_OP( 129 , scmple8, 0xffff0000, 0xff0000f2, 0x7657badc, 516); 
TEST_RR_OP( 130 , scmple8, 0xffffff00, 0x80808000, 0xfb350080, 520); 
TEST_RR_OP( 131 , scmple8, 0xffffff00, 0x80ffaa27, 0x00ff1080, 524); 
TEST_RR_OP( 132 , scmple8, 0x00ffffff, 0x0080ffb3, 0xffff00ff, 528); 
TEST_RR_OP( 133 , scmple8, 0xffffffff, 0x00ffff80, 0x00ff7d83, 532); 
TEST_RR_OP( 134 , scmple8, 0x00ff00ff, 0x0000b580, 0xff0080ff, 536); 
TEST_RR_OP( 135 , scmple8, 0x00ff00ff, 0x00d102e0, 0x800080ff, 540); 
TEST_RR_OP( 136 , scmple8, 0xffffffff, 0xffcc80ff, 0xff008000, 544); 
TEST_RR_OP( 137 , scmple8, 0x00ffffff, 0x3eff0000, 0x00000000, 548); 
TEST_RR_OP( 138 , scmple8, 0x00ffff00, 0x00ff8000, 0xa40080ff, 552); 
TEST_RR_OP( 139 , scmple8, 0x00ffff00, 0x0000af00, 0x8000ff94, 556); 
TEST_RR_OP( 140 , scmple8, 0xff0000ff, 0x000000ff, 0x008080ff, 560); 
TEST_RR_OP( 141 , scmple8, 0xff00ffff, 0x8000ff80, 0x80ff1ebd, 564); 
TEST_RR_OP( 142 , scmple8, 0x00ffffff, 0xe0808000, 0x80808000, 568); 
TEST_RR_OP( 143 , scmple8, 0xffff00ff, 0x008000ff, 0x4e00ffff, 572); 
TEST_RR_OP( 144 , scmple8, 0x000000ff, 0xff2f3d80, 0x80ff92e6, 576); 
TEST_RR_OP( 145 , scmple8, 0x00ffffff, 0x3480804c, 0x80800056, 580); 
TEST_RR_OP( 146 , scmple8, 0xffffff00, 0x80e080ff, 0x80004880, 584); 
TEST_RR_OP( 147 , scmple8, 0xff00ff00, 0x430e00ff, 0x70ff0080, 588); 
TEST_RR_OP( 148 , scmple8, 0xff0000ff, 0x802300ff, 0x808080ff, 592); 
TEST_RR_OP( 149 , scmple8, 0xff00ffff, 0x80008080, 0xffff8000, 596); 
TEST_RR_OP( 150 , scmple8, 0xffffffff, 0xffaa0000, 0x00f00000, 600); 
TEST_RR_OP( 151 , scmple8, 0xff00ffff, 0x8f008080, 0x2e80ff00, 604); 
TEST_RR_OP( 152 , scmple8, 0xffffff00, 0xffff80ff, 0xff008080, 608); 
TEST_RR_OP( 153 , scmple8, 0xff00ff00, 0x80ff806b, 0xf7808080, 612); 
TEST_RR_OP( 154 , scmple8, 0xffffffff, 0x8000ffff, 0xff000904, 616); 
TEST_RR_OP( 155 , scmple8, 0xffffffff, 0xba8080ff, 0xff000000, 620); 
TEST_RR_OP( 156 , scmple8, 0xffffffff, 0xff8080ff, 0xffffffff, 624); 
TEST_RR_OP( 157 , scmple8, 0x0000ff00, 0x0000ffff, 0x80c3ff80, 628); 
TEST_RR_OP( 158 , scmple8, 0x00ffff00, 0x00808000, 0xff80ffff, 632); 
TEST_RR_OP( 159 , scmple8, 0xff00ffff, 0xff728080, 0x00ff9d80, 636); 
TEST_RR_OP( 160 , scmple8, 0xff00ffff, 0x80008080, 0x00807dff, 640); 
TEST_RR_OP( 161 , scmple8, 0xffffffff, 0x80a08080, 0xff0003ff, 644); 
TEST_RR_OP( 162 , scmple8, 0x00ff00ff, 0xffab0000, 0xf200ff00, 648); 
TEST_RR_OP( 163 , scmple8, 0x00ff00ff, 0x00800080, 0x80ffffff, 652); 
TEST_RR_OP( 164 , scmple8, 0x000000ff, 0x6c000080, 0x80ffffa4, 656); 
TEST_RR_OP( 165 , scmple8, 0x00ff00ff, 0xff8000ff, 0x80ff8030, 660); 
TEST_RR_OP( 166 , scmple8, 0xffffff00, 0x9000ff62, 0x0000ff80, 664); 
TEST_RR_OP( 167 , scmple8, 0xff0000ff, 0x8000ff80, 0x03ff9680, 668); 
TEST_RR_OP( 168 , scmple8, 0x0000ffff, 0x5bff0080, 0x9d8000ff, 672); 
TEST_RR_OP( 169 , scmple8, 0xffff0000, 0xffff00ff, 0x4affff80, 676); 
TEST_RR_OP( 170 , scmple8, 0x0000ffff, 0x00d2009c, 0x95800000, 680); 
TEST_RR_OP( 171 , scmple8, 0x00000000, 0xff705a19, 0x80ff00ff, 684); 
TEST_RR_OP( 172 , scmple8, 0xff0000ff, 0xaf000d00, 0xff80ff00, 688); 
TEST_RR_OP( 173 , scmple8, 0x00ff0000, 0x0f000061, 0xff00ff00, 692); 
TEST_RR_OP( 174 , scmple8, 0x0000ff00, 0x000080ff, 0xb48080e3, 696); 
TEST_RR_OP( 175 , scmple8, 0x00ffff00, 0x07ff00ff, 0x80ff0080, 700); 
TEST_RR_OP( 176 , scmple8, 0x00ff0000, 0xffff0024, 0xc100ff80, 704); 
TEST_RR_OP( 177 , scmple8, 0xffff00ff, 0xcae700ff, 0x11ffb7ff, 708); 
TEST_RR_OP( 178 , scmple8, 0xffffff00, 0x5780ff7b, 0x7380ff80, 712); 
TEST_RR_OP( 179 , scmple8, 0xff00ffff, 0x80ff80ff, 0x00808000, 716); 
TEST_RR_OP( 180 , scmple8, 0xff000000, 0x80680000, 0x8080ffff, 720); 
TEST_RR_OP( 181 , scmple8, 0xffffff00, 0xffff002e, 0x405e68ff, 724); 
TEST_RR_OP( 182 , scmple8, 0xff0000ff, 0xffffffff, 0xff808000, 728); 
TEST_RR_OP( 183 , scmple8, 0xff0000ff, 0xffffc100, 0xff808300, 732); 
TEST_RR_OP( 184 , scmple8, 0x00ffff00, 0xffff80ff, 0x80ff0080, 736); 
TEST_RR_OP( 185 , scmple8, 0x00ff00ff, 0x00001cb1, 0xb75bc971, 740); 
TEST_RR_OP( 186 , scmple8, 0x000000ff, 0xe10aff80, 0xac808098, 744); 
TEST_RR_OP( 187 , scmple8, 0xff00ffff, 0xf92280ff, 0xffe2a1ff, 748); 
TEST_RR_OP( 188 , scmple8, 0x00ffffff, 0x7b00ea93, 0xff00ff6d, 752); 
TEST_RR_OP( 189 , scmple8, 0x00ffff00, 0x388080ff, 0xff6d5abf, 756); 
TEST_RR_OP( 190 , scmple8, 0x00ffffff, 0x0080a6d4, 0x8080ff2e, 760); 
TEST_RR_OP( 191 , scmple8, 0x00ff00ff, 0x00bfff80, 0x800080ff, 764); 
TEST_RR_OP( 192 , scmple8, 0xffff0000, 0x80802461, 0x8000a180, 768); 
TEST_RR_OP( 193 , scmple8, 0xffffffff, 0x80ff80ff, 0x80ff561d, 772); 
TEST_RR_OP( 194 , scmple8, 0xffffff00, 0xff80ff1c, 0xff80ffff, 776); 
TEST_RR_OP( 195 , scmple8, 0x00000000, 0x76f9ff00, 0xff8080ff, 780); 
TEST_RR_OP( 196 , scmple8, 0xffffff00, 0xff80ff00, 0xffff0094, 784); 
TEST_RR_OP( 197 , scmple8, 0xffff0000, 0x80940000, 0xffff80ff, 788); 
TEST_RR_OP( 198 , scmple8, 0xffff0000, 0xff800000, 0x54008080, 792); 
TEST_RR_OP( 199 , scmple8, 0xffffff00, 0x00ff807f, 0x6a6980f0, 796); 

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
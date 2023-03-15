# See LICENSE for license details.
#*****************************************************************************
# radd8.S
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

TEST_RR_OP( 2 , radd8, 0xd980bff9, 0xcf8080f3, 0xe380ffff, 8); 
TEST_RR_OP( 3 , radd8, 0xb5c985ff, 0x801380ff, 0xea808bff, 12); 
TEST_RR_OP( 4 , radd8, 0x1afff1dd, 0xfd00003b, 0x38ffe280, 16); 
TEST_RR_OP( 5 , radd8, 0x9cc6e9d8, 0x800cd280, 0xb9800030, 20); 
TEST_RR_OP( 6 , radd8, 0x80ffff80, 0x8000ff80, 0x80ffff80, 24); 
TEST_RR_OP( 7 , radd8, 0x3787bfc4, 0x00808080, 0x6f8eff08, 28); 
TEST_RR_OP( 8 , radd8, 0xbfbfe8df, 0x80800000, 0xffffd0bf, 32); 
TEST_RR_OP( 9 , radd8, 0x803781ff, 0x80008000, 0x806f82ff, 36); 
TEST_RR_OP( 10 , radd8, 0x2fefffe0, 0x005f00c1, 0x5e80ffff, 40); 
TEST_RR_OP( 11 , radd8, 0x288c80e8, 0x519980ff, 0xff8080d1, 44); 
TEST_RR_OP( 12 , radd8, 0xc4ffc0ff, 0x80ff80ff, 0x08ff0000, 48); 
TEST_RR_OP( 13 , radd8, 0xffc014bf, 0xff802980, 0xff00ffff, 52); 
TEST_RR_OP( 14 , radd8, 0xe4bff9c5, 0x00807302, 0xc8ff8088, 56); 
TEST_RR_OP( 15 , radd8, 0xbfbfecbf, 0xff8080ff, 0x80ff5880, 60); 
TEST_RR_OP( 16 , radd8, 0xffb9c8bf, 0xff8000ff, 0xfff39080, 64); 
TEST_RR_OP( 17 , radd8, 0xffff03bf, 0xffff0680, 0xff0000ff, 68); 
TEST_RR_OP( 18 , radd8, 0xbfffbfbf, 0x80ff80ff, 0xff00ff80, 72); 
TEST_RR_OP( 19 , radd8, 0xff2cfcc0, 0x00593400, 0xffffc480, 76); 
TEST_RR_OP( 20 , radd8, 0x8080caff, 0x808015ff, 0x808080ff, 80); 
TEST_RR_OP( 21 , radd8, 0x0017c180, 0x00000080, 0x002f8280, 84); 
TEST_RR_OP( 22 , radd8, 0xec00e480, 0x5900ca80, 0x8000ff80, 88); 
TEST_RR_OP( 23 , radd8, 0x3ec09880, 0x7d009680, 0x00809a80, 92); 
TEST_RR_OP( 24 , radd8, 0x80ffd580, 0x80ff0080, 0x8000ab80, 96); 
TEST_RR_OP( 25 , radd8, 0xb31f803c, 0x80408078, 0xe7ff8000, 100); 
TEST_RR_OP( 26 , radd8, 0xffbfe9ff, 0xff8000ff, 0xffffd3ff, 104); 
TEST_RR_OP( 27 , radd8, 0xc218afa7, 0xe1ffdfcf, 0xa3318080, 108); 
TEST_RR_OP( 28 , radd8, 0xd58021bf, 0xff803980, 0xac8009ff, 112); 
TEST_RR_OP( 29 , radd8, 0xcd1fb9ca, 0xff69c793, 0x9bd5ab01, 116); 
TEST_RR_OP( 30 , radd8, 0xbfd50dc0, 0xff00a600, 0x80ab7480, 120); 
TEST_RR_OP( 31 , radd8, 0xc0e298ff, 0x00c58000, 0x80ffb0ff, 124); 
TEST_RR_OP( 32 , radd8, 0xbf3a001a, 0x80000034, 0xff740000, 128); 
TEST_RR_OP( 33 , radd8, 0xbfc01fc0, 0xff80ed00, 0x80005180, 132); 
TEST_RR_OP( 34 , radd8, 0xbfa41187, 0x80c8238f, 0xff80ff80, 136); 
TEST_RR_OP( 35 , radd8, 0xbfffffd4, 0x80ffffaa, 0xffffffff, 140); 
TEST_RR_OP( 36 , radd8, 0xff0c51c0, 0xff012f80, 0x00187400, 144); 
TEST_RR_OP( 37 , radd8, 0xbfb2c6c0, 0x8080ff00, 0xffe48d80, 148); 
TEST_RR_OP( 38 , radd8, 0x0905c6bf, 0x13000c80, 0x000a80ff, 152); 
TEST_RR_OP( 39 , radd8, 0xe6bfff08, 0xff80ffff, 0xcdff0012, 156); 
TEST_RR_OP( 40 , radd8, 0xc60effbf, 0x001dff80, 0x8dffffff, 160); 
TEST_RR_OP( 41 , radd8, 0xff84bfc0, 0xff888000, 0xff80ff80, 164); 
TEST_RR_OP( 42 , radd8, 0xe6c080bf, 0x000080ff, 0xcc808080, 168); 
TEST_RR_OP( 43 , radd8, 0xa0bfc0c0, 0xc0800080, 0x80ff8000, 172); 
TEST_RR_OP( 44 , radd8, 0xff80ffbf, 0xff80ff80, 0x008000ff, 176); 
TEST_RR_OP( 45 , radd8, 0x80bfddc0, 0x8080a200, 0x80ff1880, 180); 
TEST_RR_OP( 46 , radd8, 0xc0bfbfff, 0x00808080, 0x80ffff7f, 184); 
TEST_RR_OP( 47 , radd8, 0xffa9c0bd, 0xff8080fa, 0xffd20080, 188); 
TEST_RR_OP( 48 , radd8, 0xc0c38080, 0x80008080, 0x00868080, 192); 
TEST_RR_OP( 49 , radd8, 0xffff8010, 0xff008021, 0xffff80ff, 196); 
TEST_RR_OP( 50 , radd8, 0xbfffffd7, 0xffffffaf, 0x80000000, 200); 
TEST_RR_OP( 51 , radd8, 0x84c000c0, 0x89006600, 0x80809a80, 204); 
TEST_RR_OP( 52 , radd8, 0x13bfffc0, 0x70ff0081, 0xb680ff00, 208); 
TEST_RR_OP( 53 , radd8, 0x0000bfae, 0x0000ff80, 0x000080dd, 212); 
TEST_RR_OP( 54 , radd8, 0xc0ffc0bf, 0x80000080, 0x00ff80ff, 216); 
TEST_RR_OP( 55 , radd8, 0x3f3131d4, 0x00ffffa9, 0x7f6364ff, 220); 
TEST_RR_OP( 56 , radd8, 0x9ec095b5, 0x8000abe5, 0xbc808085, 224); 
TEST_RR_OP( 57 , radd8, 0xc0ff3fff, 0x81ff7fff, 0xffffff00, 228); 
TEST_RR_OP( 58 , radd8, 0xff80ffa7, 0x0080ff80, 0xff80ffce, 232); 
TEST_RR_OP( 59 , radd8, 0x3dffedff, 0x000000ff, 0x7bffda00, 236); 
TEST_RR_OP( 60 , radd8, 0xc01fcbff, 0x800097ff, 0x003eff00, 240); 
TEST_RR_OP( 61 , radd8, 0xfff0ffff, 0xffe200ff, 0xffffffff, 244); 
TEST_RR_OP( 62 , radd8, 0xbf800ee7, 0xff801e80, 0x8080ff4e, 248); 
TEST_RR_OP( 63 , radd8, 0xbfff2fea, 0xffff0054, 0x80005e80, 252); 
TEST_RR_OP( 64 , radd8, 0xbfffc0ff, 0x80ff8000, 0xffff00ff, 256); 
TEST_RR_OP( 65 , radd8, 0xc0b6c0d1, 0x00808000, 0x80ec00a3, 260); 
TEST_RR_OP( 66 , radd8, 0xca0effbf, 0x950dffff, 0x000f0080, 264); 
TEST_RR_OP( 67 , radd8, 0xffbfefff, 0x00ff5e00, 0xff8080ff, 268); 
TEST_RR_OP( 68 , radd8, 0xe6bf00ff, 0x4d800000, 0x80ff00ff, 272); 
TEST_RR_OP( 69 , radd8, 0x16298080, 0x2c538080, 0x00008080, 276); 
TEST_RR_OP( 70 , radd8, 0x00c3ffc0, 0x00ff0000, 0x0087ff80, 280); 
TEST_RR_OP( 71 , radd8, 0x80c000ff, 0x80800000, 0x800000ff, 284); 
TEST_RR_OP( 72 , radd8, 0x01cfffbf, 0x029f0080, 0x00ffffff, 288); 
TEST_RR_OP( 73 , radd8, 0xc731a1c0, 0x0e578080, 0x800cc200, 292); 
TEST_RR_OP( 74 , radd8, 0xbfbfbfbf, 0xffffff80, 0x808080ff, 296); 
TEST_RR_OP( 75 , radd8, 0xffff00ff, 0xff0000ff, 0x00ff00ff, 300); 
TEST_RR_OP( 76 , radd8, 0x00ffffbf, 0x00ff00ff, 0x00ffff80, 304); 
TEST_RR_OP( 77 , radd8, 0xc0c0ff87, 0x8080ff8e, 0x00000080, 308); 
TEST_RR_OP( 78 , radd8, 0xbfbfbfff, 0xffffffff, 0x808080ff, 312); 
TEST_RR_OP( 79 , radd8, 0xff00bf00, 0x00008000, 0xff00ff00, 316); 
TEST_RR_OP( 80 , radd8, 0x0036c0f9, 0x001380f3, 0x00590000, 320); 
TEST_RR_OP( 81 , radd8, 0xa5bfbf0a, 0xca808000, 0x80ffff15, 324); 
TEST_RR_OP( 82 , radd8, 0x0fbf8032, 0x1f8080ff, 0xffff8066, 328); 
TEST_RR_OP( 83 , radd8, 0xffff0cec, 0xffff1a80, 0x0000ff59, 332); 
TEST_RR_OP( 84 , radd8, 0x80bf4b2c, 0x80ff4059, 0x808056ff, 336); 
TEST_RR_OP( 85 , radd8, 0xffc0f0e4, 0xff0080c9, 0x00806000, 340); 
TEST_RR_OP( 86 , radd8, 0x00b08214, 0x00e180ff, 0x0080852a, 344); 
TEST_RR_OP( 87 , radd8, 0xc080c0bf, 0x00808080, 0x808000ff, 348); 
TEST_RR_OP( 88 , radd8, 0x35ffbfff, 0x4aff80ff, 0x20ffff00, 352); 
TEST_RR_OP( 89 , radd8, 0xc08026ff, 0x008000ff, 0x80804dff, 356); 
TEST_RR_OP( 90 , radd8, 0xc0efc4e7, 0x00a1894f, 0x803e0080, 360); 
TEST_RR_OP( 91 , radd8, 0x34bf2200, 0x4a80ff00, 0x1eff4500, 364); 
TEST_RR_OP( 92 , radd8, 0x03008816, 0xff0090ff, 0x0700802e, 368); 
TEST_RR_OP( 93 , radd8, 0x842dc000, 0x89438000, 0x80180000, 372); 
TEST_RR_OP( 94 , radd8, 0x1becc0ff, 0x00da80ff, 0x36ff0000, 376); 
TEST_RR_OP( 95 , radd8, 0xe2ff80ff, 0xc6ff80ff, 0xff0080ff, 380); 
TEST_RR_OP( 96 , radd8, 0x00c3bfc0, 0x00008080, 0x0087ff00, 384); 
TEST_RR_OP( 97 , radd8, 0xffc0c6ff, 0xff000dff, 0x00808000, 388); 
TEST_RR_OP( 98 , radd8, 0xc0803ad6, 0x00804000, 0x808035ad, 392); 
TEST_RR_OP( 99 , radd8, 0xc0bfc0bf, 0x80ff82ff, 0x0080ff80, 396); 
TEST_RR_OP( 100 , radd8, 0x000500c0, 0x00000080, 0x000b0000, 400); 
TEST_RR_OP( 101 , radd8, 0x80cc80c0, 0x80ff8000, 0x809a8080, 404); 
TEST_RR_OP( 102 , radd8, 0xc0ff292a, 0x00ff0055, 0x80ff5200, 408); 
TEST_RR_OP( 103 , radd8, 0xff0080c0, 0x00008080, 0xff008000, 412); 
TEST_RR_OP( 104 , radd8, 0xc010c0ee, 0x00ff005d, 0x80228080, 416); 
TEST_RR_OP( 105 , radd8, 0x07bfa6ff, 0x0f80cd00, 0x00ff80ff, 420); 
TEST_RR_OP( 106 , radd8, 0x01ff040a, 0x02000016, 0x00ff08ff, 424); 
TEST_RR_OP( 107 , radd8, 0xcdbfc3bf, 0x9c8080ff, 0xffff0780, 428); 
TEST_RR_OP( 108 , radd8, 0xbfc0d6ff, 0xff802dff, 0x80008000, 432); 
TEST_RR_OP( 109 , radd8, 0x03c0a4cd, 0xff00801b, 0x0880c980, 436); 
TEST_RR_OP( 110 , radd8, 0xc3ff9cc0, 0x07008000, 0x80ffb980, 440); 
TEST_RR_OP( 111 , radd8, 0xeb00ffe4, 0x8000ff00, 0x5700ffc8, 444); 
TEST_RR_OP( 112 , radd8, 0xe8bfbfc0, 0xd0ff8080, 0x0080ff00, 448); 
TEST_RR_OP( 113 , radd8, 0xb8c0ffcc, 0xf18000ff, 0x8000ff9a, 452); 
TEST_RR_OP( 114 , radd8, 0xff37bf29, 0x006f8053, 0xffffffff, 456); 
TEST_RR_OP( 115 , radd8, 0xbfff282f, 0x80005100, 0xffff005f, 460); 
TEST_RR_OP( 116 , radd8, 0x1618c008, 0x2e308011, 0xff0000ff, 464); 
TEST_RR_OP( 117 , radd8, 0xbfbfc0ff, 0x80ff8000, 0xff8000ff, 468); 
TEST_RR_OP( 118 , radd8, 0x809bd9c0, 0x80b73280, 0x80808000, 472); 
TEST_RR_OP( 119 , radd8, 0xbb00e3ff, 0x8000ff00, 0xf700c8ff, 476); 
TEST_RR_OP( 120 , radd8, 0xc080fbff, 0x00808000, 0x808077ff, 480); 
TEST_RR_OP( 121 , radd8, 0xd88000e2, 0x80800080, 0x30800044, 484); 
TEST_RR_OP( 122 , radd8, 0x80ffbfff, 0x80ff80ff, 0x8000ff00, 488); 
TEST_RR_OP( 123 , radd8, 0xfcc0bfc0, 0xf9808000, 0xff00ff80, 492); 
TEST_RR_OP( 124 , radd8, 0xed140000, 0xda290000, 0x00000000, 496); 
TEST_RR_OP( 125 , radd8, 0x24ff06ff, 0x49ffffff, 0xffff0eff, 500); 
TEST_RR_OP( 126 , radd8, 0xc0c0ff03, 0x0080ffff, 0x8000ff08, 504); 
TEST_RR_OP( 127 , radd8, 0x1ce8ffbf, 0x3850ff80, 0x008000ff, 508); 
TEST_RR_OP( 128 , radd8, 0x00c010c0, 0x0000ff80, 0x00802100, 512); 
TEST_RR_OP( 129 , radd8, 0xffbf1962, 0xff803367, 0x00ff005d, 516); 
TEST_RR_OP( 130 , radd8, 0x00c0c2e5, 0x008087ca, 0x0000fe00, 520); 
TEST_RR_OP( 131 , radd8, 0x80ffc0b2, 0x80ff80e4, 0x80ff0080, 524); 
TEST_RR_OP( 132 , radd8, 0xbfc004bc, 0xff0075bf, 0x808093ba, 528); 
TEST_RR_OP( 133 , radd8, 0xc8d5dfff, 0xffffbeff, 0x92ab00ff, 532); 
TEST_RR_OP( 134 , radd8, 0xbfbfc000, 0xff808000, 0x80ff0000, 536); 
TEST_RR_OP( 135 , radd8, 0x0fdf00d9, 0x1fbf0032, 0xffff0080, 540); 
TEST_RR_OP( 136 , radd8, 0x0ebfbfff, 0x1d80ffff, 0x00ff80ff, 544); 
TEST_RR_OP( 137 , radd8, 0xffd3d2bf, 0xff80ffff, 0xff27a680, 548); 
TEST_RR_OP( 138 , radd8, 0xd880dec0, 0x0080ff80, 0xb180be00, 552); 
TEST_RR_OP( 139 , radd8, 0xcdeb2e06, 0x9a565d0c, 0x00800000, 556); 
TEST_RR_OP( 140 , radd8, 0xbfbf0cc2, 0xffffff86, 0x80801aff, 560); 
TEST_RR_OP( 141 , radd8, 0xffc0bf11, 0xff00ff22, 0xff808000, 564); 
TEST_RR_OP( 142 , radd8, 0xffbf80ff, 0x00ff80ff, 0xff8080ff, 568); 
TEST_RR_OP( 143 , radd8, 0x00ffffbf, 0x00ffff80, 0x0000ffff, 572); 
TEST_RR_OP( 144 , radd8, 0xffff1280, 0x0000ff80, 0xffff2580, 576); 
TEST_RR_OP( 145 , radd8, 0xb7ffbfe9, 0xee008053, 0x80ffff80, 580); 
TEST_RR_OP( 146 , radd8, 0xc080aefd, 0x8080ddfc, 0x008080ff, 584); 
TEST_RR_OP( 147 , radd8, 0xaabf10bf, 0x80ff2280, 0xd580ffff, 588); 
TEST_RR_OP( 148 , radd8, 0xd6c0c5df, 0xad008cbf, 0x0080ff00, 592); 
TEST_RR_OP( 149 , radd8, 0x21ff80bf, 0x00ff80ff, 0x42ff8080, 596); 
TEST_RR_OP( 150 , radd8, 0x00c000ff, 0x008000ff, 0x000000ff, 600); 
TEST_RR_OP( 151 , radd8, 0xffc0c01e, 0x0000006c, 0xff8080d1, 604); 
TEST_RR_OP( 152 , radd8, 0x3000a8d9, 0x600080b4, 0x0000d0ff, 608); 
TEST_RR_OP( 153 , radd8, 0xbfdac0bf, 0xffb400ff, 0x80008080, 612); 
TEST_RR_OP( 154 , radd8, 0x063400ae, 0xff6800d2, 0x0e00008b, 616); 
TEST_RR_OP( 155 , radd8, 0xb108c0fb, 0x802c00f7, 0xe2e480ff, 620); 
TEST_RR_OP( 156 , radd8, 0xeb80ffff, 0xd780ffff, 0x0080ffff, 624); 
TEST_RR_OP( 157 , radd8, 0x18bf80c8, 0xff8080ff, 0x32ff8091, 628); 
TEST_RR_OP( 158 , radd8, 0xa1c6c300, 0xc30c0600, 0x80808000, 632); 
TEST_RR_OP( 159 , radd8, 0x0bcf80ff, 0x00ff8000, 0x17a080ff, 636); 
TEST_RR_OP( 160 , radd8, 0xbfc300ff, 0x808600ff, 0xff000000, 640); 
TEST_RR_OP( 161 , radd8, 0xffbfffbf, 0x0080ffff, 0xffff0080, 644); 
TEST_RR_OP( 162 , radd8, 0xffc0bff9, 0xff008073, 0xff80ff80, 648); 
TEST_RR_OP( 163 , radd8, 0x2dc000ff, 0x5b800000, 0xff0000ff, 652); 
TEST_RR_OP( 164 , radd8, 0x00c0bfe3, 0x000080ff, 0x0080ffc7, 656); 
TEST_RR_OP( 165 , radd8, 0x1618bfff, 0xff328000, 0x2dffffff, 660); 
TEST_RR_OP( 166 , radd8, 0xbfaac00f, 0x8080001f, 0xffd48000, 664); 
TEST_RR_OP( 167 , radd8, 0xd791ffab, 0xaf80ff80, 0xffa300d6, 668); 
TEST_RR_OP( 168 , radd8, 0xc080bf0b, 0x0080ff18, 0x808080ff, 672); 
TEST_RR_OP( 169 , radd8, 0x3e803ac1, 0xff800083, 0x7d807400, 676); 
TEST_RR_OP( 170 , radd8, 0xbdc0c0c8, 0x80808091, 0xfb000000, 680); 
TEST_RR_OP( 171 , radd8, 0x00bfff00, 0x00ffff00, 0x0080ff00, 684); 
TEST_RR_OP( 172 , radd8, 0xa90fffbf, 0x801f0080, 0xd3ffffff, 688); 
TEST_RR_OP( 173 , radd8, 0x80d9e5c0, 0x80808080, 0x80324a00, 692); 
TEST_RR_OP( 174 , radd8, 0x80c0bfff, 0x8080ff00, 0x800080ff, 696); 
TEST_RR_OP( 175 , radd8, 0x00bf80bf, 0x00808080, 0x00ff80ff, 700); 
TEST_RR_OP( 176 , radd8, 0x1ec0bfc0, 0x0080ff00, 0x3d008080, 704); 
TEST_RR_OP( 177 , radd8, 0x312ac980, 0x63ff9380, 0x0056ff80, 708); 
TEST_RR_OP( 178 , radd8, 0xc8f1f6ff, 0x00e48000, 0x91ff6cff, 712); 
TEST_RR_OP( 179 , radd8, 0xffc0bfff, 0x00808000, 0xff00ffff, 716); 
TEST_RR_OP( 180 , radd8, 0xff80ff00, 0x0080ff00, 0xff80ff00, 720); 
TEST_RR_OP( 181 , radd8, 0xd90de300, 0xff1a0000, 0xb300c600, 724); 
TEST_RR_OP( 182 , radd8, 0x00c0803d, 0x00808061, 0x0000801a, 728); 
TEST_RR_OP( 183 , radd8, 0xc000bfe4, 0x800080ca, 0x0000ffff, 732); 
TEST_RR_OP( 184 , radd8, 0x9d19ffff, 0x800000ff, 0xbb33ff00, 736); 
TEST_RR_OP( 185 , radd8, 0xffbf00c1, 0x00ff00ff, 0xff800084, 740); 
TEST_RR_OP( 186 , radd8, 0xffbfb8c0, 0xff808000, 0xfffff180, 744); 
TEST_RR_OP( 187 , radd8, 0xc0005fff, 0x80006900, 0x000055ff, 748); 
TEST_RR_OP( 188 , radd8, 0xbfbff2c0, 0xff80e500, 0x80ffff80, 752); 
TEST_RR_OP( 189 , radd8, 0xff2480bf, 0xffff8080, 0x004980ff, 756); 
TEST_RR_OP( 190 , radd8, 0xbfa1c0ff, 0x80c300ff, 0xff8080ff, 760); 
TEST_RR_OP( 191 , radd8, 0xd180bfff, 0xff80ff00, 0xa48080ff, 764); 
TEST_RR_OP( 192 , radd8, 0xbf00bfbf, 0xff00ff80, 0x800080ff, 768); 
TEST_RR_OP( 193 , radd8, 0xc0ffe8c0, 0x80ff8000, 0x00005080, 772); 
TEST_RR_OP( 194 , radd8, 0xc2d2bfff, 0x85a48000, 0x0000ffff, 776); 
TEST_RR_OP( 195 , radd8, 0xd0bfc000, 0xa1800000, 0x00ff8000, 780); 
TEST_RR_OP( 196 , radd8, 0xf380c025, 0x8080804c, 0x668000ff, 784); 
TEST_RR_OP( 197 , radd8, 0xe0f7d200, 0xc1800000, 0x006ea400, 788); 
TEST_RR_OP( 198 , radd8, 0xfffa80dd, 0x000080bb, 0xfff48000, 792); 
TEST_RR_OP( 199 , radd8, 0x00c0ff80, 0x0000ff80, 0x00800080, 796); 

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
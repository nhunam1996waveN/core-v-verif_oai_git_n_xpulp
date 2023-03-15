# See LICENSE for license details.
#*****************************************************************************
# cmpeq8.S
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

TEST_RR_OP( 2 , cmpeq8, 0x00000000, 0xff00e200, 0xd080ff80, 8); 
TEST_RR_OP( 3 , cmpeq8, 0x00000000, 0x0029ff00, 0xff000080, 12); 
TEST_RR_OP( 4 , cmpeq8, 0x00000000, 0xfc00f2ff, 0x0051b400, 16); 
TEST_RR_OP( 5 , cmpeq8, 0x00000000, 0x80a5ff63, 0xff00809d, 20); 
TEST_RR_OP( 6 , cmpeq8, 0x00000000, 0xffb78000, 0x80ffff80, 24); 
TEST_RR_OP( 7 , cmpeq8, 0xff000000, 0x8000aeff, 0x80e78d00, 28); 
TEST_RR_OP( 8 , cmpeq8, 0x00000000, 0xffd7ff80, 0x6d808000, 32); 
TEST_RR_OP( 9 , cmpeq8, 0x000000ff, 0xffda80ff, 0x80ff00ff, 36); 
TEST_RR_OP( 10 , cmpeq8, 0x000000ff, 0xff6bffff, 0xc0ff81ff, 40); 
TEST_RR_OP( 11 , cmpeq8, 0x0000ff00, 0x1df780bd, 0xff7f8000, 44); 
TEST_RR_OP( 12 , cmpeq8, 0x00ff0000, 0xff00ff80, 0x0000cee5, 48); 
TEST_RR_OP( 13 , cmpeq8, 0xff000000, 0x00808080, 0x00ff1200, 52); 
TEST_RR_OP( 14 , cmpeq8, 0x00000000, 0x00800080, 0x80ff80ff, 56); 
TEST_RR_OP( 15 , cmpeq8, 0x00ff0000, 0x078080ff, 0x80800080, 60); 
TEST_RR_OP( 16 , cmpeq8, 0x000000ff, 0x0000ff00, 0xff3c9e00, 64); 
TEST_RR_OP( 17 , cmpeq8, 0x0000ff00, 0xff80ff1e, 0x72ffff00, 68); 
TEST_RR_OP( 18 , cmpeq8, 0x00000000, 0xffff808a, 0x80008a8c, 72); 
TEST_RR_OP( 19 , cmpeq8, 0x00000000, 0x0080fe00, 0xff44b580, 76); 
TEST_RR_OP( 20 , cmpeq8, 0x00000000, 0x66868076, 0x80520065, 80); 
TEST_RR_OP( 21 , cmpeq8, 0x00000000, 0xdd00ffff, 0xff580000, 84); 
TEST_RR_OP( 22 , cmpeq8, 0x0000ffff, 0xff00ff00, 0x1a80ff00, 88); 
TEST_RR_OP( 23 , cmpeq8, 0x0000ffff, 0xbf34ffff, 0x66ffffff, 92); 
TEST_RR_OP( 24 , cmpeq8, 0xff000000, 0xff26ce00, 0xffffe6ff, 96); 
TEST_RR_OP( 25 , cmpeq8, 0x00000000, 0x00ff0080, 0xfff25e9c, 100); 
TEST_RR_OP( 26 , cmpeq8, 0x000000ff, 0x00cea200, 0xd1ff8000, 104); 
TEST_RR_OP( 27 , cmpeq8, 0x00000000, 0x80a1009f, 0x00ff0949, 108); 
TEST_RR_OP( 28 , cmpeq8, 0x00000000, 0x00ff0000, 0x3280ff80, 112); 
TEST_RR_OP( 29 , cmpeq8, 0x00000000, 0x8080e1d2, 0xeb008039, 116); 
TEST_RR_OP( 30 , cmpeq8, 0xff000000, 0xff1d47ff, 0xffffffe3, 120); 
TEST_RR_OP( 31 , cmpeq8, 0x00ff0000, 0x06ffff00, 0x80ff0080, 124); 
TEST_RR_OP( 32 , cmpeq8, 0x000000ff, 0xbdd8ffff, 0x801280ff, 128); 
TEST_RR_OP( 33 , cmpeq8, 0x00000000, 0xffffa980, 0x808048ff, 132); 
TEST_RR_OP( 34 , cmpeq8, 0x00000000, 0x0000ffff, 0x80ffe280, 136); 
TEST_RR_OP( 35 , cmpeq8, 0xff000000, 0x0080ffff, 0x00418f00, 140); 
TEST_RR_OP( 36 , cmpeq8, 0x00ff0000, 0x0080004f, 0x4a80e000, 144); 
TEST_RR_OP( 37 , cmpeq8, 0xff000000, 0x80fffff8, 0x8080802d, 148); 
TEST_RR_OP( 38 , cmpeq8, 0xff000000, 0x80d0f280, 0x80ffffff, 152); 
TEST_RR_OP( 39 , cmpeq8, 0x00000000, 0xff00ffff, 0x69635d00, 156); 
TEST_RR_OP( 40 , cmpeq8, 0x00000000, 0x80ff80ff, 0x668000d9, 160); 
TEST_RR_OP( 41 , cmpeq8, 0x00000000, 0x0000ffa5, 0xff794280, 164); 
TEST_RR_OP( 42 , cmpeq8, 0x0000ff00, 0x00dfff80, 0xff00ffff, 168); 
TEST_RR_OP( 43 , cmpeq8, 0x00000000, 0x87e2ffff, 0x80802f00, 172); 
TEST_RR_OP( 44 , cmpeq8, 0x00000000, 0x8080bfff, 0x0000df00, 176); 
TEST_RR_OP( 45 , cmpeq8, 0xff0000ff, 0x80005c80, 0x806fff80, 180); 
TEST_RR_OP( 46 , cmpeq8, 0x0000ff00, 0x8080ffa6, 0xff77fff5, 184); 
TEST_RR_OP( 47 , cmpeq8, 0x00000000, 0xff806db1, 0x01ff0080, 188); 
TEST_RR_OP( 48 , cmpeq8, 0x000000ff, 0x6e808480, 0x8000ff80, 192); 
TEST_RR_OP( 49 , cmpeq8, 0x00ffffff, 0x70000000, 0x80000000, 196); 
TEST_RR_OP( 50 , cmpeq8, 0x0000ff00, 0xdf000016, 0x80800002, 200); 
TEST_RR_OP( 51 , cmpeq8, 0x00000000, 0xd5f2c580, 0xff80ffff, 204); 
TEST_RR_OP( 52 , cmpeq8, 0xffff0000, 0x0080bf80, 0x008000ff, 208); 
TEST_RR_OP( 53 , cmpeq8, 0x00000000, 0x32ff80e8, 0xff00ffff, 212); 
TEST_RR_OP( 54 , cmpeq8, 0x00ff0000, 0x44008080, 0x000000ff, 216); 
TEST_RR_OP( 55 , cmpeq8, 0xff000000, 0x000080ff, 0x0080007d, 220); 
TEST_RR_OP( 56 , cmpeq8, 0x00000000, 0xdd0074e1, 0x80ff6780, 224); 
TEST_RR_OP( 57 , cmpeq8, 0x0000ff00, 0xff800080, 0x80ff0000, 228); 
TEST_RR_OP( 58 , cmpeq8, 0x00000000, 0x00e790c1, 0xca008000, 232); 
TEST_RR_OP( 59 , cmpeq8, 0x000000ff, 0x80e8ffff, 0x00b680ff, 236); 
TEST_RR_OP( 60 , cmpeq8, 0x0000ff00, 0xff8080ff, 0xfc008080, 240); 
TEST_RR_OP( 61 , cmpeq8, 0xff00ff00, 0xff80ffff, 0xff00ff80, 244); 
TEST_RR_OP( 62 , cmpeq8, 0x000000ff, 0x7a808000, 0x0000ff00, 248); 
TEST_RR_OP( 63 , cmpeq8, 0x00000000, 0x5b008000, 0xff01ffb2, 252); 
TEST_RR_OP( 64 , cmpeq8, 0x00000000, 0x801c0000, 0x10008080, 256); 
TEST_RR_OP( 65 , cmpeq8, 0x0000ff00, 0xff800000, 0x6df000ff, 260); 
TEST_RR_OP( 66 , cmpeq8, 0x00000000, 0xff822c80, 0x00b600ff, 264); 
TEST_RR_OP( 67 , cmpeq8, 0x00000000, 0xa48000ff, 0x80008000, 268); 
TEST_RR_OP( 68 , cmpeq8, 0x00000000, 0xffffff64, 0x95001c80, 272); 
TEST_RR_OP( 69 , cmpeq8, 0x00000000, 0xffff2b00, 0x003b0094, 276); 
TEST_RR_OP( 70 , cmpeq8, 0xffffff00, 0x80ffff00, 0x80ffff80, 280); 
TEST_RR_OP( 71 , cmpeq8, 0x0000ff00, 0x80808000, 0xff6f80f8, 284); 
TEST_RR_OP( 72 , cmpeq8, 0x00000000, 0x80a90000, 0xff496d8d, 288); 
TEST_RR_OP( 73 , cmpeq8, 0x00000000, 0x37800000, 0xff42ffff, 292); 
TEST_RR_OP( 74 , cmpeq8, 0x00000000, 0xc3c880a8, 0x83923b00, 296); 
TEST_RR_OP( 75 , cmpeq8, 0x00000000, 0x008080ff, 0x8000ff00, 300); 
TEST_RR_OP( 76 , cmpeq8, 0x00000000, 0xff97a4ff, 0xfb008000, 304); 
TEST_RR_OP( 77 , cmpeq8, 0x000000ff, 0xff00ffff, 0x1d80ddff, 308); 
TEST_RR_OP( 78 , cmpeq8, 0x0000ff00, 0xff2dff80, 0x00b0ff00, 312); 
TEST_RR_OP( 79 , cmpeq8, 0x00000000, 0xff9affff, 0x003f808b, 316); 
TEST_RR_OP( 80 , cmpeq8, 0xff000000, 0x002780ff, 0x00802b00, 320); 
TEST_RR_OP( 81 , cmpeq8, 0x000000ff, 0x00008080, 0x80ffff80, 324); 
TEST_RR_OP( 82 , cmpeq8, 0x00ff00ff, 0x00ff80ff, 0xffff00ff, 328); 
TEST_RR_OP( 83 , cmpeq8, 0x00ff0000, 0x00ffff00, 0xffff006e, 332); 
TEST_RR_OP( 84 , cmpeq8, 0x00000000, 0xff1d0020, 0x800080ff, 336); 
TEST_RR_OP( 85 , cmpeq8, 0x00000000, 0xf58000cc, 0x006fffff, 340); 
TEST_RR_OP( 86 , cmpeq8, 0xffffff00, 0x0080ffb1, 0x0080ff00, 344); 
TEST_RR_OP( 87 , cmpeq8, 0x0000ff00, 0x84a30000, 0xff8000ff, 348); 
TEST_RR_OP( 88 , cmpeq8, 0xffffff00, 0x00ff00ff, 0x00ff00d1, 352); 
TEST_RR_OP( 89 , cmpeq8, 0xff000000, 0xffffd780, 0xff808000, 356); 
TEST_RR_OP( 90 , cmpeq8, 0x00000000, 0x00001e80, 0x9a800000, 360); 
TEST_RR_OP( 91 , cmpeq8, 0x00000000, 0x00808080, 0xdcff00ff, 364); 
TEST_RR_OP( 92 , cmpeq8, 0x00000000, 0x808d00ff, 0x3e00ff4d, 368); 
TEST_RR_OP( 93 , cmpeq8, 0x00000000, 0xff808000, 0x00ffffff, 372); 
TEST_RR_OP( 94 , cmpeq8, 0x0000ff00, 0xff000080, 0x808000b2, 376); 
TEST_RR_OP( 95 , cmpeq8, 0x000000ff, 0xff0080ff, 0x00ff00ff, 380); 
TEST_RR_OP( 96 , cmpeq8, 0x000000ff, 0xda928000, 0xaa00ff00, 384); 
TEST_RR_OP( 97 , cmpeq8, 0x0000ff00, 0x00ff00f7, 0x80000000, 388); 
TEST_RR_OP( 98 , cmpeq8, 0xff0000ff, 0x0000e080, 0x00800080, 392); 
TEST_RR_OP( 99 , cmpeq8, 0xff0000ff, 0x80ff80ff, 0x8083ffff, 396); 
TEST_RR_OP( 100 , cmpeq8, 0x00000000, 0xffcfab1f, 0x60ff80ff, 400); 
TEST_RR_OP( 101 , cmpeq8, 0x00ff0000, 0xff00ffff, 0x00000000, 404); 
TEST_RR_OP( 102 , cmpeq8, 0x00000000, 0x9301d780, 0xffffff00, 408); 
TEST_RR_OP( 103 , cmpeq8, 0x00ff0000, 0xe0ffc2ff, 0x00ff804e, 412); 
TEST_RR_OP( 104 , cmpeq8, 0x00000000, 0xef4d7cff, 0xff809a00, 416); 
TEST_RR_OP( 105 , cmpeq8, 0x000000ff, 0x5800e100, 0xffd70000, 420); 
TEST_RR_OP( 106 , cmpeq8, 0x000000ff, 0x80825700, 0xf8ff8000, 424); 
TEST_RR_OP( 107 , cmpeq8, 0x00000000, 0x0008ff79, 0xff559480, 428); 
TEST_RR_OP( 108 , cmpeq8, 0x00000000, 0x000480ce, 0xae800000, 432); 
TEST_RR_OP( 109 , cmpeq8, 0x000000ff, 0x00ff8080, 0xff00a480, 436); 
TEST_RR_OP( 110 , cmpeq8, 0x0000ff00, 0xffff0080, 0x80ba00ff, 440); 
TEST_RR_OP( 111 , cmpeq8, 0x00ff0000, 0xdf005200, 0x73000026, 444); 
TEST_RR_OP( 112 , cmpeq8, 0x00000000, 0x80a48080, 0x00ff00af, 448); 
TEST_RR_OP( 113 , cmpeq8, 0x00000000, 0x807100ff, 0x9b80ffed, 452); 
TEST_RR_OP( 114 , cmpeq8, 0x000000ff, 0x80ff80ff, 0x0080ffff, 456); 
TEST_RR_OP( 115 , cmpeq8, 0x00000000, 0xff000ce6, 0x808000ff, 460); 
TEST_RR_OP( 116 , cmpeq8, 0x000000ff, 0x8090c980, 0xa0ff8080, 464); 
TEST_RR_OP( 117 , cmpeq8, 0x0000ff00, 0xff000080, 0x7d800000, 468); 
TEST_RR_OP( 118 , cmpeq8, 0x00000000, 0x808000ff, 0x000c4900, 472); 
TEST_RR_OP( 119 , cmpeq8, 0x0000ff00, 0x11000000, 0xff8000ff, 476); 
TEST_RR_OP( 120 , cmpeq8, 0x00000000, 0x8020ffff, 0x00ffe680, 480); 
TEST_RR_OP( 121 , cmpeq8, 0x000000ff, 0x80ff8000, 0xff801a00, 484); 
TEST_RR_OP( 122 , cmpeq8, 0x00000000, 0xff0b80a2, 0x80260000, 488); 
TEST_RR_OP( 123 , cmpeq8, 0x00000000, 0xffd28000, 0x80000080, 492); 
TEST_RR_OP( 124 , cmpeq8, 0x00ff0000, 0x00000075, 0x8000fcdf, 496); 
TEST_RR_OP( 125 , cmpeq8, 0x00000000, 0x0000ff93, 0x80b7360f, 500); 
TEST_RR_OP( 126 , cmpeq8, 0x0000ff00, 0x00ff0083, 0x02000080, 504); 
TEST_RR_OP( 127 , cmpeq8, 0x00ffff00, 0x800080a7, 0xff008037, 508); 
TEST_RR_OP( 128 , cmpeq8, 0x00000000, 0xff9a5ded, 0x80808000, 512); 
TEST_RR_OP( 129 , cmpeq8, 0x00000000, 0x3effc20f, 0xa7800e00, 516); 
TEST_RR_OP( 130 , cmpeq8, 0xff0000ff, 0x80808080, 0x8028ff80, 520); 
TEST_RR_OP( 131 , cmpeq8, 0x00000000, 0xff5bffff, 0x0098fb80, 524); 
TEST_RR_OP( 132 , cmpeq8, 0x00000000, 0xffc0005d, 0x8000ff00, 528); 
TEST_RR_OP( 133 , cmpeq8, 0xff00ff00, 0x80ffff2b, 0x803bff30, 532); 
TEST_RR_OP( 134 , cmpeq8, 0x00000000, 0xff003900, 0x80ffff74, 536); 
TEST_RR_OP( 135 , cmpeq8, 0x00000000, 0xffff00ff, 0x0000ffc1, 540); 
TEST_RR_OP( 136 , cmpeq8, 0x00ff0000, 0x5a0080ff, 0xff000d2a, 544); 
TEST_RR_OP( 137 , cmpeq8, 0x00ff00ff, 0x00ff00ff, 0x38ff80ff, 548); 
TEST_RR_OP( 138 , cmpeq8, 0x00ffff00, 0xffff00d8, 0x80ff00ff, 552); 
TEST_RR_OP( 139 , cmpeq8, 0x000000ff, 0xff8080ff, 0xe200ffff, 556); 
TEST_RR_OP( 140 , cmpeq8, 0x00000000, 0x80c7ff00, 0xf180ac80, 560); 
TEST_RR_OP( 141 , cmpeq8, 0xffff00ff, 0x00000080, 0x0000ff80, 564); 
TEST_RR_OP( 142 , cmpeq8, 0x00ffff00, 0x00ffff80, 0xffffff00, 568); 
TEST_RR_OP( 143 , cmpeq8, 0x00000000, 0xf60600ff, 0xccffff5f, 572); 
TEST_RR_OP( 144 , cmpeq8, 0x000000ff, 0xff80ffff, 0x00a400ff, 576); 
TEST_RR_OP( 145 , cmpeq8, 0x00000000, 0xff7e804e, 0x0080ffa1, 580); 
TEST_RR_OP( 146 , cmpeq8, 0xffff0000, 0xffff0066, 0xffffff00, 584); 
TEST_RR_OP( 147 , cmpeq8, 0x00000000, 0xff80ff80, 0x860056da, 588); 
TEST_RR_OP( 148 , cmpeq8, 0x0000ff00, 0x50faff00, 0x80ffffff, 592); 
TEST_RR_OP( 149 , cmpeq8, 0x000000ff, 0xff003600, 0x00ff0000, 596); 
TEST_RR_OP( 150 , cmpeq8, 0x00000000, 0x96bc002e, 0xff5cff80, 600); 
TEST_RR_OP( 151 , cmpeq8, 0xff000000, 0x80ffabde, 0x8080009f, 604); 
TEST_RR_OP( 152 , cmpeq8, 0xff000000, 0x8080ff80, 0x80298032, 608); 
TEST_RR_OP( 153 , cmpeq8, 0x000000ff, 0xffff80ff, 0x988000ff, 612); 
TEST_RR_OP( 154 , cmpeq8, 0xff00ff00, 0xffff8000, 0xff0080cc, 616); 
TEST_RR_OP( 155 , cmpeq8, 0x00000000, 0x8092ff00, 0x5d330080, 620); 
TEST_RR_OP( 156 , cmpeq8, 0x00000000, 0xa100b700, 0x80808080, 624); 
TEST_RR_OP( 157 , cmpeq8, 0xff000000, 0x808b0000, 0x80ffff80, 628); 
TEST_RR_OP( 158 , cmpeq8, 0x0000ff00, 0x8044ff3a, 0x00ffffff, 632); 
TEST_RR_OP( 159 , cmpeq8, 0xffff0000, 0x0080ff00, 0x008080ff, 636); 
TEST_RR_OP( 160 , cmpeq8, 0x00ff0000, 0x80ff6f42, 0x77ff0000, 640); 
TEST_RR_OP( 161 , cmpeq8, 0x0000ff00, 0x4e04ff00, 0x00ffffff, 644); 
TEST_RR_OP( 162 , cmpeq8, 0x00000000, 0xff800000, 0x00ffff80, 648); 
TEST_RR_OP( 163 , cmpeq8, 0x00000000, 0xff33ff42, 0x00540000, 652); 
TEST_RR_OP( 164 , cmpeq8, 0x00ff0000, 0x00008000, 0xe5000080, 656); 
TEST_RR_OP( 165 , cmpeq8, 0x00000000, 0xffffffff, 0x00540080, 660); 
TEST_RR_OP( 166 , cmpeq8, 0x00000000, 0x0007ff7f, 0xff000100, 664); 
TEST_RR_OP( 167 , cmpeq8, 0x00ff0000, 0x92008048, 0x0000001a, 668); 
TEST_RR_OP( 168 , cmpeq8, 0x00000000, 0xffff9d80, 0x00bfacff, 672); 
TEST_RR_OP( 169 , cmpeq8, 0x00ff0000, 0x80ff0036, 0x12ffbf00, 676); 
TEST_RR_OP( 170 , cmpeq8, 0x00000000, 0x9bff80ff, 0x00004b00, 680); 
TEST_RR_OP( 171 , cmpeq8, 0x00000000, 0x0050e600, 0x1fff8080, 684); 
TEST_RR_OP( 172 , cmpeq8, 0x00000000, 0x64ff0087, 0x0000ff6f, 688); 
TEST_RR_OP( 173 , cmpeq8, 0x00ffff00, 0x980000ff, 0xff000000, 692); 
TEST_RR_OP( 174 , cmpeq8, 0xffff0000, 0x0000009d, 0x0000ff80, 696); 
TEST_RR_OP( 175 , cmpeq8, 0xff000000, 0x8069ccfb, 0x80004eff, 700); 
TEST_RR_OP( 176 , cmpeq8, 0x00000000, 0x00808000, 0x8002722c, 704); 
TEST_RR_OP( 177 , cmpeq8, 0x00000000, 0xff808000, 0x0000ff80, 708); 
TEST_RR_OP( 178 , cmpeq8, 0x0000ff00, 0x80c600ff, 0x0033009d, 712); 
TEST_RR_OP( 179 , cmpeq8, 0xff0000ff, 0x8083fcff, 0x803e00ff, 716); 
TEST_RR_OP( 180 , cmpeq8, 0x00000000, 0x8080ff00, 0xcd004fcf, 720); 
TEST_RR_OP( 181 , cmpeq8, 0xff00ff00, 0xffff8014, 0xff0080ff, 724); 
TEST_RR_OP( 182 , cmpeq8, 0xff000000, 0x803680ff, 0x80fcff1c, 728); 
TEST_RR_OP( 183 , cmpeq8, 0x00ff0000, 0xbe8000ff, 0x3d80ff00, 732); 
TEST_RR_OP( 184 , cmpeq8, 0xff000000, 0x806c80a5, 0x80007500, 736); 
TEST_RR_OP( 185 , cmpeq8, 0xff000000, 0x80808080, 0x80ff918f, 740); 
TEST_RR_OP( 186 , cmpeq8, 0xff000000, 0x8065ff80, 0x80800000, 744); 
TEST_RR_OP( 187 , cmpeq8, 0x00ff0000, 0xff80ffe1, 0x658080de, 748); 
TEST_RR_OP( 188 , cmpeq8, 0x00000000, 0x003580f2, 0xff67ff00, 752); 
TEST_RR_OP( 189 , cmpeq8, 0x000000ff, 0xffffffff, 0x800080ff, 756); 
TEST_RR_OP( 190 , cmpeq8, 0x00000000, 0x80355b80, 0xff808000, 760); 
TEST_RR_OP( 191 , cmpeq8, 0x00000000, 0x8000beff, 0xff800080, 764); 
TEST_RR_OP( 192 , cmpeq8, 0xff000000, 0x80d8ff00, 0x80ff8085, 768); 
TEST_RR_OP( 193 , cmpeq8, 0x0000ff00, 0x5a00ff00, 0x0080ff80, 772); 
TEST_RR_OP( 194 , cmpeq8, 0xff000000, 0xff8000ff, 0xff3a2100, 776); 
TEST_RR_OP( 195 , cmpeq8, 0xff00ff00, 0x00800000, 0x00ff00ff, 780); 
TEST_RR_OP( 196 , cmpeq8, 0x00ff0000, 0x4f80005d, 0xff80ff80, 784); 
TEST_RR_OP( 197 , cmpeq8, 0xff000000, 0x80804d0a, 0x8000ff80, 788); 
TEST_RR_OP( 198 , cmpeq8, 0x00ff0000, 0x8000ff6d, 0xff0000ff, 792); 
TEST_RR_OP( 199 , cmpeq8, 0x00000000, 0xff655800, 0x8e724431, 796); 

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
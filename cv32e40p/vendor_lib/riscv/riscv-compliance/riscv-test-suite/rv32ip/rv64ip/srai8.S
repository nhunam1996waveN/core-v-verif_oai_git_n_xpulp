# See LICENSE for license details.
#*****************************************************************************
# srai8.S
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

TEST_IMM_OP( 2 , srai8, 0xfe00ff00, 0xaa00ff00, 6 , 8); 
TEST_IMM_OP( 3 , srai8, 0xfefe00ff, 0x808000ff, 6 , 12); 
TEST_IMM_OP( 4 , srai8, 0xff80ff80, 0xff80ff80, 0 , 16); 
TEST_IMM_OP( 5 , srai8, 0xc0fff6c0, 0x80ffec80, 1 , 20); 
TEST_IMM_OP( 6 , srai8, 0x0300f800, 0x37008000, 4 , 24); 
TEST_IMM_OP( 7 , srai8, 0xfefffffe, 0x80dcff80, 6 , 28); 
TEST_IMM_OP( 8 , srai8, 0xfe0000fe, 0x80000086, 6 , 32); 
TEST_IMM_OP( 9 , srai8, 0xffc0c000, 0xff808000, 1 , 36); 
TEST_IMM_OP( 10 , srai8, 0x01fefefe, 0x5d808080, 6 , 40); 
TEST_IMM_OP( 11 , srai8, 0xff001d00, 0xff001d00, 0 , 44); 
TEST_IMM_OP( 12 , srai8, 0x00ff8080, 0x00ff8080, 0 , 48); 
TEST_IMM_OP( 13 , srai8, 0xffff0092, 0xffff0092, 0 , 52); 
TEST_IMM_OP( 14 , srai8, 0x0b00ff00, 0x5f00ff03, 3 , 56); 
TEST_IMM_OP( 15 , srai8, 0x34001bc0, 0x69003680, 1 , 60); 
TEST_IMM_OP( 16 , srai8, 0xffffff6a, 0xffffff6a, 0 , 64); 
TEST_IMM_OP( 17 , srai8, 0xffff00ff, 0xffff02ff, 4 , 68); 
TEST_IMM_OP( 18 , srai8, 0x005eff00, 0x005eff00, 0 , 72); 
TEST_IMM_OP( 19 , srai8, 0x14e0e6e0, 0x51809980, 2 , 76); 
TEST_IMM_OP( 20 , srai8, 0x00fffffc, 0x00ffff80, 5 , 80); 
TEST_IMM_OP( 21 , srai8, 0xe0e0e0ff, 0x808080ff, 2 , 84); 
TEST_IMM_OP( 22 , srai8, 0xfcff00fc, 0x9eff0080, 5 , 88); 
TEST_IMM_OP( 23 , srai8, 0xffff00fc, 0xe7eb0080, 5 , 92); 
TEST_IMM_OP( 24 , srai8, 0xff0001fe, 0xff007780, 6 , 96); 
TEST_IMM_OP( 25 , srai8, 0x00000001, 0x081b004d, 6 , 100); 
TEST_IMM_OP( 26 , srai8, 0x9e00ffff, 0x9e00ffff, 0 , 104); 
TEST_IMM_OP( 27 , srai8, 0xff0202ff, 0xff272dff, 4 , 108); 
TEST_IMM_OP( 28 , srai8, 0xff00fcff, 0xff0080ff, 5 , 112); 
TEST_IMM_OP( 29 , srai8, 0x80000080, 0x80000080, 0 , 116); 
TEST_IMM_OP( 30 , srai8, 0x00fe00ff, 0x008000ff, 6 , 120); 
TEST_IMM_OP( 31 , srai8, 0xc0ffff34, 0x80ffff68, 1 , 124); 
TEST_IMM_OP( 32 , srai8, 0x00c0003c, 0x00800079, 1 , 128); 
TEST_IMM_OP( 33 , srai8, 0x84800000, 0x84800000, 0 , 132); 
TEST_IMM_OP( 34 , srai8, 0xfffcfcfe, 0xe98080ce, 5 , 136); 
TEST_IMM_OP( 35 , srai8, 0xff00e0e0, 0xff008080, 2 , 140); 
TEST_IMM_OP( 36 , srai8, 0x00ff01fc, 0x00ff2f80, 5 , 144); 
TEST_IMM_OP( 37 , srai8, 0xc0c0ff0d, 0x8080ff1b, 1 , 148); 
TEST_IMM_OP( 38 , srai8, 0xf0e0ff00, 0xc380ff00, 2 , 152); 
TEST_IMM_OP( 39 , srai8, 0xf00304ff, 0x801a23ff, 3 , 156); 
TEST_IMM_OP( 40 , srai8, 0xff00fffe, 0xff00ff80, 6 , 160); 
TEST_IMM_OP( 41 , srai8, 0xf0fffff7, 0x80ffffbf, 3 , 164); 
TEST_IMM_OP( 42 , srai8, 0xc0240000, 0x80490000, 1 , 168); 
TEST_IMM_OP( 43 , srai8, 0x8080f687, 0x8080f687, 0 , 172); 
TEST_IMM_OP( 44 , srai8, 0xfeffffff, 0x80ffcfe9, 6 , 176); 
TEST_IMM_OP( 45 , srai8, 0xfff8ffff, 0xff80ffff, 4 , 180); 
TEST_IMM_OP( 46 , srai8, 0x6d003980, 0x6d003980, 0 , 184); 
TEST_IMM_OP( 47 , srai8, 0x0008ff09, 0x0046ff48, 3 , 188); 
TEST_IMM_OP( 48 , srai8, 0xff00f0f0, 0xff008780, 3 , 192); 
TEST_IMM_OP( 49 , srai8, 0x80001580, 0x80001580, 0 , 196); 
TEST_IMM_OP( 50 , srai8, 0xd2808000, 0xd2808000, 0 , 200); 
TEST_IMM_OP( 51 , srai8, 0xfef00000, 0xf4800000, 3 , 204); 
TEST_IMM_OP( 52 , srai8, 0xffffff00, 0xffffff00, 5 , 208); 
TEST_IMM_OP( 53 , srai8, 0x0080ab00, 0x0080ab00, 0 , 212); 
TEST_IMM_OP( 54 , srai8, 0xff8000ff, 0xff8000ff, 0 , 216); 
TEST_IMM_OP( 55 , srai8, 0x00ffe016, 0x00ff8059, 2 , 220); 
TEST_IMM_OP( 56 , srai8, 0x001918e0, 0x00676180, 2 , 224); 
TEST_IMM_OP( 57 , srai8, 0x00ff00ff, 0x00ff00ff, 2 , 228); 
TEST_IMM_OP( 58 , srai8, 0x000000ff, 0x000000ff, 0 , 232); 
TEST_IMM_OP( 59 , srai8, 0xff493880, 0xff493880, 0 , 236); 
TEST_IMM_OP( 60 , srai8, 0x00f0ffff, 0x0080ffff, 3 , 240); 
TEST_IMM_OP( 61 , srai8, 0xf8fffdff, 0x80ffdeff, 4 , 244); 
TEST_IMM_OP( 62 , srai8, 0x80ff8061, 0x80ff8061, 0 , 248); 
TEST_IMM_OP( 63 , srai8, 0x8fffffff, 0x8fffffff, 0 , 252); 
TEST_IMM_OP( 64 , srai8, 0x0001fe00, 0x004c8034, 6 , 256); 
TEST_IMM_OP( 65 , srai8, 0xc0c0e1f6, 0x8080c2ed, 1 , 260); 
TEST_IMM_OP( 66 , srai8, 0xffffffff, 0xffffffff, 0 , 264); 
TEST_IMM_OP( 67 , srai8, 0xe0ff0000, 0x80ff0000, 2 , 268); 
TEST_IMM_OP( 68 , srai8, 0x1bf3e000, 0x6fcd8000, 2 , 272); 
TEST_IMM_OP( 69 , srai8, 0xff001e01, 0xff007807, 2 , 276); 
TEST_IMM_OP( 70 , srai8, 0xc0c0f2c0, 0x8080e480, 1 , 280); 
TEST_IMM_OP( 71 , srai8, 0x00fffffe, 0x00ffff95, 6 , 284); 
TEST_IMM_OP( 72 , srai8, 0xffc02dc0, 0xff805b80, 1 , 288); 
TEST_IMM_OP( 73 , srai8, 0xff000080, 0xff000080, 0 , 292); 
TEST_IMM_OP( 74 , srai8, 0x0dff0000, 0x6bff0000, 3 , 296); 
TEST_IMM_OP( 75 , srai8, 0xf9f802ff, 0x998023ff, 4 , 300); 
TEST_IMM_OP( 76 , srai8, 0xfc0002fc, 0x8f004e80, 5 , 304); 
TEST_IMM_OP( 77 , srai8, 0xf0f0f0ff, 0x808080ff, 3 , 308); 
TEST_IMM_OP( 78 , srai8, 0x0000c0ee, 0x000080dc, 1 , 312); 
TEST_IMM_OP( 79 , srai8, 0xffff8080, 0xffff8080, 0 , 316); 
TEST_IMM_OP( 80 , srai8, 0xfeff00ff, 0x80ff00ff, 6 , 320); 
TEST_IMM_OP( 81 , srai8, 0x0014ffc1, 0x0028ff82, 1 , 324); 
TEST_IMM_OP( 82 , srai8, 0x0000fffc, 0x0000ff80, 5 , 328); 
TEST_IMM_OP( 83 , srai8, 0x8bff0080, 0x8bff0080, 0 , 332); 
TEST_IMM_OP( 84 , srai8, 0x0029fff6, 0x0029fff6, 0 , 336); 
TEST_IMM_OP( 85 , srai8, 0x00000008, 0x00000040, 3 , 340); 
TEST_IMM_OP( 86 , srai8, 0xf700e0f2, 0xdc0080cb, 2 , 344); 
TEST_IMM_OP( 87 , srai8, 0xe0e0f7f4, 0x8080dfd2, 2 , 348); 
TEST_IMM_OP( 88 , srai8, 0x00000103, 0x00000d1a, 3 , 352); 
TEST_IMM_OP( 89 , srai8, 0xf0f0f2f0, 0x80809580, 3 , 356); 
TEST_IMM_OP( 90 , srai8, 0xfc00fcfd, 0x800080b8, 5 , 360); 
TEST_IMM_OP( 91 , srai8, 0x87ff0000, 0x87ff0000, 0 , 364); 
TEST_IMM_OP( 92 , srai8, 0x0000f800, 0x08008000, 4 , 368); 
TEST_IMM_OP( 93 , srai8, 0xff00ff00, 0xff00ff00, 5 , 372); 
TEST_IMM_OP( 94 , srai8, 0xfc8048ff, 0xfc8048ff, 0 , 376); 
TEST_IMM_OP( 95 , srai8, 0x00d680ff, 0x00d680ff, 0 , 380); 
TEST_IMM_OP( 96 , srai8, 0xffffffff, 0xffffffff, 4 , 384); 
TEST_IMM_OP( 97 , srai8, 0xfcfc00fc, 0x80801d80, 5 , 388); 
TEST_IMM_OP( 98 , srai8, 0xf8fffef8, 0x80ffe680, 4 , 392); 
TEST_IMM_OP( 99 , srai8, 0x03f806f8, 0x3a806380, 4 , 396); 
TEST_IMM_OP( 100 , srai8, 0xfffe0000, 0xff800000, 6 , 400); 
TEST_IMM_OP( 101 , srai8, 0x00fcff00, 0x0080ff00, 5 , 404); 
TEST_IMM_OP( 102 , srai8, 0xd2c2ce00, 0xa4849c00, 1 , 408); 
TEST_IMM_OP( 103 , srai8, 0xffe000eb, 0xff8000ae, 2 , 412); 
TEST_IMM_OP( 104 , srai8, 0xf00000f0, 0x80000080, 3 , 416); 
TEST_IMM_OP( 105 , srai8, 0xfff80006, 0xff800067, 4 , 420); 
TEST_IMM_OP( 106 , srai8, 0x1af3ffe0, 0x69ccff80, 2 , 424); 
TEST_IMM_OP( 107 , srai8, 0xf000f6f0, 0x8000b580, 3 , 428); 
TEST_IMM_OP( 108 , srai8, 0xffff02f8, 0xffff2180, 4 , 432); 
TEST_IMM_OP( 109 , srai8, 0x0000fff0, 0x0000ff80, 3 , 436); 
TEST_IMM_OP( 110 , srai8, 0x01feffff, 0x7980c6dc, 6 , 440); 
TEST_IMM_OP( 111 , srai8, 0xfcfffc00, 0x80ff8000, 5 , 444); 
TEST_IMM_OP( 112 , srai8, 0xeadac0ff, 0xd5b580ff, 1 , 448); 
TEST_IMM_OP( 113 , srai8, 0x00808000, 0x00808000, 0 , 452); 
TEST_IMM_OP( 114 , srai8, 0x44004521, 0x44004521, 0 , 456); 
TEST_IMM_OP( 115 , srai8, 0x00fc00ff, 0x008000ff, 5 , 460); 
TEST_IMM_OP( 116 , srai8, 0xfc00fffc, 0x8000ff80, 5 , 464); 
TEST_IMM_OP( 117 , srai8, 0xffffffff, 0xffffffff, 3 , 468); 
TEST_IMM_OP( 118 , srai8, 0xc0ff00ff, 0x80ff00ff, 1 , 472); 
TEST_IMM_OP( 119 , srai8, 0xf0f0ff06, 0x8080ff32, 3 , 476); 
TEST_IMM_OP( 120 , srai8, 0xff00fffe, 0xd200d180, 6 , 480); 
TEST_IMM_OP( 121 , srai8, 0xbdff0005, 0xbdff0005, 0 , 484); 
TEST_IMM_OP( 122 , srai8, 0x00fffefe, 0x00ff8080, 6 , 488); 
TEST_IMM_OP( 123 , srai8, 0x00ffff00, 0x00ffff00, 2 , 492); 
TEST_IMM_OP( 124 , srai8, 0x0d00f009, 0x69008049, 3 , 496); 
TEST_IMM_OP( 125 , srai8, 0xff00e0ff, 0xff0080ff, 2 , 500); 
TEST_IMM_OP( 126 , srai8, 0xffe000e0, 0xff800080, 2 , 504); 
TEST_IMM_OP( 127 , srai8, 0x18e0ff01, 0x6080ff05, 2 , 508); 
TEST_IMM_OP( 128 , srai8, 0xffff00fe, 0xffff0080, 6 , 512); 
TEST_IMM_OP( 129 , srai8, 0x00c0ff0b, 0x0080ff16, 1 , 516); 
TEST_IMM_OP( 130 , srai8, 0xf800f8f8, 0x80008080, 4 , 520); 
TEST_IMM_OP( 131 , srai8, 0xfeff00fe, 0x80ff0093, 6 , 524); 
TEST_IMM_OP( 132 , srai8, 0x0000fe00, 0x00008000, 6 , 528); 
TEST_IMM_OP( 133 , srai8, 0x00000000, 0x00000000, 1 , 532); 
TEST_IMM_OP( 134 , srai8, 0xff80ff80, 0xff80ff80, 0 , 536); 
TEST_IMM_OP( 135 , srai8, 0xfefffefe, 0xb2ff8080, 6 , 540); 
TEST_IMM_OP( 136 , srai8, 0xff01ff00, 0xff77ff1c, 6 , 544); 
TEST_IMM_OP( 137 , srai8, 0x0000f0f0, 0x00008080, 3 , 548); 
TEST_IMM_OP( 138 , srai8, 0xf0f100f8, 0x808b00c6, 3 , 552); 
TEST_IMM_OP( 139 , srai8, 0xc0c0c000, 0x80808000, 1 , 556); 
TEST_IMM_OP( 140 , srai8, 0xff0200ff, 0xff4400ff, 5 , 560); 
TEST_IMM_OP( 141 , srai8, 0xff00ffff, 0xff00ffff, 6 , 564); 
TEST_IMM_OP( 142 , srai8, 0x00ffff01, 0x00ffff79, 6 , 568); 
TEST_IMM_OP( 143 , srai8, 0x06f8f8f8, 0x6a808080, 4 , 572); 
TEST_IMM_OP( 144 , srai8, 0xff80ffff, 0xff80ffff, 0 , 576); 
TEST_IMM_OP( 145 , srai8, 0xff0ffff0, 0xff7bff80, 3 , 580); 
TEST_IMM_OP( 146 , srai8, 0x00f803f8, 0x00803b80, 4 , 584); 
TEST_IMM_OP( 147 , srai8, 0xc026c0c0, 0x804d8080, 1 , 588); 
TEST_IMM_OP( 148 , srai8, 0xffc000c0, 0xff800080, 1 , 592); 
TEST_IMM_OP( 149 , srai8, 0x00fc0002, 0x1480005d, 5 , 596); 
TEST_IMM_OP( 150 , srai8, 0xffff00ff, 0xffff00ff, 5 , 600); 
TEST_IMM_OP( 151 , srai8, 0xffff0033, 0xffff0067, 1 , 604); 
TEST_IMM_OP( 152 , srai8, 0x80ffaa00, 0x80ffaa00, 0 , 608); 
TEST_IMM_OP( 153 , srai8, 0xffffff13, 0xffffff13, 0 , 612); 
TEST_IMM_OP( 154 , srai8, 0x0000fffc, 0x0000ff80, 5 , 616); 
TEST_IMM_OP( 155 , srai8, 0xf000ff00, 0x8200ff00, 3 , 620); 
TEST_IMM_OP( 156 , srai8, 0x36800080, 0x36800080, 0 , 624); 
TEST_IMM_OP( 157 , srai8, 0x00ff80ab, 0x00ff80ab, 0 , 628); 
TEST_IMM_OP( 158 , srai8, 0x00ffff00, 0x00ffff00, 2 , 632); 
TEST_IMM_OP( 159 , srai8, 0xffc01f00, 0xff803f00, 1 , 636); 
TEST_IMM_OP( 160 , srai8, 0x00fcfcff, 0x009980ff, 5 , 640); 
TEST_IMM_OP( 161 , srai8, 0xda07f800, 0xda07f800, 0 , 644); 
TEST_IMM_OP( 162 , srai8, 0x8080ff00, 0x8080ff00, 0 , 648); 
TEST_IMM_OP( 163 , srai8, 0x070eff0f, 0x1e3aff3e, 2 , 652); 
TEST_IMM_OP( 164 , srai8, 0x01fefeff, 0x5e8080ff, 6 , 656); 
TEST_IMM_OP( 165 , srai8, 0x00fcff00, 0x0080ff00, 5 , 660); 
TEST_IMM_OP( 166 , srai8, 0xff09000a, 0xff4f0056, 3 , 664); 
TEST_IMM_OP( 167 , srai8, 0xfe00fefe, 0x80008080, 6 , 668); 
TEST_IMM_OP( 168 , srai8, 0xffc0f62f, 0xff80ed5e, 1 , 672); 
TEST_IMM_OP( 169 , srai8, 0x1de0ff00, 0x7580ff00, 2 , 676); 
TEST_IMM_OP( 170 , srai8, 0xfbf803f9, 0xb48b339d, 4 , 680); 
TEST_IMM_OP( 171 , srai8, 0x31d60e00, 0x62ac1c00, 1 , 684); 
TEST_IMM_OP( 172 , srai8, 0x0034ffc0, 0x0069ff80, 1 , 688); 
TEST_IMM_OP( 173 , srai8, 0x00fff5c0, 0x00ffea80, 1 , 692); 
TEST_IMM_OP( 174 , srai8, 0x80440080, 0x80440080, 0 , 696); 
TEST_IMM_OP( 175 , srai8, 0xc0ffff00, 0x80ffff00, 1 , 700); 
TEST_IMM_OP( 176 , srai8, 0x00f00000, 0x00800000, 3 , 704); 
TEST_IMM_OP( 177 , srai8, 0xff8043ff, 0xff8043ff, 0 , 708); 
TEST_IMM_OP( 178 , srai8, 0x000000ff, 0x000000ff, 5 , 712); 
TEST_IMM_OP( 179 , srai8, 0x00fcfffc, 0x0080ff80, 5 , 716); 
TEST_IMM_OP( 180 , srai8, 0xfe06ff00, 0xe96eff00, 4 , 720); 
TEST_IMM_OP( 181 , srai8, 0x00d00000, 0x00d00000, 0 , 724); 
TEST_IMM_OP( 182 , srai8, 0x0200fff8, 0x2d00fa80, 4 , 728); 
TEST_IMM_OP( 183 , srai8, 0xf0f206ff, 0x809032ff, 3 , 732); 
TEST_IMM_OP( 184 , srai8, 0xff0008ff, 0xff0041ff, 3 , 736); 
TEST_IMM_OP( 185 , srai8, 0xffffff00, 0xffffff00, 4 , 740); 
TEST_IMM_OP( 186 , srai8, 0x0000c000, 0x00008000, 1 , 744); 
TEST_IMM_OP( 187 , srai8, 0xff02ffff, 0xff54e7ff, 5 , 748); 
TEST_IMM_OP( 188 , srai8, 0x0000feff, 0x003280ff, 6 , 752); 
TEST_IMM_OP( 189 , srai8, 0x00ff00da, 0x00ff00b5, 1 , 756); 
TEST_IMM_OP( 190 , srai8, 0x000000e0, 0x00000080, 2 , 760); 
TEST_IMM_OP( 191 , srai8, 0xc00207ff, 0x80040eff, 1 , 764); 
TEST_IMM_OP( 192 , srai8, 0x00ff00ff, 0x00ff00ff, 2 , 768); 
TEST_IMM_OP( 193 , srai8, 0xffe019ed, 0xff8067b4, 2 , 772); 
TEST_IMM_OP( 194 , srai8, 0xfffdffff, 0xffa4eaff, 5 , 776); 
TEST_IMM_OP( 195 , srai8, 0xf8f9ffff, 0x8093ffff, 4 , 780); 
TEST_IMM_OP( 196 , srai8, 0xff28807e, 0xff28807e, 0 , 784); 
TEST_IMM_OP( 197 , srai8, 0x0000c0ff, 0x000080ff, 1 , 788); 
TEST_IMM_OP( 198 , srai8, 0xdfffd8ff, 0xbfffb0ff, 1 , 792); 
TEST_IMM_OP( 199 , srai8, 0xfefffeff, 0x8ad180ff, 6 , 796); 

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
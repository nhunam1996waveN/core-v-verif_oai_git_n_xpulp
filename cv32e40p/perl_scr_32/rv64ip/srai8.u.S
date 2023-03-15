# See LICENSE for license details.
#*****************************************************************************
# srai8.u.S
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

TEST_IMM_OP( 2 , srai8.u, 0x00ff00ff, 0x00d9ffa5, 6 , 8); 
TEST_IMM_OP( 3 , srai8.u, 0x000204f8, 0x001c4680, 4 , 12); 
TEST_IMM_OP( 4 , srai8.u, 0xf30000e0, 0xcbff0080, 2 , 16); 
TEST_IMM_OP( 5 , srai8.u, 0x00fcfc00, 0x00808000, 5 , 20); 
TEST_IMM_OP( 6 , srai8.u, 0x0000fefe, 0x00ff8080, 6 , 24); 
TEST_IMM_OP( 7 , srai8.u, 0x50a10076, 0x50a10076, 0 , 28); 
TEST_IMM_OP( 8 , srai8.u, 0x0000fc00, 0x00ff80ff, 5 , 32); 
TEST_IMM_OP( 9 , srai8.u, 0xfcfcfefc, 0x8080cd80, 5 , 36); 
TEST_IMM_OP( 10 , srai8.u, 0xc000c016, 0x8000802c, 1 , 40); 
TEST_IMM_OP( 11 , srai8.u, 0xfc00f0f0, 0xe0ff8080, 3 , 44); 
TEST_IMM_OP( 12 , srai8.u, 0x0208f000, 0x0e438000, 3 , 48); 
TEST_IMM_OP( 13 , srai8.u, 0xf0f000f0, 0x80800080, 3 , 52); 
TEST_IMM_OP( 14 , srai8.u, 0x00c000c0, 0xff80ff80, 1 , 56); 
TEST_IMM_OP( 15 , srai8.u, 0x13ef00e0, 0x4cbc0080, 2 , 60); 
TEST_IMM_OP( 16 , srai8.u, 0xe0000000, 0x80ff0000, 2 , 64); 
TEST_IMM_OP( 17 , srai8.u, 0x00e0e000, 0xff808000, 2 , 68); 
TEST_IMM_OP( 18 , srai8.u, 0x00f0f000, 0x00808000, 3 , 72); 
TEST_IMM_OP( 19 , srai8.u, 0x00fcfc00, 0x00808000, 5 , 76); 
TEST_IMM_OP( 20 , srai8.u, 0x3200ce00, 0x64009c00, 1 , 80); 
TEST_IMM_OP( 21 , srai8.u, 0x00f8f8f8, 0x00808080, 4 , 84); 
TEST_IMM_OP( 22 , srai8.u, 0x00e000e0, 0xff800080, 2 , 88); 
TEST_IMM_OP( 23 , srai8.u, 0xf8fa0000, 0x80990000, 4 , 92); 
TEST_IMM_OP( 24 , srai8.u, 0xfe00ff00, 0x80ffaa00, 6 , 96); 
TEST_IMM_OP( 25 , srai8.u, 0xe0e0e7e0, 0x80809b80, 2 , 100); 
TEST_IMM_OP( 26 , srai8.u, 0xe2c0c000, 0xc3808000, 1 , 104); 
TEST_IMM_OP( 27 , srai8.u, 0x00000000, 0x00ff00ff, 1 , 108); 
TEST_IMM_OP( 28 , srai8.u, 0xfb00fbf8, 0xb000ac80, 4 , 112); 
TEST_IMM_OP( 29 , srai8.u, 0xf8fb00f8, 0x80b70080, 4 , 116); 
TEST_IMM_OP( 30 , srai8.u, 0x0000f800, 0xffff8000, 4 , 120); 
TEST_IMM_OP( 31 , srai8.u, 0x007a0000, 0x007a0000, 0 , 124); 
TEST_IMM_OP( 32 , srai8.u, 0xfe0000f6, 0xedffffb3, 3 , 128); 
TEST_IMM_OP( 33 , srai8.u, 0x00f9000b, 0xffc7ff5b, 3 , 132); 
TEST_IMM_OP( 34 , srai8.u, 0xfefefe00, 0x80808000, 6 , 136); 
TEST_IMM_OP( 35 , srai8.u, 0x00fe0000, 0xe180ff00, 6 , 140); 
TEST_IMM_OP( 36 , srai8.u, 0xfff000f0, 0xfa800080, 3 , 144); 
TEST_IMM_OP( 37 , srai8.u, 0xf8000000, 0x80ff0000, 4 , 148); 
TEST_IMM_OP( 38 , srai8.u, 0x0000fc00, 0x00ff80ff, 5 , 152); 
TEST_IMM_OP( 39 , srai8.u, 0x000400f8, 0xff47ff80, 4 , 156); 
TEST_IMM_OP( 40 , srai8.u, 0x0000fcfc, 0xff008080, 5 , 160); 
TEST_IMM_OP( 41 , srai8.u, 0x21ff0080, 0x21ff0080, 0 , 164); 
TEST_IMM_OP( 42 , srai8.u, 0xf0f80000, 0x80bcff00, 3 , 168); 
TEST_IMM_OP( 43 , srai8.u, 0xf8f80600, 0x80805900, 4 , 172); 
TEST_IMM_OP( 44 , srai8.u, 0x0000ff00, 0x00ffbfff, 6 , 176); 
TEST_IMM_OP( 45 , srai8.u, 0x07d300c0, 0x0da6ff80, 1 , 180); 
TEST_IMM_OP( 46 , srai8.u, 0x00f8f8f8, 0x00808080, 4 , 184); 
TEST_IMM_OP( 47 , srai8.u, 0x00000000, 0x00ffff00, 4 , 188); 
TEST_IMM_OP( 48 , srai8.u, 0x0100fefe, 0x3c00808c, 6 , 192); 
TEST_IMM_OP( 49 , srai8.u, 0x0880ff00, 0x0880ff00, 0 , 196); 
TEST_IMM_OP( 50 , srai8.u, 0x000000fc, 0x00ff00c0, 4 , 200); 
TEST_IMM_OP( 51 , srai8.u, 0x00f80003, 0x00800030, 4 , 204); 
TEST_IMM_OP( 52 , srai8.u, 0xe000e000, 0x800080ff, 2 , 208); 
TEST_IMM_OP( 53 , srai8.u, 0x0900f000, 0x45ff8000, 3 , 212); 
TEST_IMM_OP( 54 , srai8.u, 0xfffffe00, 0xb6c38000, 6 , 216); 
TEST_IMM_OP( 55 , srai8.u, 0xf8f80000, 0x80800000, 4 , 220); 
TEST_IMM_OP( 56 , srai8.u, 0xf00c0000, 0x8062ffff, 3 , 224); 
TEST_IMM_OP( 57 , srai8.u, 0xfcff00fc, 0x80ecff80, 5 , 228); 
TEST_IMM_OP( 58 , srai8.u, 0xffd780ff, 0xffd780ff, 0 , 232); 
TEST_IMM_OP( 59 , srai8.u, 0x0000fc00, 0x00ff8000, 5 , 236); 
TEST_IMM_OP( 60 , srai8.u, 0xfcfc00fc, 0x8085ff80, 5 , 240); 
TEST_IMM_OP( 61 , srai8.u, 0x00050001, 0x00270008, 3 , 244); 
TEST_IMM_OP( 62 , srai8.u, 0xf0000000, 0x8000ff00, 3 , 248); 
TEST_IMM_OP( 63 , srai8.u, 0x0000e000, 0x00ff80ff, 2 , 252); 
TEST_IMM_OP( 64 , srai8.u, 0x0000fe00, 0xff00c400, 5 , 256); 
TEST_IMM_OP( 65 , srai8.u, 0x0000fc00, 0xff0080ff, 5 , 260); 
TEST_IMM_OP( 66 , srai8.u, 0xff00fe01, 0xd0008042, 6 , 264); 
TEST_IMM_OP( 67 , srai8.u, 0x00ff8000, 0x00ff8000, 0 , 268); 
TEST_IMM_OP( 68 , srai8.u, 0x00000000, 0x00ff0000, 1 , 272); 
TEST_IMM_OP( 69 , srai8.u, 0xe0001900, 0x80006300, 2 , 276); 
TEST_IMM_OP( 70 , srai8.u, 0x000000c0, 0x0000ff80, 1 , 280); 
TEST_IMM_OP( 71 , srai8.u, 0x00002700, 0x00ff4eff, 1 , 284); 
TEST_IMM_OP( 72 , srai8.u, 0xc0c0c000, 0x808080ff, 1 , 288); 
TEST_IMM_OP( 73 , srai8.u, 0xffff0080, 0xffff0080, 0 , 292); 
TEST_IMM_OP( 74 , srai8.u, 0x00010100, 0xff3b3eff, 6 , 296); 
TEST_IMM_OP( 75 , srai8.u, 0xe0eae000, 0x80a78000, 2 , 300); 
TEST_IMM_OP( 76 , srai8.u, 0x0200fe00, 0x74ff80ff, 6 , 304); 
TEST_IMM_OP( 77 , srai8.u, 0x00000001, 0xffff002d, 5 , 308); 
TEST_IMM_OP( 78 , srai8.u, 0x06ff6bed, 0x06ff6bed, 0 , 312); 
TEST_IMM_OP( 79 , srai8.u, 0xe0e0e0e0, 0x80808080, 2 , 316); 
TEST_IMM_OP( 80 , srai8.u, 0xf0f00000, 0x80800000, 3 , 320); 
TEST_IMM_OP( 81 , srai8.u, 0x0000e0e0, 0xff008080, 2 , 324); 
TEST_IMM_OP( 82 , srai8.u, 0xe007e017, 0x801b805d, 2 , 328); 
TEST_IMM_OP( 83 , srai8.u, 0xc0140000, 0x8027ff00, 1 , 332); 
TEST_IMM_OP( 84 , srai8.u, 0x809280ff, 0x809280ff, 0 , 336); 
TEST_IMM_OP( 85 , srai8.u, 0x00fefe00, 0x008080e8, 6 , 340); 
TEST_IMM_OP( 86 , srai8.u, 0xfffc0000, 0xe58000ff, 5 , 344); 
TEST_IMM_OP( 87 , srai8.u, 0x20e000e0, 0x7e800080, 2 , 348); 
TEST_IMM_OP( 88 , srai8.u, 0xff000000, 0xddffec00, 6 , 352); 
TEST_IMM_OP( 89 , srai8.u, 0x0080ffff, 0x0080ffff, 0 , 356); 
TEST_IMM_OP( 90 , srai8.u, 0x8000ff24, 0x8000ff24, 0 , 360); 
TEST_IMM_OP( 91 , srai8.u, 0xe000e0e0, 0x80008080, 2 , 364); 
TEST_IMM_OP( 92 , srai8.u, 0x00f0f000, 0x008080ff, 3 , 368); 
TEST_IMM_OP( 93 , srai8.u, 0x00ff0100, 0x00b62dff, 6 , 372); 
TEST_IMM_OP( 94 , srai8.u, 0x0000e200, 0x00ffc4ff, 1 , 376); 
TEST_IMM_OP( 95 , srai8.u, 0x040000f8, 0x3bff0080, 4 , 380); 
TEST_IMM_OP( 96 , srai8.u, 0x02fe0001, 0x63880039, 6 , 384); 
TEST_IMM_OP( 97 , srai8.u, 0x00f50000, 0x00d4ff00, 2 , 388); 
TEST_IMM_OP( 98 , srai8.u, 0x0000fcf8, 0xff00c180, 4 , 392); 
TEST_IMM_OP( 99 , srai8.u, 0x01000000, 0x0200ff00, 2 , 396); 
TEST_IMM_OP( 100 , srai8.u, 0x0000c03e, 0xffff807b, 1 , 400); 
TEST_IMM_OP( 101 , srai8.u, 0x2bc0dec0, 0x5680bc80, 1 , 404); 
TEST_IMM_OP( 102 , srai8.u, 0x0003fc00, 0xff6c8000, 5 , 408); 
TEST_IMM_OP( 103 , srai8.u, 0x00000003, 0x03ffff63, 5 , 412); 
TEST_IMM_OP( 104 , srai8.u, 0x00fefe00, 0xff808000, 6 , 416); 
TEST_IMM_OP( 105 , srai8.u, 0xfcf800f8, 0xc3800080, 4 , 420); 
TEST_IMM_OP( 106 , srai8.u, 0xf800f8fa, 0x80ff80a6, 4 , 424); 
TEST_IMM_OP( 107 , srai8.u, 0x0000f8f8, 0x00008080, 4 , 428); 
TEST_IMM_OP( 108 , srai8.u, 0xe0e00000, 0x808000ff, 2 , 432); 
TEST_IMM_OP( 109 , srai8.u, 0x00000000, 0x00ff07ff, 6 , 436); 
TEST_IMM_OP( 110 , srai8.u, 0x00080000, 0x003fff00, 3 , 440); 
TEST_IMM_OP( 111 , srai8.u, 0xfe000000, 0x80ff00fa, 6 , 444); 
TEST_IMM_OP( 112 , srai8.u, 0x00f0faf0, 0xff80d180, 3 , 448); 
TEST_IMM_OP( 113 , srai8.u, 0x000000fc, 0xff00fb80, 5 , 452); 
TEST_IMM_OP( 114 , srai8.u, 0x0010fa00, 0xff7eceff, 3 , 456); 
TEST_IMM_OP( 115 , srai8.u, 0xe000ebe2, 0x80ffac89, 2 , 460); 
TEST_IMM_OP( 116 , srai8.u, 0x00c02000, 0x00803fff, 1 , 464); 
TEST_IMM_OP( 117 , srai8.u, 0x000000f0, 0x00ff0280, 3 , 468); 
TEST_IMM_OP( 118 , srai8.u, 0x000000fc, 0x0000ff80, 5 , 472); 
TEST_IMM_OP( 119 , srai8.u, 0x00000000, 0xff00ffff, 1 , 476); 
TEST_IMM_OP( 120 , srai8.u, 0x000000fe, 0x00000080, 6 , 480); 
TEST_IMM_OP( 121 , srai8.u, 0x00fc0003, 0x0080ff51, 5 , 484); 
TEST_IMM_OP( 122 , srai8.u, 0x00e4e000, 0xff8e8000, 2 , 488); 
TEST_IMM_OP( 123 , srai8.u, 0x00170000, 0x002eff00, 1 , 492); 
TEST_IMM_OP( 124 , srai8.u, 0x000000fe, 0x00000080, 6 , 496); 
TEST_IMM_OP( 125 , srai8.u, 0x00fc0000, 0xffe00000, 3 , 500); 
TEST_IMM_OP( 126 , srai8.u, 0x0000fc00, 0x00ffbbff, 4 , 504); 
TEST_IMM_OP( 127 , srai8.u, 0x2ec0c000, 0x5b808000, 1 , 508); 
TEST_IMM_OP( 128 , srai8.u, 0x00080000, 0x0043ff00, 3 , 512); 
TEST_IMM_OP( 129 , srai8.u, 0xd500c000, 0xa9ff8000, 1 , 516); 
TEST_IMM_OP( 130 , srai8.u, 0x0000e000, 0x00ff8000, 2 , 520); 
TEST_IMM_OP( 131 , srai8.u, 0x03f80400, 0x34804200, 4 , 524); 
TEST_IMM_OP( 132 , srai8.u, 0xf0f00000, 0x8080fffc, 3 , 528); 
TEST_IMM_OP( 133 , srai8.u, 0x04000000, 0x21000000, 3 , 532); 
TEST_IMM_OP( 134 , srai8.u, 0x0002fd00, 0x0012e800, 3 , 536); 
TEST_IMM_OP( 135 , srai8.u, 0x008080ff, 0x008080ff, 0 , 540); 
TEST_IMM_OP( 136 , srai8.u, 0x03040000, 0x6e7f00ff, 5 , 544); 
TEST_IMM_OP( 137 , srai8.u, 0xfc000002, 0x80f9ff37, 5 , 548); 
TEST_IMM_OP( 138 , srai8.u, 0x00f000f0, 0xff80ff80, 3 , 552); 
TEST_IMM_OP( 139 , srai8.u, 0x00f0f500, 0x0080a7ff, 3 , 556); 
TEST_IMM_OP( 140 , srai8.u, 0x00000000, 0x000a0013, 6 , 560); 
TEST_IMM_OP( 141 , srai8.u, 0x000200fe, 0x0f680080, 6 , 564); 
TEST_IMM_OP( 142 , srai8.u, 0x00fe0001, 0xff80ff44, 6 , 568); 
TEST_IMM_OP( 143 , srai8.u, 0xfc000000, 0x80ffff00, 5 , 572); 
TEST_IMM_OP( 144 , srai8.u, 0x00fe0000, 0x0080ff00, 6 , 576); 
TEST_IMM_OP( 145 , srai8.u, 0xf8070000, 0x8074ff00, 4 , 580); 
TEST_IMM_OP( 146 , srai8.u, 0x00e00008, 0xff800020, 2 , 584); 
TEST_IMM_OP( 147 , srai8.u, 0x00fefe00, 0xffcfbe00, 5 , 588); 
TEST_IMM_OP( 148 , srai8.u, 0x01010000, 0x583effff, 6 , 592); 
TEST_IMM_OP( 149 , srai8.u, 0x8000ff80, 0x8000ff80, 0 , 596); 
TEST_IMM_OP( 150 , srai8.u, 0xfc00ff00, 0x80ffe0ff, 5 , 600); 
TEST_IMM_OP( 151 , srai8.u, 0x00000e00, 0x00003900, 2 , 604); 
TEST_IMM_OP( 152 , srai8.u, 0xfefefffe, 0x8080c680, 6 , 608); 
TEST_IMM_OP( 153 , srai8.u, 0xc000d022, 0x80009f44, 1 , 612); 
TEST_IMM_OP( 154 , srai8.u, 0x00000004, 0xffff007d, 5 , 616); 
TEST_IMM_OP( 155 , srai8.u, 0x00f80001, 0xff83000a, 4 , 620); 
TEST_IMM_OP( 156 , srai8.u, 0xe000e01d, 0x80008075, 2 , 624); 
TEST_IMM_OP( 157 , srai8.u, 0x00ff0000, 0x00eaff00, 4 , 628); 
TEST_IMM_OP( 158 , srai8.u, 0xff5aff80, 0xff5aff80, 0 , 632); 
TEST_IMM_OP( 159 , srai8.u, 0xfcfc0003, 0x8080ff5a, 5 , 636); 
TEST_IMM_OP( 160 , srai8.u, 0xe00011eb, 0x80ff42ad, 2 , 640); 
TEST_IMM_OP( 161 , srai8.u, 0xe9000000, 0xa500ff00, 2 , 644); 
TEST_IMM_OP( 162 , srai8.u, 0x0017e300, 0xff5d8aff, 2 , 648); 
TEST_IMM_OP( 163 , srai8.u, 0x00622eff, 0x00622eff, 0 , 652); 
TEST_IMM_OP( 164 , srai8.u, 0x2c03c0c0, 0x57058080, 1 , 656); 
TEST_IMM_OP( 165 , srai8.u, 0xfefefe00, 0x80808000, 6 , 660); 
TEST_IMM_OP( 166 , srai8.u, 0x0034dcf4, 0xff68b7e8, 1 , 664); 
TEST_IMM_OP( 167 , srai8.u, 0xe0e00000, 0x80800000, 2 , 668); 
TEST_IMM_OP( 168 , srai8.u, 0x00feff00, 0xff80a1ff, 6 , 672); 
TEST_IMM_OP( 169 , srai8.u, 0xf70000e0, 0xdb00ff80, 2 , 676); 
TEST_IMM_OP( 170 , srai8.u, 0xe00005e0, 0x80ff1380, 2 , 680); 
TEST_IMM_OP( 171 , srai8.u, 0xd2000200, 0xa3ff03ff, 1 , 684); 
TEST_IMM_OP( 172 , srai8.u, 0x0098ff47, 0x0098ff47, 0 , 688); 
TEST_IMM_OP( 173 , srai8.u, 0x0000fd00, 0xffff9800, 5 , 692); 
TEST_IMM_OP( 174 , srai8.u, 0xfd00c0c0, 0xfa008080, 1 , 696); 
TEST_IMM_OP( 175 , srai8.u, 0xf80000f8, 0x80000080, 4 , 700); 
TEST_IMM_OP( 176 , srai8.u, 0xf80000f8, 0x80ff0080, 4 , 704); 
TEST_IMM_OP( 177 , srai8.u, 0x808080ff, 0x808080ff, 0 , 708); 
TEST_IMM_OP( 178 , srai8.u, 0xfeff0000, 0x80d1ffff, 6 , 712); 
TEST_IMM_OP( 179 , srai8.u, 0xfff800f8, 0xe8800080, 4 , 716); 
TEST_IMM_OP( 180 , srai8.u, 0x00000000, 0x0000ffff, 6 , 720); 
TEST_IMM_OP( 181 , srai8.u, 0xfcfc0300, 0x80805200, 5 , 724); 
TEST_IMM_OP( 182 , srai8.u, 0x00f8f901, 0x00809709, 4 , 728); 
TEST_IMM_OP( 183 , srai8.u, 0x00fc0000, 0x0080ff00, 5 , 732); 
TEST_IMM_OP( 184 , srai8.u, 0xf800fbf8, 0x80ffb280, 4 , 736); 
TEST_IMM_OP( 185 , srai8.u, 0x01000103, 0x15001562, 5 , 740); 
TEST_IMM_OP( 186 , srai8.u, 0xf100e000, 0xc40080ff, 2 , 744); 
TEST_IMM_OP( 187 , srai8.u, 0xfe0000fc, 0xc6ff0080, 5 , 748); 
TEST_IMM_OP( 188 , srai8.u, 0xd7c0003e, 0xad80007b, 1 , 752); 
TEST_IMM_OP( 189 , srai8.u, 0x80ff15c9, 0x80ff15c9, 0 , 756); 
TEST_IMM_OP( 190 , srai8.u, 0x0000e000, 0x00ff80ff, 2 , 760); 
TEST_IMM_OP( 191 , srai8.u, 0x000000fc, 0x00ffff80, 5 , 764); 
TEST_IMM_OP( 192 , srai8.u, 0x00fd0000, 0x0e9eff00, 5 , 768); 
TEST_IMM_OP( 193 , srai8.u, 0x1d00e0e0, 0x74ff8080, 2 , 772); 
TEST_IMM_OP( 194 , srai8.u, 0x00f0f000, 0xff8080ff, 3 , 776); 
TEST_IMM_OP( 195 , srai8.u, 0x00000018, 0x00ff005e, 2 , 780); 
TEST_IMM_OP( 196 , srai8.u, 0x7dab8000, 0x7dab8000, 0 , 784); 
TEST_IMM_OP( 197 , srai8.u, 0x0000eac0, 0xff00d480, 1 , 788); 
TEST_IMM_OP( 198 , srai8.u, 0x0000f000, 0xff008000, 3 , 792); 
TEST_IMM_OP( 199 , srai8.u, 0xf0000000, 0x80ffff00, 3 , 796); 

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
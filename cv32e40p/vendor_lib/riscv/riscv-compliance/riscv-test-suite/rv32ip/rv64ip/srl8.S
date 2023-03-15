# See LICENSE for license details.
#*****************************************************************************
# srl8.S
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

TEST_RR_OP( 2 , srl8, 0x808080ff, 0x808080ff, 0x00800000, 8); 
TEST_RR_OP( 3 , srl8, 0x00ff80ff, 0x00ff80ff, 0xffffff80, 12); 
TEST_RR_OP( 4 , srl8, 0x80000000, 0x80000000, 0xd1808000, 16); 
TEST_RR_OP( 5 , srl8, 0x07070405, 0xffff8fb0, 0x00ff000d, 20); 
TEST_RR_OP( 6 , srl8, 0x01000101, 0xff15ffca, 0x800bffff, 24); 
TEST_RR_OP( 7 , srl8, 0x0000ff00, 0x0000ff00, 0x00ffff20, 28); 
TEST_RR_OP( 8 , srl8, 0x1dff8080, 0x1dff8080, 0x00008080, 32); 
TEST_RR_OP( 9 , srl8, 0x01000101, 0xff00ff80, 0xe20000ff, 36); 
TEST_RR_OP( 10 , srl8, 0x01010101, 0xffced1d8, 0xff0080ff, 40); 
TEST_RR_OP( 11 , srl8, 0x0c008080, 0x0c008080, 0xff001800, 44); 
TEST_RR_OP( 12 , srl8, 0x00003d53, 0x00003d53, 0xff000000, 48); 
TEST_RR_OP( 13 , srl8, 0x00010001, 0x75ff08ff, 0x0000ff87, 52); 
TEST_RR_OP( 14 , srl8, 0xffd971ff, 0xffd971ff, 0x0080ff80, 56); 
TEST_RR_OP( 15 , srl8, 0x0080ffff, 0x0080ffff, 0xff008880, 60); 
TEST_RR_OP( 16 , srl8, 0x006bff00, 0x006bff00, 0xff807200, 64); 
TEST_RR_OP( 17 , srl8, 0x00808000, 0x00808000, 0xff005d80, 68); 
TEST_RR_OP( 18 , srl8, 0x36e60080, 0x36e60080, 0xffe17180, 72); 
TEST_RR_OP( 19 , srl8, 0x00000001, 0x460000ff, 0x8000ffff, 76); 
TEST_RR_OP( 20 , srl8, 0x80f8d580, 0x80f8d580, 0xffff8080, 80); 
TEST_RR_OP( 21 , srl8, 0x04000400, 0x80188000, 0x808092f5, 84); 
TEST_RR_OP( 22 , srl8, 0x02000202, 0x80008080, 0x8006ffe6, 88); 
TEST_RR_OP( 23 , srl8, 0x0080ffff, 0x0080ffff, 0xff808080, 92); 
TEST_RR_OP( 24 , srl8, 0x00010000, 0x00a40073, 0xbf0000ff, 96); 
TEST_RR_OP( 25 , srl8, 0x01010001, 0x80e208ff, 0x00e6ffff, 100); 
TEST_RR_OP( 26 , srl8, 0x80270080, 0x80270080, 0x008b0000, 104); 
TEST_RR_OP( 27 , srl8, 0x0f00000f, 0xff0000ff, 0xffff0d3c, 108); 
TEST_RR_OP( 28 , srl8, 0x80ff00b4, 0x80ff00b4, 0xffff80a0, 112); 
TEST_RR_OP( 29 , srl8, 0x0080ff00, 0x0080ff00, 0x561e0080, 116); 
TEST_RR_OP( 30 , srl8, 0x0f008080, 0x0f008080, 0xffff8000, 120); 
TEST_RR_OP( 31 , srl8, 0x01000101, 0x8000ff80, 0xff008fff, 124); 
TEST_RR_OP( 32 , srl8, 0xffff9600, 0xffff9600, 0x8080ff00, 128); 
TEST_RR_OP( 33 , srl8, 0x0000ff00, 0x0000ff00, 0x00800000, 132); 
TEST_RR_OP( 34 , srl8, 0x00010100, 0x15ffff00, 0x00804dff, 136); 
TEST_RR_OP( 35 , srl8, 0x7cffff00, 0x7cffff00, 0x80008080, 140); 
TEST_RR_OP( 36 , srl8, 0x00000009, 0x00000027, 0x8000ff32, 144); 
TEST_RR_OP( 37 , srl8, 0xffffff80, 0xffffff80, 0x00ffff00, 148); 
TEST_RR_OP( 38 , srl8, 0xc9ebff3f, 0xc9ebff3f, 0x00ff0080, 152); 
TEST_RR_OP( 39 , srl8, 0x00010000, 0x00ff0000, 0x008000ff, 156); 
TEST_RR_OP( 40 , srl8, 0x1f1f0f00, 0xffff7a00, 0x00dfdaeb, 160); 
TEST_RR_OP( 41 , srl8, 0x00ff0030, 0x00ff0030, 0x8000b700, 164); 
TEST_RR_OP( 42 , srl8, 0x3e808080, 0x3e808080, 0xffff8000, 168); 
TEST_RR_OP( 43 , srl8, 0x01010101, 0x80ff80ff, 0x000080ff, 172); 
TEST_RR_OP( 44 , srl8, 0x00010001, 0x00800080, 0xff00adff, 176); 
TEST_RR_OP( 45 , srl8, 0x01010000, 0xffff4700, 0x780000ff, 180); 
TEST_RR_OP( 46 , srl8, 0x8000ff62, 0x8000ff62, 0x8e8e8080, 184); 
TEST_RR_OP( 47 , srl8, 0xfb808dff, 0xfb808dff, 0xfff09e00, 188); 
TEST_RR_OP( 48 , srl8, 0x80000077, 0x80000077, 0x0000fa80, 192); 
TEST_RR_OP( 49 , srl8, 0x00001f10, 0x0000ff80, 0x5c809923, 196); 
TEST_RR_OP( 50 , srl8, 0x80009900, 0x80009900, 0x4cff0000, 200); 
TEST_RR_OP( 51 , srl8, 0x00000101, 0x3662ffff, 0xff0080ff, 204); 
TEST_RR_OP( 52 , srl8, 0xff000000, 0xff000000, 0x00990080, 208); 
TEST_RR_OP( 53 , srl8, 0x01010101, 0x8080ffff, 0x000080ff, 212); 
TEST_RR_OP( 54 , srl8, 0x00ff0080, 0x00ff0080, 0x00000080, 216); 
TEST_RR_OP( 55 , srl8, 0x3f3f3f00, 0xffffff00, 0x00ff808a, 220); 
TEST_RR_OP( 56 , srl8, 0x80ff6f00, 0x80ff6f00, 0xd780ff00, 224); 
TEST_RR_OP( 57 , srl8, 0x01010001, 0xff800094, 0x1200ffff, 228); 
TEST_RR_OP( 58 , srl8, 0x01010001, 0x80800080, 0xffff80ff, 232); 
TEST_RR_OP( 59 , srl8, 0x000b1f1f, 0x005cffff, 0x808080c3, 236); 
TEST_RR_OP( 60 , srl8, 0x2021203b, 0x808680ed, 0x80578792, 240); 
TEST_RR_OP( 61 , srl8, 0x00ffff00, 0x00ffff00, 0x808e2d80, 244); 
TEST_RR_OP( 62 , srl8, 0x01010000, 0xf5ff0000, 0x800800ff, 248); 
TEST_RR_OP( 63 , srl8, 0x01010001, 0x80ee0080, 0x80ff80ff, 252); 
TEST_RR_OP( 64 , srl8, 0x0f080c00, 0xff80cb00, 0xff679cdc, 256); 
TEST_RR_OP( 65 , srl8, 0x03010102, 0xcc4d6181, 0x00800036, 260); 
TEST_RR_OP( 66 , srl8, 0x00010101, 0x0080ffff, 0x80ff00ff, 264); 
TEST_RR_OP( 67 , srl8, 0x04000000, 0x80000000, 0x0080003d, 268); 
TEST_RR_OP( 68 , srl8, 0x01010100, 0x80ffbe00, 0x000080ff, 272); 
TEST_RR_OP( 69 , srl8, 0x00000000, 0x00001b5a, 0xff0080ff, 276); 
TEST_RR_OP( 70 , srl8, 0x1f00ff80, 0x1f00ff80, 0xc1598080, 280); 
TEST_RR_OP( 71 , srl8, 0xffffff00, 0xffffff00, 0xff800000, 284); 
TEST_RR_OP( 72 , srl8, 0x20003f00, 0x8000ff00, 0xff3cff12, 288); 
TEST_RR_OP( 73 , srl8, 0x00010001, 0x00da40ff, 0x80ff00ff, 292); 
TEST_RR_OP( 74 , srl8, 0x01000001, 0xff006c80, 0x5b00e9ff, 296); 
TEST_RR_OP( 75 , srl8, 0x80ff8000, 0x80ff8000, 0x80900080, 300); 
TEST_RR_OP( 76 , srl8, 0x01000101, 0xff00cbff, 0x2d80b8ff, 304); 
TEST_RR_OP( 77 , srl8, 0xf9000080, 0xf9000080, 0xff006480, 308); 
TEST_RR_OP( 78 , srl8, 0x01010100, 0x8080ae00, 0x80fd80ff, 312); 
TEST_RR_OP( 79 , srl8, 0x00ff8080, 0x00ff8080, 0xffff0000, 316); 
TEST_RR_OP( 80 , srl8, 0x00010000, 0x00800500, 0x0700ffff, 320); 
TEST_RR_OP( 81 , srl8, 0x203f3f3f, 0x80ffffff, 0x007200aa, 324); 
TEST_RR_OP( 82 , srl8, 0xffe34865, 0xffe34865, 0x003c0080, 328); 
TEST_RR_OP( 83 , srl8, 0x8000ff7f, 0x8000ff7f, 0x3cff0080, 332); 
TEST_RR_OP( 84 , srl8, 0xff0000ff, 0xff0000ff, 0x03800400, 336); 
TEST_RR_OP( 85 , srl8, 0x00ffff80, 0x00ffff80, 0x95bcff80, 340); 
TEST_RR_OP( 86 , srl8, 0x0f0c0f0f, 0xffcaffff, 0xd20f66c4, 344); 
TEST_RR_OP( 87 , srl8, 0x00010100, 0x0080e000, 0x4adbffff, 348); 
TEST_RR_OP( 88 , srl8, 0x00010001, 0x10800080, 0x0080ffff, 352); 
TEST_RR_OP( 89 , srl8, 0x80ffff00, 0x80ffff00, 0x00007300, 356); 
TEST_RR_OP( 90 , srl8, 0x00000100, 0x00378000, 0x809280ff, 360); 
TEST_RR_OP( 91 , srl8, 0xcb808080, 0xcb808080, 0x00ff3880, 364); 
TEST_RR_OP( 92 , srl8, 0xff3f80ff, 0xff3f80ff, 0x7a007480, 368); 
TEST_RR_OP( 93 , srl8, 0x00ff8080, 0x00ff8080, 0xff268000, 372); 
TEST_RR_OP( 94 , srl8, 0x74b580d6, 0x74b580d6, 0x00ff8000, 376); 
TEST_RR_OP( 95 , srl8, 0x00020303, 0x0080ffe7, 0x00ff9a9e, 380); 
TEST_RR_OP( 96 , srl8, 0x01010000, 0xe8810000, 0x808000ff, 384); 
TEST_RR_OP( 97 , srl8, 0x00080208, 0x00802580, 0x77008004, 388); 
TEST_RR_OP( 98 , srl8, 0x03030202, 0xffff80b1, 0x00ff80be, 392); 
TEST_RR_OP( 99 , srl8, 0x00008039, 0x00008039, 0x93008080, 396); 
TEST_RR_OP( 100 , srl8, 0x01010101, 0xa7ff8080, 0x805d00ff, 400); 
TEST_RR_OP( 101 , srl8, 0x00010001, 0x76ff0080, 0xff0080ff, 404); 
TEST_RR_OP( 102 , srl8, 0x01010101, 0xffffffff, 0x8000d6ff, 408); 
TEST_RR_OP( 103 , srl8, 0x80800074, 0x80800074, 0x80004600, 412); 
TEST_RR_OP( 104 , srl8, 0x000000e8, 0x000000e8, 0x09ffaa80, 416); 
TEST_RR_OP( 105 , srl8, 0x1c808080, 0x1c808080, 0x54ffff80, 420); 
TEST_RR_OP( 106 , srl8, 0x01010000, 0xff810000, 0x80e60067, 424); 
TEST_RR_OP( 107 , srl8, 0x3f3f2000, 0xffff8000, 0x00ffffb2, 428); 
TEST_RR_OP( 108 , srl8, 0xffff0000, 0xffff0000, 0xffffff00, 432); 
TEST_RR_OP( 109 , srl8, 0x3f201c1b, 0xff80706e, 0xff00ef42, 436); 
TEST_RR_OP( 110 , srl8, 0x20073f20, 0x801fff80, 0xff00ff7a, 440); 
TEST_RR_OP( 111 , srl8, 0xff00804f, 0xff00804f, 0x80008080, 444); 
TEST_RR_OP( 112 , srl8, 0x3f3f2019, 0xffff8067, 0xff000002, 448); 
TEST_RR_OP( 113 , srl8, 0x68ffd280, 0x68ffd280, 0xffff00d0, 452); 
TEST_RR_OP( 114 , srl8, 0x01000000, 0xff000000, 0xffff3b17, 456); 
TEST_RR_OP( 115 , srl8, 0x00000101, 0x001effa2, 0x8000ffff, 460); 
TEST_RR_OP( 116 , srl8, 0x7f7f7f00, 0xffffff00, 0xba470009, 464); 
TEST_RR_OP( 117 , srl8, 0x79ff00ff, 0x79ff00ff, 0x80008b80, 468); 
TEST_RR_OP( 118 , srl8, 0xff000080, 0xff000080, 0x00800000, 472); 
TEST_RR_OP( 119 , srl8, 0x8b000026, 0x8b000026, 0xbfff0000, 476); 
TEST_RR_OP( 120 , srl8, 0x455c7f00, 0x8bb9ff00, 0x00ff0001, 480); 
TEST_RR_OP( 121 , srl8, 0x00ff8080, 0x00ff8080, 0xff378080, 484); 
TEST_RR_OP( 122 , srl8, 0x008000ff, 0x008000ff, 0x80009d80, 488); 
TEST_RR_OP( 123 , srl8, 0x01010100, 0x8080803b, 0x80ff00ff, 492); 
TEST_RR_OP( 124 , srl8, 0x00808000, 0x00808000, 0x8080ff00, 496); 
TEST_RR_OP( 125 , srl8, 0x01070707, 0x34ffffff, 0x008000ed, 500); 
TEST_RR_OP( 126 , srl8, 0x80ffffff, 0x80ffffff, 0x7f8cec80, 504); 
TEST_RR_OP( 127 , srl8, 0x00070700, 0x00ffff00, 0x00800035, 508); 
TEST_RR_OP( 128 , srl8, 0x00ff80ff, 0x00ff80ff, 0x0080ff80, 512); 
TEST_RR_OP( 129 , srl8, 0x00ff0024, 0x00ff0024, 0xa3008080, 516); 
TEST_RR_OP( 130 , srl8, 0xff008080, 0xff008080, 0x00008000, 520); 
TEST_RR_OP( 131 , srl8, 0x04000702, 0x8000ff49, 0x80ad804d, 524); 
TEST_RR_OP( 132 , srl8, 0x01010101, 0xffd88080, 0xffff0f07, 528); 
TEST_RR_OP( 133 , srl8, 0x00800045, 0x00800045, 0xbb00ff80, 532); 
TEST_RR_OP( 134 , srl8, 0x80a98000, 0x80a98000, 0x800080b8, 536); 
TEST_RR_OP( 135 , srl8, 0x000080ff, 0x000080ff, 0x00800000, 540); 
TEST_RR_OP( 136 , srl8, 0x002c0000, 0x002c0000, 0x80ffff80, 544); 
TEST_RR_OP( 137 , srl8, 0x141f001f, 0xa5ff00f9, 0x80ffff1b, 548); 
TEST_RR_OP( 138 , srl8, 0x7780ff0e, 0x7780ff0e, 0x80ff8000, 552); 
TEST_RR_OP( 139 , srl8, 0xff8000b4, 0xff8000b4, 0x8085ff00, 556); 
TEST_RR_OP( 140 , srl8, 0x00000101, 0x0043ff80, 0xa67f6cff, 560); 
TEST_RR_OP( 141 , srl8, 0x01010101, 0x80ffff97, 0xff0000ff, 564); 
TEST_RR_OP( 142 , srl8, 0x01000001, 0x80000080, 0xeabd9aff, 568); 
TEST_RR_OP( 143 , srl8, 0x01000101, 0x804bffff, 0x0aec00ff, 572); 
TEST_RR_OP( 144 , srl8, 0x8000ffc1, 0x8000ffc1, 0x803c0080, 576); 
TEST_RR_OP( 145 , srl8, 0x8080ff00, 0x8080ff00, 0xff80ff80, 580); 
TEST_RR_OP( 146 , srl8, 0x82708080, 0x82708080, 0xff14ff00, 584); 
TEST_RR_OP( 147 , srl8, 0x058000ff, 0x058000ff, 0xff370080, 588); 
TEST_RR_OP( 148 , srl8, 0x0f09080f, 0xff9280ff, 0x7b501b74, 592); 
TEST_RR_OP( 149 , srl8, 0x80008080, 0x80008080, 0x80008000, 596); 
TEST_RR_OP( 150 , srl8, 0x04040100, 0x80802200, 0xfff8ff5d, 600); 
TEST_RR_OP( 151 , srl8, 0xffd7ff80, 0xffd7ff80, 0x80002380, 604); 
TEST_RR_OP( 152 , srl8, 0x8080804d, 0x8080804d, 0x8000ff80, 608); 
TEST_RR_OP( 153 , srl8, 0x8000ff80, 0x8000ff80, 0xba008000, 612); 
TEST_RR_OP( 154 , srl8, 0x8000ff9b, 0x8000ff9b, 0x80ff8000, 616); 
TEST_RR_OP( 155 , srl8, 0x80548000, 0x80548000, 0x00ffde80, 620); 
TEST_RR_OP( 156 , srl8, 0xffe142ff, 0xffe142ff, 0x80000080, 624); 
TEST_RR_OP( 157 , srl8, 0x800000ff, 0x800000ff, 0x00ff0070, 628); 
TEST_RR_OP( 158 , srl8, 0x00748080, 0x00748080, 0x88000000, 632); 
TEST_RR_OP( 159 , srl8, 0x0c080e0f, 0xcc80ecff, 0xffff41ac, 636); 
TEST_RR_OP( 160 , srl8, 0x01020202, 0x7481ad80, 0x00804556, 640); 
TEST_RR_OP( 161 , srl8, 0x7e1ea87c, 0x7e1ea87c, 0xff000000, 644); 
TEST_RR_OP( 162 , srl8, 0x00000100, 0x00008c00, 0xa2ff80ff, 648); 
TEST_RR_OP( 163 , srl8, 0x01000100, 0xff23ff22, 0x22003eff, 652); 
TEST_RR_OP( 164 , srl8, 0x01000001, 0xff0000eb, 0xff0080ff, 656); 
TEST_RR_OP( 165 , srl8, 0x001f0010, 0x00ff0080, 0x9d00001b, 660); 
TEST_RR_OP( 166 , srl8, 0x0720203f, 0x1c8080ff, 0x80098082, 664); 
TEST_RR_OP( 167 , srl8, 0x01010101, 0xcb8aff80, 0x008080ff, 668); 
TEST_RR_OP( 168 , srl8, 0xff140050, 0xff140050, 0xff80fe00, 672); 
TEST_RR_OP( 169 , srl8, 0xff0bffff, 0xff0bffff, 0x00c6ff00, 676); 
TEST_RR_OP( 170 , srl8, 0x01010101, 0xff808080, 0x8080ff97, 680); 
TEST_RR_OP( 171 , srl8, 0x000580ff, 0x000580ff, 0xffff0080, 684); 
TEST_RR_OP( 172 , srl8, 0x00010100, 0x42ff8000, 0x000080ff, 688); 
TEST_RR_OP( 173 , srl8, 0xff0000ff, 0xff0000ff, 0x00ffff00, 692); 
TEST_RR_OP( 174 , srl8, 0x00000203, 0x0029b2ff, 0xffff00c6, 696); 
TEST_RR_OP( 175 , srl8, 0x00800000, 0x00800000, 0xff000000, 700); 
TEST_RR_OP( 176 , srl8, 0x163f0000, 0x5aff0000, 0x80ff80ba, 704); 
TEST_RR_OP( 177 , srl8, 0x00010100, 0x00e58000, 0x008000ff, 708); 
TEST_RR_OP( 178 , srl8, 0x00ff5180, 0x00ff5180, 0x8500ff00, 712); 
TEST_RR_OP( 179 , srl8, 0x01000101, 0xff6780ff, 0xff5b80ff, 716); 
TEST_RR_OP( 180 , srl8, 0xffff00ff, 0xffff00ff, 0x80ff2280, 720); 
TEST_RR_OP( 181 , srl8, 0x01000001, 0xff0078ff, 0xff80ffff, 724); 
TEST_RR_OP( 182 , srl8, 0x01010001, 0x80867e80, 0xff008067, 728); 
TEST_RR_OP( 183 , srl8, 0x72388000, 0x72388000, 0xffffff00, 732); 
TEST_RR_OP( 184 , srl8, 0x800080ff, 0x800080ff, 0x0080ff80, 736); 
TEST_RR_OP( 185 , srl8, 0x800000ff, 0x800000ff, 0xffff0000, 740); 
TEST_RR_OP( 186 , srl8, 0xffff8034, 0xffff8034, 0x80800000, 744); 
TEST_RR_OP( 187 , srl8, 0x00ff0000, 0x00ff0000, 0x6c008080, 748); 
TEST_RR_OP( 188 , srl8, 0x101f0500, 0x80ff2a00, 0x37ac66c3, 752); 
TEST_RR_OP( 189 , srl8, 0xffecffff, 0xffecffff, 0x01808080, 756); 
TEST_RR_OP( 190 , srl8, 0x0377661e, 0x0377661e, 0x91570080, 760); 
TEST_RR_OP( 191 , srl8, 0x00ff003a, 0x00ff003a, 0x80738000, 764); 
TEST_RR_OP( 192 , srl8, 0x8080ffff, 0x8080ffff, 0x6c808000, 768); 
TEST_RR_OP( 193 , srl8, 0x80ffff80, 0x80ffff80, 0xff80ed00, 772); 
TEST_RR_OP( 194 , srl8, 0x01000101, 0x8000ffa5, 0x808000ff, 776); 
TEST_RR_OP( 195 , srl8, 0xe90080ff, 0xe90080ff, 0x80ff8080, 780); 
TEST_RR_OP( 196 , srl8, 0x00007b7f, 0x0000f6ff, 0xc98000f9, 784); 
TEST_RR_OP( 197 , srl8, 0xc68080c5, 0xc68080c5, 0x00ef9f80, 788); 
TEST_RR_OP( 198 , srl8, 0x01010100, 0xf280f000, 0xe080bfff, 792); 
TEST_RR_OP( 199 , srl8, 0x80ff2680, 0x80ff2680, 0x80ffff80, 796); 

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
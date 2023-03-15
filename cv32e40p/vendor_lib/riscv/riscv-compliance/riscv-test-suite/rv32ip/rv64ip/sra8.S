# See LICENSE for license details.
#*****************************************************************************
# sra8.S
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

TEST_RR_OP( 2 , sra8, 0x00008080, 0x00008080, 0x80008080, 8); 
TEST_RR_OP( 3 , sra8, 0xff808000, 0xff808000, 0xff808000, 12); 
TEST_RR_OP( 4 , sra8, 0x008080ff, 0x008080ff, 0x00bf8000, 16); 
TEST_RR_OP( 5 , sra8, 0x90beffff, 0x90beffff, 0x70000000, 20); 
TEST_RR_OP( 6 , sra8, 0xfe00fcff, 0xdf1a80ff, 0x0085ff8d, 24); 
TEST_RR_OP( 7 , sra8, 0xff0080ff, 0xff0080ff, 0x293bff00, 28); 
TEST_RR_OP( 8 , sra8, 0xff000000, 0x80570000, 0x809080ff, 32); 
TEST_RR_OP( 9 , sra8, 0x000dff08, 0x006fff40, 0x80ff802b, 36); 
TEST_RR_OP( 10 , sra8, 0xff0080af, 0xff0080af, 0xff007280, 40); 
TEST_RR_OP( 11 , sra8, 0xffff0000, 0x80800000, 0x0080ffff, 44); 
TEST_RR_OP( 12 , sra8, 0x00800080, 0x00800080, 0x005ee280, 48); 
TEST_RR_OP( 13 , sra8, 0xffc0c000, 0xff808000, 0xab00ffc9, 52); 
TEST_RR_OP( 14 , sra8, 0xc0e313ff, 0x80c727ff, 0x009900a9, 56); 
TEST_RR_OP( 15 , sra8, 0x00ffff80, 0x00ffff80, 0x5b000000, 60); 
TEST_RR_OP( 16 , sra8, 0xff80ffcc, 0xff80ffcc, 0x005a8000, 64); 
TEST_RR_OP( 17 , sra8, 0xff00ffff, 0x800080ff, 0x7bff73df, 68); 
TEST_RR_OP( 18 , sra8, 0x12800000, 0x12800000, 0x80ff8000, 72); 
TEST_RR_OP( 19 , sra8, 0x00ffffff, 0x00ffffff, 0x00801380, 76); 
TEST_RR_OP( 20 , sra8, 0xff000080, 0xff000080, 0x00988080, 80); 
TEST_RR_OP( 21 , sra8, 0x29ff00a4, 0x29ff00a4, 0x00ff8000, 84); 
TEST_RR_OP( 22 , sra8, 0xffff00ff, 0xed894e80, 0x0080ffff, 88); 
TEST_RR_OP( 23 , sra8, 0x00ff00ff, 0x00ff00ff, 0x005e801e, 92); 
TEST_RR_OP( 24 , sra8, 0xb6ff0080, 0xb6ff0080, 0x80ffff80, 96); 
TEST_RR_OP( 25 , sra8, 0xfffffffd, 0xf3ffffad, 0xffde72e5, 100); 
TEST_RR_OP( 26 , sra8, 0x800000ff, 0x800000ff, 0x80e90000, 104); 
TEST_RR_OP( 27 , sra8, 0xff000080, 0xff000080, 0x80000080, 108); 
TEST_RR_OP( 28 , sra8, 0x00ffffff, 0x53edff80, 0xff00ffff, 112); 
TEST_RR_OP( 29 , sra8, 0xff0d6f00, 0xff0d6f00, 0xc2008000, 116); 
TEST_RR_OP( 30 , sra8, 0x0000ffff, 0x0000ffff, 0x80df0000, 120); 
TEST_RR_OP( 31 , sra8, 0x0051ff00, 0x0051ff00, 0xc1000000, 124); 
TEST_RR_OP( 32 , sra8, 0xff800080, 0xff800080, 0xff000080, 128); 
TEST_RR_OP( 33 , sra8, 0xff00ffff, 0xff309b80, 0x8017cbff, 132); 
TEST_RR_OP( 34 , sra8, 0xffffffff, 0xff80aeff, 0x800073ff, 136); 
TEST_RR_OP( 35 , sra8, 0xffffffff, 0xffff8080, 0xffff80ff, 140); 
TEST_RR_OP( 36 , sra8, 0x00ffffff, 0x67ffffff, 0xff8080ff, 144); 
TEST_RR_OP( 37 , sra8, 0x00ffffff, 0x00f69080, 0x87ff00ff, 148); 
TEST_RR_OP( 38 , sra8, 0xff26ff73, 0xff26ff73, 0x4dffff00, 152); 
TEST_RR_OP( 39 , sra8, 0x0000ffff, 0x0000d8ff, 0xffff00ff, 156); 
TEST_RR_OP( 40 , sra8, 0xe0ff06e0, 0x80ff1880, 0xffff0002, 160); 
TEST_RR_OP( 41 , sra8, 0xffff00ff, 0xb3ff00ff, 0xce1000ff, 164); 
TEST_RR_OP( 42 , sra8, 0x00f0ff00, 0x0080ff00, 0xffffffa3, 168); 
TEST_RR_OP( 43 , sra8, 0x308000ff, 0x308000ff, 0x80008080, 172); 
TEST_RR_OP( 44 , sra8, 0xff000080, 0xff000080, 0x004c9200, 176); 
TEST_RR_OP( 45 , sra8, 0x00ff00ff, 0x00805480, 0x80d7ffff, 180); 
TEST_RR_OP( 46 , sra8, 0x80807e9c, 0x80807e9c, 0x00ffff00, 184); 
TEST_RR_OP( 47 , sra8, 0xff0000ff, 0x80460080, 0x005200ff, 188); 
TEST_RR_OP( 48 , sra8, 0x008080ff, 0x008080ff, 0xffff8080, 192); 
TEST_RR_OP( 49 , sra8, 0x42ff0000, 0x42ff0000, 0xff00ff80, 196); 
TEST_RR_OP( 50 , sra8, 0x802b80c1, 0x802b80c1, 0xff808080, 200); 
TEST_RR_OP( 51 , sra8, 0xffff00ff, 0x8bbf0080, 0xc4ffffff, 204); 
TEST_RR_OP( 52 , sra8, 0x80629700, 0x80629700, 0xd90000e8, 208); 
TEST_RR_OP( 53 , sra8, 0x81ff38ff, 0x81ff38ff, 0xc0808000, 212); 
TEST_RR_OP( 54 , sra8, 0x0000ffbd, 0x0000ffbd, 0xffffff80, 216); 
TEST_RR_OP( 55 , sra8, 0xfffffd03, 0xffffd437, 0xedffff6c, 220); 
TEST_RR_OP( 56 , sra8, 0xfe00ffff, 0x8000ffff, 0xff00804e, 224); 
TEST_RR_OP( 57 , sra8, 0xbb800080, 0xbb800080, 0xff00ff80, 228); 
TEST_RR_OP( 58 , sra8, 0x0000ff00, 0x0000ff3f, 0xce8000ff, 232); 
TEST_RR_OP( 59 , sra8, 0xff00ff00, 0xde00ff00, 0xffff00ff, 236); 
TEST_RR_OP( 60 , sra8, 0x00ffff80, 0x00ffff80, 0xff804680, 240); 
TEST_RR_OP( 61 , sra8, 0x00ff0080, 0x00ff0080, 0x0074ff00, 244); 
TEST_RR_OP( 62 , sra8, 0x00ff0000, 0x00ff0000, 0xff80ffff, 248); 
TEST_RR_OP( 63 , sra8, 0x8080b7a0, 0x8080b7a0, 0xeaa30080, 252); 
TEST_RR_OP( 64 , sra8, 0xffffffff, 0xff8080ff, 0x0080ffff, 256); 
TEST_RR_OP( 65 , sra8, 0xff9e8095, 0xff9e8095, 0xff00ffc0, 260); 
TEST_RR_OP( 66 , sra8, 0xff00ffff, 0xff00af80, 0x80be80ff, 264); 
TEST_RR_OP( 67 , sra8, 0x00801b00, 0x00801b00, 0x0000ff00, 268); 
TEST_RR_OP( 68 , sra8, 0x00ff0000, 0x0bff0000, 0xffb909ff, 272); 
TEST_RR_OP( 69 , sra8, 0x0000ff00, 0x142bff00, 0xc300caff, 276); 
TEST_RR_OP( 70 , sra8, 0xff00ffff, 0x9800b4ff, 0xffff80ff, 280); 
TEST_RR_OP( 71 , sra8, 0x00000000, 0x39000000, 0xbcc580ff, 284); 
TEST_RR_OP( 72 , sra8, 0x00ff00ff, 0x00b10080, 0xff8000a7, 288); 
TEST_RR_OP( 73 , sra8, 0x00000000, 0x00000000, 0x80ab00ff, 292); 
TEST_RR_OP( 74 , sra8, 0xff000000, 0xff747603, 0x808028ff, 296); 
TEST_RR_OP( 75 , sra8, 0xff01ff00, 0xff27ff00, 0x8000953d, 300); 
TEST_RR_OP( 76 , sra8, 0xffff0000, 0xef806c00, 0x00ff80ff, 304); 
TEST_RR_OP( 77 , sra8, 0xffff4a00, 0xffff4a00, 0xff802d00, 308); 
TEST_RR_OP( 78 , sra8, 0x80a4ff00, 0x80a4ff00, 0x80ff0000, 312); 
TEST_RR_OP( 79 , sra8, 0xff0006f8, 0xff006180, 0xffff806c, 316); 
TEST_RR_OP( 80 , sra8, 0x008aea7a, 0x008aea7a, 0x1d2e8080, 320); 
TEST_RR_OP( 81 , sra8, 0x80808080, 0x80808080, 0xff008000, 324); 
TEST_RR_OP( 82 , sra8, 0x00ffff00, 0x0080ff00, 0x800000ff, 328); 
TEST_RR_OP( 83 , sra8, 0xff0000ff, 0xcb277aff, 0x490080ff, 332); 
TEST_RR_OP( 84 , sra8, 0x00ffffff, 0x00a380ff, 0x36ffffff, 336); 
TEST_RR_OP( 85 , sra8, 0xff0000ff, 0xac000080, 0xff8080ff, 340); 
TEST_RR_OP( 86 , sra8, 0x800000ff, 0x800000ff, 0x00800020, 344); 
TEST_RR_OP( 87 , sra8, 0x00ffff00, 0x75e08000, 0xa28000ff, 348); 
TEST_RR_OP( 88 , sra8, 0xff0000ff, 0xff000083, 0x7500ffff, 352); 
TEST_RR_OP( 89 , sra8, 0xffffffff, 0x80ff8080, 0x958034ff, 356); 
TEST_RR_OP( 90 , sra8, 0x9b000100, 0x9b000100, 0x80808080, 360); 
TEST_RR_OP( 91 , sra8, 0xb68e8080, 0xb68e8080, 0x0000ff00, 364); 
TEST_RR_OP( 92 , sra8, 0x00ffffff, 0x008080f4, 0x50ff11ff, 368); 
TEST_RR_OP( 93 , sra8, 0xffffffff, 0x808380ff, 0x000080ff, 372); 
TEST_RR_OP( 94 , sra8, 0x00e0e0e7, 0x0080809d, 0x80ffff82, 376); 
TEST_RR_OP( 95 , sra8, 0x87ffffff, 0x87ffffff, 0x00e0ff00, 380); 
TEST_RR_OP( 96 , sra8, 0x807c6180, 0x807c6180, 0x00002780, 384); 
TEST_RR_OP( 97 , sra8, 0xcb3affff, 0xcb3affff, 0x0080ff98, 388); 
TEST_RR_OP( 98 , sra8, 0x00ffffff, 0x00ffffff, 0xff7ed6f7, 392); 
TEST_RR_OP( 99 , sra8, 0xffff00ff, 0xe6b80080, 0x807affff, 396); 
TEST_RR_OP( 100 , sra8, 0xffff0000, 0xffff0000, 0xff00d598, 400); 
TEST_RR_OP( 101 , sra8, 0x00ffff00, 0x00808000, 0xff8080ff, 404); 
TEST_RR_OP( 102 , sra8, 0x3fffff9e, 0x3fffff9e, 0x8080f400, 408); 
TEST_RR_OP( 103 , sra8, 0x00ff8873, 0x00ff8873, 0x88008000, 412); 
TEST_RR_OP( 104 , sra8, 0x7e00ff00, 0x7e00ff00, 0x80fd0080, 416); 
TEST_RR_OP( 105 , sra8, 0xf00af000, 0x80518000, 0x80808083, 420); 
TEST_RR_OP( 106 , sra8, 0xfb008000, 0xfb008000, 0x7480fff8, 424); 
TEST_RR_OP( 107 , sra8, 0x80008000, 0x80008000, 0x00ffff00, 428); 
TEST_RR_OP( 108 , sra8, 0x0003f8ff, 0x003a80ff, 0xffff80c4, 432); 
TEST_RR_OP( 109 , sra8, 0xff0000ff, 0xe00000ff, 0xff008025, 436); 
TEST_RR_OP( 110 , sra8, 0xffffffff, 0xffff8e80, 0xc2ff00ff, 440); 
TEST_RR_OP( 111 , sra8, 0xff0000ff, 0x80000080, 0xff0000ff, 444); 
TEST_RR_OP( 112 , sra8, 0xffff80ff, 0xffff80ff, 0x00800000, 448); 
TEST_RR_OP( 113 , sra8, 0xfcfdfcfc, 0x80a08080, 0x0098a2b5, 452); 
TEST_RR_OP( 114 , sra8, 0xb815ff94, 0xb815ff94, 0x80ff8000, 456); 
TEST_RR_OP( 115 , sra8, 0xff00ff00, 0xff00ff00, 0xff000000, 460); 
TEST_RR_OP( 116 , sra8, 0x80ff80ff, 0x80ff80ff, 0x3a00ff00, 464); 
TEST_RR_OP( 117 , sra8, 0x19801800, 0x19801800, 0x00ffff18, 468); 
TEST_RR_OP( 118 , sra8, 0x00ffff00, 0x00ffe809, 0x80ac3cff, 472); 
TEST_RR_OP( 119 , sra8, 0x00ff0000, 0x00ff0000, 0x00ff801b, 476); 
TEST_RR_OP( 120 , sra8, 0xffffc5ff, 0xffffc5ff, 0x8080ff00, 480); 
TEST_RR_OP( 121 , sra8, 0x00ffff00, 0x00ffff00, 0x92ffff02, 484); 
TEST_RR_OP( 122 , sra8, 0xffbdcaff, 0xffbdcaff, 0xff000000, 488); 
TEST_RR_OP( 123 , sra8, 0x00ff00ff, 0x50c54580, 0xff0000ff, 492); 
TEST_RR_OP( 124 , sra8, 0x00ff0000, 0x00ff0000, 0xf6ff4e2e, 496); 
TEST_RR_OP( 125 , sra8, 0xf00001f0, 0x80000e80, 0xca001ac3, 500); 
TEST_RR_OP( 126 , sra8, 0xffff00ff, 0xff8000cb, 0x4780ffff, 504); 
TEST_RR_OP( 127 , sra8, 0xffff00ff, 0xffff00ff, 0xf900ffd6, 508); 
TEST_RR_OP( 128 , sra8, 0xff718000, 0xff718000, 0xff00ff80, 512); 
TEST_RR_OP( 129 , sra8, 0xff00ff00, 0xff5eff00, 0xffd980ff, 516); 
TEST_RR_OP( 130 , sra8, 0xffffffff, 0xffff9c80, 0x008080ff, 520); 
TEST_RR_OP( 131 , sra8, 0xaa000000, 0xaa000000, 0x8080ff80, 524); 
TEST_RR_OP( 132 , sra8, 0x7e3c006c, 0x7e3c006c, 0x0080ffa8, 528); 
TEST_RR_OP( 133 , sra8, 0x80ff4080, 0x80ff4080, 0x8000b280, 532); 
TEST_RR_OP( 134 , sra8, 0x80ff809a, 0x80ff809a, 0x3e000080, 536); 
TEST_RR_OP( 135 , sra8, 0x5e00c400, 0x5e00c400, 0xacc98000, 540); 
TEST_RR_OP( 136 , sra8, 0xff000000, 0xff000000, 0xe6dfc635, 544); 
TEST_RR_OP( 137 , sra8, 0x3580a880, 0x3580a880, 0x00741c00, 548); 
TEST_RR_OP( 138 , sra8, 0xff00ff00, 0xff36f54a, 0x468000ff, 552); 
TEST_RR_OP( 139 , sra8, 0xf8000700, 0x80007f00, 0x8000ff0c, 556); 
TEST_RR_OP( 140 , sra8, 0x00ffff00, 0x4fff8000, 0x0000d1ff, 560); 
TEST_RR_OP( 141 , sra8, 0x00ff4c80, 0x00ff4c80, 0x8000ff00, 564); 
TEST_RR_OP( 142 , sra8, 0x005546ff, 0x005546ff, 0x80808000, 568); 
TEST_RR_OP( 143 , sra8, 0x0000ffff, 0x5000ff87, 0xff1effff, 572); 
TEST_RR_OP( 144 , sra8, 0xff00ffff, 0xb600f09b, 0x408082ff, 576); 
TEST_RR_OP( 145 , sra8, 0xff00ffff, 0xff72ffff, 0x9a8067ff, 580); 
TEST_RR_OP( 146 , sra8, 0x00ffff00, 0x4c808000, 0x800036ff, 584); 
TEST_RR_OP( 147 , sra8, 0xff00ffff, 0xff2f8080, 0x800000ff, 588); 
TEST_RR_OP( 148 , sra8, 0xfc00fc00, 0x80008000, 0x80b9ffcd, 592); 
TEST_RR_OP( 149 , sra8, 0x0004ff85, 0x0004ff85, 0x00008000, 596); 
TEST_RR_OP( 150 , sra8, 0xff00ff00, 0x802eba00, 0x14ff00ff, 600); 
TEST_RR_OP( 151 , sra8, 0xa2ffffd7, 0xa2ffffd7, 0x7680ff80, 604); 
TEST_RR_OP( 152 , sra8, 0xe000ffed, 0x8000ffb7, 0xff804302, 608); 
TEST_RR_OP( 153 , sra8, 0x00fcfeff, 0x009fc1ff, 0x05f080b5, 612); 
TEST_RR_OP( 154 , sra8, 0xf0f008fb, 0x808044db, 0x00ffffdb, 616); 
TEST_RR_OP( 155 , sra8, 0xff0000ff, 0xff0000ff, 0x80008000, 620); 
TEST_RR_OP( 156 , sra8, 0xff00fff0, 0xff00f980, 0x3e00ffdb, 624); 
TEST_RR_OP( 157 , sra8, 0xff6effff, 0xff6effff, 0x00d98000, 628); 
TEST_RR_OP( 158 , sra8, 0x00170c00, 0x00170c00, 0x00806680, 632); 
TEST_RR_OP( 159 , sra8, 0xffff00ff, 0x808000ff, 0xff8000ff, 636); 
TEST_RR_OP( 160 , sra8, 0x8d8080a6, 0x8d8080a6, 0x00008038, 640); 
TEST_RR_OP( 161 , sra8, 0x00499451, 0x00499451, 0xffffff88, 644); 
TEST_RR_OP( 162 , sra8, 0xfffcffff, 0xfffcffff, 0x0000ff80, 648); 
TEST_RR_OP( 163 , sra8, 0x00ff00ff, 0x008000ff, 0x808000ff, 652); 
TEST_RR_OP( 164 , sra8, 0xac9a0000, 0xac9a0000, 0xfcaa0000, 656); 
TEST_RR_OP( 165 , sra8, 0x35ea4480, 0x35ea4480, 0xb9c98000, 660); 
TEST_RR_OP( 166 , sra8, 0xffff0080, 0xffff0080, 0xff808080, 664); 
TEST_RR_OP( 167 , sra8, 0xffff0026, 0xffff0026, 0x00ff0400, 668); 
TEST_RR_OP( 168 , sra8, 0x0000ffff, 0x0068ff80, 0x006100ff, 672); 
TEST_RR_OP( 169 , sra8, 0x006aff73, 0x006aff73, 0x8080ff80, 676); 
TEST_RR_OP( 170 , sra8, 0xfefcff00, 0xcc80ff00, 0x807900b5, 680); 
TEST_RR_OP( 171 , sra8, 0xff010080, 0xff010080, 0x800aae80, 684); 
TEST_RR_OP( 172 , sra8, 0x0000e380, 0x0000e380, 0x0066ff80, 688); 
TEST_RR_OP( 173 , sra8, 0x00f34c00, 0x00f34c00, 0x80ff0000, 692); 
TEST_RR_OP( 174 , sra8, 0xff80ff80, 0xff80ff80, 0x00008028, 696); 
TEST_RR_OP( 175 , sra8, 0x80ffff00, 0x80ffff00, 0x00805280, 700); 
TEST_RR_OP( 176 , sra8, 0x8000ff7f, 0x8000ff7f, 0x0c800080, 704); 
TEST_RR_OP( 177 , sra8, 0x008000ff, 0x008000ff, 0x806f7680, 708); 
TEST_RR_OP( 178 , sra8, 0xffe00003, 0xfd80000f, 0xff00e9da, 712); 
TEST_RR_OP( 179 , sra8, 0xff00ffff, 0xff008080, 0xc0ed80ff, 716); 
TEST_RR_OP( 180 , sra8, 0xffff0000, 0xff800e00, 0xfe00ffff, 720); 
TEST_RR_OP( 181 , sra8, 0xc0c0c000, 0x80808000, 0xd700ff89, 724); 
TEST_RR_OP( 182 , sra8, 0x00ffff04, 0x00ffff04, 0xff008080, 728); 
TEST_RR_OP( 183 , sra8, 0x1eff0000, 0x1eff0000, 0x005f0080, 732); 
TEST_RR_OP( 184 , sra8, 0x00fff8f8, 0x01ff8080, 0x52ff00f4, 736); 
TEST_RR_OP( 185 , sra8, 0xffffffff, 0xff808080, 0x399c00ff, 740); 
TEST_RR_OP( 186 , sra8, 0xff808000, 0xff808000, 0x8080c480, 744); 
TEST_RR_OP( 187 , sra8, 0xffffffff, 0x8080ff80, 0x00ffffff, 748); 
TEST_RR_OP( 188 , sra8, 0x8444efff, 0x8444efff, 0xffd00000, 752); 
TEST_RR_OP( 189 , sra8, 0xf0020000, 0x80170000, 0x80ff805b, 756); 
TEST_RR_OP( 190 , sra8, 0xffffffff, 0xffffffff, 0xffff00e1, 760); 
TEST_RR_OP( 191 , sra8, 0x00ffffff, 0x0080b6e3, 0x80ff80ff, 764); 
TEST_RR_OP( 192 , sra8, 0x000000ff, 0x000000ff, 0x6b808097, 768); 
TEST_RR_OP( 193 , sra8, 0x802180d5, 0x802180d5, 0xffffc000, 772); 
TEST_RR_OP( 194 , sra8, 0xff008080, 0xff008080, 0x98ff0080, 776); 
TEST_RR_OP( 195 , sra8, 0x00050000, 0x00050000, 0xff00ff80, 780); 
TEST_RR_OP( 196 , sra8, 0xff001c80, 0xff001c80, 0x00ff1180, 784); 
TEST_RR_OP( 197 , sra8, 0xff0080ff, 0xff0080ff, 0x95578080, 788); 
TEST_RR_OP( 198 , sra8, 0x0100ff00, 0x0100ff00, 0x8080ff00, 792); 
TEST_RR_OP( 199 , sra8, 0xf0fffe0b, 0x80fff55c, 0x00ff80ab, 796); 

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
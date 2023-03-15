# See LICENSE for license details.
#*****************************************************************************
# smin8.S
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

TEST_RR_OP( 2 , smin8, 0x8080ff80, 0xff80ff00, 0x80ff0080, 8); 
TEST_RR_OP( 3 , smin8, 0x00ffffed, 0x00ff00ed, 0x27ffff00, 12); 
TEST_RR_OP( 4 , smin8, 0x80808080, 0x801f8000, 0x0080ff80, 16); 
TEST_RR_OP( 5 , smin8, 0xff84ffff, 0xffffffff, 0x0084ff38, 20); 
TEST_RR_OP( 6 , smin8, 0x800080ff, 0xa15980ff, 0x8000ffff, 24); 
TEST_RR_OP( 7 , smin8, 0x8008ffff, 0x802affff, 0x80080000, 28); 
TEST_RR_OP( 8 , smin8, 0x80808080, 0x8080a7ff, 0x00008080, 32); 
TEST_RR_OP( 9 , smin8, 0x80ff80ff, 0x09ffffff, 0x80008000, 36); 
TEST_RR_OP( 10 , smin8, 0x8080ff8b, 0xb2802bff, 0x8000ff8b, 40); 
TEST_RR_OP( 11 , smin8, 0x80800080, 0xff8000ff, 0x80000080, 44); 
TEST_RR_OP( 12 , smin8, 0x1f8080ff, 0x368036ff, 0x1fff80ff, 48); 
TEST_RR_OP( 13 , smin8, 0xff80ff80, 0xff80ffb5, 0x00ffff80, 52); 
TEST_RR_OP( 14 , smin8, 0x8080ffd1, 0xfe80ff79, 0x800005d1, 56); 
TEST_RR_OP( 15 , smin8, 0xff80ffff, 0x0084ff00, 0xff80ffff, 60); 
TEST_RR_OP( 16 , smin8, 0x809000ff, 0x00cb00ff, 0x80900000, 64); 
TEST_RR_OP( 17 , smin8, 0x80a9feff, 0x53be07ff, 0x80a9feff, 68); 
TEST_RR_OP( 18 , smin8, 0x80ffe180, 0xc2ff0a9a, 0x8000e180, 72); 
TEST_RR_OP( 19 , smin8, 0x80f6ffff, 0xfff6ffff, 0x80ff0000, 76); 
TEST_RR_OP( 20 , smin8, 0xffa6ff80, 0xffa60080, 0x00ffff80, 80); 
TEST_RR_OP( 21 , smin8, 0xffd3ff80, 0x00d30080, 0xffffffff, 84); 
TEST_RR_OP( 22 , smin8, 0x80808080, 0xf4808000, 0x80236980, 88); 
TEST_RR_OP( 23 , smin8, 0x00ffd1ff, 0x00ffffff, 0x00ffd100, 92); 
TEST_RR_OP( 24 , smin8, 0x84b08d80, 0xfbb08dff, 0x8400ba80, 96); 
TEST_RR_OP( 25 , smin8, 0x80808000, 0x80808047, 0x00008000, 100); 
TEST_RR_OP( 26 , smin8, 0x80fcff8c, 0x80ffff8c, 0x57fcff1e, 104); 
TEST_RR_OP( 27 , smin8, 0xff8080e5, 0xff8080ff, 0xffffd1e5, 108); 
TEST_RR_OP( 28 , smin8, 0x80ff00ff, 0xffff0000, 0x800000ff, 112); 
TEST_RR_OP( 29 , smin8, 0x80ffff80, 0x8d31ff80, 0x80ff00d7, 116); 
TEST_RR_OP( 30 , smin8, 0xb1008080, 0xb100f780, 0xff008080, 120); 
TEST_RR_OP( 31 , smin8, 0xff0080f7, 0x000080ff, 0xff0e80f7, 124); 
TEST_RR_OP( 32 , smin8, 0xffff8080, 0x00ff80ff, 0xff00ff80, 128); 
TEST_RR_OP( 33 , smin8, 0x80808060, 0x0380ff62, 0x80808060, 132); 
TEST_RR_OP( 34 , smin8, 0xff8080c0, 0xffff00ff, 0x008080c0, 136); 
TEST_RR_OP( 35 , smin8, 0x8080ffff, 0xac80ffff, 0x8080ffff, 140); 
TEST_RR_OP( 36 , smin8, 0x808080a1, 0x800080ff, 0xff80ffa1, 144); 
TEST_RR_OP( 37 , smin8, 0xffff8000, 0xff058010, 0xffff0000, 148); 
TEST_RR_OP( 38 , smin8, 0x0000f380, 0x0000f380, 0x4b000000, 152); 
TEST_RR_OP( 39 , smin8, 0xcbff80ff, 0xcb0080ff, 0xffff65ff, 156); 
TEST_RR_OP( 40 , smin8, 0x80808080, 0x80808080, 0x80008069, 160); 
TEST_RR_OP( 41 , smin8, 0x00ff98ff, 0x000798ff, 0x00ffff00, 164); 
TEST_RR_OP( 42 , smin8, 0xf6918080, 0x761fff80, 0xf69180ff, 168); 
TEST_RR_OP( 43 , smin8, 0xf6ff9c00, 0x00009c00, 0xf6ff006b, 172); 
TEST_RR_OP( 44 , smin8, 0xffffffff, 0xffffffff, 0xffff00ff, 176); 
TEST_RR_OP( 45 , smin8, 0x8080ffff, 0xff804bff, 0x8080ffff, 180); 
TEST_RR_OP( 46 , smin8, 0xff00ff80, 0xff00ff80, 0xff2f0080, 184); 
TEST_RR_OP( 47 , smin8, 0xe3c7ff80, 0xe300ff80, 0xeec70080, 188); 
TEST_RR_OP( 48 , smin8, 0xff808000, 0xff808031, 0x00008000, 192); 
TEST_RR_OP( 49 , smin8, 0xff8000ff, 0x00fa00ff, 0xff803c00, 196); 
TEST_RR_OP( 50 , smin8, 0xbc9400ff, 0x00ff1549, 0xbc9400ff, 200); 
TEST_RR_OP( 51 , smin8, 0xffffff80, 0x00000080, 0xffffff00, 204); 
TEST_RR_OP( 52 , smin8, 0x00803780, 0x00806900, 0x00ff3780, 208); 
TEST_RR_OP( 53 , smin8, 0x8080cb80, 0x8080cb00, 0xff260080, 212); 
TEST_RR_OP( 54 , smin8, 0xb9e68080, 0xb9ff7a80, 0xdbe680e5, 216); 
TEST_RR_OP( 55 , smin8, 0xc1ff8080, 0xc1ff7700, 0x12008080, 220); 
TEST_RR_OP( 56 , smin8, 0xff80ff80, 0xff800000, 0x004cff80, 224); 
TEST_RR_OP( 57 , smin8, 0x80ffffff, 0x0000ffff, 0x80ff00ff, 228); 
TEST_RR_OP( 58 , smin8, 0x808080ff, 0x80ffdcff, 0x808080ff, 232); 
TEST_RR_OP( 59 , smin8, 0x00008000, 0x0000ff1f, 0x00008000, 236); 
TEST_RR_OP( 60 , smin8, 0x80808000, 0x80808000, 0xff800000, 240); 
TEST_RR_OP( 61 , smin8, 0x8080ff80, 0x8080ff80, 0x80ff7580, 244); 
TEST_RR_OP( 62 , smin8, 0x80678096, 0xff678096, 0x806762ff, 248); 
TEST_RR_OP( 63 , smin8, 0x808000aa, 0xff8000aa, 0x80c40063, 252); 
TEST_RR_OP( 64 , smin8, 0xff809680, 0xff8096ff, 0x00800080, 256); 
TEST_RR_OP( 65 , smin8, 0x80808080, 0xffff0080, 0x80808032, 260); 
TEST_RR_OP( 66 , smin8, 0xffd3a78d, 0x0000a78d, 0xffd3ffff, 264); 
TEST_RR_OP( 67 , smin8, 0xffff80ff, 0xff0000ff, 0xffff8038, 268); 
TEST_RR_OP( 68 , smin8, 0x80808080, 0x80808000, 0x00ff8080, 272); 
TEST_RR_OP( 69 , smin8, 0xa2ff1200, 0xcbff5d00, 0xa2ff1200, 276); 
TEST_RR_OP( 70 , smin8, 0xd2808600, 0xd2808600, 0x00ffff00, 280); 
TEST_RR_OP( 71 , smin8, 0xbf808080, 0xff808380, 0xbf8080ff, 284); 
TEST_RR_OP( 72 , smin8, 0x8080ff80, 0x0080ffff, 0x80deff80, 288); 
TEST_RR_OP( 73 , smin8, 0xff80e880, 0xffffff80, 0xff80e8ff, 292); 
TEST_RR_OP( 74 , smin8, 0xffea8080, 0x00eaffe0, 0xff008080, 296); 
TEST_RR_OP( 75 , smin8, 0x80ce8080, 0x00ce8080, 0x80000000, 300); 
TEST_RR_OP( 76 , smin8, 0x0080a580, 0x00800580, 0x70ffa567, 304); 
TEST_RR_OP( 77 , smin8, 0xff80b6ff, 0xffff0024, 0xff80b6ff, 308); 
TEST_RR_OP( 78 , smin8, 0xcc808280, 0xff802740, 0xcc008280, 312); 
TEST_RR_OP( 79 , smin8, 0x0000ff00, 0x4100ff00, 0x00523100, 316); 
TEST_RR_OP( 80 , smin8, 0xa0808008, 0xa0ffff36, 0x00808008, 320); 
TEST_RR_OP( 81 , smin8, 0xff80ff80, 0xff80ff80, 0xff002d80, 324); 
TEST_RR_OP( 82 , smin8, 0x80808080, 0x82808080, 0x800060ac, 328); 
TEST_RR_OP( 83 , smin8, 0x00e180ff, 0x2e0b80ff, 0x00e15cff, 332); 
TEST_RR_OP( 84 , smin8, 0x808080ff, 0x6180ffff, 0x80008000, 336); 
TEST_RR_OP( 85 , smin8, 0x80808000, 0x00800000, 0x80808000, 340); 
TEST_RR_OP( 86 , smin8, 0x8080d800, 0x8080ff00, 0xffffd800, 344); 
TEST_RR_OP( 87 , smin8, 0x8000ffff, 0x250aff00, 0x800000ff, 348); 
TEST_RR_OP( 88 , smin8, 0x008686e3, 0x006c8600, 0x6d86ffe3, 352); 
TEST_RR_OP( 89 , smin8, 0x00ff8080, 0x00ff00ad, 0x31508080, 356); 
TEST_RR_OP( 90 , smin8, 0xffff8080, 0xffff8080, 0x42002b00, 360); 
TEST_RR_OP( 91 , smin8, 0xc680ffff, 0xc600ffff, 0xff800025, 364); 
TEST_RR_OP( 92 , smin8, 0xffffbfff, 0x00ff00ff, 0xff00bf00, 368); 
TEST_RR_OP( 93 , smin8, 0xff8080ff, 0xff1900ff, 0xff808000, 372); 
TEST_RR_OP( 94 , smin8, 0xf0008000, 0xf0008000, 0xff0d007c, 376); 
TEST_RR_OP( 95 , smin8, 0x8080e680, 0xff80ff80, 0x8093e600, 380); 
TEST_RR_OP( 96 , smin8, 0x80808080, 0x80008080, 0x008080d8, 384); 
TEST_RR_OP( 97 , smin8, 0xebff8080, 0xeb628080, 0x61ff00d3, 388); 
TEST_RR_OP( 98 , smin8, 0x9000ff98, 0x90000098, 0xff3aff41, 392); 
TEST_RR_OP( 99 , smin8, 0xb38080ff, 0xb3808fff, 0x008080ff, 396); 
TEST_RR_OP( 100 , smin8, 0xff80b980, 0xff800080, 0x2461b980, 400); 
TEST_RR_OP( 101 , smin8, 0xffff00a2, 0xffff6f00, 0x00ff00a2, 404); 
TEST_RR_OP( 102 , smin8, 0xffff0000, 0xff000000, 0x00ff0000, 408); 
TEST_RR_OP( 103 , smin8, 0x80e500ff, 0x80ff42ff, 0x0ae500ff, 412); 
TEST_RR_OP( 104 , smin8, 0x80d580e5, 0x80ff0055, 0x00d580e5, 416); 
TEST_RR_OP( 105 , smin8, 0x80ff5400, 0x80007200, 0x80ff5400, 420); 
TEST_RR_OP( 106 , smin8, 0x00f4ef80, 0x0000ef80, 0x00f4ff80, 424); 
TEST_RR_OP( 107 , smin8, 0xc3808080, 0xc38080ff, 0x00ffff80, 428); 
TEST_RR_OP( 108 , smin8, 0x80008080, 0xff2a8000, 0x80000080, 432); 
TEST_RR_OP( 109 , smin8, 0xffff8025, 0xffff8025, 0x00ffff28, 436); 
TEST_RR_OP( 110 , smin8, 0x00ffffff, 0x00ff00ff, 0x00ffff00, 440); 
TEST_RR_OP( 111 , smin8, 0xff80ff80, 0x4d800080, 0xff80ff00, 444); 
TEST_RR_OP( 112 , smin8, 0xff000000, 0xff000000, 0x00000063, 448); 
TEST_RR_OP( 113 , smin8, 0x80ff80ff, 0x00ff805f, 0x80ffffff, 452); 
TEST_RR_OP( 114 , smin8, 0x80809780, 0x80809780, 0x8000ff00, 456); 
TEST_RR_OP( 115 , smin8, 0xae8080ff, 0xf7008064, 0xae8000ff, 460); 
TEST_RR_OP( 116 , smin8, 0x9cff0080, 0x9cff0080, 0x00003300, 464); 
TEST_RR_OP( 117 , smin8, 0x809c0080, 0x2f000080, 0x809c5380, 468); 
TEST_RR_OP( 118 , smin8, 0xff80ffbb, 0xff80ffbb, 0x0080ffff, 472); 
TEST_RR_OP( 119 , smin8, 0xffb78410, 0xff5f8410, 0x00b75913, 476); 
TEST_RR_OP( 120 , smin8, 0x00ff8000, 0x3709bb00, 0x00ff804f, 480); 
TEST_RR_OP( 121 , smin8, 0x9c808080, 0x9c800080, 0x00f28080, 484); 
TEST_RR_OP( 122 , smin8, 0x80808080, 0x80ffff80, 0xff808080, 488); 
TEST_RR_OP( 123 , smin8, 0x808ac180, 0x80a7c180, 0x808a0880, 492); 
TEST_RR_OP( 124 , smin8, 0x3980de80, 0x63ffde80, 0x3980ffff, 496); 
TEST_RR_OP( 125 , smin8, 0x008080ff, 0x00ff80ff, 0x008080ff, 500); 
TEST_RR_OP( 126 , smin8, 0xff80808e, 0xff808000, 0x0680ff8e, 504); 
TEST_RR_OP( 127 , smin8, 0x888000ff, 0x88ff00ff, 0x008004ff, 508); 
TEST_RR_OP( 128 , smin8, 0x80808aff, 0x8080ff42, 0xfcd18aff, 512); 
TEST_RR_OP( 129 , smin8, 0xffff8080, 0x63ffff80, 0xffff8000, 516); 
TEST_RR_OP( 130 , smin8, 0x8780f18e, 0x87a4f100, 0xbc80ff8e, 520); 
TEST_RR_OP( 131 , smin8, 0xff808080, 0xff808080, 0x1e808d31, 524); 
TEST_RR_OP( 132 , smin8, 0x80800080, 0x808071b8, 0xff800080, 528); 
TEST_RR_OP( 133 , smin8, 0xff808000, 0xff480000, 0x00808000, 532); 
TEST_RR_OP( 134 , smin8, 0x8700ea00, 0x87000000, 0x0000ea31, 536); 
TEST_RR_OP( 135 , smin8, 0xff80ffff, 0xffffffff, 0x128000ff, 540); 
TEST_RR_OP( 136 , smin8, 0x80008080, 0x6100e580, 0x803d8037, 544); 
TEST_RR_OP( 137 , smin8, 0xff808000, 0x21000000, 0xff808000, 548); 
TEST_RR_OP( 138 , smin8, 0x80ffd2ff, 0xff0058ff, 0x80ffd2ff, 552); 
TEST_RR_OP( 139 , smin8, 0xe5ffff80, 0x73ffffff, 0xe5515c80, 556); 
TEST_RR_OP( 140 , smin8, 0xca80ff80, 0x0080ff91, 0xcaffff80, 560); 
TEST_RR_OP( 141 , smin8, 0xffdd8080, 0x00dd92ff, 0xff008080, 564); 
TEST_RR_OP( 142 , smin8, 0xff80ff80, 0xff8d0000, 0x0080ff80, 568); 
TEST_RR_OP( 143 , smin8, 0x80ff0080, 0x780056ff, 0x80ff0080, 572); 
TEST_RR_OP( 144 , smin8, 0xb6808080, 0xff800000, 0xb6008080, 576); 
TEST_RR_OP( 145 , smin8, 0x269280ff, 0x26ff0000, 0x659280ff, 580); 
TEST_RR_OP( 146 , smin8, 0xf284fffc, 0xf284ff00, 0x0000fffc, 584); 
TEST_RR_OP( 147 , smin8, 0xe9808080, 0xe9008080, 0x4d800000, 588); 
TEST_RR_OP( 148 , smin8, 0x80ff0080, 0x80000080, 0x80ff21e1, 592); 
TEST_RR_OP( 149 , smin8, 0x8080e2cd, 0x8080e200, 0x2674ffcd, 596); 
TEST_RR_OP( 150 , smin8, 0x908080ff, 0x158080ff, 0x9000c779, 600); 
TEST_RR_OP( 151 , smin8, 0xf3808080, 0xff808080, 0xf3ffdd34, 604); 
TEST_RR_OP( 152 , smin8, 0x80b60080, 0x80b60077, 0x80ff0080, 608); 
TEST_RR_OP( 153 , smin8, 0x80ff8084, 0xffff7484, 0x80ff80a3, 612); 
TEST_RR_OP( 154 , smin8, 0xff80ff87, 0xff80ff87, 0xffffff00, 616); 
TEST_RR_OP( 155 , smin8, 0x80ffe1be, 0x8000ffbe, 0x80ffe100, 620); 
TEST_RR_OP( 156 , smin8, 0xff86e381, 0xff860081, 0xff5fe3ff, 624); 
TEST_RR_OP( 157 , smin8, 0xff8099e7, 0x008099e7, 0xff00ffff, 628); 
TEST_RR_OP( 158 , smin8, 0xffffff80, 0x10ffff80, 0xff1cff00, 632); 
TEST_RR_OP( 159 , smin8, 0xffffee00, 0xff1aee00, 0x7affff6b, 636); 
TEST_RR_OP( 160 , smin8, 0xc900adc5, 0x00001fc5, 0xc900adff, 640); 
TEST_RR_OP( 161 , smin8, 0xffd8ffde, 0xffffff14, 0x00d800de, 644); 
TEST_RR_OP( 162 , smin8, 0x8099ff80, 0x80990080, 0xff00ff00, 648); 
TEST_RR_OP( 163 , smin8, 0xff80ff80, 0xff80ff80, 0x007fff80, 652); 
TEST_RR_OP( 164 , smin8, 0xf18080ff, 0x008080ff, 0xf1002dff, 656); 
TEST_RR_OP( 165 , smin8, 0x8080be00, 0xffffbe00, 0x80800000, 660); 
TEST_RR_OP( 166 , smin8, 0x8080ff80, 0x80200000, 0x9e80ff80, 664); 
TEST_RR_OP( 167 , smin8, 0x80ff8080, 0xb4ff8080, 0x80ffdc80, 668); 
TEST_RR_OP( 168 , smin8, 0xff8080ff, 0xff8000ff, 0xff808000, 672); 
TEST_RR_OP( 169 , smin8, 0x058088ff, 0x743588ff, 0x0580ff08, 676); 
TEST_RR_OP( 170 , smin8, 0x80ac0080, 0x80ac0080, 0x00000c03, 680); 
TEST_RR_OP( 171 , smin8, 0x80ff2c80, 0xff662c80, 0x80ff7c8a, 684); 
TEST_RR_OP( 172 , smin8, 0x8080ff80, 0x80800087, 0x00ffff80, 688); 
TEST_RR_OP( 173 , smin8, 0xff80ff80, 0x0080ff3c, 0xff00ff80, 692); 
TEST_RR_OP( 174 , smin8, 0x80808080, 0x808080ff, 0x8067fb80, 696); 
TEST_RR_OP( 175 , smin8, 0x8b80ffff, 0x8bceffff, 0xff800000, 700); 
TEST_RR_OP( 176 , smin8, 0x80ff80ff, 0x801880ff, 0x79ff0015, 704); 
TEST_RR_OP( 177 , smin8, 0x80ff00d2, 0x00ff0000, 0x80ff00d2, 708); 
TEST_RR_OP( 178 , smin8, 0x80ff80ff, 0xedff80ff, 0x80003900, 712); 
TEST_RR_OP( 179 , smin8, 0xd580ff80, 0xd500ff00, 0xff80ff80, 716); 
TEST_RR_OP( 180 , smin8, 0x8080ff8c, 0xff80ffff, 0x8030658c, 720); 
TEST_RR_OP( 181 , smin8, 0x80ffe59b, 0xffffffff, 0x80ffe59b, 724); 
TEST_RR_OP( 182 , smin8, 0xd5ff8080, 0xd5ff0074, 0x00ff8080, 728); 
TEST_RR_OP( 183 , smin8, 0x80008080, 0x8000ff80, 0xfe008080, 732); 
TEST_RR_OP( 184 , smin8, 0x81ff00ff, 0x003c00ff, 0x81ff0000, 736); 
TEST_RR_OP( 185 , smin8, 0x9bffff00, 0x00ffff00, 0x9bff0000, 740); 
TEST_RR_OP( 186 , smin8, 0x800080db, 0x800080db, 0xff00ff49, 744); 
TEST_RR_OP( 187 , smin8, 0x80008080, 0x800080ff, 0xff4ea080, 748); 
TEST_RR_OP( 188 , smin8, 0xc800abff, 0xc80000ff, 0xf900ab00, 752); 
TEST_RR_OP( 189 , smin8, 0x808084ff, 0x805884ff, 0xff80ffff, 756); 
TEST_RR_OP( 190 , smin8, 0x8080ff80, 0x8018ff80, 0x0080ffff, 760); 
TEST_RR_OP( 191 , smin8, 0x80808080, 0x0000db80, 0x808080ff, 764); 
TEST_RR_OP( 192 , smin8, 0x8080f6ff, 0x8080ffff, 0xb230f6ff, 768); 
TEST_RR_OP( 193 , smin8, 0x80ff80ff, 0x80ffffff, 0x620080ff, 772); 
TEST_RR_OP( 194 , smin8, 0x808089ff, 0x8080895b, 0xffffffff, 776); 
TEST_RR_OP( 195 , smin8, 0x9d179480, 0x9d37ff80, 0x3817947c, 780); 
TEST_RR_OP( 196 , smin8, 0x0000b280, 0x00470056, 0x5d00b280, 784); 
TEST_RR_OP( 197 , smin8, 0x00ee9f80, 0x00ff9f80, 0x66eeffff, 788); 
TEST_RR_OP( 198 , smin8, 0xffb280e8, 0xffff80e8, 0xffb20014, 792); 
TEST_RR_OP( 199 , smin8, 0x80a0ff80, 0x61ffff80, 0x80a071ff, 796); 

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
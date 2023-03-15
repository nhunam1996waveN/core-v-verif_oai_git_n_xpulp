# See LICENSE for license details.
#*****************************************************************************
# sra8.u.S
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

TEST_RR_OP( 2 , sra8.u, 0x00ff0001, 0xff800076, 0x008080ff, 8); 
TEST_RR_OP( 3 , sra8.u, 0x00ffff00, 0x00808000, 0x80ff80ff, 12); 
TEST_RR_OP( 4 , sra8.u, 0x00ffff9e, 0x00ffff9e, 0xffffff00, 16); 
TEST_RR_OP( 5 , sra8.u, 0x0080ff00, 0x0080ff00, 0xff800000, 20); 
TEST_RR_OP( 6 , sra8.u, 0x60d780ff, 0x60d780ff, 0x54ff3a80, 24); 
TEST_RR_OP( 7 , sra8.u, 0x791d8000, 0x791d8000, 0x00008028, 28); 
TEST_RR_OP( 8 , sra8.u, 0xbb00ff78, 0xbb00ff78, 0x42008080, 32); 
TEST_RR_OP( 9 , sra8.u, 0x00000000, 0x153bffff, 0x6c80ffff, 36); 
TEST_RR_OP( 10 , sra8.u, 0x24ffffde, 0x24ffffde, 0x8000c000, 40); 
TEST_RR_OP( 11 , sra8.u, 0x002200a7, 0x002200a7, 0x00730080, 44); 
TEST_RR_OP( 12 , sra8.u, 0x00ffff00, 0x00ffff00, 0x00d18000, 48); 
TEST_RR_OP( 13 , sra8.u, 0xff8000ff, 0xff8000ff, 0x80f49280, 52); 
TEST_RR_OP( 14 , sra8.u, 0xfe000000, 0x80ffff00, 0x008000e6, 56); 
TEST_RR_OP( 15 , sra8.u, 0x0074bf66, 0x0074bf66, 0x86ff0000, 60); 
TEST_RR_OP( 16 , sra8.u, 0x00fa8000, 0x00fa8000, 0x00ff0080, 64); 
TEST_RR_OP( 17 , sra8.u, 0xff000000, 0x80ff00ff, 0x81ffff1f, 68); 
TEST_RR_OP( 18 , sra8.u, 0xff0000ff, 0x80000080, 0x00d1ffff, 72); 
TEST_RR_OP( 19 , sra8.u, 0x00ff0001, 0xff80ff68, 0x00ad00ff, 76); 
TEST_RR_OP( 20 , sra8.u, 0x005dff80, 0x005dff80, 0xe6808100, 80); 
TEST_RR_OP( 21 , sra8.u, 0xff000000, 0xff000000, 0xffff6c80, 84); 
TEST_RR_OP( 22 , sra8.u, 0x00de6b2a, 0x00de6b2a, 0x80902928, 88); 
TEST_RR_OP( 23 , sra8.u, 0x7100ffff, 0x7100ffff, 0xd2007700, 92); 
TEST_RR_OP( 24 , sra8.u, 0x00ffff80, 0x00ffff80, 0x6f80d180, 96); 
TEST_RR_OP( 25 , sra8.u, 0x001c57ff, 0x001c57ff, 0x0080ff80, 100); 
TEST_RR_OP( 26 , sra8.u, 0x00000000, 0x00000000, 0x8000ff80, 104); 
TEST_RR_OP( 27 , sra8.u, 0x808080a0, 0x808080a0, 0x8080b600, 108); 
TEST_RR_OP( 28 , sra8.u, 0x0000ffff, 0xff1fa480, 0x800080ff, 112); 
TEST_RR_OP( 29 , sra8.u, 0x00800098, 0x00800098, 0x62ffff00, 116); 
TEST_RR_OP( 30 , sra8.u, 0xfffc00ff, 0xfffc00ff, 0x01945100, 120); 
TEST_RR_OP( 31 , sra8.u, 0x000000fc, 0xf0000080, 0xc1aadc35, 124); 
TEST_RR_OP( 32 , sra8.u, 0xfe000000, 0x80ffff00, 0x0080665e, 128); 
TEST_RR_OP( 33 , sra8.u, 0xf800f8f8, 0x80ff8080, 0x80a5ff4c, 132); 
TEST_RR_OP( 34 , sra8.u, 0x00000000, 0x00000001, 0x808000f6, 136); 
TEST_RR_OP( 35 , sra8.u, 0x00fe0000, 0x0080f6ff, 0x00723f3e, 140); 
TEST_RR_OP( 36 , sra8.u, 0x800000ff, 0x800000ff, 0x00ff0000, 144); 
TEST_RR_OP( 37 , sra8.u, 0xf8fefafe, 0x80e4a7de, 0x80e0ff2c, 148); 
TEST_RR_OP( 38 , sra8.u, 0x80ffff80, 0x80ffff80, 0x00800000, 152); 
TEST_RR_OP( 39 , sra8.u, 0xc0e63c00, 0x80cb78ff, 0xff64b651, 156); 
TEST_RR_OP( 40 , sra8.u, 0x00ff0000, 0xdd80ffff, 0x80ff3aff, 160); 
TEST_RR_OP( 41 , sra8.u, 0x00000000, 0xff00ff00, 0x00ffffad, 164); 
TEST_RR_OP( 42 , sra8.u, 0x00c0c0c0, 0x00808080, 0x8000bc39, 168); 
TEST_RR_OP( 43 , sra8.u, 0x80114580, 0x80114580, 0x7b008080, 172); 
TEST_RR_OP( 44 , sra8.u, 0x800900ff, 0x800900ff, 0x00000000, 176); 
TEST_RR_OP( 45 , sra8.u, 0x000080ff, 0x000080ff, 0xe4b6ab00, 180); 
TEST_RR_OP( 46 , sra8.u, 0x00fbfc00, 0x00afc5ff, 0x80a44c44, 184); 
TEST_RR_OP( 47 , sra8.u, 0x00ffff00, 0x1680bc00, 0x800000ff, 188); 
TEST_RR_OP( 48 , sra8.u, 0x80460080, 0x80460080, 0x80004580, 192); 
TEST_RR_OP( 49 , sra8.u, 0xffff8038, 0xffff8038, 0x007c8000, 196); 
TEST_RR_OP( 50 , sra8.u, 0xffbc0000, 0xffbc0000, 0x6580db00, 200); 
TEST_RR_OP( 51 , sra8.u, 0x00808080, 0x00808080, 0xff1a8080, 204); 
TEST_RR_OP( 52 , sra8.u, 0x80ff37ff, 0x80ff37ff, 0x80ffc500, 208); 
TEST_RR_OP( 53 , sra8.u, 0xffffff80, 0xffffff80, 0xffffff00, 212); 
TEST_RR_OP( 54 , sra8.u, 0x000000ff, 0xff000080, 0xff8080ff, 216); 
TEST_RR_OP( 55 , sra8.u, 0xff00ff00, 0x800080ff, 0x80ff00ff, 220); 
TEST_RR_OP( 56 , sra8.u, 0x00a70000, 0x00a70000, 0x804db480, 224); 
TEST_RR_OP( 57 , sra8.u, 0x000000ff, 0x00ff0080, 0x80ea00ff, 228); 
TEST_RR_OP( 58 , sra8.u, 0x16c02e00, 0x2b805c00, 0xffa80031, 232); 
TEST_RR_OP( 59 , sra8.u, 0x000000fe, 0xffffffc2, 0xff808015, 236); 
TEST_RR_OP( 60 , sra8.u, 0x64000000, 0x64000000, 0xff808000, 240); 
TEST_RR_OP( 61 , sra8.u, 0x8080800a, 0x8080800a, 0x105b0000, 244); 
TEST_RR_OP( 62 , sra8.u, 0xff00fff6, 0xff00fff6, 0xffd60000, 248); 
TEST_RR_OP( 63 , sra8.u, 0x0000ffff, 0xff008c80, 0x0f9ff7ff, 252); 
TEST_RR_OP( 64 , sra8.u, 0x00f704e5, 0x00f704e5, 0x00ffd480, 256); 
TEST_RR_OP( 65 , sra8.u, 0x08f0f000, 0x3e8082ff, 0xff000bab, 260); 
TEST_RR_OP( 66 , sra8.u, 0x00ff1700, 0x00ff1700, 0x00ff0080, 264); 
TEST_RR_OP( 67 , sra8.u, 0xff00ff00, 0x80008000, 0xccff00ff, 268); 
TEST_RR_OP( 68 , sra8.u, 0x000900e0, 0xff250080, 0xff00a3ea, 272); 
TEST_RR_OP( 69 , sra8.u, 0x80008000, 0x80008000, 0xffff0080, 276); 
TEST_RR_OP( 70 , sra8.u, 0x0000ff00, 0xffff80ff, 0xff8000ff, 280); 
TEST_RR_OP( 71 , sra8.u, 0xfcfefc00, 0x80c080ff, 0x8000ff2d, 284); 
TEST_RR_OP( 72 , sra8.u, 0xffff00ff, 0x8080ff80, 0xffff80ff, 288); 
TEST_RR_OP( 73 , sra8.u, 0xf580ff00, 0xf580ff00, 0x8200f680, 292); 
TEST_RR_OP( 74 , sra8.u, 0x00000000, 0x18ffff36, 0x8cff00ff, 296); 
TEST_RR_OP( 75 , sra8.u, 0x00000600, 0xff005b00, 0x00009c44, 300); 
TEST_RR_OP( 76 , sra8.u, 0xffff0000, 0x80800000, 0x2be480ff, 304); 
TEST_RR_OP( 77 , sra8.u, 0x00ffff00, 0x00ffff00, 0x26808000, 308); 
TEST_RR_OP( 78 , sra8.u, 0x00000001, 0xc0260072, 0x0080ffef, 312); 
TEST_RR_OP( 79 , sra8.u, 0x80808000, 0x80808000, 0x80d35080, 316); 
TEST_RR_OP( 80 , sra8.u, 0x00a68000, 0x00a68000, 0xf0008000, 320); 
TEST_RR_OP( 81 , sra8.u, 0x00000000, 0x00ff1500, 0x5b00a7cf, 324); 
TEST_RR_OP( 82 , sra8.u, 0x0000fe00, 0xffff8000, 0xff00807e, 328); 
TEST_RR_OP( 83 , sra8.u, 0x000000ff, 0x000000b7, 0x2dff80ff, 332); 
TEST_RR_OP( 84 , sra8.u, 0x00000000, 0x000000ff, 0xb50080d1, 336); 
TEST_RR_OP( 85 , sra8.u, 0x80802a80, 0x80802a80, 0x80800050, 340); 
TEST_RR_OP( 86 , sra8.u, 0x0000ff00, 0xffff80ff, 0x00ffc9ff, 344); 
TEST_RR_OP( 87 , sra8.u, 0x07e00000, 0x1a8000ff, 0xffde512a, 348); 
TEST_RR_OP( 88 , sra8.u, 0x000000ff, 0xffffff80, 0x80c700ff, 352); 
TEST_RR_OP( 89 , sra8.u, 0x01ff0000, 0x42a400ff, 0xff8000f7, 356); 
TEST_RR_OP( 90 , sra8.u, 0xffb78080, 0xffb78080, 0x80730000, 360); 
TEST_RR_OP( 91 , sra8.u, 0x80ec6280, 0x80ec6280, 0xff009e80, 364); 
TEST_RR_OP( 92 , sra8.u, 0x00ff00ff, 0xffacff80, 0xffefffff, 368); 
TEST_RR_OP( 93 , sra8.u, 0x00ff0000, 0xff80ffeb, 0x804480ff, 372); 
TEST_RR_OP( 94 , sra8.u, 0xff000101, 0xedff1226, 0x008000ed, 376); 
TEST_RR_OP( 95 , sra8.u, 0xf0f0fd00, 0x8080e9ff, 0xa380803b, 380); 
TEST_RR_OP( 96 , sra8.u, 0x00ff0000, 0xff8000ff, 0x0080ffff, 384); 
TEST_RR_OP( 97 , sra8.u, 0x07000000, 0x3400ff00, 0xff80ff93, 388); 
TEST_RR_OP( 98 , sra8.u, 0xe000e000, 0x800080ff, 0xff40376a, 392); 
TEST_RR_OP( 99 , sra8.u, 0xffff0000, 0x8080ff00, 0x698000ff, 396); 
TEST_RR_OP( 100 , sra8.u, 0x000000ff, 0xffffff80, 0xfff380ff, 400); 
TEST_RR_OP( 101 , sra8.u, 0x000000ff, 0xfff0ff81, 0x9d00adff, 404); 
TEST_RR_OP( 102 , sra8.u, 0x808000ff, 0x808000ff, 0xff808080, 408); 
TEST_RR_OP( 103 , sra8.u, 0x00ffff00, 0x00a080ff, 0xff8080ff, 412); 
TEST_RR_OP( 104 , sra8.u, 0xff802580, 0xff802580, 0xfdffff80, 416); 
TEST_RR_OP( 105 , sra8.u, 0xff163d80, 0xff163d80, 0x3200ff00, 420); 
TEST_RR_OP( 106 , sra8.u, 0x00000000, 0x0000ff39, 0x0080d7d7, 424); 
TEST_RR_OP( 107 , sra8.u, 0x80ffff80, 0x80ffff80, 0x00ffff80, 428); 
TEST_RR_OP( 108 , sra8.u, 0x00fe00fe, 0x00800080, 0xff808026, 432); 
TEST_RR_OP( 109 , sra8.u, 0x0048ffff, 0x0048ffff, 0x80800080, 436); 
TEST_RR_OP( 110 , sra8.u, 0x8080ff00, 0x8080ff00, 0x00800080, 440); 
TEST_RR_OP( 111 , sra8.u, 0xfe0100ff, 0x804f00a3, 0x00000a86, 444); 
TEST_RR_OP( 112 , sra8.u, 0xff800080, 0xff800080, 0xba008000, 448); 
TEST_RR_OP( 113 , sra8.u, 0x00000000, 0x0000e3ff, 0x948000ff, 452); 
TEST_RR_OP( 114 , sra8.u, 0x0000d025, 0x00ff9f49, 0xffff0099, 456); 
TEST_RR_OP( 115 , sra8.u, 0x0000f108, 0x00008a3f, 0x8080b8c3, 460); 
TEST_RR_OP( 116 , sra8.u, 0x0000ffff, 0xffff9480, 0x008000ff, 464); 
TEST_RR_OP( 117 , sra8.u, 0xeae0e000, 0xa68080ff, 0xff5e4bc2, 468); 
TEST_RR_OP( 118 , sra8.u, 0x00000001, 0x21000070, 0xffff80ff, 472); 
TEST_RR_OP( 119 , sra8.u, 0xffffff01, 0xb986804c, 0xe3ff37ff, 476); 
TEST_RR_OP( 120 , sra8.u, 0x02c0ee00, 0x0480dcff, 0x804300d1, 480); 
TEST_RR_OP( 121 , sra8.u, 0x000006fb, 0xff0059b7, 0xffffc344, 484); 
TEST_RR_OP( 122 , sra8.u, 0x00ffff80, 0x00ffff80, 0x80173580, 488); 
TEST_RR_OP( 123 , sra8.u, 0xf80000f8, 0x80ffff80, 0xff00ff44, 492); 
TEST_RR_OP( 124 , sra8.u, 0x00000000, 0x00ffd000, 0x1f0ab5ff, 496); 
TEST_RR_OP( 125 , sra8.u, 0x00ffff00, 0x00808aff, 0xff806a2f, 500); 
TEST_RR_OP( 126 , sra8.u, 0x1d00ffa5, 0x1d00ffa5, 0x00801700, 504); 
TEST_RR_OP( 127 , sra8.u, 0x0000ff00, 0x00ff80ff, 0x80ffffff, 508); 
TEST_RR_OP( 128 , sra8.u, 0xffff8000, 0xffff8000, 0xff80ff00, 512); 
TEST_RR_OP( 129 , sra8.u, 0x20ff8000, 0x20ff8000, 0x80008000, 516); 
TEST_RR_OP( 130 , sra8.u, 0x00f00000, 0x0080ff00, 0x84ff00eb, 520); 
TEST_RR_OP( 131 , sra8.u, 0xff000000, 0x800000ff, 0xff0000ff, 524); 
TEST_RR_OP( 132 , sra8.u, 0x802eb580, 0x802eb580, 0x0080ff80, 528); 
TEST_RR_OP( 133 , sra8.u, 0x000000c0, 0x0000ff80, 0xfb64ff99, 532); 
TEST_RR_OP( 134 , sra8.u, 0xdb8b00a0, 0xdb8b00a0, 0x80877080, 536); 
TEST_RR_OP( 135 , sra8.u, 0x00fffd00, 0x03f4e800, 0x808080e3, 540); 
TEST_RR_OP( 136 , sra8.u, 0xff17ff00, 0xff17ff00, 0x80ff0000, 544); 
TEST_RR_OP( 137 , sra8.u, 0x80e7000f, 0x80e7000f, 0xb952ff80, 548); 
TEST_RR_OP( 138 , sra8.u, 0xf5ffff80, 0xf5ffff80, 0x8078ff80, 552); 
TEST_RR_OP( 139 , sra8.u, 0xfc0000fc, 0x80ffff80, 0x80ff801d, 556); 
TEST_RR_OP( 140 , sra8.u, 0xff000000, 0x80ff00ff, 0x808080ff, 560); 
TEST_RR_OP( 141 , sra8.u, 0x8000ff00, 0x8000ff00, 0x0e000000, 564); 
TEST_RR_OP( 142 , sra8.u, 0xff00ff00, 0x80ff8000, 0x8000ffff, 568); 
TEST_RR_OP( 143 , sra8.u, 0x000001ff, 0xffff4a80, 0x0080c0ff, 572); 
TEST_RR_OP( 144 , sra8.u, 0xf000fef0, 0x80fff180, 0x8fff806b, 576); 
TEST_RR_OP( 145 , sra8.u, 0x0000ff00, 0x0000ff00, 0x00ff8080, 580); 
TEST_RR_OP( 146 , sra8.u, 0xffff0080, 0xffff0080, 0x51ff1c00, 584); 
TEST_RR_OP( 147 , sra8.u, 0xfcfc0000, 0x80800000, 0x8080ff8d, 588); 
TEST_RR_OP( 148 , sra8.u, 0x000000ff, 0xff0d0080, 0xff8873ff, 592); 
TEST_RR_OP( 149 , sra8.u, 0x00009e49, 0x00009e49, 0x80ffff00, 596); 
TEST_RR_OP( 150 , sra8.u, 0x0000ffff, 0xffff8080, 0xff80ffff, 600); 
TEST_RR_OP( 151 , sra8.u, 0x00ff8000, 0x00ff8000, 0xffffc380, 604); 
TEST_RR_OP( 152 , sra8.u, 0x44ff00ff, 0x44ff00ff, 0x865e8080, 608); 
TEST_RR_OP( 153 , sra8.u, 0x0000d48f, 0x0000d48f, 0xffff4ad0, 612); 
TEST_RR_OP( 154 , sra8.u, 0x00ff8080, 0x00ff8080, 0x00048000, 616); 
TEST_RR_OP( 155 , sra8.u, 0x00ff0000, 0x008000ff, 0x5800ffff, 620); 
TEST_RR_OP( 156 , sra8.u, 0x00ff8080, 0x00ff8080, 0x00808000, 624); 
TEST_RR_OP( 157 , sra8.u, 0x0000fefe, 0xffff8080, 0x80ff82be, 628); 
TEST_RR_OP( 158 , sra8.u, 0x00f8f800, 0xff808000, 0xff80007c, 632); 
TEST_RR_OP( 159 , sra8.u, 0x809cffff, 0x809cffff, 0xddff0280, 636); 
TEST_RR_OP( 160 , sra8.u, 0xaa80ff11, 0xaa80ff11, 0x0080d380, 640); 
TEST_RR_OP( 161 , sra8.u, 0x61ff0037, 0x61ff0037, 0xff808080, 644); 
TEST_RR_OP( 162 , sra8.u, 0xff008000, 0xff008000, 0x80fe5800, 648); 
TEST_RR_OP( 163 , sra8.u, 0x00000000, 0xffffffff, 0x800080ff, 652); 
TEST_RR_OP( 164 , sra8.u, 0xffff2880, 0xffff2880, 0xff807a00, 656); 
TEST_RR_OP( 165 , sra8.u, 0x80ffff80, 0x80ffff80, 0xffffff00, 660); 
TEST_RR_OP( 166 , sra8.u, 0xff800000, 0xff800000, 0x80ffff00, 664); 
TEST_RR_OP( 167 , sra8.u, 0xffff80ff, 0xffff80ff, 0xd7968000, 668); 
TEST_RR_OP( 168 , sra8.u, 0xff00ff00, 0xff00ff00, 0xff9e4980, 672); 
TEST_RR_OP( 169 , sra8.u, 0x068080b4, 0x068080b4, 0x80baff80, 676); 
TEST_RR_OP( 170 , sra8.u, 0xff000001, 0x8000ff79, 0xffff80ff, 680); 
TEST_RR_OP( 171 , sra8.u, 0x00000000, 0xe3ffd719, 0x804780ff, 684); 
TEST_RR_OP( 172 , sra8.u, 0x007dff00, 0x007dff00, 0xff804580, 688); 
TEST_RR_OP( 173 , sra8.u, 0xe98000ff, 0xe98000ff, 0x00009200, 692); 
TEST_RR_OP( 174 , sra8.u, 0x000002fe, 0xff004ac1, 0xff1b808d, 696); 
TEST_RR_OP( 175 , sra8.u, 0x8000ffff, 0x8000ffff, 0x00ff0000, 700); 
TEST_RR_OP( 176 , sra8.u, 0x9af08080, 0x9af08080, 0xff80c200, 704); 
TEST_RR_OP( 177 , sra8.u, 0xff808080, 0xff808080, 0x00e2ff80, 708); 
TEST_RR_OP( 178 , sra8.u, 0xfb020000, 0xb72500ff, 0x00ffffbc, 712); 
TEST_RR_OP( 179 , sra8.u, 0x00008080, 0x00008080, 0x8080e880, 716); 
TEST_RR_OP( 180 , sra8.u, 0xa4000000, 0xa4000000, 0x00000080, 720); 
TEST_RR_OP( 181 , sra8.u, 0xf000f0f0, 0x80ff8080, 0x80ff840b, 724); 
TEST_RR_OP( 182 , sra8.u, 0xff8080ff, 0xff8080ff, 0x0dfffd00, 728); 
TEST_RR_OP( 183 , sra8.u, 0x000000f0, 0x0000ff80, 0x808000ab, 732); 
TEST_RR_OP( 184 , sra8.u, 0x800080ff, 0x800080ff, 0x00cc0000, 736); 
TEST_RR_OP( 185 , sra8.u, 0xfe020000, 0xcf41ffff, 0x8080ff7d, 740); 
TEST_RR_OP( 186 , sra8.u, 0x00010000, 0x0070e200, 0x800080ff, 744); 
TEST_RR_OP( 187 , sra8.u, 0x808507ff, 0x808507ff, 0xff00ff00, 748); 
TEST_RR_OP( 188 , sra8.u, 0x703bff00, 0x703bff00, 0x803b1e80, 752); 
TEST_RR_OP( 189 , sra8.u, 0x00ff0000, 0xff8000ff, 0xff009cff, 756); 
TEST_RR_OP( 190 , sra8.u, 0x00000000, 0xffffffff, 0x00b0001b, 760); 
TEST_RR_OP( 191 , sra8.u, 0x000000ff, 0xff000080, 0x72ff8057, 764); 
TEST_RR_OP( 192 , sra8.u, 0x00800080, 0x00800080, 0x80ff8000, 768); 
TEST_RR_OP( 193 , sra8.u, 0xff80804e, 0xff80804e, 0xff000080, 772); 
TEST_RR_OP( 194 , sra8.u, 0xff800000, 0xff800000, 0xff3dff80, 776); 
TEST_RR_OP( 195 , sra8.u, 0x00ff0000, 0xff8000f6, 0xff5080ff, 780); 
TEST_RR_OP( 196 , sra8.u, 0xdaff80a7, 0xdaff80a7, 0x003b9880, 784); 
TEST_RR_OP( 197 , sra8.u, 0x70808000, 0x70808000, 0x49800000, 788); 
TEST_RR_OP( 198 , sra8.u, 0xf0020000, 0x800c0000, 0x8080806b, 792); 
TEST_RR_OP( 199 , sra8.u, 0xff9200ff, 0xff9200ff, 0x0014ff80, 796); 

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
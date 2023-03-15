# See LICENSE for license details.
#*****************************************************************************
# srl8.u.S
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

TEST_RR_OP( 2 , srl8.u, 0x80003e80, 0xff007bff, 0x8080ffd1, 8); 
TEST_RR_OP( 3 , srl8.u, 0x01000102, 0x980080ff, 0xff4c1aff, 12); 
TEST_RR_OP( 4 , srl8.u, 0x00100008, 0x00ff0080, 0x8980ffdc, 16); 
TEST_RR_OP( 5 , srl8.u, 0x02010102, 0xc28080ff, 0xe14d27ff, 20); 
TEST_RR_OP( 6 , srl8.u, 0x39ff0080, 0x39ff0080, 0x80ff0080, 24); 
TEST_RR_OP( 7 , srl8.u, 0xff80ff00, 0xff80ff00, 0x80ff0000, 28); 
TEST_RR_OP( 8 , srl8.u, 0x02000101, 0xc3006a82, 0xff80ff6f, 32); 
TEST_RR_OP( 9 , srl8.u, 0xffffff34, 0xffffff34, 0xfff4ff00, 36); 
TEST_RR_OP( 10 , srl8.u, 0x0000ff00, 0x0000ff00, 0x8000ff80, 40); 
TEST_RR_OP( 11 , srl8.u, 0xffd180ff, 0xffd180ff, 0xc5800080, 44); 
TEST_RR_OP( 12 , srl8.u, 0x68bbb880, 0x68bbb880, 0x00800800, 48); 
TEST_RR_OP( 13 , srl8.u, 0x00804017, 0x00ff802d, 0x8080ffa9, 52); 
TEST_RR_OP( 14 , srl8.u, 0xffbe0001, 0xffbe0001, 0xff80f900, 56); 
TEST_RR_OP( 15 , srl8.u, 0x02010000, 0xff800000, 0x802c00ff, 60); 
TEST_RR_OP( 16 , srl8.u, 0x20002015, 0xff00ffa4, 0x0080fff3, 64); 
TEST_RR_OP( 17 , srl8.u, 0x01000102, 0x82004dff, 0xff8000ff, 68); 
TEST_RR_OP( 18 , srl8.u, 0x01010202, 0x9980ffff, 0x0080ffff, 72); 
TEST_RR_OP( 19 , srl8.u, 0x91808000, 0x91808000, 0x11808000, 76); 
TEST_RR_OP( 20 , srl8.u, 0x00ff8000, 0x00ff8000, 0x0060ff88, 80); 
TEST_RR_OP( 21 , srl8.u, 0xff000080, 0xff000080, 0x80838000, 84); 
TEST_RR_OP( 22 , srl8.u, 0x01020200, 0x80fff620, 0xfd6500ff, 88); 
TEST_RR_OP( 23 , srl8.u, 0x0080ff80, 0x0080ff80, 0x4f806e00, 92); 
TEST_RR_OP( 24 , srl8.u, 0x00000000, 0x00000000, 0xff00ffff, 96); 
TEST_RR_OP( 25 , srl8.u, 0xaa808080, 0xaa808080, 0x00001800, 100); 
TEST_RR_OP( 26 , srl8.u, 0x00000020, 0x00000080, 0x3a00804a, 104); 
TEST_RR_OP( 27 , srl8.u, 0x00ffff80, 0x00ffff80, 0x51004f80, 108); 
TEST_RR_OP( 28 , srl8.u, 0xff6affff, 0xff6affff, 0x80ffff80, 112); 
TEST_RR_OP( 29 , srl8.u, 0x00808000, 0x00808000, 0x80178080, 116); 
TEST_RR_OP( 30 , srl8.u, 0xfffbf2ff, 0xfffbf2ff, 0x00990080, 120); 
TEST_RR_OP( 31 , srl8.u, 0xff80665d, 0xff80665d, 0x36ffff80, 124); 
TEST_RR_OP( 32 , srl8.u, 0x00010201, 0x0080ff80, 0x00e981ff, 128); 
TEST_RR_OP( 33 , srl8.u, 0x00010100, 0x32808000, 0xffff00ff, 132); 
TEST_RR_OP( 34 , srl8.u, 0x01000202, 0xa900ffff, 0x00000037, 136); 
TEST_RR_OP( 35 , srl8.u, 0xff80ffff, 0xff80ffff, 0x80ff0080, 140); 
TEST_RR_OP( 36 , srl8.u, 0x00000080, 0x00000080, 0x00ffcee8, 144); 
TEST_RR_OP( 37 , srl8.u, 0x0084a880, 0x0084a880, 0xfffd9280, 148); 
TEST_RR_OP( 38 , srl8.u, 0x00008023, 0x00008023, 0x00000080, 152); 
TEST_RR_OP( 39 , srl8.u, 0xff803092, 0xff803092, 0xb8800020, 156); 
TEST_RR_OP( 40 , srl8.u, 0x01020102, 0x4bff80ff, 0xffff00ff, 160); 
TEST_RR_OP( 41 , srl8.u, 0x20001020, 0xff0080ff, 0x830003c3, 164); 
TEST_RR_OP( 42 , srl8.u, 0x02000000, 0xff000000, 0xdf0036ff, 168); 
TEST_RR_OP( 43 , srl8.u, 0x08100408, 0x80ff4480, 0x9180ffc4, 172); 
TEST_RR_OP( 44 , srl8.u, 0xabfff130, 0xabfff130, 0x80ff8080, 176); 
TEST_RR_OP( 45 , srl8.u, 0x5e00bdff, 0x5e00bdff, 0xff801100, 180); 
TEST_RR_OP( 46 , srl8.u, 0x80800058, 0x80800058, 0x00e4ff00, 184); 
TEST_RR_OP( 47 , srl8.u, 0xf400ffca, 0xf400ffca, 0xff800000, 188); 
TEST_RR_OP( 48 , srl8.u, 0x001e0600, 0x00ed2c00, 0x8000fffb, 192); 
TEST_RR_OP( 49 , srl8.u, 0x00ff00ff, 0x00ff00ff, 0x8000ff00, 196); 
TEST_RR_OP( 50 , srl8.u, 0x004e1e36, 0x004e1e36, 0x55a98080, 200); 
TEST_RR_OP( 51 , srl8.u, 0x02040104, 0x80ff5afc, 0xd1000066, 204); 
TEST_RR_OP( 52 , srl8.u, 0x10202010, 0x80ffff80, 0x0080ff73, 208); 
TEST_RR_OP( 53 , srl8.u, 0x01020001, 0xa6f80080, 0x04ff04ff, 212); 
TEST_RR_OP( 54 , srl8.u, 0x02010002, 0xff8007ff, 0x001fffff, 216); 
TEST_RR_OP( 55 , srl8.u, 0xffccff7f, 0xffccff7f, 0x00ff8080, 220); 
TEST_RR_OP( 56 , srl8.u, 0xff80ff00, 0xff80ff00, 0x80000000, 224); 
TEST_RR_OP( 57 , srl8.u, 0x01204040, 0x0280ffff, 0xffff0072, 228); 
TEST_RR_OP( 58 , srl8.u, 0x09000808, 0x90008080, 0xffffff94, 232); 
TEST_RR_OP( 59 , srl8.u, 0x01020002, 0x80ff00ff, 0xff8012ff, 236); 
TEST_RR_OP( 60 , srl8.u, 0xff000000, 0xff000000, 0x00008080, 240); 
TEST_RR_OP( 61 , srl8.u, 0x02000000, 0xff000000, 0x000080ff, 244); 
TEST_RR_OP( 62 , srl8.u, 0xffffff80, 0xffffff80, 0xff003200, 248); 
TEST_RR_OP( 63 , srl8.u, 0x01040404, 0x4effffff, 0xff808046, 252); 
TEST_RR_OP( 64 , srl8.u, 0x37dd0080, 0x37dd0080, 0xff80ff80, 256); 
TEST_RR_OP( 65 , srl8.u, 0xffe50000, 0xffe50000, 0xff000c00, 260); 
TEST_RR_OP( 66 , srl8.u, 0x01020101, 0x80ff807b, 0x80ffffff, 264); 
TEST_RR_OP( 67 , srl8.u, 0x08020004, 0xff470080, 0xff00ffed, 268); 
TEST_RR_OP( 68 , srl8.u, 0x20003340, 0x8000ccff, 0x610080f2, 272); 
TEST_RR_OP( 69 , srl8.u, 0x02010202, 0xc180ffff, 0x008080ff, 276); 
TEST_RR_OP( 70 , srl8.u, 0x01010100, 0x80808000, 0x008080ff, 280); 
TEST_RR_OP( 71 , srl8.u, 0xd580ff80, 0xd580ff80, 0x00ff8080, 284); 
TEST_RR_OP( 72 , srl8.u, 0x80ff00de, 0x80ff00de, 0xb5808080, 288); 
TEST_RR_OP( 73 , srl8.u, 0x01020200, 0x51fff700, 0x808000ff, 292); 
TEST_RR_OP( 74 , srl8.u, 0x00000001, 0x00000057, 0xba0080ff, 296); 
TEST_RR_OP( 75 , srl8.u, 0x01000102, 0x803b80ff, 0x00ffffff, 300); 
TEST_RR_OP( 76 , srl8.u, 0x00000200, 0x0033ff00, 0xf4ff00ff, 304); 
TEST_RR_OP( 77 , srl8.u, 0x80ff0080, 0x80ff0080, 0xffffff80, 308); 
TEST_RR_OP( 78 , srl8.u, 0x20002010, 0xff00ff80, 0x80ff0053, 312); 
TEST_RR_OP( 79 , srl8.u, 0x800000b4, 0x800000b4, 0x00004180, 316); 
TEST_RR_OP( 80 , srl8.u, 0x00b60080, 0x00b60080, 0x00ff0000, 320); 
TEST_RR_OP( 81 , srl8.u, 0x8080ff00, 0x8080ff00, 0x80ff8080, 324); 
TEST_RR_OP( 82 , srl8.u, 0x00008000, 0x00008000, 0x80800100, 328); 
TEST_RR_OP( 83 , srl8.u, 0x02010102, 0xff8080cd, 0xff6dffff, 332); 
TEST_RR_OP( 84 , srl8.u, 0x80ffffff, 0x80ffffff, 0xff4dff00, 336); 
TEST_RR_OP( 85 , srl8.u, 0x00800037, 0x00800037, 0x2c80df00, 340); 
TEST_RR_OP( 86 , srl8.u, 0xca00ffff, 0xca00ffff, 0xa5ff8000, 344); 
TEST_RR_OP( 87 , srl8.u, 0x80009aff, 0x80009aff, 0xffffff80, 348); 
TEST_RR_OP( 88 , srl8.u, 0x0000ffff, 0x0000ffff, 0xff005400, 352); 
TEST_RR_OP( 89 , srl8.u, 0x7b540040, 0xf6a70080, 0x00bbff69, 356); 
TEST_RR_OP( 90 , srl8.u, 0x02000202, 0xff00ffff, 0x808000ff, 360); 
TEST_RR_OP( 91 , srl8.u, 0x10001010, 0xff00ffff, 0xff003dd4, 364); 
TEST_RR_OP( 92 , srl8.u, 0x00040800, 0x0080ff00, 0x00ff60ed, 368); 
TEST_RR_OP( 93 , srl8.u, 0x4bff0080, 0x4bff0080, 0x85ff8080, 372); 
TEST_RR_OP( 94 , srl8.u, 0x07000808, 0xe200ffff, 0x85008045, 376); 
TEST_RR_OP( 95 , srl8.u, 0x03020002, 0xde800080, 0x8080cf36, 380); 
TEST_RR_OP( 96 , srl8.u, 0x00040008, 0x008000ff, 0x00620f85, 384); 
TEST_RR_OP( 97 , srl8.u, 0x65ff8066, 0x65ff8066, 0x8000ffd0, 388); 
TEST_RR_OP( 98 , srl8.u, 0x02010100, 0xed808000, 0x418080ff, 392); 
TEST_RR_OP( 99 , srl8.u, 0x00101008, 0x05ffff80, 0xfffffffc, 396); 
TEST_RR_OP( 100 , srl8.u, 0x80ad0080, 0x80ad0080, 0x00800080, 400); 
TEST_RR_OP( 101 , srl8.u, 0x80ffff00, 0x80ffff00, 0xffa68000, 404); 
TEST_RR_OP( 102 , srl8.u, 0xffff8000, 0xffff8000, 0x00000080, 408); 
TEST_RR_OP( 103 , srl8.u, 0xff800000, 0xff800000, 0xff008080, 412); 
TEST_RR_OP( 104 , srl8.u, 0x01010102, 0x878083ff, 0x700080ff, 416); 
TEST_RR_OP( 105 , srl8.u, 0xff44ff00, 0xff44ff00, 0xff80ff80, 420); 
TEST_RR_OP( 106 , srl8.u, 0xff208009, 0xff208009, 0x00170080, 424); 
TEST_RR_OP( 107 , srl8.u, 0x806c005d, 0x806c005d, 0x80ffff80, 428); 
TEST_RR_OP( 108 , srl8.u, 0x1f001010, 0xf8008080, 0x00d880fb, 432); 
TEST_RR_OP( 109 , srl8.u, 0x80008057, 0x80008057, 0x80ff0000, 436); 
TEST_RR_OP( 110 , srl8.u, 0x00eb8000, 0x00eb8000, 0x80008000, 440); 
TEST_RR_OP( 111 , srl8.u, 0x02000101, 0xff008080, 0x80ff00ff, 444); 
TEST_RR_OP( 112 , srl8.u, 0x00ff59ce, 0x00ff59ce, 0x36ffff80, 448); 
TEST_RR_OP( 113 , srl8.u, 0x8088ffff, 0x8088ffff, 0x00800080, 452); 
TEST_RR_OP( 114 , srl8.u, 0x00000200, 0x0505ff00, 0x0000ffff, 456); 
TEST_RR_OP( 115 , srl8.u, 0x02010202, 0xff80ffff, 0x008000ff, 460); 
TEST_RR_OP( 116 , srl8.u, 0xff8aee80, 0xff8aee80, 0x8080ba00, 464); 
TEST_RR_OP( 117 , srl8.u, 0x02000202, 0xd626ffff, 0xff8080e7, 468); 
TEST_RR_OP( 118 , srl8.u, 0x00010000, 0x005a002d, 0xffff80ff, 472); 
TEST_RR_OP( 119 , srl8.u, 0x01020100, 0xa1ff8000, 0x808080ff, 476); 
TEST_RR_OP( 120 , srl8.u, 0x10091008, 0xff96ff80, 0x80ff8084, 480); 
TEST_RR_OP( 121 , srl8.u, 0xff008000, 0xff008000, 0xff800000, 484); 
TEST_RR_OP( 122 , srl8.u, 0x0080804e, 0x0080804e, 0x80008080, 488); 
TEST_RR_OP( 123 , srl8.u, 0x54800580, 0x54800580, 0x0000ff00, 492); 
TEST_RR_OP( 124 , srl8.u, 0x02020001, 0xffff0080, 0x28fc80ff, 496); 
TEST_RR_OP( 125 , srl8.u, 0x00ff8000, 0x00ff8000, 0x8080ff00, 500); 
TEST_RR_OP( 126 , srl8.u, 0x80808080, 0x80808080, 0xf480ff80, 504); 
TEST_RR_OP( 127 , srl8.u, 0x01020000, 0x80ee001a, 0xff005cff, 508); 
TEST_RR_OP( 128 , srl8.u, 0x00000100, 0x00008000, 0xffff35ff, 512); 
TEST_RR_OP( 129 , srl8.u, 0xffff4400, 0xffff4400, 0x007480d8, 516); 
TEST_RR_OP( 130 , srl8.u, 0xff80bf00, 0xff80bf00, 0x7e00d080, 520); 
TEST_RR_OP( 131 , srl8.u, 0x080e0010, 0x7ddb00ff, 0xcf118004, 524); 
TEST_RR_OP( 132 , srl8.u, 0x03020204, 0xdd8080ff, 0xff9880be, 528); 
TEST_RR_OP( 133 , srl8.u, 0x0000805c, 0x0000ffb8, 0x00ff4161, 532); 
TEST_RR_OP( 134 , srl8.u, 0x08080404, 0xffff8080, 0xf1ff0085, 536); 
TEST_RR_OP( 135 , srl8.u, 0x00ff8000, 0x00ff8000, 0x80800000, 540); 
TEST_RR_OP( 136 , srl8.u, 0xff009b00, 0xff009b00, 0xff828000, 544); 
TEST_RR_OP( 137 , srl8.u, 0xff008080, 0xff008080, 0xff000000, 548); 
TEST_RR_OP( 138 , srl8.u, 0x80f7e280, 0x80f7e280, 0x00808080, 552); 
TEST_RR_OP( 139 , srl8.u, 0x01000101, 0x5c007e80, 0xac8080ff, 556); 
TEST_RR_OP( 140 , srl8.u, 0x3f438000, 0x7e86ff00, 0x800000c9, 560); 
TEST_RR_OP( 141 , srl8.u, 0x02000200, 0xff00ff00, 0xff0081ff, 564); 
TEST_RR_OP( 142 , srl8.u, 0xff0080ff, 0xff0080ff, 0xff5e8000, 568); 
TEST_RR_OP( 143 , srl8.u, 0x80808000, 0x80808000, 0x00804400, 572); 
TEST_RR_OP( 144 , srl8.u, 0x02000101, 0xff058080, 0x8080ffff, 576); 
TEST_RR_OP( 145 , srl8.u, 0x80ff0280, 0x80ff0280, 0xffbd1c00, 580); 
TEST_RR_OP( 146 , srl8.u, 0xfcff7d80, 0xfcff7d80, 0xff00ff00, 584); 
TEST_RR_OP( 147 , srl8.u, 0x02020102, 0xffffa8ff, 0xff9f00ff, 588); 
TEST_RR_OP( 148 , srl8.u, 0x01010101, 0x80809880, 0x808000ff, 592); 
TEST_RR_OP( 149 , srl8.u, 0x8bff8080, 0x8bff8080, 0xffff0000, 596); 
TEST_RR_OP( 150 , srl8.u, 0x01000001, 0x80222580, 0x800000ff, 600); 
TEST_RR_OP( 151 , srl8.u, 0x00000807, 0x0000fbe5, 0xf9808095, 604); 
TEST_RR_OP( 152 , srl8.u, 0x00010102, 0x008049ed, 0x0080bbb7, 608); 
TEST_RR_OP( 153 , srl8.u, 0x80750038, 0x80750038, 0xff008080, 612); 
TEST_RR_OP( 154 , srl8.u, 0x08000c10, 0x8000c4ff, 0x80ff6cc4, 616); 
TEST_RR_OP( 155 , srl8.u, 0x20000010, 0xff000080, 0x6b0007eb, 620); 
TEST_RR_OP( 156 , srl8.u, 0x008080ff, 0x008080ff, 0x00ffb200, 624); 
TEST_RR_OP( 157 , srl8.u, 0x02020200, 0xfff6ff00, 0xff0c80ff, 628); 
TEST_RR_OP( 158 , srl8.u, 0x93bdffff, 0x93bdffff, 0x0000a800, 632); 
TEST_RR_OP( 159 , srl8.u, 0x80cf8036, 0x80cf8036, 0xffd38080, 636); 
TEST_RR_OP( 160 , srl8.u, 0x03010704, 0x592ded80, 0x80808c5d, 640); 
TEST_RR_OP( 161 , srl8.u, 0x04000203, 0xff0080d3, 0x0013008e, 644); 
TEST_RR_OP( 162 , srl8.u, 0xff6c6c00, 0xff6c6c00, 0x2980ff80, 648); 
TEST_RR_OP( 163 , srl8.u, 0xff803d63, 0xff803d63, 0xa6e80080, 652); 
TEST_RR_OP( 164 , srl8.u, 0xff00e1ff, 0xff00e1ff, 0xfb2f8080, 656); 
TEST_RR_OP( 165 , srl8.u, 0x800000ff, 0x800000ff, 0x8080e700, 660); 
TEST_RR_OP( 166 , srl8.u, 0x00000102, 0x001f80c0, 0xffffffff, 664); 
TEST_RR_OP( 167 , srl8.u, 0x00808080, 0x00808080, 0x6d00a580, 668); 
TEST_RR_OP( 168 , srl8.u, 0xff80b400, 0xff80b400, 0x09cf8000, 672); 
TEST_RR_OP( 169 , srl8.u, 0x8080ebff, 0x8080ebff, 0xcc89ff00, 676); 
TEST_RR_OP( 170 , srl8.u, 0x000b0606, 0x00553033, 0xdd0080eb, 680); 
TEST_RR_OP( 171 , srl8.u, 0x808034ff, 0x808034ff, 0xffffecb8, 684); 
TEST_RR_OP( 172 , srl8.u, 0x00000200, 0x00007500, 0x0000be0e, 688); 
TEST_RR_OP( 173 , srl8.u, 0x80dd8080, 0x80dd8080, 0x00800080, 692); 
TEST_RR_OP( 174 , srl8.u, 0xffff1180, 0xffff1180, 0x80ff0000, 696); 
TEST_RR_OP( 175 , srl8.u, 0x80800031, 0x80800031, 0x80000000, 700); 
TEST_RR_OP( 176 , srl8.u, 0x6aff8080, 0x6aff8080, 0x00ff0080, 704); 
TEST_RR_OP( 177 , srl8.u, 0x02000002, 0xff0319ff, 0xff0080ff, 708); 
TEST_RR_OP( 178 , srl8.u, 0x20402040, 0x80ff80ff, 0x80fffd5a, 712); 
TEST_RR_OP( 179 , srl8.u, 0x01020101, 0x80ff8080, 0x00830037, 716); 
TEST_RR_OP( 180 , srl8.u, 0x8000c6ff, 0x8000c6ff, 0x47801900, 720); 
TEST_RR_OP( 181 , srl8.u, 0x04080008, 0x80ff00ff, 0xff1480fd, 724); 
TEST_RR_OP( 182 , srl8.u, 0x95ffff80, 0x95ffff80, 0x00ff3f80, 728); 
TEST_RR_OP( 183 , srl8.u, 0x00803a80, 0x00803a80, 0x80800078, 732); 
TEST_RR_OP( 184 , srl8.u, 0xc5ffff80, 0xc5ffff80, 0x001fc600, 736); 
TEST_RR_OP( 185 , srl8.u, 0x80ff8080, 0x80ff8080, 0xff732300, 740); 
TEST_RR_OP( 186 , srl8.u, 0x02040402, 0x80ffff80, 0x5880ff56, 744); 
TEST_RR_OP( 187 , srl8.u, 0x808000a4, 0x808000a4, 0xe8808000, 748); 
TEST_RR_OP( 188 , srl8.u, 0x8000ff80, 0x8000ff80, 0x00008080, 752); 
TEST_RR_OP( 189 , srl8.u, 0x808000ff, 0x808000ff, 0x5b352780, 756); 
TEST_RR_OP( 190 , srl8.u, 0x00000002, 0x00001ceb, 0x0080ffff, 760); 
TEST_RR_OP( 191 , srl8.u, 0x00010100, 0x30808000, 0x708000ff, 764); 
TEST_RR_OP( 192 , srl8.u, 0x00fffc00, 0x00fffc00, 0x00008000, 768); 
TEST_RR_OP( 193 , srl8.u, 0x8088ff80, 0x8088ff80, 0x80001500, 772); 
TEST_RR_OP( 194 , srl8.u, 0xff800080, 0xff800080, 0x80ee5c80, 776); 
TEST_RR_OP( 195 , srl8.u, 0xff8080ff, 0xff8080ff, 0x80ff0080, 780); 
TEST_RR_OP( 196 , srl8.u, 0x9580ffff, 0x9580ffff, 0x80dcff00, 784); 
TEST_RR_OP( 197 , srl8.u, 0x00ffb9b6, 0x00ffb9b6, 0xff008000, 788); 
TEST_RR_OP( 198 , srl8.u, 0x00800080, 0x00800080, 0xff8380c8, 792); 
TEST_RR_OP( 199 , srl8.u, 0x01010101, 0x80588080, 0x800000ff, 796); 

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
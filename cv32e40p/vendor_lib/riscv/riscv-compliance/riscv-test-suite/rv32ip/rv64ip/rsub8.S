# See LICENSE for license details.
#*****************************************************************************
# rsub8.S
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

TEST_RR_OP( 2 , rsub8, 0x3f40dbff, 0xff0098ff, 0x8080e200, 8); 
TEST_RR_OP( 3 , rsub8, 0x00c0403f, 0xff8000ff, 0xff008080, 12); 
TEST_RR_OP( 4 , rsub8, 0x270000fd, 0x4e000035, 0x0000003a, 16); 
TEST_RR_OP( 5 , rsub8, 0xffe4ecff, 0xff8000ff, 0x00b82700, 20); 
TEST_RR_OP( 6 , rsub8, 0xf14040c0, 0xe2000080, 0xff808000, 24); 
TEST_RR_OP( 7 , rsub8, 0x3f00d8c2, 0xff800080, 0x808050fc, 28); 
TEST_RR_OP( 8 , rsub8, 0xab000000, 0x800000ff, 0x2affffff, 32); 
TEST_RR_OP( 9 , rsub8, 0xff1e00c0, 0xffffff80, 0x00c3ff00, 36); 
TEST_RR_OP( 10 , rsub8, 0xc74084ff, 0x000080ff, 0x72807700, 40); 
TEST_RR_OP( 11 , rsub8, 0x00d5003f, 0x000080ff, 0xff558080, 44); 
TEST_RR_OP( 12 , rsub8, 0x00c0ffc0, 0xff80ff80, 0xffff0000, 48); 
TEST_RR_OP( 13 , rsub8, 0x323f0000, 0xe4ff8080, 0x80808080, 52); 
TEST_RR_OP( 14 , rsub8, 0xc03ff836, 0x80ffff6c, 0x00800e00, 56); 
TEST_RR_OP( 15 , rsub8, 0x00533ec9, 0xff277d91, 0xff8000ff, 60); 
TEST_RR_OP( 16 , rsub8, 0x002529d0, 0x00cad300, 0xff808060, 64); 
TEST_RR_OP( 17 , rsub8, 0xb2401700, 0x80000000, 0x1b80d100, 68); 
TEST_RR_OP( 18 , rsub8, 0xfbff1600, 0xf6ff6800, 0xff003bff, 72); 
TEST_RR_OP( 19 , rsub8, 0x03e50000, 0x0080ff80, 0xf9b5ff80, 76); 
TEST_RR_OP( 20 , rsub8, 0xffc000e9, 0xff800080, 0x00ffffae, 80); 
TEST_RR_OP( 21 , rsub8, 0xff00de00, 0xffffbdff, 0x00ff00ff, 84); 
TEST_RR_OP( 22 , rsub8, 0x0d00d23f, 0x9a00a3ff, 0x80ffff80, 88); 
TEST_RR_OP( 23 , rsub8, 0xc000c0c0, 0x80008080, 0xff00ffff, 92); 
TEST_RR_OP( 24 , rsub8, 0x009b073f, 0xff80ffff, 0xff4af080, 96); 
TEST_RR_OP( 25 , rsub8, 0x3f051800, 0xff0aff00, 0x80ffcf00, 100); 
TEST_RR_OP( 26 , rsub8, 0x40140006, 0x00ff008d, 0x80d7ff80, 104); 
TEST_RR_OP( 27 , rsub8, 0x004a0000, 0x00148000, 0xff808000, 108); 
TEST_RR_OP( 28 , rsub8, 0xffc612a5, 0xffedffa8, 0x0061da5e, 112); 
TEST_RR_OP( 29 , rsub8, 0x66cb1919, 0x6a0033b3, 0x9e690080, 116); 
TEST_RR_OP( 30 , rsub8, 0x0000d93f, 0x80ffb2ff, 0x80ff0080, 120); 
TEST_RR_OP( 31 , rsub8, 0x16003f00, 0x0000ff00, 0xd3ff8000, 124); 
TEST_RR_OP( 32 , rsub8, 0xf0693fc0, 0xe052ff80, 0xff808000, 128); 
TEST_RR_OP( 33 , rsub8, 0x1400c000, 0x29008000, 0x000000ff, 132); 
TEST_RR_OP( 34 , rsub8, 0x15d2752d, 0x2aa46eda, 0x00008480, 136); 
TEST_RR_OP( 35 , rsub8, 0xd6ff6bc0, 0xadff5780, 0x00008000, 140); 
TEST_RR_OP( 36 , rsub8, 0x00005a27, 0x8080354d, 0x808080ff, 144); 
TEST_RR_OP( 37 , rsub8, 0xc00000c0, 0x80008080, 0xffff80ff, 148); 
TEST_RR_OP( 38 , rsub8, 0xc03c0000, 0x80000000, 0xff88ffff, 152); 
TEST_RR_OP( 39 , rsub8, 0xd8023f00, 0x80ffff00, 0xcffa80ff, 156); 
TEST_RR_OP( 40 , rsub8, 0xd8e34037, 0xb0c6006e, 0x00008000, 160); 
TEST_RR_OP( 41 , rsub8, 0x0000bec0, 0x00808080, 0x00800300, 164); 
TEST_RR_OP( 42 , rsub8, 0x402af400, 0x00555eff, 0x800076ff, 168); 
TEST_RR_OP( 43 , rsub8, 0xff9bc0c0, 0xff808080, 0x004aff00, 172); 
TEST_RR_OP( 44 , rsub8, 0xcd00ec85, 0x9980d980, 0xff800076, 176); 
TEST_RR_OP( 45 , rsub8, 0xf5ac3900, 0x938000ff, 0xa9288dff, 180); 
TEST_RR_OP( 46 , rsub8, 0x28e50040, 0xd0caff00, 0x8000ff80, 184); 
TEST_RR_OP( 47 , rsub8, 0xc0cb4000, 0x80ff0000, 0xff6980ff, 188); 
TEST_RR_OP( 48 , rsub8, 0x000039c0, 0xff80ff80, 0xff808d00, 192); 
TEST_RR_OP( 49 , rsub8, 0xe8f9c0f4, 0xffff80ff, 0x2f0c0016, 196); 
TEST_RR_OP( 50 , rsub8, 0x9a00c0ff, 0x800080ff, 0x4bffff00, 200); 
TEST_RR_OP( 51 , rsub8, 0x00c0ff05, 0x0080ff00, 0x000000f5, 204); 
TEST_RR_OP( 52 , rsub8, 0xc03f4100, 0x80ff0281, 0x00808080, 208); 
TEST_RR_OP( 53 , rsub8, 0xdc0b00c0, 0xb838ff80, 0xff21ffff, 212); 
TEST_RR_OP( 54 , rsub8, 0x3f3f25dc, 0xffff4b00, 0x80800047, 216); 
TEST_RR_OP( 55 , rsub8, 0xfeffc0c0, 0x2cff8080, 0x2f00ff00, 220); 
TEST_RR_OP( 56 , rsub8, 0xd4c00000, 0x0080ff00, 0x58ffff00, 224); 
TEST_RR_OP( 57 , rsub8, 0xc0e33f3a, 0x80c7ff75, 0xff008000, 228); 
TEST_RR_OP( 58 , rsub8, 0xe42ec03f, 0xc85d80ff, 0x00000080, 232); 
TEST_RR_OP( 59 , rsub8, 0x00c0ffc7, 0x8080ff00, 0x80000072, 236); 
TEST_RR_OP( 60 , rsub8, 0xa9ffd7c0, 0x80ff1a80, 0x2e006cff, 240); 
TEST_RR_OP( 61 , rsub8, 0xc040fe00, 0x8000e200, 0xff80e5ff, 244); 
TEST_RR_OP( 62 , rsub8, 0xd100043f, 0x800009ff, 0xdd000080, 248); 
TEST_RR_OP( 63 , rsub8, 0xc000ec10, 0x80ffef1f, 0x00ff17ff, 252); 
TEST_RR_OP( 64 , rsub8, 0xfff80000, 0xfff00080, 0x00ffff80, 256); 
TEST_RR_OP( 65 , rsub8, 0xc03ac000, 0x80ff80ff, 0xff8a00ff, 260); 
TEST_RR_OP( 66 , rsub8, 0xb1c00000, 0x808080ff, 0x1d0080ff, 264); 
TEST_RR_OP( 67 , rsub8, 0xc00079c0, 0x80ff7280, 0xffff8000, 268); 
TEST_RR_OP( 68 , rsub8, 0xfb00f300, 0xf600ffff, 0xff0019ff, 272); 
TEST_RR_OP( 69 , rsub8, 0x0000c93f, 0x800000ff, 0x80006e80, 276); 
TEST_RR_OP( 70 , rsub8, 0x400000dd, 0x00ff00ff, 0x80ff0045, 280); 
TEST_RR_OP( 71 , rsub8, 0xf9cc08c0, 0xffff0f80, 0x0d67ff00, 284); 
TEST_RR_OP( 72 , rsub8, 0xc000ffc0, 0x8000ff80, 0xff000000, 288); 
TEST_RR_OP( 73 , rsub8, 0x00000adf, 0x00ff15ff, 0x00ff0041, 292); 
TEST_RR_OP( 74 , rsub8, 0x9300c0c0, 0x80008080, 0x59000000, 296); 
TEST_RR_OP( 75 , rsub8, 0x005a113f, 0x0034aeff, 0xff808c80, 300); 
TEST_RR_OP( 76 , rsub8, 0x10c0ce66, 0x1f80ff4c, 0xffff6280, 304); 
TEST_RR_OP( 77 , rsub8, 0xc0400000, 0x800000ff, 0x008000ff, 308); 
TEST_RR_OP( 78 , rsub8, 0x1b3f003f, 0x00ff00ff, 0xca800080, 312); 
TEST_RR_OP( 79 , rsub8, 0x403f2b00, 0x00ff57ff, 0x808000ff, 316); 
TEST_RR_OP( 80 , rsub8, 0xa800ffff, 0x8000fdff, 0x2f00ff00, 320); 
TEST_RR_OP( 81 , rsub8, 0x00d32d3f, 0xffffdbff, 0xff588080, 324); 
TEST_RR_OP( 82 , rsub8, 0xe30040c0, 0xff800080, 0x398080ff, 328); 
TEST_RR_OP( 83 , rsub8, 0x220940ff, 0x439200ff, 0xff808000, 332); 
TEST_RR_OP( 84 , rsub8, 0xc0000000, 0x8000ff80, 0xff00ff80, 336); 
TEST_RR_OP( 85 , rsub8, 0x003c3fc0, 0x007dff80, 0x000480ff, 340); 
TEST_RR_OP( 86 , rsub8, 0xc0a8ee00, 0x80ac00ff, 0xff5c24ff, 344); 
TEST_RR_OP( 87 , rsub8, 0x003f33ff, 0x000000ff, 0xff819a00, 348); 
TEST_RR_OP( 88 , rsub8, 0x0a00c000, 0x14ff8000, 0xffff00ff, 352); 
TEST_RR_OP( 89 , rsub8, 0xf10040c4, 0xe2800000, 0x00808077, 356); 
TEST_RR_OP( 90 , rsub8, 0xff384000, 0xff000080, 0x00908080, 360); 
TEST_RR_OP( 91 , rsub8, 0x00db3f00, 0x00ffff00, 0xff4880ff, 364); 
TEST_RR_OP( 92 , rsub8, 0x00c0f4c2, 0x0080ff83, 0x00ff17ff, 368); 
TEST_RR_OP( 93 , rsub8, 0x00c03f00, 0x8080ffff, 0x800080ff, 372); 
TEST_RR_OP( 94 , rsub8, 0x3fff00c0, 0xffff0080, 0x8000ffff, 376); 
TEST_RR_OP( 95 , rsub8, 0xd0b53f0b, 0xff80ff16, 0x5f168000, 380); 
TEST_RR_OP( 96 , rsub8, 0xff00ff00, 0xff00ff00, 0x00ff0000, 384); 
TEST_RR_OP( 97 , rsub8, 0x0ec0c040, 0x1d808000, 0x0000ff80, 388); 
TEST_RR_OP( 98 , rsub8, 0xffc1c000, 0xff008000, 0x007e0000, 392); 
TEST_RR_OP( 99 , rsub8, 0x402c00c9, 0x3959ff92, 0xb900ff00, 396); 
TEST_RR_OP( 100 , rsub8, 0x0009c0c0, 0x00128080, 0x00ff00ff, 400); 
TEST_RR_OP( 101 , rsub8, 0xc0f10000, 0x800000ff, 0xff1d00ff, 404); 
TEST_RR_OP( 102 , rsub8, 0x002ac005, 0x00d5808a, 0x0080ff80, 408); 
TEST_RR_OP( 103 , rsub8, 0xc040f200, 0x8000c900, 0xff80e4ff, 412); 
TEST_RR_OP( 104 , rsub8, 0xe8c02400, 0xd1804800, 0x0000ff00, 416); 
TEST_RR_OP( 105 , rsub8, 0x23ffcbc0, 0xc6ff8080, 0x8000e9ff, 420); 
TEST_RR_OP( 106 , rsub8, 0x00003f40, 0x0000ff00, 0xffff8080, 424); 
TEST_RR_OP( 107 , rsub8, 0x5433000b, 0x34fe0096, 0x8c980080, 428); 
TEST_RR_OP( 108 , rsub8, 0x00fec049, 0xff008039, 0xff0400a7, 432); 
TEST_RR_OP( 109 , rsub8, 0x033f401c, 0x07ff00b9, 0x00808080, 436); 
TEST_RR_OP( 110 , rsub8, 0x21c0c000, 0x43808000, 0x00ff00ff, 440); 
TEST_RR_OP( 111 , rsub8, 0x3fc8c03b, 0xff918075, 0x8000ffff, 444); 
TEST_RR_OP( 112 , rsub8, 0x3fc0f600, 0xff8000ff, 0x80ff13ff, 448); 
TEST_RR_OP( 113 , rsub8, 0x006b0000, 0x006b0000, 0xff9400ff, 452); 
TEST_RR_OP( 114 , rsub8, 0x3f40c000, 0xff008000, 0x8080ffff, 456); 
TEST_RR_OP( 115 , rsub8, 0xffc0ed40, 0xff80d900, 0x0000ff80, 460); 
TEST_RR_OP( 116 , rsub8, 0xff0000c0, 0xff00ff80, 0x0000ffff, 464); 
TEST_RR_OP( 117 , rsub8, 0x6dff78ff, 0x5bff70ff, 0x80008000, 468); 
TEST_RR_OP( 118 , rsub8, 0x443fffc0, 0x08ffff80, 0x808000ff, 472); 
TEST_RR_OP( 119 , rsub8, 0x00ff0224, 0x00ff84c8, 0x00008080, 476); 
TEST_RR_OP( 120 , rsub8, 0x001bc0c0, 0x00658080, 0x002e0000, 480); 
TEST_RR_OP( 121 , rsub8, 0xcfc0c001, 0xff808000, 0x60ff00fd, 484); 
TEST_RR_OP( 122 , rsub8, 0x01f0fd3f, 0x010076ff, 0xff1f7c80, 488); 
TEST_RR_OP( 123 , rsub8, 0x6c0000c0, 0x5800ff80, 0x8000ff00, 492); 
TEST_RR_OP( 124 , rsub8, 0xff3ff600, 0xffffeb00, 0x0080ff00, 496); 
TEST_RR_OP( 125 , rsub8, 0xda440000, 0xff0800ff, 0x4b80ffff, 500); 
TEST_RR_OP( 126 , rsub8, 0x400075ff, 0x00ff71ff, 0x80ff8600, 504); 
TEST_RR_OP( 127 , rsub8, 0x40fc3f00, 0x0080ff00, 0x80888000, 508); 
TEST_RR_OP( 128 , rsub8, 0x3f403f00, 0xff00ff80, 0x80808080, 512); 
TEST_RR_OP( 129 , rsub8, 0xcefcff00, 0x9dbbff00, 0x00c300ff, 516); 
TEST_RR_OP( 130 , rsub8, 0xc81f00c0, 0x80ffff80, 0xf0c0ff00, 520); 
TEST_RR_OP( 131 , rsub8, 0x00f5a19f, 0x00808080, 0xff953e42, 524); 
TEST_RR_OP( 132 , rsub8, 0x29400023, 0xff000008, 0xad8000c1, 528); 
TEST_RR_OP( 133 , rsub8, 0x3f1512ff, 0xff00a5ff, 0x80d68000, 532); 
TEST_RR_OP( 134 , rsub8, 0xc0c003ff, 0x8080ffff, 0x0000f900, 536); 
TEST_RR_OP( 135 , rsub8, 0x00c03e00, 0x80800000, 0x80ff84ff, 540); 
TEST_RR_OP( 136 , rsub8, 0x867905d6, 0x80720bac, 0x74800000, 544); 
TEST_RR_OP( 137 , rsub8, 0xc0400c40, 0x8000a100, 0x00808880, 548); 
TEST_RR_OP( 138 , rsub8, 0x002dc010, 0xffff8000, 0xffa500df, 552); 
TEST_RR_OP( 139 , rsub8, 0xf60065e6, 0x00804bff, 0x14808032, 556); 
TEST_RR_OP( 140 , rsub8, 0xc000fe00, 0x8000fc00, 0xffff00ff, 560); 
TEST_RR_OP( 141 , rsub8, 0xfde62f3f, 0xfb005dff, 0x0034ff80, 564); 
TEST_RR_OP( 142 , rsub8, 0x00f56e00, 0x00d35c80, 0x00e98080, 568); 
TEST_RR_OP( 143 , rsub8, 0x2a00c0c0, 0x00008080, 0xabffffff, 572); 
TEST_RR_OP( 144 , rsub8, 0xff3f0018, 0xffff0000, 0x008000cf, 576); 
TEST_RR_OP( 145 , rsub8, 0xffc0df40, 0xff808000, 0x00ffc180, 580); 
TEST_RR_OP( 146 , rsub8, 0x2efb3fc9, 0x70e900da, 0x13f38247, 584); 
TEST_RR_OP( 147 , rsub8, 0xff24ff00, 0xff49ff00, 0x000000ff, 588); 
TEST_RR_OP( 148 , rsub8, 0x3f0000c0, 0xff000080, 0x80ff00ff, 592); 
TEST_RR_OP( 149 , rsub8, 0x374000e9, 0x00008080, 0x928080ad, 596); 
TEST_RR_OP( 150 , rsub8, 0x0027efc0, 0x00ffdf80, 0xffb100ff, 600); 
TEST_RR_OP( 151 , rsub8, 0xff00ffcd, 0xff00ff00, 0x00000066, 604); 
TEST_RR_OP( 152 , rsub8, 0xc0003ac0, 0x8080ff80, 0xff808a00, 608); 
TEST_RR_OP( 153 , rsub8, 0x3f001440, 0xffff2800, 0x80ffff80, 612); 
TEST_RR_OP( 154 , rsub8, 0xc033583f, 0x80ff30ff, 0xff988080, 616); 
TEST_RR_OP( 155 , rsub8, 0xc00dc425, 0x80ff004b, 0xffe57700, 620); 
TEST_RR_OP( 156 , rsub8, 0xff223f00, 0xff43ff00, 0x00ff80ff, 624); 
TEST_RR_OP( 157 , rsub8, 0x0aff00d7, 0x13ff00ff, 0xff000050, 628); 
TEST_RR_OP( 158 , rsub8, 0xd2002fc0, 0xffff5e80, 0x5bffffff, 632); 
TEST_RR_OP( 159 , rsub8, 0x263040ff, 0x4cff00ff, 0xff9f8000, 636); 
TEST_RR_OP( 160 , rsub8, 0x176fc000, 0x1a5f8000, 0xec8000ff, 640); 
TEST_RR_OP( 161 , rsub8, 0x3f01ebc9, 0xff0200ff, 0x80ff2a6d, 644); 
TEST_RR_OP( 162 , rsub8, 0xf0f700c0, 0x00ffff80, 0x2010ff00, 648); 
TEST_RR_OP( 163 , rsub8, 0xf6fa0fc0, 0xff001f80, 0x130c0000, 652); 
TEST_RR_OP( 164 , rsub8, 0xefbaf500, 0xde808000, 0xff0b9500, 656); 
TEST_RR_OP( 165 , rsub8, 0x010ec000, 0x021c8000, 0x00ffffff, 660); 
TEST_RR_OP( 166 , rsub8, 0xffc0033f, 0xff8000ff, 0x00fffa80, 664); 
TEST_RR_OP( 167 , rsub8, 0xee0c14ff, 0xed1700ff, 0x10ffd800, 668); 
TEST_RR_OP( 168 , rsub8, 0x00e0c43f, 0x008089ff, 0xffbf0080, 672); 
TEST_RR_OP( 169 , rsub8, 0x3cff1fab, 0xf8ff3dbe, 0x8000ff67, 676); 
TEST_RR_OP( 170 , rsub8, 0x3fc0fa26, 0xff80f4cc, 0x8000ff80, 680); 
TEST_RR_OP( 171 , rsub8, 0x1500c000, 0xff8080ff, 0xd580ffff, 684); 
TEST_RR_OP( 172 , rsub8, 0xc000c02a, 0x80808054, 0xff80ff00, 688); 
TEST_RR_OP( 173 , rsub8, 0x000027c0, 0x80004f80, 0x80000000, 692); 
TEST_RR_OP( 174 , rsub8, 0x8e3fc0ff, 0x80ff80ff, 0x6480ff00, 696); 
TEST_RR_OP( 175 , rsub8, 0x00ff97c0, 0x00ff8080, 0x00005100, 700); 
TEST_RR_OP( 176 , rsub8, 0xc0043fce, 0x80ffff80, 0xfff780e3, 704); 
TEST_RR_OP( 177 , rsub8, 0xdf000000, 0x00008080, 0x41008080, 708); 
TEST_RR_OP( 178 , rsub8, 0xcb3f00ac, 0x95ff0080, 0xff80ff27, 712); 
TEST_RR_OP( 179 , rsub8, 0xeec03c20, 0x80800000, 0xa3ff88c0, 716); 
TEST_RR_OP( 180 , rsub8, 0xc01f8140, 0x80bf8000, 0x00807d80, 720); 
TEST_RR_OP( 181 , rsub8, 0xde00ffc1, 0xffffff83, 0x43ff0000, 724); 
TEST_RR_OP( 182 , rsub8, 0x00c040ff, 0xff8000ff, 0xffff8000, 728); 
TEST_RR_OP( 183 , rsub8, 0x00212bd2, 0xff42d6a3, 0xff0080ff, 732); 
TEST_RR_OP( 184 , rsub8, 0x61c00605, 0x42800bb9, 0x80ffffae, 736); 
TEST_RR_OP( 185 , rsub8, 0x0002d411, 0xff00a7ff, 0xfffcffdd, 740); 
TEST_RR_OP( 186 , rsub8, 0x00ffc100, 0x00ff80ff, 0x0000fdff, 744); 
TEST_RR_OP( 187 , rsub8, 0x24c00a00, 0x47809400, 0xffff80ff, 748); 
TEST_RR_OP( 188 , rsub8, 0xf1a800ec, 0xffbb80ad, 0x1c6b80d4, 752); 
TEST_RR_OP( 189 , rsub8, 0xffe1ffc0, 0xff80ff80, 0x00be00ff, 756); 
TEST_RR_OP( 190 , rsub8, 0x3f3f003f, 0xffff00ff, 0x80800080, 760); 
TEST_RR_OP( 191 , rsub8, 0x0e15a91f, 0x9c29903d, 0x80ff3eff, 764); 
TEST_RR_OP( 192 , rsub8, 0xf23d00ff, 0x80fa00ff, 0x9c800000, 768); 
TEST_RR_OP( 193 , rsub8, 0x02c00000, 0xff808080, 0xfaff8080, 772); 
TEST_RR_OP( 194 , rsub8, 0x00002000, 0xff00c000, 0xff008000, 776); 
TEST_RR_OP( 195 , rsub8, 0xe5c2ffc0, 0xc900ff80, 0xff7c0000, 780); 
TEST_RR_OP( 196 , rsub8, 0xb300d1cb, 0x8000ff95, 0x1a005dff, 784); 
TEST_RR_OP( 197 , rsub8, 0x2200c303, 0x1a000007, 0xd6ff7a00, 788); 
TEST_RR_OP( 198 , rsub8, 0xc000c03f, 0x800080ff, 0xffffff80, 792); 
TEST_RR_OP( 199 , rsub8, 0x0000c400, 0x0000ffff, 0x00ff77ff, 796); 

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
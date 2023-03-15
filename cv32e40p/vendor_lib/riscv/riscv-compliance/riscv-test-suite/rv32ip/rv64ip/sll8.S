# See LICENSE for license details.
#*****************************************************************************
# sll8.S
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

TEST_RR_OP( 2 , sll8, 0x808000ff, 0x808000ff, 0xffff0080, 8); 
TEST_RR_OP( 3 , sll8, 0xf880f8f8, 0xffd0ffff, 0x0080ffe3, 12); 
TEST_RR_OP( 4 , sll8, 0x80ff8080, 0x80ff8080, 0x114a8000, 16); 
TEST_RR_OP( 5 , sll8, 0x00000080, 0x808000ff, 0x00ffe3ff, 20); 
TEST_RR_OP( 6 , sll8, 0xffff0080, 0xffff0080, 0xff548080, 24); 
TEST_RR_OP( 7 , sll8, 0x00782000, 0x004fe480, 0x0000ffd3, 28); 
TEST_RR_OP( 8 , sll8, 0xfe02fefe, 0xff01ffff, 0x808080d9, 32); 
TEST_RR_OP( 9 , sll8, 0x000b80ff, 0x000b80ff, 0x2680ff80, 36); 
TEST_RR_OP( 10 , sll8, 0x808780ff, 0x808780ff, 0x8080d080, 40); 
TEST_RR_OP( 11 , sll8, 0x00808000, 0x00808000, 0xff710000, 44); 
TEST_RR_OP( 12 , sll8, 0xc580c200, 0xc580c200, 0x76ffff00, 48); 
TEST_RR_OP( 13 , sll8, 0x800000e0, 0x240000ff, 0x8074c2d5, 52); 
TEST_RR_OP( 14 , sll8, 0x00000080, 0xaa80d2ff, 0x800080ff, 56); 
TEST_RR_OP( 15 , sll8, 0x00f000c0, 0x80ff00dc, 0xff000b64, 60); 
TEST_RR_OP( 16 , sll8, 0x80ff00ff, 0x80ff00ff, 0x8000de00, 64); 
TEST_RR_OP( 17 , sll8, 0x00008080, 0x8080ff4d, 0x86009eff, 68); 
TEST_RR_OP( 18 , sll8, 0x00008000, 0x00d6ff00, 0xff8000ff, 72); 
TEST_RR_OP( 19 , sll8, 0x00008080, 0x80fcffff, 0x800080ff, 76); 
TEST_RR_OP( 20 , sll8, 0x0000f000, 0x8000ff80, 0x00000004, 80); 
TEST_RR_OP( 21 , sll8, 0x00800000, 0x00bd8000, 0x8000ffff, 84); 
TEST_RR_OP( 22 , sll8, 0xffff8000, 0xffff8000, 0x80ffff00, 88); 
TEST_RR_OP( 23 , sll8, 0x00008080, 0x800013ff, 0xffffffff, 92); 
TEST_RR_OP( 24 , sll8, 0x0000e000, 0x0000ff80, 0x1e0f0b45, 96); 
TEST_RR_OP( 25 , sll8, 0x0019c680, 0x0019c680, 0xff009100, 100); 
TEST_RR_OP( 26 , sll8, 0x00000000, 0x802c8000, 0xffcf7a06, 104); 
TEST_RR_OP( 27 , sll8, 0x80000000, 0x23808000, 0xec8e00ff, 108); 
TEST_RR_OP( 28 , sll8, 0x80008080, 0xff00ffdd, 0xff8083ff, 112); 
TEST_RR_OP( 29 , sll8, 0xd0000000, 0xda80e000, 0x8000803b, 116); 
TEST_RR_OP( 30 , sll8, 0xffffff80, 0xffffff80, 0x13ff0000, 120); 
TEST_RR_OP( 31 , sll8, 0x808000ff, 0x808000ff, 0xffff0080, 124); 
TEST_RR_OP( 32 , sll8, 0x00f30080, 0x00f30080, 0xff9d3580, 128); 
TEST_RR_OP( 33 , sll8, 0x00008000, 0x80867b16, 0xff0013ff, 132); 
TEST_RR_OP( 34 , sll8, 0x800000ff, 0x800000ff, 0x0080ff80, 136); 
TEST_RR_OP( 35 , sll8, 0x800000ff, 0x800000ff, 0xd980ff00, 140); 
TEST_RR_OP( 36 , sll8, 0x8000ff00, 0x8000ff00, 0xff000000, 144); 
TEST_RR_OP( 37 , sll8, 0x00800000, 0x00e90080, 0x80ff00ff, 148); 
TEST_RR_OP( 38 , sll8, 0x00ff4b00, 0x00ff4b00, 0x3c80ff80, 152); 
TEST_RR_OP( 39 , sll8, 0x000040c0, 0x800079fb, 0xff4cff6e, 156); 
TEST_RR_OP( 40 , sll8, 0x80d10080, 0x80d10080, 0x0046bf00, 160); 
TEST_RR_OP( 41 , sll8, 0xffffe780, 0xffffe780, 0x00ff5c00, 164); 
TEST_RR_OP( 42 , sll8, 0x00d60000, 0x00eb0080, 0x800080d9, 168); 
TEST_RR_OP( 43 , sll8, 0x0000e4fc, 0x000039ff, 0x5580008a, 172); 
TEST_RR_OP( 44 , sll8, 0x000000f8, 0x000000ff, 0x00ff805b, 176); 
TEST_RR_OP( 45 , sll8, 0x00000080, 0x008080ff, 0x80ff0047, 180); 
TEST_RR_OP( 46 , sll8, 0x0000e000, 0x0080ff80, 0x80003acd, 184); 
TEST_RR_OP( 47 , sll8, 0x00ffff80, 0x00ffff80, 0xff000080, 188); 
TEST_RR_OP( 48 , sll8, 0xd0f000f0, 0xedff00ff, 0xffff007c, 192); 
TEST_RR_OP( 49 , sll8, 0x00008000, 0x0080e700, 0xffffffff, 196); 
TEST_RR_OP( 50 , sll8, 0x00008000, 0x80bcff80, 0x000000ff, 200); 
TEST_RR_OP( 51 , sll8, 0x0000e000, 0x8080ff00, 0x8004e005, 204); 
TEST_RR_OP( 52 , sll8, 0xd0000000, 0x7d800080, 0x00003084, 208); 
TEST_RR_OP( 53 , sll8, 0x80000080, 0xff8080ff, 0xff806e2f, 212); 
TEST_RR_OP( 54 , sll8, 0x00800000, 0x80992080, 0x8c00c5ff, 216); 
TEST_RR_OP( 55 , sll8, 0x004030c0, 0x00c403bc, 0x8000170c, 220); 
TEST_RR_OP( 56 , sll8, 0x00ffffa4, 0x00ffffa4, 0xff008000, 224); 
TEST_RR_OP( 57 , sll8, 0x808080ff, 0x808080ff, 0x00548000, 228); 
TEST_RR_OP( 58 , sll8, 0x80ffff00, 0x80ffff00, 0xff830080, 232); 
TEST_RR_OP( 59 , sll8, 0xf0600000, 0xff368000, 0x8000002c, 236); 
TEST_RR_OP( 60 , sll8, 0x00000098, 0x800080e6, 0x80d7009a, 240); 
TEST_RR_OP( 61 , sll8, 0xff008080, 0xff008080, 0xff19ac80, 244); 
TEST_RR_OP( 62 , sll8, 0x0000c0e0, 0x808066ff, 0xffff803d, 248); 
TEST_RR_OP( 63 , sll8, 0x00000080, 0x00808061, 0x80ffd3ff, 252); 
TEST_RR_OP( 64 , sll8, 0xffe8ffff, 0xffe8ffff, 0x80ff8080, 256); 
TEST_RR_OP( 65 , sll8, 0x00000000, 0x00800004, 0xff0080ff, 260); 
TEST_RR_OP( 66 , sll8, 0x00000000, 0x8080004e, 0x2d8000ff, 264); 
TEST_RR_OP( 67 , sll8, 0xa3e10071, 0xa3e10071, 0x80ffff00, 268); 
TEST_RR_OP( 68 , sll8, 0x80808000, 0xffffff80, 0xff80d4ff, 272); 
TEST_RR_OP( 69 , sll8, 0x80008000, 0xff00ff00, 0x80ff80ff, 276); 
TEST_RR_OP( 70 , sll8, 0x0000c000, 0x00007f80, 0x0080c3be, 280); 
TEST_RR_OP( 71 , sll8, 0xa8000054, 0xaa808095, 0x800000b2, 284); 
TEST_RR_OP( 72 , sll8, 0x0000c000, 0xb880ff80, 0x6180ff36, 288); 
TEST_RR_OP( 73 , sll8, 0x80000080, 0xff8000ff, 0x518080ff, 292); 
TEST_RR_OP( 74 , sll8, 0xe4ffff80, 0xe4ffff80, 0x8000ff80, 296); 
TEST_RR_OP( 75 , sll8, 0xffa98080, 0xffa98080, 0x00808000, 300); 
TEST_RR_OP( 76 , sll8, 0x00800000, 0x80c90000, 0x00ff26ff, 304); 
TEST_RR_OP( 77 , sll8, 0x00f8d800, 0x00ff3b00, 0x800080ab, 308); 
TEST_RR_OP( 78 , sll8, 0xff9aff80, 0xff9aff80, 0x80505280, 312); 
TEST_RR_OP( 79 , sll8, 0x80800080, 0xff5300ff, 0x808160ff, 316); 
TEST_RR_OP( 80 , sll8, 0x00e00000, 0x80ffa880, 0xff00ff5d, 320); 
TEST_RR_OP( 81 , sll8, 0x80808080, 0xdfff4fff, 0x808074ff, 324); 
TEST_RR_OP( 82 , sll8, 0x00ffffff, 0x00ffffff, 0x80008000, 328); 
TEST_RR_OP( 83 , sll8, 0x80c00000, 0x56ff0080, 0x80ff0026, 332); 
TEST_RR_OP( 84 , sll8, 0x00ff80f3, 0x00ff80f3, 0x80ffa280, 336); 
TEST_RR_OP( 85 , sll8, 0x80800080, 0xff8980ff, 0xff9cffff, 340); 
TEST_RR_OP( 86 , sll8, 0x31af00dc, 0x31af00dc, 0xff80c480, 344); 
TEST_RR_OP( 87 , sll8, 0x5b806d41, 0x5b806d41, 0x80008080, 348); 
TEST_RR_OP( 88 , sll8, 0x00f00000, 0x00ff0000, 0x001fff3c, 352); 
TEST_RR_OP( 89 , sll8, 0x00000000, 0xec1800c6, 0xff0000c7, 356); 
TEST_RR_OP( 90 , sll8, 0xff00ffff, 0xff00ffff, 0xff00ff80, 360); 
TEST_RR_OP( 91 , sll8, 0x00808000, 0x00808000, 0xff800080, 364); 
TEST_RR_OP( 92 , sll8, 0xff0000ff, 0xff0000ff, 0x0073f380, 368); 
TEST_RR_OP( 93 , sll8, 0x8042805e, 0x8042805e, 0x80b82900, 372); 
TEST_RR_OP( 94 , sll8, 0x0080ef46, 0x0080ef46, 0xb5000000, 376); 
TEST_RR_OP( 95 , sll8, 0xff80ff89, 0xff80ff89, 0xff000480, 380); 
TEST_RR_OP( 96 , sll8, 0xa000f060, 0x8a40ff86, 0xff808084, 384); 
TEST_RR_OP( 97 , sll8, 0x80ffff80, 0x80ffff80, 0x3c000080, 388); 
TEST_RR_OP( 98 , sll8, 0xc24a009a, 0x612580cd, 0xff0000c9, 392); 
TEST_RR_OP( 99 , sll8, 0x0000423e, 0x0080a11f, 0x64baff89, 396); 
TEST_RR_OP( 100 , sll8, 0x80008000, 0xff00ff00, 0x80ef00ff, 400); 
TEST_RR_OP( 101 , sll8, 0x80008080, 0xeb80ffff, 0x80ff80ff, 404); 
TEST_RR_OP( 102 , sll8, 0x80ec7bfa, 0x80ec7bfa, 0xffff0080, 408); 
TEST_RR_OP( 103 , sll8, 0x803c80ff, 0x803c80ff, 0x40ff8080, 412); 
TEST_RR_OP( 104 , sll8, 0x00000000, 0x00800080, 0x008080c1, 416); 
TEST_RR_OP( 105 , sll8, 0xd3a50080, 0xd3a50080, 0x8000ff00, 420); 
TEST_RR_OP( 106 , sll8, 0x80808080, 0x80808080, 0xe5ff0080, 424); 
TEST_RR_OP( 107 , sll8, 0x02805f80, 0x02805f80, 0xff696680, 428); 
TEST_RR_OP( 108 , sll8, 0x80000000, 0xff30007a, 0x80003cff, 432); 
TEST_RR_OP( 109 , sll8, 0x80800000, 0xff8b8080, 0x1e1ea53f, 436); 
TEST_RR_OP( 110 , sll8, 0x0c808080, 0x0c808080, 0xaaff8080, 440); 
TEST_RR_OP( 111 , sll8, 0xff6900ff, 0xff6900ff, 0xff030080, 444); 
TEST_RR_OP( 112 , sll8, 0x00808000, 0x006fff00, 0x9e80ffff, 448); 
TEST_RR_OP( 113 , sll8, 0x0000e020, 0x0080ff29, 0x8000808d, 452); 
TEST_RR_OP( 114 , sll8, 0x001c0000, 0x001c0000, 0x00000000, 456); 
TEST_RR_OP( 115 , sll8, 0x00000000, 0x9e008000, 0x00df00ff, 460); 
TEST_RR_OP( 116 , sll8, 0x00000000, 0x80008080, 0x800000ff, 464); 
TEST_RR_OP( 117 , sll8, 0xff94ff60, 0xff94ff60, 0x00000080, 468); 
TEST_RR_OP( 118 , sll8, 0x00800080, 0x80ff8013, 0x80ff36ff, 472); 
TEST_RR_OP( 119 , sll8, 0x00f80000, 0x80ff8000, 0x00ffff13, 476); 
TEST_RR_OP( 120 , sll8, 0xc080c000, 0xff9eff80, 0x8021fffe, 480); 
TEST_RR_OP( 121 , sll8, 0xff800080, 0xff800080, 0x7affff80, 484); 
TEST_RR_OP( 122 , sll8, 0xc000c080, 0xff20ff62, 0x00ff7946, 488); 
TEST_RR_OP( 123 , sll8, 0x72005100, 0x72005100, 0x00808080, 492); 
TEST_RR_OP( 124 , sll8, 0x80803680, 0x80803680, 0xff000000, 496); 
TEST_RR_OP( 125 , sll8, 0x0000f000, 0x00809f00, 0xff80ff5c, 500); 
TEST_RR_OP( 126 , sll8, 0x0061ff00, 0x0061ff00, 0x00228000, 504); 
TEST_RR_OP( 127 , sll8, 0x80000000, 0xff8080d0, 0x80ff4bff, 508); 
TEST_RR_OP( 128 , sll8, 0xfd8000ff, 0xfd8000ff, 0x80b70080, 512); 
TEST_RR_OP( 129 , sll8, 0x00000040, 0x80000079, 0x0056802e, 516); 
TEST_RR_OP( 130 , sll8, 0x00000000, 0x80000000, 0x004c7169, 520); 
TEST_RR_OP( 131 , sll8, 0x00808080, 0x9ea9ffff, 0x8080ffff, 524); 
TEST_RR_OP( 132 , sll8, 0x00e00020, 0x00ff8041, 0xff80005d, 528); 
TEST_RR_OP( 133 , sll8, 0x00008000, 0x0086ff80, 0xd9ffffff, 532); 
TEST_RR_OP( 134 , sll8, 0x00006d80, 0x00006d80, 0x00808080, 536); 
TEST_RR_OP( 135 , sll8, 0x80008000, 0xff00bdae, 0xffff1bff, 540); 
TEST_RR_OP( 136 , sll8, 0x80800000, 0x81db8000, 0xff4b80ff, 544); 
TEST_RR_OP( 137 , sll8, 0xffffff80, 0xffffff80, 0x00e2be00, 548); 
TEST_RR_OP( 138 , sll8, 0x00008000, 0x0080ff00, 0xa38000ff, 552); 
TEST_RR_OP( 139 , sll8, 0x6f0080ff, 0x6f0080ff, 0x00000080, 556); 
TEST_RR_OP( 140 , sll8, 0x000000ff, 0x000000ff, 0xc44e8000, 560); 
TEST_RR_OP( 141 , sll8, 0x0000d5ff, 0x0000d5ff, 0xffffff00, 564); 
TEST_RR_OP( 142 , sll8, 0x00804000, 0x80547280, 0xde00b105, 568); 
TEST_RR_OP( 143 , sll8, 0xff00ff80, 0xff00ff80, 0xffd50080, 572); 
TEST_RR_OP( 144 , sll8, 0x00000080, 0x720080ff, 0x80803dff, 576); 
TEST_RR_OP( 145 , sll8, 0x0080cdff, 0x0080cdff, 0xd27b0000, 580); 
TEST_RR_OP( 146 , sll8, 0x00000080, 0x465600ff, 0x800080ff, 584); 
TEST_RR_OP( 147 , sll8, 0x00800000, 0x80ff0000, 0xffff00ff, 588); 
TEST_RR_OP( 148 , sll8, 0xff8022ff, 0xff8022ff, 0xff858000, 592); 
TEST_RR_OP( 149 , sll8, 0xff350080, 0xff350080, 0x80800000, 596); 
TEST_RR_OP( 150 , sll8, 0xffa8ff80, 0xffa8ff80, 0xffffe780, 600); 
TEST_RR_OP( 151 , sll8, 0x80ffff80, 0x80ffff80, 0xffc4ff80, 604); 
TEST_RR_OP( 152 , sll8, 0xff8000ff, 0xff8000ff, 0x00ca8080, 608); 
TEST_RR_OP( 153 , sll8, 0x807b80ff, 0x807b80ff, 0x00608000, 612); 
TEST_RR_OP( 154 , sll8, 0x000016cb, 0x000016cb, 0x0dffff00, 616); 
TEST_RR_OP( 155 , sll8, 0x00000000, 0x800080c8, 0xffff80ed, 620); 
TEST_RR_OP( 156 , sll8, 0x80ff8000, 0x80ff8000, 0xff807380, 624); 
TEST_RR_OP( 157 , sll8, 0xe0e060a0, 0xffff0b4d, 0x80808055, 628); 
TEST_RR_OP( 158 , sll8, 0xff80e7ff, 0xff80e7ff, 0xff808000, 632); 
TEST_RR_OP( 159 , sll8, 0x006dffd6, 0x006dffd6, 0x00803180, 636); 
TEST_RR_OP( 160 , sll8, 0x0000f060, 0x8080ff56, 0x7d80005c, 640); 
TEST_RR_OP( 161 , sll8, 0x8046ffff, 0x8046ffff, 0x00800a00, 644); 
TEST_RR_OP( 162 , sll8, 0x00ff80f4, 0x00ff80f4, 0x0090e000, 648); 
TEST_RR_OP( 163 , sll8, 0x808080ff, 0x808080ff, 0x0080c880, 652); 
TEST_RR_OP( 164 , sll8, 0x80808080, 0xffff4df3, 0x808081ff, 656); 
TEST_RR_OP( 165 , sll8, 0x00808000, 0x003fff80, 0xd680ffff, 660); 
TEST_RR_OP( 166 , sll8, 0x808000ff, 0x808000ff, 0x0000d280, 664); 
TEST_RR_OP( 167 , sll8, 0x00008000, 0x00007b00, 0x7f0080ff, 668); 
TEST_RR_OP( 168 , sll8, 0x80008000, 0x3900ff80, 0x80cbffff, 672); 
TEST_RR_OP( 169 , sll8, 0x80008000, 0x5f80ff00, 0x00804eff, 676); 
TEST_RR_OP( 170 , sll8, 0x00800000, 0x00ff0080, 0x008000ff, 680); 
TEST_RR_OP( 171 , sll8, 0x00ffef7b, 0x00ffef7b, 0x0000ff00, 684); 
TEST_RR_OP( 172 , sll8, 0x00000000, 0x004a0000, 0x6780ffff, 688); 
TEST_RR_OP( 173 , sll8, 0xff0016ff, 0xff0016ff, 0xff808080, 692); 
TEST_RR_OP( 174 , sll8, 0x8080ff80, 0x8080ff80, 0x00000000, 696); 
TEST_RR_OP( 175 , sll8, 0x00400000, 0x006d8080, 0x8080ff8e, 700); 
TEST_RR_OP( 176 , sll8, 0x80000000, 0xff000080, 0x8080ffff, 704); 
TEST_RR_OP( 177 , sll8, 0x28000000, 0x28000000, 0x00000000, 708); 
TEST_RR_OP( 178 , sll8, 0x80bd0000, 0x80bd0000, 0x00ff8000, 712); 
TEST_RR_OP( 179 , sll8, 0x00808000, 0x80ffff80, 0x80802fff, 716); 
TEST_RR_OP( 180 , sll8, 0x00000000, 0x80808004, 0xffff1ece, 720); 
TEST_RR_OP( 181 , sll8, 0xff47ff00, 0xff47ff00, 0xfffff580, 724); 
TEST_RR_OP( 182 , sll8, 0x80000000, 0xffea8080, 0x00fff8ff, 728); 
TEST_RR_OP( 183 , sll8, 0x00008000, 0x0080ff80, 0x130000ff, 732); 
TEST_RR_OP( 184 , sll8, 0x00a0e000, 0x002a8e80, 0xffffc0cc, 736); 
TEST_RR_OP( 185 , sll8, 0xff1b8000, 0xff1b8000, 0xd4ffa900, 740); 
TEST_RR_OP( 186 , sll8, 0x00808000, 0xacffff00, 0x00ff0047, 744); 
TEST_RR_OP( 187 , sll8, 0x80008080, 0xff80ff13, 0x2b8080ff, 748); 
TEST_RR_OP( 188 , sll8, 0x00800000, 0x00ff5a00, 0x91ffffff, 752); 
TEST_RR_OP( 189 , sll8, 0x80800080, 0xffff6ce3, 0x008080ff, 756); 
TEST_RR_OP( 190 , sll8, 0xc07000f8, 0x182e80ff, 0xff8080b3, 760); 
TEST_RR_OP( 191 , sll8, 0xff280f80, 0xff280f80, 0x80e80000, 764); 
TEST_RR_OP( 192 , sll8, 0xff00ffff, 0xff00ffff, 0x00008000, 768); 
TEST_RR_OP( 193 , sll8, 0x00000000, 0x80808000, 0x00b24eff, 772); 
TEST_RR_OP( 194 , sll8, 0xff004b00, 0xff004b00, 0xff808080, 776); 
TEST_RR_OP( 195 , sll8, 0xff2f0098, 0xff2f0098, 0xff008080, 780); 
TEST_RR_OP( 196 , sll8, 0x2635000e, 0x2635000e, 0xff005b80, 784); 
TEST_RR_OP( 197 , sll8, 0x00807b00, 0x00807b00, 0x00008000, 788); 
TEST_RR_OP( 198 , sll8, 0x00800000, 0x92ff0080, 0x8780d9ff, 792); 
TEST_RR_OP( 199 , sll8, 0x00000000, 0x80808000, 0x00808053, 796); 

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
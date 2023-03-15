# See LICENSE for license details.
#*****************************************************************************
# ursub8.S
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

TEST_RR_OP( 2 , ursub8, 0x00c0ca38, 0x808086ff, 0x80fff18f, 8); 
TEST_RR_OP( 3 , ursub8, 0xb87f007f, 0x1eff00ff, 0xad000000, 12); 
TEST_RR_OP( 4 , ursub8, 0xc052007f, 0x80a400ff, 0xff000000, 16); 
TEST_RR_OP( 5 , ursub8, 0x00fdc040, 0x007a0080, 0x00808000, 20); 
TEST_RR_OP( 6 , ursub8, 0x177fc000, 0x2fff5380, 0x0000d380, 24); 
TEST_RR_OP( 7 , ursub8, 0x7f7fc03f, 0xffff00ff, 0x00008080, 28); 
TEST_RR_OP( 8 , ursub8, 0x66c0c77f, 0xcc0086ff, 0x0080f700, 32); 
TEST_RR_OP( 9 , ursub8, 0x000000c8, 0xff00ff80, 0xff00ffef, 36); 
TEST_RR_OP( 10 , ursub8, 0x807f000e, 0x00ff801c, 0xff008000, 40); 
TEST_RR_OP( 11 , ursub8, 0x003fb6e2, 0x80ff0000, 0x8080933b, 44); 
TEST_RR_OP( 12 , ursub8, 0x3fb3ea00, 0xff6654ff, 0x80ff80ff, 48); 
TEST_RR_OP( 13 , ursub8, 0x3f3fcf40, 0xffff8080, 0x8080e100, 52); 
TEST_RR_OP( 14 , ursub8, 0x7f00602b, 0xff80c1d6, 0x00800080, 56); 
TEST_RR_OP( 15 , ursub8, 0x80cc2f38, 0x0097aaff, 0xffff4c8f, 60); 
TEST_RR_OP( 16 , ursub8, 0x007f7fc0, 0x00ffff00, 0x00000080, 64); 
TEST_RR_OP( 17 , ursub8, 0xc0c080c0, 0x80800000, 0xffffff80, 68); 
TEST_RR_OP( 18 , ursub8, 0xc0d74000, 0x80ae8080, 0xffff0080, 72); 
TEST_RR_OP( 19 , ursub8, 0xc080c000, 0x00008000, 0x80ffff00, 76); 
TEST_RR_OP( 20 , ursub8, 0x3f403700, 0xff80ee80, 0x80008080, 80); 
TEST_RR_OP( 21 , ursub8, 0xc027c000, 0x80ff8000, 0xffb0ff00, 84); 
TEST_RR_OP( 22 , ursub8, 0xc000c03a, 0x80ff8074, 0xffffff00, 88); 
TEST_RR_OP( 23 , ursub8, 0x7f7f0cc0, 0xffff8000, 0x00006880, 92); 
TEST_RR_OP( 24 , ursub8, 0x8000407f, 0x00ff80ff, 0xffff0000, 96); 
TEST_RR_OP( 25 , ursub8, 0x6589003f, 0xcb1200ff, 0x00ff0080, 100); 
TEST_RR_OP( 26 , ursub8, 0x4ec83080, 0xff806000, 0x63f000ff, 104); 
TEST_RR_OP( 27 , ursub8, 0x1ac0d480, 0x80002900, 0x4b8080ff, 108); 
TEST_RR_OP( 28 , ursub8, 0x803fc03f, 0x00ff00ff, 0xff808080, 112); 
TEST_RR_OP( 29 , ursub8, 0xcdc03f40, 0x0080ff80, 0x66ff8000, 116); 
TEST_RR_OP( 30 , ursub8, 0x6d808051, 0xff0000d7, 0x25ffff34, 120); 
TEST_RR_OP( 31 , ursub8, 0x00404476, 0xff8088ff, 0xff000012, 124); 
TEST_RR_OP( 32 , ursub8, 0xae00c040, 0x00808081, 0xa380ff00, 128); 
TEST_RR_OP( 33 , ursub8, 0xc07fc033, 0x00ff8080, 0x8000ff19, 132); 
TEST_RR_OP( 34 , ursub8, 0xdf0000c0, 0x00000000, 0x42000080, 136); 
TEST_RR_OP( 35 , ursub8, 0x7fdbe716, 0xff068080, 0x0050b154, 140); 
TEST_RR_OP( 36 , ursub8, 0x542600c0, 0xa84d8080, 0x000080ff, 144); 
TEST_RR_OP( 37 , ursub8, 0x806809e6, 0x00ffaf80, 0xff2f9db4, 148); 
TEST_RR_OP( 38 , ursub8, 0x40800e00, 0x80009d80, 0x00ff8080, 152); 
TEST_RR_OP( 39 , ursub8, 0xc07fe63f, 0x00ff00ff, 0x80003480, 156); 
TEST_RR_OP( 40 , ursub8, 0x3f40df69, 0xff803fd3, 0x80008000, 160); 
TEST_RR_OP( 41 , ursub8, 0x00800000, 0x80008080, 0x80ff8080, 164); 
TEST_RR_OP( 42 , ursub8, 0x80eb8058, 0x004700b0, 0xff70ff00, 168); 
TEST_RR_OP( 43 , ursub8, 0x40004080, 0x80808000, 0x008000ff, 172); 
TEST_RR_OP( 44 , ursub8, 0x3f222cca, 0x8cffd97d, 0x0dba80e9, 176); 
TEST_RR_OP( 45 , ursub8, 0x7f047f3f, 0xff88ffff, 0x00800080, 180); 
TEST_RR_OP( 46 , ursub8, 0x00357f3f, 0x006affff, 0x00000080, 184); 
TEST_RR_OP( 47 , ursub8, 0xe31d00c0, 0x47ba0000, 0x80800080, 188); 
TEST_RR_OP( 48 , ursub8, 0xbb47c040, 0x63ff0080, 0xec708000, 192); 
TEST_RR_OP( 49 , ursub8, 0xc7c0beeb, 0x8d007b56, 0xff80ff80, 196); 
TEST_RR_OP( 50 , ursub8, 0x40007f73, 0x8000ffe6, 0x00000000, 200); 
TEST_RR_OP( 51 , ursub8, 0x7f7f3f7f, 0xffffffff, 0x00008000, 204); 
TEST_RR_OP( 52 , ursub8, 0x7f7f8000, 0xffff0000, 0x0000ff00, 208); 
TEST_RR_OP( 53 , ursub8, 0x0000fa75, 0xff8000ff, 0xff800b14, 212); 
TEST_RR_OP( 54 , ursub8, 0xc0d3c000, 0x80a580ff, 0xffffffff, 216); 
TEST_RR_OP( 55 , ursub8, 0x00fc8041, 0x00f700ff, 0x00ffff7c, 220); 
TEST_RR_OP( 56 , ursub8, 0x7fc0dff7, 0xff8000b9, 0x00ff42cb, 224); 
TEST_RR_OP( 57 , ursub8, 0x0400c025, 0x89800080, 0x80808036, 228); 
TEST_RR_OP( 58 , ursub8, 0x0c4039f5, 0x8080f3e9, 0x670080ff, 232); 
TEST_RR_OP( 59 , ursub8, 0xc3c08080, 0x86000000, 0xff80ffff, 236); 
TEST_RR_OP( 60 , ursub8, 0x00b4613d, 0x0068fffa, 0x00ff3c80, 240); 
TEST_RR_OP( 61 , ursub8, 0x4000fd3f, 0x800080ff, 0x00008580, 244); 
TEST_RR_OP( 62 , ursub8, 0x80003fc0, 0x0000ff00, 0xff008080, 248); 
TEST_RR_OP( 63 , ursub8, 0x7fc03f80, 0xff80ff00, 0x00ff80ff, 252); 
TEST_RR_OP( 64 , ursub8, 0x8000d580, 0x00002b00, 0xff0080ff, 256); 
TEST_RR_OP( 65 , ursub8, 0x6b3f0900, 0xd6ff8080, 0x00806d80, 260); 
TEST_RR_OP( 66 , ursub8, 0xdde23f6c, 0x3bc3ffee, 0x80ff8016, 264); 
TEST_RR_OP( 67 , ursub8, 0xc03fdad4, 0x80ff3429, 0xff808080, 268); 
TEST_RR_OP( 68 , ursub8, 0x40c9cc3b, 0x800f00f7, 0x007d6880, 272); 
TEST_RR_OP( 69 , ursub8, 0xc0df7fcc, 0x8000ff00, 0xff410068, 276); 
TEST_RR_OP( 70 , ursub8, 0x6f316dc0, 0xdf62db00, 0x00000080, 280); 
TEST_RR_OP( 71 , ursub8, 0x789e007f, 0xff0080ff, 0x0fc48000, 284); 
TEST_RR_OP( 72 , ursub8, 0x7f4b7faa, 0xffffff00, 0x006900ac, 288); 
TEST_RR_OP( 73 , ursub8, 0xc2400080, 0x84800000, 0xff0000ff, 292); 
TEST_RR_OP( 74 , ursub8, 0xc0250050, 0x004b80fa, 0x8000805a, 296); 
TEST_RR_OP( 75 , ursub8, 0xff1d3f2f, 0x8080ff80, 0x81468022, 300); 
TEST_RR_OP( 76 , ursub8, 0x00800000, 0xff00ff80, 0xffffff80, 304); 
TEST_RR_OP( 77 , ursub8, 0xc04b7040, 0x0096ff80, 0x80001f00, 308); 
TEST_RR_OP( 78 , ursub8, 0x3fc08000, 0xff000000, 0x8080ff00, 312); 
TEST_RR_OP( 79 , ursub8, 0x40b3b573, 0x800169ff, 0x009bff18, 316); 
TEST_RR_OP( 80 , ursub8, 0x40d410df, 0x8094a0be, 0x00ec80ff, 320); 
TEST_RR_OP( 81 , ursub8, 0xaa0080d4, 0x53000029, 0xff00ff80, 324); 
TEST_RR_OP( 82 , ursub8, 0x00effd00, 0x809a0000, 0x80bb0600, 328); 
TEST_RR_OP( 83 , ursub8, 0x7f00da40, 0xffff0080, 0x00ff4c00, 332); 
TEST_RR_OP( 84 , ursub8, 0xc9004819, 0x92009132, 0xff000000, 336); 
TEST_RR_OP( 85 , ursub8, 0x80fd7600, 0x007bec80, 0xff800080, 340); 
TEST_RR_OP( 86 , ursub8, 0x3f004060, 0xff8080c0, 0x80800000, 344); 
TEST_RR_OP( 87 , ursub8, 0x2ec6ca00, 0x5f8b0000, 0x02ff6c00, 348); 
TEST_RR_OP( 88 , ursub8, 0x409a2d20, 0x8033da80, 0x00ff8040, 352); 
TEST_RR_OP( 89 , ursub8, 0x005b0040, 0xffff0080, 0xff480000, 356); 
TEST_RR_OP( 90 , ursub8, 0x3f002040, 0xff80c080, 0x80808000, 360); 
TEST_RR_OP( 91 , ursub8, 0x777feb3e, 0xffff808c, 0x1100a910, 364); 
TEST_RR_OP( 92 , ursub8, 0x763f0080, 0xedffff00, 0x0080ffff, 368); 
TEST_RR_OP( 93 , ursub8, 0x000000c0, 0xffff0000, 0xffff0080, 372); 
TEST_RR_OP( 94 , ursub8, 0x0000ecd7, 0x0080802f, 0x0080a780, 376); 
TEST_RR_OP( 95 , ursub8, 0x00c8c0c2, 0x80008000, 0x8070ff7b, 380); 
TEST_RR_OP( 96 , ursub8, 0x00f67fc0, 0xff6cff80, 0xff8000ff, 384); 
TEST_RR_OP( 97 , ursub8, 0xc7004be5, 0x3e009700, 0xaf000036, 388); 
TEST_RR_OP( 98 , ursub8, 0x00954000, 0x802a8000, 0x80ff0000, 392); 
TEST_RR_OP( 99 , ursub8, 0x80404f00, 0x0080ff00, 0xff006100, 396); 
TEST_RR_OP( 100 , ursub8, 0xfaff1595, 0x00fd8000, 0x0cff56d5, 400); 
TEST_RR_OP( 101 , ursub8, 0x0ac04000, 0x80008000, 0x6b800000, 404); 
TEST_RR_OP( 102 , ursub8, 0xf452c000, 0x80a580ff, 0x9800ffff, 408); 
TEST_RR_OP( 103 , ursub8, 0x00003f03, 0x00fffff5, 0x00ff80ef, 412); 
TEST_RR_OP( 104 , ursub8, 0x00a933da, 0x004280b4, 0x00ef19ff, 416); 
TEST_RR_OP( 105 , ursub8, 0xc040ff3f, 0x008000ff, 0x80000280, 420); 
TEST_RR_OP( 106 , ursub8, 0x44802800, 0x8e0050ff, 0x06ff00ff, 424); 
TEST_RR_OP( 107 , ursub8, 0x3fb0e4e0, 0xff605180, 0x80ff88bf, 428); 
TEST_RR_OP( 108 , ursub8, 0x001dc000, 0x00800080, 0x00458080, 432); 
TEST_RR_OP( 109 , ursub8, 0x1730c000, 0x2f958080, 0x0035ff80, 436); 
TEST_RR_OP( 110 , ursub8, 0x07c00000, 0x0e8000ff, 0x00ff00ff, 440); 
TEST_RR_OP( 111 , ursub8, 0x802a9300, 0x00d40000, 0xff80d900, 444); 
TEST_RR_OP( 112 , ursub8, 0x40201e33, 0x8080bdff, 0x003f8098, 448); 
TEST_RR_OP( 113 , ursub8, 0xc0c0c0c0, 0x00000080, 0x808080ff, 452); 
TEST_RR_OP( 114 , ursub8, 0x7f007f40, 0xff00ff80, 0x00000000, 456); 
TEST_RR_OP( 115 , ursub8, 0x4510161a, 0xff202cff, 0x750000ca, 460); 
TEST_RR_OP( 116 , ursub8, 0x3f7f8000, 0xffff0080, 0x8000ff80, 464); 
TEST_RR_OP( 117 , ursub8, 0xe122eb9f, 0x80455600, 0xbe0080c1, 468); 
TEST_RR_OP( 118 , ursub8, 0x7f806533, 0xff00ffe6, 0x00ff3580, 472); 
TEST_RR_OP( 119 , ursub8, 0x8000c00a, 0x00ff8094, 0xffffff80, 476); 
TEST_RR_OP( 120 , ursub8, 0xc0bc0059, 0x800080ff, 0xff88804c, 480); 
TEST_RR_OP( 121 , ursub8, 0xb0c72e08, 0x60806a11, 0xfff20e00, 484); 
TEST_RR_OP( 122 , ursub8, 0x1a27255c, 0xffff80ff, 0xcab03547, 488); 
TEST_RR_OP( 123 , ursub8, 0x613fffc9, 0xc2fff392, 0x0080f4ff, 492); 
TEST_RR_OP( 124 , ursub8, 0x400000f1, 0x80ff80e2, 0x00ff80ff, 496); 
TEST_RR_OP( 125 , ursub8, 0xfb3f0092, 0xf5ff8000, 0xff8080db, 500); 
TEST_RR_OP( 126 , ursub8, 0x8e410001, 0x00ff804f, 0xe37d804d, 504); 
TEST_RR_OP( 127 , ursub8, 0x3f00001c, 0xff80ff80, 0x8080ff48, 508); 
TEST_RR_OP( 128 , ursub8, 0xa58e0f40, 0x49001f80, 0xffe30000, 512); 
TEST_RR_OP( 129 , ursub8, 0xc000c000, 0x00800000, 0x80808000, 516); 
TEST_RR_OP( 130 , ursub8, 0xc000a17f, 0x008042ff, 0x8080ff00, 520); 
TEST_RR_OP( 131 , ursub8, 0x34cd1f3f, 0xff0cffff, 0x9672c080, 524); 
TEST_RR_OP( 132 , ursub8, 0x007f0019, 0xffff8065, 0xff008033, 528); 
TEST_RR_OP( 133 , ursub8, 0x6b143f31, 0xd680ffe2, 0x00588080, 532); 
TEST_RR_OP( 134 , ursub8, 0x00d725c0, 0x80a74a80, 0x80f900ff, 536); 
TEST_RR_OP( 135 , ursub8, 0x40403f00, 0x8080ff00, 0x00008000, 540); 
TEST_RR_OP( 136 , ursub8, 0x00bc8cc0, 0xff371780, 0xffbeffff, 544); 
TEST_RR_OP( 137 , ursub8, 0x13808000, 0x26000080, 0x00ffff80, 548); 
TEST_RR_OP( 138 , ursub8, 0x00000040, 0x00000080, 0x00000000, 552); 
TEST_RR_OP( 139 , ursub8, 0xc0c00000, 0x0080ffff, 0x80ffffff, 556); 
TEST_RR_OP( 140 , ursub8, 0x3f7faa3d, 0xffff5380, 0x8000ff06, 560); 
TEST_RR_OP( 141 , ursub8, 0x1500c0b4, 0xaaff8021, 0x80ffffb9, 564); 
TEST_RR_OP( 142 , ursub8, 0x7ff2c000, 0xff800000, 0x009c8000, 568); 
TEST_RR_OP( 143 , ursub8, 0x9a33c000, 0x00ff8080, 0xcc98ff80, 572); 
TEST_RR_OP( 144 , ursub8, 0x7f403169, 0xff8080ff, 0x00001e2c, 576); 
TEST_RR_OP( 145 , ursub8, 0x00ae2480, 0x805b8000, 0x80ff38ff, 580); 
TEST_RR_OP( 146 , ursub8, 0xf700800a, 0xb3800080, 0xc580ff6c, 584); 
TEST_RR_OP( 147 , ursub8, 0xc03f7f00, 0x80ffff00, 0xff800000, 588); 
TEST_RR_OP( 148 , ursub8, 0xe7003fa1, 0x8000ff42, 0xb10080ff, 592); 
TEST_RR_OP( 149 , ursub8, 0xd43f007f, 0x80ff00ff, 0xd7800000, 596); 
TEST_RR_OP( 150 , ursub8, 0x7f00e900, 0xff0053ff, 0x000080ff, 600); 
TEST_RR_OP( 151 , ursub8, 0xc00016c0, 0x80ffad00, 0xffff8080, 604); 
TEST_RR_OP( 152 , ursub8, 0x3b400fc0, 0x88808080, 0x110061ff, 608); 
TEST_RR_OP( 153 , ursub8, 0x5900c0c0, 0xbf008000, 0x0d00ff80, 612); 
TEST_RR_OP( 154 , ursub8, 0x7f800ff7, 0xff00ff6e, 0x00ffe180, 616); 
TEST_RR_OP( 155 , ursub8, 0x027f0068, 0x80ff80d0, 0x7c008000, 620); 
TEST_RR_OP( 156 , ursub8, 0x3eda7f00, 0xfc99ffff, 0x80e400ff, 624); 
TEST_RR_OP( 157 , ursub8, 0x372c8046, 0xeeff00fa, 0x80a6ff6d, 628); 
TEST_RR_OP( 158 , ursub8, 0x80f080c0, 0x00800000, 0xff9fff80, 632); 
TEST_RR_OP( 159 , ursub8, 0x004025c0, 0xffffca00, 0xff7f8080, 636); 
TEST_RR_OP( 160 , ursub8, 0x1d40407f, 0xff8080ff, 0xc4000000, 640); 
TEST_RR_OP( 161 , ursub8, 0x9e160008, 0x006280d3, 0xc43680c3, 644); 
TEST_RR_OP( 162 , ursub8, 0x3a395574, 0xf4c7cbff, 0x80552017, 648); 
TEST_RR_OP( 163 , ursub8, 0x001b2540, 0xff808080, 0xff4a3600, 652); 
TEST_RR_OP( 164 , ursub8, 0xc030c03f, 0x008080ff, 0x8020ff80, 656); 
TEST_RR_OP( 165 , ursub8, 0xc3ed80c0, 0x80da0000, 0xf9ffff80, 660); 
TEST_RR_OP( 166 , ursub8, 0x40400232, 0x8080ffdb, 0x0000fa76, 664); 
TEST_RR_OP( 167 , ursub8, 0x38353fc0, 0xffffff00, 0x8f958080, 668); 
TEST_RR_OP( 168 , ursub8, 0x3f3f17eb, 0xffffeb00, 0x8080bc2a, 672); 
TEST_RR_OP( 169 , ursub8, 0x9decd952, 0x3ad7b2a5, 0xffffff00, 676); 
TEST_RR_OP( 170 , ursub8, 0x000000c0, 0xffff8000, 0xffff8080, 680); 
TEST_RR_OP( 171 , ursub8, 0x80583e40, 0x00ffff80, 0xff4f8200, 684); 
TEST_RR_OP( 172 , ursub8, 0xc000c0c0, 0x00800000, 0x80808080, 688); 
TEST_RR_OP( 173 , ursub8, 0x80f14000, 0x00628080, 0xff800080, 692); 
TEST_RR_OP( 174 , ursub8, 0x14ff00c0, 0x80c30000, 0x57c50080, 696); 
TEST_RR_OP( 175 , ursub8, 0x40c0c07f, 0x808000ff, 0x00ff8000, 700); 
TEST_RR_OP( 176 , ursub8, 0xc05a003f, 0x00ff80ff, 0x804a8080, 704); 
TEST_RR_OP( 177 , ursub8, 0xda14d2e9, 0x4ba9a453, 0x9780ff80, 708); 
TEST_RR_OP( 178 , ursub8, 0xc0c0c000, 0x808080ff, 0xffffffff, 712); 
TEST_RR_OP( 179 , ursub8, 0xc000c042, 0x00ff00ff, 0x80ff807a, 716); 
TEST_RR_OP( 180 , ursub8, 0x7f409f0d, 0xff800080, 0x0000c265, 720); 
TEST_RR_OP( 181 , ursub8, 0x00008017, 0x00000099, 0x0000ff6b, 724); 
TEST_RR_OP( 182 , ursub8, 0x4000c078, 0x800000f1, 0x00008000, 728); 
TEST_RR_OP( 183 , ursub8, 0x007975c0, 0xffffea00, 0xff0c0080, 732); 
TEST_RR_OP( 184 , ursub8, 0x803ffc40, 0x00ffac80, 0xff80b300, 736); 
TEST_RR_OP( 185 , ursub8, 0xde7fc03f, 0x3dff00ff, 0x80008080, 740); 
TEST_RR_OP( 186 , ursub8, 0x007f003b, 0xffffff77, 0xff00ff00, 744); 
TEST_RR_OP( 187 , ursub8, 0xea7f00c0, 0x00ff0000, 0x2b000080, 748); 
TEST_RR_OP( 188 , ursub8, 0x3f710000, 0xffff8080, 0x801c8080, 752); 
TEST_RR_OP( 189 , ursub8, 0xc0e60005, 0x80cb80ff, 0xffff80f5, 756); 
TEST_RR_OP( 190 , ursub8, 0xc03ffc6c, 0x00ff0cff, 0x80801326, 760); 
TEST_RR_OP( 191 , ursub8, 0x80daf447, 0x009d008e, 0xffe81800, 764); 
TEST_RR_OP( 192 , ursub8, 0x006c0057, 0xffd9ffae, 0xff00ff00, 768); 
TEST_RR_OP( 193 , ursub8, 0x16894000, 0x2d008000, 0x00ed0000, 772); 
TEST_RR_OP( 194 , ursub8, 0x004000ec, 0xff8080d8, 0xff0080ff, 776); 
TEST_RR_OP( 195 , ursub8, 0x000040fd, 0x008080f9, 0x008000ff, 780); 
TEST_RR_OP( 196 , ursub8, 0xaf7f4500, 0x5dffffff, 0xff0074ff, 784); 
TEST_RR_OP( 197 , ursub8, 0x5d7ff502, 0xbaffea80, 0x0000ff7c, 788); 
TEST_RR_OP( 198 , ursub8, 0x7f00099c, 0xffff9200, 0x00ff80c7, 792); 
TEST_RR_OP( 199 , ursub8, 0x7f7f00c0, 0xffff8080, 0x000080ff, 796); 

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
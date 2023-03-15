# See LICENSE for license details.
#*****************************************************************************
# umin8.S
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

TEST_RR_OP( 2 , umin8, 0x7680a680, 0x9880a680, 0x76baffba, 8); 
TEST_RR_OP( 3 , umin8, 0x80008000, 0xff008080, 0x8048ff00, 12); 
TEST_RR_OP( 4 , umin8, 0x80000080, 0xff800080, 0x80008080, 16); 
TEST_RR_OP( 5 , umin8, 0xff5d0033, 0xffaf0033, 0xff5d80ff, 20); 
TEST_RR_OP( 6 , umin8, 0x6f01800d, 0x8080800d, 0x6f01ffff, 24); 
TEST_RR_OP( 7 , umin8, 0x80808080, 0x8080ff80, 0x9a808080, 28); 
TEST_RR_OP( 8 , umin8, 0xf7000000, 0xff000080, 0xf780f300, 32); 
TEST_RR_OP( 9 , umin8, 0x80000000, 0x9e000080, 0x80430000, 36); 
TEST_RR_OP( 10 , umin8, 0x0000e3bb, 0x0000ffc6, 0x1380e3bb, 40); 
TEST_RR_OP( 11 , umin8, 0x80322100, 0xff32211a, 0x8044ff00, 44); 
TEST_RR_OP( 12 , umin8, 0x27008000, 0x8080c8ff, 0x27008000, 48); 
TEST_RR_OP( 13 , umin8, 0xdf610078, 0xdf8072ff, 0xff610078, 52); 
TEST_RR_OP( 14 , umin8, 0x2d809d80, 0xcfffffff, 0x2d809d80, 56); 
TEST_RR_OP( 15 , umin8, 0x003f8046, 0x80ffff46, 0x003f8080, 60); 
TEST_RR_OP( 16 , umin8, 0x00808080, 0x5c80ff80, 0x00808080, 64); 
TEST_RR_OP( 17 , umin8, 0x989a7600, 0x989aff00, 0xe4cd7600, 68); 
TEST_RR_OP( 18 , umin8, 0x00ff0080, 0x00ff0080, 0x6fffffff, 72); 
TEST_RR_OP( 19 , umin8, 0x803d0080, 0x80ff8d80, 0xff3d00ff, 76); 
TEST_RR_OP( 20 , umin8, 0xea80b933, 0xff80b980, 0xeaffbf33, 80); 
TEST_RR_OP( 21 , umin8, 0x23b94300, 0x23b98080, 0x62ff4300, 84); 
TEST_RR_OP( 22 , umin8, 0x802c0080, 0x9b2c0080, 0x80ff6980, 88); 
TEST_RR_OP( 23 , umin8, 0x9cff8000, 0xffffff00, 0x9cff80ff, 92); 
TEST_RR_OP( 24 , umin8, 0x4cff3980, 0x4cffff80, 0xffff39db, 96); 
TEST_RR_OP( 25 , umin8, 0x00000028, 0x000800ff, 0x00007928, 100); 
TEST_RR_OP( 26 , umin8, 0x0000ce80, 0x002cce80, 0x8000ffff, 104); 
TEST_RR_OP( 27 , umin8, 0x808080ff, 0xaa80ffff, 0x80ff80ff, 108); 
TEST_RR_OP( 28 , umin8, 0x8ccd891c, 0x8cffff1c, 0xffcd89b3, 112); 
TEST_RR_OP( 29 , umin8, 0x008000ff, 0x008000ff, 0x008080ff, 116); 
TEST_RR_OP( 30 , umin8, 0x806b8000, 0x808d8000, 0xff6bff00, 120); 
TEST_RR_OP( 31 , umin8, 0x00438080, 0x00438080, 0xffffffb6, 124); 
TEST_RR_OP( 32 , umin8, 0x0000e90d, 0x0000e9ff, 0x80ffff0d, 128); 
TEST_RR_OP( 33 , umin8, 0x80006580, 0x80806580, 0x8000ffff, 132); 
TEST_RR_OP( 34 , umin8, 0x26000045, 0x260080cf, 0xff800045, 136); 
TEST_RR_OP( 35 , umin8, 0x00000099, 0x00800099, 0x000080ff, 140); 
TEST_RR_OP( 36 , umin8, 0x8000000e, 0x80ff12ff, 0xb800000e, 144); 
TEST_RR_OP( 37 , umin8, 0x00008000, 0x80ffff00, 0x00008080, 148); 
TEST_RR_OP( 38 , umin8, 0x00800000, 0x00800000, 0x80ff00ff, 152); 
TEST_RR_OP( 39 , umin8, 0x57005c69, 0xfc00ffff, 0x57005c69, 156); 
TEST_RR_OP( 40 , umin8, 0xff800800, 0xffff0800, 0xff808080, 160); 
TEST_RR_OP( 41 , umin8, 0x0000008e, 0x0000808e, 0xd58000ff, 164); 
TEST_RR_OP( 42 , umin8, 0x80000000, 0xff0000ff, 0x80008000, 168); 
TEST_RR_OP( 43 , umin8, 0x00cd0000, 0x16ef0000, 0x00cd8080, 172); 
TEST_RR_OP( 44 , umin8, 0x002b0000, 0x0080c8de, 0xff2b0000, 176); 
TEST_RR_OP( 45 , umin8, 0x80846b00, 0x80b1a9ff, 0xff846b00, 180); 
TEST_RR_OP( 46 , umin8, 0x470027f9, 0x47c327ff, 0xff00fff9, 184); 
TEST_RR_OP( 47 , umin8, 0x0e000000, 0x0e00a000, 0xff0000ff, 188); 
TEST_RR_OP( 48 , umin8, 0x00008000, 0x00ff8000, 0x80008000, 192); 
TEST_RR_OP( 49 , umin8, 0x2f80ff00, 0xfffbff00, 0x2f80ff00, 196); 
TEST_RR_OP( 50 , umin8, 0x80800080, 0x80800a80, 0xffff00ff, 200); 
TEST_RR_OP( 51 , umin8, 0x80000020, 0xff800020, 0x80000080, 204); 
TEST_RR_OP( 52 , umin8, 0x80008080, 0xff008080, 0x8080e8ff, 208); 
TEST_RR_OP( 53 , umin8, 0x808080ff, 0xff80ffff, 0x808d80ff, 212); 
TEST_RR_OP( 54 , umin8, 0x2eb70000, 0x2eff8000, 0x80b70000, 216); 
TEST_RR_OP( 55 , umin8, 0x35005800, 0x3500582d, 0x72ffff00, 220); 
TEST_RR_OP( 56 , umin8, 0x80ad8006, 0x80ad8080, 0x80ffff06, 224); 
TEST_RR_OP( 57 , umin8, 0x800000c1, 0x800000c1, 0x80ffffff, 228); 
TEST_RR_OP( 58 , umin8, 0x3e000000, 0x48ff0000, 0x3e000000, 232); 
TEST_RR_OP( 59 , umin8, 0xffff0000, 0xffff6f00, 0xffff000c, 236); 
TEST_RR_OP( 60 , umin8, 0x00000000, 0x8d00df00, 0x008000ff, 240); 
TEST_RR_OP( 61 , umin8, 0x002c7f00, 0x002c7f80, 0xdbafff00, 244); 
TEST_RR_OP( 62 , umin8, 0x80ff00ff, 0x99ff00ff, 0x80ff00ff, 248); 
TEST_RR_OP( 63 , umin8, 0xff292c80, 0xff29a3ff, 0xff802c80, 252); 
TEST_RR_OP( 64 , umin8, 0x04800080, 0xce8000ff, 0x04ff8080, 256); 
TEST_RR_OP( 65 , umin8, 0x80008000, 0x80008000, 0x80c08083, 260); 
TEST_RR_OP( 66 , umin8, 0x39008000, 0x8000ff00, 0x393b8080, 264); 
TEST_RR_OP( 67 , umin8, 0x0500cf80, 0x1900cfff, 0x0500e080, 268); 
TEST_RR_OP( 68 , umin8, 0x00800000, 0x80d1cf19, 0x00800000, 272); 
TEST_RR_OP( 69 , umin8, 0xf9800000, 0xf98000ff, 0xff800000, 276); 
TEST_RR_OP( 70 , umin8, 0x000080a0, 0x008080ff, 0x0000e8a0, 280); 
TEST_RR_OP( 71 , umin8, 0x00ff8000, 0x00ff8000, 0x80ff8000, 284); 
TEST_RR_OP( 72 , umin8, 0x000f0000, 0x8080b500, 0x000f00ff, 288); 
TEST_RR_OP( 73 , umin8, 0x80800054, 0x80808080, 0x809c0054, 292); 
TEST_RR_OP( 74 , umin8, 0x6080ff00, 0x6080ff00, 0xbbc9ff00, 296); 
TEST_RR_OP( 75 , umin8, 0x0000de0d, 0x0000ff0d, 0xffffdec1, 300); 
TEST_RR_OP( 76 , umin8, 0x80390f48, 0xff39ffff, 0x80800f48, 304); 
TEST_RR_OP( 77 , umin8, 0x00008000, 0x00ff8000, 0xff00c85b, 308); 
TEST_RR_OP( 78 , umin8, 0xed309480, 0xff7994ff, 0xed30ae80, 312); 
TEST_RR_OP( 79 , umin8, 0x00ff80a0, 0x00ffffa0, 0x80ff80ff, 316); 
TEST_RR_OP( 80 , umin8, 0x269eff80, 0x269eff87, 0xffffff80, 320); 
TEST_RR_OP( 81 , umin8, 0x80800080, 0xfffc00b2, 0x80806c80, 324); 
TEST_RR_OP( 82 , umin8, 0x1a0000ff, 0x1a0000ff, 0xff8005ff, 328); 
TEST_RR_OP( 83 , umin8, 0x80000000, 0x800080ff, 0xffff0000, 332); 
TEST_RR_OP( 84 , umin8, 0x9600ffff, 0x9600ffff, 0xc800ffff, 336); 
TEST_RR_OP( 85 , umin8, 0x0080c980, 0x80c1c9ff, 0x0080ff80, 340); 
TEST_RR_OP( 86 , umin8, 0x28006e80, 0x28006eac, 0x83ffff80, 344); 
TEST_RR_OP( 87 , umin8, 0xce040080, 0xce040080, 0xff808080, 348); 
TEST_RR_OP( 88 , umin8, 0x24008000, 0x24ff8e71, 0xff008000, 352); 
TEST_RR_OP( 89 , umin8, 0x80808080, 0x8090ff80, 0x80808095, 356); 
TEST_RR_OP( 90 , umin8, 0x80000000, 0xc3a30000, 0x80000034, 360); 
TEST_RR_OP( 91 , umin8, 0x804f8000, 0x804f8000, 0x8080ff00, 364); 
TEST_RR_OP( 92 , umin8, 0x5d800080, 0x5dea8480, 0xff8000ff, 368); 
TEST_RR_OP( 93 , umin8, 0x108000cb, 0x10f900cb, 0x7c80ffff, 372); 
TEST_RR_OP( 94 , umin8, 0x80000078, 0x80008080, 0xff7e0078, 376); 
TEST_RR_OP( 95 , umin8, 0x00008080, 0xff80ff80, 0x000080c4, 380); 
TEST_RR_OP( 96 , umin8, 0x806e0000, 0x806e007f, 0xff80a100, 384); 
TEST_RR_OP( 97 , umin8, 0x00800000, 0x00ffb380, 0x60800000, 388); 
TEST_RR_OP( 98 , umin8, 0x80000000, 0xff000000, 0x8000ac80, 392); 
TEST_RR_OP( 99 , umin8, 0xff000080, 0xff008080, 0xffcf0080, 396); 
TEST_RR_OP( 100 , umin8, 0x80003400, 0xff003400, 0x80ffff00, 400); 
TEST_RR_OP( 101 , umin8, 0x0000fd00, 0xffe3ff4a, 0x0000fd00, 404); 
TEST_RR_OP( 102 , umin8, 0xc8008045, 0xffff80ff, 0xc800ff45, 408); 
TEST_RR_OP( 103 , umin8, 0x0000ff00, 0x3ac8ff00, 0x0000ffff, 412); 
TEST_RR_OP( 104 , umin8, 0x000086c9, 0x0000ffc9, 0x008086ff, 416); 
TEST_RR_OP( 105 , umin8, 0x0000ee00, 0x0000ffe4, 0xffffee00, 420); 
TEST_RR_OP( 106 , umin8, 0x5200001e, 0x52000080, 0xff00801e, 424); 
TEST_RR_OP( 107 , umin8, 0x0000ffff, 0x00eeffff, 0x9900ffff, 428); 
TEST_RR_OP( 108 , umin8, 0x00008000, 0x00008000, 0xe500ff80, 432); 
TEST_RR_OP( 109 , umin8, 0x80768080, 0x80ff8080, 0xff769180, 436); 
TEST_RR_OP( 110 , umin8, 0x8080802b, 0x8080ffff, 0x98c3802b, 440); 
TEST_RR_OP( 111 , umin8, 0x00000080, 0x000000f7, 0x8080ff80, 444); 
TEST_RR_OP( 112 , umin8, 0x00008080, 0x0000ffff, 0x00808080, 448); 
TEST_RR_OP( 113 , umin8, 0x00388080, 0x0038808f, 0x0089ff80, 452); 
TEST_RR_OP( 114 , umin8, 0x00fd4700, 0x00fdff00, 0x80ff4700, 456); 
TEST_RR_OP( 115 , umin8, 0x005e804d, 0x005eff4d, 0xdfff80ff, 460); 
TEST_RR_OP( 116 , umin8, 0x00000000, 0x000000ff, 0xff80ff00, 464); 
TEST_RR_OP( 117 , umin8, 0x80000011, 0xb780ffb2, 0x80000011, 468); 
TEST_RR_OP( 118 , umin8, 0x00000080, 0x00ff9980, 0xbf0000a1, 472); 
TEST_RR_OP( 119 , umin8, 0x00002e3d, 0x00fe2eff, 0xff004e3d, 476); 
TEST_RR_OP( 120 , umin8, 0x8080ffc7, 0x80ffffff, 0x8080ffc7, 480); 
TEST_RR_OP( 121 , umin8, 0x00800084, 0x808000ff, 0x00ff0084, 484); 
TEST_RR_OP( 122 , umin8, 0x00808000, 0x00ff80e1, 0xff808000, 488); 
TEST_RR_OP( 123 , umin8, 0x00488080, 0x00488080, 0x3380ffbc, 492); 
TEST_RR_OP( 124 , umin8, 0x80880015, 0xa588a315, 0x80ff00ff, 496); 
TEST_RR_OP( 125 , umin8, 0x807200b1, 0xfffa00b1, 0x807280ff, 500); 
TEST_RR_OP( 126 , umin8, 0x2e006180, 0x2e006180, 0x8080ffff, 504); 
TEST_RR_OP( 127 , umin8, 0x80ff0009, 0x80ff00ff, 0x84ff0009, 508); 
TEST_RR_OP( 128 , umin8, 0x004b5b00, 0x00ff5bff, 0xff4b8000, 512); 
TEST_RR_OP( 129 , umin8, 0x80ff008f, 0xffff00ff, 0x80ff808f, 516); 
TEST_RR_OP( 130 , umin8, 0x00802e00, 0x00805000, 0xffe22e00, 520); 
TEST_RR_OP( 131 , umin8, 0x00000000, 0x00ff8000, 0x80000062, 524); 
TEST_RR_OP( 132 , umin8, 0x80000030, 0xff800080, 0x80008030, 528); 
TEST_RR_OP( 133 , umin8, 0x808f0000, 0xff8f6100, 0x809100ff, 532); 
TEST_RR_OP( 134 , umin8, 0x80008080, 0x8000ff80, 0xffff80ed, 536); 
TEST_RR_OP( 135 , umin8, 0x00ffd000, 0x00ffd000, 0xffffff80, 540); 
TEST_RR_OP( 136 , umin8, 0x51808000, 0x51808000, 0xfff2c434, 544); 
TEST_RR_OP( 137 , umin8, 0x80808080, 0x80978080, 0xff80ff80, 548); 
TEST_RR_OP( 138 , umin8, 0x00000000, 0x00000080, 0x38800000, 552); 
TEST_RR_OP( 139 , umin8, 0x80008080, 0xffffff80, 0x800080ff, 556); 
TEST_RR_OP( 140 , umin8, 0x8042d300, 0x804bfffc, 0x8042d300, 560); 
TEST_RR_OP( 141 , umin8, 0xff004100, 0xff804100, 0xff008000, 564); 
TEST_RR_OP( 142 , umin8, 0x00808080, 0x73808080, 0x0080ff80, 568); 
TEST_RR_OP( 143 , umin8, 0x003e00ff, 0xd27f00ff, 0x003effff, 572); 
TEST_RR_OP( 144 , umin8, 0x88008000, 0x88008000, 0xff00801a, 576); 
TEST_RR_OP( 145 , umin8, 0x1e0004e4, 0x1e0004ff, 0xff86cce4, 580); 
TEST_RR_OP( 146 , umin8, 0xff190080, 0xff1900ff, 0xffff9f80, 584); 
TEST_RR_OP( 147 , umin8, 0x00782180, 0x4b7821ff, 0x00ff8080, 588); 
TEST_RR_OP( 148 , umin8, 0xff000080, 0xff800080, 0xff008080, 592); 
TEST_RR_OP( 149 , umin8, 0x355c0080, 0x3580ffff, 0xff5c0080, 596); 
TEST_RR_OP( 150 , umin8, 0xff5f0000, 0xff5f2c00, 0xffff0011, 600); 
TEST_RR_OP( 151 , umin8, 0xe53fff80, 0xe580ff80, 0xf13fff80, 604); 
TEST_RR_OP( 152 , umin8, 0x55800000, 0x558023a7, 0xffff0000, 608); 
TEST_RR_OP( 153 , umin8, 0x80005b00, 0x8000ff00, 0x80ff5bff, 612); 
TEST_RR_OP( 154 , umin8, 0x80000080, 0xff0000c2, 0x80050080, 616); 
TEST_RR_OP( 155 , umin8, 0x00800000, 0x00fff900, 0xdb800080, 620); 
TEST_RR_OP( 156 , umin8, 0x00804600, 0x008080a3, 0x00cb4600, 624); 
TEST_RR_OP( 157 , umin8, 0x42000009, 0x80000080, 0x42008009, 628); 
TEST_RR_OP( 158 , umin8, 0x00800080, 0x80800080, 0x00ffffff, 632); 
TEST_RR_OP( 159 , umin8, 0x80000000, 0x8000ff00, 0xff800000, 636); 
TEST_RR_OP( 160 , umin8, 0x00808000, 0x00c38000, 0xe780ff0a, 640); 
TEST_RR_OP( 161 , umin8, 0x777c00b3, 0x778000b3, 0x807cffff, 644); 
TEST_RR_OP( 162 , umin8, 0x00ff0080, 0x80ff0080, 0x00ffbbfa, 648); 
TEST_RR_OP( 163 , umin8, 0x0080ff80, 0x8080ff80, 0x0080ff80, 652); 
TEST_RR_OP( 164 , umin8, 0x80ff8000, 0x80ffff00, 0xc1ff8000, 656); 
TEST_RR_OP( 165 , umin8, 0x80808000, 0x80808080, 0xff808000, 660); 
TEST_RR_OP( 166 , umin8, 0x00008055, 0x909a8080, 0x00008055, 664); 
TEST_RR_OP( 167 , umin8, 0x00801c00, 0xd180ff00, 0x00ff1cb4, 668); 
TEST_RR_OP( 168 , umin8, 0x80800000, 0xff80ff00, 0x80ff0080, 672); 
TEST_RR_OP( 169 , umin8, 0x000000a8, 0x00cc80a8, 0x800000ff, 676); 
TEST_RR_OP( 170 , umin8, 0x00500080, 0x80570080, 0x0050ff80, 680); 
TEST_RR_OP( 171 , umin8, 0x8080e3ff, 0x9380e3ff, 0x80a9f1ff, 684); 
TEST_RR_OP( 172 , umin8, 0x80000080, 0x80ff00ff, 0x80008080, 688); 
TEST_RR_OP( 173 , umin8, 0x59802177, 0xd7802180, 0x59ffff77, 692); 
TEST_RR_OP( 174 , umin8, 0x00cc0080, 0xffcc0080, 0x00ff80ff, 696); 
TEST_RR_OP( 175 , umin8, 0x4f800e80, 0x80ff0e8c, 0x4f808080, 700); 
TEST_RR_OP( 176 , umin8, 0x00800064, 0x00800064, 0xffffffff, 704); 
TEST_RR_OP( 177 , umin8, 0xd3006180, 0xffff6180, 0xd300ffab, 708); 
TEST_RR_OP( 178 , umin8, 0x80000000, 0x8080e100, 0x80000083, 712); 
TEST_RR_OP( 179 , umin8, 0x6680ff00, 0x8080ff00, 0x66ffff80, 716); 
TEST_RR_OP( 180 , umin8, 0x00000000, 0xd6b20080, 0x0000ff00, 720); 
TEST_RR_OP( 181 , umin8, 0xff8000ff, 0xff8000ff, 0xff8080ff, 724); 
TEST_RR_OP( 182 , umin8, 0x06808000, 0x0680ff00, 0x6aff8000, 728); 
TEST_RR_OP( 183 , umin8, 0x00800000, 0x00ff0080, 0x80808000, 732); 
TEST_RR_OP( 184 , umin8, 0x00440000, 0xff440000, 0x00ff0039, 736); 
TEST_RR_OP( 185 , umin8, 0x80002c4f, 0x80002c4f, 0xd300ffff, 740); 
TEST_RR_OP( 186 , umin8, 0x00807a80, 0x00807aff, 0x00808080, 744); 
TEST_RR_OP( 187 , umin8, 0x80800004, 0xff80ff90, 0x80ff0004, 748); 
TEST_RR_OP( 188 , umin8, 0x80690000, 0x80800000, 0x80690080, 752); 
TEST_RR_OP( 189 , umin8, 0x00009080, 0x0000ff80, 0x00bf9080, 756); 
TEST_RR_OP( 190 , umin8, 0x80008000, 0xcf008000, 0x80f180ff, 760); 
TEST_RR_OP( 191 , umin8, 0x000080ff, 0x0000ffff, 0xffff80ff, 764); 
TEST_RR_OP( 192 , umin8, 0x0000009a, 0x0000009a, 0xffff00e7, 768); 
TEST_RR_OP( 193 , umin8, 0x00800000, 0xff808000, 0x00ff0080, 772); 
TEST_RR_OP( 194 , umin8, 0x80ff806c, 0x80ffff6c, 0xffff80f4, 776); 
TEST_RR_OP( 195 , umin8, 0x1b000080, 0x1bff0080, 0x8000ffff, 780); 
TEST_RR_OP( 196 , umin8, 0x00804e00, 0x00804e00, 0x80e0aef8, 784); 
TEST_RR_OP( 197 , umin8, 0x78800080, 0xff808080, 0x78800080, 788); 
TEST_RR_OP( 198 , umin8, 0x00006c80, 0xffff80ff, 0x00006c80, 792); 
TEST_RR_OP( 199 , umin8, 0x83000080, 0xff00c180, 0x836500ff, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# add8.S
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

TEST_RR_OP( 2 , add8, 0x00fe057f, 0x00ff80ff, 0x00ff8580, 8); 
TEST_RR_OP( 3 , add8, 0x7fc6ff00, 0x80ffff80, 0xffc70080, 12); 
TEST_RR_OP( 4 , add8, 0x23ff907f, 0x24ff3aff, 0xff005680, 16); 
TEST_RR_OP( 5 , add8, 0x8006006f, 0x00b50070, 0x805100ff, 20); 
TEST_RR_OP( 6 , add8, 0xff8b4efe, 0xff0bfffe, 0x00804f00, 24); 
TEST_RR_OP( 7 , add8, 0x7f7fa780, 0xffff8080, 0x80802700, 28); 
TEST_RR_OP( 8 , add8, 0xfe6200ff, 0xffe28000, 0xff8080ff, 32); 
TEST_RR_OP( 9 , add8, 0x6b268d7f, 0xebda0d80, 0x804c80ff, 36); 
TEST_RR_OP( 10 , add8, 0x4fff7f00, 0x0000ff80, 0x4fff8080, 40); 
TEST_RR_OP( 11 , add8, 0x7fff3480, 0x00ffc580, 0x7f006f00, 44); 
TEST_RR_OP( 12 , add8, 0xfff67fcc, 0x008080a0, 0xff76ff2c, 48); 
TEST_RR_OP( 13 , add8, 0x7ffff6e0, 0x80ff003e, 0xff00f6a2, 52); 
TEST_RR_OP( 14 , add8, 0xff807f80, 0xff808000, 0x0000ff80, 56); 
TEST_RR_OP( 15 , add8, 0xa95ffe80, 0xffdfff00, 0xaa80ff80, 60); 
TEST_RR_OP( 16 , add8, 0x0c7fff00, 0x3cffff00, 0xd0800000, 64); 
TEST_RR_OP( 17 , add8, 0x80aefefe, 0x80aeffff, 0x0000ffff, 68); 
TEST_RR_OP( 18 , add8, 0xfeffff80, 0xff000000, 0xffffff80, 72); 
TEST_RR_OP( 19 , add8, 0x7cff0080, 0x00008000, 0x7cff8080, 76); 
TEST_RR_OP( 20 , add8, 0xfffeff7f, 0x00ff00ff, 0xffffff80, 80); 
TEST_RR_OP( 21 , add8, 0xc67fff80, 0x8080ff80, 0x46ff0000, 84); 
TEST_RR_OP( 22 , add8, 0x3fff7f7f, 0x4effff80, 0xf10080ff, 88); 
TEST_RR_OP( 23 , add8, 0xd302ff80, 0x00ffff00, 0xd3030080, 92); 
TEST_RR_OP( 24 , add8, 0xd642feff, 0x5680ffff, 0x80c2ff00, 96); 
TEST_RR_OP( 25 , add8, 0x00067421, 0x0086eb22, 0x008089ff, 100); 
TEST_RR_OP( 26 , add8, 0x7f2e7ffe, 0x808080ff, 0xffaeffff, 104); 
TEST_RR_OP( 27 , add8, 0x8000ff44, 0x80800080, 0x0080ffc4, 108); 
TEST_RR_OP( 28 , add8, 0x0fb46f80, 0x0fb57080, 0x00ffff00, 112); 
TEST_RR_OP( 29 , add8, 0x807ed47f, 0x80fefeff, 0x0080d680, 116); 
TEST_RR_OP( 30 , add8, 0xb54a6ed0, 0x804b6ed0, 0x35ff0000, 120); 
TEST_RR_OP( 31 , add8, 0xd780a9ff, 0x000000ff, 0xd780a900, 124); 
TEST_RR_OP( 32 , add8, 0x8000002c, 0x00000000, 0x8000002c, 128); 
TEST_RR_OP( 33 , add8, 0xadc8d28c, 0x00ffff8d, 0xadc9d3ff, 132); 
TEST_RR_OP( 34 , add8, 0x7fff80ff, 0x800080ff, 0xffff0000, 136); 
TEST_RR_OP( 35 , add8, 0x1b00fe00, 0x8080ff00, 0x9b80ff00, 140); 
TEST_RR_OP( 36 , add8, 0xffd45a2e, 0x00d55b2e, 0xffffff00, 144); 
TEST_RR_OP( 37 , add8, 0xff800000, 0xff800080, 0x00000080, 148); 
TEST_RR_OP( 38 , add8, 0x217f7f7f, 0x00808080, 0x21ffffff, 152); 
TEST_RR_OP( 39 , add8, 0x89009f89, 0x8000a089, 0x0900ff00, 156); 
TEST_RR_OP( 40 , add8, 0x2e17ff94, 0xaeffff14, 0x80180080, 160); 
TEST_RR_OP( 41 , add8, 0xefd1ff3e, 0xffff00ff, 0xf0d2ff3f, 164); 
TEST_RR_OP( 42 , add8, 0x007f2600, 0x80ff8080, 0x8080a680, 168); 
TEST_RR_OP( 43 , add8, 0xff00c5ff, 0x00804500, 0xff8080ff, 172); 
TEST_RR_OP( 44 , add8, 0x0ca397ff, 0x002398ff, 0x0c80ff00, 176); 
TEST_RR_OP( 45 , add8, 0x68fe0000, 0x68ff0000, 0x00ff0000, 180); 
TEST_RR_OP( 46 , add8, 0x80ff10ff, 0x00ff8000, 0x800090ff, 184); 
TEST_RR_OP( 47 , add8, 0x803900c4, 0x00ff0091, 0x803a0033, 188); 
TEST_RR_OP( 48 , add8, 0x7fff0092, 0x80ff80ff, 0xff008093, 192); 
TEST_RR_OP( 49 , add8, 0x80a5c02a, 0x00a50080, 0x8000c0aa, 196); 
TEST_RR_OP( 50 , add8, 0x7f00f12d, 0xff80f11e, 0x8080000f, 200); 
TEST_RR_OP( 51 , add8, 0xa141ff80, 0xa2420000, 0xffffff80, 204); 
TEST_RR_OP( 52 , add8, 0xfeff5680, 0xffffd600, 0xff008080, 208); 
TEST_RR_OP( 53 , add8, 0x7f00fa42, 0x8080fbc2, 0xff80ff80, 212); 
TEST_RR_OP( 54 , add8, 0x1a13d5fe, 0xc1e7ffff, 0x592cd6ff, 216); 
TEST_RR_OP( 55 , add8, 0xde00d8ff, 0x808080ff, 0x5e805800, 220); 
TEST_RR_OP( 56 , add8, 0x8080817f, 0x80007b80, 0x008006ff, 224); 
TEST_RR_OP( 57 , add8, 0xc200ebdb, 0x4d00eb5b, 0x75000080, 228); 
TEST_RR_OP( 58 , add8, 0xe480fea2, 0xb300ff00, 0x3180ffa2, 232); 
TEST_RR_OP( 59 , add8, 0xa7322726, 0xa7ff0000, 0x00332726, 236); 
TEST_RR_OP( 60 , add8, 0x417f8b3f, 0x8080003b, 0xc1ff8b04, 240); 
TEST_RR_OP( 61 , add8, 0xfffbff80, 0xff7bff00, 0x00800080, 244); 
TEST_RR_OP( 62 , add8, 0x80ff802e, 0x800080ff, 0x00ff002f, 248); 
TEST_RR_OP( 63 , add8, 0x96fe8080, 0x80ff8000, 0x16ff0080, 252); 
TEST_RR_OP( 64 , add8, 0x800080c3, 0x008000ff, 0x808080c4, 256); 
TEST_RR_OP( 65 , add8, 0x7f7f7ffe, 0x80ff80ff, 0xff80ffff, 260); 
TEST_RR_OP( 66 , add8, 0x00cc7380, 0x0025f300, 0x00a78080, 264); 
TEST_RR_OP( 67 , add8, 0xffc90080, 0x00c98080, 0xff008000, 268); 
TEST_RR_OP( 68 , add8, 0x7fff80e2, 0xff000062, 0x80ff8080, 272); 
TEST_RR_OP( 69 , add8, 0xa93e0080, 0xff3e8080, 0xaa008000, 276); 
TEST_RR_OP( 70 , add8, 0xa57f0000, 0x00800080, 0xa5ff0080, 280); 
TEST_RR_OP( 71 , add8, 0x00048055, 0x808400ff, 0x80808056, 284); 
TEST_RR_OP( 72 , add8, 0x660e7180, 0xff0fff00, 0x67ff7280, 288); 
TEST_RR_OP( 73 , add8, 0xfefffe7f, 0xff00ffff, 0xffffff80, 292); 
TEST_RR_OP( 74 , add8, 0xff7f6043, 0x008061c3, 0xffffff80, 296); 
TEST_RR_OP( 75 , add8, 0x7f2ad97f, 0x80ffd9ff, 0xff2b0080, 300); 
TEST_RR_OP( 76 , add8, 0x0d00c0c2, 0x8080c0c2, 0x8d800000, 304); 
TEST_RR_OP( 77 , add8, 0xce00ff7f, 0x45800080, 0x8980ffff, 308); 
TEST_RR_OP( 78 , add8, 0x7cc6ff00, 0x80ff0000, 0xfcc7ff00, 312); 
TEST_RR_OP( 79 , add8, 0x00feffff, 0x00ffff00, 0x00ff00ff, 316); 
TEST_RR_OP( 80 , add8, 0xffe80052, 0x00e88053, 0xff0080ff, 320); 
TEST_RR_OP( 81 , add8, 0x49ffc07f, 0x3600c080, 0x13ff00ff, 324); 
TEST_RR_OP( 82 , add8, 0x13808000, 0x13808000, 0x00000000, 328); 
TEST_RR_OP( 83 , add8, 0x7fff7f5c, 0xff008000, 0x80ffff5c, 332); 
TEST_RR_OP( 84 , add8, 0x7f1377bf, 0xff8078bf, 0x8093ff00, 336); 
TEST_RR_OP( 85 , add8, 0x7f5630aa, 0xff57ffff, 0x80ff31ab, 340); 
TEST_RR_OP( 86 , add8, 0xfe1901d5, 0xff0002d6, 0xff19ffff, 344); 
TEST_RR_OP( 87 , add8, 0x007f00fe, 0x808080ff, 0x80ff80ff, 348); 
TEST_RR_OP( 88 , add8, 0x7fa27fff, 0xfffbff00, 0x80a780ff, 352); 
TEST_RR_OP( 89 , add8, 0x609dfe98, 0x6080ff99, 0x001dffff, 356); 
TEST_RR_OP( 90 , add8, 0x26c700ac, 0x00ff0080, 0x26c8002c, 360); 
TEST_RR_OP( 91 , add8, 0x80cf8017, 0x80d08080, 0x00ff0097, 364); 
TEST_RR_OP( 92 , add8, 0xff807fff, 0x0080ffff, 0xff008000, 368); 
TEST_RR_OP( 93 , add8, 0x7f80f2ff, 0xff0055ff, 0x80809d00, 372); 
TEST_RR_OP( 94 , add8, 0x00f3f9fe, 0x0080faff, 0x0073ffff, 376); 
TEST_RR_OP( 95 , add8, 0x9e000003, 0x16000004, 0x880000ff, 380); 
TEST_RR_OP( 96 , add8, 0xffd36000, 0x0080ff80, 0xff536180, 384); 
TEST_RR_OP( 97 , add8, 0x8000ff4f, 0x80800000, 0x0080ff4f, 388); 
TEST_RR_OP( 98 , add8, 0xb680ffff, 0xb68000ff, 0x0000ff00, 392); 
TEST_RR_OP( 99 , add8, 0xff03da7f, 0xff03dbff, 0x0000ff80, 396); 
TEST_RR_OP( 100 , add8, 0x12928097, 0x13808017, 0xff120080, 400); 
TEST_RR_OP( 101 , add8, 0x7f327f00, 0x80b28000, 0xff80ff00, 404); 
TEST_RR_OP( 102 , add8, 0x00dc0024, 0x00dd0024, 0x00ff0000, 408); 
TEST_RR_OP( 103 , add8, 0x777f7fef, 0x77808080, 0x00ffff6f, 412); 
TEST_RR_OP( 104 , add8, 0xd2ff7a80, 0x5200ff80, 0x80ff7b00, 416); 
TEST_RR_OP( 105 , add8, 0x187f7f36, 0x00808c36, 0x18fff300, 420); 
TEST_RR_OP( 106 , add8, 0xa34e190b, 0xa34f19ff, 0x00ff000c, 424); 
TEST_RR_OP( 107 , add8, 0xfe00dcd2, 0xff002652, 0xff00b680, 428); 
TEST_RR_OP( 108 , add8, 0x0053005b, 0x005400e0, 0x00ff007b, 432); 
TEST_RR_OP( 109 , add8, 0xff00ffa1, 0x00000066, 0xff00ff3b, 436); 
TEST_RR_OP( 110 , add8, 0x03ff807f, 0x03ff80ff, 0x00000080, 440); 
TEST_RR_OP( 111 , add8, 0x00808000, 0x80800080, 0x80008080, 444); 
TEST_RR_OP( 112 , add8, 0x4c9d7f80, 0x4dffff00, 0xff9e8080, 448); 
TEST_RR_OP( 113 , add8, 0xfefe00b1, 0xffff80b1, 0xffff8000, 452); 
TEST_RR_OP( 114 , add8, 0x3ad30080, 0xbad48000, 0x80ff8080, 456); 
TEST_RR_OP( 115 , add8, 0xff218422, 0x00a126a2, 0xff805e80, 460); 
TEST_RR_OP( 116 , add8, 0x537f807f, 0xd3ff00ff, 0x80808080, 464); 
TEST_RR_OP( 117 , add8, 0x008020fe, 0x808020ff, 0x800000ff, 468); 
TEST_RR_OP( 118 , add8, 0x514aff84, 0x8000ffff, 0xd14a0085, 472); 
TEST_RR_OP( 119 , add8, 0xfefe6880, 0xff7e6900, 0xff80ff80, 476); 
TEST_RR_OP( 120 , add8, 0xffb796de, 0x0080975e, 0xff37ff80, 480); 
TEST_RR_OP( 121 , add8, 0x588bff7f, 0xff800080, 0x590bffff, 484); 
TEST_RR_OP( 122 , add8, 0x00dc497f, 0x805c0080, 0x808049ff, 488); 
TEST_RR_OP( 123 , add8, 0x447f00de, 0x898000bf, 0xbbff001f, 492); 
TEST_RR_OP( 124 , add8, 0x1467aa80, 0x941dab80, 0x804aff00, 496); 
TEST_RR_OP( 125 , add8, 0x80ff7f11, 0xff008091, 0x81ffff80, 500); 
TEST_RR_OP( 126 , add8, 0x6c009f00, 0x80800080, 0xec809f80, 504); 
TEST_RR_OP( 127 , add8, 0x00800b7f, 0x80000b80, 0x808000ff, 508); 
TEST_RR_OP( 128 , add8, 0xffa40080, 0x00a50080, 0xffff0000, 512); 
TEST_RR_OP( 129 , add8, 0x96807f00, 0x1680ff80, 0x80008080, 516); 
TEST_RR_OP( 130 , add8, 0x00957dff, 0x80967eff, 0x80ffff00, 520); 
TEST_RR_OP( 131 , add8, 0x7fff7f74, 0x8000ff74, 0xffff8000, 524); 
TEST_RR_OP( 132 , add8, 0x65defe80, 0x66dfff80, 0xffffff00, 528); 
TEST_RR_OP( 133 , add8, 0xff3300ea, 0x00000080, 0xff33006a, 532); 
TEST_RR_OP( 134 , add8, 0xffff80ff, 0x00ff0000, 0xff0080ff, 536); 
TEST_RR_OP( 135 , add8, 0x002b2fdc, 0x002b30dc, 0x0000ff00, 540); 
TEST_RR_OP( 136 , add8, 0xff927f80, 0x0092ff80, 0xff008000, 544); 
TEST_RR_OP( 137 , add8, 0xc14b3d37, 0x054c3e37, 0xbcffff00, 548); 
TEST_RR_OP( 138 , add8, 0x00809fff, 0x8000a000, 0x8080ffff, 552); 
TEST_RR_OP( 139 , add8, 0x004e697f, 0x80ce8080, 0x8080e9ff, 556); 
TEST_RR_OP( 140 , add8, 0x3280c07f, 0x338080ff, 0xff004080, 560); 
TEST_RR_OP( 141 , add8, 0x0000fe3d, 0x0080ff3e, 0x0080ffff, 564); 
TEST_RR_OP( 142 , add8, 0x43ffff00, 0xff000080, 0x44ffff80, 568); 
TEST_RR_OP( 143 , add8, 0x7f00467f, 0x800047ff, 0xff00ff80, 572); 
TEST_RR_OP( 144 , add8, 0xfffeff7f, 0x00ff0080, 0xffffffff, 576); 
TEST_RR_OP( 145 , add8, 0x7fd70080, 0x80ff8080, 0xffd88000, 580); 
TEST_RR_OP( 146 , add8, 0x009eff7f, 0x80ff00ff, 0x809fff80, 584); 
TEST_RR_OP( 147 , add8, 0x7fff00df, 0x80ff805f, 0xff008080, 588); 
TEST_RR_OP( 148 , add8, 0x00a5bd80, 0x8080be00, 0x8025ff80, 592); 
TEST_RR_OP( 149 , add8, 0x807fffff, 0x8080ff00, 0x00ff00ff, 596); 
TEST_RR_OP( 150 , add8, 0x27802800, 0xa7003880, 0x8080f080, 600); 
TEST_RR_OP( 151 , add8, 0x7f805200, 0x8080d300, 0xff007f00, 604); 
TEST_RR_OP( 152 , add8, 0x817f7f20, 0xffffff21, 0x828080ff, 608); 
TEST_RR_OP( 153 , add8, 0x7fffad59, 0x80ffadd9, 0xff000080, 612); 
TEST_RR_OP( 154 , add8, 0xfb6a627f, 0xa2ff6380, 0x596bffff, 616); 
TEST_RR_OP( 155 , add8, 0x00ffff80, 0x00ff0000, 0x0000ff80, 620); 
TEST_RR_OP( 156 , add8, 0x8d8080b5, 0x00800080, 0x8d008035, 624); 
TEST_RR_OP( 157 , add8, 0x9b3c1500, 0x1b801500, 0x80bc0000, 628); 
TEST_RR_OP( 158 , add8, 0x4c757ff4, 0xfc008074, 0x5075ff80, 632); 
TEST_RR_OP( 159 , add8, 0x7f7f00ff, 0xff800000, 0x80ff00ff, 636); 
TEST_RR_OP( 160 , add8, 0x7f59ff90, 0x80590000, 0xff00ff90, 640); 
TEST_RR_OP( 161 , add8, 0xc07180ff, 0xc18000ff, 0xfff18000, 644); 
TEST_RR_OP( 162 , add8, 0x4e62bdff, 0x4fe200ff, 0xff80bd00, 648); 
TEST_RR_OP( 163 , add8, 0x7f4fe200, 0x80808000, 0xffcf6200, 652); 
TEST_RR_OP( 164 , add8, 0x00dfffff, 0x00ff0000, 0x00e0ffff, 656); 
TEST_RR_OP( 165 , add8, 0x8b0045ff, 0xff00c5ff, 0x8c008000, 660); 
TEST_RR_OP( 166 , add8, 0x00c2fee6, 0x8042ff80, 0x8080ff66, 664); 
TEST_RR_OP( 167 , add8, 0x5afe2280, 0xffff2280, 0x5bff0000, 668); 
TEST_RR_OP( 168 , add8, 0xffff067f, 0xffff8080, 0x000086ff, 672); 
TEST_RR_OP( 169 , add8, 0x26646479, 0x21ff6477, 0x05650002, 676); 
TEST_RR_OP( 170 , add8, 0xa7343dfe, 0xff353dff, 0xa8ff00ff, 680); 
TEST_RR_OP( 171 , add8, 0xc5ff0000, 0xc5008080, 0x00ff8080, 684); 
TEST_RR_OP( 172 , add8, 0x80f70012, 0x80ff0012, 0x00f80000, 688); 
TEST_RR_OP( 173 , add8, 0xb480ffed, 0xb480ffee, 0x000000ff, 692); 
TEST_RR_OP( 174 , add8, 0x80dd84ff, 0x00deff00, 0x80ff85ff, 696); 
TEST_RR_OP( 175 , add8, 0xfe097f14, 0xff098000, 0xff00ff14, 700); 
TEST_RR_OP( 176 , add8, 0x80fea17f, 0x80ff21ff, 0x00ff8080, 704); 
TEST_RR_OP( 177 , add8, 0xff178078, 0xff180046, 0x00ff8032, 708); 
TEST_RR_OP( 178 , add8, 0xfe7f8b7f, 0xff800bff, 0xffff8080, 712); 
TEST_RR_OP( 179 , add8, 0x7f008c3c, 0xff808c80, 0x808000bc, 716); 
TEST_RR_OP( 180 , add8, 0xdd39c47f, 0xffb9c5ff, 0xde80ff80, 720); 
TEST_RR_OP( 181 , add8, 0xfe7f58a2, 0xffff00b1, 0xff8058f1, 724); 
TEST_RR_OP( 182 , add8, 0xf480b551, 0x8080c5ff, 0x7400f052, 728); 
TEST_RR_OP( 183 , add8, 0xa16cff7f, 0xa1c4ffff, 0x00a80080, 732); 
TEST_RR_OP( 184 , add8, 0x80fe7fc4, 0x80ff80c5, 0x00ffffff, 736); 
TEST_RR_OP( 185 , add8, 0xe83c8080, 0x00170000, 0xe8258080, 740); 
TEST_RR_OP( 186 , add8, 0x27ff8000, 0xffff8000, 0x28000000, 744); 
TEST_RR_OP( 187 , add8, 0xfffeff7f, 0xffffffff, 0x00ff0080, 748); 
TEST_RR_OP( 188 , add8, 0x6b1fcb28, 0x801fffc5, 0xeb00cc63, 752); 
TEST_RR_OP( 189 , add8, 0x34ff7f00, 0x34ff8000, 0x0000ff00, 756); 
TEST_RR_OP( 190 , add8, 0xff588000, 0xff598080, 0x00ff0080, 760); 
TEST_RR_OP( 191 , add8, 0x00957f7f, 0x80ffff80, 0x809680ff, 764); 
TEST_RR_OP( 192 , add8, 0xff007c63, 0xff807c80, 0x008000e3, 768); 
TEST_RR_OP( 193 , add8, 0x7f7fff08, 0x80ff00ff, 0xff80ff09, 772); 
TEST_RR_OP( 194 , add8, 0x19b2ff8f, 0x00ffffff, 0x19b30090, 776); 
TEST_RR_OP( 195 , add8, 0xfe7f004c, 0xff808000, 0xffff804c, 780); 
TEST_RR_OP( 196 , add8, 0xff00c17f, 0x0000ffff, 0xff00c280, 784); 
TEST_RR_OP( 197 , add8, 0x00793c80, 0x80f98080, 0x8080bc00, 788); 
TEST_RR_OP( 198 , add8, 0x7f000064, 0xff8080a3, 0x808080c1, 792); 
TEST_RR_OP( 199 , add8, 0x007fffe7, 0x80800067, 0x80ffff80, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# umax8.S
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

TEST_RR_OP( 2 , umax8, 0xb8ff1cbc, 0x80ff1cbc, 0xb8000050, 8); 
TEST_RR_OP( 3 , umax8, 0x80b780ff, 0x80b70000, 0x000080ff, 12); 
TEST_RR_OP( 4 , umax8, 0x8080cd11, 0x0000cd00, 0x80808011, 16); 
TEST_RR_OP( 5 , umax8, 0x80ffffff, 0x80000e51, 0x80ffffff, 20); 
TEST_RR_OP( 6 , umax8, 0xffde8016, 0x84de8000, 0xff808016, 24); 
TEST_RR_OP( 7 , umax8, 0x968080c2, 0x96808000, 0x000080c2, 28); 
TEST_RR_OP( 8 , umax8, 0x00ffe54f, 0x00ffa74f, 0x0080e500, 32); 
TEST_RR_OP( 9 , umax8, 0xff0080ff, 0xff0080ff, 0x40003734, 36); 
TEST_RR_OP( 10 , umax8, 0xab80ff80, 0xab80ff80, 0x80808080, 40); 
TEST_RR_OP( 11 , umax8, 0xffff80ff, 0xff0080ff, 0xffff8080, 44); 
TEST_RR_OP( 12 , umax8, 0x3b80ffff, 0x3b00ffff, 0x0080bcf4, 48); 
TEST_RR_OP( 13 , umax8, 0xff80ff05, 0xff80ff00, 0x00400005, 52); 
TEST_RR_OP( 14 , umax8, 0xffff80ff, 0xc6ff80ff, 0xff988000, 56); 
TEST_RR_OP( 15 , umax8, 0xffffffd6, 0xffffff80, 0x008080d6, 60); 
TEST_RR_OP( 16 , umax8, 0x80ff8280, 0x0aff8280, 0x80008000, 64); 
TEST_RR_OP( 17 , umax8, 0xffff9aff, 0xff809aff, 0x80ff0000, 68); 
TEST_RR_OP( 18 , umax8, 0xff80ff80, 0xff00e100, 0xff80ff80, 72); 
TEST_RR_OP( 19 , umax8, 0x80ff8091, 0x80ff0091, 0x80008080, 76); 
TEST_RR_OP( 20 , umax8, 0xff800080, 0xff000000, 0xff800080, 80); 
TEST_RR_OP( 21 , umax8, 0xff00ff80, 0xff00ff80, 0x1200ff52, 84); 
TEST_RR_OP( 22 , umax8, 0xb98080d5, 0x80800000, 0xb98080d5, 88); 
TEST_RR_OP( 23 , umax8, 0xffd68000, 0xff808000, 0x00d68000, 92); 
TEST_RR_OP( 24 , umax8, 0xffffff80, 0x801fff80, 0xffff8000, 96); 
TEST_RR_OP( 25 , umax8, 0x00c1fff1, 0x00c1ffa7, 0x000000f1, 100); 
TEST_RR_OP( 26 , umax8, 0x03ffffff, 0x0280ffff, 0x03ff80dd, 104); 
TEST_RR_OP( 27 , umax8, 0xff00af00, 0xff008000, 0xee00af00, 108); 
TEST_RR_OP( 28 , umax8, 0x80ffffe1, 0x6000ffe1, 0x80ff6c75, 112); 
TEST_RR_OP( 29 , umax8, 0xff6c25ff, 0x0e0025ff, 0xff6c0000, 116); 
TEST_RR_OP( 30 , umax8, 0x57ffffff, 0x57ffffff, 0x00954080, 120); 
TEST_RR_OP( 31 , umax8, 0x80ffe0d3, 0x808080d3, 0x00ffe030, 124); 
TEST_RR_OP( 32 , umax8, 0xff6980ff, 0xff6980ff, 0xff000078, 128); 
TEST_RR_OP( 33 , umax8, 0x00ff8080, 0x00ff8080, 0x00808000, 132); 
TEST_RR_OP( 34 , umax8, 0xffffbc8a, 0xffff808a, 0x0080bc00, 136); 
TEST_RR_OP( 35 , umax8, 0xffffff80, 0x80ff0000, 0xff11ff80, 140); 
TEST_RR_OP( 36 , umax8, 0xffffff80, 0x80ffff00, 0xfff67a80, 144); 
TEST_RR_OP( 37 , umax8, 0xff80b903, 0x8f00b900, 0xff808003, 148); 
TEST_RR_OP( 38 , umax8, 0xebff80ff, 0x9f6680ff, 0xebff8000, 152); 
TEST_RR_OP( 39 , umax8, 0x80ffb3ff, 0x80008000, 0x80ffb3ff, 156); 
TEST_RR_OP( 40 , umax8, 0xff80ffff, 0xff8000ff, 0x0078ffff, 160); 
TEST_RR_OP( 41 , umax8, 0x8097ffff, 0x8097ffff, 0x0000ffff, 164); 
TEST_RR_OP( 42 , umax8, 0xffffffff, 0xffffffff, 0x8080ff00, 168); 
TEST_RR_OP( 43 , umax8, 0xff8021ff, 0x800000ff, 0xff802180, 172); 
TEST_RR_OP( 44 , umax8, 0xffabbe80, 0xffabbe80, 0xb6809d00, 176); 
TEST_RR_OP( 45 , umax8, 0x00b28080, 0x00800071, 0x00b28080, 180); 
TEST_RR_OP( 46 , umax8, 0xf3ff80ff, 0xf3ff80ff, 0x00ff0000, 184); 
TEST_RR_OP( 47 , umax8, 0xff006ece, 0x00001bce, 0xff006e00, 188); 
TEST_RR_OP( 48 , umax8, 0xff8080ff, 0xff800000, 0x000080ff, 192); 
TEST_RR_OP( 49 , umax8, 0x98ffff80, 0x80ffff80, 0x98840000, 196); 
TEST_RR_OP( 50 , umax8, 0xffffffff, 0xc800ffff, 0xffff00ae, 200); 
TEST_RR_OP( 51 , umax8, 0x80ff13ff, 0x80ff1345, 0x000000ff, 204); 
TEST_RR_OP( 52 , umax8, 0xff2e8023, 0xff2e0023, 0xff008000, 208); 
TEST_RR_OP( 53 , umax8, 0x8062ffff, 0x2f0080ff, 0x8062ff80, 212); 
TEST_RR_OP( 54 , umax8, 0x8080ffff, 0x0080ff08, 0x80009aff, 216); 
TEST_RR_OP( 55 , umax8, 0xffb580ff, 0xff008080, 0x80b500ff, 220); 
TEST_RR_OP( 56 , umax8, 0xefa2ffff, 0xef80ff00, 0x00a200ff, 224); 
TEST_RR_OP( 57 , umax8, 0xff93ff80, 0x0093ff80, 0xff008080, 228); 
TEST_RR_OP( 58 , umax8, 0x8080ffff, 0x6700ffff, 0x8080ff00, 232); 
TEST_RR_OP( 59 , umax8, 0x00ffff80, 0x00ff8080, 0x0080ff80, 236); 
TEST_RR_OP( 60 , umax8, 0x8380ffa7, 0x0080ffa7, 0x83008000, 240); 
TEST_RR_OP( 61 , umax8, 0xff8000ff, 0xff800080, 0x000000ff, 244); 
TEST_RR_OP( 62 , umax8, 0xe280ff80, 0x8080ff80, 0xe2808753, 248); 
TEST_RR_OP( 63 , umax8, 0x80ff2b80, 0x00ff0000, 0x80ff2b80, 252); 
TEST_RR_OP( 64 , umax8, 0xff800080, 0xff800080, 0xff220073, 256); 
TEST_RR_OP( 65 , umax8, 0x00808080, 0x00008080, 0x00804600, 260); 
TEST_RR_OP( 66 , umax8, 0xffff8080, 0x30ff8000, 0xff807c80, 264); 
TEST_RR_OP( 67 , umax8, 0x80ff80ff, 0x80ff0dff, 0x80808080, 268); 
TEST_RR_OP( 68 , umax8, 0xf680a980, 0xec000880, 0xf680a980, 272); 
TEST_RR_OP( 69 , umax8, 0x8080ff00, 0x80807e00, 0x0000ff00, 276); 
TEST_RR_OP( 70 , umax8, 0x80c88080, 0x80c85d0f, 0x00808080, 280); 
TEST_RR_OP( 71 , umax8, 0xffff8080, 0xffff8000, 0x00808080, 284); 
TEST_RR_OP( 72 , umax8, 0xff00d5ff, 0xff0000ff, 0xff00d580, 288); 
TEST_RR_OP( 73 , umax8, 0x44ff80ff, 0x00ff80ff, 0x445f0080, 292); 
TEST_RR_OP( 74 , umax8, 0x80fff2ff, 0x80fff2ff, 0x80ff8c3d, 296); 
TEST_RR_OP( 75 , umax8, 0x80e180ff, 0x800000ff, 0x00e18000, 300); 
TEST_RR_OP( 76 , umax8, 0xffffff1b, 0xffff801b, 0xff0fff00, 304); 
TEST_RR_OP( 77 , umax8, 0xff8080ff, 0x00808075, 0xff804aff, 308); 
TEST_RR_OP( 78 , umax8, 0xd593fff9, 0xd5930080, 0xca80fff9, 312); 
TEST_RR_OP( 79 , umax8, 0x80ff8080, 0x00ff0080, 0x80008080, 316); 
TEST_RR_OP( 80 , umax8, 0x805c80ff, 0x805c80ff, 0x00000080, 320); 
TEST_RR_OP( 81 , umax8, 0x8085ff80, 0x0085ff80, 0x807bff00, 324); 
TEST_RR_OP( 82 , umax8, 0x2dabff80, 0x0000ff80, 0x2dab8000, 328); 
TEST_RR_OP( 83 , umax8, 0x9fffa200, 0x9fff8000, 0x0080a200, 332); 
TEST_RR_OP( 84 , umax8, 0xff80ffff, 0xff808000, 0xff80ffff, 336); 
TEST_RR_OP( 85 , umax8, 0x838cffff, 0x008c00ff, 0x8300ff07, 340); 
TEST_RR_OP( 86 , umax8, 0x00808030, 0x00808000, 0x007d0030, 344); 
TEST_RR_OP( 87 , umax8, 0x00ff1dfd, 0x000000fd, 0x00ff1d80, 348); 
TEST_RR_OP( 88 , umax8, 0x808d8080, 0x008d8000, 0x80000080, 352); 
TEST_RR_OP( 89 , umax8, 0x80a3ff80, 0x80a38080, 0x1980ff00, 356); 
TEST_RR_OP( 90 , umax8, 0xbf80b300, 0xbf6a6900, 0x0080b300, 360); 
TEST_RR_OP( 91 , umax8, 0x0080feff, 0x0000fe00, 0x008080ff, 364); 
TEST_RR_OP( 92 , umax8, 0xffffdeff, 0x00ff8080, 0xff49deff, 368); 
TEST_RR_OP( 93 , umax8, 0x80f78000, 0x80f70000, 0x80008000, 372); 
TEST_RR_OP( 94 , umax8, 0x809f8080, 0x20008000, 0x809f8080, 376); 
TEST_RR_OP( 95 , umax8, 0xffff9d00, 0xff000000, 0xffff9d00, 380); 
TEST_RR_OP( 96 , umax8, 0xff80ff80, 0xff00ff80, 0x34801800, 384); 
TEST_RR_OP( 97 , umax8, 0xff80ffff, 0xaa80ff80, 0xff80ffff, 388); 
TEST_RR_OP( 98 , umax8, 0xffffbbff, 0xffffbb00, 0x804544ff, 392); 
TEST_RR_OP( 99 , umax8, 0xd385ff6c, 0xd385ff02, 0xaa80ff6c, 396); 
TEST_RR_OP( 100 , umax8, 0xff8080ff, 0xff5580ff, 0x00803780, 400); 
TEST_RR_OP( 101 , umax8, 0x80fffffe, 0x00fffffe, 0x8080ffdc, 404); 
TEST_RR_OP( 102 , umax8, 0x7f80ffff, 0x000e8000, 0x7f80ffff, 408); 
TEST_RR_OP( 103 , umax8, 0x80800080, 0x80000000, 0x80800080, 412); 
TEST_RR_OP( 104 , umax8, 0xc6ffffff, 0x00ffffe3, 0xc605ffff, 416); 
TEST_RR_OP( 105 , umax8, 0x00fcf2ff, 0x0080aaff, 0x00fcf2ff, 420); 
TEST_RR_OP( 106 , umax8, 0xff80ffff, 0xff6cff80, 0xff8080ff, 424); 
TEST_RR_OP( 107 , umax8, 0x802a7380, 0x00006b00, 0x802a7380, 428); 
TEST_RR_OP( 108 , umax8, 0x80808080, 0x0d800071, 0x80008080, 432); 
TEST_RR_OP( 109 , umax8, 0x809c8080, 0x1c008080, 0x809c0080, 436); 
TEST_RR_OP( 110 , umax8, 0xffffff5b, 0x80ffff00, 0xff80595b, 440); 
TEST_RR_OP( 111 , umax8, 0x8080ffff, 0x808000ff, 0x0080ff80, 444); 
TEST_RR_OP( 112 , umax8, 0x00bd3f80, 0x00bd0000, 0x00003f80, 448); 
TEST_RR_OP( 113 , umax8, 0xffff80ff, 0xff4e805b, 0x80ff80ff, 452); 
TEST_RR_OP( 114 , umax8, 0x8026ffff, 0x8026ff00, 0x000080ff, 456); 
TEST_RR_OP( 115 , umax8, 0xffff80ff, 0x80ff8000, 0xff0000ff, 460); 
TEST_RR_OP( 116 , umax8, 0xffffffff, 0xffff0000, 0xff06ffff, 464); 
TEST_RR_OP( 117 , umax8, 0x7b8016a4, 0x7b8000a4, 0x00001680, 468); 
TEST_RR_OP( 118 , umax8, 0xffdfe580, 0x80dfe500, 0xff528080, 472); 
TEST_RR_OP( 119 , umax8, 0x8080ccff, 0x0080cc80, 0x800000ff, 476); 
TEST_RR_OP( 120 , umax8, 0x008080ff, 0x00000045, 0x008080ff, 480); 
TEST_RR_OP( 121 , umax8, 0xffff80ff, 0x80ff8000, 0xff8080ff, 484); 
TEST_RR_OP( 122 , umax8, 0xff80ff80, 0x9f80ff80, 0xff00ff4c, 488); 
TEST_RR_OP( 123 , umax8, 0xffffff00, 0x00800b00, 0xffffff00, 492); 
TEST_RR_OP( 124 , umax8, 0x8080ff80, 0x0080ff7f, 0x8000ff80, 496); 
TEST_RR_OP( 125 , umax8, 0x4effff00, 0x4effff00, 0x00ffd200, 500); 
TEST_RR_OP( 126 , umax8, 0x80ffffff, 0x80008000, 0x55ffffff, 504); 
TEST_RR_OP( 127 , umax8, 0x80a08080, 0x48a08000, 0x80378080, 508); 
TEST_RR_OP( 128 , umax8, 0x494e80ff, 0x00005700, 0x494e80ff, 512); 
TEST_RR_OP( 129 , umax8, 0x808080ff, 0x800080ff, 0x808080ff, 516); 
TEST_RR_OP( 130 , umax8, 0xffff80e8, 0x70ff0080, 0xff8080e8, 520); 
TEST_RR_OP( 131 , umax8, 0x80a5ffff, 0x80a5ff80, 0x8080ffff, 524); 
TEST_RR_OP( 132 , umax8, 0xc7b780ff, 0xb5b780ee, 0xc78000ff, 528); 
TEST_RR_OP( 133 , umax8, 0xffff0080, 0xff000080, 0xffff0000, 532); 
TEST_RR_OP( 134 , umax8, 0x008080ff, 0x004e80ff, 0x00808000, 536); 
TEST_RR_OP( 135 , umax8, 0xff80ff80, 0xff80ff1d, 0x80008080, 540); 
TEST_RR_OP( 136 , umax8, 0xff80ff80, 0xff00ff80, 0xe980b700, 544); 
TEST_RR_OP( 137 , umax8, 0x0bffff80, 0x00800000, 0x0bffff80, 548); 
TEST_RR_OP( 138 , umax8, 0xeb8080ff, 0x038080ff, 0xeb008080, 552); 
TEST_RR_OP( 139 , umax8, 0xf9ffff00, 0xe9ffff00, 0xf9ff8000, 556); 
TEST_RR_OP( 140 , umax8, 0xff80ffd4, 0xff80a4d4, 0x8000ff00, 560); 
TEST_RR_OP( 141 , umax8, 0xffffff55, 0x00808055, 0xffffff51, 564); 
TEST_RR_OP( 142 , umax8, 0xffb980ff, 0xffb980ff, 0x94808000, 568); 
TEST_RR_OP( 143 , umax8, 0x80cb80ff, 0x00000080, 0x80cb80ff, 572); 
TEST_RR_OP( 144 , umax8, 0xea9affff, 0x8080ffff, 0xea9a228f, 576); 
TEST_RR_OP( 145 , umax8, 0xff808200, 0xac008000, 0xff808200, 580); 
TEST_RR_OP( 146 , umax8, 0xd6ffff80, 0x80248071, 0xd6ffff80, 584); 
TEST_RR_OP( 147 , umax8, 0xfbd84180, 0xfbd80780, 0x80c54100, 588); 
TEST_RR_OP( 148 , umax8, 0x28f9ff80, 0x0080ff80, 0x28f98080, 592); 
TEST_RR_OP( 149 , umax8, 0xffff80ff, 0xa0ff80ff, 0xff007300, 596); 
TEST_RR_OP( 150 , umax8, 0xffffd6b0, 0xff80d600, 0xffff80b0, 600); 
TEST_RR_OP( 151 , umax8, 0xf0ff80ff, 0x003200ff, 0xf0ff8000, 604); 
TEST_RR_OP( 152 , umax8, 0x8080ffff, 0x8080ff00, 0x000080ff, 608); 
TEST_RR_OP( 153 , umax8, 0xffff8093, 0xdbff0000, 0xff738093, 612); 
TEST_RR_OP( 154 , umax8, 0xff80ff00, 0xff80ff00, 0x80000000, 616); 
TEST_RR_OP( 155 , umax8, 0x80ffffff, 0x80ffffd6, 0x808080ff, 620); 
TEST_RR_OP( 156 , umax8, 0xff00ffff, 0x0000ffff, 0xff00809b, 624); 
TEST_RR_OP( 157 , umax8, 0xffffffff, 0x80ff8080, 0xff00ffff, 628); 
TEST_RR_OP( 158 , umax8, 0xff80ff80, 0x0080ff80, 0xff800000, 632); 
TEST_RR_OP( 159 , umax8, 0xffffffcd, 0xffffffcd, 0xc5008000, 636); 
TEST_RR_OP( 160 , umax8, 0x80b88080, 0x80b88080, 0x00800080, 640); 
TEST_RR_OP( 161 , umax8, 0xffff3aec, 0xfeff3a00, 0xffff05ec, 644); 
TEST_RR_OP( 162 , umax8, 0x80ffff80, 0x80ffff80, 0x80ffa980, 648); 
TEST_RR_OP( 163 , umax8, 0x19800000, 0x00800000, 0x19800000, 652); 
TEST_RR_OP( 164 , umax8, 0xffffffd2, 0xff001dd2, 0xfdffff66, 656); 
TEST_RR_OP( 165 , umax8, 0x9eff80ff, 0x008002ff, 0x9eff8000, 660); 
TEST_RR_OP( 166 , umax8, 0x0080ffff, 0x0000e8ff, 0x0080ffff, 664); 
TEST_RR_OP( 167 , umax8, 0x54ff8080, 0x00ff6180, 0x54808026, 668); 
TEST_RR_OP( 168 , umax8, 0x80ff806e, 0x80ff8000, 0x8000006e, 672); 
TEST_RR_OP( 169 , umax8, 0xccffe9ff, 0xab806f80, 0xccffe9ff, 676); 
TEST_RR_OP( 170 , umax8, 0x80ff00ff, 0x00ff0094, 0x80ff00ff, 680); 
TEST_RR_OP( 171 , umax8, 0xefff80ac, 0xefff12ac, 0x004b8000, 684); 
TEST_RR_OP( 172 , umax8, 0x00ffff80, 0x00800080, 0x00ffff00, 688); 
TEST_RR_OP( 173 , umax8, 0x8000f580, 0x8000f580, 0x09008000, 692); 
TEST_RR_OP( 174 , umax8, 0x80ff807f, 0x4500807f, 0x80ff8000, 696); 
TEST_RR_OP( 175 , umax8, 0xa480ffff, 0xa480ffff, 0x8080beff, 700); 
TEST_RR_OP( 176 , umax8, 0xbda81880, 0x80a81800, 0xbda60080, 704); 
TEST_RR_OP( 177 , umax8, 0xff00ff80, 0x8000ff80, 0xff002380, 708); 
TEST_RR_OP( 178 , umax8, 0xffff8097, 0xffff8097, 0x00001180, 712); 
TEST_RR_OP( 179 , umax8, 0xff80ffc2, 0x002f8000, 0xff80ffc2, 716); 
TEST_RR_OP( 180 , umax8, 0xff2990e9, 0xff008000, 0xff2990e9, 720); 
TEST_RR_OP( 181 , umax8, 0x80008019, 0x80000000, 0x00008019, 724); 
TEST_RR_OP( 182 , umax8, 0xff8042b2, 0xff004298, 0xf3800eb2, 728); 
TEST_RR_OP( 183 , umax8, 0xff8093ff, 0xff8000ff, 0x16809300, 732); 
TEST_RR_OP( 184 , umax8, 0xf6ff80ff, 0xf6ff8080, 0x808080ff, 736); 
TEST_RR_OP( 185 , umax8, 0xffff80a4, 0x70ff80a4, 0xffed1f36, 740); 
TEST_RR_OP( 186 , umax8, 0xf780ff80, 0xf7808080, 0x8080ff80, 744); 
TEST_RR_OP( 187 , umax8, 0xff8080ff, 0xff8080ff, 0x00800080, 748); 
TEST_RR_OP( 188 , umax8, 0xd3ffff80, 0xd3ff0000, 0x8000ff80, 752); 
TEST_RR_OP( 189 , umax8, 0x801dffff, 0x801dffff, 0x8000800b, 756); 
TEST_RR_OP( 190 , umax8, 0xff8000ff, 0xff8000ff, 0x800000ff, 760); 
TEST_RR_OP( 191 , umax8, 0xffff8080, 0xffff8080, 0x00000000, 764); 
TEST_RR_OP( 192 , umax8, 0xffff0080, 0xffff0080, 0x00ff0000, 768); 
TEST_RR_OP( 193 , umax8, 0xffffff80, 0xff80ff80, 0x80ff6a80, 772); 
TEST_RR_OP( 194 , umax8, 0x80ff4400, 0x80ff4400, 0x80800000, 776); 
TEST_RR_OP( 195 , umax8, 0xff5e00ff, 0xff0000ff, 0x005e00ff, 780); 
TEST_RR_OP( 196 , umax8, 0x80ff80ff, 0x80ff8000, 0x00ff00ff, 784); 
TEST_RR_OP( 197 , umax8, 0xff00ff80, 0xff00ff00, 0xbf00b480, 788); 
TEST_RR_OP( 198 , umax8, 0xd0ff8000, 0xd0ff0000, 0x54ff8000, 792); 
TEST_RR_OP( 199 , umax8, 0x8038c2ff, 0x0038c2ff, 0x80000000, 796); 

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
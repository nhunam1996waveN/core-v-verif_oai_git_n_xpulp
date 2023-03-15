# See LICENSE for license details.
#*****************************************************************************
# ucmplt8.S
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

TEST_RR_OP( 2 , ucmplt8, 0x00ff00ff, 0xff00ff6a, 0xffe48070, 8); 
TEST_RR_OP( 3 , ucmplt8, 0x00000000, 0xffac8090, 0x80000000, 12); 
TEST_RR_OP( 4 , ucmplt8, 0xffffffff, 0x80000000, 0xffff1280, 16); 
TEST_RR_OP( 5 , ucmplt8, 0x0000ffff, 0x809e0280, 0x8000ffff, 20); 
TEST_RR_OP( 6 , ucmplt8, 0xffff00ff, 0x2e00ff80, 0x4d80ffee, 24); 
TEST_RR_OP( 7 , ucmplt8, 0x0000ffff, 0x80ff0000, 0x800080d2, 28); 
TEST_RR_OP( 8 , ucmplt8, 0x00ff00ff, 0x7300806d, 0x00ff8080, 32); 
TEST_RR_OP( 9 , ucmplt8, 0x000000ff, 0x8080804e, 0x21808080, 36); 
TEST_RR_OP( 10 , ucmplt8, 0xffffff00, 0x80000036, 0x99808000, 40); 
TEST_RR_OP( 11 , ucmplt8, 0x00ffffff, 0xff00001f, 0x117c8080, 44); 
TEST_RR_OP( 12 , ucmplt8, 0xffffff00, 0x1a00ebff, 0x8065fb80, 48); 
TEST_RR_OP( 13 , ucmplt8, 0xff00ffff, 0x002a0b80, 0xf10080ff, 52); 
TEST_RR_OP( 14 , ucmplt8, 0x00000000, 0x488080ff, 0x00008080, 56); 
TEST_RR_OP( 15 , ucmplt8, 0x00ff0000, 0xff9c4180, 0x80a30035, 60); 
TEST_RR_OP( 16 , ucmplt8, 0xff0000ff, 0x00e6ff00, 0x803433ff, 64); 
TEST_RR_OP( 17 , ucmplt8, 0xff000000, 0x578080ff, 0xab8000b3, 68); 
TEST_RR_OP( 18 , ucmplt8, 0x0000ffff, 0x80800000, 0x002eff80, 72); 
TEST_RR_OP( 19 , ucmplt8, 0xffff0000, 0x6c63ffc1, 0x8080af80, 76); 
TEST_RR_OP( 20 , ucmplt8, 0x00000000, 0xff90ffff, 0xff80ffff, 80); 
TEST_RR_OP( 21 , ucmplt8, 0xff00ff00, 0xeaff8080, 0xffffff1a, 84); 
TEST_RR_OP( 22 , ucmplt8, 0x000000ff, 0xd8965680, 0x804500ff, 88); 
TEST_RR_OP( 23 , ucmplt8, 0xff000000, 0x00ff80ff, 0x98000080, 92); 
TEST_RR_OP( 24 , ucmplt8, 0x0000ffff, 0x80808080, 0x0000ffff, 96); 
TEST_RR_OP( 25 , ucmplt8, 0x0000ff00, 0x00b76080, 0x00008080, 100); 
TEST_RR_OP( 26 , ucmplt8, 0xff00ff00, 0x00800de4, 0x6e008072, 104); 
TEST_RR_OP( 27 , ucmplt8, 0xffff0000, 0x800080a9, 0xff5b8008, 108); 
TEST_RR_OP( 28 , ucmplt8, 0x0000ff00, 0xffff5dff, 0x80118000, 112); 
TEST_RR_OP( 29 , ucmplt8, 0xffffff00, 0x80008083, 0xffddff00, 116); 
TEST_RR_OP( 30 , ucmplt8, 0x00ff0000, 0x0080b8ff, 0x00f000ff, 120); 
TEST_RR_OP( 31 , ucmplt8, 0xffffff00, 0x45a25eff, 0xffb9ff00, 124); 
TEST_RR_OP( 32 , ucmplt8, 0x00000000, 0x8000ce80, 0x00000000, 128); 
TEST_RR_OP( 33 , ucmplt8, 0x00ffffff, 0xffa28000, 0x00ffc6f9, 132); 
TEST_RR_OP( 34 , ucmplt8, 0x00ffff00, 0xff0000e1, 0x3386ff80, 136); 
TEST_RR_OP( 35 , ucmplt8, 0xff00ff00, 0x008080d3, 0x3780ff3e, 140); 
TEST_RR_OP( 36 , ucmplt8, 0x00ff0000, 0xff0080ff, 0x80808000, 144); 
TEST_RR_OP( 37 , ucmplt8, 0x00000000, 0x00ff8080, 0x00ff0000, 148); 
TEST_RR_OP( 38 , ucmplt8, 0xffff0000, 0x8080a6ff, 0xb0a60080, 152); 
TEST_RR_OP( 39 , ucmplt8, 0xffffff00, 0x00009aff, 0x8080ff00, 156); 
TEST_RR_OP( 40 , ucmplt8, 0xff00ffff, 0x00800000, 0xff25a4d3, 160); 
TEST_RR_OP( 41 , ucmplt8, 0xffffff00, 0x6b8000ff, 0x80ffa200, 164); 
TEST_RR_OP( 42 , ucmplt8, 0x0000ff00, 0xef800000, 0x0000ff00, 168); 
TEST_RR_OP( 43 , ucmplt8, 0x00000000, 0xff80ff00, 0xff80ff00, 172); 
TEST_RR_OP( 44 , ucmplt8, 0xff0000ff, 0x006c8000, 0xff008080, 176); 
TEST_RR_OP( 45 , ucmplt8, 0x0000ffff, 0x80ff0015, 0x4480ffff, 180); 
TEST_RR_OP( 46 , ucmplt8, 0xff00ffff, 0x7bd48080, 0x8085ffff, 184); 
TEST_RR_OP( 47 , ucmplt8, 0x00ff0000, 0xff1380f8, 0xffff236c, 188); 
TEST_RR_OP( 48 , ucmplt8, 0x000000ff, 0xff80ff30, 0xff6cc7eb, 192); 
TEST_RR_OP( 49 , ucmplt8, 0xffffff00, 0x008000ff, 0x80ffff80, 196); 
TEST_RR_OP( 50 , ucmplt8, 0x00ffff00, 0x59000080, 0x11808000, 200); 
TEST_RR_OP( 51 , ucmplt8, 0xffff0000, 0x06008015, 0x56800000, 204); 
TEST_RR_OP( 52 , ucmplt8, 0xffffff00, 0x00000000, 0x8080ff00, 208); 
TEST_RR_OP( 53 , ucmplt8, 0xff0000ff, 0x80ffff80, 0xff45ffff, 212); 
TEST_RR_OP( 54 , ucmplt8, 0x00000000, 0x80d82adb, 0x80b90100, 216); 
TEST_RR_OP( 55 , ucmplt8, 0x00ff00ff, 0x803a0000, 0x00e90080, 220); 
TEST_RR_OP( 56 , ucmplt8, 0x00ffffff, 0x8019000d, 0x0080cf80, 224); 
TEST_RR_OP( 57 , ucmplt8, 0x00ffff00, 0x80008014, 0x00dcb800, 228); 
TEST_RR_OP( 58 , ucmplt8, 0x000000ff, 0xffff00cb, 0xf7ff00dd, 232); 
TEST_RR_OP( 59 , ucmplt8, 0x0000ff00, 0x80800080, 0x7f328052, 236); 
TEST_RR_OP( 60 , ucmplt8, 0xff000000, 0x00f90080, 0xff3a0080, 240); 
TEST_RR_OP( 61 , ucmplt8, 0x00ff00ff, 0xff00da3f, 0xffff80ff, 244); 
TEST_RR_OP( 62 , ucmplt8, 0x0000ff00, 0x80ff4fff, 0x80e58080, 248); 
TEST_RR_OP( 63 , ucmplt8, 0xff0000ff, 0x0080806e, 0xb00000ff, 252); 
TEST_RR_OP( 64 , ucmplt8, 0xff000000, 0x6aff80e0, 0xffff0000, 256); 
TEST_RR_OP( 65 , ucmplt8, 0x0000ffff, 0x80ff0019, 0x80ffff80, 260); 
TEST_RR_OP( 66 , ucmplt8, 0xff0000ff, 0x0080ff00, 0x800d6c14, 264); 
TEST_RR_OP( 67 , ucmplt8, 0x000000ff, 0x5c80008f, 0x001e00ff, 268); 
TEST_RR_OP( 68 , ucmplt8, 0xffff00ff, 0x9004c480, 0xff0d00b4, 272); 
TEST_RR_OP( 69 , ucmplt8, 0xff0000ff, 0x00ffff80, 0xff0000ff, 276); 
TEST_RR_OP( 70 , ucmplt8, 0x00ff0000, 0xffb60080, 0x00ff005e, 280); 
TEST_RR_OP( 71 , ucmplt8, 0xff000000, 0x00ffffa4, 0xff80006d, 284); 
TEST_RR_OP( 72 , ucmplt8, 0xffffffff, 0x6a008000, 0x8013ff6b, 288); 
TEST_RR_OP( 73 , ucmplt8, 0x000000ff, 0xff808080, 0xff8080ff, 292); 
TEST_RR_OP( 74 , ucmplt8, 0x00ff0000, 0xff000080, 0x80ff0080, 296); 
TEST_RR_OP( 75 , ucmplt8, 0x00ffff00, 0x80008c80, 0x8080c780, 300); 
TEST_RR_OP( 76 , ucmplt8, 0x00000000, 0xff800080, 0xff800080, 304); 
TEST_RR_OP( 77 , ucmplt8, 0xff00ffff, 0x00da2e00, 0xff80a6ff, 308); 
TEST_RR_OP( 78 , ucmplt8, 0x00ff0000, 0xbb00ffe5, 0x806a5d80, 312); 
TEST_RR_OP( 79 , ucmplt8, 0x00ffff00, 0xff0900ff, 0x0080d100, 316); 
TEST_RR_OP( 80 , ucmplt8, 0x000000ff, 0xff00ff00, 0xff00ff12, 320); 
TEST_RR_OP( 81 , ucmplt8, 0xff0000ff, 0x37008000, 0x540080e2, 324); 
TEST_RR_OP( 82 , ucmplt8, 0x00ff00ff, 0x8000ff00, 0x80ff8550, 328); 
TEST_RR_OP( 83 , ucmplt8, 0x00000000, 0xc58080ff, 0x805580ff, 332); 
TEST_RR_OP( 84 , ucmplt8, 0x00ff0000, 0xff59ffff, 0x008000ff, 336); 
TEST_RR_OP( 85 , ucmplt8, 0x00000000, 0xff80ff80, 0x00008000, 340); 
TEST_RR_OP( 86 , ucmplt8, 0x00ff0000, 0x80000000, 0x80ff0000, 344); 
TEST_RR_OP( 87 , ucmplt8, 0x000000ff, 0xff80ff80, 0x008080ff, 348); 
TEST_RR_OP( 88 , ucmplt8, 0x00ff00ff, 0x8000ff62, 0x3dd000ff, 352); 
TEST_RR_OP( 89 , ucmplt8, 0xffff0000, 0x8000ff80, 0xffff8000, 356); 
TEST_RR_OP( 90 , ucmplt8, 0xff000000, 0x80ffffff, 0xff808000, 360); 
TEST_RR_OP( 91 , ucmplt8, 0x0000ffff, 0xffff0000, 0x7d80b7b3, 364); 
TEST_RR_OP( 92 , ucmplt8, 0xffffffff, 0x3300003a, 0xffffff77, 368); 
TEST_RR_OP( 93 , ucmplt8, 0x00ff0000, 0xff00ff80, 0xff85ff80, 372); 
TEST_RR_OP( 94 , ucmplt8, 0x00ff0000, 0xff03ffff, 0xffffe640, 376); 
TEST_RR_OP( 95 , ucmplt8, 0x00000000, 0xff80ff00, 0x8000ff00, 380); 
TEST_RR_OP( 96 , ucmplt8, 0x0000ff00, 0xffff95ff, 0xd177efff, 384); 
TEST_RR_OP( 97 , ucmplt8, 0xff00ffff, 0x0000e680, 0x8000ffff, 388); 
TEST_RR_OP( 98 , ucmplt8, 0xff00ffff, 0x2380012d, 0xff00a2ff, 392); 
TEST_RR_OP( 99 , ucmplt8, 0x00ffffff, 0x00000000, 0x00ff12ea, 396); 
TEST_RR_OP( 100 , ucmplt8, 0x0000ff00, 0xffff0f80, 0x29008080, 400); 
TEST_RR_OP( 101 , ucmplt8, 0x000000ff, 0x8052ff80, 0x4f1b00ca, 404); 
TEST_RR_OP( 102 , ucmplt8, 0xff0000ff, 0x8080ff93, 0xff801aff, 408); 
TEST_RR_OP( 103 , ucmplt8, 0x00ffff00, 0xff00b2ff, 0x00fff6ff, 412); 
TEST_RR_OP( 104 , ucmplt8, 0x00ff0000, 0x9298f3ff, 0x80ed8000, 416); 
TEST_RR_OP( 105 , ucmplt8, 0x0000ffff, 0x8080bc00, 0x0080ffff, 420); 
TEST_RR_OP( 106 , ucmplt8, 0x00ffffff, 0x80800080, 0x80ff80ff, 424); 
TEST_RR_OP( 107 , ucmplt8, 0xffffff00, 0x00470012, 0xffff8000, 428); 
TEST_RR_OP( 108 , ucmplt8, 0x0000ff00, 0x80ff00ff, 0x00008100, 432); 
TEST_RR_OP( 109 , ucmplt8, 0xff0000ff, 0x80008011, 0x8800808c, 436); 
TEST_RR_OP( 110 , ucmplt8, 0xffff0000, 0x808e09ff, 0x92ff00ff, 440); 
TEST_RR_OP( 111 , ucmplt8, 0x00000000, 0xff00ff00, 0x9a008000, 444); 
TEST_RR_OP( 112 , ucmplt8, 0x00ff00ff, 0xbd618080, 0x80a080ff, 448); 
TEST_RR_OP( 113 , ucmplt8, 0x00ff0000, 0x8080ffff, 0x80a80680, 452); 
TEST_RR_OP( 114 , ucmplt8, 0xff00ffff, 0x00008000, 0x2100ffff, 456); 
TEST_RR_OP( 115 , ucmplt8, 0x00ff0000, 0xff00ffea, 0x8080ff80, 460); 
TEST_RR_OP( 116 , ucmplt8, 0x0000ff00, 0x87fffd80, 0x8080ff80, 464); 
TEST_RR_OP( 117 , ucmplt8, 0xff000000, 0x00808080, 0x80008024, 468); 
TEST_RR_OP( 118 , ucmplt8, 0xff000000, 0x7effff00, 0xf5008000, 472); 
TEST_RR_OP( 119 , ucmplt8, 0x00000000, 0x8080805d, 0x25000000, 476); 
TEST_RR_OP( 120 , ucmplt8, 0xffff0000, 0x0080ffff, 0x80ffff80, 480); 
TEST_RR_OP( 121 , ucmplt8, 0x00000000, 0x80ff0090, 0x00ff0000, 484); 
TEST_RR_OP( 122 , ucmplt8, 0x0000ff00, 0xffff0000, 0x80cd8000, 488); 
TEST_RR_OP( 123 , ucmplt8, 0x00000000, 0x80ebb4ff, 0x80000600, 492); 
TEST_RR_OP( 124 , ucmplt8, 0x00ffff00, 0xff0000ff, 0x80dbff80, 496); 
TEST_RR_OP( 125 , ucmplt8, 0xff00ff00, 0xe8ff8080, 0xffb3ff34, 500); 
TEST_RR_OP( 126 , ucmplt8, 0xff0000ff, 0x8019ff00, 0xc8000080, 504); 
TEST_RR_OP( 127 , ucmplt8, 0x00ff00ff, 0xff006400, 0xff3d0080, 508); 
TEST_RR_OP( 128 , ucmplt8, 0xff000000, 0x00ff80ff, 0xffff0000, 512); 
TEST_RR_OP( 129 , ucmplt8, 0xff000000, 0x00fdffff, 0x9b80ff6b, 516); 
TEST_RR_OP( 130 , ucmplt8, 0x0000ff00, 0xff800080, 0x0000ff80, 520); 
TEST_RR_OP( 131 , ucmplt8, 0x00ffff00, 0x80008080, 0x80ffd600, 524); 
TEST_RR_OP( 132 , ucmplt8, 0xffffff00, 0x80801700, 0xffffae00, 528); 
TEST_RR_OP( 133 , ucmplt8, 0xffff0000, 0x000080c6, 0xc6800080, 532); 
TEST_RR_OP( 134 , ucmplt8, 0x00ff00ff, 0xb800ff1e, 0x808080ff, 536); 
TEST_RR_OP( 135 , ucmplt8, 0x00ff0000, 0x008000ff, 0x00c30000, 540); 
TEST_RR_OP( 136 , ucmplt8, 0x00ffff00, 0x5980000b, 0x00ae8000, 544); 
TEST_RR_OP( 137 , ucmplt8, 0x00ff0000, 0xf60080ff, 0x80ff00c6, 548); 
TEST_RR_OP( 138 , ucmplt8, 0x000000ff, 0xffffff00, 0x80008080, 552); 
TEST_RR_OP( 139 , ucmplt8, 0x00000000, 0x80ffffff, 0x80808000, 556); 
TEST_RR_OP( 140 , ucmplt8, 0x0000ffff, 0xffff1200, 0x80008080, 560); 
TEST_RR_OP( 141 , ucmplt8, 0xffffffff, 0x00180000, 0xffff8058, 564); 
TEST_RR_OP( 142 , ucmplt8, 0xffff0000, 0x0000ff80, 0x83eeff05, 568); 
TEST_RR_OP( 143 , ucmplt8, 0xff00ffff, 0x00740043, 0x80004aff, 572); 
TEST_RR_OP( 144 , ucmplt8, 0x00ff00ff, 0x80b68000, 0x00ff80e1, 576); 
TEST_RR_OP( 145 , ucmplt8, 0xff000000, 0x0080babe, 0x43808000, 580); 
TEST_RR_OP( 146 , ucmplt8, 0xffffff00, 0x801680ff, 0x88ffff80, 584); 
TEST_RR_OP( 147 , ucmplt8, 0x00000000, 0x0000b7ff, 0x00008400, 588); 
TEST_RR_OP( 148 , ucmplt8, 0xffff0000, 0x0080e580, 0x80ff0000, 592); 
TEST_RR_OP( 149 , ucmplt8, 0xffff00ff, 0x80048000, 0xffff1480, 596); 
TEST_RR_OP( 150 , ucmplt8, 0x00ffff00, 0xff80ca80, 0x2f93d280, 600); 
TEST_RR_OP( 151 , ucmplt8, 0x00ff0000, 0x8000ff00, 0x00ffb000, 604); 
TEST_RR_OP( 152 , ucmplt8, 0x00ffff00, 0x5400800f, 0x0037ff00, 608); 
TEST_RR_OP( 153 , ucmplt8, 0x0000ffff, 0x80807180, 0x8000ffcd, 612); 
TEST_RR_OP( 154 , ucmplt8, 0x0000ffff, 0x8080d200, 0x8080dfff, 616); 
TEST_RR_OP( 155 , ucmplt8, 0x00ff0000, 0x6f008080, 0x00ff000c, 620); 
TEST_RR_OP( 156 , ucmplt8, 0xffffff00, 0x000049d2, 0x80b0ff00, 624); 
TEST_RR_OP( 157 , ucmplt8, 0x00ff0000, 0x4400ffff, 0x00a180ff, 628); 
TEST_RR_OP( 158 , ucmplt8, 0xff000000, 0x00ffff80, 0x8000f73a, 632); 
TEST_RR_OP( 159 , ucmplt8, 0x0000ffff, 0xff808058, 0xff00ff65, 636); 
TEST_RR_OP( 160 , ucmplt8, 0xffffff00, 0x800000ff, 0x83ff8078, 640); 
TEST_RR_OP( 161 , ucmplt8, 0xff000000, 0x008580ff, 0xcf008000, 644); 
TEST_RR_OP( 162 , ucmplt8, 0x000000ff, 0x80805200, 0x80802e19, 648); 
TEST_RR_OP( 163 , ucmplt8, 0x00ff0000, 0xff00ff2f, 0x1bd68000, 652); 
TEST_RR_OP( 164 , ucmplt8, 0xff000000, 0x8080ff2b, 0xff008000, 656); 
TEST_RR_OP( 165 , ucmplt8, 0x00ffff00, 0xff005cff, 0x95d2f2c5, 660); 
TEST_RR_OP( 166 , ucmplt8, 0x00ffff00, 0x80006168, 0x0080c500, 664); 
TEST_RR_OP( 167 , ucmplt8, 0x00000000, 0x5a80ff80, 0x11718080, 668); 
TEST_RR_OP( 168 , ucmplt8, 0xffff0000, 0x298080ff, 0xffe500f0, 672); 
TEST_RR_OP( 169 , ucmplt8, 0x0000ffff, 0xffff0000, 0xff728080, 676); 
TEST_RR_OP( 170 , ucmplt8, 0x00ff0000, 0xff2aff80, 0x00808000, 680); 
TEST_RR_OP( 171 , ucmplt8, 0x000000ff, 0x8000c091, 0x670080da, 684); 
TEST_RR_OP( 172 , ucmplt8, 0xff00ff00, 0x43ff6b70, 0xff03ff00, 688); 
TEST_RR_OP( 173 , ucmplt8, 0xff000000, 0x00df5380, 0x80000080, 692); 
TEST_RR_OP( 174 , ucmplt8, 0xffff0000, 0x806880ff, 0xbbff00ff, 696); 
TEST_RR_OP( 175 , ucmplt8, 0x00ff00ff, 0xff808080, 0x00f20bff, 700); 
TEST_RR_OP( 176 , ucmplt8, 0xffff0000, 0x80d28000, 0xffff8000, 704); 
TEST_RR_OP( 177 , ucmplt8, 0x000000ff, 0x80fff200, 0x808080ff, 708); 
TEST_RR_OP( 178 , ucmplt8, 0xff000000, 0x0070ffff, 0xde248080, 712); 
TEST_RR_OP( 179 , ucmplt8, 0x00ff0000, 0x8080cfff, 0x80c26400, 716); 
TEST_RR_OP( 180 , ucmplt8, 0xff00ffff, 0xe5ac0001, 0xff8080ff, 720); 
TEST_RR_OP( 181 , ucmplt8, 0x00ff0000, 0xff008080, 0x80803b3f, 724); 
TEST_RR_OP( 182 , ucmplt8, 0x00ff0000, 0xff00ff80, 0xffff8400, 728); 
TEST_RR_OP( 183 , ucmplt8, 0x0000ffff, 0x80808000, 0x8080ff80, 732); 
TEST_RR_OP( 184 , ucmplt8, 0x00ff00ff, 0xff368000, 0x00dc0080, 736); 
TEST_RR_OP( 185 , ucmplt8, 0xff0000ff, 0x00000037, 0xff000096, 740); 
TEST_RR_OP( 186 , ucmplt8, 0x00ff00ff, 0xffed0065, 0x6aff0080, 744); 
TEST_RR_OP( 187 , ucmplt8, 0xff000000, 0x80ffff80, 0xffff0080, 748); 
TEST_RR_OP( 188 , ucmplt8, 0xffffff00, 0x0000015d, 0xff66800d, 752); 
TEST_RR_OP( 189 , ucmplt8, 0x00ff00ff, 0xff7d8034, 0x038000ff, 756); 
TEST_RR_OP( 190 , ucmplt8, 0x000000ff, 0xffffff00, 0x00000080, 760); 
TEST_RR_OP( 191 , ucmplt8, 0x00ffff00, 0x800000ff, 0x008080ff, 764); 
TEST_RR_OP( 192 , ucmplt8, 0x00ff0000, 0xffaeff80, 0x7effb100, 768); 
TEST_RR_OP( 193 , ucmplt8, 0xff00ff00, 0x008080ff, 0xff80ff00, 772); 
TEST_RR_OP( 194 , ucmplt8, 0xffff0000, 0x8000b480, 0x9eff0000, 776); 
TEST_RR_OP( 195 , ucmplt8, 0x0000ff00, 0xb9ff4cff, 0x00ff8080, 780); 
TEST_RR_OP( 196 , ucmplt8, 0xff000000, 0xb080ffff, 0xff00ff28, 784); 
TEST_RR_OP( 197 , ucmplt8, 0xffffff00, 0x0000aaf7, 0x1880e8e2, 788); 
TEST_RR_OP( 198 , ucmplt8, 0x00ff0000, 0x80807880, 0x00d30042, 792); 
TEST_RR_OP( 199 , ucmplt8, 0x000000ff, 0x80caff00, 0x80002b5b, 796); 

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
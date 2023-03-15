# See LICENSE for license details.
#*****************************************************************************
# sunpkd831.S
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

TEST_R_OP( 2 , sunpkd831, 0xff80ffff, 0x8000ff80, 8); 
TEST_R_OP( 3 , sunpkd831, 0xff80ff80, 0x8000806e, 12); 
TEST_R_OP( 4 , sunpkd831, 0x006aff80, 0x6aff80f9, 16); 
TEST_R_OP( 5 , sunpkd831, 0xffe50000, 0xe5360007, 20); 
TEST_R_OP( 6 , sunpkd831, 0xffc2ffff, 0xc280ffff, 24); 
TEST_R_OP( 7 , sunpkd831, 0xff80ffff, 0x8000ff00, 28); 
TEST_R_OP( 8 , sunpkd831, 0xff80ffe0, 0x8018e000, 32); 
TEST_R_OP( 9 , sunpkd831, 0x0000ff80, 0x00ab8080, 36); 
TEST_R_OP( 10 , sunpkd831, 0xff800000, 0x80800000, 40); 
TEST_R_OP( 11 , sunpkd831, 0xffffffff, 0xffffff80, 44); 
TEST_R_OP( 12 , sunpkd831, 0xffff0000, 0xff000000, 48); 
TEST_R_OP( 13 , sunpkd831, 0xff80ffff, 0x8000ff82, 52); 
TEST_R_OP( 14 , sunpkd831, 0xffdaffff, 0xdaffff80, 56); 
TEST_R_OP( 15 , sunpkd831, 0x00000056, 0x00ff5680, 60); 
TEST_R_OP( 16 , sunpkd831, 0xff80ffff, 0x8080ff57, 64); 
TEST_R_OP( 17 , sunpkd831, 0xffffffff, 0xff00ffff, 68); 
TEST_R_OP( 18 , sunpkd831, 0xffff005a, 0xff975a00, 72); 
TEST_R_OP( 19 , sunpkd831, 0xffffffc7, 0xff00c780, 76); 
TEST_R_OP( 20 , sunpkd831, 0xff800000, 0x80ff0000, 80); 
TEST_R_OP( 21 , sunpkd831, 0xff80ffff, 0x8080ffff, 84); 
TEST_R_OP( 22 , sunpkd831, 0xff800000, 0x80ff0080, 88); 
TEST_R_OP( 23 , sunpkd831, 0xffff0079, 0xff4c7980, 92); 
TEST_R_OP( 24 , sunpkd831, 0xffbfff80, 0xbf8080c5, 96); 
TEST_R_OP( 25 , sunpkd831, 0xff80ffff, 0x8080ff7b, 100); 
TEST_R_OP( 26 , sunpkd831, 0xff80ffdc, 0x8080dcc6, 104); 
TEST_R_OP( 27 , sunpkd831, 0xffffffff, 0xff0dff00, 108); 
TEST_R_OP( 28 , sunpkd831, 0xffffffd9, 0xff80d9ff, 112); 
TEST_R_OP( 29 , sunpkd831, 0xffff0000, 0xff800000, 116); 
TEST_R_OP( 30 , sunpkd831, 0x0000ffff, 0x00ffffff, 120); 
TEST_R_OP( 31 , sunpkd831, 0xff860021, 0x8680216c, 124); 
TEST_R_OP( 32 , sunpkd831, 0x0000ff80, 0x00148000, 128); 
TEST_R_OP( 33 , sunpkd831, 0x00000000, 0x00800080, 132); 
TEST_R_OP( 34 , sunpkd831, 0x001bff80, 0x1b8080ff, 136); 
TEST_R_OP( 35 , sunpkd831, 0xffbe0000, 0xbeff0000, 140); 
TEST_R_OP( 36 , sunpkd831, 0xff80ffff, 0x80c2ff80, 144); 
TEST_R_OP( 37 , sunpkd831, 0x00000028, 0x00802800, 148); 
TEST_R_OP( 38 , sunpkd831, 0xff800000, 0x80ff00af, 152); 
TEST_R_OP( 39 , sunpkd831, 0x00330000, 0x338000ff, 156); 
TEST_R_OP( 40 , sunpkd831, 0x00000078, 0x00007880, 160); 
TEST_R_OP( 41 , sunpkd831, 0xffffff80, 0xff008080, 164); 
TEST_R_OP( 42 , sunpkd831, 0xffffffff, 0xffffffff, 168); 
TEST_R_OP( 43 , sunpkd831, 0xffffff80, 0xff4280d1, 172); 
TEST_R_OP( 44 , sunpkd831, 0x0000ff80, 0x00c58080, 176); 
TEST_R_OP( 45 , sunpkd831, 0x0000ff80, 0x0000800a, 180); 
TEST_R_OP( 46 , sunpkd831, 0x006dff80, 0x6dff80de, 184); 
TEST_R_OP( 47 , sunpkd831, 0xff80ff80, 0x800080dd, 188); 
TEST_R_OP( 48 , sunpkd831, 0xffffff80, 0xff008000, 192); 
TEST_R_OP( 49 , sunpkd831, 0xffffffd5, 0xffb4d500, 196); 
TEST_R_OP( 50 , sunpkd831, 0x0000ff80, 0x00ff80ff, 200); 
TEST_R_OP( 51 , sunpkd831, 0xffff005e, 0xffff5e00, 204); 
TEST_R_OP( 52 , sunpkd831, 0xffff0000, 0xff7f0080, 208); 
TEST_R_OP( 53 , sunpkd831, 0x0000ff80, 0x00ff80ff, 212); 
TEST_R_OP( 54 , sunpkd831, 0xffff0000, 0xff0000d4, 216); 
TEST_R_OP( 55 , sunpkd831, 0x00000013, 0x00001380, 220); 
TEST_R_OP( 56 , sunpkd831, 0x004dffff, 0x4d00ff80, 224); 
TEST_R_OP( 57 , sunpkd831, 0xffffffff, 0xfffeffff, 228); 
TEST_R_OP( 58 , sunpkd831, 0x0000ffff, 0x0080ffff, 232); 
TEST_R_OP( 59 , sunpkd831, 0x00240063, 0x240063ff, 236); 
TEST_R_OP( 60 , sunpkd831, 0x00000000, 0x00800080, 240); 
TEST_R_OP( 61 , sunpkd831, 0x00000008, 0x00ff0800, 244); 
TEST_R_OP( 62 , sunpkd831, 0x00000035, 0x0080354a, 248); 
TEST_R_OP( 63 , sunpkd831, 0x0000ffff, 0x002aff80, 252); 
TEST_R_OP( 64 , sunpkd831, 0xff800000, 0x80ff0000, 256); 
TEST_R_OP( 65 , sunpkd831, 0xffff0000, 0xff07004f, 260); 
TEST_R_OP( 66 , sunpkd831, 0x00000000, 0x001a0080, 264); 
TEST_R_OP( 67 , sunpkd831, 0xff8aff80, 0x8aff8000, 268); 
TEST_R_OP( 68 , sunpkd831, 0x0000ffff, 0x0080ff8c, 272); 
TEST_R_OP( 69 , sunpkd831, 0xffe4ff80, 0xe4c280ff, 276); 
TEST_R_OP( 70 , sunpkd831, 0xff80ffff, 0x80d1ff00, 280); 
TEST_R_OP( 71 , sunpkd831, 0x0000ff88, 0x000088ff, 284); 
TEST_R_OP( 72 , sunpkd831, 0xff800000, 0x80800080, 288); 
TEST_R_OP( 73 , sunpkd831, 0x00000000, 0x00a10061, 292); 
TEST_R_OP( 74 , sunpkd831, 0xffffffff, 0xff00ff81, 296); 
TEST_R_OP( 75 , sunpkd831, 0xffff0025, 0xff00250f, 300); 
TEST_R_OP( 76 , sunpkd831, 0x0000ff80, 0x00218000, 304); 
TEST_R_OP( 77 , sunpkd831, 0x00000000, 0x00000000, 308); 
TEST_R_OP( 78 , sunpkd831, 0xffff0000, 0xffff0000, 312); 
TEST_R_OP( 79 , sunpkd831, 0xff80ffff, 0x80ffff00, 316); 
TEST_R_OP( 80 , sunpkd831, 0x00000000, 0x000000c9, 320); 
TEST_R_OP( 81 , sunpkd831, 0x0000ff80, 0x00808080, 324); 
TEST_R_OP( 82 , sunpkd831, 0xffffffff, 0xff80ff1b, 328); 
TEST_R_OP( 83 , sunpkd831, 0xff80ffff, 0x8000ff00, 332); 
TEST_R_OP( 84 , sunpkd831, 0xff800047, 0x80ff4700, 336); 
TEST_R_OP( 85 , sunpkd831, 0xffff004b, 0xff804bff, 340); 
TEST_R_OP( 86 , sunpkd831, 0xffff0000, 0xffff0000, 344); 
TEST_R_OP( 87 , sunpkd831, 0x0000ffad, 0x0080ad80, 348); 
TEST_R_OP( 88 , sunpkd831, 0xffff0000, 0xff000092, 352); 
TEST_R_OP( 89 , sunpkd831, 0xffffffff, 0xffffff00, 356); 
TEST_R_OP( 90 , sunpkd831, 0xff800021, 0x80002100, 360); 
TEST_R_OP( 91 , sunpkd831, 0xffff0023, 0xff0023ff, 364); 
TEST_R_OP( 92 , sunpkd831, 0xff800000, 0x80000000, 368); 
TEST_R_OP( 93 , sunpkd831, 0xff800000, 0x80800080, 372); 
TEST_R_OP( 94 , sunpkd831, 0x003d0072, 0x3d807200, 376); 
TEST_R_OP( 95 , sunpkd831, 0x0000ffff, 0x0084ff00, 380); 
TEST_R_OP( 96 , sunpkd831, 0x0011ff80, 0x11a180ff, 384); 
TEST_R_OP( 97 , sunpkd831, 0xffff0000, 0xff100000, 388); 
TEST_R_OP( 98 , sunpkd831, 0xff80ffff, 0x8080ff52, 392); 
TEST_R_OP( 99 , sunpkd831, 0xffff0000, 0xff0000ff, 396); 
TEST_R_OP( 100 , sunpkd831, 0x00000055, 0x00805580, 400); 
TEST_R_OP( 101 , sunpkd831, 0xff80ffff, 0x80c8ff80, 404); 
TEST_R_OP( 102 , sunpkd831, 0x0000006b, 0x00d26b00, 408); 
TEST_R_OP( 103 , sunpkd831, 0x0000ff80, 0x00388080, 412); 
TEST_R_OP( 104 , sunpkd831, 0x00000000, 0x004100ff, 416); 
TEST_R_OP( 105 , sunpkd831, 0xffffffff, 0xff35ff00, 420); 
TEST_R_OP( 106 , sunpkd831, 0x00420000, 0x42ff0086, 424); 
TEST_R_OP( 107 , sunpkd831, 0x002e0023, 0x2e82239c, 428); 
TEST_R_OP( 108 , sunpkd831, 0xff800000, 0x80ff00ff, 432); 
TEST_R_OP( 109 , sunpkd831, 0xffffffba, 0xff80ba00, 436); 
TEST_R_OP( 110 , sunpkd831, 0xffffffff, 0xffffff00, 440); 
TEST_R_OP( 111 , sunpkd831, 0xff80ffda, 0x80ffda00, 444); 
TEST_R_OP( 112 , sunpkd831, 0xffb10035, 0xb18035ff, 448); 
TEST_R_OP( 113 , sunpkd831, 0x00000047, 0x00ff4700, 452); 
TEST_R_OP( 114 , sunpkd831, 0x00000000, 0x00710000, 456); 
TEST_R_OP( 115 , sunpkd831, 0xff80ffff, 0x8000ffff, 460); 
TEST_R_OP( 116 , sunpkd831, 0x0000ffff, 0x0080ff05, 464); 
TEST_R_OP( 117 , sunpkd831, 0x00000009, 0x000909d9, 468); 
TEST_R_OP( 118 , sunpkd831, 0x0000ffff, 0x00ffffff, 472); 
TEST_R_OP( 119 , sunpkd831, 0x0000ff80, 0x00f280ff, 476); 
TEST_R_OP( 120 , sunpkd831, 0x00000000, 0x00880083, 480); 
TEST_R_OP( 121 , sunpkd831, 0xff80ffff, 0x800cffff, 484); 
TEST_R_OP( 122 , sunpkd831, 0x00000000, 0x00000000, 488); 
TEST_R_OP( 123 , sunpkd831, 0xff800000, 0x80000080, 492); 
TEST_R_OP( 124 , sunpkd831, 0x0000ff80, 0x00ff8000, 496); 
TEST_R_OP( 125 , sunpkd831, 0xffecff80, 0xecff8000, 500); 
TEST_R_OP( 126 , sunpkd831, 0x0000ffff, 0x0000ff2b, 504); 
TEST_R_OP( 127 , sunpkd831, 0xffffff80, 0xff8080af, 508); 
TEST_R_OP( 128 , sunpkd831, 0xff800000, 0x8000000c, 512); 
TEST_R_OP( 129 , sunpkd831, 0x0000ffff, 0x0052ffff, 516); 
TEST_R_OP( 130 , sunpkd831, 0xffff000c, 0xff2a0c00, 520); 
TEST_R_OP( 131 , sunpkd831, 0xffffff97, 0xffff97ff, 524); 
TEST_R_OP( 132 , sunpkd831, 0x00000013, 0x000013ff, 528); 
TEST_R_OP( 133 , sunpkd831, 0xff800056, 0x80805680, 532); 
TEST_R_OP( 134 , sunpkd831, 0x0000ffff, 0x0000ffff, 536); 
TEST_R_OP( 135 , sunpkd831, 0xff800000, 0x80000080, 540); 
TEST_R_OP( 136 , sunpkd831, 0xffff0000, 0xffff0080, 544); 
TEST_R_OP( 137 , sunpkd831, 0xfff50000, 0xf5800032, 548); 
TEST_R_OP( 138 , sunpkd831, 0xff80ffff, 0x8080ff37, 552); 
TEST_R_OP( 139 , sunpkd831, 0xff800000, 0x800d0080, 556); 
TEST_R_OP( 140 , sunpkd831, 0xffa0ffff, 0xa085ffbd, 560); 
TEST_R_OP( 141 , sunpkd831, 0xffa4ff80, 0xa4a980ff, 564); 
TEST_R_OP( 142 , sunpkd831, 0x0000ff80, 0x00008000, 568); 
TEST_R_OP( 143 , sunpkd831, 0x0004ffff, 0x0400ffff, 572); 
TEST_R_OP( 144 , sunpkd831, 0xff80ffff, 0x8080ffff, 576); 
TEST_R_OP( 145 , sunpkd831, 0xff80ffff, 0x8080ff8f, 580); 
TEST_R_OP( 146 , sunpkd831, 0xff80ffff, 0x8080ff00, 584); 
TEST_R_OP( 147 , sunpkd831, 0xff80ffff, 0x80f2ff21, 588); 
TEST_R_OP( 148 , sunpkd831, 0xffffffff, 0xff00ff00, 592); 
TEST_R_OP( 149 , sunpkd831, 0x0000ff8c, 0x00808c00, 596); 
TEST_R_OP( 150 , sunpkd831, 0xffff0000, 0xff000080, 600); 
TEST_R_OP( 151 , sunpkd831, 0xff80ff80, 0x80028000, 604); 
TEST_R_OP( 152 , sunpkd831, 0xffff0000, 0xffff0080, 608); 
TEST_R_OP( 153 , sunpkd831, 0x0005ff80, 0x050080ff, 612); 
TEST_R_OP( 154 , sunpkd831, 0xffff0000, 0xffb300ff, 616); 
TEST_R_OP( 155 , sunpkd831, 0x0000ff80, 0x00008080, 620); 
TEST_R_OP( 156 , sunpkd831, 0xff80ff80, 0x808080ff, 624); 
TEST_R_OP( 157 , sunpkd831, 0xff80ff80, 0x800080ff, 628); 
TEST_R_OP( 158 , sunpkd831, 0xffe7ff80, 0xe7008000, 632); 
TEST_R_OP( 159 , sunpkd831, 0xff800010, 0x80ff1000, 636); 
TEST_R_OP( 160 , sunpkd831, 0xff800000, 0x808500ff, 640); 
TEST_R_OP( 161 , sunpkd831, 0xff80ffff, 0x8080ff00, 644); 
TEST_R_OP( 162 , sunpkd831, 0xffffff80, 0xff808080, 648); 
TEST_R_OP( 163 , sunpkd831, 0xff80ff80, 0x800f8080, 652); 
TEST_R_OP( 164 , sunpkd831, 0xff80ff80, 0x80ff80ff, 656); 
TEST_R_OP( 165 , sunpkd831, 0x0000ffff, 0x00c0ff00, 660); 
TEST_R_OP( 166 , sunpkd831, 0xffffff8b, 0xff808bff, 664); 
TEST_R_OP( 167 , sunpkd831, 0xff800000, 0x80880000, 668); 
TEST_R_OP( 168 , sunpkd831, 0x0000ffff, 0x00ffff91, 672); 
TEST_R_OP( 169 , sunpkd831, 0x00000000, 0x00800040, 676); 
TEST_R_OP( 170 , sunpkd831, 0x0000ff80, 0x00818000, 680); 
TEST_R_OP( 171 , sunpkd831, 0xff80ff80, 0x80ff8000, 684); 
TEST_R_OP( 172 , sunpkd831, 0x00000000, 0x00ff00ff, 688); 
TEST_R_OP( 173 , sunpkd831, 0xff800000, 0x80800000, 692); 
TEST_R_OP( 174 , sunpkd831, 0x003f0000, 0x3f000080, 696); 
TEST_R_OP( 175 , sunpkd831, 0xff80ff80, 0x80ff80ff, 700); 
TEST_R_OP( 176 , sunpkd831, 0x000f0000, 0x0f000080, 704); 
TEST_R_OP( 177 , sunpkd831, 0x0000ffff, 0x0000ff80, 708); 
TEST_R_OP( 178 , sunpkd831, 0x0000ffff, 0x0069ff9c, 712); 
TEST_R_OP( 179 , sunpkd831, 0xff80ffff, 0x8000ff00, 716); 
TEST_R_OP( 180 , sunpkd831, 0x00000040, 0x008040ff, 720); 
TEST_R_OP( 181 , sunpkd831, 0xffff000a, 0xffff0aff, 724); 
TEST_R_OP( 182 , sunpkd831, 0xffffffff, 0xff00fffe, 728); 
TEST_R_OP( 183 , sunpkd831, 0xff80ffff, 0x8000ffc6, 732); 
TEST_R_OP( 184 , sunpkd831, 0xffffff80, 0xff8080ff, 736); 
TEST_R_OP( 185 , sunpkd831, 0xffffff80, 0xff8d8000, 740); 
TEST_R_OP( 186 , sunpkd831, 0xffffffff, 0xff00ffff, 744); 
TEST_R_OP( 187 , sunpkd831, 0xffff0000, 0xff000030, 748); 
TEST_R_OP( 188 , sunpkd831, 0x00000000, 0x007500ff, 752); 
TEST_R_OP( 189 , sunpkd831, 0xffe7ff80, 0xe7008000, 756); 
TEST_R_OP( 190 , sunpkd831, 0xff800000, 0x801e00d6, 760); 
TEST_R_OP( 191 , sunpkd831, 0x0000ffff, 0x00e4ff80, 764); 
TEST_R_OP( 192 , sunpkd831, 0xff800000, 0x80ff0080, 768); 
TEST_R_OP( 193 , sunpkd831, 0xffffff80, 0xffff8080, 772); 
TEST_R_OP( 194 , sunpkd831, 0xffff0000, 0xff000000, 776); 
TEST_R_OP( 195 , sunpkd831, 0xff800000, 0x808000ff, 780); 
TEST_R_OP( 196 , sunpkd831, 0xffff0018, 0xff001800, 784); 
TEST_R_OP( 197 , sunpkd831, 0xffffffff, 0xff80ffff, 788); 
TEST_R_OP( 198 , sunpkd831, 0xff800000, 0x80000080, 792); 
TEST_R_OP( 199 , sunpkd831, 0xff80ffff, 0x8000ff80, 796); 

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
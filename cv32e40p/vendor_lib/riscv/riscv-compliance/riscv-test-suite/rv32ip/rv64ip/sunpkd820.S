# See LICENSE for license details.
#*****************************************************************************
# sunpkd820.S
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

TEST_R_OP( 2 , sunpkd820, 0x0000ffff, 0x000000ff, 8); 
TEST_R_OP( 3 , sunpkd820, 0xff800074, 0x77800074, 12); 
TEST_R_OP( 4 , sunpkd820, 0x007f0000, 0x007fff00, 16); 
TEST_R_OP( 5 , sunpkd820, 0xff800074, 0x80800074, 20); 
TEST_R_OP( 6 , sunpkd820, 0xffffffff, 0x00ffffff, 24); 
TEST_R_OP( 7 , sunpkd820, 0xff80ff80, 0x11809580, 28); 
TEST_R_OP( 8 , sunpkd820, 0x00000059, 0xff00ff59, 32); 
TEST_R_OP( 9 , sunpkd820, 0x0050ffff, 0xa35000ff, 36); 
TEST_R_OP( 10 , sunpkd820, 0x0052ffff, 0x8052a6ff, 40); 
TEST_R_OP( 11 , sunpkd820, 0x0000ffff, 0xff0061ff, 44); 
TEST_R_OP( 12 , sunpkd820, 0xffe70058, 0x3fe7e858, 48); 
TEST_R_OP( 13 , sunpkd820, 0xff800000, 0x0680df00, 52); 
TEST_R_OP( 14 , sunpkd820, 0x003affa4, 0x003a60a4, 56); 
TEST_R_OP( 15 , sunpkd820, 0xff97ffff, 0x809700ff, 60); 
TEST_R_OP( 16 , sunpkd820, 0xffffffff, 0x00ff80ff, 64); 
TEST_R_OP( 17 , sunpkd820, 0xffffff80, 0xffff5a80, 68); 
TEST_R_OP( 18 , sunpkd820, 0x0019ff80, 0x3f190080, 72); 
TEST_R_OP( 19 , sunpkd820, 0xff80ffff, 0x568080ff, 76); 
TEST_R_OP( 20 , sunpkd820, 0xff80ff80, 0xff80ff80, 80); 
TEST_R_OP( 21 , sunpkd820, 0xff81ffff, 0xff81ffff, 84); 
TEST_R_OP( 22 , sunpkd820, 0xffffff82, 0x80ff8082, 88); 
TEST_R_OP( 23 , sunpkd820, 0xff80ff80, 0xe180ff80, 92); 
TEST_R_OP( 24 , sunpkd820, 0xff800000, 0x80808000, 96); 
TEST_R_OP( 25 , sunpkd820, 0x0000ff80, 0xee008080, 100); 
TEST_R_OP( 26 , sunpkd820, 0xff80ff80, 0x80803780, 104); 
TEST_R_OP( 27 , sunpkd820, 0x0000001a, 0x4200801a, 108); 
TEST_R_OP( 28 , sunpkd820, 0xffff0000, 0x00ffff00, 112); 
TEST_R_OP( 29 , sunpkd820, 0xffff000c, 0xffffff0c, 116); 
TEST_R_OP( 30 , sunpkd820, 0xffab0000, 0x00ab0000, 120); 
TEST_R_OP( 31 , sunpkd820, 0x0000ffff, 0x0000ffff, 124); 
TEST_R_OP( 32 , sunpkd820, 0x0028ffef, 0xff2880ef, 128); 
TEST_R_OP( 33 , sunpkd820, 0x0000ff9c, 0x8000ff9c, 132); 
TEST_R_OP( 34 , sunpkd820, 0xffa5ffff, 0xffa500ff, 136); 
TEST_R_OP( 35 , sunpkd820, 0xffff0000, 0x45ff0000, 140); 
TEST_R_OP( 36 , sunpkd820, 0xffff0002, 0x57ff0002, 144); 
TEST_R_OP( 37 , sunpkd820, 0xff88ff80, 0xff886080, 148); 
TEST_R_OP( 38 , sunpkd820, 0xffffff80, 0xffffff80, 152); 
TEST_R_OP( 39 , sunpkd820, 0x000fffd4, 0x000f43d4, 156); 
TEST_R_OP( 40 , sunpkd820, 0x0000ff80, 0x80008080, 160); 
TEST_R_OP( 41 , sunpkd820, 0x00000000, 0x8000ff00, 164); 
TEST_R_OP( 42 , sunpkd820, 0xffff0053, 0x00ff0053, 168); 
TEST_R_OP( 43 , sunpkd820, 0xffffffff, 0x00ff80ff, 172); 
TEST_R_OP( 44 , sunpkd820, 0xff80ffff, 0x808000ff, 176); 
TEST_R_OP( 45 , sunpkd820, 0xff800000, 0x58800000, 180); 
TEST_R_OP( 46 , sunpkd820, 0x0000ffff, 0xd20080ff, 184); 
TEST_R_OP( 47 , sunpkd820, 0x0000fff0, 0xff00a4f0, 188); 
TEST_R_OP( 48 , sunpkd820, 0xffffffff, 0xffffffff, 192); 
TEST_R_OP( 49 , sunpkd820, 0xff80ff80, 0xa080ff80, 196); 
TEST_R_OP( 50 , sunpkd820, 0x006a0000, 0xff6a8000, 200); 
TEST_R_OP( 51 , sunpkd820, 0xff80ff80, 0xb6803080, 204); 
TEST_R_OP( 52 , sunpkd820, 0x00000000, 0x00000000, 208); 
TEST_R_OP( 53 , sunpkd820, 0xff80ff80, 0xff808080, 212); 
TEST_R_OP( 54 , sunpkd820, 0xff80ff80, 0x0080ff80, 216); 
TEST_R_OP( 55 , sunpkd820, 0xffffff80, 0xffff0080, 220); 
TEST_R_OP( 56 , sunpkd820, 0xff8f0076, 0x808f8076, 224); 
TEST_R_OP( 57 , sunpkd820, 0xff80ff80, 0xff800d80, 228); 
TEST_R_OP( 58 , sunpkd820, 0xffff0000, 0x80ffff00, 232); 
TEST_R_OP( 59 , sunpkd820, 0x0000ff80, 0x4300ff80, 236); 
TEST_R_OP( 60 , sunpkd820, 0xffff002c, 0xffffff2c, 240); 
TEST_R_OP( 61 , sunpkd820, 0xffff0000, 0xffff8000, 244); 
TEST_R_OP( 62 , sunpkd820, 0xffffff80, 0x00ff0080, 248); 
TEST_R_OP( 63 , sunpkd820, 0xff800007, 0x8080e407, 252); 
TEST_R_OP( 64 , sunpkd820, 0x00000000, 0x0000de00, 256); 
TEST_R_OP( 65 , sunpkd820, 0xffffff80, 0x80ff8080, 260); 
TEST_R_OP( 66 , sunpkd820, 0xffffff80, 0x80ffda80, 264); 
TEST_R_OP( 67 , sunpkd820, 0xff80ff80, 0x75800080, 268); 
TEST_R_OP( 68 , sunpkd820, 0xffffff80, 0x00ff0080, 272); 
TEST_R_OP( 69 , sunpkd820, 0x00000000, 0xde004e00, 276); 
TEST_R_OP( 70 , sunpkd820, 0xffffffff, 0xf9ffffff, 280); 
TEST_R_OP( 71 , sunpkd820, 0x0000003c, 0x0000803c, 284); 
TEST_R_OP( 72 , sunpkd820, 0x0000ff80, 0xef00ff80, 288); 
TEST_R_OP( 73 , sunpkd820, 0x00000000, 0x00000000, 292); 
TEST_R_OP( 74 , sunpkd820, 0x0070ff80, 0xff70ff80, 296); 
TEST_R_OP( 75 , sunpkd820, 0x0000ff80, 0x80000080, 300); 
TEST_R_OP( 76 , sunpkd820, 0xff8fffb9, 0x808f63b9, 304); 
TEST_R_OP( 77 , sunpkd820, 0xff800000, 0x80800000, 308); 
TEST_R_OP( 78 , sunpkd820, 0x0000ff80, 0x80000080, 312); 
TEST_R_OP( 79 , sunpkd820, 0xff80ffe2, 0xff8000e2, 316); 
TEST_R_OP( 80 , sunpkd820, 0xffffff80, 0x80ff8080, 320); 
TEST_R_OP( 81 , sunpkd820, 0x0000ff80, 0x80009b80, 324); 
TEST_R_OP( 82 , sunpkd820, 0xff800000, 0x72808000, 328); 
TEST_R_OP( 83 , sunpkd820, 0x0078ffcc, 0x807800cc, 332); 
TEST_R_OP( 84 , sunpkd820, 0xffff003a, 0xa9ff803a, 336); 
TEST_R_OP( 85 , sunpkd820, 0xff80ffff, 0xa480ffff, 340); 
TEST_R_OP( 86 , sunpkd820, 0xffff0000, 0x00ffff00, 344); 
TEST_R_OP( 87 , sunpkd820, 0xff800015, 0xff800015, 348); 
TEST_R_OP( 88 , sunpkd820, 0xffffffff, 0xffff80ff, 352); 
TEST_R_OP( 89 , sunpkd820, 0xff80ffff, 0x8080ffff, 356); 
TEST_R_OP( 90 , sunpkd820, 0x0062ffff, 0xff6280ff, 360); 
TEST_R_OP( 91 , sunpkd820, 0xffffffff, 0x80ff80ff, 364); 
TEST_R_OP( 92 , sunpkd820, 0x0000002f, 0x8000802f, 368); 
TEST_R_OP( 93 , sunpkd820, 0xff800000, 0xbd808000, 372); 
TEST_R_OP( 94 , sunpkd820, 0xff80ff80, 0x00808080, 376); 
TEST_R_OP( 95 , sunpkd820, 0xffbb0004, 0x00bb0004, 380); 
TEST_R_OP( 96 , sunpkd820, 0xff80ff80, 0x32801280, 384); 
TEST_R_OP( 97 , sunpkd820, 0xffff004e, 0x00ff804e, 388); 
TEST_R_OP( 98 , sunpkd820, 0xffffff80, 0x00ffff80, 392); 
TEST_R_OP( 99 , sunpkd820, 0xffc4ffff, 0xd2c400ff, 396); 
TEST_R_OP( 100 , sunpkd820, 0x0000ffff, 0xff00baff, 400); 
TEST_R_OP( 101 , sunpkd820, 0x000cff80, 0x800cff80, 404); 
TEST_R_OP( 102 , sunpkd820, 0x00000000, 0x80008000, 408); 
TEST_R_OP( 103 , sunpkd820, 0xffffff80, 0x00ff3580, 412); 
TEST_R_OP( 104 , sunpkd820, 0xff800000, 0xff808000, 416); 
TEST_R_OP( 105 , sunpkd820, 0x0038ffff, 0xb83880ff, 420); 
TEST_R_OP( 106 , sunpkd820, 0xff80ffff, 0x80806bff, 424); 
TEST_R_OP( 107 , sunpkd820, 0xff80ffff, 0xff8095ff, 428); 
TEST_R_OP( 108 , sunpkd820, 0xffffff80, 0x00ff0780, 432); 
TEST_R_OP( 109 , sunpkd820, 0xff80ff80, 0xff803080, 436); 
TEST_R_OP( 110 , sunpkd820, 0xffbe0000, 0xffbe9c00, 440); 
TEST_R_OP( 111 , sunpkd820, 0xffd3ffff, 0xf5d3ffff, 444); 
TEST_R_OP( 112 , sunpkd820, 0xffffffff, 0xfffff9ff, 448); 
TEST_R_OP( 113 , sunpkd820, 0xff80ff80, 0x00800080, 452); 
TEST_R_OP( 114 , sunpkd820, 0xff80ffff, 0xff80ffff, 456); 
TEST_R_OP( 115 , sunpkd820, 0xff80ffa5, 0xff8000a5, 460); 
TEST_R_OP( 116 , sunpkd820, 0xffff0000, 0x00fffe00, 464); 
TEST_R_OP( 117 , sunpkd820, 0xff80ff80, 0x00800080, 468); 
TEST_R_OP( 118 , sunpkd820, 0xffffffff, 0x00ff38ff, 472); 
TEST_R_OP( 119 , sunpkd820, 0xffffff88, 0x80ffff88, 476); 
TEST_R_OP( 120 , sunpkd820, 0x0000ffff, 0xfc00ffff, 480); 
TEST_R_OP( 121 , sunpkd820, 0xffffffff, 0x4cff66ff, 484); 
TEST_R_OP( 122 , sunpkd820, 0x0048ffff, 0x804800ff, 488); 
TEST_R_OP( 123 , sunpkd820, 0xff800000, 0xff804a00, 492); 
TEST_R_OP( 124 , sunpkd820, 0x0000ffa8, 0x000080a8, 496); 
TEST_R_OP( 125 , sunpkd820, 0xff80ffff, 0x808080ff, 500); 
TEST_R_OP( 126 , sunpkd820, 0xffffffff, 0xe2ff80ff, 504); 
TEST_R_OP( 127 , sunpkd820, 0x0000ffff, 0x0000ffff, 508); 
TEST_R_OP( 128 , sunpkd820, 0x0043ff80, 0x0043ff80, 512); 
TEST_R_OP( 129 , sunpkd820, 0xff80ffff, 0x2d8080ff, 516); 
TEST_R_OP( 130 , sunpkd820, 0x00000000, 0x9900ff00, 520); 
TEST_R_OP( 131 , sunpkd820, 0xff80ff80, 0x00808080, 524); 
TEST_R_OP( 132 , sunpkd820, 0x00650028, 0x4b650028, 528); 
TEST_R_OP( 133 , sunpkd820, 0xffff0042, 0x00ffff42, 532); 
TEST_R_OP( 134 , sunpkd820, 0xffffffff, 0xebffffff, 536); 
TEST_R_OP( 135 , sunpkd820, 0x00000000, 0xff000000, 540); 
TEST_R_OP( 136 , sunpkd820, 0xffffffff, 0x24ff80ff, 544); 
TEST_R_OP( 137 , sunpkd820, 0x001bffff, 0x001b00ff, 548); 
TEST_R_OP( 138 , sunpkd820, 0xff800000, 0xff808000, 552); 
TEST_R_OP( 139 , sunpkd820, 0xffaf0000, 0x80af0000, 556); 
TEST_R_OP( 140 , sunpkd820, 0xffffffff, 0xffffffff, 560); 
TEST_R_OP( 141 , sunpkd820, 0x0000ff80, 0xe2000080, 564); 
TEST_R_OP( 142 , sunpkd820, 0xff800000, 0x80808000, 568); 
TEST_R_OP( 143 , sunpkd820, 0x0000ffff, 0xff0080ff, 572); 
TEST_R_OP( 144 , sunpkd820, 0xffffffe5, 0xffffbde5, 576); 
TEST_R_OP( 145 , sunpkd820, 0x0075ffff, 0x7d75ffff, 580); 
TEST_R_OP( 146 , sunpkd820, 0xffff0006, 0x00ff8006, 584); 
TEST_R_OP( 147 , sunpkd820, 0x00000000, 0xff000000, 588); 
TEST_R_OP( 148 , sunpkd820, 0xfffaff94, 0x53fa8094, 592); 
TEST_R_OP( 149 , sunpkd820, 0xff80ff80, 0x8080fc80, 596); 
TEST_R_OP( 150 , sunpkd820, 0xff80ff80, 0x00808080, 600); 
TEST_R_OP( 151 , sunpkd820, 0xffffff80, 0xc4ffff80, 604); 
TEST_R_OP( 152 , sunpkd820, 0x0000ff80, 0x8000ff80, 608); 
TEST_R_OP( 153 , sunpkd820, 0xff80ff80, 0xff808080, 612); 
TEST_R_OP( 154 , sunpkd820, 0xffff0000, 0x80ffff00, 616); 
TEST_R_OP( 155 , sunpkd820, 0xffffff80, 0xffffff80, 620); 
TEST_R_OP( 156 , sunpkd820, 0xff80ffff, 0xff8000ff, 624); 
TEST_R_OP( 157 , sunpkd820, 0xffff0000, 0x80ff0e00, 628); 
TEST_R_OP( 158 , sunpkd820, 0xff80ffa5, 0x438014a5, 632); 
TEST_R_OP( 159 , sunpkd820, 0xff800000, 0xee800000, 636); 
TEST_R_OP( 160 , sunpkd820, 0xff800000, 0x80808000, 640); 
TEST_R_OP( 161 , sunpkd820, 0xff80fffe, 0x8f80fffe, 644); 
TEST_R_OP( 162 , sunpkd820, 0xffffffff, 0xfffffbff, 648); 
TEST_R_OP( 163 , sunpkd820, 0x00000000, 0x80008000, 652); 
TEST_R_OP( 164 , sunpkd820, 0x0000ff80, 0xe2008080, 656); 
TEST_R_OP( 165 , sunpkd820, 0x0000ff80, 0x0000ff80, 660); 
TEST_R_OP( 166 , sunpkd820, 0xffffffff, 0x00ff80ff, 664); 
TEST_R_OP( 167 , sunpkd820, 0xffffffea, 0x00ff00ea, 668); 
TEST_R_OP( 168 , sunpkd820, 0x0000ffff, 0xe400ffff, 672); 
TEST_R_OP( 169 , sunpkd820, 0x0000ff80, 0x0000ff80, 676); 
TEST_R_OP( 170 , sunpkd820, 0xff800062, 0x00808062, 680); 
TEST_R_OP( 171 , sunpkd820, 0x0000ffff, 0x0200c1ff, 684); 
TEST_R_OP( 172 , sunpkd820, 0xffff0070, 0xabff3b70, 688); 
TEST_R_OP( 173 , sunpkd820, 0x00000000, 0xff007c00, 692); 
TEST_R_OP( 174 , sunpkd820, 0x0000ff80, 0x80000080, 696); 
TEST_R_OP( 175 , sunpkd820, 0xff990000, 0x00990000, 700); 
TEST_R_OP( 176 , sunpkd820, 0xffff0050, 0x80ff0050, 704); 
TEST_R_OP( 177 , sunpkd820, 0xffffff80, 0x00ffff80, 708); 
TEST_R_OP( 178 , sunpkd820, 0xffceffff, 0x8bce80ff, 712); 
TEST_R_OP( 179 , sunpkd820, 0xffff0000, 0xffffff00, 716); 
TEST_R_OP( 180 , sunpkd820, 0xffffff80, 0x8bffff80, 720); 
TEST_R_OP( 181 , sunpkd820, 0x0000ffff, 0xff0000ff, 724); 
TEST_R_OP( 182 , sunpkd820, 0xff800000, 0x3e800000, 728); 
TEST_R_OP( 183 , sunpkd820, 0xff800059, 0x80800059, 732); 
TEST_R_OP( 184 , sunpkd820, 0xffffffff, 0x00ff00ff, 736); 
TEST_R_OP( 185 , sunpkd820, 0xffbb0000, 0xeabbc600, 740); 
TEST_R_OP( 186 , sunpkd820, 0x0037ff80, 0x00378080, 744); 
TEST_R_OP( 187 , sunpkd820, 0x0000ffcb, 0x030000cb, 748); 
TEST_R_OP( 188 , sunpkd820, 0xff80ffff, 0x808000ff, 752); 
TEST_R_OP( 189 , sunpkd820, 0xffff0000, 0x80ffa000, 756); 
TEST_R_OP( 190 , sunpkd820, 0x00000000, 0xff007300, 760); 
TEST_R_OP( 191 , sunpkd820, 0xffd5ff80, 0x1fd5ff80, 764); 
TEST_R_OP( 192 , sunpkd820, 0xff800000, 0x49800000, 768); 
TEST_R_OP( 193 , sunpkd820, 0x004d0000, 0x004d8000, 772); 
TEST_R_OP( 194 , sunpkd820, 0xff9aff80, 0x2b9a8080, 776); 
TEST_R_OP( 195 , sunpkd820, 0xff80ff80, 0x0080ff80, 780); 
TEST_R_OP( 196 , sunpkd820, 0xff800000, 0x80800000, 784); 
TEST_R_OP( 197 , sunpkd820, 0xff800000, 0xff800000, 788); 
TEST_R_OP( 198 , sunpkd820, 0x00000000, 0x4b004d00, 792); 
TEST_R_OP( 199 , sunpkd820, 0x00000000, 0x45008000, 796); 

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
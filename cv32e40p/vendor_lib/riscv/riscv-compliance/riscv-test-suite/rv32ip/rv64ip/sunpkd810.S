# See LICENSE for license details.
#*****************************************************************************
# sunpkd810.S
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

TEST_R_OP( 2 , sunpkd810, 0xff80fff2, 0x000080f2, 8); 
TEST_R_OP( 3 , sunpkd810, 0x0000ffff, 0x80ff00ff, 12); 
TEST_R_OP( 4 , sunpkd810, 0xffa5ff85, 0x8045a585, 16); 
TEST_R_OP( 5 , sunpkd810, 0x0000ffff, 0xffff00ff, 20); 
TEST_R_OP( 6 , sunpkd810, 0xffff0000, 0x80f3ff00, 24); 
TEST_R_OP( 7 , sunpkd810, 0x0000ff8a, 0xff80008a, 28); 
TEST_R_OP( 8 , sunpkd810, 0x0000ffff, 0xff1700ff, 32); 
TEST_R_OP( 9 , sunpkd810, 0x0000ff80, 0x00800080, 36); 
TEST_R_OP( 10 , sunpkd810, 0xff80ff80, 0xffff8080, 40); 
TEST_R_OP( 11 , sunpkd810, 0xff80ffed, 0xf3ab80ed, 44); 
TEST_R_OP( 12 , sunpkd810, 0xffffffff, 0x00ffffff, 48); 
TEST_R_OP( 13 , sunpkd810, 0xff80ffff, 0x000080ff, 52); 
TEST_R_OP( 14 , sunpkd810, 0xffffffff, 0x0080ffff, 56); 
TEST_R_OP( 15 , sunpkd810, 0xffb4ffff, 0xff0bb4ff, 60); 
TEST_R_OP( 16 , sunpkd810, 0xff80ffa3, 0xff0080a3, 64); 
TEST_R_OP( 17 , sunpkd810, 0xff80ffff, 0x000080ff, 68); 
TEST_R_OP( 18 , sunpkd810, 0x0005ffff, 0x00ff05ff, 72); 
TEST_R_OP( 19 , sunpkd810, 0xffcbffff, 0x8000cbff, 76); 
TEST_R_OP( 20 , sunpkd810, 0xffffffff, 0xff80ffff, 80); 
TEST_R_OP( 21 , sunpkd810, 0xff80ffff, 0x80ff80ff, 84); 
TEST_R_OP( 22 , sunpkd810, 0xffff0000, 0xff80ff00, 88); 
TEST_R_OP( 23 , sunpkd810, 0xff80fff1, 0x008080f1, 92); 
TEST_R_OP( 24 , sunpkd810, 0x004dffc3, 0x800d4dc3, 96); 
TEST_R_OP( 25 , sunpkd810, 0xffff0000, 0x8000ff00, 100); 
TEST_R_OP( 26 , sunpkd810, 0xff80ff80, 0x80008080, 104); 
TEST_R_OP( 27 , sunpkd810, 0x0000ff80, 0xffff0080, 108); 
TEST_R_OP( 28 , sunpkd810, 0x0000ffff, 0xff8000ff, 112); 
TEST_R_OP( 29 , sunpkd810, 0xffff0000, 0x00ffff00, 116); 
TEST_R_OP( 30 , sunpkd810, 0xff80ffff, 0xa67680ff, 120); 
TEST_R_OP( 31 , sunpkd810, 0x00000000, 0xc2000000, 124); 
TEST_R_OP( 32 , sunpkd810, 0x00000000, 0x7a000000, 128); 
TEST_R_OP( 33 , sunpkd810, 0x0009ff80, 0x00800980, 132); 
TEST_R_OP( 34 , sunpkd810, 0xff80ffff, 0xff8e80ff, 136); 
TEST_R_OP( 35 , sunpkd810, 0xffffff80, 0xbeffff80, 140); 
TEST_R_OP( 36 , sunpkd810, 0xff80ff80, 0x00ff8080, 144); 
TEST_R_OP( 37 , sunpkd810, 0xffffffff, 0x8000ffff, 148); 
TEST_R_OP( 38 , sunpkd810, 0xff80ff80, 0xff808080, 152); 
TEST_R_OP( 39 , sunpkd810, 0xff80ffff, 0x000080ff, 156); 
TEST_R_OP( 40 , sunpkd810, 0xff800029, 0xff008029, 160); 
TEST_R_OP( 41 , sunpkd810, 0xffff0000, 0x0000ff00, 164); 
TEST_R_OP( 42 , sunpkd810, 0xff80ffff, 0x008080ff, 168); 
TEST_R_OP( 43 , sunpkd810, 0x0000ffff, 0x008000ff, 172); 
TEST_R_OP( 44 , sunpkd810, 0x002c004b, 0xff802c4b, 176); 
TEST_R_OP( 45 , sunpkd810, 0x00000000, 0x80800000, 180); 
TEST_R_OP( 46 , sunpkd810, 0xffff0000, 0x9dffff00, 184); 
TEST_R_OP( 47 , sunpkd810, 0xffffff80, 0x8780ff80, 188); 
TEST_R_OP( 48 , sunpkd810, 0xff80ff80, 0xeb738080, 192); 
TEST_R_OP( 49 , sunpkd810, 0x0000ff80, 0x80ff0080, 196); 
TEST_R_OP( 50 , sunpkd810, 0x0000ff80, 0x80ff0080, 200); 
TEST_R_OP( 51 , sunpkd810, 0xff800000, 0xffff8000, 204); 
TEST_R_OP( 52 , sunpkd810, 0x00000000, 0xff000000, 208); 
TEST_R_OP( 53 , sunpkd810, 0xffffffff, 0x00bbffff, 212); 
TEST_R_OP( 54 , sunpkd810, 0x00000014, 0xff000014, 216); 
TEST_R_OP( 55 , sunpkd810, 0xffdeffff, 0xff80deff, 220); 
TEST_R_OP( 56 , sunpkd810, 0x002efff1, 0xffff2ef1, 224); 
TEST_R_OP( 57 , sunpkd810, 0xffffff80, 0xff00ff80, 228); 
TEST_R_OP( 58 , sunpkd810, 0x0000ff80, 0xffff0080, 232); 
TEST_R_OP( 59 , sunpkd810, 0x0000ffff, 0x000000ff, 236); 
TEST_R_OP( 60 , sunpkd810, 0x00600075, 0x00006075, 240); 
TEST_R_OP( 61 , sunpkd810, 0xffffff80, 0xff00ff80, 244); 
TEST_R_OP( 62 , sunpkd810, 0xffff0000, 0x80ffff00, 248); 
TEST_R_OP( 63 , sunpkd810, 0xffccffb2, 0x0000ccb2, 252); 
TEST_R_OP( 64 , sunpkd810, 0x0000ffff, 0x000000ff, 256); 
TEST_R_OP( 65 , sunpkd810, 0xffffffff, 0xff00ffff, 260); 
TEST_R_OP( 66 , sunpkd810, 0x0000ff80, 0x02000080, 264); 
TEST_R_OP( 67 , sunpkd810, 0xff800064, 0x00ff8064, 268); 
TEST_R_OP( 68 , sunpkd810, 0xffa80013, 0x8080a813, 272); 
TEST_R_OP( 69 , sunpkd810, 0x0000ffff, 0x00ff00ff, 276); 
TEST_R_OP( 70 , sunpkd810, 0xff80ffff, 0x000080ff, 280); 
TEST_R_OP( 71 , sunpkd810, 0xff80ff80, 0xff008080, 284); 
TEST_R_OP( 72 , sunpkd810, 0xff800022, 0xff808022, 288); 
TEST_R_OP( 73 , sunpkd810, 0x0000ff80, 0xff000080, 292); 
TEST_R_OP( 74 , sunpkd810, 0x00000000, 0xff000000, 296); 
TEST_R_OP( 75 , sunpkd810, 0x0000ffb5, 0xff0000b5, 300); 
TEST_R_OP( 76 , sunpkd810, 0xffffff80, 0xffc3ff80, 304); 
TEST_R_OP( 77 , sunpkd810, 0xffff0000, 0x80ffff00, 308); 
TEST_R_OP( 78 , sunpkd810, 0xff85ff80, 0xff808580, 312); 
TEST_R_OP( 79 , sunpkd810, 0xffffffff, 0x00ffffff, 316); 
TEST_R_OP( 80 , sunpkd810, 0xff800067, 0xffff8067, 320); 
TEST_R_OP( 81 , sunpkd810, 0x00000000, 0x80460000, 324); 
TEST_R_OP( 82 , sunpkd810, 0xffff0000, 0x8000ff00, 328); 
TEST_R_OP( 83 , sunpkd810, 0xffffffa9, 0xa700ffa9, 332); 
TEST_R_OP( 84 , sunpkd810, 0x0000ff80, 0xcc800080, 336); 
TEST_R_OP( 85 , sunpkd810, 0xffffffff, 0x00ffffff, 340); 
TEST_R_OP( 86 , sunpkd810, 0x00000000, 0xd6ff0000, 344); 
TEST_R_OP( 87 , sunpkd810, 0xffff0031, 0xff00ff31, 348); 
TEST_R_OP( 88 , sunpkd810, 0xffffffeb, 0x4c71ffeb, 352); 
TEST_R_OP( 89 , sunpkd810, 0x0000ff80, 0x80800080, 356); 
TEST_R_OP( 90 , sunpkd810, 0xff800000, 0xf0ff8000, 360); 
TEST_R_OP( 91 , sunpkd810, 0x0000ff80, 0x80000080, 364); 
TEST_R_OP( 92 , sunpkd810, 0xff80ffff, 0x000080ff, 368); 
TEST_R_OP( 93 , sunpkd810, 0xff80003e, 0xff85803e, 372); 
TEST_R_OP( 94 , sunpkd810, 0x0067ff80, 0x00ff6780, 376); 
TEST_R_OP( 95 , sunpkd810, 0xffffffff, 0x1d80ffff, 380); 
TEST_R_OP( 96 , sunpkd810, 0x0000ff80, 0x80800080, 384); 
TEST_R_OP( 97 , sunpkd810, 0xff800000, 0x00ff8000, 388); 
TEST_R_OP( 98 , sunpkd810, 0xff80fffd, 0x008080fd, 392); 
TEST_R_OP( 99 , sunpkd810, 0xffffffff, 0x0080ffff, 396); 
TEST_R_OP( 100 , sunpkd810, 0x0000ffd4, 0xff8000d4, 400); 
TEST_R_OP( 101 , sunpkd810, 0x00230000, 0xffff2300, 404); 
TEST_R_OP( 102 , sunpkd810, 0xff80ff80, 0x00008080, 408); 
TEST_R_OP( 103 , sunpkd810, 0x0000006e, 0x5200006e, 412); 
TEST_R_OP( 104 , sunpkd810, 0xff80ffff, 0x808080ff, 416); 
TEST_R_OP( 105 , sunpkd810, 0xffffffff, 0x00deffff, 420); 
TEST_R_OP( 106 , sunpkd810, 0xffc0002d, 0xff00c02d, 424); 
TEST_R_OP( 107 , sunpkd810, 0xff800000, 0x80228000, 428); 
TEST_R_OP( 108 , sunpkd810, 0x0000ffff, 0x007c00ff, 432); 
TEST_R_OP( 109 , sunpkd810, 0x00750000, 0xff007500, 436); 
TEST_R_OP( 110 , sunpkd810, 0xff80ffcc, 0x80ff80cc, 440); 
TEST_R_OP( 111 , sunpkd810, 0x0045005e, 0xff80455e, 444); 
TEST_R_OP( 112 , sunpkd810, 0x0000ff85, 0xff800085, 448); 
TEST_R_OP( 113 , sunpkd810, 0xff800000, 0x80808000, 452); 
TEST_R_OP( 114 , sunpkd810, 0x0000ffff, 0xffc000ff, 456); 
TEST_R_OP( 115 , sunpkd810, 0xff9effff, 0x80ff9eff, 460); 
TEST_R_OP( 116 , sunpkd810, 0x0060ffff, 0x996a60ff, 464); 
TEST_R_OP( 117 , sunpkd810, 0xffffffff, 0x0000ffff, 468); 
TEST_R_OP( 118 , sunpkd810, 0xfff80000, 0x4500f800, 472); 
TEST_R_OP( 119 , sunpkd810, 0xffffff80, 0xdbffff80, 476); 
TEST_R_OP( 120 , sunpkd810, 0xffffff80, 0x80deff80, 480); 
TEST_R_OP( 121 , sunpkd810, 0x00000000, 0xff800000, 484); 
TEST_R_OP( 122 , sunpkd810, 0xffd6ff80, 0xff00d680, 488); 
TEST_R_OP( 123 , sunpkd810, 0xff80ffcc, 0x800080cc, 492); 
TEST_R_OP( 124 , sunpkd810, 0x0000ffff, 0x808000ff, 496); 
TEST_R_OP( 125 , sunpkd810, 0xffe40000, 0x16ffe400, 500); 
TEST_R_OP( 126 , sunpkd810, 0x00000000, 0x80800000, 504); 
TEST_R_OP( 127 , sunpkd810, 0x00000000, 0x807d0000, 508); 
TEST_R_OP( 128 , sunpkd810, 0x0012ffff, 0x50ff12ff, 512); 
TEST_R_OP( 129 , sunpkd810, 0x00000000, 0x80000000, 516); 
TEST_R_OP( 130 , sunpkd810, 0x0011ff80, 0xff001180, 520); 
TEST_R_OP( 131 , sunpkd810, 0xffff003a, 0x8800ff3a, 524); 
TEST_R_OP( 132 , sunpkd810, 0xff800000, 0xfffc8000, 528); 
TEST_R_OP( 133 , sunpkd810, 0x0000ffff, 0xff8000ff, 532); 
TEST_R_OP( 134 , sunpkd810, 0xff80ff80, 0xcd008080, 536); 
TEST_R_OP( 135 , sunpkd810, 0xff80ffff, 0x000080ff, 540); 
TEST_R_OP( 136 , sunpkd810, 0xfff8ffff, 0xfffff8ff, 544); 
TEST_R_OP( 137 , sunpkd810, 0x0000ffff, 0x800000ff, 548); 
TEST_R_OP( 138 , sunpkd810, 0x00000026, 0x80ff0026, 552); 
TEST_R_OP( 139 , sunpkd810, 0x00000000, 0x80ff0000, 556); 
TEST_R_OP( 140 , sunpkd810, 0xff800060, 0x00ff8060, 560); 
TEST_R_OP( 141 , sunpkd810, 0xff800000, 0x00808000, 564); 
TEST_R_OP( 142 , sunpkd810, 0x007d0000, 0xffff7d00, 568); 
TEST_R_OP( 143 , sunpkd810, 0xff800079, 0x00808079, 572); 
TEST_R_OP( 144 , sunpkd810, 0xffffffff, 0x8000ffff, 576); 
TEST_R_OP( 145 , sunpkd810, 0xff80003f, 0xf880803f, 580); 
TEST_R_OP( 146 , sunpkd810, 0x000dffff, 0x89000dff, 584); 
TEST_R_OP( 147 , sunpkd810, 0x001d003c, 0xff5a1d3c, 588); 
TEST_R_OP( 148 , sunpkd810, 0x00000000, 0xff000000, 592); 
TEST_R_OP( 149 , sunpkd810, 0xff80ffff, 0x060080ff, 596); 
TEST_R_OP( 150 , sunpkd810, 0xff800014, 0xffff8014, 600); 
TEST_R_OP( 151 , sunpkd810, 0xffffff80, 0xff00ff80, 604); 
TEST_R_OP( 152 , sunpkd810, 0xff800000, 0x80ff8000, 608); 
TEST_R_OP( 153 , sunpkd810, 0xff80ff80, 0x80808080, 612); 
TEST_R_OP( 154 , sunpkd810, 0xffff006f, 0x8080ff6f, 616); 
TEST_R_OP( 155 , sunpkd810, 0xffffffff, 0xffffffff, 620); 
TEST_R_OP( 156 , sunpkd810, 0xffffff80, 0x0080ff80, 624); 
TEST_R_OP( 157 , sunpkd810, 0x0000ffc9, 0x6ab700c9, 628); 
TEST_R_OP( 158 , sunpkd810, 0xffff0000, 0xffffff00, 632); 
TEST_R_OP( 159 , sunpkd810, 0xff80ff80, 0x00808080, 636); 
TEST_R_OP( 160 , sunpkd810, 0x0000003a, 0xff46003a, 640); 
TEST_R_OP( 161 , sunpkd810, 0xff80ff89, 0x00808089, 644); 
TEST_R_OP( 162 , sunpkd810, 0xffffffd5, 0x0000ffd5, 648); 
TEST_R_OP( 163 , sunpkd810, 0x0000ffff, 0xbbff00ff, 652); 
TEST_R_OP( 164 , sunpkd810, 0xff800000, 0xda808000, 656); 
TEST_R_OP( 165 , sunpkd810, 0xff80ff80, 0xff008080, 660); 
TEST_R_OP( 166 , sunpkd810, 0xff80ffff, 0xff4580ff, 664); 
TEST_R_OP( 167 , sunpkd810, 0x00330000, 0xaa003300, 668); 
TEST_R_OP( 168 , sunpkd810, 0xffc50000, 0xff80c500, 672); 
TEST_R_OP( 169 , sunpkd810, 0x005aff80, 0xf2805a80, 676); 
TEST_R_OP( 170 , sunpkd810, 0xff80007a, 0xffff807a, 680); 
TEST_R_OP( 171 , sunpkd810, 0x00000000, 0xffff0000, 684); 
TEST_R_OP( 172 , sunpkd810, 0x0000ff80, 0x00800080, 688); 
TEST_R_OP( 173 , sunpkd810, 0xffb6ff80, 0xffffb680, 692); 
TEST_R_OP( 174 , sunpkd810, 0x00000000, 0x80ff0000, 696); 
TEST_R_OP( 175 , sunpkd810, 0xffb8ff80, 0xff00b880, 700); 
TEST_R_OP( 176 , sunpkd810, 0x004f0000, 0x80ff4f00, 704); 
TEST_R_OP( 177 , sunpkd810, 0xfff4ff80, 0x80baf480, 708); 
TEST_R_OP( 178 , sunpkd810, 0x003cffff, 0xffff3cff, 712); 
TEST_R_OP( 179 , sunpkd810, 0x00000000, 0xba000000, 716); 
TEST_R_OP( 180 , sunpkd810, 0x0000000b, 0x80ff000b, 720); 
TEST_R_OP( 181 , sunpkd810, 0x00040015, 0x80000415, 724); 
TEST_R_OP( 182 , sunpkd810, 0xff80ffff, 0x800080ff, 728); 
TEST_R_OP( 183 , sunpkd810, 0x0000ff80, 0x00000080, 732); 
TEST_R_OP( 184 , sunpkd810, 0xffffffff, 0xe7ffffff, 736); 
TEST_R_OP( 185 , sunpkd810, 0xff80ffbe, 0x80ff80be, 740); 
TEST_R_OP( 186 , sunpkd810, 0xff80ff80, 0x35008080, 744); 
TEST_R_OP( 187 , sunpkd810, 0xff80ffff, 0xba8080ff, 748); 
TEST_R_OP( 188 , sunpkd810, 0x0000ffa6, 0x804500a6, 752); 
TEST_R_OP( 189 , sunpkd810, 0xffdb0000, 0x8080db00, 756); 
TEST_R_OP( 190 , sunpkd810, 0xff800000, 0x00808000, 760); 
TEST_R_OP( 191 , sunpkd810, 0xffffff80, 0x00ffff80, 764); 
TEST_R_OP( 192 , sunpkd810, 0x00000000, 0x80ac0000, 768); 
TEST_R_OP( 193 , sunpkd810, 0x0000ff80, 0xd3800080, 772); 
TEST_R_OP( 194 , sunpkd810, 0xff80ff80, 0x80ff8080, 776); 
TEST_R_OP( 195 , sunpkd810, 0xffaeff80, 0x0080ae80, 780); 
TEST_R_OP( 196 , sunpkd810, 0x0000ff80, 0x80800080, 784); 
TEST_R_OP( 197 , sunpkd810, 0xffefffff, 0x80ffefff, 788); 
TEST_R_OP( 198 , sunpkd810, 0xffffff80, 0x00ffff80, 792); 
TEST_R_OP( 199 , sunpkd810, 0xff800016, 0x44808016, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# sunpkd832.S
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

TEST_R_OP( 2 , sunpkd832, 0x0000ff80, 0x00800000, 8); 
TEST_R_OP( 3 , sunpkd832, 0xff80ff80, 0x808000ff, 12); 
TEST_R_OP( 4 , sunpkd832, 0xffffff80, 0xff80ff00, 16); 
TEST_R_OP( 5 , sunpkd832, 0x0000ffa2, 0x00a20080, 20); 
TEST_R_OP( 6 , sunpkd832, 0xff80ffd9, 0x80d9df00, 24); 
TEST_R_OP( 7 , sunpkd832, 0x001c0030, 0x1c30ffbd, 28); 
TEST_R_OP( 8 , sunpkd832, 0xffec0000, 0xec00ffff, 32); 
TEST_R_OP( 9 , sunpkd832, 0xffffff80, 0xff800080, 36); 
TEST_R_OP( 10 , sunpkd832, 0xffffffff, 0xffffffeb, 40); 
TEST_R_OP( 11 , sunpkd832, 0xff80ff80, 0x808000ff, 44); 
TEST_R_OP( 12 , sunpkd832, 0xff800000, 0x80008080, 48); 
TEST_R_OP( 13 , sunpkd832, 0x0054ffff, 0x54ffffff, 52); 
TEST_R_OP( 14 , sunpkd832, 0xff80ffdf, 0x80df00ff, 56); 
TEST_R_OP( 15 , sunpkd832, 0x002fff80, 0x2f80ff80, 60); 
TEST_R_OP( 16 , sunpkd832, 0x00000000, 0x0000ff00, 64); 
TEST_R_OP( 17 , sunpkd832, 0xffffff88, 0xff8800ff, 68); 
TEST_R_OP( 18 , sunpkd832, 0xff80ffd0, 0x80d000ff, 72); 
TEST_R_OP( 19 , sunpkd832, 0xffffff80, 0xff804400, 76); 
TEST_R_OP( 20 , sunpkd832, 0xff80ff80, 0x8080b800, 80); 
TEST_R_OP( 21 , sunpkd832, 0x0000003a, 0x003a0080, 84); 
TEST_R_OP( 22 , sunpkd832, 0x00000000, 0x00002800, 88); 
TEST_R_OP( 23 , sunpkd832, 0xffd3003b, 0xd33bff00, 92); 
TEST_R_OP( 24 , sunpkd832, 0xffffff80, 0xff80ffff, 96); 
TEST_R_OP( 25 , sunpkd832, 0xffffffdb, 0xffdb80ff, 100); 
TEST_R_OP( 26 , sunpkd832, 0x0000ff85, 0x00850067, 104); 
TEST_R_OP( 27 , sunpkd832, 0x00000000, 0x00007c80, 108); 
TEST_R_OP( 28 , sunpkd832, 0xffff0000, 0xff0080d9, 112); 
TEST_R_OP( 29 , sunpkd832, 0xff80ff80, 0x80800074, 116); 
TEST_R_OP( 30 , sunpkd832, 0xffffffbb, 0xffbbffff, 120); 
TEST_R_OP( 31 , sunpkd832, 0x0000ff80, 0x0080ffff, 124); 
TEST_R_OP( 32 , sunpkd832, 0xffffffeb, 0xffebf8a7, 128); 
TEST_R_OP( 33 , sunpkd832, 0xffffffcb, 0xffcb0000, 132); 
TEST_R_OP( 34 , sunpkd832, 0x000c001d, 0x0c1dbd62, 136); 
TEST_R_OP( 35 , sunpkd832, 0x0000ffff, 0x00ff1980, 140); 
TEST_R_OP( 36 , sunpkd832, 0xff80ffa3, 0x80a30036, 144); 
TEST_R_OP( 37 , sunpkd832, 0xffeb004f, 0xeb4f0080, 148); 
TEST_R_OP( 38 , sunpkd832, 0xff80ffff, 0x80ffffa5, 152); 
TEST_R_OP( 39 , sunpkd832, 0x0061ff9f, 0x619f0071, 156); 
TEST_R_OP( 40 , sunpkd832, 0xffafffff, 0xafff807b, 160); 
TEST_R_OP( 41 , sunpkd832, 0x0000ffa1, 0x00a180ff, 164); 
TEST_R_OP( 42 , sunpkd832, 0xffff0024, 0xff248080, 168); 
TEST_R_OP( 43 , sunpkd832, 0x0000ffff, 0x00ff1cff, 172); 
TEST_R_OP( 44 , sunpkd832, 0xffff0000, 0xff00ffff, 176); 
TEST_R_OP( 45 , sunpkd832, 0x00000016, 0x00160080, 180); 
TEST_R_OP( 46 , sunpkd832, 0xff80005d, 0x805d80ff, 184); 
TEST_R_OP( 47 , sunpkd832, 0x00000027, 0x00278021, 188); 
TEST_R_OP( 48 , sunpkd832, 0xffff0066, 0xff66ff60, 192); 
TEST_R_OP( 49 , sunpkd832, 0xff80ff80, 0x80808000, 196); 
TEST_R_OP( 50 , sunpkd832, 0x0024ffff, 0x24ffff00, 200); 
TEST_R_OP( 51 , sunpkd832, 0xff80ffff, 0x80ff02ff, 204); 
TEST_R_OP( 52 , sunpkd832, 0x0000ffff, 0x00ff80e6, 208); 
TEST_R_OP( 53 , sunpkd832, 0xffe50000, 0xe500b100, 212); 
TEST_R_OP( 54 , sunpkd832, 0xff80ffff, 0x80ff090b, 216); 
TEST_R_OP( 55 , sunpkd832, 0x00520000, 0x5200ff00, 220); 
TEST_R_OP( 56 , sunpkd832, 0x006dffff, 0x6dff00f4, 224); 
TEST_R_OP( 57 , sunpkd832, 0xffffffff, 0xffffa280, 228); 
TEST_R_OP( 58 , sunpkd832, 0x0000ffff, 0x00ffff00, 232); 
TEST_R_OP( 59 , sunpkd832, 0xffcbfffa, 0xcbfa8061, 236); 
TEST_R_OP( 60 , sunpkd832, 0xffffff80, 0xff808000, 240); 
TEST_R_OP( 61 , sunpkd832, 0x0000ff86, 0x0086c4ff, 244); 
TEST_R_OP( 62 , sunpkd832, 0xffffffff, 0xffff8080, 248); 
TEST_R_OP( 63 , sunpkd832, 0x00700064, 0x7064809b, 252); 
TEST_R_OP( 64 , sunpkd832, 0xffb70000, 0xb7000080, 256); 
TEST_R_OP( 65 , sunpkd832, 0xff80ff80, 0x8080ffff, 260); 
TEST_R_OP( 66 , sunpkd832, 0xffffffff, 0xffff0080, 264); 
TEST_R_OP( 67 , sunpkd832, 0xff800000, 0x800000ff, 268); 
TEST_R_OP( 68 , sunpkd832, 0xfffdffff, 0xfdff0000, 272); 
TEST_R_OP( 69 , sunpkd832, 0x0000ffff, 0x00ff80a8, 276); 
TEST_R_OP( 70 , sunpkd832, 0x0000ff80, 0x00805b00, 280); 
TEST_R_OP( 71 , sunpkd832, 0xffffff80, 0xff8000ff, 284); 
TEST_R_OP( 72 , sunpkd832, 0x0077ffe6, 0x77e67180, 288); 
TEST_R_OP( 73 , sunpkd832, 0xffffffff, 0xffff0080, 292); 
TEST_R_OP( 74 , sunpkd832, 0xffffff80, 0xff80f3ff, 296); 
TEST_R_OP( 75 , sunpkd832, 0xffff0000, 0xff008080, 300); 
TEST_R_OP( 76 , sunpkd832, 0xff80ffff, 0x80ff9980, 304); 
TEST_R_OP( 77 , sunpkd832, 0xff80ffff, 0x80ff00ff, 308); 
TEST_R_OP( 78 , sunpkd832, 0xffffffff, 0xffffffff, 312); 
TEST_R_OP( 79 , sunpkd832, 0x00000000, 0x00008000, 316); 
TEST_R_OP( 80 , sunpkd832, 0x0000ffff, 0x00ff0000, 320); 
TEST_R_OP( 81 , sunpkd832, 0xff80ff80, 0x8080e4ff, 324); 
TEST_R_OP( 82 , sunpkd832, 0xffc40000, 0xc400ff9b, 328); 
TEST_R_OP( 83 , sunpkd832, 0xffffffa0, 0xffa080ff, 332); 
TEST_R_OP( 84 , sunpkd832, 0xff80ff80, 0x80800080, 336); 
TEST_R_OP( 85 , sunpkd832, 0x00000000, 0x0000ffff, 340); 
TEST_R_OP( 86 , sunpkd832, 0xff80ffff, 0x80ff0000, 344); 
TEST_R_OP( 87 , sunpkd832, 0xffff006e, 0xff6e5680, 348); 
TEST_R_OP( 88 , sunpkd832, 0xff800000, 0x8000ffff, 352); 
TEST_R_OP( 89 , sunpkd832, 0xffffffd0, 0xffd080ff, 356); 
TEST_R_OP( 90 , sunpkd832, 0x0000ffff, 0x00ffa6ff, 360); 
TEST_R_OP( 91 , sunpkd832, 0xffffff80, 0xff800080, 364); 
TEST_R_OP( 92 , sunpkd832, 0xffcaff80, 0xca800000, 368); 
TEST_R_OP( 93 , sunpkd832, 0x0000fff5, 0x00f50c95, 372); 
TEST_R_OP( 94 , sunpkd832, 0xffff0000, 0xff00a780, 376); 
TEST_R_OP( 95 , sunpkd832, 0xffffffff, 0xffff8000, 380); 
TEST_R_OP( 96 , sunpkd832, 0xffffff80, 0xff80ffd8, 384); 
TEST_R_OP( 97 , sunpkd832, 0xffff0000, 0xff00ff00, 388); 
TEST_R_OP( 98 , sunpkd832, 0xff80ffff, 0x80ffa180, 392); 
TEST_R_OP( 99 , sunpkd832, 0x0000ffff, 0x00ff75ff, 396); 
TEST_R_OP( 100 , sunpkd832, 0xffb1ff80, 0xb1800000, 400); 
TEST_R_OP( 101 , sunpkd832, 0xff80ffe8, 0x80e8ff80, 404); 
TEST_R_OP( 102 , sunpkd832, 0xff800000, 0x800000cb, 408); 
TEST_R_OP( 103 , sunpkd832, 0xffffffff, 0xffffffff, 412); 
TEST_R_OP( 104 , sunpkd832, 0xffffff80, 0xff801c00, 416); 
TEST_R_OP( 105 , sunpkd832, 0x00000000, 0x00003dcd, 420); 
TEST_R_OP( 106 , sunpkd832, 0xff82ffff, 0x82ffff34, 424); 
TEST_R_OP( 107 , sunpkd832, 0x00170000, 0x17002e00, 428); 
TEST_R_OP( 108 , sunpkd832, 0xffff0000, 0xff00ffff, 432); 
TEST_R_OP( 109 , sunpkd832, 0xffff0000, 0xff00c1df, 436); 
TEST_R_OP( 110 , sunpkd832, 0xffffff80, 0xff808000, 440); 
TEST_R_OP( 111 , sunpkd832, 0x00770000, 0x770080ff, 444); 
TEST_R_OP( 112 , sunpkd832, 0xff80ff80, 0x808000ff, 448); 
TEST_R_OP( 113 , sunpkd832, 0x0000ff80, 0x00808000, 452); 
TEST_R_OP( 114 , sunpkd832, 0xffb9ffff, 0xb9ff00ff, 456); 
TEST_R_OP( 115 , sunpkd832, 0xffeeffff, 0xeeffff0f, 460); 
TEST_R_OP( 116 , sunpkd832, 0xffffff80, 0xff80ffff, 464); 
TEST_R_OP( 117 , sunpkd832, 0xffa9ff80, 0xa980c080, 468); 
TEST_R_OP( 118 , sunpkd832, 0xffffffc1, 0xffc1ffff, 472); 
TEST_R_OP( 119 , sunpkd832, 0xffffff80, 0xff80ffac, 476); 
TEST_R_OP( 120 , sunpkd832, 0xffff006f, 0xff6f0080, 480); 
TEST_R_OP( 121 , sunpkd832, 0xff80ff80, 0x80803857, 484); 
TEST_R_OP( 122 , sunpkd832, 0xff80ff80, 0x80800026, 488); 
TEST_R_OP( 123 , sunpkd832, 0x00000000, 0x0000ffca, 492); 
TEST_R_OP( 124 , sunpkd832, 0xffff000f, 0xff0f8000, 496); 
TEST_R_OP( 125 , sunpkd832, 0xffffff80, 0xff80d100, 500); 
TEST_R_OP( 126 , sunpkd832, 0x0000ffff, 0x00ffff00, 504); 
TEST_R_OP( 127 , sunpkd832, 0x0000ffbf, 0x00bf80ff, 508); 
TEST_R_OP( 128 , sunpkd832, 0xff800000, 0x80008080, 512); 
TEST_R_OP( 129 , sunpkd832, 0x0065ff80, 0x65800000, 516); 
TEST_R_OP( 130 , sunpkd832, 0x007dffff, 0x7dff8079, 520); 
TEST_R_OP( 131 , sunpkd832, 0x001a0000, 0x1a001200, 524); 
TEST_R_OP( 132 , sunpkd832, 0xff800000, 0x8000ff80, 528); 
TEST_R_OP( 133 , sunpkd832, 0xff800000, 0x80006d00, 532); 
TEST_R_OP( 134 , sunpkd832, 0x0000ffff, 0x00ff9270, 536); 
TEST_R_OP( 135 , sunpkd832, 0xffffffff, 0xffff80b3, 540); 
TEST_R_OP( 136 , sunpkd832, 0xff80ffff, 0x80ff8080, 544); 
TEST_R_OP( 137 , sunpkd832, 0x0000ff80, 0x00808000, 548); 
TEST_R_OP( 138 , sunpkd832, 0x0000ffff, 0x00ff25ff, 552); 
TEST_R_OP( 139 , sunpkd832, 0x0000ffff, 0x00ffd880, 556); 
TEST_R_OP( 140 , sunpkd832, 0xff80ffe5, 0x80e500ff, 560); 
TEST_R_OP( 141 , sunpkd832, 0xffffffff, 0xffff80b4, 564); 
TEST_R_OP( 142 , sunpkd832, 0xff800000, 0x800080ff, 568); 
TEST_R_OP( 143 , sunpkd832, 0xffffffff, 0xffff0000, 572); 
TEST_R_OP( 144 , sunpkd832, 0xff80ff80, 0x80808080, 576); 
TEST_R_OP( 145 , sunpkd832, 0x0000ffff, 0x00ffff00, 580); 
TEST_R_OP( 146 , sunpkd832, 0xff800035, 0x80350000, 584); 
TEST_R_OP( 147 , sunpkd832, 0xffffff80, 0xff806900, 588); 
TEST_R_OP( 148 , sunpkd832, 0xffff0057, 0xff57ff80, 592); 
TEST_R_OP( 149 , sunpkd832, 0xffffffaf, 0xffafa180, 596); 
TEST_R_OP( 150 , sunpkd832, 0x0035ff80, 0x3580ff04, 600); 
TEST_R_OP( 151 , sunpkd832, 0x0016ff80, 0x168080ff, 604); 
TEST_R_OP( 152 , sunpkd832, 0xff80004b, 0x804bff4d, 608); 
TEST_R_OP( 153 , sunpkd832, 0x004fff80, 0x4f80ff39, 612); 
TEST_R_OP( 154 , sunpkd832, 0xff80ff80, 0x80800000, 616); 
TEST_R_OP( 155 , sunpkd832, 0x00000000, 0x0000ffff, 620); 
TEST_R_OP( 156 , sunpkd832, 0xffffffff, 0xffffff70, 624); 
TEST_R_OP( 157 , sunpkd832, 0xff80ffff, 0x80ffa4ff, 628); 
TEST_R_OP( 158 , sunpkd832, 0x0000ffff, 0x00ffd3ff, 632); 
TEST_R_OP( 159 , sunpkd832, 0xffa40000, 0xa400ffff, 636); 
TEST_R_OP( 160 , sunpkd832, 0xff80005d, 0x805d15ff, 640); 
TEST_R_OP( 161 , sunpkd832, 0xffffff80, 0xff8000ff, 644); 
TEST_R_OP( 162 , sunpkd832, 0xff800057, 0x80576eff, 648); 
TEST_R_OP( 163 , sunpkd832, 0x0000fff7, 0x00f78000, 652); 
TEST_R_OP( 164 , sunpkd832, 0xff80ffff, 0x80ff80db, 656); 
TEST_R_OP( 165 , sunpkd832, 0xff800000, 0x80005500, 660); 
TEST_R_OP( 166 , sunpkd832, 0xff83ff80, 0x8380ff1c, 664); 
TEST_R_OP( 167 , sunpkd832, 0xff80ffff, 0x80ffff80, 668); 
TEST_R_OP( 168 , sunpkd832, 0x0000ffbe, 0x00be8080, 672); 
TEST_R_OP( 169 , sunpkd832, 0x00460000, 0x4600ff41, 676); 
TEST_R_OP( 170 , sunpkd832, 0xff80ffff, 0x80ff8080, 680); 
TEST_R_OP( 171 , sunpkd832, 0xffffff80, 0xff80ff00, 684); 
TEST_R_OP( 172 , sunpkd832, 0x0000ff80, 0x0080d5f9, 688); 
TEST_R_OP( 173 , sunpkd832, 0xffb4ff80, 0xb4800000, 692); 
TEST_R_OP( 174 , sunpkd832, 0x00000030, 0x00308000, 696); 
TEST_R_OP( 175 , sunpkd832, 0x0000ffff, 0x00ffffff, 700); 
TEST_R_OP( 176 , sunpkd832, 0xfff3ffff, 0xf3ff80b6, 704); 
TEST_R_OP( 177 , sunpkd832, 0xff80ffff, 0x80ff8080, 708); 
TEST_R_OP( 178 , sunpkd832, 0xffffffff, 0xffffff80, 712); 
TEST_R_OP( 179 , sunpkd832, 0x003e0000, 0x3e00fe0c, 716); 
TEST_R_OP( 180 , sunpkd832, 0xffffff80, 0xff80ffec, 720); 
TEST_R_OP( 181 , sunpkd832, 0x0000ffff, 0x00ff8000, 724); 
TEST_R_OP( 182 , sunpkd832, 0x00000000, 0x00008080, 728); 
TEST_R_OP( 183 , sunpkd832, 0xff80ffcf, 0x80cfa615, 732); 
TEST_R_OP( 184 , sunpkd832, 0x0000ff80, 0x00804f80, 736); 
TEST_R_OP( 185 , sunpkd832, 0x00090000, 0x0900ff77, 740); 
TEST_R_OP( 186 , sunpkd832, 0xff80ff80, 0x8080b8ff, 744); 
TEST_R_OP( 187 , sunpkd832, 0x00000000, 0x00000000, 748); 
TEST_R_OP( 188 , sunpkd832, 0xff800000, 0x80008080, 752); 
TEST_R_OP( 189 , sunpkd832, 0xffffff80, 0xff8080ff, 756); 
TEST_R_OP( 190 , sunpkd832, 0xff80ff80, 0x8080ffe6, 760); 
TEST_R_OP( 191 , sunpkd832, 0x0000ff8b, 0x008bca00, 764); 
TEST_R_OP( 192 , sunpkd832, 0x0019ffbf, 0x19bf8068, 768); 
TEST_R_OP( 193 , sunpkd832, 0x006dffff, 0x6dffb400, 772); 
TEST_R_OP( 194 , sunpkd832, 0xffffffff, 0xffffffff, 776); 
TEST_R_OP( 195 , sunpkd832, 0xffffff8c, 0xff8c0000, 780); 
TEST_R_OP( 196 , sunpkd832, 0xff86ff80, 0x86807a00, 784); 
TEST_R_OP( 197 , sunpkd832, 0x0000ffef, 0x00efffff, 788); 
TEST_R_OP( 198 , sunpkd832, 0x0000ffff, 0x00ff803c, 792); 
TEST_R_OP( 199 , sunpkd832, 0xffffffff, 0xffff9807, 796); 

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
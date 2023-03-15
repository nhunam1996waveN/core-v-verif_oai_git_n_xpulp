# See LICENSE for license details.
#*****************************************************************************
# sunpkd830.S
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

TEST_R_OP( 2 , sunpkd830, 0x00000000, 0x0080ff00, 8); 
TEST_R_OP( 3 , sunpkd830, 0x00000000, 0x00ffff00, 12); 
TEST_R_OP( 4 , sunpkd830, 0x00000073, 0x00800073, 16); 
TEST_R_OP( 5 , sunpkd830, 0xff80ffff, 0x80ffffff, 20); 
TEST_R_OP( 6 , sunpkd830, 0xff800000, 0x80ffd900, 24); 
TEST_R_OP( 7 , sunpkd830, 0xff800000, 0x80610000, 28); 
TEST_R_OP( 8 , sunpkd830, 0x0072ff80, 0x7280ff80, 32); 
TEST_R_OP( 9 , sunpkd830, 0xff80ff80, 0x8000ff80, 36); 
TEST_R_OP( 10 , sunpkd830, 0xffff0027, 0xff008027, 40); 
TEST_R_OP( 11 , sunpkd830, 0x00000000, 0x0000ff00, 44); 
TEST_R_OP( 12 , sunpkd830, 0xff80ffff, 0x8044ffff, 48); 
TEST_R_OP( 13 , sunpkd830, 0x00000000, 0x00af0000, 52); 
TEST_R_OP( 14 , sunpkd830, 0xff80ffff, 0x80ff00ff, 56); 
TEST_R_OP( 15 , sunpkd830, 0x0000ffff, 0x0000ffff, 60); 
TEST_R_OP( 16 , sunpkd830, 0x00500000, 0x50ca8000, 64); 
TEST_R_OP( 17 , sunpkd830, 0x0000ff80, 0x0000ff80, 68); 
TEST_R_OP( 18 , sunpkd830, 0x0000ffff, 0x000080ff, 72); 
TEST_R_OP( 19 , sunpkd830, 0xffffff9b, 0xffffff9b, 76); 
TEST_R_OP( 20 , sunpkd830, 0xffffffff, 0xff00ffff, 80); 
TEST_R_OP( 21 , sunpkd830, 0xff88ffda, 0x88ffacda, 84); 
TEST_R_OP( 22 , sunpkd830, 0x0000ffff, 0x00e100ff, 88); 
TEST_R_OP( 23 , sunpkd830, 0xfff3ffff, 0xf300ffff, 92); 
TEST_R_OP( 24 , sunpkd830, 0xffff0000, 0xff9efb00, 96); 
TEST_R_OP( 25 , sunpkd830, 0xff80ffaf, 0x8000ffaf, 100); 
TEST_R_OP( 26 , sunpkd830, 0x0000ffff, 0x008080ff, 104); 
TEST_R_OP( 27 , sunpkd830, 0xff80ffff, 0x80b580ff, 108); 
TEST_R_OP( 28 , sunpkd830, 0x0000ff80, 0x00806f80, 112); 
TEST_R_OP( 29 , sunpkd830, 0xffffff80, 0xffff7280, 116); 
TEST_R_OP( 30 , sunpkd830, 0xffff0000, 0xffff0000, 120); 
TEST_R_OP( 31 , sunpkd830, 0x00000045, 0x0000ff45, 124); 
TEST_R_OP( 32 , sunpkd830, 0x0000ffff, 0x008000ff, 128); 
TEST_R_OP( 33 , sunpkd830, 0x005affff, 0x5a0000ff, 132); 
TEST_R_OP( 34 , sunpkd830, 0x0035ffff, 0x358000ff, 136); 
TEST_R_OP( 35 , sunpkd830, 0xffff0021, 0xff255821, 140); 
TEST_R_OP( 36 , sunpkd830, 0x00000000, 0x00008000, 144); 
TEST_R_OP( 37 , sunpkd830, 0xfffffff2, 0xffff80f2, 148); 
TEST_R_OP( 38 , sunpkd830, 0xffc1ff80, 0xc164ff80, 152); 
TEST_R_OP( 39 , sunpkd830, 0x0000ff80, 0x00008080, 156); 
TEST_R_OP( 40 , sunpkd830, 0x0000ffff, 0x008080ff, 160); 
TEST_R_OP( 41 , sunpkd830, 0xffff0000, 0xff808000, 164); 
TEST_R_OP( 42 , sunpkd830, 0xff80ffff, 0x8000a0ff, 168); 
TEST_R_OP( 43 , sunpkd830, 0x00410000, 0x41ff2d00, 172); 
TEST_R_OP( 44 , sunpkd830, 0xffffffa9, 0xfffeffa9, 176); 
TEST_R_OP( 45 , sunpkd830, 0xffffff80, 0xff00ff80, 180); 
TEST_R_OP( 46 , sunpkd830, 0x0017ff80, 0x17baff80, 184); 
TEST_R_OP( 47 , sunpkd830, 0x0000ff80, 0x0080f780, 188); 
TEST_R_OP( 48 , sunpkd830, 0x0000ff80, 0x00ff0080, 192); 
TEST_R_OP( 49 , sunpkd830, 0x0010ff80, 0x10000080, 196); 
TEST_R_OP( 50 , sunpkd830, 0xff80ffff, 0x80edffff, 200); 
TEST_R_OP( 51 , sunpkd830, 0xffffff80, 0xff000080, 204); 
TEST_R_OP( 52 , sunpkd830, 0xff900000, 0x90800000, 208); 
TEST_R_OP( 53 , sunpkd830, 0x00690001, 0x69800001, 212); 
TEST_R_OP( 54 , sunpkd830, 0xff800022, 0x80008022, 216); 
TEST_R_OP( 55 , sunpkd830, 0xff80ffff, 0x800080ff, 220); 
TEST_R_OP( 56 , sunpkd830, 0xffffffff, 0xff00f0ff, 224); 
TEST_R_OP( 57 , sunpkd830, 0xff80ff80, 0x80ff8080, 228); 
TEST_R_OP( 58 , sunpkd830, 0xff86ff80, 0x86800080, 232); 
TEST_R_OP( 59 , sunpkd830, 0xffff0000, 0xffb18000, 236); 
TEST_R_OP( 60 , sunpkd830, 0xff80ffa7, 0x80ff00a7, 240); 
TEST_R_OP( 61 , sunpkd830, 0xff85ff80, 0x85ff8080, 244); 
TEST_R_OP( 62 , sunpkd830, 0x0047ff80, 0x47ff0080, 248); 
TEST_R_OP( 63 , sunpkd830, 0xff800000, 0x8080ff00, 252); 
TEST_R_OP( 64 , sunpkd830, 0x0012ffff, 0x1200c8ff, 256); 
TEST_R_OP( 65 , sunpkd830, 0xff80ffff, 0x8080ffff, 260); 
TEST_R_OP( 66 , sunpkd830, 0x0000004f, 0x0080ec4f, 264); 
TEST_R_OP( 67 , sunpkd830, 0xff80ffff, 0x808000ff, 268); 
TEST_R_OP( 68 , sunpkd830, 0xff800000, 0x80a63c00, 272); 
TEST_R_OP( 69 , sunpkd830, 0x0000ffff, 0x000014ff, 276); 
TEST_R_OP( 70 , sunpkd830, 0x0000001f, 0x00ff001f, 280); 
TEST_R_OP( 71 , sunpkd830, 0x0000ffce, 0x005980ce, 284); 
TEST_R_OP( 72 , sunpkd830, 0xffd10000, 0xd1ff7200, 288); 
TEST_R_OP( 73 , sunpkd830, 0xffff001f, 0xffebff1f, 292); 
TEST_R_OP( 74 , sunpkd830, 0xff800000, 0x80ffff00, 296); 
TEST_R_OP( 75 , sunpkd830, 0xff93ffff, 0x938080ff, 300); 
TEST_R_OP( 76 , sunpkd830, 0x0000ffff, 0x00fd12ff, 304); 
TEST_R_OP( 77 , sunpkd830, 0xffe0ff80, 0xe053bf80, 308); 
TEST_R_OP( 78 , sunpkd830, 0xff800000, 0x8000a100, 312); 
TEST_R_OP( 79 , sunpkd830, 0xff980000, 0x98809800, 316); 
TEST_R_OP( 80 , sunpkd830, 0xffff0000, 0xff006700, 320); 
TEST_R_OP( 81 , sunpkd830, 0x00000000, 0x00f78000, 324); 
TEST_R_OP( 82 , sunpkd830, 0xffffffe4, 0xffabd6e4, 328); 
TEST_R_OP( 83 , sunpkd830, 0xff80ffa6, 0x808080a6, 332); 
TEST_R_OP( 84 , sunpkd830, 0xff80ffff, 0x80ffe2ff, 336); 
TEST_R_OP( 85 , sunpkd830, 0x003dffb6, 0x3dd900b6, 340); 
TEST_R_OP( 86 , sunpkd830, 0xffc1ffff, 0xc1fff5ff, 344); 
TEST_R_OP( 87 , sunpkd830, 0xfffffffe, 0xff80b1fe, 348); 
TEST_R_OP( 88 , sunpkd830, 0xffffff86, 0xffc3c786, 352); 
TEST_R_OP( 89 , sunpkd830, 0x0000ffff, 0x006b00ff, 356); 
TEST_R_OP( 90 , sunpkd830, 0xff80ffff, 0x808080ff, 360); 
TEST_R_OP( 91 , sunpkd830, 0xffa9ff80, 0xa9257480, 364); 
TEST_R_OP( 92 , sunpkd830, 0x003fff80, 0x3fa40080, 368); 
TEST_R_OP( 93 , sunpkd830, 0xff800000, 0x80808000, 372); 
TEST_R_OP( 94 , sunpkd830, 0xffae0007, 0xaeff4607, 376); 
TEST_R_OP( 95 , sunpkd830, 0x0077ffff, 0x770080ff, 380); 
TEST_R_OP( 96 , sunpkd830, 0xffae0000, 0xaecd0000, 384); 
TEST_R_OP( 97 , sunpkd830, 0x00000000, 0x00000000, 388); 
TEST_R_OP( 98 , sunpkd830, 0xff80ffff, 0x8080ffff, 392); 
TEST_R_OP( 99 , sunpkd830, 0xff800015, 0x80908015, 396); 
TEST_R_OP( 100 , sunpkd830, 0x0069ffe8, 0x69ff80e8, 400); 
TEST_R_OP( 101 , sunpkd830, 0x00000039, 0x00000039, 404); 
TEST_R_OP( 102 , sunpkd830, 0xff800000, 0x8080ff00, 408); 
TEST_R_OP( 103 , sunpkd830, 0x0000004c, 0x0041804c, 412); 
TEST_R_OP( 104 , sunpkd830, 0x00000000, 0x00ff9700, 416); 
TEST_R_OP( 105 , sunpkd830, 0x00140000, 0x14000000, 420); 
TEST_R_OP( 106 , sunpkd830, 0xffff0000, 0xffff8000, 424); 
TEST_R_OP( 107 , sunpkd830, 0xffb8ff80, 0xb800d580, 428); 
TEST_R_OP( 108 , sunpkd830, 0xff80ff82, 0x80ffff82, 432); 
TEST_R_OP( 109 , sunpkd830, 0xff800000, 0x80ff0000, 436); 
TEST_R_OP( 110 , sunpkd830, 0xfffffffd, 0xff8080fd, 440); 
TEST_R_OP( 111 , sunpkd830, 0xffffff80, 0xff6ed380, 444); 
TEST_R_OP( 112 , sunpkd830, 0xffff0000, 0xffff8000, 448); 
TEST_R_OP( 113 , sunpkd830, 0xffff0000, 0xff808000, 452); 
TEST_R_OP( 114 , sunpkd830, 0xff800075, 0x80ff0075, 456); 
TEST_R_OP( 115 , sunpkd830, 0x0000ffdf, 0x00ff80df, 460); 
TEST_R_OP( 116 , sunpkd830, 0xffffff80, 0xffff0080, 464); 
TEST_R_OP( 117 , sunpkd830, 0x004f0000, 0x4f80ff00, 468); 
TEST_R_OP( 118 , sunpkd830, 0xff80ffff, 0x8080ffff, 472); 
TEST_R_OP( 119 , sunpkd830, 0x0000ffff, 0x008013ff, 476); 
TEST_R_OP( 120 , sunpkd830, 0xff91ffff, 0x91ff2cff, 480); 
TEST_R_OP( 121 , sunpkd830, 0x0023ffff, 0x23ff54ff, 484); 
TEST_R_OP( 122 , sunpkd830, 0xffff004c, 0xff80004c, 488); 
TEST_R_OP( 123 , sunpkd830, 0xff80ffff, 0x80ff64ff, 492); 
TEST_R_OP( 124 , sunpkd830, 0xff80ff80, 0x8080ff80, 496); 
TEST_R_OP( 125 , sunpkd830, 0x0000ffff, 0x000000ff, 500); 
TEST_R_OP( 126 , sunpkd830, 0xffd9ffff, 0xd90080ff, 504); 
TEST_R_OP( 127 , sunpkd830, 0xff9c0000, 0x9c950000, 508); 
TEST_R_OP( 128 , sunpkd830, 0xffffffe9, 0xff80d8e9, 512); 
TEST_R_OP( 129 , sunpkd830, 0x003effe1, 0x3eff80e1, 516); 
TEST_R_OP( 130 , sunpkd830, 0xffff0036, 0xff005236, 520); 
TEST_R_OP( 131 , sunpkd830, 0xffff006c, 0xff80ff6c, 524); 
TEST_R_OP( 132 , sunpkd830, 0xff800000, 0x80008000, 528); 
TEST_R_OP( 133 , sunpkd830, 0xffb60000, 0xb650ff00, 532); 
TEST_R_OP( 134 , sunpkd830, 0x0000ffff, 0x008080ff, 536); 
TEST_R_OP( 135 , sunpkd830, 0x0000ffff, 0x00004fff, 540); 
TEST_R_OP( 136 , sunpkd830, 0xffc50000, 0xc5007200, 544); 
TEST_R_OP( 137 , sunpkd830, 0x0000ff80, 0x00008080, 548); 
TEST_R_OP( 138 , sunpkd830, 0xffff0000, 0xff00d100, 552); 
TEST_R_OP( 139 , sunpkd830, 0x00000000, 0x00608400, 556); 
TEST_R_OP( 140 , sunpkd830, 0x0069ffff, 0x690080ff, 560); 
TEST_R_OP( 141 , sunpkd830, 0xffffffff, 0xff00ffff, 564); 
TEST_R_OP( 142 , sunpkd830, 0xff800000, 0x8080ed00, 568); 
TEST_R_OP( 143 , sunpkd830, 0xff80ffff, 0x800000ff, 572); 
TEST_R_OP( 144 , sunpkd830, 0x0006ffff, 0x061b80ff, 576); 
TEST_R_OP( 145 , sunpkd830, 0x00000000, 0x0080e500, 580); 
TEST_R_OP( 146 , sunpkd830, 0xffbbffff, 0xbb56ffff, 584); 
TEST_R_OP( 147 , sunpkd830, 0xffffff80, 0xff000080, 588); 
TEST_R_OP( 148 , sunpkd830, 0xff890000, 0x89ff8000, 592); 
TEST_R_OP( 149 , sunpkd830, 0x0000ffff, 0x0080ffff, 596); 
TEST_R_OP( 150 , sunpkd830, 0xffffffff, 0xff7280ff, 600); 
TEST_R_OP( 151 , sunpkd830, 0x00000000, 0x00389800, 604); 
TEST_R_OP( 152 , sunpkd830, 0xff800000, 0x80f00000, 608); 
TEST_R_OP( 153 , sunpkd830, 0x007c0058, 0x7c808058, 612); 
TEST_R_OP( 154 , sunpkd830, 0xffd30000, 0xd3008000, 616); 
TEST_R_OP( 155 , sunpkd830, 0x0000ffff, 0x004380ff, 620); 
TEST_R_OP( 156 , sunpkd830, 0x0000ff80, 0x00ff0080, 624); 
TEST_R_OP( 157 , sunpkd830, 0x0017ffff, 0x17ff00ff, 628); 
TEST_R_OP( 158 , sunpkd830, 0xffff0000, 0xff800000, 632); 
TEST_R_OP( 159 , sunpkd830, 0x0000ffff, 0x0080afff, 636); 
TEST_R_OP( 160 , sunpkd830, 0xffffffff, 0xffff80ff, 640); 
TEST_R_OP( 161 , sunpkd830, 0x0009ffff, 0x09ed80ff, 644); 
TEST_R_OP( 162 , sunpkd830, 0x00000000, 0x00ff6e00, 648); 
TEST_R_OP( 163 , sunpkd830, 0x00000040, 0x0049ff40, 652); 
TEST_R_OP( 164 , sunpkd830, 0xffff0000, 0xff00ff00, 656); 
TEST_R_OP( 165 , sunpkd830, 0xffff002b, 0xffff002b, 660); 
TEST_R_OP( 166 , sunpkd830, 0xff800000, 0x80550000, 664); 
TEST_R_OP( 167 , sunpkd830, 0x0000ffff, 0x0080ffff, 668); 
TEST_R_OP( 168 , sunpkd830, 0x0000ffff, 0x0002ffff, 672); 
TEST_R_OP( 169 , sunpkd830, 0xffffff80, 0xff00ff80, 676); 
TEST_R_OP( 170 , sunpkd830, 0xff80ff89, 0x80ffff89, 680); 
TEST_R_OP( 171 , sunpkd830, 0x0000004a, 0x00ff804a, 684); 
TEST_R_OP( 172 , sunpkd830, 0x0000ffc9, 0x00ff00c9, 688); 
TEST_R_OP( 173 , sunpkd830, 0x00040000, 0x04ff0000, 692); 
TEST_R_OP( 174 , sunpkd830, 0xff80ffff, 0x804980ff, 696); 
TEST_R_OP( 175 , sunpkd830, 0x0000ff80, 0x00ff8080, 700); 
TEST_R_OP( 176 , sunpkd830, 0x005affff, 0x5a0080ff, 704); 
TEST_R_OP( 177 , sunpkd830, 0xff800000, 0x807cda00, 708); 
TEST_R_OP( 178 , sunpkd830, 0x003c0000, 0x3cffff00, 712); 
TEST_R_OP( 179 , sunpkd830, 0xff80002e, 0x80baff2e, 716); 
TEST_R_OP( 180 , sunpkd830, 0xff8fff80, 0x8f800080, 720); 
TEST_R_OP( 181 , sunpkd830, 0xffdfff80, 0xdf868080, 724); 
TEST_R_OP( 182 , sunpkd830, 0xff92ffff, 0x92ff48ff, 728); 
TEST_R_OP( 183 , sunpkd830, 0x000dff80, 0x0d000080, 732); 
TEST_R_OP( 184 , sunpkd830, 0xff800066, 0x80558066, 736); 
TEST_R_OP( 185 , sunpkd830, 0x000dff83, 0x0d800083, 740); 
TEST_R_OP( 186 , sunpkd830, 0xff800000, 0x80806800, 744); 
TEST_R_OP( 187 , sunpkd830, 0xffff005d, 0xff80805d, 748); 
TEST_R_OP( 188 , sunpkd830, 0x0000ffce, 0x00ffffce, 752); 
TEST_R_OP( 189 , sunpkd830, 0xffffffff, 0xffff00ff, 756); 
TEST_R_OP( 190 , sunpkd830, 0x0000ff80, 0x00ef4280, 760); 
TEST_R_OP( 191 , sunpkd830, 0xffffffff, 0xffacffff, 764); 
TEST_R_OP( 192 , sunpkd830, 0x0002ff80, 0x02468080, 768); 
TEST_R_OP( 193 , sunpkd830, 0x00000000, 0x00ff0000, 772); 
TEST_R_OP( 194 , sunpkd830, 0xffdaffff, 0xda8000ff, 776); 
TEST_R_OP( 195 , sunpkd830, 0xffffffff, 0xff00ffff, 780); 
TEST_R_OP( 196 , sunpkd830, 0x0000ff80, 0x00ff8080, 784); 
TEST_R_OP( 197 , sunpkd830, 0x00510000, 0x515eb800, 788); 
TEST_R_OP( 198 , sunpkd830, 0xffe7002e, 0xe780ff2e, 792); 
TEST_R_OP( 199 , sunpkd830, 0xff80ff80, 0x80ff9e80, 796); 

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
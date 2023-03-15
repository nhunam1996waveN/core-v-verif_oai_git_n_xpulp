# See LICENSE for license details.
#*****************************************************************************
# zunpkd820.S
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

TEST_R_OP( 2 , zunpkd820, 0x00ff0000, 0x80ff2300, 8); 
TEST_R_OP( 3 , zunpkd820, 0x00ff0089, 0x00ffff89, 12); 
TEST_R_OP( 4 , zunpkd820, 0x00ff0080, 0x00ff8080, 16); 
TEST_R_OP( 5 , zunpkd820, 0x008000ff, 0xff80ffff, 20); 
TEST_R_OP( 6 , zunpkd820, 0x00ff0000, 0x00ffff00, 24); 
TEST_R_OP( 7 , zunpkd820, 0x00840000, 0xed840000, 28); 
TEST_R_OP( 8 , zunpkd820, 0x003b0009, 0x413bff09, 32); 
TEST_R_OP( 9 , zunpkd820, 0x00ff0080, 0x00ff0080, 36); 
TEST_R_OP( 10 , zunpkd820, 0x007f00d7, 0x807f80d7, 40); 
TEST_R_OP( 11 , zunpkd820, 0x00fc0072, 0x37fcaa72, 44); 
TEST_R_OP( 12 , zunpkd820, 0x0080003f, 0x8080003f, 48); 
TEST_R_OP( 13 , zunpkd820, 0x008000ff, 0x808080ff, 52); 
TEST_R_OP( 14 , zunpkd820, 0x008000ab, 0x008000ab, 56); 
TEST_R_OP( 15 , zunpkd820, 0x00ff0080, 0x76ff8080, 60); 
TEST_R_OP( 16 , zunpkd820, 0x00ff00ff, 0x00ff19ff, 64); 
TEST_R_OP( 17 , zunpkd820, 0x006400ff, 0xa66400ff, 68); 
TEST_R_OP( 18 , zunpkd820, 0x00000050, 0x0000a250, 72); 
TEST_R_OP( 19 , zunpkd820, 0x00230000, 0xff238000, 76); 
TEST_R_OP( 20 , zunpkd820, 0x00f30000, 0xfff38000, 80); 
TEST_R_OP( 21 , zunpkd820, 0x00d80080, 0xffd80080, 84); 
TEST_R_OP( 22 , zunpkd820, 0x00d100ff, 0x63d128ff, 88); 
TEST_R_OP( 23 , zunpkd820, 0x00ff00ff, 0xffffc6ff, 92); 
TEST_R_OP( 24 , zunpkd820, 0x00800080, 0x34800080, 96); 
TEST_R_OP( 25 , zunpkd820, 0x005a0000, 0x805a0000, 100); 
TEST_R_OP( 26 , zunpkd820, 0x002f00ff, 0xff2f63ff, 104); 
TEST_R_OP( 27 , zunpkd820, 0x00800080, 0xff80ff80, 108); 
TEST_R_OP( 28 , zunpkd820, 0x00000095, 0xff00ff95, 112); 
TEST_R_OP( 29 , zunpkd820, 0x00800080, 0x8080ff80, 116); 
TEST_R_OP( 30 , zunpkd820, 0x008000ff, 0x008080ff, 120); 
TEST_R_OP( 31 , zunpkd820, 0x00000000, 0x80002e00, 124); 
TEST_R_OP( 32 , zunpkd820, 0x00ff0000, 0xffff9500, 128); 
TEST_R_OP( 33 , zunpkd820, 0x00000000, 0x8000ff00, 132); 
TEST_R_OP( 34 , zunpkd820, 0x008000ff, 0xbb80c9ff, 136); 
TEST_R_OP( 35 , zunpkd820, 0x000000ff, 0xff0008ff, 140); 
TEST_R_OP( 36 , zunpkd820, 0x00000050, 0x00000050, 144); 
TEST_R_OP( 37 , zunpkd820, 0x00000080, 0xff00ff80, 148); 
TEST_R_OP( 38 , zunpkd820, 0x004600a9, 0x434624a9, 152); 
TEST_R_OP( 39 , zunpkd820, 0x00410080, 0x80418080, 156); 
TEST_R_OP( 40 , zunpkd820, 0x00a80038, 0xffa80938, 160); 
TEST_R_OP( 41 , zunpkd820, 0x00000000, 0x85000000, 164); 
TEST_R_OP( 42 , zunpkd820, 0x000000be, 0x000000be, 168); 
TEST_R_OP( 43 , zunpkd820, 0x00e50000, 0xdfe57800, 172); 
TEST_R_OP( 44 , zunpkd820, 0x00000080, 0xff00d680, 176); 
TEST_R_OP( 45 , zunpkd820, 0x00ff00ff, 0x80ff00ff, 180); 
TEST_R_OP( 46 , zunpkd820, 0x00000000, 0x8000ff00, 184); 
TEST_R_OP( 47 , zunpkd820, 0x00000080, 0x8000ff80, 188); 
TEST_R_OP( 48 , zunpkd820, 0x00b100ff, 0x00b1ffff, 192); 
TEST_R_OP( 49 , zunpkd820, 0x003600ff, 0xff36ffff, 196); 
TEST_R_OP( 50 , zunpkd820, 0x00ff0080, 0x80ffa280, 200); 
TEST_R_OP( 51 , zunpkd820, 0x00ff0057, 0x7fff0057, 204); 
TEST_R_OP( 52 , zunpkd820, 0x00800026, 0x8080d626, 208); 
TEST_R_OP( 53 , zunpkd820, 0x00f00080, 0x3af00080, 212); 
TEST_R_OP( 54 , zunpkd820, 0x008000a3, 0x00808ca3, 216); 
TEST_R_OP( 55 , zunpkd820, 0x00c700ff, 0xffc780ff, 220); 
TEST_R_OP( 56 , zunpkd820, 0x000000ff, 0x000080ff, 224); 
TEST_R_OP( 57 , zunpkd820, 0x0000001d, 0x8000ff1d, 228); 
TEST_R_OP( 58 , zunpkd820, 0x008000ff, 0xff80ffff, 232); 
TEST_R_OP( 59 , zunpkd820, 0x00800080, 0x00808080, 236); 
TEST_R_OP( 60 , zunpkd820, 0x000c0080, 0x000cff80, 240); 
TEST_R_OP( 61 , zunpkd820, 0x008000ff, 0x008080ff, 244); 
TEST_R_OP( 62 , zunpkd820, 0x00ff0080, 0xffff8080, 248); 
TEST_R_OP( 63 , zunpkd820, 0x00ff0080, 0x0affff80, 252); 
TEST_R_OP( 64 , zunpkd820, 0x002600b7, 0xff26a5b7, 256); 
TEST_R_OP( 65 , zunpkd820, 0x0000007e, 0x8000007e, 260); 
TEST_R_OP( 66 , zunpkd820, 0x00000000, 0x8000ff00, 264); 
TEST_R_OP( 67 , zunpkd820, 0x00ff0080, 0xffff8080, 268); 
TEST_R_OP( 68 , zunpkd820, 0x00fd0080, 0x00fd8080, 272); 
TEST_R_OP( 69 , zunpkd820, 0x006d0080, 0xff6db580, 276); 
TEST_R_OP( 70 , zunpkd820, 0x008000ff, 0xc680ffff, 280); 
TEST_R_OP( 71 , zunpkd820, 0x00800000, 0xff80c700, 284); 
TEST_R_OP( 72 , zunpkd820, 0x008000ff, 0x7580ffff, 288); 
TEST_R_OP( 73 , zunpkd820, 0x00880080, 0x80880080, 292); 
TEST_R_OP( 74 , zunpkd820, 0x0000003a, 0x7100803a, 296); 
TEST_R_OP( 75 , zunpkd820, 0x00ff0080, 0x52ffa280, 300); 
TEST_R_OP( 76 , zunpkd820, 0x00ff0000, 0x00ffff00, 304); 
TEST_R_OP( 77 , zunpkd820, 0x00ff00ff, 0x00ff00ff, 308); 
TEST_R_OP( 78 , zunpkd820, 0x009500f7, 0x8095fff7, 312); 
TEST_R_OP( 79 , zunpkd820, 0x00800080, 0x8080d480, 316); 
TEST_R_OP( 80 , zunpkd820, 0x00ff0080, 0x80ff1c80, 320); 
TEST_R_OP( 81 , zunpkd820, 0x003000ff, 0xff3000ff, 324); 
TEST_R_OP( 82 , zunpkd820, 0x00b300ef, 0x80b380ef, 328); 
TEST_R_OP( 83 , zunpkd820, 0x00ff00d0, 0x00ffffd0, 332); 
TEST_R_OP( 84 , zunpkd820, 0x0080008f, 0x0080ff8f, 336); 
TEST_R_OP( 85 , zunpkd820, 0x008000ff, 0xc280ffff, 340); 
TEST_R_OP( 86 , zunpkd820, 0x00ff0080, 0xd1ff0080, 344); 
TEST_R_OP( 87 , zunpkd820, 0x000000ff, 0x8000c0ff, 348); 
TEST_R_OP( 88 , zunpkd820, 0x008000ff, 0x808000ff, 352); 
TEST_R_OP( 89 , zunpkd820, 0x00000000, 0x8000ff00, 356); 
TEST_R_OP( 90 , zunpkd820, 0x008c0080, 0xc68c0080, 360); 
TEST_R_OP( 91 , zunpkd820, 0x00800000, 0x80800000, 364); 
TEST_R_OP( 92 , zunpkd820, 0x00000000, 0x00006100, 368); 
TEST_R_OP( 93 , zunpkd820, 0x00ff00ff, 0xffff4cff, 372); 
TEST_R_OP( 94 , zunpkd820, 0x0080002e, 0xff80ff2e, 376); 
TEST_R_OP( 95 , zunpkd820, 0x00ff00ff, 0x00ff00ff, 380); 
TEST_R_OP( 96 , zunpkd820, 0x00ff0000, 0xffff2f00, 384); 
TEST_R_OP( 97 , zunpkd820, 0x008000ff, 0x808020ff, 388); 
TEST_R_OP( 98 , zunpkd820, 0x000000b9, 0xff0000b9, 392); 
TEST_R_OP( 99 , zunpkd820, 0x00070000, 0xff078000, 396); 
TEST_R_OP( 100 , zunpkd820, 0x00000009, 0xc800ff09, 400); 
TEST_R_OP( 101 , zunpkd820, 0x00b30080, 0x00b30080, 404); 
TEST_R_OP( 102 , zunpkd820, 0x008b00c9, 0x008bffc9, 408); 
TEST_R_OP( 103 , zunpkd820, 0x00800012, 0xb1800012, 412); 
TEST_R_OP( 104 , zunpkd820, 0x00ff00b3, 0x80ff80b3, 416); 
TEST_R_OP( 105 , zunpkd820, 0x00370099, 0x80376199, 420); 
TEST_R_OP( 106 , zunpkd820, 0x008000c4, 0x4d80ffc4, 424); 
TEST_R_OP( 107 , zunpkd820, 0x006600ff, 0x086680ff, 428); 
TEST_R_OP( 108 , zunpkd820, 0x00000080, 0xff00ff80, 432); 
TEST_R_OP( 109 , zunpkd820, 0x00ff0000, 0x93ff8000, 436); 
TEST_R_OP( 110 , zunpkd820, 0x006d00ed, 0x006d80ed, 440); 
TEST_R_OP( 111 , zunpkd820, 0x003600ff, 0x803600ff, 444); 
TEST_R_OP( 112 , zunpkd820, 0x00800080, 0x00808080, 448); 
TEST_R_OP( 113 , zunpkd820, 0x00000080, 0x8000ff80, 452); 
TEST_R_OP( 114 , zunpkd820, 0x00000080, 0x00008080, 456); 
TEST_R_OP( 115 , zunpkd820, 0x00ff0080, 0x80ff0080, 460); 
TEST_R_OP( 116 , zunpkd820, 0x00800044, 0x80800044, 464); 
TEST_R_OP( 117 , zunpkd820, 0x008000ff, 0x0080ffff, 468); 
TEST_R_OP( 118 , zunpkd820, 0x008000ff, 0xfe8080ff, 472); 
TEST_R_OP( 119 , zunpkd820, 0x00ff0000, 0x80ff0000, 476); 
TEST_R_OP( 120 , zunpkd820, 0x00800000, 0x59800000, 480); 
TEST_R_OP( 121 , zunpkd820, 0x00000000, 0xc5008000, 484); 
TEST_R_OP( 122 , zunpkd820, 0x003100ff, 0xff31a4ff, 488); 
TEST_R_OP( 123 , zunpkd820, 0x005d00ff, 0x805dffff, 492); 
TEST_R_OP( 124 , zunpkd820, 0x00ff0080, 0x80ff5780, 496); 
TEST_R_OP( 125 , zunpkd820, 0x000000ff, 0xff00ffff, 500); 
TEST_R_OP( 126 , zunpkd820, 0x00ff0080, 0x80ff8080, 504); 
TEST_R_OP( 127 , zunpkd820, 0x00800080, 0x8080ff80, 508); 
TEST_R_OP( 128 , zunpkd820, 0x00ff0080, 0x00ffff80, 512); 
TEST_R_OP( 129 , zunpkd820, 0x00800080, 0x00800080, 516); 
TEST_R_OP( 130 , zunpkd820, 0x00ff0080, 0x80ffff80, 520); 
TEST_R_OP( 131 , zunpkd820, 0x008000ff, 0x808011ff, 524); 
TEST_R_OP( 132 , zunpkd820, 0x00000000, 0xff00b500, 528); 
TEST_R_OP( 133 , zunpkd820, 0x00800000, 0x0d80ce00, 532); 
TEST_R_OP( 134 , zunpkd820, 0x00790000, 0x00798000, 536); 
TEST_R_OP( 135 , zunpkd820, 0x00ff0080, 0x11ff8080, 540); 
TEST_R_OP( 136 , zunpkd820, 0x00800080, 0xff80ae80, 544); 
TEST_R_OP( 137 , zunpkd820, 0x00800000, 0xf880ff00, 548); 
TEST_R_OP( 138 , zunpkd820, 0x00000080, 0x80008080, 552); 
TEST_R_OP( 139 , zunpkd820, 0x001a00c0, 0x311affc0, 556); 
TEST_R_OP( 140 , zunpkd820, 0x00000080, 0xd8000080, 560); 
TEST_R_OP( 141 , zunpkd820, 0x00ff00ff, 0xfffff6ff, 564); 
TEST_R_OP( 142 , zunpkd820, 0x00ff0000, 0x31ff1f00, 568); 
TEST_R_OP( 143 , zunpkd820, 0x000000ff, 0x800000ff, 572); 
TEST_R_OP( 144 , zunpkd820, 0x008000f2, 0x80809af2, 576); 
TEST_R_OP( 145 , zunpkd820, 0x00ff0050, 0x00ff0050, 580); 
TEST_R_OP( 146 , zunpkd820, 0x00000080, 0x0000ff80, 584); 
TEST_R_OP( 147 , zunpkd820, 0x00ff0000, 0x00ff0000, 588); 
TEST_R_OP( 148 , zunpkd820, 0x00ff0080, 0x84ff4980, 592); 
TEST_R_OP( 149 , zunpkd820, 0x00370080, 0x80370080, 596); 
TEST_R_OP( 150 , zunpkd820, 0x00080080, 0xff085480, 600); 
TEST_R_OP( 151 , zunpkd820, 0x00190079, 0x4119df79, 604); 
TEST_R_OP( 152 , zunpkd820, 0x004200ff, 0xff4200ff, 608); 
TEST_R_OP( 153 , zunpkd820, 0x008000da, 0xf380f3da, 612); 
TEST_R_OP( 154 , zunpkd820, 0x00000000, 0x00008000, 616); 
TEST_R_OP( 155 , zunpkd820, 0x00800049, 0x0080d349, 620); 
TEST_R_OP( 156 , zunpkd820, 0x008000ff, 0x408052ff, 624); 
TEST_R_OP( 157 , zunpkd820, 0x000000ff, 0x000080ff, 628); 
TEST_R_OP( 158 , zunpkd820, 0x00800000, 0x0080ff00, 632); 
TEST_R_OP( 159 , zunpkd820, 0x00000080, 0x77000080, 636); 
TEST_R_OP( 160 , zunpkd820, 0x00800080, 0x8080da80, 640); 
TEST_R_OP( 161 , zunpkd820, 0x00800080, 0x8080ff80, 644); 
TEST_R_OP( 162 , zunpkd820, 0x00000000, 0x80008000, 648); 
TEST_R_OP( 163 , zunpkd820, 0x00ff00ff, 0x00ff80ff, 652); 
TEST_R_OP( 164 , zunpkd820, 0x00800080, 0xff808080, 656); 
TEST_R_OP( 165 , zunpkd820, 0x00800080, 0x00800080, 660); 
TEST_R_OP( 166 , zunpkd820, 0x00ff000d, 0x1cff800d, 664); 
TEST_R_OP( 167 , zunpkd820, 0x00000080, 0x80008080, 668); 
TEST_R_OP( 168 , zunpkd820, 0x00800000, 0xb080ff00, 672); 
TEST_R_OP( 169 , zunpkd820, 0x00000080, 0x80008080, 676); 
TEST_R_OP( 170 , zunpkd820, 0x008000bb, 0x008000bb, 680); 
TEST_R_OP( 171 , zunpkd820, 0x008000f5, 0xff8000f5, 684); 
TEST_R_OP( 172 , zunpkd820, 0x000000ff, 0x000000ff, 688); 
TEST_R_OP( 173 , zunpkd820, 0x00ff006d, 0xffff806d, 692); 
TEST_R_OP( 174 , zunpkd820, 0x00d6007d, 0x80d6ff7d, 696); 
TEST_R_OP( 175 , zunpkd820, 0x000000f6, 0x0000fff6, 700); 
TEST_R_OP( 176 , zunpkd820, 0x00ff00ff, 0x80ffffff, 704); 
TEST_R_OP( 177 , zunpkd820, 0x00ff0000, 0x20ff1000, 708); 
TEST_R_OP( 178 , zunpkd820, 0x00a0006c, 0x00a0ff6c, 712); 
TEST_R_OP( 179 , zunpkd820, 0x005b0060, 0x805b1860, 716); 
TEST_R_OP( 180 , zunpkd820, 0x008000ff, 0x808000ff, 720); 
TEST_R_OP( 181 , zunpkd820, 0x00000000, 0xff006800, 724); 
TEST_R_OP( 182 , zunpkd820, 0x00830000, 0xff830000, 728); 
TEST_R_OP( 183 , zunpkd820, 0x00ff0080, 0xffff8080, 732); 
TEST_R_OP( 184 , zunpkd820, 0x007a0080, 0x007aff80, 736); 
TEST_R_OP( 185 , zunpkd820, 0x005e00ff, 0xff5e80ff, 740); 
TEST_R_OP( 186 , zunpkd820, 0x00ff0039, 0x00ffff39, 744); 
TEST_R_OP( 187 , zunpkd820, 0x000000e5, 0x800000e5, 748); 
TEST_R_OP( 188 , zunpkd820, 0x00ff00ec, 0x5effffec, 752); 
TEST_R_OP( 189 , zunpkd820, 0x0080001c, 0x0080001c, 756); 
TEST_R_OP( 190 , zunpkd820, 0x00800000, 0x00808000, 760); 
TEST_R_OP( 191 , zunpkd820, 0x008000d5, 0x808000d5, 764); 
TEST_R_OP( 192 , zunpkd820, 0x00ff0080, 0x2effff80, 768); 
TEST_R_OP( 193 , zunpkd820, 0x009a0000, 0x809af200, 772); 
TEST_R_OP( 194 , zunpkd820, 0x00800000, 0x8080ff00, 776); 
TEST_R_OP( 195 , zunpkd820, 0x000000ff, 0xa400ffff, 780); 
TEST_R_OP( 196 , zunpkd820, 0x00ff0000, 0x00ff0000, 784); 
TEST_R_OP( 197 , zunpkd820, 0x00800009, 0xff80ff09, 788); 
TEST_R_OP( 198 , zunpkd820, 0x000000ff, 0xff0000ff, 792); 
TEST_R_OP( 199 , zunpkd820, 0x008300ff, 0xff83ffff, 796); 

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
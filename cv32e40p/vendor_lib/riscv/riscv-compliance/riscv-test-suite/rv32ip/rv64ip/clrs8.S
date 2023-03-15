# See LICENSE for license details.
#*****************************************************************************
# clrs8.S
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

TEST_R_OP( 2 , clrs8, 0x07000707, 0x0080ffff, 8); 
TEST_R_OP( 3 , clrs8, 0x07070700, 0x00000080, 12); 
TEST_R_OP( 4 , clrs8, 0x00070007, 0x80009800, 16); 
TEST_R_OP( 5 , clrs8, 0x07070700, 0xff00ff74, 20); 
TEST_R_OP( 6 , clrs8, 0x07070700, 0xffffff80, 24); 
TEST_R_OP( 7 , clrs8, 0x07000101, 0xff803323, 28); 
TEST_R_OP( 8 , clrs8, 0x07070701, 0xff0000de, 32); 
TEST_R_OP( 9 , clrs8, 0x00070700, 0x80ff006d, 36); 
TEST_R_OP( 10 , clrs8, 0x07070701, 0x0000ffd1, 40); 
TEST_R_OP( 11 , clrs8, 0x07070700, 0xffffff80, 44); 
TEST_R_OP( 12 , clrs8, 0x00070707, 0x8000ff00, 48); 
TEST_R_OP( 13 , clrs8, 0x07070702, 0x0000ffe8, 52); 
TEST_R_OP( 14 , clrs8, 0x07070000, 0xff004380, 56); 
TEST_R_OP( 15 , clrs8, 0x07000007, 0xff8080ff, 60); 
TEST_R_OP( 16 , clrs8, 0x00070007, 0x80008000, 64); 
TEST_R_OP( 17 , clrs8, 0x07000400, 0x009f0580, 68); 
TEST_R_OP( 18 , clrs8, 0x07000701, 0x0080ffc2, 72); 
TEST_R_OP( 19 , clrs8, 0x07070300, 0x00ff0a9d, 76); 
TEST_R_OP( 20 , clrs8, 0x07000007, 0xff807dff, 80); 
TEST_R_OP( 21 , clrs8, 0x07070707, 0xff000000, 84); 
TEST_R_OP( 22 , clrs8, 0x03070700, 0x09ff0080, 88); 
TEST_R_OP( 23 , clrs8, 0x07070007, 0xffff60ff, 92); 
TEST_R_OP( 24 , clrs8, 0x00070007, 0xac008000, 96); 
TEST_R_OP( 25 , clrs8, 0x07010507, 0xffce03ff, 100); 
TEST_R_OP( 26 , clrs8, 0x07000007, 0xff808000, 104); 
TEST_R_OP( 27 , clrs8, 0x00070700, 0x80ff0080, 108); 
TEST_R_OP( 28 , clrs8, 0x07070007, 0x00008000, 112); 
TEST_R_OP( 29 , clrs8, 0x07070707, 0xffffff00, 116); 
TEST_R_OP( 30 , clrs8, 0x00010701, 0x80c300de, 120); 
TEST_R_OP( 31 , clrs8, 0x02070000, 0xe3ff6a8b, 124); 
TEST_R_OP( 32 , clrs8, 0x00000707, 0x8080ffff, 128); 
TEST_R_OP( 33 , clrs8, 0x07070207, 0xff00ed00, 132); 
TEST_R_OP( 34 , clrs8, 0x07070707, 0x00ff00ff, 136); 
TEST_R_OP( 35 , clrs8, 0x00000001, 0x8041883e, 140); 
TEST_R_OP( 36 , clrs8, 0x00070701, 0x8aff00d2, 144); 
TEST_R_OP( 37 , clrs8, 0x07070700, 0xff0000aa, 148); 
TEST_R_OP( 38 , clrs8, 0x07070000, 0x00ff8080, 152); 
TEST_R_OP( 39 , clrs8, 0x07000700, 0xff800080, 156); 
TEST_R_OP( 40 , clrs8, 0x02070007, 0xe3ff67ff, 160); 
TEST_R_OP( 41 , clrs8, 0x07070707, 0xffffffff, 164); 
TEST_R_OP( 42 , clrs8, 0x07070700, 0xffffff60, 168); 
TEST_R_OP( 43 , clrs8, 0x02000007, 0xec82acff, 172); 
TEST_R_OP( 44 , clrs8, 0x07000707, 0xffaa0000, 176); 
TEST_R_OP( 45 , clrs8, 0x00000100, 0x80802f80, 180); 
TEST_R_OP( 46 , clrs8, 0x07070707, 0x0000ffff, 184); 
TEST_R_OP( 47 , clrs8, 0x07070000, 0x00ff4980, 188); 
TEST_R_OP( 48 , clrs8, 0x01070700, 0x34ff0080, 192); 
TEST_R_OP( 49 , clrs8, 0x07070007, 0xff008000, 196); 
TEST_R_OP( 50 , clrs8, 0x07070707, 0x000000ff, 200); 
TEST_R_OP( 51 , clrs8, 0x07000107, 0x00ae2c00, 204); 
TEST_R_OP( 52 , clrs8, 0x07000000, 0x0080a480, 208); 
TEST_R_OP( 53 , clrs8, 0x00000700, 0x49800080, 212); 
TEST_R_OP( 54 , clrs8, 0x07010000, 0x00d6ae80, 216); 
TEST_R_OP( 55 , clrs8, 0x02000000, 0xec808080, 220); 
TEST_R_OP( 56 , clrs8, 0x07070007, 0xffff80ff, 224); 
TEST_R_OP( 57 , clrs8, 0x00070000, 0x80ff8091, 228); 
TEST_R_OP( 58 , clrs8, 0x02070707, 0x1effff00, 232); 
TEST_R_OP( 59 , clrs8, 0x00070707, 0x80ffff00, 236); 
TEST_R_OP( 60 , clrs8, 0x00000007, 0x808080ff, 240); 
TEST_R_OP( 61 , clrs8, 0x07000707, 0xff830000, 244); 
TEST_R_OP( 62 , clrs8, 0x00070000, 0x64008078, 248); 
TEST_R_OP( 63 , clrs8, 0x07000001, 0xff808037, 252); 
TEST_R_OP( 64 , clrs8, 0x01000700, 0xd1800080, 256); 
TEST_R_OP( 65 , clrs8, 0x07070107, 0xff00cd00, 260); 
TEST_R_OP( 66 , clrs8, 0x02000007, 0x1f808000, 264); 
TEST_R_OP( 67 , clrs8, 0x01000702, 0xd57a00e7, 268); 
TEST_R_OP( 68 , clrs8, 0x01020000, 0xc9e68080, 272); 
TEST_R_OP( 69 , clrs8, 0x07010007, 0x00d08000, 276); 
TEST_R_OP( 70 , clrs8, 0x02070700, 0xefffff80, 280); 
TEST_R_OP( 71 , clrs8, 0x07070707, 0x00ffffff, 284); 
TEST_R_OP( 72 , clrs8, 0x01020007, 0xdf12b200, 288); 
TEST_R_OP( 73 , clrs8, 0x00070007, 0x800073ff, 292); 
TEST_R_OP( 74 , clrs8, 0x07000700, 0x0080009a, 296); 
TEST_R_OP( 75 , clrs8, 0x07070701, 0xffff0035, 300); 
TEST_R_OP( 76 , clrs8, 0x00000707, 0x8080ffff, 304); 
TEST_R_OP( 77 , clrs8, 0x03000707, 0x0880ff00, 308); 
TEST_R_OP( 78 , clrs8, 0x00000000, 0x79804580, 312); 
TEST_R_OP( 79 , clrs8, 0x07070000, 0xff005080, 316); 
TEST_R_OP( 80 , clrs8, 0x00020007, 0x85195bff, 320); 
TEST_R_OP( 81 , clrs8, 0x01070007, 0xd60080ff, 324); 
TEST_R_OP( 82 , clrs8, 0x07000700, 0x0080ff80, 328); 
TEST_R_OP( 83 , clrs8, 0x02070001, 0x1aff802a, 332); 
TEST_R_OP( 84 , clrs8, 0x00070700, 0x8000ff80, 336); 
TEST_R_OP( 85 , clrs8, 0x00000007, 0x6b788000, 340); 
TEST_R_OP( 86 , clrs8, 0x07000700, 0xff970080, 344); 
TEST_R_OP( 87 , clrs8, 0x00000000, 0x80808080, 348); 
TEST_R_OP( 88 , clrs8, 0x00000707, 0x808000ff, 352); 
TEST_R_OP( 89 , clrs8, 0x00070701, 0x80ff003b, 356); 
TEST_R_OP( 90 , clrs8, 0x07050000, 0x00fd804c, 360); 
TEST_R_OP( 91 , clrs8, 0x00000000, 0x5080b280, 364); 
TEST_R_OP( 92 , clrs8, 0x00000700, 0x8080ff54, 368); 
TEST_R_OP( 93 , clrs8, 0x06070007, 0x01ff8700, 372); 
TEST_R_OP( 94 , clrs8, 0x00070007, 0x80ff8000, 376); 
TEST_R_OP( 95 , clrs8, 0x00070000, 0x80ff80ad, 380); 
TEST_R_OP( 96 , clrs8, 0x07000707, 0x00870000, 384); 
TEST_R_OP( 97 , clrs8, 0x00070007, 0x80ff80ff, 388); 
TEST_R_OP( 98 , clrs8, 0x00070700, 0x80000080, 392); 
TEST_R_OP( 99 , clrs8, 0x07070707, 0x000000ff, 396); 
TEST_R_OP( 100 , clrs8, 0x00000707, 0x80800000, 400); 
TEST_R_OP( 101 , clrs8, 0x00070700, 0x80ffff80, 404); 
TEST_R_OP( 102 , clrs8, 0x00070507, 0x80fffc00, 408); 
TEST_R_OP( 103 , clrs8, 0x07000700, 0xff8100b5, 412); 
TEST_R_OP( 104 , clrs8, 0x01070707, 0xdc00ffff, 416); 
TEST_R_OP( 105 , clrs8, 0x00070201, 0x80001f28, 420); 
TEST_R_OP( 106 , clrs8, 0x07070507, 0xffff0200, 424); 
TEST_R_OP( 107 , clrs8, 0x07070007, 0xff008000, 428); 
TEST_R_OP( 108 , clrs8, 0x00070007, 0x80008000, 432); 
TEST_R_OP( 109 , clrs8, 0x07070700, 0x00ff0080, 436); 
TEST_R_OP( 110 , clrs8, 0x07000007, 0xff5080ff, 440); 
TEST_R_OP( 111 , clrs8, 0x07000701, 0x0080ffc5, 444); 
TEST_R_OP( 112 , clrs8, 0x05070500, 0x0300fd80, 448); 
TEST_R_OP( 113 , clrs8, 0x00000700, 0x8080ff80, 452); 
TEST_R_OP( 114 , clrs8, 0x00070701, 0x80ff00dd, 456); 
TEST_R_OP( 115 , clrs8, 0x01000700, 0x2480ff80, 460); 
TEST_R_OP( 116 , clrs8, 0x07070700, 0x0000ff80, 464); 
TEST_R_OP( 117 , clrs8, 0x00000207, 0x8080e100, 468); 
TEST_R_OP( 118 , clrs8, 0x00000707, 0x80ac00ff, 472); 
TEST_R_OP( 119 , clrs8, 0x07010007, 0xffdf9e00, 476); 
TEST_R_OP( 120 , clrs8, 0x00070107, 0x68ff3aff, 480); 
TEST_R_OP( 121 , clrs8, 0x07070201, 0xff00e2df, 484); 
TEST_R_OP( 122 , clrs8, 0x00000707, 0x8080ffff, 488); 
TEST_R_OP( 123 , clrs8, 0x00070000, 0xa8ff8180, 492); 
TEST_R_OP( 124 , clrs8, 0x07070207, 0x00ffedff, 496); 
TEST_R_OP( 125 , clrs8, 0x07070700, 0xffff0040, 500); 
TEST_R_OP( 126 , clrs8, 0x07010707, 0x00cd0000, 504); 
TEST_R_OP( 127 , clrs8, 0x07000200, 0x00801580, 508); 
TEST_R_OP( 128 , clrs8, 0x04000707, 0x0680ffff, 512); 
TEST_R_OP( 129 , clrs8, 0x00000000, 0x807da680, 516); 
TEST_R_OP( 130 , clrs8, 0x07070007, 0xffff80ff, 520); 
TEST_R_OP( 131 , clrs8, 0x00000707, 0x805a00ff, 524); 
TEST_R_OP( 132 , clrs8, 0x00000700, 0x8080ff80, 528); 
TEST_R_OP( 133 , clrs8, 0x00000707, 0x8080ffff, 532); 
TEST_R_OP( 134 , clrs8, 0x00070707, 0x8000ff00, 536); 
TEST_R_OP( 135 , clrs8, 0x07070000, 0x0000b680, 540); 
TEST_R_OP( 136 , clrs8, 0x03000007, 0x0c808000, 544); 
TEST_R_OP( 137 , clrs8, 0x00070707, 0x800000ff, 548); 
TEST_R_OP( 138 , clrs8, 0x00070700, 0x65ffff80, 552); 
TEST_R_OP( 139 , clrs8, 0x07000707, 0x0080ffff, 556); 
TEST_R_OP( 140 , clrs8, 0x07000700, 0x00800086, 560); 
TEST_R_OP( 141 , clrs8, 0x07070700, 0xff000080, 564); 
TEST_R_OP( 142 , clrs8, 0x07070007, 0xffffb5ff, 568); 
TEST_R_OP( 143 , clrs8, 0x07070000, 0xff00b180, 572); 
TEST_R_OP( 144 , clrs8, 0x00000700, 0x80800080, 576); 
TEST_R_OP( 145 , clrs8, 0x02070700, 0x1f000080, 580); 
TEST_R_OP( 146 , clrs8, 0x00070707, 0x5f0000ff, 584); 
TEST_R_OP( 147 , clrs8, 0x00000007, 0x807a80ff, 588); 
TEST_R_OP( 148 , clrs8, 0x07000000, 0xff80af80, 592); 
TEST_R_OP( 149 , clrs8, 0x00000700, 0x80800080, 596); 
TEST_R_OP( 150 , clrs8, 0x00000007, 0x80808000, 600); 
TEST_R_OP( 151 , clrs8, 0x00000001, 0xa180b729, 604); 
TEST_R_OP( 152 , clrs8, 0x07070700, 0x00ffff80, 608); 
TEST_R_OP( 153 , clrs8, 0x07070701, 0x00ff0022, 612); 
TEST_R_OP( 154 , clrs8, 0x07070000, 0xffff4a80, 616); 
TEST_R_OP( 155 , clrs8, 0x07000707, 0x00800000, 620); 
TEST_R_OP( 156 , clrs8, 0x07070000, 0x00ff8080, 624); 
TEST_R_OP( 157 , clrs8, 0x00000707, 0x8591ffff, 628); 
TEST_R_OP( 158 , clrs8, 0x00020107, 0x801bcaff, 632); 
TEST_R_OP( 159 , clrs8, 0x07000000, 0x00809c80, 636); 
TEST_R_OP( 160 , clrs8, 0x00000700, 0x8080ff80, 640); 
TEST_R_OP( 161 , clrs8, 0x00070700, 0x80ffff80, 644); 
TEST_R_OP( 162 , clrs8, 0x07000701, 0xff80ffd1, 648); 
TEST_R_OP( 163 , clrs8, 0x07070700, 0xff000080, 652); 
TEST_R_OP( 164 , clrs8, 0x03070007, 0x0f0080ff, 656); 
TEST_R_OP( 165 , clrs8, 0x00000707, 0xa680ff00, 660); 
TEST_R_OP( 166 , clrs8, 0x00070007, 0x80ff8a00, 664); 
TEST_R_OP( 167 , clrs8, 0x07070700, 0xff000067, 668); 
TEST_R_OP( 168 , clrs8, 0x00000707, 0x808200ff, 672); 
TEST_R_OP( 169 , clrs8, 0x01070707, 0x27000000, 676); 
TEST_R_OP( 170 , clrs8, 0x00000000, 0x7b868080, 680); 
TEST_R_OP( 171 , clrs8, 0x01070701, 0xdf0000c5, 684); 
TEST_R_OP( 172 , clrs8, 0x00000000, 0x80808080, 688); 
TEST_R_OP( 173 , clrs8, 0x00000707, 0xa580ffff, 692); 
TEST_R_OP( 174 , clrs8, 0x00070707, 0x550000ff, 696); 
TEST_R_OP( 175 , clrs8, 0x07070700, 0x00ff0080, 700); 
TEST_R_OP( 176 , clrs8, 0x07070707, 0xffffff00, 704); 
TEST_R_OP( 177 , clrs8, 0x01070700, 0xcaffff80, 708); 
TEST_R_OP( 178 , clrs8, 0x07000707, 0x0080ffff, 712); 
TEST_R_OP( 179 , clrs8, 0x00070007, 0x80ff8000, 716); 
TEST_R_OP( 180 , clrs8, 0x07010707, 0xffd40000, 720); 
TEST_R_OP( 181 , clrs8, 0x00000707, 0x808000ff, 724); 
TEST_R_OP( 182 , clrs8, 0x07070707, 0x00ffff00, 728); 
TEST_R_OP( 183 , clrs8, 0x00070707, 0x80ff00ff, 732); 
TEST_R_OP( 184 , clrs8, 0x01070000, 0xdeff8080, 736); 
TEST_R_OP( 185 , clrs8, 0x00070700, 0x50ff0097, 740); 
TEST_R_OP( 186 , clrs8, 0x00030002, 0x6bf0941b, 744); 
TEST_R_OP( 187 , clrs8, 0x07070007, 0xff0080ff, 748); 
TEST_R_OP( 188 , clrs8, 0x07070700, 0xff00ff80, 752); 
TEST_R_OP( 189 , clrs8, 0x07070707, 0x00ffffff, 756); 
TEST_R_OP( 190 , clrs8, 0x00000700, 0xaa80ff80, 760); 
TEST_R_OP( 191 , clrs8, 0x01020700, 0x341bff80, 764); 
TEST_R_OP( 192 , clrs8, 0x07000005, 0x00b580fc, 768); 
TEST_R_OP( 193 , clrs8, 0x05000003, 0xfd5982f3, 772); 
TEST_R_OP( 194 , clrs8, 0x00000307, 0x9a800a00, 776); 
TEST_R_OP( 195 , clrs8, 0x07070007, 0x00ff80ff, 780); 
TEST_R_OP( 196 , clrs8, 0x00070703, 0xae00ff0e, 784); 
TEST_R_OP( 197 , clrs8, 0x07040700, 0xff070096, 788); 
TEST_R_OP( 198 , clrs8, 0x07010007, 0xffda4200, 792); 
TEST_R_OP( 199 , clrs8, 0x07070000, 0xffff8080, 796); 

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
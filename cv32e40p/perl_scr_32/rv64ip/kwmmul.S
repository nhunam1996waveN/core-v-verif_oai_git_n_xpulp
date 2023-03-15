# See LICENSE for license details.
#*****************************************************************************
# kwmmul.S
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

TEST_RR_OP( 2 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , kwmmul, 0x3a8f6335, 0xc2f500cb, 0x8534cc93, 24); 
TEST_RR_OP( 7 , kwmmul, 0x00000000, 0x79bca898, 0x00000000, 28); 
TEST_RR_OP( 8 , kwmmul, 0x00000000, 0x80000000, 0x00000000, 32); 
TEST_RR_OP( 9 , kwmmul, 0x00000001, 0x80000000, 0xffffffff, 36); 
TEST_RR_OP( 10 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 40); 
TEST_RR_OP( 11 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 44); 
TEST_RR_OP( 12 , kwmmul, 0x00000001, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kwmmul, 0x209a1455, 0xdf65ebab, 0x80000000, 52); 
TEST_RR_OP( 14 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 60); 
TEST_CASE( 16 ,64, x14, 1, rdov x14;);
TEST_CASE( 17 ,68, x14, 1, clrov;);
TEST_CASE( 18 ,72, x14, 0, rdov x14;);
TEST_RR_OP( 19 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 76); 
TEST_RR_OP( 20 , kwmmul, 0x739e4548, 0x8c61bab8, 0x80000000, 80); 
TEST_RR_OP( 21 , kwmmul, 0x4bcc8a47, 0x80000000, 0xb43375b9, 84); 
TEST_RR_OP( 22 , kwmmul, 0x00000000, 0xffffffff, 0xdf6d57ff, 88); 
TEST_RR_OP( 23 , kwmmul, 0x7f1ca6b7, 0x80e35949, 0x80000000, 92); 
TEST_RR_OP( 24 , kwmmul, 0x66d288ce, 0x992d7732, 0x80000000, 96); 
TEST_RR_OP( 25 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 100); 
TEST_CASE( 26 ,104, x14, 1, rdov x14;);
TEST_CASE( 27 ,108, x14, 1, clrov;);
TEST_CASE( 28 ,112, x14, 0, rdov x14;);
TEST_RR_OP( 29 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 116); 
TEST_RR_OP( 30 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 124); 
TEST_RR_OP( 32 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 136); 
TEST_RR_OP( 35 , kwmmul, 0x00000000, 0x8a9cd3be, 0x00000000, 140); 
TEST_RR_OP( 36 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , kwmmul, 0x00000000, 0xffffffff, 0xbe690954, 148); 
TEST_RR_OP( 38 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 152); 
TEST_RR_OP( 39 , kwmmul, 0x0c697a1f, 0xee066d9a, 0xa79d0b0f, 156); 
TEST_RR_OP( 40 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kwmmul, 0x02bf9554, 0xfd406aac, 0x80000000, 164); 
TEST_RR_OP( 42 , kwmmul, 0x00000000, 0x9d6daee2, 0x00000000, 168); 
TEST_RR_OP( 43 , kwmmul, 0x00000000, 0x00000000, 0xd1b94c4b, 172); 
TEST_RR_OP( 44 , kwmmul, 0x00000000, 0x47381b58, 0x00000000, 176); 
TEST_RR_OP( 45 , kwmmul, 0xd9d07468, 0x262f8b98, 0x80000000, 180); 
TEST_RR_OP( 46 , kwmmul, 0xefeef314, 0x10110cec, 0x80000000, 184); 
TEST_RR_OP( 47 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 188); 
TEST_RR_OP( 48 , kwmmul, 0xf8b867b2, 0xe2a0c734, 0x1fb95b2f, 192); 
TEST_RR_OP( 49 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 196); 
TEST_RR_OP( 50 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 200); 
TEST_RR_OP( 51 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 204); 
TEST_RR_OP( 52 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 208); 
TEST_RR_OP( 53 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 212); 
TEST_RR_OP( 54 , kwmmul, 0xffffffff, 0x0279c615, 0xffffffff, 216); 
TEST_RR_OP( 55 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 220); 
TEST_RR_OP( 56 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 224); 
TEST_RR_OP( 57 , kwmmul, 0x00000001, 0x80000000, 0xffffffff, 228); 
TEST_RR_OP( 58 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 232); 
TEST_RR_OP( 59 , kwmmul, 0x00000000, 0x80000000, 0x00000000, 236); 
TEST_RR_OP( 60 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 244); 
TEST_RR_OP( 62 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 248); 
TEST_RR_OP( 63 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 252); 
TEST_RR_OP( 64 , kwmmul, 0xe4731e00, 0x80000000, 0x1b8ce200, 256); 
TEST_RR_OP( 65 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , kwmmul, 0xffffffff, 0x60318b66, 0xffffffff, 276); 
TEST_RR_OP( 70 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 280); 
TEST_RR_OP( 71 , kwmmul, 0xffffffff, 0x2489cbc4, 0xffffffff, 284); 
TEST_RR_OP( 72 , kwmmul, 0xf04811e0, 0x1b6a4bea, 0xb69c83bb, 288); 
TEST_RR_OP( 73 , kwmmul, 0x00000000, 0xa2dc0c4e, 0x00000000, 292); 
TEST_RR_OP( 74 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 296); 
TEST_RR_OP( 75 , kwmmul, 0x00000000, 0xce6c130d, 0xffffffff, 300); 
TEST_RR_OP( 76 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 304); 
TEST_RR_OP( 77 , kwmmul, 0x00000000, 0x1594e27f, 0x00000000, 308); 
TEST_RR_OP( 78 , kwmmul, 0x00000000, 0x00000000, 0x1d76e8f7, 312); 
TEST_RR_OP( 79 , kwmmul, 0xff20347e, 0xfc005412, 0x1bfbbc53, 316); 
TEST_RR_OP( 80 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 320); 
TEST_RR_OP( 81 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 324); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_RR_OP( 85 , kwmmul, 0xeb65397d, 0x1c70400d, 0xa34287b4, 340); 
TEST_RR_OP( 86 , kwmmul, 0x00000000, 0xffffffff, 0xa46c75ec, 344); 
TEST_RR_OP( 87 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 348); 
TEST_RR_OP( 88 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 352); 
TEST_RR_OP( 89 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 356); 
TEST_RR_OP( 90 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 360); 
TEST_RR_OP( 91 , kwmmul, 0x00000000, 0xf3b73c1f, 0x00000000, 364); 
TEST_RR_OP( 92 , kwmmul, 0x00000000, 0x80000000, 0x00000000, 368); 
TEST_RR_OP( 93 , kwmmul, 0x00000000, 0x00000000, 0x5d5a5aab, 372); 
TEST_RR_OP( 94 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , kwmmul, 0x00000000, 0x00000000, 0x3b83e2a5, 380); 
TEST_RR_OP( 96 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 384); 
TEST_RR_OP( 97 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 388); 
TEST_RR_OP( 98 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 400); 
TEST_RR_OP( 101 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , kwmmul, 0x00000000, 0x00000000, 0xf9a35b31, 408); 
TEST_RR_OP( 103 , kwmmul, 0x00000000, 0xffffffff, 0xbd0da99f, 412); 
TEST_RR_OP( 104 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 416); 
TEST_RR_OP( 105 , kwmmul, 0x00000000, 0xffffffff, 0xed50ecff, 420); 
TEST_RR_OP( 106 , kwmmul, 0x98c8196f, 0x80000000, 0x6737e691, 424); 
TEST_RR_OP( 107 , kwmmul, 0x0c03a38c, 0xf3fc5c74, 0x80000000, 428); 
TEST_RR_OP( 108 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 432); 
TEST_RR_OP( 109 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 436); 
TEST_RR_OP( 110 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 440); 
TEST_RR_OP( 111 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , kwmmul, 0x00000000, 0x9e9519a8, 0xffffffff, 448); 
TEST_RR_OP( 113 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 452); 
TEST_RR_OP( 114 , kwmmul, 0x00000000, 0xbc5794fa, 0x00000000, 456); 
TEST_RR_OP( 115 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 460); 
TEST_RR_OP( 116 , kwmmul, 0xffffffff, 0x1782f93d, 0xffffffff, 464); 
TEST_RR_OP( 117 , kwmmul, 0xd3a70908, 0x6485ab5b, 0xc787b02f, 468); 
TEST_RR_OP( 118 , kwmmul, 0x00000000, 0x80000000, 0x00000000, 472); 
TEST_RR_OP( 119 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 476); 
TEST_RR_OP( 120 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 480); 
TEST_RR_OP( 121 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 484); 
TEST_RR_OP( 122 , kwmmul, 0x00000000, 0x80000000, 0x00000000, 488); 
TEST_RR_OP( 123 , kwmmul, 0x00000000, 0x00000000, 0x179ae022, 492); 
TEST_RR_OP( 124 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 496); 
TEST_CASE( 125 ,500, x14, 1, rdov x14;);
TEST_CASE( 126 ,504, x14, 1, clrov;);
TEST_CASE( 127 ,508, x14, 0, rdov x14;);
TEST_RR_OP( 128 , kwmmul, 0xffffffff, 0xffffffff, 0x7305afac, 512); 
TEST_RR_OP( 129 , kwmmul, 0xffffffff, 0x0bb68c67, 0xffffffff, 516); 
TEST_RR_OP( 130 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 520); 
TEST_RR_OP( 131 , kwmmul, 0x00000001, 0x80000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 528); 
TEST_RR_OP( 133 , kwmmul, 0xf2b75661, 0x0d48a99f, 0x80000000, 532); 
TEST_RR_OP( 134 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_RR_OP( 139 , kwmmul, 0xd78baba2, 0x2874545e, 0x80000000, 556); 
TEST_RR_OP( 140 , kwmmul, 0xffffffff, 0x63966863, 0xffffffff, 560); 
TEST_RR_OP( 141 , kwmmul, 0x00000000, 0x00000000, 0xb945b656, 564); 
TEST_RR_OP( 142 , kwmmul, 0x00000000, 0xffffffff, 0x00000000, 568); 
TEST_RR_OP( 143 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 572); 
TEST_RR_OP( 144 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 576); 
TEST_RR_OP( 145 , kwmmul, 0x00000001, 0x80000000, 0xffffffff, 580); 
TEST_RR_OP( 146 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , kwmmul, 0xffffffff, 0x41897842, 0xffffffff, 588); 
TEST_RR_OP( 148 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 592); 
TEST_RR_OP( 149 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 596); 
TEST_RR_OP( 150 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 600); 
TEST_RR_OP( 151 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 608); 
TEST_RR_OP( 153 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 612); 
TEST_RR_OP( 154 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 616); 
TEST_RR_OP( 155 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 620); 
TEST_RR_OP( 156 , kwmmul, 0x00000000, 0x992d3357, 0xffffffff, 624); 
TEST_RR_OP( 157 , kwmmul, 0x00000000, 0x00000000, 0x452f94ce, 628); 
TEST_RR_OP( 158 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , kwmmul, 0x00000000, 0xcac7f64b, 0xffffffff, 648); 
TEST_RR_OP( 163 , kwmmul, 0x00000000, 0x00000000, 0x38d2bae2, 652); 
TEST_RR_OP( 164 , kwmmul, 0x00000000, 0xdf2c4aaf, 0x00000000, 656); 
TEST_RR_OP( 165 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 660); 
TEST_RR_OP( 166 , kwmmul, 0x00000001, 0x80000000, 0xffffffff, 664); 
TEST_RR_OP( 167 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 668); 
TEST_RR_OP( 168 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 672); 
TEST_RR_OP( 169 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 676); 
TEST_RR_OP( 170 , kwmmul, 0x00000000, 0x00000000, 0xf9cc609f, 680); 
TEST_RR_OP( 171 , kwmmul, 0xffffffff, 0x193ecd8a, 0xffffffff, 684); 
TEST_RR_OP( 172 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 688); 
TEST_RR_OP( 173 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 692); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_RR_OP( 177 , kwmmul, 0xffffffff, 0xffffffff, 0x4dfe7cdf, 708); 
TEST_RR_OP( 178 , kwmmul, 0x00000000, 0x00000000, 0x00000000, 712); 
TEST_RR_OP( 179 , kwmmul, 0xd24ffa88, 0x2db00578, 0x80000000, 716); 
TEST_RR_OP( 180 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 720); 
TEST_RR_OP( 181 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , kwmmul, 0xbbfecc9f, 0xaf61278f, 0x6bf856d2, 728); 
TEST_RR_OP( 183 , kwmmul, 0x00000000, 0x00000000, 0xa410c848, 732); 
TEST_RR_OP( 184 , kwmmul, 0x00000000, 0xffffffff, 0xffffffff, 736); 
TEST_RR_OP( 185 , kwmmul, 0x6719cd4d, 0x98e632b3, 0x80000000, 740); 
TEST_RR_OP( 186 , kwmmul, 0xffffffff, 0x19b71e16, 0xffffffff, 744); 
TEST_RR_OP( 187 , kwmmul, 0x00000000, 0xffffffff, 0xeecf715b, 748); 
TEST_RR_OP( 188 , kwmmul, 0x00000000, 0x20df3aa2, 0x00000000, 752); 
TEST_RR_OP( 189 , kwmmul, 0x00000000, 0x80000000, 0x00000000, 756); 
TEST_RR_OP( 190 , kwmmul, 0x00000001, 0xffffffff, 0x80000000, 760); 
TEST_RR_OP( 191 , kwmmul, 0x00000000, 0x00000000, 0xffffffff, 764); 
TEST_RR_OP( 192 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_RR_OP( 197 , kwmmul, 0x00000000, 0x85fbf792, 0x00000000, 788); 
TEST_RR_OP( 198 , kwmmul, 0x00000000, 0x00000000, 0x80000000, 792); 
TEST_RR_OP( 199 , kwmmul, 0xe424c425, 0xd0d29acd, 0x4b943be1, 796); 

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
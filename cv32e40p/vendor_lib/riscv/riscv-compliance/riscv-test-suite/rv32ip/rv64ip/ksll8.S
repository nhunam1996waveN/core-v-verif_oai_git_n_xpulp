# See LICENSE for license details.
#*****************************************************************************
# ksll8.S
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

TEST_RR_OP( 2 , ksll8, 0xffff8080, 0xffff8080, 0x83d08080, 8); 
TEST_RR_OP( 3 , ksll8, 0x7f80007f, 0x45b60049, 0xffffb7ed, 12); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_RR_OP( 7 , ksll8, 0x55eaff17, 0x55eaff17, 0x80ff0080, 28); 
TEST_RR_OP( 8 , ksll8, 0xff800080, 0xff800080, 0x80ff0080, 32); 
TEST_RR_OP( 9 , ksll8, 0x8080007f, 0xffff0006, 0xff0000ff, 36); 
TEST_CASE( 10 ,40, x14, 1, rdov x14;);
TEST_CASE( 11 ,44, x14, 1, clrov;);
TEST_CASE( 12 ,48, x14, 0, rdov x14;);
TEST_RR_OP( 13 , ksll8, 0x802b5300, 0x802b5300, 0x90be8000, 52); 
TEST_RR_OP( 14 , ksll8, 0xff80ff00, 0xff80ff00, 0x39000000, 56); 
TEST_RR_OP( 15 , ksll8, 0x80d2fe80, 0x80e9ff80, 0xffff00f9, 60); 
TEST_CASE( 16 ,64, x14, 1, rdov x14;);
TEST_CASE( 17 ,68, x14, 1, clrov;);
TEST_CASE( 18 ,72, x14, 0, rdov x14;);
TEST_RR_OP( 19 , ksll8, 0xff80008c, 0xff80008c, 0x80008080, 76); 
TEST_RR_OP( 20 , ksll8, 0x80008080, 0x800080a4, 0x00ec8062, 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 24 , ksll8, 0xffff0000, 0xffff0000, 0xb9ff0000, 96); 
TEST_RR_OP( 25 , ksll8, 0x0080ed5e, 0x0080ed5e, 0x82800680, 100); 
TEST_RR_OP( 26 , ksll8, 0x7f008000, 0x66008000, 0x00ff61fa, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , ksll8, 0x00808000, 0x00808000, 0xd834ffff, 120); 
TEST_CASE( 31 ,124, x14, 1, rdov x14;);
TEST_CASE( 32 ,128, x14, 1, clrov;);
TEST_CASE( 33 ,132, x14, 0, rdov x14;);
TEST_RR_OP( 34 , ksll8, 0x80808080, 0x80808080, 0x69000080, 136); 
TEST_RR_OP( 35 , ksll8, 0x80ffcc6f, 0x80ffcc6f, 0x003bae80, 140); 
TEST_RR_OP( 36 , ksll8, 0xff518000, 0xff518000, 0xff800000, 144); 
TEST_RR_OP( 37 , ksll8, 0x8080807f, 0xa9fcff51, 0x80eaffff, 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_RR_OP( 41 , ksll8, 0x00000080, 0x00000080, 0x44808000, 164); 
TEST_RR_OP( 42 , ksll8, 0xff8000f5, 0xff8000f5, 0xff804800, 168); 
TEST_RR_OP( 43 , ksll8, 0x0000c531, 0x0000c531, 0x8700ff00, 172); 
TEST_RR_OP( 44 , ksll8, 0x7f807f80, 0x438034ff, 0x00c6ffff, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , ksll8, 0x80807f80, 0xffff4380, 0x80ffffff, 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_RR_OP( 52 , ksll8, 0x8080ff83, 0x8080ff83, 0x00800080, 208); 
TEST_RR_OP( 53 , ksll8, 0xfefe80fe, 0xffff80ff, 0x00ff5249, 212); 
TEST_CASE( 54 ,216, x14, 1, rdov x14;);
TEST_CASE( 55 ,220, x14, 1, clrov;);
TEST_CASE( 56 ,224, x14, 0, rdov x14;);
TEST_RR_OP( 57 , ksll8, 0x7f80e000, 0x7480ff00, 0x80ff80ed, 228); 
TEST_CASE( 58 ,232, x14, 1, rdov x14;);
TEST_CASE( 59 ,236, x14, 1, clrov;);
TEST_CASE( 60 ,240, x14, 0, rdov x14;);
TEST_RR_OP( 61 , ksll8, 0xe08e6eff, 0xe08e6eff, 0x92006780, 244); 
TEST_RR_OP( 62 , ksll8, 0x80c07fc0, 0x80ff6bff, 0x00faff4e, 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_RR_OP( 66 , ksll8, 0x00808000, 0x00beff00, 0x800080ff, 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_RR_OP( 70 , ksll8, 0x00ffffff, 0x00ffffff, 0x80809c98, 280); 
TEST_RR_OP( 71 , ksll8, 0xff80006c, 0xff80006c, 0xffff8080, 284); 
TEST_RR_OP( 72 , ksll8, 0x00008080, 0x0000ff80, 0x805600ff, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , ksll8, 0x8000ff00, 0x8000ff00, 0xc6800000, 304); 
TEST_RR_OP( 77 , ksll8, 0x00ffff37, 0x00ffff37, 0x00800000, 308); 
TEST_RR_OP( 78 , ksll8, 0x0092ff00, 0x0092ff00, 0x00008080, 312); 
TEST_RR_OP( 79 , ksll8, 0x86ff80b3, 0x86ff80b3, 0xff651580, 316); 
TEST_RR_OP( 80 , ksll8, 0xe65080ff, 0xe65080ff, 0x12807600, 320); 
TEST_RR_OP( 81 , ksll8, 0xff8000ff, 0xff8000ff, 0xff4d8e00, 324); 
TEST_RR_OP( 82 , ksll8, 0x80008080, 0x8000ffff, 0xa000b9ff, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , ksll8, 0xffffff7b, 0xffffff7b, 0x2200ffd0, 344); 
TEST_RR_OP( 87 , ksll8, 0xff80baff, 0xff80baff, 0x00ff8000, 348); 
TEST_RR_OP( 88 , ksll8, 0x8080807f, 0xa1ffff7d, 0xffffffaf, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_RR_OP( 92 , ksll8, 0x6880007f, 0x6880007f, 0x6f008080, 368); 
TEST_RR_OP( 93 , ksll8, 0xff8080ff, 0xff8080ff, 0x00803f00, 372); 
TEST_RR_OP( 94 , ksll8, 0xff808085, 0xff808085, 0xffffdc00, 376); 
TEST_RR_OP( 95 , ksll8, 0x80808080, 0xacff8080, 0x80ff00ff, 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_RR_OP( 99 , ksll8, 0x80808080, 0xc280c4ff, 0x80f0ffff, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , ksll8, 0x80ffff0e, 0x80ffff0e, 0xff808080, 412); 
TEST_RR_OP( 104 , ksll8, 0x00ff8000, 0x00ff8000, 0x80ff8080, 416); 
TEST_RR_OP( 105 , ksll8, 0x2e0014ff, 0x2e0014ff, 0x80ff7080, 420); 
TEST_RR_OP( 106 , ksll8, 0xfffffff2, 0xfffffff2, 0xffff0000, 424); 
TEST_RR_OP( 107 , ksll8, 0x5d00ff00, 0x5d00ff00, 0xa780af00, 428); 
TEST_RR_OP( 108 , ksll8, 0x8c804300, 0x8c804300, 0xff800000, 432); 
TEST_RR_OP( 109 , ksll8, 0xff8000ff, 0xff8000ff, 0x00ffff00, 436); 
TEST_RR_OP( 110 , ksll8, 0xff80ff0d, 0xff80ff0d, 0x0000a680, 440); 
TEST_RR_OP( 111 , ksll8, 0x00800080, 0x008200ac, 0xffffff0a, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , ksll8, 0x80ff7f80, 0x80ff7f80, 0x97ff0000, 460); 
TEST_RR_OP( 116 , ksll8, 0xfc808080, 0xff8080b9, 0xffffff62, 464); 
TEST_CASE( 117 ,468, x14, 1, rdov x14;);
TEST_CASE( 118 ,472, x14, 1, clrov;);
TEST_CASE( 119 ,476, x14, 0, rdov x14;);
TEST_RR_OP( 120 , ksll8, 0xff800000, 0xff800000, 0x80c2e400, 480); 
TEST_RR_OP( 121 , ksll8, 0x008080c0, 0x008080ff, 0xffff80be, 484); 
TEST_CASE( 122 ,488, x14, 1, rdov x14;);
TEST_CASE( 123 ,492, x14, 1, clrov;);
TEST_CASE( 124 ,496, x14, 0, rdov x14;);
TEST_RR_OP( 125 , ksll8, 0x807f8080, 0xff5affdc, 0x38ff9dff, 500); 
TEST_CASE( 126 ,504, x14, 1, rdov x14;);
TEST_CASE( 127 ,508, x14, 1, clrov;);
TEST_CASE( 128 ,512, x14, 0, rdov x14;);
TEST_RR_OP( 129 , ksll8, 0x00988080, 0x00988080, 0x8000ff00, 516); 
TEST_RR_OP( 130 , ksll8, 0x80046980, 0x80046980, 0x0000ff80, 520); 
TEST_RR_OP( 131 , ksll8, 0x80800080, 0xeaff0080, 0x008002ff, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , ksll8, 0x00ff8000, 0x00ff8000, 0xff310000, 540); 
TEST_RR_OP( 136 , ksll8, 0x0e0080ff, 0x0e0080ff, 0x8000ff80, 544); 
TEST_RR_OP( 137 , ksll8, 0x80010000, 0x80010000, 0x50808080, 548); 
TEST_RR_OP( 138 , ksll8, 0x00800000, 0x00ff0000, 0x000000ff, 552); 
TEST_RR_OP( 139 , ksll8, 0xff002c00, 0xff002c00, 0xff00ff80, 556); 
TEST_RR_OP( 140 , ksll8, 0x7f808000, 0x1b80ff00, 0x00ff69ff, 560); 
TEST_CASE( 141 ,564, x14, 1, rdov x14;);
TEST_CASE( 142 ,568, x14, 1, clrov;);
TEST_CASE( 143 ,572, x14, 0, rdov x14;);
TEST_RR_OP( 144 , ksll8, 0x80f08080, 0x80ff80c0, 0x8cff8074, 576); 
TEST_CASE( 145 ,580, x14, 1, rdov x14;);
TEST_CASE( 146 ,584, x14, 1, clrov;);
TEST_CASE( 147 ,588, x14, 0, rdov x14;);
TEST_RR_OP( 148 , ksll8, 0xff80ffff, 0xff80ffff, 0x80008000, 592); 
TEST_RR_OP( 149 , ksll8, 0x00fefefe, 0x00ffffff, 0x1a00ff99, 596); 
TEST_RR_OP( 150 , ksll8, 0x80ff805f, 0x80ff805f, 0xb7dd8080, 600); 
TEST_RR_OP( 151 , ksll8, 0x00f00080, 0x00ff0080, 0x8080ff64, 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_RR_OP( 155 , ksll8, 0x00ffff00, 0x00ffff00, 0x80008080, 620); 
TEST_RR_OP( 156 , ksll8, 0x0000f0f0, 0x0000ffff, 0x00a89a8c, 624); 
TEST_RR_OP( 157 , ksll8, 0xffff00ff, 0xffff00ff, 0xff80ff00, 628); 
TEST_RR_OP( 158 , ksll8, 0x80ffff27, 0x80ffff27, 0x00008080, 632); 
TEST_RR_OP( 159 , ksll8, 0x7f808080, 0x3398ffa7, 0xb2ff80ff, 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_RR_OP( 163 , ksll8, 0x808080ff, 0x808080ff, 0x00a23158, 652); 
TEST_RR_OP( 164 , ksll8, 0x80008080, 0x8000ff80, 0x878000ff, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , ksll8, 0x80808000, 0xffa5ff00, 0x2eff00ff, 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_RR_OP( 172 , ksll8, 0x80ff5500, 0x80ff5500, 0xff800080, 688); 
TEST_RR_OP( 173 , ksll8, 0x00ff5aff, 0x00ff5aff, 0xff80ffd0, 692); 
TEST_RR_OP( 174 , ksll8, 0xffffba00, 0xffffba00, 0xd6008000, 696); 
TEST_RR_OP( 175 , ksll8, 0x80f80080, 0xa1ff008b, 0x80ff6e1b, 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_RR_OP( 179 , ksll8, 0x00808000, 0x0080da00, 0x80bfffda, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , ksll8, 0x8080807f, 0x80808071, 0x800084ff, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , ksll8, 0x80ff8000, 0x80ff8000, 0x00000080, 748); 
TEST_RR_OP( 188 , ksll8, 0x8024ff00, 0x8024ff00, 0x00808080, 752); 
TEST_RR_OP( 189 , ksll8, 0x8080007f, 0x8080004f, 0xff670004, 756); 
TEST_CASE( 190 ,760, x14, 1, rdov x14;);
TEST_CASE( 191 ,764, x14, 1, clrov;);
TEST_CASE( 192 ,768, x14, 0, rdov x14;);
TEST_RR_OP( 193 , ksll8, 0xff6eff80, 0xff6eff80, 0x00d80000, 772); 
TEST_RR_OP( 194 , ksll8, 0x008a7fe6, 0x00c56df3, 0x8056ff31, 776); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_RR_OP( 198 , ksll8, 0x00411a00, 0x00411a00, 0xce34ff00, 792); 
TEST_RR_OP( 199 , ksll8, 0x8080b280, 0x8080b280, 0x0000b480, 796); 

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
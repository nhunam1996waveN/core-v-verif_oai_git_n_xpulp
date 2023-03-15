# See LICENSE for license details.
#*****************************************************************************
# uksub8.S
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

TEST_RR_OP( 2 , uksub8, 0x7fb90000, 0xffffffff, 0x8046ffff, 8); 
TEST_RR_OP( 3 , uksub8, 0x80e20000, 0x80e20000, 0x0000473e, 12); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_RR_OP( 7 , uksub8, 0x0700ff00, 0x0700ff80, 0x007200b9, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_RR_OP( 11 , uksub8, 0x49230000, 0x4980ffff, 0x005dffff, 44); 
TEST_RR_OP( 12 , uksub8, 0x7ff60000, 0xffff8000, 0x80098080, 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_RR_OP( 16 , uksub8, 0x00000000, 0x001c0080, 0x80ddffff, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , uksub8, 0x00000000, 0x29008080, 0xbbff8080, 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 24 , uksub8, 0x7f80007f, 0xff8000ff, 0x8000e380, 96); 
TEST_CASE( 25 ,100, x14, 1, rdov x14;);
TEST_CASE( 26 ,104, x14, 1, clrov;);
TEST_CASE( 27 ,108, x14, 0, rdov x14;);
TEST_RR_OP( 28 , uksub8, 0xff000000, 0xff008058, 0x0000806b, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_RR_OP( 32 , uksub8, 0xa6000000, 0xff000080, 0x59ff21ff, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , uksub8, 0x0000ff7f, 0x8080ffff, 0x80800080, 144); 
TEST_RR_OP( 37 , uksub8, 0x00008000, 0x3b808000, 0xff980000, 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_RR_OP( 41 , uksub8, 0x0000ab00, 0x8080ab00, 0x80970026, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , uksub8, 0x00000045, 0x00ff3cff, 0xffffffba, 180); 
TEST_CASE( 46 ,184, x14, 1, rdov x14;);
TEST_CASE( 47 ,188, x14, 1, clrov;);
TEST_CASE( 48 ,192, x14, 0, rdov x14;);
TEST_RR_OP( 49 , uksub8, 0xff009c00, 0xff00ff00, 0x00ff63ff, 196); 
TEST_CASE( 50 ,200, x14, 1, rdov x14;);
TEST_CASE( 51 ,204, x14, 1, clrov;);
TEST_CASE( 52 ,208, x14, 0, rdov x14;);
TEST_RR_OP( 53 , uksub8, 0x20100000, 0xff90ffff, 0xdf80ffff, 212); 
TEST_RR_OP( 54 , uksub8, 0x00000080, 0xff800080, 0xffff0000, 216); 
TEST_CASE( 55 ,220, x14, 1, rdov x14;);
TEST_CASE( 56 ,224, x14, 1, clrov;);
TEST_CASE( 57 ,228, x14, 0, rdov x14;);
TEST_RR_OP( 58 , uksub8, 0x0200ff7f, 0x804bffff, 0x7eff0080, 232); 
TEST_CASE( 59 ,236, x14, 1, rdov x14;);
TEST_CASE( 60 ,240, x14, 1, clrov;);
TEST_CASE( 61 ,244, x14, 0, rdov x14;);
TEST_RR_OP( 62 , uksub8, 0x00000000, 0x00808080, 0x80ffffff, 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_RR_OP( 66 , uksub8, 0x00000000, 0x80800017, 0xff8006ff, 264); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_RR_OP( 70 , uksub8, 0x2e005700, 0xe7005780, 0xb9ff0080, 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_RR_OP( 74 , uksub8, 0x8000001a, 0x8000cb80, 0x0000e366, 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_RR_OP( 78 , uksub8, 0x007f4f00, 0x20ffff80, 0x7e80b0ff, 312); 
TEST_CASE( 79 ,316, x14, 1, rdov x14;);
TEST_CASE( 80 ,320, x14, 1, clrov;);
TEST_CASE( 81 ,324, x14, 0, rdov x14;);
TEST_RR_OP( 82 , uksub8, 0x7f00ab86, 0xff00ab86, 0x80800000, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , uksub8, 0x80a10000, 0x80ff0080, 0x005ed8ff, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , uksub8, 0x0000fbff, 0x3a80fbff, 0x80800000, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , uksub8, 0xc7880000, 0xc7ff7e80, 0x0077ffbb, 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_RR_OP( 98 , uksub8, 0x007f7f00, 0x80ffff80, 0x80808080, 392); 
TEST_RR_OP( 99 , uksub8, 0x807f0013, 0x80ff2e93, 0x00805280, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , uksub8, 0x00000000, 0x8000ff00, 0x9f02ffcb, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , uksub8, 0x00000000, 0x002c8080, 0x80ffff80, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , uksub8, 0x7f80005f, 0xff807080, 0x80008021, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , uksub8, 0x00000000, 0x80008062, 0xca0080da, 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_RR_OP( 119 , uksub8, 0x00008000, 0x0099801a, 0x6dff00ff, 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_RR_OP( 123 , uksub8, 0x00000080, 0x006f8080, 0x80ffff00, 492); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_RR_OP( 127 , uksub8, 0x0000007f, 0x8022ffff, 0x806cff80, 508); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_RR_OP( 131 , uksub8, 0x007f7fa9, 0x00ffffa9, 0xff808000, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , uksub8, 0x000074ff, 0xfffff4ff, 0xffff8000, 540); 
TEST_RR_OP( 136 , uksub8, 0x00000000, 0x000000bb, 0x468000ff, 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_RR_OP( 140 , uksub8, 0xab000000, 0xff00ffff, 0x54ffffff, 560); 
TEST_CASE( 141 ,564, x14, 1, rdov x14;);
TEST_CASE( 142 ,568, x14, 1, clrov;);
TEST_CASE( 143 ,572, x14, 0, rdov x14;);
TEST_RR_OP( 144 , uksub8, 0x00007400, 0x8080f400, 0x80ff8000, 576); 
TEST_CASE( 145 ,580, x14, 1, rdov x14;);
TEST_CASE( 146 ,584, x14, 1, clrov;);
TEST_CASE( 147 ,588, x14, 0, rdov x14;);
TEST_RR_OP( 148 , uksub8, 0x00000048, 0x008000ff, 0x57c580b7, 592); 
TEST_CASE( 149 ,596, x14, 1, rdov x14;);
TEST_CASE( 150 ,600, x14, 1, clrov;);
TEST_CASE( 151 ,604, x14, 0, rdov x14;);
TEST_RR_OP( 152 , uksub8, 0x007f0000, 0xf6ff0000, 0xff806400, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , uksub8, 0x7f7f00ff, 0xffff00ff, 0x80808000, 624); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_RR_OP( 160 , uksub8, 0xff00ff00, 0xff00ff00, 0x007600ff, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , uksub8, 0x6d000000, 0x97000000, 0x2a8eff80, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , uksub8, 0x7f4d0000, 0xffff00a6, 0x80b2ffff, 672); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_RR_OP( 172 , uksub8, 0x00e00000, 0x80ff0000, 0xff1f00dc, 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_RR_OP( 176 , uksub8, 0x00008000, 0x000080f5, 0x258000ff, 704); 
TEST_CASE( 177 ,708, x14, 1, rdov x14;);
TEST_CASE( 178 ,712, x14, 1, clrov;);
TEST_CASE( 179 ,716, x14, 0, rdov x14;);
TEST_RR_OP( 180 , uksub8, 0x7f000000, 0xff803200, 0x80805680, 720); 
TEST_CASE( 181 ,724, x14, 1, rdov x14;);
TEST_CASE( 182 ,728, x14, 1, clrov;);
TEST_CASE( 183 ,732, x14, 0, rdov x14;);
TEST_RR_OP( 184 , uksub8, 0x00006062, 0xff0061e2, 0xfff00180, 736); 
TEST_CASE( 185 ,740, x14, 1, rdov x14;);
TEST_CASE( 186 ,744, x14, 1, clrov;);
TEST_CASE( 187 ,748, x14, 0, rdov x14;);
TEST_RR_OP( 188 , uksub8, 0x00000000, 0x00603900, 0x00ff8080, 752); 
TEST_CASE( 189 ,756, x14, 1, rdov x14;);
TEST_CASE( 190 ,760, x14, 1, clrov;);
TEST_CASE( 191 ,764, x14, 0, rdov x14;);
TEST_RR_OP( 192 , uksub8, 0x098000ee, 0x1b8000ff, 0x12000011, 768); 
TEST_RR_OP( 193 , uksub8, 0x00000000, 0x00008010, 0x008080ff, 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_RR_OP( 197 , uksub8, 0x00000c00, 0x80ffff00, 0xfffff376, 788); 
TEST_CASE( 198 ,792, x14, 1, rdov x14;);
TEST_CASE( 199 ,796, x14, 1, clrov;);

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
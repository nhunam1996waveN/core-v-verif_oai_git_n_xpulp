# See LICENSE for license details.
#*****************************************************************************
# sclip32.S
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

TEST_IMM_OP( 2 , sclip32, 0x00000000, 0x00000000, 22, 8 ); 
TEST_IMM_OP( 3 , sclip32, 0xfffffc00, 0xf9d4f1b0, 10, 12 ); 
TEST_CASE( 4 ,16, x14, 1, rdov x14;);
TEST_CASE( 5 ,20, x14, 1, clrov;);
TEST_CASE( 6 ,24, x14, 0, rdov x14;);
TEST_IMM_OP( 7 , sclip32, 0xffffffff, 0xffffffff, 27, 28 ); 
TEST_IMM_OP( 8 , sclip32, 0x00000000, 0x014c8e60, 0, 32 ); 
TEST_CASE( 9 ,36, x14, 1, rdov x14;);
TEST_CASE( 10 ,40, x14, 1, clrov;);
TEST_CASE( 11 ,44, x14, 0, rdov x14;);
TEST_IMM_OP( 12 , sclip32, 0xf8000000, 0x80000000, 27, 48 ); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_IMM_OP( 16 , sclip32, 0xfffffff0, 0x98551446, 4, 64 ); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_IMM_OP( 20 , sclip32, 0xffffff80, 0x80000000, 7, 80 ); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_IMM_OP( 24 , sclip32, 0x00000000, 0x00000000, 11, 96 ); 
TEST_IMM_OP( 25 , sclip32, 0xffffffff, 0xffffffff, 12, 100 ); 
TEST_IMM_OP( 26 , sclip32, 0x00000000, 0x00000000, 26, 104 ); 
TEST_IMM_OP( 27 , sclip32, 0xffffffff, 0xee6b6ee3, 0, 108 ); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_IMM_OP( 31 , sclip32, 0x001fffff, 0x3b13e2ae, 21, 124 ); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_IMM_OP( 35 , sclip32, 0xf0000000, 0x80000000, 28, 140 ); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_IMM_OP( 39 , sclip32, 0x00000000, 0x00000000, 21, 156 ); 
TEST_IMM_OP( 40 , sclip32, 0x0000003f, 0x279fde76, 6, 160 ); 
TEST_CASE( 41 ,164, x14, 1, rdov x14;);
TEST_CASE( 42 ,168, x14, 1, clrov;);
TEST_CASE( 43 ,172, x14, 0, rdov x14;);
TEST_IMM_OP( 44 , sclip32, 0xfffff800, 0xf11dccc1, 11, 176 ); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_IMM_OP( 48 , sclip32, 0xffffffff, 0xffffffff, 30, 192 ); 
TEST_IMM_OP( 49 , sclip32, 0xffffffff, 0xffffffff, 28, 196 ); 
TEST_IMM_OP( 50 , sclip32, 0xffffffff, 0xffffffff, 2, 200 ); 
TEST_IMM_OP( 51 , sclip32, 0xfc2103f6, 0xfc2103f6, 28, 204 ); 
TEST_IMM_OP( 52 , sclip32, 0xf8000000, 0xc6b3a69b, 27, 208 ); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_IMM_OP( 56 , sclip32, 0xffffffff, 0xffffffff, 28, 224 ); 
TEST_IMM_OP( 57 , sclip32, 0xfe000000, 0x80000000, 25, 228 ); 
TEST_CASE( 58 ,232, x14, 1, rdov x14;);
TEST_CASE( 59 ,236, x14, 1, clrov;);
TEST_CASE( 60 ,240, x14, 0, rdov x14;);
TEST_IMM_OP( 61 , sclip32, 0xffffffff, 0xffffffff, 13, 244 ); 
TEST_IMM_OP( 62 , sclip32, 0xffffffe0, 0x80000000, 5, 248 ); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_IMM_OP( 66 , sclip32, 0xc0000000, 0x80000000, 30, 264 ); 
TEST_CASE( 67 ,268, x14, 1, rdov x14;);
TEST_CASE( 68 ,272, x14, 1, clrov;);
TEST_CASE( 69 ,276, x14, 0, rdov x14;);
TEST_IMM_OP( 70 , sclip32, 0xffffffff, 0xffffffff, 24, 280 ); 
TEST_IMM_OP( 71 , sclip32, 0x00000000, 0x00000000, 20, 284 ); 
TEST_IMM_OP( 72 , sclip32, 0xffc00000, 0xbc6ff2b7, 22, 288 ); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_IMM_OP( 76 , sclip32, 0xffffff00, 0x80000000, 8, 304 ); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_IMM_OP( 80 , sclip32, 0x00000000, 0x00000000, 29, 320 ); 
TEST_IMM_OP( 81 , sclip32, 0x0000003f, 0x15c3da7d, 6, 324 ); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_IMM_OP( 85 , sclip32, 0x00000000, 0x00000000, 17, 340 ); 
TEST_IMM_OP( 86 , sclip32, 0xffffffff, 0xffffffff, 20, 344 ); 
TEST_IMM_OP( 87 , sclip32, 0x00000000, 0x00000000, 28, 348 ); 
TEST_IMM_OP( 88 , sclip32, 0xffffffff, 0xffffffff, 5, 352 ); 
TEST_IMM_OP( 89 , sclip32, 0x00000000, 0x00000000, 6, 356 ); 
TEST_IMM_OP( 90 , sclip32, 0xfffffc00, 0x80000000, 10, 360 ); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_IMM_OP( 94 , sclip32, 0xffffffff, 0xffffffff, 20, 376 ); 
TEST_IMM_OP( 95 , sclip32, 0xffff8000, 0xfb33143f, 15, 380 ); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_IMM_OP( 99 , sclip32, 0xfffffe00, 0xab48cb50, 9, 396 ); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_IMM_OP( 103 , sclip32, 0x00000001, 0x13dac0c1, 1, 412 ); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_IMM_OP( 107 , sclip32, 0x00000000, 0x00000000, 19, 428 ); 
TEST_IMM_OP( 108 , sclip32, 0xffffffff, 0xffffffff, 13, 432 ); 
TEST_IMM_OP( 109 , sclip32, 0x01ffffff, 0x6be4088d, 25, 436 ); 
TEST_CASE( 110 ,440, x14, 1, rdov x14;);
TEST_CASE( 111 ,444, x14, 1, clrov;);
TEST_CASE( 112 ,448, x14, 0, rdov x14;);
TEST_IMM_OP( 113 , sclip32, 0x00000000, 0x00000000, 22, 452 ); 
TEST_IMM_OP( 114 , sclip32, 0xfffc0000, 0x80000000, 18, 456 ); 
TEST_CASE( 115 ,460, x14, 1, rdov x14;);
TEST_CASE( 116 ,464, x14, 1, clrov;);
TEST_CASE( 117 ,468, x14, 0, rdov x14;);
TEST_IMM_OP( 118 , sclip32, 0x00000000, 0x00000000, 13, 472 ); 
TEST_IMM_OP( 119 , sclip32, 0xfffe0000, 0x80000000, 17, 476 ); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_IMM_OP( 123 , sclip32, 0x00000001, 0x75ca4a8f, 1, 492 ); 
TEST_CASE( 124 ,496, x14, 1, rdov x14;);
TEST_CASE( 125 ,500, x14, 1, clrov;);
TEST_CASE( 126 ,504, x14, 0, rdov x14;);
TEST_IMM_OP( 127 , sclip32, 0xc0000000, 0x80000000, 30, 508 ); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_IMM_OP( 131 , sclip32, 0xffff0000, 0x92b4f8f4, 16, 524 ); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_IMM_OP( 135 , sclip32, 0xffffffff, 0xffffffff, 6, 540 ); 
TEST_IMM_OP( 136 , sclip32, 0xffffffff, 0xffffffff, 3, 544 ); 
TEST_IMM_OP( 137 , sclip32, 0xffffffff, 0xffffffff, 29, 548 ); 
TEST_IMM_OP( 138 , sclip32, 0x00000000, 0x00000000, 17, 552 ); 
TEST_IMM_OP( 139 , sclip32, 0xc0000000, 0x80000000, 30, 556 ); 
TEST_CASE( 140 ,560, x14, 1, rdov x14;);
TEST_CASE( 141 ,564, x14, 1, clrov;);
TEST_CASE( 142 ,568, x14, 0, rdov x14;);
TEST_IMM_OP( 143 , sclip32, 0xfc000000, 0x80000000, 26, 572 ); 
TEST_CASE( 144 ,576, x14, 1, rdov x14;);
TEST_CASE( 145 ,580, x14, 1, clrov;);
TEST_CASE( 146 ,584, x14, 0, rdov x14;);
TEST_IMM_OP( 147 , sclip32, 0x00003fff, 0x06c7c05b, 14, 588 ); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_IMM_OP( 151 , sclip32, 0xffffc000, 0x80000000, 14, 604 ); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_IMM_OP( 155 , sclip32, 0xffffe000, 0x80000000, 13, 620 ); 
TEST_CASE( 156 ,624, x14, 1, rdov x14;);
TEST_CASE( 157 ,628, x14, 1, clrov;);
TEST_CASE( 158 ,632, x14, 0, rdov x14;);
TEST_IMM_OP( 159 , sclip32, 0xffffe000, 0x80000000, 13, 636 ); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_IMM_OP( 163 , sclip32, 0xffffffff, 0xffffffff, 15, 652 ); 
TEST_IMM_OP( 164 , sclip32, 0x00000000, 0x00000000, 16, 656 ); 
TEST_IMM_OP( 165 , sclip32, 0xffffffff, 0xffffffff, 24, 660 ); 
TEST_IMM_OP( 166 , sclip32, 0xffffffff, 0xffffffff, 1, 664 ); 
TEST_IMM_OP( 167 , sclip32, 0x00000000, 0x00000000, 26, 668 ); 
TEST_IMM_OP( 168 , sclip32, 0xffc00000, 0x80000000, 22, 672 ); 
TEST_CASE( 169 ,676, x14, 1, rdov x14;);
TEST_CASE( 170 ,680, x14, 1, clrov;);
TEST_CASE( 171 ,684, x14, 0, rdov x14;);
TEST_IMM_OP( 172 , sclip32, 0xffffe000, 0x80000000, 13, 688 ); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_IMM_OP( 176 , sclip32, 0xffffffff, 0xffffffff, 8, 704 ); 
TEST_IMM_OP( 177 , sclip32, 0xfffffff0, 0x80000000, 4, 708 ); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_IMM_OP( 181 , sclip32, 0x007fffff, 0x6d96ef17, 23, 724 ); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_IMM_OP( 185 , sclip32, 0xffffffff, 0x80000000, 0, 740 ); 
TEST_CASE( 186 ,744, x14, 1, rdov x14;);
TEST_CASE( 187 ,748, x14, 1, clrov;);
TEST_CASE( 188 ,752, x14, 0, rdov x14;);
TEST_IMM_OP( 189 , sclip32, 0xffffff80, 0x80000000, 7, 756 ); 
TEST_CASE( 190 ,760, x14, 1, rdov x14;);
TEST_CASE( 191 ,764, x14, 1, clrov;);
TEST_CASE( 192 ,768, x14, 0, rdov x14;);
TEST_IMM_OP( 193 , sclip32, 0x00000000, 0x00000000, 19, 772 ); 
TEST_IMM_OP( 194 , sclip32, 0xfffffff0, 0x959b4f6c, 4, 776 ); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_IMM_OP( 198 , sclip32, 0xe0000000, 0x80000000, 29, 792 ); 
TEST_CASE( 199 ,796, x14, 1, rdov x14;);

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
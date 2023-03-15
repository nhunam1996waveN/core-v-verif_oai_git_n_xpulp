# See LICENSE for license details.
#*****************************************************************************
# zunpkd831.S
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

TEST_R_OP( 2 , zunpkd831, 0x00800080, 0x808080ff, 8); 
TEST_R_OP( 3 , zunpkd831, 0x008c00ff, 0x8c00ffed, 12); 
TEST_R_OP( 4 , zunpkd831, 0x00800080, 0x80808080, 16); 
TEST_R_OP( 5 , zunpkd831, 0x00a90080, 0xa9808080, 20); 
TEST_R_OP( 6 , zunpkd831, 0x008000ff, 0x8080ff00, 24); 
TEST_R_OP( 7 , zunpkd831, 0x00d90010, 0xd9f61080, 28); 
TEST_R_OP( 8 , zunpkd831, 0x00800080, 0x80808000, 32); 
TEST_R_OP( 9 , zunpkd831, 0x00000000, 0x00e70000, 36); 
TEST_R_OP( 10 , zunpkd831, 0x0000009c, 0x00009c00, 40); 
TEST_R_OP( 11 , zunpkd831, 0x00000080, 0x00aa8000, 44); 
TEST_R_OP( 12 , zunpkd831, 0x00280053, 0x280f5300, 48); 
TEST_R_OP( 13 , zunpkd831, 0x00000080, 0x008080ff, 52); 
TEST_R_OP( 14 , zunpkd831, 0x00990000, 0x99800080, 56); 
TEST_R_OP( 15 , zunpkd831, 0x000000ff, 0x00b4ffc7, 60); 
TEST_R_OP( 16 , zunpkd831, 0x00f90000, 0xf90000ff, 64); 
TEST_R_OP( 17 , zunpkd831, 0x00ff0000, 0xffff0090, 68); 
TEST_R_OP( 18 , zunpkd831, 0x00ff00ff, 0xff66ff80, 72); 
TEST_R_OP( 19 , zunpkd831, 0x00000042, 0x00a04200, 76); 
TEST_R_OP( 20 , zunpkd831, 0x00ff00d3, 0xffced3a3, 80); 
TEST_R_OP( 21 , zunpkd831, 0x00000000, 0x000000be, 84); 
TEST_R_OP( 22 , zunpkd831, 0x00800054, 0x805154a0, 88); 
TEST_R_OP( 23 , zunpkd831, 0x00000080, 0x008e80a1, 92); 
TEST_R_OP( 24 , zunpkd831, 0x00ff0000, 0xff5b00ff, 96); 
TEST_R_OP( 25 , zunpkd831, 0x00000080, 0x008080ff, 100); 
TEST_R_OP( 26 , zunpkd831, 0x00ff0080, 0xff808080, 104); 
TEST_R_OP( 27 , zunpkd831, 0x00ff0080, 0xffff80ff, 108); 
TEST_R_OP( 28 , zunpkd831, 0x00000000, 0x00800080, 112); 
TEST_R_OP( 29 , zunpkd831, 0x00800080, 0x8000809c, 116); 
TEST_R_OP( 30 , zunpkd831, 0x000000e5, 0x0034e500, 120); 
TEST_R_OP( 31 , zunpkd831, 0x00000080, 0x008080bc, 124); 
TEST_R_OP( 32 , zunpkd831, 0x00ff008f, 0xffa68f00, 128); 
TEST_R_OP( 33 , zunpkd831, 0x00ff0000, 0xffff00fd, 132); 
TEST_R_OP( 34 , zunpkd831, 0x007c0000, 0x7c00000f, 136); 
TEST_R_OP( 35 , zunpkd831, 0x0080009b, 0x80dc9b75, 140); 
TEST_R_OP( 36 , zunpkd831, 0x002b0000, 0x2b000080, 144); 
TEST_R_OP( 37 , zunpkd831, 0x003400d3, 0x3480d34b, 148); 
TEST_R_OP( 38 , zunpkd831, 0x00660000, 0x66000000, 152); 
TEST_R_OP( 39 , zunpkd831, 0x000000ff, 0x004eff7a, 156); 
TEST_R_OP( 40 , zunpkd831, 0x00ff0080, 0xff028080, 160); 
TEST_R_OP( 41 , zunpkd831, 0x00000080, 0x00808080, 164); 
TEST_R_OP( 42 , zunpkd831, 0x000200d7, 0x0280d7ff, 168); 
TEST_R_OP( 43 , zunpkd831, 0x00ff0000, 0xffff00ff, 172); 
TEST_R_OP( 44 , zunpkd831, 0x00ff0080, 0xffff80bb, 176); 
TEST_R_OP( 45 , zunpkd831, 0x00800043, 0x80ff43ff, 180); 
TEST_R_OP( 46 , zunpkd831, 0x001e00ff, 0x1e00ffe1, 184); 
TEST_R_OP( 47 , zunpkd831, 0x00800000, 0x80ff0080, 188); 
TEST_R_OP( 48 , zunpkd831, 0x000000ff, 0x0080ff80, 192); 
TEST_R_OP( 49 , zunpkd831, 0x008000ff, 0x8000ff76, 196); 
TEST_R_OP( 50 , zunpkd831, 0x00ff00e5, 0xffffe55b, 200); 
TEST_R_OP( 51 , zunpkd831, 0x00c5008e, 0xc5008ec3, 204); 
TEST_R_OP( 52 , zunpkd831, 0x0080005e, 0x80805e80, 208); 
TEST_R_OP( 53 , zunpkd831, 0x00ff0080, 0xffff80be, 212); 
TEST_R_OP( 54 , zunpkd831, 0x00ff00ff, 0xffabff00, 216); 
TEST_R_OP( 55 , zunpkd831, 0x00e900a2, 0xe900a200, 220); 
TEST_R_OP( 56 , zunpkd831, 0x000000d3, 0x0000d300, 224); 
TEST_R_OP( 57 , zunpkd831, 0x009e0080, 0x9e808080, 228); 
TEST_R_OP( 58 , zunpkd831, 0x00ff0000, 0xff000080, 232); 
TEST_R_OP( 59 , zunpkd831, 0x00800000, 0x809100af, 236); 
TEST_R_OP( 60 , zunpkd831, 0x00890000, 0x890000ff, 240); 
TEST_R_OP( 61 , zunpkd831, 0x001e0000, 0x1eff0000, 244); 
TEST_R_OP( 62 , zunpkd831, 0x003c0000, 0x3c5c00ff, 248); 
TEST_R_OP( 63 , zunpkd831, 0x00be0000, 0xbe0000ff, 252); 
TEST_R_OP( 64 , zunpkd831, 0x00ff00ca, 0xffd7caf0, 256); 
TEST_R_OP( 65 , zunpkd831, 0x00ff0000, 0xffff00af, 260); 
TEST_R_OP( 66 , zunpkd831, 0x004b0000, 0x4b000000, 264); 
TEST_R_OP( 67 , zunpkd831, 0x00ff0000, 0xffff00ff, 268); 
TEST_R_OP( 68 , zunpkd831, 0x00000000, 0x00800080, 272); 
TEST_R_OP( 69 , zunpkd831, 0x00ff0000, 0xff0000ff, 276); 
TEST_R_OP( 70 , zunpkd831, 0x008000ff, 0x80a2ff6f, 280); 
TEST_R_OP( 71 , zunpkd831, 0x00ff0090, 0xff189080, 284); 
TEST_R_OP( 72 , zunpkd831, 0x00000039, 0x00d83900, 288); 
TEST_R_OP( 73 , zunpkd831, 0x000000d8, 0x00ffd8f0, 292); 
TEST_R_OP( 74 , zunpkd831, 0x00800080, 0x80008080, 296); 
TEST_R_OP( 75 , zunpkd831, 0x00800000, 0x80ff0000, 300); 
TEST_R_OP( 76 , zunpkd831, 0x0080005f, 0x80ff5f80, 304); 
TEST_R_OP( 77 , zunpkd831, 0x008000be, 0x80ffbeff, 308); 
TEST_R_OP( 78 , zunpkd831, 0x00ab00c9, 0xab00c97a, 312); 
TEST_R_OP( 79 , zunpkd831, 0x0080003a, 0x80963a80, 316); 
TEST_R_OP( 80 , zunpkd831, 0x00ff003d, 0xffaa3d7c, 320); 
TEST_R_OP( 81 , zunpkd831, 0x00800080, 0x80ff8080, 324); 
TEST_R_OP( 82 , zunpkd831, 0x00000000, 0x000000ff, 328); 
TEST_R_OP( 83 , zunpkd831, 0x00800080, 0x80b780c7, 332); 
TEST_R_OP( 84 , zunpkd831, 0x00ff0080, 0xff808080, 336); 
TEST_R_OP( 85 , zunpkd831, 0x00da0080, 0xda0080ff, 340); 
TEST_R_OP( 86 , zunpkd831, 0x007c0080, 0x7c8080b4, 344); 
TEST_R_OP( 87 , zunpkd831, 0x00ff00ff, 0xff80ff00, 348); 
TEST_R_OP( 88 , zunpkd831, 0x00000080, 0x00568098, 352); 
TEST_R_OP( 89 , zunpkd831, 0x00ff0000, 0xff4100ff, 356); 
TEST_R_OP( 90 , zunpkd831, 0x00770000, 0x77ff00ff, 360); 
TEST_R_OP( 91 , zunpkd831, 0x000000eb, 0x00d4ebcb, 364); 
TEST_R_OP( 92 , zunpkd831, 0x00ff00ff, 0xff00ff80, 368); 
TEST_R_OP( 93 , zunpkd831, 0x00000081, 0x00ff8171, 372); 
TEST_R_OP( 94 , zunpkd831, 0x000000ff, 0x00ffff80, 376); 
TEST_R_OP( 95 , zunpkd831, 0x00800000, 0x80ff0041, 380); 
TEST_R_OP( 96 , zunpkd831, 0x005900bb, 0x5900bbaa, 384); 
TEST_R_OP( 97 , zunpkd831, 0x0080000f, 0x809d0f80, 388); 
TEST_R_OP( 98 , zunpkd831, 0x00800000, 0x80ff00ff, 392); 
TEST_R_OP( 99 , zunpkd831, 0x00000000, 0x00800000, 396); 
TEST_R_OP( 100 , zunpkd831, 0x00000080, 0x008080ff, 400); 
TEST_R_OP( 101 , zunpkd831, 0x00250080, 0x25ff8000, 404); 
TEST_R_OP( 102 , zunpkd831, 0x008000bb, 0x80ffbb00, 408); 
TEST_R_OP( 103 , zunpkd831, 0x000f0000, 0x0f8000ff, 412); 
TEST_R_OP( 104 , zunpkd831, 0x000000ff, 0x00d0ff80, 416); 
TEST_R_OP( 105 , zunpkd831, 0x00690024, 0x69ef2400, 420); 
TEST_R_OP( 106 , zunpkd831, 0x00bf00ff, 0xbfffffd0, 424); 
TEST_R_OP( 107 , zunpkd831, 0x00800080, 0x80ff8080, 428); 
TEST_R_OP( 108 , zunpkd831, 0x00b40070, 0xb48070ff, 432); 
TEST_R_OP( 109 , zunpkd831, 0x008b0080, 0x8bff805f, 436); 
TEST_R_OP( 110 , zunpkd831, 0x003c0080, 0x3cff8080, 440); 
TEST_R_OP( 111 , zunpkd831, 0x00800000, 0x80340000, 444); 
TEST_R_OP( 112 , zunpkd831, 0x00ff005f, 0xff9b5f00, 448); 
TEST_R_OP( 113 , zunpkd831, 0x00ff00ff, 0xff00ff02, 452); 
TEST_R_OP( 114 , zunpkd831, 0x00ff00ff, 0xff7fff80, 456); 
TEST_R_OP( 115 , zunpkd831, 0x00800080, 0x80ff80ff, 460); 
TEST_R_OP( 116 , zunpkd831, 0x00ac0000, 0xacff0000, 464); 
TEST_R_OP( 117 , zunpkd831, 0x0000009c, 0x00809c2a, 468); 
TEST_R_OP( 118 , zunpkd831, 0x00e100f0, 0xe1fff013, 472); 
TEST_R_OP( 119 , zunpkd831, 0x008000ff, 0x8098ff80, 476); 
TEST_R_OP( 120 , zunpkd831, 0x00000000, 0x008000f8, 480); 
TEST_R_OP( 121 , zunpkd831, 0x00ff0080, 0xff0080ff, 484); 
TEST_R_OP( 122 , zunpkd831, 0x00000000, 0x00ff0028, 488); 
TEST_R_OP( 123 , zunpkd831, 0x00ff0000, 0xffda0075, 492); 
TEST_R_OP( 124 , zunpkd831, 0x002a007c, 0x2a007c80, 496); 
TEST_R_OP( 125 , zunpkd831, 0x00ff00ff, 0xffbfffff, 500); 
TEST_R_OP( 126 , zunpkd831, 0x00ff0080, 0xffff80ff, 504); 
TEST_R_OP( 127 , zunpkd831, 0x005700ff, 0x572dff00, 508); 
TEST_R_OP( 128 , zunpkd831, 0x00ff00ff, 0xffffff00, 512); 
TEST_R_OP( 129 , zunpkd831, 0x003500ff, 0x3500ff80, 516); 
TEST_R_OP( 130 , zunpkd831, 0x00ff00ff, 0xffffff00, 520); 
TEST_R_OP( 131 , zunpkd831, 0x00950000, 0x95380080, 524); 
TEST_R_OP( 132 , zunpkd831, 0x00970000, 0x97ff002d, 528); 
TEST_R_OP( 133 , zunpkd831, 0x00800000, 0x800b0080, 532); 
TEST_R_OP( 134 , zunpkd831, 0x00c40045, 0xc4804511, 536); 
TEST_R_OP( 135 , zunpkd831, 0x008000ff, 0x8000ff80, 540); 
TEST_R_OP( 136 , zunpkd831, 0x00ff00ff, 0xff97ffc4, 544); 
TEST_R_OP( 137 , zunpkd831, 0x00800037, 0x80ff3752, 548); 
TEST_R_OP( 138 , zunpkd831, 0x008000d9, 0x8000d9a4, 552); 
TEST_R_OP( 139 , zunpkd831, 0x00800080, 0x80808020, 556); 
TEST_R_OP( 140 , zunpkd831, 0x00800080, 0x80ff8080, 560); 
TEST_R_OP( 141 , zunpkd831, 0x00ff0080, 0xff498080, 564); 
TEST_R_OP( 142 , zunpkd831, 0x00ff00ff, 0xffb2ff80, 568); 
TEST_R_OP( 143 , zunpkd831, 0x00000000, 0x00800080, 572); 
TEST_R_OP( 144 , zunpkd831, 0x00eb0080, 0xeb0080ab, 576); 
TEST_R_OP( 145 , zunpkd831, 0x00350026, 0x358026fc, 580); 
TEST_R_OP( 146 , zunpkd831, 0x00800080, 0x808080ff, 584); 
TEST_R_OP( 147 , zunpkd831, 0x00000080, 0x00ff80ff, 588); 
TEST_R_OP( 148 , zunpkd831, 0x00800000, 0x80950000, 592); 
TEST_R_OP( 149 , zunpkd831, 0x00000080, 0x001c8080, 596); 
TEST_R_OP( 150 , zunpkd831, 0x00ff0000, 0xff9f00ff, 600); 
TEST_R_OP( 151 , zunpkd831, 0x00000041, 0x00ff4100, 604); 
TEST_R_OP( 152 , zunpkd831, 0x00220080, 0x22008080, 608); 
TEST_R_OP( 153 , zunpkd831, 0x000000ff, 0x0000ff4b, 612); 
TEST_R_OP( 154 , zunpkd831, 0x00000080, 0x00ff8000, 616); 
TEST_R_OP( 155 , zunpkd831, 0x008000d0, 0x8081d0ff, 620); 
TEST_R_OP( 156 , zunpkd831, 0x00ff0000, 0xffff0045, 624); 
TEST_R_OP( 157 , zunpkd831, 0x00a800cb, 0xa880cbad, 628); 
TEST_R_OP( 158 , zunpkd831, 0x00800000, 0x80000080, 632); 
TEST_R_OP( 159 , zunpkd831, 0x00000080, 0x00808000, 636); 
TEST_R_OP( 160 , zunpkd831, 0x008000ff, 0x8080ff77, 640); 
TEST_R_OP( 161 , zunpkd831, 0x00ff00ff, 0xff80ff9c, 644); 
TEST_R_OP( 162 , zunpkd831, 0x00000059, 0x00005900, 648); 
TEST_R_OP( 163 , zunpkd831, 0x008000ff, 0x8080ff65, 652); 
TEST_R_OP( 164 , zunpkd831, 0x00410000, 0x418000ff, 656); 
TEST_R_OP( 165 , zunpkd831, 0x008d0000, 0x8d8000ff, 660); 
TEST_R_OP( 166 , zunpkd831, 0x006400ff, 0x64ffff1b, 664); 
TEST_R_OP( 167 , zunpkd831, 0x00ff0000, 0xff800000, 668); 
TEST_R_OP( 168 , zunpkd831, 0x000000ff, 0x00ffff9e, 672); 
TEST_R_OP( 169 , zunpkd831, 0x005a0080, 0x5ade8080, 676); 
TEST_R_OP( 170 , zunpkd831, 0x008a0080, 0x8a008000, 680); 
TEST_R_OP( 171 , zunpkd831, 0x00000000, 0x000000ff, 684); 
TEST_R_OP( 172 , zunpkd831, 0x00ff00d4, 0xff80d461, 688); 
TEST_R_OP( 173 , zunpkd831, 0x00ff0000, 0xffff00ff, 692); 
TEST_R_OP( 174 , zunpkd831, 0x00800080, 0x808080b7, 696); 
TEST_R_OP( 175 , zunpkd831, 0x000200ff, 0x0205ffff, 700); 
TEST_R_OP( 176 , zunpkd831, 0x00fb0000, 0xfb7700ff, 704); 
TEST_R_OP( 177 , zunpkd831, 0x00ef0080, 0xef118000, 708); 
TEST_R_OP( 178 , zunpkd831, 0x00000000, 0x008000a4, 712); 
TEST_R_OP( 179 , zunpkd831, 0x00000080, 0x00808000, 716); 
TEST_R_OP( 180 , zunpkd831, 0x005400ff, 0x5480ffff, 720); 
TEST_R_OP( 181 , zunpkd831, 0x00ff0000, 0xff0400ff, 724); 
TEST_R_OP( 182 , zunpkd831, 0x00ff00ff, 0xffffff00, 728); 
TEST_R_OP( 183 , zunpkd831, 0x00850080, 0x85ff80ff, 732); 
TEST_R_OP( 184 , zunpkd831, 0x00bb009c, 0xbb809c80, 736); 
TEST_R_OP( 185 , zunpkd831, 0x00ff00ff, 0xff00ff40, 740); 
TEST_R_OP( 186 , zunpkd831, 0x00800080, 0x8080801f, 744); 
TEST_R_OP( 187 , zunpkd831, 0x00ff0000, 0xffff0029, 748); 
TEST_R_OP( 188 , zunpkd831, 0x00800080, 0x80ff8080, 752); 
TEST_R_OP( 189 , zunpkd831, 0x00800084, 0x800084ff, 756); 
TEST_R_OP( 190 , zunpkd831, 0x00bf00b2, 0xbfd0b215, 760); 
TEST_R_OP( 191 , zunpkd831, 0x00ff0000, 0xffc900d6, 764); 
TEST_R_OP( 192 , zunpkd831, 0x0080006e, 0x80006e00, 768); 
TEST_R_OP( 193 , zunpkd831, 0x00870061, 0x87006199, 772); 
TEST_R_OP( 194 , zunpkd831, 0x00800000, 0x80ff0009, 776); 
TEST_R_OP( 195 , zunpkd831, 0x00ff00ff, 0xff80ff80, 780); 
TEST_R_OP( 196 , zunpkd831, 0x000000a3, 0x00ffa380, 784); 
TEST_R_OP( 197 , zunpkd831, 0x00000064, 0x006a64a4, 788); 
TEST_R_OP( 198 , zunpkd831, 0x00800080, 0x808080ab, 792); 
TEST_R_OP( 199 , zunpkd831, 0x00000080, 0x00ff8080, 796); 

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
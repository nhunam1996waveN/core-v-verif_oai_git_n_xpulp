# See LICENSE for license details.
#*****************************************************************************
# zunpkd830.S
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

TEST_R_OP( 2 , zunpkd830, 0x00ff0080, 0xff008080, 8); 
TEST_R_OP( 3 , zunpkd830, 0x002b0051, 0x2b80bc51, 12); 
TEST_R_OP( 4 , zunpkd830, 0x008000e2, 0x808080e2, 16); 
TEST_R_OP( 5 , zunpkd830, 0x00000080, 0x00800080, 20); 
TEST_R_OP( 6 , zunpkd830, 0x008000ff, 0x802880ff, 24); 
TEST_R_OP( 7 , zunpkd830, 0x008000bf, 0x808089bf, 28); 
TEST_R_OP( 8 , zunpkd830, 0x00ff0080, 0xff80fd80, 32); 
TEST_R_OP( 9 , zunpkd830, 0x00ff0080, 0xffffff80, 36); 
TEST_R_OP( 10 , zunpkd830, 0x003e00ca, 0x3eff00ca, 40); 
TEST_R_OP( 11 , zunpkd830, 0x00ff00ff, 0xff809cff, 44); 
TEST_R_OP( 12 , zunpkd830, 0x000000ff, 0x00ffffff, 48); 
TEST_R_OP( 13 , zunpkd830, 0x000000e4, 0x00ffffe4, 52); 
TEST_R_OP( 14 , zunpkd830, 0x00b30000, 0xb3808900, 56); 
TEST_R_OP( 15 , zunpkd830, 0x00800000, 0x80610000, 60); 
TEST_R_OP( 16 , zunpkd830, 0x008000ff, 0x8080ffff, 64); 
TEST_R_OP( 17 , zunpkd830, 0x00b40080, 0xb4000080, 68); 
TEST_R_OP( 18 , zunpkd830, 0x001a0080, 0x1a80ff80, 72); 
TEST_R_OP( 19 , zunpkd830, 0x00e300ff, 0xe3ff80ff, 76); 
TEST_R_OP( 20 , zunpkd830, 0x000600e9, 0x0633ffe9, 80); 
TEST_R_OP( 21 , zunpkd830, 0x00330000, 0x33800000, 84); 
TEST_R_OP( 22 , zunpkd830, 0x00ff0023, 0xff8a0b23, 88); 
TEST_R_OP( 23 , zunpkd830, 0x00ff0000, 0xff000000, 92); 
TEST_R_OP( 24 , zunpkd830, 0x00800080, 0x80ff0080, 96); 
TEST_R_OP( 25 , zunpkd830, 0x00800080, 0x80ff8080, 100); 
TEST_R_OP( 26 , zunpkd830, 0x008f00ff, 0x8f8efcff, 104); 
TEST_R_OP( 27 , zunpkd830, 0x00800080, 0x8080b980, 108); 
TEST_R_OP( 28 , zunpkd830, 0x00800004, 0x80000004, 112); 
TEST_R_OP( 29 , zunpkd830, 0x0000004e, 0x0000804e, 116); 
TEST_R_OP( 30 , zunpkd830, 0x00390000, 0x3900ff00, 120); 
TEST_R_OP( 31 , zunpkd830, 0x006000d9, 0x607841d9, 124); 
TEST_R_OP( 32 , zunpkd830, 0x00ff006d, 0xff00806d, 128); 
TEST_R_OP( 33 , zunpkd830, 0x000000ff, 0x00ffb2ff, 132); 
TEST_R_OP( 34 , zunpkd830, 0x00ff00ff, 0xffffffff, 136); 
TEST_R_OP( 35 , zunpkd830, 0x00000080, 0x00008080, 140); 
TEST_R_OP( 36 , zunpkd830, 0x000000ff, 0x00ff98ff, 144); 
TEST_R_OP( 37 , zunpkd830, 0x00800009, 0x80004509, 148); 
TEST_R_OP( 38 , zunpkd830, 0x008000ff, 0x800080ff, 152); 
TEST_R_OP( 39 , zunpkd830, 0x00ff0000, 0xff804900, 156); 
TEST_R_OP( 40 , zunpkd830, 0x00ff0000, 0xff000000, 160); 
TEST_R_OP( 41 , zunpkd830, 0x000000ff, 0x00ff80ff, 164); 
TEST_R_OP( 42 , zunpkd830, 0x000000ff, 0x00ff37ff, 168); 
TEST_R_OP( 43 , zunpkd830, 0x00900000, 0x901e0000, 172); 
TEST_R_OP( 44 , zunpkd830, 0x00000000, 0x00ff8000, 176); 
TEST_R_OP( 45 , zunpkd830, 0x00000043, 0x00008043, 180); 
TEST_R_OP( 46 , zunpkd830, 0x00000000, 0x00ff8000, 184); 
TEST_R_OP( 47 , zunpkd830, 0x00d20070, 0xd22eff70, 188); 
TEST_R_OP( 48 , zunpkd830, 0x00f80080, 0xf8c80080, 192); 
TEST_R_OP( 49 , zunpkd830, 0x008000ff, 0x80ffffff, 196); 
TEST_R_OP( 50 , zunpkd830, 0x000000ff, 0x00d780ff, 200); 
TEST_R_OP( 51 , zunpkd830, 0x00640000, 0x6480ff00, 204); 
TEST_R_OP( 52 , zunpkd830, 0x00820023, 0x82289f23, 208); 
TEST_R_OP( 53 , zunpkd830, 0x00ad00ff, 0xad8000ff, 212); 
TEST_R_OP( 54 , zunpkd830, 0x00ff001d, 0xff00001d, 216); 
TEST_R_OP( 55 , zunpkd830, 0x000000fa, 0x00ff61fa, 220); 
TEST_R_OP( 56 , zunpkd830, 0x000000ff, 0x00ff80ff, 224); 
TEST_R_OP( 57 , zunpkd830, 0x00ff00ff, 0xff00ffff, 228); 
TEST_R_OP( 58 , zunpkd830, 0x000000ff, 0x005900ff, 232); 
TEST_R_OP( 59 , zunpkd830, 0x00000036, 0x00ff8036, 236); 
TEST_R_OP( 60 , zunpkd830, 0x00800080, 0x807e8080, 240); 
TEST_R_OP( 61 , zunpkd830, 0x000000ff, 0x000000ff, 244); 
TEST_R_OP( 62 , zunpkd830, 0x008100ff, 0x81ff00ff, 248); 
TEST_R_OP( 63 , zunpkd830, 0x00a800cf, 0xa849ffcf, 252); 
TEST_R_OP( 64 , zunpkd830, 0x00000000, 0x00808000, 256); 
TEST_R_OP( 65 , zunpkd830, 0x00090080, 0x09ff8080, 260); 
TEST_R_OP( 66 , zunpkd830, 0x00020000, 0x0200ff00, 264); 
TEST_R_OP( 67 , zunpkd830, 0x00ff0000, 0xff80ff00, 268); 
TEST_R_OP( 68 , zunpkd830, 0x00ff00ff, 0xff8000ff, 272); 
TEST_R_OP( 69 , zunpkd830, 0x00000000, 0x00800000, 276); 
TEST_R_OP( 70 , zunpkd830, 0x00000000, 0x00408000, 280); 
TEST_R_OP( 71 , zunpkd830, 0x00ff0080, 0xff00d080, 284); 
TEST_R_OP( 72 , zunpkd830, 0x008000ff, 0x8000ffff, 288); 
TEST_R_OP( 73 , zunpkd830, 0x00a10080, 0xa100ff80, 292); 
TEST_R_OP( 74 , zunpkd830, 0x00e80000, 0xe8958000, 296); 
TEST_R_OP( 75 , zunpkd830, 0x00ff0000, 0xff9c0000, 300); 
TEST_R_OP( 76 , zunpkd830, 0x009f0000, 0x9f00ff00, 304); 
TEST_R_OP( 77 , zunpkd830, 0x00bf0055, 0xbf800055, 308); 
TEST_R_OP( 78 , zunpkd830, 0x00ff0000, 0xff800000, 312); 
TEST_R_OP( 79 , zunpkd830, 0x00800080, 0x80ffff80, 316); 
TEST_R_OP( 80 , zunpkd830, 0x008000ff, 0x808080ff, 320); 
TEST_R_OP( 81 , zunpkd830, 0x000000cd, 0x0000ffcd, 324); 
TEST_R_OP( 82 , zunpkd830, 0x008000ff, 0x808000ff, 328); 
TEST_R_OP( 83 , zunpkd830, 0x00000000, 0x00802f00, 332); 
TEST_R_OP( 84 , zunpkd830, 0x00000000, 0x00ff0000, 336); 
TEST_R_OP( 85 , zunpkd830, 0x00000000, 0x00ff8000, 340); 
TEST_R_OP( 86 , zunpkd830, 0x000000f1, 0x00fefff1, 344); 
TEST_R_OP( 87 , zunpkd830, 0x00800080, 0x80808080, 348); 
TEST_R_OP( 88 , zunpkd830, 0x00ff00ff, 0xff80ffff, 352); 
TEST_R_OP( 89 , zunpkd830, 0x00ff0000, 0xffffff00, 356); 
TEST_R_OP( 90 , zunpkd830, 0x00000000, 0x00428000, 360); 
TEST_R_OP( 91 , zunpkd830, 0x00800000, 0x80b4ff00, 364); 
TEST_R_OP( 92 , zunpkd830, 0x00f80000, 0xf8000000, 368); 
TEST_R_OP( 93 , zunpkd830, 0x00800000, 0x80800000, 372); 
TEST_R_OP( 94 , zunpkd830, 0x000000ff, 0x00ff80ff, 376); 
TEST_R_OP( 95 , zunpkd830, 0x000000ff, 0x008680ff, 380); 
TEST_R_OP( 96 , zunpkd830, 0x00ff0000, 0xff5dff00, 384); 
TEST_R_OP( 97 , zunpkd830, 0x00ff00ff, 0xff80ffff, 388); 
TEST_R_OP( 98 , zunpkd830, 0x00660080, 0x6600ff80, 392); 
TEST_R_OP( 99 , zunpkd830, 0x00af0000, 0xafc48000, 396); 
TEST_R_OP( 100 , zunpkd830, 0x00000080, 0x00808080, 400); 
TEST_R_OP( 101 , zunpkd830, 0x00ff00ff, 0xff1580ff, 404); 
TEST_R_OP( 102 , zunpkd830, 0x000000ff, 0x00ffffff, 408); 
TEST_R_OP( 103 , zunpkd830, 0x00ff0080, 0xfff0ff80, 412); 
TEST_R_OP( 104 , zunpkd830, 0x00000000, 0x00e08000, 416); 
TEST_R_OP( 105 , zunpkd830, 0x00420080, 0x42670080, 420); 
TEST_R_OP( 106 , zunpkd830, 0x0080003b, 0x8000ff3b, 424); 
TEST_R_OP( 107 , zunpkd830, 0x00000048, 0x00800048, 428); 
TEST_R_OP( 108 , zunpkd830, 0x00e100fc, 0xe1d980fc, 432); 
TEST_R_OP( 109 , zunpkd830, 0x000000e7, 0x00ff7ae7, 436); 
TEST_R_OP( 110 , zunpkd830, 0x008000fb, 0x805a00fb, 440); 
TEST_R_OP( 111 , zunpkd830, 0x00000000, 0x00800000, 444); 
TEST_R_OP( 112 , zunpkd830, 0x0000003a, 0x00ff803a, 448); 
TEST_R_OP( 113 , zunpkd830, 0x008000d7, 0x8096ffd7, 452); 
TEST_R_OP( 114 , zunpkd830, 0x00a700ba, 0xa78080ba, 456); 
TEST_R_OP( 115 , zunpkd830, 0x00000080, 0x0080ff80, 460); 
TEST_R_OP( 116 , zunpkd830, 0x00060000, 0x06203600, 464); 
TEST_R_OP( 117 , zunpkd830, 0x000000ff, 0x008080ff, 468); 
TEST_R_OP( 118 , zunpkd830, 0x000f0000, 0x0f80ff00, 472); 
TEST_R_OP( 119 , zunpkd830, 0x000c00ff, 0x0ca100ff, 476); 
TEST_R_OP( 120 , zunpkd830, 0x000000ff, 0x00d7ffff, 480); 
TEST_R_OP( 121 , zunpkd830, 0x00ff00ff, 0xff80ffff, 484); 
TEST_R_OP( 122 , zunpkd830, 0x00ff0000, 0xff000000, 488); 
TEST_R_OP( 123 , zunpkd830, 0x00c80000, 0xc8800000, 492); 
TEST_R_OP( 124 , zunpkd830, 0x00ff0000, 0xff9ffd00, 496); 
TEST_R_OP( 125 , zunpkd830, 0x00000001, 0x00809701, 500); 
TEST_R_OP( 126 , zunpkd830, 0x00ff0000, 0xff010000, 504); 
TEST_R_OP( 127 , zunpkd830, 0x00d20021, 0xd2808021, 508); 
TEST_R_OP( 128 , zunpkd830, 0x00ff0080, 0xffff0080, 512); 
TEST_R_OP( 129 , zunpkd830, 0x005e0051, 0x5eff8051, 516); 
TEST_R_OP( 130 , zunpkd830, 0x008000f5, 0x800080f5, 520); 
TEST_R_OP( 131 , zunpkd830, 0x00ff00bf, 0xff0080bf, 524); 
TEST_R_OP( 132 , zunpkd830, 0x008000fa, 0x80fffffa, 528); 
TEST_R_OP( 133 , zunpkd830, 0x00ff00ff, 0xff8000ff, 532); 
TEST_R_OP( 134 , zunpkd830, 0x00ff0080, 0xff80ff80, 536); 
TEST_R_OP( 135 , zunpkd830, 0x00c100ff, 0xc1ffffff, 540); 
TEST_R_OP( 136 , zunpkd830, 0x00800080, 0x80ff5c80, 544); 
TEST_R_OP( 137 , zunpkd830, 0x00f50000, 0xf5008000, 548); 
TEST_R_OP( 138 , zunpkd830, 0x00ff00c6, 0xff80ffc6, 552); 
TEST_R_OP( 139 , zunpkd830, 0x00ff0080, 0xffbf8080, 556); 
TEST_R_OP( 140 , zunpkd830, 0x00800080, 0x80408080, 560); 
TEST_R_OP( 141 , zunpkd830, 0x008000b8, 0x805effb8, 564); 
TEST_R_OP( 142 , zunpkd830, 0x00ff00ff, 0xff0080ff, 568); 
TEST_R_OP( 143 , zunpkd830, 0x00000080, 0x00ff0080, 572); 
TEST_R_OP( 144 , zunpkd830, 0x00ff0000, 0xff800000, 576); 
TEST_R_OP( 145 , zunpkd830, 0x00800080, 0x80800080, 580); 
TEST_R_OP( 146 , zunpkd830, 0x006d0000, 0x6dffff00, 584); 
TEST_R_OP( 147 , zunpkd830, 0x000000fc, 0x008080fc, 588); 
TEST_R_OP( 148 , zunpkd830, 0x008000fc, 0x804380fc, 592); 
TEST_R_OP( 149 , zunpkd830, 0x000000ff, 0x000000ff, 596); 
TEST_R_OP( 150 , zunpkd830, 0x00000000, 0x00378000, 600); 
TEST_R_OP( 151 , zunpkd830, 0x000000ff, 0x008080ff, 604); 
TEST_R_OP( 152 , zunpkd830, 0x004e0080, 0x4eff8e80, 608); 
TEST_R_OP( 153 , zunpkd830, 0x008000f9, 0x80ff7cf9, 612); 
TEST_R_OP( 154 , zunpkd830, 0x00ff0080, 0xff007580, 616); 
TEST_R_OP( 155 , zunpkd830, 0x00800000, 0x8000ff00, 620); 
TEST_R_OP( 156 , zunpkd830, 0x00000080, 0x00008080, 624); 
TEST_R_OP( 157 , zunpkd830, 0x00ff0000, 0xffea0000, 628); 
TEST_R_OP( 158 , zunpkd830, 0x00ff0080, 0xff00ff80, 632); 
TEST_R_OP( 159 , zunpkd830, 0x00000080, 0x00800480, 636); 
TEST_R_OP( 160 , zunpkd830, 0x008000a5, 0x80a100a5, 640); 
TEST_R_OP( 161 , zunpkd830, 0x00a90080, 0xa9ffff80, 644); 
TEST_R_OP( 162 , zunpkd830, 0x008000ff, 0x800080ff, 648); 
TEST_R_OP( 163 , zunpkd830, 0x00800080, 0x8088ff80, 652); 
TEST_R_OP( 164 , zunpkd830, 0x00ff00c3, 0xff0080c3, 656); 
TEST_R_OP( 165 , zunpkd830, 0x00000000, 0x00ffff00, 660); 
TEST_R_OP( 166 , zunpkd830, 0x00ff00ff, 0xff3c3aff, 664); 
TEST_R_OP( 167 , zunpkd830, 0x000000ff, 0x000000ff, 668); 
TEST_R_OP( 168 , zunpkd830, 0x00ff0000, 0xff000000, 672); 
TEST_R_OP( 169 , zunpkd830, 0x00800080, 0x80ff8080, 676); 
TEST_R_OP( 170 , zunpkd830, 0x008000e3, 0x8069ffe3, 680); 
TEST_R_OP( 171 , zunpkd830, 0x00000000, 0x00ffca00, 684); 
TEST_R_OP( 172 , zunpkd830, 0x000000ff, 0x00ab80ff, 688); 
TEST_R_OP( 173 , zunpkd830, 0x00ff00ff, 0xffa400ff, 692); 
TEST_R_OP( 174 , zunpkd830, 0x000000ff, 0x004ce0ff, 696); 
TEST_R_OP( 175 , zunpkd830, 0x00000091, 0x00ffd491, 700); 
TEST_R_OP( 176 , zunpkd830, 0x00ff0000, 0xff806b00, 704); 
TEST_R_OP( 177 , zunpkd830, 0x00ff003f, 0xff9db93f, 708); 
TEST_R_OP( 178 , zunpkd830, 0x00800080, 0x80804980, 712); 
TEST_R_OP( 179 , zunpkd830, 0x00800000, 0x80808000, 716); 
TEST_R_OP( 180 , zunpkd830, 0x0080001b, 0x80aeff1b, 720); 
TEST_R_OP( 181 , zunpkd830, 0x00800000, 0x80ff8000, 724); 
TEST_R_OP( 182 , zunpkd830, 0x00ff00ff, 0xffb1d1ff, 728); 
TEST_R_OP( 183 , zunpkd830, 0x008000f3, 0x803bfff3, 732); 
TEST_R_OP( 184 , zunpkd830, 0x00ff00ff, 0xff31ffff, 736); 
TEST_R_OP( 185 , zunpkd830, 0x008a00ff, 0x8affd4ff, 740); 
TEST_R_OP( 186 , zunpkd830, 0x00000007, 0x00ec8007, 744); 
TEST_R_OP( 187 , zunpkd830, 0x00860080, 0x86ffff80, 748); 
TEST_R_OP( 188 , zunpkd830, 0x00000000, 0x00ca1c00, 752); 
TEST_R_OP( 189 , zunpkd830, 0x00e800f5, 0xe8ff00f5, 756); 
TEST_R_OP( 190 , zunpkd830, 0x000000aa, 0x000000aa, 760); 
TEST_R_OP( 191 , zunpkd830, 0x00bd0080, 0xbd4e8080, 764); 
TEST_R_OP( 192 , zunpkd830, 0x00800000, 0x80008000, 768); 
TEST_R_OP( 193 , zunpkd830, 0x00420000, 0x42008a00, 772); 
TEST_R_OP( 194 , zunpkd830, 0x00ff002c, 0xff33802c, 776); 
TEST_R_OP( 195 , zunpkd830, 0x000000ff, 0x000078ff, 780); 
TEST_R_OP( 196 , zunpkd830, 0x00000080, 0x0000ff80, 784); 
TEST_R_OP( 197 , zunpkd830, 0x00340080, 0x3400f580, 788); 
TEST_R_OP( 198 , zunpkd830, 0x00800000, 0x80000000, 792); 
TEST_R_OP( 199 , zunpkd830, 0x00ff0080, 0xffff0080, 796); 

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
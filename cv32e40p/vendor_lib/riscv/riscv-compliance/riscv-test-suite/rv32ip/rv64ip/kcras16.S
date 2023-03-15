# See LICENSE for license details.
#*****************************************************************************
# kcras16.S
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

TEST_RR_OP( 2 , kcras16, 0x3ae78000, 0x3ae78000, 0x00000000, 8); 
TEST_RR_OP( 3 , kcras16, 0xe4c96aed, 0x64c9eaed, 0x80008000, 12); 
TEST_RR_OP( 4 , kcras16, 0x80008001, 0xffff8000, 0xffff8000, 16); 
TEST_CASE( 5 ,20, x14, 1, rdov x14;);
TEST_CASE( 6 ,24, x14, 1, clrov;);
TEST_CASE( 7 ,28, x14, 0, rdov x14;);
TEST_RR_OP( 8 , kcras16, 0x7f31028a, 0x00000289, 0xffff7f31, 32); 
TEST_RR_OP( 9 , kcras16, 0x80001eed, 0x80000e09, 0xef1cffff, 36); 
TEST_CASE( 10 ,40, x14, 1, rdov x14;);
TEST_CASE( 11 ,44, x14, 1, clrov;);
TEST_CASE( 12 ,48, x14, 0, rdov x14;);
TEST_RR_OP( 13 , kcras16, 0x0000733f, 0x0000733f, 0x00000000, 52); 
TEST_RR_OP( 14 , kcras16, 0x80008000, 0xea368000, 0x00008000, 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_RR_OP( 18 , kcras16, 0x800024ab, 0x8000ffff, 0xdb548000, 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_RR_OP( 22 , kcras16, 0x80000b17, 0x80000000, 0xf4e90000, 88); 
TEST_RR_OP( 23 , kcras16, 0xfffff4c6, 0x0000ffff, 0x0b39ffff, 92); 
TEST_RR_OP( 24 , kcras16, 0x42bc7fff, 0x0000ffff, 0x800042bc, 96); 
TEST_RR_OP( 25 , kcras16, 0x00f17fff, 0x00f1ffff, 0x80000000, 100); 
TEST_RR_OP( 26 , kcras16, 0xffff8000, 0xffff8000, 0x00000000, 104); 
TEST_RR_OP( 27 , kcras16, 0xad7753dd, 0xc6ef53dc, 0xffffe688, 108); 
TEST_RR_OP( 28 , kcras16, 0x80007fff, 0x8000ffff, 0x80008000, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_RR_OP( 32 , kcras16, 0xffffec91, 0xffffec90, 0xffff0000, 128); 
TEST_RR_OP( 33 , kcras16, 0x9c860000, 0x0000ffff, 0xffff9c86, 132); 
TEST_RR_OP( 34 , kcras16, 0x663e7fff, 0x0000ffff, 0x8000663e, 136); 
TEST_RR_OP( 35 , kcras16, 0x80008000, 0xf4ce8000, 0x1ef48000, 140); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_RR_OP( 39 , kcras16, 0x8000d28d, 0x0000d28d, 0x00008000, 156); 
TEST_RR_OP( 40 , kcras16, 0x800007a8, 0x000087a8, 0x80008000, 160); 
TEST_RR_OP( 41 , kcras16, 0x8000ffff, 0x8c05ffff, 0x0000e3e4, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , kcras16, 0xffff7fff, 0xffffffff, 0x80000000, 180); 
TEST_RR_OP( 46 , kcras16, 0x03512d50, 0x0000ad50, 0x80000351, 184); 
TEST_RR_OP( 47 , kcras16, 0x80007fff, 0x00003d47, 0x80008000, 188); 
TEST_CASE( 48 ,192, x14, 1, rdov x14;);
TEST_CASE( 49 ,196, x14, 1, clrov;);
TEST_CASE( 50 ,200, x14, 0, rdov x14;);
TEST_RR_OP( 51 , kcras16, 0x8000ffff, 0x8000ffff, 0x00000000, 204); 
TEST_RR_OP( 52 , kcras16, 0x8000cfd9, 0xbf158000, 0xb0278000, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , kcras16, 0x540cffff, 0xd783ffff, 0x00007c89, 224); 
TEST_RR_OP( 57 , kcras16, 0xbddd8001, 0x00008000, 0xffffbddd, 228); 
TEST_RR_OP( 58 , kcras16, 0x80000000, 0x80000000, 0x0000807d, 232); 
TEST_CASE( 59 ,236, x14, 1, rdov x14;);
TEST_CASE( 60 ,240, x14, 1, clrov;);
TEST_CASE( 61 ,244, x14, 0, rdov x14;);
TEST_RR_OP( 62 , kcras16, 0xf8110000, 0xd8670000, 0x00001faa, 248); 
TEST_RR_OP( 63 , kcras16, 0x80008000, 0x80008000, 0x00008000, 252); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_RR_OP( 67 , kcras16, 0x000072a2, 0x000072a1, 0xffff0000, 268); 
TEST_RR_OP( 68 , kcras16, 0xe6bc0001, 0x00000000, 0xffffe6bc, 272); 
TEST_RR_OP( 69 , kcras16, 0xfffe3a79, 0xffff3a79, 0x0000ffff, 276); 
TEST_RR_OP( 70 , kcras16, 0x8000fd3f, 0x8000fd3f, 0x0000ffff, 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_RR_OP( 74 , kcras16, 0x82c00000, 0x02c0ffff, 0xffff8000, 296); 
TEST_RR_OP( 75 , kcras16, 0x2f6c60c1, 0x0000f000, 0x8f3f2f6c, 300); 
TEST_RR_OP( 76 , kcras16, 0x80001ca9, 0xffff1ca9, 0x00008000, 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_RR_OP( 80 , kcras16, 0x63270000, 0x6327ffff, 0xffff0000, 320); 
TEST_RR_OP( 81 , kcras16, 0x80007fff, 0x8000ffff, 0x8000ffff, 324); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_RR_OP( 85 , kcras16, 0xf1fe0000, 0xf1fe0000, 0x00000000, 340); 
TEST_RR_OP( 86 , kcras16, 0xfffe8000, 0xffff8000, 0x0000ffff, 344); 
TEST_RR_OP( 87 , kcras16, 0xffff0000, 0xffff0000, 0x00000000, 348); 
TEST_RR_OP( 88 , kcras16, 0x80008000, 0xffff8000, 0x00008000, 352); 
TEST_CASE( 89 ,356, x14, 1, rdov x14;);
TEST_CASE( 90 ,360, x14, 1, clrov;);
TEST_CASE( 91 ,364, x14, 0, rdov x14;);
TEST_RR_OP( 92 , kcras16, 0xd12e7fff, 0xffff1023, 0x8000d12f, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , kcras16, 0x800092c2, 0x80008000, 0xed3e0000, 384); 
TEST_RR_OP( 97 , kcras16, 0xffff0000, 0x0000ffff, 0xffffffff, 388); 
TEST_RR_OP( 98 , kcras16, 0xfffe7fff, 0xffff0000, 0x8000ffff, 392); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_RR_OP( 102 , kcras16, 0x8000ffff, 0x8000ffff, 0x00008000, 408); 
TEST_CASE( 103 ,412, x14, 1, rdov x14;);
TEST_CASE( 104 ,416, x14, 1, clrov;);
TEST_CASE( 105 ,420, x14, 0, rdov x14;);
TEST_RR_OP( 106 , kcras16, 0xffffd2f4, 0xffffd2f3, 0xffff0000, 424); 
TEST_RR_OP( 107 , kcras16, 0x8000d0d4, 0x80008000, 0xaf2c0000, 428); 
TEST_RR_OP( 108 , kcras16, 0x00001cac, 0x00009cac, 0x80000000, 432); 
TEST_RR_OP( 109 , kcras16, 0x80007dc6, 0x0000ffff, 0x82398000, 436); 
TEST_RR_OP( 110 , kcras16, 0x80008000, 0x80008000, 0x1fa7ffff, 440); 
TEST_CASE( 111 ,444, x14, 1, rdov x14;);
TEST_CASE( 112 ,448, x14, 1, clrov;);
TEST_CASE( 113 ,452, x14, 0, rdov x14;);
TEST_RR_OP( 114 , kcras16, 0x05dff11a, 0x00000000, 0x0ee605df, 456); 
TEST_RR_OP( 115 , kcras16, 0x8000456b, 0x0000456a, 0xffff8000, 460); 
TEST_RR_OP( 116 , kcras16, 0x8fe80001, 0x8fe90000, 0xffffffff, 464); 
TEST_RR_OP( 117 , kcras16, 0xf2717fff, 0xffffffff, 0x8000f272, 468); 
TEST_RR_OP( 118 , kcras16, 0x80007fff, 0xee3c3655, 0x80008000, 472); 
TEST_CASE( 119 ,476, x14, 1, rdov x14;);
TEST_CASE( 120 ,480, x14, 1, clrov;);
TEST_CASE( 121 ,484, x14, 0, rdov x14;);
TEST_RR_OP( 122 , kcras16, 0xa8301a62, 0xa830ffff, 0xe59d0000, 488); 
TEST_RR_OP( 123 , kcras16, 0x401a8239, 0x401b8238, 0xffffffff, 492); 
TEST_RR_OP( 124 , kcras16, 0x00000000, 0x00008000, 0x80000000, 496); 
TEST_RR_OP( 125 , kcras16, 0x0000ffff, 0x0000ffff, 0x00000000, 500); 
TEST_RR_OP( 126 , kcras16, 0xdde85c16, 0x00005c15, 0xffffdde8, 504); 
TEST_RR_OP( 127 , kcras16, 0x9f130001, 0x9f140000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kcras16, 0xc45c7fff, 0xc45c0000, 0x80000000, 512); 
TEST_CASE( 129 ,516, x14, 1, rdov x14;);
TEST_CASE( 130 ,520, x14, 1, clrov;);
TEST_CASE( 131 ,524, x14, 0, rdov x14;);
TEST_RR_OP( 132 , kcras16, 0x80003fa6, 0x00003fa6, 0x00008000, 528); 
TEST_RR_OP( 133 , kcras16, 0xffff7fff, 0x0000ffff, 0x8000ffff, 532); 
TEST_RR_OP( 134 , kcras16, 0xfffe7fff, 0xffff0000, 0x8000ffff, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , kcras16, 0x80007fff, 0x80004f3f, 0xc4438000, 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_RR_OP( 142 , kcras16, 0xfffe7fff, 0xffffffff, 0x8000ffff, 568); 
TEST_RR_OP( 143 , kcras16, 0xfb58c2ba, 0xffffffff, 0x3d45fb59, 572); 
TEST_RR_OP( 144 , kcras16, 0x800031b9, 0x800031b8, 0xffffd3b1, 576); 
TEST_CASE( 145 ,580, x14, 1, rdov x14;);
TEST_CASE( 146 ,584, x14, 1, clrov;);
TEST_CASE( 147 ,588, x14, 0, rdov x14;);
TEST_RR_OP( 148 , kcras16, 0x8000d253, 0x80008000, 0xadad8000, 592); 
TEST_CASE( 149 ,596, x14, 1, rdov x14;);
TEST_CASE( 150 ,600, x14, 1, clrov;);
TEST_CASE( 151 ,604, x14, 0, rdov x14;);
TEST_RR_OP( 152 , kcras16, 0x80000000, 0x8000ffff, 0xffff8a1c, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , kcras16, 0xffff7532, 0xffffffff, 0x8acd0000, 624); 
TEST_RR_OP( 157 , kcras16, 0x8000a122, 0x0000bc6a, 0x1b488000, 628); 
TEST_RR_OP( 158 , kcras16, 0x92ae7fff, 0x12ae0000, 0x80008000, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , kcras16, 0xf4390001, 0x80000000, 0xffff7439, 648); 
TEST_RR_OP( 163 , kcras16, 0xffff0000, 0x00000000, 0x0000ffff, 652); 
TEST_RR_OP( 164 , kcras16, 0x8000283d, 0x8000ffff, 0xd7c20000, 656); 
TEST_RR_OP( 165 , kcras16, 0x80008000, 0x80008000, 0x00000000, 660); 
TEST_RR_OP( 166 , kcras16, 0x3adf516c, 0x66940000, 0xae94d44b, 664); 
TEST_RR_OP( 167 , kcras16, 0x0b7f0000, 0x6722ffff, 0xffffa45d, 668); 
TEST_RR_OP( 168 , kcras16, 0xfebc8001, 0x4c0f8000, 0xffffb2ad, 672); 
TEST_RR_OP( 169 , kcras16, 0xffffa2dc, 0xffffda55, 0x37790000, 676); 
TEST_RR_OP( 170 , kcras16, 0xffff0000, 0xffffffff, 0xffff0000, 680); 
TEST_RR_OP( 171 , kcras16, 0x80000001, 0x80000000, 0xffff8000, 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_RR_OP( 175 , kcras16, 0x10010e3b, 0x10020e3b, 0x0000ffff, 700); 
TEST_RR_OP( 176 , kcras16, 0x8000f1c6, 0xf7a98000, 0x8e3a8000, 704); 
TEST_CASE( 177 ,708, x14, 1, rdov x14;);
TEST_CASE( 178 ,712, x14, 1, clrov;);
TEST_CASE( 179 ,716, x14, 0, rdov x14;);
TEST_RR_OP( 180 , kcras16, 0xffffffff, 0xffffffff, 0x00000000, 720); 
TEST_RR_OP( 181 , kcras16, 0x80007fff, 0xdab8ffff, 0x80008000, 724); 
TEST_CASE( 182 ,728, x14, 1, rdov x14;);
TEST_CASE( 183 ,732, x14, 1, clrov;);
TEST_CASE( 184 ,736, x14, 0, rdov x14;);
TEST_RR_OP( 185 , kcras16, 0x03268000, 0x41eb8000, 0x0000c13b, 740); 
TEST_RR_OP( 186 , kcras16, 0x80007fff, 0x80000000, 0x80000000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , kcras16, 0x3b5a8000, 0x00008000, 0x00003b5a, 760); 
TEST_RR_OP( 191 , kcras16, 0x800023b7, 0xffff0000, 0xdc498000, 764); 
TEST_CASE( 192 ,768, x14, 1, rdov x14;);
TEST_CASE( 193 ,772, x14, 1, clrov;);
TEST_CASE( 194 ,776, x14, 0, rdov x14;);
TEST_RR_OP( 195 , kcras16, 0x2b3c0001, 0x50e40000, 0xffffda58, 780); 
TEST_RR_OP( 196 , kcras16, 0xbae50000, 0x8000ffff, 0xffff3ae5, 784); 
TEST_RR_OP( 197 , kcras16, 0x98c30000, 0xffff8000, 0x800098c4, 788); 
TEST_RR_OP( 198 , kcras16, 0x80008feb, 0xffff8fea, 0xffff8000, 792); 
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
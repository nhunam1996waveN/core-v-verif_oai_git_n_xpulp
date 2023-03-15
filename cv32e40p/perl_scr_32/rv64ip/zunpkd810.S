# See LICENSE for license details.
#*****************************************************************************
# zunpkd810.S
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

TEST_R_OP( 2 , zunpkd810, 0x0000005c, 0x808d005c, 8); 
TEST_R_OP( 3 , zunpkd810, 0x001000ff, 0xff0010ff, 12); 
TEST_R_OP( 4 , zunpkd810, 0x008000ff, 0x530080ff, 16); 
TEST_R_OP( 5 , zunpkd810, 0x00800000, 0x80808000, 20); 
TEST_R_OP( 6 , zunpkd810, 0x00000080, 0xff000080, 24); 
TEST_R_OP( 7 , zunpkd810, 0x00800000, 0x80808000, 28); 
TEST_R_OP( 8 , zunpkd810, 0x001700ff, 0x00ff17ff, 32); 
TEST_R_OP( 9 , zunpkd810, 0x00000080, 0xffdf0080, 36); 
TEST_R_OP( 10 , zunpkd810, 0x001400ff, 0xdc8014ff, 40); 
TEST_R_OP( 11 , zunpkd810, 0x00000028, 0x4f800028, 44); 
TEST_R_OP( 12 , zunpkd810, 0x00800000, 0x00838000, 48); 
TEST_R_OP( 13 , zunpkd810, 0x00d70000, 0x00a8d700, 52); 
TEST_R_OP( 14 , zunpkd810, 0x00ff0070, 0xff80ff70, 56); 
TEST_R_OP( 15 , zunpkd810, 0x00df0000, 0x2780df00, 60); 
TEST_R_OP( 16 , zunpkd810, 0x00ff00ff, 0x8080ffff, 64); 
TEST_R_OP( 17 , zunpkd810, 0x00800080, 0xffff8080, 68); 
TEST_R_OP( 18 , zunpkd810, 0x008000ff, 0x00ff80ff, 72); 
TEST_R_OP( 19 , zunpkd810, 0x00000080, 0x80000080, 76); 
TEST_R_OP( 20 , zunpkd810, 0x0080007b, 0xffff807b, 80); 
TEST_R_OP( 21 , zunpkd810, 0x00060000, 0x80ce0600, 84); 
TEST_R_OP( 22 , zunpkd810, 0x00eb0000, 0x8080eb00, 88); 
TEST_R_OP( 23 , zunpkd810, 0x00aa0080, 0x00ffaa80, 92); 
TEST_R_OP( 24 , zunpkd810, 0x00800000, 0x89808000, 96); 
TEST_R_OP( 25 , zunpkd810, 0x00800000, 0x80c98000, 100); 
TEST_R_OP( 26 , zunpkd810, 0x00800080, 0x80ff8080, 104); 
TEST_R_OP( 27 , zunpkd810, 0x00ff00f4, 0x0100fff4, 108); 
TEST_R_OP( 28 , zunpkd810, 0x00060080, 0x80000680, 112); 
TEST_R_OP( 29 , zunpkd810, 0x000000bb, 0x80e200bb, 116); 
TEST_R_OP( 30 , zunpkd810, 0x00da0080, 0xffffda80, 120); 
TEST_R_OP( 31 , zunpkd810, 0x00450000, 0x00ff4500, 124); 
TEST_R_OP( 32 , zunpkd810, 0x000d0000, 0x00ff0d00, 128); 
TEST_R_OP( 33 , zunpkd810, 0x006900f0, 0x720069f0, 132); 
TEST_R_OP( 34 , zunpkd810, 0x00ff0080, 0x8008ff80, 136); 
TEST_R_OP( 35 , zunpkd810, 0x00190080, 0x80491980, 140); 
TEST_R_OP( 36 , zunpkd810, 0x00ff0080, 0xffffff80, 144); 
TEST_R_OP( 37 , zunpkd810, 0x00ff00ff, 0x0000ffff, 148); 
TEST_R_OP( 38 , zunpkd810, 0x000f0000, 0x80ff0f00, 152); 
TEST_R_OP( 39 , zunpkd810, 0x00800080, 0xff808080, 156); 
TEST_R_OP( 40 , zunpkd810, 0x00750000, 0xec807500, 160); 
TEST_R_OP( 41 , zunpkd810, 0x00000000, 0xff000000, 164); 
TEST_R_OP( 42 , zunpkd810, 0x000000ff, 0x000000ff, 168); 
TEST_R_OP( 43 , zunpkd810, 0x00ff00ff, 0xff00ffff, 172); 
TEST_R_OP( 44 , zunpkd810, 0x00800000, 0xbb808000, 176); 
TEST_R_OP( 45 , zunpkd810, 0x00000000, 0xffff0000, 180); 
TEST_R_OP( 46 , zunpkd810, 0x00800000, 0x00ff8000, 184); 
TEST_R_OP( 47 , zunpkd810, 0x00ff00ff, 0x0080ffff, 188); 
TEST_R_OP( 48 , zunpkd810, 0x004d00ff, 0xff374dff, 192); 
TEST_R_OP( 49 , zunpkd810, 0x00ff00ff, 0x806cffff, 196); 
TEST_R_OP( 50 , zunpkd810, 0x00000043, 0xffff0043, 200); 
TEST_R_OP( 51 , zunpkd810, 0x00d100ff, 0x0000d1ff, 204); 
TEST_R_OP( 52 , zunpkd810, 0x00800080, 0x80ff8080, 208); 
TEST_R_OP( 53 , zunpkd810, 0x00000080, 0x80800080, 212); 
TEST_R_OP( 54 , zunpkd810, 0x0000009f, 0xee2a009f, 216); 
TEST_R_OP( 55 , zunpkd810, 0x00800080, 0x80008080, 220); 
TEST_R_OP( 56 , zunpkd810, 0x00fa00e4, 0x8000fae4, 224); 
TEST_R_OP( 57 , zunpkd810, 0x00ff0080, 0x80deff80, 228); 
TEST_R_OP( 58 , zunpkd810, 0x00140059, 0x80ff1459, 232); 
TEST_R_OP( 59 , zunpkd810, 0x00800080, 0x80be8080, 236); 
TEST_R_OP( 60 , zunpkd810, 0x00d80080, 0xff80d880, 240); 
TEST_R_OP( 61 , zunpkd810, 0x00000000, 0xffff0000, 244); 
TEST_R_OP( 62 , zunpkd810, 0x00ff0080, 0x0080ff80, 248); 
TEST_R_OP( 63 , zunpkd810, 0x0008000f, 0xfff8080f, 252); 
TEST_R_OP( 64 , zunpkd810, 0x00800080, 0x69ff8080, 256); 
TEST_R_OP( 65 , zunpkd810, 0x00860080, 0xb1ff8680, 260); 
TEST_R_OP( 66 , zunpkd810, 0x00800080, 0x00ff8080, 264); 
TEST_R_OP( 67 , zunpkd810, 0x00ff005d, 0x80ffff5d, 268); 
TEST_R_OP( 68 , zunpkd810, 0x00000041, 0x00800041, 272); 
TEST_R_OP( 69 , zunpkd810, 0x003200ff, 0x00ff32ff, 276); 
TEST_R_OP( 70 , zunpkd810, 0x000000ce, 0x80ff00ce, 280); 
TEST_R_OP( 71 , zunpkd810, 0x00e80000, 0xd9ffe800, 284); 
TEST_R_OP( 72 , zunpkd810, 0x00000080, 0x00800080, 288); 
TEST_R_OP( 73 , zunpkd810, 0x00ff0080, 0xff1bff80, 292); 
TEST_R_OP( 74 , zunpkd810, 0x00830080, 0x80ff8380, 296); 
TEST_R_OP( 75 , zunpkd810, 0x002f0000, 0x00802f00, 300); 
TEST_R_OP( 76 , zunpkd810, 0x0000007f, 0x68ff007f, 304); 
TEST_R_OP( 77 , zunpkd810, 0x00800000, 0x32808000, 308); 
TEST_R_OP( 78 , zunpkd810, 0x000000ff, 0x800100ff, 312); 
TEST_R_OP( 79 , zunpkd810, 0x00000000, 0xffff0000, 316); 
TEST_R_OP( 80 , zunpkd810, 0x003a00b6, 0x00ff3ab6, 320); 
TEST_R_OP( 81 , zunpkd810, 0x00ff0000, 0x8080ff00, 324); 
TEST_R_OP( 82 , zunpkd810, 0x00ff0000, 0x8080ff00, 328); 
TEST_R_OP( 83 , zunpkd810, 0x0000001a, 0xff00001a, 332); 
TEST_R_OP( 84 , zunpkd810, 0x00ff0080, 0x7b00ff80, 336); 
TEST_R_OP( 85 , zunpkd810, 0x000000ff, 0x808000ff, 340); 
TEST_R_OP( 86 , zunpkd810, 0x007500ec, 0x00ff75ec, 344); 
TEST_R_OP( 87 , zunpkd810, 0x00ff00ff, 0x8080ffff, 348); 
TEST_R_OP( 88 , zunpkd810, 0x008000ff, 0x803780ff, 352); 
TEST_R_OP( 89 , zunpkd810, 0x00390080, 0x00003980, 356); 
TEST_R_OP( 90 , zunpkd810, 0x000000ff, 0xa88000ff, 360); 
TEST_R_OP( 91 , zunpkd810, 0x00c100f3, 0x620ac1f3, 364); 
TEST_R_OP( 92 , zunpkd810, 0x0000001d, 0x0080001d, 368); 
TEST_R_OP( 93 , zunpkd810, 0x00ff00ff, 0xf400ffff, 372); 
TEST_R_OP( 94 , zunpkd810, 0x00000000, 0xff000000, 376); 
TEST_R_OP( 95 , zunpkd810, 0x00cf0000, 0x80ffcf00, 380); 
TEST_R_OP( 96 , zunpkd810, 0x00ff0080, 0x80b3ff80, 384); 
TEST_R_OP( 97 , zunpkd810, 0x00000080, 0xcb800080, 388); 
TEST_R_OP( 98 , zunpkd810, 0x00000000, 0xff800000, 392); 
TEST_R_OP( 99 , zunpkd810, 0x000000ce, 0x49a300ce, 396); 
TEST_R_OP( 100 , zunpkd810, 0x00000080, 0x00ff0080, 400); 
TEST_R_OP( 101 , zunpkd810, 0x000000b8, 0xff0000b8, 404); 
TEST_R_OP( 102 , zunpkd810, 0x00000000, 0x80800000, 408); 
TEST_R_OP( 103 , zunpkd810, 0x00ff0000, 0x8000ff00, 412); 
TEST_R_OP( 104 , zunpkd810, 0x00ff0000, 0x808aff00, 416); 
TEST_R_OP( 105 , zunpkd810, 0x00e700ff, 0xff00e7ff, 420); 
TEST_R_OP( 106 , zunpkd810, 0x00ff005f, 0x8046ff5f, 424); 
TEST_R_OP( 107 , zunpkd810, 0x00ff00df, 0xffffffdf, 428); 
TEST_R_OP( 108 , zunpkd810, 0x00000030, 0x00600030, 432); 
TEST_R_OP( 109 , zunpkd810, 0x00380000, 0x00803800, 436); 
TEST_R_OP( 110 , zunpkd810, 0x000000ff, 0x000000ff, 440); 
TEST_R_OP( 111 , zunpkd810, 0x000000ff, 0xff8000ff, 444); 
TEST_R_OP( 112 , zunpkd810, 0x00ff0012, 0xffffff12, 448); 
TEST_R_OP( 113 , zunpkd810, 0x00800080, 0x80798080, 452); 
TEST_R_OP( 114 , zunpkd810, 0x00c70080, 0xff00c780, 456); 
TEST_R_OP( 115 , zunpkd810, 0x00ff0000, 0xff00ff00, 460); 
TEST_R_OP( 116 , zunpkd810, 0x000000c9, 0x800000c9, 464); 
TEST_R_OP( 117 , zunpkd810, 0x00000017, 0x80800017, 468); 
TEST_R_OP( 118 , zunpkd810, 0x00ff0025, 0xff80ff25, 472); 
TEST_R_OP( 119 , zunpkd810, 0x0022002e, 0xff00222e, 476); 
TEST_R_OP( 120 , zunpkd810, 0x004e0000, 0x00004e00, 480); 
TEST_R_OP( 121 , zunpkd810, 0x008000ff, 0xff8080ff, 484); 
TEST_R_OP( 122 , zunpkd810, 0x008000de, 0x050080de, 488); 
TEST_R_OP( 123 , zunpkd810, 0x00ff0000, 0xff80ff00, 492); 
TEST_R_OP( 124 , zunpkd810, 0x00000000, 0x00070000, 496); 
TEST_R_OP( 125 , zunpkd810, 0x00000080, 0x80800080, 500); 
TEST_R_OP( 126 , zunpkd810, 0x009100ad, 0x80ff91ad, 504); 
TEST_R_OP( 127 , zunpkd810, 0x008000ff, 0x808080ff, 508); 
TEST_R_OP( 128 , zunpkd810, 0x00000080, 0x80ff0080, 512); 
TEST_R_OP( 129 , zunpkd810, 0x008000dd, 0x807d80dd, 516); 
TEST_R_OP( 130 , zunpkd810, 0x000000ff, 0xffff00ff, 520); 
TEST_R_OP( 131 , zunpkd810, 0x00000000, 0x80ff0000, 524); 
TEST_R_OP( 132 , zunpkd810, 0x00000080, 0xff000080, 528); 
TEST_R_OP( 133 , zunpkd810, 0x002c00ff, 0xff002cff, 532); 
TEST_R_OP( 134 , zunpkd810, 0x00000080, 0x005f0080, 536); 
TEST_R_OP( 135 , zunpkd810, 0x001b0080, 0xe3001b80, 540); 
TEST_R_OP( 136 , zunpkd810, 0x00fd00a3, 0xba82fda3, 544); 
TEST_R_OP( 137 , zunpkd810, 0x00ff0000, 0x00ffff00, 548); 
TEST_R_OP( 138 , zunpkd810, 0x00000000, 0x80ff0000, 552); 
TEST_R_OP( 139 , zunpkd810, 0x00800000, 0xa8008000, 556); 
TEST_R_OP( 140 , zunpkd810, 0x00ff00ff, 0x0000ffff, 560); 
TEST_R_OP( 141 , zunpkd810, 0x0000000b, 0xd1ff000b, 564); 
TEST_R_OP( 142 , zunpkd810, 0x00ff0000, 0x0000ff00, 568); 
TEST_R_OP( 143 , zunpkd810, 0x00000000, 0xff000000, 572); 
TEST_R_OP( 144 , zunpkd810, 0x00ea009a, 0x4800ea9a, 576); 
TEST_R_OP( 145 , zunpkd810, 0x00000080, 0x00780080, 580); 
TEST_R_OP( 146 , zunpkd810, 0x00ea00ff, 0x8000eaff, 584); 
TEST_R_OP( 147 , zunpkd810, 0x00ff0000, 0x0000ff00, 588); 
TEST_R_OP( 148 , zunpkd810, 0x00000080, 0x00800080, 592); 
TEST_R_OP( 149 , zunpkd810, 0x00ee0000, 0x0080ee00, 596); 
TEST_R_OP( 150 , zunpkd810, 0x008000fc, 0x808180fc, 600); 
TEST_R_OP( 151 , zunpkd810, 0x00ff00ae, 0x8000ffae, 604); 
TEST_R_OP( 152 , zunpkd810, 0x00ff00ff, 0x4680ffff, 608); 
TEST_R_OP( 153 , zunpkd810, 0x00800080, 0x00ff8080, 612); 
TEST_R_OP( 154 , zunpkd810, 0x00000000, 0x04800000, 616); 
TEST_R_OP( 155 , zunpkd810, 0x008000ff, 0x00ff80ff, 620); 
TEST_R_OP( 156 , zunpkd810, 0x00ff00ff, 0xff80ffff, 624); 
TEST_R_OP( 157 , zunpkd810, 0x0000002a, 0x0006002a, 628); 
TEST_R_OP( 158 , zunpkd810, 0x00ff00ed, 0x0000ffed, 632); 
TEST_R_OP( 159 , zunpkd810, 0x00000080, 0xff000080, 636); 
TEST_R_OP( 160 , zunpkd810, 0x00800080, 0x63ff8080, 640); 
TEST_R_OP( 161 , zunpkd810, 0x000000ff, 0x80fc00ff, 644); 
TEST_R_OP( 162 , zunpkd810, 0x000000b9, 0xffff00b9, 648); 
TEST_R_OP( 163 , zunpkd810, 0x00260000, 0xc0802600, 652); 
TEST_R_OP( 164 , zunpkd810, 0x00800000, 0x00008000, 656); 
TEST_R_OP( 165 , zunpkd810, 0x00ff0066, 0x005dff66, 660); 
TEST_R_OP( 166 , zunpkd810, 0x00ff00ff, 0x803dffff, 664); 
TEST_R_OP( 167 , zunpkd810, 0x001f0000, 0x80801f00, 668); 
TEST_R_OP( 168 , zunpkd810, 0x008000ff, 0x802f80ff, 672); 
TEST_R_OP( 169 , zunpkd810, 0x00ff0080, 0x1e0cff80, 676); 
TEST_R_OP( 170 , zunpkd810, 0x00bb00ff, 0x80ffbbff, 680); 
TEST_R_OP( 171 , zunpkd810, 0x008000ff, 0xff8080ff, 684); 
TEST_R_OP( 172 , zunpkd810, 0x00ff00f3, 0x8080fff3, 688); 
TEST_R_OP( 173 , zunpkd810, 0x00ff0073, 0xffefff73, 692); 
TEST_R_OP( 174 , zunpkd810, 0x00800080, 0x80018080, 696); 
TEST_R_OP( 175 , zunpkd810, 0x00800069, 0x00008069, 700); 
TEST_R_OP( 176 , zunpkd810, 0x00ef00ff, 0x3371efff, 704); 
TEST_R_OP( 177 , zunpkd810, 0x000000ff, 0xff8000ff, 708); 
TEST_R_OP( 178 , zunpkd810, 0x008000ff, 0xc34380ff, 712); 
TEST_R_OP( 179 , zunpkd810, 0x00ff0047, 0x8000ff47, 716); 
TEST_R_OP( 180 , zunpkd810, 0x00800094, 0xff8c8094, 720); 
TEST_R_OP( 181 , zunpkd810, 0x00000000, 0x00ff0000, 724); 
TEST_R_OP( 182 , zunpkd810, 0x004b0080, 0x80694b80, 728); 
TEST_R_OP( 183 , zunpkd810, 0x000000ff, 0x000000ff, 732); 
TEST_R_OP( 184 , zunpkd810, 0x000000ff, 0xffff00ff, 736); 
TEST_R_OP( 185 , zunpkd810, 0x00ff0000, 0x6dc3ff00, 740); 
TEST_R_OP( 186 , zunpkd810, 0x00ff0080, 0x0080ff80, 744); 
TEST_R_OP( 187 , zunpkd810, 0x000000ff, 0x00ff00ff, 748); 
TEST_R_OP( 188 , zunpkd810, 0x006c0000, 0x80ff6c00, 752); 
TEST_R_OP( 189 , zunpkd810, 0x008000ff, 0x800a80ff, 756); 
TEST_R_OP( 190 , zunpkd810, 0x008000b8, 0x667180b8, 760); 
TEST_R_OP( 191 , zunpkd810, 0x00800080, 0xffff8080, 764); 
TEST_R_OP( 192 , zunpkd810, 0x000000ff, 0x800000ff, 768); 
TEST_R_OP( 193 , zunpkd810, 0x008000ff, 0xdb0080ff, 772); 
TEST_R_OP( 194 , zunpkd810, 0x006800ff, 0xff9468ff, 776); 
TEST_R_OP( 195 , zunpkd810, 0x00000000, 0xff000000, 780); 
TEST_R_OP( 196 , zunpkd810, 0x00ff0000, 0xff80ff00, 784); 
TEST_R_OP( 197 , zunpkd810, 0x00ff0080, 0x0000ff80, 788); 
TEST_R_OP( 198 , zunpkd810, 0x00ff0000, 0x80ffff00, 792); 
TEST_R_OP( 199 , zunpkd810, 0x00800080, 0x80808080, 796); 

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
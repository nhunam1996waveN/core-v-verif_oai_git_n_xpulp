# See LICENSE for license details.
#*****************************************************************************
# slli16.S
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

TEST_IMM_OP( 2 , slli16, 0xfffc0000, 0xffff8000, 2 , 8); 
TEST_IMM_OP( 3 , slli16, 0xc0000000, 0x9ce00000, 9 , 12); 
TEST_IMM_OP( 4 , slli16, 0x0000c3c0, 0x80002c3c, 4 , 16); 
TEST_IMM_OP( 5 , slli16, 0xdd78fffc, 0x775effff, 2 , 20); 
TEST_IMM_OP( 6 , slli16, 0x00003320, 0x80006199, 5 , 24); 
TEST_IMM_OP( 7 , slli16, 0xffff8000, 0xffff8000, 0 , 28); 
TEST_IMM_OP( 8 , slli16, 0x00000000, 0x80000000, 1 , 32); 
TEST_IMM_OP( 9 , slli16, 0x00004a00, 0x80000f25, 9 , 36); 
TEST_IMM_OP( 10 , slli16, 0x00006000, 0x0000dc36, 12 , 40); 
TEST_IMM_OP( 11 , slli16, 0xf3800000, 0xc9e78000, 7 , 44); 
TEST_IMM_OP( 12 , slli16, 0x0000e000, 0x0000ffff, 13 , 48); 
TEST_IMM_OP( 13 , slli16, 0x00000000, 0x00008000, 5 , 52); 
TEST_IMM_OP( 14 , slli16, 0xd02075a0, 0x6e81cbad, 5 , 56); 
TEST_IMM_OP( 15 , slli16, 0xf0000000, 0xd3af0000, 12 , 60); 
TEST_IMM_OP( 16 , slli16, 0x95000000, 0xc9958000, 8 , 64); 
TEST_IMM_OP( 17 , slli16, 0x00000000, 0x00008000, 1 , 68); 
TEST_IMM_OP( 18 , slli16, 0x4550fff0, 0x4455ffff, 4 , 72); 
TEST_IMM_OP( 19 , slli16, 0x8da62721, 0x8da62721, 0 , 76); 
TEST_IMM_OP( 20 , slli16, 0xffc00000, 0xffff8000, 6 , 80); 
TEST_IMM_OP( 21 , slli16, 0xf800f000, 0xffff5ade, 11 , 84); 
TEST_IMM_OP( 22 , slli16, 0xd0000000, 0xcb2d0000, 12 , 88); 
TEST_IMM_OP( 23 , slli16, 0xfffe0000, 0xffff8000, 1 , 92); 
TEST_IMM_OP( 24 , slli16, 0xe0000000, 0xa99c8000, 11 , 96); 
TEST_IMM_OP( 25 , slli16, 0x00000000, 0x00000000, 1 , 100); 
TEST_IMM_OP( 26 , slli16, 0xfff00000, 0xffff0000, 4 , 104); 
TEST_IMM_OP( 27 , slli16, 0xf0000000, 0xffff0000, 12 , 108); 
TEST_IMM_OP( 28 , slli16, 0x00000000, 0x00000000, 3 , 112); 
TEST_IMM_OP( 29 , slli16, 0x00000000, 0x00000000, 2 , 116); 
TEST_IMM_OP( 30 , slli16, 0xc0000000, 0xffff8000, 14 , 120); 
TEST_IMM_OP( 31 , slli16, 0xf000b000, 0xffff616b, 12 , 124); 
TEST_IMM_OP( 32 , slli16, 0xffe0ffe0, 0xffffffff, 5 , 128); 
TEST_IMM_OP( 33 , slli16, 0xa000e000, 0x77f5ffff, 13 , 132); 
TEST_IMM_OP( 34 , slli16, 0x00000000, 0x00000000, 4 , 136); 
TEST_IMM_OP( 35 , slli16, 0xc0000000, 0xd5e08000, 9 , 140); 
TEST_IMM_OP( 36 , slli16, 0xf000f000, 0xffff47ef, 12 , 144); 
TEST_IMM_OP( 37 , slli16, 0xc0006000, 0x242cf256, 12 , 148); 
TEST_IMM_OP( 38 , slli16, 0x80008000, 0x80008000, 0 , 152); 
TEST_IMM_OP( 39 , slli16, 0xff800000, 0xffff0000, 7 , 156); 
TEST_IMM_OP( 40 , slli16, 0xc7e09cc0, 0x78fc3398, 3 , 160); 
TEST_IMM_OP( 41 , slli16, 0xfc000000, 0xffff8000, 10 , 164); 
TEST_IMM_OP( 42 , slli16, 0xbb4cd2c4, 0x6ed334b1, 2 , 168); 
TEST_IMM_OP( 43 , slli16, 0x00005000, 0x8000f015, 12 , 172); 
TEST_IMM_OP( 44 , slli16, 0xf8000000, 0xffff0000, 11 , 176); 
TEST_IMM_OP( 45 , slli16, 0x0000ea00, 0x00005d75, 9 , 180); 
TEST_IMM_OP( 46 , slli16, 0xfff028a0, 0xffffb28a, 4 , 184); 
TEST_IMM_OP( 47 , slli16, 0x00000000, 0x00000000, 6 , 188); 
TEST_IMM_OP( 48 , slli16, 0xe928fff8, 0x3d25ffff, 3 , 192); 
TEST_IMM_OP( 49 , slli16, 0x0000fffe, 0x0000ffff, 1 , 196); 
TEST_IMM_OP( 50 , slli16, 0xfff00000, 0xffff8000, 4 , 200); 
TEST_IMM_OP( 51 , slli16, 0xfffe0000, 0xffff8000, 1 , 204); 
TEST_IMM_OP( 52 , slli16, 0x0000e000, 0x8000ffff, 13 , 208); 
TEST_IMM_OP( 53 , slli16, 0x00000000, 0x00008000, 6 , 212); 
TEST_IMM_OP( 54 , slli16, 0x00000000, 0x80000000, 12 , 216); 
TEST_IMM_OP( 55 , slli16, 0xe0000000, 0xffff0000, 13 , 220); 
TEST_IMM_OP( 56 , slli16, 0x00000000, 0x00008000, 10 , 224); 
TEST_IMM_OP( 57 , slli16, 0x0000f800, 0x8000ffff, 11 , 228); 
TEST_IMM_OP( 58 , slli16, 0x0000e000, 0x8000ffff, 13 , 232); 
TEST_IMM_OP( 59 , slli16, 0xc000c000, 0xbeb7ffff, 14 , 236); 
TEST_IMM_OP( 60 , slli16, 0xb6800000, 0x12da8000, 6 , 240); 
TEST_IMM_OP( 61 , slli16, 0xfffe898c, 0xffff44c6, 1 , 244); 
TEST_IMM_OP( 62 , slli16, 0x9ad0fff0, 0x49adffff, 4 , 248); 
TEST_IMM_OP( 63 , slli16, 0xfffc0000, 0xffff8000, 2 , 252); 
TEST_IMM_OP( 64 , slli16, 0x0000fe00, 0x0000ffff, 9 , 256); 
TEST_IMM_OP( 65 , slli16, 0x00005800, 0x0000cd4b, 11 , 260); 
TEST_IMM_OP( 66 , slli16, 0x00001090, 0x0000e212, 3 , 264); 
TEST_IMM_OP( 67 , slli16, 0x70006000, 0xe0777976, 12 , 268); 
TEST_IMM_OP( 68 , slli16, 0x00000000, 0x80008000, 5 , 272); 
TEST_IMM_OP( 69 , slli16, 0x00000000, 0x80008000, 2 , 276); 
TEST_IMM_OP( 70 , slli16, 0x00000000, 0x00008000, 8 , 280); 
TEST_IMM_OP( 71 , slli16, 0x00000000, 0x00008000, 10 , 284); 
TEST_IMM_OP( 72 , slli16, 0x0000394c, 0x80001ca6, 1 , 288); 
TEST_IMM_OP( 73 , slli16, 0x00000000, 0x00000000, 12 , 292); 
TEST_IMM_OP( 74 , slli16, 0x00000000, 0x00008000, 2 , 296); 
TEST_IMM_OP( 75 , slli16, 0x00000000, 0x00008000, 4 , 300); 
TEST_IMM_OP( 76 , slli16, 0x00000000, 0x80000000, 10 , 304); 
TEST_IMM_OP( 77 , slli16, 0x0000ffe0, 0x8000ffff, 5 , 308); 
TEST_IMM_OP( 78 , slli16, 0x7dd0fff8, 0x6fbaffff, 3 , 312); 
TEST_IMM_OP( 79 , slli16, 0x0000ff80, 0x8000ffff, 7 , 316); 
TEST_IMM_OP( 80 , slli16, 0x7000f000, 0xdae7ffff, 12 , 320); 
TEST_IMM_OP( 81 , slli16, 0xfff80000, 0xffff0000, 3 , 324); 
TEST_IMM_OP( 82 , slli16, 0x0000ffff, 0x0000ffff, 0 , 328); 
TEST_IMM_OP( 83 , slli16, 0xff00d600, 0xffff26d6, 8 , 332); 
TEST_IMM_OP( 84 , slli16, 0xf800f800, 0xffffffff, 11 , 336); 
TEST_IMM_OP( 85 , slli16, 0x0000fffc, 0x8000ffff, 2 , 340); 
TEST_IMM_OP( 86 , slli16, 0x00002180, 0x00001443, 7 , 344); 
TEST_IMM_OP( 87 , slli16, 0x0000fffc, 0x8000ffff, 2 , 348); 
TEST_IMM_OP( 88 , slli16, 0xff000000, 0xffff8000, 8 , 352); 
TEST_IMM_OP( 89 , slli16, 0xebc00000, 0x9f5e8000, 5 , 356); 
TEST_IMM_OP( 90 , slli16, 0x61c0cb10, 0x361c5cb1, 4 , 360); 
TEST_IMM_OP( 91 , slli16, 0x0000ffff, 0x0000ffff, 0 , 364); 
TEST_IMM_OP( 92 , slli16, 0xfe006e00, 0xffffc1b7, 9 , 368); 
TEST_IMM_OP( 93 , slli16, 0x0000c000, 0x0000a61e, 13 , 372); 
TEST_IMM_OP( 94 , slli16, 0x0000c000, 0x8000ffff, 14 , 376); 
TEST_IMM_OP( 95 , slli16, 0xfffe0000, 0xffff0000, 1 , 380); 
TEST_IMM_OP( 96 , slli16, 0x00000000, 0x00000000, 8 , 384); 
TEST_IMM_OP( 97 , slli16, 0x00000000, 0x49e80000, 13 , 388); 
TEST_IMM_OP( 98 , slli16, 0x00000000, 0x80000000, 10 , 392); 
TEST_IMM_OP( 99 , slli16, 0x0000ffc0, 0x0000ffff, 6 , 396); 
TEST_IMM_OP( 100 , slli16, 0x00009ef0, 0x000029ef, 4 , 400); 
TEST_IMM_OP( 101 , slli16, 0x0000fc00, 0x0000ffff, 10 , 404); 
TEST_IMM_OP( 102 , slli16, 0x00000000, 0x00000000, 5 , 408); 
TEST_IMM_OP( 103 , slli16, 0xfff81820, 0xffff0304, 3 , 412); 
TEST_IMM_OP( 104 , slli16, 0xc9200000, 0x64908000, 1 , 416); 
TEST_IMM_OP( 105 , slli16, 0x00000000, 0x80000000, 1 , 420); 
TEST_IMM_OP( 106 , slli16, 0x8000ffff, 0x8000ffff, 0 , 424); 
TEST_IMM_OP( 107 , slli16, 0x00000000, 0x00000000, 5 , 428); 
TEST_IMM_OP( 108 , slli16, 0x8b401960, 0xb45af0cb, 5 , 432); 
TEST_IMM_OP( 109 , slli16, 0x00000000, 0x00000000, 6 , 436); 
TEST_IMM_OP( 110 , slli16, 0xcd40ffc0, 0xbf35ffff, 6 , 440); 
TEST_IMM_OP( 111 , slli16, 0xab980000, 0xd5730000, 3 , 444); 
TEST_IMM_OP( 112 , slli16, 0x00000000, 0x00000000, 10 , 448); 
TEST_IMM_OP( 113 , slli16, 0xffff0000, 0xffff0000, 0 , 452); 
TEST_IMM_OP( 114 , slli16, 0xffffb488, 0xffffb488, 0 , 456); 
TEST_IMM_OP( 115 , slli16, 0xc0000000, 0xffff784c, 14 , 460); 
TEST_IMM_OP( 116 , slli16, 0x0000fffc, 0x0000ffff, 2 , 464); 
TEST_IMM_OP( 117 , slli16, 0xf0006000, 0xfffffcd6, 12 , 468); 
TEST_IMM_OP( 118 , slli16, 0x08000000, 0x19028000, 10 , 472); 
TEST_IMM_OP( 119 , slli16, 0x29cb0000, 0x29cb0000, 0 , 476); 
TEST_IMM_OP( 120 , slli16, 0x00000000, 0x80000000, 3 , 480); 
TEST_IMM_OP( 121 , slli16, 0xf000f000, 0xffffffff, 12 , 484); 
TEST_IMM_OP( 122 , slli16, 0x60000000, 0x9a068000, 12 , 488); 
TEST_IMM_OP( 123 , slli16, 0xfc000000, 0xffff8000, 10 , 492); 
TEST_IMM_OP( 124 , slli16, 0x80000000, 0xef04c868, 13 , 496); 
TEST_IMM_OP( 125 , slli16, 0x00008800, 0x0000d311, 11 , 500); 
TEST_IMM_OP( 126 , slli16, 0x00000000, 0x00000000, 4 , 504); 
TEST_IMM_OP( 127 , slli16, 0x00000000, 0x00000000, 7 , 508); 
TEST_IMM_OP( 128 , slli16, 0x0000ffe0, 0x8000ffff, 5 , 512); 
TEST_IMM_OP( 129 , slli16, 0xff80ff80, 0xffffffff, 7 , 516); 
TEST_IMM_OP( 130 , slli16, 0xbe800000, 0xe77d8000, 7 , 520); 
TEST_IMM_OP( 131 , slli16, 0x00000000, 0x80000000, 1 , 524); 
TEST_IMM_OP( 132 , slli16, 0x00009800, 0x0000a6a6, 10 , 528); 
TEST_IMM_OP( 133 , slli16, 0xff00ff00, 0xffffffff, 8 , 532); 
TEST_IMM_OP( 134 , slli16, 0x00000000, 0x00008000, 1 , 536); 
TEST_IMM_OP( 135 , slli16, 0xfffe0000, 0xffff8000, 1 , 540); 
TEST_IMM_OP( 136 , slli16, 0x0000c000, 0x8000ffff, 14 , 544); 
TEST_IMM_OP( 137 , slli16, 0x00002d00, 0x80007968, 5 , 548); 
TEST_IMM_OP( 138 , slli16, 0x00000000, 0x00000000, 4 , 552); 
TEST_IMM_OP( 139 , slli16, 0x0000ffc0, 0x8000ffff, 6 , 556); 
TEST_IMM_OP( 140 , slli16, 0xf0000000, 0x4d7e0000, 11 , 560); 
TEST_IMM_OP( 141 , slli16, 0x00000000, 0x80000000, 2 , 564); 
TEST_IMM_OP( 142 , slli16, 0xfaa00000, 0x6fd58000, 5 , 568); 
TEST_IMM_OP( 143 , slli16, 0x36000000, 0x8cd80000, 6 , 572); 
TEST_IMM_OP( 144 , slli16, 0xfffe0000, 0xffff0000, 1 , 576); 
TEST_IMM_OP( 145 , slli16, 0x00000000, 0x00008000, 5 , 580); 
TEST_IMM_OP( 146 , slli16, 0xff00ff00, 0xffffffff, 8 , 584); 
TEST_IMM_OP( 147 , slli16, 0x0000fe00, 0x0000ffff, 9 , 588); 
TEST_IMM_OP( 148 , slli16, 0x00000000, 0x80008000, 2 , 592); 
TEST_IMM_OP( 149 , slli16, 0xffff0000, 0xffff0000, 0 , 596); 
TEST_IMM_OP( 150 , slli16, 0x00000000, 0x00008000, 3 , 600); 
TEST_IMM_OP( 151 , slli16, 0x00000000, 0x80000000, 6 , 604); 
TEST_IMM_OP( 152 , slli16, 0xc986fffe, 0xe4c3ffff, 1 , 608); 
TEST_IMM_OP( 153 , slli16, 0x0000a800, 0x80000daa, 10 , 612); 
TEST_IMM_OP( 154 , slli16, 0xf8000000, 0xffff8000, 11 , 616); 
TEST_IMM_OP( 155 , slli16, 0x00003e80, 0x0000967d, 7 , 620); 
TEST_IMM_OP( 156 , slli16, 0xfff00000, 0xffff8000, 4 , 624); 
TEST_IMM_OP( 157 , slli16, 0x0000e000, 0x0000ffff, 13 , 628); 
TEST_IMM_OP( 158 , slli16, 0x00000000, 0x80000000, 11 , 632); 
TEST_IMM_OP( 159 , slli16, 0xfe00fe00, 0xffffffff, 9 , 636); 
TEST_IMM_OP( 160 , slli16, 0x00000000, 0x80000000, 14 , 640); 
TEST_IMM_OP( 161 , slli16, 0x4bac6640, 0x25d63320, 1 , 644); 
TEST_IMM_OP( 162 , slli16, 0x00000000, 0x80000000, 11 , 648); 
TEST_IMM_OP( 163 , slli16, 0xd800f800, 0xf29bffff, 11 , 652); 
TEST_IMM_OP( 164 , slli16, 0xf0000000, 0xffff8000, 12 , 656); 
TEST_IMM_OP( 165 , slli16, 0x8000c000, 0x2deaffff, 14 , 660); 
TEST_IMM_OP( 166 , slli16, 0xe000e000, 0xffffffff, 13 , 664); 
TEST_IMM_OP( 167 , slli16, 0x00007e00, 0x8000503f, 9 , 668); 
TEST_IMM_OP( 168 , slli16, 0x00000000, 0x80000000, 9 , 672); 
TEST_IMM_OP( 169 , slli16, 0x00000000, 0x80008000, 9 , 676); 
TEST_IMM_OP( 170 , slli16, 0x00000000, 0x80008000, 4 , 680); 
TEST_IMM_OP( 171 , slli16, 0x0432fffe, 0x0219ffff, 1 , 684); 
TEST_IMM_OP( 172 , slli16, 0x00000000, 0x00000000, 2 , 688); 
TEST_IMM_OP( 173 , slli16, 0x0c820000, 0x06418000, 1 , 692); 
TEST_IMM_OP( 174 , slli16, 0x00000000, 0x00008000, 14 , 696); 
TEST_IMM_OP( 175 , slli16, 0x00000f00, 0x8000c21e, 7 , 700); 
TEST_IMM_OP( 176 , slli16, 0xd700ffe0, 0x26b8ffff, 5 , 704); 
TEST_IMM_OP( 177 , slli16, 0x00000000, 0x80000000, 14 , 708); 
TEST_IMM_OP( 178 , slli16, 0x00000000, 0x80008000, 2 , 712); 
TEST_IMM_OP( 179 , slli16, 0x0000ffff, 0x0000ffff, 0 , 716); 
TEST_IMM_OP( 180 , slli16, 0x8404ffff, 0x8404ffff, 0 , 720); 
TEST_IMM_OP( 181 , slli16, 0x00000000, 0x80000000, 11 , 724); 
TEST_IMM_OP( 182 , slli16, 0x00000000, 0x80000000, 12 , 728); 
TEST_IMM_OP( 183 , slli16, 0xffe05de0, 0xffff82ef, 5 , 732); 
TEST_IMM_OP( 184 , slli16, 0x00000000, 0x00000000, 8 , 736); 
TEST_IMM_OP( 185 , slli16, 0xe0000000, 0xffff0000, 13 , 740); 
TEST_IMM_OP( 186 , slli16, 0x0000fffe, 0x0000ffff, 1 , 744); 
TEST_IMM_OP( 187 , slli16, 0x00000000, 0x80008000, 7 , 748); 
TEST_IMM_OP( 188 , slli16, 0x0000fff0, 0x0000ffff, 4 , 752); 
TEST_IMM_OP( 189 , slli16, 0x00000000, 0x00008000, 3 , 756); 
TEST_IMM_OP( 190 , slli16, 0x00000000, 0x00000000, 5 , 760); 
TEST_IMM_OP( 191 , slli16, 0x0000ff80, 0x8000ffff, 7 , 764); 
TEST_IMM_OP( 192 , slli16, 0x0000fffc, 0x8000ffff, 2 , 768); 
TEST_IMM_OP( 193 , slli16, 0xffc00000, 0xffff8000, 6 , 772); 
TEST_IMM_OP( 194 , slli16, 0x0000fff0, 0x0000ffff, 4 , 776); 
TEST_IMM_OP( 195 , slli16, 0x00007c00, 0x8000f71f, 10 , 780); 
TEST_IMM_OP( 196 , slli16, 0xffe00000, 0xffff8000, 5 , 784); 
TEST_IMM_OP( 197 , slli16, 0xffc00000, 0xffff0000, 6 , 788); 
TEST_IMM_OP( 198 , slli16, 0x00000000, 0x80008000, 5 , 792); 
TEST_IMM_OP( 199 , slli16, 0xb4000000, 0xd9ed0000, 10 , 796); 

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
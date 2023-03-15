# See LICENSE for license details.
#*****************************************************************************
# srli16.S
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

TEST_IMM_OP( 2 , srli16, 0x00000001, 0x000062e4, 14 , 8); 
TEST_IMM_OP( 3 , srli16, 0x00170003, 0x5cf90efa, 10 , 12); 
TEST_IMM_OP( 4 , srli16, 0x00000003, 0x0000ffff, 14 , 16); 
TEST_IMM_OP( 5 , srli16, 0x1fff0882, 0xffff4417, 3 , 20); 
TEST_IMM_OP( 6 , srli16, 0x03ff0000, 0xffff0000, 6 , 24); 
TEST_IMM_OP( 7 , srli16, 0x0b980800, 0xb9868000, 4 , 28); 
TEST_IMM_OP( 8 , srli16, 0x40007fff, 0x8000ffff, 1 , 32); 
TEST_IMM_OP( 9 , srli16, 0x00001850, 0x0000c283, 3 , 36); 
TEST_IMM_OP( 10 , srli16, 0x7fff6c57, 0xffffd8af, 1 , 40); 
TEST_IMM_OP( 11 , srli16, 0x00000c52, 0x00006292, 3 , 44); 
TEST_IMM_OP( 12 , srli16, 0x00000020, 0x00008000, 10 , 48); 
TEST_IMM_OP( 13 , srli16, 0x010001ff, 0x8000ffff, 7 , 52); 
TEST_IMM_OP( 14 , srli16, 0x10001000, 0x80008000, 3 , 56); 
TEST_IMM_OP( 15 , srli16, 0x00000003, 0x0000ffff, 14 , 60); 
TEST_IMM_OP( 16 , srli16, 0x00070004, 0xffff9ccf, 13 , 64); 
TEST_IMM_OP( 17 , srli16, 0xd23a8000, 0xd23a8000, 0 , 68); 
TEST_IMM_OP( 18 , srli16, 0x040007ff, 0x8000ffff, 5 , 72); 
TEST_IMM_OP( 19 , srli16, 0x059a0000, 0xb34b0000, 5 , 76); 
TEST_IMM_OP( 20 , srli16, 0x00000020, 0x00008000, 10 , 80); 
TEST_IMM_OP( 21 , srli16, 0x00000000, 0x00000000, 0 , 84); 
TEST_IMM_OP( 22 , srli16, 0x40004000, 0x80008000, 1 , 88); 
TEST_IMM_OP( 23 , srli16, 0x0000007f, 0x0000ffff, 9 , 92); 
TEST_IMM_OP( 24 , srli16, 0x000000ee, 0x00001dc9, 5 , 96); 
TEST_IMM_OP( 25 , srli16, 0x060d07ff, 0xc1a8ffff, 5 , 100); 
TEST_IMM_OP( 26 , srli16, 0x10001000, 0x80008000, 3 , 104); 
TEST_IMM_OP( 27 , srli16, 0x00a50200, 0x29418000, 6 , 108); 
TEST_IMM_OP( 28 , srli16, 0x80005df8, 0x80005df8, 0 , 112); 
TEST_IMM_OP( 29 , srli16, 0x0015003f, 0x5750ffff, 10 , 116); 
TEST_IMM_OP( 30 , srli16, 0x001f0010, 0xffff8000, 11 , 120); 
TEST_IMM_OP( 31 , srli16, 0x20002000, 0x80008000, 2 , 124); 
TEST_IMM_OP( 32 , srli16, 0x00000000, 0x00000000, 10 , 128); 
TEST_IMM_OP( 33 , srli16, 0x01ff0100, 0xffff8000, 7 , 132); 
TEST_IMM_OP( 34 , srli16, 0x0000f2d4, 0x0000f2d4, 0 , 136); 
TEST_IMM_OP( 35 , srli16, 0x081b1015, 0x206e4056, 2 , 140); 
TEST_IMM_OP( 36 , srli16, 0x00080008, 0x80008000, 12 , 144); 
TEST_IMM_OP( 37 , srli16, 0x0000001f, 0x0000ffff, 11 , 148); 
TEST_IMM_OP( 38 , srli16, 0x0fff0fff, 0xffffffff, 4 , 152); 
TEST_IMM_OP( 39 , srli16, 0x2d1e7fff, 0x5a3dffff, 1 , 156); 
TEST_IMM_OP( 40 , srli16, 0x020002df, 0x8000b7f4, 6 , 160); 
TEST_IMM_OP( 41 , srli16, 0x0018007f, 0x31fdffff, 9 , 164); 
TEST_IMM_OP( 42 , srli16, 0x05e70000, 0xbcff0000, 5 , 168); 
TEST_IMM_OP( 43 , srli16, 0x007f007f, 0xffffffff, 9 , 172); 
TEST_IMM_OP( 44 , srli16, 0x00000080, 0x00008000, 8 , 176); 
TEST_IMM_OP( 45 , srli16, 0x068b0716, 0xd172e2de, 5 , 180); 
TEST_IMM_OP( 46 , srli16, 0x00002518, 0x00009460, 2 , 184); 
TEST_IMM_OP( 47 , srli16, 0x35fc42a7, 0x35fc42a7, 0 , 188); 
TEST_IMM_OP( 48 , srli16, 0x007f007e, 0xfffffcb6, 9 , 192); 
TEST_IMM_OP( 49 , srli16, 0x0007001c, 0x387ee063, 11 , 196); 
TEST_IMM_OP( 50 , srli16, 0x7fff0000, 0xffff0000, 1 , 200); 
TEST_IMM_OP( 51 , srli16, 0x000f0008, 0xffff8000, 12 , 204); 
TEST_IMM_OP( 52 , srli16, 0x44174000, 0x882f8000, 1 , 208); 
TEST_IMM_OP( 53 , srli16, 0x000e000f, 0xec7bffff, 12 , 212); 
TEST_IMM_OP( 54 , srli16, 0x00000007, 0x1c50ffff, 13 , 216); 
TEST_IMM_OP( 55 , srli16, 0x0fff0dc3, 0xffffdc3b, 4 , 220); 
TEST_IMM_OP( 56 , srli16, 0x00000024, 0x000048ac, 9 , 224); 
TEST_IMM_OP( 57 , srli16, 0x0fff0800, 0xffff8000, 4 , 228); 
TEST_IMM_OP( 58 , srli16, 0x04000376, 0x80006ec6, 5 , 232); 
TEST_IMM_OP( 59 , srli16, 0x2f933fff, 0xbe4dffff, 2 , 236); 
TEST_IMM_OP( 60 , srli16, 0x00000001, 0x00003834, 13 , 240); 
TEST_IMM_OP( 61 , srli16, 0x8000ffff, 0x8000ffff, 0 , 244); 
TEST_IMM_OP( 62 , srli16, 0x00800080, 0x80008000, 8 , 248); 
TEST_IMM_OP( 63 , srli16, 0x200031b9, 0x8000c6e5, 2 , 252); 
TEST_IMM_OP( 64 , srli16, 0x00000000, 0x00000000, 12 , 256); 
TEST_IMM_OP( 65 , srli16, 0x001f0000, 0xffff0000, 11 , 260); 
TEST_IMM_OP( 66 , srli16, 0x40000000, 0x80000000, 1 , 264); 
TEST_IMM_OP( 67 , srli16, 0x00000080, 0x00008000, 8 , 268); 
TEST_IMM_OP( 68 , srli16, 0x03ff03ff, 0xffffffff, 6 , 272); 
TEST_IMM_OP( 69 , srli16, 0x007f007f, 0xffffffff, 9 , 276); 
TEST_IMM_OP( 70 , srli16, 0x014c07ff, 0x2994ffff, 5 , 280); 
TEST_IMM_OP( 71 , srli16, 0x00000000, 0x00000000, 2 , 284); 
TEST_IMM_OP( 72 , srli16, 0x00000100, 0x00008000, 7 , 288); 
TEST_IMM_OP( 73 , srli16, 0x00200000, 0x80000000, 10 , 292); 
TEST_IMM_OP( 74 , srli16, 0x00004000, 0x00008000, 1 , 296); 
TEST_IMM_OP( 75 , srli16, 0x09d90800, 0x9d918000, 4 , 300); 
TEST_IMM_OP( 76 , srli16, 0x00000013, 0x00009b76, 11 , 304); 
TEST_IMM_OP( 77 , srli16, 0x00000000, 0x00000000, 12 , 308); 
TEST_IMM_OP( 78 , srli16, 0x10000000, 0x80000000, 3 , 312); 
TEST_IMM_OP( 79 , srli16, 0x07ff0000, 0xffff0000, 5 , 316); 
TEST_IMM_OP( 80 , srli16, 0x00000200, 0x00008000, 6 , 320); 
TEST_IMM_OP( 81 , srli16, 0x00060000, 0xdb9b0000, 13 , 324); 
TEST_IMM_OP( 82 , srli16, 0x07ff0000, 0xffff0000, 5 , 328); 
TEST_IMM_OP( 83 , srli16, 0x00003fff, 0x0000ffff, 2 , 332); 
TEST_IMM_OP( 84 , srli16, 0x00008000, 0x00008000, 0 , 336); 
TEST_IMM_OP( 85 , srli16, 0x1fff1000, 0xffff8000, 3 , 340); 
TEST_IMM_OP( 86 , srli16, 0x0000007d, 0x0000fbde, 9 , 344); 
TEST_IMM_OP( 87 , srli16, 0x00000000, 0x00000000, 1 , 348); 
TEST_IMM_OP( 88 , srli16, 0x00000000, 0x00000000, 12 , 352); 
TEST_IMM_OP( 89 , srli16, 0x00100010, 0x80008000, 11 , 356); 
TEST_IMM_OP( 90 , srli16, 0x00020002, 0x80008000, 14 , 360); 
TEST_IMM_OP( 91 , srli16, 0xffff0000, 0xffff0000, 0 , 364); 
TEST_IMM_OP( 92 , srli16, 0x00000007, 0x0000ffff, 13 , 368); 
TEST_IMM_OP( 93 , srli16, 0x1fff1000, 0xffff8000, 3 , 372); 
TEST_IMM_OP( 94 , srli16, 0x01000000, 0x80000000, 7 , 376); 
TEST_IMM_OP( 95 , srli16, 0x00030002, 0xffff8000, 14 , 380); 
TEST_IMM_OP( 96 , srli16, 0x80008000, 0x80008000, 0 , 384); 
TEST_IMM_OP( 97 , srli16, 0x00000010, 0x00008000, 11 , 388); 
TEST_IMM_OP( 98 , srli16, 0x0014002b, 0x53e8aeeb, 10 , 392); 
TEST_IMM_OP( 99 , srli16, 0x000b0004, 0x2d1612dc, 10 , 396); 
TEST_IMM_OP( 100 , srli16, 0x00000000, 0x00000000, 11 , 400); 
TEST_IMM_OP( 101 , srli16, 0x0000000f, 0x0000ffff, 12 , 404); 
TEST_IMM_OP( 102 , srli16, 0x07f907ff, 0xff26ffff, 5 , 408); 
TEST_IMM_OP( 103 , srli16, 0x000001ff, 0x0000ffff, 7 , 412); 
TEST_IMM_OP( 104 , srli16, 0x08000000, 0x80000000, 4 , 416); 
TEST_IMM_OP( 105 , srli16, 0x20002000, 0x80008000, 2 , 420); 
TEST_IMM_OP( 106 , srli16, 0x0fff0cc8, 0xffffcc86, 4 , 424); 
TEST_IMM_OP( 107 , srli16, 0x4ac50000, 0x4ac50000, 0 , 428); 
TEST_IMM_OP( 108 , srli16, 0x00820000, 0x82b60000, 8 , 432); 
TEST_IMM_OP( 109 , srli16, 0x1c0e3fff, 0x7039ffff, 2 , 436); 
TEST_IMM_OP( 110 , srli16, 0x00000000, 0x00000000, 6 , 440); 
TEST_IMM_OP( 111 , srli16, 0x00000008, 0x00008000, 12 , 444); 
TEST_IMM_OP( 112 , srli16, 0x00000000, 0x00000000, 3 , 448); 
TEST_IMM_OP( 113 , srli16, 0x00002000, 0x00008000, 2 , 452); 
TEST_IMM_OP( 114 , srli16, 0x00000000, 0x00000000, 2 , 456); 
TEST_IMM_OP( 115 , srli16, 0x40006682, 0x8000cd04, 1 , 460); 
TEST_IMM_OP( 116 , srli16, 0x00000023, 0x00008d60, 10 , 464); 
TEST_IMM_OP( 117 , srli16, 0x03ff0200, 0xffff8000, 6 , 468); 
TEST_IMM_OP( 118 , srli16, 0x00040004, 0x80008000, 13 , 472); 
TEST_IMM_OP( 119 , srli16, 0x001f0000, 0xffff0000, 11 , 476); 
TEST_IMM_OP( 120 , srli16, 0x00ff0089, 0xffff89ef, 8 , 480); 
TEST_IMM_OP( 121 , srli16, 0x00800080, 0x80008000, 8 , 484); 
TEST_IMM_OP( 122 , srli16, 0x000b0080, 0x0bc68000, 8 , 488); 
TEST_IMM_OP( 123 , srli16, 0x10000000, 0x80000000, 3 , 492); 
TEST_IMM_OP( 124 , srli16, 0x00030002, 0xffff8000, 14 , 496); 
TEST_IMM_OP( 125 , srli16, 0x00000020, 0x00008000, 10 , 500); 
TEST_IMM_OP( 126 , srli16, 0x1d472000, 0x751f8000, 2 , 504); 
TEST_IMM_OP( 127 , srli16, 0x000f0000, 0xffff0000, 12 , 508); 
TEST_IMM_OP( 128 , srli16, 0x00080003, 0x80003901, 12 , 512); 
TEST_IMM_OP( 129 , srli16, 0x3fff2000, 0xffff8000, 2 , 516); 
TEST_IMM_OP( 130 , srli16, 0x082d0fff, 0x82d1ffff, 4 , 520); 
TEST_IMM_OP( 131 , srli16, 0x00080006, 0x80006c10, 12 , 524); 
TEST_IMM_OP( 132 , srli16, 0x00000000, 0x00000000, 14 , 528); 
TEST_IMM_OP( 133 , srli16, 0x00000266, 0x00000266, 0 , 532); 
TEST_IMM_OP( 134 , srli16, 0x0fff0398, 0xffff3986, 4 , 536); 
TEST_IMM_OP( 135 , srli16, 0x1ec60000, 0x7b180000, 2 , 540); 
TEST_IMM_OP( 136 , srli16, 0x00040007, 0x8000ffff, 13 , 544); 
TEST_IMM_OP( 137 , srli16, 0x07b80000, 0x7b8a0000, 4 , 548); 
TEST_IMM_OP( 138 , srli16, 0x00000a73, 0x0000a735, 4 , 552); 
TEST_IMM_OP( 139 , srli16, 0x00020003, 0x8000ffff, 14 , 556); 
TEST_IMM_OP( 140 , srli16, 0x001f0010, 0xffff8000, 11 , 560); 
TEST_IMM_OP( 141 , srli16, 0x00070000, 0xffff0000, 13 , 564); 
TEST_IMM_OP( 142 , srli16, 0x00000069, 0x000069de, 8 , 568); 
TEST_IMM_OP( 143 , srli16, 0x01ff01ff, 0xffffffff, 7 , 572); 
TEST_IMM_OP( 144 , srli16, 0x06800400, 0xd0068000, 5 , 576); 
TEST_IMM_OP( 145 , srli16, 0x00030002, 0xffff8000, 14 , 580); 
TEST_IMM_OP( 146 , srli16, 0x00080000, 0x80000000, 12 , 584); 
TEST_IMM_OP( 147 , srli16, 0x00800080, 0x80008000, 8 , 588); 
TEST_IMM_OP( 148 , srli16, 0x0fff0fff, 0xffffffff, 4 , 592); 
TEST_IMM_OP( 149 , srli16, 0x03ff004b, 0xffff12c4, 6 , 596); 
TEST_IMM_OP( 150 , srli16, 0x00000000, 0x00000000, 7 , 600); 
TEST_IMM_OP( 151 , srli16, 0x1b8b3fff, 0x6e2effff, 2 , 604); 
TEST_IMM_OP( 152 , srli16, 0x00000010, 0x00008000, 11 , 608); 
TEST_IMM_OP( 153 , srli16, 0x0020003f, 0x8000ffff, 10 , 612); 
TEST_IMM_OP( 154 , srli16, 0x009100e4, 0x488d725c, 7 , 616); 
TEST_IMM_OP( 155 , srli16, 0x010001db, 0x8000edec, 7 , 620); 
TEST_IMM_OP( 156 , srli16, 0x3fff2000, 0xffff8000, 2 , 624); 
TEST_IMM_OP( 157 , srli16, 0x01000000, 0x80000000, 7 , 628); 
TEST_IMM_OP( 158 , srli16, 0x20002523, 0x8000948c, 2 , 632); 
TEST_IMM_OP( 159 , srli16, 0x3fff3fff, 0xffffffff, 2 , 636); 
TEST_IMM_OP( 160 , srli16, 0x03ff03f5, 0xfffffd5f, 6 , 640); 
TEST_IMM_OP( 161 , srli16, 0x00003ed4, 0x0000fb51, 2 , 644); 
TEST_IMM_OP( 162 , srli16, 0x1fff1fff, 0xffffffff, 3 , 648); 
TEST_IMM_OP( 163 , srli16, 0x00000000, 0x05de0000, 13 , 652); 
TEST_IMM_OP( 164 , srli16, 0x00010004, 0x24c68000, 13 , 656); 
TEST_IMM_OP( 165 , srli16, 0x40004000, 0x80008000, 1 , 660); 
TEST_IMM_OP( 166 , srli16, 0x00000006, 0x0000345b, 11 , 664); 
TEST_IMM_OP( 167 , srli16, 0x0000000e, 0x000070d2, 11 , 668); 
TEST_IMM_OP( 168 , srli16, 0x00000003, 0x00000fff, 10 , 672); 
TEST_IMM_OP( 169 , srli16, 0x00060007, 0xdca1ffff, 13 , 676); 
TEST_IMM_OP( 170 , srli16, 0x0000000f, 0x0000ffff, 12 , 680); 
TEST_IMM_OP( 171 , srli16, 0xdad88000, 0xdad88000, 0 , 684); 
TEST_IMM_OP( 172 , srli16, 0x02000000, 0x80000000, 6 , 688); 
TEST_IMM_OP( 173 , srli16, 0x00000800, 0x00008000, 4 , 692); 
TEST_IMM_OP( 174 , srli16, 0x000001ff, 0x0000ffff, 7 , 696); 
TEST_IMM_OP( 175 , srli16, 0x04000573, 0x8000ae6b, 5 , 700); 
TEST_IMM_OP( 176 , srli16, 0x01ff0100, 0xffff8000, 7 , 704); 
TEST_IMM_OP( 177 , srli16, 0x10001fff, 0x8000ffff, 3 , 708); 
TEST_IMM_OP( 178 , srli16, 0x0019007f, 0x321effff, 9 , 712); 
TEST_IMM_OP( 179 , srli16, 0x00000024, 0x000024aa, 8 , 716); 
TEST_IMM_OP( 180 , srli16, 0x002e00fe, 0x2e15fe48, 8 , 720); 
TEST_IMM_OP( 181 , srli16, 0x00100000, 0x80000000, 11 , 724); 
TEST_IMM_OP( 182 , srli16, 0x007f0040, 0xffff8000, 9 , 728); 
TEST_IMM_OP( 183 , srli16, 0x00010002, 0x57df8000, 14 , 732); 
TEST_IMM_OP( 184 , srli16, 0x001b002b, 0x6ecdad76, 10 , 736); 
TEST_IMM_OP( 185 , srli16, 0x00070007, 0xffffffff, 13 , 740); 
TEST_IMM_OP( 186 , srli16, 0x00000004, 0x00008000, 13 , 744); 
TEST_IMM_OP( 187 , srli16, 0x1fe3174f, 0xff1aba78, 3 , 748); 
TEST_IMM_OP( 188 , srli16, 0x000006ef, 0x00006ef9, 4 , 752); 
TEST_IMM_OP( 189 , srli16, 0x00400000, 0x80000000, 9 , 756); 
TEST_IMM_OP( 190 , srli16, 0x08000800, 0x80008000, 4 , 760); 
TEST_IMM_OP( 191 , srli16, 0x00000000, 0x00000000, 1 , 764); 
TEST_IMM_OP( 192 , srli16, 0x00ff0080, 0xffff8000, 8 , 768); 
TEST_IMM_OP( 193 , srli16, 0x00002000, 0x00008000, 2 , 772); 
TEST_IMM_OP( 194 , srli16, 0x00000004, 0x00008000, 13 , 776); 
TEST_IMM_OP( 195 , srli16, 0x00c401ff, 0x6267ffff, 7 , 780); 
TEST_IMM_OP( 196 , srli16, 0x00000003, 0x0000ffff, 14 , 784); 
TEST_IMM_OP( 197 , srli16, 0x0005000f, 0x59afffff, 12 , 788); 
TEST_IMM_OP( 198 , srli16, 0x00080001, 0x80001e00, 12 , 792); 
TEST_IMM_OP( 199 , srli16, 0x010001ff, 0x8000ffff, 7 , 796); 

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
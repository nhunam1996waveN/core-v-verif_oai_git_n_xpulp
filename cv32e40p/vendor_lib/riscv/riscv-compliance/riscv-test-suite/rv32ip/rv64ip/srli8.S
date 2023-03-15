# See LICENSE for license details.
#*****************************************************************************
# srli8.S
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

TEST_IMM_OP( 2 , srli8, 0x1f001200, 0xff009600, 3 , 8); 
TEST_IMM_OP( 3 , srli8, 0x7f004000, 0xff008000, 1 , 12); 
TEST_IMM_OP( 4 , srli8, 0x000f000f, 0x00ff00ff, 4 , 16); 
TEST_IMM_OP( 5 , srli8, 0x00ec5b2c, 0x00ec5b2c, 0 , 20); 
TEST_IMM_OP( 6 , srli8, 0x40067f00, 0x800dff00, 1 , 24); 
TEST_IMM_OP( 7 , srli8, 0x1e1e2000, 0x7a7b8000, 2 , 28); 
TEST_IMM_OP( 8 , srli8, 0x004a007b, 0x009400f6, 1 , 32); 
TEST_IMM_OP( 9 , srli8, 0x08000f00, 0x8000ff00, 4 , 36); 
TEST_IMM_OP( 10 , srli8, 0x080f0800, 0x80ff8000, 4 , 40); 
TEST_IMM_OP( 11 , srli8, 0x050b0003, 0x55b50030, 4 , 44); 
TEST_IMM_OP( 12 , srli8, 0x0f0f080a, 0xffff80a6, 4 , 48); 
TEST_IMM_OP( 13 , srli8, 0x0000407f, 0x000080ff, 1 , 52); 
TEST_IMM_OP( 14 , srli8, 0x892855ff, 0x892855ff, 0 , 56); 
TEST_IMM_OP( 15 , srli8, 0x008080ff, 0x008080ff, 0 , 60); 
TEST_IMM_OP( 16 , srli8, 0x02070004, 0x5dff0080, 5 , 64); 
TEST_IMM_OP( 17 , srli8, 0x04010403, 0x802a806e, 5 , 68); 
TEST_IMM_OP( 18 , srli8, 0xd9cfbc71, 0xd9cfbc71, 0 , 72); 
TEST_IMM_OP( 19 , srli8, 0x7f7f4000, 0xffff8000, 1 , 76); 
TEST_IMM_OP( 20 , srli8, 0x00030002, 0x007c004e, 5 , 80); 
TEST_IMM_OP( 21 , srli8, 0x1f1f1000, 0xffff8000, 3 , 84); 
TEST_IMM_OP( 22 , srli8, 0x00030707, 0x0076ffff, 5 , 88); 
TEST_IMM_OP( 23 , srli8, 0x07010404, 0xff3e8080, 5 , 92); 
TEST_IMM_OP( 24 , srli8, 0x6f00000d, 0xdf00001a, 1 , 96); 
TEST_IMM_OP( 25 , srli8, 0x00b17a00, 0x00b17a00, 0 , 100); 
TEST_IMM_OP( 26 , srli8, 0x03020303, 0xe780fbff, 6 , 104); 
TEST_IMM_OP( 27 , srli8, 0x07040001, 0xff850024, 5 , 108); 
TEST_IMM_OP( 28 , srli8, 0x0f080008, 0xf7800080, 4 , 112); 
TEST_IMM_OP( 29 , srli8, 0x40407f70, 0x8080ffe1, 1 , 116); 
TEST_IMM_OP( 30 , srli8, 0x80008000, 0x80008000, 0 , 120); 
TEST_IMM_OP( 31 , srli8, 0x5b7d02ff, 0x5b7d02ff, 0 , 124); 
TEST_IMM_OP( 32 , srli8, 0x03040100, 0x61802200, 5 , 128); 
TEST_IMM_OP( 33 , srli8, 0x1f1f001c, 0xffff00e2, 3 , 132); 
TEST_IMM_OP( 34 , srli8, 0xffff80ff, 0xffff80ff, 0 , 136); 
TEST_IMM_OP( 35 , srli8, 0x00808062, 0x00808062, 0 , 140); 
TEST_IMM_OP( 36 , srli8, 0x1f160010, 0xffb70080, 3 , 144); 
TEST_IMM_OP( 37 , srli8, 0x07040404, 0xe0808080, 5 , 148); 
TEST_IMM_OP( 38 , srli8, 0x0000383a, 0x0000e1ea, 2 , 152); 
TEST_IMM_OP( 39 , srli8, 0x080d0f0f, 0x81daffff, 4 , 156); 
TEST_IMM_OP( 40 , srli8, 0x03050604, 0x67aadd80, 5 , 160); 
TEST_IMM_OP( 41 , srli8, 0x3f172020, 0xff5e8080, 2 , 164); 
TEST_IMM_OP( 42 , srli8, 0x003f3f3f, 0x00ffffff, 2 , 168); 
TEST_IMM_OP( 43 , srli8, 0x003f2f3f, 0x00ffbeff, 2 , 172); 
TEST_IMM_OP( 44 , srli8, 0x10000010, 0x80000080, 3 , 176); 
TEST_IMM_OP( 45 , srli8, 0x00030002, 0x3cff009e, 6 , 180); 
TEST_IMM_OP( 46 , srli8, 0x00000300, 0x0000ff00, 6 , 184); 
TEST_IMM_OP( 47 , srli8, 0x02020300, 0x8080ff00, 6 , 188); 
TEST_IMM_OP( 48 , srli8, 0x00030301, 0x00ffff7b, 6 , 192); 
TEST_IMM_OP( 49 , srli8, 0x7f000000, 0xff000000, 1 , 196); 
TEST_IMM_OP( 50 , srli8, 0x08000800, 0x8c008000, 4 , 200); 
TEST_IMM_OP( 51 , srli8, 0x7f40007f, 0xff8000ff, 1 , 204); 
TEST_IMM_OP( 52 , srli8, 0x1f101000, 0xff808000, 3 , 208); 
TEST_IMM_OP( 53 , srli8, 0x02020303, 0xa580f1ff, 6 , 212); 
TEST_IMM_OP( 54 , srli8, 0x02020000, 0x80801a00, 6 , 216); 
TEST_IMM_OP( 55 , srli8, 0x00181f10, 0x00c0ff80, 3 , 220); 
TEST_IMM_OP( 56 , srli8, 0x00000020, 0x00000080, 2 , 224); 
TEST_IMM_OP( 57 , srli8, 0x03003f3f, 0x0e00ffff, 2 , 228); 
TEST_IMM_OP( 58 , srli8, 0x7f400061, 0xff8000c3, 1 , 232); 
TEST_IMM_OP( 59 , srli8, 0x0f080800, 0xff8a8000, 4 , 236); 
TEST_IMM_OP( 60 , srli8, 0x101f1d00, 0x80ffef00, 3 , 240); 
TEST_IMM_OP( 61 , srli8, 0x04060707, 0x80d7f2ff, 5 , 244); 
TEST_IMM_OP( 62 , srli8, 0x030a0f05, 0x33afff51, 4 , 248); 
TEST_IMM_OP( 63 , srli8, 0x07040700, 0xff80ff00, 5 , 252); 
TEST_IMM_OP( 64 , srli8, 0x00030000, 0x22ff0000, 6 , 256); 
TEST_IMM_OP( 65 , srli8, 0x3300407f, 0x660080ff, 1 , 260); 
TEST_IMM_OP( 66 , srli8, 0xff8080ff, 0xff8080ff, 0 , 264); 
TEST_IMM_OP( 67 , srli8, 0x1f001010, 0xff008080, 3 , 268); 
TEST_IMM_OP( 68 , srli8, 0x14008080, 0x14008080, 0 , 272); 
TEST_IMM_OP( 69 , srli8, 0x1f0c1f08, 0xff64ff46, 3 , 276); 
TEST_IMM_OP( 70 , srli8, 0x08080802, 0x80808020, 4 , 280); 
TEST_IMM_OP( 71 , srli8, 0x1f1f0601, 0xffff360e, 3 , 284); 
TEST_IMM_OP( 72 , srli8, 0xe1808080, 0xe1808080, 0 , 288); 
TEST_IMM_OP( 73 , srli8, 0x0f080f0f, 0xff80ffff, 4 , 292); 
TEST_IMM_OP( 74 , srli8, 0x08060f0e, 0x8062ffee, 4 , 296); 
TEST_IMM_OP( 75 , srli8, 0x001f1000, 0x00ff8000, 3 , 300); 
TEST_IMM_OP( 76 , srli8, 0x10101015, 0x808080ac, 3 , 304); 
TEST_IMM_OP( 77 , srli8, 0x0f080808, 0xf3808080, 4 , 308); 
TEST_IMM_OP( 78 , srli8, 0x173f0e3f, 0x5fff3afd, 2 , 312); 
TEST_IMM_OP( 79 , srli8, 0x0800080f, 0x800080ff, 4 , 316); 
TEST_IMM_OP( 80 , srli8, 0x00000006, 0x000000dc, 5 , 320); 
TEST_IMM_OP( 81 , srli8, 0x1f0f0000, 0xff7d0000, 3 , 324); 
TEST_IMM_OP( 82 , srli8, 0x1f00101f, 0xff0080ff, 3 , 328); 
TEST_IMM_OP( 83 , srli8, 0x002c4040, 0x00588080, 1 , 332); 
TEST_IMM_OP( 84 , srli8, 0x7f7f7f2e, 0xffffff5c, 1 , 336); 
TEST_IMM_OP( 85 , srli8, 0x1010100c, 0x80808067, 3 , 340); 
TEST_IMM_OP( 86 , srli8, 0x0f090d0f, 0xff95deff, 4 , 344); 
TEST_IMM_OP( 87 , srli8, 0xff8005ef, 0xff8005ef, 0 , 348); 
TEST_IMM_OP( 88 , srli8, 0x02030203, 0x80ff80ff, 6 , 352); 
TEST_IMM_OP( 89 , srli8, 0x02030003, 0xb6ff00ff, 6 , 356); 
TEST_IMM_OP( 90 , srli8, 0x07040700, 0xff80ff00, 5 , 360); 
TEST_IMM_OP( 91 , srli8, 0x233f0000, 0x8cff0000, 2 , 364); 
TEST_IMM_OP( 92 , srli8, 0x03030200, 0xffff8009, 6 , 368); 
TEST_IMM_OP( 93 , srli8, 0x00070002, 0x00ff005e, 5 , 372); 
TEST_IMM_OP( 94 , srli8, 0x03020300, 0xff80da00, 6 , 376); 
TEST_IMM_OP( 95 , srli8, 0x00030200, 0x37ffa500, 6 , 380); 
TEST_IMM_OP( 96 , srli8, 0x0f000906, 0xff009660, 4 , 384); 
TEST_IMM_OP( 97 , srli8, 0x1f10001f, 0xff8000ff, 3 , 388); 
TEST_IMM_OP( 98 , srli8, 0x10011f1e, 0x800bfff5, 3 , 392); 
TEST_IMM_OP( 99 , srli8, 0x7f40007f, 0xff8000ff, 1 , 396); 
TEST_IMM_OP( 100 , srli8, 0x1b10001a, 0xdd8000d2, 3 , 400); 
TEST_IMM_OP( 101 , srli8, 0xcd5479ff, 0xcd5479ff, 0 , 404); 
TEST_IMM_OP( 102 , srli8, 0x8082ff00, 0x8082ff00, 0 , 408); 
TEST_IMM_OP( 103 , srli8, 0x0000ff00, 0x0000ff00, 0 , 412); 
TEST_IMM_OP( 104 , srli8, 0x01020000, 0x4b801a09, 6 , 416); 
TEST_IMM_OP( 105 , srli8, 0x00020303, 0x0080ffff, 6 , 420); 
TEST_IMM_OP( 106 , srli8, 0xf600ffff, 0xf600ffff, 0 , 424); 
TEST_IMM_OP( 107 , srli8, 0x001f0000, 0x00ff0000, 3 , 428); 
TEST_IMM_OP( 108 , srli8, 0x07070400, 0xffff8000, 5 , 432); 
TEST_IMM_OP( 109 , srli8, 0x00003f3f, 0x0000ffff, 2 , 436); 
TEST_IMM_OP( 110 , srli8, 0x20203f3f, 0x8080ffff, 2 , 440); 
TEST_IMM_OP( 111 , srli8, 0x393f3f00, 0xe7ffff00, 2 , 444); 
TEST_IMM_OP( 112 , srli8, 0x003f2000, 0x00ff8000, 2 , 448); 
TEST_IMM_OP( 113 , srli8, 0x00080c08, 0x0080cd80, 4 , 452); 
TEST_IMM_OP( 114 , srli8, 0x07000400, 0xff008900, 5 , 456); 
TEST_IMM_OP( 115 , srli8, 0x00000027, 0x00000027, 0 , 460); 
TEST_IMM_OP( 116 , srli8, 0x04000404, 0x800b8080, 5 , 464); 
TEST_IMM_OP( 117 , srli8, 0x080f0f0f, 0x80ffffff, 4 , 468); 
TEST_IMM_OP( 118 , srli8, 0x1f00190c, 0xff00ce65, 3 , 472); 
TEST_IMM_OP( 119 , srli8, 0x02000000, 0x80000000, 6 , 476); 
TEST_IMM_OP( 120 , srli8, 0x02030301, 0x80c7ff7c, 6 , 480); 
TEST_IMM_OP( 121 , srli8, 0x000e1f00, 0x0074ff00, 3 , 484); 
TEST_IMM_OP( 122 , srli8, 0x3f233f20, 0xff8dff80, 2 , 488); 
TEST_IMM_OP( 123 , srli8, 0x080f0007, 0x80ff007d, 4 , 492); 
TEST_IMM_OP( 124 , srli8, 0x00020003, 0x33803cff, 6 , 496); 
TEST_IMM_OP( 125 , srli8, 0x07040407, 0xf18085ff, 5 , 500); 
TEST_IMM_OP( 126 , srli8, 0x7e7f7f40, 0xfdffff80, 1 , 504); 
TEST_IMM_OP( 127 , srli8, 0x00201226, 0x00804b98, 2 , 508); 
TEST_IMM_OP( 128 , srli8, 0xffffff19, 0xffffff19, 0 , 512); 
TEST_IMM_OP( 129 , srli8, 0xd080ff70, 0xd080ff70, 0 , 516); 
TEST_IMM_OP( 130 , srli8, 0x2016203f, 0x805980ff, 2 , 520); 
TEST_IMM_OP( 131 , srli8, 0x3f000008, 0xff000020, 2 , 524); 
TEST_IMM_OP( 132 , srli8, 0x003f0f20, 0x00ff3c80, 2 , 528); 
TEST_IMM_OP( 133 , srli8, 0x01030003, 0x55ff00ff, 6 , 532); 
TEST_IMM_OP( 134 , srli8, 0x00000f00, 0x0000ff00, 4 , 536); 
TEST_IMM_OP( 135 , srli8, 0x0c040908, 0xc2439680, 4 , 540); 
TEST_IMM_OP( 136 , srli8, 0x07000707, 0xff00ffff, 5 , 544); 
TEST_IMM_OP( 137 , srli8, 0x03000104, 0x64003f80, 5 , 548); 
TEST_IMM_OP( 138 , srli8, 0x00020002, 0x00800080, 6 , 552); 
TEST_IMM_OP( 139 , srli8, 0xff2fff80, 0xff2fff80, 0 , 556); 
TEST_IMM_OP( 140 , srli8, 0x3f183f3a, 0xff60ffeb, 2 , 560); 
TEST_IMM_OP( 141 , srli8, 0xf700ffff, 0xf700ffff, 0 , 564); 
TEST_IMM_OP( 142 , srli8, 0x160e0f10, 0xb2757d80, 3 , 568); 
TEST_IMM_OP( 143 , srli8, 0x08040f00, 0x8044f800, 4 , 572); 
TEST_IMM_OP( 144 , srli8, 0x03000203, 0xff1480ff, 6 , 576); 
TEST_IMM_OP( 145 , srli8, 0x040f0f0c, 0x4affffc8, 4 , 580); 
TEST_IMM_OP( 146 , srli8, 0x03020200, 0xffb6801e, 6 , 584); 
TEST_IMM_OP( 147 , srli8, 0x100e0000, 0x80730000, 3 , 588); 
TEST_IMM_OP( 148 , srli8, 0x001f0a00, 0x00ff5400, 3 , 592); 
TEST_IMM_OP( 149 , srli8, 0x00070404, 0x00ff8083, 5 , 596); 
TEST_IMM_OP( 150 , srli8, 0x10100b1b, 0x80805bdc, 3 , 600); 
TEST_IMM_OP( 151 , srli8, 0x7f00762e, 0xff00ed5d, 1 , 604); 
TEST_IMM_OP( 152 , srli8, 0xffff0080, 0xffff0080, 0 , 608); 
TEST_IMM_OP( 153 , srli8, 0x9000ffff, 0x9000ffff, 0 , 612); 
TEST_IMM_OP( 154 , srli8, 0x101f1000, 0x80ff8100, 3 , 616); 
TEST_IMM_OP( 155 , srli8, 0x10070010, 0x803f0080, 3 , 620); 
TEST_IMM_OP( 156 , srli8, 0x07070000, 0xffff0000, 5 , 624); 
TEST_IMM_OP( 157 , srli8, 0x00550027, 0x00aa004e, 1 , 628); 
TEST_IMM_OP( 158 , srli8, 0x0808080f, 0x808080ff, 4 , 632); 
TEST_IMM_OP( 159 , srli8, 0x000f000f, 0x00ff00ff, 4 , 636); 
TEST_IMM_OP( 160 , srli8, 0x2020003f, 0x808000ff, 2 , 640); 
TEST_IMM_OP( 161 , srli8, 0x1f001010, 0xff008080, 3 , 644); 
TEST_IMM_OP( 162 , srli8, 0x0d101810, 0x6880c580, 3 , 648); 
TEST_IMM_OP( 163 , srli8, 0xffff7780, 0xffff7780, 0 , 652); 
TEST_IMM_OP( 164 , srli8, 0x001f1f00, 0x00ffff00, 3 , 656); 
TEST_IMM_OP( 165 , srli8, 0x00080b0f, 0x0080b9ff, 4 , 660); 
TEST_IMM_OP( 166 , srli8, 0x01001f00, 0x0c00ff00, 3 , 664); 
TEST_IMM_OP( 167 , srli8, 0xff8000ff, 0xff8000ff, 0 , 668); 
TEST_IMM_OP( 168 , srli8, 0x001f1f10, 0x00ffff80, 3 , 672); 
TEST_IMM_OP( 169 , srli8, 0x03000200, 0xe100bd00, 6 , 676); 
TEST_IMM_OP( 170 , srli8, 0xff8000ff, 0xff8000ff, 0 , 680); 
TEST_IMM_OP( 171 , srli8, 0x03000003, 0xff0000d3, 6 , 684); 
TEST_IMM_OP( 172 , srli8, 0x00000703, 0x0000ff7c, 5 , 688); 
TEST_IMM_OP( 173 , srli8, 0x3f003f2b, 0xff00ffad, 2 , 692); 
TEST_IMM_OP( 174 , srli8, 0x101f0710, 0x80ff3b80, 3 , 696); 
TEST_IMM_OP( 175 , srli8, 0x000d0c08, 0x00dbcb80, 4 , 700); 
TEST_IMM_OP( 176 , srli8, 0x00060004, 0x00cb0080, 5 , 704); 
TEST_IMM_OP( 177 , srli8, 0x1f1f1f00, 0xffffff00, 3 , 708); 
TEST_IMM_OP( 178 , srli8, 0x2b7f7f40, 0x57ffff80, 1 , 712); 
TEST_IMM_OP( 179 , srli8, 0x1f121f0e, 0xff93ff70, 3 , 716); 
TEST_IMM_OP( 180 , srli8, 0x20202000, 0x80808000, 2 , 720); 
TEST_IMM_OP( 181 , srli8, 0x000f0f05, 0x00ffff54, 4 , 724); 
TEST_IMM_OP( 182 , srli8, 0x07040000, 0xff800000, 5 , 728); 
TEST_IMM_OP( 183 , srli8, 0x80000004, 0x80000004, 0 , 732); 
TEST_IMM_OP( 184 , srli8, 0x00100b00, 0x00805b00, 3 , 736); 
TEST_IMM_OP( 185 , srli8, 0xffff0080, 0xffff0080, 0 , 740); 
TEST_IMM_OP( 186 , srli8, 0xfbff80bb, 0xfbff80bb, 0 , 744); 
TEST_IMM_OP( 187 , srli8, 0x3f28163f, 0xffa25bff, 2 , 748); 
TEST_IMM_OP( 188 , srli8, 0x003f1210, 0x00ff4a42, 2 , 752); 
TEST_IMM_OP( 189 , srli8, 0x0076ff80, 0x0076ff80, 0 , 756); 
TEST_IMM_OP( 190 , srli8, 0x2020003f, 0x808000ff, 2 , 760); 
TEST_IMM_OP( 191 , srli8, 0x7f407f7f, 0xff80ffff, 1 , 764); 
TEST_IMM_OP( 192 , srli8, 0x20260020, 0x80980080, 2 , 768); 
TEST_IMM_OP( 193 , srli8, 0x402e4040, 0x805d8080, 1 , 772); 
TEST_IMM_OP( 194 , srli8, 0x03020002, 0xffbe0780, 6 , 776); 
TEST_IMM_OP( 195 , srli8, 0x0506101f, 0x2a3580ff, 3 , 780); 
TEST_IMM_OP( 196 , srli8, 0x001f0100, 0x00ff0800, 3 , 784); 
TEST_IMM_OP( 197 , srli8, 0x7f2d0000, 0xff5a0000, 1 , 788); 
TEST_IMM_OP( 198 , srli8, 0x07000004, 0xff000080, 5 , 792); 
TEST_IMM_OP( 199 , srli8, 0x0c042005, 0x31138016, 2 , 796); 

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
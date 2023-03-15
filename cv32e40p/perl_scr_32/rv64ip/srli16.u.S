# See LICENSE for license details.
#*****************************************************************************
# srli16.u.S
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

TEST_IMM_OP( 2 , srli16.u, 0x00009654, 0x00009654, 0 , 8); 
TEST_IMM_OP( 3 , srli16.u, 0x00080010, 0x8000ffff, 12 , 12); 
TEST_IMM_OP( 4 , srli16.u, 0x20002000, 0xffffffff, 3 , 16); 
TEST_IMM_OP( 5 , srli16.u, 0x40004000, 0x80008000, 1 , 20); 
TEST_IMM_OP( 6 , srli16.u, 0x00000100, 0x0000ffff, 8 , 24); 
TEST_IMM_OP( 7 , srli16.u, 0x00000002, 0x00008000, 14 , 28); 
TEST_IMM_OP( 8 , srli16.u, 0x0000001a, 0x000066f4, 10 , 32); 
TEST_IMM_OP( 9 , srli16.u, 0x00800040, 0xffff8000, 9 , 36); 
TEST_IMM_OP( 10 , srli16.u, 0x00400028, 0x80004f39, 9 , 40); 
TEST_IMM_OP( 11 , srli16.u, 0x10001000, 0x80008000, 3 , 44); 
TEST_IMM_OP( 12 , srli16.u, 0x8000ffff, 0x8000ffff, 0 , 48); 
TEST_IMM_OP( 13 , srli16.u, 0x00100010, 0xffffffff, 12 , 52); 
TEST_IMM_OP( 14 , srli16.u, 0x08000000, 0x80000000, 4 , 56); 
TEST_IMM_OP( 15 , srli16.u, 0x20000000, 0x80000000, 2 , 60); 
TEST_IMM_OP( 16 , srli16.u, 0x00200000, 0x80000000, 10 , 64); 
TEST_IMM_OP( 17 , srli16.u, 0x02000200, 0x80008000, 6 , 68); 
TEST_IMM_OP( 18 , srli16.u, 0x00040002, 0xffff8000, 14 , 72); 
TEST_IMM_OP( 19 , srli16.u, 0x10000000, 0xffff0000, 4 , 76); 
TEST_IMM_OP( 20 , srli16.u, 0x001a0010, 0xcede8000, 11 , 80); 
TEST_IMM_OP( 21 , srli16.u, 0xffff8000, 0xffff8000, 0 , 84); 
TEST_IMM_OP( 22 , srli16.u, 0x00080004, 0xffff8000, 13 , 88); 
TEST_IMM_OP( 23 , srli16.u, 0x00008000, 0x0000ffff, 1 , 92); 
TEST_IMM_OP( 24 , srli16.u, 0x10000800, 0xffff8000, 4 , 96); 
TEST_IMM_OP( 25 , srli16.u, 0x09080800, 0x90818000, 4 , 100); 
TEST_IMM_OP( 26 , srli16.u, 0x40004000, 0x80008000, 1 , 104); 
TEST_IMM_OP( 27 , srli16.u, 0x04a80400, 0x95038000, 5 , 108); 
TEST_IMM_OP( 28 , srli16.u, 0x00380000, 0xdeb50000, 10 , 112); 
TEST_IMM_OP( 29 , srli16.u, 0x40004000, 0x80008000, 1 , 116); 
TEST_IMM_OP( 30 , srli16.u, 0x80008000, 0xffffffff, 1 , 120); 
TEST_IMM_OP( 31 , srli16.u, 0x00000800, 0x00008000, 4 , 124); 
TEST_IMM_OP( 32 , srli16.u, 0x00000000, 0x00000000, 1 , 128); 
TEST_IMM_OP( 33 , srli16.u, 0x20001bf8, 0xffffdfc2, 3 , 132); 
TEST_IMM_OP( 34 , srli16.u, 0x00000010, 0x00008000, 11 , 136); 
TEST_IMM_OP( 35 , srli16.u, 0x20001000, 0xffff8000, 3 , 140); 
TEST_IMM_OP( 36 , srli16.u, 0x00001000, 0x0000ffff, 4 , 144); 
TEST_IMM_OP( 37 , srli16.u, 0x344e4000, 0xd136ffff, 2 , 148); 
TEST_IMM_OP( 38 , srli16.u, 0x01700200, 0xb80dffff, 7 , 152); 
TEST_IMM_OP( 39 , srli16.u, 0x10000800, 0xffff8000, 4 , 156); 
TEST_IMM_OP( 40 , srli16.u, 0x00030004, 0xc03fffff, 14 , 160); 
TEST_IMM_OP( 41 , srli16.u, 0x00050000, 0x48250000, 12 , 164); 
TEST_IMM_OP( 42 , srli16.u, 0x00000000, 0x00000000, 11 , 168); 
TEST_IMM_OP( 43 , srli16.u, 0x00040008, 0x8000ffff, 13 , 172); 
TEST_IMM_OP( 44 , srli16.u, 0x00000200, 0x00008000, 6 , 176); 
TEST_IMM_OP( 45 , srli16.u, 0x00009a53, 0x00009a53, 0 , 180); 
TEST_IMM_OP( 46 , srli16.u, 0x00000040, 0x00008000, 9 , 184); 
TEST_IMM_OP( 47 , srli16.u, 0x00400019, 0x8000316c, 9 , 188); 
TEST_IMM_OP( 48 , srli16.u, 0x20004000, 0x8000ffff, 2 , 192); 
TEST_IMM_OP( 49 , srli16.u, 0x00000200, 0x00008000, 6 , 196); 
TEST_IMM_OP( 50 , srli16.u, 0x00610400, 0x0c2a8000, 5 , 200); 
TEST_IMM_OP( 51 , srli16.u, 0x00000037, 0x0000375e, 8 , 204); 
TEST_IMM_OP( 52 , srli16.u, 0x00000000, 0x00000000, 0 , 208); 
TEST_IMM_OP( 53 , srli16.u, 0x00000000, 0x00000000, 4 , 212); 
TEST_IMM_OP( 54 , srli16.u, 0x0029007e, 0x29037e51, 8 , 216); 
TEST_IMM_OP( 55 , srli16.u, 0x00040000, 0x8a130000, 13 , 220); 
TEST_IMM_OP( 56 , srli16.u, 0x00040002, 0xe5f08000, 14 , 224); 
TEST_IMM_OP( 57 , srli16.u, 0x00200020, 0x80008000, 10 , 228); 
TEST_IMM_OP( 58 , srli16.u, 0x00000040, 0x00008000, 9 , 232); 
TEST_IMM_OP( 59 , srli16.u, 0x03d10000, 0x03d10000, 0 , 236); 
TEST_IMM_OP( 60 , srli16.u, 0x00800040, 0xffff8000, 9 , 240); 
TEST_IMM_OP( 61 , srli16.u, 0x00000004, 0x000084f6, 13 , 244); 
TEST_IMM_OP( 62 , srli16.u, 0x00000888, 0x00000888, 0 , 248); 
TEST_IMM_OP( 63 , srli16.u, 0x19660000, 0xcb310000, 3 , 252); 
TEST_IMM_OP( 64 , srli16.u, 0x00000000, 0x039f0000, 14 , 256); 
TEST_IMM_OP( 65 , srli16.u, 0x00040004, 0x80008000, 13 , 260); 
TEST_IMM_OP( 66 , srli16.u, 0x00100020, 0x8000ffff, 11 , 264); 
TEST_IMM_OP( 67 , srli16.u, 0x000d0010, 0xd4dbffff, 12 , 268); 
TEST_IMM_OP( 68 , srli16.u, 0x00200020, 0xfdf4ffff, 11 , 272); 
TEST_IMM_OP( 69 , srli16.u, 0x00020000, 0x80000000, 14 , 276); 
TEST_IMM_OP( 70 , srli16.u, 0x00000000, 0x00000000, 9 , 280); 
TEST_IMM_OP( 71 , srli16.u, 0x200019ee, 0xffffcf71, 3 , 284); 
TEST_IMM_OP( 72 , srli16.u, 0x00100010, 0xffffffff, 12 , 288); 
TEST_IMM_OP( 73 , srli16.u, 0x00010000, 0x56ee0000, 14 , 292); 
TEST_IMM_OP( 74 , srli16.u, 0x00000008, 0x00008000, 12 , 296); 
TEST_IMM_OP( 75 , srli16.u, 0x000e0000, 0x1b970000, 9 , 300); 
TEST_IMM_OP( 76 , srli16.u, 0x80001f50, 0xffff3e9f, 1 , 304); 
TEST_IMM_OP( 77 , srli16.u, 0x00001000, 0x0000ffff, 4 , 308); 
TEST_IMM_OP( 78 , srli16.u, 0x001f0040, 0x3e798000, 9 , 312); 
TEST_IMM_OP( 79 , srli16.u, 0x000004c7, 0x000098e8, 5 , 316); 
TEST_IMM_OP( 80 , srli16.u, 0x00000040, 0x00008000, 9 , 320); 
TEST_IMM_OP( 81 , srli16.u, 0x00200014, 0x80004e24, 10 , 324); 
TEST_IMM_OP( 82 , srli16.u, 0x10000000, 0x80000000, 3 , 328); 
TEST_IMM_OP( 83 , srli16.u, 0x00000080, 0x0000ffff, 9 , 332); 
TEST_IMM_OP( 84 , srli16.u, 0x02000000, 0x80000000, 6 , 336); 
TEST_IMM_OP( 85 , srli16.u, 0x00080010, 0x412b8000, 11 , 340); 
TEST_IMM_OP( 86 , srli16.u, 0x0010000b, 0xffffaa0c, 12 , 344); 
TEST_IMM_OP( 87 , srli16.u, 0x00000000, 0x00000000, 5 , 348); 
TEST_IMM_OP( 88 , srli16.u, 0x05320800, 0xa632ffff, 5 , 352); 
TEST_IMM_OP( 89 , srli16.u, 0x10840000, 0x84230000, 3 , 356); 
TEST_IMM_OP( 90 , srli16.u, 0x02000000, 0xffff0000, 7 , 360); 
TEST_IMM_OP( 91 , srli16.u, 0x00000010, 0x0000ffff, 12 , 364); 
TEST_IMM_OP( 92 , srli16.u, 0x00004000, 0x00008000, 1 , 368); 
TEST_IMM_OP( 93 , srli16.u, 0x039c0200, 0xe6f98000, 6 , 372); 
TEST_IMM_OP( 94 , srli16.u, 0x40000000, 0xffff0000, 2 , 376); 
TEST_IMM_OP( 95 , srli16.u, 0x000c0008, 0xc1d78000, 12 , 380); 
TEST_IMM_OP( 96 , srli16.u, 0x00000010, 0x00008000, 11 , 384); 
TEST_IMM_OP( 97 , srli16.u, 0x20161fb2, 0x20161fb2, 0 , 388); 
TEST_IMM_OP( 98 , srli16.u, 0x00000000, 0x00000000, 12 , 392); 
TEST_IMM_OP( 99 , srli16.u, 0x08000732, 0xffffe63d, 5 , 396); 
TEST_IMM_OP( 100 , srli16.u, 0x40000000, 0xffff0000, 2 , 400); 
TEST_IMM_OP( 101 , srli16.u, 0x00080010, 0x8000ffff, 12 , 404); 
TEST_IMM_OP( 102 , srli16.u, 0x00000000, 0x00000000, 4 , 408); 
TEST_IMM_OP( 103 , srli16.u, 0x00000400, 0x0000ffff, 6 , 412); 
TEST_IMM_OP( 104 , srli16.u, 0x00200024, 0x80008eff, 10 , 416); 
TEST_IMM_OP( 105 , srli16.u, 0x04000000, 0xffff0000, 6 , 420); 
TEST_IMM_OP( 106 , srli16.u, 0x08000800, 0xffffffff, 5 , 424); 
TEST_IMM_OP( 107 , srli16.u, 0x01000098, 0xffff9879, 8 , 428); 
TEST_IMM_OP( 108 , srli16.u, 0x000c000e, 0x5ec77226, 11 , 432); 
TEST_IMM_OP( 109 , srli16.u, 0x00000004, 0x0000ffff, 14 , 436); 
TEST_IMM_OP( 110 , srli16.u, 0x80007c74, 0x80007c74, 0 , 440); 
TEST_IMM_OP( 111 , srli16.u, 0x00000002, 0x00008000, 14 , 444); 
TEST_IMM_OP( 112 , srli16.u, 0x00000400, 0x0000ffff, 6 , 448); 
TEST_IMM_OP( 113 , srli16.u, 0x00200040, 0x8000ffff, 10 , 452); 
TEST_IMM_OP( 114 , srli16.u, 0x10002000, 0x8000ffff, 3 , 456); 
TEST_IMM_OP( 115 , srli16.u, 0x00002000, 0x00008000, 2 , 460); 
TEST_IMM_OP( 116 , srli16.u, 0x00000400, 0x00008000, 5 , 464); 
TEST_IMM_OP( 117 , srli16.u, 0x00040000, 0xffff0000, 14 , 468); 
TEST_IMM_OP( 118 , srli16.u, 0x00000cc4, 0x00003311, 2 , 472); 
TEST_IMM_OP( 119 , srli16.u, 0x0360020d, 0xd80e832b, 6 , 476); 
TEST_IMM_OP( 120 , srli16.u, 0x00040002, 0xffff8000, 14 , 480); 
TEST_IMM_OP( 121 , srli16.u, 0x40002b48, 0xffffad1e, 2 , 484); 
TEST_IMM_OP( 122 , srli16.u, 0x20001be9, 0xffffdf4a, 3 , 488); 
TEST_IMM_OP( 123 , srli16.u, 0x000000a2, 0x0000a22a, 8 , 492); 
TEST_IMM_OP( 124 , srli16.u, 0x08000800, 0x80008000, 4 , 496); 
TEST_IMM_OP( 125 , srli16.u, 0x10001a69, 0x8000d349, 3 , 500); 
TEST_IMM_OP( 126 , srli16.u, 0x00040001, 0xffcf3ac7, 14 , 504); 
TEST_IMM_OP( 127 , srli16.u, 0x03920261, 0xe4619822, 6 , 508); 
TEST_IMM_OP( 128 , srli16.u, 0x00000000, 0x00000000, 10 , 512); 
TEST_IMM_OP( 129 , srli16.u, 0x00400000, 0xffff0000, 10 , 516); 
TEST_IMM_OP( 130 , srli16.u, 0x00100000, 0xffff0000, 12 , 520); 
TEST_IMM_OP( 131 , srli16.u, 0x20001647, 0x8000591c, 2 , 524); 
TEST_IMM_OP( 132 , srli16.u, 0x00000008, 0x0000ffff, 13 , 528); 
TEST_IMM_OP( 133 , srli16.u, 0x20002187, 0x8000861d, 2 , 532); 
TEST_IMM_OP( 134 , srli16.u, 0x00080006, 0xffffb371, 13 , 536); 
TEST_IMM_OP( 135 , srli16.u, 0x00000004, 0x04528715, 13 , 540); 
TEST_IMM_OP( 136 , srli16.u, 0x6b210000, 0x6b210000, 0 , 544); 
TEST_IMM_OP( 137 , srli16.u, 0x000d0008, 0xd0f98000, 12 , 548); 
TEST_IMM_OP( 138 , srli16.u, 0x00020000, 0x71f90000, 14 , 552); 
TEST_IMM_OP( 139 , srli16.u, 0x04000496, 0x800092b3, 5 , 556); 
TEST_IMM_OP( 140 , srli16.u, 0x0000000c, 0x042bbd21, 12 , 560); 
TEST_IMM_OP( 141 , srli16.u, 0x0bd10800, 0xbd0c8000, 4 , 564); 
TEST_IMM_OP( 142 , srli16.u, 0x00000080, 0x00008000, 8 , 568); 
TEST_IMM_OP( 143 , srli16.u, 0x00000800, 0x0000ffff, 5 , 572); 
TEST_IMM_OP( 144 , srli16.u, 0x00000800, 0x0000ffff, 5 , 576); 
TEST_IMM_OP( 145 , srli16.u, 0x00000000, 0x00000000, 12 , 580); 
TEST_IMM_OP( 146 , srli16.u, 0x00040008, 0x75fcffff, 13 , 584); 
TEST_IMM_OP( 147 , srli16.u, 0x00000000, 0x00000000, 12 , 588); 
TEST_IMM_OP( 148 , srli16.u, 0x00000000, 0x00000000, 10 , 592); 
TEST_IMM_OP( 149 , srli16.u, 0x092f4000, 0x24bbffff, 2 , 596); 
TEST_IMM_OP( 150 , srli16.u, 0x00000020, 0x00008000, 10 , 600); 
TEST_IMM_OP( 151 , srli16.u, 0x68c1793c, 0xd182f277, 1 , 604); 
TEST_IMM_OP( 152 , srli16.u, 0x00100010, 0x80008000, 11 , 608); 
TEST_IMM_OP( 153 , srli16.u, 0x06c50000, 0x6c530000, 4 , 612); 
TEST_IMM_OP( 154 , srli16.u, 0x10000800, 0xffff8000, 4 , 616); 
TEST_IMM_OP( 155 , srli16.u, 0x00080008, 0x80008000, 12 , 620); 
TEST_IMM_OP( 156 , srli16.u, 0x00020000, 0x80000000, 14 , 624); 
TEST_IMM_OP( 157 , srli16.u, 0x057c0000, 0xaf7b0000, 5 , 628); 
TEST_IMM_OP( 158 , srli16.u, 0x10001000, 0xffffffff, 4 , 632); 
TEST_IMM_OP( 159 , srli16.u, 0x0f230000, 0x79150000, 3 , 636); 
TEST_IMM_OP( 160 , srli16.u, 0x00000000, 0x00000000, 4 , 640); 
TEST_IMM_OP( 161 , srli16.u, 0x00000008, 0x00008000, 12 , 644); 
TEST_IMM_OP( 162 , srli16.u, 0x01000000, 0xffff0000, 8 , 648); 
TEST_IMM_OP( 163 , srli16.u, 0x80005a9b, 0x80005a9b, 0 , 652); 
TEST_IMM_OP( 164 , srli16.u, 0x00400000, 0x80000000, 9 , 656); 
TEST_IMM_OP( 165 , srli16.u, 0x00200040, 0x8000ffff, 10 , 660); 
TEST_IMM_OP( 166 , srli16.u, 0x00200200, 0x0feaffff, 7 , 664); 
TEST_IMM_OP( 167 , srli16.u, 0x04000341, 0x80006811, 5 , 668); 
TEST_IMM_OP( 168 , srli16.u, 0x00010000, 0x3f970000, 14 , 672); 
TEST_IMM_OP( 169 , srli16.u, 0x00040000, 0xffff0000, 14 , 676); 
TEST_IMM_OP( 170 , srli16.u, 0x40003b19, 0x80007632, 1 , 680); 
TEST_IMM_OP( 171 , srli16.u, 0x00200040, 0x8000ffff, 10 , 684); 
TEST_IMM_OP( 172 , srli16.u, 0x003f0010, 0xfc3c3ff4, 10 , 688); 
TEST_IMM_OP( 173 , srli16.u, 0x1d602000, 0xeaffffff, 3 , 692); 
TEST_IMM_OP( 174 , srli16.u, 0x83a08000, 0x83a08000, 0 , 696); 
TEST_IMM_OP( 175 , srli16.u, 0x00070000, 0x1c0d0000, 10 , 700); 
TEST_IMM_OP( 176 , srli16.u, 0x00800000, 0xffff0000, 9 , 704); 
TEST_IMM_OP( 177 , srli16.u, 0x00800000, 0x80000000, 8 , 708); 
TEST_IMM_OP( 178 , srli16.u, 0x01170200, 0x8b5dffff, 7 , 712); 
TEST_IMM_OP( 179 , srli16.u, 0x00020002, 0x852e9cfd, 14 , 716); 
TEST_IMM_OP( 180 , srli16.u, 0x01000100, 0x80008000, 7 , 720); 
TEST_IMM_OP( 181 , srli16.u, 0x00002a42, 0x00005484, 1 , 724); 
TEST_IMM_OP( 182 , srli16.u, 0x00000002, 0x0000109f, 11 , 728); 
TEST_IMM_OP( 183 , srli16.u, 0x02060000, 0x81740000, 6 , 732); 
TEST_IMM_OP( 184 , srli16.u, 0x00050004, 0x91c48000, 13 , 736); 
TEST_IMM_OP( 185 , srli16.u, 0x000d0020, 0x65ccffff, 11 , 740); 
TEST_IMM_OP( 186 , srli16.u, 0x00070008, 0xdacfffff, 13 , 744); 
TEST_IMM_OP( 187 , srli16.u, 0x00b10100, 0x58be8000, 7 , 748); 
TEST_IMM_OP( 188 , srli16.u, 0x00000004, 0x0000ffff, 14 , 752); 
TEST_IMM_OP( 189 , srli16.u, 0x02750328, 0x9d32c9e7, 6 , 756); 
TEST_IMM_OP( 190 , srli16.u, 0x08000400, 0xffff8000, 5 , 760); 
TEST_IMM_OP( 191 , srli16.u, 0x00000464, 0x00002323, 3 , 764); 
TEST_IMM_OP( 192 , srli16.u, 0x020003ad, 0x8000eb2f, 6 , 768); 
TEST_IMM_OP( 193 , srli16.u, 0x10000ed4, 0xffffed39, 4 , 772); 
TEST_IMM_OP( 194 , srli16.u, 0x00080008, 0xffffffff, 13 , 776); 
TEST_IMM_OP( 195 , srli16.u, 0x00000000, 0x00000000, 3 , 780); 
TEST_IMM_OP( 196 , srli16.u, 0x057f2000, 0x2bf9ffff, 3 , 784); 
TEST_IMM_OP( 197 , srli16.u, 0x00800000, 0xffff0000, 9 , 788); 
TEST_IMM_OP( 198 , srli16.u, 0x00000100, 0x00008000, 7 , 792); 
TEST_IMM_OP( 199 , srli16.u, 0x00010020, 0x041dffff, 11 , 796); 

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
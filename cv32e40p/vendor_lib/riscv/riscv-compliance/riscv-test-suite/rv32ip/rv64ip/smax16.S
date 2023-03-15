# See LICENSE for license details.
#*****************************************************************************
# smax16.S
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

TEST_RR_OP( 2 , smax16, 0x0000ffff, 0x00008000, 0x9613ffff, 8); 
TEST_RR_OP( 3 , smax16, 0xffffffff, 0xffffffff, 0xffffd05c, 12); 
TEST_RR_OP( 4 , smax16, 0x0000ffff, 0x8000ffff, 0x00008000, 16); 
TEST_RR_OP( 5 , smax16, 0x00000000, 0x80008000, 0x00000000, 20); 
TEST_RR_OP( 6 , smax16, 0x85aa031c, 0x85aa8000, 0x8000031c, 24); 
TEST_RR_OP( 7 , smax16, 0x000051bd, 0x00000000, 0x000051bd, 28); 
TEST_RR_OP( 8 , smax16, 0x0000ffff, 0x0000ffff, 0xc088ffff, 32); 
TEST_RR_OP( 9 , smax16, 0xc851ffff, 0x8000ffff, 0xc851ffff, 36); 
TEST_RR_OP( 10 , smax16, 0x72deffff, 0x00008000, 0x72deffff, 40); 
TEST_RR_OP( 11 , smax16, 0xffffffff, 0xffff8000, 0x8000ffff, 44); 
TEST_RR_OP( 12 , smax16, 0x0000ffff, 0x0000ffff, 0x8000ffff, 48); 
TEST_RR_OP( 13 , smax16, 0xffff0000, 0x92ca0000, 0xffffffff, 52); 
TEST_RR_OP( 14 , smax16, 0x00000000, 0x00000000, 0x00000000, 56); 
TEST_RR_OP( 15 , smax16, 0x0000d863, 0xffff8000, 0x0000d863, 60); 
TEST_RR_OP( 16 , smax16, 0x00002251, 0x00000000, 0x80002251, 64); 
TEST_RR_OP( 17 , smax16, 0xffff0dfb, 0xffff8000, 0xffff0dfb, 68); 
TEST_RR_OP( 18 , smax16, 0x264682ac, 0x26468000, 0x800082ac, 72); 
TEST_RR_OP( 19 , smax16, 0x4c770000, 0x4c770000, 0x342a84b0, 76); 
TEST_RR_OP( 20 , smax16, 0x00004c44, 0x00008000, 0xffff4c44, 80); 
TEST_RR_OP( 21 , smax16, 0x0000ffff, 0x0000ffff, 0xffff8000, 84); 
TEST_RR_OP( 22 , smax16, 0x0000ffff, 0x0000ffff, 0x80008741, 88); 
TEST_RR_OP( 23 , smax16, 0x80000000, 0x800098c9, 0x80000000, 92); 
TEST_RR_OP( 24 , smax16, 0xffff0000, 0x80000000, 0xffff0000, 96); 
TEST_RR_OP( 25 , smax16, 0x00000000, 0x0000ffff, 0x80000000, 100); 
TEST_RR_OP( 26 , smax16, 0xffff0000, 0xffffffff, 0x80000000, 104); 
TEST_RR_OP( 27 , smax16, 0x00008000, 0x00008000, 0xffff8000, 108); 
TEST_RR_OP( 28 , smax16, 0x00000000, 0x80000000, 0x0000ffff, 112); 
TEST_RR_OP( 29 , smax16, 0x0000426f, 0x0000426f, 0xffff8000, 116); 
TEST_RR_OP( 30 , smax16, 0xf914c90f, 0xf914c90f, 0x8000988a, 120); 
TEST_RR_OP( 31 , smax16, 0xffff5683, 0x80005683, 0xffffffff, 124); 
TEST_RR_OP( 32 , smax16, 0x0000ffff, 0x0000ffff, 0x8000ffff, 128); 
TEST_RR_OP( 33 , smax16, 0x5885095d, 0x5885f6cd, 0x5819095d, 132); 
TEST_RR_OP( 34 , smax16, 0xffff0000, 0xffff8000, 0xffff0000, 136); 
TEST_RR_OP( 35 , smax16, 0x0000ffff, 0x8000ffff, 0x00008000, 140); 
TEST_RR_OP( 36 , smax16, 0x24e9ffff, 0x24e9ffff, 0x8000ffff, 144); 
TEST_RR_OP( 37 , smax16, 0x95bc0000, 0x80008000, 0x95bc0000, 148); 
TEST_RR_OP( 38 , smax16, 0xffff77e9, 0x800077e9, 0xffff8000, 152); 
TEST_RR_OP( 39 , smax16, 0x5bd38000, 0x5bd38000, 0xffff8000, 156); 
TEST_RR_OP( 40 , smax16, 0x00000000, 0x00008c07, 0x80000000, 160); 
TEST_RR_OP( 41 , smax16, 0x6f0f1ad0, 0xa7db8000, 0x6f0f1ad0, 164); 
TEST_RR_OP( 42 , smax16, 0x00000000, 0x00000000, 0x80000000, 168); 
TEST_RR_OP( 43 , smax16, 0xffff134b, 0xffff134b, 0x80000000, 172); 
TEST_RR_OP( 44 , smax16, 0x000061c7, 0xffff0000, 0x000061c7, 176); 
TEST_RR_OP( 45 , smax16, 0x2f1ba13a, 0xffffa13a, 0x2f1b8000, 180); 
TEST_RR_OP( 46 , smax16, 0xffffffff, 0x8000c8a2, 0xffffffff, 184); 
TEST_RR_OP( 47 , smax16, 0x73c8ffff, 0x0000ffff, 0x73c88000, 188); 
TEST_RR_OP( 48 , smax16, 0x00000000, 0xffffffff, 0x00000000, 192); 
TEST_RR_OP( 49 , smax16, 0xffffffff, 0xffff8000, 0xffffffff, 196); 
TEST_RR_OP( 50 , smax16, 0x1234ffff, 0x8000ffff, 0x1234c43b, 200); 
TEST_RR_OP( 51 , smax16, 0xffff2112, 0xffff2112, 0xffff8000, 204); 
TEST_RR_OP( 52 , smax16, 0xffff7b26, 0x97537b26, 0xffff1f76, 208); 
TEST_RR_OP( 53 , smax16, 0x0000ffff, 0x0000ffff, 0xffff8000, 212); 
TEST_RR_OP( 54 , smax16, 0x80008000, 0x80008000, 0x80008000, 216); 
TEST_RR_OP( 55 , smax16, 0x12dd0000, 0x12dd0000, 0x8000ffff, 220); 
TEST_RR_OP( 56 , smax16, 0x00000000, 0x00008000, 0x80000000, 224); 
TEST_RR_OP( 57 , smax16, 0x00000000, 0x00000000, 0x00000000, 228); 
TEST_RR_OP( 58 , smax16, 0xffff0000, 0xffff8000, 0xecb70000, 232); 
TEST_RR_OP( 59 , smax16, 0x0000704f, 0x0000704f, 0x000033bd, 236); 
TEST_RR_OP( 60 , smax16, 0x00000000, 0x80008000, 0x00000000, 240); 
TEST_RR_OP( 61 , smax16, 0x00000000, 0xffffffff, 0x00000000, 244); 
TEST_RR_OP( 62 , smax16, 0x00003002, 0xffff3002, 0x0000ffff, 248); 
TEST_RR_OP( 63 , smax16, 0xffff6c90, 0xffff8000, 0x80006c90, 252); 
TEST_RR_OP( 64 , smax16, 0x0f58ffff, 0x0000ffff, 0x0f58c221, 256); 
TEST_RR_OP( 65 , smax16, 0x412f30c9, 0x00008000, 0x412f30c9, 260); 
TEST_RR_OP( 66 , smax16, 0x8000ffff, 0x80008000, 0x8000ffff, 264); 
TEST_RR_OP( 67 , smax16, 0xffffffff, 0xffff9320, 0xa9e3ffff, 268); 
TEST_RR_OP( 68 , smax16, 0x593b0000, 0xfe7f0000, 0x593b8000, 272); 
TEST_RR_OP( 69 , smax16, 0x80001fc5, 0x80001fc5, 0x80008000, 276); 
TEST_RR_OP( 70 , smax16, 0x00002b5c, 0xffff2b5c, 0x00008000, 280); 
TEST_RR_OP( 71 , smax16, 0xffffffff, 0xdabbffff, 0xffffffff, 284); 
TEST_RR_OP( 72 , smax16, 0x8000ffff, 0x80008000, 0x8000ffff, 288); 
TEST_RR_OP( 73 , smax16, 0x000056f3, 0xaca656f3, 0x0000ffff, 292); 
TEST_RR_OP( 74 , smax16, 0x8000cb2b, 0x8000c8ff, 0x8000cb2b, 296); 
TEST_RR_OP( 75 , smax16, 0x62ec41a9, 0x62ec41a9, 0xe628ffff, 300); 
TEST_RR_OP( 76 , smax16, 0xffff0000, 0xffff0000, 0x80000000, 304); 
TEST_RR_OP( 77 , smax16, 0xfffff144, 0x8000b247, 0xfffff144, 308); 
TEST_RR_OP( 78 , smax16, 0x71390000, 0x7139ffff, 0xffff0000, 312); 
TEST_RR_OP( 79 , smax16, 0x23a6ffff, 0x8000ffff, 0x23a6ffff, 316); 
TEST_RR_OP( 80 , smax16, 0xffff0000, 0xffff0000, 0x80000000, 320); 
TEST_RR_OP( 81 , smax16, 0x5c6d27e8, 0x00009ae8, 0x5c6d27e8, 324); 
TEST_RR_OP( 82 , smax16, 0x5f476aec, 0x8000ffff, 0x5f476aec, 328); 
TEST_RR_OP( 83 , smax16, 0x5f986a53, 0x5f986a53, 0x000048f0, 332); 
TEST_RR_OP( 84 , smax16, 0xffff0000, 0xffff8000, 0x80000000, 336); 
TEST_RR_OP( 85 , smax16, 0x54feb84c, 0x0000a8c0, 0x54feb84c, 340); 
TEST_RR_OP( 86 , smax16, 0xffff8000, 0x80008000, 0xffff8000, 344); 
TEST_RR_OP( 87 , smax16, 0xffff0000, 0xffff0000, 0xffffffff, 348); 
TEST_RR_OP( 88 , smax16, 0x80000000, 0x80000000, 0x80008000, 352); 
TEST_RR_OP( 89 , smax16, 0x0000ffff, 0x0000ffff, 0x8000ffff, 356); 
TEST_RR_OP( 90 , smax16, 0x00008000, 0xffff8000, 0x00008000, 360); 
TEST_RR_OP( 91 , smax16, 0x1e830000, 0xffffffff, 0x1e830000, 364); 
TEST_RR_OP( 92 , smax16, 0x00008000, 0x00008000, 0xffff8000, 368); 
TEST_RR_OP( 93 , smax16, 0x0000ffff, 0x00008000, 0x8000ffff, 372); 
TEST_RR_OP( 94 , smax16, 0x98930000, 0x98938000, 0x80000000, 376); 
TEST_RR_OP( 95 , smax16, 0x0000ffff, 0xe8eaffff, 0x00008000, 380); 
TEST_RR_OP( 96 , smax16, 0x45960000, 0xffff8000, 0x45960000, 384); 
TEST_RR_OP( 97 , smax16, 0x00000000, 0x00000000, 0xffff8000, 388); 
TEST_RR_OP( 98 , smax16, 0x00000372, 0xdda60000, 0x00000372, 392); 
TEST_RR_OP( 99 , smax16, 0x4b051493, 0x4b051493, 0xffff0000, 396); 
TEST_RR_OP( 100 , smax16, 0xffff0000, 0xaaddc50f, 0xffff0000, 400); 
TEST_RR_OP( 101 , smax16, 0x00007640, 0x000090dc, 0x00007640, 404); 
TEST_RR_OP( 102 , smax16, 0xffffffff, 0xffffffff, 0xffffffff, 408); 
TEST_RR_OP( 103 , smax16, 0x00000000, 0x00008b32, 0x80000000, 412); 
TEST_RR_OP( 104 , smax16, 0x00000000, 0xa9800000, 0x0000f77e, 416); 
TEST_RR_OP( 105 , smax16, 0xffff0000, 0xffff8000, 0xffff0000, 420); 
TEST_RR_OP( 106 , smax16, 0x1634ffff, 0x00008000, 0x1634ffff, 424); 
TEST_RR_OP( 107 , smax16, 0xffff0000, 0xffff0000, 0xffff0000, 428); 
TEST_RR_OP( 108 , smax16, 0x00000000, 0x0000ffff, 0x00000000, 432); 
TEST_RR_OP( 109 , smax16, 0x64028000, 0xffff8000, 0x64028000, 436); 
TEST_RR_OP( 110 , smax16, 0x2a6d2e79, 0xdb7f0000, 0x2a6d2e79, 440); 
TEST_RR_OP( 111 , smax16, 0x0000ffff, 0xffffffff, 0x00008000, 444); 
TEST_RR_OP( 112 , smax16, 0x80002867, 0x80002867, 0x8000cacf, 448); 
TEST_RR_OP( 113 , smax16, 0x00008000, 0x00008000, 0x00008000, 452); 
TEST_RR_OP( 114 , smax16, 0x00000000, 0x00000000, 0xc7e1ffff, 456); 
TEST_RR_OP( 115 , smax16, 0x000015f4, 0x00008000, 0x000015f4, 460); 
TEST_RR_OP( 116 , smax16, 0x21cb0000, 0x21cb0000, 0x00008000, 464); 
TEST_RR_OP( 117 , smax16, 0x6fbec6f2, 0xa69f8000, 0x6fbec6f2, 468); 
TEST_RR_OP( 118 , smax16, 0x86c00000, 0x8000ffff, 0x86c00000, 472); 
TEST_RR_OP( 119 , smax16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 476); 
TEST_RR_OP( 120 , smax16, 0x80000000, 0x80008000, 0x80000000, 480); 
TEST_RR_OP( 121 , smax16, 0x69d5ffff, 0x69d5ffff, 0xffffffff, 484); 
TEST_RR_OP( 122 , smax16, 0xffff0000, 0xffff0000, 0x80000000, 488); 
TEST_RR_OP( 123 , smax16, 0x4eddffff, 0x4edd8000, 0x8000ffff, 492); 
TEST_RR_OP( 124 , smax16, 0x00008000, 0x00008000, 0x80008000, 496); 
TEST_RR_OP( 125 , smax16, 0x0000dd7f, 0xffff8000, 0x0000dd7f, 500); 
TEST_RR_OP( 126 , smax16, 0xffff0000, 0xffffe1b1, 0x80000000, 504); 
TEST_RR_OP( 127 , smax16, 0x56a7ffff, 0x224affff, 0x56a7ffff, 508); 
TEST_RR_OP( 128 , smax16, 0xfb040000, 0xfb040000, 0x80008000, 512); 
TEST_RR_OP( 129 , smax16, 0xffff4c2d, 0xffff4c2d, 0x8000ffff, 516); 
TEST_RR_OP( 130 , smax16, 0x0000be04, 0x00008000, 0x0000be04, 520); 
TEST_RR_OP( 131 , smax16, 0xff740000, 0xb8f1ffff, 0xff740000, 524); 
TEST_RR_OP( 132 , smax16, 0x0000ffff, 0x0000ffff, 0xe7778000, 528); 
TEST_RR_OP( 133 , smax16, 0x00000000, 0x00000000, 0xffffffff, 532); 
TEST_RR_OP( 134 , smax16, 0x00004bda, 0x00004bda, 0x00002129, 536); 
TEST_RR_OP( 135 , smax16, 0xffffb12b, 0xffff8000, 0xffffb12b, 540); 
TEST_RR_OP( 136 , smax16, 0x80000000, 0x80000000, 0x8000ffff, 544); 
TEST_RR_OP( 137 , smax16, 0x0000ffff, 0x8000ffff, 0x00008f63, 548); 
TEST_RR_OP( 138 , smax16, 0x0000ffff, 0xffff8000, 0x0000ffff, 552); 
TEST_RR_OP( 139 , smax16, 0xffff0000, 0xa879ffff, 0xffff0000, 556); 
TEST_RR_OP( 140 , smax16, 0x0ce24678, 0x0ce28000, 0x00004678, 560); 
TEST_RR_OP( 141 , smax16, 0xffff4b13, 0xffff811d, 0x80004b13, 564); 
TEST_RR_OP( 142 , smax16, 0xffffffff, 0x8000ffff, 0xffffffff, 568); 
TEST_RR_OP( 143 , smax16, 0x6e1f0000, 0x80000000, 0x6e1f8000, 572); 
TEST_RR_OP( 144 , smax16, 0x00000000, 0x00000000, 0xffffad20, 576); 
TEST_RR_OP( 145 , smax16, 0x50be155b, 0x50be155b, 0x80008000, 580); 
TEST_RR_OP( 146 , smax16, 0x2a200662, 0x2a208000, 0xffff0662, 584); 
TEST_RR_OP( 147 , smax16, 0xffff8000, 0xffff8000, 0xffff8000, 588); 
TEST_RR_OP( 148 , smax16, 0xffff0000, 0xffff0000, 0xbce90000, 592); 
TEST_RR_OP( 149 , smax16, 0x8f528000, 0x8f528000, 0x80008000, 596); 
TEST_RR_OP( 150 , smax16, 0x00000000, 0x00000000, 0xffffbc4b, 600); 
TEST_RR_OP( 151 , smax16, 0xffff0000, 0xc3ba8000, 0xffff0000, 604); 
TEST_RR_OP( 152 , smax16, 0xffffffff, 0x8000ffff, 0xffffffff, 608); 
TEST_RR_OP( 153 , smax16, 0x00000000, 0x00000000, 0x8000ffff, 612); 
TEST_RR_OP( 154 , smax16, 0x80008000, 0x80008000, 0x80008000, 616); 
TEST_RR_OP( 155 , smax16, 0xffff5e1d, 0x80005e1d, 0xffffffff, 620); 
TEST_RR_OP( 156 , smax16, 0xc2d27e70, 0x80007e70, 0xc2d20000, 624); 
TEST_RR_OP( 157 , smax16, 0xffff0000, 0x80000000, 0xffff0000, 628); 
TEST_RR_OP( 158 , smax16, 0x80004cb0, 0x80004cb0, 0x8000e856, 632); 
TEST_RR_OP( 159 , smax16, 0x00000000, 0xb43f0000, 0x0000ffff, 636); 
TEST_RR_OP( 160 , smax16, 0x0000e124, 0x0000e124, 0x80008000, 640); 
TEST_RR_OP( 161 , smax16, 0xffff0000, 0x80000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , smax16, 0x1d81ffff, 0x1d818000, 0x8000ffff, 648); 
TEST_RR_OP( 163 , smax16, 0xffff0000, 0xffff0000, 0xffff8000, 652); 
TEST_RR_OP( 164 , smax16, 0xffff0000, 0xffff8000, 0x80000000, 656); 
TEST_RR_OP( 165 , smax16, 0xfffffc7b, 0xffff8000, 0xb79dfc7b, 660); 
TEST_RR_OP( 166 , smax16, 0x0000d76b, 0xffff8000, 0x0000d76b, 664); 
TEST_RR_OP( 167 , smax16, 0x0000ffff, 0x00008000, 0x0000ffff, 668); 
TEST_RR_OP( 168 , smax16, 0x642b0000, 0x642b0000, 0x0000ffff, 672); 
TEST_RR_OP( 169 , smax16, 0x8000ffff, 0x8000ffff, 0x8000ffff, 676); 
TEST_RR_OP( 170 , smax16, 0x55ec54e1, 0x55ec54e1, 0x00008000, 680); 
TEST_RR_OP( 171 , smax16, 0x00000000, 0xffff0000, 0x0000ffff, 684); 
TEST_RR_OP( 172 , smax16, 0x65b3fd50, 0x4dc3fd50, 0x65b38000, 688); 
TEST_RR_OP( 173 , smax16, 0x737e558c, 0x737e8000, 0x8000558c, 692); 
TEST_RR_OP( 174 , smax16, 0x5c3f139f, 0x5c3f0000, 0x0000139f, 696); 
TEST_RR_OP( 175 , smax16, 0xffff0000, 0xffff0000, 0xffffffff, 700); 
TEST_RR_OP( 176 , smax16, 0xffff2947, 0xffff8000, 0x80002947, 704); 
TEST_RR_OP( 177 , smax16, 0xffff0ab0, 0xffff0ab0, 0xffffffff, 708); 
TEST_RR_OP( 178 , smax16, 0x36d40000, 0x36d48000, 0x80000000, 712); 
TEST_RR_OP( 179 , smax16, 0x00508000, 0x00508000, 0xffff8000, 716); 
TEST_RR_OP( 180 , smax16, 0x5e92ffff, 0x5e928000, 0x0000ffff, 720); 
TEST_RR_OP( 181 , smax16, 0x00001506, 0x8703ffff, 0x00001506, 724); 
TEST_RR_OP( 182 , smax16, 0x00000000, 0x00000000, 0x8000ffff, 728); 
TEST_RR_OP( 183 , smax16, 0x00008000, 0x00008000, 0xffff8000, 732); 
TEST_RR_OP( 184 , smax16, 0x00008000, 0x00008000, 0x90658000, 736); 
TEST_RR_OP( 185 , smax16, 0x5b3ec482, 0x8000c482, 0x5b3e9569, 740); 
TEST_RR_OP( 186 , smax16, 0x00000000, 0x00009503, 0x85a20000, 744); 
TEST_RR_OP( 187 , smax16, 0x0ab7ffff, 0x80008000, 0x0ab7ffff, 748); 
TEST_RR_OP( 188 , smax16, 0xd21fffff, 0xd21fffff, 0x80008000, 752); 
TEST_RR_OP( 189 , smax16, 0xbde3ffff, 0xbde3c5ab, 0x92e7ffff, 756); 
TEST_RR_OP( 190 , smax16, 0x20b2ffff, 0xac438bb5, 0x20b2ffff, 760); 
TEST_RR_OP( 191 , smax16, 0xffff0000, 0x817d9075, 0xffff0000, 764); 
TEST_RR_OP( 192 , smax16, 0x00008000, 0xffff8000, 0x00008000, 768); 
TEST_RR_OP( 193 , smax16, 0x7fa10000, 0x8000ffff, 0x7fa10000, 772); 
TEST_RR_OP( 194 , smax16, 0x87e7db44, 0x87e78000, 0x8000db44, 776); 
TEST_RR_OP( 195 , smax16, 0xffff4a55, 0x8000ffff, 0xffff4a55, 780); 
TEST_RR_OP( 196 , smax16, 0x00008000, 0x00008000, 0x80008000, 784); 
TEST_RR_OP( 197 , smax16, 0xffff7f98, 0xf1687f98, 0xffff8000, 788); 
TEST_RR_OP( 198 , smax16, 0xa6e90000, 0x8000ffff, 0xa6e90000, 792); 
TEST_RR_OP( 199 , smax16, 0x0000ffff, 0x00008000, 0xffffffff, 796); 

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
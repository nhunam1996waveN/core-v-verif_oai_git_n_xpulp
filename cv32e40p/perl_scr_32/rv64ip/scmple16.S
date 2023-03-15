# See LICENSE for license details.
#*****************************************************************************
# scmple16.S
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

TEST_RR_OP( 2 , scmple16, 0x00000000, 0x45720000, 0x0000ffff, 8); 
TEST_RR_OP( 3 , scmple16, 0xffff0000, 0xf2604f1a, 0x4f40dd7f, 12); 
TEST_RR_OP( 4 , scmple16, 0xffff0000, 0x963b0000, 0xffffffff, 16); 
TEST_RR_OP( 5 , scmple16, 0x00000000, 0xffff6685, 0x80008000, 20); 
TEST_RR_OP( 6 , scmple16, 0x0000ffff, 0xb55acfed, 0x80000000, 24); 
TEST_RR_OP( 7 , scmple16, 0x00000000, 0x00000000, 0x80008000, 28); 
TEST_RR_OP( 8 , scmple16, 0x0000ffff, 0x0000f3e6, 0x8000ffff, 32); 
TEST_RR_OP( 9 , scmple16, 0xffffffff, 0xc4c5ffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , scmple16, 0xffff0000, 0x8000059a, 0x00008000, 40); 
TEST_RR_OP( 11 , scmple16, 0xffffffff, 0x800081b8, 0xffff0000, 44); 
TEST_RR_OP( 12 , scmple16, 0xffffffff, 0xe7958000, 0x00000000, 48); 
TEST_RR_OP( 13 , scmple16, 0xffffffff, 0xffff0f32, 0x0cee7ff0, 52); 
TEST_RR_OP( 14 , scmple16, 0xffffffff, 0x8000ffff, 0xffff0000, 56); 
TEST_RR_OP( 15 , scmple16, 0xffff0000, 0x80006285, 0x00000000, 60); 
TEST_RR_OP( 16 , scmple16, 0xffffffff, 0x80008000, 0x0000ffff, 64); 
TEST_RR_OP( 17 , scmple16, 0xffff0000, 0x0000ffff, 0x41f0dd35, 68); 
TEST_RR_OP( 18 , scmple16, 0xffffffff, 0xffff9955, 0xffff4d41, 72); 
TEST_RR_OP( 19 , scmple16, 0x0000ffff, 0x0c948000, 0xffffffff, 76); 
TEST_RR_OP( 20 , scmple16, 0x00000000, 0xffffffff, 0x80008000, 80); 
TEST_RR_OP( 21 , scmple16, 0xffffffff, 0xffff8000, 0x00000000, 84); 
TEST_RR_OP( 22 , scmple16, 0x0000ffff, 0xffff8000, 0x80008000, 88); 
TEST_RR_OP( 23 , scmple16, 0xffffffff, 0x8000ffff, 0xffff0000, 92); 
TEST_RR_OP( 24 , scmple16, 0xffffffff, 0x00008000, 0x00008000, 96); 
TEST_RR_OP( 25 , scmple16, 0x0000ffff, 0x70cd8000, 0x8000cbf0, 100); 
TEST_RR_OP( 26 , scmple16, 0x0000ffff, 0x0000ffff, 0x80000000, 104); 
TEST_RR_OP( 27 , scmple16, 0x00000000, 0xffff0000, 0x8d98ffff, 108); 
TEST_RR_OP( 28 , scmple16, 0xffffffff, 0xe5d18000, 0x78938000, 112); 
TEST_RR_OP( 29 , scmple16, 0xffffffff, 0x80000000, 0x00004d8b, 116); 
TEST_RR_OP( 30 , scmple16, 0xffff0000, 0x80000000, 0xffffffff, 120); 
TEST_RR_OP( 31 , scmple16, 0xffff0000, 0x0000ffff, 0x709a8000, 124); 
TEST_RR_OP( 32 , scmple16, 0xffff0000, 0x8000ffff, 0xffffe683, 128); 
TEST_RR_OP( 33 , scmple16, 0x00000000, 0xffff0000, 0x80008000, 132); 
TEST_RR_OP( 34 , scmple16, 0x0000ffff, 0x1184ffff, 0xffff0000, 136); 
TEST_RR_OP( 35 , scmple16, 0xffff0000, 0x00000000, 0x13598000, 140); 
TEST_RR_OP( 36 , scmple16, 0xffffffff, 0x8000ffff, 0xffff0000, 144); 
TEST_RR_OP( 37 , scmple16, 0x00000000, 0xd5be4675, 0x80008000, 148); 
TEST_RR_OP( 38 , scmple16, 0x0000ffff, 0x327d8000, 0xffff8000, 152); 
TEST_RR_OP( 39 , scmple16, 0xffffffff, 0x0000b7f3, 0x00000e87, 156); 
TEST_RR_OP( 40 , scmple16, 0xffff0000, 0x80000000, 0x00008000, 160); 
TEST_RR_OP( 41 , scmple16, 0xffff0000, 0xe626ffff, 0xffffbb71, 164); 
TEST_RR_OP( 42 , scmple16, 0xffffffff, 0xf7bb0000, 0xffff60b4, 168); 
TEST_RR_OP( 43 , scmple16, 0x0000ffff, 0x00008000, 0xdc66ffff, 172); 
TEST_RR_OP( 44 , scmple16, 0x0000ffff, 0x0000ffff, 0x85c3ffff, 176); 
TEST_RR_OP( 45 , scmple16, 0xffffffff, 0x8000dce8, 0x00001791, 180); 
TEST_RR_OP( 46 , scmple16, 0xffff0000, 0x80006d3e, 0x8000ffff, 184); 
TEST_RR_OP( 47 , scmple16, 0xffff0000, 0xffff0000, 0xffffffff, 188); 
TEST_RR_OP( 48 , scmple16, 0x0000ffff, 0xa70eff54, 0x80000000, 192); 
TEST_RR_OP( 49 , scmple16, 0xffff0000, 0x8000ffff, 0x8000fdd0, 196); 
TEST_RR_OP( 50 , scmple16, 0x0000ffff, 0x8b6e8000, 0x80008000, 200); 
TEST_RR_OP( 51 , scmple16, 0xffff0000, 0xffff0000, 0xffffffff, 204); 
TEST_RR_OP( 52 , scmple16, 0xffff0000, 0x80000000, 0x0000ffff, 208); 
TEST_RR_OP( 53 , scmple16, 0xffff0000, 0x00000000, 0x00008000, 212); 
TEST_RR_OP( 54 , scmple16, 0xffffffff, 0x80008000, 0x80008000, 216); 
TEST_RR_OP( 55 , scmple16, 0x00000000, 0x0000ffff, 0xffff8000, 220); 
TEST_RR_OP( 56 , scmple16, 0x00000000, 0x348d1a38, 0x8000c733, 224); 
TEST_RR_OP( 57 , scmple16, 0xffff0000, 0x80003b0b, 0x8000ffff, 228); 
TEST_RR_OP( 58 , scmple16, 0xffff0000, 0x80004d2b, 0x00000000, 232); 
TEST_RR_OP( 59 , scmple16, 0xffff0000, 0xcc64ffff, 0x00008000, 236); 
TEST_RR_OP( 60 , scmple16, 0xffffffff, 0x00008000, 0x0000ffff, 240); 
TEST_RR_OP( 61 , scmple16, 0x0000ffff, 0x00008000, 0x91808000, 244); 
TEST_RR_OP( 62 , scmple16, 0xffff0000, 0x00000000, 0x41948000, 248); 
TEST_RR_OP( 63 , scmple16, 0x00000000, 0x0000ffff, 0xffff8000, 252); 
TEST_RR_OP( 64 , scmple16, 0xffff0000, 0x80007528, 0x83f9ffff, 256); 
TEST_RR_OP( 65 , scmple16, 0x0000ffff, 0xee590000, 0x8000102e, 260); 
TEST_RR_OP( 66 , scmple16, 0xffffffff, 0x80000000, 0x80000000, 264); 
TEST_RR_OP( 67 , scmple16, 0x0000ffff, 0x0000ffff, 0x8000ffff, 268); 
TEST_RR_OP( 68 , scmple16, 0x00000000, 0x3dfe0000, 0xffff8e67, 272); 
TEST_RR_OP( 69 , scmple16, 0x0000ffff, 0xffff0000, 0x80000000, 276); 
TEST_RR_OP( 70 , scmple16, 0x0000ffff, 0x00008000, 0xffffffff, 280); 
TEST_RR_OP( 71 , scmple16, 0xffffffff, 0xffffb50f, 0x00000000, 284); 
TEST_RR_OP( 72 , scmple16, 0xffffffff, 0xffffffff, 0x00000000, 288); 
TEST_RR_OP( 73 , scmple16, 0xffff0000, 0xffff48c5, 0xffff8000, 292); 
TEST_RR_OP( 74 , scmple16, 0x0000ffff, 0xffffc3a7, 0xec130000, 296); 
TEST_RR_OP( 75 , scmple16, 0x0000ffff, 0x31b00000, 0x00006a04, 300); 
TEST_RR_OP( 76 , scmple16, 0xffff0000, 0x00000000, 0x0000ffff, 304); 
TEST_RR_OP( 77 , scmple16, 0x00000000, 0x0000ffff, 0xffff8aa6, 308); 
TEST_RR_OP( 78 , scmple16, 0x0000ffff, 0x51a29a09, 0xffff141e, 312); 
TEST_RR_OP( 79 , scmple16, 0xffff0000, 0xb0c1371c, 0xffff8000, 316); 
TEST_RR_OP( 80 , scmple16, 0xffffffff, 0x80009ae8, 0xffff0000, 320); 
TEST_RR_OP( 81 , scmple16, 0xffff0000, 0x0000ffff, 0x00008000, 324); 
TEST_RR_OP( 82 , scmple16, 0xffffffff, 0x8000f80f, 0xffff0000, 328); 
TEST_RR_OP( 83 , scmple16, 0xffffffff, 0xffff8000, 0x43feffff, 332); 
TEST_RR_OP( 84 , scmple16, 0xffff0000, 0x80009a28, 0xffff8000, 336); 
TEST_RR_OP( 85 , scmple16, 0xffffffff, 0x8000ffff, 0x8000ffff, 340); 
TEST_RR_OP( 86 , scmple16, 0x00000000, 0x0000ffff, 0x80008000, 344); 
TEST_RR_OP( 87 , scmple16, 0xffffffff, 0x80008000, 0x0000ffff, 348); 
TEST_RR_OP( 88 , scmple16, 0xffffffff, 0x80008000, 0x80008000, 352); 
TEST_RR_OP( 89 , scmple16, 0x00000000, 0x6051abe6, 0xe6268000, 356); 
TEST_RR_OP( 90 , scmple16, 0xffffffff, 0x80008000, 0x75df8000, 360); 
TEST_RR_OP( 91 , scmple16, 0x0000ffff, 0xffffa118, 0xeeb22db8, 364); 
TEST_RR_OP( 92 , scmple16, 0x0000ffff, 0x5bc00000, 0x80000000, 368); 
TEST_RR_OP( 93 , scmple16, 0xffff0000, 0xffffffff, 0xffff8000, 372); 
TEST_RR_OP( 94 , scmple16, 0xffff0000, 0x8000ffff, 0x0000d7da, 376); 
TEST_RR_OP( 95 , scmple16, 0xffffffff, 0xbc02ffff, 0xffff0000, 380); 
TEST_RR_OP( 96 , scmple16, 0x00000000, 0x33f9dcc7, 0x0000c9ea, 384); 
TEST_RR_OP( 97 , scmple16, 0xffffffff, 0x00008000, 0x00000000, 388); 
TEST_RR_OP( 98 , scmple16, 0xffffffff, 0x8000ffff, 0xf02d0000, 392); 
TEST_RR_OP( 99 , scmple16, 0xffffffff, 0xffffb842, 0xfffff218, 396); 
TEST_RR_OP( 100 , scmple16, 0xffffffff, 0x8000b979, 0x80000000, 400); 
TEST_RR_OP( 101 , scmple16, 0xffff0000, 0x80003f89, 0x80008000, 404); 
TEST_RR_OP( 102 , scmple16, 0x0000ffff, 0x73e5e300, 0x00000000, 408); 
TEST_RR_OP( 103 , scmple16, 0x0000ffff, 0xffffffff, 0x80000000, 412); 
TEST_RR_OP( 104 , scmple16, 0xffffffff, 0xffff8000, 0x00008000, 416); 
TEST_RR_OP( 105 , scmple16, 0x00000000, 0x9156ffff, 0x8000f8c9, 420); 
TEST_RR_OP( 106 , scmple16, 0xffff0000, 0xffff0000, 0xffffffff, 424); 
TEST_RR_OP( 107 , scmple16, 0xffff0000, 0x800007a4, 0x00000000, 428); 
TEST_RR_OP( 108 , scmple16, 0x0000ffff, 0x000055d1, 0xffff718b, 432); 
TEST_RR_OP( 109 , scmple16, 0xffffffff, 0xffffb150, 0x0000ffff, 436); 
TEST_RR_OP( 110 , scmple16, 0xffffffff, 0xc0b00000, 0x00000000, 440); 
TEST_RR_OP( 111 , scmple16, 0xffff0000, 0xffffffff, 0x00008a9a, 444); 
TEST_RR_OP( 112 , scmple16, 0xffff0000, 0x80000000, 0x80008000, 448); 
TEST_RR_OP( 113 , scmple16, 0xffffffff, 0x8000ffff, 0x80000000, 452); 
TEST_RR_OP( 114 , scmple16, 0x0000ffff, 0x00008000, 0x97626293, 456); 
TEST_RR_OP( 115 , scmple16, 0x0000ffff, 0x0000ffff, 0x8fb51487, 460); 
TEST_RR_OP( 116 , scmple16, 0xffffffff, 0xffff8000, 0x0000a79f, 464); 
TEST_RR_OP( 117 , scmple16, 0xffff0000, 0xffffffff, 0x00008000, 468); 
TEST_RR_OP( 118 , scmple16, 0xffff0000, 0x800015e2, 0xb023ffff, 472); 
TEST_RR_OP( 119 , scmple16, 0x00000000, 0xffffffff, 0xcb468000, 476); 
TEST_RR_OP( 120 , scmple16, 0xffffffff, 0x0000ffff, 0x56e60000, 480); 
TEST_RR_OP( 121 , scmple16, 0x0000ffff, 0x6713ffff, 0x8000ffff, 484); 
TEST_RR_OP( 122 , scmple16, 0x0000ffff, 0x00008000, 0x80000000, 488); 
TEST_RR_OP( 123 , scmple16, 0xffffffff, 0x80008000, 0x2260ffff, 492); 
TEST_RR_OP( 124 , scmple16, 0xffffffff, 0xffffc3e5, 0xffff544f, 496); 
TEST_RR_OP( 125 , scmple16, 0x0000ffff, 0x00008000, 0x8e60ffff, 500); 
TEST_RR_OP( 126 , scmple16, 0xffffffff, 0x8000ffff, 0xffff5eb5, 504); 
TEST_RR_OP( 127 , scmple16, 0x0000ffff, 0x00008000, 0x8000b87d, 508); 
TEST_RR_OP( 128 , scmple16, 0xffffffff, 0xffff8000, 0xffffd219, 512); 
TEST_RR_OP( 129 , scmple16, 0xffffffff, 0xffff8000, 0x0000ffff, 516); 
TEST_RR_OP( 130 , scmple16, 0xffff0000, 0xc57b0000, 0x00009fa8, 520); 
TEST_RR_OP( 131 , scmple16, 0xffff0000, 0xffff0000, 0x0000cee3, 524); 
TEST_RR_OP( 132 , scmple16, 0xffffffff, 0x80008000, 0x8000ffff, 528); 
TEST_RR_OP( 133 , scmple16, 0xffffffff, 0x8000ffff, 0xffff0000, 532); 
TEST_RR_OP( 134 , scmple16, 0x00000000, 0x00000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , scmple16, 0xffff0000, 0x8000d42a, 0xffff8b69, 540); 
TEST_RR_OP( 136 , scmple16, 0xffff0000, 0x000045b3, 0x0000b149, 544); 
TEST_RR_OP( 137 , scmple16, 0xffffffff, 0x800027a1, 0x80006eeb, 548); 
TEST_RR_OP( 138 , scmple16, 0xffffffff, 0xbefbe842, 0x0000ffff, 552); 
TEST_RR_OP( 139 , scmple16, 0xffff0000, 0x8000ffff, 0x8e1f8000, 556); 
TEST_RR_OP( 140 , scmple16, 0x0000ffff, 0x0000a641, 0xf62dffff, 560); 
TEST_RR_OP( 141 , scmple16, 0xffff0000, 0x80007000, 0xffffffff, 564); 
TEST_RR_OP( 142 , scmple16, 0xffffffff, 0x924b0000, 0xab0a0000, 568); 
TEST_RR_OP( 143 , scmple16, 0xffffffff, 0xffffffff, 0x00006bd4, 572); 
TEST_RR_OP( 144 , scmple16, 0x00000000, 0xffffffff, 0x90d8d804, 576); 
TEST_RR_OP( 145 , scmple16, 0xffffffff, 0x80008000, 0x0000ffff, 580); 
TEST_RR_OP( 146 , scmple16, 0xffffffff, 0x80002a29, 0x00003c6f, 584); 
TEST_RR_OP( 147 , scmple16, 0xffff0000, 0x80000000, 0x80008000, 588); 
TEST_RR_OP( 148 , scmple16, 0x00000000, 0x19af0000, 0x0000ffff, 592); 
TEST_RR_OP( 149 , scmple16, 0x00000000, 0x0000162c, 0x8000ffff, 596); 
TEST_RR_OP( 150 , scmple16, 0x0000ffff, 0x32d18000, 0xffff0000, 600); 
TEST_RR_OP( 151 , scmple16, 0x0000ffff, 0x7c1b8000, 0x80008000, 604); 
TEST_RR_OP( 152 , scmple16, 0xffffffff, 0xb3f4ffff, 0x6ba8ffff, 608); 
TEST_RR_OP( 153 , scmple16, 0xffff0000, 0x00000000, 0x0000ffff, 612); 
TEST_RR_OP( 154 , scmple16, 0x0000ffff, 0x0000e520, 0x80000000, 616); 
TEST_RR_OP( 155 , scmple16, 0x0000ffff, 0x45420000, 0x80000000, 620); 
TEST_RR_OP( 156 , scmple16, 0xffff0000, 0xffff0000, 0xfffff7fa, 624); 
TEST_RR_OP( 157 , scmple16, 0x0000ffff, 0x05228b2a, 0x8000169f, 628); 
TEST_RR_OP( 158 , scmple16, 0xffff0000, 0x80000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , scmple16, 0x0000ffff, 0x87dbc72f, 0x80005d65, 636); 
TEST_RR_OP( 160 , scmple16, 0xffffffff, 0x80008000, 0x00003fd1, 640); 
TEST_RR_OP( 161 , scmple16, 0xffffffff, 0xec668000, 0xffffffff, 644); 
TEST_RR_OP( 162 , scmple16, 0xffff0000, 0x800056fe, 0x00000000, 648); 
TEST_RR_OP( 163 , scmple16, 0xffffffff, 0x8355ffff, 0xceac0000, 652); 
TEST_RR_OP( 164 , scmple16, 0x0000ffff, 0xffff02e8, 0x800016c0, 656); 
TEST_RR_OP( 165 , scmple16, 0xffffffff, 0xffff8000, 0xffff8000, 660); 
TEST_RR_OP( 166 , scmple16, 0xffff0000, 0xffffffff, 0x2cdd8000, 664); 
TEST_RR_OP( 167 , scmple16, 0xffffffff, 0x0000934f, 0x1ad57943, 668); 
TEST_RR_OP( 168 , scmple16, 0x00000000, 0x000025bc, 0x80000000, 672); 
TEST_RR_OP( 169 , scmple16, 0x00000000, 0x58ca52a8, 0x8000ffff, 676); 
TEST_RR_OP( 170 , scmple16, 0x00000000, 0x62f40000, 0x800099fd, 680); 
TEST_RR_OP( 171 , scmple16, 0xffff0000, 0x8000ffff, 0x80008000, 684); 
TEST_RR_OP( 172 , scmple16, 0xffffffff, 0x8000c9e6, 0xe2900000, 688); 
TEST_RR_OP( 173 , scmple16, 0xffffffff, 0x00008000, 0x0000d069, 692); 
TEST_RR_OP( 174 , scmple16, 0xffffffff, 0x80008000, 0xffff2cb7, 696); 
TEST_RR_OP( 175 , scmple16, 0xffff0000, 0x8000b94e, 0x80008e8d, 700); 
TEST_RR_OP( 176 , scmple16, 0xffffffff, 0x8000ffff, 0x800010d9, 704); 
TEST_RR_OP( 177 , scmple16, 0x0000ffff, 0x10288000, 0x00000000, 708); 
TEST_RR_OP( 178 , scmple16, 0xffffffff, 0x00000000, 0x191356fe, 712); 
TEST_RR_OP( 179 , scmple16, 0xffffffff, 0x80008000, 0x80008000, 716); 
TEST_RR_OP( 180 , scmple16, 0x00000000, 0xeaceffff, 0x80008000, 720); 
TEST_RR_OP( 181 , scmple16, 0xffff0000, 0xffff0000, 0x0000a143, 724); 
TEST_RR_OP( 182 , scmple16, 0xffffffff, 0xe5e4a319, 0xf44f0000, 728); 
TEST_RR_OP( 183 , scmple16, 0x0000ffff, 0x0000ffff, 0x8000ffff, 732); 
TEST_RR_OP( 184 , scmple16, 0x0000ffff, 0x00009a96, 0x80000000, 736); 
TEST_RR_OP( 185 , scmple16, 0x0000ffff, 0x00008000, 0xffff2a43, 740); 
TEST_RR_OP( 186 , scmple16, 0xffffffff, 0x89c884e0, 0x03cb4783, 744); 
TEST_RR_OP( 187 , scmple16, 0xffff0000, 0x80000000, 0x0000d275, 748); 
TEST_RR_OP( 188 , scmple16, 0x00000000, 0xffff4072, 0x80008000, 752); 
TEST_RR_OP( 189 , scmple16, 0x00000000, 0x31cbffff, 0xbc938000, 756); 
TEST_RR_OP( 190 , scmple16, 0x00000000, 0x10c50000, 0x00008000, 760); 
TEST_RR_OP( 191 , scmple16, 0xffff0000, 0xfffff10b, 0x0000b13a, 764); 
TEST_RR_OP( 192 , scmple16, 0xffffffff, 0x8000ffff, 0xffff0188, 768); 
TEST_RR_OP( 193 , scmple16, 0x0000ffff, 0xffffcb54, 0xae257129, 772); 
TEST_RR_OP( 194 , scmple16, 0xffffffff, 0xffffffff, 0xffff1ff2, 776); 
TEST_RR_OP( 195 , scmple16, 0xffffffff, 0x00008000, 0x712baa40, 780); 
TEST_RR_OP( 196 , scmple16, 0xffff0000, 0xffff395e, 0x3ef00000, 784); 
TEST_RR_OP( 197 , scmple16, 0x00000000, 0x0000ffff, 0x8000fff8, 788); 
TEST_RR_OP( 198 , scmple16, 0x0000ffff, 0xdc96ffff, 0x80000000, 792); 
TEST_RR_OP( 199 , scmple16, 0xffff0000, 0x8000455c, 0x6ef50000, 796); 

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
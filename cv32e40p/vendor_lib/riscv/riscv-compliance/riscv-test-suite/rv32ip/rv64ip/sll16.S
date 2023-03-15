# See LICENSE for license details.
#*****************************************************************************
# sll16.S
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

TEST_RR_OP( 2 , sll16, 0xffff0000, 0xffff0000, 0x80008000, 8); 
TEST_RR_OP( 3 , sll16, 0xa0000000, 0x08508000, 0x8000e429, 12); 
TEST_RR_OP( 4 , sll16, 0x00000000, 0x0000937e, 0x0000ffff, 16); 
TEST_RR_OP( 5 , sll16, 0x00000000, 0x00008000, 0x3e7effff, 20); 
TEST_RR_OP( 6 , sll16, 0x80000000, 0x80000000, 0x1c608000, 24); 
TEST_RR_OP( 7 , sll16, 0xfff07310, 0xffff9731, 0x92ef1914, 28); 
TEST_RR_OP( 8 , sll16, 0x80000000, 0xffff86f6, 0x0000ffff, 32); 
TEST_RR_OP( 9 , sll16, 0x80000000, 0x76fb0000, 0xffffffff, 36); 
TEST_RR_OP( 10 , sll16, 0x00000000, 0x80000000, 0x8000e5b3, 40); 
TEST_RR_OP( 11 , sll16, 0x0000090a, 0x0000090a, 0x31c00000, 44); 
TEST_RR_OP( 12 , sll16, 0x00000000, 0x00000000, 0xffff9ca0, 48); 
TEST_RR_OP( 13 , sll16, 0xffff8000, 0xffff8000, 0x00000000, 52); 
TEST_RR_OP( 14 , sll16, 0x00000000, 0x00000000, 0xcd05ffff, 56); 
TEST_RR_OP( 15 , sll16, 0xffff0000, 0xffff0000, 0x80000000, 60); 
TEST_RR_OP( 16 , sll16, 0x8000ffff, 0x8000ffff, 0x00008000, 64); 
TEST_RR_OP( 17 , sll16, 0x8000ffff, 0x8000ffff, 0x1a580000, 68); 
TEST_RR_OP( 18 , sll16, 0xb96da2d5, 0xb96da2d5, 0x2f1f8000, 72); 
TEST_RR_OP( 19 , sll16, 0x00008000, 0x8000ffff, 0x8000ffff, 76); 
TEST_RR_OP( 20 , sll16, 0xffff524a, 0xffff524a, 0x00000000, 80); 
TEST_RR_OP( 21 , sll16, 0x0000ff00, 0x8000ffff, 0xffff7608, 84); 
TEST_RR_OP( 22 , sll16, 0x8000b3f2, 0x8000b3f2, 0xbc640000, 88); 
TEST_RR_OP( 23 , sll16, 0x80000000, 0xdd3d8000, 0xf56cffff, 92); 
TEST_RR_OP( 24 , sll16, 0x9298ffff, 0x9298ffff, 0x9f1b0000, 96); 
TEST_RR_OP( 25 , sll16, 0x80008000, 0x80008000, 0x80000000, 100); 
TEST_RR_OP( 26 , sll16, 0xef900000, 0xef900000, 0xffff0000, 104); 
TEST_RR_OP( 27 , sll16, 0x80008000, 0x80008000, 0xdd5c8000, 108); 
TEST_RR_OP( 28 , sll16, 0x80000000, 0xd4ab0000, 0x26caffff, 112); 
TEST_RR_OP( 29 , sll16, 0x00008000, 0x85900d0b, 0x1435ffff, 116); 
TEST_RR_OP( 30 , sll16, 0x00000000, 0x00000000, 0x0000000c, 120); 
TEST_RR_OP( 31 , sll16, 0x80000000, 0xffff8000, 0x0000ffff, 124); 
TEST_RR_OP( 32 , sll16, 0xffff8000, 0xffff8000, 0x57510000, 128); 
TEST_RR_OP( 33 , sll16, 0x00000000, 0x80008000, 0xffffd318, 132); 
TEST_RR_OP( 34 , sll16, 0x5200fb00, 0x78a485f6, 0x80006bd7, 136); 
TEST_RR_OP( 35 , sll16, 0x00008000, 0xd8366c07, 0x0000ffff, 140); 
TEST_RR_OP( 36 , sll16, 0x00000000, 0x00008000, 0xffff4387, 144); 
TEST_RR_OP( 37 , sll16, 0x5a200000, 0x5a200000, 0x00000000, 148); 
TEST_RR_OP( 38 , sll16, 0x80005bff, 0x80005bff, 0x798d8000, 152); 
TEST_RR_OP( 39 , sll16, 0x00008000, 0x00008000, 0x00008000, 156); 
TEST_RR_OP( 40 , sll16, 0x00000000, 0x80000000, 0x0000ffff, 160); 
TEST_RR_OP( 41 , sll16, 0x8000ffff, 0x8000ffff, 0x80008000, 164); 
TEST_RR_OP( 42 , sll16, 0x18f3ffff, 0x18f3ffff, 0x6e200000, 168); 
TEST_RR_OP( 43 , sll16, 0xffff57c3, 0xffff57c3, 0x80008000, 172); 
TEST_RR_OP( 44 , sll16, 0x00000000, 0x80008000, 0xffffc0bb, 176); 
TEST_RR_OP( 45 , sll16, 0x8000ffff, 0x8000ffff, 0x00000000, 180); 
TEST_RR_OP( 46 , sll16, 0x80008000, 0xfffff78f, 0x0000ffff, 184); 
TEST_RR_OP( 47 , sll16, 0xffff0000, 0xffff0000, 0x00008000, 188); 
TEST_RR_OP( 48 , sll16, 0x3140fb89, 0x3140fb89, 0x00008000, 192); 
TEST_RR_OP( 49 , sll16, 0x0000a680, 0x0000be9a, 0x92c95326, 196); 
TEST_RR_OP( 50 , sll16, 0x80000000, 0x80000000, 0x80008000, 200); 
TEST_RR_OP( 51 , sll16, 0x00008000, 0x00008000, 0x00000000, 204); 
TEST_RR_OP( 52 , sll16, 0x00008000, 0x0000ffff, 0x8000ffff, 208); 
TEST_RR_OP( 53 , sll16, 0x00008000, 0x80000a27, 0xffffffff, 212); 
TEST_RR_OP( 54 , sll16, 0x80005c03, 0x80005c03, 0xffff0000, 216); 
TEST_RR_OP( 55 , sll16, 0x00000000, 0x00000000, 0x0000ffff, 220); 
TEST_RR_OP( 56 , sll16, 0x00008000, 0x0000ffff, 0xffffffff, 224); 
TEST_RR_OP( 57 , sll16, 0xc458ffff, 0xc458ffff, 0x80008000, 228); 
TEST_RR_OP( 58 , sll16, 0xf8e80000, 0xf8e80000, 0x80008000, 232); 
TEST_RR_OP( 59 , sll16, 0x0000a189, 0x0000a189, 0x366c0000, 236); 
TEST_RR_OP( 60 , sll16, 0x0000f800, 0x0000ffff, 0x97e0da5b, 240); 
TEST_RR_OP( 61 , sll16, 0x8000610b, 0x8000610b, 0xffff0000, 244); 
TEST_RR_OP( 62 , sll16, 0xc0004000, 0x4e9b767d, 0x8000576e, 248); 
TEST_RR_OP( 63 , sll16, 0x80000000, 0xead00000, 0x80006c0b, 252); 
TEST_RR_OP( 64 , sll16, 0x00000000, 0x00000000, 0x3845ea87, 256); 
TEST_RR_OP( 65 , sll16, 0x0000ffe0, 0x0000ffff, 0x8000d245, 260); 
TEST_RR_OP( 66 , sll16, 0x80006833, 0x80006833, 0x00008000, 264); 
TEST_RR_OP( 67 , sll16, 0x80000000, 0xffff0000, 0x8000ffff, 268); 
TEST_RR_OP( 68 , sll16, 0x00000000, 0x80009e8c, 0x2fc2ffff, 272); 
TEST_RR_OP( 69 , sll16, 0xf0005000, 0xffff76a5, 0x0000a4ec, 276); 
TEST_RR_OP( 70 , sll16, 0xffffffff, 0xffffffff, 0x167c8000, 280); 
TEST_RR_OP( 71 , sll16, 0x80000000, 0xffff8000, 0xffffffff, 284); 
TEST_RR_OP( 72 , sll16, 0x00008000, 0x8000ffff, 0x0000ffff, 288); 
TEST_RR_OP( 73 , sll16, 0x80000000, 0x4e232d4c, 0x0000ffff, 292); 
TEST_RR_OP( 74 , sll16, 0x00008000, 0x0000ffff, 0x0000ffff, 296); 
TEST_RR_OP( 75 , sll16, 0x80000000, 0xffff0000, 0x18c3ffff, 300); 
TEST_RR_OP( 76 , sll16, 0x80008000, 0xffffffff, 0x8000ffff, 304); 
TEST_RR_OP( 77 , sll16, 0xde398000, 0xde398000, 0x80000000, 308); 
TEST_RR_OP( 78 , sll16, 0x80008000, 0x7865ffff, 0x800000bf, 312); 
TEST_RR_OP( 79 , sll16, 0xd242be59, 0xd242be59, 0xa00d8000, 316); 
TEST_RR_OP( 80 , sll16, 0xffff0000, 0xffff0000, 0x89ad0000, 320); 
TEST_RR_OP( 81 , sll16, 0x00008000, 0x0000ffff, 0xffffffff, 324); 
TEST_RR_OP( 82 , sll16, 0x00000000, 0x00000000, 0x000061dc, 328); 
TEST_RR_OP( 83 , sll16, 0xa92c0000, 0x54960000, 0x580d0851, 332); 
TEST_RR_OP( 84 , sll16, 0xb253ffff, 0xb253ffff, 0x80008000, 336); 
TEST_RR_OP( 85 , sll16, 0x00000000, 0x80000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , sll16, 0x00000000, 0x80000000, 0x78e6ffff, 344); 
TEST_RR_OP( 87 , sll16, 0x9611ffff, 0x9611ffff, 0x187f0000, 348); 
TEST_RR_OP( 88 , sll16, 0x0000ffff, 0x0000ffff, 0xffff0000, 352); 
TEST_RR_OP( 89 , sll16, 0xffffffff, 0xffffffff, 0x80008000, 356); 
TEST_RR_OP( 90 , sll16, 0x80008000, 0xffffffff, 0x5335ffff, 360); 
TEST_RR_OP( 91 , sll16, 0xffff425a, 0xffff425a, 0x45c48000, 364); 
TEST_RR_OP( 92 , sll16, 0xffffffff, 0xffffffff, 0x00000000, 368); 
TEST_RR_OP( 93 , sll16, 0x80000000, 0x80000000, 0xffff8000, 372); 
TEST_RR_OP( 94 , sll16, 0x0000ffff, 0x0000ffff, 0xffff8000, 376); 
TEST_RR_OP( 95 , sll16, 0xffffffff, 0xffffffff, 0xffff0000, 380); 
TEST_RR_OP( 96 , sll16, 0xd8d9ffff, 0xd8d9ffff, 0xfd908000, 384); 
TEST_RR_OP( 97 , sll16, 0x00000000, 0x7be60000, 0xffffffff, 388); 
TEST_RR_OP( 98 , sll16, 0x00005900, 0x800048b2, 0x00000fa7, 392); 
TEST_RR_OP( 99 , sll16, 0x80000000, 0xffff0000, 0x0000ffff, 396); 
TEST_RR_OP( 100 , sll16, 0x00000000, 0x00008000, 0x80000577, 400); 
TEST_RR_OP( 101 , sll16, 0x00000000, 0x00000000, 0x0000ffff, 404); 
TEST_RR_OP( 102 , sll16, 0x80000000, 0xffff0000, 0x0000ffff, 408); 
TEST_RR_OP( 103 , sll16, 0x70004b00, 0x87705c4b, 0xffff6518, 412); 
TEST_RR_OP( 104 , sll16, 0x67450000, 0x67450000, 0xffff8000, 416); 
TEST_RR_OP( 105 , sll16, 0x00000000, 0x00000000, 0x80000dd0, 420); 
TEST_RR_OP( 106 , sll16, 0x80008000, 0xffff64eb, 0x8000ffff, 424); 
TEST_RR_OP( 107 , sll16, 0x00008000, 0x175affff, 0x0000ffff, 428); 
TEST_RR_OP( 108 , sll16, 0x00000000, 0x00000000, 0x075021ac, 432); 
TEST_RR_OP( 109 , sll16, 0x00008000, 0x0000ffff, 0x8000ffff, 436); 
TEST_RR_OP( 110 , sll16, 0x80000000, 0xffff8000, 0xffffffff, 440); 
TEST_RR_OP( 111 , sll16, 0x0000fd25, 0x0000fd25, 0x00000000, 444); 
TEST_RR_OP( 112 , sll16, 0x1e001e80, 0x263c983d, 0x00009e27, 448); 
TEST_RR_OP( 113 , sll16, 0xbba0cce0, 0xf5dda667, 0x8000bea5, 452); 
TEST_RR_OP( 114 , sll16, 0xf000f000, 0xffffffff, 0x8000dd5c, 456); 
TEST_RR_OP( 115 , sll16, 0xffffffff, 0xffffffff, 0x00000000, 460); 
TEST_RR_OP( 116 , sll16, 0x80000000, 0x80000000, 0x00000000, 464); 
TEST_RR_OP( 117 , sll16, 0xfa0effff, 0xfa0effff, 0x80000000, 468); 
TEST_RR_OP( 118 , sll16, 0x4a42673f, 0x4a42673f, 0xffff8000, 472); 
TEST_RR_OP( 119 , sll16, 0x00000000, 0x80000000, 0x6e4dffff, 476); 
TEST_RR_OP( 120 , sll16, 0x0000d200, 0x0000af69, 0xffffbe79, 480); 
TEST_RR_OP( 121 , sll16, 0x800053dc, 0x800053dc, 0x80008000, 484); 
TEST_RR_OP( 122 , sll16, 0x4e168000, 0x4e168000, 0x063bad90, 488); 
TEST_RR_OP( 123 , sll16, 0x80000000, 0xffff0000, 0xf73effff, 492); 
TEST_RR_OP( 124 , sll16, 0x00002e80, 0x0000965d, 0x39c34c17, 496); 
TEST_RR_OP( 125 , sll16, 0x80006b67, 0x80006b67, 0xffff8000, 500); 
TEST_RR_OP( 126 , sll16, 0xffff68e2, 0xffff68e2, 0xffbddf70, 504); 
TEST_RR_OP( 127 , sll16, 0x00000000, 0xd3960000, 0x0000ffff, 508); 
TEST_RR_OP( 128 , sll16, 0x00008000, 0x8000ffff, 0x0000ffff, 512); 
TEST_RR_OP( 129 , sll16, 0x00000000, 0x00000000, 0xffff5ef6, 516); 
TEST_RR_OP( 130 , sll16, 0x80000000, 0x80000000, 0xb6d10000, 520); 
TEST_RR_OP( 131 , sll16, 0x00000000, 0x80008000, 0xffffffff, 524); 
TEST_RR_OP( 132 , sll16, 0x80008000, 0x80008000, 0x00008000, 528); 
TEST_RR_OP( 133 , sll16, 0x8000ffff, 0x8000ffff, 0x80000000, 532); 
TEST_RR_OP( 134 , sll16, 0x80000000, 0x48030000, 0x9a15ffff, 536); 
TEST_RR_OP( 135 , sll16, 0x00000000, 0x8000303c, 0x8000ffff, 540); 
TEST_RR_OP( 136 , sll16, 0x974a0000, 0x974a0000, 0xffff8000, 544); 
TEST_RR_OP( 137 , sll16, 0xffffb288, 0xffffb288, 0xffff8000, 548); 
TEST_RR_OP( 138 , sll16, 0x00008000, 0x8000ffff, 0x8000ffff, 552); 
TEST_RR_OP( 139 , sll16, 0x0000ffff, 0x0000ffff, 0xffff8000, 556); 
TEST_RR_OP( 140 , sll16, 0x8000ffff, 0x8000ffff, 0x80000000, 560); 
TEST_RR_OP( 141 , sll16, 0xffff8000, 0xffff8000, 0xfecc0000, 564); 
TEST_RR_OP( 142 , sll16, 0x80008000, 0x80008000, 0x00008000, 568); 
TEST_RR_OP( 143 , sll16, 0xf8000000, 0xffff0000, 0x8000c28b, 572); 
TEST_RR_OP( 144 , sll16, 0x8000ffff, 0x8000ffff, 0x00d9a470, 576); 
TEST_RR_OP( 145 , sll16, 0xffff8000, 0xffff8000, 0x80000000, 580); 
TEST_RR_OP( 146 , sll16, 0xffff0000, 0xffff0000, 0x00000000, 584); 
TEST_RR_OP( 147 , sll16, 0xe735ffff, 0xe735ffff, 0x00008000, 588); 
TEST_RR_OP( 148 , sll16, 0xffff3ca0, 0xffff3ca0, 0xffff8000, 592); 
TEST_RR_OP( 149 , sll16, 0x00000000, 0x80008000, 0xffffb20c, 596); 
TEST_RR_OP( 150 , sll16, 0x80000000, 0xffff0000, 0xffffffff, 600); 
TEST_RR_OP( 151 , sll16, 0x94ab0000, 0x94ab0000, 0x80000000, 604); 
TEST_RR_OP( 152 , sll16, 0x0000e000, 0x8000ffff, 0xffff320d, 608); 
TEST_RR_OP( 153 , sll16, 0x00008000, 0x553effff, 0xc316ffff, 612); 
TEST_RR_OP( 154 , sll16, 0x00000000, 0x00000000, 0x80000000, 616); 
TEST_RR_OP( 155 , sll16, 0xffffb190, 0xffffb190, 0xbef28000, 620); 
TEST_RR_OP( 156 , sll16, 0x0000ffff, 0x0000ffff, 0x80008000, 624); 
TEST_RR_OP( 157 , sll16, 0x00008000, 0x4ea0ffff, 0x0000ffff, 628); 
TEST_RR_OP( 158 , sll16, 0x00000000, 0x00000000, 0x174c0000, 632); 
TEST_RR_OP( 159 , sll16, 0xb200ff00, 0xc6b2ffff, 0x0000a708, 636); 
TEST_RR_OP( 160 , sll16, 0x00008000, 0x00008000, 0x00000000, 640); 
TEST_RR_OP( 161 , sll16, 0x00000000, 0x00008000, 0x0000ffff, 644); 
TEST_RR_OP( 162 , sll16, 0x00000000, 0x80000000, 0x8000ffff, 648); 
TEST_RR_OP( 163 , sll16, 0x80008000, 0xffffffff, 0xffffffff, 652); 
TEST_RR_OP( 164 , sll16, 0xe46f977c, 0xe46f977c, 0x80000000, 656); 
TEST_RR_OP( 165 , sll16, 0xe3b40000, 0xe3b40000, 0x80008000, 660); 
TEST_RR_OP( 166 , sll16, 0x80000000, 0x2e378000, 0x0000ffff, 664); 
TEST_RR_OP( 167 , sll16, 0x80008000, 0x80008000, 0xe4ee8000, 668); 
TEST_RR_OP( 168 , sll16, 0x00008000, 0x8000ffff, 0x0000ffff, 672); 
TEST_RR_OP( 169 , sll16, 0x80008000, 0xffff91f9, 0x8000ffff, 676); 
TEST_RR_OP( 170 , sll16, 0xffffffff, 0xffffffff, 0x00008000, 680); 
TEST_RR_OP( 171 , sll16, 0x80000000, 0x12978000, 0x0000ffff, 684); 
TEST_RR_OP( 172 , sll16, 0x00008000, 0x0000ffff, 0x8000ffff, 688); 
TEST_RR_OP( 173 , sll16, 0x80000000, 0xffff8000, 0xffffffff, 692); 
TEST_RR_OP( 174 , sll16, 0xffffffff, 0xffffffff, 0x80000000, 696); 
TEST_RR_OP( 175 , sll16, 0xffff8000, 0xffff8000, 0xffff8000, 700); 
TEST_RR_OP( 176 , sll16, 0x80000000, 0xced20000, 0x8000596e, 704); 
TEST_RR_OP( 177 , sll16, 0x00000b13, 0x00000b13, 0x80008000, 708); 
TEST_RR_OP( 178 , sll16, 0x80008000, 0xffffffff, 0xc5e7ffff, 712); 
TEST_RR_OP( 179 , sll16, 0xffff0000, 0xffff0000, 0x80008000, 716); 
TEST_RR_OP( 180 , sll16, 0x00007b1b, 0x00007b1b, 0x2c100000, 720); 
TEST_RR_OP( 181 , sll16, 0xffffffff, 0xffffffff, 0x00000000, 724); 
TEST_RR_OP( 182 , sll16, 0x00008000, 0x00008000, 0xffff8000, 728); 
TEST_RR_OP( 183 , sll16, 0x80008000, 0xffff6f6d, 0x9bc2ffff, 732); 
TEST_RR_OP( 184 , sll16, 0x000052da, 0x000052da, 0xd4858000, 736); 
TEST_RR_OP( 185 , sll16, 0x8000ffff, 0x8000ffff, 0x00000000, 740); 
TEST_RR_OP( 186 , sll16, 0x80000000, 0x80000000, 0xffff8000, 744); 
TEST_RR_OP( 187 , sll16, 0x00008000, 0x00008000, 0x80000000, 748); 
TEST_RR_OP( 188 , sll16, 0x00004ad0, 0x800024ad, 0xffff7504, 752); 
TEST_RR_OP( 189 , sll16, 0x0000ff00, 0x8000ffff, 0x8000e8e8, 756); 
TEST_RR_OP( 190 , sll16, 0xffff0000, 0xffff0000, 0x80008000, 760); 
TEST_RR_OP( 191 , sll16, 0x00008000, 0x8000ffff, 0xffffffff, 764); 
TEST_RR_OP( 192 , sll16, 0x00000000, 0x80008000, 0xffffb9ce, 768); 
TEST_RR_OP( 193 , sll16, 0xffffffff, 0xffffffff, 0x00008000, 772); 
TEST_RR_OP( 194 , sll16, 0x8000ffff, 0x8000ffff, 0xffff8000, 776); 
TEST_RR_OP( 195 , sll16, 0x80008000, 0xfffff505, 0x0000ffff, 780); 
TEST_RR_OP( 196 , sll16, 0x00000000, 0x00008000, 0x0000ffff, 784); 
TEST_RR_OP( 197 , sll16, 0x0000ba00, 0x8000b55d, 0x00001469, 788); 
TEST_RR_OP( 198 , sll16, 0x00000000, 0x00000000, 0xffff8000, 792); 
TEST_RR_OP( 199 , sll16, 0xffff8000, 0xffff8000, 0x00000000, 796); 

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
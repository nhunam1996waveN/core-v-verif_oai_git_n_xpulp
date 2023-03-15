# See LICENSE for license details.
#*****************************************************************************
# pack.S
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

TEST_RR_OP( 2 , pack, 0x50e8ffff, 0x0000ffff, 0xffff50e8, 8); 
TEST_RR_OP( 3 , pack, 0xffff0000, 0x80000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , pack, 0x9512ffff, 0xffffffff, 0x56b89512, 16); 
TEST_RR_OP( 5 , pack, 0xfed68000, 0x00008000, 0x0000fed6, 20); 
TEST_RR_OP( 6 , pack, 0x267a0000, 0xffff0000, 0xffff267a, 24); 
TEST_RR_OP( 7 , pack, 0x0000ffff, 0xffffffff, 0x00000000, 28); 
TEST_RR_OP( 8 , pack, 0xd203bab9, 0xffffbab9, 0x8000d203, 32); 
TEST_RR_OP( 9 , pack, 0x4939ffff, 0x0000ffff, 0x80004939, 36); 
TEST_RR_OP( 10 , pack, 0x80000000, 0x00000000, 0xffff8000, 40); 
TEST_RR_OP( 11 , pack, 0x0100ffff, 0x8dbfffff, 0x00000100, 44); 
TEST_RR_OP( 12 , pack, 0x00006964, 0x00006964, 0x80000000, 48); 
TEST_RR_OP( 13 , pack, 0x00002757, 0x80002757, 0x300f0000, 52); 
TEST_RR_OP( 14 , pack, 0x00008000, 0xffff8000, 0x00000000, 56); 
TEST_RR_OP( 15 , pack, 0xffff1eb1, 0x80001eb1, 0x2869ffff, 60); 
TEST_RR_OP( 16 , pack, 0xffff8000, 0x00008000, 0x0000ffff, 64); 
TEST_RR_OP( 17 , pack, 0x00000000, 0xffff0000, 0x77280000, 68); 
TEST_RR_OP( 18 , pack, 0xffffffff, 0x8574ffff, 0x734affff, 72); 
TEST_RR_OP( 19 , pack, 0x00009241, 0xffff9241, 0x80000000, 76); 
TEST_RR_OP( 20 , pack, 0x00000000, 0xffff0000, 0xffff0000, 80); 
TEST_RR_OP( 21 , pack, 0x01590000, 0x80000000, 0xffff0159, 84); 
TEST_RR_OP( 22 , pack, 0x00000000, 0x80000000, 0xffff0000, 88); 
TEST_RR_OP( 23 , pack, 0x00000000, 0xffff0000, 0xffff0000, 92); 
TEST_RR_OP( 24 , pack, 0xd9c3ffff, 0x0000ffff, 0x8000d9c3, 96); 
TEST_RR_OP( 25 , pack, 0x0000ffff, 0x8000ffff, 0xffff0000, 100); 
TEST_RR_OP( 26 , pack, 0x62b45bd9, 0xffff5bd9, 0x000062b4, 104); 
TEST_RR_OP( 27 , pack, 0x00000000, 0x80000000, 0x80000000, 108); 
TEST_RR_OP( 28 , pack, 0x25640000, 0x00000000, 0x80002564, 112); 
TEST_RR_OP( 29 , pack, 0xffff0000, 0xffff0000, 0xffffffff, 116); 
TEST_RR_OP( 30 , pack, 0x8000d270, 0x0000d270, 0xffff8000, 120); 
TEST_RR_OP( 31 , pack, 0x0000a8b5, 0x8000a8b5, 0x44d50000, 124); 
TEST_RR_OP( 32 , pack, 0x8000de2f, 0x0000de2f, 0x00008000, 128); 
TEST_RR_OP( 33 , pack, 0x00000000, 0xffff0000, 0xffff0000, 132); 
TEST_RR_OP( 34 , pack, 0x8000c091, 0x0000c091, 0x9d1d8000, 136); 
TEST_RR_OP( 35 , pack, 0xffff0000, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , pack, 0xffff8000, 0x00008000, 0x27b0ffff, 144); 
TEST_RR_OP( 37 , pack, 0x00008000, 0x00008000, 0x00000000, 148); 
TEST_RR_OP( 38 , pack, 0x8000e19f, 0xffffe19f, 0x80008000, 152); 
TEST_RR_OP( 39 , pack, 0x80000000, 0xffff0000, 0x00008000, 156); 
TEST_RR_OP( 40 , pack, 0x5339a869, 0xffffa869, 0x00005339, 160); 
TEST_RR_OP( 41 , pack, 0x8000ca0f, 0xffffca0f, 0x60918000, 164); 
TEST_RR_OP( 42 , pack, 0x0000b5e8, 0x8000b5e8, 0x92f70000, 168); 
TEST_RR_OP( 43 , pack, 0xffffadfc, 0xa285adfc, 0x8000ffff, 172); 
TEST_RR_OP( 44 , pack, 0x00008000, 0x5d778000, 0x80000000, 176); 
TEST_RR_OP( 45 , pack, 0xffffcec9, 0xffffcec9, 0x8000ffff, 180); 
TEST_RR_OP( 46 , pack, 0x0000ffff, 0x8000ffff, 0x00000000, 184); 
TEST_RR_OP( 47 , pack, 0x0000f63c, 0x0000f63c, 0xffff0000, 188); 
TEST_RR_OP( 48 , pack, 0x8000ffff, 0x0000ffff, 0x00008000, 192); 
TEST_RR_OP( 49 , pack, 0x00008000, 0xffff8000, 0xdeea0000, 196); 
TEST_RR_OP( 50 , pack, 0x00008178, 0x80008178, 0x00000000, 200); 
TEST_RR_OP( 51 , pack, 0xef050000, 0x80000000, 0x8000ef05, 204); 
TEST_RR_OP( 52 , pack, 0x75a68000, 0xc1c68000, 0x356075a6, 208); 
TEST_RR_OP( 53 , pack, 0x8000ffff, 0x2229ffff, 0x3b748000, 212); 
TEST_RR_OP( 54 , pack, 0x85517934, 0x00007934, 0x06a68551, 216); 
TEST_RR_OP( 55 , pack, 0x831b0000, 0xdb590000, 0x8000831b, 220); 
TEST_RR_OP( 56 , pack, 0x00008000, 0x00008000, 0xffff0000, 224); 
TEST_RR_OP( 57 , pack, 0x8000ffff, 0x0000ffff, 0x00008000, 228); 
TEST_RR_OP( 58 , pack, 0x80005f93, 0x00005f93, 0xa3cf8000, 232); 
TEST_RR_OP( 59 , pack, 0xae15ffff, 0xffffffff, 0xffffae15, 236); 
TEST_RR_OP( 60 , pack, 0x122a6ffe, 0xffff6ffe, 0x0000122a, 240); 
TEST_RR_OP( 61 , pack, 0x000089f0, 0xffff89f0, 0x80000000, 244); 
TEST_RR_OP( 62 , pack, 0xebba0000, 0x80000000, 0xffffebba, 248); 
TEST_RR_OP( 63 , pack, 0xffff695c, 0x0602695c, 0x0000ffff, 252); 
TEST_RR_OP( 64 , pack, 0x23a788e5, 0x000088e5, 0xffff23a7, 256); 
TEST_RR_OP( 65 , pack, 0xffff33b9, 0xffff33b9, 0xffffffff, 260); 
TEST_RR_OP( 66 , pack, 0xffff8000, 0xafd78000, 0x32dfffff, 264); 
TEST_RR_OP( 67 , pack, 0x77bf8000, 0x00008000, 0xffff77bf, 268); 
TEST_RR_OP( 68 , pack, 0xffffffff, 0x0000ffff, 0x0000ffff, 272); 
TEST_RR_OP( 69 , pack, 0x8000a9df, 0xffffa9df, 0x80008000, 276); 
TEST_RR_OP( 70 , pack, 0x80008000, 0xffff8000, 0x00008000, 280); 
TEST_RR_OP( 71 , pack, 0x0000ffff, 0xffffffff, 0xffff0000, 284); 
TEST_RR_OP( 72 , pack, 0xaf158000, 0x1c888000, 0x7040af15, 288); 
TEST_RR_OP( 73 , pack, 0x00008000, 0x80008000, 0x80000000, 292); 
TEST_RR_OP( 74 , pack, 0x80008000, 0x80008000, 0xffff8000, 296); 
TEST_RR_OP( 75 , pack, 0xbdd90000, 0xffff0000, 0xae03bdd9, 300); 
TEST_RR_OP( 76 , pack, 0x80008000, 0x62518000, 0x00008000, 304); 
TEST_RR_OP( 77 , pack, 0x80000000, 0x80000000, 0xffff8000, 308); 
TEST_RR_OP( 78 , pack, 0xffff8000, 0xffff8000, 0x0000ffff, 312); 
TEST_RR_OP( 79 , pack, 0x80005f6a, 0x80005f6a, 0x80008000, 316); 
TEST_RR_OP( 80 , pack, 0x00000000, 0x00000000, 0x80000000, 320); 
TEST_RR_OP( 81 , pack, 0x0000ffff, 0x0000ffff, 0xffff0000, 324); 
TEST_RR_OP( 82 , pack, 0x80008000, 0xffff8000, 0x9f648000, 328); 
TEST_RR_OP( 83 , pack, 0x8000bd37, 0x5ef8bd37, 0xffff8000, 332); 
TEST_RR_OP( 84 , pack, 0x80000000, 0x00000000, 0xffff8000, 336); 
TEST_RR_OP( 85 , pack, 0xffff0000, 0x548c0000, 0x0000ffff, 340); 
TEST_RR_OP( 86 , pack, 0xffffffff, 0xffffffff, 0xc806ffff, 344); 
TEST_RR_OP( 87 , pack, 0x00000000, 0xffff0000, 0x00000000, 348); 
TEST_RR_OP( 88 , pack, 0xb5058000, 0x92168000, 0x167bb505, 352); 
TEST_RR_OP( 89 , pack, 0xffff934d, 0x1495934d, 0x7609ffff, 356); 
TEST_RR_OP( 90 , pack, 0x35bdffff, 0xb290ffff, 0xffff35bd, 360); 
TEST_RR_OP( 91 , pack, 0xffffffff, 0x0000ffff, 0x0000ffff, 364); 
TEST_RR_OP( 92 , pack, 0xffff0000, 0x00000000, 0x0000ffff, 368); 
TEST_RR_OP( 93 , pack, 0x80000000, 0x80000000, 0xccc28000, 372); 
TEST_RR_OP( 94 , pack, 0x8000bd57, 0x270cbd57, 0x80008000, 376); 
TEST_RR_OP( 95 , pack, 0x00008000, 0x80008000, 0x80000000, 380); 
TEST_RR_OP( 96 , pack, 0x8000ffff, 0x0000ffff, 0x80008000, 384); 
TEST_RR_OP( 97 , pack, 0x00002216, 0xfbca2216, 0xffff0000, 388); 
TEST_RR_OP( 98 , pack, 0x6a410000, 0x80000000, 0x57d16a41, 392); 
TEST_RR_OP( 99 , pack, 0x00000000, 0xffff0000, 0xffff0000, 396); 
TEST_RR_OP( 100 , pack, 0x00003dde, 0x80003dde, 0xe5620000, 400); 
TEST_RR_OP( 101 , pack, 0x80000000, 0xe96d0000, 0x00008000, 404); 
TEST_RR_OP( 102 , pack, 0xffffffff, 0xffffffff, 0x8000ffff, 408); 
TEST_RR_OP( 103 , pack, 0x00000000, 0x00000000, 0x5d9d0000, 412); 
TEST_RR_OP( 104 , pack, 0x800006b2, 0x000006b2, 0x00008000, 416); 
TEST_RR_OP( 105 , pack, 0x0000ffff, 0x8000ffff, 0xffff0000, 420); 
TEST_RR_OP( 106 , pack, 0xac388000, 0x00008000, 0x7539ac38, 424); 
TEST_RR_OP( 107 , pack, 0x0000ffff, 0x58afffff, 0x8d540000, 428); 
TEST_RR_OP( 108 , pack, 0xffff0000, 0x00000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , pack, 0x00008000, 0xb4128000, 0xd9280000, 436); 
TEST_RR_OP( 110 , pack, 0x0000ffff, 0x8000ffff, 0x80000000, 440); 
TEST_RR_OP( 111 , pack, 0x00000000, 0x80000000, 0x80000000, 444); 
TEST_RR_OP( 112 , pack, 0xffffffff, 0xffffffff, 0x0000ffff, 448); 
TEST_RR_OP( 113 , pack, 0xffff0a87, 0x80000a87, 0xffffffff, 452); 
TEST_RR_OP( 114 , pack, 0x36cb8000, 0x00008000, 0x800036cb, 456); 
TEST_RR_OP( 115 , pack, 0x80000000, 0x120d0000, 0x80008000, 460); 
TEST_RR_OP( 116 , pack, 0x0000ffff, 0xffffffff, 0x80000000, 464); 
TEST_RR_OP( 117 , pack, 0x0b210000, 0x00000000, 0x55620b21, 468); 
TEST_RR_OP( 118 , pack, 0x70cb8000, 0x80008000, 0xf4d570cb, 472); 
TEST_RR_OP( 119 , pack, 0x80000000, 0xffff0000, 0x8c0c8000, 476); 
TEST_RR_OP( 120 , pack, 0xffffffff, 0x0000ffff, 0xffffffff, 480); 
TEST_RR_OP( 121 , pack, 0xffff0000, 0x80000000, 0xffffffff, 484); 
TEST_RR_OP( 122 , pack, 0x80000000, 0x80000000, 0x054c8000, 488); 
TEST_RR_OP( 123 , pack, 0x80008bbc, 0x80008bbc, 0x00008000, 492); 
TEST_RR_OP( 124 , pack, 0xffff3d0a, 0x00003d0a, 0x8000ffff, 496); 
TEST_RR_OP( 125 , pack, 0xd5eb145c, 0x2ae8145c, 0x8000d5eb, 500); 
TEST_RR_OP( 126 , pack, 0x8000ffff, 0x8000ffff, 0xffff8000, 504); 
TEST_RR_OP( 127 , pack, 0x8000b14c, 0x8000b14c, 0x80008000, 508); 
TEST_RR_OP( 128 , pack, 0x80008000, 0x00008000, 0x00008000, 512); 
TEST_RR_OP( 129 , pack, 0x00000000, 0xffff0000, 0x80000000, 516); 
TEST_RR_OP( 130 , pack, 0xffffffff, 0x7deaffff, 0xffffffff, 520); 
TEST_RR_OP( 131 , pack, 0xffff7aaf, 0xe7fd7aaf, 0x56c4ffff, 524); 
TEST_RR_OP( 132 , pack, 0x63ea0000, 0x65710000, 0xffff63ea, 528); 
TEST_RR_OP( 133 , pack, 0x00000000, 0x50830000, 0x80000000, 532); 
TEST_RR_OP( 134 , pack, 0xffff0000, 0x2fb50000, 0x0000ffff, 536); 
TEST_RR_OP( 135 , pack, 0x8000ffff, 0xd1ccffff, 0x00008000, 540); 
TEST_RR_OP( 136 , pack, 0xd34a0000, 0x00000000, 0xffffd34a, 544); 
TEST_RR_OP( 137 , pack, 0x8000ffff, 0x0000ffff, 0xffff8000, 548); 
TEST_RR_OP( 138 , pack, 0x314a0000, 0xffff0000, 0xd4ca314a, 552); 
TEST_RR_OP( 139 , pack, 0xbd44b0dd, 0xffffb0dd, 0x0000bd44, 556); 
TEST_RR_OP( 140 , pack, 0xffff0000, 0xffff0000, 0xffffffff, 560); 
TEST_RR_OP( 141 , pack, 0x00008000, 0x80008000, 0xffff0000, 564); 
TEST_RR_OP( 142 , pack, 0x00008000, 0x80008000, 0x00000000, 568); 
TEST_RR_OP( 143 , pack, 0x8000ffff, 0x0000ffff, 0x00008000, 572); 
TEST_RR_OP( 144 , pack, 0x80008000, 0x7fa28000, 0x01708000, 576); 
TEST_RR_OP( 145 , pack, 0x80000000, 0x7fd90000, 0x69c48000, 580); 
TEST_RR_OP( 146 , pack, 0x0000ffff, 0xbf14ffff, 0x80000000, 584); 
TEST_RR_OP( 147 , pack, 0x8000ffff, 0x21a0ffff, 0xffff8000, 588); 
TEST_RR_OP( 148 , pack, 0x00008000, 0x80008000, 0xf6e50000, 592); 
TEST_RR_OP( 149 , pack, 0xffff8000, 0x80008000, 0xffffffff, 596); 
TEST_RR_OP( 150 , pack, 0x80007279, 0x0d027279, 0x71ec8000, 600); 
TEST_RR_OP( 151 , pack, 0xffff8000, 0x73548000, 0x8000ffff, 604); 
TEST_RR_OP( 152 , pack, 0xe9ab0000, 0x80000000, 0x0000e9ab, 608); 
TEST_RR_OP( 153 , pack, 0xc9b8ffff, 0x0000ffff, 0x8000c9b8, 612); 
TEST_RR_OP( 154 , pack, 0xbbf88000, 0x1cdb8000, 0x8000bbf8, 616); 
TEST_RR_OP( 155 , pack, 0xffff0569, 0xffff0569, 0x69a1ffff, 620); 
TEST_RR_OP( 156 , pack, 0x80008fd1, 0x00008fd1, 0x00008000, 624); 
TEST_RR_OP( 157 , pack, 0x80000000, 0x80000000, 0x80008000, 628); 
TEST_RR_OP( 158 , pack, 0xffffffff, 0x8000ffff, 0x8000ffff, 632); 
TEST_RR_OP( 159 , pack, 0xffff0000, 0x7b8a0000, 0x0000ffff, 636); 
TEST_RR_OP( 160 , pack, 0x8000ffff, 0xffffffff, 0xffff8000, 640); 
TEST_RR_OP( 161 , pack, 0x80008000, 0xf6428000, 0x7e748000, 644); 
TEST_RR_OP( 162 , pack, 0xffff0000, 0xffff0000, 0x4ca5ffff, 648); 
TEST_RR_OP( 163 , pack, 0x59c68000, 0x14948000, 0x48fa59c6, 652); 
TEST_RR_OP( 164 , pack, 0x00009351, 0xffff9351, 0x60140000, 656); 
TEST_RR_OP( 165 , pack, 0xf1b2ef0b, 0x8000ef0b, 0xfffff1b2, 660); 
TEST_RR_OP( 166 , pack, 0x47a18000, 0x80008000, 0xffff47a1, 664); 
TEST_RR_OP( 167 , pack, 0xffff0000, 0x80000000, 0x8000ffff, 668); 
TEST_RR_OP( 168 , pack, 0x80008000, 0x00008000, 0xffff8000, 672); 
TEST_RR_OP( 169 , pack, 0x00000000, 0x00000000, 0x1f6d0000, 676); 
TEST_RR_OP( 170 , pack, 0x0000ffff, 0x0000ffff, 0x36720000, 680); 
TEST_RR_OP( 171 , pack, 0x7a30ffff, 0x8000ffff, 0xf9907a30, 684); 
TEST_RR_OP( 172 , pack, 0x42ec8000, 0x00008000, 0x800042ec, 688); 
TEST_RR_OP( 173 , pack, 0xffffd757, 0x4b80d757, 0x1f5bffff, 692); 
TEST_RR_OP( 174 , pack, 0x80003824, 0x3b333824, 0x80008000, 696); 
TEST_RR_OP( 175 , pack, 0x0000ffff, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , pack, 0x3f67ffff, 0xffffffff, 0x2f553f67, 704); 
TEST_RR_OP( 177 , pack, 0x80000000, 0x80000000, 0x00008000, 708); 
TEST_RR_OP( 178 , pack, 0xffffffff, 0xcaf5ffff, 0xffffffff, 712); 
TEST_RR_OP( 179 , pack, 0x8000ffff, 0xffffffff, 0xffff8000, 716); 
TEST_RR_OP( 180 , pack, 0x80008000, 0x00008000, 0x00008000, 720); 
TEST_RR_OP( 181 , pack, 0xffff8000, 0xffff8000, 0x0000ffff, 724); 
TEST_RR_OP( 182 , pack, 0x00000000, 0xffff0000, 0xffff0000, 728); 
TEST_RR_OP( 183 , pack, 0xffff8000, 0x76a98000, 0x76edffff, 732); 
TEST_RR_OP( 184 , pack, 0x00000000, 0x982b0000, 0xffff0000, 736); 
TEST_RR_OP( 185 , pack, 0xffff248d, 0x8000248d, 0x0000ffff, 740); 
TEST_RR_OP( 186 , pack, 0x00008000, 0x80008000, 0xda720000, 744); 
TEST_RR_OP( 187 , pack, 0xffff0000, 0x24a50000, 0x8000ffff, 748); 
TEST_RR_OP( 188 , pack, 0xfa2fffff, 0x4c90ffff, 0x0000fa2f, 752); 
TEST_RR_OP( 189 , pack, 0xffff7fc3, 0x80007fc3, 0x5fc2ffff, 756); 
TEST_RR_OP( 190 , pack, 0x80000000, 0x00000000, 0x80008000, 760); 
TEST_RR_OP( 191 , pack, 0xffff0000, 0xcae90000, 0xffffffff, 764); 
TEST_RR_OP( 192 , pack, 0x36d00000, 0x00000000, 0xddd936d0, 768); 
TEST_RR_OP( 193 , pack, 0x0000ffff, 0x3ba6ffff, 0xd5960000, 772); 
TEST_RR_OP( 194 , pack, 0x00008000, 0x5ac68000, 0x15380000, 776); 
TEST_RR_OP( 195 , pack, 0x00008000, 0x00008000, 0xffff0000, 780); 
TEST_RR_OP( 196 , pack, 0x00001b07, 0x80001b07, 0xffff0000, 784); 
TEST_RR_OP( 197 , pack, 0xd6ee8000, 0x80008000, 0xb586d6ee, 788); 
TEST_RR_OP( 198 , pack, 0x95ee8000, 0x9ba78000, 0x000095ee, 792); 
TEST_RR_OP( 199 , pack, 0x800015f9, 0x6d1a15f9, 0x80008000, 796); 

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
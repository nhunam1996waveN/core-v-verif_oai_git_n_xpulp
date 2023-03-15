# See LICENSE for license details.
#*****************************************************************************
# cmpeq16.S
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

TEST_RR_OP( 2 , cmpeq16, 0x00000000, 0x4adbffff, 0xffff26f0, 8); 
TEST_RR_OP( 3 , cmpeq16, 0x00000000, 0x73720000, 0x00000110, 12); 
TEST_RR_OP( 4 , cmpeq16, 0x00000000, 0x80000000, 0x00009565, 16); 
TEST_RR_OP( 5 , cmpeq16, 0x0000ffff, 0x80000000, 0x48c60000, 20); 
TEST_RR_OP( 6 , cmpeq16, 0x00000000, 0x03eaffff, 0x80000000, 24); 
TEST_RR_OP( 7 , cmpeq16, 0x00000000, 0xea05ffff, 0xffffb36e, 28); 
TEST_RR_OP( 8 , cmpeq16, 0x0000ffff, 0x901dffff, 0x8000ffff, 32); 
TEST_RR_OP( 9 , cmpeq16, 0x0000ffff, 0x41318000, 0x00008000, 36); 
TEST_RR_OP( 10 , cmpeq16, 0x0000ffff, 0xffffffff, 0x73a6ffff, 40); 
TEST_RR_OP( 11 , cmpeq16, 0x00000000, 0xcf57ffff, 0xffff0000, 44); 
TEST_RR_OP( 12 , cmpeq16, 0x00000000, 0x686b0000, 0xffffffff, 48); 
TEST_RR_OP( 13 , cmpeq16, 0x00000000, 0x800001d6, 0x00008000, 52); 
TEST_RR_OP( 14 , cmpeq16, 0x00000000, 0xffff0000, 0x800007a0, 56); 
TEST_RR_OP( 15 , cmpeq16, 0x00000000, 0xffff0000, 0x79e18000, 60); 
TEST_RR_OP( 16 , cmpeq16, 0x00000000, 0xffffffff, 0x00008000, 64); 
TEST_RR_OP( 17 , cmpeq16, 0x00000000, 0x0000ffff, 0x8af28000, 68); 
TEST_RR_OP( 18 , cmpeq16, 0x0000ffff, 0x00000000, 0xffff0000, 72); 
TEST_RR_OP( 19 , cmpeq16, 0x00000000, 0xffff8000, 0x00000000, 76); 
TEST_RR_OP( 20 , cmpeq16, 0x00000000, 0xffff4f59, 0x36ba8000, 80); 
TEST_RR_OP( 21 , cmpeq16, 0x00000000, 0x8000ffff, 0xffff8000, 84); 
TEST_RR_OP( 22 , cmpeq16, 0x0000ffff, 0xc3ad0000, 0x80000000, 88); 
TEST_RR_OP( 23 , cmpeq16, 0x00000000, 0x0000ffff, 0x80001004, 92); 
TEST_RR_OP( 24 , cmpeq16, 0x0000ffff, 0x3c60ffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , cmpeq16, 0x00000000, 0x8000a39f, 0xffff50b3, 100); 
TEST_RR_OP( 26 , cmpeq16, 0x00000000, 0xe7c9ffff, 0xffff2220, 104); 
TEST_RR_OP( 27 , cmpeq16, 0x00000000, 0xfd3f682b, 0x00008000, 108); 
TEST_RR_OP( 28 , cmpeq16, 0x00000000, 0xffff0000, 0xb10c8000, 112); 
TEST_RR_OP( 29 , cmpeq16, 0x0000ffff, 0x0000ffff, 0x307dffff, 116); 
TEST_RR_OP( 30 , cmpeq16, 0x00000000, 0x00008000, 0x80000000, 120); 
TEST_RR_OP( 31 , cmpeq16, 0x00000000, 0xffff8000, 0x33a8af52, 124); 
TEST_RR_OP( 32 , cmpeq16, 0x00000000, 0x8f250000, 0xffffffff, 128); 
TEST_RR_OP( 33 , cmpeq16, 0x00000000, 0x8000ffff, 0x00000000, 132); 
TEST_RR_OP( 34 , cmpeq16, 0x00000000, 0xbc97ffff, 0x87150000, 136); 
TEST_RR_OP( 35 , cmpeq16, 0x00000000, 0xffff0000, 0x8000ffff, 140); 
TEST_RR_OP( 36 , cmpeq16, 0x00000000, 0xb5e10000, 0x80008000, 144); 
TEST_RR_OP( 37 , cmpeq16, 0x00000000, 0xa5754299, 0x860d0000, 148); 
TEST_RR_OP( 38 , cmpeq16, 0x00000000, 0xffffd2a7, 0x00000000, 152); 
TEST_RR_OP( 39 , cmpeq16, 0x00000000, 0x498d8000, 0x9bb1ffff, 156); 
TEST_RR_OP( 40 , cmpeq16, 0x00000000, 0x0000ffff, 0x0ebe8000, 160); 
TEST_RR_OP( 41 , cmpeq16, 0x00000000, 0x842affff, 0x00000000, 164); 
TEST_RR_OP( 42 , cmpeq16, 0x00000000, 0x8000e833, 0x2c2b0000, 168); 
TEST_RR_OP( 43 , cmpeq16, 0x00000000, 0x80000000, 0x00008000, 172); 
TEST_RR_OP( 44 , cmpeq16, 0xffff0000, 0xffff0000, 0xffff34df, 176); 
TEST_RR_OP( 45 , cmpeq16, 0x00000000, 0x472bffff, 0xffff8000, 180); 
TEST_RR_OP( 46 , cmpeq16, 0x00000000, 0x0000ffff, 0x21f56a80, 184); 
TEST_RR_OP( 47 , cmpeq16, 0xffffffff, 0x00000000, 0x00000000, 188); 
TEST_RR_OP( 48 , cmpeq16, 0x00000000, 0x80008000, 0x00002812, 192); 
TEST_RR_OP( 49 , cmpeq16, 0x00000000, 0x80008000, 0x000073c9, 196); 
TEST_RR_OP( 50 , cmpeq16, 0x0000ffff, 0x0915ffff, 0x0000ffff, 200); 
TEST_RR_OP( 51 , cmpeq16, 0x00000000, 0x0000fb78, 0xe5218000, 204); 
TEST_RR_OP( 52 , cmpeq16, 0x00000000, 0xffff8000, 0x96e6ffff, 208); 
TEST_RR_OP( 53 , cmpeq16, 0x00000000, 0x429f1e4c, 0xb0dd6895, 212); 
TEST_RR_OP( 54 , cmpeq16, 0x00000000, 0x00008000, 0x9ac41dc7, 216); 
TEST_RR_OP( 55 , cmpeq16, 0xffff0000, 0x8000547a, 0x80007341, 220); 
TEST_RR_OP( 56 , cmpeq16, 0x0000ffff, 0xffff8000, 0x00008000, 224); 
TEST_RR_OP( 57 , cmpeq16, 0xffff0000, 0x800011db, 0x80008000, 228); 
TEST_RR_OP( 58 , cmpeq16, 0x0000ffff, 0x00008000, 0xe8498000, 232); 
TEST_RR_OP( 59 , cmpeq16, 0x00000000, 0x00000000, 0x162f8000, 236); 
TEST_RR_OP( 60 , cmpeq16, 0x00000000, 0x0000ffff, 0x80000000, 240); 
TEST_RR_OP( 61 , cmpeq16, 0xffff0000, 0xffffffff, 0xffff8000, 244); 
TEST_RR_OP( 62 , cmpeq16, 0x00000000, 0x73a3ffff, 0x80000000, 248); 
TEST_RR_OP( 63 , cmpeq16, 0x00000000, 0x80008000, 0x00008bfc, 252); 
TEST_RR_OP( 64 , cmpeq16, 0x00000000, 0x80004c76, 0x591c0000, 256); 
TEST_RR_OP( 65 , cmpeq16, 0x00000000, 0x1e201e06, 0x80000000, 260); 
TEST_RR_OP( 66 , cmpeq16, 0xffff0000, 0x0000ffff, 0x00000000, 264); 
TEST_RR_OP( 67 , cmpeq16, 0x00000000, 0x0000ca3c, 0xffff6bbc, 268); 
TEST_RR_OP( 68 , cmpeq16, 0x00000000, 0x80008000, 0x81a1ffff, 272); 
TEST_RR_OP( 69 , cmpeq16, 0x00000000, 0x00001afc, 0x80000000, 276); 
TEST_RR_OP( 70 , cmpeq16, 0x00000000, 0xffff0000, 0xa2d45954, 280); 
TEST_RR_OP( 71 , cmpeq16, 0x00000000, 0x80007612, 0x119dffff, 284); 
TEST_RR_OP( 72 , cmpeq16, 0x00000000, 0x1e3fffff, 0xffff8000, 288); 
TEST_RR_OP( 73 , cmpeq16, 0x0000ffff, 0x00000000, 0xffff0000, 292); 
TEST_RR_OP( 74 , cmpeq16, 0x00000000, 0x0000173a, 0x80008000, 296); 
TEST_RR_OP( 75 , cmpeq16, 0x00000000, 0x00000000, 0x8000802b, 300); 
TEST_RR_OP( 76 , cmpeq16, 0x00000000, 0x00000000, 0x80008000, 304); 
TEST_RR_OP( 77 , cmpeq16, 0x00000000, 0x80000000, 0x0000ea63, 308); 
TEST_RR_OP( 78 , cmpeq16, 0x00000000, 0x0000ffff, 0xffffa985, 312); 
TEST_RR_OP( 79 , cmpeq16, 0x00000000, 0xaeafb5ea, 0x80000000, 316); 
TEST_RR_OP( 80 , cmpeq16, 0xffff0000, 0x0000ffff, 0x00008000, 320); 
TEST_RR_OP( 81 , cmpeq16, 0xffffffff, 0x8000ffff, 0x8000ffff, 324); 
TEST_RR_OP( 82 , cmpeq16, 0xffff0000, 0x80008000, 0x800033b1, 328); 
TEST_RR_OP( 83 , cmpeq16, 0x0000ffff, 0x80008000, 0x22438000, 332); 
TEST_RR_OP( 84 , cmpeq16, 0xffff0000, 0x0000ffff, 0x00002d71, 336); 
TEST_RR_OP( 85 , cmpeq16, 0x00000000, 0xffffffff, 0x00008000, 340); 
TEST_RR_OP( 86 , cmpeq16, 0x00000000, 0x80008000, 0xd551099d, 344); 
TEST_RR_OP( 87 , cmpeq16, 0x00000000, 0xffff12a8, 0x00008000, 348); 
TEST_RR_OP( 88 , cmpeq16, 0xffff0000, 0x8000ffff, 0x80000000, 352); 
TEST_RR_OP( 89 , cmpeq16, 0x00000000, 0x8000bfd5, 0x00008000, 356); 
TEST_RR_OP( 90 , cmpeq16, 0x0000ffff, 0x0bb50000, 0x80000000, 360); 
TEST_RR_OP( 91 , cmpeq16, 0xffff0000, 0xffff042f, 0xffff0000, 364); 
TEST_RR_OP( 92 , cmpeq16, 0xffffffff, 0x00000000, 0x00000000, 368); 
TEST_RR_OP( 93 , cmpeq16, 0x00000000, 0xffffffff, 0x00008000, 372); 
TEST_RR_OP( 94 , cmpeq16, 0x00000000, 0x80008000, 0xffff1ff1, 376); 
TEST_RR_OP( 95 , cmpeq16, 0xffffffff, 0x00000000, 0x00000000, 380); 
TEST_RR_OP( 96 , cmpeq16, 0x0000ffff, 0x00008000, 0x21748000, 384); 
TEST_RR_OP( 97 , cmpeq16, 0x00000000, 0x570195dd, 0xdc070000, 388); 
TEST_RR_OP( 98 , cmpeq16, 0xffff0000, 0x80008000, 0x80009863, 392); 
TEST_RR_OP( 99 , cmpeq16, 0x00000000, 0x1356ffff, 0x8000f6a7, 396); 
TEST_RR_OP( 100 , cmpeq16, 0xffff0000, 0x00000000, 0x00001e3f, 400); 
TEST_RR_OP( 101 , cmpeq16, 0xffff0000, 0x0000ffff, 0x00000000, 404); 
TEST_RR_OP( 102 , cmpeq16, 0xffffffff, 0x00000000, 0x00000000, 408); 
TEST_RR_OP( 103 , cmpeq16, 0xffff0000, 0x8000ffff, 0x80006869, 412); 
TEST_RR_OP( 104 , cmpeq16, 0x00000000, 0x0000ffff, 0x3cc50000, 416); 
TEST_RR_OP( 105 , cmpeq16, 0x0000ffff, 0x08368000, 0x00008000, 420); 
TEST_RR_OP( 106 , cmpeq16, 0x00000000, 0x80000000, 0x0000ffff, 424); 
TEST_RR_OP( 107 , cmpeq16, 0x00000000, 0xfffffc8a, 0x80008000, 428); 
TEST_RR_OP( 108 , cmpeq16, 0x00000000, 0x2c288000, 0x8000ffff, 432); 
TEST_RR_OP( 109 , cmpeq16, 0x00000000, 0x6f601a0d, 0x8000ffff, 436); 
TEST_RR_OP( 110 , cmpeq16, 0x00000000, 0x99c9ffff, 0x80008000, 440); 
TEST_RR_OP( 111 , cmpeq16, 0x00000000, 0xffff8000, 0x0000ffff, 444); 
TEST_RR_OP( 112 , cmpeq16, 0xffff0000, 0xffff8000, 0xffff0000, 448); 
TEST_RR_OP( 113 , cmpeq16, 0xffff0000, 0x80009329, 0x8000ffff, 452); 
TEST_RR_OP( 114 , cmpeq16, 0x00000000, 0x80000000, 0xffffffff, 456); 
TEST_RR_OP( 115 , cmpeq16, 0x00000000, 0x2d240000, 0x80008000, 460); 
TEST_RR_OP( 116 , cmpeq16, 0x00000000, 0x0000ffff, 0xffff0000, 464); 
TEST_RR_OP( 117 , cmpeq16, 0x00000000, 0xffff8000, 0x3de13939, 468); 
TEST_RR_OP( 118 , cmpeq16, 0x0000ffff, 0xffff0000, 0xf04e0000, 472); 
TEST_RR_OP( 119 , cmpeq16, 0x00000000, 0x00000000, 0x8000333a, 476); 
TEST_RR_OP( 120 , cmpeq16, 0x00000000, 0xb0100000, 0xfffff5b8, 480); 
TEST_RR_OP( 121 , cmpeq16, 0xffff0000, 0xffff8000, 0xffff44c6, 484); 
TEST_RR_OP( 122 , cmpeq16, 0x00000000, 0x00000000, 0x80008000, 488); 
TEST_RR_OP( 123 , cmpeq16, 0x00000000, 0xffff0000, 0xe434ffff, 492); 
TEST_RR_OP( 124 , cmpeq16, 0x00000000, 0x80008000, 0x66a0ffff, 496); 
TEST_RR_OP( 125 , cmpeq16, 0x00000000, 0x2408ffff, 0x00000000, 500); 
TEST_RR_OP( 126 , cmpeq16, 0xffff0000, 0xffff2437, 0xffffffff, 504); 
TEST_RR_OP( 127 , cmpeq16, 0x0000ffff, 0x0000ffff, 0x9452ffff, 508); 
TEST_RR_OP( 128 , cmpeq16, 0xffff0000, 0x8000d12c, 0x8000ffff, 512); 
TEST_RR_OP( 129 , cmpeq16, 0xffff0000, 0xffff0c44, 0xffffffff, 516); 
TEST_RR_OP( 130 , cmpeq16, 0x00000000, 0xffffffff, 0x5c17ed74, 520); 
TEST_RR_OP( 131 , cmpeq16, 0xffff0000, 0x0000ed12, 0x00001dde, 524); 
TEST_RR_OP( 132 , cmpeq16, 0x00000000, 0x87cb8000, 0x0000ffff, 528); 
TEST_RR_OP( 133 , cmpeq16, 0xffffffff, 0xffffffff, 0xffffffff, 532); 
TEST_RR_OP( 134 , cmpeq16, 0x00000000, 0x0000c28c, 0x7d818000, 536); 
TEST_RR_OP( 135 , cmpeq16, 0x00000000, 0xffff8000, 0x379affff, 540); 
TEST_RR_OP( 136 , cmpeq16, 0x0000ffff, 0x99998000, 0x9f038000, 544); 
TEST_RR_OP( 137 , cmpeq16, 0x00000000, 0xffff8000, 0x8000f71e, 548); 
TEST_RR_OP( 138 , cmpeq16, 0x00000000, 0x0000ffff, 0xffff8042, 552); 
TEST_RR_OP( 139 , cmpeq16, 0x00000000, 0x471c8000, 0xffffffff, 556); 
TEST_RR_OP( 140 , cmpeq16, 0x0000ffff, 0xffff8000, 0x00008000, 560); 
TEST_RR_OP( 141 , cmpeq16, 0x00000000, 0x0000ffff, 0xffff5226, 564); 
TEST_RR_OP( 142 , cmpeq16, 0x00000000, 0xffff0000, 0x8000226d, 568); 
TEST_RR_OP( 143 , cmpeq16, 0x0000ffff, 0x76000000, 0xffff0000, 572); 
TEST_RR_OP( 144 , cmpeq16, 0x00000000, 0xffffffff, 0x00000000, 576); 
TEST_RR_OP( 145 , cmpeq16, 0x00000000, 0x80000000, 0x00000c28, 580); 
TEST_RR_OP( 146 , cmpeq16, 0x00000000, 0x80000000, 0x4e9aa927, 584); 
TEST_RR_OP( 147 , cmpeq16, 0x00000000, 0xb10cffff, 0x00000000, 588); 
TEST_RR_OP( 148 , cmpeq16, 0x00000000, 0x800081fd, 0x0682ffff, 592); 
TEST_RR_OP( 149 , cmpeq16, 0x00000000, 0xffffd9c6, 0x09b5ffff, 596); 
TEST_RR_OP( 150 , cmpeq16, 0x00000000, 0x80002d3e, 0xffff8000, 600); 
TEST_RR_OP( 151 , cmpeq16, 0x0000ffff, 0x00008000, 0xffff8000, 604); 
TEST_RR_OP( 152 , cmpeq16, 0x00000000, 0xffff0000, 0xe6dfffff, 608); 
TEST_RR_OP( 153 , cmpeq16, 0x0000ffff, 0x80008000, 0xffff8000, 612); 
TEST_RR_OP( 154 , cmpeq16, 0x00000000, 0x34e48000, 0xffffffff, 616); 
TEST_RR_OP( 155 , cmpeq16, 0xffff0000, 0x00008000, 0x0000d1e9, 620); 
TEST_RR_OP( 156 , cmpeq16, 0x00000000, 0xffffe6dc, 0x0e7d0000, 624); 
TEST_RR_OP( 157 , cmpeq16, 0x00000000, 0x792a0000, 0x00008000, 628); 
TEST_RR_OP( 158 , cmpeq16, 0x00000000, 0x0000c471, 0x8000ffff, 632); 
TEST_RR_OP( 159 , cmpeq16, 0x0000ffff, 0xb9ddffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , cmpeq16, 0x00000000, 0x7f1d8000, 0x80000000, 640); 
TEST_RR_OP( 161 , cmpeq16, 0x00000000, 0xffff0000, 0x8000ffff, 644); 
TEST_RR_OP( 162 , cmpeq16, 0x00000000, 0xb9036ff1, 0xffff0000, 648); 
TEST_RR_OP( 163 , cmpeq16, 0x00000000, 0x00008000, 0xffffa75d, 652); 
TEST_RR_OP( 164 , cmpeq16, 0x00000000, 0x00008000, 0x4e24ffff, 656); 
TEST_RR_OP( 165 , cmpeq16, 0x00000000, 0x64c7e5cc, 0x0000ffff, 660); 
TEST_RR_OP( 166 , cmpeq16, 0x00000000, 0x8000ffff, 0x00000000, 664); 
TEST_RR_OP( 167 , cmpeq16, 0x00000000, 0x00000000, 0xffff8000, 668); 
TEST_RR_OP( 168 , cmpeq16, 0x0000ffff, 0x0000ffff, 0x8000ffff, 672); 
TEST_RR_OP( 169 , cmpeq16, 0x0000ffff, 0xffff0000, 0x00000000, 676); 
TEST_RR_OP( 170 , cmpeq16, 0x00000000, 0x8000ffff, 0xb3b32d82, 680); 
TEST_RR_OP( 171 , cmpeq16, 0x00000000, 0x747db719, 0x0000ffff, 684); 
TEST_RR_OP( 172 , cmpeq16, 0x00000000, 0x86060000, 0xffff8000, 688); 
TEST_RR_OP( 173 , cmpeq16, 0xffff0000, 0xffff0000, 0xffff8000, 692); 
TEST_RR_OP( 174 , cmpeq16, 0x00000000, 0x7bb78000, 0x800072a7, 696); 
TEST_RR_OP( 175 , cmpeq16, 0x00000000, 0x8000ffff, 0xb9c8098e, 700); 
TEST_RR_OP( 176 , cmpeq16, 0x00000000, 0x014279e1, 0x8000999c, 704); 
TEST_RR_OP( 177 , cmpeq16, 0xffff0000, 0x0000ffff, 0x00000000, 708); 
TEST_RR_OP( 178 , cmpeq16, 0x00000000, 0x0000ffff, 0x56ac0000, 712); 
TEST_RR_OP( 179 , cmpeq16, 0x00000000, 0xffff8000, 0x0000ffff, 716); 
TEST_RR_OP( 180 , cmpeq16, 0x00000000, 0x80000000, 0xffff8000, 720); 
TEST_RR_OP( 181 , cmpeq16, 0x00000000, 0x00008000, 0x80000000, 724); 
TEST_RR_OP( 182 , cmpeq16, 0x00000000, 0x000043a4, 0x8000e18d, 728); 
TEST_RR_OP( 183 , cmpeq16, 0x00000000, 0x80000000, 0xffff9943, 732); 
TEST_RR_OP( 184 , cmpeq16, 0x00000000, 0xadb74763, 0xffff8000, 736); 
TEST_RR_OP( 185 , cmpeq16, 0x00000000, 0x80008000, 0x6aa50000, 740); 
TEST_RR_OP( 186 , cmpeq16, 0x00000000, 0x00000000, 0x39fa8000, 744); 
TEST_RR_OP( 187 , cmpeq16, 0xffff0000, 0x00008000, 0x00000000, 748); 
TEST_RR_OP( 188 , cmpeq16, 0x0000ffff, 0x6d72ffff, 0x0000ffff, 752); 
TEST_RR_OP( 189 , cmpeq16, 0x0000ffff, 0x8000ffff, 0xffffffff, 756); 
TEST_RR_OP( 190 , cmpeq16, 0x00000000, 0x8181ffff, 0xffffe0b6, 760); 
TEST_RR_OP( 191 , cmpeq16, 0xffff0000, 0xfffff730, 0xffff8000, 764); 
TEST_RR_OP( 192 , cmpeq16, 0x00000000, 0xffff8000, 0x0000ffff, 768); 
TEST_RR_OP( 193 , cmpeq16, 0x0000ffff, 0xb7800000, 0x80000000, 772); 
TEST_RR_OP( 194 , cmpeq16, 0x00000000, 0xffff0000, 0x0000fc8b, 776); 
TEST_RR_OP( 195 , cmpeq16, 0x00000000, 0xb781ffff, 0x80002263, 780); 
TEST_RR_OP( 196 , cmpeq16, 0xffff0000, 0x00008000, 0x0000309f, 784); 
TEST_RR_OP( 197 , cmpeq16, 0x00000000, 0xc29e84d8, 0xffffffff, 788); 
TEST_RR_OP( 198 , cmpeq16, 0x00000000, 0xffc18000, 0xffc0ffff, 792); 
TEST_RR_OP( 199 , cmpeq16, 0xffff0000, 0x80000000, 0x8000ffff, 796); 

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
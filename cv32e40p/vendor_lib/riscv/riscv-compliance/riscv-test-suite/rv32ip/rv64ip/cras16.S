# See LICENSE for license details.
#*****************************************************************************
# cras16.S
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

TEST_RR_OP( 2 , cras16, 0xffff8001, 0x00008000, 0xffffffff, 8); 
TEST_RR_OP( 3 , cras16, 0x5bfe0000, 0x00008000, 0x80005bfe, 12); 
TEST_RR_OP( 4 , cras16, 0x715b8000, 0x80008000, 0x0000f15b, 16); 
TEST_RR_OP( 5 , cras16, 0x42a88001, 0x42a88000, 0xffff0000, 20); 
TEST_RR_OP( 6 , cras16, 0xec79ce21, 0xec7ace20, 0xffffffff, 24); 
TEST_RR_OP( 7 , cras16, 0x000007a5, 0x800007a5, 0x00008000, 28); 
TEST_RR_OP( 8 , cras16, 0x7fff5ded, 0xffff8000, 0x22138000, 32); 
TEST_RR_OP( 9 , cras16, 0xf56177b8, 0xfffffca9, 0x84f1f562, 36); 
TEST_RR_OP( 10 , cras16, 0xdc94fb43, 0xdc950000, 0x04bdffff, 40); 
TEST_RR_OP( 11 , cras16, 0x00002247, 0x0000ffff, 0xddb80000, 44); 
TEST_RR_OP( 12 , cras16, 0x3801d98a, 0x4e8d0000, 0x2676e974, 48); 
TEST_RR_OP( 13 , cras16, 0x80000000, 0x00000000, 0x00008000, 52); 
TEST_RR_OP( 14 , cras16, 0x0000ffff, 0x8000ffff, 0x00008000, 56); 
TEST_RR_OP( 15 , cras16, 0x80000001, 0x00000000, 0xffff8000, 60); 
TEST_RR_OP( 16 , cras16, 0x5345f921, 0x00008000, 0x86df5345, 64); 
TEST_RR_OP( 17 , cras16, 0x7fff7fff, 0xffffffff, 0x80008000, 68); 
TEST_RR_OP( 18 , cras16, 0x00000000, 0x0000ffff, 0xffff0000, 72); 
TEST_RR_OP( 19 , cras16, 0x48576896, 0x8000ffff, 0x9769c857, 76); 
TEST_RR_OP( 20 , cras16, 0x8000f9ff, 0x00000000, 0x06018000, 80); 
TEST_RR_OP( 21 , cras16, 0x7fff8000, 0x80000000, 0x8000ffff, 84); 
TEST_RR_OP( 22 , cras16, 0x9aa80000, 0x00008000, 0x80009aa8, 88); 
TEST_RR_OP( 23 , cras16, 0xffffd5ef, 0xffff55ef, 0x80000000, 92); 
TEST_RR_OP( 24 , cras16, 0x2dc09aea, 0x00008000, 0xe5162dc0, 96); 
TEST_RR_OP( 25 , cras16, 0xf3317fff, 0xf332ffff, 0x8000ffff, 100); 
TEST_RR_OP( 26 , cras16, 0x00005134, 0x00005134, 0x00000000, 104); 
TEST_RR_OP( 27 , cras16, 0x800029d7, 0x000029d6, 0xffff8000, 108); 
TEST_RR_OP( 28 , cras16, 0x7fff0000, 0x8000ffff, 0xffffffff, 112); 
TEST_RR_OP( 29 , cras16, 0x80006d1c, 0x8000ed1c, 0x80000000, 116); 
TEST_RR_OP( 30 , cras16, 0x00007fff, 0x8000ffff, 0x80008000, 120); 
TEST_RR_OP( 31 , cras16, 0x7fff8890, 0xffff888f, 0xffff8000, 124); 
TEST_RR_OP( 32 , cras16, 0x80008001, 0x80008000, 0xffff0000, 128); 
TEST_RR_OP( 33 , cras16, 0x7fff0cb9, 0xffff8cb9, 0x80008000, 132); 
TEST_RR_OP( 34 , cras16, 0xc4c7b754, 0x80000000, 0x48ac44c7, 136); 
TEST_RR_OP( 35 , cras16, 0x00002af3, 0x00000000, 0xd50d0000, 140); 
TEST_RR_OP( 36 , cras16, 0x6ecebc0d, 0x6ecebc0c, 0xffff0000, 144); 
TEST_RR_OP( 37 , cras16, 0x7fff28bb, 0x80002cad, 0x03f2ffff, 148); 
TEST_RR_OP( 38 , cras16, 0xe8080000, 0x68088000, 0x80008000, 152); 
TEST_RR_OP( 39 , cras16, 0x00007fff, 0x8000ffff, 0x80008000, 156); 
TEST_RR_OP( 40 , cras16, 0x00000000, 0x00000000, 0x00000000, 160); 
TEST_RR_OP( 41 , cras16, 0x6f060000, 0x00008000, 0x80006f06, 164); 
TEST_RR_OP( 42 , cras16, 0x361674ee, 0x2279f4ee, 0x8000139d, 168); 
TEST_RR_OP( 43 , cras16, 0x72f30001, 0x72f30000, 0xffff0000, 172); 
TEST_RR_OP( 44 , cras16, 0xb0b5e0df, 0x30b5ffff, 0x1f208000, 176); 
TEST_RR_OP( 45 , cras16, 0x5c440000, 0x8000ffff, 0xffffdc44, 180); 
TEST_RR_OP( 46 , cras16, 0x800070c0, 0x00000000, 0x8f408000, 184); 
TEST_RR_OP( 47 , cras16, 0x03758000, 0xffff0000, 0x80000376, 188); 
TEST_RR_OP( 48 , cras16, 0x52002f21, 0x52012f21, 0x0000ffff, 192); 
TEST_RR_OP( 49 , cras16, 0x00008000, 0x00000000, 0x80000000, 196); 
TEST_RR_OP( 50 , cras16, 0x78020001, 0x80000000, 0xfffff802, 200); 
TEST_RR_OP( 51 , cras16, 0x89727fff, 0x8972ffff, 0x80000000, 204); 
TEST_RR_OP( 52 , cras16, 0x2a7a66a8, 0x2a7aa8f1, 0x42490000, 208); 
TEST_RR_OP( 53 , cras16, 0x80000000, 0x0000ffff, 0xffff8000, 212); 
TEST_RR_OP( 54 , cras16, 0xdbb68000, 0xffff8000, 0x0000dbb7, 216); 
TEST_RR_OP( 55 , cras16, 0x458ec75a, 0x458fc759, 0xffffffff, 220); 
TEST_RR_OP( 56 , cras16, 0x736dffff, 0xffffffff, 0x0000736e, 224); 
TEST_RR_OP( 57 , cras16, 0x7fffffff, 0x8000ffff, 0x0000ffff, 228); 
TEST_RR_OP( 58 , cras16, 0x00008000, 0x80000000, 0x80008000, 232); 
TEST_RR_OP( 59 , cras16, 0xffffffff, 0xffffffff, 0x00000000, 236); 
TEST_RR_OP( 60 , cras16, 0x00004789, 0x0000c789, 0x80000000, 240); 
TEST_RR_OP( 61 , cras16, 0x7ed80000, 0xce688000, 0x8000b070, 244); 
TEST_RR_OP( 62 , cras16, 0x00008000, 0x80000000, 0x80008000, 248); 
TEST_RR_OP( 63 , cras16, 0x7fffd901, 0x80005901, 0x8000ffff, 252); 
TEST_RR_OP( 64 , cras16, 0x7fff0000, 0x8000ffff, 0xffffffff, 256); 
TEST_RR_OP( 65 , cras16, 0x00000000, 0x00008000, 0x80000000, 260); 
TEST_RR_OP( 66 , cras16, 0x80008001, 0x00008000, 0xffff8000, 264); 
TEST_RR_OP( 67 , cras16, 0x0000e412, 0x80004af3, 0x66e18000, 268); 
TEST_RR_OP( 68 , cras16, 0x80000000, 0x0000ffff, 0xffff8000, 272); 
TEST_RR_OP( 69 , cras16, 0x80000000, 0x00000000, 0x00008000, 276); 
TEST_RR_OP( 70 , cras16, 0xffff0000, 0xffff8000, 0x80000000, 280); 
TEST_RR_OP( 71 , cras16, 0x80000001, 0x00000000, 0xffff8000, 284); 
TEST_RR_OP( 72 , cras16, 0xfffea31f, 0xffffffff, 0x5ce0ffff, 288); 
TEST_RR_OP( 73 , cras16, 0x7fff8000, 0x80000000, 0x8000ffff, 292); 
TEST_RR_OP( 74 , cras16, 0x80000000, 0x8000ffff, 0xffff0000, 296); 
TEST_RR_OP( 75 , cras16, 0x3aeb74c2, 0xbaeb74c2, 0x00008000, 300); 
TEST_RR_OP( 76 , cras16, 0x7fffffff, 0xffffffff, 0x00008000, 304); 
TEST_RR_OP( 77 , cras16, 0x31a50000, 0xffff8000, 0x800031a6, 308); 
TEST_RR_OP( 78 , cras16, 0xffffd543, 0x0000ffff, 0x2abcffff, 312); 
TEST_RR_OP( 79 , cras16, 0x0000771f, 0x80000000, 0x88e18000, 316); 
TEST_RR_OP( 80 , cras16, 0x4a47ffff, 0x4a47ffff, 0x00000000, 320); 
TEST_RR_OP( 81 , cras16, 0xed7e88c7, 0x00000000, 0x7739ed7e, 324); 
TEST_RR_OP( 82 , cras16, 0x80000000, 0x80008000, 0x80000000, 328); 
TEST_RR_OP( 83 , cras16, 0xcf398001, 0x5b758000, 0xffff73c4, 332); 
TEST_RR_OP( 84 , cras16, 0x7fff811f, 0x8000f8b0, 0x7791ffff, 336); 
TEST_RR_OP( 85 , cras16, 0xce746a5c, 0xce75ea5c, 0x8000ffff, 340); 
TEST_RR_OP( 86 , cras16, 0x00000000, 0x8000ffff, 0xffff8000, 344); 
TEST_RR_OP( 87 , cras16, 0xffff269e, 0x0000269e, 0x0000ffff, 348); 
TEST_RR_OP( 88 , cras16, 0xee246405, 0x0000e405, 0x8000ee24, 352); 
TEST_RR_OP( 89 , cras16, 0xcea10000, 0xffff8000, 0x8000cea2, 356); 
TEST_RR_OP( 90 , cras16, 0x00000000, 0x80000000, 0x00008000, 360); 
TEST_RR_OP( 91 , cras16, 0x80000001, 0x80000000, 0xffff0000, 364); 
TEST_RR_OP( 92 , cras16, 0xd6688001, 0xd6688000, 0xffff0000, 368); 
TEST_RR_OP( 93 , cras16, 0xffffeb9c, 0xffffa899, 0xbcfd0000, 372); 
TEST_RR_OP( 94 , cras16, 0xed63ffff, 0xf0faffff, 0x0000fc69, 376); 
TEST_RR_OP( 95 , cras16, 0xffff8000, 0xffff0000, 0x80000000, 380); 
TEST_RR_OP( 96 , cras16, 0xce7b7fff, 0xce7bffff, 0x80000000, 384); 
TEST_RR_OP( 97 , cras16, 0x80000000, 0x80000000, 0x00000000, 388); 
TEST_RR_OP( 98 , cras16, 0x3ac032d3, 0x80008000, 0x4d2dbac0, 392); 
TEST_RR_OP( 99 , cras16, 0x5ba10000, 0x97288000, 0x8000c479, 396); 
TEST_RR_OP( 100 , cras16, 0x012f0001, 0x01300000, 0xffffffff, 400); 
TEST_RR_OP( 101 , cras16, 0xffff085a, 0x0000c44f, 0xbbf5ffff, 404); 
TEST_RR_OP( 102 , cras16, 0xffffb5ce, 0x00001dd3, 0x6805ffff, 408); 
TEST_RR_OP( 103 , cras16, 0xffff7fff, 0x0000ffff, 0x8000ffff, 412); 
TEST_RR_OP( 104 , cras16, 0xffff287a, 0xffffa87a, 0x80000000, 416); 
TEST_RR_OP( 105 , cras16, 0x80000000, 0x80000000, 0x00000000, 420); 
TEST_RR_OP( 106 , cras16, 0xffffb340, 0x00008000, 0xccc0ffff, 424); 
TEST_RR_OP( 107 , cras16, 0x0000f3a7, 0x000073a7, 0x80000000, 428); 
TEST_RR_OP( 108 , cras16, 0xe10f819c, 0x80000000, 0x7e64610f, 432); 
TEST_RR_OP( 109 , cras16, 0x0999b734, 0x89998000, 0xc8cc8000, 436); 
TEST_RR_OP( 110 , cras16, 0x28d00001, 0x28d10000, 0xffffffff, 440); 
TEST_RR_OP( 111 , cras16, 0x7fffa05e, 0xffff8000, 0xdfa28000, 444); 
TEST_RR_OP( 112 , cras16, 0x7fff8000, 0xffff0000, 0x80008000, 448); 
TEST_RR_OP( 113 , cras16, 0xffffb3d5, 0x0000b3d5, 0x0000ffff, 452); 
TEST_RR_OP( 114 , cras16, 0x2e7d0000, 0x2e7e0000, 0x0000ffff, 456); 
TEST_RR_OP( 115 , cras16, 0x8000ffff, 0x8000ffff, 0x00000000, 460); 
TEST_RR_OP( 116 , cras16, 0x76e58001, 0x76e68000, 0xffffffff, 464); 
TEST_RR_OP( 117 , cras16, 0xffff479d, 0x00006d92, 0x25f5ffff, 468); 
TEST_RR_OP( 118 , cras16, 0x80002bcb, 0x80002bca, 0xffff0000, 472); 
TEST_RR_OP( 119 , cras16, 0xb38b72f6, 0x8000ffff, 0x8d09338b, 476); 
TEST_RR_OP( 120 , cras16, 0x07890000, 0x078a8000, 0x8000ffff, 480); 
TEST_RR_OP( 121 , cras16, 0x21038000, 0x00008000, 0x00002103, 484); 
TEST_RR_OP( 122 , cras16, 0x45a382b3, 0x000082b2, 0xffff45a3, 488); 
TEST_RR_OP( 123 , cras16, 0xffff4bac, 0xffff8f63, 0x43b70000, 492); 
TEST_RR_OP( 124 , cras16, 0x4b50f7ae, 0x80008000, 0x8852cb50, 496); 
TEST_RR_OP( 125 , cras16, 0xfffe0bdd, 0xffff0000, 0xf423ffff, 500); 
TEST_RR_OP( 126 , cras16, 0xffff8000, 0x00000000, 0x8000ffff, 504); 
TEST_RR_OP( 127 , cras16, 0x7fff0000, 0xffffffff, 0xffff8000, 508); 
TEST_RR_OP( 128 , cras16, 0x34de6714, 0x658e6714, 0x0000cf50, 512); 
TEST_RR_OP( 129 , cras16, 0x0000e243, 0x00008000, 0x9dbd0000, 516); 
TEST_RR_OP( 130 , cras16, 0x80006579, 0x8000ffff, 0x9a860000, 520); 
TEST_RR_OP( 131 , cras16, 0x00005ec7, 0x80008fe6, 0x311f8000, 524); 
TEST_RR_OP( 132 , cras16, 0x7fff0000, 0x80000000, 0x0000ffff, 528); 
TEST_RR_OP( 133 , cras16, 0xfffe0000, 0xffffffff, 0xffffffff, 532); 
TEST_RR_OP( 134 , cras16, 0x00000000, 0x00000000, 0x00000000, 536); 
TEST_RR_OP( 135 , cras16, 0xffffc1c0, 0xffff08f8, 0x47380000, 540); 
TEST_RR_OP( 136 , cras16, 0x80003ad1, 0x00003ad0, 0xffff8000, 544); 
TEST_RR_OP( 137 , cras16, 0xffffe9fd, 0x00003d15, 0x5318ffff, 548); 
TEST_RR_OP( 138 , cras16, 0x7fffc07d, 0xffff2bc7, 0x6b4a8000, 552); 
TEST_RR_OP( 139 , cras16, 0xffffe0bc, 0xffff6806, 0x874a0000, 556); 
TEST_RR_OP( 140 , cras16, 0xffff065d, 0xffff065c, 0xffff0000, 560); 
TEST_RR_OP( 141 , cras16, 0x800021fb, 0x8000ed5c, 0xcb610000, 564); 
TEST_RR_OP( 142 , cras16, 0x00008001, 0x00008000, 0xffff0000, 568); 
TEST_RR_OP( 143 , cras16, 0x9d1df9ae, 0x9d1ef9ad, 0xffffffff, 572); 
TEST_RR_OP( 144 , cras16, 0x7fff0000, 0x80008000, 0x8000ffff, 576); 
TEST_RR_OP( 145 , cras16, 0x00000001, 0x80000000, 0xffff8000, 580); 
TEST_RR_OP( 146 , cras16, 0x7fff9a3f, 0x80009a3f, 0x0000ffff, 584); 
TEST_RR_OP( 147 , cras16, 0xffff7fff, 0xffffffff, 0x80000000, 588); 
TEST_RR_OP( 148 , cras16, 0x80000000, 0x00000000, 0x00008000, 592); 
TEST_RR_OP( 149 , cras16, 0xffff9e78, 0xffff8000, 0xe1880000, 596); 
TEST_RR_OP( 150 , cras16, 0x8ab98000, 0x0ab90000, 0x80008000, 600); 
TEST_RR_OP( 151 , cras16, 0xffff8000, 0x00008000, 0x0000ffff, 604); 
TEST_RR_OP( 152 , cras16, 0xfffe5da8, 0xffffffff, 0xa257ffff, 608); 
TEST_RR_OP( 153 , cras16, 0x0000ffff, 0x8000ffff, 0x00008000, 612); 
TEST_RR_OP( 154 , cras16, 0xffff1ece, 0x00001ecd, 0xffffffff, 616); 
TEST_RR_OP( 155 , cras16, 0x43cd8000, 0x00008000, 0x000043cd, 620); 
TEST_RR_OP( 156 , cras16, 0xa4128000, 0x24128000, 0x00008000, 624); 
TEST_RR_OP( 157 , cras16, 0xaae50001, 0xaae50000, 0xffff0000, 628); 
TEST_RR_OP( 158 , cras16, 0x3427ffff, 0x3428ffff, 0x0000ffff, 632); 
TEST_RR_OP( 159 , cras16, 0x00007abb, 0x0000a2dd, 0x28220000, 636); 
TEST_RR_OP( 160 , cras16, 0xb6a366a9, 0x36a3b51b, 0x4e728000, 640); 
TEST_RR_OP( 161 , cras16, 0xffff0000, 0x00000000, 0x0000ffff, 644); 
TEST_RR_OP( 162 , cras16, 0x80007fff, 0x0000ffff, 0x80008000, 648); 
TEST_RR_OP( 163 , cras16, 0x00000000, 0x8000ffff, 0xffff8000, 652); 
TEST_RR_OP( 164 , cras16, 0x80000000, 0x8000ffff, 0xffff0000, 656); 
TEST_RR_OP( 165 , cras16, 0xf23e8000, 0xf23e8000, 0x00000000, 660); 
TEST_RR_OP( 166 , cras16, 0x7fffc148, 0xffffc147, 0xffff8000, 664); 
TEST_RR_OP( 167 , cras16, 0x80008000, 0x00008000, 0x00008000, 668); 
TEST_RR_OP( 168 , cras16, 0x84ec0000, 0x80008000, 0x800004ec, 672); 
TEST_RR_OP( 169 , cras16, 0x80000000, 0x80008000, 0x80000000, 676); 
TEST_RR_OP( 170 , cras16, 0x7fff0000, 0x80008000, 0x8000ffff, 680); 
TEST_RR_OP( 171 , cras16, 0x9cb38001, 0xb5b48000, 0xffffe6ff, 684); 
TEST_RR_OP( 172 , cras16, 0xfd69cd33, 0x80008000, 0xb2cd7d69, 688); 
TEST_RR_OP( 173 , cras16, 0x03f48000, 0x80000000, 0x800083f4, 692); 
TEST_RR_OP( 174 , cras16, 0xedb28000, 0x80008000, 0x00006db2, 696); 
TEST_RR_OP( 175 , cras16, 0x7a643c6b, 0x8000bc6b, 0x8000fa64, 700); 
TEST_RR_OP( 176 , cras16, 0x7fff3c85, 0xffff0000, 0xc37b8000, 704); 
TEST_RR_OP( 177 , cras16, 0x7fff0000, 0x80008000, 0x8000ffff, 708); 
TEST_RR_OP( 178 , cras16, 0x914e7fff, 0x8000ffff, 0x8000114e, 712); 
TEST_RR_OP( 179 , cras16, 0xffff7ba0, 0x00000000, 0x8460ffff, 716); 
TEST_RR_OP( 180 , cras16, 0x00000000, 0x00008000, 0x80000000, 720); 
TEST_RR_OP( 181 , cras16, 0x7fff28ad, 0x80008000, 0x5753ffff, 724); 
TEST_RR_OP( 182 , cras16, 0xffff0000, 0x00008000, 0x8000ffff, 728); 
TEST_RR_OP( 183 , cras16, 0xb1b70000, 0x80000000, 0x000031b7, 732); 
TEST_RR_OP( 184 , cras16, 0x7fff8e44, 0x80000000, 0x71bcffff, 736); 
TEST_RR_OP( 185 , cras16, 0xdf320000, 0xffffffff, 0xffffdf33, 740); 
TEST_RR_OP( 186 , cras16, 0x42140000, 0x0000ffff, 0xffff4214, 744); 
TEST_RR_OP( 187 , cras16, 0x7fff9ded, 0xffffffff, 0x62128000, 748); 
TEST_RR_OP( 188 , cras16, 0x0000bd1a, 0x8000ffff, 0x42e58000, 752); 
TEST_RR_OP( 189 , cras16, 0x80002089, 0x8000a089, 0x80000000, 756); 
TEST_RR_OP( 190 , cras16, 0xbbd80000, 0x80008000, 0x80003bd8, 760); 
TEST_RR_OP( 191 , cras16, 0xb69b7ba1, 0xa03bffff, 0x845e1660, 764); 
TEST_RR_OP( 192 , cras16, 0x76c30000, 0x76c38000, 0x80000000, 768); 
TEST_RR_OP( 193 , cras16, 0xfffe5f1b, 0xffffdf1b, 0x8000ffff, 772); 
TEST_RR_OP( 194 , cras16, 0xbcea8000, 0xffff8000, 0x0000bceb, 776); 
TEST_RR_OP( 195 , cras16, 0xffff9ab4, 0x00001ab4, 0x8000ffff, 780); 
TEST_RR_OP( 196 , cras16, 0x000065ce, 0x80008000, 0x1a328000, 784); 
TEST_RR_OP( 197 , cras16, 0x80008000, 0x00008000, 0x00008000, 788); 
TEST_RR_OP( 198 , cras16, 0x7fff0000, 0xffff0000, 0x00008000, 792); 
TEST_RR_OP( 199 , cras16, 0x5ccb8000, 0x48f70000, 0x800013d4, 796); 

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
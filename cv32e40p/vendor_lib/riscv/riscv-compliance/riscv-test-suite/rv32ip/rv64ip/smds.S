# See LICENSE for license details.
#*****************************************************************************
# smds.S
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

TEST_RR_OP( 2 , smds, 0x00008000, 0xffffffff, 0x80000000, 8); 
TEST_RR_OP( 3 , smds, 0x19f60000, 0x80000000, 0xcc1420f3, 12); 
TEST_RR_OP( 4 , smds, 0x00000000, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , smds, 0x00000000, 0x80000000, 0x00000000, 20); 
TEST_RR_OP( 6 , smds, 0x40000000, 0x80000000, 0x80000000, 24); 
TEST_RR_OP( 7 , smds, 0x00000000, 0x00000000, 0x80000000, 28); 
TEST_RR_OP( 8 , smds, 0x00000000, 0x00000000, 0x80000000, 32); 
TEST_RR_OP( 9 , smds, 0x00000000, 0x16ddc086, 0x00000000, 36); 
TEST_RR_OP( 10 , smds, 0x00008000, 0x80000000, 0xffffffff, 40); 
TEST_RR_OP( 11 , smds, 0x40000000, 0x80000000, 0x80000000, 44); 
TEST_RR_OP( 12 , smds, 0x40000000, 0x80000000, 0x80000000, 48); 
TEST_RR_OP( 13 , smds, 0x00000000, 0x00000000, 0x80000000, 52); 
TEST_RR_OP( 14 , smds, 0x00000000, 0xace07ca7, 0x00000000, 56); 
TEST_RR_OP( 15 , smds, 0x00000000, 0x80000000, 0x00000000, 60); 
TEST_RR_OP( 16 , smds, 0x00000000, 0x00000000, 0xae07cb9f, 64); 
TEST_RR_OP( 17 , smds, 0x00000000, 0xffffffff, 0x00000000, 68); 
TEST_RR_OP( 18 , smds, 0x00000000, 0x00000000, 0xffffffff, 72); 
TEST_RR_OP( 19 , smds, 0x00008000, 0xffffffff, 0x80000000, 76); 
TEST_RR_OP( 20 , smds, 0x00000000, 0x00000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , smds, 0xe1cb0000, 0x3c6aa8e3, 0x80000000, 84); 
TEST_RR_OP( 22 , smds, 0x00008000, 0x80000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , smds, 0x00000000, 0xb92267f7, 0x00000000, 92); 
TEST_RR_OP( 24 , smds, 0x00006219, 0xffffffff, 0xc2ae24c7, 96); 
TEST_RR_OP( 25 , smds, 0xffffedb0, 0x0a0ff7bf, 0xffffffff, 100); 
TEST_RR_OP( 26 , smds, 0x40000000, 0x80000000, 0x80000000, 104); 
TEST_RR_OP( 27 , smds, 0x00000000, 0x00000000, 0x00000000, 108); 
TEST_RR_OP( 28 , smds, 0x06d039ed, 0xd6538cbb, 0x60873208, 112); 
TEST_RR_OP( 29 , smds, 0x40000000, 0x80000000, 0x80000000, 116); 
TEST_RR_OP( 30 , smds, 0x00000000, 0x00000000, 0x00000000, 120); 
TEST_RR_OP( 31 , smds, 0xffffdcc8, 0xffffffff, 0xecfbc9c3, 124); 
TEST_RR_OP( 32 , smds, 0xf87b0000, 0x0f0a0ed7, 0x80000000, 128); 
TEST_RR_OP( 33 , smds, 0x00008000, 0xffffffff, 0x80000000, 132); 
TEST_RR_OP( 34 , smds, 0x00008000, 0xffffffff, 0x80000000, 136); 
TEST_RR_OP( 35 , smds, 0xffff6740, 0x76e3de23, 0xffffffff, 140); 
TEST_RR_OP( 36 , smds, 0xcfb58000, 0x6095d301, 0x80000000, 144); 
TEST_RR_OP( 37 , smds, 0x22528000, 0x80000000, 0xbb5b1dbe, 148); 
TEST_RR_OP( 38 , smds, 0x00008000, 0x80000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , smds, 0x00008000, 0x80000000, 0xffffffff, 156); 
TEST_RR_OP( 40 , smds, 0x00008000, 0x80000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , smds, 0x00000000, 0x80000000, 0x00000000, 164); 
TEST_RR_OP( 42 , smds, 0x00000000, 0x00000000, 0xcce31f88, 168); 
TEST_RR_OP( 43 , smds, 0x00000000, 0x00000000, 0x00000000, 172); 
TEST_RR_OP( 44 , smds, 0x00000000, 0x00000000, 0x00000000, 176); 
TEST_RR_OP( 45 , smds, 0xffff96f4, 0x5abdf1b1, 0xffffffff, 180); 
TEST_RR_OP( 46 , smds, 0x00000000, 0x00000000, 0x80000000, 184); 
TEST_RR_OP( 47 , smds, 0xc0d38000, 0x7e59e763, 0x80000000, 188); 
TEST_RR_OP( 48 , smds, 0x00000000, 0x00000000, 0x69cfd02f, 192); 
TEST_RR_OP( 49 , smds, 0x004e220e, 0xb949f15f, 0xfa9feb57, 196); 
TEST_RR_OP( 50 , smds, 0x00008000, 0xffffffff, 0x80000000, 200); 
TEST_RR_OP( 51 , smds, 0x00000000, 0xffffffff, 0xffffffff, 204); 
TEST_RR_OP( 52 , smds, 0x00000000, 0x00000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , smds, 0x00000000, 0xffffffff, 0xffffffff, 212); 
TEST_RR_OP( 54 , smds, 0x00000000, 0xffffffff, 0x00000000, 216); 
TEST_RR_OP( 55 , smds, 0xf4738000, 0x1719f9cd, 0x80000000, 220); 
TEST_RR_OP( 56 , smds, 0x00000000, 0xffffffff, 0x00000000, 224); 
TEST_RR_OP( 57 , smds, 0xffff765c, 0x27549db0, 0xffffffff, 228); 
TEST_RR_OP( 58 , smds, 0x00000000, 0x00000000, 0x486bb0c8, 232); 
TEST_RR_OP( 59 , smds, 0x00008000, 0xffffffff, 0x80000000, 236); 
TEST_RR_OP( 60 , smds, 0x00000000, 0xffffffff, 0x00000000, 240); 
TEST_RR_OP( 61 , smds, 0x06428000, 0xf37ba25a, 0x80000000, 244); 
TEST_RR_OP( 62 , smds, 0xf2271cd0, 0x22e4a08c, 0xc7ccef68, 248); 
TEST_RR_OP( 63 , smds, 0x00000000, 0x00000000, 0x00000000, 252); 
TEST_RR_OP( 64 , smds, 0xf4730b25, 0xc9b9a627, 0x0457e1b6, 256); 
TEST_RR_OP( 65 , smds, 0x00000000, 0x00000000, 0xf2aebf57, 260); 
TEST_RR_OP( 66 , smds, 0x00000000, 0xffffffff, 0xffffffff, 264); 
TEST_RR_OP( 67 , smds, 0x00008000, 0xffffffff, 0x80000000, 268); 
TEST_RR_OP( 68 , smds, 0x102f8000, 0x80000000, 0xdfa10ff3, 272); 
TEST_RR_OP( 69 , smds, 0x00000000, 0x00000000, 0x00000000, 276); 
TEST_RR_OP( 70 , smds, 0xffffc6db, 0xffffffff, 0x62462921, 280); 
TEST_RR_OP( 71 , smds, 0xe50f8000, 0x35e1ff7b, 0x80000000, 284); 
TEST_RR_OP( 72 , smds, 0x00000000, 0x00000000, 0x5f00e8a5, 288); 
TEST_RR_OP( 73 , smds, 0x00000000, 0x80000000, 0x00000000, 292); 
TEST_RR_OP( 74 , smds, 0x00008000, 0x80000000, 0xffffffff, 296); 
TEST_RR_OP( 75 , smds, 0xdf000000, 0x42002883, 0x80000000, 300); 
TEST_RR_OP( 76 , smds, 0x00000000, 0x00000000, 0xffffffff, 304); 
TEST_RR_OP( 77 , smds, 0x080142c6, 0xb3713093, 0xc7692f01, 308); 
TEST_RR_OP( 78 , smds, 0x00000000, 0x00000000, 0x8ee44829, 312); 
TEST_RR_OP( 79 , smds, 0x00000000, 0x80000000, 0x00000000, 316); 
TEST_RR_OP( 80 , smds, 0x40000000, 0x80000000, 0x80000000, 320); 
TEST_RR_OP( 81 , smds, 0x00000000, 0xffffffff, 0xffffffff, 324); 
TEST_RR_OP( 82 , smds, 0x40000000, 0x80000000, 0x80000000, 328); 
TEST_RR_OP( 83 , smds, 0x00000000, 0x3682baa1, 0x00000000, 332); 
TEST_RR_OP( 84 , smds, 0x00000000, 0x00000000, 0x00000000, 336); 
TEST_RR_OP( 85 , smds, 0x00008000, 0x80000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , smds, 0x00000000, 0x00000000, 0x7f39900a, 344); 
TEST_RR_OP( 87 , smds, 0x00000000, 0x00000000, 0x80000000, 348); 
TEST_RR_OP( 88 , smds, 0x00008000, 0x80000000, 0xffffffff, 352); 
TEST_RR_OP( 89 , smds, 0x00000000, 0x00000000, 0x00000000, 356); 
TEST_RR_OP( 90 , smds, 0x00000000, 0xffffffff, 0x00000000, 360); 
TEST_RR_OP( 91 , smds, 0x00000000, 0xffffffff, 0xffffffff, 364); 
TEST_RR_OP( 92 , smds, 0xe58f8000, 0x34e1ee47, 0x80000000, 368); 
TEST_RR_OP( 93 , smds, 0x00008000, 0x80000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , smds, 0x00000000, 0x00000000, 0x00000000, 376); 
TEST_RR_OP( 95 , smds, 0x00008000, 0x80000000, 0xffffffff, 380); 
TEST_RR_OP( 96 , smds, 0xffff4def, 0x6137af26, 0xffffffff, 384); 
TEST_RR_OP( 97 , smds, 0x000084e3, 0xaba9308c, 0xffffffff, 388); 
TEST_RR_OP( 98 , smds, 0x00000000, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , smds, 0x00000000, 0x3147f359, 0x00000000, 396); 
TEST_RR_OP( 100 , smds, 0x0a9ec712, 0xf528e963, 0x86003dba, 400); 
TEST_RR_OP( 101 , smds, 0x40000000, 0x80000000, 0x80000000, 404); 
TEST_RR_OP( 102 , smds, 0x00008000, 0xffffffff, 0x80000000, 408); 
TEST_RR_OP( 103 , smds, 0x00000000, 0x00000000, 0x80000000, 412); 
TEST_RR_OP( 104 , smds, 0x0000137e, 0xffffffff, 0x3a6f4ded, 416); 
TEST_RR_OP( 105 , smds, 0x00000000, 0xffffffff, 0xffffffff, 420); 
TEST_RR_OP( 106 , smds, 0x00000000, 0xffffffff, 0x00000000, 424); 
TEST_RR_OP( 107 , smds, 0x00000000, 0xd76fa844, 0x00000000, 428); 
TEST_RR_OP( 108 , smds, 0x11b30000, 0x80000000, 0xdc9a3f4b, 432); 
TEST_RR_OP( 109 , smds, 0x40000000, 0x80000000, 0x80000000, 436); 
TEST_RR_OP( 110 , smds, 0xffffb365, 0x6a681dcd, 0xffffffff, 440); 
TEST_RR_OP( 111 , smds, 0x00960000, 0xfed44896, 0x80000000, 444); 
TEST_RR_OP( 112 , smds, 0x00000000, 0x1dfb5f66, 0x00000000, 448); 
TEST_RR_OP( 113 , smds, 0x00000000, 0xffffffff, 0x00000000, 452); 
TEST_RR_OP( 114 , smds, 0xfffffa54, 0x317b2bcf, 0xffffffff, 456); 
TEST_RR_OP( 115 , smds, 0xffff6528, 0x3df1a319, 0xffffffff, 460); 
TEST_RR_OP( 116 , smds, 0x00000000, 0x00000000, 0xe6519594, 464); 
TEST_RR_OP( 117 , smds, 0x00000000, 0xffffffff, 0xffffffff, 468); 
TEST_RR_OP( 118 , smds, 0x40000000, 0x80000000, 0x80000000, 472); 
TEST_RR_OP( 119 , smds, 0x00008000, 0xffffffff, 0x80000000, 476); 
TEST_RR_OP( 120 , smds, 0x00000000, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , smds, 0x0000b89f, 0xffffffff, 0x811c39bb, 484); 
TEST_RR_OP( 122 , smds, 0x40000000, 0x80000000, 0x80000000, 488); 
TEST_RR_OP( 123 , smds, 0xed40d11b, 0xb6fcacff, 0x0d7cd20b, 492); 
TEST_RR_OP( 124 , smds, 0x00000000, 0x00000000, 0xffffffff, 496); 
TEST_RR_OP( 125 , smds, 0x06440000, 0x80000000, 0xf37839a4, 500); 
TEST_RR_OP( 126 , smds, 0x00000000, 0x00000000, 0xe409efb8, 504); 
TEST_RR_OP( 127 , smds, 0x00008000, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , smds, 0x40000000, 0x80000000, 0x80000000, 512); 
TEST_RR_OP( 129 , smds, 0x00008000, 0x80000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , smds, 0x00000000, 0xffffffff, 0xffffffff, 520); 
TEST_RR_OP( 131 , smds, 0x00000000, 0xffffffff, 0x00000000, 524); 
TEST_RR_OP( 132 , smds, 0x40000000, 0x80000000, 0x80000000, 528); 
TEST_RR_OP( 133 , smds, 0xeb9fbb37, 0xe2ebc4af, 0x0da5aec0, 532); 
TEST_RR_OP( 134 , smds, 0xfd1a8000, 0x80000000, 0x05cb96d5, 536); 
TEST_RR_OP( 135 , smds, 0x00000000, 0x00000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , smds, 0x00008000, 0x80000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , smds, 0x00000000, 0xffffffff, 0xffffffff, 548); 
TEST_RR_OP( 138 , smds, 0x00000000, 0x00000000, 0x00000000, 552); 
TEST_RR_OP( 139 , smds, 0x00008000, 0x80000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , smds, 0x00008000, 0x80000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , smds, 0xf3408000, 0x197fea10, 0x80000000, 564); 
TEST_RR_OP( 142 , smds, 0x00000000, 0x00000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , smds, 0x18890000, 0x80000000, 0xceee649d, 572); 
TEST_RR_OP( 144 , smds, 0x00008000, 0x80000000, 0xffffffff, 576); 
TEST_RR_OP( 145 , smds, 0x0000a844, 0xffffffff, 0xd3687bac, 580); 
TEST_RR_OP( 146 , smds, 0xffff7dbf, 0xffffffff, 0x69e2e7a1, 584); 
TEST_RR_OP( 147 , smds, 0x40000000, 0x80000000, 0x80000000, 588); 
TEST_RR_OP( 148 , smds, 0x00000000, 0x00000000, 0x80000000, 592); 
TEST_RR_OP( 149 , smds, 0xffffbc24, 0xffffffff, 0x01d0bdf4, 596); 
TEST_RR_OP( 150 , smds, 0x00000000, 0xffffffff, 0xffffffff, 600); 
TEST_RR_OP( 151 , smds, 0x00002281, 0x4afb6d7c, 0xffffffff, 604); 
TEST_RR_OP( 152 , smds, 0x00008000, 0x80000000, 0xffffffff, 608); 
TEST_RR_OP( 153 , smds, 0x00000000, 0xffffffff, 0x00000000, 612); 
TEST_RR_OP( 154 , smds, 0x00000000, 0x80000000, 0x00000000, 616); 
TEST_RR_OP( 155 , smds, 0x00008000, 0xffffffff, 0x80000000, 620); 
TEST_RR_OP( 156 , smds, 0x00000000, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , smds, 0x1f3e8000, 0x80000000, 0xc183f21d, 628); 
TEST_RR_OP( 158 , smds, 0x00000000, 0xae24f22b, 0x00000000, 632); 
TEST_RR_OP( 159 , smds, 0x00000000, 0xffffffff, 0x00000000, 636); 
TEST_RR_OP( 160 , smds, 0x00000000, 0x00000000, 0x80000000, 640); 
TEST_RR_OP( 161 , smds, 0x00008000, 0x80000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , smds, 0x0b8a5168, 0x21d187d6, 0x59d2ff4f, 648); 
TEST_RR_OP( 163 , smds, 0x00000000, 0x00000000, 0x00000000, 652); 
TEST_RR_OP( 164 , smds, 0x00000000, 0xcbd68379, 0x00000000, 656); 
TEST_RR_OP( 165 , smds, 0x00000000, 0x00000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , smds, 0x00000000, 0xdea5a9d1, 0x00000000, 664); 
TEST_RR_OP( 167 , smds, 0xf423ed45, 0xcb11faf5, 0x3815f2a0, 668); 
TEST_RR_OP( 168 , smds, 0x00000000, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , smds, 0x00000000, 0x80000000, 0x00000000, 676); 
TEST_RR_OP( 170 , smds, 0xffffb0eb, 0xede89ed3, 0xffffffff, 680); 
TEST_RR_OP( 171 , smds, 0x00000000, 0xffffffff, 0x00000000, 684); 
TEST_RR_OP( 172 , smds, 0x00008000, 0xffffffff, 0x80000000, 688); 
TEST_RR_OP( 173 , smds, 0x00008000, 0x80000000, 0xffffffff, 692); 
TEST_RR_OP( 174 , smds, 0xf1a9263c, 0x2344c4d1, 0x317ea47c, 696); 
TEST_RR_OP( 175 , smds, 0x08da167b, 0x0d0fe93f, 0x53a93394, 700); 
TEST_RR_OP( 176 , smds, 0x00000000, 0xffffffff, 0x00000000, 704); 
TEST_RR_OP( 177 , smds, 0x00000000, 0x00000000, 0xffffffff, 708); 
TEST_RR_OP( 178 , smds, 0x00000000, 0x00000000, 0x80000000, 712); 
TEST_RR_OP( 179 , smds, 0x00000000, 0x78434160, 0x00000000, 716); 
TEST_RR_OP( 180 , smds, 0x00000000, 0x00000000, 0xee490944, 720); 
TEST_RR_OP( 181 , smds, 0x00000000, 0x80000000, 0x00000000, 724); 
TEST_RR_OP( 182 , smds, 0x19730000, 0x80000000, 0xcd1a99f3, 728); 
TEST_RR_OP( 183 , smds, 0x00008000, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , smds, 0xd3e90000, 0x80000000, 0x582e21d2, 736); 
TEST_RR_OP( 185 , smds, 0x00000000, 0x80000000, 0x00000000, 740); 
TEST_RR_OP( 186 , smds, 0x000081ab, 0xffffffff, 0x88ac0a57, 744); 
TEST_RR_OP( 187 , smds, 0x00000000, 0x80000000, 0x00000000, 748); 
TEST_RR_OP( 188 , smds, 0x00000000, 0x00000000, 0x00000000, 752); 
TEST_RR_OP( 189 , smds, 0x00000000, 0x80000000, 0x00000000, 756); 
TEST_RR_OP( 190 , smds, 0x40000000, 0x80000000, 0x80000000, 760); 
TEST_RR_OP( 191 , smds, 0x00000000, 0x8136a0b3, 0x00000000, 764); 
TEST_RR_OP( 192 , smds, 0x00000000, 0xeca5982e, 0x00000000, 768); 
TEST_RR_OP( 193 , smds, 0x164f0000, 0x80000000, 0xd3621c57, 772); 
TEST_RR_OP( 194 , smds, 0x00008000, 0xffffffff, 0x80000000, 776); 
TEST_RR_OP( 195 , smds, 0x40000000, 0x80000000, 0x80000000, 780); 
TEST_RR_OP( 196 , smds, 0xc64a0000, 0x736c4ae8, 0x80000000, 784); 
TEST_RR_OP( 197 , smds, 0xe1e64f4a, 0x37990f21, 0x911965c7, 788); 
TEST_RR_OP( 198 , smds, 0x1c288000, 0xc7af6c74, 0x80000000, 792); 
TEST_RR_OP( 199 , smds, 0x00008000, 0xffffffff, 0x80000000, 796); 

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
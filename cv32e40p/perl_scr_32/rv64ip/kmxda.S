# See LICENSE for license details.
#*****************************************************************************
# kmxda.S
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

TEST_RR_OP( 2 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 8); 
TEST_RR_OP( 3 , kmxda, 0x204c8000, 0x80000000, 0x1fefbf67, 12); 
TEST_RR_OP( 4 , kmxda, 0x00000000, 0x80000000, 0x00000000, 16); 
TEST_RR_OP( 5 , kmxda, 0x00000000, 0x80000000, 0x00000000, 20); 
TEST_RR_OP( 6 , kmxda, 0x00000000, 0x80000000, 0x80000000, 24); 
TEST_RR_OP( 7 , kmxda, 0x00000000, 0x00000000, 0x00000000, 28); 
TEST_RR_OP( 8 , kmxda, 0x00000000, 0x80000000, 0x80000000, 32); 
TEST_RR_OP( 9 , kmxda, 0xffffbf00, 0xda896677, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmxda, 0x00000000, 0x00000000, 0x80000000, 40); 
TEST_RR_OP( 11 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmxda, 0xffffd03c, 0x0c942330, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmxda, 0x00000000, 0x5562d785, 0x00000000, 52); 
TEST_RR_OP( 14 , kmxda, 0x00000000, 0x00000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 64); 
TEST_RR_OP( 17 , kmxda, 0x00000000, 0x00000000, 0x80000000, 68); 
TEST_RR_OP( 18 , kmxda, 0x00000000, 0x80000000, 0x00000000, 72); 
TEST_RR_OP( 19 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmxda, 0xe1df5135, 0x7c9b57bc, 0x24d0a82f, 80); 
TEST_RR_OP( 21 , kmxda, 0xffff6301, 0xffffffff, 0x6ba2315d, 84); 
TEST_RR_OP( 22 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 92); 
TEST_RR_OP( 24 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmxda, 0x00000000, 0xd390eef4, 0x00000000, 100); 
TEST_RR_OP( 26 , kmxda, 0xc43b0000, 0x80000000, 0x01c5778a, 104); 
TEST_RR_OP( 27 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 108); 
TEST_RR_OP( 28 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , kmxda, 0x00000000, 0x00000000, 0x0ed10b8e, 116); 
TEST_RR_OP( 30 , kmxda, 0x00000000, 0x80000000, 0x80000000, 120); 
TEST_RR_OP( 31 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 124); 
TEST_RR_OP( 32 , kmxda, 0x00000000, 0x80000000, 0x00000000, 128); 
TEST_RR_OP( 33 , kmxda, 0x00000000, 0x00000000, 0x00000000, 132); 
TEST_RR_OP( 34 , kmxda, 0x0ed88000, 0xdcb4e24f, 0x80000000, 136); 
TEST_RR_OP( 35 , kmxda, 0x08ed0000, 0x80000000, 0x2f70ee26, 140); 
TEST_RR_OP( 36 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmxda, 0x00000000, 0x00000000, 0x80000000, 156); 
TEST_RR_OP( 40 , kmxda, 0x0d080000, 0x0866e5f0, 0x80000000, 160); 
TEST_RR_OP( 41 , kmxda, 0x0d6a6e1a, 0x6d0b2139, 0xf9522188, 164); 
TEST_RR_OP( 42 , kmxda, 0x00000000, 0x1a8a8612, 0x00000000, 168); 
TEST_RR_OP( 43 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmxda, 0x00000000, 0x00000000, 0x80000000, 176); 
TEST_RR_OP( 45 , kmxda, 0x3c208000, 0x346b87bf, 0x80000000, 180); 
TEST_RR_OP( 46 , kmxda, 0x0de88000, 0x80000000, 0x7d1ae42f, 184); 
TEST_RR_OP( 47 , kmxda, 0x00000000, 0x2db6625f, 0x00000000, 188); 
TEST_RR_OP( 48 , kmxda, 0x00000000, 0x80000000, 0x00000000, 192); 
TEST_RR_OP( 49 , kmxda, 0x00002762, 0xffffffff, 0x51f586a9, 196); 
TEST_RR_OP( 50 , kmxda, 0xd10e8000, 0x535f5de3, 0x80000000, 200); 
TEST_RR_OP( 51 , kmxda, 0x00000000, 0x80000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 208); 
TEST_RR_OP( 53 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , kmxda, 0x00000000, 0x38e09dad, 0x00000000, 216); 
TEST_RR_OP( 55 , kmxda, 0x00000000, 0x5808a72b, 0x00000000, 220); 
TEST_RR_OP( 56 , kmxda, 0x00000000, 0x00000000, 0x00000000, 224); 
TEST_RR_OP( 57 , kmxda, 0x00000000, 0x80000000, 0x00000000, 228); 
TEST_RR_OP( 58 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kmxda, 0xd5960000, 0x80000000, 0xac6054d4, 236); 
TEST_RR_OP( 60 , kmxda, 0x00000000, 0x80000000, 0x80000000, 240); 
TEST_RR_OP( 61 , kmxda, 0x00000000, 0x80000000, 0x80000000, 244); 
TEST_RR_OP( 62 , kmxda, 0xffffa910, 0xe3c1732f, 0xffffffff, 248); 
TEST_RR_OP( 63 , kmxda, 0x00000000, 0x00000000, 0x80000000, 252); 
TEST_RR_OP( 64 , kmxda, 0xffffcd0e, 0xd53c5db6, 0xffffffff, 256); 
TEST_RR_OP( 65 , kmxda, 0xc829ee91, 0x17eb9bb1, 0x789ea439, 260); 
TEST_RR_OP( 66 , kmxda, 0xf9338d94, 0x5e6e9c51, 0xb3269c71, 264); 
TEST_RR_OP( 67 , kmxda, 0x00000000, 0x1e8cd3d5, 0x00000000, 268); 
TEST_RR_OP( 68 , kmxda, 0x002b0000, 0xcf84ffaa, 0x80000000, 272); 
TEST_RR_OP( 69 , kmxda, 0xf10f8000, 0x80000000, 0x8a6e1de1, 276); 
TEST_RR_OP( 70 , kmxda, 0x00001bd2, 0xffffffff, 0x9f6844c6, 280); 
TEST_RR_OP( 71 , kmxda, 0x00000000, 0x00000000, 0x80000000, 284); 
TEST_RR_OP( 72 , kmxda, 0x00000000, 0x4bb8c293, 0x00000000, 288); 
TEST_RR_OP( 73 , kmxda, 0xffff7895, 0xffffffff, 0x5ab22cb9, 292); 
TEST_RR_OP( 74 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 296); 
TEST_RR_OP( 75 , kmxda, 0xffff5ed1, 0xffffffff, 0x4ba85587, 300); 
TEST_RR_OP( 76 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 304); 
TEST_RR_OP( 77 , kmxda, 0x00000000, 0x80000000, 0x00000000, 308); 
TEST_RR_OP( 78 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 312); 
TEST_RR_OP( 79 , kmxda, 0xf30f0000, 0x80000000, 0x92f519e2, 316); 
TEST_RR_OP( 80 , kmxda, 0x00000000, 0x00000000, 0x46f48df7, 320); 
TEST_RR_OP( 81 , kmxda, 0xffffbb89, 0xffffffff, 0x4cb8f7bf, 324); 
TEST_RR_OP( 82 , kmxda, 0x00000000, 0x00000000, 0x1db913b7, 328); 
TEST_RR_OP( 83 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 332); 
TEST_RR_OP( 84 , kmxda, 0x0000a375, 0xc0b59bd6, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmxda, 0x29c90000, 0x80000000, 0xb1afac6e, 340); 
TEST_RR_OP( 86 , kmxda, 0xe5020000, 0x80000000, 0xf7ba35fc, 344); 
TEST_RR_OP( 87 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 348); 
TEST_RR_OP( 88 , kmxda, 0xd72f8000, 0x30f751a1, 0x80000000, 352); 
TEST_RR_OP( 89 , kmxda, 0x00000000, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , kmxda, 0x00000000, 0x80000000, 0x80000000, 360); 
TEST_RR_OP( 91 , kmxda, 0x00000000, 0x80000000, 0x80000000, 364); 
TEST_RR_OP( 92 , kmxda, 0x31eb8000, 0x3a7e9c29, 0x80000000, 368); 
TEST_RR_OP( 93 , kmxda, 0x2bde8000, 0x9d33a843, 0x80000000, 372); 
TEST_RR_OP( 94 , kmxda, 0x00000000, 0x00000000, 0x00000000, 376); 
TEST_RR_OP( 95 , kmxda, 0x00000000, 0x00000000, 0x5cb07fa4, 380); 
TEST_RR_OP( 96 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 384); 
TEST_RR_OP( 97 , kmxda, 0x00000000, 0x00000000, 0x00000000, 388); 
TEST_RR_OP( 98 , kmxda, 0x00000000, 0x00000000, 0xd22ec657, 392); 
TEST_RR_OP( 99 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 396); 
TEST_RR_OP( 100 , kmxda, 0x00000000, 0x00000000, 0x80000000, 400); 
TEST_RR_OP( 101 , kmxda, 0xde489f88, 0x7a7cba4e, 0x5766eb43, 404); 
TEST_RR_OP( 102 , kmxda, 0x12d60000, 0xec05da54, 0x80000000, 408); 
TEST_RR_OP( 103 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 412); 
TEST_RR_OP( 104 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 416); 
TEST_RR_OP( 105 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 420); 
TEST_RR_OP( 106 , kmxda, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 428); 
TEST_RR_OP( 108 , kmxda, 0x00000000, 0x80000000, 0x80000000, 432); 
TEST_RR_OP( 109 , kmxda, 0x00000000, 0x80000000, 0x80000000, 436); 
TEST_RR_OP( 110 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 444); 
TEST_RR_OP( 112 , kmxda, 0x00000000, 0x80000000, 0x00000000, 448); 
TEST_RR_OP( 113 , kmxda, 0x0000479d, 0x317086f3, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 456); 
TEST_RR_OP( 115 , kmxda, 0x00000000, 0x80000000, 0x00000000, 460); 
TEST_RR_OP( 116 , kmxda, 0xce46d591, 0xc9d689f7, 0x524d37a9, 464); 
TEST_RR_OP( 117 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmxda, 0x00000000, 0x3b3e5b49, 0x00000000, 476); 
TEST_RR_OP( 120 , kmxda, 0x00000000, 0x00000000, 0x00000000, 480); 
TEST_RR_OP( 121 , kmxda, 0x00000000, 0x9663a2fb, 0x00000000, 484); 
TEST_RR_OP( 122 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 488); 
TEST_RR_OP( 123 , kmxda, 0x00000000, 0x00000000, 0x00000000, 492); 
TEST_RR_OP( 124 , kmxda, 0x00000000, 0x00000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kmxda, 0x00000000, 0x00000000, 0x82e07110, 500); 
TEST_RR_OP( 126 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 504); 
TEST_RR_OP( 127 , kmxda, 0x00006243, 0xffffffff, 0xfd8aa033, 508); 
TEST_RR_OP( 128 , kmxda, 0xcad18000, 0x38ba6a5d, 0x80000000, 512); 
TEST_RR_OP( 129 , kmxda, 0x00000000, 0x00000000, 0xb0c97897, 516); 
TEST_RR_OP( 130 , kmxda, 0xffff87fa, 0xfc6c7b9a, 0xffffffff, 520); 
TEST_RR_OP( 131 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , kmxda, 0x00000000, 0x00000000, 0x0da5f536, 528); 
TEST_RR_OP( 133 , kmxda, 0xef548000, 0xa1cf2157, 0x80000000, 532); 
TEST_RR_OP( 134 , kmxda, 0xdf718000, 0x80000000, 0x4085411d, 536); 
TEST_RR_OP( 135 , kmxda, 0x00000000, 0x00000000, 0x7c48c5e8, 540); 
TEST_RR_OP( 136 , kmxda, 0x00000000, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , kmxda, 0x00004a65, 0xffffffff, 0x87772e24, 548); 
TEST_RR_OP( 138 , kmxda, 0x00002a74, 0xffffffff, 0xa7962df6, 552); 
TEST_RR_OP( 139 , kmxda, 0x1d808000, 0x80000000, 0xd512c4ff, 556); 
TEST_RR_OP( 140 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , kmxda, 0x00000000, 0x80000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kmxda, 0x00000000, 0x33128df8, 0x00000000, 568); 
TEST_RR_OP( 143 , kmxda, 0x00000000, 0x80000000, 0x00000000, 572); 
TEST_RR_OP( 144 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 576); 
TEST_RR_OP( 145 , kmxda, 0xecc50000, 0x80000000, 0x58462676, 580); 
TEST_RR_OP( 146 , kmxda, 0x29958000, 0x80000000, 0x4e7dacd5, 584); 
TEST_RR_OP( 147 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 588); 
TEST_RR_OP( 148 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 592); 
TEST_RR_OP( 149 , kmxda, 0x00000000, 0x00000000, 0x80000000, 596); 
TEST_RR_OP( 150 , kmxda, 0x1b169779, 0xba377e41, 0x1695c57c, 600); 
TEST_RR_OP( 151 , kmxda, 0xc2fe0000, 0x80000000, 0x0df07a04, 604); 
TEST_RR_OP( 152 , kmxda, 0x00006448, 0xb91de29b, 0xffffffff, 608); 
TEST_RR_OP( 153 , kmxda, 0x00000000, 0x80000000, 0x80000000, 612); 
TEST_RR_OP( 154 , kmxda, 0x00000000, 0x80000000, 0x00000000, 616); 
TEST_RR_OP( 155 , kmxda, 0x00000000, 0x00000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 624); 
TEST_RR_OP( 157 , kmxda, 0x00000000, 0x00000000, 0x214d976e, 628); 
TEST_RR_OP( 158 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 632); 
TEST_RR_OP( 159 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmxda, 0x00000000, 0x80000000, 0x80000000, 640); 
TEST_RR_OP( 161 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 648); 
TEST_RR_OP( 163 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 656); 
TEST_RR_OP( 165 , kmxda, 0x00000000, 0x80000000, 0x80000000, 660); 
TEST_RR_OP( 166 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 664); 
TEST_RR_OP( 167 , kmxda, 0xffffffa4, 0xb9d54687, 0xffffffff, 668); 
TEST_RR_OP( 168 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , kmxda, 0x0000600e, 0xb691e961, 0xffffffff, 676); 
TEST_RR_OP( 170 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 684); 
TEST_RR_OP( 172 , kmxda, 0x00000000, 0x552e9094, 0x00000000, 688); 
TEST_RR_OP( 173 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , kmxda, 0x00000000, 0x80000000, 0x80000000, 696); 
TEST_RR_OP( 175 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 700); 
TEST_RR_OP( 176 , kmxda, 0x00000000, 0x80000000, 0x80000000, 704); 
TEST_RR_OP( 177 , kmxda, 0xd1888000, 0x410a5cef, 0x80000000, 708); 
TEST_RR_OP( 178 , kmxda, 0x00000000, 0x00000000, 0x00000000, 712); 
TEST_RR_OP( 179 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 716); 
TEST_RR_OP( 180 , kmxda, 0xd7d08000, 0x9ffe505f, 0x80000000, 720); 
TEST_RR_OP( 181 , kmxda, 0x00000000, 0x80000000, 0x80000000, 724); 
TEST_RR_OP( 182 , kmxda, 0xd95306ae, 0x15c8b922, 0x70e3a8b9, 728); 
TEST_RR_OP( 183 , kmxda, 0x00000000, 0x00000000, 0x00000000, 732); 
TEST_RR_OP( 184 , kmxda, 0x00000000, 0x6bdaa10b, 0x00000000, 736); 
TEST_RR_OP( 185 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 740); 
TEST_RR_OP( 186 , kmxda, 0x00008000, 0x80000000, 0xffffffff, 744); 
TEST_RR_OP( 187 , kmxda, 0x00000000, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmxda, 0x00000000, 0x2ebe806c, 0x00000000, 752); 
TEST_RR_OP( 189 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 756); 
TEST_RR_OP( 190 , kmxda, 0x00000002, 0xffffffff, 0xffffffff, 760); 
TEST_RR_OP( 191 , kmxda, 0x00000000, 0x00000000, 0x52a51c7d, 764); 
TEST_RR_OP( 192 , kmxda, 0x00000000, 0x00000000, 0xab363db7, 768); 
TEST_RR_OP( 193 , kmxda, 0x06f57fac, 0x91cec770, 0x644cbc5a, 772); 
TEST_RR_OP( 194 , kmxda, 0x00008000, 0xffffffff, 0x80000000, 776); 
TEST_RR_OP( 195 , kmxda, 0x00000000, 0xcab8448f, 0x00000000, 780); 
TEST_RR_OP( 196 , kmxda, 0x00000000, 0xb28ce161, 0x00000000, 784); 
TEST_RR_OP( 197 , kmxda, 0x00000000, 0x80000000, 0x80000000, 788); 
TEST_RR_OP( 198 , kmxda, 0x00000000, 0xffffffff, 0x00000000, 792); 
TEST_RR_OP( 199 , kmxda, 0xf0e90000, 0x80000000, 0x00211e2e, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# kmda.S
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

TEST_RR_OP( 2 , kmda, 0x06ff9f7e, 0xbae6151e, 0xc08e853b, 8); 
TEST_RR_OP( 3 , kmda, 0x00000000, 0x00000000, 0x23b4ed48, 12); 
TEST_RR_OP( 4 , kmda, 0x0a96e358, 0xef7130dc, 0xd12c279d, 16); 
TEST_RR_OP( 5 , kmda, 0x00000000, 0x00000000, 0x80000000, 20); 
TEST_RR_OP( 6 , kmda, 0x00000000, 0x00000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , kmda, 0x00000000, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , kmda, 0x00006731, 0x889e1031, 0xffffffff, 32); 
TEST_RR_OP( 9 , kmda, 0x0bc30000, 0xe87a5dd0, 0x80000000, 36); 
TEST_RR_OP( 10 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 40); 
TEST_RR_OP( 11 , kmda, 0x00008000, 0xffffffff, 0x80000000, 44); 
TEST_RR_OP( 12 , kmda, 0x40000000, 0x80000000, 0x80000000, 48); 
TEST_RR_OP( 13 , kmda, 0x00000000, 0x477808c2, 0x00000000, 52); 
TEST_RR_OP( 14 , kmda, 0x00000000, 0x00000000, 0x8fee0186, 56); 
TEST_RR_OP( 15 , kmda, 0x00000000, 0x00000000, 0x00000000, 60); 
TEST_RR_OP( 16 , kmda, 0xfffffbef, 0xbd4c46c5, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmda, 0x00008000, 0x80000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmda, 0x00008000, 0xffffffff, 0x80000000, 72); 
TEST_RR_OP( 19 , kmda, 0x40000000, 0x80000000, 0x80000000, 76); 
TEST_RR_OP( 20 , kmda, 0xcef491e4, 0x69c87cee, 0xf2eda692, 80); 
TEST_RR_OP( 21 , kmda, 0x00008000, 0x80000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmda, 0xf5120adf, 0x40c2348f, 0xb8522315, 88); 
TEST_RR_OP( 23 , kmda, 0x00008000, 0x80000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmda, 0x00008000, 0xffffffff, 0x80000000, 100); 
TEST_RR_OP( 26 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 104); 
TEST_RR_OP( 27 , kmda, 0x0000398f, 0xffffffff, 0x8bf13a80, 108); 
TEST_RR_OP( 28 , kmda, 0x0000143b, 0x951f56a6, 0xffffffff, 112); 
TEST_RR_OP( 29 , kmda, 0x00000000, 0xe7709425, 0x00000000, 116); 
TEST_RR_OP( 30 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 120); 
TEST_RR_OP( 31 , kmda, 0x00008000, 0x80000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , kmda, 0x00000000, 0x00000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , kmda, 0xffff5b9d, 0x5c24483f, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmda, 0x00000000, 0x80000000, 0x00000000, 136); 
TEST_RR_OP( 35 , kmda, 0x000060a4, 0xffffffff, 0xd5b2c9aa, 140); 
TEST_RR_OP( 36 , kmda, 0x00000000, 0x00000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , kmda, 0x00008000, 0x80000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmda, 0x00000000, 0x00000000, 0x80000000, 152); 
TEST_RR_OP( 39 , kmda, 0x00000000, 0x5f16f93f, 0x00000000, 156); 
TEST_RR_OP( 40 , kmda, 0x00000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , kmda, 0x00000000, 0xbfdd2fbb, 0x00000000, 164); 
TEST_RR_OP( 42 , kmda, 0x00008000, 0x80000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , kmda, 0x0c7b0000, 0xe70ad11b, 0x80000000, 172); 
TEST_RR_OP( 44 , kmda, 0x00000000, 0x00000000, 0x00000000, 176); 
TEST_RR_OP( 45 , kmda, 0x32aa8000, 0x9aab2da8, 0x80000000, 180); 
TEST_RR_OP( 46 , kmda, 0x02020000, 0xfbfc066f, 0x80000000, 184); 
TEST_RR_OP( 47 , kmda, 0x00008000, 0x80000000, 0xffffffff, 188); 
TEST_RR_OP( 48 , kmda, 0x00003019, 0xffffffff, 0xa82e27b9, 192); 
TEST_RR_OP( 49 , kmda, 0x00008000, 0x80000000, 0xffffffff, 196); 
TEST_RR_OP( 50 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 200); 
TEST_RR_OP( 51 , kmda, 0x40000000, 0x80000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kmda, 0x32960000, 0x80000000, 0x9ad4899c, 208); 
TEST_RR_OP( 53 , kmda, 0xc10b8000, 0x80000000, 0x7de96cfb, 212); 
TEST_RR_OP( 54 , kmda, 0x00000000, 0x00000000, 0xe39944f2, 216); 
TEST_RR_OP( 55 , kmda, 0x40000000, 0x80000000, 0x80000000, 220); 
TEST_RR_OP( 56 , kmda, 0x00000000, 0x8e0d0204, 0x00000000, 224); 
TEST_RR_OP( 57 , kmda, 0x00000000, 0xa8fbd3a8, 0x00000000, 228); 
TEST_RR_OP( 58 , kmda, 0x31940000, 0x9cd8525d, 0x80000000, 232); 
TEST_RR_OP( 59 , kmda, 0xffffcc7b, 0xffffffff, 0x4b9fe7e6, 236); 
TEST_RR_OP( 60 , kmda, 0x00000000, 0xb9b840c5, 0x00000000, 240); 
TEST_RR_OP( 61 , kmda, 0x00000000, 0x00000000, 0x00000000, 244); 
TEST_RR_OP( 62 , kmda, 0x00000000, 0x00000000, 0xb611cdf9, 248); 
TEST_RR_OP( 63 , kmda, 0x40000000, 0x80000000, 0x80000000, 252); 
TEST_RR_OP( 64 , kmda, 0x40000000, 0x80000000, 0x80000000, 256); 
TEST_RR_OP( 65 , kmda, 0x00000000, 0xffffffff, 0x00000000, 260); 
TEST_RR_OP( 66 , kmda, 0x269f6a77, 0x159fa829, 0x512ca36b, 264); 
TEST_RR_OP( 67 , kmda, 0x00000000, 0x6533ebc3, 0x00000000, 268); 
TEST_RR_OP( 68 , kmda, 0xcf823314, 0x6463b664, 0x949c1630, 272); 
TEST_RR_OP( 69 , kmda, 0xf2e88000, 0x80000000, 0x1a2fb3f6, 276); 
TEST_RR_OP( 70 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 280); 
TEST_RR_OP( 71 , kmda, 0x00008000, 0xffffffff, 0x80000000, 284); 
TEST_RR_OP( 72 , kmda, 0xebf08000, 0x281fc8ac, 0x80000000, 288); 
TEST_RR_OP( 73 , kmda, 0x00000000, 0x38f335e4, 0x00000000, 292); 
TEST_RR_OP( 74 , kmda, 0x0000581e, 0x2344849e, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmda, 0x00000000, 0x00000000, 0xffffffff, 300); 
TEST_RR_OP( 76 , kmda, 0x00000000, 0xa5d670f5, 0x00000000, 304); 
TEST_RR_OP( 77 , kmda, 0x00000000, 0xffffffff, 0x00000000, 308); 
TEST_RR_OP( 78 , kmda, 0x40000000, 0x80000000, 0x80000000, 312); 
TEST_RR_OP( 79 , kmda, 0x0f270000, 0x80000000, 0xe1b230d0, 316); 
TEST_RR_OP( 80 , kmda, 0x00000000, 0x00000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , kmda, 0x00000000, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kmda, 0x00000000, 0x00000000, 0x00000000, 328); 
TEST_RR_OP( 83 , kmda, 0x00000000, 0x80000000, 0x00000000, 332); 
TEST_RR_OP( 84 , kmda, 0x00000000, 0x00000000, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmda, 0x40000000, 0x80000000, 0x80000000, 340); 
TEST_RR_OP( 86 , kmda, 0xe6df9ccc, 0x0b35bcb2, 0x272c6618, 344); 
TEST_RR_OP( 87 , kmda, 0x00008000, 0xffffffff, 0x80000000, 348); 
TEST_RR_OP( 88 , kmda, 0x00008000, 0x80000000, 0xffffffff, 352); 
TEST_RR_OP( 89 , kmda, 0x00000000, 0xffffffff, 0x00000000, 356); 
TEST_RR_OP( 90 , kmda, 0xffff6b5c, 0xffffffff, 0x379a5d0a, 360); 
TEST_RR_OP( 91 , kmda, 0x0000448c, 0xffffffff, 0xb30f0865, 364); 
TEST_RR_OP( 92 , kmda, 0x1d428000, 0xc57baf90, 0x80000000, 368); 
TEST_RR_OP( 93 , kmda, 0xc37f0000, 0x7902bb6d, 0x80000000, 372); 
TEST_RR_OP( 94 , kmda, 0x00000000, 0x00000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmda, 0xffffb2d4, 0x5956f3d6, 0xffffffff, 380); 
TEST_RR_OP( 96 , kmda, 0x00008000, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmda, 0x00000000, 0xb8cfd44d, 0x00000000, 388); 
TEST_RR_OP( 98 , kmda, 0xce3d0000, 0x63865482, 0x80000000, 392); 
TEST_RR_OP( 99 , kmda, 0xffff35f6, 0x7670539a, 0xffffffff, 396); 
TEST_RR_OP( 100 , kmda, 0x00008000, 0xffffffff, 0x80000000, 400); 
TEST_RR_OP( 101 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , kmda, 0xffff5a80, 0xffffffff, 0x707a3506, 408); 
TEST_RR_OP( 103 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 412); 
TEST_RR_OP( 104 , kmda, 0x00000000, 0x0fa9b68c, 0x00000000, 416); 
TEST_RR_OP( 105 , kmda, 0x40000000, 0x80000000, 0x80000000, 420); 
TEST_RR_OP( 106 , kmda, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , kmda, 0x00000000, 0x00000000, 0x80000000, 428); 
TEST_RR_OP( 108 , kmda, 0xd9ae7ad0, 0xbd5b79d7, 0x3ff9d27b, 432); 
TEST_RR_OP( 109 , kmda, 0x00009bf0, 0xffffffff, 0xbc19a7f7, 436); 
TEST_RR_OP( 110 , kmda, 0x1e9f0000, 0x80000000, 0xc2c24ff0, 440); 
TEST_RR_OP( 111 , kmda, 0x00000000, 0xffffffff, 0x00000000, 444); 
TEST_RR_OP( 112 , kmda, 0x00008000, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmda, 0x00000000, 0x00000000, 0x6bd688c5, 456); 
TEST_RR_OP( 115 , kmda, 0xffffa8d8, 0x24203308, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmda, 0xffffbe3c, 0xffffffff, 0xe69b5b29, 464); 
TEST_RR_OP( 117 , kmda, 0x2cd10000, 0x80000000, 0xa65eee7b, 468); 
TEST_RR_OP( 118 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmda, 0x1f130000, 0xc1da83b4, 0x80000000, 476); 
TEST_RR_OP( 120 , kmda, 0xffff965a, 0xffffffff, 0x0d0b5c9b, 480); 
TEST_RR_OP( 121 , kmda, 0x00000000, 0x00000000, 0xd7a7ba49, 484); 
TEST_RR_OP( 122 , kmda, 0x12c58000, 0x80000000, 0xda75d285, 488); 
TEST_RR_OP( 123 , kmda, 0x00000000, 0x7d67c92c, 0x00000000, 492); 
TEST_RR_OP( 124 , kmda, 0xffffb944, 0xffffffff, 0xe9725d4a, 496); 
TEST_RR_OP( 125 , kmda, 0x00000000, 0x00000000, 0x80000000, 500); 
TEST_RR_OP( 126 , kmda, 0xc90e0000, 0x80000000, 0x6de42052, 504); 
TEST_RR_OP( 127 , kmda, 0x00000000, 0x80000000, 0x00000000, 508); 
TEST_RR_OP( 128 , kmda, 0xd53d0000, 0x55861f20, 0x80000000, 512); 
TEST_RR_OP( 129 , kmda, 0x00008000, 0x80000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , kmda, 0x00000565, 0xffffffff, 0xc8de31bd, 520); 
TEST_RR_OP( 131 , kmda, 0xffff06e2, 0x7d517bcd, 0xffffffff, 524); 
TEST_RR_OP( 132 , kmda, 0x00000000, 0x00000000, 0x80000000, 528); 
TEST_RR_OP( 133 , kmda, 0x25e50000, 0x80000000, 0xb436b4af, 532); 
TEST_RR_OP( 134 , kmda, 0xc0440000, 0x80000000, 0x7f787cd9, 536); 
TEST_RR_OP( 135 , kmda, 0x00002ea7, 0xffffffff, 0xc7b209a7, 540); 
TEST_RR_OP( 136 , kmda, 0x00008000, 0xffffffff, 0x80000000, 544); 
TEST_RR_OP( 137 , kmda, 0x025731dc, 0x103906eb, 0x168321d3, 548); 
TEST_RR_OP( 138 , kmda, 0x00008000, 0xffffffff, 0x80000000, 552); 
TEST_RR_OP( 139 , kmda, 0x2d210000, 0xa5beee15, 0x80000000, 556); 
TEST_RR_OP( 140 , kmda, 0x00000000, 0xffffffff, 0x00000000, 560); 
TEST_RR_OP( 141 , kmda, 0x40000000, 0x80000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 568); 
TEST_RR_OP( 143 , kmda, 0x0000c102, 0xffffffff, 0x80efbe0f, 572); 
TEST_RR_OP( 144 , kmda, 0x40000000, 0x80000000, 0x80000000, 576); 
TEST_RR_OP( 145 , kmda, 0x00000000, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kmda, 0xc4130000, 0x80000000, 0x77da72b8, 584); 
TEST_RR_OP( 147 , kmda, 0xffffe2ac, 0xa62a772a, 0xffffffff, 588); 
TEST_RR_OP( 148 , kmda, 0x00000000, 0x80000000, 0x00000000, 592); 
TEST_RR_OP( 149 , kmda, 0x00008000, 0x80000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , kmda, 0x00000000, 0x00000000, 0x00000000, 600); 
TEST_RR_OP( 151 , kmda, 0x00000000, 0x00000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , kmda, 0x40000000, 0x80000000, 0x80000000, 608); 
TEST_RR_OP( 153 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 612); 
TEST_RR_OP( 154 , kmda, 0x00000000, 0x00000000, 0x00000000, 616); 
TEST_RR_OP( 155 , kmda, 0x00000000, 0x00000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmda, 0x00008000, 0xffffffff, 0x80000000, 624); 
TEST_RR_OP( 157 , kmda, 0x00000000, 0x00000000, 0xafd31c5f, 628); 
TEST_RR_OP( 158 , kmda, 0x00000000, 0xffffffff, 0x00000000, 632); 
TEST_RR_OP( 159 , kmda, 0x00000000, 0x80000000, 0x00000000, 636); 
TEST_RR_OP( 160 , kmda, 0x00000000, 0x00000000, 0x00000000, 640); 
TEST_RR_OP( 161 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 644); 
TEST_RR_OP( 162 , kmda, 0xfffff0cc, 0xffffffff, 0x573fb7f5, 648); 
TEST_RR_OP( 163 , kmda, 0x00000000, 0x80000000, 0x00000000, 652); 
TEST_RR_OP( 164 , kmda, 0xc83a8000, 0x80000000, 0x6f8b383f, 656); 
TEST_RR_OP( 165 , kmda, 0x00000000, 0x00000000, 0x80000000, 660); 
TEST_RR_OP( 166 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , kmda, 0xd9e8a674, 0xa89ae3d2, 0x69471387, 668); 
TEST_RR_OP( 168 , kmda, 0x00000000, 0xffffffff, 0x00000000, 672); 
TEST_RR_OP( 169 , kmda, 0x2f2f0000, 0x80000000, 0xa1a2e6a0, 676); 
TEST_RR_OP( 170 , kmda, 0xffffeb8f, 0x4007d46a, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmda, 0x00000000, 0x00000000, 0xa2c62e51, 684); 
TEST_RR_OP( 172 , kmda, 0xf0d4c94a, 0x5eefa0a2, 0xcd44f637, 688); 
TEST_RR_OP( 173 , kmda, 0x00000000, 0x3ada8c26, 0x00000000, 692); 
TEST_RR_OP( 174 , kmda, 0xffffd100, 0x4f6fdf91, 0xffffffff, 696); 
TEST_RR_OP( 175 , kmda, 0x00008000, 0xffffffff, 0x80000000, 700); 
TEST_RR_OP( 176 , kmda, 0x00000000, 0x00000000, 0xc9ccbcf2, 704); 
TEST_RR_OP( 177 , kmda, 0x00000000, 0x33290907, 0x00000000, 708); 
TEST_RR_OP( 178 , kmda, 0x40000000, 0x80000000, 0x80000000, 712); 
TEST_RR_OP( 179 , kmda, 0x00008000, 0xffffffff, 0x80000000, 716); 
TEST_RR_OP( 180 , kmda, 0x00000002, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP( 181 , kmda, 0x00000000, 0x00000000, 0x80000000, 724); 
TEST_RR_OP( 182 , kmda, 0x000080eb, 0xffffffff, 0xe5d6993f, 728); 
TEST_RR_OP( 183 , kmda, 0x00008000, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmda, 0x00000000, 0x00000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kmda, 0x40000000, 0x80000000, 0x80000000, 740); 
TEST_RR_OP( 186 , kmda, 0x00000000, 0x00000000, 0x80000000, 744); 
TEST_RR_OP( 187 , kmda, 0x00000000, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmda, 0x000006f8, 0xffffffff, 0x0ed8ea30, 752); 
TEST_RR_OP( 189 , kmda, 0x00000000, 0x00000000, 0x80000000, 756); 
TEST_RR_OP( 190 , kmda, 0x00000000, 0x00000000, 0x80000000, 760); 
TEST_RR_OP( 191 , kmda, 0xffffcddc, 0xffffffff, 0xdc1c5608, 764); 
TEST_RR_OP( 192 , kmda, 0x00000000, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , kmda, 0x00000799, 0xffffffff, 0xf12e0739, 772); 
TEST_RR_OP( 194 , kmda, 0x00000000, 0x00000000, 0x38d64035, 776); 
TEST_RR_OP( 195 , kmda, 0x289a8000, 0xaecb354b, 0x80000000, 780); 
TEST_RR_OP( 196 , kmda, 0x00000000, 0x00000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , kmda, 0x00000000, 0x6f43d1d8, 0x00000000, 788); 
TEST_RR_OP( 198 , kmda, 0x00008000, 0x80000000, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmda, 0xffff7826, 0x445a4380, 0xffffffff, 796); 

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
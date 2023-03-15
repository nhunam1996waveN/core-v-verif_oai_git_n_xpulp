# See LICENSE for license details.
#*****************************************************************************
# stsa16.S
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

TEST_RR_OP( 2 , stsa16, 0x5ff8a04c, 0x80008000, 0x2008204c, 8); 
TEST_RR_OP( 3 , stsa16, 0xc5e98000, 0x80008000, 0xba170000, 12); 
TEST_RR_OP( 4 , stsa16, 0x48690000, 0xffff8000, 0xb7968000, 16); 
TEST_RR_OP( 5 , stsa16, 0x8001ffff, 0x8000ffff, 0xffff0000, 20); 
TEST_RR_OP( 6 , stsa16, 0x7fff8000, 0xffff0000, 0x80008000, 24); 
TEST_RR_OP( 7 , stsa16, 0xdb9cbc59, 0xffffffff, 0x2463bc5a, 28); 
TEST_RR_OP( 8 , stsa16, 0x7fff850a, 0xffff850b, 0x8000ffff, 32); 
TEST_RR_OP( 9 , stsa16, 0xffff8000, 0xffff8000, 0x00000000, 36); 
TEST_RR_OP( 10 , stsa16, 0x44832633, 0x4482ffff, 0xffff2634, 40); 
TEST_RR_OP( 11 , stsa16, 0xf8f30000, 0xf8f38000, 0x00008000, 44); 
TEST_RR_OP( 12 , stsa16, 0xffff0000, 0xffff0000, 0x00000000, 48); 
TEST_RR_OP( 13 , stsa16, 0x6c018000, 0x6c010000, 0x00008000, 52); 
TEST_RR_OP( 14 , stsa16, 0x0000093b, 0x0000893b, 0x00008000, 56); 
TEST_RR_OP( 15 , stsa16, 0x3fd50000, 0x3fd50000, 0x00000000, 60); 
TEST_RR_OP( 16 , stsa16, 0x00000000, 0xffff8000, 0xffff8000, 64); 
TEST_RR_OP( 17 , stsa16, 0x8000ca40, 0x00008bba, 0x80003e86, 68); 
TEST_RR_OP( 18 , stsa16, 0x31c46a8d, 0x31c4ea8d, 0x00008000, 72); 
TEST_RR_OP( 19 , stsa16, 0x000141f6, 0x0000c1f6, 0xffff8000, 76); 
TEST_RR_OP( 20 , stsa16, 0xb7708000, 0xb7708000, 0x00000000, 80); 
TEST_RR_OP( 21 , stsa16, 0x80018000, 0x80000000, 0xffff8000, 84); 
TEST_RR_OP( 22 , stsa16, 0x57abfffe, 0x8000ffff, 0x2855ffff, 88); 
TEST_RR_OP( 23 , stsa16, 0x37b37fff, 0x37b2ffff, 0xffff8000, 92); 
TEST_RR_OP( 24 , stsa16, 0x477ef3da, 0xc77effff, 0x8000f3db, 96); 
TEST_RR_OP( 25 , stsa16, 0x0000f545, 0x8000f546, 0x8000ffff, 100); 
TEST_RR_OP( 26 , stsa16, 0x365e8000, 0x80008000, 0x49a20000, 104); 
TEST_RR_OP( 27 , stsa16, 0x00000212, 0x8000ffff, 0x80000213, 108); 
TEST_RR_OP( 28 , stsa16, 0x8001ffff, 0x80000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , stsa16, 0x00009a20, 0x80006ee6, 0x80002b3a, 116); 
TEST_RR_OP( 30 , stsa16, 0x0d5a7fff, 0x00008000, 0xf2a6ffff, 120); 
TEST_RR_OP( 31 , stsa16, 0x74408b67, 0x00000000, 0x8bc08b67, 124); 
TEST_RR_OP( 32 , stsa16, 0xa0b7fffe, 0x20b7ffff, 0x8000ffff, 128); 
TEST_RR_OP( 33 , stsa16, 0x0000ffff, 0x0000ffff, 0x00000000, 132); 
TEST_RR_OP( 34 , stsa16, 0x7fff42f0, 0xffffffff, 0x800042f1, 136); 
TEST_RR_OP( 35 , stsa16, 0x800137d1, 0x80008000, 0xffffb7d1, 140); 
TEST_RR_OP( 36 , stsa16, 0xffff2f6e, 0xffff0000, 0x00002f6e, 144); 
TEST_RR_OP( 37 , stsa16, 0x00010efd, 0x0000b7cc, 0xffff5731, 148); 
TEST_RR_OP( 38 , stsa16, 0x0000d22e, 0xffff8000, 0xffff522e, 152); 
TEST_RR_OP( 39 , stsa16, 0xe335fffe, 0x6a97ffff, 0x8762ffff, 156); 
TEST_RR_OP( 40 , stsa16, 0xffffcaea, 0xffff4aea, 0x00008000, 160); 
TEST_RR_OP( 41 , stsa16, 0x63b50000, 0x63b58000, 0x00008000, 164); 
TEST_RR_OP( 42 , stsa16, 0xe7b00dfe, 0xe7b07242, 0x00009bbc, 168); 
TEST_RR_OP( 43 , stsa16, 0x00000000, 0x00000000, 0x00000000, 172); 
TEST_RR_OP( 44 , stsa16, 0x00006a46, 0xffff8000, 0xffffea46, 176); 
TEST_RR_OP( 45 , stsa16, 0x0001232d, 0x0000ffff, 0xffff232e, 180); 
TEST_RR_OP( 46 , stsa16, 0x7fff7fff, 0xffffffff, 0x80008000, 184); 
TEST_RR_OP( 47 , stsa16, 0x38d2b18d, 0x0000c667, 0xc72eeb26, 188); 
TEST_RR_OP( 48 , stsa16, 0x13790000, 0x93798000, 0x80008000, 192); 
TEST_RR_OP( 49 , stsa16, 0x00010000, 0x00008000, 0xffff8000, 196); 
TEST_RR_OP( 50 , stsa16, 0xb1da0000, 0x26ce8000, 0x74f48000, 200); 
TEST_RR_OP( 51 , stsa16, 0xcba087b1, 0xfd480000, 0x31a887b1, 204); 
TEST_RR_OP( 52 , stsa16, 0x80007fff, 0x0000ffff, 0x80008000, 208); 
TEST_RR_OP( 53 , stsa16, 0x80009862, 0x80009863, 0x0000ffff, 212); 
TEST_RR_OP( 54 , stsa16, 0xc7f4c962, 0x0000ffff, 0x380cc963, 216); 
TEST_RR_OP( 55 , stsa16, 0xffff0000, 0xffff0000, 0x00000000, 220); 
TEST_RR_OP( 56 , stsa16, 0x7ffffffe, 0xffffffff, 0x8000ffff, 224); 
TEST_RR_OP( 57 , stsa16, 0x000062b0, 0x80008000, 0x8000e2b0, 228); 
TEST_RR_OP( 58 , stsa16, 0x7fff0000, 0xffff0000, 0x80000000, 232); 
TEST_RR_OP( 59 , stsa16, 0x989211dc, 0x80002292, 0xe76eef4a, 236); 
TEST_RR_OP( 60 , stsa16, 0x1f46ffff, 0x1f460000, 0x0000ffff, 240); 
TEST_RR_OP( 61 , stsa16, 0x00009d67, 0x80008000, 0x80001d67, 244); 
TEST_RR_OP( 62 , stsa16, 0x8dcb7fff, 0x80008000, 0xf235ffff, 248); 
TEST_RR_OP( 63 , stsa16, 0x48510000, 0x00000000, 0xb7af0000, 252); 
TEST_RR_OP( 64 , stsa16, 0x7698a519, 0x00008000, 0x89682519, 256); 
TEST_RR_OP( 65 , stsa16, 0x00000000, 0x00000000, 0x00000000, 260); 
TEST_RR_OP( 66 , stsa16, 0x80007fff, 0x00008000, 0x8000ffff, 264); 
TEST_RR_OP( 67 , stsa16, 0x00010000, 0x00000000, 0xffff0000, 268); 
TEST_RR_OP( 68 , stsa16, 0x80000000, 0x80008000, 0x00008000, 272); 
TEST_RR_OP( 69 , stsa16, 0x00003c5d, 0xffff3c5e, 0xffffffff, 276); 
TEST_RR_OP( 70 , stsa16, 0x0000ffff, 0x00000000, 0x0000ffff, 280); 
TEST_RR_OP( 71 , stsa16, 0x7fffa48a, 0xffff248a, 0x80008000, 284); 
TEST_RR_OP( 72 , stsa16, 0x80008000, 0x00000000, 0x80008000, 288); 
TEST_RR_OP( 73 , stsa16, 0x0000da1d, 0x00005a1d, 0x00008000, 292); 
TEST_RR_OP( 74 , stsa16, 0xffffffff, 0xffffffff, 0x00000000, 296); 
TEST_RR_OP( 75 , stsa16, 0x00007fff, 0x0000ffff, 0x00008000, 300); 
TEST_RR_OP( 76 , stsa16, 0xb33f8000, 0x27708000, 0x74310000, 304); 
TEST_RR_OP( 77 , stsa16, 0x00007fff, 0x00008000, 0x0000ffff, 308); 
TEST_RR_OP( 78 , stsa16, 0x00000000, 0xffff0000, 0xffff0000, 312); 
TEST_RR_OP( 79 , stsa16, 0x0000222e, 0x0000a22e, 0x00008000, 316); 
TEST_RR_OP( 80 , stsa16, 0x49b7bcbf, 0x362e768f, 0xec774630, 320); 
TEST_RR_OP( 81 , stsa16, 0x00009851, 0x8000ffff, 0x80009852, 324); 
TEST_RR_OP( 82 , stsa16, 0x7fffffff, 0xffffffff, 0x80000000, 328); 
TEST_RR_OP( 83 , stsa16, 0xffff0000, 0xffff0000, 0x00000000, 332); 
TEST_RR_OP( 84 , stsa16, 0xfac50948, 0xffff0000, 0x053a0948, 336); 
TEST_RR_OP( 85 , stsa16, 0xe2010000, 0x80008000, 0x9dff8000, 340); 
TEST_RR_OP( 86 , stsa16, 0x938cc0d7, 0x938c0000, 0x0000c0d7, 344); 
TEST_RR_OP( 87 , stsa16, 0x80000aba, 0x80000abb, 0x0000ffff, 348); 
TEST_RR_OP( 88 , stsa16, 0xd19820dd, 0x00000000, 0x2e6820dd, 352); 
TEST_RR_OP( 89 , stsa16, 0x0000fffe, 0x0000ffff, 0x0000ffff, 356); 
TEST_RR_OP( 90 , stsa16, 0xffffa4df, 0xffff8000, 0x000024df, 360); 
TEST_RR_OP( 91 , stsa16, 0x0001ffff, 0x0000ffff, 0xffff0000, 364); 
TEST_RR_OP( 92 , stsa16, 0xfdfb7fff, 0xffff8000, 0x0204ffff, 368); 
TEST_RR_OP( 93 , stsa16, 0x80003e65, 0x80003e66, 0x0000ffff, 372); 
TEST_RR_OP( 94 , stsa16, 0x7fff0000, 0xffff8000, 0x80008000, 376); 
TEST_RR_OP( 95 , stsa16, 0x8000fe97, 0x80008000, 0x00007e97, 380); 
TEST_RR_OP( 96 , stsa16, 0xe64ab4d9, 0xe6490000, 0xffffb4d9, 384); 
TEST_RR_OP( 97 , stsa16, 0xffff8000, 0xffff8000, 0x00000000, 388); 
TEST_RR_OP( 98 , stsa16, 0xc26f7fff, 0xc26f8000, 0x0000ffff, 392); 
TEST_RR_OP( 99 , stsa16, 0xf261ffff, 0xf2600000, 0xffffffff, 396); 
TEST_RR_OP( 100 , stsa16, 0x89af0000, 0x00000000, 0x76510000, 400); 
TEST_RR_OP( 101 , stsa16, 0x0000a74f, 0xffff8000, 0xffff274f, 404); 
TEST_RR_OP( 102 , stsa16, 0x090d0000, 0x459e0000, 0x3c910000, 408); 
TEST_RR_OP( 103 , stsa16, 0x20ac37a1, 0x00008000, 0xdf54b7a1, 412); 
TEST_RR_OP( 104 , stsa16, 0x55cd5080, 0x55cdffff, 0x00005081, 416); 
TEST_RR_OP( 105 , stsa16, 0x800168df, 0x80000000, 0xffff68df, 420); 
TEST_RR_OP( 106 , stsa16, 0x73a326c4, 0x0000ffff, 0x8c5d26c5, 424); 
TEST_RR_OP( 107 , stsa16, 0x5ae8b84f, 0x5ae88000, 0x0000384f, 428); 
TEST_RR_OP( 108 , stsa16, 0x826fc862, 0x026fffff, 0x8000c863, 432); 
TEST_RR_OP( 109 , stsa16, 0x00000000, 0x00008000, 0x00008000, 436); 
TEST_RR_OP( 110 , stsa16, 0xae5ffffe, 0x8000ffff, 0xd1a1ffff, 440); 
TEST_RR_OP( 111 , stsa16, 0xdf12d695, 0x5f125695, 0x80008000, 444); 
TEST_RR_OP( 112 , stsa16, 0x0001f3a3, 0x00008000, 0xffff73a3, 448); 
TEST_RR_OP( 113 , stsa16, 0x7cbb0000, 0x00000000, 0x83450000, 452); 
TEST_RR_OP( 114 , stsa16, 0xbd8c7fff, 0xffffffff, 0x42738000, 456); 
TEST_RR_OP( 115 , stsa16, 0x0000bba4, 0xffff0000, 0xffffbba4, 460); 
TEST_RR_OP( 116 , stsa16, 0x8000ffff, 0x0000ffff, 0x80000000, 464); 
TEST_RR_OP( 117 , stsa16, 0xffffffff, 0xffff0000, 0x0000ffff, 468); 
TEST_RR_OP( 118 , stsa16, 0x841c1207, 0x041c1207, 0x80000000, 472); 
TEST_RR_OP( 119 , stsa16, 0x7b6e712c, 0xfb6effff, 0x8000712d, 476); 
TEST_RR_OP( 120 , stsa16, 0x95317fff, 0x95318000, 0x0000ffff, 480); 
TEST_RR_OP( 121 , stsa16, 0xec957fff, 0x00008000, 0x136bffff, 484); 
TEST_RR_OP( 122 , stsa16, 0xc7680000, 0xc7678000, 0xffff8000, 488); 
TEST_RR_OP( 123 , stsa16, 0x7eeb9322, 0x06339323, 0x8748ffff, 492); 
TEST_RR_OP( 124 , stsa16, 0x00007fff, 0xffff8000, 0xffffffff, 496); 
TEST_RR_OP( 125 , stsa16, 0x6fcc0000, 0x6fcc8000, 0x00008000, 500); 
TEST_RR_OP( 126 , stsa16, 0x0000f1dd, 0x0000f1de, 0x0000ffff, 504); 
TEST_RR_OP( 127 , stsa16, 0x0001266b, 0x0000266c, 0xffffffff, 508); 
TEST_RR_OP( 128 , stsa16, 0x718a9c5d, 0x8000ffff, 0x0e769c5e, 512); 
TEST_RR_OP( 129 , stsa16, 0x00007fff, 0x00008000, 0x0000ffff, 516); 
TEST_RR_OP( 130 , stsa16, 0xf4f1e2c4, 0x74f10000, 0x8000e2c4, 520); 
TEST_RR_OP( 131 , stsa16, 0x00001165, 0xffff1166, 0xffffffff, 524); 
TEST_RR_OP( 132 , stsa16, 0x80008000, 0x80008000, 0x00000000, 528); 
TEST_RR_OP( 133 , stsa16, 0x7fff5fc2, 0xffffdfc2, 0x80008000, 532); 
TEST_RR_OP( 134 , stsa16, 0xa689fffe, 0x8000ffff, 0xd977ffff, 536); 
TEST_RR_OP( 135 , stsa16, 0x8000ffff, 0x80000000, 0x0000ffff, 540); 
TEST_RR_OP( 136 , stsa16, 0xffff0000, 0xffff0000, 0x00000000, 544); 
TEST_RR_OP( 137 , stsa16, 0x1d09fffe, 0xffffffff, 0xe2f6ffff, 548); 
TEST_RR_OP( 138 , stsa16, 0x00007fff, 0x80008000, 0x8000ffff, 552); 
TEST_RR_OP( 139 , stsa16, 0x7fff0000, 0xffff8000, 0x80008000, 556); 
TEST_RR_OP( 140 , stsa16, 0xc218ffff, 0x9240ffff, 0xd0280000, 560); 
TEST_RR_OP( 141 , stsa16, 0xccd0c06c, 0x4cd0c06d, 0x8000ffff, 564); 
TEST_RR_OP( 142 , stsa16, 0xd52e8000, 0xd52d0000, 0xffff8000, 568); 
TEST_RR_OP( 143 , stsa16, 0x8001e4cb, 0x80000000, 0xffffe4cb, 572); 
TEST_RR_OP( 144 , stsa16, 0x0000ffff, 0xffffffff, 0xffff0000, 576); 
TEST_RR_OP( 145 , stsa16, 0xadafedae, 0xadae8000, 0xffff6dae, 580); 
TEST_RR_OP( 146 , stsa16, 0xffff9303, 0xffff9303, 0x00000000, 584); 
TEST_RR_OP( 147 , stsa16, 0xffff84c6, 0xffff84c6, 0x00000000, 588); 
TEST_RR_OP( 148 , stsa16, 0x00018000, 0x00008000, 0xffff0000, 592); 
TEST_RR_OP( 149 , stsa16, 0x07760000, 0x00000000, 0xf88a0000, 596); 
TEST_RR_OP( 150 , stsa16, 0xf32e0000, 0xffff8000, 0x0cd18000, 600); 
TEST_RR_OP( 151 , stsa16, 0x80008000, 0x80000000, 0x00008000, 604); 
TEST_RR_OP( 152 , stsa16, 0x80007fff, 0x80008000, 0x0000ffff, 608); 
TEST_RR_OP( 153 , stsa16, 0x00003237, 0x00003237, 0x00000000, 612); 
TEST_RR_OP( 154 , stsa16, 0x652cffff, 0x00000000, 0x9ad4ffff, 616); 
TEST_RR_OP( 155 , stsa16, 0xa9ea0000, 0xa9e90000, 0xffff0000, 620); 
TEST_RR_OP( 156 , stsa16, 0x8000e18f, 0x80008000, 0x0000618f, 624); 
TEST_RR_OP( 157 , stsa16, 0x8000ffff, 0x00000000, 0x8000ffff, 628); 
TEST_RR_OP( 158 , stsa16, 0x18160000, 0x98168000, 0x80008000, 632); 
TEST_RR_OP( 159 , stsa16, 0x80007fff, 0x00008000, 0x8000ffff, 636); 
TEST_RR_OP( 160 , stsa16, 0x00000000, 0x80000000, 0x80000000, 640); 
TEST_RR_OP( 161 , stsa16, 0x38478000, 0x80008000, 0x47b90000, 644); 
TEST_RR_OP( 162 , stsa16, 0x0000fffe, 0x0000ffff, 0x0000ffff, 648); 
TEST_RR_OP( 163 , stsa16, 0xad3a7fff, 0xffff8000, 0x52c5ffff, 652); 
TEST_RR_OP( 164 , stsa16, 0x0001ffff, 0x0000ffff, 0xffff0000, 656); 
TEST_RR_OP( 165 , stsa16, 0xc71d010f, 0x80000110, 0xb8e3ffff, 660); 
TEST_RR_OP( 166 , stsa16, 0xfffff67c, 0xffff0000, 0x0000f67c, 664); 
TEST_RR_OP( 167 , stsa16, 0xffff920e, 0xffff8000, 0x0000120e, 668); 
TEST_RR_OP( 168 , stsa16, 0xffff0000, 0xffff0000, 0x00000000, 672); 
TEST_RR_OP( 169 , stsa16, 0x7ffffffe, 0xffffffff, 0x8000ffff, 676); 
TEST_RR_OP( 170 , stsa16, 0x21797fff, 0x0000ffff, 0xde878000, 680); 
TEST_RR_OP( 171 , stsa16, 0x00000000, 0x80008000, 0x80008000, 684); 
TEST_RR_OP( 172 , stsa16, 0xffff0000, 0xffff0000, 0x00000000, 688); 
TEST_RR_OP( 173 , stsa16, 0xb3f68000, 0x33f68000, 0x80000000, 692); 
TEST_RR_OP( 174 , stsa16, 0xb71e0000, 0xb71e0000, 0x00000000, 696); 
TEST_RR_OP( 175 , stsa16, 0x1a760000, 0x1a750000, 0xffff0000, 700); 
TEST_RR_OP( 176 , stsa16, 0x00000000, 0x80008000, 0x80008000, 704); 
TEST_RR_OP( 177 , stsa16, 0xf82efcf1, 0xffff0000, 0x07d1fcf1, 708); 
TEST_RR_OP( 178 , stsa16, 0x00008000, 0xffff0000, 0xffff8000, 712); 
TEST_RR_OP( 179 , stsa16, 0x3aa1fffe, 0xffffffff, 0xc55effff, 716); 
TEST_RR_OP( 180 , stsa16, 0xaf937db8, 0xaf927db9, 0xffffffff, 720); 
TEST_RR_OP( 181 , stsa16, 0x4f4c7fff, 0x4f4bffff, 0xffff8000, 724); 
TEST_RR_OP( 182 , stsa16, 0x0d577fff, 0x045bffff, 0xf7048000, 728); 
TEST_RR_OP( 183 , stsa16, 0x10defe7b, 0x8000fe7b, 0x6f220000, 732); 
TEST_RR_OP( 184 , stsa16, 0x54117fff, 0xd411ffff, 0x80008000, 736); 
TEST_RR_OP( 185 , stsa16, 0x1596ffff, 0x15960000, 0x0000ffff, 740); 
TEST_RR_OP( 186 , stsa16, 0x7fff7fff, 0xffff8000, 0x8000ffff, 744); 
TEST_RR_OP( 187 , stsa16, 0x80008000, 0x80000000, 0x00008000, 748); 
TEST_RR_OP( 188 , stsa16, 0x1809744c, 0x9809f44c, 0x80008000, 752); 
TEST_RR_OP( 189 , stsa16, 0x44f78dab, 0xffffdb42, 0xbb08b269, 756); 
TEST_RR_OP( 190 , stsa16, 0x00000b9c, 0x00000b9c, 0x00000000, 760); 
TEST_RR_OP( 191 , stsa16, 0x0001ffff, 0x0000ffff, 0xffff0000, 764); 
TEST_RR_OP( 192 , stsa16, 0x00005562, 0x00000000, 0x00005562, 768); 
TEST_RR_OP( 193 , stsa16, 0x7c8cffff, 0x8000ffff, 0x03740000, 772); 
TEST_RR_OP( 194 , stsa16, 0xffffdf60, 0xffff5f60, 0x00008000, 776); 
TEST_RR_OP( 195 , stsa16, 0x0000c63a, 0x8000c63a, 0x80000000, 780); 
TEST_RR_OP( 196 , stsa16, 0x0000d654, 0x8000d655, 0x8000ffff, 784); 
TEST_RR_OP( 197 , stsa16, 0xb04a8000, 0x00008000, 0x4fb60000, 788); 
TEST_RR_OP( 198 , stsa16, 0x92afec7b, 0x12af6c7b, 0x80008000, 792); 
TEST_RR_OP( 199 , stsa16, 0xeba5369b, 0x80008000, 0x945bb69b, 796); 

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
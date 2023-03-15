# See LICENSE for license details.
#*****************************************************************************
# smin16.S
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

TEST_RR_OP( 2 , smin16, 0x0000ffff, 0x0000ffff, 0x6ef7ffff, 8); 
TEST_RR_OP( 3 , smin16, 0x80008067, 0x8000edb4, 0x09a28067, 12); 
TEST_RR_OP( 4 , smin16, 0x8000ffff, 0x8234ffff, 0x8000ffff, 16); 
TEST_RR_OP( 5 , smin16, 0xffff8000, 0x00000000, 0xffff8000, 20); 
TEST_RR_OP( 6 , smin16, 0x80008000, 0xffff8000, 0x80006d2e, 24); 
TEST_RR_OP( 7 , smin16, 0x00008000, 0x00008000, 0x00008000, 28); 
TEST_RR_OP( 8 , smin16, 0x000088f8, 0x00008ea8, 0x000088f8, 32); 
TEST_RR_OP( 9 , smin16, 0x8e740000, 0x8e74527b, 0xaacc0000, 36); 
TEST_RR_OP( 10 , smin16, 0x80008000, 0x80008000, 0x0000ffff, 40); 
TEST_RR_OP( 11 , smin16, 0x8000d53c, 0x0000ffff, 0x8000d53c, 44); 
TEST_RR_OP( 12 , smin16, 0x80008000, 0xffffffff, 0x80008000, 48); 
TEST_RR_OP( 13 , smin16, 0x8000ffff, 0x8dd7ffff, 0x8000ffff, 52); 
TEST_RR_OP( 14 , smin16, 0x8000cd79, 0xffff0000, 0x8000cd79, 56); 
TEST_RR_OP( 15 , smin16, 0xffffffff, 0x0000ffff, 0xffffffff, 60); 
TEST_RR_OP( 16 , smin16, 0x80000000, 0xffff0000, 0x80000000, 64); 
TEST_RR_OP( 17 , smin16, 0xffff0000, 0x00000000, 0xffff0000, 68); 
TEST_RR_OP( 18 , smin16, 0xffff8000, 0x00008000, 0xffffffff, 72); 
TEST_RR_OP( 19 , smin16, 0xffff8000, 0xffff8000, 0x265c8000, 76); 
TEST_RR_OP( 20 , smin16, 0x80008000, 0x8000ffff, 0xffff8000, 80); 
TEST_RR_OP( 21 , smin16, 0x00008000, 0x00008000, 0x00000000, 84); 
TEST_RR_OP( 22 , smin16, 0x0000f42a, 0x0000f42a, 0x0000f4e5, 88); 
TEST_RR_OP( 23 , smin16, 0x00008000, 0x00008000, 0x0000ffff, 92); 
TEST_RR_OP( 24 , smin16, 0xda048000, 0x00008000, 0xda04e909, 96); 
TEST_RR_OP( 25 , smin16, 0x9bfb8000, 0x9bfb8000, 0xffffffff, 100); 
TEST_RR_OP( 26 , smin16, 0x80008000, 0x80000000, 0xffff8000, 104); 
TEST_RR_OP( 27 , smin16, 0xffff8000, 0xffff0000, 0xffff8000, 108); 
TEST_RR_OP( 28 , smin16, 0x8000ffff, 0x8000ffff, 0xcdcaffff, 112); 
TEST_RR_OP( 29 , smin16, 0xe2508000, 0xffff0000, 0xe2508000, 116); 
TEST_RR_OP( 30 , smin16, 0x8000eeec, 0x8000eeec, 0x800073db, 120); 
TEST_RR_OP( 31 , smin16, 0x80008000, 0xdb509311, 0x80008000, 124); 
TEST_RR_OP( 32 , smin16, 0xffffa4af, 0xffffa4af, 0x0000ffff, 128); 
TEST_RR_OP( 33 , smin16, 0x80008000, 0xd66f8000, 0x8000d842, 132); 
TEST_RR_OP( 34 , smin16, 0x0000e183, 0x1fb4e183, 0x00002732, 136); 
TEST_RR_OP( 35 , smin16, 0xffff0000, 0x00000000, 0xffff0000, 140); 
TEST_RR_OP( 36 , smin16, 0x8000a7f9, 0x8000a7f9, 0xffff7ccd, 144); 
TEST_RR_OP( 37 , smin16, 0x80000000, 0xf3650000, 0x80000000, 148); 
TEST_RR_OP( 38 , smin16, 0xffff8000, 0x00000000, 0xffff8000, 152); 
TEST_RR_OP( 39 , smin16, 0x80008000, 0x750b8000, 0x8000ffff, 156); 
TEST_RR_OP( 40 , smin16, 0xffff8000, 0xffff0000, 0xffff8000, 160); 
TEST_RR_OP( 41 , smin16, 0x80008000, 0xffff8000, 0x80008000, 164); 
TEST_RR_OP( 42 , smin16, 0x00008000, 0x00008000, 0x0000b350, 168); 
TEST_RR_OP( 43 , smin16, 0x8000ffff, 0x8000ffff, 0x11bc0000, 172); 
TEST_RR_OP( 44 , smin16, 0xdc9e8000, 0xffff8000, 0xdc9effff, 176); 
TEST_RR_OP( 45 , smin16, 0xffffffff, 0x0000ffff, 0xffff0000, 180); 
TEST_RR_OP( 46 , smin16, 0x80000000, 0x00000000, 0x80000000, 184); 
TEST_RR_OP( 47 , smin16, 0x80008000, 0x80008000, 0x80008000, 188); 
TEST_RR_OP( 48 , smin16, 0x8000ffff, 0x8000ffff, 0x8000355e, 192); 
TEST_RR_OP( 49 , smin16, 0x00000000, 0x00000000, 0x0000378b, 196); 
TEST_RR_OP( 50 , smin16, 0x80000000, 0x80000000, 0xec240000, 200); 
TEST_RR_OP( 51 , smin16, 0x80000000, 0x00000000, 0x80004427, 204); 
TEST_RR_OP( 52 , smin16, 0x80008000, 0x37262ff5, 0x80008000, 208); 
TEST_RR_OP( 53 , smin16, 0xffff20f9, 0xffff6889, 0xffff20f9, 212); 
TEST_RR_OP( 54 , smin16, 0xee850000, 0x081b0000, 0xee850000, 216); 
TEST_RR_OP( 55 , smin16, 0x80008000, 0x80008000, 0x9c60ffff, 220); 
TEST_RR_OP( 56 , smin16, 0xffff8000, 0x4af2576e, 0xffff8000, 224); 
TEST_RR_OP( 57 , smin16, 0x80008000, 0x80008000, 0xa1ab8000, 228); 
TEST_RR_OP( 58 , smin16, 0x0000ffff, 0x0000ffff, 0x0000ffff, 232); 
TEST_RR_OP( 59 , smin16, 0xd2d38000, 0xd2d38000, 0x3bb68000, 236); 
TEST_RR_OP( 60 , smin16, 0xffff0000, 0x00000000, 0xffff0000, 240); 
TEST_RR_OP( 61 , smin16, 0x80000000, 0x00000000, 0x80000000, 244); 
TEST_RR_OP( 62 , smin16, 0xcad7ffff, 0xcad7ffff, 0xffffffff, 248); 
TEST_RR_OP( 63 , smin16, 0x9d490000, 0x9d490000, 0xffff0000, 252); 
TEST_RR_OP( 64 , smin16, 0x8000ffff, 0x80000ec5, 0xffffffff, 256); 
TEST_RR_OP( 65 , smin16, 0x80000000, 0x00000000, 0x80000000, 260); 
TEST_RR_OP( 66 , smin16, 0xafc2ffff, 0xafc20000, 0x5a90ffff, 264); 
TEST_RR_OP( 67 , smin16, 0x80008000, 0x80008000, 0x80008000, 268); 
TEST_RR_OP( 68 , smin16, 0x80000000, 0xffff0000, 0x80004be8, 272); 
TEST_RR_OP( 69 , smin16, 0x0000a0c5, 0x0000a0c5, 0x0000ffff, 276); 
TEST_RR_OP( 70 , smin16, 0x0000cbc4, 0x0902cbc4, 0x00000000, 280); 
TEST_RR_OP( 71 , smin16, 0x8efe8000, 0x8efe0000, 0xffff8000, 284); 
TEST_RR_OP( 72 , smin16, 0xffff8000, 0x1122ffff, 0xffff8000, 288); 
TEST_RR_OP( 73 , smin16, 0xadfcf468, 0xffff0000, 0xadfcf468, 292); 
TEST_RR_OP( 74 , smin16, 0x80008302, 0x00008302, 0x8000ffff, 296); 
TEST_RR_OP( 75 , smin16, 0xfc56d81e, 0xffffffff, 0xfc56d81e, 300); 
TEST_RR_OP( 76 , smin16, 0xffff8000, 0xffffbea5, 0x00008000, 304); 
TEST_RR_OP( 77 , smin16, 0x80008000, 0x00008000, 0x80008000, 308); 
TEST_RR_OP( 78 , smin16, 0x80008000, 0x8000b502, 0x80008000, 312); 
TEST_RR_OP( 79 , smin16, 0x0000ffff, 0x4e6fffff, 0x0000ffff, 316); 
TEST_RR_OP( 80 , smin16, 0xffff0000, 0xffff0000, 0xffff0000, 320); 
TEST_RR_OP( 81 , smin16, 0xffff8000, 0x78aeffff, 0xffff8000, 324); 
TEST_RR_OP( 82 , smin16, 0xffff8000, 0xffff0000, 0x29428000, 328); 
TEST_RR_OP( 83 , smin16, 0x9b0affff, 0x9b0a55bd, 0x0000ffff, 332); 
TEST_RR_OP( 84 , smin16, 0x80008000, 0x80008000, 0xcd4c8000, 336); 
TEST_RR_OP( 85 , smin16, 0x0000aa7a, 0x0000aa7a, 0x0000074f, 340); 
TEST_RR_OP( 86 , smin16, 0xdef7c12a, 0xdef70000, 0x0000c12a, 344); 
TEST_RR_OP( 87 , smin16, 0x80008000, 0x80000000, 0x9e828000, 348); 
TEST_RR_OP( 88 , smin16, 0x80008000, 0x80008000, 0x80000000, 352); 
TEST_RR_OP( 89 , smin16, 0x80008000, 0x00008000, 0x80008fb4, 356); 
TEST_RR_OP( 90 , smin16, 0x80008000, 0x80008000, 0x14628000, 360); 
TEST_RR_OP( 91 , smin16, 0x89528000, 0xffffffff, 0x89528000, 364); 
TEST_RR_OP( 92 , smin16, 0x8000ffff, 0xffffffff, 0x80000000, 368); 
TEST_RR_OP( 93 , smin16, 0xffff9eb5, 0x00009eb5, 0xffffffff, 372); 
TEST_RR_OP( 94 , smin16, 0x80008000, 0xffffe0d1, 0x80008000, 376); 
TEST_RR_OP( 95 , smin16, 0xffffb096, 0x0000b096, 0xffff0000, 380); 
TEST_RR_OP( 96 , smin16, 0x8000e4b8, 0xc7820000, 0x8000e4b8, 384); 
TEST_RR_OP( 97 , smin16, 0xa7cdffff, 0xffff45b2, 0xa7cdffff, 388); 
TEST_RR_OP( 98 , smin16, 0xf13b8000, 0xf13b8000, 0x6d31aeaa, 392); 
TEST_RR_OP( 99 , smin16, 0xb7368000, 0xb7368000, 0xffff8000, 396); 
TEST_RR_OP( 100 , smin16, 0xffff8000, 0xffff8000, 0xffff0000, 400); 
TEST_RR_OP( 101 , smin16, 0x80008000, 0x80000000, 0x80008000, 404); 
TEST_RR_OP( 102 , smin16, 0xffffc538, 0xffff0000, 0x0000c538, 408); 
TEST_RR_OP( 103 , smin16, 0x00008000, 0x00008000, 0x00008000, 412); 
TEST_RR_OP( 104 , smin16, 0xffff8000, 0x0000120f, 0xffff8000, 416); 
TEST_RR_OP( 105 , smin16, 0x8000bfcc, 0x8000bfcc, 0x511fffff, 420); 
TEST_RR_OP( 106 , smin16, 0x80000bd9, 0x80000bd9, 0xffff7fbd, 424); 
TEST_RR_OP( 107 , smin16, 0xc502f495, 0xc502f495, 0xca2f0000, 428); 
TEST_RR_OP( 108 , smin16, 0x80008000, 0x80004013, 0x00008000, 432); 
TEST_RR_OP( 109 , smin16, 0xc4c60000, 0xd4840000, 0xc4c63909, 436); 
TEST_RR_OP( 110 , smin16, 0xe758ffff, 0xffffffff, 0xe758ffff, 440); 
TEST_RR_OP( 111 , smin16, 0xc2508000, 0x00000000, 0xc2508000, 444); 
TEST_RR_OP( 112 , smin16, 0x80008000, 0x51ed8000, 0x80008000, 448); 
TEST_RR_OP( 113 , smin16, 0xffffffff, 0xffffffff, 0x00000000, 452); 
TEST_RR_OP( 114 , smin16, 0x80008000, 0x8000ffff, 0xcaa38000, 456); 
TEST_RR_OP( 115 , smin16, 0x8000ffff, 0x80007c70, 0x4924ffff, 460); 
TEST_RR_OP( 116 , smin16, 0xffff0000, 0xffff0000, 0xffff0000, 464); 
TEST_RR_OP( 117 , smin16, 0xe6cfcb5a, 0xe6cf2d22, 0xffffcb5a, 468); 
TEST_RR_OP( 118 , smin16, 0x1a2a8000, 0x6a438000, 0x1a2a8000, 472); 
TEST_RR_OP( 119 , smin16, 0x03070000, 0x6a390000, 0x030737be, 476); 
TEST_RR_OP( 120 , smin16, 0xff158000, 0xffff8000, 0xff158000, 480); 
TEST_RR_OP( 121 , smin16, 0xffffb859, 0x0000b859, 0xffff0000, 484); 
TEST_RR_OP( 122 , smin16, 0xfa8d8000, 0x00008000, 0xfa8dc748, 488); 
TEST_RR_OP( 123 , smin16, 0x0000b876, 0x00001c72, 0x4049b876, 492); 
TEST_RR_OP( 124 , smin16, 0xffff8000, 0xffff8000, 0x00000000, 496); 
TEST_RR_OP( 125 , smin16, 0x800084c7, 0x0000ffff, 0x800084c7, 500); 
TEST_RR_OP( 126 , smin16, 0xfffff671, 0x5ddef671, 0xffff0000, 504); 
TEST_RR_OP( 127 , smin16, 0xffff8000, 0xffff8000, 0x0000e126, 508); 
TEST_RR_OP( 128 , smin16, 0x00008000, 0x2d528000, 0x0000e635, 512); 
TEST_RR_OP( 129 , smin16, 0x0000ffff, 0x0000ffff, 0x09feffff, 516); 
TEST_RR_OP( 130 , smin16, 0x0000e67e, 0x00000000, 0x0000e67e, 520); 
TEST_RR_OP( 131 , smin16, 0x800086ba, 0x80008b2d, 0x000086ba, 524); 
TEST_RR_OP( 132 , smin16, 0xdd02ffff, 0xffffffff, 0xdd02ffff, 528); 
TEST_RR_OP( 133 , smin16, 0xffff8000, 0xffffffff, 0x00008000, 532); 
TEST_RR_OP( 134 , smin16, 0xffffffff, 0x00000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , smin16, 0x00008000, 0x00008000, 0x1ef20000, 540); 
TEST_RR_OP( 136 , smin16, 0xa1329c83, 0xa1329c83, 0x0000ffff, 544); 
TEST_RR_OP( 137 , smin16, 0x80008000, 0x999f8000, 0x80008000, 548); 
TEST_RR_OP( 138 , smin16, 0xffffcc66, 0x0000cc66, 0xffffffff, 552); 
TEST_RR_OP( 139 , smin16, 0x00008000, 0x57453ada, 0x00008000, 556); 
TEST_RR_OP( 140 , smin16, 0x0000cc31, 0x0000cc31, 0x00000000, 560); 
TEST_RR_OP( 141 , smin16, 0xffff0000, 0x00000000, 0xffff0000, 564); 
TEST_RR_OP( 142 , smin16, 0x8000ffff, 0x80005afc, 0x8000ffff, 568); 
TEST_RR_OP( 143 , smin16, 0xffff8000, 0xffff599d, 0x00008000, 572); 
TEST_RR_OP( 144 , smin16, 0xede3f2fb, 0xede3ffff, 0x41e2f2fb, 576); 
TEST_RR_OP( 145 , smin16, 0x80008000, 0x80008000, 0x8000ffff, 580); 
TEST_RR_OP( 146 , smin16, 0x80008000, 0x80008000, 0x9fd90000, 584); 
TEST_RR_OP( 147 , smin16, 0xffff8000, 0xffffffff, 0x00008000, 588); 
TEST_RR_OP( 148 , smin16, 0x80008000, 0x80000000, 0x1c448000, 592); 
TEST_RR_OP( 149 , smin16, 0x80008000, 0x80008000, 0x9cff0000, 596); 
TEST_RR_OP( 150 , smin16, 0xffff0000, 0x00000000, 0xffff0000, 600); 
TEST_RR_OP( 151 , smin16, 0xffff0000, 0xffff0000, 0x00000000, 604); 
TEST_RR_OP( 152 , smin16, 0xd4360000, 0x00003e17, 0xd4360000, 608); 
TEST_RR_OP( 153 , smin16, 0xc8bd8000, 0xc8bd8000, 0xcbb48000, 612); 
TEST_RR_OP( 154 , smin16, 0x80008000, 0x8000ffff, 0x94c58000, 616); 
TEST_RR_OP( 155 , smin16, 0xffffffff, 0xffff31ad, 0xffffffff, 620); 
TEST_RR_OP( 156 , smin16, 0x80000000, 0x80000000, 0xffff47f9, 624); 
TEST_RR_OP( 157 , smin16, 0x8000b3a9, 0x8000ffff, 0xffffb3a9, 628); 
TEST_RR_OP( 158 , smin16, 0x80000000, 0x80000000, 0x80000000, 632); 
TEST_RR_OP( 159 , smin16, 0xffffffff, 0xffff55af, 0x0000ffff, 636); 
TEST_RR_OP( 160 , smin16, 0x80008000, 0x76fc8000, 0x8000999b, 640); 
TEST_RR_OP( 161 , smin16, 0xffffffff, 0x6552ffff, 0xffffffff, 644); 
TEST_RR_OP( 162 , smin16, 0xffff8000, 0x54781305, 0xffff8000, 648); 
TEST_RR_OP( 163 , smin16, 0xa3e1ffff, 0xe2fa79c2, 0xa3e1ffff, 652); 
TEST_RR_OP( 164 , smin16, 0xffffffff, 0x4a3effff, 0xffff7691, 656); 
TEST_RR_OP( 165 , smin16, 0x8000ffff, 0xffffffff, 0x8000ffff, 660); 
TEST_RR_OP( 166 , smin16, 0x81228000, 0x6caf8000, 0x8122ffff, 664); 
TEST_RR_OP( 167 , smin16, 0x8000ffff, 0x8000ffff, 0x80000000, 668); 
TEST_RR_OP( 168 , smin16, 0x0000ffff, 0x0000ffff, 0x00006a7a, 672); 
TEST_RR_OP( 169 , smin16, 0x8000ffff, 0x8000ffff, 0x8000ffff, 676); 
TEST_RR_OP( 170 , smin16, 0x80008000, 0x8000b8ec, 0x00008000, 680); 
TEST_RR_OP( 171 , smin16, 0x80008000, 0x412bffff, 0x80008000, 684); 
TEST_RR_OP( 172 , smin16, 0x80008000, 0x80008000, 0x00000000, 688); 
TEST_RR_OP( 173 , smin16, 0x80008000, 0x80008000, 0x59f7ffff, 692); 
TEST_RR_OP( 174 , smin16, 0x0000ffff, 0x0cd5ffff, 0x00000000, 696); 
TEST_RR_OP( 175 , smin16, 0xffff8000, 0xffff70ca, 0x00008000, 700); 
TEST_RR_OP( 176 , smin16, 0x8000ffff, 0x0000ffff, 0x80000000, 704); 
TEST_RR_OP( 177 , smin16, 0x951dffff, 0x64aeffff, 0x951dffff, 708); 
TEST_RR_OP( 178 , smin16, 0x80008336, 0x80008336, 0x8000ffff, 712); 
TEST_RR_OP( 179 , smin16, 0x80009477, 0x00000000, 0x80009477, 716); 
TEST_RR_OP( 180 , smin16, 0x80008faf, 0x80008faf, 0x80000000, 720); 
TEST_RR_OP( 181 , smin16, 0x8000ffff, 0x8000ffff, 0x80000000, 724); 
TEST_RR_OP( 182 , smin16, 0xffff8000, 0xffff8000, 0x0000ffff, 728); 
TEST_RR_OP( 183 , smin16, 0x80000000, 0xffff0000, 0x80000000, 732); 
TEST_RR_OP( 184 , smin16, 0xfffff99e, 0xffff6068, 0x14d9f99e, 736); 
TEST_RR_OP( 185 , smin16, 0x00000000, 0x00000000, 0x00005abb, 740); 
TEST_RR_OP( 186 , smin16, 0xffff8000, 0xffffffff, 0xffff8000, 744); 
TEST_RR_OP( 187 , smin16, 0x80000000, 0x800003f4, 0x80000000, 748); 
TEST_RR_OP( 188 , smin16, 0x00008000, 0x00008000, 0x00009d9e, 752); 
TEST_RR_OP( 189 , smin16, 0x80008000, 0x80000de2, 0xe1368000, 756); 
TEST_RR_OP( 190 , smin16, 0x80008000, 0x00008000, 0x80000000, 760); 
TEST_RR_OP( 191 , smin16, 0x8000ffff, 0xacc9ffff, 0x80000000, 764); 
TEST_RR_OP( 192 , smin16, 0x80008000, 0x2bd00000, 0x80008000, 768); 
TEST_RR_OP( 193 , smin16, 0x8a160000, 0x8a160000, 0x510b0000, 772); 
TEST_RR_OP( 194 , smin16, 0xffffd12b, 0xffffffff, 0x0000d12b, 776); 
TEST_RR_OP( 195 , smin16, 0xffffffff, 0x00001f7a, 0xffffffff, 780); 
TEST_RR_OP( 196 , smin16, 0xd0fcf769, 0xfffff769, 0xd0fc0000, 784); 
TEST_RR_OP( 197 , smin16, 0x80000000, 0xffff62c9, 0x80000000, 788); 
TEST_RR_OP( 198 , smin16, 0xa3968000, 0xa3968000, 0x00008000, 792); 
TEST_RR_OP( 199 , smin16, 0x8000ffff, 0x80000000, 0x0000ffff, 796); 

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
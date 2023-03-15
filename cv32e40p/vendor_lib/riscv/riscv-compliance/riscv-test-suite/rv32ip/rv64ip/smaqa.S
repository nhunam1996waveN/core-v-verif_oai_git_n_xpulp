# See LICENSE for license details.
#*****************************************************************************
# smaqa.S
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

TEST_RR_OP( 2 , smaqa, 0x00000039, 0xa838f0f7, 0xffffffff, 8); 
TEST_RR_OP( 3 , smaqa, 0x00000039, 0x80000000, 0x00000000, 12); 
TEST_RR_OP( 4 , smaqa, 0x000000b9, 0x80000000, 0xffffffff, 16); 
TEST_RR_OP( 5 , smaqa, 0xffffefda, 0x03156a5b, 0xd9f2e2f8, 20); 
TEST_RR_OP( 6 , smaqa, 0xffffeeb0, 0xffffffff, 0x6a70e66a, 24); 
TEST_RR_OP( 7 , smaqa, 0xffffeeb0, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , smaqa, 0xffffeeb0, 0x00000000, 0x00000000, 32); 
TEST_RR_OP( 9 , smaqa, 0xffffeec3, 0xffffffff, 0x24d27087, 36); 
TEST_RR_OP( 10 , smaqa, 0xffffef43, 0xffffffff, 0x80000000, 40); 
TEST_RR_OP( 11 , smaqa, 0xffffef43, 0x00000000, 0x80000000, 44); 
TEST_RR_OP( 12 , smaqa, 0xffffef8e, 0xf9538edb, 0xffffffff, 48); 
TEST_RR_OP( 13 , smaqa, 0xffffef8e, 0x00000000, 0xff356746, 52); 
TEST_RR_OP( 14 , smaqa, 0xffffef8e, 0xffffffff, 0x00000000, 56); 
TEST_RR_OP( 15 , smaqa, 0xfffff00e, 0x80000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , smaqa, 0x0000300e, 0x80000000, 0x80000000, 64); 
TEST_RR_OP( 17 , smaqa, 0x0000300e, 0x80000000, 0x00000000, 68); 
TEST_RR_OP( 18 , smaqa, 0x0000520e, 0xbc605dd0, 0x80000000, 72); 
TEST_RR_OP( 19 , smaqa, 0x00005175, 0x563824e7, 0xffffffff, 76); 
TEST_RR_OP( 20 , smaqa, 0x00005179, 0xffffffff, 0xffffffff, 80); 
TEST_RR_OP( 21 , smaqa, 0x00004a4f, 0x622845cf, 0x2f9f8080, 84); 
TEST_RR_OP( 22 , smaqa, 0x00004a4f, 0x00000000, 0x80000000, 88); 
TEST_RR_OP( 23 , smaqa, 0x00004b34, 0x85cf0cbb, 0xffffffff, 92); 
TEST_RR_OP( 24 , smaqa, 0x00004b34, 0x80000000, 0x00000000, 96); 
TEST_RR_OP( 25 , smaqa, 0x00004b34, 0x00000000, 0x80000000, 100); 
TEST_RR_OP( 26 , smaqa, 0x000046b4, 0x09750303, 0x80000000, 104); 
TEST_RR_OP( 27 , smaqa, 0x00006e34, 0xb1c60f0a, 0x80000000, 108); 
TEST_RR_OP( 28 , smaqa, 0x00006e34, 0x00000000, 0x00000000, 112); 
TEST_RR_OP( 29 , smaqa, 0x00009434, 0xb45218d5, 0x80000000, 116); 
TEST_RR_OP( 30 , smaqa, 0x000094b4, 0xffffffff, 0x80000000, 120); 
TEST_RR_OP( 31 , smaqa, 0x000094b8, 0xffffffff, 0xffffffff, 124); 
TEST_RR_OP( 32 , smaqa, 0x000094b8, 0x00000000, 0x00000000, 128); 
TEST_RR_OP( 33 , smaqa, 0x000094b8, 0xb07bf189, 0x00000000, 132); 
TEST_RR_OP( 34 , smaqa, 0x000093e6, 0xffffffff, 0x5ba66869, 136); 
TEST_RR_OP( 35 , smaqa, 0x00009466, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , smaqa, 0x000094e6, 0x80000000, 0xffffffff, 144); 
TEST_RR_OP( 37 , smaqa, 0x00009566, 0x80000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , smaqa, 0x00008466, 0x22c296b1, 0x80000000, 152); 
TEST_RR_OP( 39 , smaqa, 0x00008466, 0x71996d42, 0x00000000, 156); 
TEST_RR_OP( 40 , smaqa, 0x0000846a, 0xffffffff, 0xffffffff, 160); 
TEST_RR_OP( 41 , smaqa, 0x0000847e, 0xffffffff, 0x6596c52c, 164); 
TEST_RR_OP( 42 , smaqa, 0x000099fe, 0xd59891f9, 0x80000000, 168); 
TEST_RR_OP( 43 , smaqa, 0x0000715e, 0x00c43823, 0x646ca128, 172); 
TEST_RR_OP( 44 , smaqa, 0x0000715e, 0x80000000, 0x00000000, 176); 
TEST_RR_OP( 45 , smaqa, 0x0000715e, 0x80000000, 0x00000000, 180); 
TEST_RR_OP( 46 , smaqa, 0x0000715e, 0x00000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , smaqa, 0x000071de, 0x80000000, 0xffffffff, 188); 
TEST_RR_OP( 48 , smaqa, 0x000071de, 0x00000000, 0x80000000, 192); 
TEST_RR_OP( 49 , smaqa, 0x000071de, 0x00000000, 0x00000000, 196); 
TEST_RR_OP( 50 , smaqa, 0x000071de, 0x00000000, 0xf6dc38e2, 200); 
TEST_RR_OP( 51 , smaqa, 0x000071de, 0x00000000, 0xffffffff, 204); 
TEST_RR_OP( 52 , smaqa, 0x000071de, 0x00000000, 0x80000000, 208); 
TEST_RR_OP( 53 , smaqa, 0x000095d2, 0xe1e89df7, 0xe5f3aa33, 212); 
TEST_RR_OP( 54 , smaqa, 0x000095d2, 0x4e80d735, 0x00000000, 216); 
TEST_RR_OP( 55 , smaqa, 0x000095d2, 0x00000000, 0x487bedcf, 220); 
TEST_RR_OP( 56 , smaqa, 0x000094d2, 0xf9f01b10, 0xd4b1c4f3, 224); 
TEST_RR_OP( 57 , smaqa, 0x0000d4d2, 0x80000000, 0x80000000, 228); 
TEST_RR_OP( 58 , smaqa, 0x0000ba52, 0x80000000, 0x35a328b4, 232); 
TEST_RR_OP( 59 , smaqa, 0x0000b945, 0x18717b09, 0xffffffff, 236); 
TEST_RR_OP( 60 , smaqa, 0x0000a445, 0x2a6da8e5, 0x80000000, 240); 
TEST_RR_OP( 61 , smaqa, 0x0000a4c5, 0x80000000, 0xffffffff, 244); 
TEST_RR_OP( 62 , smaqa, 0x0000a4c5, 0x00000000, 0xd48c9668, 248); 
TEST_RR_OP( 63 , smaqa, 0x000096c5, 0x80000000, 0x1c49b934, 252); 
TEST_RR_OP( 64 , smaqa, 0x000096b3, 0xffffffff, 0xc318b87f, 256); 
TEST_RR_OP( 65 , smaqa, 0x00009666, 0xffffffff, 0x7655fc86, 260); 
TEST_RR_OP( 66 , smaqa, 0x00009673, 0x322da0f4, 0xffffffff, 264); 
TEST_RR_OP( 67 , smaqa, 0x00009673, 0x00000000, 0x0b8ec8bb, 268); 
TEST_RR_OP( 68 , smaqa, 0x0000d673, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , smaqa, 0x0000d673, 0xffffffff, 0x00000000, 276); 
TEST_RR_OP( 70 , smaqa, 0x00011673, 0x80000000, 0x80000000, 280); 
TEST_RR_OP( 71 , smaqa, 0x00015671, 0x1e64ed88, 0xf512f885, 284); 
TEST_RR_OP( 72 , smaqa, 0x00015671, 0x80000000, 0x00000000, 288); 
TEST_RR_OP( 73 , smaqa, 0x00019671, 0x80000000, 0x80000000, 292); 
TEST_RR_OP( 74 , smaqa, 0x000182f1, 0x80000000, 0x275775e6, 296); 
TEST_RR_OP( 75 , smaqa, 0x0001af71, 0x80000000, 0xa74db22d, 300); 
TEST_RR_OP( 76 , smaqa, 0x0001af71, 0x00000000, 0x3fb9d027, 304); 
TEST_RR_OP( 77 , smaqa, 0x0001af71, 0x00000000, 0xffffffff, 308); 
TEST_RR_OP( 78 , smaqa, 0x0001aff1, 0xffffffff, 0x80000000, 312); 
TEST_RR_OP( 79 , smaqa, 0x00018819, 0xb940b263, 0xb6b7f78c, 316); 
TEST_RR_OP( 80 , smaqa, 0x000187bb, 0x0f39dc3a, 0xffffffff, 320); 
TEST_RR_OP( 81 , smaqa, 0x000187bb, 0x91ce7cfc, 0x00000000, 324); 
TEST_RR_OP( 82 , smaqa, 0x000187bf, 0xffffffff, 0xffffffff, 328); 
TEST_RR_OP( 83 , smaqa, 0x000187bf, 0x8da5e69d, 0x00000000, 332); 
TEST_RR_OP( 84 , smaqa, 0x000187bf, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , smaqa, 0x00015bbf, 0x581c7d76, 0x80000000, 340); 
TEST_RR_OP( 86 , smaqa, 0x000181bf, 0x80000000, 0xb4c68e4d, 344); 
TEST_RR_OP( 87 , smaqa, 0x0001c1bf, 0x80000000, 0x80000000, 348); 
TEST_RR_OP( 88 , smaqa, 0x0001c0d6, 0x9c637f6b, 0xffffffff, 352); 
TEST_RR_OP( 89 , smaqa, 0x0001c10e, 0xffffffff, 0x9d16be57, 356); 
TEST_RR_OP( 90 , smaqa, 0x0001f9ef, 0x79d8c0b6, 0x710741b8, 360); 
TEST_RR_OP( 91 , smaqa, 0x0001f9ef, 0x63a54b3b, 0x00000000, 364); 
TEST_RR_OP( 92 , smaqa, 0x0001f953, 0x462e2bfd, 0xffffffff, 368); 
TEST_RR_OP( 93 , smaqa, 0x0001f957, 0xffffffff, 0xffffffff, 372); 
TEST_RR_OP( 94 , smaqa, 0x0001f957, 0x00000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , smaqa, 0x0001e370, 0xbaecdf98, 0x7a47f7d9, 380); 
TEST_RR_OP( 96 , smaqa, 0x0001e3f0, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , smaqa, 0x00020170, 0xc5850ad7, 0x80000000, 388); 
TEST_RR_OP( 98 , smaqa, 0x00020170, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , smaqa, 0x00020155, 0xffffffff, 0xa0fa443d, 396); 
TEST_RR_OP( 100 , smaqa, 0x000200d1, 0x2a56d034, 0xffffffff, 400); 
TEST_RR_OP( 101 , smaqa, 0x000200d1, 0x0fba7215, 0x00000000, 404); 
TEST_RR_OP( 102 , smaqa, 0x00020151, 0xffffffff, 0x80000000, 408); 
TEST_RR_OP( 103 , smaqa, 0x00020151, 0x00000000, 0x00000000, 412); 
TEST_RR_OP( 104 , smaqa, 0x00020151, 0x00000000, 0x00000000, 416); 
TEST_RR_OP( 105 , smaqa, 0x00020151, 0x14ff593b, 0x00000000, 420); 
TEST_RR_OP( 106 , smaqa, 0x00020151, 0x80000000, 0x00000000, 424); 
TEST_RR_OP( 107 , smaqa, 0x00020151, 0x00000000, 0x80000000, 428); 
TEST_RR_OP( 108 , smaqa, 0x00020151, 0x00000000, 0x4b4a6ead, 432); 
TEST_RR_OP( 109 , smaqa, 0x00020155, 0xffffffff, 0xffffffff, 436); 
TEST_RR_OP( 110 , smaqa, 0x000200ee, 0xffffffff, 0x70c34ee6, 440); 
TEST_RR_OP( 111 , smaqa, 0x000200ee, 0x00000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , smaqa, 0x0001dd4d, 0xe78c9f18, 0x5559d8e9, 448); 
TEST_RR_OP( 113 , smaqa, 0x0001dd51, 0xffffffff, 0xffffffff, 452); 
TEST_RR_OP( 114 , smaqa, 0x0001ddd1, 0xffffffff, 0x80000000, 456); 
TEST_RR_OP( 115 , smaqa, 0x0001bce6, 0x2437da08, 0x44a17b86, 460); 
TEST_RR_OP( 116 , smaqa, 0x0001bcea, 0xffffffff, 0xffffffff, 464); 
TEST_RR_OP( 117 , smaqa, 0x0001bcea, 0x89189e48, 0x00000000, 468); 
TEST_RR_OP( 118 , smaqa, 0x0001cc6a, 0x80000000, 0xe1e187e6, 472); 
TEST_RR_OP( 119 , smaqa, 0x0001cc6a, 0xffffffff, 0x00000000, 476); 
TEST_RR_OP( 120 , smaqa, 0x0001cc6a, 0x00000000, 0x80000000, 480); 
TEST_RR_OP( 121 , smaqa, 0x0001cc16, 0xe18a7376, 0xffffffff, 484); 
TEST_RR_OP( 122 , smaqa, 0x00020c16, 0x80000000, 0x80000000, 488); 
TEST_RR_OP( 123 , smaqa, 0x00020c96, 0x80000000, 0xffffffff, 492); 
TEST_RR_OP( 124 , smaqa, 0x00020c96, 0x00000000, 0xffffffff, 496); 
TEST_RR_OP( 125 , smaqa, 0x00020c96, 0xffffffff, 0x00000000, 500); 
TEST_RR_OP( 126 , smaqa, 0x00020c96, 0x00000000, 0x733ab61b, 504); 
TEST_RR_OP( 127 , smaqa, 0x00020c96, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , smaqa, 0x00024c96, 0x80000000, 0x80000000, 512); 
TEST_RR_OP( 129 , smaqa, 0x00024d16, 0xffffffff, 0x80000000, 516); 
TEST_RR_OP( 130 , smaqa, 0x00024d16, 0x00000000, 0xffffffff, 520); 
TEST_RR_OP( 131 , smaqa, 0x00024d16, 0x80000000, 0x00000000, 524); 
TEST_RR_OP( 132 , smaqa, 0x00024d16, 0x00000000, 0x00000000, 528); 
TEST_RR_OP( 133 , smaqa, 0x0001d5c6, 0x1578b952, 0x7d857b8a, 532); 
TEST_RR_OP( 134 , smaqa, 0x0001d646, 0xffffffff, 0x80000000, 536); 
TEST_RR_OP( 135 , smaqa, 0x0001bd46, 0x80000000, 0x32c30e29, 540); 
TEST_RR_OP( 136 , smaqa, 0x0001e246, 0xb6f1de75, 0x80000000, 544); 
TEST_RR_OP( 137 , smaqa, 0x0001e246, 0xffffffff, 0x00000000, 548); 
TEST_RR_OP( 138 , smaqa, 0x0001e246, 0xffffffff, 0x00000000, 552); 
TEST_RR_OP( 139 , smaqa, 0x0001c344, 0xf9c8024a, 0xc07d0aed, 556); 
TEST_RR_OP( 140 , smaqa, 0x0001c40b, 0xffffffff, 0x1b82c8d4, 560); 
TEST_RR_OP( 141 , smaqa, 0x0001c40f, 0xffffffff, 0xffffffff, 564); 
TEST_RR_OP( 142 , smaqa, 0x0001c40f, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , smaqa, 0x0001dc0f, 0xd0530467, 0x80000000, 572); 
TEST_RR_OP( 144 , smaqa, 0x0001a00f, 0x7819c6bc, 0x80000000, 576); 
TEST_RR_OP( 145 , smaqa, 0x00019f7d, 0x563bf809, 0xffffffff, 580); 
TEST_RR_OP( 146 , smaqa, 0x00019ffd, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , smaqa, 0x00019ffd, 0x92ef2727, 0x00000000, 588); 
TEST_RR_OP( 148 , smaqa, 0x00019ffd, 0xffffffff, 0x00000000, 592); 
TEST_RR_OP( 149 , smaqa, 0x00019ffd, 0x00000000, 0x3982de74, 596); 
TEST_RR_OP( 150 , smaqa, 0x00019dfd, 0x80000000, 0x045524c1, 600); 
TEST_RR_OP( 151 , smaqa, 0x00019e7d, 0x80000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , smaqa, 0x00019e7d, 0x80000000, 0x00000000, 608); 
TEST_RR_OP( 153 , smaqa, 0x00019e47, 0xffffffff, 0x2060eec8, 612); 
TEST_RR_OP( 154 , smaqa, 0x00019e47, 0xffffffff, 0x00000000, 616); 
TEST_RR_OP( 155 , smaqa, 0x00019e47, 0x80000000, 0x00000000, 620); 
TEST_RR_OP( 156 , smaqa, 0x0001d2c7, 0x80000000, 0x970969e4, 624); 
TEST_RR_OP( 157 , smaqa, 0x000212c7, 0x80000000, 0x80000000, 628); 
TEST_RR_OP( 158 , smaqa, 0x000212c7, 0x80000000, 0x00000000, 632); 
TEST_RR_OP( 159 , smaqa, 0x000212c7, 0x00000000, 0x7542e995, 636); 
TEST_RR_OP( 160 , smaqa, 0x00021347, 0xffffffff, 0x80000000, 640); 
TEST_RR_OP( 161 , smaqa, 0x000213c7, 0x80000000, 0xffffffff, 644); 
TEST_RR_OP( 162 , smaqa, 0x000213c7, 0x00000000, 0xffffffff, 648); 
TEST_RR_OP( 163 , smaqa, 0x00021447, 0x80000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , smaqa, 0x00021447, 0x00000000, 0xbc8d21e6, 656); 
TEST_RR_OP( 165 , smaqa, 0x00021447, 0x00000000, 0x80000000, 660); 
TEST_RR_OP( 166 , smaqa, 0x0001f7c7, 0x80000000, 0x39552206, 664); 
TEST_RR_OP( 167 , smaqa, 0x0001f7c7, 0x80000000, 0x00000000, 668); 
TEST_RR_OP( 168 , smaqa, 0x0001f7cb, 0xffffffff, 0xffffffff, 672); 
TEST_RR_OP( 169 , smaqa, 0x0001f7cb, 0x00000000, 0x80000000, 676); 
TEST_RR_OP( 170 , smaqa, 0x0001f202, 0x1a11f7bf, 0x807c5ef7, 680); 
TEST_RR_OP( 171 , smaqa, 0x0001f1a7, 0x037422c2, 0xffffffff, 684); 
TEST_RR_OP( 172 , smaqa, 0x0001f1a7, 0x00000000, 0x80000000, 688); 
TEST_RR_OP( 173 , smaqa, 0x0001f1a7, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , smaqa, 0x000231a7, 0x80000000, 0x80000000, 696); 
TEST_RR_OP( 175 , smaqa, 0x000231a7, 0x80000000, 0x00000000, 700); 
TEST_RR_OP( 176 , smaqa, 0x00023227, 0x80000000, 0xffffffff, 704); 
TEST_RR_OP( 177 , smaqa, 0x00023227, 0x211fa1af, 0x00000000, 708); 
TEST_RR_OP( 178 , smaqa, 0x000232a7, 0xffffffff, 0x80000000, 712); 
TEST_RR_OP( 179 , smaqa, 0x000232a7, 0x2b9347fc, 0x00000000, 716); 
TEST_RR_OP( 180 , smaqa, 0x000228de, 0xf3cb3dbf, 0x7d99e84b, 720); 
TEST_RR_OP( 181 , smaqa, 0x00022975, 0x51a08bed, 0xffffffff, 724); 
TEST_RR_OP( 182 , smaqa, 0x00025275, 0xae3c1121, 0x80000000, 728); 
TEST_RR_OP( 183 , smaqa, 0x00021c75, 0x6c9d9784, 0x80000000, 732); 
TEST_RR_OP( 184 , smaqa, 0x00021cf5, 0x80000000, 0xffffffff, 736); 
TEST_RR_OP( 185 , smaqa, 0x00025cf5, 0x80000000, 0x80000000, 740); 
TEST_RR_OP( 186 , smaqa, 0x00025cf5, 0x00000000, 0xffffffff, 744); 
TEST_RR_OP( 187 , smaqa, 0x00029cf5, 0x80000000, 0x80000000, 748); 
TEST_RR_OP( 188 , smaqa, 0x00029d31, 0x14a6a862, 0xffffffff, 752); 
TEST_RR_OP( 189 , smaqa, 0x0002aab1, 0xe53599ed, 0x80000000, 756); 
TEST_RR_OP( 190 , smaqa, 0x0002aab1, 0x00000000, 0x00000000, 760); 
TEST_RR_OP( 191 , smaqa, 0x0002aab1, 0x00000000, 0x80000000, 764); 
TEST_RR_OP( 192 , smaqa, 0x0002ab31, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , smaqa, 0x0002abb8, 0x8d60a2ea, 0xffffffff, 772); 
TEST_RR_OP( 194 , smaqa, 0x0002abb8, 0x80000000, 0x00000000, 776); 
TEST_RR_OP( 195 , smaqa, 0x0002ac3a, 0xffffffff, 0x3593892d, 780); 
TEST_RR_OP( 196 , smaqa, 0x0002ac3e, 0xffffffff, 0xffffffff, 784); 
TEST_RR_OP( 197 , smaqa, 0x0002ac3e, 0x00000000, 0x00000000, 788); 
TEST_RR_OP( 198 , smaqa, 0x0002ac3e, 0x00000000, 0x00000000, 792); 
TEST_RR_OP( 199 , smaqa, 0x0002ec3e, 0x80000000, 0x80000000, 796); 

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
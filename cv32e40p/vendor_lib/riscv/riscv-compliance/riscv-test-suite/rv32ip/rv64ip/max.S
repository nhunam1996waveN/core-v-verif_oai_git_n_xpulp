# See LICENSE for license details.
#*****************************************************************************
# max.S
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

TEST_RR_OP( 2 , max, 0xffffffff, 0xc530a983, 0xffffffff, 8); 
TEST_RR_OP( 3 , max, 0x7a2e28a7, 0xa08e2e9e, 0x7a2e28a7, 12); 
TEST_RR_OP( 4 , max, 0x7abc1deb, 0x804e1d14, 0x7abc1deb, 16); 
TEST_RR_OP( 5 , max, 0x00000000, 0x00000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , max, 0x00000000, 0x00000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , max, 0x00000000, 0x00000000, 0x80000000, 28); 
TEST_RR_OP( 8 , max, 0x5a8de918, 0x9049ee4d, 0x5a8de918, 32); 
TEST_RR_OP( 9 , max, 0xffffffff, 0xffffffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , max, 0x00000000, 0xffffffff, 0x00000000, 40); 
TEST_RR_OP( 11 , max, 0x00000000, 0x80000000, 0x00000000, 44); 
TEST_RR_OP( 12 , max, 0x00000000, 0xaeed02d7, 0x00000000, 48); 
TEST_RR_OP( 13 , max, 0xffffffff, 0xffffffff, 0xdcee121c, 52); 
TEST_RR_OP( 14 , max, 0x80000000, 0x80000000, 0x80000000, 56); 
TEST_RR_OP( 15 , max, 0x80000000, 0x80000000, 0x80000000, 60); 
TEST_RR_OP( 16 , max, 0x72b620b3, 0x72b620b3, 0x80000000, 64); 
TEST_RR_OP( 17 , max, 0xffffffff, 0xffffffff, 0x80000000, 68); 
TEST_RR_OP( 18 , max, 0x80000000, 0x80000000, 0x80000000, 72); 
TEST_RR_OP( 19 , max, 0x7b7d8dbf, 0x7b7d8dbf, 0xffffffff, 76); 
TEST_RR_OP( 20 , max, 0xffffffff, 0xffffffff, 0x80000000, 80); 
TEST_RR_OP( 21 , max, 0xbce19121, 0xbce19121, 0x80000000, 84); 
TEST_RR_OP( 22 , max, 0x00000000, 0xffffffff, 0x00000000, 88); 
TEST_RR_OP( 23 , max, 0x84d0a5d2, 0x80000000, 0x84d0a5d2, 92); 
TEST_RR_OP( 24 , max, 0x6a0bfb26, 0x00000000, 0x6a0bfb26, 96); 
TEST_RR_OP( 25 , max, 0x00000000, 0x00000000, 0x00000000, 100); 
TEST_RR_OP( 26 , max, 0x5849c822, 0x5849c822, 0xffffffff, 104); 
TEST_RR_OP( 27 , max, 0x1bb27b9e, 0x1bb27b9e, 0xffffffff, 108); 
TEST_RR_OP( 28 , max, 0x41126ffb, 0x41126ffb, 0x80000000, 112); 
TEST_RR_OP( 29 , max, 0xffffffff, 0xffffffff, 0xfd8a7129, 116); 
TEST_RR_OP( 30 , max, 0x607088c0, 0x607088c0, 0x80000000, 120); 
TEST_RR_OP( 31 , max, 0xffffffff, 0xffffffff, 0xd12decbc, 124); 
TEST_RR_OP( 32 , max, 0x93898c28, 0x93898c28, 0x80000000, 128); 
TEST_RR_OP( 33 , max, 0x793645af, 0x793645af, 0x00000000, 132); 
TEST_RR_OP( 34 , max, 0x00000000, 0x00000000, 0x80000000, 136); 
TEST_RR_OP( 35 , max, 0xffffffff, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , max, 0xffffffff, 0xffffffff, 0x80000000, 144); 
TEST_RR_OP( 37 , max, 0xffffffff, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , max, 0x321a5fe9, 0x321a5fe9, 0x00000000, 152); 
TEST_RR_OP( 39 , max, 0x1a5e591f, 0x00000000, 0x1a5e591f, 156); 
TEST_RR_OP( 40 , max, 0x00000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , max, 0x00000000, 0x80000000, 0x00000000, 164); 
TEST_RR_OP( 42 , max, 0x00000000, 0xffffffff, 0x00000000, 168); 
TEST_RR_OP( 43 , max, 0xb527fc9e, 0xb527fc9e, 0x80000000, 172); 
TEST_RR_OP( 44 , max, 0xffffffff, 0x80000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , max, 0x80000000, 0x80000000, 0x80000000, 180); 
TEST_RR_OP( 46 , max, 0x80000000, 0x80000000, 0x80000000, 184); 
TEST_RR_OP( 47 , max, 0xffffffff, 0xffffffff, 0xffffffff, 188); 
TEST_RR_OP( 48 , max, 0x80000000, 0x80000000, 0x80000000, 192); 
TEST_RR_OP( 49 , max, 0xffffffff, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , max, 0x647b74ed, 0x00000000, 0x647b74ed, 200); 
TEST_RR_OP( 51 , max, 0x019470d5, 0xc34318d0, 0x019470d5, 204); 
TEST_RR_OP( 52 , max, 0x715a0744, 0x00000000, 0x715a0744, 208); 
TEST_RR_OP( 53 , max, 0x234607eb, 0x234607eb, 0x80000000, 212); 
TEST_RR_OP( 54 , max, 0x00000000, 0x00000000, 0x00000000, 216); 
TEST_RR_OP( 55 , max, 0xffffffff, 0xffffffff, 0x80000000, 220); 
TEST_RR_OP( 56 , max, 0xffffffff, 0x80000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , max, 0x00000000, 0xffffffff, 0x00000000, 228); 
TEST_RR_OP( 58 , max, 0x00000000, 0x00000000, 0x00000000, 232); 
TEST_RR_OP( 59 , max, 0xf3f89ed9, 0xf3f89ed9, 0x80000000, 236); 
TEST_RR_OP( 60 , max, 0x00000000, 0xffffffff, 0x00000000, 240); 
TEST_RR_OP( 61 , max, 0xffffffff, 0xffffffff, 0xae635fe2, 244); 
TEST_RR_OP( 62 , max, 0x00000000, 0x00000000, 0xaecd61ff, 248); 
TEST_RR_OP( 63 , max, 0x00000000, 0xffffffff, 0x00000000, 252); 
TEST_RR_OP( 64 , max, 0xd6f5e57a, 0x80000000, 0xd6f5e57a, 256); 
TEST_RR_OP( 65 , max, 0x00000000, 0xe807c68f, 0x00000000, 260); 
TEST_RR_OP( 66 , max, 0xffffffff, 0x80000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , max, 0x00000000, 0x80000000, 0x00000000, 268); 
TEST_RR_OP( 68 , max, 0x00000000, 0x80000000, 0x00000000, 272); 
TEST_RR_OP( 69 , max, 0xffffffff, 0xffffffff, 0x80000000, 276); 
TEST_RR_OP( 70 , max, 0xffffffff, 0xd9aa0eea, 0xffffffff, 280); 
TEST_RR_OP( 71 , max, 0x00000000, 0x80000000, 0x00000000, 284); 
TEST_RR_OP( 72 , max, 0xffffffff, 0xffffffff, 0xffffffff, 288); 
TEST_RR_OP( 73 , max, 0x22b6808f, 0x80000000, 0x22b6808f, 292); 
TEST_RR_OP( 74 , max, 0x00000000, 0x00000000, 0x80000000, 296); 
TEST_RR_OP( 75 , max, 0x00000000, 0xffffffff, 0x00000000, 300); 
TEST_RR_OP( 76 , max, 0x1c30c529, 0xa9d9969d, 0x1c30c529, 304); 
TEST_RR_OP( 77 , max, 0xffffffff, 0x80000000, 0xffffffff, 308); 
TEST_RR_OP( 78 , max, 0x00000000, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , max, 0x80000000, 0x80000000, 0x80000000, 316); 
TEST_RR_OP( 80 , max, 0x1236529d, 0x80000000, 0x1236529d, 320); 
TEST_RR_OP( 81 , max, 0x00000000, 0xffffffff, 0x00000000, 324); 
TEST_RR_OP( 82 , max, 0x5c8f9bab, 0x80000000, 0x5c8f9bab, 328); 
TEST_RR_OP( 83 , max, 0x463388d5, 0x074d114b, 0x463388d5, 332); 
TEST_RR_OP( 84 , max, 0xffffffff, 0x80000000, 0xffffffff, 336); 
TEST_RR_OP( 85 , max, 0x80000000, 0x80000000, 0x80000000, 340); 
TEST_RR_OP( 86 , max, 0xf2eeb715, 0xf2eeb715, 0xd3693991, 344); 
TEST_RR_OP( 87 , max, 0x00000000, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , max, 0x00000000, 0x00000000, 0x80000000, 352); 
TEST_RR_OP( 89 , max, 0xffffffff, 0x932a163c, 0xffffffff, 356); 
TEST_RR_OP( 90 , max, 0xffffffff, 0xffffffff, 0xffffffff, 360); 
TEST_RR_OP( 91 , max, 0x677b17fe, 0x677b17fe, 0x00000000, 364); 
TEST_RR_OP( 92 , max, 0x80000000, 0x80000000, 0x80000000, 368); 
TEST_RR_OP( 93 , max, 0x00000000, 0x00000000, 0x00000000, 372); 
TEST_RR_OP( 94 , max, 0xffffffff, 0xb21caff0, 0xffffffff, 376); 
TEST_RR_OP( 95 , max, 0x4277c176, 0x4277c176, 0x00000000, 380); 
TEST_RR_OP( 96 , max, 0x80000000, 0x80000000, 0x80000000, 384); 
TEST_RR_OP( 97 , max, 0x80000000, 0x80000000, 0x80000000, 388); 
TEST_RR_OP( 98 , max, 0xffffffff, 0xffffffff, 0x95526710, 392); 
TEST_RR_OP( 99 , max, 0x00000000, 0x00000000, 0x00000000, 396); 
TEST_RR_OP( 100 , max, 0x00000000, 0x80000000, 0x00000000, 400); 
TEST_RR_OP( 101 , max, 0x14bfc4b9, 0x00000000, 0x14bfc4b9, 404); 
TEST_RR_OP( 102 , max, 0x00000000, 0x00000000, 0x00000000, 408); 
TEST_RR_OP( 103 , max, 0x00000000, 0xffffffff, 0x00000000, 412); 
TEST_RR_OP( 104 , max, 0x00000000, 0xffffffff, 0x00000000, 416); 
TEST_RR_OP( 105 , max, 0x00000000, 0x80000000, 0x00000000, 420); 
TEST_RR_OP( 106 , max, 0x00000000, 0x00000000, 0xdec4ae30, 424); 
TEST_RR_OP( 107 , max, 0x36e07767, 0x36e07767, 0xffffffff, 428); 
TEST_RR_OP( 108 , max, 0x00000000, 0x00000000, 0x80000000, 432); 
TEST_RR_OP( 109 , max, 0x80000000, 0x80000000, 0x80000000, 436); 
TEST_RR_OP( 110 , max, 0xae0b8471, 0xa332d35c, 0xae0b8471, 440); 
TEST_RR_OP( 111 , max, 0x3e686b88, 0x3e686b88, 0x00000000, 444); 
TEST_RR_OP( 112 , max, 0xebddb2ea, 0xebddb2ea, 0x80000000, 448); 
TEST_RR_OP( 113 , max, 0xffffffff, 0x9a839749, 0xffffffff, 452); 
TEST_RR_OP( 114 , max, 0x552266cf, 0xffffffff, 0x552266cf, 456); 
TEST_RR_OP( 115 , max, 0xffffffff, 0xffffffff, 0xffffffff, 460); 
TEST_RR_OP( 116 , max, 0x00000000, 0x00000000, 0xffffffff, 464); 
TEST_RR_OP( 117 , max, 0x00000000, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , max, 0xffffffff, 0xffffffff, 0xc497a595, 472); 
TEST_RR_OP( 119 , max, 0x00000000, 0x00000000, 0x80000000, 476); 
TEST_RR_OP( 120 , max, 0xd1697a68, 0x80000000, 0xd1697a68, 480); 
TEST_RR_OP( 121 , max, 0x1e581432, 0x80000000, 0x1e581432, 484); 
TEST_RR_OP( 122 , max, 0x80000000, 0x80000000, 0x80000000, 488); 
TEST_RR_OP( 123 , max, 0xffffffff, 0x80000000, 0xffffffff, 492); 
TEST_RR_OP( 124 , max, 0xffffffff, 0xffffffff, 0x80000000, 496); 
TEST_RR_OP( 125 , max, 0x00000000, 0xcdd51a17, 0x00000000, 500); 
TEST_RR_OP( 126 , max, 0x00000000, 0x80000000, 0x00000000, 504); 
TEST_RR_OP( 127 , max, 0xffffffff, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , max, 0x5d2b902e, 0xffffffff, 0x5d2b902e, 512); 
TEST_RR_OP( 129 , max, 0x48f6c52b, 0x48f6c52b, 0xbc2e8324, 516); 
TEST_RR_OP( 130 , max, 0x1965b626, 0xffffffff, 0x1965b626, 520); 
TEST_RR_OP( 131 , max, 0xffffffff, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , max, 0x00000000, 0x00000000, 0x80000000, 528); 
TEST_RR_OP( 133 , max, 0xffffffff, 0xffffffff, 0xffffffff, 532); 
TEST_RR_OP( 134 , max, 0x80000000, 0x80000000, 0x80000000, 536); 
TEST_RR_OP( 135 , max, 0xe21691ef, 0x9fe6ec62, 0xe21691ef, 540); 
TEST_RR_OP( 136 , max, 0x1e4ec670, 0x80000000, 0x1e4ec670, 544); 
TEST_RR_OP( 137 , max, 0x80000000, 0x80000000, 0x80000000, 548); 
TEST_RR_OP( 138 , max, 0x00000000, 0x80000000, 0x00000000, 552); 
TEST_RR_OP( 139 , max, 0x342c4675, 0xffffffff, 0x342c4675, 556); 
TEST_RR_OP( 140 , max, 0x59ac65d8, 0xffffffff, 0x59ac65d8, 560); 
TEST_RR_OP( 141 , max, 0xd2366541, 0xd2366541, 0x80000000, 564); 
TEST_RR_OP( 142 , max, 0x00000000, 0x00000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , max, 0x80000000, 0x80000000, 0x80000000, 572); 
TEST_RR_OP( 144 , max, 0xffffffff, 0xa3531e6f, 0xffffffff, 576); 
TEST_RR_OP( 145 , max, 0x00000000, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , max, 0xaa2fb056, 0x80000000, 0xaa2fb056, 584); 
TEST_RR_OP( 147 , max, 0x00000000, 0x00000000, 0x80000000, 588); 
TEST_RR_OP( 148 , max, 0x02b3cb57, 0x80000000, 0x02b3cb57, 592); 
TEST_RR_OP( 149 , max, 0x00000000, 0xffffffff, 0x00000000, 596); 
TEST_RR_OP( 150 , max, 0x4ba0f33e, 0x80000000, 0x4ba0f33e, 600); 
TEST_RR_OP( 151 , max, 0x0f4919a7, 0x0f4919a7, 0xffffffff, 604); 
TEST_RR_OP( 152 , max, 0x929afa08, 0x80000000, 0x929afa08, 608); 
TEST_RR_OP( 153 , max, 0x3f4b2b43, 0xffffffff, 0x3f4b2b43, 612); 
TEST_RR_OP( 154 , max, 0x00000000, 0xffffffff, 0x00000000, 616); 
TEST_RR_OP( 155 , max, 0xdf519401, 0xdf519401, 0x80000000, 620); 
TEST_RR_OP( 156 , max, 0x04ccd9d7, 0x00000000, 0x04ccd9d7, 624); 
TEST_RR_OP( 157 , max, 0x00000000, 0x00000000, 0x00000000, 628); 
TEST_RR_OP( 158 , max, 0x827387f6, 0x80000000, 0x827387f6, 632); 
TEST_RR_OP( 159 , max, 0xffffffff, 0xffffffff, 0x80000000, 636); 
TEST_RR_OP( 160 , max, 0xffffffff, 0xffffffff, 0xd204fc2e, 640); 
TEST_RR_OP( 161 , max, 0x00000000, 0x00000000, 0x80000000, 644); 
TEST_RR_OP( 162 , max, 0x00000000, 0x00000000, 0xffffffff, 648); 
TEST_RR_OP( 163 , max, 0x80000000, 0x80000000, 0x80000000, 652); 
TEST_RR_OP( 164 , max, 0xffffffff, 0x80000000, 0xffffffff, 656); 
TEST_RR_OP( 165 , max, 0x0b4b88df, 0xcf6554e0, 0x0b4b88df, 660); 
TEST_RR_OP( 166 , max, 0xffffffff, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , max, 0xddff96d4, 0xddff96d4, 0xbfe36a1e, 668); 
TEST_RR_OP( 168 , max, 0x4bc62872, 0x00000000, 0x4bc62872, 672); 
TEST_RR_OP( 169 , max, 0x6219bcad, 0x6219bcad, 0x321ba924, 676); 
TEST_RR_OP( 170 , max, 0xffffffff, 0x80000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , max, 0x581915d4, 0x581915d4, 0xffffffff, 684); 
TEST_RR_OP( 172 , max, 0xaeac96d1, 0xaeac96d1, 0x80000000, 688); 
TEST_RR_OP( 173 , max, 0xffffffff, 0xd7e1a71b, 0xffffffff, 692); 
TEST_RR_OP( 174 , max, 0x1bd1ef0a, 0x1bd1ef0a, 0x00000000, 696); 
TEST_RR_OP( 175 , max, 0x00000000, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , max, 0x2e13d33a, 0xa407eaad, 0x2e13d33a, 704); 
TEST_RR_OP( 177 , max, 0x00000000, 0x00000000, 0xffffffff, 708); 
TEST_RR_OP( 178 , max, 0x7976e836, 0x7976e836, 0x80000000, 712); 
TEST_RR_OP( 179 , max, 0xa5491b14, 0x80000000, 0xa5491b14, 716); 
TEST_RR_OP( 180 , max, 0x00000000, 0x00000000, 0xffffffff, 720); 
TEST_RR_OP( 181 , max, 0xdc1f5efd, 0x80000000, 0xdc1f5efd, 724); 
TEST_RR_OP( 182 , max, 0x168d5116, 0x168d5116, 0x8aff7c8c, 728); 
TEST_RR_OP( 183 , max, 0x911cf82d, 0x911cf82d, 0x80000000, 732); 
TEST_RR_OP( 184 , max, 0x00000000, 0x00000000, 0x00000000, 736); 
TEST_RR_OP( 185 , max, 0x75f47c27, 0x75f47c27, 0x80000000, 740); 
TEST_RR_OP( 186 , max, 0x00000000, 0x00000000, 0xe49fe39a, 744); 
TEST_RR_OP( 187 , max, 0x57eddae1, 0x57eddae1, 0x80000000, 748); 
TEST_RR_OP( 188 , max, 0x00000000, 0x00000000, 0x00000000, 752); 
TEST_RR_OP( 189 , max, 0x00000000, 0x00000000, 0x80000000, 756); 
TEST_RR_OP( 190 , max, 0x336c563d, 0x80000000, 0x336c563d, 760); 
TEST_RR_OP( 191 , max, 0x00000000, 0x80000000, 0x00000000, 764); 
TEST_RR_OP( 192 , max, 0x71a1a9b1, 0x71a1a9b1, 0x80000000, 768); 
TEST_RR_OP( 193 , max, 0x3260acc7, 0xb8ea4cea, 0x3260acc7, 772); 
TEST_RR_OP( 194 , max, 0xffffffff, 0xffffffff, 0xd8ddf080, 776); 
TEST_RR_OP( 195 , max, 0x80000000, 0x80000000, 0x80000000, 780); 
TEST_RR_OP( 196 , max, 0xffffffff, 0xffffffff, 0xffffffff, 784); 
TEST_RR_OP( 197 , max, 0x00000000, 0x00000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , max, 0x70aef3ec, 0x70aef3ec, 0x00000000, 792); 
TEST_RR_OP( 199 , max, 0x9781f043, 0x80000000, 0x9781f043, 796); 

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
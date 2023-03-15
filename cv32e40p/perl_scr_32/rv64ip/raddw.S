# See LICENSE for license details.
#*****************************************************************************
# raddw.S
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

TEST_RR_OP( 2 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 12); 
TEST_RR_OP( 4 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 20); 
TEST_RR_OP( 6 , raddw, 0x207c6442, 0x00000000, 0x40f8c884, 24); 
TEST_RR_OP( 7 , raddw, 0xffffffff99b5d9be, 0xb36bb37d, 0x80000000, 28); 
TEST_RR_OP( 8 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 32); 
TEST_RR_OP( 9 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 36); 
TEST_RR_OP( 10 , raddw, 0xffffffffccd78065, 0x80000000, 0x19af00ca, 40); 
TEST_RR_OP( 11 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 44); 
TEST_RR_OP( 12 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , raddw, 0x3aa37fd1, 0x7546ffa3, 0x00000000, 52); 
TEST_RR_OP( 14 , raddw, 0xffffffffef62d896, 0x80000000, 0x5ec5b12d, 56); 
TEST_RR_OP( 15 , raddw, 0xffffffffd99d8644, 0x333b0c88, 0x80000000, 60); 
TEST_RR_OP( 16 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 64); 
TEST_RR_OP( 17 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , raddw, 0x1eaf2297, 0x3d5e452f, 0x00000000, 72); 
TEST_RR_OP( 19 , raddw, 0x2a18ee27, 0x00000000, 0x5431dc4f, 76); 
TEST_RR_OP( 20 , raddw, 0xffffffffcd4ec788, 0x9a9d8f10, 0x00000000, 80); 
TEST_RR_OP( 21 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 84); 
TEST_RR_OP( 22 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 88); 
TEST_RR_OP( 23 , raddw, 0xffffffffe9f7818c, 0xeb14fb61, 0xe8da07b7, 92); 
TEST_RR_OP( 24 , raddw, 0x03639534, 0x00000000, 0x06c72a69, 96); 
TEST_RR_OP( 25 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 100); 
TEST_RR_OP( 26 , raddw, 0x18c39463, 0x318728c7, 0xffffffff, 104); 
TEST_RR_OP( 27 , raddw, 0x00000000, 0x00000000, 0x00000000, 108); 
TEST_RR_OP( 28 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 116); 
TEST_RR_OP( 30 , raddw, 0xffffffffac50e1de, 0xd8a1c3bd, 0x80000000, 120); 
TEST_RR_OP( 31 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , raddw, 0xffffffffe59667a1, 0x00000000, 0xcb2ccf42, 128); 
TEST_RR_OP( 33 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 132); 
TEST_RR_OP( 34 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 136); 
TEST_RR_OP( 35 , raddw, 0xffffffffbbe1fe38, 0x80000000, 0xf7c3fc70, 140); 
TEST_RR_OP( 36 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 144); 
TEST_RR_OP( 37 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , raddw, 0xffffffffb18f20b2, 0x99df7a50, 0xc93ec714, 152); 
TEST_RR_OP( 39 , raddw, 0x0b720a35, 0x00000000, 0x16e4146a, 156); 
TEST_RR_OP( 40 , raddw, 0x00000000, 0x00000000, 0x00000000, 160); 
TEST_RR_OP( 41 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 164); 
TEST_RR_OP( 42 , raddw, 0xffffffffc6c60cfd, 0x8d8c19fc, 0xffffffff, 168); 
TEST_RR_OP( 43 , raddw, 0x10e79892, 0x21cf3125, 0xffffffff, 172); 
TEST_RR_OP( 44 , raddw, 0xffffffffd0cd115f, 0x80000000, 0x219a22bf, 176); 
TEST_RR_OP( 45 , raddw, 0xffffffffe8db6ab1, 0x80000000, 0x51b6d562, 180); 
TEST_RR_OP( 46 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 188); 
TEST_RR_OP( 48 , raddw, 0xffffffffc05b90c9, 0xffffffff, 0x80b72193, 192); 
TEST_RR_OP( 49 , raddw, 0x266f7977, 0x4cdef2ee, 0x00000000, 196); 
TEST_RR_OP( 50 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 200); 
TEST_RR_OP( 51 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 204); 
TEST_RR_OP( 52 , raddw, 0x2ab458ea, 0xffffffff, 0x5568b1d5, 208); 
TEST_RR_OP( 53 , raddw, 0xfffffffff8dbdf19, 0xffffffff, 0xf1b7be34, 212); 
TEST_RR_OP( 54 , raddw, 0x3b5b718b, 0x2a2bb43e, 0x4c8b2ed9, 216); 
TEST_RR_OP( 55 , raddw, 0x1d25563f, 0x3a4aac80, 0xffffffff, 220); 
TEST_RR_OP( 56 , raddw, 0xffffffff8f95cd2c, 0x80000000, 0x9f2b9a59, 224); 
TEST_RR_OP( 57 , raddw, 0x2c8c78f3, 0x5918f1e7, 0xffffffff, 228); 
TEST_RR_OP( 58 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 232); 
TEST_RR_OP( 59 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 236); 
TEST_RR_OP( 60 , raddw, 0xfffffffff6feed3d, 0x6dfdda7b, 0x80000000, 240); 
TEST_RR_OP( 61 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 244); 
TEST_RR_OP( 62 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 248); 
TEST_RR_OP( 63 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , raddw, 0xffffffffb897e94e, 0xca7016df, 0xa6bfbbbe, 256); 
TEST_RR_OP( 65 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 260); 
TEST_RR_OP( 66 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 268); 
TEST_RR_OP( 68 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 272); 
TEST_RR_OP( 69 , raddw, 0xffffffffffb8943c, 0xffffffff, 0xff71287a, 276); 
TEST_RR_OP( 70 , raddw, 0xffffffffc79aa6f8, 0x80000000, 0x0f354df1, 280); 
TEST_RR_OP( 71 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 284); 
TEST_RR_OP( 72 , raddw, 0xffffffffa0607e44, 0xc0c0fc88, 0x80000000, 288); 
TEST_RR_OP( 73 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 292); 
TEST_RR_OP( 74 , raddw, 0x3ca07f78, 0xffffffff, 0x7940fef1, 296); 
TEST_RR_OP( 75 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 300); 
TEST_RR_OP( 76 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 304); 
TEST_RR_OP( 77 , raddw, 0x080d2f1e, 0x00000000, 0x101a5e3d, 308); 
TEST_RR_OP( 78 , raddw, 0xffffffffca646baa, 0x94c8d755, 0xffffffff, 312); 
TEST_RR_OP( 79 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 316); 
TEST_RR_OP( 80 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 320); 
TEST_RR_OP( 81 , raddw, 0xffffffffe31528bc, 0x25203729, 0xa10a1a4f, 324); 
TEST_RR_OP( 82 , raddw, 0xffffffffc0c0e3a4, 0x8181c748, 0x00000000, 328); 
TEST_RR_OP( 83 , raddw, 0xffffffffc449964f, 0x08932c9f, 0x80000000, 332); 
TEST_RR_OP( 84 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 336); 
TEST_RR_OP( 85 , raddw, 0xfffffffff1f9dc4f, 0xffffffff, 0xe3f3b89f, 340); 
TEST_RR_OP( 86 , raddw, 0xffffffffe5d1ef92, 0x4ba3df24, 0x80000000, 344); 
TEST_RR_OP( 87 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 348); 
TEST_RR_OP( 88 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 352); 
TEST_RR_OP( 89 , raddw, 0xffffffffb14748a3, 0xd05bbef6, 0x9232d251, 356); 
TEST_RR_OP( 90 , raddw, 0x37525d07, 0x6ea4ba10, 0xffffffff, 360); 
TEST_RR_OP( 91 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 368); 
TEST_RR_OP( 93 , raddw, 0xffffffffdbffc9e4, 0xffffffff, 0xb7ff93c9, 372); 
TEST_RR_OP( 94 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 376); 
TEST_RR_OP( 95 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 380); 
TEST_RR_OP( 96 , raddw, 0xffffffff95125e53, 0x80000000, 0xaa24bca6, 384); 
TEST_RR_OP( 97 , raddw, 0x1425bab6, 0x284b756d, 0x00000000, 388); 
TEST_RR_OP( 98 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 392); 
TEST_RR_OP( 99 , raddw, 0x2ab87501, 0xeb653b63, 0x6a0baea0, 396); 
TEST_RR_OP( 100 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , raddw, 0xffffffffb3c4ff86, 0xe789ff0d, 0x80000000, 404); 
TEST_RR_OP( 102 , raddw, 0xffffffffb74a438d, 0x80000000, 0xee94871a, 408); 
TEST_RR_OP( 103 , raddw, 0xfffffffff0ca99fb, 0x80000000, 0x619533f7, 412); 
TEST_RR_OP( 104 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 416); 
TEST_RR_OP( 105 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 420); 
TEST_RR_OP( 106 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 424); 
TEST_RR_OP( 107 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 428); 
TEST_RR_OP( 108 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 432); 
TEST_RR_OP( 109 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 436); 
TEST_RR_OP( 110 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 440); 
TEST_RR_OP( 111 , raddw, 0x1be76076, 0xffffffff, 0x37cec0ed, 444); 
TEST_RR_OP( 112 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , raddw, 0x2f90acba, 0x5f215974, 0x00000000, 452); 
TEST_RR_OP( 114 , raddw, 0xffffffffd6faca86, 0xffffffff, 0xadf5950d, 456); 
TEST_RR_OP( 115 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 460); 
TEST_RR_OP( 116 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 464); 
TEST_RR_OP( 117 , raddw, 0xfffffffff4c3ece0, 0x6987d9c0, 0x80000000, 468); 
TEST_RR_OP( 118 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 472); 
TEST_RR_OP( 119 , raddw, 0xfffffffff62f3aa5, 0xffffffff, 0xec5e754c, 476); 
TEST_RR_OP( 120 , raddw, 0xfffffffffc815900, 0x80000000, 0x7902b201, 480); 
TEST_RR_OP( 121 , raddw, 0x00000000, 0x00000000, 0x00000000, 484); 
TEST_RR_OP( 122 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 488); 
TEST_RR_OP( 123 , raddw, 0xffffffffe149190c, 0xffffffff, 0xc2923219, 492); 
TEST_RR_OP( 124 , raddw, 0x1a230abf, 0xffffffff, 0x34461580, 496); 
TEST_RR_OP( 125 , raddw, 0x2323be16, 0x6d9c24cd, 0xd8ab575f, 500); 
TEST_RR_OP( 126 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 504); 
TEST_RR_OP( 127 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 508); 
TEST_RR_OP( 128 , raddw, 0x17306f25, 0x2e60de4a, 0x00000000, 512); 
TEST_RR_OP( 129 , raddw, 0xfffffffff1feb26b, 0xffffffff, 0xe3fd64d7, 516); 
TEST_RR_OP( 130 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 520); 
TEST_RR_OP( 131 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 524); 
TEST_RR_OP( 132 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 528); 
TEST_RR_OP( 133 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 532); 
TEST_RR_OP( 134 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 536); 
TEST_RR_OP( 135 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 540); 
TEST_RR_OP( 136 , raddw, 0xffffffffdde2a1bf, 0x00000000, 0xbbc5437e, 544); 
TEST_RR_OP( 137 , raddw, 0x2fa489fe, 0x5f4913fc, 0x00000000, 548); 
TEST_RR_OP( 138 , raddw, 0xffffffffe8df3da6, 0xffffffff, 0xd1be7b4d, 552); 
TEST_RR_OP( 139 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 556); 
TEST_RR_OP( 140 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 560); 
TEST_RR_OP( 141 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 564); 
TEST_RR_OP( 142 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 568); 
TEST_RR_OP( 143 , raddw, 0x28928b3a, 0x51251674, 0x00000000, 572); 
TEST_RR_OP( 144 , raddw, 0x00000000, 0x00000000, 0x00000000, 576); 
TEST_RR_OP( 145 , raddw, 0x00000000, 0x00000000, 0x00000000, 580); 
TEST_RR_OP( 146 , raddw, 0xffffffffeffd7e7a, 0x80000000, 0x5ffafcf5, 584); 
TEST_RR_OP( 147 , raddw, 0xfffffffffa27667c, 0xf44eccfa, 0xffffffff, 588); 
TEST_RR_OP( 148 , raddw, 0xfffffffffe30dc25, 0xfbccfcf3, 0x0094bb57, 592); 
TEST_RR_OP( 149 , raddw, 0x00000000, 0x00000000, 0x00000000, 596); 
TEST_RR_OP( 150 , raddw, 0xffffffffe1ebff85, 0x00000000, 0xc3d7ff0a, 600); 
TEST_RR_OP( 151 , raddw, 0x218a463f, 0x43148c7f, 0x00000000, 604); 
TEST_RR_OP( 152 , raddw, 0xffffffffb80216db, 0x80000000, 0xf0042db7, 608); 
TEST_RR_OP( 153 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 612); 
TEST_RR_OP( 154 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 616); 
TEST_RR_OP( 155 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 620); 
TEST_RR_OP( 156 , raddw, 0x00000000, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , raddw, 0x21a2aa43, 0x70489094, 0xd2fcc3f3, 628); 
TEST_RR_OP( 158 , raddw, 0x00000000, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 636); 
TEST_RR_OP( 160 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 640); 
TEST_RR_OP( 161 , raddw, 0xfffffffff5a34f9f, 0x00000000, 0xeb469f3e, 644); 
TEST_RR_OP( 162 , raddw, 0xffffffffc9e7e6c6, 0xffffffff, 0x93cfcd8d, 648); 
TEST_RR_OP( 163 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , raddw, 0xffffffff80000000, 0x80000000, 0x80000000, 656); 
TEST_RR_OP( 165 , raddw, 0xfffffffff615ee95, 0x00000000, 0xec2bdd2b, 660); 
TEST_RR_OP( 166 , raddw, 0x0b58dc2b, 0x00000000, 0x16b1b856, 664); 
TEST_RR_OP( 167 , raddw, 0xffffffffe7092b50, 0xce1256a1, 0x00000000, 668); 
TEST_RR_OP( 168 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 672); 
TEST_RR_OP( 169 , raddw, 0xffffffffc7ca8c9a, 0x8f951935, 0x00000000, 676); 
TEST_RR_OP( 170 , raddw, 0xffffffffde0c58e7, 0xffffffff, 0xbc18b1cf, 680); 
TEST_RR_OP( 171 , raddw, 0xffffffffc65f43e0, 0x00000000, 0x8cbe87c1, 684); 
TEST_RR_OP( 172 , raddw, 0xffffffffca74e8d6, 0x94e9d1ad, 0xffffffff, 688); 
TEST_RR_OP( 173 , raddw, 0x00000000, 0x00000000, 0x00000000, 692); 
TEST_RR_OP( 174 , raddw, 0xffffffffd998ac56, 0xffffffff, 0xb33158ae, 696); 
TEST_RR_OP( 175 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 700); 
TEST_RR_OP( 176 , raddw, 0xffffffffedcc93f3, 0xffffffff, 0xdb9927e8, 704); 
TEST_RR_OP( 177 , raddw, 0x3e468e53, 0x2103003e, 0x5b8a1c69, 708); 
TEST_RR_OP( 178 , raddw, 0xffffffffe8320227, 0xb6d2a165, 0x199162ea, 712); 
TEST_RR_OP( 179 , raddw, 0xfffffffffe6e3079, 0x7cdc60f2, 0x80000000, 716); 
TEST_RR_OP( 180 , raddw, 0x00000000, 0x00000000, 0x00000000, 720); 
TEST_RR_OP( 181 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 728); 
TEST_RR_OP( 183 , raddw, 0xffffffffd419caf5, 0xffffffff, 0xa83395ec, 732); 
TEST_RR_OP( 184 , raddw, 0xffffffffaf2fc0ae, 0x80000000, 0xde5f815c, 736); 
TEST_RR_OP( 185 , raddw, 0x2cbeff83, 0xffffffff, 0x597dff08, 740); 
TEST_RR_OP( 186 , raddw, 0x2e927e5b, 0x5d24fcb7, 0xffffffff, 744); 
TEST_RR_OP( 187 , raddw, 0x32967726, 0x652cee4c, 0x00000000, 748); 
TEST_RR_OP( 188 , raddw, 0x40e69ab1, 0x120dfee4, 0x6fbf367f, 752); 
TEST_RR_OP( 189 , raddw, 0xffffffffbfffffff, 0x80000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , raddw, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 760); 
TEST_RR_OP( 191 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 764); 
TEST_RR_OP( 192 , raddw, 0xffffffffc0000000, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , raddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 772); 
TEST_RR_OP( 194 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , raddw, 0xffffffffc0000000, 0x80000000, 0x00000000, 780); 
TEST_RR_OP( 196 , raddw, 0xffffffffbfffffff, 0xffffffff, 0x80000000, 784); 
TEST_RR_OP( 197 , raddw, 0xffffffffffffffff, 0x00000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , raddw, 0xfffffffff877abe4, 0x33cb5362, 0xbd240466, 792); 
TEST_RR_OP( 199 , raddw, 0xffffffffb580327d, 0xeb0064fb, 0x80000000, 796); 

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
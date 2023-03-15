# See LICENSE for license details.
#*****************************************************************************
# maddr32.S
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

TEST_RR_OP( 2 , maddr32, 0x80000000, 0x80000000, 0x5621aeaf, 8); 
TEST_RR_OP( 3 , maddr32, 0x80000000, 0x00000000, 0x00000000, 12); 
TEST_RR_OP( 4 , maddr32, 0x00000000, 0x80000000, 0xdbf3c073, 16); 
TEST_RR_OP( 5 , maddr32, 0x00000000, 0x80000000, 0x80000000, 20); 
TEST_RR_OP( 6 , maddr32, 0xb9ea5cd7, 0x4615a329, 0xffffffff, 24); 
TEST_RR_OP( 7 , maddr32, 0xb9ea5cd7, 0x70ebe78a, 0x80000000, 28); 
TEST_RR_OP( 8 , maddr32, 0xb9ea5cd7, 0x00000000, 0x85ab7e0f, 32); 
TEST_RR_OP( 9 , maddr32, 0xb9ea5cd7, 0x80000000, 0x2ed1345a, 36); 
TEST_RR_OP( 10 , maddr32, 0x39ea5cd7, 0xaa9fd46f, 0x80000000, 40); 
TEST_RR_OP( 11 , maddr32, 0x39ea5cd7, 0x00000000, 0x41b7cd80, 44); 
TEST_RR_OP( 12 , maddr32, 0x5a52333f, 0xdf982998, 0xffffffff, 48); 
TEST_RR_OP( 13 , maddr32, 0xf4095300, 0x6648e03f, 0xffffffff, 52); 
TEST_RR_OP( 14 , maddr32, 0xf4095300, 0x9eb71715, 0x00000000, 56); 
TEST_RR_OP( 15 , maddr32, 0xf4095300, 0x16b9d618, 0x80000000, 60); 
TEST_RR_OP( 16 , maddr32, 0xf4095300, 0x00000000, 0x00000000, 64); 
TEST_RR_OP( 17 , maddr32, 0xd494eabe, 0xffffffff, 0x1f746842, 68); 
TEST_RR_OP( 18 , maddr32, 0xd494eabe, 0x00000000, 0x7de0ff33, 72); 
TEST_RR_OP( 19 , maddr32, 0xd494eabf, 0xffffffff, 0xffffffff, 76); 
TEST_RR_OP( 20 , maddr32, 0x29198649, 0x73571366, 0x64a59ea7, 80); 
TEST_RR_OP( 21 , maddr32, 0xa9198649, 0xd3530961, 0x80000000, 84); 
TEST_RR_OP( 22 , maddr32, 0xa9198649, 0x00000000, 0x80000000, 88); 
TEST_RR_OP( 23 , maddr32, 0xe6e90941, 0x4177da12, 0x9c6cd09c, 92); 
TEST_RR_OP( 24 , maddr32, 0xe6e90941, 0x80000000, 0xed0cd8c6, 96); 
TEST_RR_OP( 25 , maddr32, 0x192222e5, 0xec11d4f4, 0x2b01e09d, 100); 
TEST_RR_OP( 26 , maddr32, 0x192222e6, 0xffffffff, 0xffffffff, 104); 
TEST_RR_OP( 27 , maddr32, 0x192222e6, 0x00000000, 0x54d1f88b, 108); 
TEST_RR_OP( 28 , maddr32, 0x192222e6, 0x00000000, 0x80000000, 112); 
TEST_RR_OP( 29 , maddr32, 0x992222e6, 0xffffffff, 0x80000000, 116); 
TEST_RR_OP( 30 , maddr32, 0xca33cbfd, 0xffffffff, 0xceee56e9, 120); 
TEST_RR_OP( 31 , maddr32, 0xca33cbfd, 0x00000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , maddr32, 0xca33cbfd, 0x5c46e804, 0x00000000, 128); 
TEST_RR_OP( 33 , maddr32, 0xca33cbfd, 0x00000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , maddr32, 0xca33cbfd, 0x00000000, 0xd64bfd19, 136); 
TEST_RR_OP( 35 , maddr32, 0xca33cbfd, 0x80000000, 0x00000000, 140); 
TEST_RR_OP( 36 , maddr32, 0xca33cbfd, 0x00000000, 0x49f67d24, 144); 
TEST_RR_OP( 37 , maddr32, 0x4a33cbfd, 0x80000000, 0xbab4f301, 148); 
TEST_RR_OP( 38 , maddr32, 0xca33cbfd, 0x13548391, 0x80000000, 152); 
TEST_RR_OP( 39 , maddr32, 0xca33cbfd, 0xffffffff, 0x00000000, 156); 
TEST_RR_OP( 40 , maddr32, 0xca33cbfd, 0x00000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , maddr32, 0xca33cbfd, 0xffffffff, 0x00000000, 164); 
TEST_RR_OP( 42 , maddr32, 0xca33cbfd, 0x80000000, 0xd46bc794, 168); 
TEST_RR_OP( 43 , maddr32, 0xca33cbfd, 0x00000000, 0x00000000, 172); 
TEST_RR_OP( 44 , maddr32, 0xca33cbfd, 0x80000000, 0x3dfdc382, 176); 
TEST_RR_OP( 45 , maddr32, 0xca33cbfd, 0x80000000, 0x80000000, 180); 
TEST_RR_OP( 46 , maddr32, 0x561a471b, 0x6d63b8bb, 0x6e2b367a, 184); 
TEST_RR_OP( 47 , maddr32, 0xd61a471b, 0xffffffff, 0x80000000, 188); 
TEST_RR_OP( 48 , maddr32, 0xd61a471b, 0x00000000, 0x9f7d166e, 192); 
TEST_RR_OP( 49 , maddr32, 0xd61a471b, 0x00000000, 0x80000000, 196); 
TEST_RR_OP( 50 , maddr32, 0xd61a471c, 0xffffffff, 0xffffffff, 200); 
TEST_RR_OP( 51 , maddr32, 0xd61a471c, 0x00000000, 0x80000000, 204); 
TEST_RR_OP( 52 , maddr32, 0x561a471c, 0x80000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , maddr32, 0x561a471c, 0x00000000, 0x00000000, 212); 
TEST_RR_OP( 54 , maddr32, 0xd61a471c, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , maddr32, 0xd61a471c, 0x00000000, 0x27c4d75c, 220); 
TEST_RR_OP( 56 , maddr32, 0xd61a471c, 0x80000000, 0x80000000, 224); 
TEST_RR_OP( 57 , maddr32, 0x0204be72, 0xffffffff, 0xd41588aa, 228); 
TEST_RR_OP( 58 , maddr32, 0x0204be72, 0x00000000, 0x80000000, 232); 
TEST_RR_OP( 59 , maddr32, 0x0204be72, 0xffffffff, 0x00000000, 236); 
TEST_RR_OP( 60 , maddr32, 0x8204be72, 0xf4fd497d, 0x80000000, 240); 
TEST_RR_OP( 61 , maddr32, 0x8204be72, 0x00000000, 0x80000000, 244); 
TEST_RR_OP( 62 , maddr32, 0x8204be72, 0x00000000, 0xefff631c, 248); 
TEST_RR_OP( 63 , maddr32, 0xcdbf2d8a, 0xb44590e8, 0xffffffff, 252); 
TEST_RR_OP( 64 , maddr32, 0xcdbf2d8a, 0x00000000, 0x5266ccfd, 256); 
TEST_RR_OP( 65 , maddr32, 0x4dbf2d8a, 0x80000000, 0xffffffff, 260); 
TEST_RR_OP( 66 , maddr32, 0xcdbf2d8a, 0xffffffff, 0x80000000, 264); 
TEST_RR_OP( 67 , maddr32, 0xcdbf2d8a, 0x80000000, 0x80000000, 268); 
TEST_RR_OP( 68 , maddr32, 0x4dbf2d8a, 0xffffffff, 0x80000000, 272); 
TEST_RR_OP( 69 , maddr32, 0x6ac1dfe4, 0xffffffff, 0xe2fd4da6, 276); 
TEST_RR_OP( 70 , maddr32, 0x6ac1dfe4, 0x80000000, 0x80000000, 280); 
TEST_RR_OP( 71 , maddr32, 0x6ac1dfe4, 0x80000000, 0x80000000, 284); 
TEST_RR_OP( 72 , maddr32, 0x6ac1dfe4, 0x9ef2f3d6, 0x00000000, 288); 
TEST_RR_OP( 73 , maddr32, 0xcf7641ed, 0x23451e45, 0x319862f5, 292); 
TEST_RR_OP( 74 , maddr32, 0x1da633eb, 0x0c28a76d, 0x4f858536, 296); 
TEST_RR_OP( 75 , maddr32, 0x9da633eb, 0x80000000, 0xf0ee49ab, 300); 
TEST_RR_OP( 76 , maddr32, 0x9da633eb, 0x00000000, 0x80000000, 304); 
TEST_RR_OP( 77 , maddr32, 0x9da633eb, 0x80000000, 0x601716e6, 308); 
TEST_RR_OP( 78 , maddr32, 0x9da633eb, 0x0760589a, 0x80000000, 312); 
TEST_RR_OP( 79 , maddr32, 0x1da633eb, 0x80000000, 0x7facb41d, 316); 
TEST_RR_OP( 80 , maddr32, 0x9da633eb, 0x80000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , maddr32, 0x4274d80e, 0xd496ec95, 0xc7e667d7, 324); 
TEST_RR_OP( 82 , maddr32, 0xc274d80e, 0xffffffff, 0x80000000, 328); 
TEST_RR_OP( 83 , maddr32, 0xc274d80e, 0x80000000, 0xb8f7e434, 332); 
TEST_RR_OP( 84 , maddr32, 0xc274d80e, 0x00000000, 0xffffffff, 336); 
TEST_RR_OP( 85 , maddr32, 0xc274d80e, 0x00000000, 0x80000000, 340); 
TEST_RR_OP( 86 , maddr32, 0x218e2716, 0x942eae86, 0x6f11382c, 344); 
TEST_RR_OP( 87 , maddr32, 0x218e2717, 0xffffffff, 0xffffffff, 348); 
TEST_RR_OP( 88 , maddr32, 0x218e2717, 0x9f964bce, 0x80000000, 352); 
TEST_RR_OP( 89 , maddr32, 0x218e2717, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , maddr32, 0x218e2717, 0x80000000, 0x00000000, 360); 
TEST_RR_OP( 91 , maddr32, 0xa18e2717, 0xffffffff, 0x80000000, 364); 
TEST_RR_OP( 92 , maddr32, 0x218e2717, 0x80000000, 0xffffffff, 368); 
TEST_RR_OP( 93 , maddr32, 0x218e2717, 0x00000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , maddr32, 0x218e2717, 0x80000000, 0x80000000, 376); 
TEST_RR_OP( 95 , maddr32, 0xa18e2717, 0x2c882699, 0x80000000, 380); 
TEST_RR_OP( 96 , maddr32, 0xa18e2717, 0xe2311aaa, 0x80000000, 384); 
TEST_RR_OP( 97 , maddr32, 0xa18e2717, 0x1b06a1ca, 0x00000000, 388); 
TEST_RR_OP( 98 , maddr32, 0x051932ee, 0x9c74f429, 0xffffffff, 392); 
TEST_RR_OP( 99 , maddr32, 0x051932ee, 0x80000000, 0x80000000, 396); 
TEST_RR_OP( 100 , maddr32, 0x851932ee, 0xffffffff, 0x80000000, 400); 
TEST_RR_OP( 101 , maddr32, 0x851932ee, 0x00000000, 0x8e16adc1, 404); 
TEST_RR_OP( 102 , maddr32, 0x851932ee, 0x80000000, 0x80000000, 408); 
TEST_RR_OP( 103 , maddr32, 0x851932ee, 0xffffffff, 0x00000000, 412); 
TEST_RR_OP( 104 , maddr32, 0x851932ee, 0x00000000, 0xffffffff, 416); 
TEST_RR_OP( 105 , maddr32, 0x851932ee, 0x00000000, 0x00000000, 420); 
TEST_RR_OP( 106 , maddr32, 0x851932ee, 0xd46327e1, 0x00000000, 424); 
TEST_RR_OP( 107 , maddr32, 0x051932ee, 0x80000000, 0xffffffff, 428); 
TEST_RR_OP( 108 , maddr32, 0x051932ee, 0x00000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , maddr32, 0xb4ccea4a, 0x4af3edc2, 0x3b05a76e, 436); 
TEST_RR_OP( 110 , maddr32, 0x20b03199, 0x941cb8b1, 0xffffffff, 440); 
TEST_RR_OP( 111 , maddr32, 0x20b03199, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , maddr32, 0x20b03199, 0xffffffff, 0x00000000, 448); 
TEST_RR_OP( 113 , maddr32, 0x20b03199, 0x00000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , maddr32, 0x20b03199, 0x59ad1fb9, 0x00000000, 456); 
TEST_RR_OP( 115 , maddr32, 0x20b03199, 0x00000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , maddr32, 0x20b03199, 0x00000000, 0xca8fa39d, 464); 
TEST_RR_OP( 117 , maddr32, 0x20b03199, 0xe8f19052, 0x80000000, 468); 
TEST_RR_OP( 118 , maddr32, 0x20b03199, 0xffffffff, 0x00000000, 472); 
TEST_RR_OP( 119 , maddr32, 0xa0b03199, 0xd928c23d, 0x80000000, 476); 
TEST_RR_OP( 120 , maddr32, 0xa0b03199, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , maddr32, 0xa0b03199, 0x00000000, 0x00000000, 484); 
TEST_RR_OP( 122 , maddr32, 0xa0b03199, 0x80000000, 0x80000000, 488); 
TEST_RR_OP( 123 , maddr32, 0xa0b03199, 0x00000000, 0x80000000, 492); 
TEST_RR_OP( 124 , maddr32, 0xa0b03199, 0x80000000, 0x00000000, 496); 
TEST_RR_OP( 125 , maddr32, 0xa0b03199, 0x80000000, 0x65fbdb4e, 500); 
TEST_RR_OP( 126 , maddr32, 0xa0b03199, 0x4a119572, 0x80000000, 504); 
TEST_RR_OP( 127 , maddr32, 0xa0b03199, 0xffffffff, 0x00000000, 508); 
TEST_RR_OP( 128 , maddr32, 0x13a8f796, 0x8d073a03, 0xffffffff, 512); 
TEST_RR_OP( 129 , maddr32, 0x13a8f796, 0xffffffff, 0x00000000, 516); 
TEST_RR_OP( 130 , maddr32, 0x13a8f796, 0x00000000, 0x00000000, 520); 
TEST_RR_OP( 131 , maddr32, 0x13a8f796, 0x80000000, 0x00000000, 524); 
TEST_RR_OP( 132 , maddr32, 0x13a8f796, 0x80000000, 0x80000000, 528); 
TEST_RR_OP( 133 , maddr32, 0xa93ad3d6, 0x527768b4, 0x996c0d50, 532); 
TEST_RR_OP( 134 , maddr32, 0xa93ad3d6, 0x80000000, 0x80000000, 536); 
TEST_RR_OP( 135 , maddr32, 0x50ada3a1, 0xffffffff, 0x588d3035, 540); 
TEST_RR_OP( 136 , maddr32, 0x50ada3a1, 0xc3052afa, 0x80000000, 544); 
TEST_RR_OP( 137 , maddr32, 0x50ada3a1, 0x00000000, 0xf4f8c464, 548); 
TEST_RR_OP( 138 , maddr32, 0xd0ada3a1, 0x80000000, 0xffffffff, 552); 
TEST_RR_OP( 139 , maddr32, 0x50ada3a1, 0x80000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , maddr32, 0x50ada3a1, 0xffffffff, 0x00000000, 560); 
TEST_RR_OP( 141 , maddr32, 0x50ada3a1, 0xe7cd9b94, 0x00000000, 564); 
TEST_RR_OP( 142 , maddr32, 0x50ada3a2, 0xffffffff, 0xffffffff, 568); 
TEST_RR_OP( 143 , maddr32, 0xd0ada3a2, 0xffffffff, 0x80000000, 572); 
TEST_RR_OP( 144 , maddr32, 0xd0ada3a2, 0x9601e410, 0x00000000, 576); 
TEST_RR_OP( 145 , maddr32, 0x04e60f62, 0xffffffff, 0xcbc79440, 580); 
TEST_RR_OP( 146 , maddr32, 0x04e60f62, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , maddr32, 0x04e60f62, 0x00000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , maddr32, 0x04e60f62, 0x00000000, 0x80000000, 592); 
TEST_RR_OP( 149 , maddr32, 0x04e60f62, 0x80000000, 0x00000000, 596); 
TEST_RR_OP( 150 , maddr32, 0x94b3e17a, 0xffffffff, 0x70322de8, 600); 
TEST_RR_OP( 151 , maddr32, 0x94b3e17a, 0x9347acde, 0x80000000, 604); 
TEST_RR_OP( 152 , maddr32, 0x94b3e17a, 0x6402134c, 0x80000000, 608); 
TEST_RR_OP( 153 , maddr32, 0x94b3e17a, 0x80000000, 0x80000000, 612); 
TEST_RR_OP( 154 , maddr32, 0x94b3e17a, 0x00000000, 0xffffffff, 616); 
TEST_RR_OP( 155 , maddr32, 0x94b3e17b, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , maddr32, 0x94b3e17c, 0xffffffff, 0xffffffff, 624); 
TEST_RR_OP( 157 , maddr32, 0x94b3e17c, 0x80e2355d, 0x00000000, 628); 
TEST_RR_OP( 158 , maddr32, 0x9cebf109, 0x03ade19f, 0x4fa97753, 632); 
TEST_RR_OP( 159 , maddr32, 0x9cebf109, 0x00000000, 0x80000000, 636); 
TEST_RR_OP( 160 , maddr32, 0x9cebf10a, 0xffffffff, 0xffffffff, 640); 
TEST_RR_OP( 161 , maddr32, 0x9cebf10a, 0x80000000, 0x80000000, 644); 
TEST_RR_OP( 162 , maddr32, 0x9cebf10a, 0xffffffff, 0x00000000, 648); 
TEST_RR_OP( 163 , maddr32, 0x9cebf10a, 0x9c2b5630, 0x80000000, 652); 
TEST_RR_OP( 164 , maddr32, 0x9cebf10a, 0x00000000, 0xffffffff, 656); 
TEST_RR_OP( 165 , maddr32, 0x9cebf10a, 0x00000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , maddr32, 0x1cebf10a, 0xffffffff, 0x80000000, 664); 
TEST_RR_OP( 167 , maddr32, 0x1cebf10a, 0x00000000, 0xffffffff, 668); 
TEST_RR_OP( 168 , maddr32, 0x1cebf10a, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , maddr32, 0x1cebf10a, 0x00000000, 0xd938992b, 676); 
TEST_RR_OP( 170 , maddr32, 0x1cebf10a, 0x80000000, 0x19cab836, 680); 
TEST_RR_OP( 171 , maddr32, 0xf791e794, 0x255a0976, 0xffffffff, 684); 
TEST_RR_OP( 172 , maddr32, 0x7791e794, 0x80000000, 0xffffffff, 688); 
TEST_RR_OP( 173 , maddr32, 0x7791e794, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , maddr32, 0x5afd6f4e, 0x4f47c18b, 0xd412da6e, 696); 
TEST_RR_OP( 175 , maddr32, 0x5afd6f4e, 0x00000000, 0x00000000, 700); 
TEST_RR_OP( 176 , maddr32, 0x5afd6f4e, 0x00000000, 0x2bb6e327, 704); 
TEST_RR_OP( 177 , maddr32, 0x5afd6f4e, 0x00000000, 0x80000000, 708); 
TEST_RR_OP( 178 , maddr32, 0x5afd6f4e, 0x00000000, 0x80000000, 712); 
TEST_RR_OP( 179 , maddr32, 0x5afd6f4e, 0x80000000, 0x80000000, 716); 
TEST_RR_OP( 180 , maddr32, 0x5afd6f4e, 0x00000000, 0xb2069ca5, 720); 
TEST_RR_OP( 181 , maddr32, 0x5afd6f4e, 0x00000000, 0x80000000, 724); 
TEST_RR_OP( 182 , maddr32, 0x5afd6f4f, 0xffffffff, 0xffffffff, 728); 
TEST_RR_OP( 183 , maddr32, 0xdafd6f4f, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , maddr32, 0xdafd6f4f, 0x00000000, 0xec03aca0, 736); 
TEST_RR_OP( 185 , maddr32, 0x5afd6f4f, 0x80000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , maddr32, 0x5afd6f4f, 0x80000000, 0x80000000, 744); 
TEST_RR_OP( 187 , maddr32, 0x5afd6f4f, 0xffffffff, 0x00000000, 748); 
TEST_RR_OP( 188 , maddr32, 0x5afd6f4f, 0x00000000, 0x00000000, 752); 
TEST_RR_OP( 189 , maddr32, 0x5afd6f4f, 0x00000000, 0x00000000, 756); 
TEST_RR_OP( 190 , maddr32, 0x5afd6f4f, 0x80000000, 0x80000000, 760); 
TEST_RR_OP( 191 , maddr32, 0x5afd6f50, 0xffffffff, 0xffffffff, 764); 
TEST_RR_OP( 192 , maddr32, 0x5afd6f50, 0x80000000, 0x5e7b1e80, 768); 
TEST_RR_OP( 193 , maddr32, 0x5afd6f50, 0x00000000, 0x80000000, 772); 
TEST_RR_OP( 194 , maddr32, 0x66d71780, 0xf42657d0, 0xffffffff, 776); 
TEST_RR_OP( 195 , maddr32, 0x66d71780, 0x00000000, 0xb5e8e445, 780); 
TEST_RR_OP( 196 , maddr32, 0x66d71780, 0x00000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , maddr32, 0x66d71780, 0x00000000, 0xeddab2ce, 788); 
TEST_RR_OP( 198 , maddr32, 0x66d71781, 0xffffffff, 0xffffffff, 792); 
TEST_RR_OP( 199 , maddr32, 0xe6d71781, 0x00264119, 0x80000000, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# smbb16.S
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

TEST_RR_OP( 2 , smbb16, 0x00000000, 0x80000000, 0x00000000, 8); 
TEST_RR_OP( 3 , smbb16, 0x00000000, 0x00000000, 0x80000000, 12); 
TEST_RR_OP( 4 , smbb16, 0x00000000, 0x00000000, 0x80000000, 16); 
TEST_RR_OP( 5 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , smbb16, 0x00000000, 0x80000000, 0xa20611d1, 24); 
TEST_RR_OP( 7 , smbb16, 0x00000000, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , smbb16, 0x00000000, 0x00000000, 0x00000000, 36); 
TEST_RR_OP( 10 , smbb16, 0x00000000, 0x00000000, 0x00000000, 40); 
TEST_RR_OP( 11 , smbb16, 0xffff9eb1, 0xffffffff, 0x55c3614f, 44); 
TEST_RR_OP( 12 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , smbb16, 0x00000000, 0x80000000, 0x80000000, 52); 
TEST_RR_OP( 14 , smbb16, 0x00000000, 0x00000000, 0xd3bd9605, 56); 
TEST_RR_OP( 15 , smbb16, 0x00000000, 0x00000000, 0x80000000, 60); 
TEST_RR_OP( 16 , smbb16, 0x00000000, 0x00000000, 0x00000000, 64); 
TEST_RR_OP( 17 , smbb16, 0x00000000, 0x00000000, 0x00000000, 68); 
TEST_RR_OP( 18 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 72); 
TEST_RR_OP( 19 , smbb16, 0x000055c3, 0xffffffff, 0xcf8caa3d, 76); 
TEST_RR_OP( 20 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , smbb16, 0x00000000, 0x80000000, 0xe4c9236d, 84); 
TEST_RR_OP( 22 , smbb16, 0x00000000, 0x00000000, 0x2c97f9ef, 88); 
TEST_RR_OP( 23 , smbb16, 0x00000000, 0x00000000, 0x80000000, 92); 
TEST_RR_OP( 24 , smbb16, 0x00000000, 0xa7185d3c, 0x00000000, 96); 
TEST_RR_OP( 25 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 100); 
TEST_RR_OP( 26 , smbb16, 0x00000000, 0x00000000, 0x00000000, 104); 
TEST_RR_OP( 27 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 108); 
TEST_RR_OP( 28 , smbb16, 0x00000000, 0x00000000, 0xc17fb5ac, 112); 
TEST_RR_OP( 29 , smbb16, 0x00000000, 0x00000000, 0xaf48499b, 116); 
TEST_RR_OP( 30 , smbb16, 0x00002b35, 0x6fb3d4cb, 0xffffffff, 120); 
TEST_RR_OP( 31 , smbb16, 0x00000000, 0xce5b6536, 0x80000000, 124); 
TEST_RR_OP( 32 , smbb16, 0x00000000, 0x80000000, 0x00000000, 128); 
TEST_RR_OP( 33 , smbb16, 0x00000000, 0x00000000, 0x00000000, 132); 
TEST_RR_OP( 34 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 136); 
TEST_RR_OP( 35 , smbb16, 0x00000000, 0x00000000, 0x5d24f174, 140); 
TEST_RR_OP( 36 , smbb16, 0x00000000, 0x00000000, 0x00000000, 144); 
TEST_RR_OP( 37 , smbb16, 0x00007f89, 0xffffffff, 0xe2218077, 148); 
TEST_RR_OP( 38 , smbb16, 0x00000000, 0x80000000, 0x80000000, 152); 
TEST_RR_OP( 39 , smbb16, 0x00000000, 0x80000000, 0x80000000, 156); 
TEST_RR_OP( 40 , smbb16, 0x00000000, 0x00000000, 0x240402d4, 160); 
TEST_RR_OP( 41 , smbb16, 0x000026c5, 0xffffffff, 0x0d9bd93b, 164); 
TEST_RR_OP( 42 , smbb16, 0x00000000, 0x80000000, 0xe56cd599, 168); 
TEST_RR_OP( 43 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , smbb16, 0x00000000, 0x80000000, 0x80000000, 176); 
TEST_RR_OP( 45 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 180); 
TEST_RR_OP( 46 , smbb16, 0x00000000, 0x00000000, 0x85102672, 184); 
TEST_RR_OP( 47 , smbb16, 0x00000000, 0x1a08a76c, 0x80000000, 188); 
TEST_RR_OP( 48 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 192); 
TEST_RR_OP( 49 , smbb16, 0x00000000, 0x80000000, 0x80000000, 196); 
TEST_RR_OP( 50 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 200); 
TEST_RR_OP( 51 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 204); 
TEST_RR_OP( 52 , smbb16, 0x00000000, 0x80000000, 0x00000000, 208); 
TEST_RR_OP( 53 , smbb16, 0x00000000, 0x80000000, 0x06a0413b, 212); 
TEST_RR_OP( 54 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , smbb16, 0x00000000, 0x80000000, 0x5e438b17, 220); 
TEST_RR_OP( 56 , smbb16, 0x00000000, 0x00000000, 0x80000000, 224); 
TEST_RR_OP( 57 , smbb16, 0x000046c4, 0xffffffff, 0x1e2bb93c, 228); 
TEST_RR_OP( 58 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 232); 
TEST_RR_OP( 59 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 236); 
TEST_RR_OP( 60 , smbb16, 0x00000000, 0xbf73ac7a, 0x00000000, 240); 
TEST_RR_OP( 61 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 244); 
TEST_RR_OP( 62 , smbb16, 0x1fff3586, 0xca5ab595, 0x990591ee, 248); 
TEST_RR_OP( 63 , smbb16, 0x00000000, 0x00000000, 0x80000000, 252); 
TEST_RR_OP( 64 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , smbb16, 0x00000000, 0x00000000, 0x80000000, 260); 
TEST_RR_OP( 66 , smbb16, 0x00000000, 0x032aa157, 0x80000000, 264); 
TEST_RR_OP( 67 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 268); 
TEST_RR_OP( 68 , smbb16, 0x00000000, 0x80000000, 0x0170d2ba, 272); 
TEST_RR_OP( 69 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 276); 
TEST_RR_OP( 70 , smbb16, 0x1245aaac, 0xe6fc518a, 0xdee6395e, 280); 
TEST_RR_OP( 71 , smbb16, 0x00000000, 0x80000000, 0x80000000, 284); 
TEST_RR_OP( 72 , smbb16, 0x00000000, 0x00000000, 0xb90d9d4a, 288); 
TEST_RR_OP( 73 , smbb16, 0x00000000, 0xf1be5bf0, 0x00000000, 292); 
TEST_RR_OP( 74 , smbb16, 0x00000000, 0x80000000, 0x723a2f1e, 296); 
TEST_RR_OP( 75 , smbb16, 0x00000000, 0x80000000, 0x00000000, 300); 
TEST_RR_OP( 76 , smbb16, 0x00000000, 0x80000000, 0x80000000, 304); 
TEST_RR_OP( 77 , smbb16, 0x00000000, 0xc5972e9b, 0x00000000, 308); 
TEST_RR_OP( 78 , smbb16, 0xffff981a, 0x966d67e6, 0xffffffff, 312); 
TEST_RR_OP( 79 , smbb16, 0x00000000, 0xadeaa98e, 0x00000000, 316); 
TEST_RR_OP( 80 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 320); 
TEST_RR_OP( 81 , smbb16, 0x00000000, 0xb233ff06, 0x80000000, 324); 
TEST_RR_OP( 82 , smbb16, 0x00000000, 0x00000000, 0x4649e4d7, 328); 
TEST_RR_OP( 83 , smbb16, 0x00000000, 0x80000000, 0x5bb243ef, 332); 
TEST_RR_OP( 84 , smbb16, 0x00000000, 0x00000000, 0x5b24ec64, 336); 
TEST_RR_OP( 85 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 340); 
TEST_RR_OP( 86 , smbb16, 0x00000000, 0x80000000, 0x80000000, 344); 
TEST_RR_OP( 87 , smbb16, 0x00000000, 0x80000000, 0x80000000, 348); 
TEST_RR_OP( 88 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 352); 
TEST_RR_OP( 89 , smbb16, 0x00000000, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , smbb16, 0x00000000, 0x80000000, 0x233cdd2e, 364); 
TEST_RR_OP( 92 , smbb16, 0x00000000, 0x80000000, 0x8178aaf3, 368); 
TEST_RR_OP( 93 , smbb16, 0x00000000, 0x6378a055, 0x00000000, 372); 
TEST_RR_OP( 94 , smbb16, 0x0000572c, 0x3d70a8d4, 0xffffffff, 376); 
TEST_RR_OP( 95 , smbb16, 0x00000000, 0x80000000, 0x80000000, 380); 
TEST_RR_OP( 96 , smbb16, 0x00000000, 0x1c31eec0, 0x00000000, 384); 
TEST_RR_OP( 97 , smbb16, 0x0b3a7dd0, 0xda99a94e, 0xf183ded8, 388); 
TEST_RR_OP( 98 , smbb16, 0x00000000, 0x80000000, 0x21fe5e0c, 392); 
TEST_RR_OP( 99 , smbb16, 0x00000000, 0xa42cb8f3, 0x00000000, 396); 
TEST_RR_OP( 100 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 400); 
TEST_RR_OP( 101 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 408); 
TEST_RR_OP( 103 , smbb16, 0x017be840, 0xbf130888, 0x400d2c88, 412); 
TEST_RR_OP( 104 , smbb16, 0xfabf61c6, 0x358854ce, 0x1356f025, 416); 
TEST_RR_OP( 105 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 420); 
TEST_RR_OP( 106 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 424); 
TEST_RR_OP( 107 , smbb16, 0x00000000, 0x537c3661, 0x00000000, 428); 
TEST_RR_OP( 108 , smbb16, 0x00000000, 0x80000000, 0x00000000, 432); 
TEST_RR_OP( 109 , smbb16, 0x00000000, 0x00000000, 0x9801de16, 436); 
TEST_RR_OP( 110 , smbb16, 0x00000000, 0x80000000, 0x00000000, 440); 
TEST_RR_OP( 111 , smbb16, 0x00000000, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , smbb16, 0x00006476, 0xffffffff, 0xfbc69b8a, 448); 
TEST_RR_OP( 113 , smbb16, 0x0000729e, 0xffffffff, 0x24518d62, 452); 
TEST_RR_OP( 114 , smbb16, 0xffd4d556, 0xbab8b7c6, 0x941a0099, 456); 
TEST_RR_OP( 115 , smbb16, 0x00000000, 0x00000000, 0x00000000, 460); 
TEST_RR_OP( 116 , smbb16, 0x00000000, 0x80000000, 0x00000000, 464); 
TEST_RR_OP( 117 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , smbb16, 0x00005db6, 0xffffffff, 0xf937a24a, 476); 
TEST_RR_OP( 120 , smbb16, 0x00000000, 0x938ee14f, 0x00000000, 480); 
TEST_RR_OP( 121 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 484); 
TEST_RR_OP( 122 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , smbb16, 0x00000000, 0x80000000, 0x5567e6d6, 492); 
TEST_RR_OP( 124 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 496); 
TEST_RR_OP( 125 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 500); 
TEST_RR_OP( 126 , smbb16, 0x00000000, 0x80000000, 0x00000000, 504); 
TEST_RR_OP( 127 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 508); 
TEST_RR_OP( 128 , smbb16, 0x00000000, 0x00000000, 0x00000000, 512); 
TEST_RR_OP( 129 , smbb16, 0x00000000, 0x80000000, 0x00000000, 516); 
TEST_RR_OP( 130 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 520); 
TEST_RR_OP( 131 , smbb16, 0x00004455, 0xffffffff, 0x9dcfbbab, 524); 
TEST_RR_OP( 132 , smbb16, 0xf8ef1154, 0x657eecf4, 0xfc555ef9, 528); 
TEST_RR_OP( 133 , smbb16, 0x00000000, 0x00000000, 0x00000000, 532); 
TEST_RR_OP( 134 , smbb16, 0x00004185, 0xffffffff, 0x51f2be7b, 536); 
TEST_RR_OP( 135 , smbb16, 0x00000000, 0x00000000, 0x00000000, 540); 
TEST_RR_OP( 136 , smbb16, 0xfffff49d, 0xffffffff, 0x721c0b63, 544); 
TEST_RR_OP( 137 , smbb16, 0xf45a6902, 0xa974c005, 0x1ca62e9a, 548); 
TEST_RR_OP( 138 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 552); 
TEST_RR_OP( 139 , smbb16, 0xfffff7a1, 0xffffffff, 0x88fd085f, 556); 
TEST_RR_OP( 140 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 564); 
TEST_RR_OP( 142 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 568); 
TEST_RR_OP( 143 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 572); 
TEST_RR_OP( 144 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 576); 
TEST_RR_OP( 145 , smbb16, 0x00000000, 0xc73a2315, 0x80000000, 580); 
TEST_RR_OP( 146 , smbb16, 0x00000000, 0x00000000, 0x9ceac9bf, 584); 
TEST_RR_OP( 147 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 592); 
TEST_RR_OP( 149 , smbb16, 0x00000000, 0x80000000, 0x80000000, 596); 
TEST_RR_OP( 150 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 600); 
TEST_RR_OP( 151 , smbb16, 0x00000000, 0x00000000, 0x88fcf9ba, 604); 
TEST_RR_OP( 152 , smbb16, 0x00000000, 0x00000000, 0x00000000, 608); 
TEST_RR_OP( 153 , smbb16, 0x0000143d, 0xed1febc3, 0xffffffff, 612); 
TEST_RR_OP( 154 , smbb16, 0x00000000, 0x070d182a, 0x80000000, 616); 
TEST_RR_OP( 155 , smbb16, 0x0000159e, 0xffffffff, 0x5360ea62, 620); 
TEST_RR_OP( 156 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 624); 
TEST_RR_OP( 157 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , smbb16, 0x00000000, 0x8ba306ad, 0x00000000, 632); 
TEST_RR_OP( 159 , smbb16, 0x00000000, 0x00000000, 0x80000000, 636); 
TEST_RR_OP( 160 , smbb16, 0xffffeb0c, 0xffffffff, 0x77df14f4, 640); 
TEST_RR_OP( 161 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 644); 
TEST_RR_OP( 162 , smbb16, 0x00000000, 0x80000000, 0x00000000, 648); 
TEST_RR_OP( 163 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , smbb16, 0x00000000, 0x80000000, 0x00000000, 656); 
TEST_RR_OP( 165 , smbb16, 0x00000000, 0x00000000, 0xfeaa16cc, 660); 
TEST_RR_OP( 166 , smbb16, 0xec254927, 0x41ab61f9, 0xaeedcc1f, 664); 
TEST_RR_OP( 167 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 668); 
TEST_RR_OP( 168 , smbb16, 0x00000000, 0x80000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , smbb16, 0x00000000, 0x00000000, 0x26c63782, 676); 
TEST_RR_OP( 170 , smbb16, 0xffffcaee, 0x58453512, 0xffffffff, 680); 
TEST_RR_OP( 171 , smbb16, 0x00000000, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , smbb16, 0xffffee03, 0xffffffff, 0xb41b11fd, 688); 
TEST_RR_OP( 173 , smbb16, 0x00000000, 0x80000000, 0x80000000, 692); 
TEST_RR_OP( 174 , smbb16, 0xffff85f0, 0xffffffff, 0xd1897a10, 696); 
TEST_RR_OP( 175 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , smbb16, 0x09c067c4, 0x6f671c7e, 0x7fe9579e, 704); 
TEST_RR_OP( 177 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 708); 
TEST_RR_OP( 178 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 712); 
TEST_RR_OP( 179 , smbb16, 0x00000000, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , smbb16, 0x00000000, 0x80000000, 0x80000000, 720); 
TEST_RR_OP( 181 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 728); 
TEST_RR_OP( 183 , smbb16, 0x00004c6d, 0x6b6db393, 0xffffffff, 732); 
TEST_RR_OP( 184 , smbb16, 0x00000001, 0xffffffff, 0xffffffff, 736); 
TEST_RR_OP( 185 , smbb16, 0x00000000, 0x00000000, 0x00000000, 740); 
TEST_RR_OP( 186 , smbb16, 0x00000000, 0xffffffff, 0x80000000, 744); 
TEST_RR_OP( 187 , smbb16, 0x00001c79, 0x62d2e387, 0xffffffff, 748); 
TEST_RR_OP( 188 , smbb16, 0x00000000, 0x00000000, 0x80000000, 752); 
TEST_RR_OP( 189 , smbb16, 0x00000000, 0x80000000, 0x80000000, 756); 
TEST_RR_OP( 190 , smbb16, 0x00000000, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , smbb16, 0x00000000, 0x00000000, 0x00000000, 764); 
TEST_RR_OP( 192 , smbb16, 0x00000000, 0x00000000, 0x80000000, 768); 
TEST_RR_OP( 193 , smbb16, 0x00000000, 0x00000000, 0xffffffff, 772); 
TEST_RR_OP( 194 , smbb16, 0x00000000, 0x00000000, 0x80000000, 776); 
TEST_RR_OP( 195 , smbb16, 0x00000000, 0x00000000, 0xc8e9f299, 780); 
TEST_RR_OP( 196 , smbb16, 0x00000000, 0x83bec571, 0x80000000, 784); 
TEST_RR_OP( 197 , smbb16, 0x00000000, 0x25cc2e5e, 0x80000000, 788); 
TEST_RR_OP( 198 , smbb16, 0xffffded8, 0xffffffff, 0xacec2128, 792); 
TEST_RR_OP( 199 , smbb16, 0x00000000, 0x80000000, 0x58f2e8ad, 796); 

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
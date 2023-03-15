# See LICENSE for license details.
#*****************************************************************************
# kdmabt.S
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

TEST_RR_OP( 2 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 8); 
TEST_RR_OP( 3 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 12); 
TEST_RR_OP( 4 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 16); 
TEST_RR_OP( 5 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 20); 
TEST_RR_OP( 6 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 24); 
TEST_RR_OP( 7 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 28); 
TEST_RR_OP( 8 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 32); 
TEST_RR_OP( 9 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 36); 
TEST_RR_OP( 10 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 40); 
TEST_RR_OP( 11 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 44); 
TEST_RR_OP( 12 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 48); 
TEST_RR_OP( 13 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 52); 
TEST_RR_OP( 14 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 56); 
TEST_RR_OP( 15 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 60); 
TEST_RR_OP( 16 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 64); 
TEST_RR_OP( 17 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 68); 
TEST_RR_OP( 18 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 72); 
TEST_RR_OP( 19 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 76); 
TEST_RR_OP( 20 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 80); 
TEST_RR_OP( 21 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 84); 
TEST_RR_OP( 22 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 88); 
TEST_RR_OP( 23 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 92); 
TEST_RR_OP( 24 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 96); 
TEST_RR_OP( 25 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 100); 
TEST_RR_OP( 26 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 104); 
TEST_RR_OP( 27 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 108); 
TEST_RR_OP( 28 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 112); 
TEST_RR_OP( 29 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 116); 
TEST_RR_OP( 30 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 120); 
TEST_RR_OP( 31 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 124); 
TEST_RR_OP( 32 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 128); 
TEST_RR_OP( 33 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 132); 
TEST_RR_OP( 34 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 136); 
TEST_RR_OP( 35 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 140); 
TEST_RR_OP( 36 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 144); 
TEST_RR_OP( 37 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 148); 
TEST_RR_OP( 38 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 152); 
TEST_RR_OP( 39 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 156); 
TEST_RR_OP( 40 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 160); 
TEST_RR_OP( 41 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 164); 
TEST_RR_OP( 42 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 168); 
TEST_RR_OP( 43 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 172); 
TEST_RR_OP( 44 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 176); 
TEST_RR_OP( 45 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 180); 
TEST_RR_OP( 46 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 184); 
TEST_RR_OP( 47 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 188); 
TEST_RR_OP( 48 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 192); 
TEST_RR_OP( 49 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 196); 
TEST_RR_OP( 50 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 200); 
TEST_RR_OP( 51 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 204); 
TEST_RR_OP( 52 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 208); 
TEST_RR_OP( 53 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 212); 
TEST_RR_OP( 54 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 216); 
TEST_RR_OP( 55 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 220); 
TEST_RR_OP( 56 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 224); 
TEST_RR_OP( 57 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 228); 
TEST_RR_OP( 58 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 232); 
TEST_RR_OP( 59 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 236); 
TEST_RR_OP( 60 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 240); 
TEST_RR_OP( 61 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 244); 
TEST_RR_OP( 62 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 248); 
TEST_RR_OP( 63 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 252); 
TEST_RR_OP( 64 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 256); 
TEST_RR_OP( 65 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 260); 
TEST_RR_OP( 66 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 264); 
TEST_RR_OP( 67 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 268); 
TEST_RR_OP( 68 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 272); 
TEST_RR_OP( 69 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 276); 
TEST_RR_OP( 70 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 280); 
TEST_RR_OP( 71 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 284); 
TEST_RR_OP( 72 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 288); 
TEST_RR_OP( 73 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 292); 
TEST_RR_OP( 74 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 296); 
TEST_RR_OP( 75 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 300); 
TEST_RR_OP( 76 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 304); 
TEST_RR_OP( 77 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 308); 
TEST_RR_OP( 78 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 312); 
TEST_RR_OP( 79 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 316); 
TEST_RR_OP( 80 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 320); 
TEST_RR_OP( 81 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 324); 
TEST_RR_OP( 82 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 328); 
TEST_RR_OP( 83 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 332); 
TEST_RR_OP( 84 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 336); 
TEST_RR_OP( 85 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 340); 
TEST_RR_OP( 86 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 344); 
TEST_RR_OP( 87 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 348); 
TEST_RR_OP( 88 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 352); 
TEST_RR_OP( 89 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 356); 
TEST_RR_OP( 90 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 360); 
TEST_RR_OP( 91 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 364); 
TEST_RR_OP( 92 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 368); 
TEST_RR_OP( 93 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 372); 
TEST_RR_OP( 94 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 376); 
TEST_RR_OP( 95 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 380); 
TEST_RR_OP( 96 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 384); 
TEST_RR_OP( 97 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 388); 
TEST_RR_OP( 98 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 392); 
TEST_RR_OP( 99 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 396); 
TEST_RR_OP( 100 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 400); 
TEST_RR_OP( 101 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 404); 
TEST_RR_OP( 102 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 408); 
TEST_RR_OP( 103 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 412); 
TEST_RR_OP( 104 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 416); 
TEST_RR_OP( 105 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 420); 
TEST_RR_OP( 106 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 424); 
TEST_RR_OP( 107 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 428); 
TEST_RR_OP( 108 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 432); 
TEST_RR_OP( 109 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 436); 
TEST_RR_OP( 110 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 440); 
TEST_RR_OP( 111 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 444); 
TEST_RR_OP( 112 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 448); 
TEST_RR_OP( 113 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 452); 
TEST_RR_OP( 114 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 456); 
TEST_RR_OP( 115 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 460); 
TEST_RR_OP( 116 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 464); 
TEST_RR_OP( 117 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 468); 
TEST_RR_OP( 118 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 472); 
TEST_RR_OP( 119 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 476); 
TEST_RR_OP( 120 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 480); 
TEST_RR_OP( 121 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 484); 
TEST_RR_OP( 122 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 488); 
TEST_RR_OP( 123 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 492); 
TEST_RR_OP( 124 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 496); 
TEST_RR_OP( 125 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 500); 
TEST_RR_OP( 126 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 504); 
TEST_RR_OP( 127 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 508); 
TEST_RR_OP( 128 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 512); 
TEST_RR_OP( 129 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 516); 
TEST_RR_OP( 130 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 520); 
TEST_RR_OP( 131 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 524); 
TEST_RR_OP( 132 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 528); 
TEST_RR_OP( 133 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 532); 
TEST_RR_OP( 134 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 536); 
TEST_RR_OP( 135 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 540); 
TEST_RR_OP( 136 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 544); 
TEST_RR_OP( 137 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 548); 
TEST_RR_OP( 138 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 552); 
TEST_RR_OP( 139 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 556); 
TEST_RR_OP( 140 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 560); 
TEST_RR_OP( 141 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 564); 
TEST_RR_OP( 142 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 568); 
TEST_RR_OP( 143 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 572); 
TEST_RR_OP( 144 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 576); 
TEST_RR_OP( 145 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 580); 
TEST_RR_OP( 146 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 584); 
TEST_RR_OP( 147 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 588); 
TEST_RR_OP( 148 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 592); 
TEST_RR_OP( 149 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 596); 
TEST_RR_OP( 150 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 600); 
TEST_RR_OP( 151 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 604); 
TEST_RR_OP( 152 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 608); 
TEST_RR_OP( 153 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 612); 
TEST_RR_OP( 154 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 616); 
TEST_RR_OP( 155 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 620); 
TEST_RR_OP( 156 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 624); 
TEST_RR_OP( 157 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 628); 
TEST_RR_OP( 158 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 632); 
TEST_RR_OP( 159 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 636); 
TEST_RR_OP( 160 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 640); 
TEST_RR_OP( 161 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 644); 
TEST_RR_OP( 162 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 648); 
TEST_RR_OP( 163 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 652); 
TEST_RR_OP( 164 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 656); 
TEST_RR_OP( 165 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 660); 
TEST_RR_OP( 166 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 664); 
TEST_RR_OP( 167 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 668); 
TEST_RR_OP( 168 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 672); 
TEST_RR_OP( 169 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 676); 
TEST_RR_OP( 170 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 680); 
TEST_RR_OP( 171 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 684); 
TEST_RR_OP( 172 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 688); 
TEST_RR_OP( 173 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 692); 
TEST_RR_OP( 174 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 696); 
TEST_RR_OP( 175 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 700); 
TEST_RR_OP( 176 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 704); 
TEST_RR_OP( 177 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 708); 
TEST_RR_OP( 178 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 712); 
TEST_RR_OP( 179 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 716); 
TEST_RR_OP( 180 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 720); 
TEST_RR_OP( 181 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 724); 
TEST_RR_OP( 182 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 728); 
TEST_RR_OP( 183 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 732); 
TEST_RR_OP( 184 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 736); 
TEST_RR_OP( 185 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 740); 
TEST_RR_OP( 186 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 744); 
TEST_RR_OP( 187 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 748); 
TEST_RR_OP( 188 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 752); 
TEST_RR_OP( 189 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 756); 
TEST_RR_OP( 190 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 760); 
TEST_RR_OP( 191 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 764); 
TEST_RR_OP( 192 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 768); 
TEST_RR_OP( 193 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 772); 
TEST_RR_OP( 194 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 776); 
TEST_RR_OP( 195 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 780); 
TEST_RR_OP( 196 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 784); 
TEST_RR_OP( 197 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 788); 
TEST_RR_OP( 198 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 792); 
TEST_RR_OP( 199 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 796); 

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
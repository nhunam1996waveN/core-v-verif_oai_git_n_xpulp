# See LICENSE for license details.
#*****************************************************************************
# kmmawb.S
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

TEST_RR_OP( 2 , kmmawb, 0x00008000, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmmawb, 0x00008000, 0xc05d9d64, 0x80000000, 12); 
TEST_RR_OP( 4 , kmmawb, 0x0000d3ba, 0xac45e1d5, 0xffffffff, 16); 
TEST_RR_OP( 5 , kmmawb, 0xc883d3ba, 0x80000000, 0xc2376efa, 20); 
TEST_RR_OP( 6 , kmmawb, 0xc883d3ba, 0x80000000, 0x00000000, 24); 
TEST_RR_OP( 7 , kmmawb, 0xca199b36, 0x130b0120, 0x0fdb154f, 28); 
TEST_RR_OP( 8 , kmmawb, 0xca199b36, 0x75b5ce89, 0x00000000, 32); 
TEST_RR_OP( 9 , kmmawb, 0xca199b36, 0xffffffff, 0xffffffff, 36); 
TEST_RR_OP( 10 , kmmawb, 0xca199b36, 0xc3fc8ebd, 0x80000000, 40); 
TEST_RR_OP( 11 , kmmawb, 0xca1a1b36, 0x80000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmmawb, 0xca1a1b35, 0xffffffff, 0x2c116eb6, 48); 
TEST_RR_OP( 13 , kmmawb, 0xca1a1b35, 0x00000000, 0x80000000, 52); 
TEST_RR_OP( 14 , kmmawb, 0xca1a1b35, 0xffffffff, 0x80000000, 56); 
TEST_RR_OP( 15 , kmmawb, 0xca1a1b35, 0x00000000, 0x00000000, 60); 
TEST_RR_OP( 16 , kmmawb, 0xca1a1b35, 0x00000000, 0x00000000, 64); 
TEST_RR_OP( 17 , kmmawb, 0xe4279b35, 0x80000000, 0xb454cbe5, 68); 
TEST_RR_OP( 18 , kmmawb, 0xe4279b34, 0xffffffff, 0xc99e56b4, 72); 
TEST_RR_OP( 19 , kmmawb, 0xe4279b34, 0xffffffff, 0x00000000, 76); 
TEST_RR_OP( 20 , kmmawb, 0xe4279b34, 0x80000000, 0x00000000, 80); 
TEST_RR_OP( 21 , kmmawb, 0xe8ef1b34, 0x80000000, 0xd8eef671, 84); 
TEST_RR_OP( 22 , kmmawb, 0xc7bb1b34, 0x80000000, 0xb25f4268, 88); 
TEST_RR_OP( 23 , kmmawb, 0xc7bb1b34, 0x00000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , kmmawb, 0xc7bb1b34, 0xffffffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmmawb, 0xc7bb1b34, 0x00000000, 0x00000000, 100); 
TEST_RR_OP( 26 , kmmawb, 0xc7bb1b34, 0x80000000, 0x80000000, 104); 
TEST_RR_OP( 27 , kmmawb, 0xc7bb1b34, 0xffffffff, 0x80000000, 108); 
TEST_RR_OP( 28 , kmmawb, 0xc7bb1b34, 0x00000000, 0x80000000, 112); 
TEST_RR_OP( 29 , kmmawb, 0xc7bb1b34, 0x80000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kmmawb, 0xc7bb1b34, 0x00000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kmmawb, 0xc7bb1b34, 0x00000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , kmmawb, 0xc7bb1b34, 0xffffffff, 0x80000000, 128); 
TEST_RR_OP( 33 , kmmawb, 0xdced9b34, 0x80000000, 0x655ad59b, 132); 
TEST_RR_OP( 34 , kmmawb, 0xdced9b34, 0x80000000, 0x80000000, 136); 
TEST_RR_OP( 35 , kmmawb, 0xdced9b34, 0x00000000, 0xda6184b7, 140); 
TEST_RR_OP( 36 , kmmawb, 0xdced9b34, 0xffffffff, 0x00000000, 144); 
TEST_RR_OP( 37 , kmmawb, 0xdced9b34, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmmawb, 0xdced9b34, 0x80000000, 0x80000000, 152); 
TEST_RR_OP( 39 , kmmawb, 0xdced9b34, 0xffffffff, 0x80000000, 156); 
TEST_RR_OP( 40 , kmmawb, 0xdced9b34, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 41 , kmmawb, 0xdced9b34, 0x00000000, 0xd7df0ae5, 164); 
TEST_RR_OP( 42 , kmmawb, 0xdced9b34, 0xffffffff, 0x5cc0e0ea, 168); 
TEST_RR_OP( 43 , kmmawb, 0xdced9b34, 0xffffffff, 0x00000000, 172); 
TEST_RR_OP( 44 , kmmawb, 0xdced9b34, 0x00000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , kmmawb, 0xdced9b34, 0x00000000, 0x9f41c963, 180); 
TEST_RR_OP( 46 , kmmawb, 0xdced9b34, 0x00000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kmmawb, 0xdced9b34, 0x291a11a0, 0x00000000, 188); 
TEST_RR_OP( 48 , kmmawb, 0xfae31e30, 0x40ccf798, 0xde30765b, 192); 
TEST_RR_OP( 49 , kmmawb, 0xffdae340, 0xdc26de71, 0xfa02dc86, 196); 
TEST_RR_OP( 50 , kmmawb, 0xffdae340, 0x00000000, 0xf13c4bd8, 200); 
TEST_RR_OP( 51 , kmmawb, 0xffdae340, 0x00000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kmmawb, 0xffdae340, 0xffffffff, 0x00000000, 208); 
TEST_RR_OP( 53 , kmmawb, 0xffdae340, 0x00000000, 0xffffffff, 212); 
TEST_RR_OP( 54 , kmmawb, 0xffdae340, 0x00000000, 0x80000000, 216); 
TEST_RR_OP( 55 , kmmawb, 0xffdae33f, 0xffffffff, 0xa7634025, 220); 
TEST_RR_OP( 56 , kmmawb, 0xffdae33f, 0x00000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , kmmawb, 0xffdae33f, 0x8c599cb4, 0x80000000, 228); 
TEST_RR_OP( 58 , kmmawb, 0xffdae33f, 0x80000000, 0x00000000, 232); 
TEST_RR_OP( 59 , kmmawb, 0xffdae33f, 0xffffffff, 0x00000000, 236); 
TEST_RR_OP( 60 , kmmawb, 0xffdae33f, 0xffffffff, 0x00000000, 240); 
TEST_RR_OP( 61 , kmmawb, 0xffdae33f, 0x00000000, 0xae68a4e1, 244); 
TEST_RR_OP( 62 , kmmawb, 0xffdae33f, 0x00000000, 0x00000000, 248); 
TEST_RR_OP( 63 , kmmawb, 0xffdb1384, 0xcfba3bc9, 0xffffffff, 252); 
TEST_RR_OP( 64 , kmmawb, 0xffdae16f, 0x3214fcb7, 0xffffffff, 256); 
TEST_RR_OP( 65 , kmmawb, 0xffdae16f, 0x00000000, 0x00000000, 260); 
TEST_RR_OP( 66 , kmmawb, 0xffdae16f, 0xffffffff, 0x80000000, 264); 
TEST_RR_OP( 67 , kmmawb, 0xffdb3560, 0xac0ecd37, 0xffffffff, 268); 
TEST_RR_OP( 68 , kmmawb, 0xffdb8bd2, 0xa98d2c75, 0xffffffff, 272); 
TEST_RR_OP( 69 , kmmawb, 0xffdb8bd2, 0x00000000, 0x00000000, 276); 
TEST_RR_OP( 70 , kmmawb, 0xffdbabe2, 0xdfefc2d5, 0xffffffff, 280); 
TEST_RR_OP( 71 , kmmawb, 0xffdbabe2, 0x00000000, 0xffffffff, 284); 
TEST_RR_OP( 72 , kmmawb, 0xffdbabe2, 0x80000000, 0x80000000, 288); 
TEST_RR_OP( 73 , kmmawb, 0xffdbabe2, 0x80000000, 0x00000000, 292); 
TEST_RR_OP( 74 , kmmawb, 0xffdbabe2, 0x80000000, 0x00000000, 296); 
TEST_RR_OP( 75 , kmmawb, 0x3a9f2be2, 0x80000000, 0xa8908a79, 300); 
TEST_RR_OP( 76 , kmmawb, 0x3a9fabe2, 0x80000000, 0xffffffff, 304); 
TEST_RR_OP( 77 , kmmawb, 0x3a9fabe2, 0xffffffff, 0x00000000, 308); 
TEST_RR_OP( 78 , kmmawb, 0x3a9fabe2, 0xffffffff, 0x80000000, 312); 
TEST_RR_OP( 79 , kmmawb, 0x3a9fabe2, 0xffffffff, 0x80000000, 316); 
TEST_RR_OP( 80 , kmmawb, 0x3a9fabe2, 0x80000000, 0x00000000, 320); 
TEST_RR_OP( 81 , kmmawb, 0x3a9fabe2, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kmmawb, 0x3aa02be2, 0x80000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmmawb, 0x3aa02be2, 0x4a9b4b52, 0x80000000, 332); 
TEST_RR_OP( 84 , kmmawb, 0x3aa02be2, 0xffffffff, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmmawb, 0x3aa02be2, 0xffffffff, 0x00000000, 340); 
TEST_RR_OP( 86 , kmmawb, 0x1efb2117, 0x9e0578b4, 0xcf38483b, 344); 
TEST_RR_OP( 87 , kmmawb, 0x1efb2117, 0x00be890b, 0x00000000, 348); 
TEST_RR_OP( 88 , kmmawb, 0x1efb2117, 0xdaa308f7, 0x80000000, 352); 
TEST_RR_OP( 89 , kmmawb, 0x1efae515, 0x3c01a6e3, 0xffffffff, 356); 
TEST_RR_OP( 90 , kmmawb, 0x1efae515, 0xe8f2a558, 0x80000000, 360); 
TEST_RR_OP( 91 , kmmawb, 0x1efae514, 0xffffffff, 0x7c145cb3, 364); 
TEST_RR_OP( 92 , kmmawb, 0x1efae513, 0xffffffff, 0x6d7f6185, 368); 
TEST_RR_OP( 93 , kmmawb, 0x1efae513, 0x00000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , kmmawb, 0x1efae513, 0x00000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmmawb, 0x2acbd6c6, 0x913b265a, 0x2181e4b1, 380); 
TEST_RR_OP( 96 , kmmawb, 0x2acbd6c6, 0x00000000, 0xd47cf262, 384); 
TEST_RR_OP( 97 , kmmawb, 0x2acbd6c6, 0x00000000, 0x00000000, 388); 
TEST_RR_OP( 98 , kmmawb, 0x134bea1d, 0xa18ead08, 0x28533fb3, 392); 
TEST_RR_OP( 99 , kmmawb, 0x134bea1d, 0x00000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , kmmawb, 0x134bea1d, 0x00000000, 0x39c50ba4, 400); 
TEST_RR_OP( 101 , kmmawb, 0x134bea1d, 0x46abd446, 0x80000000, 404); 
TEST_RR_OP( 102 , kmmawb, 0x134bea1d, 0x80000000, 0x80000000, 408); 
TEST_RR_OP( 103 , kmmawb, 0x134bea1c, 0xffffffff, 0x5a02557c, 412); 
TEST_RR_OP( 104 , kmmawb, 0x134bea1c, 0xffffffff, 0x00000000, 416); 
TEST_RR_OP( 105 , kmmawb, 0x134bea1c, 0xa2b8cba5, 0x00000000, 420); 
TEST_RR_OP( 106 , kmmawb, 0x1347e62d, 0xf42f490f, 0xa67f0057, 424); 
TEST_RR_OP( 107 , kmmawb, 0x1347e62d, 0xffffffff, 0xffffffff, 428); 
TEST_RR_OP( 108 , kmmawb, 0x1348662d, 0x80000000, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmmawb, 0x1348e62d, 0x80000000, 0xffffffff, 436); 
TEST_RR_OP( 110 , kmmawb, 0x1348e62d, 0x00000000, 0x5eda9a3d, 440); 
TEST_RR_OP( 111 , kmmawb, 0x1348e62d, 0x00000000, 0x7b5355fa, 444); 
TEST_RR_OP( 112 , kmmawb, 0x1348e62d, 0xffffffff, 0xffffffff, 448); 
TEST_RR_OP( 113 , kmmawb, 0x134926e0, 0xbf4c4a7c, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmmawb, 0x17b7875e, 0xf333fd15, 0xa01fa75b, 456); 
TEST_RR_OP( 115 , kmmawb, 0x17b8075e, 0x80000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , kmmawb, 0x17b78eb6, 0x78a701b0, 0xffffffff, 464); 
TEST_RR_OP( 117 , kmmawb, 0x17b78eb6, 0x00000000, 0x65e8cf7c, 468); 
TEST_RR_OP( 118 , kmmawb, 0x17b78eb6, 0x00000000, 0x00000000, 472); 
TEST_RR_OP( 119 , kmmawb, 0x17b78eb5, 0xffffffff, 0x51d31735, 476); 
TEST_RR_OP( 120 , kmmawb, 0x17b78eb5, 0xffffffff, 0xffffffff, 480); 
TEST_RR_OP( 121 , kmmawb, 0x17b78eb5, 0xffffffff, 0x00000000, 484); 
TEST_RR_OP( 122 , kmmawb, 0x17b78eb5, 0xffffffff, 0x80000000, 488); 
TEST_RR_OP( 123 , kmmawb, 0x17b78eb5, 0xffffffff, 0xffffffff, 492); 
TEST_RR_OP( 124 , kmmawb, 0x17b7560e, 0x38a62051, 0xffffffff, 496); 
TEST_RR_OP( 125 , kmmawb, 0x17b7560e, 0xdf6b5a0d, 0x00000000, 500); 
TEST_RR_OP( 126 , kmmawb, 0x17b7560e, 0xffffffff, 0x00000000, 504); 
TEST_RR_OP( 127 , kmmawb, 0x17b7560e, 0x00000000, 0x80000000, 508); 
TEST_RR_OP( 128 , kmmawb, 0x3cbf3b6a, 0xb1ebc2af, 0x94308696, 512); 
TEST_RR_OP( 129 , kmmawb, 0x4db83b6a, 0x80000000, 0x28e3de0e, 516); 
TEST_RR_OP( 130 , kmmawb, 0x4db83b6a, 0x63507fbe, 0x00000000, 520); 
TEST_RR_OP( 131 , kmmawb, 0x4db83b6a, 0x00000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , kmmawb, 0x4db83b6a, 0x00000000, 0x80000000, 528); 
TEST_RR_OP( 133 , kmmawb, 0x4db83b6a, 0x00000000, 0x80000000, 532); 
TEST_RR_OP( 134 , kmmawb, 0x4db83b6a, 0xffffffff, 0xe5b69875, 536); 
TEST_RR_OP( 135 , kmmawb, 0x4db83b69, 0xffffffff, 0x31e353fd, 540); 
TEST_RR_OP( 136 , kmmawb, 0x4db83b69, 0x00000000, 0xb47d13b3, 544); 
TEST_RR_OP( 137 , kmmawb, 0x4db83b69, 0x2af332bf, 0x80000000, 548); 
TEST_RR_OP( 138 , kmmawb, 0x4db8183a, 0x232e19b0, 0xffffffff, 552); 
TEST_RR_OP( 139 , kmmawb, 0x4db8183a, 0x00000000, 0x80000000, 556); 
TEST_RR_OP( 140 , kmmawb, 0x4db8183a, 0x80000000, 0x00000000, 560); 
TEST_RR_OP( 141 , kmmawb, 0x4db8183a, 0xae9a8c12, 0x80000000, 564); 
TEST_RR_OP( 142 , kmmawb, 0x4db8183a, 0x80000000, 0x00000000, 568); 
TEST_RR_OP( 143 , kmmawb, 0x5aeb983a, 0x80000000, 0xff61e599, 572); 
TEST_RR_OP( 144 , kmmawb, 0x5aeb983a, 0x00000000, 0xf72ccc4c, 576); 
TEST_RR_OP( 145 , kmmawb, 0x5aeb983a, 0x80000000, 0x80000000, 580); 
TEST_RR_OP( 146 , kmmawb, 0x5aeb983a, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , kmmawb, 0x5aeb983a, 0x00000000, 0x391f1dc2, 588); 
TEST_RR_OP( 148 , kmmawb, 0x5aeb983a, 0x792a14e7, 0x00000000, 592); 
TEST_RR_OP( 149 , kmmawb, 0x5aebb4cb, 0xe36ed398, 0xffffffff, 596); 
TEST_RR_OP( 150 , kmmawb, 0x556a036f, 0x5c1bcae2, 0x6d41f0b2, 600); 
TEST_RR_OP( 151 , kmmawb, 0x2361036f, 0x80000000, 0xdfaf6412, 604); 
TEST_RR_OP( 152 , kmmawb, 0x2361036f, 0x00000000, 0x392c79ea, 608); 
TEST_RR_OP( 153 , kmmawb, 0x2361036f, 0x27042797, 0x00000000, 612); 
TEST_RR_OP( 154 , kmmawb, 0x2361036f, 0x00000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmmawb, 0x2361036f, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmmawb, 0x2361036f, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , kmmawb, 0x2361036f, 0x00000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , kmmawb, 0x2361036f, 0xffffffff, 0x98e6f93c, 632); 
TEST_RR_OP( 159 , kmmawb, 0x2361036f, 0x00000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmmawb, 0x241f9f6f, 0x0292ace0, 0x30744a15, 640); 
TEST_RR_OP( 161 , kmmawb, 0x241f9f6f, 0x80000000, 0x80000000, 644); 
TEST_RR_OP( 162 , kmmawb, 0x241f9f6f, 0xffffffff, 0x80000000, 648); 
TEST_RR_OP( 163 , kmmawb, 0x241f9f6f, 0x80000000, 0x80000000, 652); 
TEST_RR_OP( 164 , kmmawb, 0x241f9f6f, 0xffffffff, 0xa575a8b0, 656); 
TEST_RR_OP( 165 , kmmawb, 0x241f9f6f, 0x00000000, 0x00000000, 660); 
TEST_RR_OP( 166 , kmmawb, 0x241f9f6f, 0xabd81059, 0x80000000, 664); 
TEST_RR_OP( 167 , kmmawb, 0x241f9f6f, 0x00000000, 0x80000000, 668); 
TEST_RR_OP( 168 , kmmawb, 0x241f9f6f, 0x00000000, 0x80000000, 672); 
TEST_RR_OP( 169 , kmmawb, 0x241f9f6f, 0xffffffff, 0x00000000, 676); 
TEST_RR_OP( 170 , kmmawb, 0x241f9f6f, 0x8902e43d, 0x80000000, 680); 
TEST_RR_OP( 171 , kmmawb, 0x0be00f52, 0x5b70a529, 0x8743bc1d, 684); 
TEST_RR_OP( 172 , kmmawb, 0x0be00f52, 0x00000000, 0x00000000, 688); 
TEST_RR_OP( 173 , kmmawb, 0x0be00f52, 0x80000000, 0x80000000, 692); 
TEST_RR_OP( 174 , kmmawb, 0x0be00f52, 0x80000000, 0x80000000, 696); 
TEST_RR_OP( 175 , kmmawb, 0x0be08f52, 0x80000000, 0xffffffff, 700); 
TEST_RR_OP( 176 , kmmawb, 0x0be08f52, 0x00000000, 0xffffffff, 704); 
TEST_RR_OP( 177 , kmmawb, 0x0be08f52, 0xb9356cfc, 0x80000000, 708); 
TEST_RR_OP( 178 , kmmawb, 0x0be08f51, 0xffffffff, 0x2b507c82, 712); 
TEST_RR_OP( 179 , kmmawb, 0x0be08f51, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , kmmawb, 0x0be08f51, 0xffffffff, 0x80000000, 720); 
TEST_RR_OP( 181 , kmmawb, 0x0be08f51, 0x80000000, 0x00000000, 724); 
TEST_RR_OP( 182 , kmmawb, 0x0be08f51, 0xf5e71d7b, 0x00000000, 728); 
TEST_RR_OP( 183 , kmmawb, 0x0be10f51, 0x80000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmmawb, 0x0be10f51, 0xfc54879e, 0x80000000, 736); 
TEST_RR_OP( 185 , kmmawb, 0x0be18f51, 0x80000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , kmmawb, 0x0be18f51, 0x80000000, 0x00000000, 744); 
TEST_RR_OP( 187 , kmmawb, 0x0be18f50, 0xffffffff, 0x47da69cd, 748); 
TEST_RR_OP( 188 , kmmawb, 0x0be18f50, 0x80000000, 0x00000000, 752); 
TEST_RR_OP( 189 , kmmawb, 0x0be18f50, 0x80000000, 0x00000000, 756); 
TEST_RR_OP( 190 , kmmawb, 0x0be18f50, 0xffffffff, 0xffffffff, 760); 
TEST_RR_OP( 191 , kmmawb, 0x0be18f50, 0xffffffff, 0x80000000, 764); 
TEST_RR_OP( 192 , kmmawb, 0x0be20f50, 0x80000000, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmmawb, 0x0be20f50, 0xffffffff, 0x80000000, 772); 
TEST_RR_OP( 194 , kmmawb, 0x0be20f50, 0xd12ecd6e, 0x80000000, 776); 
TEST_RR_OP( 195 , kmmawb, 0x2ccc0f50, 0x80000000, 0x61dbbe2c, 780); 
TEST_RR_OP( 196 , kmmawb, 0x2ccc0f50, 0xffffffff, 0x80000000, 784); 
TEST_RR_OP( 197 , kmmawb, 0x50eb30f1, 0xae0feadc, 0xdcbe8f25, 788); 
TEST_RR_OP( 198 , kmmawb, 0x50eb9579, 0x9b77af89, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmmawb, 0x50eb9579, 0x80000000, 0x80000000, 796); 

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
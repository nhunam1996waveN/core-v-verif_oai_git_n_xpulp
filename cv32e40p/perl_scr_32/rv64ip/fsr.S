# See LICENSE for license details.
#*****************************************************************************
# fsr.S
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

TEST_RR_OP_FSR( 2 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 8); 
TEST_RR_OP_FSR( 3 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 12); 
TEST_RR_OP_FSR( 4 , fsr, 0x02314360, 0x8c60118a, 0x1b05fbef, 0x261831f3 , 16); 
TEST_RR_OP_FSR( 5 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 20); 
TEST_RR_OP_FSR( 6 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 24); 
TEST_RR_OP_FSR( 7 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x0f85de8b , 28); 
TEST_RR_OP_FSR( 8 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 32); 
TEST_RR_OP_FSR( 9 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 36); 
TEST_RR_OP_FSR( 10 , fsr, 0x3a45dc6e, 0x3a45dc6e, 0x20be2a85, 0x00000000 , 40); 
TEST_RR_OP_FSR( 11 , fsr, 0x60a2205f, 0x60a2205f, 0x3e0c0330, 0x80000000 , 44); 
TEST_RR_OP_FSR( 12 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x9b8c0b9f , 48); 
TEST_RR_OP_FSR( 13 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 52); 
TEST_RR_OP_FSR( 14 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 56); 
TEST_RR_OP_FSR( 15 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 60); 
TEST_RR_OP_FSR( 16 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 64); 
TEST_RR_OP_FSR( 17 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 68); 
TEST_RR_OP_FSR( 18 , fsr, 0xa38baf37, 0xa38baf37, 0xde2f88db, 0x00000000 , 72); 
TEST_RR_OP_FSR( 19 , fsr, 0x546fd379, 0x546fd379, 0x7daa0348, 0x00000000 , 76); 
TEST_RR_OP_FSR( 20 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x627d8084 , 80); 
TEST_RR_OP_FSR( 21 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 84); 
TEST_RR_OP_FSR( 22 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 88); 
TEST_RR_OP_FSR( 23 , fsr, 0x5f66ea74, 0x5f66ea74, 0x1999e34b, 0x80000000 , 92); 
TEST_RR_OP_FSR( 24 , fsr, 0xa14af944, 0xa14af944, 0x9de399e9, 0x00000000 , 96); 
TEST_RR_OP_FSR( 25 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x14ba1f97 , 100); 
TEST_RR_OP_FSR( 26 , fsr, 0xd76988ef, 0xd76988ef, 0xb3e8ba49, 0x00000000 , 104); 
TEST_RR_OP_FSR( 27 , fsr, 0x00004000, 0x00000000, 0x80000000, 0x1ec2aef1 , 108); 
TEST_RR_OP_FSR( 28 , fsr, 0x0345c995, 0x01a2e4ca, 0x8a922d42, 0xffffffff , 112); 
TEST_RR_OP_FSR( 29 , fsr, 0x6cc496c9, 0xf5f2fe20, 0xd9892d93, 0xc5ee38e1 , 116); 
TEST_RR_OP_FSR( 30 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 120); 
TEST_RR_OP_FSR( 31 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x56f53880 , 124); 
TEST_RR_OP_FSR( 32 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 128); 
TEST_RR_OP_FSR( 33 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 132); 
TEST_RR_OP_FSR( 34 , fsr, 0x826b6c19, 0x826b6c19, 0x130d75fc, 0x80000000 , 136); 
TEST_RR_OP_FSR( 35 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 140); 
TEST_RR_OP_FSR( 36 , fsr, 0x00000000, 0x00000000, 0x80000000, 0xa669a54c , 144); 
TEST_RR_OP_FSR( 37 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x7b219788 , 148); 
TEST_RR_OP_FSR( 38 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 152); 
TEST_RR_OP_FSR( 39 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 156); 
TEST_RR_OP_FSR( 40 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x31f04f5d , 160); 
TEST_RR_OP_FSR( 41 , fsr, 0x0ebd3069, 0x0ebd3069, 0x3f586363, 0x00000000 , 164); 
TEST_RR_OP_FSR( 42 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 168); 
TEST_RR_OP_FSR( 43 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 172); 
TEST_RR_OP_FSR( 44 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 176); 
TEST_RR_OP_FSR( 45 , fsr, 0xc936f3d0, 0xf3d04068, 0xdecbc936, 0xb4246c90 , 180); 
TEST_RR_OP_FSR( 46 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xcd09deda , 184); 
TEST_RR_OP_FSR( 47 , fsr, 0x40000000, 0x00000000, 0x80000000, 0x87f13c61 , 188); 
TEST_RR_OP_FSR( 48 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x41fa2a17 , 192); 
TEST_RR_OP_FSR( 49 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x194222b0 , 196); 
TEST_RR_OP_FSR( 50 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 200); 
TEST_RR_OP_FSR( 51 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x5b97af10 , 204); 
TEST_RR_OP_FSR( 52 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 208); 
TEST_RR_OP_FSR( 53 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 212); 
TEST_RR_OP_FSR( 54 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 216); 
TEST_RR_OP_FSR( 55 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 220); 
TEST_RR_OP_FSR( 56 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 224); 
TEST_RR_OP_FSR( 57 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 228); 
TEST_RR_OP_FSR( 58 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 232); 
TEST_RR_OP_FSR( 59 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 236); 
TEST_RR_OP_FSR( 60 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 240); 
TEST_RR_OP_FSR( 61 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 244); 
TEST_RR_OP_FSR( 62 , fsr, 0xa0c8e9c9, 0xa0c8e9c9, 0x2c0ddf64, 0x00000000 , 248); 
TEST_RR_OP_FSR( 63 , fsr, 0xfae1d7e1, 0xfae1d7e1, 0xd16244ed, 0x80000000 , 252); 
TEST_RR_OP_FSR( 64 , fsr, 0x63322253, 0xb1991129, 0xd862daeb, 0xffffffff , 256); 
TEST_RR_OP_FSR( 65 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x415870e2 , 260); 
TEST_RR_OP_FSR( 66 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xaff46511 , 264); 
TEST_RR_OP_FSR( 67 , fsr, 0x365bd639, 0x365bd639, 0xc4d87ffe, 0x00000000 , 268); 
TEST_RR_OP_FSR( 68 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 272); 
TEST_RR_OP_FSR( 69 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 276); 
TEST_RR_OP_FSR( 70 , fsr, 0xe71e909f, 0xf38f484f, 0xbe392996, 0xffffffff , 280); 
TEST_RR_OP_FSR( 71 , fsr, 0x6d1bb4e4, 0x368dda72, 0x5d170854, 0xffffffff , 284); 
TEST_RR_OP_FSR( 72 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 288); 
TEST_RR_OP_FSR( 73 , fsr, 0xe652a22a, 0xe652a22a, 0x03c34a36, 0x80000000 , 292); 
TEST_RR_OP_FSR( 74 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 296); 
TEST_RR_OP_FSR( 75 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 300); 
TEST_RR_OP_FSR( 76 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 304); 
TEST_RR_OP_FSR( 77 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 308); 
TEST_RR_OP_FSR( 78 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 312); 
TEST_RR_OP_FSR( 79 , fsr, 0xfedeb9c5, 0xfedeb9c5, 0xd99b1eeb, 0x00000000 , 316); 
TEST_RR_OP_FSR( 80 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 320); 
TEST_RR_OP_FSR( 81 , fsr, 0xbbc720cf, 0xe2ef1c83, 0x3f33ab2b, 0x0a4790ba , 324); 
TEST_RR_OP_FSR( 82 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 328); 
TEST_RR_OP_FSR( 83 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 332); 
TEST_RR_OP_FSR( 84 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 336); 
TEST_RR_OP_FSR( 85 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 340); 
TEST_RR_OP_FSR( 86 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 344); 
TEST_RR_OP_FSR( 87 , fsr, 0x921c0e1c, 0x921c0e1c, 0xf48c0aed, 0x80000000 , 348); 
TEST_RR_OP_FSR( 88 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 352); 
TEST_RR_OP_FSR( 89 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 356); 
TEST_RR_OP_FSR( 90 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 360); 
TEST_RR_OP_FSR( 91 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 364); 
TEST_RR_OP_FSR( 92 , fsr, 0x00400000, 0x00000000, 0x80000000, 0x7f0a6e29 , 368); 
TEST_RR_OP_FSR( 93 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 372); 
TEST_RR_OP_FSR( 94 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 376); 
TEST_RR_OP_FSR( 95 , fsr, 0x415e6fb9, 0x20af37dc, 0xe541f0c4, 0xffffffff , 380); 
TEST_RR_OP_FSR( 96 , fsr, 0x6a086383, 0xd3bc8d41, 0x0c706493, 0xd69cfdad , 384); 
TEST_RR_OP_FSR( 97 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 388); 
TEST_RR_OP_FSR( 98 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 392); 
TEST_RR_OP_FSR( 99 , fsr, 0x895fc7d5, 0x895fc7d5, 0x8e3c3ce6, 0x80000000 , 396); 
TEST_RR_OP_FSR( 100 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xa58e4953 , 400); 
TEST_RR_OP_FSR( 101 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 404); 
TEST_RR_OP_FSR( 102 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x8343179c , 408); 
TEST_RR_OP_FSR( 103 , fsr, 0xcdd7a61c, 0x66ebd30e, 0x0ff7a891, 0xffffffff , 412); 
TEST_RR_OP_FSR( 104 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 416); 
TEST_RR_OP_FSR( 105 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x759e6321 , 420); 
TEST_RR_OP_FSR( 106 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 424); 
TEST_RR_OP_FSR( 107 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x82a8a576 , 428); 
TEST_RR_OP_FSR( 108 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 432); 
TEST_RR_OP_FSR( 109 , fsr, 0x246896c9, 0x246896c9, 0xb747ca23, 0x00000000 , 436); 
TEST_RR_OP_FSR( 110 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 440); 
TEST_RR_OP_FSR( 111 , fsr, 0xcb2abadd, 0xcb2abadd, 0x2e359fa9, 0x80000000 , 444); 
TEST_RR_OP_FSR( 112 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xaff28efd , 448); 
TEST_RR_OP_FSR( 113 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 452); 
TEST_RR_OP_FSR( 114 , fsr, 0x00002000, 0x00000000, 0x80000000, 0xeb29d9f2 , 456); 
TEST_RR_OP_FSR( 115 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 460); 
TEST_RR_OP_FSR( 116 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 464); 
TEST_RR_OP_FSR( 117 , fsr, 0xc61dd97e, 0xc61dd97e, 0x632835e6, 0x80000000 , 468); 
TEST_RR_OP_FSR( 118 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x09aff5e6 , 472); 
TEST_RR_OP_FSR( 119 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 476); 
TEST_RR_OP_FSR( 120 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x9c9fbd6a , 480); 
TEST_RR_OP_FSR( 121 , fsr, 0x9ca37df3, 0x2d569ab3, 0x946fbe75, 0xa9aa7aa5 , 484); 
TEST_RR_OP_FSR( 122 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x8abbad00 , 488); 
TEST_RR_OP_FSR( 123 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x51ed5e8c , 492); 
TEST_RR_OP_FSR( 124 , fsr, 0x35c8fafa, 0x1ae47d7d, 0x57e0af95, 0xffffffff , 496); 
TEST_RR_OP_FSR( 125 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 500); 
TEST_RR_OP_FSR( 126 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 504); 
TEST_RR_OP_FSR( 127 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 508); 
TEST_RR_OP_FSR( 128 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 512); 
TEST_RR_OP_FSR( 129 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 516); 
TEST_RR_OP_FSR( 130 , fsr, 0xc8519465, 0xc8519465, 0x0663a80d, 0x80000000 , 520); 
TEST_RR_OP_FSR( 131 , fsr, 0x89fb6ff4, 0x44fdb7fa, 0x0ff4a4fa, 0xffffffff , 524); 
TEST_RR_OP_FSR( 132 , fsr, 0x6fca931e, 0x6fca931e, 0xf4082a5c, 0x80000000 , 528); 
TEST_RR_OP_FSR( 133 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 532); 
TEST_RR_OP_FSR( 134 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 536); 
TEST_RR_OP_FSR( 135 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 540); 
TEST_RR_OP_FSR( 136 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 544); 
TEST_RR_OP_FSR( 137 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 548); 
TEST_RR_OP_FSR( 138 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 552); 
TEST_RR_OP_FSR( 139 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 556); 
TEST_RR_OP_FSR( 140 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x7f2a5210 , 560); 
TEST_RR_OP_FSR( 141 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 564); 
TEST_RR_OP_FSR( 142 , fsr, 0x00000200, 0x00000000, 0x80000000, 0x72fd7776 , 568); 
TEST_RR_OP_FSR( 143 , fsr, 0x36b61dba, 0x36b61dba, 0x712179a1, 0x80000000 , 572); 
TEST_RR_OP_FSR( 144 , fsr, 0x2b0e589b, 0x2b0e589b, 0xbb96fcf5, 0x80000000 , 576); 
TEST_RR_OP_FSR( 145 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 580); 
TEST_RR_OP_FSR( 146 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 584); 
TEST_RR_OP_FSR( 147 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 588); 
TEST_RR_OP_FSR( 148 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 592); 
TEST_RR_OP_FSR( 149 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 596); 
TEST_RR_OP_FSR( 150 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 600); 
TEST_RR_OP_FSR( 151 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 604); 
TEST_RR_OP_FSR( 152 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x93c678d2 , 608); 
TEST_RR_OP_FSR( 153 , fsr, 0x9b8feb9c, 0x9b8feb9c, 0xd0564fb1, 0x80000000 , 612); 
TEST_RR_OP_FSR( 154 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 616); 
TEST_RR_OP_FSR( 155 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 620); 
TEST_RR_OP_FSR( 156 , fsr, 0x1e55276d, 0x70c1e552, 0x76db6670, 0xa38b99b4 , 624); 
TEST_RR_OP_FSR( 157 , fsr, 0x4851d554, 0x4851d554, 0x58bdc6d3, 0x80000000 , 628); 
TEST_RR_OP_FSR( 158 , fsr, 0x7af687ff, 0x23d74f2f, 0x5ed0ffe6, 0x8a7ce565 , 632); 
TEST_RR_OP_FSR( 159 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 636); 
TEST_RR_OP_FSR( 160 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 640); 
TEST_RR_OP_FSR( 161 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x50494a6f , 644); 
TEST_RR_OP_FSR( 162 , fsr, 0x8770b743, 0x43b85ba1, 0x81b56bad, 0xffffffff , 648); 
TEST_RR_OP_FSR( 163 , fsr, 0x601f8fbb, 0xb00fc7dd, 0xadeffb51, 0xffffffff , 652); 
TEST_RR_OP_FSR( 164 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xc06ba1bd , 656); 
TEST_RR_OP_FSR( 165 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 660); 
TEST_RR_OP_FSR( 166 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xe7a4cb22 , 664); 
TEST_RR_OP_FSR( 167 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x00000000 , 668); 
TEST_RR_OP_FSR( 168 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 672); 
TEST_RR_OP_FSR( 169 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xf0b95484 , 676); 
TEST_RR_OP_FSR( 170 , fsr, 0xf7e0d6fa, 0xfc1adf48, 0x3098f17e, 0x66926785 , 680); 
TEST_RR_OP_FSR( 171 , fsr, 0x58c53ab7, 0x58c53ab7, 0x324dfeaa, 0x80000000 , 684); 
TEST_RR_OP_FSR( 172 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 688); 
TEST_RR_OP_FSR( 173 , fsr, 0xdc8d9a96, 0xdc8d9a96, 0x7ab9ff85, 0x80000000 , 692); 
TEST_RR_OP_FSR( 174 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 696); 
TEST_RR_OP_FSR( 175 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xffffffff , 700); 
TEST_RR_OP_FSR( 176 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x00000000 , 704); 
TEST_RR_OP_FSR( 177 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x406e7a4e , 708); 
TEST_RR_OP_FSR( 178 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x499ba305 , 712); 
TEST_RR_OP_FSR( 179 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x407420c1 , 716); 
TEST_RR_OP_FSR( 180 , fsr, 0xc729e2cf, 0xc729e2cf, 0x280d3646, 0x00000000 , 720); 
TEST_RR_OP_FSR( 181 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 724); 
TEST_RR_OP_FSR( 182 , fsr, 0x00000000, 0x00000000, 0x80000000, 0xa991a9c6 , 728); 
TEST_RR_OP_FSR( 183 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x80000000 , 732); 
TEST_RR_OP_FSR( 184 , fsr, 0x00000000, 0x00000000, 0x00000000, 0x319513b3 , 736); 
TEST_RR_OP_FSR( 185 , fsr, 0xb12a9a2d, 0xb12a9a2d, 0x518efd6d, 0x00000000 , 740); 
TEST_RR_OP_FSR( 186 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 744); 
TEST_RR_OP_FSR( 187 , fsr, 0x451a6f40, 0x228d37a0, 0x2e929a77, 0xffffffff , 748); 
TEST_RR_OP_FSR( 188 , fsr, 0x00000000, 0x00000000, 0x00000000, 0xd7708a11 , 752); 
TEST_RR_OP_FSR( 189 , fsr, 0x00000001, 0x00000000, 0x80000000, 0xffffffff , 756); 
TEST_RR_OP_FSR( 190 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 760); 
TEST_RR_OP_FSR( 191 , fsr, 0x44439d11, 0x01aca221, 0xce88974d, 0x4fc02e6f , 764); 
TEST_RR_OP_FSR( 192 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x80000000 , 768); 
TEST_RR_OP_FSR( 193 , fsr, 0x15d6def4, 0x8aeb6f7a, 0x66398b96, 0xffffffff , 772); 
TEST_RR_OP_FSR( 194 , fsr, 0x8c4a4758, 0xac0c6e2a, 0xa0c62523, 0xb1780c57 , 776); 
TEST_RR_OP_FSR( 195 , fsr, 0x7dbcfcb9, 0x7dbcfcb9, 0x075e7705, 0x00000000 , 780); 
TEST_RR_OP_FSR( 196 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 784); 
TEST_RR_OP_FSR( 197 , fsr, 0x00000000, 0x00000000, 0x80000000, 0x00000000 , 788); 
TEST_RR_OP_FSR( 198 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff , 792); 
TEST_RR_OP_FSR( 199 , fsr, 0xffffffff, 0xffffffff, 0xffffffff, 0x80000000 , 796); 

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
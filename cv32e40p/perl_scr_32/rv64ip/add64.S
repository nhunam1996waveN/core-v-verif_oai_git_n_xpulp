# See LICENSE for license details.
#*****************************************************************************
# add64.S
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

TEST_RR_OP64_IO( 2 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 8); 
TEST_RR_OP64_IO( 3 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 16); 
TEST_RR_OP64_IO( 4 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 24); 
TEST_RR_OP64_IO( 5 , add64, 0x53d209aa1eac6a8f, 0x1eac6a8f, 0xd3d209aa, 0x00000000, 0x80000000, 32); 
TEST_RR_OP64_IO( 6 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 40); 
TEST_RR_OP64_IO( 7 , add64, 0x8f5b212ed40a27d1, 0xd40a27d1, 0x8f5b212e, 0x00000000, 0x00000000, 48); 
TEST_RR_OP64_IO( 8 , add64, 0x6a987f6032158ee3, 0x32158ee3, 0x6a987f60, 0x00000000, 0x00000000, 56); 
TEST_RR_OP64_IO( 9 , add64, 0xd74c2942693432b0, 0x60283769, 0xede64336, 0x090bfb47, 0xe965e60c, 64); 
TEST_RR_OP64_IO( 10 , add64, 0x8851c243608f01e5, 0x608f01e6, 0x8851c243, 0xffffffff, 0xffffffff, 72); 
TEST_RR_OP64_IO( 11 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 80); 
TEST_RR_OP64_IO( 12 , add64, 0x3a927c040735e340, 0xffffffff, 0xffffffff, 0x0735e341, 0x3a927c04, 88); 
TEST_RR_OP64_IO( 13 , add64, 0x12bc299c07d7dbca, 0xffffffff, 0xffffffff, 0x07d7dbcb, 0x12bc299c, 96); 
TEST_RR_OP64_IO( 14 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 104); 
TEST_RR_OP64_IO( 15 , add64, 0x75ee5a06501e3962, 0xffffffff, 0xffffffff, 0x501e3963, 0x75ee5a06, 112); 
TEST_RR_OP64_IO( 16 , add64, 0x016262f8ee76dbd7, 0x00000000, 0x00000000, 0xee76dbd7, 0x016262f8, 120); 
TEST_RR_OP64_IO( 17 , add64, 0xa36a899ccf3e3893, 0xaaa8f714, 0x8ef8dd99, 0x2495417f, 0x1471ac03, 128); 
TEST_RR_OP64_IO( 18 , add64, 0x68986347c5cb5bda, 0x00000000, 0x00000000, 0xc5cb5bda, 0x68986347, 136); 
TEST_RR_OP64_IO( 19 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 144); 
TEST_RR_OP64_IO( 20 , add64, 0xda4722a7beba0e92, 0x00000000, 0x80000000, 0xbeba0e92, 0x5a4722a7, 152); 
TEST_RR_OP64_IO( 21 , add64, 0x2627fdb4978b2fb7, 0x00000000, 0x00000000, 0x978b2fb7, 0x2627fdb4, 160); 
TEST_RR_OP64_IO( 22 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 168); 
TEST_RR_OP64_IO( 23 , add64, 0x788c0a1bf2b51181, 0xe95922f9, 0xefe06118, 0x095bee88, 0x88aba903, 176); 
TEST_RR_OP64_IO( 24 , add64, 0xea2b3347a97666db, 0x5147afeb, 0x5af0a079, 0x582eb6f0, 0x8f3a92ce, 184); 
TEST_RR_OP64_IO( 25 , add64, 0xb35835dd50c05344, 0x50c05345, 0xb35835dd, 0xffffffff, 0xffffffff, 192); 
TEST_RR_OP64_IO( 26 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 200); 
TEST_RR_OP64_IO( 27 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 208); 
TEST_RR_OP64_IO( 28 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 216); 
TEST_RR_OP64_IO( 29 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 224); 
TEST_RR_OP64_IO( 30 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 232); 
TEST_RR_OP64_IO( 31 , add64, 0x6a2ffc42e009c0b1, 0x00000000, 0x80000000, 0xe009c0b1, 0xea2ffc42, 240); 
TEST_RR_OP64_IO( 32 , add64, 0xa84aa97ef340da49, 0xf340da4a, 0xa84aa97e, 0xffffffff, 0xffffffff, 248); 
TEST_RR_OP64_IO( 33 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 256); 
TEST_RR_OP64_IO( 34 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 264); 
TEST_RR_OP64_IO( 35 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP64_IO( 36 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 280); 
TEST_RR_OP64_IO( 37 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 288); 
TEST_RR_OP64_IO( 38 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 296); 
TEST_RR_OP64_IO( 39 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 304); 
TEST_RR_OP64_IO( 40 , add64, 0xe5da3df355cbabee, 0x00000000, 0x00000000, 0x55cbabee, 0xe5da3df3, 312); 
TEST_RR_OP64_IO( 41 , add64, 0xa4cdc44425299047, 0x25299048, 0xa4cdc444, 0xffffffff, 0xffffffff, 320); 
TEST_RR_OP64_IO( 42 , add64, 0x4aed19cf46d8bfa6, 0x00000000, 0x80000000, 0x46d8bfa6, 0xcaed19cf, 328); 
TEST_RR_OP64_IO( 43 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 336); 
TEST_RR_OP64_IO( 44 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 344); 
TEST_RR_OP64_IO( 45 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 352); 
TEST_RR_OP64_IO( 46 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 360); 
TEST_RR_OP64_IO( 47 , add64, 0x30300a4ccff40065, 0xcff40065, 0x30300a4c, 0x00000000, 0x00000000, 368); 
TEST_RR_OP64_IO( 48 , add64, 0xb6fe58b6ce8f3d1b, 0xce8f3d1b, 0xb6fe58b6, 0x00000000, 0x00000000, 376); 
TEST_RR_OP64_IO( 49 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 384); 
TEST_RR_OP64_IO( 50 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 392); 
TEST_RR_OP64_IO( 51 , add64, 0x5947dd787d23f9e0, 0x7d23f9e1, 0x5947dd78, 0xffffffff, 0xffffffff, 400); 
TEST_RR_OP64_IO( 52 , add64, 0xa3a446688a862402, 0x00000000, 0x80000000, 0x8a862402, 0x23a44668, 408); 
TEST_RR_OP64_IO( 53 , add64, 0x9a58d4f85e0251f0, 0x5e0251f1, 0x9a58d4f8, 0xffffffff, 0xffffffff, 416); 
TEST_RR_OP64_IO( 54 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 424); 
TEST_RR_OP64_IO( 55 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 432); 
TEST_RR_OP64_IO( 56 , add64, 0xd7163c3e3363747f, 0xffffffff, 0xffffffff, 0x33637480, 0xd7163c3e, 440); 
TEST_RR_OP64_IO( 57 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 448); 
TEST_RR_OP64_IO( 58 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 456); 
TEST_RR_OP64_IO( 59 , add64, 0x985c20f07799df02, 0xffffffff, 0xffffffff, 0x7799df03, 0x985c20f0, 464); 
TEST_RR_OP64_IO( 60 , add64, 0xcdc562feb57bd1c1, 0xb57bd1c1, 0xcdc562fe, 0x00000000, 0x00000000, 472); 
TEST_RR_OP64_IO( 61 , add64, 0x4290262e720425b0, 0x00000000, 0x00000000, 0x720425b0, 0x4290262e, 480); 
TEST_RR_OP64_IO( 62 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 488); 
TEST_RR_OP64_IO( 63 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 496); 
TEST_RR_OP64_IO( 64 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 504); 
TEST_RR_OP64_IO( 65 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 512); 
TEST_RR_OP64_IO( 66 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 520); 
TEST_RR_OP64_IO( 67 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 528); 
TEST_RR_OP64_IO( 68 , add64, 0x26ae5fffa06beb0a, 0x00000000, 0x80000000, 0xa06beb0a, 0xa6ae5fff, 536); 
TEST_RR_OP64_IO( 69 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 544); 
TEST_RR_OP64_IO( 70 , add64, 0x467cc510016eef2a, 0x016eef2b, 0x467cc510, 0xffffffff, 0xffffffff, 552); 
TEST_RR_OP64_IO( 71 , add64, 0xde5c163da4129619, 0x00000000, 0x00000000, 0xa4129619, 0xde5c163d, 560); 
TEST_RR_OP64_IO( 72 , add64, 0xb267cd473db07dc4, 0x3db07dc5, 0xb267cd47, 0xffffffff, 0xffffffff, 568); 
TEST_RR_OP64_IO( 73 , add64, 0x30486df71febd097, 0x1febd097, 0xb0486df7, 0x00000000, 0x80000000, 576); 
TEST_RR_OP64_IO( 74 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 584); 
TEST_RR_OP64_IO( 75 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 592); 
TEST_RR_OP64_IO( 76 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 600); 
TEST_RR_OP64_IO( 77 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 608); 
TEST_RR_OP64_IO( 78 , add64, 0xd6418d34dac5d75f, 0x00000000, 0x80000000, 0xdac5d75f, 0x56418d34, 616); 
TEST_RR_OP64_IO( 79 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 624); 
TEST_RR_OP64_IO( 80 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 632); 
TEST_RR_OP64_IO( 81 , add64, 0xa036f9a1c736cf64, 0xffffffff, 0xffffffff, 0xc736cf65, 0xa036f9a1, 640); 
TEST_RR_OP64_IO( 82 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 648); 
TEST_RR_OP64_IO( 83 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 656); 
TEST_RR_OP64_IO( 84 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 664); 
TEST_RR_OP64_IO( 85 , add64, 0x12521cc991267adf, 0xffffffff, 0xffffffff, 0x91267ae0, 0x12521cc9, 672); 
TEST_RR_OP64_IO( 86 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 680); 
TEST_RR_OP64_IO( 87 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 688); 
TEST_RR_OP64_IO( 88 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 696); 
TEST_RR_OP64_IO( 89 , add64, 0x51fedfb4ed890e6c, 0xed890e6d, 0x51fedfb4, 0xffffffff, 0xffffffff, 704); 
TEST_RR_OP64_IO( 90 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 712); 
TEST_RR_OP64_IO( 91 , add64, 0x7d6170fb9cd83fc9, 0xffffffff, 0xffffffff, 0x9cd83fca, 0x7d6170fb, 720); 
TEST_RR_OP64_IO( 92 , add64, 0xf64e3387465334aa, 0x465334ab, 0xf64e3387, 0xffffffff, 0xffffffff, 728); 
TEST_RR_OP64_IO( 93 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 736); 
TEST_RR_OP64_IO( 94 , add64, 0xc2609f6c11fb3ee3, 0x4f34934c, 0x6da2807c, 0xc2c6ab97, 0x54be1eef, 744); 
TEST_RR_OP64_IO( 95 , add64, 0x8ce16ec8973a3eea, 0x973a3eeb, 0x8ce16ec8, 0xffffffff, 0xffffffff, 752); 
TEST_RR_OP64_IO( 96 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 760); 
TEST_RR_OP64_IO( 97 , add64, 0x20c507d157557b49, 0x57557b49, 0x20c507d1, 0x00000000, 0x00000000, 768); 
TEST_RR_OP64_IO( 98 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 776); 
TEST_RR_OP64_IO( 99 , add64, 0xda3504c9875f5dce, 0x875f5dcf, 0xda3504c9, 0xffffffff, 0xffffffff, 784); 
TEST_RR_OP64_IO( 100 , add64, 0xd9cadc7313a2add7, 0x13a2add7, 0xd9cadc73, 0x00000000, 0x00000000, 792); 
TEST_RR_OP64_IO( 101 , add64, 0xd1d203ceda0149ba, 0xffffffff, 0xffffffff, 0xda0149bb, 0xd1d203ce, 800); 
TEST_RR_OP64_IO( 102 , add64, 0x69d2916656858073, 0x56858074, 0x69d29166, 0xffffffff, 0xffffffff, 808); 
TEST_RR_OP64_IO( 103 , add64, 0x56636b4ecb787b53, 0x35a4c957, 0xb9be2b31, 0x95d3b1fc, 0x9ca5401d, 816); 
TEST_RR_OP64_IO( 104 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 824); 
TEST_RR_OP64_IO( 105 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 832); 
TEST_RR_OP64_IO( 106 , add64, 0xb4669a9482ec51ca, 0x82ec51ca, 0xb4669a94, 0x00000000, 0x00000000, 840); 
TEST_RR_OP64_IO( 107 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 848); 
TEST_RR_OP64_IO( 108 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 856); 
TEST_RR_OP64_IO( 109 , add64, 0xd85b360746b18f63, 0x3de96297, 0xb11dc89b, 0x08c82ccc, 0x273d6d6c, 864); 
TEST_RR_OP64_IO( 110 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 872); 
TEST_RR_OP64_IO( 111 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 880); 
TEST_RR_OP64_IO( 112 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 888); 
TEST_RR_OP64_IO( 113 , add64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 896); 
TEST_RR_OP64_IO( 114 , add64, 0x2b070bab1eda05bd, 0x00000000, 0x80000000, 0x1eda05bd, 0xab070bab, 904); 
TEST_RR_OP64_IO( 115 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 912); 
TEST_RR_OP64_IO( 116 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 920); 
TEST_RR_OP64_IO( 117 , add64, 0x93dc4ffeed895ae4, 0xed895ae4, 0x13dc4ffe, 0x00000000, 0x80000000, 928); 
TEST_RR_OP64_IO( 118 , add64, 0xce6778aa75204023, 0x75204023, 0x4e6778aa, 0x00000000, 0x80000000, 936); 
TEST_RR_OP64_IO( 119 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 944); 
TEST_RR_OP64_IO( 120 , add64, 0x8e373f796f5c6acf, 0x6f5c6acf, 0x8e373f79, 0x00000000, 0x00000000, 952); 
TEST_RR_OP64_IO( 121 , add64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 960); 
TEST_RR_OP64_IO( 122 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 968); 
TEST_RR_OP64_IO( 123 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 976); 
TEST_RR_OP64_IO( 124 , add64, 0xe672ec44f54ec281, 0xf54ec282, 0xe672ec44, 0xffffffff, 0xffffffff, 984); 
TEST_RR_OP64_IO( 125 , add64, 0xbfd930e0328047e8, 0xffffffff, 0xffffffff, 0x328047e9, 0xbfd930e0, 992); 
TEST_RR_OP64_IO( 126 , add64, 0x9c01c5eb703347a7, 0x00000000, 0x00000000, 0x703347a7, 0x9c01c5eb, 1000); 
TEST_RR_OP64_IO( 127 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1008); 
TEST_RR_OP64_IO( 128 , add64, 0xef4492d687780467, 0x00000000, 0x00000000, 0x87780467, 0xef4492d6, 1016); 
TEST_RR_OP64_IO( 129 , add64, 0xf3499df416f40a5b, 0x00000000, 0x00000000, 0x16f40a5b, 0xf3499df4, 1024); 
TEST_RR_OP64_IO( 130 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1032); 
TEST_RR_OP64_IO( 131 , add64, 0x8c70f671e5a35056, 0xe5a35056, 0x8c70f671, 0x00000000, 0x00000000, 1040); 
TEST_RR_OP64_IO( 132 , add64, 0xcb656bb309a8ab3a, 0xffffffff, 0xffffffff, 0x09a8ab3b, 0xcb656bb3, 1048); 
TEST_RR_OP64_IO( 133 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1056); 
TEST_RR_OP64_IO( 134 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1064); 
TEST_RR_OP64_IO( 135 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1072); 
TEST_RR_OP64_IO( 136 , add64, 0x7494c31a96684751, 0x96684752, 0x7494c31a, 0xffffffff, 0xffffffff, 1080); 
TEST_RR_OP64_IO( 137 , add64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1088); 
TEST_RR_OP64_IO( 138 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1096); 
TEST_RR_OP64_IO( 139 , add64, 0xf32cc319b760e18f, 0xffffffff, 0xffffffff, 0xb760e190, 0xf32cc319, 1104); 
TEST_RR_OP64_IO( 140 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1112); 
TEST_RR_OP64_IO( 141 , add64, 0x8000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 1120); 
TEST_RR_OP64_IO( 142 , add64, 0x8aad372618f4d4f0, 0x00000000, 0x80000000, 0x18f4d4f0, 0x0aad3726, 1128); 
TEST_RR_OP64_IO( 143 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1136); 
TEST_RR_OP64_IO( 144 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1144); 
TEST_RR_OP64_IO( 145 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1152); 
TEST_RR_OP64_IO( 146 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1160); 
TEST_RR_OP64_IO( 147 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1168); 
TEST_RR_OP64_IO( 148 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1176); 
TEST_RR_OP64_IO( 149 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1184); 
TEST_RR_OP64_IO( 150 , add64, 0x18be05ad19b26eab, 0x19b26eab, 0x18be05ad, 0x00000000, 0x00000000, 1192); 
TEST_RR_OP64_IO( 151 , add64, 0x00e57fd0d3b42472, 0xc9e48bfd, 0xbb91b9d9, 0x09cf9875, 0x4553c5f7, 1200); 
TEST_RR_OP64_IO( 152 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1208); 
TEST_RR_OP64_IO( 153 , add64, 0x5cb9efc7a95ab15b, 0x00000000, 0x00000000, 0xa95ab15b, 0x5cb9efc7, 1216); 
TEST_RR_OP64_IO( 154 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1224); 
TEST_RR_OP64_IO( 155 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1232); 
TEST_RR_OP64_IO( 156 , add64, 0xfde8449ea3080292, 0xa3080292, 0x7de8449e, 0x00000000, 0x80000000, 1240); 
TEST_RR_OP64_IO( 157 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1248); 
TEST_RR_OP64_IO( 158 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1256); 
TEST_RR_OP64_IO( 159 , add64, 0x3e65718c06a024cc, 0x06a024cc, 0x3e65718c, 0x00000000, 0x00000000, 1264); 
TEST_RR_OP64_IO( 160 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1272); 
TEST_RR_OP64_IO( 161 , add64, 0xc441562c2c380556, 0x04ba2ee5, 0x8e15ac82, 0x277dd671, 0x362ba9aa, 1280); 
TEST_RR_OP64_IO( 162 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1288); 
TEST_RR_OP64_IO( 163 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1296); 
TEST_RR_OP64_IO( 164 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1304); 
TEST_RR_OP64_IO( 165 , add64, 0xffffffffffffffff, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 1312); 
TEST_RR_OP64_IO( 166 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1320); 
TEST_RR_OP64_IO( 167 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1328); 
TEST_RR_OP64_IO( 168 , add64, 0x785394bf0871d48d, 0x0871d48d, 0xf85394bf, 0x00000000, 0x80000000, 1336); 
TEST_RR_OP64_IO( 169 , add64, 0x12b5df41c83cecb0, 0x69a287be, 0x861954b9, 0x5e9a64f2, 0x8c9c8a88, 1344); 
TEST_RR_OP64_IO( 170 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1352); 
TEST_RR_OP64_IO( 171 , add64, 0xfc94062d28139d92, 0x00000000, 0x80000000, 0x28139d92, 0x7c94062d, 1360); 
TEST_RR_OP64_IO( 172 , add64, 0xe15703adb41ff70e, 0xb41ff70e, 0xe15703ad, 0x00000000, 0x00000000, 1368); 
TEST_RR_OP64_IO( 173 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1376); 
TEST_RR_OP64_IO( 174 , add64, 0x13fad857f2e63195, 0xf2e63196, 0x13fad857, 0xffffffff, 0xffffffff, 1384); 
TEST_RR_OP64_IO( 175 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1392); 
TEST_RR_OP64_IO( 176 , add64, 0xccc9338b6a6d5c71, 0x6a6d5c71, 0x4cc9338b, 0x00000000, 0x80000000, 1400); 
TEST_RR_OP64_IO( 177 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1408); 
TEST_RR_OP64_IO( 178 , add64, 0x9d14eca6a82dd9ae, 0x5ca49da0, 0xbcba3fb5, 0x4b893c0e, 0xe05aacf1, 1416); 
TEST_RR_OP64_IO( 179 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1424); 
TEST_RR_OP64_IO( 180 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1432); 
TEST_RR_OP64_IO( 181 , add64, 0xd34363a21c0bcabd, 0xffffffff, 0xffffffff, 0x1c0bcabe, 0xd34363a2, 1440); 
TEST_RR_OP64_IO( 182 , add64, 0xffffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 1448); 
TEST_RR_OP64_IO( 183 , add64, 0x0000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1456); 
TEST_RR_OP64_IO( 184 , add64, 0x224d9d7fd7b22275, 0xd7b22276, 0x224d9d7f, 0xffffffff, 0xffffffff, 1464); 
TEST_RR_OP64_IO( 185 , add64, 0x0000000000000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 1472); 
TEST_RR_OP64_IO( 186 , add64, 0x4897fa4965ba1c32, 0x65ba1c33, 0x4897fa49, 0xffffffff, 0xffffffff, 1480); 
TEST_RR_OP64_IO( 187 , add64, 0x7d3927901b6db5b5, 0x1b6db5b5, 0x7d392790, 0x00000000, 0x00000000, 1488); 
TEST_RR_OP64_IO( 188 , add64, 0x7fffffffffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x80000000, 1496); 
TEST_RR_OP64_IO( 189 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1504); 
TEST_RR_OP64_IO( 190 , add64, 0x8000000000000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 1512); 
TEST_RR_OP64_IO( 191 , add64, 0x28708f96f1f970dd, 0xf1f970dd, 0xa8708f96, 0x00000000, 0x80000000, 1520); 
TEST_RR_OP64_IO( 192 , add64, 0x2245f79cf5cfde0c, 0xf5cfde0c, 0x2245f79c, 0x00000000, 0x00000000, 1528); 
TEST_RR_OP64_IO( 193 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1536); 
TEST_RR_OP64_IO( 194 , add64, 0xcb4e0773b7be4129, 0xb7be4129, 0xcb4e0773, 0x00000000, 0x00000000, 1544); 
TEST_RR_OP64_IO( 195 , add64, 0x97cdcb344c63c092, 0x4c63c092, 0x17cdcb34, 0x00000000, 0x80000000, 1552); 
TEST_RR_OP64_IO( 196 , add64, 0xe38a019ce423d0c9, 0xe423d0c9, 0xe38a019c, 0x00000000, 0x00000000, 1560); 
TEST_RR_OP64_IO( 197 , add64, 0x7fffffffffffffff, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 1568); 
TEST_RR_OP64_IO( 198 , add64, 0xfffffffffffffffe, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 1576); 
TEST_RR_OP64_IO( 199 , add64, 0xffcfe5bf0bd9d33b, 0x0bd9d33c, 0xffcfe5bf, 0xffffffff, 0xffffffff, 1584); 

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 398, 4, -1
RV_COMPLIANCE_DATA_END
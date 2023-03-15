# See LICENSE for license details.
#*****************************************************************************
# khmx16.S
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

TEST_RR_OP( 2 , khmx16, 0x31e7e78d, 0x44f8de4a, 0x5cd25c9f, 8); 
TEST_RR_OP( 3 , khmx16, 0x002dd4ba, 0xfe686ef6, 0xce15f197, 12); 
TEST_RR_OP( 4 , khmx16, 0x44f51b05, 0x66bad533, 0xaf3055ed, 16); 
TEST_RR_OP( 5 , khmx16, 0xb23d0c03, 0x8ad0126a, 0x538154ef, 20); 
TEST_RR_OP( 6 , khmx16, 0x02a99f4e, 0xfaec9ec5, 0x7f4bbce9, 24); 
TEST_RR_OP( 7 , khmx16, 0xb94cd74b, 0x64575e81, 0xc8dea5cf, 28); 
TEST_RR_OP( 8 , khmx16, 0xa867d4c2, 0x6757365b, 0x9a2c9380, 32); 
TEST_RR_OP( 9 , khmx16, 0x1244cda1, 0x43557569, 0xc91622bb, 36); 
TEST_RR_OP( 10 , khmx16, 0xf0a108ba, 0xf07e386a, 0x13ce7eda, 40); 
TEST_RR_OP( 11 , khmx16, 0xdf6ecd1a, 0x731aa64a, 0x489edbc8, 44); 
TEST_RR_OP( 12 , khmx16, 0xf5b901a0, 0xcb92fd44, 0xb3e21916, 48); 
TEST_RR_OP( 13 , khmx16, 0x0afde350, 0xf4e0b29d, 0x2f72818a, 52); 
TEST_RR_OP( 14 , khmx16, 0x0122fb0a, 0x2c66c954, 0x0b9d0345, 56); 
TEST_RR_OP( 15 , khmx16, 0x01e80508, 0xef8f2ea8, 0x0dd0f123, 60); 
TEST_RR_OP( 16 , khmx16, 0x098eefc5, 0x104499a0, 0x144a4b35, 64); 
TEST_RR_OP( 17 , khmx16, 0x0d82f2b6, 0x3e9ca5db, 0x12de1b9e, 68); 
TEST_RR_OP( 18 , khmx16, 0x0d70e55d, 0xdf01bd71, 0x3339cbde, 72); 
TEST_RR_OP( 19 , khmx16, 0x227f0cc5, 0xd655c233, 0xe58d9605, 76); 
TEST_RR_OP( 20 , khmx16, 0x2dc9e3b1, 0xabcb3062, 0xb51cba66, 80); 
TEST_RR_OP( 21 , khmx16, 0xcde0f52f, 0x703fe3f3, 0x3159c6d8, 84); 
TEST_RR_OP( 22 , khmx16, 0x147ac121, 0xe7768250, 0x4007952e, 88); 
TEST_RR_OP( 23 , khmx16, 0xbe94bb57, 0x867a5d4d, 0xa1ce44e8, 92); 
TEST_RR_OP( 24 , khmx16, 0xea8009a7, 0xb65b0ccb, 0x6096255d, 96); 
TEST_RR_OP( 25 , khmx16, 0xf145132e, 0x113fe3d4, 0xa8d792ad, 100); 
TEST_RR_OP( 26 , khmx16, 0xed2b1a07, 0xd3f94025, 0x33f036bf, 104); 
TEST_RR_OP( 27 , khmx16, 0x07fb1d72, 0xbdf7bfb8, 0xc55cf087, 108); 
TEST_RR_OP( 28 , khmx16, 0xffd4f98e, 0xfef9f42b, 0x45b01505, 112); 
TEST_RR_OP( 29 , khmx16, 0x9388f9aa, 0x736dcf47, 0x10a587b8, 116); 
TEST_RR_OP( 30 , khmx16, 0xd852fea9, 0x503ce318, 0x05ebc0b4, 120); 
TEST_RR_OP( 31 , khmx16, 0x0d3949b2, 0xeb279b23, 0xa27aaecf, 124); 
TEST_RR_OP( 32 , khmx16, 0xe1091beb, 0xa019c776, 0xc0cb2953, 128); 
TEST_RR_OP( 33 , khmx16, 0xf3f4dfc4, 0xf3f2761f, 0xdd127fe2, 132); 
TEST_RR_OP( 34 , khmx16, 0xd0ad0017, 0x34f7ffd2, 0xbe8a8da3, 136); 
TEST_RR_OP( 35 , khmx16, 0xa9f80102, 0x960ff9ca, 0xeb3767f1, 140); 
TEST_RR_OP( 36 , khmx16, 0x58540930, 0x66da1d93, 0x27c66dee, 144); 
TEST_RR_OP( 37 , khmx16, 0x19e8ebb6, 0xcdaf1efe, 0xac37be17, 148); 
TEST_RR_OP( 38 , khmx16, 0xd5f357fc, 0xab9f5e52, 0x77683fc9, 152); 
TEST_RR_OP( 39 , khmx16, 0x0a2b0795, 0xe492b814, 0xf280d089, 156); 
TEST_RR_OP( 40 , khmx16, 0xc5ae2ab1, 0x9ff0c176, 0xa89e4db5, 160); 
TEST_RR_OP( 41 , khmx16, 0xde992284, 0xa0063089, 0x5b082c8c, 164); 
TEST_RR_OP( 42 , khmx16, 0xf9cff7d3, 0x193b3608, 0xeca4e09b, 168); 
TEST_RR_OP( 43 , khmx16, 0x345609f7, 0x7c8e2c2e, 0x1ce135c9, 172); 
TEST_RR_OP( 44 , khmx16, 0xff19c5ac, 0x1d283ef4, 0x8968fc0a, 176); 
TEST_RR_OP( 45 , khmx16, 0x0aa2ffc8, 0x0d01ee34, 0x018d68ac, 180); 
TEST_RR_OP( 46 , khmx16, 0x3080a5f2, 0xc35f662c, 0x8f2f999b, 184); 
TEST_RR_OP( 47 , khmx16, 0xefd82b56, 0x46d456b4, 0x3ffbe2ce, 188); 
TEST_RR_OP( 48 , khmx16, 0x9a86f051, 0x8699e966, 0x58d06afd, 192); 
TEST_RR_OP( 49 , khmx16, 0x007de6d0, 0x11e3c383, 0x354b037f, 196); 
TEST_RR_OP( 50 , khmx16, 0xccf61db1, 0x624b3564, 0x4731bd8a, 200); 
TEST_RR_OP( 51 , khmx16, 0xf38cf8ef, 0xd605375c, 0xefaa25f6, 204); 
TEST_RR_OP( 52 , khmx16, 0x15affe22, 0x4a70070a, 0xde0d254a, 208); 
TEST_RR_OP( 53 , khmx16, 0x023df107, 0xfd15d8d9, 0x30f19dbb, 212); 
TEST_RR_OP( 54 , khmx16, 0x03bc4262, 0x132e63a4, 0x554718f1, 216); 
TEST_RR_OP( 55 , khmx16, 0x37c1fdef, 0x745b20a0, 0xf7e63d56, 220); 
TEST_RR_OP( 56 , khmx16, 0x2f95fc20, 0xbe6a0c29, 0xd73aa322, 224); 
TEST_RR_OP( 57 , khmx16, 0xef900995, 0x247decc9, 0xc02bc659, 228); 
TEST_RR_OP( 58 , khmx16, 0xd1f0fe93, 0x5d8a9958, 0x01c7c0f8, 232); 
TEST_RR_OP( 59 , khmx16, 0xef32db3f, 0x1b4f256f, 0x8254b140, 236); 
TEST_RR_OP( 60 , khmx16, 0xf7b3fa50, 0x45e91100, 0xd531f0ce, 240); 
TEST_RR_OP( 61 , khmx16, 0x1ef7f679, 0xbf3dace1, 0x0eabc2cc, 244); 
TEST_RR_OP( 62 , khmx16, 0xec2b08d2, 0x3ec47ece, 0x08e8d790, 248); 
TEST_RR_OP( 63 , khmx16, 0x08c402dd, 0xd823fbe6, 0xa68ae3d9, 252); 
TEST_RR_OP( 64 , khmx16, 0x39c008b8, 0x8fb1ed71, 0xc3d7be2e, 256); 
TEST_RR_OP( 65 , khmx16, 0x5444fb03, 0x85c8090b, 0xb96ca7bf, 260); 
TEST_RR_OP( 66 , khmx16, 0xfc83ff4b, 0x6ecc06ec, 0xf2edfbf9, 264); 
TEST_RR_OP( 67 , khmx16, 0xe582f381, 0x6052f003, 0x6409dccc, 268); 
TEST_RR_OP( 68 , khmx16, 0x165e0cd8, 0x3e48a573, 0xedd82dfa, 272); 
TEST_RR_OP( 69 , khmx16, 0xfc38e259, 0xfb6a3c62, 0xc126696f, 276); 
TEST_RR_OP( 70 , khmx16, 0x3bd11fe1, 0x50f6b81c, 0xc73c5e92, 280); 
TEST_RR_OP( 71 , khmx16, 0x1fc0de4c, 0xd8e7c169, 0x44ec980b, 284); 
TEST_RR_OP( 72 , khmx16, 0x03a5f02f, 0x8e001147, 0x8adafbe8, 288); 
TEST_RR_OP( 73 , khmx16, 0x33a8c630, 0x842d8693, 0x3cf1ca9a, 292); 
TEST_RR_OP( 74 , khmx16, 0xd507009f, 0x43edfe8a, 0xc969af06, 296); 
TEST_RR_OP( 75 , khmx16, 0x0e8cd9f6, 0x13ae871d, 0x28465e9f, 300); 
TEST_RR_OP( 76 , khmx16, 0x1367fa06, 0xcb99ec76, 0x2722d09b, 304); 
TEST_RR_OP( 77 , khmx16, 0xc9ad0753, 0xaa20d0bf, 0xec2750f8, 308); 
TEST_RR_OP( 78 , khmx16, 0x309cef42, 0x43cdd29e, 0x2f365bc6, 312); 
TEST_RR_OP( 79 , khmx16, 0x070d012b, 0xc55af44a, 0xf33bf09b, 316); 
TEST_RR_OP( 80 , khmx16, 0x17e9bd9d, 0xae90b68e, 0x73b2da6a, 320); 
TEST_RR_OP( 81 , khmx16, 0xdadcfc6f, 0x3505b8e5, 0x066ba657, 324); 
TEST_RR_OP( 82 , khmx16, 0xfad1ff4a, 0x11653ebd, 0xfe8dd9dd, 328); 
TEST_RR_OP( 83 , khmx16, 0x8f24e004, 0x77779912, 0x27c68714, 332); 
TEST_RR_OP( 84 , khmx16, 0xffa80a1b, 0xea11109f, 0x4dd701ff, 336); 
TEST_RR_OP( 85 , khmx16, 0xff1c0bbc, 0xf767becb, 0xe8f60d3b, 340); 
TEST_RR_OP( 86 , khmx16, 0xf34a6e9b, 0x51988f4e, 0x825fec10, 344); 
TEST_RR_OP( 87 , khmx16, 0xfb280442, 0x395dfa4e, 0xa03df533, 348); 
TEST_RR_OP( 88 , khmx16, 0xb311f31d, 0x878c828a, 0x0d2551c0, 352); 
TEST_RR_OP( 89 , khmx16, 0xd49b728e, 0x740a8d6c, 0x8006d022, 356); 
TEST_RR_OP( 90 , khmx16, 0x1638026a, 0x57e337fe, 0x0587205d, 360); 
TEST_RR_OP( 91 , khmx16, 0x48230dc7, 0x52e99b6e, 0xee776f5f, 364); 
TEST_RR_OP( 92 , khmx16, 0xe48bdbd0, 0xddead304, 0x66f76718, 368); 
TEST_RR_OP( 93 , khmx16, 0x17485b06, 0xbeca9bf0, 0x8b8fd24d, 372); 
TEST_RR_OP( 94 , khmx16, 0x049e21e4, 0x8f08b954, 0xc29dfac4, 376); 
TEST_RR_OP( 95 , khmx16, 0xc15d13cf, 0x7c355540, 0x1dbebf74, 380); 
TEST_RR_OP( 96 , khmx16, 0x01ff5656, 0x386c5d67, 0x76510489, 384); 
TEST_RR_OP( 97 , khmx16, 0xd76ae9b2, 0x3bd1a11c, 0x1e16a928, 388); 
TEST_RR_OP( 98 , khmx16, 0x4a7b0799, 0xb2dd1177, 0x37b08468, 392); 
TEST_RR_OP( 99 , khmx16, 0xf23722d9, 0x5d1f94d7, 0xd660ed0e, 396); 
TEST_RR_OP( 100 , khmx16, 0xe472f6c0, 0x80301047, 0xb7451b98, 400); 
TEST_RR_OP( 101 , khmx16, 0xf941096e, 0x20449455, 0xf4cae540, 404); 
TEST_RR_OP( 102 , khmx16, 0x2106b4f1, 0x4e3f834c, 0x4d0a3606, 408); 
TEST_RR_OP( 103 , khmx16, 0xbed518cb, 0x57c15d5b, 0x21ffa0f2, 412); 
TEST_RR_OP( 104 , khmx16, 0xe687fffd, 0x7b4cffc1, 0x04c1e58f, 416); 
TEST_RR_OP( 105 , khmx16, 0xdbc1cc40, 0xd73d3719, 0x87c871cf, 420); 
TEST_RR_OP( 106 , khmx16, 0x2beb011a, 0x3029bec7, 0xfdd574bc, 424); 
TEST_RR_OP( 107 , khmx16, 0x0d0d18d8, 0xe0c727f6, 0x4f94ca7d, 428); 
TEST_RR_OP( 108 , khmx16, 0xe4b60dd9, 0x74a0b69c, 0xe7d8e20d, 432); 
TEST_RR_OP( 109 , khmx16, 0xe023f4f3, 0xae3d6205, 0xf19331e1, 436); 
TEST_RR_OP( 110 , khmx16, 0xf5fcbdd6, 0xcaeeb58b, 0x71be1828, 440); 
TEST_RR_OP( 111 , khmx16, 0xf1bf01e9, 0xe8adfcaf, 0xb6224e35, 444); 
TEST_RR_OP( 112 , khmx16, 0xde1722d3, 0x5f3fb123, 0xc77ad26e, 448); 
TEST_RR_OP( 113 , khmx16, 0x37a7f4d6, 0x6bf4905f, 0x0ccc41fd, 452); 
TEST_RR_OP( 114 , khmx16, 0x311d3333, 0xb096a6ca, 0xb68ab0d6, 456); 
TEST_RR_OP( 115 , khmx16, 0xf46b3f6a, 0x18db5f5b, 0x5520c460, 460); 
TEST_RR_OP( 116 , khmx16, 0xfc1624a2, 0xc87caccb, 0xc7a50904, 464); 
TEST_RR_OP( 117 , khmx16, 0x484a5162, 0xb47a6516, 0x670e857a, 468); 
TEST_RR_OP( 118 , khmx16, 0x5c10d5a7, 0x9f632d66, 0x889c8607, 472); 
TEST_RR_OP( 119 , khmx16, 0x158611a9, 0xe7adeb86, 0x91998eb9, 476); 
TEST_RR_OP( 120 , khmx16, 0xe058c5b5, 0x2ba5b794, 0x6707a32a, 480); 
TEST_RR_OP( 121 , khmx16, 0x4b02f930, 0x5dda2462, 0xe809664d, 484); 
TEST_RR_OP( 122 , khmx16, 0x2de0e47b, 0xd1795b60, 0xd97481ca, 488); 
TEST_RR_OP( 123 , khmx16, 0x17543d78, 0xc656ba64, 0x8ef8cc36, 492); 
TEST_RR_OP( 124 , khmx16, 0x8a8e0de0, 0x7a592a38, 0x2a138522, 496); 
TEST_RR_OP( 125 , khmx16, 0xfcb636f1, 0x18185cc9, 0x4bccee87, 500); 
TEST_RR_OP( 126 , khmx16, 0x7afd011c, 0x82a62d7b, 0x03208269, 504); 
TEST_RR_OP( 127 , khmx16, 0x023d042f, 0xebafedc9, 0xe293f1e4, 508); 
TEST_RR_OP( 128 , khmx16, 0xf8e001d1, 0xec85f819, 0xe28c2ecf, 512); 
TEST_RR_OP( 129 , khmx16, 0xf792e9a3, 0x0b843abd, 0xcf45a251, 516); 
TEST_RR_OP( 130 , khmx16, 0x0e430967, 0xdf4fe233, 0xd79cc827, 520); 
TEST_RR_OP( 131 , khmx16, 0x0fae039e, 0x7ee6fb21, 0xa0e20fd1, 524); 
TEST_RR_OP( 132 , khmx16, 0xcab6fff1, 0x6b01ffed, 0x6283c042, 528); 
TEST_RR_OP( 133 , khmx16, 0xd8b2d5e1, 0x508041b7, 0xadf5c181, 532); 
TEST_RR_OP( 134 , khmx16, 0xd32f000a, 0xcf89feee, 0xfb30765b, 536); 
TEST_RR_OP( 135 , khmx16, 0x029ffd0b, 0x2513916c, 0x036c090f, 540); 
TEST_RR_OP( 136 , khmx16, 0xeda6cf5a, 0x27dd483d, 0xa9cdc514, 544); 
TEST_RR_OP( 137 , khmx16, 0xe0b43f80, 0x63aa65d1, 0x4fd5d7cf, 548); 
TEST_RR_OP( 138 , khmx16, 0x3c360669, 0x51480e78, 0x38b75ed2, 552); 
TEST_RR_OP( 139 , khmx16, 0x1cb70ffa, 0x34ab353f, 0x266945cb, 556); 
TEST_RR_OP( 140 , khmx16, 0xd586e957, 0x37415299, 0xdce39d9a, 560); 
TEST_RR_OP( 141 , khmx16, 0x032fdd4a, 0xf95ec0f3, 0x4676c28e, 564); 
TEST_RR_OP( 142 , khmx16, 0xb4e5cd48, 0x54c163ba, 0xbee78e93, 568); 
TEST_RR_OP( 143 , khmx16, 0xf37e0e11, 0x11e1edcb, 0x9d19a67a, 572); 
TEST_RR_OP( 144 , khmx16, 0xd1910cf7, 0x3bfff098, 0x94429cf0, 576); 
TEST_RR_OP( 145 , khmx16, 0x25c358be, 0xd3a75e6d, 0x784d9302, 580); 
TEST_RR_OP( 146 , khmx16, 0x327262e1, 0x4de56bbd, 0x757a52e6, 584); 
TEST_RR_OP( 147 , khmx16, 0xc3ac1bc0, 0x76e39de7, 0xdbcabf0d, 588); 
TEST_RR_OP( 148 , khmx16, 0x30b92d3f, 0x7ac1459a, 0x533632cf, 592); 
TEST_RR_OP( 149 , khmx16, 0xf481f828, 0x7d92d830, 0x1935f449, 596); 
TEST_RR_OP( 150 , khmx16, 0x0b90e4e0, 0xee0059ef, 0xd965adc5, 600); 
TEST_RR_OP( 151 , khmx16, 0x3ee11000, 0xaaffe418, 0xb698a150, 604); 
TEST_RR_OP( 152 , khmx16, 0x0e14f2d9, 0xe6e1e051, 0x3520b840, 608); 
TEST_RR_OP( 153 , khmx16, 0xff83d8b2, 0x0ee4c074, 0x4f2afbd5, 612); 
TEST_RR_OP( 154 , khmx16, 0xc12806b5, 0xb88839a9, 0x0ee4708c, 616); 
TEST_RR_OP( 155 , khmx16, 0x0a9ba615, 0xeba79caa, 0x73ddbd44, 620); 
TEST_RR_OP( 156 , khmx16, 0x026305c8, 0xfbdc1704, 0x2029b61c, 624); 
TEST_RR_OP( 157 , khmx16, 0xad00f222, 0x5b2f12ec, 0xa2358b7d, 628); 
TEST_RR_OP( 158 , khmx16, 0x5c79f09f, 0x6601affe, 0x189a740b, 632); 
TEST_RR_OP( 159 , khmx16, 0x5976254b, 0x8a6460bb, 0x315a9ea2, 636); 
TEST_RR_OP( 160 , khmx16, 0xc16d01b6, 0x767411a7, 0x0c6dbc63, 640); 
TEST_RR_OP( 161 , khmx16, 0xe0fbde9e, 0x2f562882, 0x9685ac21, 644); 
TEST_RR_OP( 162 , khmx16, 0xccb5fa6e, 0x480ff8c5, 0x628ca4e3, 648); 
TEST_RR_OP( 163 , khmx16, 0x6f4a4dc6, 0x829d9d63, 0x9b0c8e64, 652); 
TEST_RR_OP( 164 , khmx16, 0x10d11040, 0x40712ca3, 0x2e9c2168, 656); 
TEST_RR_OP( 165 , khmx16, 0x77bbfd1b, 0x806ae88e, 0x0fcb87e1, 660); 
TEST_RR_OP( 166 , khmx16, 0xf655fd3a, 0x21a7e9f6, 0x101adb3c, 664); 
TEST_RR_OP( 167 , khmx16, 0xa84a0bc8, 0x8a531dbe, 0x32b85f67, 668); 
TEST_RR_OP( 168 , khmx16, 0x10f3f022, 0x21ff9f77, 0x15093fd2, 672); 
TEST_RR_OP( 169 , khmx16, 0x0d5924a5, 0xaef03296, 0x5cbbeaeb, 676); 
TEST_RR_OP( 170 , khmx16, 0xe972fb9e, 0x2666083d, 0xbbf1b4d3, 680); 
TEST_RR_OP( 171 , khmx16, 0x049ce7a3, 0xe0b0231f, 0xa736ed26, 684); 
TEST_RR_OP( 172 , khmx16, 0x00f4faad, 0x0bbf9207, 0x06320a6c, 688); 
TEST_RR_OP( 173 , khmx16, 0x3a4dfac3, 0x418ebb93, 0x09cc71d8, 692); 
TEST_RR_OP( 174 , khmx16, 0xfc490692, 0x140ef7d7, 0x98e4e84e, 696); 
TEST_RR_OP( 175 , khmx16, 0x0e3cfb7d, 0x5d8c662b, 0xfa5a137b, 700); 
TEST_RR_OP( 176 , khmx16, 0x013d0462, 0x0c6e0bc1, 0x2fbb0cca, 704); 
TEST_RR_OP( 177 , khmx16, 0x1c0b0b53, 0xba19d9b5, 0xda23cca5, 708); 
TEST_RR_OP( 178 , khmx16, 0x2c3df43b, 0x9921d4b0, 0x22c6c8f4, 712); 
TEST_RR_OP( 179 , khmx16, 0xdaeaa4e2, 0x84c79c06, 0x74a72686, 716); 
TEST_RR_OP( 180 , khmx16, 0x19d75e7e, 0x45386780, 0x74dd2fc9, 720); 
TEST_RR_OP( 181 , khmx16, 0xc9b90607, 0x67fef9b0, 0x85b9bd32, 724); 
TEST_RR_OP( 182 , khmx16, 0xf22ce858, 0x7ba53ccc, 0xce32f1b0, 728); 
TEST_RR_OP( 183 , khmx16, 0xdb03c023, 0xa08a5a7b, 0xa5a83198, 732); 
TEST_RR_OP( 184 , khmx16, 0xdddaf711, 0x6fad372e, 0xeb47d8dd, 736); 
TEST_RR_OP( 185 , khmx16, 0xcd06f08a, 0x5b23b88c, 0x1bb2b868, 740); 
TEST_RR_OP( 186 , khmx16, 0x1f45131b, 0x330d17eb, 0x66424e68, 744); 
TEST_RR_OP( 187 , khmx16, 0xdbc9f13a, 0x25757637, 0xf002843f, 748); 
TEST_RR_OP( 188 , khmx16, 0xe644d6be, 0xc858c232, 0x55713b2e, 752); 
TEST_RR_OP( 189 , khmx16, 0xe80ff513, 0xda1ddcf8, 0x27ea50e1, 756); 
TEST_RR_OP( 190 , khmx16, 0x00fc05e4, 0xe8416777, 0x074afaae, 760); 
TEST_RR_OP( 191 , khmx16, 0xed552890, 0xe3ac35f6, 0x60385459, 764); 
TEST_RR_OP( 192 , khmx16, 0xf348d9aa, 0x70fb8999, 0x2971f198, 768); 
TEST_RR_OP( 193 , khmx16, 0x00700383, 0xfec6ab1f, 0xfab3d233, 772); 
TEST_RR_OP( 194 , khmx16, 0xf65f11e7, 0x0ecca9b7, 0xe570acba, 776); 
TEST_RR_OP( 195 , khmx16, 0xc95d0413, 0xc7bbf5bd, 0xcd2c7c49, 780); 
TEST_RR_OP( 196 , khmx16, 0xd48ef377, 0x9d767d0e, 0xf32c386e, 784); 
TEST_RR_OP( 197 , khmx16, 0xc907d051, 0x5c4a4e04, 0xb1c5b3c2, 788); 
TEST_RR_OP( 198 , khmx16, 0xf8a7c25a, 0x0a329b39, 0x4e4ca3c8, 792); 
TEST_RR_OP( 199 , khmx16, 0xdbc6eb1b, 0x2e771519, 0x813f9c36, 796); 

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
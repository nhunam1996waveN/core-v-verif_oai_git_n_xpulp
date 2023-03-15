# See LICENSE for license details.
#*****************************************************************************
# khmx8.S
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

TEST_RR_OP( 2 , khmx8, 0x2a2003f6, 0x2b9263e1, 0xda7e2805, 8); 
TEST_RR_OP( 3 , khmx8, 0x24d5dceb, 0x932d54d9, 0x88d543ca, 12); 
TEST_RR_OP( 4 , khmx8, 0x201719bb, 0x26d84481, 0xb66f4530, 16); 
TEST_RR_OP( 5 , khmx8, 0x132344f4, 0xe27b89d2, 0x25ab21b6, 20); 
TEST_RR_OP( 6 , khmx8, 0x64ad09ff, 0x8a6e9f09, 0xa093fef4, 24); 
TEST_RR_OP( 7 , khmx8, 0x3a512762, 0xb66c2f88, 0x619b976b, 28); 
TEST_RR_OP( 8 , khmx8, 0x0102f30c, 0xf50bd3d2, 0x1aebdd24, 32); 
TEST_RR_OP( 9 , khmx8, 0x07f5e302, 0xf00b4676, 0x87c203cb, 36); 
TEST_RR_OP( 10 , khmx8, 0xc8e50745, 0xa587e1bb, 0x1c4e80e1, 40); 
TEST_RR_OP( 11 , khmx8, 0x5ee0dfee, 0x7adc3ce4, 0x6f6352ba, 44); 
TEST_RR_OP( 12 , khmx8, 0xfa0210d1, 0xbffab251, 0xca0bb7e5, 48); 
TEST_RR_OP( 13 , khmx8, 0x05f6ce3d, 0x8dbe46c1, 0x13fa84a5, 52); 
TEST_RR_OP( 14 , khmx8, 0x9a000317, 0x7800eb8a, 0x8194e6ea, 56); 
TEST_RR_OP( 15 , khmx8, 0xfe49cbec, 0xa35bac16, 0x67028d50, 60); 
TEST_RR_OP( 16 , khmx8, 0xc86f2b3d, 0xc5804d74, 0x91794448, 64); 
TEST_RR_OP( 17 , khmx8, 0x2029bfe7, 0xd6ce5277, 0x979ce69b, 68); 
TEST_RR_OP( 18 , khmx8, 0x5ae6ff27, 0x65d2feaf, 0x4773c218, 72); 
TEST_RR_OP( 19 , khmx8, 0xe4e7f90a, 0xb03fec59, 0xcf2c0f29, 76); 
TEST_RR_OP( 20 , khmx8, 0xb80ab5bc, 0x85344e59, 0x194a9f86, 80); 
TEST_RR_OP( 21 , khmx8, 0x42ecb8e6, 0xa7b68247, 0x22a0d249, 84); 
TEST_RR_OP( 22 , khmx8, 0xf0eafafb, 0x38bbc5e1, 0x28dc110b, 88); 
TEST_RR_OP( 23 , khmx8, 0xfe253815, 0xd0554b4c, 0x39032460, 92); 
TEST_RR_OP( 24 , khmx8, 0x583e2aee, 0x9a4e92ed, 0x679174ce, 96); 
TEST_RR_OP( 25 , khmx8, 0x6b14f8fb, 0x8fc10d14, 0xd786e4b7, 100); 
TEST_RR_OP( 26 , khmx8, 0xfb0bc5f9, 0x4660ac26, 0x0ff7ea59, 104); 
TEST_RR_OP( 27 , khmx8, 0x0e58ab23, 0x38656299, 0x7022d492, 108); 
TEST_RR_OP( 28 , khmx8, 0x58252ad5, 0x7a5f3cc4, 0x325d5b5a, 112); 
TEST_RR_OP( 29 , khmx8, 0xfbea21ad, 0xfbddb555, 0x4f7b84c6, 116); 
TEST_RR_OP( 30 , khmx8, 0xe6f10a06, 0x23141b0a, 0xa4a44d31, 120); 
TEST_RR_OP( 31 , khmx8, 0x4bfadf1e, 0x81b4c967, 0x09b4264b, 124); 
TEST_RR_OP( 32 , khmx8, 0x5e716cfe, 0x88777e1c, 0x7a9bf86e, 128); 
TEST_RR_OP( 33 , khmx8, 0x0c18e002, 0x1a312003, 0x3f3f6c83, 132); 
TEST_RR_OP( 34 , khmx8, 0xaa15e526, 0x71ac22d6, 0xdf9f8a9c, 136); 
TEST_RR_OP( 35 , khmx8, 0x05ffedf6, 0x6f06922a, 0xec06e215, 140); 
TEST_RR_OP( 36 , khmx8, 0xfafe2e60, 0xf81e8498, 0xf95789d0, 144); 
TEST_RR_OP( 37 , khmx8, 0xfd08119a, 0xfbefda97, 0xbe4a7cc6, 148); 
TEST_RR_OP( 38 , khmx8, 0xdd0100ed, 0x48060329, 0x28c3c505, 152); 
TEST_RR_OP( 39 , khmx8, 0xeed7ef19, 0xccad1232, 0x3e2b4288, 156); 
TEST_RR_OP( 40 , khmx8, 0xfb16fe13, 0x1cbdfd24, 0xd5eb4730, 160); 
TEST_RR_OP( 41 , khmx8, 0xcf09d4d0, 0x63ed409e, 0xbdc13ea9, 164); 
TEST_RR_OP( 42 , khmx8, 0x034928e1, 0xb5b02d90, 0x8bfa2373, 168); 
TEST_RR_OP( 43 , khmx8, 0xec00ffd8, 0x9b01709b, 0x461932ff, 172); 
TEST_RR_OP( 44 , khmx8, 0x78f4fcd7, 0x80dcec95, 0x2a883014, 176); 
TEST_RR_OP( 45 , khmx8, 0x15260ac4, 0xe2771059, 0x29a5ab50, 180); 
TEST_RR_OP( 46 , khmx8, 0xe519fc00, 0xd5202180, 0x674f00f1, 184); 
TEST_RR_OP( 47 , khmx8, 0xdc066000, 0x5cf57b01, 0xb3cf7a64, 188); 
TEST_RR_OP( 48 , khmx8, 0xc71103ac, 0x5ac7fb6b, 0xd8b09ca7, 192); 
TEST_RR_OP( 49 , khmx8, 0x27f71009, 0x91efeef1, 0x40d2ac8d, 196); 
TEST_RR_OP( 50 , khmx8, 0xf8122fe3, 0x0a22b750, 0x47a4d3ac, 200); 
TEST_RR_OP( 51 , khmx8, 0xfdf7b499, 0xc2174c92, 0xd0067780, 204); 
TEST_RR_OP( 52 , khmx8, 0xfd050028, 0xe4141856, 0x230d3d03, 208); 
TEST_RR_OP( 53 , khmx8, 0x0e58d113, 0x1e9d7cb7, 0x8e3cddd0, 212); 
TEST_RR_OP( 54 , khmx8, 0x35f437e3, 0xc5da579d, 0x288c2551, 216); 
TEST_RR_OP( 55 , khmx8, 0xe8da2a0b, 0x5d9c32e5, 0x30e0c86e, 220); 
TEST_RR_OP( 56 , khmx8, 0xfd5aaa00, 0xf987a6dc, 0xa031ff79, 224); 
TEST_RR_OP( 57 , khmx8, 0x0d09f5ff, 0x824f7aff, 0x10f208f5, 228); 
TEST_RR_OP( 58 , khmx8, 0xd605efdb, 0x6ce79397, 0xe2cf2d13, 232); 
TEST_RR_OP( 59 , khmx8, 0xf4f5bb26, 0xc6ea602c, 0x3c1a70a5, 236); 
TEST_RR_OP( 60 , khmx8, 0x3707efe4, 0xa2d6e0b6, 0xe8b43043, 240); 
TEST_RR_OP( 61 , khmx8, 0xf7095000, 0xf5316c00, 0x1862dd5f, 244); 
TEST_RR_OP( 62 , khmx8, 0xfb080dce, 0xd62eacce, 0x170d7eeb, 248); 
TEST_RR_OP( 63 , khmx8, 0xd50eff03, 0xba26f02c, 0x304e0a05, 252); 
TEST_RR_OP( 64 , khmx8, 0xf21af7b7, 0xe5dae663, 0xa642a229, 256); 
TEST_RR_OP( 65 , khmx8, 0xa840f73f, 0x9c6b4a4d, 0x4d7069f2, 260); 
TEST_RR_OP( 66 , khmx8, 0xfde86af0, 0xe4c285eb, 0x300a6091, 264); 
TEST_RR_OP( 67 , khmx8, 0x2e034da8, 0xb83aa293, 0x08ae6796, 268); 
TEST_RR_OP( 68 , khmx8, 0xf9a40c09, 0x838ced66, 0x65070cac, 272); 
TEST_RR_OP( 69 , khmx8, 0xcafdd2d9, 0x6cfcbb5e, 0x58c1cc55, 276); 
TEST_RR_OP( 70 , khmx8, 0xebe9a8eb, 0xaf6976d0, 0xe42037a1, 280); 
TEST_RR_OP( 71 , khmx8, 0x3206f706, 0x8feced12, 0xd8c72f3a, 284); 
TEST_RR_OP( 72 , khmx8, 0x00b603c4, 0xfb741ab6, 0xaffe670f, 288); 
TEST_RR_OP( 73 , khmx8, 0x11da0c3f, 0xcf5856a9, 0xcad3a213, 292); 
TEST_RR_OP( 74 , khmx8, 0xe4e1953a, 0xd34d93b9, 0xcd4d967d, 296); 
TEST_RR_OP( 75 , khmx8, 0xda0cf9fe, 0x6d60d7d6, 0x11d40513, 300); 
TEST_RR_OP( 76 , khmx8, 0xb2001321, 0x78f990db, 0xfcad8cea, 304); 
TEST_RR_OP( 77 , khmx8, 0x51cd0e1f, 0x704770c7, 0xa55db910, 308); 
TEST_RR_OP( 78 , khmx8, 0x49c7d8cf, 0x5141ccbf, 0x91746062, 312); 
TEST_RR_OP( 79 , khmx8, 0xffe0fc31, 0xe2b612c1, 0x36049cea, 316); 
TEST_RR_OP( 80 , khmx8, 0xfafff3d8, 0x0b02114b, 0xe9bcbda4, 320); 
TEST_RR_OP( 81 , khmx8, 0xdfee062e, 0xdb89f033, 0x136f75cb, 324); 
TEST_RR_OP( 82 , khmx8, 0xca03d4b6, 0x8a308a5a, 0x093a972f, 328); 
TEST_RR_OP( 83 , khmx8, 0x390af701, 0x5b0be903, 0x77515530, 332); 
TEST_RR_OP( 84 , khmx8, 0x02c3e9a8, 0xbf8ae364, 0x42fc9063, 336); 
TEST_RR_OP( 85 , khmx8, 0xee1d0018, 0x38aea819, 0xd2d87c00, 340); 
TEST_RR_OP( 86 , khmx8, 0xfe021c1c, 0xcd2a2448, 0x09043264, 344); 
TEST_RR_OP( 87 , khmx8, 0xb831162a, 0x9b996e81, 0xc25ad51a, 348); 
TEST_RR_OP( 88 , khmx8, 0x09b4003f, 0x118b44a5, 0x5348a701, 352); 
TEST_RR_OP( 89 , khmx8, 0xe720f3f1, 0xd9c0c3aa, 0xbf4f161b, 356); 
TEST_RR_OP( 90 , khmx8, 0xf6e311b8, 0x0e92cb6b, 0x21a9aad6, 360); 
TEST_RR_OP( 91 , khmx8, 0x29dd46ee, 0xa93d7782, 0xb7c3124c, 364); 
TEST_RR_OP( 92 , khmx8, 0xedfb1424, 0x37cd1e92, 0x0bd5d559, 368); 
TEST_RR_OP( 93 , khmx8, 0x02070529, 0xf023b08f, 0x1bebd1f8, 372); 
TEST_RR_OP( 94 , khmx8, 0x0f00bfe9, 0x25eb4c19, 0xfa378c94, 376); 
TEST_RR_OP( 95 , khmx8, 0x3f031630, 0xb814e53a, 0x15906b97, 380); 
TEST_RR_OP( 96 , khmx8, 0xcf12c8f7, 0xbd1752cb, 0x665c15a9, 384); 
TEST_RR_OP( 97 , khmx8, 0x01fce705, 0x033a1aea, 0xf84fde86, 388); 
TEST_RR_OP( 98 , khmx8, 0x2a1cb0cf, 0x31cd5458, 0xb86eb987, 392); 
TEST_RR_OP( 99 , khmx8, 0xedf6c9de, 0x8989aaa6, 0x0a142f51, 396); 
TEST_RR_OP( 100 , khmx8, 0xfad72009, 0x093e37d3, 0xadb8e54c, 400); 
TEST_RR_OP( 101 , khmx8, 0xdd2dbec1, 0x9e496d61, 0x502daeb3, 404); 
TEST_RR_OP( 102 , khmx8, 0xb6ebc03c, 0x8b708993, 0xe850b944, 408); 
TEST_RR_OP( 103 , khmx8, 0x0ff4ef0c, 0xc46c2529, 0xf2e026c7, 412); 
TEST_RR_OP( 104 , khmx8, 0x1a06410a, 0x2898bc0b, 0xf8567585, 416); 
TEST_RR_OP( 105 , khmx8, 0xb61226dd, 0xb51d5ec3, 0x507d4834, 420); 
TEST_RR_OP( 106 , khmx8, 0xe29ff2e0, 0xda651031, 0x8664af95, 424); 
TEST_RR_OP( 107 , khmx8, 0xeefb1853, 0xce8d4191, 0x052da031, 428); 
TEST_RR_OP( 108 , khmx8, 0xe1b8352e, 0x824bb758, 0x861f43a2, 432); 
TEST_RR_OP( 109 , khmx8, 0x06f90012, 0x47f400b5, 0x470ce1a3, 436); 
TEST_RR_OP( 110 , khmx8, 0xf61b02c0, 0xbfe407b6, 0x81126d2c, 440); 
TEST_RR_OP( 111 , khmx8, 0xb3420ddd, 0x9249dad6, 0x75596ad2, 444); 
TEST_RR_OP( 112 , khmx8, 0xf005f200, 0xd908dbff, 0x5f32812e, 448); 
TEST_RR_OP( 113 , khmx8, 0x26f2e5fc, 0xb921def7, 0xcbba2b65, 452); 
TEST_RR_OP( 114 , khmx8, 0x422a18ef, 0x95405ab8, 0x54b11d23, 456); 
TEST_RR_OP( 115 , khmx8, 0x0eb90e31, 0xc6b1ee40, 0x72e0629c, 460); 
TEST_RR_OP( 116 , khmx8, 0x073225f5, 0x3097d832, 0xc214e587, 464); 
TEST_RR_OP( 117 , khmx8, 0x0c04020c, 0x5efba5bc, 0x8511e8fc, 468); 
TEST_RR_OP( 118 , khmx8, 0x22006509, 0xcd00885b, 0x33a90e94, 472); 
TEST_RR_OP( 119 , khmx8, 0x2151fdef, 0x2c941c4e, 0xa060e5f3, 476); 
TEST_RR_OP( 120 , khmx8, 0x000b1cdc, 0x00d321ca, 0xdebd536d, 480); 
TEST_RR_OP( 121 , khmx8, 0x29d5f7d0, 0xcd81cc87, 0x2b973216, 484); 
TEST_RR_OP( 122 , khmx8, 0x3b0601ef, 0x6312ceb4, 0x304d1bfb, 488); 
TEST_RR_OP( 123 , khmx8, 0x0f200005, 0x4924e1f3, 0x741cce00, 492); 
TEST_RR_OP( 124 , khmx8, 0x055cfb11, 0x487ce1b6, 0x5f09e111, 496); 
TEST_RR_OP( 125 , khmx8, 0x4518ff02, 0x5d46d526, 0x2d5f0a02, 500); 
TEST_RR_OP( 126 , khmx8, 0x05fae2db, 0xf1a4429d, 0x07ce2fc7, 504); 
TEST_RR_OP( 127 , khmx8, 0xeff608ac, 0x129028a3, 0x0b88731b, 508); 
TEST_RR_OP( 128 , khmx8, 0xff3efe38, 0xfa779198, 0x4312ba02, 512); 
TEST_RR_OP( 129 , khmx8, 0x5ede0dd1, 0x67228439, 0x837598f2, 516); 
TEST_RR_OP( 130 , khmx8, 0x13f9c266, 0xcb194f7e, 0xe0d1689c, 520); 
TEST_RR_OP( 131 , khmx8, 0x11f92bf3, 0x19199fb5, 0xde5a16c7, 524); 
TEST_RR_OP( 132 , khmx8, 0xf7dc2c11, 0x3cdabe18, 0x78ee5ea9, 528); 
TEST_RR_OP( 133 , khmx8, 0xc0084422, 0xb917afc8, 0x3172b293, 532); 
TEST_RR_OP( 134 , khmx8, 0xea36f5b2, 0xcba91b8a, 0xb03554ce, 536); 
TEST_RR_OP( 135 , khmx8, 0x40f6ddbb, 0xac3a4f96, 0xec9e53c8, 540); 
TEST_RR_OP( 136 , khmx8, 0x05d9abd3, 0x086f7661, 0xd450c5a4, 544); 
TEST_RR_OP( 137 , khmx8, 0x0aff0b17, 0xc2070c67, 0xfdeb1d7a, 548); 
TEST_RR_OP( 138 , khmx8, 0x1df2b30e, 0x211158db, 0x9a74ce91, 552); 
TEST_RR_OP( 139 , khmx8, 0x46eaf90b, 0x723f0f42, 0xd44f16cc, 556); 
TEST_RR_OP( 140 , khmx8, 0x55fa19dd, 0x9f0ddc54, 0xc68fcba6, 560); 
TEST_RR_OP( 141 , khmx8, 0xff330f06, 0xff9c947d, 0xbe1d07ee, 564); 
TEST_RR_OP( 142 , khmx8, 0xec0102fd, 0xccf80318, 0xe52ff45c, 568); 
TEST_RR_OP( 143 , khmx8, 0x00f00b5e, 0x00e7289f, 0x50fa8324, 572); 
TEST_RR_OP( 144 , khmx8, 0xb5443611, 0x565165ea, 0x6d919945, 576); 
TEST_RR_OP( 145 , khmx8, 0x1200df00, 0x1afadc01, 0xf15d4575, 580); 
TEST_RR_OP( 146 , khmx8, 0x15fbfb01, 0x1e6581fd, 0xfa5cc205, 584); 
TEST_RR_OP( 147 , khmx8, 0x0750f612, 0xe485d619, 0xacdd5e1c, 588); 
TEST_RR_OP( 148 , khmx8, 0x11301e28, 0x423e4447, 0x64214939, 592); 
TEST_RR_OP( 149 , khmx8, 0xe70efad8, 0x41b50d5d, 0xe7cfc9cb, 596); 
TEST_RR_OP( 150 , khmx8, 0x1503f9d3, 0xe5dfac53, 0xf498bc0a, 600); 
TEST_RR_OP( 151 , khmx8, 0xf5e8031a, 0xad1e051d, 0x9b10735d, 604); 
TEST_RR_OP( 152 , khmx8, 0x0df8a5fe, 0x34387302, 0xee21849b, 608); 
TEST_RR_OP( 153 , khmx8, 0xf128200e, 0x3d78d7d8, 0x2be2d399, 612); 
TEST_RR_OP( 154 , khmx8, 0xe9dac5f0, 0xa8a849e4, 0x37214699, 616); 
TEST_RR_OP( 155 , khmx8, 0x2f0003da, 0x6710e2d8, 0x053b79f0, 620); 
TEST_RR_OP( 156 , khmx8, 0xe0070810, 0x95e3f615, 0xdd26648d, 624); 
TEST_RR_OP( 157 , khmx8, 0xf8fb0e12, 0xba05ee17, 0x940e6698, 628); 
TEST_RR_OP( 158 , khmx8, 0xf64acdfb, 0x77a169d0, 0x9bf60cc3, 632); 
TEST_RR_OP( 159 , khmx8, 0x0ddace06, 0x1cb4a6d1, 0x3f3def47, 636); 
TEST_RR_OP( 160 , khmx8, 0x05e11405, 0x9665b109, 0xd9f94bde, 640); 
TEST_RR_OP( 161 , khmx8, 0x38dfa225, 0x4edf9828, 0x7d5d7973, 644); 
TEST_RR_OP( 162 , khmx8, 0x18c923fc, 0xe34529e4, 0x9b960e6e, 648); 
TEST_RR_OP( 163 , khmx8, 0xc129f5d1, 0xb87e3ecf, 0x2a6f79ea, 652); 
TEST_RR_OP( 164 , khmx8, 0x3c9edaff, 0x3f8481c8, 0x657b0226, 656); 
TEST_RR_OP( 165 , khmx8, 0xe0d8f7bf, 0xb642b9a4, 0xb4365a0f, 660); 
TEST_RR_OP( 166 , khmx8, 0x17105fd5, 0x804f6557, 0x1be9c179, 664); 
TEST_RR_OP( 167 , khmx8, 0x00ec0fca, 0xfd2b2995, 0xc7da402f, 668); 
TEST_RR_OP( 168 , khmx8, 0xd8120a2a, 0xd426e4ab, 0x3d72c0ce, 672); 
TEST_RR_OP( 169 , khmx8, 0x09220de7, 0xcbdaef5e, 0x8de8de9d, 676); 
TEST_RR_OP( 170 , khmx8, 0x2e3028dd, 0x847ad47b, 0x33d0dc89, 680); 
TEST_RR_OP( 171 , khmx8, 0x01c4db0e, 0xe65e29e3, 0xaff9c08f, 684); 
TEST_RR_OP( 172 , khmx8, 0xfac51ad8, 0x09bce12e, 0x6fb69191, 688); 
TEST_RR_OP( 173 , khmx8, 0x493100eb, 0xb6b93b2a, 0xa681c201, 692); 
TEST_RR_OP( 174 , khmx8, 0xfd1b00f4, 0x07e104df, 0x8ecf2e1f, 696); 
TEST_RR_OP( 175 , khmx8, 0x040300bd, 0xfb4f3f59, 0x0587a100, 700); 
TEST_RR_OP( 176 , khmx8, 0xd101091a, 0xa8fb85e2, 0xdb438ff6, 704); 
TEST_RR_OP( 177 , khmx8, 0xdcfcebf1, 0xd40ea627, 0xdc66cf1d, 708); 
TEST_RR_OP( 178 , khmx8, 0x492fdc1c, 0x5588ca61, 0xcd6e2655, 712); 
TEST_RR_OP( 179 , khmx8, 0xe8f600fb, 0x30ef659d, 0x4ac10601, 716); 
TEST_RR_OP( 180 , khmx8, 0x08a1d000, 0xf0879a00, 0x64b9803b, 720); 
TEST_RR_OP( 181 , khmx8, 0xeff95612, 0xdb217929, 0xe639395b, 724); 
TEST_RR_OP( 182 , khmx8, 0x1c7c23c5, 0xd57e93b5, 0x7eac64d6, 728); 
TEST_RR_OP( 183 , khmx8, 0x29f24ee9, 0xaf129f57, 0x9fbfdf98, 732); 
TEST_RR_OP( 184 , khmx8, 0xbe07fc24, 0x6cf8f83b, 0x88b25033, 736); 
TEST_RR_OP( 185 , khmx8, 0xbd02e32a, 0xb30981af, 0x206fbd1d, 740); 
TEST_RR_OP( 186 , khmx8, 0x040ae202, 0x12271fd6, 0x2423f786, 744); 
TEST_RR_OP( 187 , khmx8, 0x10feff51, 0x1d1bc986, 0xf947ab02, 748); 
TEST_RR_OP( 188 , khmx8, 0x6929f4f5, 0x8bbe0f3c, 0xb08dea9d, 752); 
TEST_RR_OP( 189 , khmx8, 0xc0ffce02, 0x8aa9cbe1, 0x0145f578, 756); 
TEST_RR_OP( 190 , khmx8, 0x36f0230a, 0x571e2eef, 0xbc50b062, 760); 
TEST_RR_OP( 191 , khmx8, 0x172dc5bf, 0xdea7b691, 0xbfa94a65, 764); 
TEST_RR_OP( 192 , khmx8, 0xf3df07ed, 0x9d6c0950, 0xd910e270, 768); 
TEST_RR_OP( 193 , khmx8, 0xb3cf302b, 0xa16a8330, 0xc66774ce, 772); 
TEST_RR_OP( 194 , khmx8, 0x652fe206, 0x6a408733, 0x5f7b101f, 776); 
TEST_RR_OP( 195 , khmx8, 0xf5ce06e4, 0xcbb715c3, 0x571a3927, 780); 
TEST_RR_OP( 196 , khmx8, 0xabfee52f, 0xa7e122cb, 0x07798e9c, 784); 
TEST_RR_OP( 197 , khmx8, 0xeee0d7fe, 0x513d40fa, 0xbde419ae, 788); 
TEST_RR_OP( 198 , khmx8, 0x124a0318, 0xd756f222, 0x6fc65ee3, 792); 
TEST_RR_OP( 199 , khmx8, 0xfaf9ca23, 0xe9e19f82, 0x1b21dc46, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# khm8.S
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

TEST_RR_OP( 2 , khm8, 0x050afe0e, 0x507d162d, 0x080bfa28, 8); 
TEST_RR_OP( 3 , khm8, 0x0a01fff9, 0x1bdffa32, 0x33fc03ef, 12); 
TEST_RR_OP( 4 , khm8, 0x242b010d, 0x4241b31e, 0x4656fd38, 16); 
TEST_RR_OP( 5 , khm8, 0x1f332ff2, 0x34cc3550, 0x4d8272ea, 20); 
TEST_RR_OP( 6 , khm8, 0x01e2eaec, 0xc921226f, 0xfd8cb0e9, 24); 
TEST_RR_OP( 7 , khm8, 0x4164d2ce, 0x697446ae, 0x506fac4d, 28); 
TEST_RR_OP( 8 , khm8, 0x03cef0ff, 0x0b835402, 0x2633e8e6, 32); 
TEST_RR_OP( 9 , khm8, 0x241ff41e, 0x90321760, 0xd650c029, 36); 
TEST_RR_OP( 10 , khm8, 0xf30e22c7, 0x2a5f2561, 0xd91376b5, 40); 
TEST_RR_OP( 11 , khm8, 0xf5d8e4f2, 0x10d7546c, 0xaa7cd6f0, 44); 
TEST_RR_OP( 12 , khm8, 0x0e44f4ff, 0x6a96d108, 0x12ad20f3, 48); 
TEST_RR_OP( 13 , khm8, 0xff04a137, 0xeb098daf, 0x023d69a9, 52); 
TEST_RR_OP( 14 , khm8, 0xe6ed060c, 0xb33c0a5f, 0x2ad85511, 56); 
TEST_RR_OP( 15 , khm8, 0x44e7e9fd, 0x69c91811, 0x53398aea, 60); 
TEST_RR_OP( 16 , khm8, 0xc3fbfe10, 0x43c30c19, 0x8c0aee57, 64); 
TEST_RR_OP( 17 , khm8, 0x11ec0306, 0xa7e33cd1, 0xe75708ed, 68); 
TEST_RR_OP( 18 , khm8, 0x2aedd0ec, 0xcbcd3edc, 0x992f9d45, 72); 
TEST_RR_OP( 19 , khm8, 0xfc68ea2a, 0x0b883dd2, 0xda91d28b, 76); 
TEST_RR_OP( 20 , khm8, 0xf505ecb6, 0x3d10335e, 0xe92fce9c, 80); 
TEST_RR_OP( 21 , khm8, 0x23b9f0fb, 0x5c4a5566, 0x3186e9fa, 84); 
TEST_RR_OP( 22 , khm8, 0x02570aac, 0x05a2216d, 0x4289279e, 88); 
TEST_RR_OP( 23 , khm8, 0x05e8230a, 0x152dbcf5, 0x21bdbd88, 92); 
TEST_RR_OP( 24 , khm8, 0x0c98fd58, 0x84751678, 0xf38ff45e, 96); 
TEST_RR_OP( 25 , khm8, 0xf619e7bf, 0x11983969, 0xbae1c9b1, 100); 
TEST_RR_OP( 26 , khm8, 0xf308f8ed, 0xf3129997, 0x7a390917, 104); 
TEST_RR_OP( 27 , khm8, 0x383f0642, 0xbf4df45b, 0x906abf5e, 108); 
TEST_RR_OP( 28 , khm8, 0xf0440cfc, 0x16a35d30, 0xa3a211f7, 112); 
TEST_RR_OP( 29 , khm8, 0x1b3fbd12, 0x75bf6b53, 0x1e83b01c, 116); 
TEST_RR_OP( 30 , khm8, 0x4d0f2617, 0x58ef53b7, 0x70883bd6, 120); 
TEST_RR_OP( 31 , khm8, 0x0a0b095d, 0x9659d6a0, 0xf311e283, 124); 
TEST_RR_OP( 32 , khm8, 0xd1f3e7f6, 0x38f33211, 0x957ac1b5, 128); 
TEST_RR_OP( 33 , khm8, 0x1dd139c0, 0x8fa24f94, 0xdf3f5d4b, 132); 
TEST_RR_OP( 34 , khm8, 0x18f6e3f8, 0x320b34b2, 0x3f93bb0c, 136); 
TEST_RR_OP( 35 , khm8, 0x03f5bddb, 0xfa44923f, 0xb9ec4db5, 140); 
TEST_RR_OP( 36 , khm8, 0x9702e938, 0x74f9cb77, 0x8dd1363d, 144); 
TEST_RR_OP( 37 , khm8, 0xa1d3eef5, 0x606729d5, 0x82c9c91f, 148); 
TEST_RR_OP( 38 , khm8, 0xf72db222, 0x1b2f5dc7, 0xd67d96b2, 152); 
TEST_RR_OP( 39 , khm8, 0xe7f7c41d, 0x58e65061, 0xdd2ca027, 156); 
TEST_RR_OP( 40 , khm8, 0x2a12aa6f, 0xbe306390, 0xae319281, 160); 
TEST_RR_OP( 41 , khm8, 0x08dff85a, 0x124aef94, 0x3ac83695, 164); 
TEST_RR_OP( 42 , khm8, 0xb1ec6ded, 0x87e87517, 0x5367789a, 168); 
TEST_RR_OP( 43 , khm8, 0xdc22ac1d, 0x8f9f719f, 0x28d3a1d9, 172); 
TEST_RR_OP( 44 , khm8, 0xf2ca1a12, 0x264d1cc7, 0xd4a77bd7, 176); 
TEST_RR_OP( 45 , khm8, 0x004e49ef, 0x00745c87, 0x99576611, 180); 
TEST_RR_OP( 46 , khm8, 0x2827d74f, 0x53ba825d, 0x3eb8296e, 184); 
TEST_RR_OP( 47 , khm8, 0x09270ebe, 0x1bbede63, 0x2cb3c8ab, 188); 
TEST_RR_OP( 48 , khm8, 0x49b732e4, 0xb0b3412b, 0x8b7964af, 192); 
TEST_RR_OP( 49 , khm8, 0xcd47e01d, 0x584fcf5b, 0xb774522a, 196); 
TEST_RR_OP( 50 , khm8, 0x0f12fdfb, 0x3a31fd57, 0x233175fa, 200); 
TEST_RR_OP( 51 , khm8, 0x970df6c5, 0x7529d068, 0x8e2a19b8, 204); 
TEST_RR_OP( 52 , khm8, 0xe37ffa2d, 0xb681803d, 0x32800660, 208); 
TEST_RR_OP( 53 , khm8, 0xab0a002e, 0xa2e0743a, 0x73d70167, 212); 
TEST_RR_OP( 54 , khm8, 0xea37e14a, 0x98588765, 0x1b51205f, 216); 
TEST_RR_OP( 55 , khm8, 0x03ff1abc, 0x2ec5bcab, 0x0902ce65, 220); 
TEST_RR_OP( 56 , khm8, 0xcdd19439, 0x74ca7db6, 0xc86e929c, 224); 
TEST_RR_OP( 57 , khm8, 0xe934fb56, 0xc09f38a8, 0x2ebbf582, 228); 
TEST_RR_OP( 58 , khm8, 0xfcf4e725, 0x050cc6ce, 0xb383359f, 232); 
TEST_RR_OP( 59 , khm8, 0xe3fec045, 0x391cad89, 0xc1f762b5, 236); 
TEST_RR_OP( 60 , khm8, 0xf4cf0f0a, 0x1e695eb5, 0xcfc515ee, 240); 
TEST_RR_OP( 61 , khm8, 0x0a0c02e0, 0xf54dfc2d, 0x8715aca6, 244); 
TEST_RR_OP( 62 , khm8, 0xd242f400, 0x54b0f140, 0xba955f01, 248); 
TEST_RR_OP( 63 , khm8, 0xfecac339, 0xfecab760, 0x537e6a4c, 252); 
TEST_RR_OP( 64 , khm8, 0xfb023e02, 0x14fbb0ec, 0xe1b99cf1, 256); 
TEST_RR_OP( 65 , khm8, 0xbfcb3e1c, 0x59569f58, 0xa3b2ad2a, 260); 
TEST_RR_OP( 66 , khm8, 0x5cfcae00, 0x64c37dfe, 0x7608ade2, 264); 
TEST_RR_OP( 67 , khm8, 0xd60a08dc, 0x9a27ef4c, 0x3424c0c4, 268); 
TEST_RR_OP( 68 , khm8, 0xc2c53dd2, 0xb46d4231, 0x67bb7789, 272); 
TEST_RR_OP( 69 , khm8, 0x43f0dab9, 0x47234587, 0x79c6ba4b, 276); 
TEST_RR_OP( 70 , khm8, 0xda184524, 0x46de7d3f, 0xbca3474a, 280); 
TEST_RR_OP( 71 , khm8, 0x10e99fc0, 0xdab36a60, 0xc7258bab, 284); 
TEST_RR_OP( 72 , khm8, 0xfaff38fc, 0x3dbf6308, 0xf40149c9, 288); 
TEST_RR_OP( 73 , khm8, 0xcdfe9505, 0x48fe7008, 0xa769865c, 292); 
TEST_RR_OP( 74 , khm8, 0x372deafc, 0x44852039, 0x69d1a9f8, 296); 
TEST_RR_OP( 75 , khm8, 0xc7282dfa, 0x75bfc90d, 0xc2b095c7, 300); 
TEST_RR_OP( 76 , khm8, 0xd4c0040a, 0x55540998, 0xbe9f3bf3, 304); 
TEST_RR_OP( 77 , khm8, 0xfbebafff, 0xf5eb5d0c, 0x387e91fc, 308); 
TEST_RR_OP( 78 , khm8, 0xe844122d, 0x3b63de67, 0xce58ba39, 312); 
TEST_RR_OP( 79 , khm8, 0xfaedc9ff, 0xf8e4c7fd, 0x57537b1c, 316); 
TEST_RR_OP( 80 , khm8, 0x29b4f4f1, 0x9c725e94, 0xcbabf011, 320); 
TEST_RR_OP( 81 , khm8, 0x0af9da0c, 0x510729e6, 0x118b8ac1, 324); 
TEST_RR_OP( 82 , khm8, 0xdbd9d722, 0xd36bd179, 0x69d26f24, 328); 
TEST_RR_OP( 83 , khm8, 0x0eec2206, 0xeca85817, 0xa21c3223, 332); 
TEST_RR_OP( 84 , khm8, 0xf1f8cf43, 0xde5c4598, 0x37f5a6ad, 336); 
TEST_RR_OP( 85 , khm8, 0x1002e5fa, 0x21e9431c, 0x40f4cde8, 340); 
TEST_RR_OP( 86 , khm8, 0xf641c7b8, 0x0d48b173, 0xa0745bb0, 344); 
TEST_RR_OP( 87 , khm8, 0x1703e0fd, 0xbef5d106, 0xd2db57c7, 348); 
TEST_RR_OP( 88 , khm8, 0x1b360523, 0x628b2e72, 0x24c40f28, 352); 
TEST_RR_OP( 89 , khm8, 0x0ccbabd0, 0xb584a7ce, 0xeb367979, 356); 
TEST_RR_OP( 90 , khm8, 0x252604dc, 0xaac4f987, 0xc8aea926, 360); 
TEST_RR_OP( 91 , khm8, 0x21f31921, 0xcdc58cd5, 0xac1ce49d, 364); 
TEST_RR_OP( 92 , khm8, 0x15e0f3f4, 0xcd90f0e1, 0xcb24642f, 368); 
TEST_RR_OP( 93 , khm8, 0xe000b7e7, 0xb00158e5, 0x32799675, 372); 
TEST_RR_OP( 94 , khm8, 0xfa00f20f, 0xe97dbe10, 0x1e001b79, 376); 
TEST_RR_OP( 95 , khm8, 0xd9c339f7, 0x4797a71a, 0xbb4aadd5, 380); 
TEST_RR_OP( 96 , khm8, 0x0b06fce5, 0x1b0cf23a, 0x374022c6, 384); 
TEST_RR_OP( 97 , khm8, 0xcc0a1cac, 0x462ab9a0, 0xa121cc6f, 388); 
TEST_RR_OP( 98 , khm8, 0x0a3da4f4, 0x248fa054, 0x27ba7aee, 392); 
TEST_RR_OP( 99 , khm8, 0xf0df1d30, 0x33214237, 0xd9803971, 396); 
TEST_RR_OP( 100 , khm8, 0x1132039b, 0x3b585191, 0x25490574, 400); 
TEST_RR_OP( 101 , khm8, 0xa71b08f4, 0x77ca12e0, 0xa1be3e30, 404); 
TEST_RR_OP( 102 , khm8, 0x0b11f5bb, 0xc3867161, 0xe8eef4a6, 408); 
TEST_RR_OP( 103 , khm8, 0x2ac5cc0d, 0x30c5c526, 0x707e6f2e, 412); 
TEST_RR_OP( 104 , khm8, 0x4631c3f5, 0xb93c64c0, 0x816ab315, 416); 
TEST_RR_OP( 105 , khm8, 0xc80c010c, 0xc08ff8db, 0x70f2e8d6, 420); 
TEST_RR_OP( 106 , khm8, 0xfd25ff4f, 0x034703a7, 0x9144f38d, 424); 
TEST_RR_OP( 107 , khm8, 0x043241c8, 0x7642b25a, 0x056195b1, 428); 
TEST_RR_OP( 108 , khm8, 0x0032df0d, 0x07562ce8, 0x114ba2b6, 432); 
TEST_RR_OP( 109 , khm8, 0xee06fb13, 0xbef2ed8a, 0x22c61feb, 436); 
TEST_RR_OP( 110 , khm8, 0x01050ef5, 0x1e5496c1, 0x0508ef16, 440); 
TEST_RR_OP( 111 , khm8, 0x6628de2b, 0x932f8232, 0x886d226f, 444); 
TEST_RR_OP( 112 , khm8, 0x0e4ee5fa, 0xe09a29e7, 0xc59ead1d, 448); 
TEST_RR_OP( 113 , khm8, 0x131822fc, 0x5b9ed376, 0x1be09ffc, 452); 
TEST_RR_OP( 114 , khm8, 0xe1fbb0f1, 0x49e878ee, 0xcb18ab66, 456); 
TEST_RR_OP( 115 , khm8, 0xf242ffda, 0x4dae0675, 0xe998f2d7, 460); 
TEST_RR_OP( 116 , khm8, 0x1130f52c, 0x41742534, 0x2236dd6d, 464); 
TEST_RR_OP( 117 , khm8, 0x12ef391e, 0xe8d6a157, 0x9e32b32d, 468); 
TEST_RR_OP( 118 , khm8, 0xfe0e41d7, 0x077a4ebe, 0xe10f6b4f, 472); 
TEST_RR_OP( 119 , khm8, 0x4cf5eb22, 0x57e7d76a, 0x70363f2a, 476); 
TEST_RR_OP( 120 , khm8, 0x5806f6c9, 0x7a0f54b6, 0x5d38f25f, 480); 
TEST_RR_OP( 121 , khm8, 0x1eaf04fb, 0xab5de6f8, 0xd291ea4e, 484); 
TEST_RR_OP( 122 , khm8, 0xf81858b7, 0x5b2c826a, 0xf547a6a8, 488); 
TEST_RR_OP( 123 , khm8, 0x22d0fc02, 0x30be46fc, 0x5d5df9a7, 492); 
TEST_RR_OP( 124 , khm8, 0x19e70efb, 0xe0397206, 0x99ca109c, 496); 
TEST_RR_OP( 125 , khm8, 0xddc60d02, 0x766293f6, 0xdbb5f0e0, 500); 
TEST_RR_OP( 126 , khm8, 0xb0debfa7, 0x51855463, 0x83239d8d, 504); 
TEST_RR_OP( 127 , khm8, 0xd443ef48, 0xb84f6268, 0x4d6deb59, 508); 
TEST_RR_OP( 128 , khm8, 0x3fdd1532, 0x876838a6, 0xbdd531b8, 512); 
TEST_RR_OP( 129 , khm8, 0xbaf61621, 0xabe88ccf, 0x6832e7a8, 516); 
TEST_RR_OP( 130 , khm8, 0x4108260d, 0x5e1b298d, 0x592979f1, 520); 
TEST_RR_OP( 131 , khm8, 0xfdd03d06, 0x08a8780d, 0xde45423f, 524); 
TEST_RR_OP( 132 , khm8, 0x4f411ece, 0xaa62c4a2, 0x8a55c044, 528); 
TEST_RR_OP( 133 , khm8, 0x25ef16e6, 0x392e87bd, 0x55d2e830, 532); 
TEST_RR_OP( 134 , khm8, 0x00b246f4, 0x1aa16bb0, 0x01685413, 536); 
TEST_RR_OP( 135 , khm8, 0x00d419f1, 0x0243a9ba, 0x1dadda1a, 540); 
TEST_RR_OP( 136 , khm8, 0x0dfcf5d2, 0x1f066b2f, 0x37bbf383, 544); 
TEST_RR_OP( 137 , khm8, 0xf316f607, 0x1ca7b0e9, 0xc5e00fd6, 548); 
TEST_RR_OP( 138 , khm8, 0x272639c1, 0xd5c7a196, 0x8aa9b34c, 552); 
TEST_RR_OP( 139 , khm8, 0x08d60018, 0x10caff19, 0x4063e97e, 556); 
TEST_RR_OP( 140 , khm8, 0x3b2046df, 0x66b36ead, 0x4bca5232, 560); 
TEST_RR_OP( 141 , khm8, 0xe00a4fcc, 0xc9d79568, 0x49e0a1c1, 564); 
TEST_RR_OP( 142 , khm8, 0xc41000d0, 0x8488265d, 0x3dee01be, 568); 
TEST_RR_OP( 143 , khm8, 0xf2aa9939, 0xa78b97a9, 0x135e7dac, 572); 
TEST_RR_OP( 144 , khm8, 0xfc23fe02, 0xd3d41ba2, 0x0b9af7fc, 576); 
TEST_RR_OP( 145 , khm8, 0xe8eb10a5, 0x1ad2e191, 0x8d38bb68, 580); 
TEST_RR_OP( 146 , khm8, 0x48d91457, 0x82531679, 0xb6c4755d, 584); 
TEST_RR_OP( 147 , khm8, 0x01df2a30, 0xfd3c42c7, 0xbdbb5292, 588); 
TEST_RR_OP( 148 , khm8, 0x0d0100fe, 0x4d0bd621, 0x161100fb, 592); 
TEST_RR_OP( 149 , khm8, 0x00ce1f02, 0x399f5916, 0x02412e0d, 596); 
TEST_RR_OP( 150 , khm8, 0x15220309, 0xb69bd7e2, 0xdad4f4d7, 600); 
TEST_RR_OP( 151 , khm8, 0x37cd3ecb, 0x7a7e4648, 0x3acd73a2, 604); 
TEST_RR_OP( 152 , khm8, 0xe0793af5, 0x2e7d8f2e, 0xa77cbee2, 608); 
TEST_RR_OP( 153 , khm8, 0xfd171c4a, 0xf22da883, 0x1643d7b4, 612); 
TEST_RR_OP( 154 , khm8, 0xc026dd01, 0x823cd1fc, 0x41535fd6, 616); 
TEST_RR_OP( 155 , khm8, 0x200ecbf2, 0x64999025, 0x29ee3cd3, 620); 
TEST_RR_OP( 156 , khm8, 0x082d013a, 0xb4c0197d, 0xf1a50a3c, 624); 
TEST_RR_OP( 157 , khm8, 0x10f11115, 0x13466978, 0x6de51517, 628); 
TEST_RR_OP( 158 , khm8, 0x18ce09e8, 0x1b4fd2ab, 0x74afe523, 632); 
TEST_RR_OP( 159 , khm8, 0x27fc00c7, 0x3dfc00b9, 0x536c2c65, 636); 
TEST_RR_OP( 160 , khm8, 0xd200f726, 0x8ce3f53c, 0x32fe6253, 640); 
TEST_RR_OP( 161 , khm8, 0xd4fffb11, 0x37011247, 0x9b86e020, 644); 
TEST_RR_OP( 162 , khm8, 0x3efa4306, 0xafd79016, 0x9e11b324, 648); 
TEST_RR_OP( 163 , khm8, 0x5f0303fd, 0x63093a0c, 0x7b2c07e6, 652); 
TEST_RR_OP( 164 , khm8, 0x011dfe0e, 0xfc28fb35, 0xd95f2b23, 656); 
TEST_RR_OP( 165 , khm8, 0x1401fe33, 0x8d300653, 0xe903df50, 660); 
TEST_RR_OP( 166 , khm8, 0xfaee10d8, 0xe4cee4a2, 0x172eb636, 664); 
TEST_RR_OP( 167 , khm8, 0xf99dd90d, 0x62907db5, 0xf771d9e9, 668); 
TEST_RR_OP( 168 , khm8, 0x1618b700, 0x20cc71f8, 0x58c3aef9, 672); 
TEST_RR_OP( 169 , khm8, 0xeb4adf1f, 0x1c5b8ecb, 0xa16925b3, 676); 
TEST_RR_OP( 170 , khm8, 0x2bf9eea9, 0x3a191d94, 0x61deb466, 680); 
TEST_RR_OP( 171 , khm8, 0x74b201fb, 0x869603c7, 0x865d410b, 684); 
TEST_RR_OP( 172 , khm8, 0xee9e091e, 0xc3790f62, 0x25994d28, 688); 
TEST_RR_OP( 173 , khm8, 0xfdf0ffe9, 0xfcb50a30, 0x531afac3, 692); 
TEST_RR_OP( 174 , khm8, 0x03fe0cff, 0xbeda0eed, 0xfa047506, 696); 
TEST_RR_OP( 175 , khm8, 0xfd1caac4, 0x18de6c54, 0xf2959ba5, 700); 
TEST_RR_OP( 176 , khm8, 0x2bf5511b, 0x4cde6225, 0x4a296a5e, 704); 
TEST_RR_OP( 177 , khm8, 0xfa27faee, 0x098cf535, 0xb0d43cd5, 708); 
TEST_RR_OP( 178 , khm8, 0x52ca1d08, 0x929f30f5, 0xa0464e9e, 712); 
TEST_RR_OP( 179 , khm8, 0x0145bd00, 0xebb0b700, 0xf89175c1, 716); 
TEST_RR_OP( 180 , khm8, 0x1fdaddf3, 0x50d823b5, 0x33778015, 720); 
TEST_RR_OP( 181 , khm8, 0xb2eaf359, 0x91c6265e, 0x592fd57a, 724); 
TEST_RR_OP( 182 , khm8, 0xdeff5608, 0xdaf782f1, 0x710ba8ba, 728); 
TEST_RR_OP( 183 , khm8, 0x141af6f4, 0x8b58341d, 0xea26e8cf, 732); 
TEST_RR_OP( 184 , khm8, 0x03e601dc, 0x2dd0ef2d, 0x0b43f49c, 736); 
TEST_RR_OP( 185 , khm8, 0x3afe0c04, 0x73dce706, 0x4106c261, 740); 
TEST_RR_OP( 186 , khm8, 0x75f405e7, 0x77eb8292, 0x7e49fa1c, 744); 
TEST_RR_OP( 187 , khm8, 0x3a000813, 0xb1ff15e8, 0xa2ac3496, 748); 
TEST_RR_OP( 188 , khm8, 0x2a50facf, 0x47aceba6, 0x4c862345, 752); 
TEST_RR_OP( 189 , khm8, 0x05e1200d, 0x48ca4a24, 0x09483831, 756); 
TEST_RR_OP( 190 , khm8, 0x0c23133b, 0x24cdd98f, 0x2ca7c0bd, 760); 
TEST_RR_OP( 191 , khm8, 0x2e18f9eb, 0x6f23f344, 0x365a3dd9, 764); 
TEST_RR_OP( 192 , khm8, 0xf5fdf92a, 0x63e3d373, 0xf30b122f, 768); 
TEST_RR_OP( 193 , khm8, 0x023935ec, 0xf193536b, 0xebbc53e9, 772); 
TEST_RR_OP( 194 , khm8, 0x0df5f3fa, 0x63f22cf4, 0x115ddc39, 776); 
TEST_RR_OP( 195 , khm8, 0x0d48f2c6, 0x966fee9c, 0xf0545e49, 780); 
TEST_RR_OP( 196 , khm8, 0x2acdeef7, 0x9038eae4, 0xcf8c6526, 784); 
TEST_RR_OP( 197 , khm8, 0xe1e5eb18, 0x29b65d3a, 0xa12de435, 788); 
TEST_RR_OP( 198 , khm8, 0x24d00df4, 0xcbca95a4, 0xa971f010, 792); 
TEST_RR_OP( 199 , khm8, 0xfcebfc11, 0xca42c63b, 0x08d90725, 796); 

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
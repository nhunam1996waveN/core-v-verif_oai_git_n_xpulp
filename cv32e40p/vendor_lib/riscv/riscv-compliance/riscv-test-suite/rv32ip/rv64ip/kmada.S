# See LICENSE for license details.
#*****************************************************************************
# kmada.S
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

TEST_RR_OP( 2 , kmada, 0x00000000, 0xda79462b, 0x00000000, 8); 
TEST_RR_OP( 3 , kmada, 0x00000002, 0xffffffff, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmada, 0x00000002, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , kmada, 0x00000002, 0x00000000, 0x80000000, 20); 
TEST_RR_OP( 6 , kmada, 0xf10ca22f, 0xa3293079, 0x2b3c03d9, 24); 
TEST_RR_OP( 7 , kmada, 0xf10c2eb1, 0xfcd576a9, 0xffffffff, 28); 
TEST_RR_OP( 8 , kmada, 0xf10c2eb1, 0xffffffff, 0x00000000, 32); 
TEST_RR_OP( 9 , kmada, 0xf10c2eb1, 0x00000000, 0xa689deef, 36); 
TEST_RR_OP( 10 , kmada, 0xf10c2eb1, 0x80000000, 0x00000000, 40); 
TEST_RR_OP( 11 , kmada, 0x0f6b2eb1, 0x80000000, 0xc342e977, 44); 
TEST_RR_OP( 12 , kmada, 0x0f6baeb1, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmada, 0x0f6c2eb1, 0x80000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , kmada, 0x0f6caeb1, 0xffffffff, 0x80000000, 56); 
TEST_RR_OP( 15 , kmada, 0x0f6cf537, 0x81513829, 0xffffffff, 60); 
TEST_RR_OP( 16 , kmada, 0x1c2848fa, 0xd315cc2e, 0xe843d5ae, 64); 
TEST_RR_OP( 17 , kmada, 0x1c2848fa, 0x00000000, 0xffffffff, 68); 
TEST_RR_OP( 18 , kmada, 0x1c28b04c, 0xffffffff, 0xf1b2a6fc, 72); 
TEST_RR_OP( 19 , kmada, 0x1c28b04c, 0x32104526, 0x00000000, 76); 
TEST_RR_OP( 20 , kmada, 0x1c28b04c, 0x00000000, 0x80000000, 80); 
TEST_RR_OP( 21 , kmada, 0x1c283948, 0xffffffff, 0x761c00e8, 84); 
TEST_RR_OP( 22 , kmada, 0x1c283948, 0x00000000, 0x00000000, 88); 
TEST_RR_OP( 23 , kmada, 0x1c28b948, 0x80000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , kmada, 0x5216b948, 0x80000000, 0x94249ddf, 96); 
TEST_RR_OP( 25 , kmada, 0x5216b948, 0x4ce571a2, 0x00000000, 100); 
TEST_RR_OP( 26 , kmada, 0x7fffffff, 0x80000000, 0x80000000, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , kmada, 0x00000000, 0x00000000, 0x1baaa791, 120); 
TEST_RR_OP( 31 , kmada, 0xfc9c8000, 0x80000000, 0x06c73e88, 124); 
TEST_RR_OP( 32 , kmada, 0x007d0000, 0x80000000, 0xf83f49be, 128); 
TEST_RR_OP( 33 , kmada, 0x007d8000, 0x80000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmada, 0x007d0046, 0x05f179c9, 0xffffffff, 136); 
TEST_RR_OP( 35 , kmada, 0x007d0046, 0x00000000, 0x00000000, 140); 
TEST_RR_OP( 36 , kmada, 0x0e228046, 0x80000000, 0xe4b545ab, 144); 
TEST_RR_OP( 37 , kmada, 0x0e228046, 0x80000000, 0x00000000, 148); 
TEST_RR_OP( 38 , kmada, 0x0e228046, 0x80000000, 0x00000000, 152); 
TEST_RR_OP( 39 , kmada, 0x0e228046, 0x00000000, 0x80000000, 156); 
TEST_RR_OP( 40 , kmada, 0x17480046, 0x80000000, 0xedb52e45, 160); 
TEST_RR_OP( 41 , kmada, 0x57480046, 0x80000000, 0x80000000, 164); 
TEST_RR_OP( 42 , kmada, 0x57480046, 0x00000000, 0x00000000, 168); 
TEST_RR_OP( 43 , kmada, 0x7def0046, 0x80000000, 0xb2b28192, 172); 
TEST_RR_OP( 44 , kmada, 0x7def0046, 0x00000000, 0x80000000, 176); 
TEST_RR_OP( 45 , kmada, 0x7def0046, 0x00000000, 0x00000000, 180); 
TEST_RR_OP( 46 , kmada, 0x7def0046, 0x80000000, 0x00000000, 184); 
TEST_RR_OP( 47 , kmada, 0x7def0046, 0x00000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kmada, 0x7def0046, 0x00000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , kmada, 0x7def0046, 0xffffffff, 0x00000000, 196); 
TEST_RR_OP( 50 , kmada, 0x7def0046, 0x00000000, 0x00000000, 200); 
TEST_RR_OP( 51 , kmada, 0x7def0046, 0x00000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kmada, 0x7dee575c, 0xffffffff, 0x2ddd7b0d, 208); 
TEST_RR_OP( 53 , kmada, 0x4c544cdc, 0x4e08226e, 0x8eb09000, 212); 
TEST_RR_OP( 54 , kmada, 0x4c544cdc, 0x00000000, 0x00000000, 216); 
TEST_RR_OP( 55 , kmada, 0x607fccdc, 0xd7a9f5a0, 0x80000000, 220); 
TEST_RR_OP( 56 , kmada, 0x607fccdc, 0xf2510032, 0x00000000, 224); 
TEST_RR_OP( 57 , kmada, 0x607fdbdc, 0xffffffff, 0x22fdce03, 228); 
TEST_RR_OP( 58 , kmada, 0x60805bdc, 0x80000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , kmada, 0x60805bdc, 0x00000000, 0x00000000, 236); 
TEST_RR_OP( 60 , kmada, 0x3cd85bdc, 0x80000000, 0x47507501, 240); 
TEST_RR_OP( 61 , kmada, 0x3cd85bdc, 0x76321ae5, 0x00000000, 244); 
TEST_RR_OP( 62 , kmada, 0x59af5bdc, 0x80000000, 0xc6529132, 248); 
TEST_RR_OP( 63 , kmada, 0x2281dbdc, 0x6e5bc7dc, 0x80000000, 252); 
TEST_RR_OP( 64 , kmada, 0x2281dbdc, 0x00000000, 0xa993f94f, 256); 
TEST_RR_OP( 65 , kmada, 0x22813d37, 0xffffffff, 0x3c39626c, 260); 
TEST_RR_OP( 66 , kmada, 0x22813d37, 0xffffffff, 0x00000000, 264); 
TEST_RR_OP( 67 , kmada, 0x0e1c3d37, 0x80000000, 0x28cadae7, 268); 
TEST_RR_OP( 68 , kmada, 0x4e1c3d37, 0x80000000, 0x80000000, 272); 
TEST_RR_OP( 69 , kmada, 0x4e1c3d37, 0x00000000, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmada, 0x4e1c3d37, 0xcc345103, 0x00000000, 280); 
TEST_RR_OP( 71 , kmada, 0x4e1cbd37, 0xffffffff, 0x80000000, 284); 
TEST_RR_OP( 72 , kmada, 0x7fffffff, 0x8c0a08ef, 0x80000000, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , kmada, 0x00000000, 0x80000000, 0x00000000, 304); 
TEST_RR_OP( 77 , kmada, 0x00000000, 0x00000000, 0x80000000, 308); 
TEST_RR_OP( 78 , kmada, 0x00000000, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , kmada, 0xd8c70000, 0x80000000, 0x4e728b16, 316); 
TEST_RR_OP( 80 , kmada, 0xa0d00000, 0x6fee10e0, 0x80000000, 320); 
TEST_RR_OP( 81 , kmada, 0x8a2f0000, 0x2d42d10f, 0x80000000, 324); 
TEST_RR_OP( 82 , kmada, 0x8a2f8000, 0x80000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmada, 0x84dfa527, 0x26793ceb, 0x488ebbdb, 332); 
TEST_RR_OP( 84 , kmada, 0x84dfa527, 0x80000000, 0x00000000, 336); 
TEST_RR_OP( 85 , kmada, 0x84e02527, 0xffffffff, 0x80000000, 340); 
TEST_RR_OP( 86 , kmada, 0xad2f2527, 0xaf625c34, 0x80000000, 344); 
TEST_RR_OP( 87 , kmada, 0xad2f2529, 0xffffffff, 0xffffffff, 348); 
TEST_RR_OP( 88 , kmada, 0xad2f2529, 0xdc60ccb4, 0x00000000, 352); 
TEST_RR_OP( 89 , kmada, 0xad2f2529, 0x00000000, 0x89b2d467, 356); 
TEST_RR_OP( 90 , kmada, 0xad2f2529, 0x00000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , kmada, 0xcc87a529, 0xc14f002f, 0x80000000, 364); 
TEST_RR_OP( 92 , kmada, 0xcc87a529, 0x00000000, 0x00000000, 368); 
TEST_RR_OP( 93 , kmada, 0xcc87a529, 0x00000000, 0x80000000, 372); 
TEST_RR_OP( 94 , kmada, 0xcc87a529, 0x00000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmada, 0xe2c75e56, 0x8737a279, 0xa5c8379d, 380); 
TEST_RR_OP( 96 , kmada, 0xe2c75e56, 0x80000000, 0x00000000, 384); 
TEST_RR_OP( 97 , kmada, 0xe2c75e56, 0x00000000, 0xffffffff, 388); 
TEST_RR_OP( 98 , kmada, 0xe2c75e56, 0x9498c0d0, 0x00000000, 392); 
TEST_RR_OP( 99 , kmada, 0xe2c75e56, 0x00000000, 0x00000000, 396); 
TEST_RR_OP( 100 , kmada, 0xe2c75e56, 0xffffffff, 0x00000000, 400); 
TEST_RR_OP( 101 , kmada, 0xe2c75e56, 0x00000000, 0x9e3e5097, 404); 
TEST_RR_OP( 102 , kmada, 0x2281de56, 0x808b3274, 0x80000000, 408); 
TEST_RR_OP( 103 , kmada, 0x2281de56, 0x80000000, 0x00000000, 412); 
TEST_RR_OP( 104 , kmada, 0x6281de56, 0x80000000, 0x80000000, 416); 
TEST_RR_OP( 105 , kmada, 0x6281de56, 0x00000000, 0xffffffff, 420); 
TEST_RR_OP( 106 , kmada, 0x7fffffff, 0x80000000, 0x80000000, 424); 
TEST_CASE( 107 ,428, x14, 1, rdov x14;);
TEST_CASE( 108 ,432, x14, 1, clrov;);
TEST_CASE( 109 ,436, x14, 0, rdov x14;);
TEST_RR_OP( 110 , kmada, 0x2ef2f9be, 0xa28d3b32, 0xc0ae6714, 440); 
TEST_RR_OP( 111 , kmada, 0x2ef379be, 0x80000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , kmada, 0x2ef379be, 0xea921e5c, 0x00000000, 448); 
TEST_RR_OP( 113 , kmada, 0x2ef379be, 0xffffffff, 0x00000000, 452); 
TEST_RR_OP( 114 , kmada, 0xf052f9be, 0x80000000, 0x7d41d6d7, 456); 
TEST_RR_OP( 115 , kmada, 0xf052f9be, 0x00000000, 0xc1831bfc, 460); 
TEST_RR_OP( 116 , kmada, 0xf052f9be, 0x00000000, 0x00000000, 464); 
TEST_RR_OP( 117 , kmada, 0xdb5ef9be, 0x29e858b2, 0x80000000, 468); 
TEST_RR_OP( 118 , kmada, 0xdb5ef9c0, 0xffffffff, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmada, 0xdb5ef9c0, 0x00000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kmada, 0xdb5ef9c0, 0x00000000, 0x80000000, 480); 
TEST_RR_OP( 121 , kmada, 0xdb5ef9c0, 0x00000000, 0xffffffff, 484); 
TEST_RR_OP( 122 , kmada, 0xdb5ed73f, 0x4694dbed, 0xffffffff, 488); 
TEST_RR_OP( 123 , kmada, 0xdb5ed741, 0xffffffff, 0xffffffff, 492); 
TEST_RR_OP( 124 , kmada, 0xdb5ed741, 0xffffffff, 0x00000000, 496); 
TEST_RR_OP( 125 , kmada, 0xe33d5741, 0x80000000, 0xf0432978, 500); 
TEST_RR_OP( 126 , kmada, 0xe33d5741, 0x0da94f39, 0x00000000, 504); 
TEST_RR_OP( 127 , kmada, 0xe33d5741, 0x00000000, 0x00000000, 508); 
TEST_RR_OP( 128 , kmada, 0xe33d5741, 0xffffffff, 0x00000000, 512); 
TEST_RR_OP( 129 , kmada, 0xe33d5741, 0xdd5a4d15, 0x00000000, 516); 
TEST_RR_OP( 130 , kmada, 0xe33d5741, 0xcce5e857, 0x00000000, 520); 
TEST_RR_OP( 131 , kmada, 0x233d5741, 0x80000000, 0x80000000, 524); 
TEST_RR_OP( 132 , kmada, 0x233dd741, 0xffffffff, 0x80000000, 528); 
TEST_RR_OP( 133 , kmada, 0x233dd743, 0xffffffff, 0xffffffff, 532); 
TEST_RR_OP( 134 , kmada, 0x233e5743, 0x80000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmada, 0x233ed743, 0x80000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , kmada, 0x233f5743, 0x80000000, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmada, 0x233f5743, 0x00000000, 0x00000000, 548); 
TEST_RR_OP( 138 , kmada, 0x233f5743, 0x00000000, 0x00000000, 552); 
TEST_RR_OP( 139 , kmada, 0x233ea438, 0x4ac76844, 0xffffffff, 556); 
TEST_RR_OP( 140 , kmada, 0x212a9602, 0xe0b6ecfe, 0x2c33d33c, 560); 
TEST_RR_OP( 141 , kmada, 0x212a9602, 0x00000000, 0x8ebc30d8, 564); 
TEST_RR_OP( 142 , kmada, 0x212a9602, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , kmada, 0x212a9602, 0x00000000, 0x9cb746c7, 572); 
TEST_RR_OP( 144 , kmada, 0x212a9602, 0x00000000, 0xf6f1d8f2, 576); 
TEST_RR_OP( 145 , kmada, 0x212a9602, 0x00000000, 0x00000000, 580); 
TEST_RR_OP( 146 , kmada, 0x212b1602, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , kmada, 0x212b1602, 0x00000000, 0x00000000, 588); 
TEST_RR_OP( 148 , kmada, 0x212b1602, 0x00000000, 0xffffffff, 592); 
TEST_RR_OP( 149 , kmada, 0x44f99602, 0x80000000, 0xb863834b, 596); 
TEST_RR_OP( 150 , kmada, 0x7fffffff, 0x80000000, 0x80000000, 600); 
TEST_CASE( 151 ,604, x14, 1, rdov x14;);
TEST_CASE( 152 ,608, x14, 1, clrov;);
TEST_CASE( 153 ,612, x14, 0, rdov x14;);
TEST_RR_OP( 154 , kmada, 0x40000000, 0x80000000, 0x80000000, 616); 
TEST_RR_OP( 155 , kmada, 0x40000002, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmada, 0x2d7427e8, 0xa768a82e, 0x100b25e1, 624); 
TEST_RR_OP( 157 , kmada, 0x14e36846, 0x41738696, 0xb91e0d96, 628); 
TEST_RR_OP( 158 , kmada, 0x14e36848, 0xffffffff, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmada, 0x14e30d30, 0xdbd77f41, 0xffffffff, 636); 
TEST_RR_OP( 160 , kmada, 0x14e30d32, 0xffffffff, 0xffffffff, 640); 
TEST_RR_OP( 161 , kmada, 0x54e30d32, 0x80000000, 0x80000000, 644); 
TEST_RR_OP( 162 , kmada, 0x54e30d32, 0x00000000, 0x80000000, 648); 
TEST_RR_OP( 163 , kmada, 0x54e30d32, 0x5f9afe9e, 0x00000000, 652); 
TEST_RR_OP( 164 , kmada, 0x4bd50d32, 0x121cbb61, 0x80000000, 656); 
TEST_RR_OP( 165 , kmada, 0x2d198d32, 0x80000000, 0x3d77bf31, 660); 
TEST_RR_OP( 166 , kmada, 0x67af0d32, 0x8ad53c75, 0x80000000, 664); 
TEST_RR_OP( 167 , kmada, 0x67af0d32, 0x00000000, 0x80000000, 668); 
TEST_RR_OP( 168 , kmada, 0x67af0d32, 0x80000000, 0x00000000, 672); 
TEST_RR_OP( 169 , kmada, 0x67af0d32, 0x00000000, 0x77971e37, 676); 
TEST_RR_OP( 170 , kmada, 0x67af1c44, 0x2b35c5b9, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmada, 0x67af1c44, 0xb3c27b57, 0x00000000, 684); 
TEST_RR_OP( 172 , kmada, 0x5fc3ab18, 0x12bd99eb, 0x90e3ff77, 688); 
TEST_RR_OP( 173 , kmada, 0x5fc34d77, 0xffffffff, 0x4ce910b8, 692); 
TEST_RR_OP( 174 , kmada, 0x5fc3ce50, 0xffffffff, 0x992de5fa, 696); 
TEST_RR_OP( 175 , kmada, 0x5fc3ce50, 0x80000000, 0x00000000, 700); 
TEST_RR_OP( 176 , kmada, 0x5fc3ce50, 0x00000000, 0x29189612, 704); 
TEST_RR_OP( 177 , kmada, 0x5fc47750, 0xffffffff, 0x98f9be07, 708); 
TEST_RR_OP( 178 , kmada, 0x6cb70920, 0x01a2d788, 0x4e60b142, 712); 
TEST_RR_OP( 179 , kmada, 0x7fffffff, 0x80000000, 0x80000000, 716); 
TEST_CASE( 180 ,720, x14, 1, rdov x14;);
TEST_CASE( 181 ,724, x14, 1, clrov;);
TEST_CASE( 182 ,728, x14, 0, rdov x14;);
TEST_RR_OP( 183 , kmada, 0x1d58a69b, 0x89ff5bf5, 0x20557b30, 732); 
TEST_RR_OP( 184 , kmada, 0xeba8269b, 0x80000000, 0x6361c3b4, 736); 
TEST_RR_OP( 185 , kmada, 0x2a88a69b, 0x823f9bdb, 0x80000000, 740); 
TEST_RR_OP( 186 , kmada, 0x2a88a6f2, 0xffffffff, 0x2178de31, 744); 
TEST_RR_OP( 187 , kmada, 0x2a88a6f2, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmada, 0x6220a6f2, 0x80000000, 0x90d04590, 752); 
TEST_RR_OP( 189 , kmada, 0x6220a6f2, 0x00000000, 0x80000000, 756); 
TEST_RR_OP( 190 , kmada, 0x62201857, 0xffffffff, 0x5cb531e6, 760); 
TEST_RR_OP( 191 , kmada, 0x62201924, 0xb18d4da6, 0xffffffff, 764); 
TEST_RR_OP( 192 , kmada, 0x62201924, 0x00000000, 0x00000000, 768); 
TEST_RR_OP( 193 , kmada, 0x62201924, 0x00000000, 0x00000000, 772); 
TEST_RR_OP( 194 , kmada, 0x622041e2, 0xffffffff, 0x49058e3d, 776); 
TEST_RR_OP( 195 , kmada, 0x621fc26d, 0xffffffff, 0x3b09446c, 780); 
TEST_RR_OP( 196 , kmada, 0x621fc26d, 0x00000000, 0x2ea64c59, 784); 
TEST_RR_OP( 197 , kmada, 0x622012bf, 0x26288986, 0xffffffff, 788); 
TEST_RR_OP( 198 , kmada, 0x44d592bf, 0x3a9550f7, 0x80000000, 792); 
TEST_RR_OP( 199 , kmada, 0x44d592bf, 0x0bb3ef29, 0x00000000, 796); 

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
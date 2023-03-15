# See LICENSE for license details.
#*****************************************************************************
# kwmmul.u.S
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

TEST_RR_OP( 2 , kwmmul.u, 0xbfeec921, 0x80000000, 0x401136df, 8); 
TEST_RR_OP( 3 , kwmmul.u, 0x00000000, 0xffffffff, 0x0c5f346c, 12); 
TEST_RR_OP( 4 , kwmmul.u, 0x00000000, 0x00000000, 0xffffffff, 16); 
TEST_RR_OP( 5 , kwmmul.u, 0x00000000, 0x00000000, 0x12dce0a1, 20); 
TEST_RR_OP( 6 , kwmmul.u, 0x291b4618, 0x2aea2bd7, 0x7a9b55ba, 24); 
TEST_RR_OP( 7 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 28); 
TEST_RR_OP( 8 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , kwmmul.u, 0x00000000, 0x00000000, 0xa2d6ea9e, 36); 
TEST_RR_OP( 10 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_RR_OP( 14 , kwmmul.u, 0x06a0069b, 0x1d2842a1, 0x1d1587ac, 56); 
TEST_RR_OP( 15 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 60); 
TEST_RR_OP( 16 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 64); 
TEST_RR_OP( 17 , kwmmul.u, 0x88c12411, 0x773edbef, 0x80000000, 68); 
TEST_RR_OP( 18 , kwmmul.u, 0x89cf2ac3, 0x80000000, 0x7630d53d, 72); 
TEST_RR_OP( 19 , kwmmul.u, 0x16708610, 0xb71024be, 0xd89eb3ad, 76); 
TEST_RR_OP( 20 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 80); 
TEST_RR_OP( 21 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 84); 
TEST_RR_OP( 22 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 88); 
TEST_RR_OP( 23 , kwmmul.u, 0x00000000, 0x00000000, 0x8e875793, 92); 
TEST_RR_OP( 24 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 96); 
TEST_RR_OP( 25 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 100); 
TEST_RR_OP( 26 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 108); 
TEST_RR_OP( 28 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 112); 
TEST_RR_OP( 29 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 116); 
TEST_RR_OP( 30 , kwmmul.u, 0x00000000, 0xfc66acbd, 0xffffffff, 120); 
TEST_RR_OP( 31 , kwmmul.u, 0xa70db195, 0x58f24e6b, 0x80000000, 124); 
TEST_RR_OP( 32 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 132); 
TEST_RR_OP( 34 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 136); 
TEST_RR_OP( 35 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 144); 
TEST_CASE( 37 ,148, x14, 1, rdov x14;);
TEST_CASE( 38 ,152, x14, 1, clrov;);
TEST_CASE( 39 ,156, x14, 0, rdov x14;);
TEST_RR_OP( 40 , kwmmul.u, 0x842e5a1b, 0x80000000, 0x7bd1a5e5, 160); 
TEST_RR_OP( 41 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 164); 
TEST_RR_OP( 42 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_RR_OP( 47 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_RR_OP( 52 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 208); 
TEST_RR_OP( 53 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 212); 
TEST_CASE( 54 ,216, x14, 1, rdov x14;);
TEST_CASE( 55 ,220, x14, 1, clrov;);
TEST_CASE( 56 ,224, x14, 0, rdov x14;);
TEST_RR_OP( 57 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 228); 
TEST_RR_OP( 58 , kwmmul.u, 0x00000000, 0xffffffff, 0x15477819, 232); 
TEST_RR_OP( 59 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 236); 
TEST_RR_OP( 60 , kwmmul.u, 0x00000000, 0xffffffff, 0xffffffff, 240); 
TEST_RR_OP( 61 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 244); 
TEST_RR_OP( 62 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 248); 
TEST_RR_OP( 63 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_RR_OP( 68 , kwmmul.u, 0x00000000, 0xffffffff, 0xffffffff, 272); 
TEST_RR_OP( 69 , kwmmul.u, 0x00000000, 0xa3fbf922, 0x00000000, 276); 
TEST_RR_OP( 70 , kwmmul.u, 0x4551eee8, 0x80000000, 0xbaae1118, 280); 
TEST_RR_OP( 71 , kwmmul.u, 0x00000000, 0x00000000, 0xf7bace90, 284); 
TEST_RR_OP( 72 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 288); 
TEST_RR_OP( 73 , kwmmul.u, 0x3376b2e5, 0x99363ebc, 0xbfe9ceb4, 292); 
TEST_RR_OP( 74 , kwmmul.u, 0x00000000, 0xffffffff, 0xffffffff, 296); 
TEST_RR_OP( 75 , kwmmul.u, 0x01ae9e30, 0xfe5161d0, 0x80000000, 300); 
TEST_RR_OP( 76 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 304); 
TEST_RR_OP( 77 , kwmmul.u, 0x00000000, 0x00000000, 0xa15916fe, 308); 
TEST_RR_OP( 78 , kwmmul.u, 0x00000000, 0xffffffff, 0xe38ac44d, 312); 
TEST_RR_OP( 79 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 316); 
TEST_CASE( 80 ,320, x14, 1, rdov x14;);
TEST_CASE( 81 ,324, x14, 1, clrov;);
TEST_CASE( 82 ,328, x14, 0, rdov x14;);
TEST_RR_OP( 83 , kwmmul.u, 0x86719948, 0x798e66b8, 0x80000000, 332); 
TEST_RR_OP( 84 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 336); 
TEST_RR_OP( 85 , kwmmul.u, 0x00000000, 0x00000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 344); 
TEST_RR_OP( 87 , kwmmul.u, 0x00000000, 0xffffffff, 0xffffffff, 348); 
TEST_RR_OP( 88 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 352); 
TEST_RR_OP( 89 , kwmmul.u, 0x00000000, 0xffffffff, 0x242e8250, 356); 
TEST_RR_OP( 90 , kwmmul.u, 0x00000000, 0x11f603b8, 0xffffffff, 360); 
TEST_RR_OP( 91 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 364); 
TEST_RR_OP( 92 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 368); 
TEST_RR_OP( 93 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 372); 
TEST_RR_OP( 94 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 376); 
TEST_RR_OP( 95 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 380); 
TEST_RR_OP( 96 , kwmmul.u, 0x03b737a9, 0xfc48c857, 0x80000000, 384); 
TEST_RR_OP( 97 , kwmmul.u, 0x00000000, 0xffffffff, 0xeb0ae824, 388); 
TEST_RR_OP( 98 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 392); 
TEST_RR_OP( 99 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 396); 
TEST_RR_OP( 100 , kwmmul.u, 0x716ecffe, 0x8e913002, 0x80000000, 400); 
TEST_RR_OP( 101 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 404); 
TEST_RR_OP( 102 , kwmmul.u, 0x00000000, 0x00000000, 0xffffffff, 408); 
TEST_RR_OP( 103 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 412); 
TEST_RR_OP( 104 , kwmmul.u, 0x988fb391, 0x67704c6f, 0x80000000, 416); 
TEST_RR_OP( 105 , kwmmul.u, 0xd0520f4e, 0xc988897d, 0x700cb6d5, 420); 
TEST_RR_OP( 106 , kwmmul.u, 0x00000000, 0xb7352758, 0x00000000, 424); 
TEST_RR_OP( 107 , kwmmul.u, 0x00000001, 0xffffffff, 0x8e6daa80, 428); 
TEST_RR_OP( 108 , kwmmul.u, 0xc403b722, 0x80000000, 0x3bfc48de, 432); 
TEST_RR_OP( 109 , kwmmul.u, 0x0f792ae2, 0xd4c275c7, 0xd2322baa, 436); 
TEST_RR_OP( 110 , kwmmul.u, 0x00000000, 0xeeb6a0ba, 0x00000000, 440); 
TEST_RR_OP( 111 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 444); 
TEST_RR_OP( 112 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 448); 
TEST_RR_OP( 113 , kwmmul.u, 0x00000000, 0x00000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , kwmmul.u, 0xe2a34831, 0x80000000, 0x1d5cb7cf, 456); 
TEST_RR_OP( 115 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 460); 
TEST_RR_OP( 116 , kwmmul.u, 0xe03f5207, 0x80000000, 0x1fc0adf9, 464); 
TEST_RR_OP( 117 , kwmmul.u, 0x114479ba, 0x30308b99, 0x2ddd8c54, 468); 
TEST_RR_OP( 118 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 472); 
TEST_RR_OP( 119 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 480); 
TEST_RR_OP( 121 , kwmmul.u, 0xffffffff, 0xffffffff, 0x7ee746e9, 484); 
TEST_RR_OP( 122 , kwmmul.u, 0xfe09ed66, 0x07c86f8c, 0xdfbecfc5, 488); 
TEST_RR_OP( 123 , kwmmul.u, 0x00000000, 0xebdc2044, 0x00000000, 492); 
TEST_RR_OP( 124 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kwmmul.u, 0x4c634063, 0xb39cbf9d, 0x80000000, 500); 
TEST_RR_OP( 126 , kwmmul.u, 0xffffffff, 0x52e52d65, 0xffffffff, 504); 
TEST_RR_OP( 127 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 508); 
TEST_CASE( 128 ,512, x14, 1, rdov x14;);
TEST_CASE( 129 ,516, x14, 1, clrov;);
TEST_CASE( 130 ,520, x14, 0, rdov x14;);
TEST_RR_OP( 131 , kwmmul.u, 0x00000000, 0x5f1bacf7, 0x00000000, 524); 
TEST_RR_OP( 132 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 528); 
TEST_RR_OP( 133 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 532); 
TEST_RR_OP( 134 , kwmmul.u, 0x062d6c8f, 0x2411cb63, 0x15ec015c, 536); 
TEST_RR_OP( 135 , kwmmul.u, 0xd2d80227, 0x77cddbfb, 0xcfc12ef9, 540); 
TEST_RR_OP( 136 , kwmmul.u, 0x00000000, 0x00000000, 0x6bcf477c, 544); 
TEST_RR_OP( 137 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 548); 
TEST_RR_OP( 138 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 552); 
TEST_RR_OP( 139 , kwmmul.u, 0x0cd9c546, 0x75b3c969, 0x0df9973f, 556); 
TEST_RR_OP( 140 , kwmmul.u, 0x00000000, 0x00000000, 0xffffffff, 560); 
TEST_RR_OP( 141 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 564); 
TEST_RR_OP( 142 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kwmmul.u, 0x00000000, 0xffffffff, 0xffffffff, 580); 
TEST_RR_OP( 146 , kwmmul.u, 0x00000000, 0xffffffff, 0xffffffff, 584); 
TEST_RR_OP( 147 , kwmmul.u, 0xffffffff, 0xffffffff, 0x7e56ecfc, 588); 
TEST_RR_OP( 148 , kwmmul.u, 0x6d4ec4d4, 0x92b13b2c, 0x80000000, 592); 
TEST_RR_OP( 149 , kwmmul.u, 0x00000000, 0xe5ca0168, 0x00000000, 596); 
TEST_RR_OP( 150 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 600); 
TEST_RR_OP( 151 , kwmmul.u, 0x00000000, 0xf4d1dec0, 0x00000000, 604); 
TEST_RR_OP( 152 , kwmmul.u, 0x7ecdcd8c, 0x81323274, 0x80000000, 608); 
TEST_RR_OP( 153 , kwmmul.u, 0x00000000, 0x00000000, 0xf1ce757a, 612); 
TEST_RR_OP( 154 , kwmmul.u, 0x00000000, 0xe6b71a7f, 0xffffffff, 616); 
TEST_RR_OP( 155 , kwmmul.u, 0x00000000, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , kwmmul.u, 0x00000000, 0xd8bec4a1, 0x00000000, 624); 
TEST_RR_OP( 157 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 628); 
TEST_RR_OP( 158 , kwmmul.u, 0x70e135fe, 0x80000000, 0x8f1eca02, 632); 
TEST_RR_OP( 159 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , kwmmul.u, 0x4d8021b6, 0x80000000, 0xb27fde4a, 640); 
TEST_RR_OP( 161 , kwmmul.u, 0x00000000, 0x712eab63, 0x00000000, 644); 
TEST_RR_OP( 162 , kwmmul.u, 0x00000000, 0x00000000, 0xcfb14a26, 648); 
TEST_RR_OP( 163 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 652); 
TEST_RR_OP( 164 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 672); 
TEST_RR_OP( 169 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 676); 
TEST_RR_OP( 170 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , kwmmul.u, 0x00000000, 0x00000000, 0xbf9b7608, 684); 
TEST_RR_OP( 172 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_RR_OP( 176 , kwmmul.u, 0x00000000, 0x05889eb5, 0xffffffff, 704); 
TEST_RR_OP( 177 , kwmmul.u, 0x00000000, 0xffffffff, 0x00000000, 708); 
TEST_RR_OP( 178 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 712); 
TEST_RR_OP( 179 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 716); 
TEST_RR_OP( 180 , kwmmul.u, 0x00000000, 0x00000000, 0x00000000, 720); 
TEST_RR_OP( 181 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 728); 
TEST_RR_OP( 183 , kwmmul.u, 0x017538ca, 0xfe8ac736, 0x80000000, 732); 
TEST_RR_OP( 184 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 740); 
TEST_RR_OP( 186 , kwmmul.u, 0x00000000, 0x00000000, 0x7b116fcc, 744); 
TEST_RR_OP( 187 , kwmmul.u, 0x00000000, 0xffffffff, 0xcb3f8264, 748); 
TEST_RR_OP( 188 , kwmmul.u, 0x00000000, 0x80000000, 0x00000000, 752); 
TEST_RR_OP( 189 , kwmmul.u, 0x00000000, 0x00000000, 0x5bcb369a, 756); 
TEST_RR_OP( 190 , kwmmul.u, 0x00000000, 0xdecad68c, 0x00000000, 760); 
TEST_RR_OP( 191 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 764); 
TEST_RR_OP( 192 , kwmmul.u, 0x472ca1e0, 0xb8d35e20, 0x80000000, 768); 
TEST_RR_OP( 193 , kwmmul.u, 0x00000000, 0x00000000, 0x80000000, 772); 
TEST_RR_OP( 194 , kwmmul.u, 0x7fffffff, 0x80000000, 0x80000000, 776); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_RR_OP( 198 , kwmmul.u, 0x00000001, 0xffffffff, 0x80000000, 792); 
TEST_RR_OP( 199 , kwmmul.u, 0x00000001, 0x80000000, 0xffffffff, 796); 

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
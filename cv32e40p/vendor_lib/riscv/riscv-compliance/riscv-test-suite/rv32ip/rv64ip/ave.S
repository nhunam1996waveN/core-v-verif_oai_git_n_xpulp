# See LICENSE for license details.
#*****************************************************************************
# ave.S
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

TEST_RR_OP( 2 , ave, 0x100000000, 0xffffffff, 0x00000000, 8); 
TEST_RR_OP( 3 , ave, 0xdbb990e7, 0x00000000, 0xb77321cd, 12); 
TEST_RR_OP( 4 , ave, 0x00000000, 0x00000000, 0x00000000, 16); 
TEST_RR_OP( 5 , ave, 0x1931f2109, 0xa63e4211, 0x80000000, 20); 
TEST_RR_OP( 6 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , ave, 0x34eeab54, 0x00000000, 0x69dd56a8, 28); 
TEST_RR_OP( 8 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 32); 
TEST_RR_OP( 9 , ave, 0x1d22e6825, 0xffffffff, 0xa45cd04a, 36); 
TEST_RR_OP( 10 , ave, 0x12118c8e, 0x2423191b, 0x00000000, 40); 
TEST_RR_OP( 11 , ave, 0xca9f2004, 0x153e4008, 0x80000000, 44); 
TEST_RR_OP( 12 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , ave, 0x180000000, 0x80000000, 0x80000000, 52); 
TEST_RR_OP( 14 , ave, 0x100000000, 0x00000000, 0xffffffff, 56); 
TEST_RR_OP( 15 , ave, 0xc32ff46e, 0x00000000, 0x865fe8db, 60); 
TEST_RR_OP( 16 , ave, 0x11e481881, 0x3c903102, 0xffffffff, 64); 
TEST_RR_OP( 17 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 68); 
TEST_RR_OP( 18 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 72); 
TEST_RR_OP( 19 , ave, 0x12154647, 0x00000000, 0x242a8c8e, 76); 
TEST_RR_OP( 20 , ave, 0x118e27ec8, 0x31c4fd90, 0xffffffff, 80); 
TEST_RR_OP( 21 , ave, 0x100000000, 0xffffffff, 0x00000000, 84); 
TEST_RR_OP( 22 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , ave, 0xc0000000, 0x00000000, 0x80000000, 92); 
TEST_RR_OP( 24 , ave, 0xe57e878d, 0x96e7f852, 0x341516c7, 96); 
TEST_RR_OP( 25 , ave, 0x10acfa5d8, 0x547ba17a, 0xc123aa35, 100); 
TEST_RR_OP( 26 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 104); 
TEST_RR_OP( 27 , ave, 0x1c1498324, 0xc0f921e2, 0xc199e466, 108); 
TEST_RR_OP( 28 , ave, 0xf35312ef, 0x80000000, 0x66a625de, 112); 
TEST_RR_OP( 29 , ave, 0xc0000000, 0x00000000, 0x80000000, 116); 
TEST_RR_OP( 30 , ave, 0x180000000, 0x80000000, 0x80000000, 120); 
TEST_RR_OP( 31 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , ave, 0x11965d318, 0xffffffff, 0x32cba630, 128); 
TEST_RR_OP( 33 , ave, 0x1dd758653, 0xffffffff, 0xbaeb0ca7, 132); 
TEST_RR_OP( 34 , ave, 0x00000000, 0x00000000, 0x00000000, 136); 
TEST_RR_OP( 35 , ave, 0xc0000000, 0x80000000, 0x00000000, 140); 
TEST_RR_OP( 36 , ave, 0x180000000, 0x80000000, 0x80000000, 144); 
TEST_RR_OP( 37 , ave, 0x100000000, 0x00000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , ave, 0xed32b4ae, 0x80000000, 0x5a65695b, 152); 
TEST_RR_OP( 39 , ave, 0x00000000, 0x00000000, 0x00000000, 156); 
TEST_RR_OP( 40 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 160); 
TEST_RR_OP( 41 , ave, 0xe7819d7f, 0xcf033afd, 0x00000000, 164); 
TEST_RR_OP( 42 , ave, 0x00000000, 0x00000000, 0x00000000, 168); 
TEST_RR_OP( 43 , ave, 0x180000000, 0x80000000, 0x80000000, 172); 
TEST_RR_OP( 44 , ave, 0x180000000, 0x80000000, 0x80000000, 176); 
TEST_RR_OP( 45 , ave, 0xc0000000, 0x80000000, 0x00000000, 180); 
TEST_RR_OP( 46 , ave, 0x194be5d0d, 0x80000000, 0xa97cba1a, 184); 
TEST_RR_OP( 47 , ave, 0x12b5be1da, 0x56b7c3b4, 0xffffffff, 188); 
TEST_RR_OP( 48 , ave, 0x21b288b5, 0x4365116a, 0x00000000, 192); 
TEST_RR_OP( 49 , ave, 0xe77a3e46, 0x00000000, 0xcef47c8b, 196); 
TEST_RR_OP( 50 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 200); 
TEST_RR_OP( 51 , ave, 0x100000000, 0xffffffff, 0x00000000, 204); 
TEST_RR_OP( 52 , ave, 0x100000000, 0x00000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , ave, 0xc0000000, 0x00000000, 0x80000000, 212); 
TEST_RR_OP( 54 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 216); 
TEST_RR_OP( 55 , ave, 0xcd2f5d63, 0x9a5ebac6, 0x00000000, 220); 
TEST_RR_OP( 56 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , ave, 0x102712527, 0xbb2f777f, 0x49b2d2cf, 228); 
TEST_RR_OP( 58 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 232); 
TEST_RR_OP( 59 , ave, 0xfd10c52f, 0x80000000, 0x7a218a5d, 236); 
TEST_RR_OP( 60 , ave, 0xc0000000, 0x80000000, 0x00000000, 240); 
TEST_RR_OP( 61 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 244); 
TEST_RR_OP( 62 , ave, 0x00000000, 0x00000000, 0x00000000, 248); 
TEST_RR_OP( 63 , ave, 0xc0000000, 0x00000000, 0x80000000, 252); 
TEST_RR_OP( 64 , ave, 0xf5d4ec0b, 0x6ba9d815, 0x80000000, 256); 
TEST_RR_OP( 65 , ave, 0x1eb928579, 0xd7250af3, 0xffffffff, 260); 
TEST_RR_OP( 66 , ave, 0x11d301295, 0xffffffff, 0x3a60252b, 264); 
TEST_RR_OP( 67 , ave, 0xc0000000, 0x00000000, 0x80000000, 268); 
TEST_RR_OP( 68 , ave, 0x100000000, 0xffffffff, 0x00000000, 272); 
TEST_RR_OP( 69 , ave, 0x1dbcaeaa, 0x00000000, 0x3b795d54, 276); 
TEST_RR_OP( 70 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 280); 
TEST_RR_OP( 71 , ave, 0x100000000, 0xffffffff, 0x00000000, 284); 
TEST_RR_OP( 72 , ave, 0xcfd55f33, 0x9faabe65, 0x00000000, 288); 
TEST_RR_OP( 73 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 292); 
TEST_RR_OP( 74 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 296); 
TEST_RR_OP( 75 , ave, 0xe93a390b, 0x52747215, 0x80000000, 300); 
TEST_RR_OP( 76 , ave, 0x00000000, 0x00000000, 0x00000000, 304); 
TEST_RR_OP( 77 , ave, 0xc9600821, 0x92c01041, 0x00000000, 308); 
TEST_RR_OP( 78 , ave, 0x10d15da02, 0x1f6d67df, 0xfabe4c24, 312); 
TEST_RR_OP( 79 , ave, 0x11f63b2ad, 0xffffffff, 0x3ec7655a, 316); 
TEST_RR_OP( 80 , ave, 0xee115a62, 0x00000000, 0xdc22b4c4, 320); 
TEST_RR_OP( 81 , ave, 0x19adff3dc, 0x80000000, 0xb5bfe7b8, 324); 
TEST_RR_OP( 82 , ave, 0xefc94d87, 0x80000000, 0x5f929b0d, 328); 
TEST_RR_OP( 83 , ave, 0x00000000, 0x00000000, 0x00000000, 332); 
TEST_RR_OP( 84 , ave, 0x1e1a2f4c5, 0xc345e98b, 0xffffffff, 336); 
TEST_RR_OP( 85 , ave, 0x1b08bf860, 0xe117f0bf, 0x80000000, 340); 
TEST_RR_OP( 86 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 344); 
TEST_RR_OP( 87 , ave, 0x00000000, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , ave, 0x00000000, 0x00000000, 0x00000000, 352); 
TEST_RR_OP( 89 , ave, 0x1f234cbb6, 0xffffffff, 0xe469976c, 356); 
TEST_RR_OP( 90 , ave, 0xe2438934, 0xc4871268, 0x00000000, 360); 
TEST_RR_OP( 91 , ave, 0xf0e0d344, 0x61c1a688, 0x80000000, 364); 
TEST_RR_OP( 92 , ave, 0x18e438fb5, 0x9c871f6a, 0x80000000, 368); 
TEST_RR_OP( 93 , ave, 0x100000000, 0xffffffff, 0x00000000, 372); 
TEST_RR_OP( 94 , ave, 0xca4e32e6, 0x149c65cc, 0x80000000, 376); 
TEST_RR_OP( 95 , ave, 0x100000000, 0xffffffff, 0x00000000, 380); 
TEST_RR_OP( 96 , ave, 0xc0000000, 0x00000000, 0x80000000, 384); 
TEST_RR_OP( 97 , ave, 0xdeb5f4c1, 0x00000000, 0xbd6be981, 388); 
TEST_RR_OP( 98 , ave, 0x1a87cc4f6, 0x80679047, 0xd091f9a5, 392); 
TEST_RR_OP( 99 , ave, 0x0e7f921c, 0x1cff2438, 0x00000000, 396); 
TEST_RR_OP( 100 , ave, 0x1b81b1e92, 0xf0363d23, 0x80000000, 400); 
TEST_RR_OP( 101 , ave, 0x180000000, 0x80000000, 0x80000000, 404); 
TEST_RR_OP( 102 , ave, 0x100000000, 0xffffffff, 0x00000000, 408); 
TEST_RR_OP( 103 , ave, 0x180000000, 0x80000000, 0x80000000, 412); 
TEST_RR_OP( 104 , ave, 0xd462052c, 0x80000000, 0x28c40a58, 416); 
TEST_RR_OP( 105 , ave, 0x00000000, 0x00000000, 0x00000000, 420); 
TEST_RR_OP( 106 , ave, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , ave, 0x1c1569c02, 0x99457840, 0xe967bfc4, 428); 
TEST_RR_OP( 108 , ave, 0xfe353770, 0x065b9340, 0xf60edba0, 432); 
TEST_RR_OP( 109 , ave, 0xdd511508, 0x00000000, 0xbaa22a10, 436); 
TEST_RR_OP( 110 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 440); 
TEST_RR_OP( 111 , ave, 0xe4500e81, 0x48a01d01, 0x80000000, 444); 
TEST_RR_OP( 112 , ave, 0xc0000000, 0x00000000, 0x80000000, 448); 
TEST_RR_OP( 113 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 452); 
TEST_RR_OP( 114 , ave, 0x1e0830c19, 0xffffffff, 0xc1061832, 456); 
TEST_RR_OP( 115 , ave, 0x180000000, 0x80000000, 0x80000000, 460); 
TEST_RR_OP( 116 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 464); 
TEST_RR_OP( 117 , ave, 0x19248d81e, 0xa491b03c, 0x80000000, 468); 
TEST_RR_OP( 118 , ave, 0x1a5d8a843, 0x80000000, 0xcbb15086, 472); 
TEST_RR_OP( 119 , ave, 0x180000000, 0x80000000, 0x80000000, 476); 
TEST_RR_OP( 120 , ave, 0xda1d4d4a, 0x9eb91964, 0x15818130, 480); 
TEST_RR_OP( 121 , ave, 0xc0000000, 0x00000000, 0x80000000, 484); 
TEST_RR_OP( 122 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , ave, 0xc0000000, 0x00000000, 0x80000000, 492); 
TEST_RR_OP( 124 , ave, 0xcf994f60, 0x9f329ebf, 0x00000000, 496); 
TEST_RR_OP( 125 , ave, 0x100000000, 0x00000000, 0xffffffff, 500); 
TEST_RR_OP( 126 , ave, 0xc0000000, 0x80000000, 0x00000000, 504); 
TEST_RR_OP( 127 , ave, 0xc0000000, 0x00000000, 0x80000000, 508); 
TEST_RR_OP( 128 , ave, 0xcb352085, 0x966a4109, 0x00000000, 512); 
TEST_RR_OP( 129 , ave, 0x100000000, 0x00000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , ave, 0x137e15eb, 0x26fc2bd5, 0x00000000, 520); 
TEST_RR_OP( 131 , ave, 0x0540bfec, 0x00000000, 0x0a817fd7, 524); 
TEST_RR_OP( 132 , ave, 0x1c8e1b499, 0x91c36933, 0xffffffff, 528); 
TEST_RR_OP( 133 , ave, 0xcd5c7510, 0x1ab8ea20, 0x80000000, 532); 
TEST_RR_OP( 134 , ave, 0x292f1a9c, 0x00000000, 0x525e3538, 536); 
TEST_RR_OP( 135 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , ave, 0xc0000000, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , ave, 0x1e5c851e1, 0xffffffff, 0xcb90a3c3, 548); 
TEST_RR_OP( 138 , ave, 0x106812c27, 0xffffffff, 0x0d02584f, 552); 
TEST_RR_OP( 139 , ave, 0xc0000000, 0x00000000, 0x80000000, 556); 
TEST_RR_OP( 140 , ave, 0xdc064b15, 0xb80c9629, 0x00000000, 560); 
TEST_RR_OP( 141 , ave, 0xc0000000, 0x80000000, 0x00000000, 564); 
TEST_RR_OP( 142 , ave, 0x00000000, 0x00000000, 0x00000000, 568); 
TEST_RR_OP( 143 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 572); 
TEST_RR_OP( 144 , ave, 0xea033d2e, 0x0c584418, 0xc7ae3644, 576); 
TEST_RR_OP( 145 , ave, 0x185fbd3fc, 0x8bf7a7f7, 0x80000000, 580); 
TEST_RR_OP( 146 , ave, 0x00000000, 0x00000000, 0x00000000, 584); 
TEST_RR_OP( 147 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , ave, 0xf4e80d13, 0x80000000, 0x69d01a25, 592); 
TEST_RR_OP( 149 , ave, 0xf54f8645, 0x81c44071, 0x68dacc18, 596); 
TEST_RR_OP( 150 , ave, 0x1c17a6817, 0xffffffff, 0x82f4d02f, 600); 
TEST_RR_OP( 151 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , ave, 0xc0000000, 0x00000000, 0x80000000, 608); 
TEST_RR_OP( 153 , ave, 0xc0000000, 0x80000000, 0x00000000, 612); 
TEST_RR_OP( 154 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 616); 
TEST_RR_OP( 155 , ave, 0x19ea07fc9, 0xbd40ff91, 0x80000000, 620); 
TEST_RR_OP( 156 , ave, 0xc0000000, 0x00000000, 0x80000000, 624); 
TEST_RR_OP( 157 , ave, 0xc0000000, 0x00000000, 0x80000000, 628); 
TEST_RR_OP( 158 , ave, 0x1c295843b, 0x852b0877, 0xffffffff, 632); 
TEST_RR_OP( 159 , ave, 0xc679ea43, 0x8a5ec0c5, 0x029513c1, 636); 
TEST_RR_OP( 160 , ave, 0xdfee9331, 0x3fdd2661, 0x80000000, 640); 
TEST_RR_OP( 161 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 644); 
TEST_RR_OP( 162 , ave, 0x1ad7c0e0d, 0x80000000, 0xdaf81c1a, 648); 
TEST_RR_OP( 163 , ave, 0xdfbfb652, 0x24c2a0ee, 0x9abccbb6, 652); 
TEST_RR_OP( 164 , ave, 0xcd4846b6, 0x1a908d6c, 0x80000000, 656); 
TEST_RR_OP( 165 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 660); 
TEST_RR_OP( 166 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 664); 
TEST_RR_OP( 167 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 668); 
TEST_RR_OP( 168 , ave, 0xe45c7e08, 0xc8b8fc0f, 0x00000000, 672); 
TEST_RR_OP( 169 , ave, 0x180000000, 0x80000000, 0x80000000, 676); 
TEST_RR_OP( 170 , ave, 0xc0000000, 0x00000000, 0x80000000, 680); 
TEST_RR_OP( 171 , ave, 0xf2ed7472, 0xe5dae8e3, 0x00000000, 684); 
TEST_RR_OP( 172 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 688); 
TEST_RR_OP( 173 , ave, 0x180000000, 0x80000000, 0x80000000, 692); 
TEST_RR_OP( 174 , ave, 0xee646fe0, 0x00000000, 0xdcc8dfbf, 696); 
TEST_RR_OP( 175 , ave, 0x109c597d9, 0x138b2fb3, 0xffffffff, 700); 
TEST_RR_OP( 176 , ave, 0xc0000000, 0x80000000, 0x00000000, 704); 
TEST_RR_OP( 177 , ave, 0x1a683f72f, 0x80000000, 0xcd07ee5e, 708); 
TEST_RR_OP( 178 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 712); 
TEST_RR_OP( 179 , ave, 0x180000000, 0x80000000, 0x80000000, 716); 
TEST_RR_OP( 180 , ave, 0x2811bcf7, 0x00000000, 0x502379ee, 720); 
TEST_RR_OP( 181 , ave, 0xc0000000, 0x00000000, 0x80000000, 724); 
TEST_RR_OP( 182 , ave, 0x1c0000000, 0xffffffff, 0x80000000, 728); 
TEST_RR_OP( 183 , ave, 0x1166ab3f7, 0xffffffff, 0x2cd567ee, 732); 
TEST_RR_OP( 184 , ave, 0xc0000000, 0x80000000, 0x00000000, 736); 
TEST_RR_OP( 185 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , ave, 0x100000000, 0x00000000, 0xffffffff, 744); 
TEST_RR_OP( 187 , ave, 0x124de405e, 0x49bc80bc, 0xffffffff, 748); 
TEST_RR_OP( 188 , ave, 0xc2828733, 0x85050e65, 0x00000000, 752); 
TEST_RR_OP( 189 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 756); 
TEST_RR_OP( 190 , ave, 0x19a3042bd, 0xb460857a, 0x80000000, 760); 
TEST_RR_OP( 191 , ave, 0x1c0000000, 0x80000000, 0xffffffff, 764); 
TEST_RR_OP( 192 , ave, 0x1ffffffff, 0xffffffff, 0xffffffff, 768); 
TEST_RR_OP( 193 , ave, 0x180000000, 0x80000000, 0x80000000, 772); 
TEST_RR_OP( 194 , ave, 0x132e2f286, 0x65c5e50c, 0xffffffff, 776); 
TEST_RR_OP( 195 , ave, 0xdb4b89dd, 0x00000000, 0xb69713ba, 780); 
TEST_RR_OP( 196 , ave, 0x100000000, 0x00000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , ave, 0x00000000, 0x00000000, 0x00000000, 788); 
TEST_RR_OP( 198 , ave, 0xc0000000, 0x00000000, 0x80000000, 792); 
TEST_RR_OP( 199 , ave, 0x5693c017, 0x6d717744, 0x3fb608e9, 796); 

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
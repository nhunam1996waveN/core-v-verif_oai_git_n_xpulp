# See LICENSE for license details.
#*****************************************************************************
# ksubw.S
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

TEST_RR_OP( 2 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 12); 
TEST_RR_OP( 4 , ksubw, 0xffffffffc8de404b, 0x80000000, 0xb721bfb5, 16); 
TEST_RR_OP( 5 , ksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 20); 
TEST_RR_OP( 6 , ksubw, 0x00000000, 0x00000000, 0x00000000, 24); 
TEST_RR_OP( 7 , ksubw, 0x7fffffff, 0x62ccf6e3, 0x80000000, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_RR_OP( 11 , ksubw, 0xffffffff9cfc2830, 0x80000000, 0xe303d7d0, 44); 
TEST_RR_OP( 12 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 48); 
TEST_RR_OP( 13 , ksubw, 0xffffffffea90296d, 0x80000000, 0x956fd693, 52); 
TEST_RR_OP( 14 , ksubw, 0xffffffff80000000, 0x80000000, 0x658f9917, 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_RR_OP( 18 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 72); 
TEST_RR_OP( 19 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 76); 
TEST_RR_OP( 20 , ksubw, 0xffffffff9da0f372, 0x80000000, 0xe25f0c8e, 80); 
TEST_RR_OP( 21 , ksubw, 0x00000000, 0x80000000, 0x80000000, 84); 
TEST_RR_OP( 22 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 92); 
TEST_RR_OP( 24 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 96); 
TEST_RR_OP( 25 , ksubw, 0xffffffff99839006, 0xffffffff, 0x667c6ff9, 100); 
TEST_RR_OP( 26 , ksubw, 0xffffffff997c29e3, 0xffffffff, 0x6683d61c, 104); 
TEST_RR_OP( 27 , ksubw, 0xffffffff80000000, 0x80000000, 0x141cbef9, 108); 
TEST_CASE( 28 ,112, x14, 1, rdov x14;);
TEST_CASE( 29 ,116, x14, 1, clrov;);
TEST_CASE( 30 ,120, x14, 0, rdov x14;);
TEST_RR_OP( 31 , ksubw, 0x00000000, 0x00000000, 0x00000000, 124); 
TEST_RR_OP( 32 , ksubw, 0xffffffff80000000, 0x80000000, 0x555e1849, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , ksubw, 0x380f93c0, 0xffffffff, 0xc7f06c3f, 144); 
TEST_RR_OP( 37 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 156); 
TEST_RR_OP( 40 , ksubw, 0x7fffffff, 0x00000000, 0x80000000, 160); 
TEST_CASE( 41 ,164, x14, 1, rdov x14;);
TEST_CASE( 42 ,168, x14, 1, clrov;);
TEST_CASE( 43 ,172, x14, 0, rdov x14;);
TEST_RR_OP( 44 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 176); 
TEST_RR_OP( 45 , ksubw, 0x00000000, 0x00000000, 0x00000000, 180); 
TEST_RR_OP( 46 , ksubw, 0x00000000, 0x00000000, 0x00000000, 184); 
TEST_RR_OP( 47 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 188); 
TEST_RR_OP( 48 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 192); 
TEST_RR_OP( 49 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 196); 
TEST_RR_OP( 50 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 200); 
TEST_RR_OP( 51 , ksubw, 0xffffffffdff57b04, 0xdff57b04, 0x00000000, 204); 
TEST_RR_OP( 52 , ksubw, 0xffffffff8e2d01d4, 0xad84356e, 0x1f57339a, 208); 
TEST_RR_OP( 53 , ksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 212); 
TEST_RR_OP( 54 , ksubw, 0x00911ed9, 0x00911ed9, 0x00000000, 216); 
TEST_RR_OP( 55 , ksubw, 0x00000000, 0x00000000, 0x00000000, 220); 
TEST_RR_OP( 56 , ksubw, 0x00000000, 0x00000000, 0x00000000, 224); 
TEST_RR_OP( 57 , ksubw, 0xffffffffa44925ee, 0xa44925ee, 0x00000000, 228); 
TEST_RR_OP( 58 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 232); 
TEST_RR_OP( 59 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 236); 
TEST_RR_OP( 60 , ksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 240); 
TEST_RR_OP( 61 , ksubw, 0x00000000, 0x00000000, 0x00000000, 244); 
TEST_RR_OP( 62 , ksubw, 0x7fffffff, 0x00000000, 0x80000000, 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_RR_OP( 66 , ksubw, 0x00000000, 0x80000000, 0x80000000, 264); 
TEST_RR_OP( 67 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 268); 
TEST_RR_OP( 68 , ksubw, 0x227eb11d, 0x020fbe5a, 0xdf910d3d, 272); 
TEST_RR_OP( 69 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 276); 
TEST_RR_OP( 70 , ksubw, 0x00000000, 0x80000000, 0x80000000, 280); 
TEST_RR_OP( 71 , ksubw, 0xffffffffdfac20a1, 0xdfac20a0, 0xffffffff, 284); 
TEST_RR_OP( 72 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 288); 
TEST_RR_OP( 73 , ksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 292); 
TEST_RR_OP( 74 , ksubw, 0xffffffffeac1c98f, 0xeac1c98f, 0x00000000, 296); 
TEST_RR_OP( 75 , ksubw, 0x00000000, 0x80000000, 0x80000000, 300); 
TEST_RR_OP( 76 , ksubw, 0xffffffffcc9bbe66, 0xcc9bbe66, 0x00000000, 304); 
TEST_RR_OP( 77 , ksubw, 0xffffffff87a03af5, 0x00000000, 0x785fc50b, 308); 
TEST_RR_OP( 78 , ksubw, 0x2940f0f2, 0x2940f0f2, 0x00000000, 312); 
TEST_RR_OP( 79 , ksubw, 0x00000000, 0x00000000, 0x00000000, 316); 
TEST_RR_OP( 80 , ksubw, 0xffffffff80000000, 0xc8c0a4fa, 0x74a64b02, 320); 
TEST_CASE( 81 ,324, x14, 1, rdov x14;);
TEST_CASE( 82 ,328, x14, 1, clrov;);
TEST_CASE( 83 ,332, x14, 0, rdov x14;);
TEST_RR_OP( 84 , ksubw, 0xffffffff96405684, 0x96405684, 0x00000000, 336); 
TEST_RR_OP( 85 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 340); 
TEST_RR_OP( 86 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 344); 
TEST_RR_OP( 87 , ksubw, 0x33d8a610, 0xd3fed19a, 0xa0262b8a, 348); 
TEST_RR_OP( 88 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 352); 
TEST_RR_OP( 89 , ksubw, 0xffffffffb66b3c35, 0xb66b3c35, 0x00000000, 356); 
TEST_RR_OP( 90 , ksubw, 0x7e145ac1, 0x7e145ac0, 0xffffffff, 360); 
TEST_RR_OP( 91 , ksubw, 0xfffffffffec299f2, 0x19c02d57, 0x1afd9365, 364); 
TEST_RR_OP( 92 , ksubw, 0x7fffffff, 0x00000000, 0x80000000, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , ksubw, 0xffffffffa750b1a2, 0x00000000, 0x58af4e5e, 388); 
TEST_RR_OP( 98 , ksubw, 0x5ca0f1ef, 0xffffffff, 0xa35f0e10, 392); 
TEST_RR_OP( 99 , ksubw, 0xffffffffdc54faf3, 0xdc54faf2, 0xffffffff, 396); 
TEST_RR_OP( 100 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 400); 
TEST_RR_OP( 101 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 404); 
TEST_RR_OP( 102 , ksubw, 0x0224ffb7, 0xffffffff, 0xfddb0048, 408); 
TEST_RR_OP( 103 , ksubw, 0xffffffffb5fd4354, 0x00000000, 0x4a02bcac, 412); 
TEST_RR_OP( 104 , ksubw, 0x51ee3eb4, 0x00000000, 0xae11c14c, 416); 
TEST_RR_OP( 105 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 420); 
TEST_RR_OP( 106 , ksubw, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , ksubw, 0x00000000, 0x80000000, 0x80000000, 428); 
TEST_RR_OP( 108 , ksubw, 0x10aa05df, 0x10aa05de, 0xffffffff, 432); 
TEST_RR_OP( 109 , ksubw, 0xffffffffa3e29f5d, 0x00000000, 0x5c1d60a3, 436); 
TEST_RR_OP( 110 , ksubw, 0x0094f375, 0x0094f375, 0x00000000, 440); 
TEST_RR_OP( 111 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , ksubw, 0x502b94bf, 0xffffffff, 0xafd46b40, 448); 
TEST_RR_OP( 113 , ksubw, 0x00000000, 0x80000000, 0x80000000, 452); 
TEST_RR_OP( 114 , ksubw, 0xffffffff80110d7c, 0x80110d7c, 0x00000000, 456); 
TEST_RR_OP( 115 , ksubw, 0xffffffff80000000, 0x80000000, 0x1a96a63c, 460); 
TEST_CASE( 116 ,464, x14, 1, rdov x14;);
TEST_CASE( 117 ,468, x14, 1, clrov;);
TEST_CASE( 118 ,472, x14, 0, rdov x14;);
TEST_RR_OP( 119 , ksubw, 0xffffffffea9dda5c, 0x00000000, 0x156225a4, 476); 
TEST_RR_OP( 120 , ksubw, 0x60f0d809, 0x7a868e7c, 0x1995b673, 480); 
TEST_RR_OP( 121 , ksubw, 0x79746046, 0xf9746046, 0x80000000, 484); 
TEST_RR_OP( 122 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 488); 
TEST_RR_OP( 123 , ksubw, 0x013e4548, 0x013e4547, 0xffffffff, 492); 
TEST_RR_OP( 124 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 496); 
TEST_RR_OP( 125 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 500); 
TEST_RR_OP( 126 , ksubw, 0x0a57ed2a, 0x0a57ed2a, 0x00000000, 504); 
TEST_RR_OP( 127 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 508); 
TEST_RR_OP( 128 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 512); 
TEST_RR_OP( 129 , ksubw, 0xffffffff9d8f99a5, 0x9d8f99a4, 0xffffffff, 516); 
TEST_RR_OP( 130 , ksubw, 0xffffffff83cafb50, 0x83cafb50, 0x00000000, 520); 
TEST_RR_OP( 131 , ksubw, 0x3151ef5d, 0xb151ef5d, 0x80000000, 524); 
TEST_RR_OP( 132 , ksubw, 0x00000000, 0x80000000, 0x80000000, 528); 
TEST_RR_OP( 133 , ksubw, 0xfffffffff93fa831, 0xffffffff, 0x06c057ce, 532); 
TEST_RR_OP( 134 , ksubw, 0x7fffffff, 0x00000000, 0x80000000, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , ksubw, 0x602772fe, 0x00000000, 0x9fd88d02, 552); 
TEST_RR_OP( 139 , ksubw, 0x23831008, 0xa3831008, 0x80000000, 556); 
TEST_RR_OP( 140 , ksubw, 0x00000000, 0x80000000, 0x80000000, 560); 
TEST_RR_OP( 141 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 564); 
TEST_RR_OP( 142 , ksubw, 0x67a0ec40, 0xffffffff, 0x985f13bf, 568); 
TEST_RR_OP( 143 , ksubw, 0x067cfb5d, 0xffffffff, 0xf98304a2, 572); 
TEST_RR_OP( 144 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 576); 
TEST_RR_OP( 145 , ksubw, 0xffffffffa4f1185d, 0xa4f1185c, 0xffffffff, 580); 
TEST_RR_OP( 146 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 584); 
TEST_RR_OP( 147 , ksubw, 0xffffffffb54a5538, 0xb54a5537, 0xffffffff, 588); 
TEST_RR_OP( 148 , ksubw, 0x5ff5fe20, 0x3d931c27, 0xdd9d1e07, 592); 
TEST_RR_OP( 149 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 596); 
TEST_RR_OP( 150 , ksubw, 0x35901e2f, 0xffffffff, 0xca6fe1d0, 600); 
TEST_RR_OP( 151 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 608); 
TEST_RR_OP( 153 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 612); 
TEST_RR_OP( 154 , ksubw, 0xffffffffef8bede0, 0xffffffff, 0x1074121f, 616); 
TEST_RR_OP( 155 , ksubw, 0xffffffffd126fd63, 0xd126fd62, 0xffffffff, 620); 
TEST_RR_OP( 156 , ksubw, 0x68919905, 0x00000000, 0x976e66fb, 624); 
TEST_RR_OP( 157 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 628); 
TEST_RR_OP( 158 , ksubw, 0x49bb4f54, 0x00000000, 0xb644b0ac, 632); 
TEST_RR_OP( 159 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 636); 
TEST_RR_OP( 160 , ksubw, 0xffffffff80000000, 0xc0236cb5, 0x58ca1b50, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 656); 
TEST_RR_OP( 165 , ksubw, 0xffffffffd0be3a13, 0xd0be3a13, 0x00000000, 660); 
TEST_RR_OP( 166 , ksubw, 0xfffffffff491a759, 0x00000000, 0x0b6e58a7, 664); 
TEST_RR_OP( 167 , ksubw, 0x7fffffff, 0x00000000, 0x80000000, 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_RR_OP( 171 , ksubw, 0x00000000, 0x80000000, 0x80000000, 684); 
TEST_RR_OP( 172 , ksubw, 0x00000000, 0x80000000, 0x80000000, 688); 
TEST_RR_OP( 173 , ksubw, 0x7fffffff, 0x00000000, 0x80000000, 692); 
TEST_CASE( 174 ,696, x14, 1, rdov x14;);
TEST_CASE( 175 ,700, x14, 1, clrov;);
TEST_CASE( 176 ,704, x14, 0, rdov x14;);
TEST_RR_OP( 177 , ksubw, 0xffffffffb4ad9d20, 0x80000000, 0xcb5262e0, 708); 
TEST_RR_OP( 178 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 712); 
TEST_RR_OP( 179 , ksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 720); 
TEST_RR_OP( 181 , ksubw, 0x7fffffff, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 728); 
TEST_RR_OP( 183 , ksubw, 0x00000000, 0x00000000, 0x00000000, 732); 
TEST_RR_OP( 184 , ksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 736); 
TEST_RR_OP( 185 , ksubw, 0xffffffffffe4f6d8, 0xffffffff, 0x001b0927, 740); 
TEST_RR_OP( 186 , ksubw, 0xffffffffaa06b75d, 0x00000000, 0x55f948a3, 744); 
TEST_RR_OP( 187 , ksubw, 0x7fffffff, 0x1d8ec164, 0x80000000, 748); 
TEST_CASE( 188 ,752, x14, 1, rdov x14;);
TEST_CASE( 189 ,756, x14, 1, clrov;);
TEST_CASE( 190 ,760, x14, 0, rdov x14;);
TEST_RR_OP( 191 , ksubw, 0xffffffff98718e19, 0x98718e18, 0xffffffff, 764); 
TEST_RR_OP( 192 , ksubw, 0xffffffff80000000, 0x80000000, 0x5f7cee8e, 768); 
TEST_CASE( 193 ,772, x14, 1, rdov x14;);
TEST_CASE( 194 ,776, x14, 1, clrov;);
TEST_CASE( 195 ,780, x14, 0, rdov x14;);
TEST_RR_OP( 196 , ksubw, 0xffffffff80000001, 0x80000000, 0xffffffff, 784); 
TEST_RR_OP( 197 , ksubw, 0x00000001, 0x00000000, 0xffffffff, 788); 
TEST_RR_OP( 198 , ksubw, 0xffffffffde52b7f2, 0xde52b7f1, 0xffffffff, 792); 
TEST_RR_OP( 199 , ksubw, 0x00000000, 0xffffffff, 0xffffffff, 796); 

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
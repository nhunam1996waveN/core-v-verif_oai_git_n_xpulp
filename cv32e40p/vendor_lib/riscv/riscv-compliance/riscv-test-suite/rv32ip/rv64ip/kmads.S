# See LICENSE for license details.
#*****************************************************************************
# kmads.S
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

TEST_RR_OP( 2 , kmads, 0x00000000, 0x00000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmads, 0x270f8000, 0x80000000, 0xb1e1276a, 12); 
TEST_RR_OP( 4 , kmads, 0x20985387, 0x20eaea0d, 0xd206f989, 16); 
TEST_RR_OP( 5 , kmads, 0x2098d387, 0x80000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , kmads, 0x20995387, 0xffffffff, 0x80000000, 24); 
TEST_RR_OP( 7 , kmads, 0x20997a7b, 0xffffffff, 0xeeee15e2, 28); 
TEST_RR_OP( 8 , kmads, 0x209996dc, 0xffffffff, 0x365352b4, 32); 
TEST_RR_OP( 9 , kmads, 0x209996dc, 0xffffffff, 0x00000000, 36); 
TEST_RR_OP( 10 , kmads, 0x209a16dc, 0x80000000, 0xffffffff, 40); 
TEST_RR_OP( 11 , kmads, 0x209a16dc, 0x00000000, 0x36528617, 44); 
TEST_RR_OP( 12 , kmads, 0x209a16dc, 0xbfeb9e03, 0x00000000, 48); 
TEST_RR_OP( 13 , kmads, 0x209a16dc, 0x80000000, 0x00000000, 52); 
TEST_RR_OP( 14 , kmads, 0x209a4150, 0xffffffff, 0xf82b229f, 56); 
TEST_RR_OP( 15 , kmads, 0x209a4150, 0xffffffff, 0xffffffff, 60); 
TEST_RR_OP( 16 , kmads, 0x209a4150, 0xffffffff, 0x00000000, 64); 
TEST_RR_OP( 17 , kmads, 0x209a4150, 0x10dfa9d0, 0x00000000, 68); 
TEST_RR_OP( 18 , kmads, 0x609a4150, 0x80000000, 0x80000000, 72); 
TEST_RR_OP( 19 , kmads, 0x609a4150, 0xffffffff, 0xffffffff, 76); 
TEST_RR_OP( 20 , kmads, 0x609ac150, 0xffffffff, 0x80000000, 80); 
TEST_RR_OP( 21 , kmads, 0x348869d5, 0x5faa0e2f, 0x8dc9191b, 84); 
TEST_RR_OP( 22 , kmads, 0x348869d5, 0x00000000, 0x00000000, 88); 
TEST_RR_OP( 23 , kmads, 0x348869d5, 0x00000000, 0xeb720fe4, 92); 
TEST_RR_OP( 24 , kmads, 0x34879680, 0x612a8dd5, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmads, 0x34879680, 0x00000000, 0xcd8e71b4, 100); 
TEST_RR_OP( 26 , kmads, 0x1d521680, 0x80000000, 0x2e6b1ef4, 104); 
TEST_RR_OP( 27 , kmads, 0x1d521680, 0xffffffff, 0x00000000, 108); 
TEST_RR_OP( 28 , kmads, 0x1d521680, 0xffffffff, 0x00000000, 112); 
TEST_RR_OP( 29 , kmads, 0x1d529680, 0x80000000, 0xffffffff, 116); 
TEST_RR_OP( 30 , kmads, 0x1d529680, 0x00000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kmads, 0x1d529680, 0x80000000, 0x00000000, 124); 
TEST_RR_OP( 32 , kmads, 0x1d525e01, 0x65492cca, 0xffffffff, 128); 
TEST_RR_OP( 33 , kmads, 0x5d525e01, 0x80000000, 0x80000000, 132); 
TEST_RR_OP( 34 , kmads, 0x5d525e01, 0x00000000, 0xcae002d5, 136); 
TEST_RR_OP( 35 , kmads, 0x5d52de01, 0xffffffff, 0x80000000, 140); 
TEST_RR_OP( 36 , kmads, 0x5d52de01, 0x00000000, 0x00000000, 144); 
TEST_RR_OP( 37 , kmads, 0x5d52de01, 0xfe2357dd, 0x00000000, 148); 
TEST_RR_OP( 38 , kmads, 0x5d535e01, 0x80000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmads, 0x3bba5e01, 0x80000000, 0x43325ae4, 156); 
TEST_RR_OP( 40 , kmads, 0x3bba5e01, 0xffffffff, 0xffffffff, 160); 
TEST_RR_OP( 41 , kmads, 0x4ff1de01, 0x80000000, 0xd7917c98, 164); 
TEST_RR_OP( 42 , kmads, 0x4ff1de01, 0x00000000, 0x00000000, 168); 
TEST_RR_OP( 43 , kmads, 0x4ff1de01, 0x80000000, 0x00000000, 172); 
TEST_RR_OP( 44 , kmads, 0x4ff1de01, 0x80000000, 0x00000000, 176); 
TEST_RR_OP( 45 , kmads, 0x34037d97, 0xf353c21f, 0x3be098b6, 180); 
TEST_RR_OP( 46 , kmads, 0x3403fd97, 0x80000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , kmads, 0x3403fd97, 0x00000000, 0x80000000, 188); 
TEST_RR_OP( 48 , kmads, 0x3403fd97, 0xffffffff, 0x00000000, 192); 
TEST_RR_OP( 49 , kmads, 0x7403fd97, 0x80000000, 0x80000000, 196); 
TEST_RR_OP( 50 , kmads, 0x5c88aa65, 0xd8c08f1e, 0x7a23f537, 200); 
TEST_RR_OP( 51 , kmads, 0x4cc62a65, 0x1f8594ff, 0x80000000, 204); 
TEST_RR_OP( 52 , kmads, 0x4cc5cd7d, 0xffffffff, 0x6d811099, 208); 
TEST_RR_OP( 53 , kmads, 0x4cc5ba15, 0xffffffff, 0xa7b2944a, 212); 
TEST_RR_OP( 54 , kmads, 0x4cc5ba15, 0x00000000, 0xffffffff, 216); 
TEST_RR_OP( 55 , kmads, 0x51753a15, 0xf6a16b57, 0x80000000, 220); 
TEST_RR_OP( 56 , kmads, 0x51753a15, 0x80000000, 0x00000000, 224); 
TEST_RR_OP( 57 , kmads, 0x51753a15, 0xaef3b8c1, 0x00000000, 228); 
TEST_RR_OP( 58 , kmads, 0x51753a15, 0x00000000, 0x80000000, 232); 
TEST_RR_OP( 59 , kmads, 0x6018ba15, 0x80000000, 0xe2b9c673, 236); 
TEST_RR_OP( 60 , kmads, 0x60ec1785, 0xbf2c3f97, 0x66869428, 240); 
TEST_RR_OP( 61 , kmads, 0x711a7a81, 0xbd86ef41, 0xc8841b1c, 244); 
TEST_RR_OP( 62 , kmads, 0x711a7a81, 0x80000000, 0x00000000, 248); 
TEST_RR_OP( 63 , kmads, 0x711a7a81, 0x00000000, 0x80000000, 252); 
TEST_RR_OP( 64 , kmads, 0x711a7a81, 0x00000000, 0x00000000, 256); 
TEST_RR_OP( 65 , kmads, 0x7fffffff, 0x80000000, 0x80000000, 260); 
TEST_CASE( 66 ,264, x14, 1, rdov x14;);
TEST_CASE( 67 ,268, x14, 1, clrov;);
TEST_CASE( 68 ,272, x14, 0, rdov x14;);
TEST_RR_OP( 69 , kmads, 0x00000000, 0xffffffff, 0x00000000, 276); 
TEST_RR_OP( 70 , kmads, 0x00008000, 0x80000000, 0xffffffff, 280); 
TEST_RR_OP( 71 , kmads, 0x00008000, 0x00000000, 0x00000000, 284); 
TEST_RR_OP( 72 , kmads, 0x07b40000, 0x80000000, 0xf099eb33, 288); 
TEST_RR_OP( 73 , kmads, 0x07b40000, 0x80000000, 0x00000000, 292); 
TEST_RR_OP( 74 , kmads, 0x07b48000, 0x80000000, 0xffffffff, 296); 
TEST_RR_OP( 75 , kmads, 0x07b48000, 0x00000000, 0x80000000, 300); 
TEST_RR_OP( 76 , kmads, 0x07b4c140, 0x832ac46a, 0xffffffff, 304); 
TEST_RR_OP( 77 , kmads, 0x07b4c140, 0x00000000, 0x767ed351, 308); 
TEST_RR_OP( 78 , kmads, 0x07b4c140, 0x00000000, 0xffffffff, 312); 
TEST_RR_OP( 79 , kmads, 0x07b54140, 0xffffffff, 0x80000000, 316); 
TEST_RR_OP( 80 , kmads, 0x07b57701, 0xffffffff, 0x30d86699, 320); 
TEST_RR_OP( 81 , kmads, 0x07b57701, 0x00000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , kmads, 0x47b57701, 0x80000000, 0x80000000, 328); 
TEST_RR_OP( 83 , kmads, 0x47b57701, 0x00000000, 0xffffffff, 332); 
TEST_RR_OP( 84 , kmads, 0x47b57701, 0x00000000, 0x00000000, 336); 
TEST_RR_OP( 85 , kmads, 0x47b57701, 0x00000000, 0x00000000, 340); 
TEST_RR_OP( 86 , kmads, 0x47b5f701, 0xffffffff, 0x80000000, 344); 
TEST_RR_OP( 87 , kmads, 0x47b67701, 0x80000000, 0xffffffff, 348); 
TEST_RR_OP( 88 , kmads, 0x47b67701, 0xffffffff, 0x00000000, 352); 
TEST_RR_OP( 89 , kmads, 0x17a0f701, 0x80000000, 0x602bf9e3, 356); 
TEST_RR_OP( 90 , kmads, 0x17a0f701, 0x80000000, 0x00000000, 360); 
TEST_RR_OP( 91 , kmads, 0x4f097701, 0x912f01f8, 0x80000000, 364); 
TEST_RR_OP( 92 , kmads, 0x4f097701, 0xffffffff, 0x00000000, 368); 
TEST_RR_OP( 93 , kmads, 0x4f097701, 0x00000000, 0x80000000, 372); 
TEST_RR_OP( 94 , kmads, 0x4f09f701, 0x80000000, 0xffffffff, 376); 
TEST_RR_OP( 95 , kmads, 0x4f09a7e7, 0xffffffff, 0x6b4b1c31, 380); 
TEST_RR_OP( 96 , kmads, 0x4f09a7e7, 0x00000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , kmads, 0x4f09a7e7, 0x00000000, 0x00000000, 388); 
TEST_RR_OP( 98 , kmads, 0x45f071c3, 0xfbdcddda, 0x6334c7d2, 392); 
TEST_RR_OP( 99 , kmads, 0x45f0f1c3, 0x80000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , kmads, 0x7fffffff, 0x80000000, 0x84fee3b5, 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_RR_OP( 104 , kmads, 0x00000000, 0xb1662f8c, 0x00000000, 416); 
TEST_RR_OP( 105 , kmads, 0xfe92d976, 0x3cf4be8a, 0x76f48ba9, 420); 
TEST_RR_OP( 106 , kmads, 0xfe933d05, 0xdd0a4099, 0xffffffff, 424); 
TEST_RR_OP( 107 , kmads, 0xfe930ad6, 0xffffffff, 0x7f184ce9, 428); 
TEST_RR_OP( 108 , kmads, 0x1819d91a, 0xbf2e67d3, 0xa6e6f8b0, 432); 
TEST_RR_OP( 109 , kmads, 0x1819d91a, 0x00000000, 0xbcbc15d2, 436); 
TEST_RR_OP( 110 , kmads, 0x181a0b95, 0xffffffff, 0x326564e0, 440); 
TEST_RR_OP( 111 , kmads, 0x181a8b95, 0xffffffff, 0x80000000, 444); 
TEST_RR_OP( 112 , kmads, 0x181a8b95, 0x80000000, 0x00000000, 448); 
TEST_RR_OP( 113 , kmads, 0x181b0b95, 0xffffffff, 0x80000000, 452); 
TEST_RR_OP( 114 , kmads, 0x181b0b95, 0x00000000, 0x41499720, 456); 
TEST_RR_OP( 115 , kmads, 0x181b0b95, 0x25d406d3, 0x00000000, 460); 
TEST_RR_OP( 116 , kmads, 0x181b0b95, 0x00000000, 0x02110ae5, 464); 
TEST_RR_OP( 117 , kmads, 0x181b0b95, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kmads, 0x181b0b95, 0x00000000, 0x80000000, 472); 
TEST_RR_OP( 119 , kmads, 0x581b0b95, 0x80000000, 0x80000000, 476); 
TEST_RR_OP( 120 , kmads, 0x581b0b95, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , kmads, 0x581a906f, 0xfbdc80b6, 0xffffffff, 484); 
TEST_RR_OP( 122 , kmads, 0x581a906f, 0x5fcb92ae, 0x00000000, 488); 
TEST_RR_OP( 123 , kmads, 0x47bf906f, 0x20b60d16, 0x80000000, 492); 
TEST_RR_OP( 124 , kmads, 0x47bf906f, 0x00000000, 0x00000000, 496); 
TEST_RR_OP( 125 , kmads, 0x47c0106f, 0x80000000, 0xffffffff, 500); 
TEST_RR_OP( 126 , kmads, 0x5971906f, 0x80000000, 0xdc9d395f, 504); 
TEST_RR_OP( 127 , kmads, 0x5971906f, 0x00000000, 0x80000000, 508); 
TEST_RR_OP( 128 , kmads, 0x444d906f, 0x2a48b69d, 0x80000000, 512); 
TEST_RR_OP( 129 , kmads, 0x444d906f, 0x00000000, 0x0d15d5e1, 516); 
TEST_RR_OP( 130 , kmads, 0x444d906f, 0x00000000, 0x80000000, 520); 
TEST_RR_OP( 131 , kmads, 0x444d906f, 0x00000000, 0xffffffff, 524); 
TEST_RR_OP( 132 , kmads, 0x444d906f, 0x00000000, 0xa8b2fd91, 528); 
TEST_RR_OP( 133 , kmads, 0x444d906f, 0x00000000, 0x2a3cc151, 532); 
TEST_RR_OP( 134 , kmads, 0x444d906f, 0x00000000, 0x80000000, 536); 
TEST_RR_OP( 135 , kmads, 0x444d906f, 0x00000000, 0xab0cde4c, 540); 
TEST_RR_OP( 136 , kmads, 0x444ce070, 0x30218022, 0xffffffff, 544); 
TEST_RR_OP( 137 , kmads, 0x444d1ad8, 0xffffffff, 0x8173bbdb, 548); 
TEST_RR_OP( 138 , kmads, 0x444dff78, 0xffffffff, 0x94827922, 552); 
TEST_RR_OP( 139 , kmads, 0x444dff78, 0x00000000, 0x00000000, 556); 
TEST_RR_OP( 140 , kmads, 0x444dff78, 0x80000000, 0x00000000, 560); 
TEST_RR_OP( 141 , kmads, 0x444dff78, 0x00000000, 0x0c180fc0, 564); 
TEST_RR_OP( 142 , kmads, 0x444dff78, 0xffffffff, 0x00000000, 568); 
TEST_RR_OP( 143 , kmads, 0x444dff78, 0x00000000, 0xffffffff, 572); 
TEST_RR_OP( 144 , kmads, 0x444dff78, 0xba3230ab, 0x00000000, 576); 
TEST_RR_OP( 145 , kmads, 0x429a4c80, 0xdbc445d4, 0xdae21980, 580); 
TEST_RR_OP( 146 , kmads, 0x429a4c80, 0x00000000, 0x80000000, 584); 
TEST_RR_OP( 147 , kmads, 0x429a4c80, 0x00000000, 0x8e8bb469, 588); 
TEST_RR_OP( 148 , kmads, 0x429a4c80, 0x00000000, 0x31f79d78, 592); 
TEST_RR_OP( 149 , kmads, 0x4eb34c80, 0x80000000, 0xe7ce57dd, 596); 
TEST_RR_OP( 150 , kmads, 0x4eb3ac7b, 0x1fc37fbe, 0xffffffff, 600); 
TEST_RR_OP( 151 , kmads, 0x4eb42c7b, 0xffffffff, 0x80000000, 604); 
TEST_RR_OP( 152 , kmads, 0x4eb42c7b, 0x80000000, 0x00000000, 608); 
TEST_RR_OP( 153 , kmads, 0x4eb42c7b, 0xdebc5b0d, 0x00000000, 612); 
TEST_RR_OP( 154 , kmads, 0x3b1f2c7b, 0x272a16f3, 0x80000000, 616); 
TEST_RR_OP( 155 , kmads, 0x3b1ea886, 0x3fe7bbf2, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmads, 0x3b1ea886, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , kmads, 0x3b1ea886, 0x00000000, 0xd58678b3, 628); 
TEST_RR_OP( 158 , kmads, 0x3b1f2886, 0x80000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmads, 0x3b1f2886, 0x80000000, 0x00000000, 636); 
TEST_RR_OP( 160 , kmads, 0x3b1f4499, 0x45526165, 0xffffffff, 640); 
TEST_RR_OP( 161 , kmads, 0x3b1f4499, 0xffffffff, 0xffffffff, 644); 
TEST_RR_OP( 162 , kmads, 0x3b1fc499, 0x80000000, 0xffffffff, 648); 
TEST_RR_OP( 163 , kmads, 0x3b1fc499, 0xffffffff, 0x00000000, 652); 
TEST_RR_OP( 164 , kmads, 0x3b1f4289, 0x4e93cc83, 0xffffffff, 656); 
TEST_RR_OP( 165 , kmads, 0x3b1f4289, 0xffffffff, 0x00000000, 660); 
TEST_RR_OP( 166 , kmads, 0x3b1f4289, 0x80000000, 0x00000000, 664); 
TEST_RR_OP( 167 , kmads, 0x3b1f4289, 0xc8f6e745, 0x00000000, 668); 
TEST_RR_OP( 168 , kmads, 0x3b1fc289, 0xffffffff, 0x80000000, 672); 
TEST_RR_OP( 169 , kmads, 0x7b1fc289, 0x80000000, 0x80000000, 676); 
TEST_RR_OP( 170 , kmads, 0x7fffffff, 0xd67913a2, 0x80000000, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_RR_OP( 174 , kmads, 0x00008000, 0xffffffff, 0x80000000, 696); 
TEST_RR_OP( 175 , kmads, 0x00008000, 0x00000000, 0x00000000, 700); 
TEST_RR_OP( 176 , kmads, 0xf7cc0000, 0x1069d5af, 0x80000000, 704); 
TEST_RR_OP( 177 , kmads, 0x37cc0000, 0x80000000, 0x80000000, 708); 
TEST_RR_OP( 178 , kmads, 0x37cc0000, 0x00000000, 0xffffffff, 712); 
TEST_RR_OP( 179 , kmads, 0x37cc8000, 0x80000000, 0xffffffff, 716); 
TEST_RR_OP( 180 , kmads, 0x37cc8000, 0xc9473779, 0x00000000, 720); 
TEST_RR_OP( 181 , kmads, 0x77cc8000, 0x80000000, 0x80000000, 724); 
TEST_RR_OP( 182 , kmads, 0x77cc8000, 0x00000000, 0xffffffff, 728); 
TEST_RR_OP( 183 , kmads, 0x77cc8ef1, 0x86449535, 0xffffffff, 732); 
TEST_RR_OP( 184 , kmads, 0x77cc8ef1, 0x00000000, 0x5788c1d2, 736); 
TEST_RR_OP( 185 , kmads, 0x7fffffff, 0x80000000, 0x934cb38e, 740); 
TEST_CASE( 186 ,744, x14, 1, rdov x14;);
TEST_CASE( 187 ,748, x14, 1, clrov;);
TEST_CASE( 188 ,752, x14, 0, rdov x14;);
TEST_RR_OP( 189 , kmads, 0x005e0000, 0xff443dcd, 0x80000000, 756); 
TEST_RR_OP( 190 , kmads, 0x005e8000, 0xffffffff, 0x80000000, 760); 
TEST_RR_OP( 191 , kmads, 0xf1820000, 0x1db93063, 0x80000000, 764); 
TEST_RR_OP( 192 , kmads, 0xf1820000, 0xffffffff, 0x00000000, 768); 
TEST_RR_OP( 193 , kmads, 0xf181c056, 0xffffffff, 0xfb2dbb83, 772); 
TEST_RR_OP( 194 , kmads, 0xf181c056, 0x80000000, 0x00000000, 776); 
TEST_RR_OP( 195 , kmads, 0xf181c056, 0x80000000, 0x00000000, 780); 
TEST_RR_OP( 196 , kmads, 0xf181c056, 0x00000000, 0x80000000, 784); 
TEST_RR_OP( 197 , kmads, 0xf181c056, 0xefae2516, 0x00000000, 788); 
TEST_RR_OP( 198 , kmads, 0x00e79d67, 0x7e2d1bda, 0x05598ab2, 792); 
TEST_RR_OP( 199 , kmads, 0x00e81d67, 0x80000000, 0xffffffff, 796); 

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
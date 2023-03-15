# See LICENSE for license details.
#*****************************************************************************
# kmmwt2.S
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

TEST_RR_OP( 2 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 8); 
TEST_RR_OP( 3 , kmmwt2, 0x0000bb16, 0xa274f032, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 16); 
TEST_RR_OP( 5 , kmmwt2, 0x8f900000, 0x80000000, 0x70704471, 20); 
TEST_RR_OP( 6 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 24); 
TEST_RR_OP( 7 , kmmwt2, 0x00000000, 0x0dd1f6f1, 0x00000000, 28); 
TEST_RR_OP( 8 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 32); 
TEST_RR_OP( 9 , kmmwt2, 0xeae50000, 0x80000000, 0x151b330c, 36); 
TEST_RR_OP( 10 , kmmwt2, 0x3c5f25a8, 0x570b5ff6, 0x58c72f29, 40); 
TEST_RR_OP( 11 , kmmwt2, 0xffffffff, 0xffffffff, 0x1cb2bd62, 44); 
TEST_RR_OP( 12 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , kmmwt2, 0x00000000, 0x00000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kmmwt2, 0x00000000, 0x00000000, 0x0411f603, 60); 
TEST_RR_OP( 16 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 64); 
TEST_RR_OP( 17 , kmmwt2, 0x1bc02cb8, 0xc95f487f, 0xbefa1621, 68); 
TEST_RR_OP( 18 , kmmwt2, 0x00000000, 0xffffffff, 0x9633869b, 72); 
TEST_RR_OP( 19 , kmmwt2, 0x00000000, 0x00000000, 0x8c20ef54, 76); 
TEST_RR_OP( 20 , kmmwt2, 0xfffffe23, 0x00ee0686, 0xffffffff, 80); 
TEST_RR_OP( 21 , kmmwt2, 0x00000000, 0x00000000, 0xfe55df3e, 84); 
TEST_RR_OP( 22 , kmmwt2, 0x00000000, 0x00000000, 0xffffffff, 88); 
TEST_RR_OP( 23 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 92); 
TEST_RR_OP( 24 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 96); 
TEST_RR_OP( 25 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 100); 
TEST_RR_OP( 26 , kmmwt2, 0x7fffffff, 0x80000000, 0x80000000, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 120); 
TEST_RR_OP( 31 , kmmwt2, 0x000071f6, 0xc7048b82, 0xffffffff, 124); 
TEST_RR_OP( 32 , kmmwt2, 0x00000000, 0xffffffff, 0xfedfef10, 128); 
TEST_RR_OP( 33 , kmmwt2, 0x00000000, 0xa29b42a2, 0x00000000, 132); 
TEST_RR_OP( 34 , kmmwt2, 0x00000000, 0x00000000, 0xb3d1005a, 136); 
TEST_RR_OP( 35 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 140); 
TEST_RR_OP( 36 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 144); 
TEST_RR_OP( 37 , kmmwt2, 0xffffaaff, 0x2a8002df, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmmwt2, 0x00000000, 0x00000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmmwt2, 0x4dec43cb, 0xb213bc35, 0x80000000, 156); 
TEST_RR_OP( 40 , kmmwt2, 0xffffffff, 0xffffffff, 0x4c0a9536, 160); 
TEST_RR_OP( 41 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 164); 
TEST_RR_OP( 42 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , kmmwt2, 0x00000000, 0x882751a7, 0x00000000, 172); 
TEST_RR_OP( 44 , kmmwt2, 0x00000000, 0x109d6eb4, 0x00000000, 176); 
TEST_RR_OP( 45 , kmmwt2, 0x7fffffff, 0x80000000, 0x80000000, 180); 
TEST_CASE( 46 ,184, x14, 1, rdov x14;);
TEST_CASE( 47 ,188, x14, 1, clrov;);
TEST_CASE( 48 ,192, x14, 0, rdov x14;);
TEST_RR_OP( 49 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 196); 
TEST_RR_OP( 50 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 200); 
TEST_RR_OP( 51 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 204); 
TEST_RR_OP( 52 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 208); 
TEST_RR_OP( 53 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 212); 
TEST_RR_OP( 54 , kmmwt2, 0x00000000, 0x00000000, 0x00000000, 216); 
TEST_RR_OP( 55 , kmmwt2, 0x00000000, 0xe5064fb7, 0x00000000, 220); 
TEST_RR_OP( 56 , kmmwt2, 0x00000000, 0x00000000, 0x00000000, 224); 
TEST_RR_OP( 57 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 228); 
TEST_RR_OP( 58 , kmmwt2, 0xcad6aea4, 0x3529515c, 0x80000000, 232); 
TEST_RR_OP( 59 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 236); 
TEST_RR_OP( 60 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 240); 
TEST_RR_OP( 61 , kmmwt2, 0xeebb7e31, 0x137081ab, 0x8e4d744c, 244); 
TEST_RR_OP( 62 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 248); 
TEST_RR_OP( 63 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 252); 
TEST_RR_OP( 64 , kmmwt2, 0x75e5aa66, 0x8a1a559a, 0x80000000, 256); 
TEST_RR_OP( 65 , kmmwt2, 0xfb330000, 0x80000000, 0x04cd2cf1, 260); 
TEST_RR_OP( 66 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 264); 
TEST_RR_OP( 67 , kmmwt2, 0xa93b0000, 0x80000000, 0x56c5bee4, 268); 
TEST_RR_OP( 68 , kmmwt2, 0x00000000, 0x00000000, 0xc893b588, 272); 
TEST_RR_OP( 69 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 276); 
TEST_RR_OP( 70 , kmmwt2, 0x00000000, 0xffffffff, 0xf07f9c4d, 280); 
TEST_RR_OP( 71 , kmmwt2, 0xffff304d, 0x67d9701d, 0xffffffff, 284); 
TEST_RR_OP( 72 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 288); 
TEST_RR_OP( 73 , kmmwt2, 0x7fffffff, 0x80000000, 0x80000000, 292); 
TEST_CASE( 74 ,296, x14, 1, rdov x14;);
TEST_CASE( 75 ,300, x14, 1, clrov;);
TEST_CASE( 76 ,304, x14, 0, rdov x14;);
TEST_RR_OP( 77 , kmmwt2, 0x00000000, 0x00000000, 0xffffffff, 308); 
TEST_RR_OP( 78 , kmmwt2, 0x18f36595, 0xe70c9a6b, 0x80000000, 312); 
TEST_RR_OP( 79 , kmmwt2, 0x00000000, 0x00000000, 0x00000000, 316); 
TEST_RR_OP( 80 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 320); 
TEST_RR_OP( 81 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , kmmwt2, 0x7fffffff, 0x80000000, 0x80000000, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , kmmwt2, 0x00000000, 0x00000000, 0xffffffff, 344); 
TEST_RR_OP( 87 , kmmwt2, 0x892f0000, 0x80000000, 0x76d1e6a5, 348); 
TEST_RR_OP( 88 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 352); 
TEST_RR_OP( 89 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 356); 
TEST_RR_OP( 90 , kmmwt2, 0x00003f17, 0xe0744abd, 0xffffffff, 360); 
TEST_RR_OP( 91 , kmmwt2, 0xc580b173, 0x3a7f4e8d, 0x80000000, 364); 
TEST_RR_OP( 92 , kmmwt2, 0x7fffffff, 0x80000000, 0x80000000, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , kmmwt2, 0x00000000, 0x00000000, 0xd909a85a, 384); 
TEST_RR_OP( 97 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 388); 
TEST_RR_OP( 98 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 396); 
TEST_RR_OP( 100 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 400); 
TEST_RR_OP( 101 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 404); 
TEST_RR_OP( 102 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 408); 
TEST_RR_OP( 103 , kmmwt2, 0xcfd6b7a9, 0x8f14e0e0, 0x36982d4d, 412); 
TEST_RR_OP( 104 , kmmwt2, 0x7fffffff, 0x80000000, 0x80000000, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , kmmwt2, 0x0000bf5b, 0xa05238b3, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmmwt2, 0xffffffff, 0xffffffff, 0x1330545c, 436); 
TEST_RR_OP( 110 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 440); 
TEST_RR_OP( 111 , kmmwt2, 0x00000000, 0x00000000, 0xcd2f65e0, 444); 
TEST_RR_OP( 112 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 448); 
TEST_RR_OP( 113 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 456); 
TEST_RR_OP( 115 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 460); 
TEST_RR_OP( 116 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 464); 
TEST_RR_OP( 117 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 468); 
TEST_RR_OP( 118 , kmmwt2, 0x00000000, 0x00000000, 0xffffffff, 472); 
TEST_RR_OP( 119 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 476); 
TEST_RR_OP( 120 , kmmwt2, 0x00000000, 0xb77e36c4, 0x00000000, 480); 
TEST_RR_OP( 121 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 484); 
TEST_RR_OP( 122 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 488); 
TEST_RR_OP( 123 , kmmwt2, 0x00000000, 0x3a8e14d5, 0x00000000, 492); 
TEST_RR_OP( 124 , kmmwt2, 0x0fa2003a, 0xd2ed4766, 0xd39b2503, 496); 
TEST_RR_OP( 125 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 500); 
TEST_RR_OP( 126 , kmmwt2, 0x00000000, 0x00000000, 0x220cc2ad, 504); 
TEST_RR_OP( 127 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmmwt2, 0x00000000, 0x00000000, 0x00000000, 512); 
TEST_RR_OP( 129 , kmmwt2, 0x000003fa, 0xfe02d91d, 0xffffffff, 516); 
TEST_RR_OP( 130 , kmmwt2, 0x00000000, 0x00000000, 0xffffffff, 520); 
TEST_RR_OP( 131 , kmmwt2, 0xffffce3d, 0x18e12370, 0xffffffff, 524); 
TEST_RR_OP( 132 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 528); 
TEST_RR_OP( 133 , kmmwt2, 0xf6ed1134, 0xaff6ab73, 0x0e834cbe, 532); 
TEST_RR_OP( 134 , kmmwt2, 0xfdc3f002, 0x0463599f, 0xbed15088, 536); 
TEST_RR_OP( 135 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 540); 
TEST_RR_OP( 136 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 548); 
TEST_RR_OP( 138 , kmmwt2, 0x2a56c0bf, 0xadb54140, 0xbe25ba6a, 552); 
TEST_RR_OP( 139 , kmmwt2, 0xfd434fce, 0x02bcb032, 0x80000000, 556); 
TEST_RR_OP( 140 , kmmwt2, 0x00000000, 0x00000000, 0x00000000, 560); 
TEST_RR_OP( 141 , kmmwt2, 0x13f55c43, 0x3bec40c9, 0x2aa23ccf, 564); 
TEST_RR_OP( 142 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 568); 
TEST_RR_OP( 143 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 572); 
TEST_RR_OP( 144 , kmmwt2, 0x4658ee7e, 0x71e56711, 0x4f0f71dd, 576); 
TEST_RR_OP( 145 , kmmwt2, 0x00000000, 0x00000000, 0x5777d5ea, 580); 
TEST_RR_OP( 146 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 584); 
TEST_RR_OP( 147 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 588); 
TEST_RR_OP( 148 , kmmwt2, 0x8c52dd07, 0x7bb0a6e9, 0x884b3bc0, 592); 
TEST_RR_OP( 149 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , kmmwt2, 0xd08f0000, 0x80000000, 0x2f71b52d, 600); 
TEST_RR_OP( 151 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 604); 
TEST_RR_OP( 152 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 608); 
TEST_RR_OP( 153 , kmmwt2, 0x7fffffff, 0x80000000, 0x80000000, 612); 
TEST_CASE( 154 ,616, x14, 1, rdov x14;);
TEST_CASE( 155 ,620, x14, 1, clrov;);
TEST_CASE( 156 ,624, x14, 0, rdov x14;);
TEST_RR_OP( 157 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 628); 
TEST_RR_OP( 158 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmmwt2, 0x00000000, 0xffffffff, 0xd1477093, 636); 
TEST_RR_OP( 160 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 640); 
TEST_RR_OP( 161 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , kmmwt2, 0x00000000, 0x00000000, 0xe2448e27, 648); 
TEST_RR_OP( 163 , kmmwt2, 0x52393a7f, 0xadc6c581, 0x80000000, 652); 
TEST_RR_OP( 164 , kmmwt2, 0xffffffff, 0xffffffff, 0x1b986fc1, 656); 
TEST_RR_OP( 165 , kmmwt2, 0x0000e3f1, 0x8e07364e, 0xffffffff, 660); 
TEST_RR_OP( 166 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 664); 
TEST_RR_OP( 167 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 668); 
TEST_RR_OP( 168 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , kmmwt2, 0x00000000, 0xffffffff, 0xb16a0497, 676); 
TEST_RR_OP( 170 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 680); 
TEST_RR_OP( 171 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 684); 
TEST_RR_OP( 172 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 688); 
TEST_RR_OP( 173 , kmmwt2, 0x00000000, 0x00000000, 0x413da9e0, 692); 
TEST_RR_OP( 174 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 696); 
TEST_RR_OP( 175 , kmmwt2, 0x8794c8e3, 0x786b371d, 0x80000000, 700); 
TEST_RR_OP( 176 , kmmwt2, 0x00000000, 0x00000000, 0xffffffff, 704); 
TEST_RR_OP( 177 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 708); 
TEST_RR_OP( 178 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 712); 
TEST_RR_OP( 179 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 716); 
TEST_RR_OP( 180 , kmmwt2, 0x00000000, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP( 181 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 724); 
TEST_RR_OP( 182 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 728); 
TEST_RR_OP( 183 , kmmwt2, 0x3932c5b3, 0x73dff2bb, 0x3f2f293b, 732); 
TEST_RR_OP( 184 , kmmwt2, 0x00000000, 0xd28efb49, 0x00000000, 736); 
TEST_RR_OP( 185 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 740); 
TEST_RR_OP( 186 , kmmwt2, 0x00000000, 0x8a85b4eb, 0x00000000, 744); 
TEST_RR_OP( 187 , kmmwt2, 0x00000000, 0x80000000, 0x00000000, 748); 
TEST_RR_OP( 188 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 752); 
TEST_RR_OP( 189 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 756); 
TEST_RR_OP( 190 , kmmwt2, 0x00000001, 0xffffffff, 0x80000000, 760); 
TEST_RR_OP( 191 , kmmwt2, 0x00000000, 0x00000000, 0x80000000, 764); 
TEST_RR_OP( 192 , kmmwt2, 0x00000000, 0x00000000, 0x74e391cd, 768); 
TEST_RR_OP( 193 , kmmwt2, 0x00010000, 0x80000000, 0xffffffff, 772); 
TEST_RR_OP( 194 , kmmwt2, 0xfffff685, 0x04bd4189, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 780); 
TEST_RR_OP( 196 , kmmwt2, 0xffff86a4, 0x3cadc9a6, 0xffffffff, 784); 
TEST_RR_OP( 197 , kmmwt2, 0x00000000, 0xffffffff, 0x00000000, 788); 
TEST_RR_OP( 198 , kmmwt2, 0x00000000, 0x00000000, 0x811af9c2, 792); 
TEST_RR_OP( 199 , kmmwt2, 0x0000a385, 0xae3d7a3b, 0xffffffff, 796); 

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
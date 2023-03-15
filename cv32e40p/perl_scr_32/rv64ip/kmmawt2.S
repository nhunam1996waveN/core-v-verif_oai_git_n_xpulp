# See LICENSE for license details.
#*****************************************************************************
# kmmawt2.S
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

TEST_RR_OP( 2 , kmmawt2, 0x00000000, 0xffffffff, 0xffffffff, 8); 
TEST_RR_OP( 3 , kmmawt2, 0xffffffff, 0xffffffff, 0x4e205227, 12); 
TEST_RR_OP( 4 , kmmawt2, 0xffffffff, 0xffffffff, 0x00000000, 16); 
TEST_RR_OP( 5 , kmmawt2, 0xffffffff, 0xb952ef62, 0x00000000, 20); 
TEST_RR_OP( 6 , kmmawt2, 0xffffffff, 0x00000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , kmmawt2, 0xffffffff, 0x00000000, 0x80000000, 28); 
TEST_RR_OP( 8 , kmmawt2, 0xffffffff, 0x74e631cf, 0x00000000, 32); 
TEST_RR_OP( 9 , kmmawt2, 0xfffffffe, 0xffffffff, 0x09a9e412, 36); 
TEST_RR_OP( 10 , kmmawt2, 0xfffffffe, 0x80000000, 0x00000000, 40); 
TEST_RR_OP( 11 , kmmawt2, 0xfffffffe, 0x00000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , kmmawt2, 0xfffffffe, 0x00000000, 0xffffffff, 48); 
TEST_RR_OP( 13 , kmmawt2, 0xfffffffe, 0x00000000, 0x76f21daf, 52); 
TEST_RR_OP( 14 , kmmawt2, 0xfffffffe, 0x80000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kmmawt2, 0xfffffffe, 0xa81157b9, 0x00000000, 60); 
TEST_RR_OP( 16 , kmmawt2, 0xfffffffe, 0xffffffff, 0x00000000, 64); 
TEST_RR_OP( 17 , kmmawt2, 0xfffffffe, 0xffffffff, 0xc952dcab, 68); 
TEST_RR_OP( 18 , kmmawt2, 0xfffffffe, 0x86f027fa, 0x00000000, 72); 
TEST_RR_OP( 19 , kmmawt2, 0xfffffffe, 0x00000000, 0x4a61043f, 76); 
TEST_RR_OP( 20 , kmmawt2, 0xfffffffe, 0xffffffff, 0x00000000, 80); 
TEST_RR_OP( 21 , kmmawt2, 0xfffffffe, 0x00000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmmawt2, 0xfffffffe, 0xffffffff, 0x00000000, 88); 
TEST_RR_OP( 23 , kmmawt2, 0x7ffffffd, 0x80000000, 0x80000000, 92); 
TEST_CASE( 24 ,96, x14, 1, rdov x14;);
TEST_CASE( 25 ,100, x14, 1, clrov;);
TEST_CASE( 26 ,104, x14, 0, rdov x14;);
TEST_RR_OP( 27 , kmmawt2, 0x00000000, 0x00000000, 0xcaffd8e0, 108); 
TEST_RR_OP( 28 , kmmawt2, 0xcf77f201, 0x77c6e853, 0xcc23e304, 112); 
TEST_RR_OP( 29 , kmmawt2, 0x1f7c1730, 0xaffbdad1, 0x80000000, 116); 
TEST_RR_OP( 30 , kmmawt2, 0x1f7c1730, 0x00000000, 0x00000000, 120); 
TEST_RR_OP( 31 , kmmawt2, 0x1f7c172f, 0xffffffff, 0x2289f48e, 124); 
TEST_RR_OP( 32 , kmmawt2, 0x1f7c172f, 0x00000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , kmmawt2, 0xa69788c4, 0x78e48e6b, 0x80000000, 132); 
TEST_RR_OP( 34 , kmmawt2, 0xa69788c4, 0xffffffff, 0xffffffff, 136); 
TEST_RR_OP( 35 , kmmawt2, 0xa69788c4, 0xddfb7ade, 0x00000000, 140); 
TEST_RR_OP( 36 , kmmawt2, 0xa69835df, 0xa97252a3, 0xffffffff, 144); 
TEST_RR_OP( 37 , kmmawt2, 0xa69835e0, 0xffffffff, 0x80000000, 148); 
TEST_RR_OP( 38 , kmmawt2, 0xa69935e0, 0x80000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , kmmawt2, 0xa69935e0, 0xffffffff, 0xffffffff, 156); 
TEST_RR_OP( 40 , kmmawt2, 0xa69935e0, 0xcb27fa57, 0x00000000, 160); 
TEST_RR_OP( 41 , kmmawt2, 0xa69935e0, 0x3d4b4fc6, 0x00000000, 164); 
TEST_RR_OP( 42 , kmmawt2, 0xa69935df, 0xffffffff, 0x0666d97a, 168); 
TEST_RR_OP( 43 , kmmawt2, 0x269935de, 0x80000000, 0x80000000, 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_RR_OP( 47 , kmmawt2, 0x00000000, 0xa937c187, 0x00000000, 188); 
TEST_RR_OP( 48 , kmmawt2, 0x00000000, 0x00000000, 0x1a0af5d0, 192); 
TEST_RR_OP( 49 , kmmawt2, 0xffffce9b, 0x18b27ebb, 0xffffffff, 196); 
TEST_RR_OP( 50 , kmmawt2, 0x242603ce, 0x2eaee3d4, 0x631ee94a, 200); 
TEST_RR_OP( 51 , kmmawt2, 0x2efaf93a, 0xf52b0a94, 0x80000000, 204); 
TEST_RR_OP( 52 , kmmawt2, 0x68eef93a, 0x80000000, 0xc60c94eb, 208); 
TEST_RR_OP( 53 , kmmawt2, 0x68eef93a, 0x3c5d5f83, 0x00000000, 212); 
TEST_RR_OP( 54 , kmmawt2, 0x68eef93a, 0x80000000, 0x00000000, 216); 
TEST_RR_OP( 55 , kmmawt2, 0x68eef93a, 0x00000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , kmmawt2, 0x68eef93a, 0x00000000, 0x0fe08978, 224); 
TEST_RR_OP( 57 , kmmawt2, 0x2bc64862, 0x3d28b0d8, 0x80000000, 228); 
TEST_RR_OP( 58 , kmmawt2, 0x74e50829, 0x81c30949, 0xb5dc0dc7, 232); 
TEST_RR_OP( 59 , kmmawt2, 0x74e60829, 0x80000000, 0xffffffff, 236); 
TEST_RR_OP( 60 , kmmawt2, 0x74e60829, 0xffffffff, 0xffffffff, 240); 
TEST_RR_OP( 61 , kmmawt2, 0x74e60829, 0xffffffff, 0x9aa11419, 244); 
TEST_RR_OP( 62 , kmmawt2, 0x7fffffff, 0xcf2fb99b, 0xbb28cb21, 248); 
TEST_CASE( 63 ,252, x14, 1, rdov x14;);
TEST_CASE( 64 ,256, x14, 1, clrov;);
TEST_CASE( 65 ,260, x14, 0, rdov x14;);
TEST_RR_OP( 66 , kmmawt2, 0x00000000, 0xffffffff, 0x00000000, 264); 
TEST_RR_OP( 67 , kmmawt2, 0x00000000, 0x80000000, 0x00000000, 268); 
TEST_RR_OP( 68 , kmmawt2, 0x00000000, 0xfca11282, 0x00000000, 272); 
TEST_RR_OP( 69 , kmmawt2, 0x8a880000, 0x80000000, 0x75783310, 276); 
TEST_RR_OP( 70 , kmmawt2, 0x8a880000, 0x80000000, 0x00000000, 280); 
TEST_RR_OP( 71 , kmmawt2, 0x8a880000, 0xb0b16d73, 0x00000000, 284); 
TEST_RR_OP( 72 , kmmawt2, 0x8a880000, 0x00000000, 0x80000000, 288); 
TEST_RR_OP( 73 , kmmawt2, 0x8a8868f6, 0xcb84c4d8, 0xffffffff, 292); 
TEST_RR_OP( 74 , kmmawt2, 0x8a8868f6, 0xffffffff, 0x99341314, 296); 
TEST_RR_OP( 75 , kmmawt2, 0x8a796ab2, 0x00159c57, 0xa732d32a, 300); 
TEST_RR_OP( 76 , kmmawt2, 0x0a796ab1, 0x80000000, 0x80000000, 304); 
TEST_CASE( 77 ,308, x14, 1, rdov x14;);
TEST_CASE( 78 ,312, x14, 1, clrov;);
TEST_CASE( 79 ,316, x14, 0, rdov x14;);
TEST_RR_OP( 80 , kmmawt2, 0xffffffff, 0xffffffff, 0x6eaae1ab, 320); 
TEST_RR_OP( 81 , kmmawt2, 0xffffffff, 0x00000000, 0xacd7efbd, 324); 
TEST_RR_OP( 82 , kmmawt2, 0xffffffff, 0x00000000, 0xffffffff, 328); 
TEST_RR_OP( 83 , kmmawt2, 0xbf58ffff, 0x80000000, 0x40a7e1d0, 332); 
TEST_RR_OP( 84 , kmmawt2, 0xbf59ffff, 0x80000000, 0xffffffff, 336); 
TEST_RR_OP( 85 , kmmawt2, 0xbf59fffe, 0xffffffff, 0x11f58b93, 340); 
TEST_RR_OP( 86 , kmmawt2, 0xbf59fffe, 0x00000000, 0xffffffff, 344); 
TEST_RR_OP( 87 , kmmawt2, 0xbf5afffe, 0x80000000, 0xffffffff, 348); 
TEST_RR_OP( 88 , kmmawt2, 0xbf5afffe, 0xffffffff, 0xffffffff, 352); 
TEST_RR_OP( 89 , kmmawt2, 0x87d91b3f, 0xaf8e0636, 0x58525b97, 356); 
TEST_RR_OP( 90 , kmmawt2, 0x87d91b40, 0xffffffff, 0x80000000, 360); 
TEST_RR_OP( 91 , kmmawt2, 0x07d91b3f, 0x80000000, 0x80000000, 364); 
TEST_CASE( 92 ,368, x14, 1, rdov x14;);
TEST_CASE( 93 ,372, x14, 1, clrov;);
TEST_CASE( 94 ,376, x14, 0, rdov x14;);
TEST_RR_OP( 95 , kmmawt2, 0x0000d9da, 0x9312fcbe, 0xffffffff, 380); 
TEST_RR_OP( 96 , kmmawt2, 0x0000d9da, 0xffffffff, 0xf06f1709, 384); 
TEST_RR_OP( 97 , kmmawt2, 0x0000d9da, 0x00000000, 0x00000000, 388); 
TEST_RR_OP( 98 , kmmawt2, 0x0000d9da, 0xffffffff, 0xffffffff, 392); 
TEST_RR_OP( 99 , kmmawt2, 0x0000d9da, 0x00000000, 0x80000000, 396); 
TEST_RR_OP( 100 , kmmawt2, 0x7fffffff, 0x80000000, 0x80000000, 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_RR_OP( 104 , kmmawt2, 0x00000000, 0xffffffff, 0xffffffff, 416); 
TEST_RR_OP( 105 , kmmawt2, 0x574223e2, 0xa8bddc1e, 0x80000000, 420); 
TEST_RR_OP( 106 , kmmawt2, 0x0f9a23e2, 0x80000000, 0x47a8164c, 424); 
TEST_RR_OP( 107 , kmmawt2, 0x0f99548b, 0x67ab4bbe, 0xffffffff, 428); 
TEST_RR_OP( 108 , kmmawt2, 0x0f99f927, 0xadb18923, 0xffffffff, 432); 
TEST_RR_OP( 109 , kmmawt2, 0x0f99f927, 0x00000000, 0x00000000, 436); 
TEST_RR_OP( 110 , kmmawt2, 0x2aa1b660, 0xe4f842c7, 0x80000000, 440); 
TEST_RR_OP( 111 , kmmawt2, 0x2aa1b660, 0xffffffff, 0x00000000, 444); 
TEST_RR_OP( 112 , kmmawt2, 0x2aa2b660, 0x80000000, 0xffffffff, 448); 
TEST_RR_OP( 113 , kmmawt2, 0x2aa202c3, 0x59ce2497, 0xffffffff, 452); 
TEST_RR_OP( 114 , kmmawt2, 0x2aa202c3, 0x00000000, 0x00000000, 456); 
TEST_RR_OP( 115 , kmmawt2, 0x2aa202c3, 0x00000000, 0x00000000, 460); 
TEST_RR_OP( 116 , kmmawt2, 0x2aa202c3, 0xffffffff, 0x00000000, 464); 
TEST_RR_OP( 117 , kmmawt2, 0x64bde978, 0xb2f1069f, 0x9f7ae795, 468); 
TEST_RR_OP( 118 , kmmawt2, 0x64bde978, 0x00000000, 0x00000000, 472); 
TEST_RR_OP( 119 , kmmawt2, 0x64bde978, 0x00000000, 0xffffffff, 476); 
TEST_RR_OP( 120 , kmmawt2, 0x7fffffff, 0xa98d13a9, 0x80000000, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_RR_OP( 124 , kmmawt2, 0xb96d8287, 0x46927d79, 0x80000000, 496); 
TEST_RR_OP( 125 , kmmawt2, 0xb96d8287, 0x00000000, 0x80000000, 500); 
TEST_RR_OP( 126 , kmmawt2, 0xb96d8287, 0x80000000, 0x00000000, 504); 
TEST_RR_OP( 127 , kmmawt2, 0xb96e8008, 0x813f6790, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmmawt2, 0xb96e8008, 0xd301ebe5, 0x00000000, 512); 
TEST_RR_OP( 129 , kmmawt2, 0x396e8007, 0x80000000, 0x80000000, 516); 
TEST_CASE( 130 ,520, x14, 1, rdov x14;);
TEST_CASE( 131 ,524, x14, 1, clrov;);
TEST_CASE( 132 ,528, x14, 0, rdov x14;);
TEST_RR_OP( 133 , kmmawt2, 0xffffffff, 0xffffffff, 0x64095120, 532); 
TEST_RR_OP( 134 , kmmawt2, 0xffffffff, 0x00000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , kmmawt2, 0xffffffff, 0x00000000, 0xffffffff, 540); 
TEST_RR_OP( 136 , kmmawt2, 0x441effff, 0x80000000, 0xbbe1c2f8, 544); 
TEST_RR_OP( 137 , kmmawt2, 0x09faffff, 0x80000000, 0x3a24db2e, 548); 
TEST_RR_OP( 138 , kmmawt2, 0x7fffffff, 0x80000000, 0x80000000, 552); 
TEST_CASE( 139 ,556, x14, 1, rdov x14;);
TEST_CASE( 140 ,560, x14, 1, clrov;);
TEST_CASE( 141 ,564, x14, 0, rdov x14;);
TEST_RR_OP( 142 , kmmawt2, 0x00000001, 0xffffffff, 0x80000000, 568); 
TEST_RR_OP( 143 , kmmawt2, 0x00000001, 0x00000000, 0x80000000, 572); 
TEST_RR_OP( 144 , kmmawt2, 0xa44c7d81, 0x5bb38280, 0x80000000, 576); 
TEST_RR_OP( 145 , kmmawt2, 0xa44c7d81, 0xffffffff, 0x00000000, 580); 
TEST_RR_OP( 146 , kmmawt2, 0xa44d7d81, 0x80000000, 0xffffffff, 584); 
TEST_RR_OP( 147 , kmmawt2, 0xa44d7d80, 0xffffffff, 0x6941dc5f, 588); 
TEST_RR_OP( 148 , kmmawt2, 0xa44d7d7f, 0xffffffff, 0x5aaca2f1, 592); 
TEST_RR_OP( 149 , kmmawt2, 0xa44d7d7f, 0x00000000, 0xffffffff, 596); 
TEST_RR_OP( 150 , kmmawt2, 0xa44d7d7f, 0x00000000, 0x80000000, 600); 
TEST_RR_OP( 151 , kmmawt2, 0x80000000, 0x90bbac61, 0x4dfc818f, 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_RR_OP( 155 , kmmawt2, 0x00000000, 0x00000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmmawt2, 0xd4406415, 0x2bbf9beb, 0x80000000, 624); 
TEST_RR_OP( 157 , kmmawt2, 0x326f99ed, 0xa1d0ca28, 0x80000000, 628); 
TEST_RR_OP( 158 , kmmawt2, 0x326f99ed, 0x00000000, 0x00000000, 632); 
TEST_RR_OP( 159 , kmmawt2, 0x326f99ed, 0xffffffff, 0xa33f6bdd, 636); 
TEST_RR_OP( 160 , kmmawt2, 0x326f99ed, 0xffffffff, 0xffffffff, 640); 
TEST_RR_OP( 161 , kmmawt2, 0x326f99ed, 0xffffffff, 0x00000000, 644); 
TEST_RR_OP( 162 , kmmawt2, 0x326fb353, 0xf34cb66b, 0xffffffff, 648); 
TEST_RR_OP( 163 , kmmawt2, 0x326fb353, 0x00000000, 0x00000000, 652); 
TEST_RR_OP( 164 , kmmawt2, 0x326fb353, 0xffffffff, 0xffffffff, 656); 
TEST_RR_OP( 165 , kmmawt2, 0x7cd6eb12, 0xb598c841, 0x80000000, 660); 
TEST_RR_OP( 166 , kmmawt2, 0x7cd6eb12, 0x00000000, 0x80000000, 664); 
TEST_RR_OP( 167 , kmmawt2, 0x7cd6eb12, 0x00000000, 0x00000000, 668); 
TEST_RR_OP( 168 , kmmawt2, 0x7cd6b617, 0x1a7d5c93, 0xffffffff, 672); 
TEST_RR_OP( 169 , kmmawt2, 0x7cd6b617, 0xffffffff, 0x00000000, 676); 
TEST_RR_OP( 170 , kmmawt2, 0x456ef077, 0x3767c5a0, 0x80000000, 680); 
TEST_RR_OP( 171 , kmmawt2, 0x456ef077, 0x3b419470, 0x00000000, 684); 
TEST_RR_OP( 172 , kmmawt2, 0x456ef077, 0x00000000, 0x79017554, 688); 
TEST_RR_OP( 173 , kmmawt2, 0x456ef077, 0xffffffff, 0xffffffff, 692); 
TEST_RR_OP( 174 , kmmawt2, 0x456ff077, 0x80000000, 0xffffffff, 696); 
TEST_RR_OP( 175 , kmmawt2, 0x456fe787, 0x0477d8bd, 0xffffffff, 700); 
TEST_RR_OP( 176 , kmmawt2, 0x456fe787, 0xffffffff, 0xffffffff, 704); 
TEST_RR_OP( 177 , kmmawt2, 0x456fe788, 0xffffffff, 0x80000000, 708); 
TEST_RR_OP( 178 , kmmawt2, 0x456fe788, 0x00000000, 0xc1335555, 712); 
TEST_RR_OP( 179 , kmmawt2, 0x456fe788, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , kmmawt2, 0x7fffffff, 0x80000000, 0x80000000, 720); 
TEST_CASE( 181 ,724, x14, 1, rdov x14;);
TEST_CASE( 182 ,728, x14, 1, clrov;);
TEST_CASE( 183 ,732, x14, 0, rdov x14;);
TEST_RR_OP( 184 , kmmawt2, 0x00000000, 0x00000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kmmawt2, 0x00000000, 0xf8e37fb5, 0x00000000, 740); 
TEST_RR_OP( 186 , kmmawt2, 0x7fffffff, 0x80000000, 0x80000000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , kmmawt2, 0x00000001, 0xffffffff, 0x80000000, 760); 
TEST_RR_OP( 191 , kmmawt2, 0x00000001, 0xe5d85499, 0x00000000, 764); 
TEST_RR_OP( 192 , kmmawt2, 0x00005cf5, 0xd185de28, 0xffffffff, 768); 
TEST_RR_OP( 193 , kmmawt2, 0x00005cf5, 0x80000000, 0x00000000, 772); 
TEST_RR_OP( 194 , kmmawt2, 0x00005cf5, 0xffffffff, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmmawt2, 0x00005cf5, 0xffffffff, 0x00000000, 780); 
TEST_RR_OP( 196 , kmmawt2, 0xfdb4daca, 0x04486355, 0xbb69ca1a, 784); 
TEST_RR_OP( 197 , kmmawt2, 0xfdb4daca, 0xffffffff, 0xe54453b6, 788); 
TEST_RR_OP( 198 , kmmawt2, 0x3e3a4025, 0xbf7a9aa5, 0x80000000, 792); 
TEST_RR_OP( 199 , kmmawt2, 0x3e3a4025, 0x80000000, 0x00000000, 796); 

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
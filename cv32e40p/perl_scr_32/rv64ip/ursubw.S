# See LICENSE for license details.
#*****************************************************************************
# ursubw.S
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

TEST_RR_OP( 2 , ursubw, 0xffffffffabe91dc6, 0x57d23b8c, 0xffffffff, 8); 
TEST_RR_OP( 3 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 16); 
TEST_RR_OP( 5 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 20); 
TEST_RR_OP( 6 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 24); 
TEST_RR_OP( 7 , ursubw, 0x40000000, 0x80000000, 0x00000000, 28); 
TEST_RR_OP( 8 , ursubw, 0x40000000, 0x80000000, 0x00000000, 32); 
TEST_RR_OP( 9 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 36); 
TEST_RR_OP( 10 , ursubw, 0x18332782, 0x30664f05, 0x00000000, 40); 
TEST_RR_OP( 11 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 44); 
TEST_RR_OP( 12 , ursubw, 0x2133d19d, 0xb71cebd9, 0x74b5489f, 48); 
TEST_RR_OP( 13 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 52); 
TEST_RR_OP( 14 , ursubw, 0xffffffffeb173d75, 0x80000000, 0xa9d18516, 56); 
TEST_RR_OP( 15 , ursubw, 0x6de4eb51, 0xdbc9d6a3, 0x00000000, 60); 
TEST_RR_OP( 16 , ursubw, 0x266b224a, 0xffffffff, 0xb329bb6a, 64); 
TEST_RR_OP( 17 , ursubw, 0xfffffffff4deb26b, 0x2fc6813c, 0x46091c66, 68); 
TEST_RR_OP( 18 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 72); 
TEST_RR_OP( 19 , ursubw, 0x18ef35e7, 0xcf6fbca6, 0x9d9150d7, 76); 
TEST_RR_OP( 20 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , ursubw, 0x201ff1dd, 0x403fe3ba, 0x00000000, 84); 
TEST_RR_OP( 22 , ursubw, 0xffffffffeaf711b2, 0x55ee2364, 0x80000000, 88); 
TEST_RR_OP( 23 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 92); 
TEST_RR_OP( 24 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 96); 
TEST_RR_OP( 25 , ursubw, 0x2da3a621, 0xdb474c42, 0x80000000, 100); 
TEST_RR_OP( 26 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 104); 
TEST_RR_OP( 27 , ursubw, 0x5e76e27a, 0xbcedc4f5, 0x00000000, 108); 
TEST_RR_OP( 28 , ursubw, 0x3533231e, 0xea66463c, 0x80000000, 112); 
TEST_RR_OP( 29 , ursubw, 0x00000000, 0x00000000, 0x00000000, 116); 
TEST_RR_OP( 30 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 120); 
TEST_RR_OP( 31 , ursubw, 0x5613aae1, 0xffffffff, 0x53d8aa3d, 124); 
TEST_RR_OP( 32 , ursubw, 0x2c8e24f9, 0x591c49f2, 0x00000000, 128); 
TEST_RR_OP( 33 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 132); 
TEST_RR_OP( 34 , ursubw, 0x0c8f4f4e, 0x1a453ab6, 0x01269c1a, 136); 
TEST_RR_OP( 35 , ursubw, 0x40000000, 0x80000000, 0x00000000, 140); 
TEST_RR_OP( 36 , ursubw, 0x00000000, 0x00000000, 0x00000000, 144); 
TEST_RR_OP( 37 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 148); 
TEST_RR_OP( 38 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 152); 
TEST_RR_OP( 39 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 156); 
TEST_RR_OP( 40 , ursubw, 0x00000000, 0x80000000, 0x80000000, 160); 
TEST_RR_OP( 41 , ursubw, 0x2bc70afc, 0x578e15f9, 0x00000000, 164); 
TEST_RR_OP( 42 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 168); 
TEST_RR_OP( 43 , ursubw, 0xfffffffff697c199, 0x6d2f8333, 0x80000000, 172); 
TEST_RR_OP( 44 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 176); 
TEST_RR_OP( 45 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 180); 
TEST_RR_OP( 46 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 184); 
TEST_RR_OP( 47 , ursubw, 0x00000000, 0x80000000, 0x80000000, 188); 
TEST_RR_OP( 48 , ursubw, 0xffffffffc8725c43, 0x10e4b886, 0x80000000, 192); 
TEST_RR_OP( 49 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 196); 
TEST_RR_OP( 50 , ursubw, 0x27879d80, 0xa0841663, 0x5174db63, 200); 
TEST_RR_OP( 51 , ursubw, 0xfffffffff1ecc73a, 0x80000000, 0x9c26718c, 204); 
TEST_RR_OP( 52 , ursubw, 0x18066ce3, 0xb00cd9c7, 0x80000000, 208); 
TEST_RR_OP( 53 , ursubw, 0x00000000, 0x00000000, 0x00000000, 212); 
TEST_RR_OP( 54 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 216); 
TEST_RR_OP( 55 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 220); 
TEST_RR_OP( 56 , ursubw, 0xfffffffff4fb5203, 0xe9f6a406, 0xffffffff, 224); 
TEST_RR_OP( 57 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 228); 
TEST_RR_OP( 58 , ursubw, 0x36aa379d, 0xed546f3b, 0x80000000, 232); 
TEST_RR_OP( 59 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 236); 
TEST_RR_OP( 60 , ursubw, 0x126e3a57, 0x80000000, 0x5b238b52, 240); 
TEST_RR_OP( 61 , ursubw, 0xfffffffff71232c2, 0x80000000, 0x91db9a7c, 244); 
TEST_RR_OP( 62 , ursubw, 0x39606294, 0xffffffff, 0x8d3f3ad7, 248); 
TEST_RR_OP( 63 , ursubw, 0xffffffffcf8c44f5, 0x80000000, 0xe0e77615, 252); 
TEST_RR_OP( 64 , ursubw, 0xffffffffcf4dfed3, 0x00000000, 0x61640259, 256); 
TEST_RR_OP( 65 , ursubw, 0x40000000, 0x80000000, 0x00000000, 260); 
TEST_RR_OP( 66 , ursubw, 0x27787e90, 0x4ef0fd20, 0x00000000, 264); 
TEST_RR_OP( 67 , ursubw, 0x00000000, 0x00000000, 0x00000000, 268); 
TEST_RR_OP( 68 , ursubw, 0x1f085d1c, 0x80000000, 0x41ef45c8, 272); 
TEST_RR_OP( 69 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 276); 
TEST_RR_OP( 70 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 280); 
TEST_RR_OP( 71 , ursubw, 0x05e7a56d, 0x8bcf4ada, 0x80000000, 284); 
TEST_RR_OP( 72 , ursubw, 0xffffffff8fd1f770, 0x1fa3eedf, 0xffffffff, 288); 
TEST_RR_OP( 73 , ursubw, 0x00000000, 0x00000000, 0x00000000, 292); 
TEST_RR_OP( 74 , ursubw, 0x40000000, 0x80000000, 0x00000000, 296); 
TEST_RR_OP( 75 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 300); 
TEST_RR_OP( 76 , ursubw, 0xffffffffd1fe439c, 0x23fc8738, 0x80000000, 304); 
TEST_RR_OP( 77 , ursubw, 0x6f3dc21d, 0xffffffff, 0x21847bc4, 308); 
TEST_RR_OP( 78 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 312); 
TEST_RR_OP( 79 , ursubw, 0x6cc2d4f3, 0xffffffff, 0x267a5619, 316); 
TEST_RR_OP( 80 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 320); 
TEST_RR_OP( 81 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 324); 
TEST_RR_OP( 82 , ursubw, 0x00000000, 0x00000000, 0x00000000, 328); 
TEST_RR_OP( 83 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 332); 
TEST_RR_OP( 84 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 336); 
TEST_RR_OP( 85 , ursubw, 0x40000000, 0x80000000, 0x00000000, 340); 
TEST_RR_OP( 86 , ursubw, 0xffffffff999116a8, 0x00000000, 0xccddd2af, 344); 
TEST_RR_OP( 87 , ursubw, 0x40000000, 0x80000000, 0x00000000, 348); 
TEST_RR_OP( 88 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 352); 
TEST_RR_OP( 89 , ursubw, 0x00000000, 0x80000000, 0x80000000, 356); 
TEST_RR_OP( 90 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , ursubw, 0x00000000, 0x80000000, 0x80000000, 364); 
TEST_RR_OP( 92 , ursubw, 0x00000000, 0x80000000, 0x80000000, 368); 
TEST_RR_OP( 93 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 372); 
TEST_RR_OP( 94 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 376); 
TEST_RR_OP( 95 , ursubw, 0x1e211b6a, 0x80000000, 0x43bdc92b, 380); 
TEST_RR_OP( 96 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , ursubw, 0x00000000, 0x80000000, 0x80000000, 388); 
TEST_RR_OP( 98 , ursubw, 0x00000000, 0x00000000, 0x00000000, 392); 
TEST_RR_OP( 99 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 396); 
TEST_RR_OP( 100 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 400); 
TEST_RR_OP( 101 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 404); 
TEST_RR_OP( 102 , ursubw, 0x40000000, 0x80000000, 0x00000000, 408); 
TEST_RR_OP( 103 , ursubw, 0x76902520, 0xffffffff, 0x12dfb5be, 412); 
TEST_RR_OP( 104 , ursubw, 0xffffffffdf9f67e3, 0x3f3ecfc7, 0x80000000, 416); 
TEST_RR_OP( 105 , ursubw, 0x00000000, 0x00000000, 0x00000000, 420); 
TEST_RR_OP( 106 , ursubw, 0x4dce3c1d, 0xffffffff, 0x646387c4, 424); 
TEST_RR_OP( 107 , ursubw, 0x00000000, 0x00000000, 0x00000000, 428); 
TEST_RR_OP( 108 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 432); 
TEST_RR_OP( 109 , ursubw, 0xffffffffcd8584ca, 0x1b0b0995, 0x80000000, 436); 
TEST_RR_OP( 110 , ursubw, 0xffffffffe1ffdf77, 0x179d69bb, 0x539daacd, 440); 
TEST_RR_OP( 111 , ursubw, 0x00000000, 0x80000000, 0x80000000, 444); 
TEST_RR_OP( 112 , ursubw, 0xffffffffcd91b013, 0x9b236026, 0xffffffff, 448); 
TEST_RR_OP( 113 , ursubw, 0x40000000, 0x80000000, 0x00000000, 452); 
TEST_RR_OP( 114 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 456); 
TEST_RR_OP( 115 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 460); 
TEST_RR_OP( 116 , ursubw, 0xffffffffcdadbf3c, 0x1b5b7e78, 0x80000000, 464); 
TEST_RR_OP( 117 , ursubw, 0x00000000, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , ursubw, 0xffffffffb7426a55, 0x6e84d4a9, 0xffffffff, 472); 
TEST_RR_OP( 119 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 476); 
TEST_RR_OP( 120 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , ursubw, 0x2642f90a, 0xac664ee4, 0x5fe05cd0, 484); 
TEST_RR_OP( 122 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 488); 
TEST_RR_OP( 123 , ursubw, 0x264e158e, 0xffffffff, 0xb363d4e2, 492); 
TEST_RR_OP( 124 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 496); 
TEST_RR_OP( 125 , ursubw, 0x00000000, 0x80000000, 0x80000000, 500); 
TEST_RR_OP( 126 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 504); 
TEST_RR_OP( 127 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , ursubw, 0x6d97c407, 0xffffffff, 0x24d077f0, 512); 
TEST_RR_OP( 129 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 516); 
TEST_RR_OP( 130 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 520); 
TEST_RR_OP( 131 , ursubw, 0x50a9acdb, 0xf30cf52c, 0x51b99b76, 524); 
TEST_RR_OP( 132 , ursubw, 0xffffffffe143b6fb, 0x00000000, 0x3d78920a, 528); 
TEST_RR_OP( 133 , ursubw, 0x00000000, 0x00000000, 0x00000000, 532); 
TEST_RR_OP( 134 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 536); 
TEST_RR_OP( 135 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 540); 
TEST_RR_OP( 136 , ursubw, 0x00000000, 0x80000000, 0x80000000, 544); 
TEST_RR_OP( 137 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 548); 
TEST_RR_OP( 138 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 552); 
TEST_RR_OP( 139 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 556); 
TEST_RR_OP( 140 , ursubw, 0x735d35c1, 0xffffffff, 0x1945947c, 560); 
TEST_RR_OP( 141 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 564); 
TEST_RR_OP( 142 , ursubw, 0x40000000, 0x80000000, 0x00000000, 568); 
TEST_RR_OP( 143 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 572); 
TEST_RR_OP( 144 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 576); 
TEST_RR_OP( 145 , ursubw, 0xffffffffca8fed2d, 0x951fda59, 0xffffffff, 580); 
TEST_RR_OP( 146 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 584); 
TEST_RR_OP( 147 , ursubw, 0xffffffffe2095fb2, 0x00000000, 0x3bed409c, 588); 
TEST_RR_OP( 148 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 592); 
TEST_RR_OP( 149 , ursubw, 0x40000000, 0x80000000, 0x00000000, 596); 
TEST_RR_OP( 150 , ursubw, 0x3f826507, 0x80000000, 0x00fb35f2, 600); 
TEST_RR_OP( 151 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 604); 
TEST_RR_OP( 152 , ursubw, 0x22cf80f3, 0x80000000, 0x3a60fe19, 608); 
TEST_RR_OP( 153 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 612); 
TEST_RR_OP( 154 , ursubw, 0x00000000, 0x00000000, 0x00000000, 616); 
TEST_RR_OP( 155 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 620); 
TEST_RR_OP( 156 , ursubw, 0xffffffffd7af2811, 0x80000000, 0xd0a1afde, 624); 
TEST_RR_OP( 157 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 628); 
TEST_RR_OP( 158 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 632); 
TEST_RR_OP( 159 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , ursubw, 0xffffffffd3ee5b99, 0x00000000, 0x582348ce, 640); 
TEST_RR_OP( 161 , ursubw, 0x3a57610a, 0xf4aec214, 0x80000000, 644); 
TEST_RR_OP( 162 , ursubw, 0x5ea805f2, 0xbd500be5, 0x00000000, 648); 
TEST_RR_OP( 163 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 652); 
TEST_RR_OP( 164 , ursubw, 0xffffffffbb67f5be, 0x76cfeb7b, 0xffffffff, 656); 
TEST_RR_OP( 165 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 660); 
TEST_RR_OP( 166 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 664); 
TEST_RR_OP( 167 , ursubw, 0x77f31900, 0xefe63201, 0x00000000, 668); 
TEST_RR_OP( 168 , ursubw, 0x00000000, 0x00000000, 0x00000000, 672); 
TEST_RR_OP( 169 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 676); 
TEST_RR_OP( 170 , ursubw, 0xffffffffdf2c1374, 0xb5d151fe, 0xf7792b16, 680); 
TEST_RR_OP( 171 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , ursubw, 0xffffffff88179275, 0x002b73dd, 0xeffc4ef3, 688); 
TEST_RR_OP( 173 , ursubw, 0xffffffffe7eae3d2, 0xcfd5c7a3, 0xffffffff, 692); 
TEST_RR_OP( 174 , ursubw, 0xffffffff8fa539f6, 0x00000000, 0xe0b58c13, 696); 
TEST_RR_OP( 175 , ursubw, 0x33f5c380, 0x67eb8701, 0x00000000, 700); 
TEST_RR_OP( 176 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 704); 
TEST_RR_OP( 177 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 708); 
TEST_RR_OP( 178 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 712); 
TEST_RR_OP( 179 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 716); 
TEST_RR_OP( 180 , ursubw, 0xffffffffeb982b7d, 0x00000000, 0x28cfa906, 720); 
TEST_RR_OP( 181 , ursubw, 0xfffffffff849dc66, 0xf093b8cc, 0xffffffff, 724); 
TEST_RR_OP( 182 , ursubw, 0x0887c605, 0x80000000, 0x6ef073f6, 728); 
TEST_RR_OP( 183 , ursubw, 0xffffffff80000000, 0x00000000, 0xffffffff, 732); 
TEST_RR_OP( 184 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 736); 
TEST_RR_OP( 185 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 740); 
TEST_RR_OP( 186 , ursubw, 0xfffffffff7c06c53, 0x12cfb26e, 0x234ed9c8, 744); 
TEST_RR_OP( 187 , ursubw, 0xffffffffca4e0284, 0x949c0507, 0xffffffff, 748); 
TEST_RR_OP( 188 , ursubw, 0x40000000, 0x80000000, 0x00000000, 752); 
TEST_RR_OP( 189 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 756); 
TEST_RR_OP( 190 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 760); 
TEST_RR_OP( 191 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 764); 
TEST_RR_OP( 192 , ursubw, 0xffffffffa0d55834, 0x41aab068, 0xffffffff, 768); 
TEST_RR_OP( 193 , ursubw, 0xffffffffc0000000, 0x80000000, 0xffffffff, 772); 
TEST_RR_OP( 194 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 776); 
TEST_RR_OP( 195 , ursubw, 0xffffffffd942765b, 0x00000000, 0x4d7b1349, 780); 
TEST_RR_OP( 196 , ursubw, 0xffffffffc0000000, 0x00000000, 0x80000000, 784); 
TEST_RR_OP( 197 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 788); 
TEST_RR_OP( 198 , ursubw, 0x134729c7, 0x80000000, 0x5971ac72, 792); 
TEST_RR_OP( 199 , ursubw, 0x00000000, 0x80000000, 0x80000000, 796); 

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
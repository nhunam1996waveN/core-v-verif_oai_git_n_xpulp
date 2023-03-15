# See LICENSE for license details.
#*****************************************************************************
# kslra16.S
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

TEST_RR_OP( 2 , kslra16, 0x1f320000, 0x3e650000, 0xffff001f, 8); 
TEST_RR_OP( 3 , kslra16, 0xe3cfc000, 0xc79f8000, 0xeeb8001f, 12); 
TEST_RR_OP( 4 , kslra16, 0x80000000, 0x80000000, 0xffff0000, 16); 
TEST_RR_OP( 5 , kslra16, 0xe3a90000, 0xe3a90000, 0x80000000, 20); 
TEST_RR_OP( 6 , kslra16, 0xffffffff, 0xffffffff, 0x8000001f, 24); 
TEST_RR_OP( 7 , kslra16, 0x000020c2, 0x00004185, 0xc4db001f, 28); 
TEST_RR_OP( 8 , kslra16, 0xff008000, 0xffff8000, 0xffff0008, 32); 
TEST_CASE( 9 ,36, x14, 1, rdov x14;);
TEST_CASE( 10 ,40, x14, 1, clrov;);
TEST_CASE( 11 ,44, x14, 0, rdov x14;);
TEST_RR_OP( 12 , kslra16, 0xffff008d, 0xffff008d, 0xcf650000, 48); 
TEST_RR_OP( 13 , kslra16, 0xffffffff, 0xffffffff, 0xffff001f, 52); 
TEST_RR_OP( 14 , kslra16, 0xffffffff, 0xffffffff, 0xffff0000, 56); 
TEST_RR_OP( 15 , kslra16, 0xffffff80, 0xffff8000, 0x80000018, 60); 
TEST_RR_OP( 16 , kslra16, 0xc000c000, 0x80008000, 0xffff001f, 64); 
TEST_RR_OP( 17 , kslra16, 0x00008000, 0x00008000, 0x80000000, 68); 
TEST_RR_OP( 18 , kslra16, 0xffffffff, 0xffffffff, 0x80000000, 72); 
TEST_RR_OP( 19 , kslra16, 0xffffffff, 0xffffffff, 0x00000000, 76); 
TEST_RR_OP( 20 , kslra16, 0xfe00fe00, 0xffffffff, 0x80000009, 80); 
TEST_RR_OP( 21 , kslra16, 0x7fff0000, 0x1b0a0000, 0xffff0003, 84); 
TEST_CASE( 22 ,88, x14, 1, rdov x14;);
TEST_CASE( 23 ,92, x14, 1, clrov;);
TEST_CASE( 24 ,96, x14, 0, rdov x14;);
TEST_RR_OP( 25 , kslra16, 0x7507e56f, 0x7507e56f, 0x00000000, 100); 
TEST_RR_OP( 26 , kslra16, 0x00008000, 0x00008000, 0x80000000, 104); 
TEST_RR_OP( 27 , kslra16, 0xde3f04a1, 0xbc7f0943, 0x0000001f, 108); 
TEST_RR_OP( 28 , kslra16, 0xffffffff, 0xffffffff, 0xffff0014, 112); 
TEST_RR_OP( 29 , kslra16, 0x7fff0000, 0x72f90000, 0x00000009, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , kslra16, 0xffff8000, 0xffff8000, 0x80000000, 132); 
TEST_RR_OP( 34 , kslra16, 0x273cffff, 0x4e78ffff, 0xffff001f, 136); 
TEST_RR_OP( 35 , kslra16, 0xffffc000, 0xffff8000, 0x0000001f, 140); 
TEST_RR_OP( 36 , kslra16, 0x3b730000, 0x3b730000, 0x80000000, 144); 
TEST_RR_OP( 37 , kslra16, 0x000076d2, 0x000076d2, 0x00000000, 148); 
TEST_RR_OP( 38 , kslra16, 0x0000fe00, 0x0000ffff, 0xffff0009, 152); 
TEST_RR_OP( 39 , kslra16, 0xffffffff, 0xffffffff, 0x0000001f, 156); 
TEST_RR_OP( 40 , kslra16, 0xffffffff, 0xffffffff, 0x8000001f, 160); 
TEST_RR_OP( 41 , kslra16, 0xfffcfffc, 0x80008000, 0xd8320013, 164); 
TEST_RR_OP( 42 , kslra16, 0xffffffff, 0xdae8c9a0, 0xffff0011, 168); 
TEST_RR_OP( 43 , kslra16, 0xc000c000, 0x80008000, 0xffff001f, 172); 
TEST_RR_OP( 44 , kslra16, 0xffff2347, 0xffff2347, 0x00000000, 176); 
TEST_RR_OP( 45 , kslra16, 0xffff0000, 0xffff0000, 0x8000001f, 180); 
TEST_RR_OP( 46 , kslra16, 0x014afd3c, 0x2956a780, 0xef72001b, 184); 
TEST_RR_OP( 47 , kslra16, 0x20dc0000, 0x20dc0000, 0x53400000, 188); 
TEST_RR_OP( 48 , kslra16, 0xffff0000, 0xffff0000, 0x00000000, 192); 
TEST_RR_OP( 49 , kslra16, 0x7fff8000, 0x6266cfcc, 0xffff0007, 196); 
TEST_CASE( 50 ,200, x14, 1, rdov x14;);
TEST_CASE( 51 ,204, x14, 1, clrov;);
TEST_CASE( 52 ,208, x14, 0, rdov x14;);
TEST_RR_OP( 53 , kslra16, 0xffff3639, 0xffff6c73, 0xa5aa001f, 212); 
TEST_RR_OP( 54 , kslra16, 0x581f8000, 0x581f8000, 0x80000000, 216); 
TEST_RR_OP( 55 , kslra16, 0x00008000, 0x00008000, 0x00000000, 220); 
TEST_RR_OP( 56 , kslra16, 0x0000ffff, 0x0000ffff, 0x80000000, 224); 
TEST_RR_OP( 57 , kslra16, 0x00000000, 0x00000000, 0x80000000, 228); 
TEST_RR_OP( 58 , kslra16, 0xffffffff, 0xffffffff, 0x38ab0000, 232); 
TEST_RR_OP( 59 , kslra16, 0xffff0000, 0xffff0000, 0xffff0000, 236); 
TEST_RR_OP( 60 , kslra16, 0x7d0706cf, 0x7d0706cf, 0x00000000, 240); 
TEST_RR_OP( 61 , kslra16, 0x3d03dbbf, 0x7a07b77f, 0x8000001f, 244); 
TEST_RR_OP( 62 , kslra16, 0xaeb5ffff, 0xaeb5ffff, 0x11240000, 248); 
TEST_RR_OP( 63 , kslra16, 0x0d4fffff, 0x0d4fffff, 0x00000000, 252); 
TEST_RR_OP( 64 , kslra16, 0xffff0000, 0xffff0000, 0x5cf0001f, 256); 
TEST_RR_OP( 65 , kslra16, 0x8000388d, 0x8000388d, 0xcbb30000, 260); 
TEST_RR_OP( 66 , kslra16, 0x80008000, 0x80008000, 0x4dbe0000, 264); 
TEST_RR_OP( 67 , kslra16, 0xc0000000, 0x80000000, 0xefdc001f, 268); 
TEST_RR_OP( 68 , kslra16, 0x0000c000, 0x00008000, 0x8000001f, 272); 
TEST_RR_OP( 69 , kslra16, 0xc000f34c, 0x8000e699, 0xffff001f, 276); 
TEST_RR_OP( 70 , kslra16, 0x0000ffff, 0x00008000, 0x4ad30010, 280); 
TEST_RR_OP( 71 , kslra16, 0xff30ffff, 0xfe60ffff, 0x5fa7001f, 284); 
TEST_RR_OP( 72 , kslra16, 0xe000e000, 0xffffffff, 0x8000000d, 288); 
TEST_RR_OP( 73 , kslra16, 0xffffffff, 0xffffffff, 0xee750000, 292); 
TEST_RR_OP( 74 , kslra16, 0x5bcfffff, 0x5bcfffff, 0x00000000, 296); 
TEST_RR_OP( 75 , kslra16, 0x80000000, 0x80000000, 0xffff0000, 300); 
TEST_RR_OP( 76 , kslra16, 0xc000c000, 0x80008000, 0x62fa001f, 304); 
TEST_RR_OP( 77 , kslra16, 0x00008000, 0x00008000, 0xffff0000, 308); 
TEST_RR_OP( 78 , kslra16, 0xffff8000, 0xffff8000, 0x1cf00000, 312); 
TEST_RR_OP( 79 , kslra16, 0xff80ff80, 0xffffffff, 0x144a0007, 316); 
TEST_RR_OP( 80 , kslra16, 0xffff0744, 0xffff0e89, 0x8000001f, 320); 
TEST_RR_OP( 81 , kslra16, 0x80008000, 0x80008000, 0xffff0000, 324); 
TEST_RR_OP( 82 , kslra16, 0x8000ffff, 0x8000ffff, 0x23780000, 328); 
TEST_RR_OP( 83 , kslra16, 0xffffb02d, 0xffffb02d, 0x80000000, 332); 
TEST_RR_OP( 84 , kslra16, 0x80000000, 0x80000000, 0x80000000, 336); 
TEST_RR_OP( 85 , kslra16, 0xfd930000, 0xfd930000, 0xffff0000, 340); 
TEST_RR_OP( 86 , kslra16, 0x0000ffff, 0x0000ffff, 0x00000000, 344); 
TEST_RR_OP( 87 , kslra16, 0x00003201, 0x00006403, 0x8000001f, 348); 
TEST_RR_OP( 88 , kslra16, 0x26407907, 0x26407907, 0x00000000, 352); 
TEST_RR_OP( 89 , kslra16, 0x00008000, 0x00008000, 0x00000000, 356); 
TEST_RR_OP( 90 , kslra16, 0xffff8000, 0xffff8000, 0x00000000, 360); 
TEST_RR_OP( 91 , kslra16, 0x00000000, 0x00000000, 0x00000000, 364); 
TEST_RR_OP( 92 , kslra16, 0xffff0000, 0xffff0000, 0x0000001f, 368); 
TEST_RR_OP( 93 , kslra16, 0xc2220000, 0xc2220000, 0x97d20000, 372); 
TEST_RR_OP( 94 , kslra16, 0x00000000, 0x00000000, 0x8000001f, 376); 
TEST_RR_OP( 95 , kslra16, 0xffff8000, 0xffff8000, 0x00000000, 380); 
TEST_RR_OP( 96 , kslra16, 0x80008000, 0x80008000, 0xffff000e, 384); 
TEST_CASE( 97 ,388, x14, 1, rdov x14;);
TEST_CASE( 98 ,392, x14, 1, clrov;);
TEST_CASE( 99 ,396, x14, 0, rdov x14;);
TEST_RR_OP( 100 , kslra16, 0x80000000, 0x80000000, 0xffff000b, 400); 
TEST_CASE( 101 ,404, x14, 1, rdov x14;);
TEST_CASE( 102 ,408, x14, 1, clrov;);
TEST_CASE( 103 ,412, x14, 0, rdov x14;);
TEST_RR_OP( 104 , kslra16, 0x0000ffff, 0x0000ffff, 0x0000001e, 416); 
TEST_RR_OP( 105 , kslra16, 0x7ffffff0, 0x754dffff, 0x00000004, 420); 
TEST_CASE( 106 ,424, x14, 1, rdov x14;);
TEST_CASE( 107 ,428, x14, 1, clrov;);
TEST_CASE( 108 ,432, x14, 0, rdov x14;);
TEST_RR_OP( 109 , kslra16, 0x09e8c3e7, 0x13d087ce, 0x8bfd001f, 436); 
TEST_RR_OP( 110 , kslra16, 0xffffffff, 0xffffffff, 0x57740000, 440); 
TEST_RR_OP( 111 , kslra16, 0xddce0000, 0xbb9c0000, 0xffff001f, 444); 
TEST_RR_OP( 112 , kslra16, 0xffff8000, 0xffff8000, 0xffff0000, 448); 
TEST_RR_OP( 113 , kslra16, 0xc8ef0000, 0x91de0000, 0x0000001f, 452); 
TEST_RR_OP( 114 , kslra16, 0xffffecfc, 0xffffecfc, 0x80000000, 456); 
TEST_RR_OP( 115 , kslra16, 0x8000f095, 0x8000f095, 0x00000000, 460); 
TEST_RR_OP( 116 , kslra16, 0xc000c000, 0x80008000, 0xffff001f, 464); 
TEST_RR_OP( 117 , kslra16, 0x80000000, 0x80000000, 0x00000000, 468); 
TEST_RR_OP( 118 , kslra16, 0x490e8000, 0x490e8000, 0x873e0000, 472); 
TEST_RR_OP( 119 , kslra16, 0x6b3c0000, 0x6b3c0000, 0xffff0000, 476); 
TEST_RR_OP( 120 , kslra16, 0x76fd4af4, 0x76fd4af4, 0xffff0000, 480); 
TEST_RR_OP( 121 , kslra16, 0x00000000, 0x00000000, 0x4dd3001a, 484); 
TEST_RR_OP( 122 , kslra16, 0xc000ffff, 0x8000ffff, 0xffff001f, 488); 
TEST_RR_OP( 123 , kslra16, 0xc0000000, 0x80000000, 0x0000001f, 492); 
TEST_RR_OP( 124 , kslra16, 0xffffffff, 0xffffffff, 0x80000019, 496); 
TEST_RR_OP( 125 , kslra16, 0xffff0000, 0xffff0000, 0x00000000, 500); 
TEST_RR_OP( 126 , kslra16, 0x00000000, 0x00000000, 0xe7dd0000, 504); 
TEST_RR_OP( 127 , kslra16, 0x00000000, 0x00000000, 0x80000000, 508); 
TEST_RR_OP( 128 , kslra16, 0x0000ffff, 0x0000ffff, 0x80000018, 512); 
TEST_RR_OP( 129 , kslra16, 0xc0000000, 0x80000000, 0x43f8001f, 516); 
TEST_RR_OP( 130 , kslra16, 0x29cc8000, 0x29cc8000, 0x00000000, 520); 
TEST_RR_OP( 131 , kslra16, 0x80007fff, 0x8000338a, 0x0000000f, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , kslra16, 0xffffffff, 0xffffffff, 0x80000017, 540); 
TEST_RR_OP( 136 , kslra16, 0xffff001c, 0xffff1c92, 0xd9790018, 544); 
TEST_RR_OP( 137 , kslra16, 0xffff0000, 0xffff0000, 0x80000000, 548); 
TEST_RR_OP( 138 , kslra16, 0x80008000, 0x80008000, 0x80000000, 552); 
TEST_RR_OP( 139 , kslra16, 0xe7ed0000, 0xcfdb0000, 0xffff001f, 556); 
TEST_RR_OP( 140 , kslra16, 0x00190001, 0x655a06b9, 0x00000016, 560); 
TEST_RR_OP( 141 , kslra16, 0xffff0000, 0xffff0000, 0xffff0000, 564); 
TEST_RR_OP( 142 , kslra16, 0x8000e000, 0x8000ffff, 0xffff000d, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , kslra16, 0xffff0000, 0xffff0000, 0xffff0000, 584); 
TEST_RR_OP( 147 , kslra16, 0x0000c000, 0x00008000, 0xffff001f, 588); 
TEST_RR_OP( 148 , kslra16, 0xc000c000, 0x80008000, 0xffff001f, 592); 
TEST_RR_OP( 149 , kslra16, 0x8000738e, 0x8000738e, 0x80000000, 596); 
TEST_RR_OP( 150 , kslra16, 0xffffffff, 0xffffffff, 0xffff001a, 600); 
TEST_RR_OP( 151 , kslra16, 0x80001a11, 0x80001a11, 0x4bb90000, 604); 
TEST_RR_OP( 152 , kslra16, 0x80001708, 0x80001708, 0xcf280000, 608); 
TEST_RR_OP( 153 , kslra16, 0x80007fff, 0x80003c5c, 0x00000008, 612); 
TEST_CASE( 154 ,616, x14, 1, rdov x14;);
TEST_CASE( 155 ,620, x14, 1, clrov;);
TEST_CASE( 156 ,624, x14, 0, rdov x14;);
TEST_RR_OP( 157 , kslra16, 0xa57d8000, 0xa57d8000, 0x80000000, 628); 
TEST_RR_OP( 158 , kslra16, 0xffffffff, 0xffffffff, 0x23e10000, 632); 
TEST_RR_OP( 159 , kslra16, 0x8000fb26, 0x8000fb26, 0x0be60000, 636); 
TEST_RR_OP( 160 , kslra16, 0x7fff8000, 0x71b98000, 0x60fb000a, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , kslra16, 0x80008000, 0x80008000, 0xffff0002, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , kslra16, 0x80000000, 0x80000000, 0x00000000, 672); 
TEST_RR_OP( 169 , kslra16, 0xd3410045, 0xa683008a, 0x9713001f, 676); 
TEST_RR_OP( 170 , kslra16, 0xffff0dd8, 0xffff1bb0, 0x0000001f, 680); 
TEST_RR_OP( 171 , kslra16, 0xffffc000, 0xffff8000, 0xffff001f, 684); 
TEST_RR_OP( 172 , kslra16, 0x97040000, 0x97040000, 0x55e70000, 688); 
TEST_RR_OP( 173 , kslra16, 0x0000c000, 0x0000ffff, 0xffff000e, 692); 
TEST_RR_OP( 174 , kslra16, 0x0000fff8, 0x0000ffff, 0x00000003, 696); 
TEST_RR_OP( 175 , kslra16, 0xffc0ffd6, 0x8000ac87, 0x80000017, 700); 
TEST_RR_OP( 176 , kslra16, 0x00008000, 0x00008000, 0x9a040000, 704); 
TEST_RR_OP( 177 , kslra16, 0x0000c104, 0x0000c104, 0xffff0000, 708); 
TEST_RR_OP( 178 , kslra16, 0x7fff0000, 0x3a8b0000, 0x80000006, 712); 
TEST_CASE( 179 ,716, x14, 1, rdov x14;);
TEST_CASE( 180 ,720, x14, 1, clrov;);
TEST_CASE( 181 ,724, x14, 0, rdov x14;);
TEST_RR_OP( 182 , kslra16, 0x0000ffff, 0x0000ffff, 0x8000001b, 728); 
TEST_RR_OP( 183 , kslra16, 0xffffffff, 0xffffffff, 0x80000000, 732); 
TEST_RR_OP( 184 , kslra16, 0xffffc000, 0xffff8000, 0x6809001f, 736); 
TEST_RR_OP( 185 , kslra16, 0xffffc000, 0xffff8000, 0x923a001f, 740); 
TEST_RR_OP( 186 , kslra16, 0x0030ff80, 0x30198000, 0x16df0018, 744); 
TEST_RR_OP( 187 , kslra16, 0xffff0187, 0xffff030f, 0x8000001f, 748); 
TEST_RR_OP( 188 , kslra16, 0x8000c000, 0x8000ffff, 0x0000000e, 752); 
TEST_CASE( 189 ,756, x14, 1, rdov x14;);
TEST_CASE( 190 ,760, x14, 1, clrov;);
TEST_CASE( 191 ,764, x14, 0, rdov x14;);
TEST_RR_OP( 192 , kslra16, 0x8000ffc0, 0x94baffff, 0x00000006, 768); 
TEST_CASE( 193 ,772, x14, 1, rdov x14;);
TEST_CASE( 194 ,776, x14, 1, clrov;);
TEST_CASE( 195 ,780, x14, 0, rdov x14;);
TEST_RR_OP( 196 , kslra16, 0xffff8000, 0xffff8000, 0x00000000, 784); 
TEST_RR_OP( 197 , kslra16, 0x311cffff, 0x311cffff, 0x00000000, 788); 
TEST_RR_OP( 198 , kslra16, 0x80007fff, 0xad464b8a, 0x0000000c, 792); 
TEST_CASE( 199 ,796, x14, 1, rdov x14;);

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
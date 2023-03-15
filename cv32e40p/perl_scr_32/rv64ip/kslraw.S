# See LICENSE for license details.
#*****************************************************************************
# kslraw.S
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

TEST_RR_OP( 2 , kslraw, 0x68bc0e80, 0x68bc0e80, 0x00000000, 8); 
TEST_RR_OP( 3 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 12); 
TEST_RR_OP( 4 , kslraw, 0x00000000, 0x00000000, 0x00000006, 16); 
TEST_RR_OP( 5 , kslraw, 0xffffffffffff0000, 0xffffffff, 0x00000010, 20); 
TEST_RR_OP( 6 , kslraw, 0xffffffffe0000000, 0xffffffff, 0x0000001d, 24); 
TEST_RR_OP( 7 , kslraw, 0xfffffffffffffff8, 0xffffffff, 0x00000003, 28); 
TEST_RR_OP( 8 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 32); 
TEST_RR_OP( 9 , kslraw, 0x382ff811, 0x705ff023, 0x0000003f, 36); 
TEST_RR_OP( 10 , kslraw, 0x00000000, 0x00000000, 0x0000002b, 40); 
TEST_RR_OP( 11 , kslraw, 0x00000000, 0x00000000, 0x00000013, 44); 
TEST_RR_OP( 12 , kslraw, 0x000000ff, 0x3fe1a8a7, 0x0000002a, 48); 
TEST_RR_OP( 13 , kslraw, 0x00000000, 0x00000000, 0x0000003f, 52); 
TEST_RR_OP( 14 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 56); 
TEST_RR_OP( 15 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 60); 
TEST_RR_OP( 16 , kslraw, 0x00000000, 0x00000000, 0x00000000, 64); 
TEST_RR_OP( 17 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000025, 68); 
TEST_RR_OP( 18 , kslraw, 0x07b5bda6, 0x0f6b7b4d, 0x0000003f, 72); 
TEST_RR_OP( 19 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 76); 
TEST_RR_OP( 20 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 80); 
TEST_RR_OP( 21 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 84); 
TEST_RR_OP( 22 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 88); 
TEST_RR_OP( 23 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 92); 
TEST_RR_OP( 24 , kslraw, 0xffffffffc2e4e6cb, 0x85c9cd97, 0x0000003f, 96); 
TEST_RR_OP( 25 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 100); 
TEST_RR_OP( 26 , kslraw, 0x247ecee0, 0x247ecee0, 0x00000000, 104); 
TEST_RR_OP( 27 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 108); 
TEST_RR_OP( 28 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 112); 
TEST_RR_OP( 29 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 116); 
TEST_RR_OP( 30 , kslraw, 0x5d99fec1, 0x5d99fec1, 0x00000000, 120); 
TEST_RR_OP( 31 , kslraw, 0xffffffffff833ce4, 0x833ce48b, 0x00000038, 124); 
TEST_RR_OP( 32 , kslraw, 0x00000000, 0x00000000, 0x00000000, 128); 
TEST_RR_OP( 33 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 132); 
TEST_RR_OP( 34 , kslraw, 0xfffffffffffff800, 0x80000000, 0x0000002c, 136); 
TEST_RR_OP( 35 , kslraw, 0xffffffffffffffff, 0xc5d28add, 0x00000021, 140); 
TEST_RR_OP( 36 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000002f, 144); 
TEST_RR_OP( 37 , kslraw, 0xfffffffffffffffe, 0xc4b6c62c, 0x00000023, 148); 
TEST_RR_OP( 38 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 152); 
TEST_RR_OP( 39 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 156); 
TEST_RR_OP( 40 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 160); 
TEST_RR_OP( 41 , kslraw, 0x7fffffff, 0x272af85b, 0x00000006, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , kslraw, 0xffffffff80000000, 0x80000000, 0x0000001a, 180); 
TEST_CASE( 46 ,184, x14, 1, rdov x14;);
TEST_CASE( 47 ,188, x14, 1, clrov;);
TEST_CASE( 48 ,192, x14, 0, rdov x14;);
TEST_RR_OP( 49 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 196); 
TEST_RR_OP( 50 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 200); 
TEST_RR_OP( 51 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 204); 
TEST_RR_OP( 52 , kslraw, 0xffffffff80000000, 0xb7be9c88, 0x0000001d, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 224); 
TEST_RR_OP( 57 , kslraw, 0x00000000, 0x00000000, 0x0000003f, 228); 
TEST_RR_OP( 58 , kslraw, 0xffffffff83ad1d0f, 0x83ad1d0f, 0x00000000, 232); 
TEST_RR_OP( 59 , kslraw, 0x00000000, 0x00000000, 0x00000000, 236); 
TEST_RR_OP( 60 , kslraw, 0xffffffff80000000, 0xdfebfa79, 0x00000013, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 256); 
TEST_RR_OP( 65 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 260); 
TEST_RR_OP( 66 , kslraw, 0x00000000, 0x00000000, 0x00000019, 264); 
TEST_RR_OP( 67 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 268); 
TEST_RR_OP( 68 , kslraw, 0xffffffff95a12016, 0x95a12016, 0x00000000, 272); 
TEST_RR_OP( 69 , kslraw, 0x00000000, 0x00000000, 0x00000021, 276); 
TEST_RR_OP( 70 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 280); 
TEST_RR_OP( 71 , kslraw, 0x14f21991, 0x29e43322, 0x0000003f, 284); 
TEST_RR_OP( 72 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 288); 
TEST_RR_OP( 73 , kslraw, 0x0a615bdb, 0x0a615bdb, 0x00000000, 292); 
TEST_RR_OP( 74 , kslraw, 0xffffffffbf1059ed, 0xbf1059ed, 0x00000000, 296); 
TEST_RR_OP( 75 , kslraw, 0x00000000, 0x00000000, 0x00000013, 300); 
TEST_RR_OP( 76 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 304); 
TEST_RR_OP( 77 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 308); 
TEST_RR_OP( 78 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 312); 
TEST_RR_OP( 79 , kslraw, 0x00000000, 0x00000000, 0x00000000, 316); 
TEST_RR_OP( 80 , kslraw, 0x16124213, 0x16124213, 0x00000000, 320); 
TEST_RR_OP( 81 , kslraw, 0x00000000, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kslraw, 0xffffffff80000000, 0x80000000, 0x0000001b, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , kslraw, 0x00000000, 0x00000000, 0x0000002f, 344); 
TEST_RR_OP( 87 , kslraw, 0x00000000, 0x00000000, 0x00000000, 348); 
TEST_RR_OP( 88 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 352); 
TEST_RR_OP( 89 , kslraw, 0x25e52ee4, 0x4bca5dc8, 0x0000003f, 356); 
TEST_RR_OP( 90 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 360); 
TEST_RR_OP( 91 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 364); 
TEST_RR_OP( 92 , kslraw, 0xffffffff80000000, 0xa9ce5985, 0x00000006, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 384); 
TEST_RR_OP( 97 , kslraw, 0x1a2bb273, 0x345764e7, 0x0000003f, 388); 
TEST_RR_OP( 98 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 392); 
TEST_RR_OP( 99 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000002f, 396); 
TEST_RR_OP( 100 , kslraw, 0x00000000, 0x00000000, 0x00000000, 400); 
TEST_RR_OP( 101 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000007, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , kslraw, 0xffffffffdff58f1d, 0xbfeb1e3a, 0x0000003f, 420); 
TEST_RR_OP( 106 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 424); 
TEST_RR_OP( 107 , kslraw, 0xffffffffa039e2db, 0xa039e2db, 0x00000000, 428); 
TEST_RR_OP( 108 , kslraw, 0x00000000, 0x00000000, 0x0000003f, 432); 
TEST_RR_OP( 109 , kslraw, 0xffffffffffffff00, 0xffffffff, 0x00000008, 436); 
TEST_RR_OP( 110 , kslraw, 0xffffffff80000000, 0xa619f10b, 0x0000000e, 440); 
TEST_CASE( 111 ,444, x14, 1, rdov x14;);
TEST_CASE( 112 ,448, x14, 1, clrov;);
TEST_CASE( 113 ,452, x14, 0, rdov x14;);
TEST_RR_OP( 114 , kslraw, 0x00000000, 0x00000000, 0x0000003f, 456); 
TEST_RR_OP( 115 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 460); 
TEST_RR_OP( 116 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 464); 
TEST_RR_OP( 117 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 468); 
TEST_RR_OP( 118 , kslraw, 0xffffffff80000000, 0x95eb1493, 0x0000000a, 472); 
TEST_CASE( 119 ,476, x14, 1, rdov x14;);
TEST_CASE( 120 ,480, x14, 1, clrov;);
TEST_CASE( 121 ,484, x14, 0, rdov x14;);
TEST_RR_OP( 122 , kslraw, 0xfffffffffffffffc, 0xffffffff, 0x00000002, 488); 
TEST_RR_OP( 123 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 492); 
TEST_RR_OP( 124 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 496); 
TEST_RR_OP( 125 , kslraw, 0xfffffffffc000000, 0xffffffff, 0x0000001a, 500); 
TEST_RR_OP( 126 , kslraw, 0xffffffff8c586c3a, 0x8c586c3a, 0x00000000, 504); 
TEST_RR_OP( 127 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 508); 
TEST_RR_OP( 128 , kslraw, 0xffffffffffffff80, 0x80000000, 0x00000028, 512); 
TEST_RR_OP( 129 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 516); 
TEST_RR_OP( 130 , kslraw, 0x0819d3cc, 0x1033a798, 0x0000003f, 520); 
TEST_RR_OP( 131 , kslraw, 0x0e153805, 0x0e153805, 0x00000000, 524); 
TEST_RR_OP( 132 , kslraw, 0x00000000, 0x76c560c5, 0x00000020, 528); 
TEST_RR_OP( 133 , kslraw, 0xffffffff80000000, 0x80000000, 0x0000000b, 532); 
TEST_CASE( 134 ,536, x14, 1, rdov x14;);
TEST_CASE( 135 ,540, x14, 1, clrov;);
TEST_CASE( 136 ,544, x14, 0, rdov x14;);
TEST_RR_OP( 137 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 548); 
TEST_RR_OP( 138 , kslraw, 0x05b7af01, 0x05b7af01, 0x00000000, 552); 
TEST_RR_OP( 139 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 556); 
TEST_RR_OP( 140 , kslraw, 0x3331a254, 0x3331a254, 0x00000000, 560); 
TEST_RR_OP( 141 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 564); 
TEST_RR_OP( 142 , kslraw, 0xffffffffde0c07ed, 0xde0c07ed, 0x00000000, 568); 
TEST_RR_OP( 143 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 572); 
TEST_RR_OP( 144 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , kslraw, 0x7fffffff, 0x42e2e6a0, 0x00000010, 580); 
TEST_CASE( 146 ,584, x14, 1, rdov x14;);
TEST_CASE( 147 ,588, x14, 1, clrov;);
TEST_CASE( 148 ,592, x14, 0, rdov x14;);
TEST_RR_OP( 149 , kslraw, 0xffffffffeb17f8f6, 0xd62ff1ed, 0x0000003f, 596); 
TEST_RR_OP( 150 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 600); 
TEST_RR_OP( 151 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 604); 
TEST_RR_OP( 152 , kslraw, 0xffffffff80000000, 0x80000000, 0x0000001f, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , kslraw, 0xfffffffff57f9330, 0xeaff2660, 0x0000003f, 624); 
TEST_RR_OP( 157 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 628); 
TEST_RR_OP( 158 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 632); 
TEST_RR_OP( 159 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000033, 636); 
TEST_RR_OP( 160 , kslraw, 0x00000000, 0x00000000, 0x00000033, 640); 
TEST_RR_OP( 161 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 644); 
TEST_RR_OP( 162 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000024, 648); 
TEST_RR_OP( 163 , kslraw, 0x00000000, 0x00000000, 0x00000008, 652); 
TEST_RR_OP( 164 , kslraw, 0x00000000, 0x00000000, 0x00000000, 656); 
TEST_RR_OP( 165 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 660); 
TEST_RR_OP( 166 , kslraw, 0x00000000, 0x00000000, 0x00000000, 664); 
TEST_RR_OP( 167 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 668); 
TEST_RR_OP( 168 , kslraw, 0x7cc8a9f7, 0x7cc8a9f7, 0x00000000, 672); 
TEST_RR_OP( 169 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 676); 
TEST_RR_OP( 170 , kslraw, 0x00000000, 0x00000000, 0x0000002b, 680); 
TEST_RR_OP( 171 , kslraw, 0xffffffffaee6ef21, 0xaee6ef21, 0x00000000, 684); 
TEST_RR_OP( 172 , kslraw, 0xffffffffffffc000, 0xffffffff, 0x0000000e, 688); 
TEST_RR_OP( 173 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 692); 
TEST_RR_OP( 174 , kslraw, 0x00000000, 0x00000000, 0x00000000, 696); 
TEST_RR_OP( 175 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 700); 
TEST_RR_OP( 176 , kslraw, 0x00000000, 0x00000000, 0x00000000, 704); 
TEST_RR_OP( 177 , kslraw, 0x00000000, 0x00000000, 0x00000000, 708); 
TEST_RR_OP( 178 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 712); 
TEST_RR_OP( 179 , kslraw, 0x00000000, 0x00000000, 0x00000000, 716); 
TEST_RR_OP( 180 , kslraw, 0x00000000, 0x00000000, 0x00000000, 720); 
TEST_RR_OP( 181 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 724); 
TEST_RR_OP( 182 , kslraw, 0x00000000, 0x00000000, 0x0000003f, 728); 
TEST_RR_OP( 183 , kslraw, 0xffffffffcae7f1d0, 0x95cfe3a0, 0x0000003f, 732); 
TEST_RR_OP( 184 , kslraw, 0x00000000, 0x00000000, 0x00000000, 736); 
TEST_RR_OP( 185 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 740); 
TEST_RR_OP( 186 , kslraw, 0xffffffffc0000000, 0x80000000, 0x0000003f, 744); 
TEST_RR_OP( 187 , kslraw, 0x00000000, 0x00000000, 0x00000013, 748); 
TEST_RR_OP( 188 , kslraw, 0xffffffffadd0de2a, 0xadd0de2a, 0x00000000, 752); 
TEST_RR_OP( 189 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 756); 
TEST_RR_OP( 190 , kslraw, 0x00000000, 0x00000000, 0x00000000, 760); 
TEST_RR_OP( 191 , kslraw, 0x00000000, 0x00000000, 0x00000000, 764); 
TEST_RR_OP( 192 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 768); 
TEST_RR_OP( 193 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x0000003f, 772); 
TEST_RR_OP( 194 , kslraw, 0xffffffff80000000, 0x80000000, 0x00000000, 776); 
TEST_RR_OP( 195 , kslraw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 780); 
TEST_RR_OP( 196 , kslraw, 0xffffffffffff0000, 0xffffffff, 0x00000010, 784); 
TEST_RR_OP( 197 , kslraw, 0x00000000, 0x00000000, 0x0000000f, 788); 
TEST_RR_OP( 198 , kslraw, 0x00000000, 0x00000000, 0x00000000, 792); 
TEST_RR_OP( 199 , kslraw, 0xffffffffb1251ebc, 0xb1251ebc, 0x00000000, 796); 

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
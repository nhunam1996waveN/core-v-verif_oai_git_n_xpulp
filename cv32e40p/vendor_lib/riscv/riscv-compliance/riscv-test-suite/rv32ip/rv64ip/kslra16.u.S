# See LICENSE for license details.
#*****************************************************************************
# kslra16.u.S
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

TEST_RR_OP( 2 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x80000000, 8); 
TEST_RR_OP( 3 , kslra16.u, 0x80004c66, 0x80004c66, 0xffff0000, 12); 
TEST_RR_OP( 4 , kslra16.u, 0xe90e132f, 0xd21c265d, 0x7ffc001f, 16); 
TEST_RR_OP( 5 , kslra16.u, 0xffffbdf5, 0xffffbdf5, 0x80000000, 20); 
TEST_RR_OP( 6 , kslra16.u, 0x00000000, 0x00000000, 0x00000000, 24); 
TEST_RR_OP( 7 , kslra16.u, 0xfe4c0000, 0x92e80000, 0x8000001a, 28); 
TEST_RR_OP( 8 , kslra16.u, 0xc7a6ffff, 0xc7a6ffff, 0x80000000, 32); 
TEST_RR_OP( 9 , kslra16.u, 0x00000000, 0x0000ffff, 0x00000013, 36); 
TEST_RR_OP( 10 , kslra16.u, 0x00000000, 0xffff0000, 0x0000001f, 40); 
TEST_RR_OP( 11 , kslra16.u, 0xf907c000, 0xf20e8000, 0x0000001f, 44); 
TEST_RR_OP( 12 , kslra16.u, 0x80000000, 0xf1930000, 0xe497000f, 48); 
TEST_CASE( 13 ,52, x14, 1, rdov x14;);
TEST_CASE( 14 ,56, x14, 1, clrov;);
TEST_CASE( 15 ,60, x14, 0, rdov x14;);
TEST_RR_OP( 16 , kslra16.u, 0x00003ad4, 0x000075a8, 0xffff001f, 64); 
TEST_RR_OP( 17 , kslra16.u, 0xff80ff80, 0xffffffff, 0x00000007, 68); 
TEST_RR_OP( 18 , kslra16.u, 0x00008000, 0x00008000, 0x80000000, 72); 
TEST_RR_OP( 19 , kslra16.u, 0x00008000, 0x0000b064, 0x00000001, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , kslra16.u, 0x00000000, 0x0000ffff, 0xffff001f, 92); 
TEST_RR_OP( 24 , kslra16.u, 0x0000ffff, 0x0000ffff, 0x80000000, 96); 
TEST_RR_OP( 25 , kslra16.u, 0x0000d80c, 0x0000b017, 0xffff001f, 100); 
TEST_RR_OP( 26 , kslra16.u, 0x00008000, 0x00008000, 0xffff0000, 104); 
TEST_RR_OP( 27 , kslra16.u, 0xc0003da9, 0x80007b51, 0x0000001f, 108); 
TEST_RR_OP( 28 , kslra16.u, 0xffff0000, 0xffff0000, 0xffff0000, 112); 
TEST_RR_OP( 29 , kslra16.u, 0x0000002f, 0x0000002f, 0xffff0000, 116); 
TEST_RR_OP( 30 , kslra16.u, 0x0000ffff, 0x0000ffff, 0x80000000, 120); 
TEST_RR_OP( 31 , kslra16.u, 0xfe008000, 0xffff8000, 0x80000009, 124); 
TEST_CASE( 32 ,128, x14, 1, rdov x14;);
TEST_CASE( 33 ,132, x14, 1, clrov;);
TEST_CASE( 34 ,136, x14, 0, rdov x14;);
TEST_RR_OP( 35 , kslra16.u, 0x0000f91e, 0xfffff23c, 0x0000001f, 140); 
TEST_RR_OP( 36 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x1c380000, 144); 
TEST_RR_OP( 37 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x00000000, 148); 
TEST_RR_OP( 38 , kslra16.u, 0x00008000, 0x00008000, 0xffff0000, 152); 
TEST_RR_OP( 39 , kslra16.u, 0xc0003bf0, 0x800077e0, 0x9bc6001f, 156); 
TEST_RR_OP( 40 , kslra16.u, 0xffffbcb1, 0xffffbcb1, 0xb17a0000, 160); 
TEST_RR_OP( 41 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x7a8c0000, 164); 
TEST_RR_OP( 42 , kslra16.u, 0xd903c000, 0xb2058000, 0xa33d001f, 168); 
TEST_RR_OP( 43 , kslra16.u, 0x8000fe00, 0x8000ffff, 0x00000009, 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_RR_OP( 47 , kslra16.u, 0x0000e000, 0xffff8000, 0x1186001e, 188); 
TEST_RR_OP( 48 , kslra16.u, 0x0000ffff, 0xd9c18000, 0x5f280011, 192); 
TEST_RR_OP( 49 , kslra16.u, 0xfffe0000, 0xbc430000, 0x00000013, 196); 
TEST_RR_OP( 50 , kslra16.u, 0xc0000000, 0x8000ffff, 0x8000001f, 200); 
TEST_RR_OP( 51 , kslra16.u, 0xc0000000, 0x8000ffff, 0x8000001f, 204); 
TEST_RR_OP( 52 , kslra16.u, 0x00000000, 0x00000000, 0xffff000f, 208); 
TEST_RR_OP( 53 , kslra16.u, 0xffff0000, 0xffff0000, 0x00000000, 212); 
TEST_RR_OP( 54 , kslra16.u, 0x7fff8000, 0x56df8000, 0xffff0008, 216); 
TEST_CASE( 55 ,220, x14, 1, rdov x14;);
TEST_CASE( 56 ,224, x14, 1, clrov;);
TEST_CASE( 57 ,228, x14, 0, rdov x14;);
TEST_RR_OP( 58 , kslra16.u, 0x80009a8b, 0x80009a8b, 0x9ca10000, 232); 
TEST_RR_OP( 59 , kslra16.u, 0x00000000, 0x066affff, 0xffff0010, 236); 
TEST_RR_OP( 60 , kslra16.u, 0xdaf854de, 0xdaf854de, 0x00000000, 240); 
TEST_RR_OP( 61 , kslra16.u, 0x00000549, 0xffff548e, 0x8000001c, 244); 
TEST_RR_OP( 62 , kslra16.u, 0x00000000, 0x00000000, 0x00000000, 248); 
TEST_RR_OP( 63 , kslra16.u, 0xffff8000, 0xffff8000, 0x00000000, 252); 
TEST_RR_OP( 64 , kslra16.u, 0x00003a5b, 0xffff74b5, 0x0000001f, 256); 
TEST_RR_OP( 65 , kslra16.u, 0xc0000a36, 0x8000146b, 0x8000001f, 260); 
TEST_RR_OP( 66 , kslra16.u, 0x80000000, 0x80000000, 0x00000000, 264); 
TEST_RR_OP( 67 , kslra16.u, 0x00008000, 0x00008000, 0x80000000, 268); 
TEST_RR_OP( 68 , kslra16.u, 0xf98f0c1f, 0xf98f0c1f, 0x81700000, 272); 
TEST_RR_OP( 69 , kslra16.u, 0x0000ffe0, 0xffff8000, 0x59eb0016, 276); 
TEST_RR_OP( 70 , kslra16.u, 0x61d7404f, 0x61d7404f, 0xd45b0000, 280); 
TEST_RR_OP( 71 , kslra16.u, 0xfc00fc00, 0xffffffff, 0x8000000a, 284); 
TEST_RR_OP( 72 , kslra16.u, 0x0000fad3, 0xffffd696, 0xffff001d, 288); 
TEST_RR_OP( 73 , kslra16.u, 0xffff0000, 0xffff0000, 0x00000000, 292); 
TEST_RR_OP( 74 , kslra16.u, 0xe926c000, 0xd24c8000, 0xffff001f, 296); 
TEST_RR_OP( 75 , kslra16.u, 0xc0000000, 0x8000ffff, 0xffff001f, 300); 
TEST_RR_OP( 76 , kslra16.u, 0x0000ffff, 0x0000ffff, 0x00000000, 304); 
TEST_RR_OP( 77 , kslra16.u, 0xffffe535, 0xffffe535, 0x63ae0000, 308); 
TEST_RR_OP( 78 , kslra16.u, 0x0000c000, 0x00008000, 0xffff001f, 312); 
TEST_RR_OP( 79 , kslra16.u, 0xc0000000, 0x80000000, 0xf276001f, 316); 
TEST_RR_OP( 80 , kslra16.u, 0xc5bd0000, 0x8b790000, 0xd3e8001f, 320); 
TEST_RR_OP( 81 , kslra16.u, 0x00000000, 0xffffffff, 0x0000001f, 324); 
TEST_RR_OP( 82 , kslra16.u, 0x80008000, 0x80008000, 0xd2b40000, 328); 
TEST_RR_OP( 83 , kslra16.u, 0x8e7ecc16, 0x8e7ecc16, 0x80000000, 332); 
TEST_RR_OP( 84 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x80000000, 336); 
TEST_RR_OP( 85 , kslra16.u, 0xd1d9c000, 0xa3b18000, 0x0000001f, 340); 
TEST_RR_OP( 86 , kslra16.u, 0x00000000, 0x00000000, 0x80000000, 344); 
TEST_RR_OP( 87 , kslra16.u, 0xf14f0000, 0xe29dffff, 0x7b0d001f, 348); 
TEST_RR_OP( 88 , kslra16.u, 0xfffface4, 0xfffface4, 0x80000000, 352); 
TEST_RR_OP( 89 , kslra16.u, 0x045cffff, 0x045cffff, 0xffff0000, 356); 
TEST_RR_OP( 90 , kslra16.u, 0x00000000, 0x00000000, 0xffff0014, 360); 
TEST_RR_OP( 91 , kslra16.u, 0xffc00000, 0x80000000, 0x85f20017, 364); 
TEST_RR_OP( 92 , kslra16.u, 0x862e782b, 0x862e782b, 0x80000000, 368); 
TEST_RR_OP( 93 , kslra16.u, 0x0000e000, 0xffff8000, 0x3084001e, 372); 
TEST_RR_OP( 94 , kslra16.u, 0xfffe8000, 0xffff8000, 0xffff0001, 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_RR_OP( 98 , kslra16.u, 0xcac9c000, 0x95928000, 0x0000001f, 392); 
TEST_RR_OP( 99 , kslra16.u, 0x00008000, 0x00008000, 0x80000000, 396); 
TEST_RR_OP( 100 , kslra16.u, 0x00000000, 0x00000000, 0x62ed0000, 400); 
TEST_RR_OP( 101 , kslra16.u, 0x80000000, 0xd1ad0000, 0x00000006, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , kslra16.u, 0x00008000, 0x00008000, 0x00000000, 420); 
TEST_RR_OP( 106 , kslra16.u, 0xc782ffff, 0xc782ffff, 0x00000000, 424); 
TEST_RR_OP( 107 , kslra16.u, 0x00006fd0, 0x00006fd0, 0x00000000, 428); 
TEST_RR_OP( 108 , kslra16.u, 0x0000c000, 0x00008000, 0xdce8001f, 432); 
TEST_RR_OP( 109 , kslra16.u, 0x16b1a389, 0x16b1a389, 0x80000000, 436); 
TEST_RR_OP( 110 , kslra16.u, 0x000000ae, 0xffff2b8f, 0xb72b001a, 440); 
TEST_RR_OP( 111 , kslra16.u, 0x80000000, 0x80000000, 0x7c300003, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , kslra16.u, 0xffffffff, 0xffffffff, 0xffff0000, 460); 
TEST_RR_OP( 116 , kslra16.u, 0x0b530000, 0x16a50000, 0x8abb001f, 464); 
TEST_RR_OP( 117 , kslra16.u, 0x80000000, 0x80000000, 0x943c0000, 468); 
TEST_RR_OP( 118 , kslra16.u, 0xfe0000f8, 0x80003e18, 0xe98e001a, 472); 
TEST_RR_OP( 119 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x00000000, 476); 
TEST_RR_OP( 120 , kslra16.u, 0xc0000000, 0x8000ffff, 0xffff001f, 480); 
TEST_RR_OP( 121 , kslra16.u, 0x0000ffff, 0x0000ffff, 0x15550000, 484); 
TEST_RR_OP( 122 , kslra16.u, 0x00000000, 0x00000000, 0xffff0000, 488); 
TEST_RR_OP( 123 , kslra16.u, 0x0000cd20, 0x00009a40, 0xffff001f, 492); 
TEST_RR_OP( 124 , kslra16.u, 0x00000000, 0xffffffff, 0x8000001f, 496); 
TEST_RR_OP( 125 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x80000000, 500); 
TEST_RR_OP( 126 , kslra16.u, 0x80000000, 0x80000000, 0x416c0000, 504); 
TEST_RR_OP( 127 , kslra16.u, 0x0000c000, 0x00008000, 0xab62001f, 508); 
TEST_RR_OP( 128 , kslra16.u, 0xc0000000, 0x80000000, 0x0000001f, 512); 
TEST_RR_OP( 129 , kslra16.u, 0x80008000, 0x80008000, 0x04480007, 516); 
TEST_CASE( 130 ,520, x14, 1, rdov x14;);
TEST_CASE( 131 ,524, x14, 1, clrov;);
TEST_CASE( 132 ,528, x14, 0, rdov x14;);
TEST_RR_OP( 133 , kslra16.u, 0x80000000, 0x80000000, 0x00000000, 532); 
TEST_RR_OP( 134 , kslra16.u, 0x00002927, 0xffff524d, 0x8000001f, 536); 
TEST_RR_OP( 135 , kslra16.u, 0x00000000, 0xffffffff, 0x0000001f, 540); 
TEST_RR_OP( 136 , kslra16.u, 0xffffffff, 0x80008000, 0x80000011, 544); 
TEST_RR_OP( 137 , kslra16.u, 0xffffffff, 0x80008000, 0xffff0010, 548); 
TEST_RR_OP( 138 , kslra16.u, 0x00008000, 0x0000ffff, 0xffff000f, 552); 
TEST_RR_OP( 139 , kslra16.u, 0x80001869, 0x80001869, 0xffff0000, 556); 
TEST_RR_OP( 140 , kslra16.u, 0x00000000, 0xffff0000, 0xffff001f, 560); 
TEST_RR_OP( 141 , kslra16.u, 0xfffc0000, 0xffff0000, 0x12b00002, 564); 
TEST_RR_OP( 142 , kslra16.u, 0xc2098fc2, 0xc2098fc2, 0x80000000, 568); 
TEST_RR_OP( 143 , kslra16.u, 0x00000000, 0xffffffff, 0xffff001f, 572); 
TEST_RR_OP( 144 , kslra16.u, 0x80008000, 0x8000a5b8, 0x8000000c, 576); 
TEST_CASE( 145 ,580, x14, 1, rdov x14;);
TEST_CASE( 146 ,584, x14, 1, clrov;);
TEST_CASE( 147 ,588, x14, 0, rdov x14;);
TEST_RR_OP( 148 , kslra16.u, 0x00000000, 0xffffffff, 0x0000001f, 592); 
TEST_RR_OP( 149 , kslra16.u, 0x00000000, 0x00000000, 0x80000000, 596); 
TEST_RR_OP( 150 , kslra16.u, 0xc000c000, 0x80008000, 0xa042001f, 600); 
TEST_RR_OP( 151 , kslra16.u, 0xffff8000, 0xffff8000, 0x00000000, 604); 
TEST_RR_OP( 152 , kslra16.u, 0x80008000, 0x80008000, 0x77c70000, 608); 
TEST_RR_OP( 153 , kslra16.u, 0x7e1f8000, 0x7e1f8000, 0xffff0000, 612); 
TEST_RR_OP( 154 , kslra16.u, 0x5fdbffff, 0x5fdbffff, 0x00000000, 616); 
TEST_RR_OP( 155 , kslra16.u, 0xff800000, 0xffff0000, 0x80000007, 620); 
TEST_RR_OP( 156 , kslra16.u, 0x0000025d, 0x000004ba, 0x8000001f, 624); 
TEST_RR_OP( 157 , kslra16.u, 0x06b70000, 0x1adaffff, 0x8000001e, 628); 
TEST_RR_OP( 158 , kslra16.u, 0xffffffff, 0xffffffff, 0x34a30000, 632); 
TEST_RR_OP( 159 , kslra16.u, 0x0000d4ae, 0x0000d4ae, 0xffff0000, 636); 
TEST_RR_OP( 160 , kslra16.u, 0x80008000, 0x80008000, 0xffff000a, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , kslra16.u, 0x0000ffff, 0x0000ffff, 0xffff0000, 656); 
TEST_RR_OP( 165 , kslra16.u, 0x327b0000, 0x64f50000, 0xffff001f, 660); 
TEST_RR_OP( 166 , kslra16.u, 0x00008000, 0x00008000, 0x00000000, 664); 
TEST_RR_OP( 167 , kslra16.u, 0xfff87fff, 0xffff7f9a, 0xffff0003, 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_RR_OP( 171 , kslra16.u, 0x00000000, 0x00000000, 0x00000000, 684); 
TEST_RR_OP( 172 , kslra16.u, 0x80001ccc, 0x80001ccc, 0xffff0000, 688); 
TEST_RR_OP( 173 , kslra16.u, 0x80000000, 0x80000000, 0xab8a0000, 692); 
TEST_RR_OP( 174 , kslra16.u, 0x80000000, 0x80000000, 0x80000000, 696); 
TEST_RR_OP( 175 , kslra16.u, 0x0000c000, 0x00008000, 0x055d001f, 700); 
TEST_RR_OP( 176 , kslra16.u, 0xb6770f11, 0xb6770f11, 0x00000000, 704); 
TEST_RR_OP( 177 , kslra16.u, 0xc62d0000, 0xc62d0000, 0x80000000, 708); 
TEST_RR_OP( 178 , kslra16.u, 0x00002253, 0xffff44a6, 0x0000001f, 712); 
TEST_RR_OP( 179 , kslra16.u, 0xce878000, 0xce878000, 0xffff0000, 716); 
TEST_RR_OP( 180 , kslra16.u, 0xeb720000, 0xeb720000, 0xffff0000, 720); 
TEST_RR_OP( 181 , kslra16.u, 0xffff0000, 0xffff0000, 0x605f0000, 724); 
TEST_RR_OP( 182 , kslra16.u, 0xffffffff, 0xffffffff, 0xffff0000, 728); 
TEST_RR_OP( 183 , kslra16.u, 0x0000ffff, 0x0000ffff, 0xffff0000, 732); 
TEST_RR_OP( 184 , kslra16.u, 0x00000000, 0x00000000, 0x8000001f, 736); 
TEST_RR_OP( 185 , kslra16.u, 0x8000ffff, 0x8000ffff, 0x00000000, 740); 
TEST_RR_OP( 186 , kslra16.u, 0x0000ffff, 0xc8d58000, 0x00000011, 744); 
TEST_RR_OP( 187 , kslra16.u, 0xee968000, 0xee968000, 0x24870000, 748); 
TEST_RR_OP( 188 , kslra16.u, 0xffff8000, 0xffff8000, 0x72f80000, 752); 
TEST_RR_OP( 189 , kslra16.u, 0x0000ffff, 0x0000ffff, 0x80000000, 756); 
TEST_RR_OP( 190 , kslra16.u, 0xffff8000, 0xffff8000, 0x00000000, 760); 
TEST_RR_OP( 191 , kslra16.u, 0x0000de62, 0xffffbcc3, 0xffff001f, 764); 
TEST_RR_OP( 192 , kslra16.u, 0x80008000, 0xfc748bbd, 0x80000009, 768); 
TEST_CASE( 193 ,772, x14, 1, rdov x14;);
TEST_CASE( 194 ,776, x14, 1, clrov;);
TEST_CASE( 195 ,780, x14, 0, rdov x14;);
TEST_RR_OP( 196 , kslra16.u, 0x0000c215, 0xffff842a, 0x8000001f, 784); 
TEST_RR_OP( 197 , kslra16.u, 0x80008000, 0x80008000, 0x00000000, 788); 
TEST_RR_OP( 198 , kslra16.u, 0x19548000, 0x19548000, 0x00000000, 792); 
TEST_RR_OP( 199 , kslra16.u, 0x00000000, 0x00000000, 0xffff000d, 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# add16.S
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

TEST_RR_OP( 2 , add16, 0x86e88000, 0x86e90000, 0xffff8000, 8); 
TEST_RR_OP( 3 , add16, 0xfffe0000, 0xffff0000, 0xffff0000, 12); 
TEST_RR_OP( 4 , add16, 0xffffffff, 0x00000000, 0xffffffff, 16); 
TEST_RR_OP( 5 , add16, 0xfffec7e5, 0xffff0000, 0xffffc7e5, 20); 
TEST_RR_OP( 6 , add16, 0x0000d445, 0x80008e4e, 0x800045f7, 24); 
TEST_RR_OP( 7 , add16, 0x8000ffff, 0x00000000, 0x8000ffff, 28); 
TEST_RR_OP( 8 , add16, 0x7fffd28f, 0x8000d290, 0xffffffff, 32); 
TEST_RR_OP( 9 , add16, 0xffff8000, 0x00008000, 0xffff0000, 36); 
TEST_RR_OP( 10 , add16, 0x33410000, 0x00000000, 0x33410000, 40); 
TEST_RR_OP( 11 , add16, 0x7fff8000, 0xffff0000, 0x80008000, 44); 
TEST_RR_OP( 12 , add16, 0x7fff3a41, 0x80003a42, 0xffffffff, 48); 
TEST_RR_OP( 13 , add16, 0xffff8000, 0x00008000, 0xffff0000, 52); 
TEST_RR_OP( 14 , add16, 0x5ef1dc77, 0xa198dc77, 0xbd590000, 56); 
TEST_RR_OP( 15 , add16, 0xfffe3b59, 0xffffbb59, 0xffff8000, 60); 
TEST_RR_OP( 16 , add16, 0xffff2c74, 0x00002c74, 0xffff0000, 64); 
TEST_RR_OP( 17 , add16, 0xf8592e7e, 0x80008000, 0x7859ae7e, 68); 
TEST_RR_OP( 18 , add16, 0xfffe8000, 0xffff0000, 0xffff8000, 72); 
TEST_RR_OP( 19 , add16, 0x80000491, 0x80000492, 0x0000ffff, 76); 
TEST_RR_OP( 20 , add16, 0x2923f2ed, 0x29238000, 0x000072ed, 80); 
TEST_RR_OP( 21 , add16, 0x80000000, 0x80008000, 0x00008000, 84); 
TEST_RR_OP( 22 , add16, 0xffff0af0, 0xffff0af1, 0x0000ffff, 88); 
TEST_RR_OP( 23 , add16, 0xb6fb6c85, 0xffff27f7, 0xb6fc448e, 92); 
TEST_RR_OP( 24 , add16, 0xffff8000, 0x00008000, 0xffff0000, 96); 
TEST_RR_OP( 25 , add16, 0x8000eab3, 0x00008000, 0x80006ab3, 100); 
TEST_RR_OP( 26 , add16, 0x88e98000, 0x88e98000, 0x00000000, 104); 
TEST_RR_OP( 27 , add16, 0x7fff0000, 0x80008000, 0xffff8000, 108); 
TEST_RR_OP( 28 , add16, 0xb4127a79, 0x00007a79, 0xb4120000, 112); 
TEST_RR_OP( 29 , add16, 0x00007fff, 0x80008000, 0x8000ffff, 116); 
TEST_RR_OP( 30 , add16, 0xfffed724, 0xffffc3e8, 0xffff133c, 120); 
TEST_RR_OP( 31 , add16, 0x79897fff, 0xf9898000, 0x8000ffff, 124); 
TEST_RR_OP( 32 , add16, 0xffff0000, 0x00008000, 0xffff8000, 128); 
TEST_RR_OP( 33 , add16, 0x7fff8000, 0x80000000, 0xffff8000, 132); 
TEST_RR_OP( 34 , add16, 0xe6620000, 0xffff0000, 0xe6630000, 136); 
TEST_RR_OP( 35 , add16, 0xfffe2fcd, 0xffff9171, 0xffff9e5c, 140); 
TEST_RR_OP( 36 , add16, 0x627b1a8f, 0x00001a8f, 0x627b0000, 144); 
TEST_RR_OP( 37 , add16, 0x2ec4ffff, 0x72890000, 0xbc3bffff, 148); 
TEST_RR_OP( 38 , add16, 0x80007fff, 0x8000ffff, 0x00008000, 152); 
TEST_RR_OP( 39 , add16, 0xfffeaa8c, 0xffff0000, 0xffffaa8c, 156); 
TEST_RR_OP( 40 , add16, 0xd99e9c9f, 0xffff9ca0, 0xd99fffff, 160); 
TEST_RR_OP( 41 , add16, 0x28ab1673, 0x0000ffff, 0x28ab1674, 164); 
TEST_RR_OP( 42 , add16, 0xffff7fff, 0xffff8000, 0x0000ffff, 168); 
TEST_RR_OP( 43 , add16, 0xc5ff82a5, 0xc60082a6, 0xffffffff, 172); 
TEST_RR_OP( 44 , add16, 0x8000e2a1, 0x8000ffff, 0x0000e2a2, 176); 
TEST_RR_OP( 45 , add16, 0x0857db69, 0x0000db69, 0x08570000, 180); 
TEST_RR_OP( 46 , add16, 0x5039ffff, 0x50390000, 0x0000ffff, 184); 
TEST_RR_OP( 47 , add16, 0x5f8c9474, 0x5f8c0000, 0x00009474, 188); 
TEST_RR_OP( 48 , add16, 0x076c8000, 0x876c0000, 0x80008000, 192); 
TEST_RR_OP( 49 , add16, 0xe0c00000, 0x80008000, 0x60c08000, 196); 
TEST_RR_OP( 50 , add16, 0xb66179e8, 0xb6610000, 0x000079e8, 200); 
TEST_RR_OP( 51 , add16, 0xa9c30000, 0x29c38000, 0x80008000, 204); 
TEST_RR_OP( 52 , add16, 0x7fffffff, 0x80000000, 0xffffffff, 208); 
TEST_RR_OP( 53 , add16, 0x8000ffff, 0x8000ffff, 0x00000000, 212); 
TEST_RR_OP( 54 , add16, 0x00007fff, 0x80008000, 0x8000ffff, 216); 
TEST_RR_OP( 55 , add16, 0x01b4ffff, 0x8825ffff, 0x798f0000, 220); 
TEST_RR_OP( 56 , add16, 0x8000fffe, 0x0000ffff, 0x8000ffff, 224); 
TEST_RR_OP( 57 , add16, 0x7ffff2dc, 0x80000000, 0xfffff2dc, 228); 
TEST_RR_OP( 58 , add16, 0x6c0be9c7, 0x0000e9c8, 0x6c0bffff, 232); 
TEST_RR_OP( 59 , add16, 0xe0291cfb, 0xe02a9cfb, 0xffff8000, 236); 
TEST_RR_OP( 60 , add16, 0xce408000, 0x80008000, 0x4e400000, 240); 
TEST_RR_OP( 61 , add16, 0x19a2890c, 0x19a3ffff, 0xffff890d, 244); 
TEST_RR_OP( 62 , add16, 0xfffeb466, 0xffff4be5, 0xffff6881, 248); 
TEST_RR_OP( 63 , add16, 0x80003978, 0x00003979, 0x8000ffff, 252); 
TEST_RR_OP( 64 , add16, 0x9e9effff, 0xffff0000, 0x9e9fffff, 256); 
TEST_RR_OP( 65 , add16, 0x0000ffff, 0x8000ffff, 0x80000000, 260); 
TEST_RR_OP( 66 , add16, 0x61b91431, 0xe1b96fdb, 0x8000a456, 264); 
TEST_RR_OP( 67 , add16, 0x5ded7fff, 0xdded8000, 0x8000ffff, 268); 
TEST_RR_OP( 68 , add16, 0x0000fea3, 0x80006f46, 0x80008f5d, 272); 
TEST_RR_OP( 69 , add16, 0xffffffff, 0xffff0000, 0x0000ffff, 276); 
TEST_RR_OP( 70 , add16, 0xe9ff75c5, 0x69ff8000, 0x8000f5c5, 280); 
TEST_RR_OP( 71 , add16, 0x7fffe5d8, 0xffff45e7, 0x80009ff1, 284); 
TEST_RR_OP( 72 , add16, 0xffff337b, 0xffff337b, 0x00000000, 288); 
TEST_RR_OP( 73 , add16, 0x7fffb8db, 0xffffffff, 0x8000b8dc, 292); 
TEST_RR_OP( 74 , add16, 0xfffe5199, 0xffff94ff, 0xffffbc9a, 296); 
TEST_RR_OP( 75 , add16, 0x7fff9e2c, 0xffff0000, 0x80009e2c, 300); 
TEST_RR_OP( 76 , add16, 0x7fff0000, 0x80008000, 0xffff8000, 304); 
TEST_RR_OP( 77 , add16, 0x546afb9c, 0x546bfb9d, 0xffffffff, 308); 
TEST_RR_OP( 78 , add16, 0xfd36ffff, 0x00000000, 0xfd36ffff, 312); 
TEST_RR_OP( 79 , add16, 0x7fff6294, 0x8000e294, 0xffff8000, 316); 
TEST_RR_OP( 80 , add16, 0x978f7fff, 0x8000ffff, 0x178f8000, 320); 
TEST_RR_OP( 81 , add16, 0x7a827fff, 0x80008000, 0xfa82ffff, 324); 
TEST_RR_OP( 82 , add16, 0x2ec57fff, 0xffffffff, 0x2ec68000, 328); 
TEST_RR_OP( 83 , add16, 0x88237fff, 0x00008000, 0x8823ffff, 332); 
TEST_RR_OP( 84 , add16, 0x7fff7fff, 0x8000ffff, 0xffff8000, 336); 
TEST_RR_OP( 85 , add16, 0xffff8000, 0x00000000, 0xffff8000, 340); 
TEST_RR_OP( 86 , add16, 0x52140efe, 0xd2140efe, 0x80000000, 344); 
TEST_RR_OP( 87 , add16, 0x0000c3e6, 0x00008000, 0x000043e6, 348); 
TEST_RR_OP( 88 , add16, 0xffffe3b4, 0xffffa38d, 0x00004027, 352); 
TEST_RR_OP( 89 , add16, 0xfffe93e4, 0xffff13e4, 0xffff8000, 356); 
TEST_RR_OP( 90 , add16, 0x80003739, 0x00000000, 0x80003739, 360); 
TEST_RR_OP( 91 , add16, 0xffff4b38, 0x0000baf6, 0xffff9042, 364); 
TEST_RR_OP( 92 , add16, 0xffff7fff, 0x00008000, 0xffffffff, 368); 
TEST_RR_OP( 93 , add16, 0xe3bdbb9b, 0xe3beffff, 0xffffbb9c, 372); 
TEST_RR_OP( 94 , add16, 0x65af2699, 0x00000000, 0x65af2699, 376); 
TEST_RR_OP( 95 , add16, 0x7fffffff, 0x8000ffff, 0xffff0000, 380); 
TEST_RR_OP( 96 , add16, 0xffffffff, 0x00000000, 0xffffffff, 384); 
TEST_RR_OP( 97 , add16, 0x24870000, 0x80000000, 0xa4870000, 388); 
TEST_RR_OP( 98 , add16, 0xffffffff, 0x0000ffff, 0xffff0000, 392); 
TEST_RR_OP( 99 , add16, 0x8000ffff, 0x0000ffff, 0x80000000, 396); 
TEST_RR_OP( 100 , add16, 0x0000fffe, 0x8000ffff, 0x8000ffff, 400); 
TEST_RR_OP( 101 , add16, 0x00008000, 0x00008000, 0x00000000, 404); 
TEST_RR_OP( 102 , add16, 0x000039d1, 0x00008000, 0x0000b9d1, 408); 
TEST_RR_OP( 103 , add16, 0x0000ffff, 0x0000ffff, 0x00000000, 412); 
TEST_RR_OP( 104 , add16, 0x7fff0000, 0xffff0000, 0x80000000, 416); 
TEST_RR_OP( 105 , add16, 0xfffeffff, 0xffffffff, 0xffff0000, 420); 
TEST_RR_OP( 106 , add16, 0x00005105, 0x0000d105, 0x00008000, 424); 
TEST_RR_OP( 107 , add16, 0x80008000, 0x80000000, 0x00008000, 428); 
TEST_RR_OP( 108 , add16, 0x80008412, 0x8000ffff, 0x00008413, 432); 
TEST_RR_OP( 109 , add16, 0x458c7fff, 0xffff8000, 0x458dffff, 436); 
TEST_RR_OP( 110 , add16, 0x886383bc, 0xffffffff, 0x886483bd, 440); 
TEST_RR_OP( 111 , add16, 0x5ba6d54d, 0x0000554d, 0x5ba68000, 444); 
TEST_RR_OP( 112 , add16, 0xfffe136f, 0xffff0000, 0xffff136f, 448); 
TEST_RR_OP( 113 , add16, 0x15bb30f4, 0x15bbffff, 0x000030f5, 452); 
TEST_RR_OP( 114 , add16, 0xffff0000, 0x00008000, 0xffff8000, 456); 
TEST_RR_OP( 115 , add16, 0x8000ffff, 0x0000ffff, 0x80000000, 460); 
TEST_RR_OP( 116 , add16, 0x881e7fff, 0x8000ffff, 0x081e8000, 464); 
TEST_RR_OP( 117 , add16, 0x81c97a05, 0x81c908fc, 0x00007109, 468); 
TEST_RR_OP( 118 , add16, 0xfffe8000, 0xffff0000, 0xffff8000, 472); 
TEST_RR_OP( 119 , add16, 0xecd941f9, 0xecda0000, 0xffff41f9, 476); 
TEST_RR_OP( 120 , add16, 0x8000a8f8, 0x00008000, 0x800028f8, 480); 
TEST_RR_OP( 121 , add16, 0xfffe6d51, 0xffff6d51, 0xffff0000, 484); 
TEST_RR_OP( 122 , add16, 0x7fffff94, 0x80008000, 0xffff7f94, 488); 
TEST_RR_OP( 123 , add16, 0x76367220, 0xf6367220, 0x80000000, 492); 
TEST_RR_OP( 124 , add16, 0xf60e8000, 0x31b20000, 0xc45c8000, 496); 
TEST_RR_OP( 125 , add16, 0x72f50000, 0x80000000, 0xf2f50000, 500); 
TEST_RR_OP( 126 , add16, 0x16a4393e, 0x16a4b93e, 0x00008000, 504); 
TEST_RR_OP( 127 , add16, 0x80007fff, 0x8000ffff, 0x00008000, 508); 
TEST_RR_OP( 128 , add16, 0x54149df1, 0x54149df1, 0x00000000, 512); 
TEST_RR_OP( 129 , add16, 0x80005756, 0x80000000, 0x00005756, 516); 
TEST_RR_OP( 130 , add16, 0x8000ffff, 0x8000ffff, 0x00000000, 520); 
TEST_RR_OP( 131 , add16, 0xfffffffe, 0x0000ffff, 0xffffffff, 524); 
TEST_RR_OP( 132 , add16, 0x00007fff, 0x8000ffff, 0x80008000, 528); 
TEST_RR_OP( 133 , add16, 0xfc820000, 0xffff0000, 0xfc830000, 532); 
TEST_RR_OP( 134 , add16, 0xffffffff, 0xffffffff, 0x00000000, 536); 
TEST_RR_OP( 135 , add16, 0x56039375, 0xd6037437, 0x80001f3e, 540); 
TEST_RR_OP( 136 , add16, 0xa3e60000, 0x0e840000, 0x95620000, 544); 
TEST_RR_OP( 137 , add16, 0x7fff86fc, 0xffff06fc, 0x80008000, 548); 
TEST_RR_OP( 138 , add16, 0x69467fff, 0x8000ffff, 0xe9468000, 552); 
TEST_RR_OP( 139 , add16, 0xffffffff, 0xffffffff, 0x00000000, 556); 
TEST_RR_OP( 140 , add16, 0x00006084, 0x80008000, 0x8000e084, 560); 
TEST_RR_OP( 141 , add16, 0x0000a53d, 0x00008000, 0x0000253d, 564); 
TEST_RR_OP( 142 , add16, 0x21fa8e64, 0xa1fa0000, 0x80008e64, 568); 
TEST_RR_OP( 143 , add16, 0x7ffffffe, 0xffffffff, 0x8000ffff, 572); 
TEST_RR_OP( 144 , add16, 0xd89f7fff, 0x00008000, 0xd89fffff, 576); 
TEST_RR_OP( 145 , add16, 0xffff0000, 0x00008000, 0xffff8000, 580); 
TEST_RR_OP( 146 , add16, 0x00008000, 0x00000000, 0x00008000, 584); 
TEST_RR_OP( 147 , add16, 0xfffe513f, 0xffff0000, 0xffff513f, 588); 
TEST_RR_OP( 148 , add16, 0x81aed983, 0x800082ef, 0x01ae5694, 592); 
TEST_RR_OP( 149 , add16, 0x57a57fff, 0x374dffff, 0x20588000, 596); 
TEST_RR_OP( 150 , add16, 0xffffffff, 0x0000ffff, 0xffff0000, 600); 
TEST_RR_OP( 151 , add16, 0xffff7fff, 0xffff8000, 0x0000ffff, 604); 
TEST_RR_OP( 152 , add16, 0xfffe7fff, 0xffff8000, 0xffffffff, 608); 
TEST_RR_OP( 153 , add16, 0xfffebcdc, 0xffff0000, 0xffffbcdc, 612); 
TEST_RR_OP( 154 , add16, 0x80006b50, 0x00006b51, 0x8000ffff, 616); 
TEST_RR_OP( 155 , add16, 0xfffe4594, 0xffff4595, 0xffffffff, 620); 
TEST_RR_OP( 156 , add16, 0x9c0bffff, 0x8000ffff, 0x1c0b0000, 624); 
TEST_RR_OP( 157 , add16, 0x93217fff, 0xffffffff, 0x93228000, 628); 
TEST_RR_OP( 158 , add16, 0x1aab87d0, 0x837987d1, 0x9732ffff, 632); 
TEST_RR_OP( 159 , add16, 0x7fff8000, 0xffff0000, 0x80008000, 636); 
TEST_RR_OP( 160 , add16, 0x00004c5a, 0x00004c5a, 0x00000000, 640); 
TEST_RR_OP( 161 , add16, 0x80000000, 0x00008000, 0x80008000, 644); 
TEST_RR_OP( 162 , add16, 0xeedd7fff, 0xeeddffff, 0x00008000, 648); 
TEST_RR_OP( 163 , add16, 0x0000ffff, 0x0000ffff, 0x00000000, 652); 
TEST_RR_OP( 164 , add16, 0x79eaf8dc, 0x79ea78dc, 0x00008000, 656); 
TEST_RR_OP( 165 , add16, 0xb2d78000, 0x80008000, 0x32d70000, 660); 
TEST_RR_OP( 166 , add16, 0x3f135df2, 0xa405ddf2, 0x9b0e8000, 664); 
TEST_RR_OP( 167 , add16, 0x4ff87fff, 0x4ff98000, 0xffffffff, 668); 
TEST_RR_OP( 168 , add16, 0x80000000, 0x00008000, 0x80008000, 672); 
TEST_RR_OP( 169 , add16, 0xfffe0000, 0xffff8000, 0xffff8000, 676); 
TEST_RR_OP( 170 , add16, 0xffff0000, 0xffff8000, 0x00008000, 680); 
TEST_RR_OP( 171 , add16, 0x00007651, 0x8000ffff, 0x80007652, 684); 
TEST_RR_OP( 172 , add16, 0x7fffe3b7, 0x8000e3b7, 0xffff0000, 688); 
TEST_RR_OP( 173 , add16, 0x0000ffff, 0x80000000, 0x8000ffff, 692); 
TEST_RR_OP( 174 , add16, 0x5db17fff, 0x00008000, 0x5db1ffff, 696); 
TEST_RR_OP( 175 , add16, 0x369b7fff, 0xffff8000, 0x369cffff, 700); 
TEST_RR_OP( 176 , add16, 0xe65c7fff, 0xffff8000, 0xe65dffff, 704); 
TEST_RR_OP( 177 , add16, 0xffffffff, 0xffff0000, 0x0000ffff, 708); 
TEST_RR_OP( 178 , add16, 0x9bb5ffff, 0x1d310000, 0x7e84ffff, 712); 
TEST_RR_OP( 179 , add16, 0x0000fb2c, 0x0000ffff, 0x0000fb2d, 716); 
TEST_RR_OP( 180 , add16, 0xffffffff, 0xffff0000, 0x0000ffff, 720); 
TEST_RR_OP( 181 , add16, 0xfffe7fff, 0xffffffff, 0xffff8000, 724); 
TEST_RR_OP( 182 , add16, 0x8000bf90, 0x00008000, 0x80003f90, 728); 
TEST_RR_OP( 183 , add16, 0x5c7b7fff, 0xdc7bffff, 0x80008000, 732); 
TEST_RR_OP( 184 , add16, 0x4cf68000, 0xccf60000, 0x80008000, 736); 
TEST_RR_OP( 185 , add16, 0xfffffffe, 0xffffffff, 0x0000ffff, 740); 
TEST_RR_OP( 186 , add16, 0x8000e64c, 0x0000664c, 0x80008000, 744); 
TEST_RR_OP( 187 , add16, 0xc1bfffff, 0xc1c00000, 0xffffffff, 748); 
TEST_RR_OP( 188 , add16, 0x80007fff, 0x8000ffff, 0x00008000, 752); 
TEST_RR_OP( 189 , add16, 0xf0ad08d4, 0x8000ffff, 0x70ad08d5, 756); 
TEST_RR_OP( 190 , add16, 0x13d6283e, 0x93d6728a, 0x8000b5b4, 760); 
TEST_RR_OP( 191 , add16, 0x267f8000, 0xffff8000, 0x26800000, 764); 
TEST_RR_OP( 192 , add16, 0xffff8000, 0xffff0000, 0x00008000, 768); 
TEST_RR_OP( 193 , add16, 0xffff8000, 0x00000000, 0xffff8000, 772); 
TEST_RR_OP( 194 , add16, 0x96f8eeab, 0x16f80000, 0x8000eeab, 776); 
TEST_RR_OP( 195 , add16, 0x8000fffe, 0x0000ffff, 0x8000ffff, 780); 
TEST_RR_OP( 196 , add16, 0xffffd7ea, 0x0000d7ea, 0xffff0000, 784); 
TEST_RR_OP( 197 , add16, 0x8000ffff, 0x8000ffff, 0x00000000, 788); 
TEST_RR_OP( 198 , add16, 0x31ae7fff, 0xb1ae8000, 0x8000ffff, 792); 
TEST_RR_OP( 199 , add16, 0x7fff576f, 0x8000a50c, 0xffffb263, 796); 

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
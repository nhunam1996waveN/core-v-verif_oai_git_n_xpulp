# See LICENSE for license details.
#*****************************************************************************
# urstas16.S
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

TEST_RR_OP( 2 , urstas16, 0xa2400000, 0xc4818000, 0x80008000, 8); 
TEST_RR_OP( 3 , urstas16, 0x854eab42, 0xa9d00000, 0x60cca97c, 12); 
TEST_RR_OP( 4 , urstas16, 0x8000502b, 0x8000ffff, 0x80005fa9, 16); 
TEST_RR_OP( 5 , urstas16, 0xffff3fff, 0xffffffff, 0xffff8000, 20); 
TEST_RR_OP( 6 , urstas16, 0xbfff63da, 0x8000ffff, 0xffff384b, 24); 
TEST_RR_OP( 7 , urstas16, 0x3234ab11, 0x64680000, 0x0000a9dd, 28); 
TEST_RR_OP( 8 , urstas16, 0x7fff7191, 0xffffffff, 0x00001cdc, 32); 
TEST_RR_OP( 9 , urstas16, 0x6287b19b, 0x00006335, 0xc50effff, 36); 
TEST_RR_OP( 10 , urstas16, 0x16fcbd34, 0x0dc30000, 0x20368597, 40); 
TEST_RR_OP( 11 , urstas16, 0x491e4000, 0x80008000, 0x123c0000, 44); 
TEST_RR_OP( 12 , urstas16, 0x40003fff, 0x8000ffff, 0x00008000, 48); 
TEST_RR_OP( 13 , urstas16, 0x24ee0000, 0x0000ffff, 0x49dcffff, 52); 
TEST_RR_OP( 14 , urstas16, 0x80007fff, 0x8000ffff, 0x80000000, 56); 
TEST_RR_OP( 15 , urstas16, 0x40008000, 0x80000000, 0x0000ffff, 60); 
TEST_RR_OP( 16 , urstas16, 0xccf04000, 0x99e18000, 0xffff0000, 64); 
TEST_RR_OP( 17 , urstas16, 0x7fffc000, 0x00000000, 0xffff8000, 68); 
TEST_RR_OP( 18 , urstas16, 0xc05f0000, 0xd77f0000, 0xa9400000, 72); 
TEST_RR_OP( 19 , urstas16, 0xffff8000, 0xffff0000, 0xffffffff, 76); 
TEST_RR_OP( 20 , urstas16, 0xbfff0000, 0x80000000, 0xffff0000, 80); 
TEST_RR_OP( 21 , urstas16, 0x7fff0ebc, 0x0000ffff, 0xffffe287, 84); 
TEST_RR_OP( 22 , urstas16, 0x7a43d8db, 0x80000000, 0x74864e49, 88); 
TEST_RR_OP( 23 , urstas16, 0xbfff0000, 0x8000ffff, 0xffffffff, 92); 
TEST_RR_OP( 24 , urstas16, 0xbfff0000, 0xffff0000, 0x80000000, 96); 
TEST_RR_OP( 25 , urstas16, 0x9c280000, 0xffff8000, 0x38528000, 100); 
TEST_RR_OP( 26 , urstas16, 0x40009588, 0x00000000, 0x8000d4ef, 104); 
TEST_RR_OP( 27 , urstas16, 0x7fff0000, 0x00000000, 0xffff0000, 108); 
TEST_RR_OP( 28 , urstas16, 0x4000e1ef, 0x000043de, 0x80008000, 112); 
TEST_RR_OP( 29 , urstas16, 0x7fffc000, 0x00008000, 0xffffffff, 116); 
TEST_RR_OP( 30 , urstas16, 0x40000000, 0x80008000, 0x00008000, 120); 
TEST_RR_OP( 31 , urstas16, 0x61fce036, 0x43f88000, 0x8000bf94, 124); 
TEST_RR_OP( 32 , urstas16, 0x66238000, 0x021d0000, 0xca2affff, 128); 
TEST_RR_OP( 33 , urstas16, 0x00000000, 0x0000ffff, 0x0000ffff, 132); 
TEST_RR_OP( 34 , urstas16, 0x00004000, 0x00008000, 0x00000000, 136); 
TEST_RR_OP( 35 , urstas16, 0x70300000, 0x0000ffff, 0xe061ffff, 140); 
TEST_RR_OP( 36 , urstas16, 0xbfffc000, 0xffff0000, 0x80008000, 144); 
TEST_RR_OP( 37 , urstas16, 0x80000000, 0x8000ffff, 0x8000ffff, 148); 
TEST_RR_OP( 38 , urstas16, 0x7fff3fff, 0x0000ffff, 0xffff8000, 152); 
TEST_RR_OP( 39 , urstas16, 0xb2ee9fa5, 0x65dd17d7, 0xffffd88c, 156); 
TEST_RR_OP( 40 , urstas16, 0x40008000, 0x00000000, 0x8000ffff, 160); 
TEST_RR_OP( 41 , urstas16, 0x88b2bcab, 0x91657955, 0x8000ffff, 164); 
TEST_RR_OP( 42 , urstas16, 0x490e5c32, 0x8000ffff, 0x121c479a, 168); 
TEST_RR_OP( 43 , urstas16, 0x40e6c000, 0x81cd0000, 0x00008000, 172); 
TEST_RR_OP( 44 , urstas16, 0xbfff81b6, 0xffff0000, 0x8000fc93, 176); 
TEST_RR_OP( 45 , urstas16, 0x22910000, 0x45230000, 0x00000000, 180); 
TEST_RR_OP( 46 , urstas16, 0x82403ae7, 0x048275cf, 0xffff0000, 184); 
TEST_RR_OP( 47 , urstas16, 0x80003bb8, 0x8000f771, 0x80008000, 188); 
TEST_RR_OP( 48 , urstas16, 0x6bc94000, 0x10ea8000, 0xc6a90000, 192); 
TEST_RR_OP( 49 , urstas16, 0x03a10000, 0x07420000, 0x00000000, 196); 
TEST_RR_OP( 50 , urstas16, 0x40000000, 0x00008000, 0x80008000, 200); 
TEST_RR_OP( 51 , urstas16, 0xffff9b5f, 0xffff36bd, 0xffffffff, 204); 
TEST_RR_OP( 52 , urstas16, 0xbfff79e4, 0xffffffff, 0x80000c36, 208); 
TEST_RR_OP( 53 , urstas16, 0xc5f6c000, 0xffff0000, 0x8bee8000, 212); 
TEST_RR_OP( 54 , urstas16, 0xbfff7dae, 0x8000ffff, 0xffff04a2, 216); 
TEST_RR_OP( 55 , urstas16, 0x89330000, 0x92678000, 0x80008000, 220); 
TEST_RR_OP( 56 , urstas16, 0x4000d124, 0x800074c8, 0x0000d27f, 224); 
TEST_RR_OP( 57 , urstas16, 0x2173e5b1, 0x42e78ae6, 0x0000bf83, 228); 
TEST_RR_OP( 58 , urstas16, 0xbfff2174, 0xffff42e9, 0x80000000, 232); 
TEST_RR_OP( 59 , urstas16, 0xefb20000, 0xdf660000, 0xffff0000, 236); 
TEST_RR_OP( 60 , urstas16, 0x16659641, 0x2cca0000, 0x0000d37d, 240); 
TEST_RR_OP( 61 , urstas16, 0x7fff8000, 0xffff0000, 0x0000ffff, 244); 
TEST_RR_OP( 62 , urstas16, 0x40003817, 0x0000ffff, 0x80008fd0, 248); 
TEST_RR_OP( 63 , urstas16, 0x83bf14fa, 0x0780fa25, 0xffffd030, 252); 
TEST_RR_OP( 64 , urstas16, 0x4000c963, 0x800092c5, 0x0000ffff, 256); 
TEST_RR_OP( 65 , urstas16, 0x0000b324, 0x0000564a, 0x0000f002, 260); 
TEST_RR_OP( 66 , urstas16, 0xbfff0000, 0x8000ffff, 0xffffffff, 264); 
TEST_RR_OP( 67 , urstas16, 0x80f5c000, 0x80008000, 0x81ebffff, 268); 
TEST_RR_OP( 68 , urstas16, 0x72cb3fff, 0x6597ffff, 0x80008000, 272); 
TEST_RR_OP( 69 , urstas16, 0x8b271cc7, 0xffffb0a8, 0x1650771a, 276); 
TEST_RR_OP( 70 , urstas16, 0x800002af, 0x8000855f, 0x80008000, 280); 
TEST_RR_OP( 71 , urstas16, 0x87c1a5ef, 0x8f834bdd, 0x8000ffff, 284); 
TEST_RR_OP( 72 , urstas16, 0xffff08ae, 0xffff8000, 0xffff6ea4, 288); 
TEST_RR_OP( 73 , urstas16, 0x0ba8fc03, 0x17508000, 0x000087f9, 292); 
TEST_RR_OP( 74 , urstas16, 0x486fc3da, 0x90df8000, 0x0000f84c, 296); 
TEST_RR_OP( 75 , urstas16, 0x4aef0000, 0x80000000, 0x15de0000, 300); 
TEST_RR_OP( 76 , urstas16, 0x00004000, 0x00008000, 0x00000000, 304); 
TEST_RR_OP( 77 , urstas16, 0xa3bcb85b, 0x477970b5, 0xffffffff, 308); 
TEST_RR_OP( 78 , urstas16, 0x40000000, 0x80000000, 0x00000000, 312); 
TEST_RR_OP( 79 , urstas16, 0xea3aeaa7, 0xffff8000, 0xd476aab1, 316); 
TEST_RR_OP( 80 , urstas16, 0x8000c000, 0x80000000, 0x80008000, 320); 
TEST_RR_OP( 81 , urstas16, 0x40007fff, 0x8000ffff, 0x00000000, 324); 
TEST_RR_OP( 82 , urstas16, 0x7fff3fff, 0x0000ffff, 0xffff8000, 328); 
TEST_RR_OP( 83 , urstas16, 0x9f3f34f7, 0x80008000, 0xbe7e1612, 332); 
TEST_RR_OP( 84 , urstas16, 0x40008000, 0x80000000, 0x0000ffff, 336); 
TEST_RR_OP( 85 , urstas16, 0xbfff4000, 0xffff8000, 0x80000000, 340); 
TEST_RR_OP( 86 , urstas16, 0x4000294d, 0x80008000, 0x00002d65, 344); 
TEST_RR_OP( 87 , urstas16, 0x7fffef65, 0xffff5eca, 0x00008000, 348); 
TEST_RR_OP( 88 , urstas16, 0x272a0000, 0x00008000, 0x4e548000, 352); 
TEST_RR_OP( 89 , urstas16, 0x7fffc000, 0x00000000, 0xffff8000, 356); 
TEST_RR_OP( 90 , urstas16, 0xffff69c8, 0xffffd390, 0xffff0000, 360); 
TEST_RR_OP( 91 , urstas16, 0xb0612e73, 0x60c35ce6, 0xffff0000, 364); 
TEST_RR_OP( 92 , urstas16, 0x7fff8000, 0xffff0000, 0x0000ffff, 368); 
TEST_RR_OP( 93 , urstas16, 0x86154000, 0x637e8000, 0xa8ac0000, 372); 
TEST_RR_OP( 94 , urstas16, 0xbfff0000, 0xffffffff, 0x8000ffff, 376); 
TEST_RR_OP( 95 , urstas16, 0xf4281396, 0xffff8000, 0xe85158d4, 380); 
TEST_RR_OP( 96 , urstas16, 0x70c3dbb1, 0xe186b761, 0x0000ffff, 384); 
TEST_RR_OP( 97 , urstas16, 0xffff50db, 0xffffffff, 0xffff5e49, 388); 
TEST_RR_OP( 98 , urstas16, 0x35728000, 0x00000000, 0x6ae5ffff, 392); 
TEST_RR_OP( 99 , urstas16, 0x96568000, 0x2cae0000, 0xffffffff, 396); 
TEST_RR_OP( 100 , urstas16, 0xaca52c7f, 0x594cd8ff, 0xffff8000, 400); 
TEST_RR_OP( 101 , urstas16, 0x00000000, 0x0000ffff, 0x0000ffff, 404); 
TEST_RR_OP( 102 , urstas16, 0x40007fff, 0x0000ffff, 0x80000000, 408); 
TEST_RR_OP( 103 , urstas16, 0x4000c000, 0x80008000, 0x0000ffff, 412); 
TEST_RR_OP( 104 , urstas16, 0x7fff04b3, 0xffffffff, 0x0000f699, 416); 
TEST_RR_OP( 105 , urstas16, 0x80000000, 0x80000000, 0x80000000, 420); 
TEST_RR_OP( 106 , urstas16, 0xbfffcaf9, 0x800095f2, 0xffffffff, 424); 
TEST_RR_OP( 107 , urstas16, 0x4e303fff, 0x1c60ffff, 0x80008000, 428); 
TEST_RR_OP( 108 , urstas16, 0x8efb7fff, 0x1df7ffff, 0xffff0000, 432); 
TEST_RR_OP( 109 , urstas16, 0x624c0000, 0x4499ffff, 0x8000ffff, 436); 
TEST_RR_OP( 110 , urstas16, 0x26bd2b75, 0x000056ea, 0x4d7b0000, 440); 
TEST_RR_OP( 111 , urstas16, 0x8000c000, 0x80000000, 0x80008000, 444); 
TEST_RR_OP( 112 , urstas16, 0xbfff0000, 0xffff8000, 0x80008000, 448); 
TEST_RR_OP( 113 , urstas16, 0xbfff1b7c, 0x80008000, 0xffff4907, 452); 
TEST_RR_OP( 114 , urstas16, 0x27d30000, 0x00008000, 0x4fa78000, 456); 
TEST_RR_OP( 115 , urstas16, 0x4000cda0, 0x0000409d, 0x8000a55c, 460); 
TEST_RR_OP( 116 , urstas16, 0xc23f0000, 0xba8e8000, 0xc9f18000, 464); 
TEST_RR_OP( 117 , urstas16, 0x4000f243, 0x0000e486, 0x8000ffff, 468); 
TEST_RR_OP( 118 , urstas16, 0xb9420000, 0x72860000, 0xffff0000, 472); 
TEST_RR_OP( 119 , urstas16, 0xca760000, 0xffffffff, 0x94eeffff, 476); 
TEST_RR_OP( 120 , urstas16, 0x9e6b2b43, 0xffff5687, 0x3cd80000, 480); 
TEST_RR_OP( 121 , urstas16, 0x0000a776, 0x00000000, 0x0000b113, 484); 
TEST_RR_OP( 122 , urstas16, 0x7fffe310, 0xffff2f32, 0x00006911, 488); 
TEST_RR_OP( 123 , urstas16, 0x7fffc000, 0x00008000, 0xffffffff, 492); 
TEST_RR_OP( 124 , urstas16, 0x7c6f0000, 0x80000000, 0x78de0000, 496); 
TEST_RR_OP( 125 , urstas16, 0x69133fff, 0x8000ffff, 0x52278000, 500); 
TEST_RR_OP( 126 , urstas16, 0x8dd5c000, 0x1bab8000, 0xffffffff, 504); 
TEST_RR_OP( 127 , urstas16, 0x0000f5dd, 0x00006bba, 0x00008000, 508); 
TEST_RR_OP( 128 , urstas16, 0x92ee83ee, 0xa5dc0000, 0x8000f823, 512); 
TEST_RR_OP( 129 , urstas16, 0xab7f35e4, 0x80006bc9, 0xd6fe0000, 516); 
TEST_RR_OP( 130 , urstas16, 0xbdaac000, 0xfb540000, 0x80008000, 520); 
TEST_RR_OP( 131 , urstas16, 0x00000000, 0x00000000, 0x00000000, 524); 
TEST_RR_OP( 132 , urstas16, 0xb15164f9, 0x8000c9f3, 0xe2a20000, 528); 
TEST_RR_OP( 133 , urstas16, 0x40008000, 0x80000000, 0x0000ffff, 532); 
TEST_RR_OP( 134 , urstas16, 0x8000c000, 0x80008000, 0x8000ffff, 536); 
TEST_RR_OP( 135 , urstas16, 0xa7504000, 0xffff8000, 0x4ea20000, 540); 
TEST_RR_OP( 136 , urstas16, 0xa582b420, 0xffff0000, 0x4b0697bf, 544); 
TEST_RR_OP( 137 , urstas16, 0x7fffda25, 0x0000b44a, 0xffffffff, 548); 
TEST_RR_OP( 138 , urstas16, 0x8000c000, 0x80008000, 0x8000ffff, 552); 
TEST_RR_OP( 139 , urstas16, 0xbfff56eb, 0xffffadd6, 0x80000000, 556); 
TEST_RR_OP( 140 , urstas16, 0xc5258169, 0x8a4b02d1, 0xffffffff, 560); 
TEST_RR_OP( 141 , urstas16, 0x2bb4c0a9, 0x00000153, 0x57688000, 564); 
TEST_RR_OP( 142 , urstas16, 0x514ea45d, 0x7fce48ba, 0x22cfffff, 568); 
TEST_RR_OP( 143 , urstas16, 0xffff3fff, 0xffffffff, 0xffff8000, 572); 
TEST_RR_OP( 144 , urstas16, 0x3f54c000, 0x00008000, 0x7ea8ffff, 576); 
TEST_RR_OP( 145 , urstas16, 0xb7407fff, 0x6e81ffff, 0xffff0000, 580); 
TEST_RR_OP( 146 , urstas16, 0x80001578, 0x8000ebef, 0x8000c0fe, 584); 
TEST_RR_OP( 147 , urstas16, 0x4000c000, 0x00000000, 0x80008000, 588); 
TEST_RR_OP( 148 , urstas16, 0x40006c2e, 0x8000ffff, 0x000027a3, 592); 
TEST_RR_OP( 149 , urstas16, 0xb201c000, 0x64038000, 0xffffffff, 596); 
TEST_RR_OP( 150 , urstas16, 0x7e656e6d, 0xfccbdcdb, 0x00000000, 600); 
TEST_RR_OP( 151 , urstas16, 0x8000c000, 0x80000000, 0x80008000, 604); 
TEST_RR_OP( 152 , urstas16, 0x24633fff, 0x48c7ffff, 0x00008000, 608); 
TEST_RR_OP( 153 , urstas16, 0x55997fff, 0x8000ffff, 0x2b320000, 612); 
TEST_RR_OP( 154 , urstas16, 0xd646df63, 0xf4bbbec5, 0xb7d2ffff, 616); 
TEST_RR_OP( 155 , urstas16, 0x7fffeda2, 0xffff5b44, 0x00008000, 620); 
TEST_RR_OP( 156 , urstas16, 0xd495c8bc, 0xffff9177, 0xa92cffff, 624); 
TEST_RR_OP( 157 , urstas16, 0xffff9b12, 0xffff3623, 0xffffffff, 628); 
TEST_RR_OP( 158 , urstas16, 0x200fc000, 0x18358000, 0x27eaffff, 632); 
TEST_RR_OP( 159 , urstas16, 0xc04e8000, 0x809e0000, 0xffffffff, 636); 
TEST_RR_OP( 160 , urstas16, 0x7fff0000, 0x00000000, 0xffff0000, 640); 
TEST_RR_OP( 161 , urstas16, 0x9c970000, 0xb92e0000, 0x80000000, 644); 
TEST_RR_OP( 162 , urstas16, 0x5a480000, 0x48218000, 0x6c6f8000, 648); 
TEST_RR_OP( 163 , urstas16, 0xffffa049, 0xffff4091, 0xffffffff, 652); 
TEST_RR_OP( 164 , urstas16, 0x426e4000, 0x84dc8000, 0x00000000, 656); 
TEST_RR_OP( 165 , urstas16, 0xaad12512, 0x55a34a25, 0xffff0000, 660); 
TEST_RR_OP( 166 , urstas16, 0x42503fff, 0x04a0ffff, 0x80008000, 664); 
TEST_RR_OP( 167 , urstas16, 0xbfff3fff, 0xffffffff, 0x80008000, 668); 
TEST_RR_OP( 168 , urstas16, 0x40004000, 0x80008000, 0x00000000, 672); 
TEST_RR_OP( 169 , urstas16, 0x4000c000, 0x00008000, 0x8000ffff, 676); 
TEST_RR_OP( 170 , urstas16, 0x936d2053, 0x26dc40a7, 0xffff0000, 680); 
TEST_RR_OP( 171 , urstas16, 0xbfff7fff, 0xffffffff, 0x80000000, 684); 
TEST_RR_OP( 172 , urstas16, 0xe2254000, 0xc44b8000, 0xffff0000, 688); 
TEST_RR_OP( 173 , urstas16, 0x7fffebea, 0x00008000, 0xffffa82b, 692); 
TEST_RR_OP( 174 , urstas16, 0x47f60000, 0x8fec8000, 0x00008000, 696); 
TEST_RR_OP( 175 , urstas16, 0xb3cec000, 0xe79d0000, 0x80008000, 700); 
TEST_RR_OP( 176 , urstas16, 0xbfff4000, 0xffff8000, 0x80000000, 704); 
TEST_RR_OP( 177 , urstas16, 0x55693c4a, 0x80007894, 0x2ad20000, 708); 
TEST_RR_OP( 178 , urstas16, 0xbfff0000, 0xffff8000, 0x80008000, 712); 
TEST_RR_OP( 179 , urstas16, 0xffff7fff, 0xffffffff, 0xffff0000, 716); 
TEST_RR_OP( 180 , urstas16, 0x5457ba6d, 0x80000000, 0x28ae8b25, 720); 
TEST_RR_OP( 181 , urstas16, 0x40000000, 0x00008000, 0x80008000, 724); 
TEST_RR_OP( 182 , urstas16, 0xd7417fff, 0xae83ffff, 0xffff0000, 728); 
TEST_RR_OP( 183 , urstas16, 0xffff0000, 0xffffffff, 0xffffffff, 732); 
TEST_RR_OP( 184 , urstas16, 0x5ae0b21c, 0x60060000, 0x55bb9bc8, 736); 
TEST_RR_OP( 185 , urstas16, 0x40003fff, 0x0000ffff, 0x80008000, 740); 
TEST_RR_OP( 186 , urstas16, 0xbfff0000, 0xffff0000, 0x80000000, 744); 
TEST_RR_OP( 187 , urstas16, 0x92717fff, 0x8000ffff, 0xa4e20000, 748); 
TEST_RR_OP( 188 , urstas16, 0x7fff0000, 0x0000ffff, 0xffffffff, 752); 
TEST_RR_OP( 189 , urstas16, 0x400087b4, 0x00000000, 0x8000f097, 756); 
TEST_RR_OP( 190 , urstas16, 0xffffc000, 0xffff0000, 0xffff8000, 760); 
TEST_RR_OP( 191 , urstas16, 0x40008000, 0x80000000, 0x0000ffff, 764); 
TEST_RR_OP( 192 , urstas16, 0x44cf8000, 0x80000000, 0x099effff, 768); 
TEST_RR_OP( 193 , urstas16, 0x40000000, 0x80000000, 0x00000000, 772); 
TEST_RR_OP( 194 , urstas16, 0x7fff1091, 0x00002123, 0xffff0000, 776); 
TEST_RR_OP( 195 , urstas16, 0xa4798000, 0xffff0000, 0x48f4ffff, 780); 
TEST_RR_OP( 196 , urstas16, 0xa8c0d28e, 0xffff0000, 0x51825ae3, 784); 
TEST_RR_OP( 197 , urstas16, 0x4000ed68, 0x00000000, 0x80002530, 788); 
TEST_RR_OP( 198 , urstas16, 0x00003fdc, 0x00007fb8, 0x00000000, 792); 
TEST_RR_OP( 199 , urstas16, 0x7fff2806, 0x00008000, 0xffff2ff3, 796); 

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
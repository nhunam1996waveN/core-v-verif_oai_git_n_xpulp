# See LICENSE for license details.
#*****************************************************************************
# ursub16.S
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

TEST_RR_OP( 2 , ursub16, 0x00008000, 0xffff0000, 0xffffffff, 8); 
TEST_RR_OP( 3 , ursub16, 0x0a340000, 0x74230000, 0x5fba0000, 12); 
TEST_RR_OP( 4 , ursub16, 0xd6780000, 0x4606ffff, 0x9916ffff, 16); 
TEST_RR_OP( 5 , ursub16, 0xc0008000, 0x80000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , ursub16, 0xf8430000, 0x8000ffff, 0x8f79ffff, 24); 
TEST_RR_OP( 7 , ursub16, 0x40004000, 0x80008000, 0x00000000, 28); 
TEST_RR_OP( 8 , ursub16, 0x3bb23fff, 0x7764ffff, 0x00008000, 32); 
TEST_RR_OP( 9 , ursub16, 0x46380000, 0xffff0000, 0x738e0000, 36); 
TEST_RR_OP( 10 , ursub16, 0xe56da61c, 0xcad94c38, 0xffffffff, 40); 
TEST_RR_OP( 11 , ursub16, 0x379cc000, 0xffff8000, 0x90c6ffff, 44); 
TEST_RR_OP( 12 , ursub16, 0xbd4cf62f, 0x7a976c5f, 0xffff8000, 48); 
TEST_RR_OP( 13 , ursub16, 0x3ffff96a, 0xffff0000, 0x80000d2c, 52); 
TEST_RR_OP( 14 , ursub16, 0x3db0c000, 0xffff0000, 0x849f8000, 56); 
TEST_RR_OP( 15 , ursub16, 0xe5768000, 0xcaec0000, 0xffffffff, 60); 
TEST_RR_OP( 16 , ursub16, 0x3803c000, 0x70068000, 0x0000ffff, 64); 
TEST_RR_OP( 17 , ursub16, 0x40000000, 0x80008000, 0x00008000, 68); 
TEST_RR_OP( 18 , ursub16, 0x05ce3fff, 0x8b9dffff, 0x80008000, 72); 
TEST_RR_OP( 19 , ursub16, 0x00000000, 0x00008000, 0x00008000, 76); 
TEST_RR_OP( 20 , ursub16, 0x3fffc000, 0xffff0000, 0x80008000, 80); 
TEST_RR_OP( 21 , ursub16, 0xee51292a, 0x5ca28000, 0x80002dab, 84); 
TEST_RR_OP( 22 , ursub16, 0x80007fff, 0x0000ffff, 0xffff0000, 88); 
TEST_RR_OP( 23 , ursub16, 0x80007fff, 0x0000ffff, 0xffff0000, 92); 
TEST_RR_OP( 24 , ursub16, 0xc0004400, 0x00008800, 0x80000000, 96); 
TEST_RR_OP( 25 , ursub16, 0x40004000, 0x80008000, 0x00000000, 100); 
TEST_RR_OP( 26 , ursub16, 0x0e2a19a4, 0xa8e9c1cf, 0x8c948e87, 104); 
TEST_RR_OP( 27 , ursub16, 0x81320000, 0x02638000, 0xffff8000, 108); 
TEST_RR_OP( 28 , ursub16, 0x7fffc000, 0xffff0000, 0x00008000, 112); 
TEST_RR_OP( 29 , ursub16, 0x0a280658, 0xffff8000, 0xebae7350, 116); 
TEST_RR_OP( 30 , ursub16, 0x00007fff, 0x8000ffff, 0x80000000, 120); 
TEST_RR_OP( 31 , ursub16, 0x0000015b, 0xffff02b6, 0xffff0000, 124); 
TEST_RR_OP( 32 , ursub16, 0x00007fff, 0xffffffff, 0xffff0000, 128); 
TEST_RR_OP( 33 , ursub16, 0xc00028f6, 0x0000a143, 0x80004f56, 132); 
TEST_RR_OP( 34 , ursub16, 0x3ffff2cc, 0xffff6599, 0x80008000, 136); 
TEST_RR_OP( 35 , ursub16, 0x6845c000, 0xd08b0000, 0x00008000, 140); 
TEST_RR_OP( 36 , ursub16, 0x5b590000, 0xb6b3ffff, 0x0000ffff, 144); 
TEST_RR_OP( 37 , ursub16, 0x24813726, 0x99e58000, 0x50e311b3, 148); 
TEST_RR_OP( 38 , ursub16, 0x3fffc000, 0xffff0000, 0x80008000, 152); 
TEST_RR_OP( 39 , ursub16, 0xc0004000, 0x00008000, 0x80000000, 156); 
TEST_RR_OP( 40 , ursub16, 0x4000f89c, 0x8000f138, 0x0000ffff, 160); 
TEST_RR_OP( 41 , ursub16, 0x0000fb37, 0x0000766e, 0x00008000, 164); 
TEST_RR_OP( 42 , ursub16, 0x3fffc000, 0xffff0000, 0x80008000, 168); 
TEST_RR_OP( 43 , ursub16, 0xc75a3cef, 0x8eb48000, 0xffff0622, 172); 
TEST_RR_OP( 44 , ursub16, 0x4000245e, 0x8000ffff, 0x0000b742, 176); 
TEST_RR_OP( 45 , ursub16, 0x40004000, 0x80008000, 0x00000000, 180); 
TEST_RR_OP( 46 , ursub16, 0xc000c000, 0x80008000, 0xffffffff, 184); 
TEST_RR_OP( 47 , ursub16, 0xc0004000, 0x80008000, 0xffff0000, 188); 
TEST_RR_OP( 48 , ursub16, 0x00000cd2, 0xffff19a5, 0xffff0000, 192); 
TEST_RR_OP( 49 , ursub16, 0xc0001c9e, 0x0000b93c, 0x80008000, 196); 
TEST_RR_OP( 50 , ursub16, 0x0000aa81, 0x80000000, 0x8000aafd, 200); 
TEST_RR_OP( 51 , ursub16, 0x00007fff, 0xffffffff, 0xffff0000, 204); 
TEST_RR_OP( 52 , ursub16, 0xb36296f7, 0x66c42dee, 0xffffffff, 208); 
TEST_RR_OP( 53 , ursub16, 0x00003fff, 0x0000ffff, 0x00008000, 212); 
TEST_RR_OP( 54 , ursub16, 0x137f4000, 0xa6fe8000, 0x80000000, 216); 
TEST_RR_OP( 55 , ursub16, 0xc0000000, 0x00008000, 0x80008000, 220); 
TEST_RR_OP( 56 , ursub16, 0x4b179336, 0x962f266c, 0x0000ffff, 224); 
TEST_RR_OP( 57 , ursub16, 0xc00047e8, 0x0000e6c8, 0x800056f8, 228); 
TEST_RR_OP( 58 , ursub16, 0x00000000, 0xffff8000, 0xffff8000, 232); 
TEST_RR_OP( 59 , ursub16, 0xc0008000, 0x00000000, 0x8000ffff, 236); 
TEST_RR_OP( 60 , ursub16, 0xd2e0d468, 0x25c00000, 0x8000572f, 240); 
TEST_RR_OP( 61 , ursub16, 0x3ffffb79, 0xffff2172, 0x80002a80, 244); 
TEST_RR_OP( 62 , ursub16, 0x3fff0000, 0xffff0000, 0x80000000, 248); 
TEST_RR_OP( 63 , ursub16, 0x0000d5ba, 0x00008000, 0x0000d48c, 252); 
TEST_RR_OP( 64 , ursub16, 0xd67e4e9e, 0x8000ffff, 0xd30462c3, 256); 
TEST_RR_OP( 65 , ursub16, 0x00007fff, 0x8000ffff, 0x80000000, 260); 
TEST_RR_OP( 66 , ursub16, 0xf80c0000, 0x8000ffff, 0x8fe7ffff, 264); 
TEST_RR_OP( 67 , ursub16, 0xd444b3cb, 0x80006795, 0xd778ffff, 268); 
TEST_RR_OP( 68 , ursub16, 0x00f5f21e, 0x8000e43c, 0x7e16ffff, 272); 
TEST_RR_OP( 69 , ursub16, 0x3fffc806, 0xffff8000, 0x8000eff4, 276); 
TEST_RR_OP( 70 , ursub16, 0x8000c000, 0x00000000, 0xffff8000, 280); 
TEST_RR_OP( 71 , ursub16, 0x00000000, 0x80008000, 0x80008000, 284); 
TEST_RR_OP( 72 , ursub16, 0x00004000, 0xffff8000, 0xffff0000, 288); 
TEST_RR_OP( 73 , ursub16, 0x00000000, 0xffff8000, 0xffff8000, 292); 
TEST_RR_OP( 74 , ursub16, 0x354d7fff, 0xea9affff, 0x80000000, 296); 
TEST_RR_OP( 75 , ursub16, 0x00004000, 0x80008000, 0x80000000, 300); 
TEST_RR_OP( 76 , ursub16, 0x013d4000, 0x027b8000, 0x00000000, 304); 
TEST_RR_OP( 77 , ursub16, 0x80007fff, 0x0000ffff, 0xffff0000, 308); 
TEST_RR_OP( 78 , ursub16, 0x00008000, 0x00000000, 0x0000ffff, 312); 
TEST_RR_OP( 79 , ursub16, 0xd296c000, 0x00000000, 0x5ad38000, 316); 
TEST_RR_OP( 80 , ursub16, 0x25503fff, 0xcaa0ffff, 0x80008000, 320); 
TEST_RR_OP( 81 , ursub16, 0xa0094000, 0x40128000, 0xffff0000, 324); 
TEST_RR_OP( 82 , ursub16, 0x0000c000, 0xffff8000, 0xffffffff, 328); 
TEST_RR_OP( 83 , ursub16, 0x00008263, 0xffff04c5, 0xffffffff, 332); 
TEST_RR_OP( 84 , ursub16, 0xcb1b0000, 0x901b0000, 0xf9e50000, 336); 
TEST_RR_OP( 85 , ursub16, 0x7fff028c, 0xffff8000, 0x00007ae7, 340); 
TEST_RR_OP( 86 , ursub16, 0x07197fff, 0x23d0ffff, 0x159d0000, 344); 
TEST_RR_OP( 87 , ursub16, 0x774a0000, 0xffff8000, 0x116a8000, 348); 
TEST_RR_OP( 88 , ursub16, 0x40000000, 0x8000ffff, 0x0000ffff, 352); 
TEST_RR_OP( 89 , ursub16, 0x3fff0000, 0xffff0000, 0x80000000, 356); 
TEST_RR_OP( 90 , ursub16, 0xde4ee5e1, 0x80000000, 0xc363343d, 360); 
TEST_RR_OP( 91 , ursub16, 0x7fff7fff, 0xffffffff, 0x00000000, 364); 
TEST_RR_OP( 92 , ursub16, 0x00000000, 0xffff0000, 0xffff0000, 368); 
TEST_RR_OP( 93 , ursub16, 0x85478000, 0x00000000, 0xf572ffff, 372); 
TEST_RR_OP( 94 , ursub16, 0x7fffeeda, 0xffffddb4, 0x0000ffff, 376); 
TEST_RR_OP( 95 , ursub16, 0x234d0000, 0x80000000, 0x39650000, 380); 
TEST_RR_OP( 96 , ursub16, 0x89c70000, 0x138d0000, 0xffff0000, 384); 
TEST_RR_OP( 97 , ursub16, 0x3fff4000, 0xffff8000, 0x80000000, 388); 
TEST_RR_OP( 98 , ursub16, 0x3fff0000, 0xffff0000, 0x80000000, 392); 
TEST_RR_OP( 99 , ursub16, 0xf9bf3fff, 0x737effff, 0x80008000, 396); 
TEST_RR_OP( 100 , ursub16, 0x7fff6e0d, 0xffffdc1a, 0x00000000, 400); 
TEST_RR_OP( 101 , ursub16, 0x00005e81, 0xffffffff, 0xffff42fd, 404); 
TEST_RR_OP( 102 , ursub16, 0x6c54c000, 0xd8a80000, 0x00008000, 408); 
TEST_RR_OP( 103 , ursub16, 0x0000c000, 0x80008000, 0x8000ffff, 412); 
TEST_RR_OP( 104 , ursub16, 0xc0000000, 0x00008000, 0x80008000, 416); 
TEST_RR_OP( 105 , ursub16, 0xc00066a5, 0x0000ffff, 0x800032b5, 420); 
TEST_RR_OP( 106 , ursub16, 0x151d4000, 0xaa3b8000, 0x80000000, 424); 
TEST_RR_OP( 107 , ursub16, 0x80000000, 0x00000000, 0xffff0000, 428); 
TEST_RR_OP( 108 , ursub16, 0xc000c000, 0x80000000, 0xffff8000, 432); 
TEST_RR_OP( 109 , ursub16, 0xc000c000, 0x80000000, 0xffff8000, 436); 
TEST_RR_OP( 110 , ursub16, 0x000039e2, 0x0000f3c5, 0x00008000, 440); 
TEST_RR_OP( 111 , ursub16, 0xc000c56f, 0x80008add, 0xffffffff, 444); 
TEST_RR_OP( 112 , ursub16, 0x40003fff, 0x8000ffff, 0x00008000, 448); 
TEST_RR_OP( 113 , ursub16, 0xc0003fff, 0x8000ffff, 0xffff8000, 452); 
TEST_RR_OP( 114 , ursub16, 0x0000859b, 0x80000b36, 0x8000ffff, 456); 
TEST_RR_OP( 115 , ursub16, 0xc0006ab5, 0x0000da2d, 0x800004c2, 460); 
TEST_RR_OP( 116 , ursub16, 0x00003fff, 0x0000ffff, 0x00008000, 464); 
TEST_RR_OP( 117 , ursub16, 0x00007fff, 0x0000ffff, 0x00000000, 468); 
TEST_RR_OP( 118 , ursub16, 0xa3b64000, 0x00008000, 0xb8940000, 472); 
TEST_RR_OP( 119 , ursub16, 0x06550000, 0xffff8000, 0xf3548000, 476); 
TEST_RR_OP( 120 , ursub16, 0x2f2d8000, 0xde5b0000, 0x8000ffff, 480); 
TEST_RR_OP( 121 , ursub16, 0x8a4267ed, 0x0000cfdb, 0xeb7c0000, 484); 
TEST_RR_OP( 122 , ursub16, 0x0914c000, 0x12298000, 0x0000ffff, 488); 
TEST_RR_OP( 123 , ursub16, 0xece3c000, 0x00000000, 0x263a8000, 492); 
TEST_RR_OP( 124 , ursub16, 0x80004000, 0x00008000, 0xffff0000, 496); 
TEST_RR_OP( 125 , ursub16, 0x1ee38000, 0xbdc60000, 0x8000ffff, 500); 
TEST_RR_OP( 126 , ursub16, 0x3e083fff, 0xffffffff, 0x83ef8000, 504); 
TEST_RR_OP( 127 , ursub16, 0x80002f8b, 0x00005f17, 0xffff0000, 508); 
TEST_RR_OP( 128 , ursub16, 0xe6127fff, 0x4c24ffff, 0x80000000, 512); 
TEST_RR_OP( 129 , ursub16, 0x3fffab5e, 0xffff0000, 0x8000a943, 516); 
TEST_RR_OP( 130 , ursub16, 0xc0008000, 0x00000000, 0x8000ffff, 520); 
TEST_RR_OP( 131 , ursub16, 0xdf802887, 0x3f00d10e, 0x80008000, 524); 
TEST_RR_OP( 132 , ursub16, 0x3fff235f, 0xffff8000, 0x80003942, 528); 
TEST_RR_OP( 133 , ursub16, 0x00000000, 0x00000000, 0x00000000, 532); 
TEST_RR_OP( 134 , ursub16, 0x00004337, 0x0000ffff, 0x00007990, 536); 
TEST_RR_OP( 135 , ursub16, 0x7fff0000, 0xffffffff, 0x0000ffff, 540); 
TEST_RR_OP( 136 , ursub16, 0x7fff0000, 0xffffffff, 0x0000ffff, 544); 
TEST_RR_OP( 137 , ursub16, 0xc0008000, 0x00000000, 0x8000ffff, 548); 
TEST_RR_OP( 138 , ursub16, 0x80000bfe, 0x0000fe80, 0xffffe684, 552); 
TEST_RR_OP( 139 , ursub16, 0xc0007fff, 0x8000ffff, 0xffff0000, 556); 
TEST_RR_OP( 140 , ursub16, 0x0000c000, 0x00008000, 0x0000ffff, 560); 
TEST_RR_OP( 141 , ursub16, 0x0000f71e, 0xffff6e3d, 0xffff8000, 564); 
TEST_RR_OP( 142 , ursub16, 0x00006f36, 0xffffffff, 0xffff2193, 568); 
TEST_RR_OP( 143 , ursub16, 0x0000b80f, 0xffff701d, 0xffffffff, 572); 
TEST_RR_OP( 144 , ursub16, 0x40000000, 0x80000000, 0x00000000, 576); 
TEST_RR_OP( 145 , ursub16, 0xd8873459, 0x310e8000, 0x8000174e, 580); 
TEST_RR_OP( 146 , ursub16, 0x00001cce, 0x8000b99d, 0x80008000, 584); 
TEST_RR_OP( 147 , ursub16, 0xf6fb0000, 0x6df68000, 0x80008000, 588); 
TEST_RR_OP( 148 , ursub16, 0x00004598, 0x00008b30, 0x00000000, 592); 
TEST_RR_OP( 149 , ursub16, 0x48c5c000, 0xffff8000, 0x6e74ffff, 596); 
TEST_RR_OP( 150 , ursub16, 0x0000c739, 0x00008e72, 0x0000ffff, 600); 
TEST_RR_OP( 151 , ursub16, 0x40008000, 0x80000000, 0x0000ffff, 604); 
TEST_RR_OP( 152 , ursub16, 0xc0000000, 0x00008000, 0x80008000, 608); 
TEST_RR_OP( 153 , ursub16, 0xcc61f66f, 0x00000000, 0x673e1321, 612); 
TEST_RR_OP( 154 , ursub16, 0x800014ff, 0x000029fe, 0xffff0000, 616); 
TEST_RR_OP( 155 , ursub16, 0xd3f70000, 0x27eeffff, 0x8000ffff, 620); 
TEST_RR_OP( 156 , ursub16, 0x707ef8ad, 0xffff715a, 0x1f038000, 624); 
TEST_RR_OP( 157 , ursub16, 0x92423fff, 0x2483ffff, 0xffff8000, 628); 
TEST_RR_OP( 158 , ursub16, 0x000083e2, 0x800007c4, 0x8000ffff, 632); 
TEST_RR_OP( 159 , ursub16, 0xdb180000, 0x3630ffff, 0x8000ffff, 636); 
TEST_RR_OP( 160 , ursub16, 0xf5a82c90, 0x7d12d921, 0x91c28000, 640); 
TEST_RR_OP( 161 , ursub16, 0x000011d6, 0xffffa3ad, 0xffff8000, 644); 
TEST_RR_OP( 162 , ursub16, 0xa98f3dd1, 0x531d7ba2, 0xffff0000, 648); 
TEST_RR_OP( 163 , ursub16, 0x4000c000, 0x80000000, 0x00008000, 652); 
TEST_RR_OP( 164 , ursub16, 0xf6bd0000, 0x8000ffff, 0x9286ffff, 656); 
TEST_RR_OP( 165 , ursub16, 0xd0262bbc, 0x8000d778, 0xdfb38000, 660); 
TEST_RR_OP( 166 , ursub16, 0x8b9b0000, 0x1735ffff, 0xffffffff, 664); 
TEST_RR_OP( 167 , ursub16, 0x00001656, 0xffffacac, 0xffff8000, 668); 
TEST_RR_OP( 168 , ursub16, 0x29810000, 0x53038000, 0x00008000, 672); 
TEST_RR_OP( 169 , ursub16, 0x95404000, 0x00008000, 0xd5800000, 676); 
TEST_RR_OP( 170 , ursub16, 0x40004425, 0x8000884b, 0x00000000, 680); 
TEST_RR_OP( 171 , ursub16, 0xfd050000, 0x2fd98000, 0x35ce8000, 684); 
TEST_RR_OP( 172 , ursub16, 0x7e3cf8d3, 0xffffd40d, 0x0386e267, 688); 
TEST_RR_OP( 173 , ursub16, 0x0000c8c2, 0x00001185, 0x00008000, 692); 
TEST_RR_OP( 174 , ursub16, 0x4000c000, 0x80000000, 0x00008000, 696); 
TEST_RR_OP( 175 , ursub16, 0xaafcc000, 0x55f70000, 0xffff8000, 700); 
TEST_RR_OP( 176 , ursub16, 0x4000b15f, 0x80000000, 0x00009d42, 704); 
TEST_RR_OP( 177 , ursub16, 0x4000d168, 0x8000a2cf, 0x0000ffff, 708); 
TEST_RR_OP( 178 , ursub16, 0x80003fff, 0x0000ffff, 0xffff8000, 712); 
TEST_RR_OP( 179 , ursub16, 0x0000aadb, 0x800055b5, 0x8000ffff, 716); 
TEST_RR_OP( 180 , ursub16, 0x00004000, 0x80008000, 0x80000000, 720); 
TEST_RR_OP( 181 , ursub16, 0xc00063f3, 0x0000ffff, 0x80003819, 724); 
TEST_RR_OP( 182 , ursub16, 0x80000698, 0x0000ffff, 0xfffff2cf, 728); 
TEST_RR_OP( 183 , ursub16, 0x7fff0000, 0xffff8000, 0x00008000, 732); 
TEST_RR_OP( 184 , ursub16, 0x7fff3d83, 0xfffffb07, 0x00008000, 736); 
TEST_RR_OP( 185 , ursub16, 0x7fff34f4, 0xffff8000, 0x00001618, 740); 
TEST_RR_OP( 186 , ursub16, 0x00004000, 0x00008000, 0x00000000, 744); 
TEST_RR_OP( 187 , ursub16, 0x00004000, 0x80008000, 0x80000000, 748); 
TEST_RR_OP( 188 , ursub16, 0x162bc000, 0x2c578000, 0x0000ffff, 752); 
TEST_RR_OP( 189 , ursub16, 0x4000daa3, 0x80000000, 0x00004ab9, 756); 
TEST_RR_OP( 190 , ursub16, 0x7fff2bea, 0xffffd7d5, 0x00008000, 760); 
TEST_RR_OP( 191 , ursub16, 0x0000c000, 0x00008000, 0x0000ffff, 764); 
TEST_RR_OP( 192 , ursub16, 0xab940000, 0x02750000, 0xab4d0000, 768); 
TEST_RR_OP( 193 , ursub16, 0x00002009, 0x80008000, 0x80003fee, 772); 
TEST_RR_OP( 194 , ursub16, 0x000050e6, 0x8000ffff, 0x80005e32, 776); 
TEST_RR_OP( 195 , ursub16, 0x7fff9d97, 0xffff0000, 0x0000c4d1, 780); 
TEST_RR_OP( 196 , ursub16, 0x27077fff, 0xffffffff, 0xb1f00000, 784); 
TEST_RR_OP( 197 , ursub16, 0x7fff6a55, 0xffffd4aa, 0x00000000, 788); 
TEST_RR_OP( 198 , ursub16, 0x3fff7fff, 0xffffffff, 0x80000000, 792); 
TEST_RR_OP( 199 , ursub16, 0xc54fdf51, 0x00003ea3, 0x75618000, 796); 

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
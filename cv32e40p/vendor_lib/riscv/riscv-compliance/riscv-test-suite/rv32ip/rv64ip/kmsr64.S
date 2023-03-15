# See LICENSE for license details.
#*****************************************************************************
# kmsr64.S
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

TEST_RR_OP64_OO( 2 , kmsr64, 0xc000000000000000, 0x80000000, 0x80000000 , 8); 
TEST_RR_OP64_OO( 3 , kmsr64, 0xc000000000000000, 0x00000000, 0xad148b10 , 16); 
TEST_RR_OP64_OO( 4 , kmsr64, 0xc000000000000000, 0x00000000, 0x2c34716e , 24); 
TEST_RR_OP64_OO( 5 , kmsr64, 0xc000000000000000, 0x3ab1b2e0, 0x00000000 , 32); 
TEST_RR_OP64_OO( 6 , kmsr64, 0xc000000000000000, 0xffffffff, 0x00000000 , 40); 
TEST_RR_OP64_OO( 7 , kmsr64, 0xc000000000000000, 0x00000000, 0x00000000 , 48); 
TEST_RR_OP64_OO( 8 , kmsr64, 0xbfffffffdfa395dc, 0xffffffff, 0xdfa395dc , 56); 
TEST_RR_OP64_OO( 9 , kmsr64, 0xbfffffffdfa395dc, 0x00000000, 0x80000000 , 64); 
TEST_RR_OP64_OO( 10 , kmsr64, 0xbfffffffdfa395dc, 0x00000000, 0x80000000 , 72); 
TEST_RR_OP64_OO( 11 , kmsr64, 0xbfffffffdfa395dc, 0x00000000, 0x80000000 , 80); 
TEST_RR_OP64_OO( 12 , kmsr64, 0xbfffffffdfa395dc, 0x00000000, 0x00000000 , 88); 
TEST_RR_OP64_OO( 13 , kmsr64, 0xbfffffffbf77c32d, 0xdfd42d51, 0xffffffff , 96); 
TEST_RR_OP64_OO( 14 , kmsr64, 0xbfffffffbf77c32d, 0x00000000, 0x80000000 , 104); 
TEST_RR_OP64_OO( 15 , kmsr64, 0x8000000000000000, 0x80000000, 0x80000000 , 112); 
TEST_CASE( 16 ,120, x14, 1, rdov x14;);
TEST_CASE( 17 ,124, x14, 1, clrov;);
TEST_CASE( 18 ,128, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 19 , kmsr64, 0x0000000000000000, 0xffffffff, 0x00000000 , 132); 
TEST_RR_OP64_OO( 20 , kmsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 140); 
TEST_RR_OP64_OO( 21 , kmsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 148); 
TEST_RR_OP64_OO( 22 , kmsr64, 0x0000000000000000, 0x00000000, 0x95c426ba , 156); 
TEST_RR_OP64_OO( 23 , kmsr64, 0xffffffffcc9f235f, 0xffffffff, 0xcc9f235f , 164); 
TEST_RR_OP64_OO( 24 , kmsr64, 0xffffffffcc9f235f, 0x00000000, 0x80000000 , 172); 
TEST_RR_OP64_OO( 25 , kmsr64, 0xffffffffcc9f235f, 0x00000000, 0xa5a9c2f4 , 180); 
TEST_RR_OP64_OO( 26 , kmsr64, 0xf252eb284c9f235f, 0xe4a5d651, 0x80000000 , 188); 
TEST_RR_OP64_OO( 27 , kmsr64, 0xf252eb284c9f235f, 0xffffffff, 0x00000000 , 196); 
TEST_RR_OP64_OO( 28 , kmsr64, 0xd4e69e494c9f235f, 0xc5276642, 0x80000000 , 204); 
TEST_RR_OP64_OO( 29 , kmsr64, 0xd4e69e48cc9f235f, 0x80000000, 0xffffffff , 212); 
TEST_RR_OP64_OO( 30 , kmsr64, 0xd4e69e48cc9f235e, 0xffffffff, 0xffffffff , 220); 
TEST_RR_OP64_OO( 31 , kmsr64, 0xd4e69e48cc9f235e, 0x00000000, 0x00000000 , 228); 
TEST_RR_OP64_OO( 32 , kmsr64, 0xd4e69e489bd8fc20, 0xffffffff, 0xcf39d8c2 , 236); 
TEST_RR_OP64_OO( 33 , kmsr64, 0xd4e69e489bd8fc20, 0x80000000, 0x00000000 , 244); 
TEST_RR_OP64_OO( 34 , kmsr64, 0xd4e69e489bd8fc20, 0xab62db70, 0x00000000 , 252); 
TEST_RR_OP64_OO( 35 , kmsr64, 0x94e69e489bd8fc20, 0x80000000, 0x80000000 , 260); 
TEST_RR_OP64_OO( 36 , kmsr64, 0x94e69e48b5fef7d1, 0xffffffff, 0x1a25fbb1 , 268); 
TEST_RR_OP64_OO( 37 , kmsr64, 0x94e69e48b5fef7d1, 0x80000000, 0x00000000 , 276); 
TEST_RR_OP64_OO( 38 , kmsr64, 0x94e69e48b5fef7d1, 0x00000000, 0xffffffff , 284); 
TEST_RR_OP64_OO( 39 , kmsr64, 0xd34cdecf35fef7d1, 0x80000000, 0x7ccc810d , 292); 
TEST_RR_OP64_OO( 40 , kmsr64, 0xd34cdeceb5fef7d1, 0x80000000, 0xffffffff , 300); 
TEST_RR_OP64_OO( 41 , kmsr64, 0xd34cdeceb5fef7d1, 0x80000000, 0x00000000 , 308); 
TEST_RR_OP64_OO( 42 , kmsr64, 0xbbf35ea23ff47f8d, 0x491f34cc, 0x51bf3fab , 316); 
TEST_RR_OP64_OO( 43 , kmsr64, 0xbbf35ea1bff47f8d, 0xffffffff, 0x80000000 , 324); 
TEST_RR_OP64_OO( 44 , kmsr64, 0x8000000000000000, 0x80000000, 0x80000000 , 332); 
TEST_CASE( 45 ,340, x14, 1, rdov x14;);
TEST_CASE( 46 ,344, x14, 1, clrov;);
TEST_CASE( 47 ,348, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 48 , kmsr64, 0xffffffff80000000, 0x80000000, 0xffffffff , 352); 
TEST_RR_OP64_OO( 49 , kmsr64, 0xffffffff80000000, 0x00000000, 0x500f70f0 , 360); 
TEST_RR_OP64_OO( 50 , kmsr64, 0x03ce9b05c5d7ae9e, 0x0b8a548d, 0xab8c4b6a , 368); 
TEST_RR_OP64_OO( 51 , kmsr64, 0x03ce9b05c5d7ae9d, 0xffffffff, 0xffffffff , 376); 
TEST_RR_OP64_OO( 52 , kmsr64, 0x03ce9b05c5d7ae9d, 0x00000000, 0xffffffff , 384); 
TEST_RR_OP64_OO( 53 , kmsr64, 0x33d62757c5d7ae9d, 0x600f18a4, 0x80000000 , 392); 
TEST_RR_OP64_OO( 54 , kmsr64, 0x33d62757c5d7ae9d, 0x00000000, 0xffffffff , 400); 
TEST_RR_OP64_OO( 55 , kmsr64, 0x33d62757c5d7ae9c, 0xffffffff, 0xffffffff , 408); 
TEST_RR_OP64_OO( 56 , kmsr64, 0x33d62757c5d7ae9c, 0x00000000, 0x84a49b3a , 416); 
TEST_RR_OP64_OO( 57 , kmsr64, 0x33d62757c5d7ae9c, 0xffffffff, 0x00000000 , 424); 
TEST_RR_OP64_OO( 58 , kmsr64, 0x33d62757c5d7ae9c, 0x00000000, 0xffffffff , 432); 
TEST_RR_OP64_OO( 59 , kmsr64, 0xf3d62757c5d7ae9c, 0x80000000, 0x80000000 , 440); 
TEST_RR_OP64_OO( 60 , kmsr64, 0xf3d62757c5d7ae9b, 0xffffffff, 0xffffffff , 448); 
TEST_RR_OP64_OO( 61 , kmsr64, 0xf3d6275745d7ae9b, 0xffffffff, 0x80000000 , 456); 
TEST_RR_OP64_OO( 62 , kmsr64, 0xf3d62756c5d7ae9b, 0xffffffff, 0x80000000 , 464); 
TEST_RR_OP64_OO( 63 , kmsr64, 0xf3d6275645d7ae9b, 0x80000000, 0xffffffff , 472); 
TEST_RR_OP64_OO( 64 , kmsr64, 0xf3d6275645d7ae9b, 0xffffffff, 0x00000000 , 480); 
TEST_RR_OP64_OO( 65 , kmsr64, 0xf3d6275645d7ae9b, 0x00000000, 0x80000000 , 488); 
TEST_RR_OP64_OO( 66 , kmsr64, 0xf3d62755f1da6c0f, 0xffffffff, 0xac02bd74 , 496); 
TEST_RR_OP64_OO( 67 , kmsr64, 0xf3d62755f1da6c0e, 0xffffffff, 0xffffffff , 504); 
TEST_RR_OP64_OO( 68 , kmsr64, 0xf3d62755f1da6c0e, 0x00000000, 0xcc05114e , 512); 
TEST_RR_OP64_OO( 69 , kmsr64, 0xf3d62755f1da6c0e, 0x80000000, 0x00000000 , 520); 
TEST_RR_OP64_OO( 70 , kmsr64, 0xf3d62755f1da6c0e, 0x00000000, 0x80000000 , 528); 
TEST_RR_OP64_OO( 71 , kmsr64, 0xf3d62755f1da6c0e, 0xffffffff, 0x00000000 , 536); 
TEST_RR_OP64_OO( 72 , kmsr64, 0xf3d62755f1da6c0e, 0x00000000, 0x80000000 , 544); 
TEST_RR_OP64_OO( 73 , kmsr64, 0xf3d62755f1da6c0e, 0x00000000, 0x9d8a4066 , 552); 
TEST_RR_OP64_OO( 74 , kmsr64, 0xf3d62755f1da6c0e, 0x00000000, 0x00000000 , 560); 
TEST_RR_OP64_OO( 75 , kmsr64, 0xf3d62755f1da6c0e, 0x00000000, 0x80000000 , 568); 
TEST_RR_OP64_OO( 76 , kmsr64, 0xb3d62755f1da6c0e, 0x80000000, 0x80000000 , 576); 
TEST_RR_OP64_OO( 77 , kmsr64, 0xb3d62755f1da6c0e, 0x00000000, 0x80000000 , 584); 
TEST_RR_OP64_OO( 78 , kmsr64, 0xaaac04b536f9c7f4, 0x186b1c8e, 0x6014a30b , 592); 
TEST_RR_OP64_OO( 79 , kmsr64, 0xaaac04b536f9c7f4, 0x80000000, 0x00000000 , 600); 
TEST_RR_OP64_OO( 80 , kmsr64, 0xaaac04b5766d8d97, 0x3f73c5a3, 0xffffffff , 608); 
TEST_RR_OP64_OO( 81 , kmsr64, 0xaaac04b4f66d8d97, 0x80000000, 0xffffffff , 616); 
TEST_RR_OP64_OO( 82 , kmsr64, 0xaaac04b4f66d8d97, 0x00000000, 0x710e743a , 624); 
TEST_RR_OP64_OO( 83 , kmsr64, 0xaaac04b5409ef518, 0xffffffff, 0x4a316781 , 632); 
TEST_RR_OP64_OO( 84 , kmsr64, 0xaaac04b5409ef518, 0x00000000, 0x343d0860 , 640); 
TEST_RR_OP64_OO( 85 , kmsr64, 0xaaac04b5409ef518, 0x5c6f0dde, 0x00000000 , 648); 
TEST_RR_OP64_OO( 86 , kmsr64, 0xaaac04b4c09ef518, 0x80000000, 0xffffffff , 656); 
TEST_RR_OP64_OO( 87 , kmsr64, 0xaaac04b4c09ef518, 0x00000000, 0xffffffff , 664); 
TEST_RR_OP64_OO( 88 , kmsr64, 0xaaac04b4c09ef518, 0x00000000, 0x00000000 , 672); 
TEST_RR_OP64_OO( 89 , kmsr64, 0xaaac04b4c09ef518, 0x80000000, 0x00000000 , 680); 
TEST_RR_OP64_OO( 90 , kmsr64, 0xaaac04b5044902f9, 0x43aa0de1, 0xffffffff , 688); 
TEST_RR_OP64_OO( 91 , kmsr64, 0x8000000000000000, 0x80000000, 0x80000000 , 696); 
TEST_CASE( 92 ,704, x14, 1, rdov x14;);
TEST_CASE( 93 ,708, x14, 1, clrov;);
TEST_CASE( 94 ,712, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 95 , kmsr64, 0xc000000000000000, 0x80000000, 0x80000000 , 716); 
TEST_RR_OP64_OO( 96 , kmsr64, 0xc000000000000000, 0xfa7893e2, 0x00000000 , 724); 
TEST_RR_OP64_OO( 97 , kmsr64, 0xc00000003ac40004, 0x3ac40004, 0xffffffff , 732); 
TEST_RR_OP64_OO( 98 , kmsr64, 0xc00000003ac40004, 0x80000000, 0x00000000 , 740); 
TEST_RR_OP64_OO( 99 , kmsr64, 0xc00000003ac40004, 0xbfef3c7f, 0x00000000 , 748); 
TEST_RR_OP64_OO( 100 , kmsr64, 0xc00000003ac40004, 0xffffffff, 0x00000000 , 756); 
TEST_RR_OP64_OO( 101 , kmsr64, 0xc00000003ac40003, 0xffffffff, 0xffffffff , 764); 
TEST_RR_OP64_OO( 102 , kmsr64, 0xc00000002dd14728, 0xffffffff, 0xf30d4725 , 772); 
TEST_RR_OP64_OO( 103 , kmsr64, 0x800000002dd14728, 0x80000000, 0x80000000 , 780); 
TEST_RR_OP64_OO( 104 , kmsr64, 0x800000002dd14728, 0x00000000, 0x80000000 , 788); 
TEST_RR_OP64_OO( 105 , kmsr64, 0x800000002941b340, 0xffffffff, 0xfb706c18 , 796); 
TEST_RR_OP64_OO( 106 , kmsr64, 0x8000000000000000, 0x83d93157, 0x80000000 , 804); 
TEST_CASE( 107 ,812, x14, 1, rdov x14;);
TEST_CASE( 108 ,816, x14, 1, clrov;);
TEST_CASE( 109 ,820, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 110 , kmsr64, 0x3d984acf00000000, 0x80000000, 0x7b30959e , 824); 
TEST_RR_OP64_OO( 111 , kmsr64, 0x3ae316c1d0cf4600, 0x155d5558, 0x207245c0 , 832); 
TEST_RR_OP64_OO( 112 , kmsr64, 0x523b0a2f52fd8dee, 0x76ca4473, 0xcdb17526 , 840); 
TEST_RR_OP64_OO( 113 , kmsr64, 0x523b0a2f52fd8dee, 0xa249a29d, 0x00000000 , 848); 
TEST_RR_OP64_OO( 114 , kmsr64, 0x523b0a2f52fd8ded, 0xffffffff, 0xffffffff , 856); 
TEST_RR_OP64_OO( 115 , kmsr64, 0x523b0a2f52fd8ded, 0x00000000, 0x00000000 , 864); 
TEST_RR_OP64_OO( 116 , kmsr64, 0x7fffffffffffffff, 0x6581108b, 0x80000000 , 872); 
TEST_CASE( 117 ,880, x14, 1, rdov x14;);
TEST_CASE( 118 ,884, x14, 1, clrov;);
TEST_CASE( 119 ,888, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 120 , kmsr64, 0x0000000000000000, 0x00000000, 0xffffffff , 892); 
TEST_RR_OP64_OO( 121 , kmsr64, 0xffffffffc389e3fc, 0xffffffff, 0xc389e3fc , 900); 
TEST_RR_OP64_OO( 122 , kmsr64, 0xffffffffc389e3fc, 0x00000000, 0x00000000 , 908); 
TEST_RR_OP64_OO( 123 , kmsr64, 0xffffffffc389e3fb, 0xffffffff, 0xffffffff , 916); 
TEST_RR_OP64_OO( 124 , kmsr64, 0xffffffffc389e3fb, 0xffffffff, 0x00000000 , 924); 
TEST_RR_OP64_OO( 125 , kmsr64, 0xffffffffc389e3fb, 0x80000000, 0x00000000 , 932); 
TEST_RR_OP64_OO( 126 , kmsr64, 0xffffffffc389e3fb, 0x00000000, 0xffffffff , 940); 
TEST_RR_OP64_OO( 127 , kmsr64, 0xffffffffe7d47150, 0x244a8d55, 0xffffffff , 948); 
TEST_RR_OP64_OO( 128 , kmsr64, 0xffffffff67d47150, 0x80000000, 0xffffffff , 956); 
TEST_RR_OP64_OO( 129 , kmsr64, 0xfffffffee7d47150, 0xffffffff, 0x80000000 , 964); 
TEST_RR_OP64_OO( 130 , kmsr64, 0xbffffffee7d47150, 0x80000000, 0x80000000 , 972); 
TEST_RR_OP64_OO( 131 , kmsr64, 0xbffffffe67d47150, 0x80000000, 0xffffffff , 980); 
TEST_RR_OP64_OO( 132 , kmsr64, 0xbffffffe67d47150, 0x00000000, 0x00000000 , 988); 
TEST_RR_OP64_OO( 133 , kmsr64, 0xed7de26e67d47150, 0x80000000, 0x5afbc4e0 , 996); 
TEST_RR_OP64_OO( 134 , kmsr64, 0xf751ff505d21287a, 0xc4f02a51, 0x2a99eff6 , 1004); 
TEST_RR_OP64_OO( 135 , kmsr64, 0xb751ff505d21287a, 0x80000000, 0x80000000 , 1012); 
TEST_RR_OP64_OO( 136 , kmsr64, 0xb751ff505d21287a, 0x00000000, 0x80000000 , 1020); 
TEST_RR_OP64_OO( 137 , kmsr64, 0xb751ff505d21287a, 0xff54562a, 0x00000000 , 1028); 
TEST_RR_OP64_OO( 138 , kmsr64, 0xb751ff505d21287a, 0x00000000, 0xffffffff , 1036); 
TEST_RR_OP64_OO( 139 , kmsr64, 0xb751ff505d212879, 0xffffffff, 0xffffffff , 1044); 
TEST_RR_OP64_OO( 140 , kmsr64, 0xb751ff505d212879, 0xc2439170, 0x00000000 , 1052); 
TEST_RR_OP64_OO( 141 , kmsr64, 0xb751ff505d212879, 0x00000000, 0x80000000 , 1060); 
TEST_RR_OP64_OO( 142 , kmsr64, 0x8000000000000000, 0x80000000, 0x80000000 , 1068); 
TEST_CASE( 143 ,1076, x14, 1, rdov x14;);
TEST_CASE( 144 ,1080, x14, 1, clrov;);
TEST_CASE( 145 ,1084, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 146 , kmsr64, 0x0000000021466735, 0x21466735, 0xffffffff , 1088); 
TEST_RR_OP64_OO( 147 , kmsr64, 0xffffffffa1466735, 0x80000000, 0xffffffff , 1096); 
TEST_RR_OP64_OO( 148 , kmsr64, 0xffffffff21466735, 0xffffffff, 0x80000000 , 1104); 
TEST_RR_OP64_OO( 149 , kmsr64, 0xffffffff21466735, 0x00000000, 0xffffffff , 1112); 
TEST_RR_OP64_OO( 150 , kmsr64, 0xbfffffff21466735, 0x80000000, 0x80000000 , 1120); 
TEST_RR_OP64_OO( 151 , kmsr64, 0xbfffffff21466735, 0xffffffff, 0x00000000 , 1128); 
TEST_RR_OP64_OO( 152 , kmsr64, 0xbffffffee62722dc, 0xffffffff, 0xc4e0bba7 , 1136); 
TEST_RR_OP64_OO( 153 , kmsr64, 0xbffffffee62722dc, 0x00000000, 0x00000000 , 1144); 
TEST_RR_OP64_OO( 154 , kmsr64, 0xbffffffe662722dc, 0xffffffff, 0x80000000 , 1152); 
TEST_RR_OP64_OO( 155 , kmsr64, 0xbffffffe662722dc, 0x00000000, 0x00000000 , 1160); 
TEST_RR_OP64_OO( 156 , kmsr64, 0xbffffffe662722dc, 0x00000000, 0x00000000 , 1168); 
TEST_RR_OP64_OO( 157 , kmsr64, 0xbffffffe662722dc, 0x00000000, 0x80000000 , 1176); 
TEST_RR_OP64_OO( 158 , kmsr64, 0xe1e76359662722dc, 0x80000000, 0x43cec6b6 , 1184); 
TEST_RR_OP64_OO( 159 , kmsr64, 0xa1e76359662722dc, 0x80000000, 0x80000000 , 1192); 
TEST_RR_OP64_OO( 160 , kmsr64, 0xa1e76359662722dc, 0x00000000, 0x3362f88a , 1200); 
TEST_RR_OP64_OO( 161 , kmsr64, 0xa1e76359197b0f3f, 0xffffffff, 0xb353ec63 , 1208); 
TEST_RR_OP64_OO( 162 , kmsr64, 0xa1e76359197b0f3f, 0x00000000, 0x00000000 , 1216); 
TEST_RR_OP64_OO( 163 , kmsr64, 0xa1e76358997b0f3f, 0xffffffff, 0x80000000 , 1224); 
TEST_RR_OP64_OO( 164 , kmsr64, 0x9a907e945e2e2b25, 0xb5a9d8bf, 0xe6b97866 , 1232); 
TEST_RR_OP64_OO( 165 , kmsr64, 0x8000000000000000, 0x80000000, 0x80000000 , 1240); 
TEST_CASE( 166 ,1248, x14, 1, rdov x14;);
TEST_CASE( 167 ,1252, x14, 1, clrov;);
TEST_CASE( 168 ,1256, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 169 , kmsr64, 0xffffffff80000000, 0xffffffff, 0x80000000 , 1260); 
TEST_RR_OP64_OO( 170 , kmsr64, 0xffffffff00000000, 0xffffffff, 0x80000000 , 1268); 
TEST_RR_OP64_OO( 171 , kmsr64, 0xffffffff2de68d6c, 0xffffffff, 0x2de68d6c , 1276); 
TEST_RR_OP64_OO( 172 , kmsr64, 0xfffffffeade68d6c, 0x80000000, 0xffffffff , 1284); 
TEST_RR_OP64_OO( 173 , kmsr64, 0xbffffffeade68d6c, 0x80000000, 0x80000000 , 1292); 
TEST_RR_OP64_OO( 174 , kmsr64, 0xb4a9b7e5bf6e0aa9, 0x20a42387, 0x58ea2de5 , 1300); 
TEST_RR_OP64_OO( 175 , kmsr64, 0xb4a9b7e5bf6e0aa9, 0x00000000, 0x00000000 , 1308); 
TEST_RR_OP64_OO( 176 , kmsr64, 0xb4a9b7e5f692685b, 0xffffffff, 0x37245db2 , 1316); 
TEST_RR_OP64_OO( 177 , kmsr64, 0xb4a9b7e5f692685b, 0xf27a23ca, 0x00000000 , 1324); 
TEST_RR_OP64_OO( 178 , kmsr64, 0xb4a9b7e5f692685b, 0xffffffff, 0x00000000 , 1332); 
TEST_RR_OP64_OO( 179 , kmsr64, 0xb4a9b7e5f692685a, 0xffffffff, 0xffffffff , 1340); 
TEST_RR_OP64_OO( 180 , kmsr64, 0xb4a9b7e63a6d6fc2, 0x43db0768, 0xffffffff , 1348); 
TEST_RR_OP64_OO( 181 , kmsr64, 0xb4a9b7e63a6d6fc2, 0x80000000, 0x00000000 , 1356); 
TEST_RR_OP64_OO( 182 , kmsr64, 0xbec8f70e58948942, 0xe3109ee3, 0x598dc780 , 1364); 
TEST_RR_OP64_OO( 183 , kmsr64, 0x8000000000000000, 0x80000000, 0x80000000 , 1372); 
TEST_CASE( 184 ,1380, x14, 1, rdov x14;);
TEST_CASE( 185 ,1384, x14, 1, clrov;);
TEST_CASE( 186 ,1388, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 187 , kmsr64, 0xffffffff80000000, 0xffffffff, 0x80000000 , 1392); 
TEST_RR_OP64_OO( 188 , kmsr64, 0x356cd63380000000, 0x6ad9ac68, 0x80000000 , 1400); 
TEST_RR_OP64_OO( 189 , kmsr64, 0x22bd46f680000000, 0x80000000, 0xdaa0e186 , 1408); 
TEST_RR_OP64_OO( 190 , kmsr64, 0x0702290d00000000, 0x80000000, 0xc889c42d , 1416); 
TEST_RR_OP64_OO( 191 , kmsr64, 0x0702290d55ea8eb2, 0xffffffff, 0x55ea8eb2 , 1424); 
TEST_RR_OP64_OO( 192 , kmsr64, 0x0702290d55ea8eb1, 0xffffffff, 0xffffffff , 1432); 
TEST_RR_OP64_OO( 193 , kmsr64, 0x0d64af56d5ea8eb1, 0x80000000, 0x0cc50c93 , 1440); 
TEST_RR_OP64_OO( 194 , kmsr64, 0xcd64af56d5ea8eb1, 0x80000000, 0x80000000 , 1448); 
TEST_RR_OP64_OO( 195 , kmsr64, 0xcd64af56d5ea8eb1, 0x00000000, 0xffffffff , 1456); 
TEST_RR_OP64_OO( 196 , kmsr64, 0xcd64af56d5ea8eb1, 0x00000000, 0xffffffff , 1464); 
TEST_RR_OP64_OO( 197 , kmsr64, 0xcd64af56d5ea8eb1, 0x00000000, 0x00000000 , 1472); 
TEST_RR_OP64_OO( 198 , kmsr64, 0xcd64af56d5ea8eb1, 0x00000000, 0x80000000 , 1480); 
TEST_RR_OP64_OO( 199 , kmsr64, 0xcd64af56d5ea8eb1, 0xfea4d422, 0x00000000 , 1488); 

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 374, 4, -1
RV_COMPLIANCE_DATA_END
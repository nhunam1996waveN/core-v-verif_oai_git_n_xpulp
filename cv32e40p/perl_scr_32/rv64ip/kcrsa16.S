# See LICENSE for license details.
#*****************************************************************************
# kcrsa16.S
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

TEST_RR_OP( 2 , kcrsa16, 0x7d818000, 0xfd81ffff, 0x80008000, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , kcrsa16, 0x40500000, 0x404f0000, 0x0000ffff, 24); 
TEST_RR_OP( 7 , kcrsa16, 0x00008000, 0x8000b5e9, 0x80008000, 28); 
TEST_CASE( 8 ,32, x14, 1, rdov x14;);
TEST_CASE( 9 ,36, x14, 1, clrov;);
TEST_CASE( 10 ,40, x14, 0, rdov x14;);
TEST_RR_OP( 11 , kcrsa16, 0x000119f3, 0x000019f4, 0xffffffff, 44); 
TEST_RR_OP( 12 , kcrsa16, 0x00004392, 0x80004c6b, 0xf7278000, 48); 
TEST_RR_OP( 13 , kcrsa16, 0xd57d150c, 0xffff150d, 0xffff2a82, 52); 
TEST_RR_OP( 14 , kcrsa16, 0x4517b5de, 0xffffb5de, 0x0000bae8, 56); 
TEST_RR_OP( 15 , kcrsa16, 0xbe658000, 0x8000ffff, 0x8000c19b, 60); 
TEST_CASE( 16 ,64, x14, 1, rdov x14;);
TEST_CASE( 17 ,68, x14, 1, clrov;);
TEST_CASE( 18 ,72, x14, 0, rdov x14;);
TEST_RR_OP( 19 , kcrsa16, 0xdb038000, 0x80008000, 0x0000a4fd, 76); 
TEST_RR_OP( 20 , kcrsa16, 0x6617b73d, 0xffff373d, 0x800099e8, 80); 
TEST_RR_OP( 21 , kcrsa16, 0x00008000, 0xffff8000, 0x0000ffff, 84); 
TEST_RR_OP( 22 , kcrsa16, 0xffff8000, 0xffff8000, 0x00000000, 88); 
TEST_RR_OP( 23 , kcrsa16, 0x0000ca31, 0x00008000, 0x4a310000, 92); 
TEST_RR_OP( 24 , kcrsa16, 0x9edb8000, 0x9eda0000, 0x8000ffff, 96); 
TEST_RR_OP( 25 , kcrsa16, 0x5479fffe, 0x5479ffff, 0xffff0000, 100); 
TEST_RR_OP( 26 , kcrsa16, 0x00004ed5, 0x0000ffff, 0x4ed60000, 104); 
TEST_RR_OP( 27 , kcrsa16, 0x00016c30, 0x00006c31, 0xffffffff, 108); 
TEST_RR_OP( 28 , kcrsa16, 0x7fff829e, 0x0000829f, 0xffff8000, 112); 
TEST_CASE( 29 ,116, x14, 1, rdov x14;);
TEST_CASE( 30 ,120, x14, 1, clrov;);
TEST_CASE( 31 ,124, x14, 0, rdov x14;);
TEST_RR_OP( 32 , kcrsa16, 0x575dffff, 0x575d0000, 0xffff0000, 128); 
TEST_RR_OP( 33 , kcrsa16, 0x93907571, 0xffff7571, 0x00006c6f, 132); 
TEST_RR_OP( 34 , kcrsa16, 0xffff2113, 0xffff2114, 0xffff0000, 136); 
TEST_RR_OP( 35 , kcrsa16, 0x7fff8000, 0x72768000, 0x8000adc5, 140); 
TEST_CASE( 36 ,144, x14, 1, rdov x14;);
TEST_CASE( 37 ,148, x14, 1, clrov;);
TEST_CASE( 38 ,152, x14, 0, rdov x14;);
TEST_RR_OP( 39 , kcrsa16, 0x27e70000, 0xe48d0000, 0x0000bca6, 156); 
TEST_RR_OP( 40 , kcrsa16, 0x00008000, 0xffff0000, 0x8000ffff, 160); 
TEST_RR_OP( 41 , kcrsa16, 0xaf908846, 0x80008846, 0x0000d070, 164); 
TEST_RR_OP( 42 , kcrsa16, 0xa389ffff, 0xa389ffff, 0x00000000, 168); 
TEST_RR_OP( 43 , kcrsa16, 0x26007fff, 0x25ff6a7c, 0x7b9bffff, 172); 
TEST_CASE( 44 ,176, x14, 1, rdov x14;);
TEST_CASE( 45 ,180, x14, 1, clrov;);
TEST_CASE( 46 ,184, x14, 0, rdov x14;);
TEST_RR_OP( 47 , kcrsa16, 0x3d088000, 0x3d070000, 0x8000ffff, 188); 
TEST_RR_OP( 48 , kcrsa16, 0x24c3a3ff, 0xffffa400, 0xffffdb3c, 192); 
TEST_RR_OP( 49 , kcrsa16, 0x0000532e, 0x8000532f, 0xffff8000, 196); 
TEST_RR_OP( 50 , kcrsa16, 0xbe3b8000, 0x8000ffff, 0x8000c1c5, 200); 
TEST_CASE( 51 ,204, x14, 1, rdov x14;);
TEST_CASE( 52 ,208, x14, 1, clrov;);
TEST_CASE( 53 ,212, x14, 0, rdov x14;);
TEST_RR_OP( 54 , kcrsa16, 0x7fff1c25, 0xffff1c26, 0xffff8000, 216); 
TEST_RR_OP( 55 , kcrsa16, 0x00018000, 0x0000ffff, 0x8000ffff, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_RR_OP( 59 , kcrsa16, 0xffff5386, 0xffff5386, 0x00000000, 236); 
TEST_RR_OP( 60 , kcrsa16, 0xffff8000, 0xffff8000, 0x80000000, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , kcrsa16, 0x8ae18000, 0xf54bffff, 0x80006a6a, 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_RR_OP( 68 , kcrsa16, 0xbb4b8000, 0xbb4b0000, 0x80000000, 272); 
TEST_RR_OP( 69 , kcrsa16, 0x3bea87af, 0xc04f8000, 0x07af8465, 276); 
TEST_RR_OP( 70 , kcrsa16, 0x80008000, 0x80008000, 0x80000000, 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_RR_OP( 74 , kcrsa16, 0xeb5f8000, 0xeb5fffff, 0x80000000, 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_RR_OP( 78 , kcrsa16, 0x0000fffe, 0x0000ffff, 0xffff0000, 312); 
TEST_RR_OP( 79 , kcrsa16, 0x922d8000, 0xd1198000, 0x00003eec, 316); 
TEST_RR_OP( 80 , kcrsa16, 0x000148a7, 0x00006395, 0xe512ffff, 320); 
TEST_RR_OP( 81 , kcrsa16, 0x3da00595, 0xbda091f2, 0x73a38000, 324); 
TEST_RR_OP( 82 , kcrsa16, 0xffec5279, 0xffec02f9, 0x4f800000, 328); 
TEST_RR_OP( 83 , kcrsa16, 0xce788000, 0xce788000, 0x80000000, 332); 
TEST_CASE( 84 ,336, x14, 1, rdov x14;);
TEST_CASE( 85 ,340, x14, 1, clrov;);
TEST_CASE( 86 ,344, x14, 0, rdov x14;);
TEST_RR_OP( 87 , kcrsa16, 0x0b34fffe, 0xffffffff, 0xfffff4cb, 348); 
TEST_RR_OP( 88 , kcrsa16, 0xf30b0000, 0x80000000, 0x00008cf5, 352); 
TEST_RR_OP( 89 , kcrsa16, 0x380882ac, 0xffff82ac, 0x0000c7f7, 356); 
TEST_RR_OP( 90 , kcrsa16, 0x8001ffff, 0x80000000, 0xffffffff, 360); 
TEST_RR_OP( 91 , kcrsa16, 0x9c26ffff, 0xffff0000, 0xffff63d9, 364); 
TEST_RR_OP( 92 , kcrsa16, 0x05f53335, 0x00003335, 0x0000fa0b, 368); 
TEST_RR_OP( 93 , kcrsa16, 0x00008000, 0x00008000, 0xffff0000, 372); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_RR_OP( 97 , kcrsa16, 0x80008000, 0x80008000, 0x00000000, 388); 
TEST_RR_OP( 98 , kcrsa16, 0xbd5dffff, 0xbd5cffff, 0x0000ffff, 392); 
TEST_RR_OP( 99 , kcrsa16, 0xbcf58000, 0xbcf48000, 0x8212ffff, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , kcrsa16, 0x80008000, 0x8000ffff, 0x80000000, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , kcrsa16, 0x7fff0000, 0x0bad0000, 0x00008000, 428); 
TEST_CASE( 108 ,432, x14, 1, rdov x14;);
TEST_CASE( 109 ,436, x14, 1, clrov;);
TEST_CASE( 110 ,440, x14, 0, rdov x14;);
TEST_RR_OP( 111 , kcrsa16, 0x81a99715, 0x80009716, 0xfffffe57, 444); 
TEST_RR_OP( 112 , kcrsa16, 0x80018000, 0x80008000, 0xffffffff, 448); 
TEST_CASE( 113 ,452, x14, 1, rdov x14;);
TEST_CASE( 114 ,456, x14, 1, clrov;);
TEST_CASE( 115 ,460, x14, 0, rdov x14;);
TEST_RR_OP( 116 , kcrsa16, 0x80018000, 0x80000000, 0x8000ffff, 464); 
TEST_RR_OP( 117 , kcrsa16, 0x4e974bb9, 0xce974bba, 0xffff8000, 468); 
TEST_RR_OP( 118 , kcrsa16, 0x510afffe, 0xd10affff, 0xffff8000, 472); 
TEST_RR_OP( 119 , kcrsa16, 0x7fff8000, 0x00000000, 0x80008000, 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_RR_OP( 123 , kcrsa16, 0x0000cd4e, 0x00008000, 0x4d4e0000, 492); 
TEST_RR_OP( 124 , kcrsa16, 0x964a8000, 0x964a8000, 0x00000000, 496); 
TEST_RR_OP( 125 , kcrsa16, 0x8fe78000, 0x80008000, 0xfffff019, 500); 
TEST_CASE( 126 ,504, x14, 1, rdov x14;);
TEST_CASE( 127 ,508, x14, 1, clrov;);
TEST_CASE( 128 ,512, x14, 0, rdov x14;);
TEST_RR_OP( 129 , kcrsa16, 0x2e86d798, 0xae86ffff, 0xd7998000, 516); 
TEST_RR_OP( 130 , kcrsa16, 0x8001ffff, 0x8000ffff, 0x0000ffff, 520); 
TEST_RR_OP( 131 , kcrsa16, 0x7fff8000, 0x00008000, 0x80008000, 524); 
TEST_CASE( 132 ,528, x14, 1, rdov x14;);
TEST_CASE( 133 ,532, x14, 1, clrov;);
TEST_CASE( 134 ,536, x14, 0, rdov x14;);
TEST_RR_OP( 135 , kcrsa16, 0x80000000, 0xebe00000, 0x00006db6, 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_RR_OP( 139 , kcrsa16, 0x00013262, 0x00000000, 0x3262ffff, 556); 
TEST_RR_OP( 140 , kcrsa16, 0xbdccfffe, 0xbdcbffff, 0xffffffff, 560); 
TEST_RR_OP( 141 , kcrsa16, 0x9635d082, 0xffffffff, 0xd08369ca, 564); 
TEST_RR_OP( 142 , kcrsa16, 0x7fff8000, 0x0afe8000, 0x00008000, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , kcrsa16, 0xb2c08000, 0xb2bf8924, 0x8000ffff, 584); 
TEST_CASE( 147 ,588, x14, 1, rdov x14;);
TEST_CASE( 148 ,592, x14, 1, clrov;);
TEST_CASE( 149 ,596, x14, 0, rdov x14;);
TEST_RR_OP( 150 , kcrsa16, 0x00019a24, 0x00001a24, 0x8000ffff, 600); 
TEST_RR_OP( 151 , kcrsa16, 0xffffffff, 0xffffffff, 0x00000000, 604); 
TEST_RR_OP( 152 , kcrsa16, 0x8dac8000, 0x8dab0000, 0x8000ffff, 608); 
TEST_RR_OP( 153 , kcrsa16, 0xf481ffff, 0xf481ffff, 0x00000000, 612); 
TEST_RR_OP( 154 , kcrsa16, 0x8001c058, 0x80008000, 0x4058ffff, 616); 
TEST_RR_OP( 155 , kcrsa16, 0x34ef4d41, 0x34ef4d42, 0xffff0000, 620); 
TEST_RR_OP( 156 , kcrsa16, 0xb9a58000, 0xb9a40000, 0x8000ffff, 624); 
TEST_RR_OP( 157 , kcrsa16, 0xd858e61f, 0xd857ffff, 0xe620ffff, 628); 
TEST_RR_OP( 158 , kcrsa16, 0x00008000, 0xffff8000, 0x8000ffff, 632); 
TEST_CASE( 159 ,636, x14, 1, rdov x14;);
TEST_CASE( 160 ,640, x14, 1, clrov;);
TEST_CASE( 161 ,644, x14, 0, rdov x14;);
TEST_RR_OP( 162 , kcrsa16, 0x7742f515, 0x35dcffff, 0xf516be9a, 648); 
TEST_RR_OP( 163 , kcrsa16, 0x297f3bba, 0x4ee53bba, 0x00002566, 652); 
TEST_RR_OP( 164 , kcrsa16, 0xdeb80000, 0xffff0000, 0x00002147, 656); 
TEST_RR_OP( 165 , kcrsa16, 0xe9538000, 0xffff8000, 0x800016ac, 660); 
TEST_CASE( 166 ,664, x14, 1, rdov x14;);
TEST_CASE( 167 ,668, x14, 1, clrov;);
TEST_CASE( 168 ,672, x14, 0, rdov x14;);
TEST_RR_OP( 169 , kcrsa16, 0x80000000, 0x80000000, 0x00000000, 676); 
TEST_RR_OP( 170 , kcrsa16, 0x7fff75b1, 0x0000ffff, 0x75b28000, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_RR_OP( 174 , kcrsa16, 0x11a0ffff, 0x0000ffff, 0x0000ee60, 696); 
TEST_RR_OP( 175 , kcrsa16, 0x80008000, 0x8000ffff, 0x80000000, 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_RR_OP( 179 , kcrsa16, 0x00008000, 0x00000000, 0x80000000, 716); 
TEST_RR_OP( 180 , kcrsa16, 0x0000ee78, 0x8000ee78, 0x00008000, 720); 
TEST_RR_OP( 181 , kcrsa16, 0x3d709fde, 0x3d701fde, 0x80000000, 724); 
TEST_RR_OP( 182 , kcrsa16, 0x5eb3ffff, 0x5eb2ffff, 0x0000ffff, 728); 
TEST_RR_OP( 183 , kcrsa16, 0x44938000, 0x00008000, 0xffffbb6d, 732); 
TEST_CASE( 184 ,736, x14, 1, rdov x14;);
TEST_CASE( 185 ,740, x14, 1, clrov;);
TEST_CASE( 186 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 187 , kcrsa16, 0x80004ad6, 0x80004ad7, 0xffff0000, 748); 
TEST_RR_OP( 188 , kcrsa16, 0xeea8d7f3, 0xeea82fe9, 0xa80a0000, 752); 
TEST_RR_OP( 189 , kcrsa16, 0x80018f9a, 0x8000ffff, 0x8f9bffff, 756); 
TEST_RR_OP( 190 , kcrsa16, 0x8000ffff, 0x80000000, 0xffff0000, 760); 
TEST_RR_OP( 191 , kcrsa16, 0x00008438, 0xffff8439, 0xffffffff, 764); 
TEST_RR_OP( 192 , kcrsa16, 0x00008000, 0x80008000, 0x80008000, 768); 
TEST_CASE( 193 ,772, x14, 1, rdov x14;);
TEST_CASE( 194 ,776, x14, 1, clrov;);
TEST_CASE( 195 ,780, x14, 0, rdov x14;);
TEST_RR_OP( 196 , kcrsa16, 0x0e120000, 0xffff0000, 0x0000f1ed, 784); 
TEST_RR_OP( 197 , kcrsa16, 0x00008f6b, 0x00000000, 0x8f6b0000, 788); 
TEST_RR_OP( 198 , kcrsa16, 0x7fff6fb5, 0x5fa5ffff, 0x6fb68ed3, 792); 
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
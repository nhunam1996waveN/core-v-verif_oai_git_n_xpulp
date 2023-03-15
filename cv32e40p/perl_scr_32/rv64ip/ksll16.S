# See LICENSE for license details.
#*****************************************************************************
# ksll16.S
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

TEST_RR_OP( 2 , ksll16, 0xff808000, 0xffff8000, 0x8000d457, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , ksll16, 0xffff0000, 0xffff0000, 0x80008000, 24); 
TEST_RR_OP( 7 , ksll16, 0xffff49d1, 0xffff49d1, 0x00000000, 28); 
TEST_RR_OP( 8 , ksll16, 0x80007fff, 0x8000056e, 0xffffffff, 32); 
TEST_CASE( 9 ,36, x14, 1, rdov x14;);
TEST_CASE( 10 ,40, x14, 1, clrov;);
TEST_CASE( 11 ,44, x14, 0, rdov x14;);
TEST_RR_OP( 12 , ksll16, 0x8000ffff, 0x8000ffff, 0xffff8000, 48); 
TEST_RR_OP( 13 , ksll16, 0x80007fff, 0x8000741b, 0x0000b909, 52); 
TEST_CASE( 14 ,56, x14, 1, rdov x14;);
TEST_CASE( 15 ,60, x14, 1, clrov;);
TEST_CASE( 16 ,64, x14, 0, rdov x14;);
TEST_RR_OP( 17 , ksll16, 0x80002827, 0x80002827, 0xffff0000, 68); 
TEST_RR_OP( 18 , ksll16, 0x8000ffff, 0x8000ffff, 0x00000000, 72); 
TEST_RR_OP( 19 , ksll16, 0x80000000, 0x80000000, 0xffff0000, 76); 
TEST_RR_OP( 20 , ksll16, 0x6a920000, 0x6a920000, 0x00008000, 80); 
TEST_RR_OP( 21 , ksll16, 0xffff0000, 0xffff0000, 0x00008000, 84); 
TEST_RR_OP( 22 , ksll16, 0x0000e232, 0x0000e232, 0xffff0000, 88); 
TEST_RR_OP( 23 , ksll16, 0x0000e940, 0x0000e940, 0x80000000, 92); 
TEST_RR_OP( 24 , ksll16, 0x00008000, 0x00008000, 0x00000000, 96); 
TEST_RR_OP( 25 , ksll16, 0x0000339c, 0x0000339c, 0x06a68000, 100); 
TEST_RR_OP( 26 , ksll16, 0x80000000, 0x80000000, 0x74e8ff82, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , ksll16, 0xffffffff, 0xffffffff, 0x80008000, 120); 
TEST_RR_OP( 31 , ksll16, 0x00000000, 0x00000000, 0xffffffff, 124); 
TEST_RR_OP( 32 , ksll16, 0x00008000, 0x0000e0b0, 0x0000ffff, 128); 
TEST_CASE( 33 ,132, x14, 1, rdov x14;);
TEST_CASE( 34 ,136, x14, 1, clrov;);
TEST_CASE( 35 ,140, x14, 0, rdov x14;);
TEST_RR_OP( 36 , ksll16, 0x00008000, 0x00008000, 0x00000000, 144); 
TEST_RR_OP( 37 , ksll16, 0x0000ffff, 0x0000ffff, 0x80000000, 148); 
TEST_RR_OP( 38 , ksll16, 0x80000000, 0xffff0000, 0xbfdfffff, 152); 
TEST_RR_OP( 39 , ksll16, 0x80008000, 0x80008000, 0x80008000, 156); 
TEST_RR_OP( 40 , ksll16, 0x00008000, 0x0000ffff, 0x8000ffff, 160); 
TEST_RR_OP( 41 , ksll16, 0xfe858000, 0xfe858000, 0x5b818000, 164); 
TEST_RR_OP( 42 , ksll16, 0xffff0493, 0xffff0493, 0xffff8000, 168); 
TEST_RR_OP( 43 , ksll16, 0x80000000, 0xffff0000, 0x0000ffff, 172); 
TEST_RR_OP( 44 , ksll16, 0xe0008000, 0xffffddcf, 0xffff306d, 176); 
TEST_CASE( 45 ,180, x14, 1, rdov x14;);
TEST_CASE( 46 ,184, x14, 1, clrov;);
TEST_CASE( 47 ,188, x14, 0, rdov x14;);
TEST_RR_OP( 48 , ksll16, 0x80008000, 0xffffffff, 0x19b4299f, 192); 
TEST_RR_OP( 49 , ksll16, 0x0000674a, 0x0000674a, 0x00008000, 196); 
TEST_RR_OP( 50 , ksll16, 0x80008000, 0x80008000, 0xffff1940, 200); 
TEST_RR_OP( 51 , ksll16, 0x00008000, 0x00008000, 0xffffd3a7, 204); 
TEST_CASE( 52 ,208, x14, 1, rdov x14;);
TEST_CASE( 53 ,212, x14, 1, clrov;);
TEST_CASE( 54 ,216, x14, 0, rdov x14;);
TEST_RR_OP( 55 , ksll16, 0xfac00000, 0xfac00000, 0xffff8000, 220); 
TEST_RR_OP( 56 , ksll16, 0x0000ffff, 0x0000ffff, 0x4c040000, 224); 
TEST_RR_OP( 57 , ksll16, 0x0000c8c8, 0x0000c8c8, 0x00008000, 228); 
TEST_RR_OP( 58 , ksll16, 0x80001836, 0x80001836, 0x00008000, 232); 
TEST_RR_OP( 59 , ksll16, 0x00000000, 0x00000000, 0x0000c78c, 236); 
TEST_RR_OP( 60 , ksll16, 0xffff0000, 0xffff0000, 0x9fe08000, 240); 
TEST_RR_OP( 61 , ksll16, 0x00008000, 0x0000d0c5, 0x8301ffff, 244); 
TEST_CASE( 62 ,248, x14, 1, rdov x14;);
TEST_CASE( 63 ,252, x14, 1, clrov;);
TEST_CASE( 64 ,256, x14, 0, rdov x14;);
TEST_RR_OP( 65 , ksll16, 0x00008000, 0x0000ffff, 0xffffffff, 260); 
TEST_RR_OP( 66 , ksll16, 0x80008000, 0x80008000, 0xffff0000, 264); 
TEST_RR_OP( 67 , ksll16, 0x80003514, 0x80003514, 0x3e8d8000, 268); 
TEST_RR_OP( 68 , ksll16, 0x00007fff, 0x00001f52, 0xffff053d, 272); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_RR_OP( 72 , ksll16, 0x80008000, 0x8000ffff, 0x15daffff, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , ksll16, 0x80000000, 0x80000000, 0x00000000, 304); 
TEST_RR_OP( 77 , ksll16, 0x80008000, 0xd3cf8000, 0xb476ffff, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , ksll16, 0x00000000, 0x00000000, 0xffffffff, 324); 
TEST_RR_OP( 82 , ksll16, 0x7fff8000, 0x0d96a226, 0x000058f8, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , ksll16, 0x80008000, 0xffff8000, 0xffffffff, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , ksll16, 0x6b90875e, 0x6b90875e, 0x3deb0000, 360); 
TEST_RR_OP( 91 , ksll16, 0x80008000, 0x80008000, 0x1cdc8000, 364); 
TEST_RR_OP( 92 , ksll16, 0x80008000, 0xf283ffff, 0xffffffff, 368); 
TEST_CASE( 93 ,372, x14, 1, rdov x14;);
TEST_CASE( 94 ,376, x14, 1, clrov;);
TEST_CASE( 95 ,380, x14, 0, rdov x14;);
TEST_RR_OP( 96 , ksll16, 0x80005d87, 0x80005d87, 0xffff8000, 384); 
TEST_RR_OP( 97 , ksll16, 0x7fffff80, 0x2967ffff, 0xaa159797, 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_RR_OP( 101 , ksll16, 0x00007fff, 0x000041fc, 0xbbe9b43f, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , ksll16, 0x92897099, 0x92897099, 0x41c48000, 420); 
TEST_RR_OP( 106 , ksll16, 0x80007fff, 0x80004216, 0x5c17ffff, 424); 
TEST_CASE( 107 ,428, x14, 1, rdov x14;);
TEST_CASE( 108 ,432, x14, 1, clrov;);
TEST_CASE( 109 ,436, x14, 0, rdov x14;);
TEST_RR_OP( 110 , ksll16, 0x80007fff, 0xffff1c23, 0xe706ffff, 440); 
TEST_CASE( 111 ,444, x14, 1, rdov x14;);
TEST_CASE( 112 ,448, x14, 1, clrov;);
TEST_CASE( 113 ,452, x14, 0, rdov x14;);
TEST_RR_OP( 114 , ksll16, 0x80007fff, 0xffff7117, 0xffffffff, 456); 
TEST_CASE( 115 ,460, x14, 1, rdov x14;);
TEST_CASE( 116 ,464, x14, 1, clrov;);
TEST_CASE( 117 ,468, x14, 0, rdov x14;);
TEST_RR_OP( 118 , ksll16, 0x0000fe00, 0x0000ffff, 0xffff5479, 472); 
TEST_RR_OP( 119 , ksll16, 0x80008000, 0xffffe499, 0x8000ffff, 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_RR_OP( 123 , ksll16, 0x941e8000, 0x941e8000, 0xb6b14570, 492); 
TEST_RR_OP( 124 , ksll16, 0x80000000, 0x80000000, 0xfb018000, 496); 
TEST_RR_OP( 125 , ksll16, 0xffff0000, 0xffff0000, 0x00000000, 500); 
TEST_RR_OP( 126 , ksll16, 0x80008000, 0xffffffff, 0xffffffff, 504); 
TEST_RR_OP( 127 , ksll16, 0xffff8000, 0xffff8000, 0x0cf0d5a0, 508); 
TEST_RR_OP( 128 , ksll16, 0x00008000, 0x00008000, 0x80000000, 512); 
TEST_RR_OP( 129 , ksll16, 0xffff0000, 0xffff0000, 0x80008000, 516); 
TEST_RR_OP( 130 , ksll16, 0x80008000, 0x80008000, 0x60bfed06, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , ksll16, 0x80000000, 0x80000000, 0x00008000, 536); 
TEST_RR_OP( 135 , ksll16, 0x80008000, 0xd24b8000, 0xffffffff, 540); 
TEST_CASE( 136 ,544, x14, 1, rdov x14;);
TEST_CASE( 137 ,548, x14, 1, clrov;);
TEST_CASE( 138 ,552, x14, 0, rdov x14;);
TEST_RR_OP( 139 , ksll16, 0x0000ffe0, 0x0000ffff, 0x8000bb95, 556); 
TEST_RR_OP( 140 , ksll16, 0x00008000, 0x00008000, 0x00008000, 560); 
TEST_RR_OP( 141 , ksll16, 0x80008000, 0xffffffff, 0xffffffff, 564); 
TEST_RR_OP( 142 , ksll16, 0x80008000, 0x80008000, 0x000046d4, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , ksll16, 0x0000fffe, 0x0000ffff, 0x9e3d0ed1, 584); 
TEST_RR_OP( 147 , ksll16, 0x1f158000, 0x1f158000, 0xffff0000, 588); 
TEST_RR_OP( 148 , ksll16, 0x00000000, 0x00000000, 0x80008000, 592); 
TEST_RR_OP( 149 , ksll16, 0x80000000, 0x80000000, 0x00008000, 596); 
TEST_RR_OP( 150 , ksll16, 0x80008000, 0x80008000, 0xffff8000, 600); 
TEST_RR_OP( 151 , ksll16, 0xf2980000, 0xf2980000, 0x00000000, 604); 
TEST_RR_OP( 152 , ksll16, 0x80007fff, 0x80007ba1, 0x800042c3, 608); 
TEST_CASE( 153 ,612, x14, 1, rdov x14;);
TEST_CASE( 154 ,616, x14, 1, clrov;);
TEST_CASE( 155 ,620, x14, 0, rdov x14;);
TEST_RR_OP( 156 , ksll16, 0x7fff8000, 0x4222ffff, 0xffffffff, 624); 
TEST_CASE( 157 ,628, x14, 1, rdov x14;);
TEST_CASE( 158 ,632, x14, 1, clrov;);
TEST_CASE( 159 ,636, x14, 0, rdov x14;);
TEST_RR_OP( 160 , ksll16, 0xffff8000, 0xffff8000, 0x48788000, 640); 
TEST_RR_OP( 161 , ksll16, 0x01a0fff8, 0x0034ffff, 0xffff5ac3, 644); 
TEST_RR_OP( 162 , ksll16, 0xffff0000, 0xffff0000, 0x00008000, 648); 
TEST_RR_OP( 163 , ksll16, 0xffffffff, 0xffffffff, 0x80008000, 652); 
TEST_RR_OP( 164 , ksll16, 0x80008000, 0xd236cd4d, 0xa008ffff, 656); 
TEST_CASE( 165 ,660, x14, 1, rdov x14;);
TEST_CASE( 166 ,664, x14, 1, clrov;);
TEST_CASE( 167 ,668, x14, 0, rdov x14;);
TEST_RR_OP( 168 , ksll16, 0x00000000, 0x00000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , ksll16, 0x80000000, 0x80000000, 0xffffffff, 676); 
TEST_CASE( 170 ,680, x14, 1, rdov x14;);
TEST_CASE( 171 ,684, x14, 1, clrov;);
TEST_CASE( 172 ,688, x14, 0, rdov x14;);
TEST_RR_OP( 173 , ksll16, 0xffffe5ff, 0xffffe5ff, 0xffff8000, 692); 
TEST_RR_OP( 174 , ksll16, 0x13d5f65a, 0x13d5f65a, 0x80000000, 696); 
TEST_RR_OP( 175 , ksll16, 0xc0007fff, 0xffff791a, 0xffffd56e, 700); 
TEST_CASE( 176 ,704, x14, 1, rdov x14;);
TEST_CASE( 177 ,708, x14, 1, clrov;);
TEST_CASE( 178 ,712, x14, 0, rdov x14;);
TEST_RR_OP( 179 , ksll16, 0x80000000, 0x80000000, 0x00000000, 716); 
TEST_RR_OP( 180 , ksll16, 0x80008000, 0xffffdb63, 0x8000ffff, 720); 
TEST_CASE( 181 ,724, x14, 1, rdov x14;);
TEST_CASE( 182 ,728, x14, 1, clrov;);
TEST_CASE( 183 ,732, x14, 0, rdov x14;);
TEST_RR_OP( 184 , ksll16, 0x7fff0000, 0x030d0000, 0xa497ffff, 736); 
TEST_CASE( 185 ,740, x14, 1, rdov x14;);
TEST_CASE( 186 ,744, x14, 1, clrov;);
TEST_CASE( 187 ,748, x14, 0, rdov x14;);
TEST_RR_OP( 188 , ksll16, 0x80000000, 0x80000000, 0x1c3f8000, 752); 
TEST_RR_OP( 189 , ksll16, 0x0000ffff, 0x0000ffff, 0xffff0000, 756); 
TEST_RR_OP( 190 , ksll16, 0x80000000, 0x80000000, 0xffffa640, 760); 
TEST_RR_OP( 191 , ksll16, 0xb0678000, 0xb0678000, 0x4a018000, 764); 
TEST_RR_OP( 192 , ksll16, 0x80000000, 0x80000000, 0x00008000, 768); 
TEST_RR_OP( 193 , ksll16, 0x80007fff, 0x800041d9, 0x8000e3a1, 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_RR_OP( 197 , ksll16, 0x80007fff, 0x80005361, 0xffffffff, 788); 
TEST_CASE( 198 ,792, x14, 1, rdov x14;);
TEST_CASE( 199 ,796, x14, 1, clrov;);

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
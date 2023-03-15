# See LICENSE for license details.
#*****************************************************************************
# ukcras16.S
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

TEST_RR_OP( 2 , ukcras16, 0xffff148c, 0x3cb4ffff, 0xeb73ffff, 8); 
TEST_CASE( 3 ,12, x14, 1, rdov x14;);
TEST_CASE( 4 ,16, x14, 1, clrov;);
TEST_CASE( 5 ,20, x14, 0, rdov x14;);
TEST_RR_OP( 6 , ukcras16, 0x80000000, 0x80008000, 0xffff0000, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , ukcras16, 0x00000000, 0x00008000, 0xffff0000, 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_RR_OP( 14 , ukcras16, 0xffff8000, 0x80008000, 0x0000ffff, 56); 
TEST_CASE( 15 ,60, x14, 1, rdov x14;);
TEST_CASE( 16 ,64, x14, 1, clrov;);
TEST_CASE( 17 ,68, x14, 0, rdov x14;);
TEST_RR_OP( 18 , ukcras16, 0xffff0000, 0x80006cd5, 0x80008000, 72); 
TEST_CASE( 19 ,76, x14, 1, rdov x14;);
TEST_CASE( 20 ,80, x14, 1, clrov;);
TEST_CASE( 21 ,84, x14, 0, rdov x14;);
TEST_RR_OP( 22 , ukcras16, 0x00000000, 0x00007845, 0x80000000, 88); 
TEST_CASE( 23 ,92, x14, 1, rdov x14;);
TEST_CASE( 24 ,96, x14, 1, clrov;);
TEST_CASE( 25 ,100, x14, 0, rdov x14;);
TEST_RR_OP( 26 , ukcras16, 0xa21d0000, 0x00000000, 0x33f9a21d, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , ukcras16, 0xffff0000, 0x80000000, 0xcc65ffff, 120); 
TEST_CASE( 31 ,124, x14, 1, rdov x14;);
TEST_CASE( 32 ,128, x14, 1, clrov;);
TEST_CASE( 33 ,132, x14, 0, rdov x14;);
TEST_RR_OP( 34 , ukcras16, 0xffff0000, 0x00000000, 0xffffffff, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_RR_OP( 38 , ukcras16, 0xffff0000, 0xffffffff, 0xffff8d76, 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_RR_OP( 42 , ukcras16, 0xffff0000, 0x70988000, 0x8000ffff, 168); 
TEST_CASE( 43 ,172, x14, 1, rdov x14;);
TEST_CASE( 44 ,176, x14, 1, clrov;);
TEST_CASE( 45 ,180, x14, 0, rdov x14;);
TEST_RR_OP( 46 , ukcras16, 0x80006768, 0x8000e6a3, 0x7f3b0000, 184); 
TEST_RR_OP( 47 , ukcras16, 0xbcd23663, 0x80004c6b, 0x16083cd2, 188); 
TEST_RR_OP( 48 , ukcras16, 0xffff0000, 0x80000000, 0xffffedfa, 192); 
TEST_CASE( 49 ,196, x14, 1, rdov x14;);
TEST_CASE( 50 ,200, x14, 1, clrov;);
TEST_CASE( 51 ,204, x14, 0, rdov x14;);
TEST_RR_OP( 52 , ukcras16, 0xffff0000, 0xc6f78000, 0x80007634, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , ukcras16, 0xa01d0000, 0x201d8000, 0xa1c78000, 224); 
TEST_CASE( 57 ,228, x14, 1, rdov x14;);
TEST_CASE( 58 ,232, x14, 1, clrov;);
TEST_CASE( 59 ,236, x14, 0, rdov x14;);
TEST_RR_OP( 60 , ukcras16, 0xffff4612, 0x8000c67e, 0x806cfa92, 240); 
TEST_CASE( 61 ,244, x14, 1, rdov x14;);
TEST_CASE( 62 ,248, x14, 1, clrov;);
TEST_CASE( 63 ,252, x14, 0, rdov x14;);
TEST_RR_OP( 64 , ukcras16, 0xffff0000, 0xfffffe27, 0xffff8000, 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_RR_OP( 68 , ukcras16, 0xffff0000, 0xfffff460, 0xffff0000, 272); 
TEST_CASE( 69 ,276, x14, 1, rdov x14;);
TEST_CASE( 70 ,280, x14, 1, clrov;);
TEST_CASE( 71 ,284, x14, 0, rdov x14;);
TEST_RR_OP( 72 , ukcras16, 0xffffffff, 0xffffffff, 0x0000ffff, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , ukcras16, 0x98045a91, 0x98048000, 0x256f0000, 304); 
TEST_RR_OP( 77 , ukcras16, 0xffff0000, 0xffff0000, 0xb4650000, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , ukcras16, 0xffff302e, 0xffffb02e, 0x80008000, 324); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_RR_OP( 85 , ukcras16, 0xb8e6a89c, 0xb8e6ffff, 0x57630000, 340); 
TEST_RR_OP( 86 , ukcras16, 0xffff0000, 0x8c190000, 0x4f1bffff, 344); 
TEST_CASE( 87 ,348, x14, 1, rdov x14;);
TEST_CASE( 88 ,352, x14, 1, clrov;);
TEST_CASE( 89 ,356, x14, 0, rdov x14;);
TEST_RR_OP( 90 , ukcras16, 0xffffffff, 0x2d5cffff, 0x0000ffff, 360); 
TEST_CASE( 91 ,364, x14, 1, rdov x14;);
TEST_CASE( 92 ,368, x14, 1, clrov;);
TEST_CASE( 93 ,372, x14, 0, rdov x14;);
TEST_RR_OP( 94 , ukcras16, 0xffffffff, 0x8000ffff, 0x00008000, 376); 
TEST_CASE( 95 ,380, x14, 1, rdov x14;);
TEST_CASE( 96 ,384, x14, 1, clrov;);
TEST_CASE( 97 ,388, x14, 0, rdov x14;);
TEST_RR_OP( 98 , ukcras16, 0xffffffff, 0xffffffff, 0x00008370, 392); 
TEST_CASE( 99 ,396, x14, 1, rdov x14;);
TEST_CASE( 100 ,400, x14, 1, clrov;);
TEST_CASE( 101 ,404, x14, 0, rdov x14;);
TEST_RR_OP( 102 , ukcras16, 0xffff8000, 0xffff8000, 0x00000000, 408); 
TEST_RR_OP( 103 , ukcras16, 0xffff0000, 0x852a0000, 0xffff8000, 412); 
TEST_CASE( 104 ,416, x14, 1, rdov x14;);
TEST_CASE( 105 ,420, x14, 1, clrov;);
TEST_CASE( 106 ,424, x14, 0, rdov x14;);
TEST_RR_OP( 107 , ukcras16, 0xffffffff, 0xffffffff, 0x00000000, 428); 
TEST_RR_OP( 108 , ukcras16, 0xffff0000, 0x13e1ffff, 0xffffffff, 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_RR_OP( 112 , ukcras16, 0xffff0000, 0xffff0000, 0x80000000, 448); 
TEST_CASE( 113 ,452, x14, 1, rdov x14;);
TEST_CASE( 114 ,456, x14, 1, clrov;);
TEST_CASE( 115 ,460, x14, 0, rdov x14;);
TEST_RR_OP( 116 , ukcras16, 0xffff0000, 0x80008000, 0x8ea18000, 464); 
TEST_CASE( 117 ,468, x14, 1, rdov x14;);
TEST_CASE( 118 ,472, x14, 1, clrov;);
TEST_CASE( 119 ,476, x14, 0, rdov x14;);
TEST_RR_OP( 120 , ukcras16, 0xffff8000, 0xffff8000, 0x0000680b, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_RR_OP( 124 , ukcras16, 0xffff0000, 0x00000000, 0x0000ffff, 496); 
TEST_RR_OP( 125 , ukcras16, 0xffff0000, 0xffff8000, 0x8000ffff, 500); 
TEST_CASE( 126 ,504, x14, 1, rdov x14;);
TEST_CASE( 127 ,508, x14, 1, clrov;);
TEST_CASE( 128 ,512, x14, 0, rdov x14;);
TEST_RR_OP( 129 , ukcras16, 0x92148000, 0x80008000, 0x00001214, 516); 
TEST_RR_OP( 130 , ukcras16, 0xffff0000, 0xffff0000, 0xffff8000, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , ukcras16, 0x99470000, 0x99470000, 0xffff0000, 536); 
TEST_CASE( 135 ,540, x14, 1, rdov x14;);
TEST_CASE( 136 ,544, x14, 1, clrov;);
TEST_CASE( 137 ,548, x14, 0, rdov x14;);
TEST_RR_OP( 138 , ukcras16, 0xc06ff528, 0xbde1ffff, 0x0ad7028e, 552); 
TEST_RR_OP( 139 , ukcras16, 0x998d0000, 0x00000000, 0x0000998d, 556); 
TEST_RR_OP( 140 , ukcras16, 0x80000000, 0x80000000, 0x00000000, 560); 
TEST_RR_OP( 141 , ukcras16, 0xb0257fff, 0x3025ffff, 0x80008000, 564); 
TEST_RR_OP( 142 , ukcras16, 0x00000000, 0x00008000, 0x80000000, 568); 
TEST_RR_OP( 143 , ukcras16, 0x80000000, 0x80008000, 0x80000000, 572); 
TEST_RR_OP( 144 , ukcras16, 0x80000000, 0x80000000, 0x80000000, 576); 
TEST_CASE( 145 ,580, x14, 1, rdov x14;);
TEST_CASE( 146 ,584, x14, 1, clrov;);
TEST_CASE( 147 ,588, x14, 0, rdov x14;);
TEST_RR_OP( 148 , ukcras16, 0xe9a6276a, 0x0000a76a, 0x8000e9a6, 592); 
TEST_RR_OP( 149 , ukcras16, 0xffff0000, 0x00000000, 0xffffffff, 596); 
TEST_CASE( 150 ,600, x14, 1, rdov x14;);
TEST_CASE( 151 ,604, x14, 1, clrov;);
TEST_CASE( 152 ,608, x14, 0, rdov x14;);
TEST_RR_OP( 153 , ukcras16, 0xffff1480, 0x800051c2, 0x3d42ffff, 612); 
TEST_CASE( 154 ,616, x14, 1, rdov x14;);
TEST_CASE( 155 ,620, x14, 1, clrov;);
TEST_CASE( 156 ,624, x14, 0, rdov x14;);
TEST_RR_OP( 157 , ukcras16, 0xffff0000, 0x80008000, 0xffffffff, 628); 
TEST_CASE( 158 ,632, x14, 1, rdov x14;);
TEST_CASE( 159 ,636, x14, 1, clrov;);
TEST_CASE( 160 ,640, x14, 0, rdov x14;);
TEST_RR_OP( 161 , ukcras16, 0xf97c0000, 0xf97c3ab1, 0xffff0000, 644); 
TEST_CASE( 162 ,648, x14, 1, rdov x14;);
TEST_CASE( 163 ,652, x14, 1, clrov;);
TEST_CASE( 164 ,656, x14, 0, rdov x14;);
TEST_RR_OP( 165 , ukcras16, 0xffff4fc7, 0xffff4fc7, 0x00008000, 660); 
TEST_CASE( 166 ,664, x14, 1, rdov x14;);
TEST_CASE( 167 ,668, x14, 1, clrov;);
TEST_CASE( 168 ,672, x14, 0, rdov x14;);
TEST_RR_OP( 169 , ukcras16, 0x80000000, 0x80008000, 0x80000000, 676); 
TEST_RR_OP( 170 , ukcras16, 0xffff0000, 0xffffd5d4, 0xffffffff, 680); 
TEST_CASE( 171 ,684, x14, 1, rdov x14;);
TEST_CASE( 172 ,688, x14, 1, clrov;);
TEST_CASE( 173 ,692, x14, 0, rdov x14;);
TEST_RR_OP( 174 , ukcras16, 0x80000000, 0x80000000, 0xffff0000, 696); 
TEST_CASE( 175 ,700, x14, 1, rdov x14;);
TEST_CASE( 176 ,704, x14, 1, clrov;);
TEST_CASE( 177 ,708, x14, 0, rdov x14;);
TEST_RR_OP( 178 , ukcras16, 0x00007fff, 0x0000ffff, 0x80000000, 712); 
TEST_RR_OP( 179 , ukcras16, 0x0000ffff, 0x0000ffff, 0x00000000, 716); 
TEST_RR_OP( 180 , ukcras16, 0xffffffff, 0xffffffff, 0x00007235, 720); 
TEST_CASE( 181 ,724, x14, 1, rdov x14;);
TEST_CASE( 182 ,728, x14, 1, clrov;);
TEST_CASE( 183 ,732, x14, 0, rdov x14;);
TEST_RR_OP( 184 , ukcras16, 0x80000000, 0x80008000, 0x80000000, 736); 
TEST_RR_OP( 185 , ukcras16, 0x80004588, 0x00004588, 0x00008000, 740); 
TEST_RR_OP( 186 , ukcras16, 0xffff0000, 0x80008000, 0xffff8000, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , ukcras16, 0xffffffff, 0xffffffff, 0x00008000, 760); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_RR_OP( 194 , ukcras16, 0xffff0000, 0xffff0000, 0x0000ef7b, 776); 
TEST_CASE( 195 ,780, x14, 1, rdov x14;);
TEST_CASE( 196 ,784, x14, 1, clrov;);
TEST_CASE( 197 ,788, x14, 0, rdov x14;);
TEST_RR_OP( 198 , ukcras16, 0x84a4e8b6, 0x8000e8b6, 0x000004a4, 792); 
TEST_RR_OP( 199 , ukcras16, 0xffff7fff, 0xffffffff, 0x8000569b, 796); 

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
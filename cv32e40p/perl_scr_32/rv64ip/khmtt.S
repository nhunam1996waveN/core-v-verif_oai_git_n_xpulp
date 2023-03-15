# See LICENSE for license details.
#*****************************************************************************
# khmtt.S
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

TEST_RR_OP( 2 , khmtt, 0x00005abd, 0x9288de62, 0x95e6a8bf, 8); 
TEST_RR_OP( 3 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 12); 
TEST_RR_OP( 4 , khmtt, 0xffffd785, 0x80000000, 0x287b582d, 16); 
TEST_RR_OP( 5 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 20); 
TEST_RR_OP( 6 , khmtt, 0xfffff116, 0x80000000, 0x0eea6590, 24); 
TEST_RR_OP( 7 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 28); 
TEST_RR_OP( 8 , khmtt, 0x00000000, 0x25adf0f1, 0x00000000, 32); 
TEST_RR_OP( 9 , khmtt, 0xffffffff, 0x11edb4fb, 0xffffffff, 36); 
TEST_RR_OP( 10 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 40); 
TEST_CASE( 11 ,44, x14, 1, rdov x14;);
TEST_CASE( 12 ,48, x14, 1, clrov;);
TEST_CASE( 13 ,52, x14, 0, rdov x14;);
TEST_RR_OP( 14 , khmtt, 0xffffffff, 0x3b53f5db, 0xffffffff, 56); 
TEST_RR_OP( 15 , khmtt, 0x00000000, 0x80000000, 0x00000000, 60); 
TEST_RR_OP( 16 , khmtt, 0x00000001, 0xffffffff, 0x80000000, 64); 
TEST_RR_OP( 17 , khmtt, 0x00000000, 0xeadc6964, 0x00000000, 68); 
TEST_RR_OP( 18 , khmtt, 0x00000000, 0x80000000, 0x00000000, 72); 
TEST_RR_OP( 19 , khmtt, 0x00000000, 0x80000000, 0x00000000, 76); 
TEST_RR_OP( 20 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 24 , khmtt, 0x00000000, 0x00000000, 0xffffffff, 96); 
TEST_RR_OP( 25 , khmtt, 0xffffdfbe, 0x80000000, 0x2042630a, 100); 
TEST_RR_OP( 26 , khmtt, 0x00000000, 0x00000000, 0xffffffff, 104); 
TEST_RR_OP( 27 , khmtt, 0x00000000, 0x80000000, 0x00000000, 108); 
TEST_RR_OP( 28 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 112); 
TEST_RR_OP( 29 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 132); 
TEST_RR_OP( 34 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 136); 
TEST_RR_OP( 35 , khmtt, 0x0000217d, 0xde8372e2, 0x80000000, 140); 
TEST_RR_OP( 36 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 144); 
TEST_RR_OP( 37 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_RR_OP( 41 , khmtt, 0x00000000, 0x00000000, 0x00000000, 164); 
TEST_RR_OP( 42 , khmtt, 0x00000000, 0x00000000, 0xa52195dc, 168); 
TEST_RR_OP( 43 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 172); 
TEST_RR_OP( 44 , khmtt, 0x00000000, 0x7045af1a, 0x00000000, 176); 
TEST_RR_OP( 45 , khmtt, 0x00000000, 0x00000000, 0x493bbe10, 180); 
TEST_RR_OP( 46 , khmtt, 0xffffffff, 0xffffffff, 0x2057cc1f, 184); 
TEST_RR_OP( 47 , khmtt, 0xffffffff, 0x18962a78, 0xffffffff, 188); 
TEST_RR_OP( 48 , khmtt, 0x00000000, 0x80000000, 0x00000000, 192); 
TEST_RR_OP( 49 , khmtt, 0x00000000, 0x00000000, 0x1712bae3, 196); 
TEST_RR_OP( 50 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 200); 
TEST_RR_OP( 51 , khmtt, 0xffffd41e, 0x80000000, 0x2be2ba1f, 204); 
TEST_RR_OP( 52 , khmtt, 0x00000000, 0x00000000, 0x23c54081, 208); 
TEST_RR_OP( 53 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 212); 
TEST_RR_OP( 54 , khmtt, 0x00000000, 0x00000000, 0xa4637af4, 216); 
TEST_RR_OP( 55 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 220); 
TEST_RR_OP( 56 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 224); 
TEST_RR_OP( 57 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 228); 
TEST_RR_OP( 58 , khmtt, 0x000001ea, 0xe3316245, 0xf77ca661, 232); 
TEST_RR_OP( 59 , khmtt, 0x00000000, 0x00000000, 0xffffffff, 236); 
TEST_RR_OP( 60 , khmtt, 0x00000000, 0xffffffff, 0x86f5576e, 240); 
TEST_RR_OP( 61 , khmtt, 0x00000000, 0xf330ee57, 0x00000000, 244); 
TEST_RR_OP( 62 , khmtt, 0x00000000, 0x80000000, 0x00000000, 248); 
TEST_RR_OP( 63 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 256); 
TEST_RR_OP( 65 , khmtt, 0x00000000, 0x00000000, 0x01c20c07, 260); 
TEST_RR_OP( 66 , khmtt, 0xffffbaa3, 0x80000000, 0x455d07c2, 264); 
TEST_RR_OP( 67 , khmtt, 0x00000000, 0x00000000, 0x80000000, 268); 
TEST_RR_OP( 68 , khmtt, 0x00000000, 0x80000000, 0x00000000, 272); 
TEST_RR_OP( 69 , khmtt, 0x00000000, 0x00000000, 0x00000000, 276); 
TEST_RR_OP( 70 , khmtt, 0x00000000, 0xffffffff, 0xa72e100f, 280); 
TEST_RR_OP( 71 , khmtt, 0x00000000, 0xffffffff, 0xcf82d350, 284); 
TEST_RR_OP( 72 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 288); 
TEST_CASE( 73 ,292, x14, 1, rdov x14;);
TEST_CASE( 74 ,296, x14, 1, clrov;);
TEST_CASE( 75 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 76 , khmtt, 0x00000000, 0xffffffff, 0xdcac25aa, 304); 
TEST_RR_OP( 77 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 324); 
TEST_RR_OP( 82 , khmtt, 0x00000000, 0x00000000, 0x80000000, 328); 
TEST_RR_OP( 83 , khmtt, 0xffffffff, 0x750b0620, 0xffffffff, 332); 
TEST_RR_OP( 84 , khmtt, 0x00000000, 0x00000000, 0x00000000, 336); 
TEST_RR_OP( 85 , khmtt, 0xffffffff, 0x263e7561, 0xffffffff, 340); 
TEST_RR_OP( 86 , khmtt, 0xffff8a7c, 0x80000000, 0x7584cbdf, 344); 
TEST_RR_OP( 87 , khmtt, 0xffffffff, 0x3e3c790c, 0xffffffff, 348); 
TEST_RR_OP( 88 , khmtt, 0x00000001, 0xffffffff, 0x80000000, 352); 
TEST_RR_OP( 89 , khmtt, 0x00000000, 0xa2e74a6d, 0x00000000, 356); 
TEST_RR_OP( 90 , khmtt, 0x00000000, 0x00000000, 0x3e96e7f9, 360); 
TEST_RR_OP( 91 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 364); 
TEST_RR_OP( 92 , khmtt, 0x00000000, 0x00000000, 0x834e6472, 368); 
TEST_RR_OP( 93 , khmtt, 0x00006eda, 0x80000000, 0x9126220e, 372); 
TEST_RR_OP( 94 , khmtt, 0x00000000, 0x00000000, 0x80000000, 376); 
TEST_RR_OP( 95 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 380); 
TEST_CASE( 96 ,384, x14, 1, rdov x14;);
TEST_CASE( 97 ,388, x14, 1, clrov;);
TEST_CASE( 98 ,392, x14, 0, rdov x14;);
TEST_RR_OP( 99 , khmtt, 0x00000000, 0x00000000, 0x80000000, 396); 
TEST_RR_OP( 100 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 400); 
TEST_RR_OP( 101 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 404); 
TEST_CASE( 102 ,408, x14, 1, rdov x14;);
TEST_CASE( 103 ,412, x14, 1, clrov;);
TEST_CASE( 104 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 105 , khmtt, 0x00000000, 0x80000000, 0x00000000, 420); 
TEST_RR_OP( 106 , khmtt, 0x00000000, 0x00000000, 0x00000000, 424); 
TEST_RR_OP( 107 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 428); 
TEST_RR_OP( 108 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_RR_OP( 112 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 448); 
TEST_RR_OP( 113 , khmtt, 0x00000000, 0x00000000, 0xffffffff, 452); 
TEST_RR_OP( 114 , khmtt, 0x00000000, 0x00000000, 0xffffffff, 456); 
TEST_RR_OP( 115 , khmtt, 0x00000001, 0xffffffff, 0x80000000, 460); 
TEST_RR_OP( 116 , khmtt, 0x00000000, 0x00000000, 0x80000000, 464); 
TEST_RR_OP( 117 , khmtt, 0xffffe6b9, 0x80000000, 0x19470360, 468); 
TEST_RR_OP( 118 , khmtt, 0x00000000, 0x00000000, 0x00000000, 472); 
TEST_RR_OP( 119 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_RR_OP( 123 , khmtt, 0x00000000, 0x00000000, 0xa0e83dd8, 492); 
TEST_RR_OP( 124 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 496); 
TEST_RR_OP( 125 , khmtt, 0x0000038e, 0x04e4c0a4, 0x5d11207c, 500); 
TEST_RR_OP( 126 , khmtt, 0x00000000, 0xffffffff, 0xd92c8eae, 504); 
TEST_RR_OP( 127 , khmtt, 0xffff92aa, 0x6d560d99, 0x80000000, 508); 
TEST_RR_OP( 128 , khmtt, 0x00000001, 0xffffffff, 0x80000000, 512); 
TEST_RR_OP( 129 , khmtt, 0x00000122, 0x038417f3, 0x294176ee, 516); 
TEST_RR_OP( 130 , khmtt, 0x00005f98, 0x80000000, 0xa0682da0, 520); 
TEST_RR_OP( 131 , khmtt, 0xffff8426, 0x80000000, 0x7bdafcd3, 524); 
TEST_RR_OP( 132 , khmtt, 0x00000000, 0xbccca414, 0x00000000, 528); 
TEST_RR_OP( 133 , khmtt, 0x00000000, 0x80000000, 0x00000000, 532); 
TEST_RR_OP( 134 , khmtt, 0x00000f07, 0x80000000, 0xf0f98df6, 536); 
TEST_RR_OP( 135 , khmtt, 0x00000000, 0x00000000, 0x80000000, 540); 
TEST_RR_OP( 136 , khmtt, 0x00000000, 0x00000000, 0x5e37b816, 544); 
TEST_RR_OP( 137 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_RR_OP( 141 , khmtt, 0x00000000, 0x00000000, 0x7d20e31f, 564); 
TEST_RR_OP( 142 , khmtt, 0x00000000, 0x00000000, 0x80000000, 568); 
TEST_RR_OP( 143 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 572); 
TEST_RR_OP( 144 , khmtt, 0xffffffff, 0x3ec1ce6c, 0xffffffff, 576); 
TEST_RR_OP( 145 , khmtt, 0x00000000, 0x00000000, 0x80000000, 580); 
TEST_RR_OP( 146 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 584); 
TEST_RR_OP( 147 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , khmtt, 0x00000000, 0x1df844bc, 0x00000000, 592); 
TEST_RR_OP( 149 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 596); 
TEST_RR_OP( 150 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 600); 
TEST_RR_OP( 151 , khmtt, 0xffffffff, 0xffffffff, 0x2c78bf27, 604); 
TEST_RR_OP( 152 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 608); 
TEST_RR_OP( 153 , khmtt, 0x00000000, 0x00000000, 0xffffffff, 612); 
TEST_RR_OP( 154 , khmtt, 0xffffae56, 0x80000000, 0x51aa6529, 616); 
TEST_RR_OP( 155 , khmtt, 0xfffffdb2, 0xfcc4382f, 0x5b1d8dd5, 620); 
TEST_RR_OP( 156 , khmtt, 0x00000000, 0x00000000, 0x00000000, 624); 
TEST_RR_OP( 157 , khmtt, 0xffffffff, 0xffffffff, 0x5c5ba43a, 628); 
TEST_RR_OP( 158 , khmtt, 0x00000001, 0xffffffff, 0x80000000, 632); 
TEST_RR_OP( 159 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 636); 
TEST_RR_OP( 160 , khmtt, 0x00000d04, 0x295903ce, 0x284c256d, 640); 
TEST_RR_OP( 161 , khmtt, 0x00000000, 0x80000000, 0x00000000, 644); 
TEST_RR_OP( 162 , khmtt, 0xffffffff, 0xffffffff, 0x4230475c, 648); 
TEST_RR_OP( 163 , khmtt, 0x00005db4, 0xa24c4dc5, 0x80000000, 652); 
TEST_RR_OP( 164 , khmtt, 0x0000055e, 0xd5e4b42e, 0xefad4ae8, 656); 
TEST_RR_OP( 165 , khmtt, 0x00000000, 0x00000000, 0x00000000, 660); 
TEST_RR_OP( 166 , khmtt, 0xffffffff, 0xffffffff, 0x72ae03aa, 664); 
TEST_RR_OP( 167 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 668); 
TEST_CASE( 168 ,672, x14, 1, rdov x14;);
TEST_CASE( 169 ,676, x14, 1, clrov;);
TEST_CASE( 170 ,680, x14, 0, rdov x14;);
TEST_RR_OP( 171 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 684); 
TEST_RR_OP( 172 , khmtt, 0x00000000, 0x00000000, 0x80000000, 688); 
TEST_RR_OP( 173 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 692); 
TEST_RR_OP( 174 , khmtt, 0x0000546e, 0x6401988d, 0x6c12cfdd, 696); 
TEST_RR_OP( 175 , khmtt, 0x00000000, 0x00000000, 0x80000000, 700); 
TEST_RR_OP( 176 , khmtt, 0x00000000, 0xffffffff, 0xffffffff, 704); 
TEST_RR_OP( 177 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 708); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_RR_OP( 181 , khmtt, 0x00000000, 0x00000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 728); 
TEST_CASE( 183 ,732, x14, 1, rdov x14;);
TEST_CASE( 184 ,736, x14, 1, clrov;);
TEST_CASE( 185 ,740, x14, 0, rdov x14;);
TEST_RR_OP( 186 , khmtt, 0x00000000, 0x80000000, 0x00000000, 744); 
TEST_RR_OP( 187 , khmtt, 0xffffc7e2, 0x381eec4f, 0x80000000, 748); 
TEST_RR_OP( 188 , khmtt, 0x000064d8, 0x9b28e08e, 0x80000000, 752); 
TEST_RR_OP( 189 , khmtt, 0x00000001, 0x80000000, 0xffffffff, 756); 
TEST_RR_OP( 190 , khmtt, 0x00007fff, 0x80000000, 0x80000000, 760); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_RR_OP( 194 , khmtt, 0x00002ab1, 0xd54ff9c7, 0x80000000, 776); 
TEST_RR_OP( 195 , khmtt, 0x00000263, 0x217248df, 0x0924b2b1, 780); 
TEST_RR_OP( 196 , khmtt, 0x00000000, 0x80000000, 0x00000000, 784); 
TEST_RR_OP( 197 , khmtt, 0x00000000, 0xffffffff, 0x00000000, 788); 
TEST_RR_OP( 198 , khmtt, 0xffffffff, 0xffffffff, 0x05c52652, 792); 
TEST_RR_OP( 199 , khmtt, 0x00004071, 0x80000000, 0xbf8f096f, 796); 

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
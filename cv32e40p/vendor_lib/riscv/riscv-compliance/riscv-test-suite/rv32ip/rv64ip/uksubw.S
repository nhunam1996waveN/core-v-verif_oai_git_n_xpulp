# See LICENSE for license details.
#*****************************************************************************
# uksubw.S
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

TEST_RR_OP( 2 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 8); 
TEST_RR_OP( 3 , uksubw, 0x44354a0c, 0xc4354a0c, 0x80000000, 12); 
TEST_RR_OP( 4 , uksubw, 0x00000000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , uksubw, 0x00000000, 0x00000000, 0xffffffff, 20); 
TEST_CASE( 6 ,24, x14, 1, rdov x14;);
TEST_CASE( 7 ,28, x14, 1, clrov;);
TEST_CASE( 8 ,32, x14, 0, rdov x14;);
TEST_RR_OP( 9 , uksubw, 0x00000000, 0x00000000, 0x00000000, 36); 
TEST_RR_OP( 10 , uksubw, 0x7fffffff, 0xffffffff, 0x80000000, 40); 
TEST_RR_OP( 11 , uksubw, 0x00000000, 0x5344098b, 0x80000000, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_RR_OP( 15 , uksubw, 0x00000000, 0x80000000, 0x80000000, 60); 
TEST_RR_OP( 16 , uksubw, 0x00000000, 0x42cd2357, 0xffffffff, 64); 
TEST_CASE( 17 ,68, x14, 1, rdov x14;);
TEST_CASE( 18 ,72, x14, 1, clrov;);
TEST_CASE( 19 ,76, x14, 0, rdov x14;);
TEST_RR_OP( 20 , uksubw, 0x00000000, 0x00000000, 0xffffffff, 80); 
TEST_CASE( 21 ,84, x14, 1, rdov x14;);
TEST_CASE( 22 ,88, x14, 1, clrov;);
TEST_CASE( 23 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 24 , uksubw, 0x00000000, 0x80000000, 0xffffffff, 96); 
TEST_CASE( 25 ,100, x14, 1, rdov x14;);
TEST_CASE( 26 ,104, x14, 1, clrov;);
TEST_CASE( 27 ,108, x14, 0, rdov x14;);
TEST_RR_OP( 28 , uksubw, 0x00000000, 0x00000000, 0x00000000, 112); 
TEST_RR_OP( 29 , uksubw, 0x00000000, 0x64d44b2c, 0x80000000, 116); 
TEST_CASE( 30 ,120, x14, 1, rdov x14;);
TEST_CASE( 31 ,124, x14, 1, clrov;);
TEST_CASE( 32 ,128, x14, 0, rdov x14;);
TEST_RR_OP( 33 , uksubw, 0x0dd117df, 0x8dd117df, 0x80000000, 132); 
TEST_RR_OP( 34 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 136); 
TEST_RR_OP( 35 , uksubw, 0xfffffffff4b9696b, 0xf4b9696b, 0x00000000, 140); 
TEST_RR_OP( 36 , uksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 144); 
TEST_RR_OP( 37 , uksubw, 0x13486fa3, 0xdeb53c04, 0xcb6ccc61, 148); 
TEST_RR_OP( 38 , uksubw, 0x69c97ec7, 0x69c97ec7, 0x00000000, 152); 
TEST_RR_OP( 39 , uksubw, 0x63430fc3, 0x80000000, 0x1cbcf03d, 156); 
TEST_RR_OP( 40 , uksubw, 0x48875b00, 0x80000000, 0x3778a500, 160); 
TEST_RR_OP( 41 , uksubw, 0x00000000, 0x80000000, 0xffffffff, 164); 
TEST_CASE( 42 ,168, x14, 1, rdov x14;);
TEST_CASE( 43 ,172, x14, 1, clrov;);
TEST_CASE( 44 ,176, x14, 0, rdov x14;);
TEST_RR_OP( 45 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 180); 
TEST_RR_OP( 46 , uksubw, 0x7fffffff, 0xffffffff, 0x80000000, 184); 
TEST_RR_OP( 47 , uksubw, 0x2bde3a78, 0xe7a8f5a2, 0xbbcabb2a, 188); 
TEST_RR_OP( 48 , uksubw, 0x2931a722, 0x80000000, 0x56ce58de, 192); 
TEST_RR_OP( 49 , uksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 196); 
TEST_RR_OP( 50 , uksubw, 0x0eae57d6, 0x80000000, 0x7151a82a, 200); 
TEST_RR_OP( 51 , uksubw, 0x00000000, 0x00000000, 0x00000000, 204); 
TEST_RR_OP( 52 , uksubw, 0x00000000, 0x80000000, 0xffffffff, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , uksubw, 0x00000000, 0x00000000, 0x00000000, 224); 
TEST_RR_OP( 57 , uksubw, 0x6bdd9324, 0x80000000, 0x14226cdc, 228); 
TEST_RR_OP( 58 , uksubw, 0x00000000, 0x0dcfe62a, 0xffffffff, 232); 
TEST_CASE( 59 ,236, x14, 1, rdov x14;);
TEST_CASE( 60 ,240, x14, 1, clrov;);
TEST_CASE( 61 ,244, x14, 0, rdov x14;);
TEST_RR_OP( 62 , uksubw, 0x7a857f0d, 0x80000000, 0x057a80f3, 248); 
TEST_RR_OP( 63 , uksubw, 0x00000000, 0x80000000, 0xda001b3a, 252); 
TEST_CASE( 64 ,256, x14, 1, rdov x14;);
TEST_CASE( 65 ,260, x14, 1, clrov;);
TEST_CASE( 66 ,264, x14, 0, rdov x14;);
TEST_RR_OP( 67 , uksubw, 0x03ceaedf, 0x03ceaedf, 0x00000000, 268); 
TEST_RR_OP( 68 , uksubw, 0x00000000, 0x00000000, 0x00000000, 272); 
TEST_RR_OP( 69 , uksubw, 0x00000000, 0x80000000, 0xdcc8e0e5, 276); 
TEST_CASE( 70 ,280, x14, 1, rdov x14;);
TEST_CASE( 71 ,284, x14, 1, clrov;);
TEST_CASE( 72 ,288, x14, 0, rdov x14;);
TEST_RR_OP( 73 , uksubw, 0x00000000, 0x00000000, 0x80000000, 292); 
TEST_CASE( 74 ,296, x14, 1, rdov x14;);
TEST_CASE( 75 ,300, x14, 1, clrov;);
TEST_CASE( 76 ,304, x14, 0, rdov x14;);
TEST_RR_OP( 77 , uksubw, 0x00000000, 0x00000000, 0x80000000, 308); 
TEST_CASE( 78 ,312, x14, 1, rdov x14;);
TEST_CASE( 79 ,316, x14, 1, clrov;);
TEST_CASE( 80 ,320, x14, 0, rdov x14;);
TEST_RR_OP( 81 , uksubw, 0xffffffffd558ca53, 0xd558ca53, 0x00000000, 324); 
TEST_RR_OP( 82 , uksubw, 0x00000000, 0x80000000, 0xa11bf286, 328); 
TEST_CASE( 83 ,332, x14, 1, rdov x14;);
TEST_CASE( 84 ,336, x14, 1, clrov;);
TEST_CASE( 85 ,340, x14, 0, rdov x14;);
TEST_RR_OP( 86 , uksubw, 0xfffffffff7f56ccb, 0xffffffff, 0x080a9334, 344); 
TEST_RR_OP( 87 , uksubw, 0xffffffffdf878e43, 0xdf878e43, 0x00000000, 348); 
TEST_RR_OP( 88 , uksubw, 0x3521d834, 0xf602c35e, 0xc0e0eb2a, 352); 
TEST_RR_OP( 89 , uksubw, 0x00000000, 0x80000000, 0x96d38ab0, 356); 
TEST_CASE( 90 ,360, x14, 1, rdov x14;);
TEST_CASE( 91 ,364, x14, 1, clrov;);
TEST_CASE( 92 ,368, x14, 0, rdov x14;);
TEST_RR_OP( 93 , uksubw, 0x00000000, 0x00000000, 0x7da60396, 372); 
TEST_CASE( 94 ,376, x14, 1, rdov x14;);
TEST_CASE( 95 ,380, x14, 1, clrov;);
TEST_CASE( 96 ,384, x14, 0, rdov x14;);
TEST_RR_OP( 97 , uksubw, 0x00000000, 0x00000000, 0x923fa505, 388); 
TEST_CASE( 98 ,392, x14, 1, rdov x14;);
TEST_CASE( 99 ,396, x14, 1, clrov;);
TEST_CASE( 100 ,400, x14, 0, rdov x14;);
TEST_RR_OP( 101 , uksubw, 0x15ddd064, 0xffffffff, 0xea222f9b, 404); 
TEST_RR_OP( 102 , uksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 408); 
TEST_RR_OP( 103 , uksubw, 0x289d01fc, 0xa89d01fc, 0x80000000, 412); 
TEST_RR_OP( 104 , uksubw, 0x00000000, 0x00000000, 0x6adf06b8, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , uksubw, 0x00000000, 0x00000000, 0x80000000, 432); 
TEST_CASE( 109 ,436, x14, 1, rdov x14;);
TEST_CASE( 110 ,440, x14, 1, clrov;);
TEST_CASE( 111 ,444, x14, 0, rdov x14;);
TEST_RR_OP( 112 , uksubw, 0x00000000, 0x6b5939e9, 0xffffffff, 448); 
TEST_CASE( 113 ,452, x14, 1, rdov x14;);
TEST_CASE( 114 ,456, x14, 1, clrov;);
TEST_CASE( 115 ,460, x14, 0, rdov x14;);
TEST_RR_OP( 116 , uksubw, 0x00000000, 0x80000000, 0x80000000, 464); 
TEST_RR_OP( 117 , uksubw, 0x00000000, 0x00000000, 0x00000000, 468); 
TEST_RR_OP( 118 , uksubw, 0x7fffffff, 0xffffffff, 0x80000000, 472); 
TEST_RR_OP( 119 , uksubw, 0x00000000, 0x00000000, 0xffffffff, 476); 
TEST_CASE( 120 ,480, x14, 1, rdov x14;);
TEST_CASE( 121 ,484, x14, 1, clrov;);
TEST_CASE( 122 ,488, x14, 0, rdov x14;);
TEST_RR_OP( 123 , uksubw, 0x00000000, 0x00000000, 0x00000000, 492); 
TEST_RR_OP( 124 , uksubw, 0x00000000, 0x27bcebf4, 0xf05f84da, 496); 
TEST_CASE( 125 ,500, x14, 1, rdov x14;);
TEST_CASE( 126 ,504, x14, 1, clrov;);
TEST_CASE( 127 ,508, x14, 0, rdov x14;);
TEST_RR_OP( 128 , uksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 512); 
TEST_RR_OP( 129 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 516); 
TEST_RR_OP( 130 , uksubw, 0x00000000, 0x00000000, 0xffffffff, 520); 
TEST_CASE( 131 ,524, x14, 1, rdov x14;);
TEST_CASE( 132 ,528, x14, 1, clrov;);
TEST_CASE( 133 ,532, x14, 0, rdov x14;);
TEST_RR_OP( 134 , uksubw, 0xffffffffa223b6fc, 0xffffffff, 0x5ddc4903, 536); 
TEST_RR_OP( 135 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 540); 
TEST_RR_OP( 136 , uksubw, 0x00000000, 0x00000000, 0x80000000, 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_RR_OP( 140 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 560); 
TEST_RR_OP( 141 , uksubw, 0x7270194d, 0xf270194d, 0x80000000, 564); 
TEST_RR_OP( 142 , uksubw, 0x00000000, 0x7d581dc8, 0xffffffff, 568); 
TEST_CASE( 143 ,572, x14, 1, rdov x14;);
TEST_CASE( 144 ,576, x14, 1, clrov;);
TEST_CASE( 145 ,580, x14, 0, rdov x14;);
TEST_RR_OP( 146 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 584); 
TEST_RR_OP( 147 , uksubw, 0x00000000, 0x00000000, 0x5e653e8d, 588); 
TEST_CASE( 148 ,592, x14, 1, rdov x14;);
TEST_CASE( 149 ,596, x14, 1, clrov;);
TEST_CASE( 150 ,600, x14, 0, rdov x14;);
TEST_RR_OP( 151 , uksubw, 0x00000000, 0x00000000, 0xb5a00436, 604); 
TEST_CASE( 152 ,608, x14, 1, rdov x14;);
TEST_CASE( 153 ,612, x14, 1, clrov;);
TEST_CASE( 154 ,616, x14, 0, rdov x14;);
TEST_RR_OP( 155 , uksubw, 0xffffffff80000000, 0x80000000, 0x00000000, 620); 
TEST_RR_OP( 156 , uksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 624); 
TEST_RR_OP( 157 , uksubw, 0xffffffffbc05ac35, 0xbc05ac35, 0x00000000, 628); 
TEST_RR_OP( 158 , uksubw, 0x361f0bb5, 0x361f0bb5, 0x00000000, 632); 
TEST_RR_OP( 159 , uksubw, 0x00000000, 0x5bb51e6b, 0xffffffff, 636); 
TEST_CASE( 160 ,640, x14, 1, rdov x14;);
TEST_CASE( 161 ,644, x14, 1, clrov;);
TEST_CASE( 162 ,648, x14, 0, rdov x14;);
TEST_RR_OP( 163 , uksubw, 0xffffffffd2e2a486, 0xffffffff, 0x2d1d5b79, 652); 
TEST_RR_OP( 164 , uksubw, 0x52c27e10, 0x80000000, 0x2d3d81f0, 656); 
TEST_RR_OP( 165 , uksubw, 0x13d7afe9, 0xffffffff, 0xec285016, 660); 
TEST_RR_OP( 166 , uksubw, 0x00000000, 0x00000000, 0x1be4c274, 664); 
TEST_CASE( 167 ,668, x14, 1, rdov x14;);
TEST_CASE( 168 ,672, x14, 1, clrov;);
TEST_CASE( 169 ,676, x14, 0, rdov x14;);
TEST_RR_OP( 170 , uksubw, 0x7fffffff, 0xffffffff, 0x80000000, 680); 
TEST_RR_OP( 171 , uksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 684); 
TEST_RR_OP( 172 , uksubw, 0x00000000, 0x00000000, 0x80000000, 688); 
TEST_CASE( 173 ,692, x14, 1, rdov x14;);
TEST_CASE( 174 ,696, x14, 1, clrov;);
TEST_CASE( 175 ,700, x14, 0, rdov x14;);
TEST_RR_OP( 176 , uksubw, 0x00000000, 0xffffffff, 0xffffffff, 704); 
TEST_RR_OP( 177 , uksubw, 0x00000000, 0x80000000, 0xffffffff, 708); 
TEST_CASE( 178 ,712, x14, 1, rdov x14;);
TEST_CASE( 179 ,716, x14, 1, clrov;);
TEST_CASE( 180 ,720, x14, 0, rdov x14;);
TEST_RR_OP( 181 , uksubw, 0x00000000, 0x00000000, 0x00000000, 724); 
TEST_RR_OP( 182 , uksubw, 0x00000000, 0x00000000, 0xffffffff, 728); 
TEST_CASE( 183 ,732, x14, 1, rdov x14;);
TEST_CASE( 184 ,736, x14, 1, clrov;);
TEST_CASE( 185 ,740, x14, 0, rdov x14;);
TEST_RR_OP( 186 , uksubw, 0x00000000, 0x3d6df94c, 0xffffffff, 744); 
TEST_CASE( 187 ,748, x14, 1, rdov x14;);
TEST_CASE( 188 ,752, x14, 1, clrov;);
TEST_CASE( 189 ,756, x14, 0, rdov x14;);
TEST_RR_OP( 190 , uksubw, 0x00000000, 0x00000000, 0x80000000, 760); 
TEST_CASE( 191 ,764, x14, 1, rdov x14;);
TEST_CASE( 192 ,768, x14, 1, clrov;);
TEST_CASE( 193 ,772, x14, 0, rdov x14;);
TEST_RR_OP( 194 , uksubw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 776); 
TEST_RR_OP( 195 , uksubw, 0x00000000, 0x00000000, 0x80000000, 780); 
TEST_CASE( 196 ,784, x14, 1, rdov x14;);
TEST_CASE( 197 ,788, x14, 1, clrov;);
TEST_CASE( 198 ,792, x14, 0, rdov x14;);
TEST_RR_OP( 199 , uksubw, 0x4979749c, 0xffffffff, 0xb6868b63, 796); 

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
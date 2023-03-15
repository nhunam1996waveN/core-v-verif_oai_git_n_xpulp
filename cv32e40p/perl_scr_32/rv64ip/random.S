# See LICENSE for license details.
#*****************************************************************************
# random.S
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

TEST_RR_OP( 2 , sra.u, 0xffffffff, 0x80000000, 0xffffffff, 8); 
TEST_RR_OP( 3 , smmwt.u, 0x0cc46344, 0xe6773978, 0x80000000, 12); 
TEST_RR_OP( 4 , smmul, 0x40000000, 0x80000000, 0x80000000, 16); 
TEST_RR_OP( 5 , kmaxds, 0x40000000, 0x80000000, 0x80000000, 20); 
TEST_RR_OP( 6 , ksll8, 0x80000080, 0x80000080, 0x00ffb1ff, 24); 
TEST_CASE( 7 ,28, x14, 1, rdov x14;);
TEST_CASE( 8 ,32, x14, 1, clrov;);
TEST_CASE( 9 ,36, x14, 0, rdov x14;);
TEST_RR_OP( 10 , bitrev, 0x00000000, 0x00000000, 0x00000000, 40); 
TEST_RR_OP( 11 , kdmtt, 0x00010000, 0xffffffff, 0x80000000, 44); 
TEST_RR_OP( 12 , ukcras16, 0x90957fff, 0x9095ffff, 0x80000000, 48); 
TEST_RR_OP( 13 , kmmawb2.u, 0x90957fff, 0xffffffff, 0x00000000, 52); 
TEST_RR_OP64_OO( 14 , smaldrs, 0x000000009094bbbd, 0x83f54837, 0xffffffff , 56); 
TEST_RR_OP( 15 , kmxda, 0x0000867d, 0x8064f91f, 0xffffffff, 64); 
TEST_RR_OP( 16 , ucmplt8, 0x00ff00ff, 0xff808072, 0x00ff6680, 68); 
TEST_R_OP( 17 , zunpkd830, 0x00800056, 0x80800056, 72); 
TEST_RR_OP( 18 , kdmabb, 0x007f8258, 0xa2353eff, 0xffffffff, 76); 
TEST_RR_OP( 19 , ksllw, 0x7fffffff, 0x4e547285, 0xffffffff, 80); 
TEST_CASE( 20 ,84, x14, 1, rdov x14;);
TEST_CASE( 21 ,88, x14, 1, clrov;);
TEST_CASE( 22 ,92, x14, 0, rdov x14;);
TEST_RR_OP( 23 , ursubw, 0x7fffffff, 0xffffffff, 0x00000000, 96); 
TEST_RR_OP( 24 , scmplt16, 0x0000ffff, 0xffffffff, 0x80000000, 100); 
TEST_IMM_OP( 25 , kslli8, 0xfcfcfc00, 0xffffff00, 2 , 104); 
TEST_RR_OP64_IO( 26 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 108); 
TEST_RR_OP( 27 , srl16.u, 0x0000ffff, 0x0000ffff, 0x80008000, 116); 
TEST_RR_OP64_IO( 28 , add64, 0xcfa7c71231b8ddd9, 0xffffffff, 0xffffffff, 0x31b8ddda, 0xcfa7c712, 120); 
TEST_R_OP( 29 , kabsw, 0x00000001, 0xffffffff, 128); 
TEST_RR_OP( 30 , umaqa, 0x0003f805, 0xffffffff, 0xffffffff, 132); 
TEST_RR_OP( 31 , kmmawt2, 0x7fffffff, 0x80000000, 0x80000000, 136); 
TEST_CASE( 32 ,140, x14, 1, rdov x14;);
TEST_CASE( 33 ,144, x14, 1, clrov;);
TEST_CASE( 34 ,148, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 35 , smaldrs, 0xffffffffc0000000, 0x80000000, 0x80000000 , 152); 
TEST_RR_OP( 36 , kmda, 0x00000000, 0x00000000, 0x80000000, 160); 
TEST_RR_OP( 37 , ksllw, 0xfffffff0, 0xffffffff, 0x74237f44, 164); 
TEST_RR_OP( 38 , urcrsa16, 0x0000ffff, 0x8000ffff, 0xffff8000, 168); 
TEST_RR_OP( 39 , ksubh, 0xfffff4da, 0x00000000, 0x18920b26, 172); 
TEST_IMM_OP( 40 , insb, 0xfffff4fa, 0x733ddefa, 0, 176 ); 
TEST_IMM_OP( 41 , srai16, 0x00000000, 0x00000000, 9 , 180); 
TEST_R_OP( 42 , kabs8, 0x7f000176, 0x8000ff8a, 184); 
TEST_CASE( 43 ,188, x14, 1, rdov x14;);
TEST_CASE( 44 ,192, x14, 1, clrov;);
TEST_CASE( 45 ,196, x14, 0, rdov x14;);
TEST_RR_OP( 46 , ursubw, 0x3fffffff, 0xffffffff, 0x80000000, 200); 
TEST_IMM_OP( 47 , insb, 0x3fffffff, 0xffffffff, 2, 204 ); 
TEST_RR_OP( 48 , cmpeq8, 0x0000ff00, 0xff80ffff, 0x00ffffb1, 208); 
TEST_RR_OP( 49 , uradd8, 0x701b007f, 0xe1000000, 0x003700ff, 212); 
TEST_RR_OP( 50 , kcras16, 0xfffe7fff, 0xffffffff, 0x8000ffff, 216); 
TEST_RR_OP( 51 , rsubw, 0x00000000, 0x00000000, 0xffffffff, 220); 
TEST_RR_OP( 52 , pkbt16, 0xc372ffff, 0x0fa1c372, 0xffff0000, 224); 
TEST_RR_OP( 53 , smbt16, 0x00000000, 0x80000000, 0x80000000, 228); 
TEST_RR_OP( 54 , ksll8, 0xff808080, 0xff808080, 0x8000ff00, 232); 
TEST_RR_OP( 55 , kmmac, 0xff808080, 0xffffffff, 0xffffffff, 236); 
TEST_RR_OP( 56 , add16, 0x3ea30000, 0x00008000, 0x3ea38000, 240); 
TEST_R_OP( 57 , zunpkd832, 0x000000ff, 0x00ff00ff, 244); 
TEST_RR_OP( 58 , ursubw, 0xffffffffcdf9a0b8, 0x1bf34171, 0x80000000, 248); 
TEST_RR_OP( 59 , uksubw, 0x00000000, 0x7ee5140d, 0x80000000, 252); 
TEST_CASE( 60 ,256, x14, 1, rdov x14;);
TEST_CASE( 61 ,260, x14, 1, clrov;);
TEST_CASE( 62 ,264, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 63 , smaltt, 0x0000000000000000, 0x00000000, 0x3d01dfec , 268); 
TEST_RRR_OP( 64 , cmix, 0x00000000, 0xffffffff, 0x00000000, 0x6e493644, 276); 
TEST_RR_OP( 65 , sra16, 0xffff8000, 0xffff8000, 0x00008000, 280); 
TEST_RR_OP( 66 , radd16, 0x1102ffff, 0xffffffff, 0x22050000, 284); 
TEST_RR_OP( 67 , ukstas16, 0xffff0000, 0xffff8000, 0x8000ffff, 288); 
TEST_CASE( 68 ,292, x14, 1, rdov x14;);
TEST_CASE( 69 ,296, x14, 1, clrov;);
TEST_CASE( 70 ,300, x14, 0, rdov x14;);
TEST_RR_OP( 71 , kmmawt.u, 0x00000000, 0xffffffff, 0x00000000, 304); 
TEST_RR_OP64_OO( 72 , smulx16, 0x0000000000000000, 0x00000000, 0xffffffff, 308); 
TEST_RR_OP( 73 , smtt16, 0x00000000, 0x80000000, 0x00000000, 316); 
TEST_R_OP( 74 , clrs32, 0x0000001f, 0x00000000, 320); 
TEST_RR_OP( 75 , max, 0xffffffff, 0xf5010086, 0xffffffff, 324); 
TEST_RR_OP( 76 , srl8, 0x80ff7cff, 0x80ff7cff, 0x80000000, 328); 
TEST_RR_OP64_IO( 77 , rsub64, 0xc000000000000000, 0x00000000, 0x80000000, 0xffffffff, 0xffffffff, 332); 
TEST_RR_OP( 78 , uksub16, 0x0000419e, 0x80008000, 0xffff3e62, 340); 
TEST_CASE( 79 ,344, x14, 1, rdov x14;);
TEST_CASE( 80 ,348, x14, 1, clrov;);
TEST_CASE( 81 ,352, x14, 0, rdov x14;);
TEST_RR_OP( 82 , bitrev, 0x00000000, 0x00000000, 0x54a949cb, 356); 
TEST_RR_OP( 83 , khmx16, 0x026c3630, 0x69398c5e, 0xc40402f3, 360); 
TEST_R_OP( 84 , clrs32, 0x0000001f, 0xffffffff, 364); 
TEST_IMM_OP( 85 , insb, 0x0000001f, 0x00000000, 2, 368 ); 
TEST_IMM_OP( 86 , sclip8, 0x3dff0000, 0x3dff0000, 6 , 372); 
TEST_RR_OP( 87 , sra8.u, 0x00000076, 0x00000076, 0xf8f3ff00, 376); 
TEST_RR_OP( 88 , kslra8.u, 0xff80ff80, 0xff80ff80, 0xf6ff0000, 380); 
TEST_RR_OP( 89 , pbsad, 0x00000177, 0x80008080, 0x808000f7, 384); 
TEST_R_OP( 90 , swap16, 0x8000ffff, 0xffff8000, 388); 
TEST_RR_OP64_OO( 91 , umulx16, 0x0000000073368cc9, 0xffffffff, 0x73370000, 392); 
TEST_RR_OP( 92 , uraddw, 0xffffffff80000000, 0x80000000, 0x80000000, 400); 
TEST_RR_OP( 93 , ukstas16, 0xffff8000, 0x80008000, 0xd81e0000, 404); 
TEST_CASE( 94 ,408, x14, 1, rdov x14;);
TEST_CASE( 95 ,412, x14, 1, clrov;);
TEST_CASE( 96 ,416, x14, 0, rdov x14;);
TEST_RR_OP( 97 , kmxda, 0x00000000, 0x00000000, 0x8c24f0bc, 420); 
TEST_RR_OP( 98 , ukstsa16, 0x0000ffff, 0x2026ffff, 0x80008000, 424); 
TEST_CASE( 99 ,428, x14, 1, rdov x14;);
TEST_CASE( 100 ,432, x14, 1, clrov;);
TEST_CASE( 101 ,436, x14, 0, rdov x14;);
TEST_RR_OP( 102 , uraddw, 0x362f565c, 0x00000000, 0x6c5eacb8, 440); 
TEST_RR_OP( 103 , ave, 0xc0000000, 0x80000000, 0x00000000, 444); 
TEST_RR_OP( 104 , smin16, 0xffff8000, 0xffff0000, 0x33628000, 448); 
TEST_R_OP( 105 , clz32, 0x00000001, 0x56e53d95, 452); 
TEST_RR_OP64_OO( 106 , smalbt, 0x0000000000000001, 0x1723a823, 0x00000000 , 456); 
TEST_RR_OP( 107 , kmada, 0x00000001, 0x80000000, 0x00000000, 464); 
TEST_RR_OP( 108 , kmmac.u, 0x00000001, 0xffffffff, 0x00000000, 468); 
TEST_RR_OP( 109 , kslra16.u, 0xffff8000, 0xffff8000, 0xffff0000, 472); 
TEST_RR_OP( 110 , ukadd8, 0x80ffb662, 0x00beb600, 0x80ff0062, 476); 
TEST_CASE( 111 ,480, x14, 1, rdov x14;);
TEST_CASE( 112 ,484, x14, 1, clrov;);
TEST_CASE( 113 ,488, x14, 0, rdov x14;);
TEST_RR_OP( 114 , ursub8, 0x7f004033, 0xffff80e6, 0x00ff0080, 492); 
TEST_RR_OP( 115 , kdmbt, 0x00000000, 0x00000000, 0xffffffff, 496); 
TEST_RR_OP( 116 , kaddw, 0xffffffff80000000, 0x80000000, 0x00000000, 500); 
TEST_IMM_OP( 117 , insb, 0x80000000, 0x80000000, 2, 504 ); 
TEST_RR_OP( 118 , ksll16, 0x0adc0000, 0x0adc0000, 0xffff0000, 508); 
TEST_RR_OP( 119 , kmmawt2.u, 0x0adc0000, 0x00000000, 0x80000000, 512); 
TEST_IMM_OP( 120 , uclip16, 0x00000000, 0x00008000, 8 , 516); 
TEST_CASE( 121 ,520, x14, 1, rdov x14;);
TEST_CASE( 122 ,524, x14, 1, clrov;);
TEST_CASE( 123 ,528, x14, 0, rdov x14;);
TEST_RR_OP( 124 , pbsada, 0x000000bf, 0x0070ff00, 0x8061cf00, 532); 
TEST_RR_OP( 125 , stsa16, 0x00007fff, 0x80008000, 0x8000ffff, 536); 
TEST_RR_OP( 126 , sub16, 0x80017572, 0x80000000, 0xffff8a8e, 540); 
TEST_RR_OP( 127 , ursubw, 0x00000000, 0xffffffff, 0xffffffff, 544); 
TEST_RR_OP64_OO( 128 , smalxds, 0x0000000000000000, 0x00000000, 0x00000000 , 548); 
TEST_RR_OP( 129 , kdmabt, 0x7fffffff, 0x80008000, 0x80008000, 556); 
TEST_RR_OP( 130 , kmmawb.u, 0x7fffffff, 0x3a7178af, 0x80000000, 560); 
TEST_RR_OP64_IO( 131 , ursub64, 0x8000000000000000, 0x00000000, 0x00000000, 0xffffffff, 0xffffffff, 564); 
TEST_R_OP( 132 , swap16, 0xffff01f9, 0x01f9ffff, 572); 
TEST_RR_OP( 133 , umin16, 0x00000000, 0x00008000, 0x80000000, 576); 
TEST_IMM_OP( 134 , srli8, 0x000a1701, 0x0057bb08, 3 , 580); 
TEST_RR_OP( 135 , stsa16, 0xffff7fff, 0xffffffff, 0x00008000, 584); 
TEST_RR_OP( 136 , ksubw, 0x7fffffff, 0x00000000, 0x80000000, 588); 
TEST_CASE( 137 ,592, x14, 1, rdov x14;);
TEST_CASE( 138 ,596, x14, 1, clrov;);
TEST_CASE( 139 ,600, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 140 , smslxda, 0x0000000000000d97, 0xffffffff, 0x9c027195 , 604); 
TEST_RR_OP( 141 , kmmwt2, 0x00008c1b, 0xb9f26b91, 0xffffffff, 612); 
TEST_RR_OP64_OO( 142 , umsr64, 0x0000000000008c1b, 0x00000000, 0x00000000 , 616); 
TEST_IMM_OP( 143 , sclip16, 0xffffffff, 0xffffffff, 7 , 624); 
TEST_RR_OP64_IO( 144 , ursub64, 0x91f070d5eafb8fd8, 0x00000000, 0x00000000, 0x2a08e050, 0xdc1f1e54, 628); 
TEST_RR_OP( 145 , kmmawt.u, 0xeafb8fd8, 0xffffffff, 0x00000000, 636); 
TEST_RR_OP( 146 , maddr32, 0x4b56147d, 0xffffffff, 0x9fa57b5b, 640); 
TEST_RRR_OP( 147 , cmix, 0x26970a43, 0xffffffff, 0x26970a43, 0x80000000, 644); 
TEST_IMM_OP( 148 , kslli16, 0xfff88000, 0xffff8000, 3 , 648); 
TEST_CASE( 149 ,652, x14, 1, rdov x14;);
TEST_CASE( 150 ,656, x14, 1, clrov;);
TEST_CASE( 151 ,660, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 152 , smsr64, 0x0000000000000000, 0x00000000, 0x80000000 , 664); 
TEST_RR_OP( 153 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x0c6b17a4, 672); 
TEST_CASE( 154 ,676, x14, 1, rdov x14;);
TEST_CASE( 155 ,680, x14, 1, clrov;);
TEST_CASE( 156 ,684, x14, 0, rdov x14;);
TEST_RR_OP( 157 , pack, 0xffff0000, 0xffff0000, 0xc299ffff, 688); 
TEST_RR_OP( 158 , uksub16, 0x00000000, 0x00005aa8, 0x70be8000, 692); 
TEST_CASE( 159 ,696, x14, 1, rdov x14;);
TEST_CASE( 160 ,700, x14, 1, clrov;);
TEST_CASE( 161 ,704, x14, 0, rdov x14;);
TEST_RR_OP64_OO( 162 , umulx16, 0x00000000fffe0001, 0x0000ffff, 0xffff8000, 708); 
TEST_RR_OP( 163 , umaqa, 0xfffe0001, 0xf5956258, 0x00000000, 716); 
TEST_RR_OP( 164 , kmmac, 0xfffe0001, 0xffffffff, 0xffffffff, 720); 
TEST_RR_OP( 165 , uraddw, 0x00000000, 0x00000000, 0x00000000, 724); 
TEST_RR_OP( 166 , ukaddw, 0xffffffffffffffff, 0xffffffff, 0x00000000, 728); 
TEST_RR_OP( 167 , kcrsa16, 0x7fffffff, 0x30750000, 0xffff8000, 732); 
TEST_CASE( 168 ,736, x14, 1, rdov x14;);
TEST_CASE( 169 ,740, x14, 1, clrov;);
TEST_CASE( 170 ,744, x14, 0, rdov x14;);
TEST_RR_OP( 171 , kmmsb.u, 0xf04e7de9, 0xc40dde9a, 0xbcfb23c8, 748); 
TEST_R_OP( 172 , sunpkd832, 0x0000ff80, 0x008080b1, 752); 
TEST_RR_OP( 173 , kmmawt, 0x00017f80, 0x80000000, 0xffffffff, 756); 
TEST_IMM_OP( 174 , kslliw, 0x7fffffff, 0x75c8404d, 7, 760 ); 
TEST_CASE( 175 ,764, x14, 1, rdov x14;);
TEST_CASE( 176 ,768, x14, 1, clrov;);
TEST_CASE( 177 ,772, x14, 0, rdov x14;);
TEST_IMM_OP_FSRI( 178 , fsri, 0x00000000, 0x00000000, 0x80000000, 10, 776 ); 
TEST_IMM_OP( 179 , srli8.u, 0x02030004, 0x6ec400ff, 6 , 780); 
TEST_RR_OP( 180 , kmmwb2.u, 0x00000000, 0xffffffff, 0x80000000, 784); 
TEST_RR_OP64_OO( 181 , smulx16, 0x0000000000000000, 0x80000000, 0x00000000, 788); 
TEST_RR_OP( 182 , rsub8, 0x0a3f3fc0, 0x14ffff80, 0xff8080ff, 796); 
TEST_RR_OP( 183 , kwmmul, 0x7fffffff, 0x80000000, 0x80000000, 800); 
TEST_CASE( 184 ,804, x14, 1, rdov x14;);
TEST_CASE( 185 ,808, x14, 1, clrov;);
TEST_CASE( 186 ,812, x14, 0, rdov x14;);
TEST_RR_OP( 187 , rstsa16, 0x40d39088, 0x01a6a111, 0x80008000, 816); 
TEST_IMM_OP( 188 , kslli16, 0x7fff8000, 0x77fc8000, 12 , 820); 
TEST_CASE( 189 ,824, x14, 1, rdov x14;);
TEST_CASE( 190 ,828, x14, 1, clrov;);
TEST_CASE( 191 ,832, x14, 0, rdov x14;);
TEST_RR_OP( 192 , scmplt8, 0x00ff0000, 0xffffff00, 0xf941ff80, 836); 
TEST_RR_OP( 193 , pktb16, 0xffffffff, 0xffff0000, 0xffffffff, 840); 
TEST_IMM_OP( 194 , sclip8, 0x000ff0ff, 0x004580ff, 4 , 844); 
TEST_CASE( 195 ,848, x14, 1, rdov x14;);
TEST_CASE( 196 ,852, x14, 1, clrov;);
TEST_CASE( 197 ,856, x14, 0, rdov x14;);
TEST_RR_OP( 198 , smin16, 0x80008000, 0x80008000, 0xdf5cffff, 860); 
TEST_RR_OP64_OO( 199 , smalxds, 0x0000000080008000, 0x80000000, 0x00000000 , 864); 

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------


TEST_PASSFAIL

RV_COMPLIANCE_CODE_END

.data

RV_COMPLIANCE_DATA_BEGIN
test_res:
    .fill 218, 4, -1
RV_COMPLIANCE_DATA_END
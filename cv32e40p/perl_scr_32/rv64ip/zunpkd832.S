# See LICENSE for license details.
#*****************************************************************************
# zunpkd832.S
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

TEST_R_OP( 2 , zunpkd832, 0x00000080, 0x00803dff, 8); 
TEST_R_OP( 3 , zunpkd832, 0x00000000, 0x00000000, 12); 
TEST_R_OP( 4 , zunpkd832, 0x00000080, 0x0080ddff, 16); 
TEST_R_OP( 5 , zunpkd832, 0x008000ff, 0x80ff2c8b, 20); 
TEST_R_OP( 6 , zunpkd832, 0x00000080, 0x00806eff, 24); 
TEST_R_OP( 7 , zunpkd832, 0x00800000, 0x800000ff, 28); 
TEST_R_OP( 8 , zunpkd832, 0x00800000, 0x80008080, 32); 
TEST_R_OP( 9 , zunpkd832, 0x00000077, 0x0077b5ab, 36); 
TEST_R_OP( 10 , zunpkd832, 0x00ff00d0, 0xffd0c7ff, 40); 
TEST_R_OP( 11 , zunpkd832, 0x008000e0, 0x80e08057, 44); 
TEST_R_OP( 12 , zunpkd832, 0x00ff0080, 0xff800000, 48); 
TEST_R_OP( 13 , zunpkd832, 0x00ff00f5, 0xfff500ff, 52); 
TEST_R_OP( 14 , zunpkd832, 0x00000080, 0x0080e6ff, 56); 
TEST_R_OP( 15 , zunpkd832, 0x008800ff, 0x88ff6e00, 60); 
TEST_R_OP( 16 , zunpkd832, 0x00000000, 0x00006280, 64); 
TEST_R_OP( 17 , zunpkd832, 0x00ff0000, 0xff00ffff, 68); 
TEST_R_OP( 18 , zunpkd832, 0x00960000, 0x96000000, 72); 
TEST_R_OP( 19 , zunpkd832, 0x000000ff, 0x00ffff80, 76); 
TEST_R_OP( 20 , zunpkd832, 0x00800080, 0x808080ff, 80); 
TEST_R_OP( 21 , zunpkd832, 0x00000000, 0x00000000, 84); 
TEST_R_OP( 22 , zunpkd832, 0x008000ff, 0x80ff8031, 88); 
TEST_R_OP( 23 , zunpkd832, 0x00f700d2, 0xf7d280ff, 92); 
TEST_R_OP( 24 , zunpkd832, 0x00ff0034, 0xff34ea80, 96); 
TEST_R_OP( 25 , zunpkd832, 0x00800000, 0x80000080, 100); 
TEST_R_OP( 26 , zunpkd832, 0x00000000, 0x00000000, 104); 
TEST_R_OP( 27 , zunpkd832, 0x00b70000, 0xb700d000, 108); 
TEST_R_OP( 28 , zunpkd832, 0x00ff00b9, 0xffb90000, 112); 
TEST_R_OP( 29 , zunpkd832, 0x00200000, 0x2000806a, 116); 
TEST_R_OP( 30 , zunpkd832, 0x00ff0080, 0xff8080ff, 120); 
TEST_R_OP( 31 , zunpkd832, 0x00ff00ff, 0xffff0080, 124); 
TEST_R_OP( 32 , zunpkd832, 0x00cf0000, 0xcf00ff00, 128); 
TEST_R_OP( 33 , zunpkd832, 0x00ff00ff, 0xffff8000, 132); 
TEST_R_OP( 34 , zunpkd832, 0x00000000, 0x000000de, 136); 
TEST_R_OP( 35 , zunpkd832, 0x00ff00ff, 0xffffff00, 140); 
TEST_R_OP( 36 , zunpkd832, 0x00ff00ff, 0xffff00ff, 144); 
TEST_R_OP( 37 , zunpkd832, 0x000000f9, 0x00f900ff, 148); 
TEST_R_OP( 38 , zunpkd832, 0x00ff0080, 0xff808060, 152); 
TEST_R_OP( 39 , zunpkd832, 0x00000080, 0x008000ff, 156); 
TEST_R_OP( 40 , zunpkd832, 0x00d40080, 0xd48080ff, 160); 
TEST_R_OP( 41 , zunpkd832, 0x00ff0080, 0xff808000, 164); 
TEST_R_OP( 42 , zunpkd832, 0x00800080, 0x808080ff, 168); 
TEST_R_OP( 43 , zunpkd832, 0x00800080, 0x808080c4, 172); 
TEST_R_OP( 44 , zunpkd832, 0x000000ff, 0x00ff7694, 176); 
TEST_R_OP( 45 , zunpkd832, 0x00000000, 0x00008080, 180); 
TEST_R_OP( 46 , zunpkd832, 0x00000006, 0x00060080, 184); 
TEST_R_OP( 47 , zunpkd832, 0x00770080, 0x77800000, 188); 
TEST_R_OP( 48 , zunpkd832, 0x000000ff, 0x00ff8080, 192); 
TEST_R_OP( 49 , zunpkd832, 0x00000080, 0x008080ff, 196); 
TEST_R_OP( 50 , zunpkd832, 0x00800000, 0x80000000, 200); 
TEST_R_OP( 51 , zunpkd832, 0x00800080, 0x80800000, 204); 
TEST_R_OP( 52 , zunpkd832, 0x00000000, 0x00000080, 208); 
TEST_R_OP( 53 , zunpkd832, 0x00000080, 0x008000be, 212); 
TEST_R_OP( 54 , zunpkd832, 0x00800080, 0x80808080, 216); 
TEST_R_OP( 55 , zunpkd832, 0x00800000, 0x800000ff, 220); 
TEST_R_OP( 56 , zunpkd832, 0x00800080, 0x808000ff, 224); 
TEST_R_OP( 57 , zunpkd832, 0x0000007b, 0x007b081e, 228); 
TEST_R_OP( 58 , zunpkd832, 0x00ff0000, 0xff008050, 232); 
TEST_R_OP( 59 , zunpkd832, 0x00520080, 0x52800000, 236); 
TEST_R_OP( 60 , zunpkd832, 0x0000003a, 0x003a80ad, 240); 
TEST_R_OP( 61 , zunpkd832, 0x00ff00b1, 0xffb1f080, 244); 
TEST_R_OP( 62 , zunpkd832, 0x00000000, 0x00008080, 248); 
TEST_R_OP( 63 , zunpkd832, 0x00ff0080, 0xff808000, 252); 
TEST_R_OP( 64 , zunpkd832, 0x00000000, 0x000000ff, 256); 
TEST_R_OP( 65 , zunpkd832, 0x00ff00ff, 0xfffff7ff, 260); 
TEST_R_OP( 66 , zunpkd832, 0x00ff0080, 0xff80ad00, 264); 
TEST_R_OP( 67 , zunpkd832, 0x00800080, 0x80800000, 268); 
TEST_R_OP( 68 , zunpkd832, 0x00ff0000, 0xff00ffee, 272); 
TEST_R_OP( 69 , zunpkd832, 0x00ff0000, 0xff008e00, 276); 
TEST_R_OP( 70 , zunpkd832, 0x0026004b, 0x264b8000, 280); 
TEST_R_OP( 71 , zunpkd832, 0x00ff00ff, 0xffffffff, 284); 
TEST_R_OP( 72 , zunpkd832, 0x000000ff, 0x00ff8080, 288); 
TEST_R_OP( 73 , zunpkd832, 0x00000080, 0x008000ff, 292); 
TEST_R_OP( 74 , zunpkd832, 0x00ff0057, 0xff578034, 296); 
TEST_R_OP( 75 , zunpkd832, 0x000000e1, 0x00e100ff, 300); 
TEST_R_OP( 76 , zunpkd832, 0x00ff0080, 0xff80ff90, 304); 
TEST_R_OP( 77 , zunpkd832, 0x00ff0006, 0xff06ff00, 308); 
TEST_R_OP( 78 , zunpkd832, 0x00000000, 0x000000b2, 312); 
TEST_R_OP( 79 , zunpkd832, 0x0080006c, 0x806c00ff, 316); 
TEST_R_OP( 80 , zunpkd832, 0x000000ff, 0x00ff8080, 320); 
TEST_R_OP( 81 , zunpkd832, 0x00ff0000, 0xff00ff00, 324); 
TEST_R_OP( 82 , zunpkd832, 0x00ff0080, 0xff8000fe, 328); 
TEST_R_OP( 83 , zunpkd832, 0x00d60080, 0xd68080ca, 332); 
TEST_R_OP( 84 , zunpkd832, 0x005900eb, 0x59eb0000, 336); 
TEST_R_OP( 85 , zunpkd832, 0x003200ff, 0x32ff0000, 340); 
TEST_R_OP( 86 , zunpkd832, 0x00000080, 0x00808030, 344); 
TEST_R_OP( 87 , zunpkd832, 0x000000ff, 0x00ff0000, 348); 
TEST_R_OP( 88 , zunpkd832, 0x00ff0017, 0xff170080, 352); 
TEST_R_OP( 89 , zunpkd832, 0x00a400ff, 0xa4ff6280, 356); 
TEST_R_OP( 90 , zunpkd832, 0x000000ff, 0x00ff0080, 360); 
TEST_R_OP( 91 , zunpkd832, 0x00800000, 0x800000ff, 364); 
TEST_R_OP( 92 , zunpkd832, 0x009400ff, 0x94ffff80, 368); 
TEST_R_OP( 93 , zunpkd832, 0x00800080, 0x8080ff09, 372); 
TEST_R_OP( 94 , zunpkd832, 0x00ff0080, 0xff808099, 376); 
TEST_R_OP( 95 , zunpkd832, 0x00c10080, 0xc180ff00, 380); 
TEST_R_OP( 96 , zunpkd832, 0x00000091, 0x009180f6, 384); 
TEST_R_OP( 97 , zunpkd832, 0x00ff0080, 0xff808000, 388); 
TEST_R_OP( 98 , zunpkd832, 0x00ff00ff, 0xffffffff, 392); 
TEST_R_OP( 99 , zunpkd832, 0x00300000, 0x300080ff, 396); 
TEST_R_OP( 100 , zunpkd832, 0x00ff00ff, 0xffff3f56, 400); 
TEST_R_OP( 101 , zunpkd832, 0x00ff003f, 0xff3f8080, 404); 
TEST_R_OP( 102 , zunpkd832, 0x001e0000, 0x1e0080ff, 408); 
TEST_R_OP( 103 , zunpkd832, 0x006600ff, 0x66ff0cb1, 412); 
TEST_R_OP( 104 , zunpkd832, 0x00000000, 0x0000ffff, 416); 
TEST_R_OP( 105 , zunpkd832, 0x00000000, 0x0000ff80, 420); 
TEST_R_OP( 106 , zunpkd832, 0x002100ff, 0x21ff00b1, 424); 
TEST_R_OP( 107 , zunpkd832, 0x00ff0000, 0xff00ff00, 428); 
TEST_R_OP( 108 , zunpkd832, 0x004900b9, 0x49b90800, 432); 
TEST_R_OP( 109 , zunpkd832, 0x00000080, 0x00808080, 436); 
TEST_R_OP( 110 , zunpkd832, 0x00800080, 0x8080b300, 440); 
TEST_R_OP( 111 , zunpkd832, 0x00ff0000, 0xff00ffff, 444); 
TEST_R_OP( 112 , zunpkd832, 0x00800067, 0x8067ff00, 448); 
TEST_R_OP( 113 , zunpkd832, 0x00800080, 0x80808037, 452); 
TEST_R_OP( 114 , zunpkd832, 0x00ff00ff, 0xffff1880, 456); 
TEST_R_OP( 115 , zunpkd832, 0x00ff0080, 0xff8080ff, 460); 
TEST_R_OP( 116 , zunpkd832, 0x00800080, 0x8080ff80, 464); 
TEST_R_OP( 117 , zunpkd832, 0x008000ff, 0x80ffffff, 468); 
TEST_R_OP( 118 , zunpkd832, 0x00ff00ff, 0xffff80ff, 472); 
TEST_R_OP( 119 , zunpkd832, 0x008e00bb, 0x8ebbffff, 476); 
TEST_R_OP( 120 , zunpkd832, 0x00800023, 0x80238080, 480); 
TEST_R_OP( 121 , zunpkd832, 0x00410051, 0x41518080, 484); 
TEST_R_OP( 122 , zunpkd832, 0x00ff00fa, 0xfffa8080, 488); 
TEST_R_OP( 123 , zunpkd832, 0x00ff0080, 0xff8080ff, 492); 
TEST_R_OP( 124 , zunpkd832, 0x000000ff, 0x00ff672e, 496); 
TEST_R_OP( 125 , zunpkd832, 0x000000ff, 0x00ff0045, 500); 
TEST_R_OP( 126 , zunpkd832, 0x001a00e0, 0x1ae00000, 504); 
TEST_R_OP( 127 , zunpkd832, 0x00800000, 0x80000050, 508); 
TEST_R_OP( 128 , zunpkd832, 0x00ff00ff, 0xffff0000, 512); 
TEST_R_OP( 129 , zunpkd832, 0x008000ff, 0x80ffc151, 516); 
TEST_R_OP( 130 , zunpkd832, 0x003c00ff, 0x3cff0000, 520); 
TEST_R_OP( 131 , zunpkd832, 0x008000ff, 0x80ff80ff, 524); 
TEST_R_OP( 132 , zunpkd832, 0x00ff0064, 0xff645c80, 528); 
TEST_R_OP( 133 , zunpkd832, 0x002b006e, 0x2b6e8000, 532); 
TEST_R_OP( 134 , zunpkd832, 0x00000039, 0x00390000, 536); 
TEST_R_OP( 135 , zunpkd832, 0x00250000, 0x25000008, 540); 
TEST_R_OP( 136 , zunpkd832, 0x000000f1, 0x00f18052, 544); 
TEST_R_OP( 137 , zunpkd832, 0x00ff00ff, 0xffff8080, 548); 
TEST_R_OP( 138 , zunpkd832, 0x00000000, 0x0000007a, 552); 
TEST_R_OP( 139 , zunpkd832, 0x00840000, 0x8400ff59, 556); 
TEST_R_OP( 140 , zunpkd832, 0x0000006d, 0x006dff80, 560); 
TEST_R_OP( 141 , zunpkd832, 0x00ff00ff, 0xffff0000, 564); 
TEST_R_OP( 142 , zunpkd832, 0x00ff00ff, 0xffff2180, 568); 
TEST_R_OP( 143 , zunpkd832, 0x00000080, 0x008000ff, 572); 
TEST_R_OP( 144 , zunpkd832, 0x00800011, 0x8011ffff, 576); 
TEST_R_OP( 145 , zunpkd832, 0x0000007d, 0x007dff80, 580); 
TEST_R_OP( 146 , zunpkd832, 0x00130080, 0x1380ff80, 584); 
TEST_R_OP( 147 , zunpkd832, 0x006a00ff, 0x6aff8000, 588); 
TEST_R_OP( 148 , zunpkd832, 0x00050080, 0x05808000, 592); 
TEST_R_OP( 149 , zunpkd832, 0x000000ff, 0x00ff7200, 596); 
TEST_R_OP( 150 , zunpkd832, 0x00ff0080, 0xff80dc00, 600); 
TEST_R_OP( 151 , zunpkd832, 0x002700ff, 0x27ff0080, 604); 
TEST_R_OP( 152 , zunpkd832, 0x000000ff, 0x00ffceff, 608); 
TEST_R_OP( 153 , zunpkd832, 0x008000ff, 0x80ffdc80, 612); 
TEST_R_OP( 154 , zunpkd832, 0x00000047, 0x00478a00, 616); 
TEST_R_OP( 155 , zunpkd832, 0x00ff0000, 0xff008080, 620); 
TEST_R_OP( 156 , zunpkd832, 0x00000000, 0x0000b300, 624); 
TEST_R_OP( 157 , zunpkd832, 0x00760080, 0x76800001, 628); 
TEST_R_OP( 158 , zunpkd832, 0x00150000, 0x1500ffb6, 632); 
TEST_R_OP( 159 , zunpkd832, 0x002d0000, 0x2d00ff80, 636); 
TEST_R_OP( 160 , zunpkd832, 0x00800000, 0x80007bff, 640); 
TEST_R_OP( 161 , zunpkd832, 0x00800080, 0x80806080, 644); 
TEST_R_OP( 162 , zunpkd832, 0x00800000, 0x80008083, 648); 
TEST_R_OP( 163 , zunpkd832, 0x00ff00ff, 0xffff0080, 652); 
TEST_R_OP( 164 , zunpkd832, 0x000000a9, 0x00a90080, 656); 
TEST_R_OP( 165 , zunpkd832, 0x00000080, 0x008000ff, 660); 
TEST_R_OP( 166 , zunpkd832, 0x00aa00ff, 0xaaff5247, 664); 
TEST_R_OP( 167 , zunpkd832, 0x00ff00ff, 0xffffff80, 668); 
TEST_R_OP( 168 , zunpkd832, 0x00c30080, 0xc38062ff, 672); 
TEST_R_OP( 169 , zunpkd832, 0x00000000, 0x000080ff, 676); 
TEST_R_OP( 170 , zunpkd832, 0x00000080, 0x00809e00, 680); 
TEST_R_OP( 171 , zunpkd832, 0x00ff00ff, 0xffff24ff, 684); 
TEST_R_OP( 172 , zunpkd832, 0x00ff005a, 0xff5a0080, 688); 
TEST_R_OP( 173 , zunpkd832, 0x000000ff, 0x00ff1900, 692); 
TEST_R_OP( 174 , zunpkd832, 0x008000a0, 0x80a05180, 696); 
TEST_R_OP( 175 , zunpkd832, 0x008000ff, 0x80ff8080, 700); 
TEST_R_OP( 176 , zunpkd832, 0x00800080, 0x80800048, 704); 
TEST_R_OP( 177 , zunpkd832, 0x00ff0080, 0xff800080, 708); 
TEST_R_OP( 178 , zunpkd832, 0x00ff00c1, 0xffc18080, 712); 
TEST_R_OP( 179 , zunpkd832, 0x008000ff, 0x80ffffff, 716); 
TEST_R_OP( 180 , zunpkd832, 0x00f900ff, 0xf9ffbd80, 720); 
TEST_R_OP( 181 , zunpkd832, 0x0000006a, 0x006a8000, 724); 
TEST_R_OP( 182 , zunpkd832, 0x005c0000, 0x5c008080, 728); 
TEST_R_OP( 183 , zunpkd832, 0x00800000, 0x8000c400, 732); 
TEST_R_OP( 184 , zunpkd832, 0x00ff0000, 0xff000c80, 736); 
TEST_R_OP( 185 , zunpkd832, 0x00ff009b, 0xff9b8086, 740); 
TEST_R_OP( 186 , zunpkd832, 0x00000000, 0x00008000, 744); 
TEST_R_OP( 187 , zunpkd832, 0x000000d4, 0x00d400f2, 748); 
TEST_R_OP( 188 , zunpkd832, 0x00ff0000, 0xff00ea00, 752); 
TEST_R_OP( 189 , zunpkd832, 0x00b60080, 0xb68000ff, 756); 
TEST_R_OP( 190 , zunpkd832, 0x00000000, 0x00000ce8, 760); 
TEST_R_OP( 191 , zunpkd832, 0x00800080, 0x8080ff46, 764); 
TEST_R_OP( 192 , zunpkd832, 0x00000000, 0x0000801b, 768); 
TEST_R_OP( 193 , zunpkd832, 0x00ff0027, 0xff27ffff, 772); 
TEST_R_OP( 194 , zunpkd832, 0x0080004e, 0x804e8080, 776); 
TEST_R_OP( 195 , zunpkd832, 0x00ff0000, 0xff0000ba, 780); 
TEST_R_OP( 196 , zunpkd832, 0x008000f0, 0x80f0d980, 784); 
TEST_R_OP( 197 , zunpkd832, 0x00ff00ff, 0xffffff35, 788); 
TEST_R_OP( 198 , zunpkd832, 0x00f10080, 0xf180ff80, 792); 
TEST_R_OP( 199 , zunpkd832, 0x00000000, 0x00008000, 796); 

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
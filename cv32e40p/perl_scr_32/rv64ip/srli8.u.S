# See LICENSE for license details.
#*****************************************************************************
# srli8.u.S
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

TEST_IMM_OP( 2 , srli8.u, 0x04080006, 0x80ff00b2, 5 , 8); 
TEST_IMM_OP( 3 , srli8.u, 0x8093ff00, 0x8093ff00, 0 , 12); 
TEST_IMM_OP( 4 , srli8.u, 0x40400039, 0x80800072, 1 , 16); 
TEST_IMM_OP( 5 , srli8.u, 0x0a800b5a, 0x14ff16b4, 1 , 20); 
TEST_IMM_OP( 6 , srli8.u, 0x802e4000, 0xff5c8000, 1 , 24); 
TEST_IMM_OP( 7 , srli8.u, 0x0080ff80, 0x0080ff80, 0 , 28); 
TEST_IMM_OP( 8 , srli8.u, 0x00081008, 0x0080ff81, 4 , 32); 
TEST_IMM_OP( 9 , srli8.u, 0x809e8018, 0x809e8018, 0 , 36); 
TEST_IMM_OP( 10 , srli8.u, 0x02010204, 0x805f80ff, 6 , 40); 
TEST_IMM_OP( 11 , srli8.u, 0x00390320, 0x00e40b80, 2 , 44); 
TEST_IMM_OP( 12 , srli8.u, 0x00080004, 0x00ff0080, 5 , 48); 
TEST_IMM_OP( 13 , srli8.u, 0x08000008, 0xff0000ff, 5 , 52); 
TEST_IMM_OP( 14 , srli8.u, 0x101c1019, 0x80dc80c5, 3 , 56); 
TEST_IMM_OP( 15 , srli8.u, 0x406f0040, 0x80dd0080, 1 , 60); 
TEST_IMM_OP( 16 , srli8.u, 0x08080410, 0x808042ff, 4 , 64); 
TEST_IMM_OP( 17 , srli8.u, 0x40130020, 0xff4b0080, 2 , 68); 
TEST_IMM_OP( 18 , srli8.u, 0x03000000, 0xbe000019, 6 , 72); 
TEST_IMM_OP( 19 , srli8.u, 0x00ff8000, 0x00ff8000, 0 , 76); 
TEST_IMM_OP( 20 , srli8.u, 0x00002029, 0x000080a5, 2 , 80); 
TEST_IMM_OP( 21 , srli8.u, 0x02040202, 0x80ff8080, 6 , 84); 
TEST_IMM_OP( 22 , srli8.u, 0x40400080, 0x808000ff, 1 , 88); 
TEST_IMM_OP( 23 , srli8.u, 0xa3800000, 0xa3800000, 0 , 92); 
TEST_IMM_OP( 24 , srli8.u, 0x20344020, 0x80cfff80, 2 , 96); 
TEST_IMM_OP( 25 , srli8.u, 0x00040202, 0x00ff8080, 6 , 100); 
TEST_IMM_OP( 26 , srli8.u, 0x00000402, 0x0000ff80, 6 , 104); 
TEST_IMM_OP( 27 , srli8.u, 0x008080f4, 0x008080f4, 0 , 108); 
TEST_IMM_OP( 28 , srli8.u, 0x05001008, 0x4b00ff80, 4 , 112); 
TEST_IMM_OP( 29 , srli8.u, 0x00100020, 0x008000ff, 3 , 116); 
TEST_IMM_OP( 30 , srli8.u, 0x08060800, 0x805a8000, 4 , 120); 
TEST_IMM_OP( 31 , srli8.u, 0x04040404, 0xe0ffffff, 6 , 124); 
TEST_IMM_OP( 32 , srli8.u, 0x01070807, 0x1edaffd9, 5 , 128); 
TEST_IMM_OP( 33 , srli8.u, 0x04000404, 0xff00ffff, 6 , 132); 
TEST_IMM_OP( 34 , srli8.u, 0x57805900, 0xaeffb200, 1 , 136); 
TEST_IMM_OP( 35 , srli8.u, 0x2c3a0040, 0xb0e700ff, 2 , 140); 
TEST_IMM_OP( 36 , srli8.u, 0x40808000, 0x80ffff00, 1 , 144); 
TEST_IMM_OP( 37 , srli8.u, 0x40004040, 0x80008080, 1 , 148); 
TEST_IMM_OP( 38 , srli8.u, 0x10020110, 0xff250dff, 4 , 152); 
TEST_IMM_OP( 39 , srli8.u, 0x00111020, 0x008580fe, 3 , 156); 
TEST_IMM_OP( 40 , srli8.u, 0x10080010, 0xff8000ff, 4 , 160); 
TEST_IMM_OP( 41 , srli8.u, 0x01070003, 0x26ed0066, 5 , 164); 
TEST_IMM_OP( 42 , srli8.u, 0x80ff56ff, 0x80ff56ff, 0 , 168); 
TEST_IMM_OP( 43 , srli8.u, 0x40007d00, 0x8000f900, 1 , 172); 
TEST_IMM_OP( 44 , srli8.u, 0x0080ff00, 0x0080ff00, 0 , 176); 
TEST_IMM_OP( 45 , srli8.u, 0x80002580, 0xff004aff, 1 , 180); 
TEST_IMM_OP( 46 , srli8.u, 0xaeffcd4c, 0xaeffcd4c, 0 , 184); 
TEST_IMM_OP( 47 , srli8.u, 0x08081010, 0x8080fbff, 4 , 188); 
TEST_IMM_OP( 48 , srli8.u, 0x10001010, 0x80008080, 3 , 192); 
TEST_IMM_OP( 49 , srli8.u, 0x80ff002a, 0x80ff002a, 0 , 196); 
TEST_IMM_OP( 50 , srli8.u, 0x008080ff, 0x008080ff, 0 , 200); 
TEST_IMM_OP( 51 , srli8.u, 0x1e202340, 0x78808bff, 2 , 204); 
TEST_IMM_OP( 52 , srli8.u, 0x04000408, 0x8a0084ff, 5 , 208); 
TEST_IMM_OP( 53 , srli8.u, 0x070b0500, 0x77b74a00, 4 , 212); 
TEST_IMM_OP( 54 , srli8.u, 0x00030000, 0x026f0000, 5 , 216); 
TEST_IMM_OP( 55 , srli8.u, 0x13007006, 0x2600df0c, 1 , 220); 
TEST_IMM_OP( 56 , srli8.u, 0x00000008, 0x000000ff, 5 , 224); 
TEST_IMM_OP( 57 , srli8.u, 0x20001c20, 0xff00dcff, 3 , 228); 
TEST_IMM_OP( 58 , srli8.u, 0x08040000, 0xff800000, 5 , 232); 
TEST_IMM_OP( 59 , srli8.u, 0x40678040, 0x80ceff80, 1 , 236); 
TEST_IMM_OP( 60 , srli8.u, 0x76404d00, 0xec809900, 1 , 240); 
TEST_IMM_OP( 61 , srli8.u, 0x39354040, 0xe3d2ffff, 2 , 244); 
TEST_IMM_OP( 62 , srli8.u, 0x08003440, 0x1f00ceff, 2 , 248); 
TEST_IMM_OP( 63 , srli8.u, 0x02020404, 0x8080ffff, 6 , 252); 
TEST_IMM_OP( 64 , srli8.u, 0x00061002, 0x0060ff25, 4 , 256); 
TEST_IMM_OP( 65 , srli8.u, 0x00030300, 0x00bcc300, 6 , 260); 
TEST_IMM_OP( 66 , srli8.u, 0x05080600, 0x9dffc600, 5 , 264); 
TEST_IMM_OP( 67 , srli8.u, 0x00000000, 0x00000000, 0 , 268); 
TEST_IMM_OP( 68 , srli8.u, 0x00070800, 0x00d6ff00, 5 , 272); 
TEST_IMM_OP( 69 , srli8.u, 0x09ff80ff, 0x09ff80ff, 0 , 276); 
TEST_IMM_OP( 70 , srli8.u, 0x40202040, 0xff8080ff, 2 , 280); 
TEST_IMM_OP( 71 , srli8.u, 0x00000000, 0x00000000, 3 , 284); 
TEST_IMM_OP( 72 , srli8.u, 0x77478080, 0xed8effff, 1 , 288); 
TEST_IMM_OP( 73 , srli8.u, 0x04040803, 0x8080ff52, 5 , 292); 
TEST_IMM_OP( 74 , srli8.u, 0x0000e104, 0x0000e104, 0 , 296); 
TEST_IMM_OP( 75 , srli8.u, 0x400b3500, 0xff2dd200, 2 , 300); 
TEST_IMM_OP( 76 , srli8.u, 0x00051008, 0x0055ff81, 4 , 304); 
TEST_IMM_OP( 77 , srli8.u, 0x08060002, 0x8066001d, 4 , 308); 
TEST_IMM_OP( 78 , srli8.u, 0xff80ff00, 0xff80ff00, 0 , 312); 
TEST_IMM_OP( 79 , srli8.u, 0xffffffe8, 0xffffffe8, 0 , 316); 
TEST_IMM_OP( 80 , srli8.u, 0x00080003, 0x00ff006d, 5 , 320); 
TEST_IMM_OP( 81 , srli8.u, 0x00030202, 0x00dd8080, 6 , 324); 
TEST_IMM_OP( 82 , srli8.u, 0x10100800, 0xffff8000, 4 , 328); 
TEST_IMM_OP( 83 , srli8.u, 0x02020000, 0x80801d06, 6 , 332); 
TEST_IMM_OP( 84 , srli8.u, 0x03040004, 0xade200ff, 6 , 336); 
TEST_IMM_OP( 85 , srli8.u, 0x05040008, 0xa48000ff, 5 , 340); 
TEST_IMM_OP( 86 , srli8.u, 0x02020001, 0x8080004a, 6 , 344); 
TEST_IMM_OP( 87 , srli8.u, 0x00000204, 0x000080f9, 6 , 348); 
TEST_IMM_OP( 88 , srli8.u, 0x80408080, 0xff80ffff, 1 , 352); 
TEST_IMM_OP( 89 , srli8.u, 0x07100010, 0x39800080, 3 , 356); 
TEST_IMM_OP( 90 , srli8.u, 0x2a200020, 0xa7800080, 2 , 360); 
TEST_IMM_OP( 91 , srli8.u, 0x08040404, 0xff818080, 5 , 364); 
TEST_IMM_OP( 92 , srli8.u, 0x8060edff, 0x8060edff, 0 , 368); 
TEST_IMM_OP( 93 , srli8.u, 0x1400202e, 0x510080b8, 2 , 372); 
TEST_IMM_OP( 94 , srli8.u, 0x80004000, 0xff008000, 1 , 376); 
TEST_IMM_OP( 95 , srli8.u, 0x2e687b40, 0x5cd0f680, 1 , 380); 
TEST_IMM_OP( 96 , srli8.u, 0x0c100500, 0xc7ff4f00, 4 , 384); 
TEST_IMM_OP( 97 , srli8.u, 0x40006556, 0x8000c9ab, 1 , 388); 
TEST_IMM_OP( 98 , srli8.u, 0x27ffff80, 0x27ffff80, 0 , 392); 
TEST_IMM_OP( 99 , srli8.u, 0x09001008, 0x9200ff80, 4 , 396); 
TEST_IMM_OP( 100 , srli8.u, 0x80240058, 0xff4800b0, 1 , 400); 
TEST_IMM_OP( 101 , srli8.u, 0x01020102, 0x53804480, 6 , 404); 
TEST_IMM_OP( 102 , srli8.u, 0x04030200, 0x80574700, 5 , 408); 
TEST_IMM_OP( 103 , srli8.u, 0x38220c20, 0xe1872e80, 2 , 412); 
TEST_IMM_OP( 104 , srli8.u, 0x2ddcff07, 0x2ddcff07, 0 , 416); 
TEST_IMM_OP( 105 , srli8.u, 0x00000403, 0x0000805e, 5 , 420); 
TEST_IMM_OP( 106 , srli8.u, 0x00ffd0ff, 0x00ffd0ff, 0 , 424); 
TEST_IMM_OP( 107 , srli8.u, 0x20000040, 0x800000ff, 2 , 428); 
TEST_IMM_OP( 108 , srli8.u, 0x0b101008, 0xb7ffff80, 4 , 432); 
TEST_IMM_OP( 109 , srli8.u, 0x40804280, 0x80ff83ff, 1 , 436); 
TEST_IMM_OP( 110 , srli8.u, 0x00204020, 0x0080ff80, 2 , 440); 
TEST_IMM_OP( 111 , srli8.u, 0x05202423, 0x14808f8a, 2 , 444); 
TEST_IMM_OP( 112 , srli8.u, 0x10020008, 0xfd270080, 4 , 448); 
TEST_IMM_OP( 113 , srli8.u, 0x00100008, 0x00ff0080, 4 , 452); 
TEST_IMM_OP( 114 , srli8.u, 0x0000000c, 0x0000000c, 0 , 456); 
TEST_IMM_OP( 115 , srli8.u, 0x04050006, 0x809400cd, 5 , 460); 
TEST_IMM_OP( 116 , srli8.u, 0x01040000, 0x13800000, 5 , 464); 
TEST_IMM_OP( 117 , srli8.u, 0x1a232021, 0x668a8084, 2 , 468); 
TEST_IMM_OP( 118 , srli8.u, 0x00200000, 0x00ff0000, 3 , 472); 
TEST_IMM_OP( 119 , srli8.u, 0x03021010, 0x3522ffff, 4 , 476); 
TEST_IMM_OP( 120 , srli8.u, 0x05090e0c, 0x4e8ad9bd, 4 , 480); 
TEST_IMM_OP( 121 , srli8.u, 0x02030202, 0x99dc9c80, 6 , 484); 
TEST_IMM_OP( 122 , srli8.u, 0x00102020, 0x0080ffff, 3 , 488); 
TEST_IMM_OP( 123 , srli8.u, 0x00080810, 0x008080ff, 4 , 492); 
TEST_IMM_OP( 124 , srli8.u, 0x3c80406c, 0x77ff80d7, 1 , 496); 
TEST_IMM_OP( 125 , srli8.u, 0x40194020, 0xff64fe80, 2 , 500); 
TEST_IMM_OP( 126 , srli8.u, 0x51080003, 0xa1100005, 1 , 504); 
TEST_IMM_OP( 127 , srli8.u, 0x00200020, 0x00800080, 2 , 508); 
TEST_IMM_OP( 128 , srli8.u, 0x08040800, 0xff80ff00, 5 , 512); 
TEST_IMM_OP( 129 , srli8.u, 0x3980802e, 0x72ffff5c, 1 , 516); 
TEST_IMM_OP( 130 , srli8.u, 0x44400049, 0x88800092, 1 , 520); 
TEST_IMM_OP( 131 , srli8.u, 0x00000004, 0x0000008a, 5 , 524); 
TEST_IMM_OP( 132 , srli8.u, 0x03030004, 0xcfcc00ff, 6 , 528); 
TEST_IMM_OP( 133 , srli8.u, 0x00202031, 0x008080c3, 2 , 532); 
TEST_IMM_OP( 134 , srli8.u, 0x10101008, 0xffffff80, 4 , 536); 
TEST_IMM_OP( 135 , srli8.u, 0x97ff0080, 0x97ff0080, 0 , 540); 
TEST_IMM_OP( 136 , srli8.u, 0x06100010, 0x5dff00ff, 4 , 544); 
TEST_IMM_OP( 137 , srli8.u, 0x04040404, 0x80808080, 5 , 548); 
TEST_IMM_OP( 138 , srli8.u, 0x00804040, 0x00ff8080, 1 , 552); 
TEST_IMM_OP( 139 , srli8.u, 0x04060004, 0x83b00080, 5 , 556); 
TEST_IMM_OP( 140 , srli8.u, 0x08090010, 0x809300ff, 4 , 560); 
TEST_IMM_OP( 141 , srli8.u, 0x08010002, 0xff230d41, 5 , 564); 
TEST_IMM_OP( 142 , srli8.u, 0x00000400, 0x00008000, 5 , 568); 
TEST_IMM_OP( 143 , srli8.u, 0x0b100600, 0xb0ff6100, 4 , 572); 
TEST_IMM_OP( 144 , srli8.u, 0x04080804, 0x80fff880, 5 , 576); 
TEST_IMM_OP( 145 , srli8.u, 0x120c0040, 0x483000ff, 2 , 580); 
TEST_IMM_OP( 146 , srli8.u, 0x20004020, 0x8001ff80, 2 , 584); 
TEST_IMM_OP( 147 , srli8.u, 0x08050400, 0xff908000, 5 , 588); 
TEST_IMM_OP( 148 , srli8.u, 0x00ff8080, 0x00ff8080, 0 , 592); 
TEST_IMM_OP( 149 , srli8.u, 0x08080008, 0x80800080, 4 , 596); 
TEST_IMM_OP( 150 , srli8.u, 0x80fdffff, 0x80fdffff, 0 , 600); 
TEST_IMM_OP( 151 , srli8.u, 0x20203800, 0x8080e100, 2 , 604); 
TEST_IMM_OP( 152 , srli8.u, 0x80805200, 0x80805200, 0 , 608); 
TEST_IMM_OP( 153 , srli8.u, 0x100e1010, 0xffe7ffff, 4 , 612); 
TEST_IMM_OP( 154 , srli8.u, 0xff188000, 0xff188000, 0 , 616); 
TEST_IMM_OP( 155 , srli8.u, 0x04020104, 0xff802eff, 6 , 620); 
TEST_IMM_OP( 156 , srli8.u, 0x04040408, 0x808080ff, 5 , 624); 
TEST_IMM_OP( 157 , srli8.u, 0x04020202, 0xff808080, 6 , 628); 
TEST_IMM_OP( 158 , srli8.u, 0x0080ff80, 0x0080ff80, 0 , 632); 
TEST_IMM_OP( 159 , srli8.u, 0x10000810, 0xff0080ff, 4 , 636); 
TEST_IMM_OP( 160 , srli8.u, 0x04040303, 0xffffa3c5, 6 , 640); 
TEST_IMM_OP( 161 , srli8.u, 0x1f1c1918, 0x7b71655e, 2 , 644); 
TEST_IMM_OP( 162 , srli8.u, 0x10081010, 0xff80ffff, 4 , 648); 
TEST_IMM_OP( 163 , srli8.u, 0xafff3400, 0xafff3400, 0 , 652); 
TEST_IMM_OP( 164 , srli8.u, 0x04080408, 0x80ff80ff, 5 , 656); 
TEST_IMM_OP( 165 , srli8.u, 0x4015400f, 0xff55ff3d, 2 , 660); 
TEST_IMM_OP( 166 , srli8.u, 0x20402000, 0x80ff8000, 2 , 664); 
TEST_IMM_OP( 167 , srli8.u, 0x10101113, 0x80808b9a, 3 , 668); 
TEST_IMM_OP( 168 , srli8.u, 0x04040401, 0x80808019, 5 , 672); 
TEST_IMM_OP( 169 , srli8.u, 0x00040201, 0x00ff763b, 6 , 676); 
TEST_IMM_OP( 170 , srli8.u, 0x04040001, 0x8080001f, 5 , 680); 
TEST_IMM_OP( 171 , srli8.u, 0x5a2e301e, 0xb35b5f3b, 1 , 684); 
TEST_IMM_OP( 172 , srli8.u, 0x02020200, 0x8f808000, 6 , 688); 
TEST_IMM_OP( 173 , srli8.u, 0x01010404, 0x502bffff, 6 , 692); 
TEST_IMM_OP( 174 , srli8.u, 0x12200120, 0x8eff06ff, 3 , 696); 
TEST_IMM_OP( 175 , srli8.u, 0x09080308, 0x93803180, 4 , 700); 
TEST_IMM_OP( 176 , srli8.u, 0x04020001, 0xf080002d, 6 , 704); 
TEST_IMM_OP( 177 , srli8.u, 0x08060408, 0xffb780ff, 5 , 708); 
TEST_IMM_OP( 178 , srli8.u, 0x40008067, 0x8000ffcd, 1 , 712); 
TEST_IMM_OP( 179 , srli8.u, 0x20000020, 0xff0000ff, 3 , 716); 
TEST_IMM_OP( 180 , srli8.u, 0xf7718000, 0xf7718000, 0 , 720); 
TEST_IMM_OP( 181 , srli8.u, 0x00020200, 0x00808000, 6 , 724); 
TEST_IMM_OP( 182 , srli8.u, 0x20024000, 0x8007ff00, 2 , 728); 
TEST_IMM_OP( 183 , srli8.u, 0x10001020, 0x800080ff, 3 , 732); 
TEST_IMM_OP( 184 , srli8.u, 0x20200020, 0xffff00ff, 3 , 736); 
TEST_IMM_OP( 185 , srli8.u, 0xff00ffab, 0xff00ffab, 0 , 740); 
TEST_IMM_OP( 186 , srli8.u, 0x08050107, 0xff9625eb, 5 , 744); 
TEST_IMM_OP( 187 , srli8.u, 0x01000404, 0x2c00fff7, 6 , 748); 
TEST_IMM_OP( 188 , srli8.u, 0x3e018040, 0x7b02ff80, 1 , 752); 
TEST_IMM_OP( 189 , srli8.u, 0x00004c49, 0x00009791, 1 , 756); 
TEST_IMM_OP( 190 , srli8.u, 0x10000808, 0xff028080, 4 , 760); 
TEST_IMM_OP( 191 , srli8.u, 0x00050004, 0x00930080, 5 , 764); 
TEST_IMM_OP( 192 , srli8.u, 0x0000ffff, 0x0000ffff, 0 , 768); 
TEST_IMM_OP( 193 , srli8.u, 0x08091000, 0x808bff00, 4 , 772); 
TEST_IMM_OP( 194 , srli8.u, 0x04000107, 0x800015ef, 5 , 776); 
TEST_IMM_OP( 195 , srli8.u, 0x3c312020, 0xefc28080, 2 , 780); 
TEST_IMM_OP( 196 , srli8.u, 0x801c2a00, 0xff385400, 1 , 784); 
TEST_IMM_OP( 197 , srli8.u, 0x20200500, 0xffff2600, 3 , 788); 
TEST_IMM_OP( 198 , srli8.u, 0x20102010, 0xff80ff80, 3 , 792); 
TEST_IMM_OP( 199 , srli8.u, 0x806c4000, 0xffd88000, 1 , 796); 

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
# See LICENSE for license details.
#*****************************************************************************
# sub8.S
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

TEST_RR_OP( 2 , sub8, 0x7f0080a6, 0xff8000a5, 0x808080ff, 8); 
TEST_RR_OP( 3 , sub8, 0x000c8000, 0xff0000ff, 0xfff480ff, 12); 
TEST_RR_OP( 4 , sub8, 0x814f0000, 0x80ed8000, 0xff9e8000, 16); 
TEST_RR_OP( 5 , sub8, 0x0080d600, 0x8000ff00, 0x80802900, 20); 
TEST_RR_OP( 6 , sub8, 0x0080ff45, 0x8000ff00, 0x808000bb, 24); 
TEST_RR_OP( 7 , sub8, 0x01004780, 0x00ff4600, 0xffffff80, 28); 
TEST_RR_OP( 8 , sub8, 0x7ec02096, 0xffffa016, 0x813f8080, 32); 
TEST_RR_OP( 9 , sub8, 0xad5b019c, 0x0005009e, 0x53aaff02, 36); 
TEST_RR_OP( 10 , sub8, 0x88f87f39, 0x0880ffff, 0x808880c6, 40); 
TEST_RR_OP( 11 , sub8, 0x5f8c0001, 0xff8c0000, 0xa00000ff, 44); 
TEST_RR_OP( 12 , sub8, 0x8033db7f, 0x80b300ff, 0x00802580, 48); 
TEST_RR_OP( 13 , sub8, 0xe5000180, 0x8080007f, 0x9b80ffff, 52); 
TEST_RR_OP( 14 , sub8, 0x000eae01, 0x00008000, 0x00f2d2ff, 56); 
TEST_RR_OP( 15 , sub8, 0x00000cc3, 0xffff8c43, 0xffff8080, 60); 
TEST_RR_OP( 16 , sub8, 0xa780004a, 0x278080ff, 0x800080b5, 64); 
TEST_RR_OP( 17 , sub8, 0x000d0000, 0x80ffff80, 0x80f2ff80, 68); 
TEST_RR_OP( 18 , sub8, 0x89095ccf, 0xc2ff5b80, 0x39f6ffb1, 72); 
TEST_RR_OP( 19 , sub8, 0x8181d701, 0x80800000, 0xffff29ff, 76); 
TEST_RR_OP( 20 , sub8, 0x7f808000, 0xff008000, 0x80800000, 80); 
TEST_RR_OP( 21 , sub8, 0xfffa80cf, 0xff0000ff, 0x00068030, 84); 
TEST_RR_OP( 22 , sub8, 0x36811a01, 0x00801a00, 0xcaff00ff, 88); 
TEST_RR_OP( 23 , sub8, 0x7f00047f, 0xff8084ff, 0x80808080, 92); 
TEST_RR_OP( 24 , sub8, 0x468c0101, 0x460c0000, 0x0080ffff, 96); 
TEST_RR_OP( 25 , sub8, 0x810001da, 0x80000000, 0xff00ff26, 100); 
TEST_RR_OP( 26 , sub8, 0x807f8080, 0x00ff0000, 0x80808080, 104); 
TEST_RR_OP( 27 , sub8, 0x3480af80, 0xb400e880, 0x80803900, 108); 
TEST_RR_OP( 28 , sub8, 0x18810a01, 0xff800000, 0xe7fff6ff, 112); 
TEST_RR_OP( 29 , sub8, 0x0073454c, 0x8000ff00, 0x808dbab4, 116); 
TEST_RR_OP( 30 , sub8, 0x0a47007e, 0x8047ff65, 0x7600ffe7, 120); 
TEST_RR_OP( 31 , sub8, 0x7fff00ff, 0xffff00ff, 0x80000000, 124); 
TEST_RR_OP( 32 , sub8, 0x9fb180ff, 0x00cc80ff, 0x611b0000, 128); 
TEST_RR_OP( 33 , sub8, 0xff81017f, 0xff8000ff, 0x00ffff80, 132); 
TEST_RR_OP( 34 , sub8, 0x8074157d, 0x0074ff7d, 0x8000ea00, 136); 
TEST_RR_OP( 35 , sub8, 0x7f000000, 0xff800000, 0x80800000, 140); 
TEST_RR_OP( 36 , sub8, 0x7fc6ff7f, 0xffffffff, 0x80390080, 144); 
TEST_RR_OP( 37 , sub8, 0xd84701c4, 0xffff0000, 0x27b8ff3c, 148); 
TEST_RR_OP( 38 , sub8, 0x94000380, 0x94808380, 0x00808000, 152); 
TEST_RR_OP( 39 , sub8, 0xd7ff8180, 0x86ff8080, 0xaf00ff00, 156); 
TEST_RR_OP( 40 , sub8, 0x80003400, 0x0000b400, 0x80008000, 160); 
TEST_RR_OP( 41 , sub8, 0x00658186, 0xffef80ff, 0xff8aff79, 164); 
TEST_RR_OP( 42 , sub8, 0xff0081de, 0xff808080, 0x0080ffa2, 168); 
TEST_RR_OP( 43 , sub8, 0x269a8101, 0xc2ff8000, 0x9c65ffff, 172); 
TEST_RR_OP( 44 , sub8, 0x81813e00, 0x8080ff80, 0xffffc180, 176); 
TEST_RR_OP( 45 , sub8, 0x03fd8080, 0x83fd8000, 0x80000080, 180); 
TEST_RR_OP( 46 , sub8, 0x90ce81e5, 0xdd4e80ff, 0x4d80ff1a, 184); 
TEST_RR_OP( 47 , sub8, 0x46800000, 0xc6000080, 0x80800080, 188); 
TEST_RR_OP( 48 , sub8, 0x2181008b, 0x4280ff00, 0x21ffff75, 192); 
TEST_RR_OP( 49 , sub8, 0x807f2b66, 0x80ffab00, 0x0080809a, 196); 
TEST_RR_OP( 50 , sub8, 0x1abde081, 0xff806080, 0xe5c380ff, 200); 
TEST_RR_OP( 51 , sub8, 0x9b008101, 0x22808000, 0x8780ffff, 204); 
TEST_RR_OP( 52 , sub8, 0x00008001, 0x00ff8000, 0x00ff00ff, 208); 
TEST_RR_OP( 53 , sub8, 0x80015200, 0x80005200, 0x00ff0000, 212); 
TEST_RR_OP( 54 , sub8, 0x805220b6, 0x80ff8036, 0x00ad6080, 216); 
TEST_RR_OP( 55 , sub8, 0xff000001, 0xff808000, 0x008080ff, 220); 
TEST_RR_OP( 56 , sub8, 0xff498100, 0xff8080ff, 0x0037ffff, 224); 
TEST_RR_OP( 57 , sub8, 0x81458000, 0xff340080, 0x7eef8080, 228); 
TEST_RR_OP( 58 , sub8, 0x005c80a7, 0x00000080, 0x00a480d9, 232); 
TEST_RR_OP( 59 , sub8, 0x007f0000, 0x80ff0000, 0x80800000, 236); 
TEST_RR_OP( 60 , sub8, 0x81ff7f97, 0x80ffff9f, 0xff008008, 240); 
TEST_RR_OP( 61 , sub8, 0x740000ff, 0x730000ff, 0xff000000, 244); 
TEST_RR_OP( 62 , sub8, 0x2b427d80, 0x80417d00, 0x55ff0080, 248); 
TEST_RR_OP( 63 , sub8, 0xff00008a, 0xff80fff1, 0x0080ff67, 252); 
TEST_RR_OP( 64 , sub8, 0x007f98af, 0x80ff18d8, 0x80808029, 256); 
TEST_RR_OP( 65 , sub8, 0x5ecf0080, 0xeb000080, 0x8d310000, 260); 
TEST_RR_OP( 66 , sub8, 0x007f80a4, 0xffff00ff, 0xff80805b, 264); 
TEST_RR_OP( 67 , sub8, 0x015f9b42, 0x0080e742, 0xff214c00, 268); 
TEST_RR_OP( 68 , sub8, 0x002e8181, 0x002e8080, 0x0000ffff, 272); 
TEST_RR_OP( 69 , sub8, 0xe4007f80, 0x4880ff80, 0x64808000, 276); 
TEST_RR_OP( 70 , sub8, 0x805b7700, 0x805a0000, 0x00ff8900, 280); 
TEST_RR_OP( 71 , sub8, 0x800f523b, 0x008f52bb, 0x80800080, 284); 
TEST_RR_OP( 72 , sub8, 0x80816001, 0x80809900, 0x00ff39ff, 288); 
TEST_RR_OP( 73 , sub8, 0x687fc801, 0xc9ffff00, 0x618037ff, 292); 
TEST_RR_OP( 74 , sub8, 0x0015caed, 0xff14a5ec, 0xffffdbff, 296); 
TEST_RR_OP( 75 , sub8, 0x0098800f, 0x00ef80ff, 0x005700f0, 300); 
TEST_RR_OP( 76 , sub8, 0x5e0080a1, 0xde800080, 0x808080df, 304); 
TEST_RR_OP( 77 , sub8, 0x0101a401, 0x00002400, 0xffff80ff, 308); 
TEST_RR_OP( 78 , sub8, 0x7f7f7f2f, 0xffffff2e, 0x808080ff, 312); 
TEST_RR_OP( 79 , sub8, 0x4f000100, 0x80ff0080, 0x31ffff80, 316); 
TEST_RR_OP( 80 , sub8, 0x74657f80, 0x7465ff80, 0x00008000, 320); 
TEST_RR_OP( 81 , sub8, 0x79000076, 0x7800ff80, 0xff00ff0a, 324); 
TEST_RR_OP( 82 , sub8, 0x7f0100fd, 0xff0000fc, 0x80ff00ff, 328); 
TEST_RR_OP( 83 , sub8, 0x80014401, 0x8000ff00, 0x00ffbbff, 332); 
TEST_RR_OP( 84 , sub8, 0x01018001, 0x00008000, 0xffff00ff, 336); 
TEST_RR_OP( 85 , sub8, 0x80000081, 0x80800080, 0x008000ff, 340); 
TEST_RR_OP( 86 , sub8, 0x808120f3, 0x80808073, 0x00ff6080, 344); 
TEST_RR_OP( 87 , sub8, 0x0060d27f, 0x80e054ff, 0x80808280, 348); 
TEST_RR_OP( 88 , sub8, 0xe3f75480, 0x00805300, 0x1d89ff80, 352); 
TEST_RR_OP( 89 , sub8, 0x7fff0100, 0xffff0000, 0x8000ff00, 356); 
TEST_RR_OP( 90 , sub8, 0x80807580, 0x80808000, 0x00000b80, 360); 
TEST_RR_OP( 91 , sub8, 0xe90000f4, 0xffffff74, 0x16ffff80, 364); 
TEST_RR_OP( 92 , sub8, 0x8001007f, 0x800000ff, 0x00ff0080, 368); 
TEST_RR_OP( 93 , sub8, 0x851d7f80, 0xff1dff00, 0x7a008080, 372); 
TEST_RR_OP( 94 , sub8, 0xabd87f56, 0xab58ff56, 0x00808000, 376); 
TEST_RR_OP( 95 , sub8, 0x2affff00, 0x80ffff80, 0x56000080, 380); 
TEST_RR_OP( 96 , sub8, 0x0100018e, 0x00ff000e, 0xffffff80, 384); 
TEST_RR_OP( 97 , sub8, 0xff80bd00, 0xff808080, 0x0000c380, 388); 
TEST_RR_OP( 98 , sub8, 0x0d910001, 0x80ffff00, 0x736effff, 392); 
TEST_RR_OP( 99 , sub8, 0xb57f7b38, 0xd3ff7ab8, 0x1e80ff80, 396); 
TEST_RR_OP( 100 , sub8, 0xedff01ff, 0xe7ff00ff, 0xfa00ff00, 400); 
TEST_RR_OP( 101 , sub8, 0x9a730163, 0x9aff00ff, 0x008cff9c, 404); 
TEST_RR_OP( 102 , sub8, 0xb3818080, 0x33808000, 0x80ff0080, 408); 
TEST_RR_OP( 103 , sub8, 0x0157007f, 0x00ff80ff, 0xffa88080, 412); 
TEST_RR_OP( 104 , sub8, 0x8101ffff, 0x8000ffff, 0xffff0000, 416); 
TEST_RR_OP( 105 , sub8, 0x8080817f, 0x008080ff, 0x8000ff80, 420); 
TEST_RR_OP( 106 , sub8, 0x1bff237f, 0x77ff77ff, 0x5c005480, 424); 
TEST_RR_OP( 107 , sub8, 0x1c807bbb, 0xff807ab7, 0xe300fffc, 428); 
TEST_RR_OP( 108 , sub8, 0x0058007f, 0x005780ff, 0x00ff8080, 432); 
TEST_RR_OP( 109 , sub8, 0x000000ac, 0x000000ff, 0x00000053, 436); 
TEST_RR_OP( 110 , sub8, 0xbfc18181, 0xbf808080, 0x00bfffff, 440); 
TEST_RR_OP( 111 , sub8, 0x20627300, 0x1f000080, 0xff9e8d80, 444); 
TEST_RR_OP( 112 , sub8, 0x00817fe4, 0x0080ff64, 0x00ff8080, 448); 
TEST_RR_OP( 113 , sub8, 0x98190085, 0xffff80d3, 0x67e6804e, 452); 
TEST_RR_OP( 114 , sub8, 0xff81d17b, 0xff80d1fb, 0x00ff0080, 456); 
TEST_RR_OP( 115 , sub8, 0xff8ec84d, 0xff46484d, 0x00b88000, 460); 
TEST_RR_OP( 116 , sub8, 0x0c005181, 0x0c008d80, 0x00003cff, 464); 
TEST_RR_OP( 117 , sub8, 0x20002200, 0x8000a2ff, 0x600080ff, 468); 
TEST_RR_OP( 118 , sub8, 0xd3385e01, 0xff378000, 0x2cff22ff, 472); 
TEST_RR_OP( 119 , sub8, 0x80278003, 0x80a78080, 0x0080007d, 476); 
TEST_RR_OP( 120 , sub8, 0x8080e27f, 0x8080e2ff, 0x00000080, 480); 
TEST_RR_OP( 121 , sub8, 0x00009581, 0x00809580, 0x008000ff, 484); 
TEST_RR_OP( 122 , sub8, 0x00800181, 0x80000080, 0x8080ffff, 488); 
TEST_RR_OP( 123 , sub8, 0x00817f6b, 0x8080ff00, 0x80ff8095, 492); 
TEST_RR_OP( 124 , sub8, 0xaa7f317f, 0x80ff30ff, 0xd680ff80, 496); 
TEST_RR_OP( 125 , sub8, 0xc200aceb, 0x19001c80, 0x57007095, 500); 
TEST_RR_OP( 126 , sub8, 0x80288000, 0x80808080, 0x00580080, 504); 
TEST_RR_OP( 127 , sub8, 0x007f8000, 0x80ff00ff, 0x808080ff, 508); 
TEST_RR_OP( 128 , sub8, 0xe70510ff, 0x678080ff, 0x807b7000, 512); 
TEST_RR_OP( 129 , sub8, 0x01008065, 0x00800080, 0xff80801b, 516); 
TEST_RR_OP( 130 , sub8, 0x804ef2fe, 0x00ffab6b, 0x80b1b96d, 520); 
TEST_RR_OP( 131 , sub8, 0xff0600f5, 0xffed00c6, 0x00e700d1, 524); 
TEST_RR_OP( 132 , sub8, 0x80d983ef, 0x8059a6ff, 0x00802310, 528); 
TEST_RR_OP( 133 , sub8, 0x806f0000, 0x00ffffff, 0x8090ffff, 532); 
TEST_RR_OP( 134 , sub8, 0x01800080, 0x00008000, 0xff808080, 536); 
TEST_RR_OP( 135 , sub8, 0xa62dbf46, 0xa6ad773d, 0x0080b8f7, 540); 
TEST_RR_OP( 136 , sub8, 0xff438000, 0xff428000, 0x00ff0000, 544); 
TEST_RR_OP( 137 , sub8, 0xd1f57f9c, 0xd1f4ff80, 0x00ff80e4, 548); 
TEST_RR_OP( 138 , sub8, 0x007f3060, 0x00ffff00, 0x0080cfa0, 552); 
TEST_RR_OP( 139 , sub8, 0x803c7f3e, 0x003cff3e, 0x80008000, 556); 
TEST_RR_OP( 140 , sub8, 0x43808001, 0x6c000000, 0x298080ff, 560); 
TEST_RR_OP( 141 , sub8, 0x01000055, 0x00ff80d5, 0xffff8080, 564); 
TEST_RR_OP( 142 , sub8, 0x9b1c00ff, 0xff9c00ff, 0x64800000, 568); 
TEST_RR_OP( 143 , sub8, 0x8100dd80, 0x80ff8000, 0xffffa380, 572); 
TEST_RR_OP( 144 , sub8, 0x86f97f02, 0x86007e02, 0x0007ff00, 576); 
TEST_RR_OP( 145 , sub8, 0xea8632a8, 0x000680a8, 0x16804e00, 580); 
TEST_RR_OP( 146 , sub8, 0x4c80006f, 0xff80ff78, 0xb300ff09, 584); 
TEST_RR_OP( 147 , sub8, 0x80281cc1, 0x00809c41, 0x80588080, 588); 
TEST_RR_OP( 148 , sub8, 0x01810101, 0x00800000, 0xffffffff, 592); 
TEST_RR_OP( 149 , sub8, 0x81807f11, 0x8000ff91, 0xff808080, 596); 
TEST_RR_OP( 150 , sub8, 0x8000017f, 0x000000ff, 0x8000ff80, 600); 
TEST_RR_OP( 151 , sub8, 0xff7fffcd, 0xffffff4d, 0x00800080, 604); 
TEST_RR_OP( 152 , sub8, 0x7f051d01, 0xff85ff00, 0x8080e2ff, 608); 
TEST_RR_OP( 153 , sub8, 0x800180ed, 0x00000000, 0x80ff8013, 612); 
TEST_RR_OP( 154 , sub8, 0xf400810b, 0x740080ff, 0x8000fff4, 616); 
TEST_RR_OP( 155 , sub8, 0x017f814f, 0x00ff8080, 0xff80ff31, 620); 
TEST_RR_OP( 156 , sub8, 0x7f004200, 0xffffc2ff, 0x80ff80ff, 624); 
TEST_RR_OP( 157 , sub8, 0xaaec69db, 0x0080e9ff, 0x56948024, 628); 
TEST_RR_OP( 158 , sub8, 0x8181865a, 0x8080009b, 0xffff7a41, 632); 
TEST_RR_OP( 159 , sub8, 0x82ffd84d, 0x80ff00cd, 0xfe002880, 636); 
TEST_RR_OP( 160 , sub8, 0xde0001ff, 0x5e0000ff, 0x8000ff00, 640); 
TEST_RR_OP( 161 , sub8, 0x00f3017f, 0x003a00ff, 0x0047ff80, 644); 
TEST_RR_OP( 162 , sub8, 0x68804f58, 0x6780ffff, 0xff00b0a7, 648); 
TEST_RR_OP( 163 , sub8, 0x5e69e4df, 0xdef7ffff, 0x808e1b20, 652); 
TEST_RR_OP( 164 , sub8, 0xb0645100, 0x19640000, 0x6900af00, 656); 
TEST_RR_OP( 165 , sub8, 0x80017f01, 0x0000ff00, 0x80ff80ff, 660); 
TEST_RR_OP( 166 , sub8, 0x8134bd2a, 0x801eb1aa, 0xffeaf480, 664); 
TEST_RR_OP( 167 , sub8, 0xc20180ee, 0xe200006e, 0x20ff8080, 668); 
TEST_RR_OP( 168 , sub8, 0x8014aee9, 0x0000ffc7, 0x80ec51de, 672); 
TEST_RR_OP( 169 , sub8, 0x30df817f, 0x80ed80ff, 0x500eff80, 676); 
TEST_RR_OP( 170 , sub8, 0x003babdf, 0x8080ff00, 0x80455421, 680); 
TEST_RR_OP( 171 , sub8, 0x0100ffff, 0x0080ffff, 0xff800000, 684); 
TEST_RR_OP( 172 , sub8, 0x0011ffac, 0x80ffff00, 0x80ee0054, 688); 
TEST_RR_OP( 173 , sub8, 0x9480007f, 0x1400ffff, 0x8080ff80, 692); 
TEST_RR_OP( 174 , sub8, 0x39000000, 0x38ff0000, 0xffff0000, 696); 
TEST_RR_OP( 175 , sub8, 0x7f00d981, 0xff80d880, 0x8080ffff, 700); 
TEST_RR_OP( 176 , sub8, 0x800000c2, 0x80ff00c2, 0x00ff0000, 704); 
TEST_RR_OP( 177 , sub8, 0x8000e3dd, 0x00ffba00, 0x80ffd723, 708); 
TEST_RR_OP( 178 , sub8, 0x2bff0080, 0xabff8000, 0x80008080, 712); 
TEST_RR_OP( 179 , sub8, 0x1408ed00, 0x1488ed80, 0x00800080, 716); 
TEST_RR_OP( 180 , sub8, 0xc1018016, 0xc00080ff, 0xffff00e9, 720); 
TEST_RR_OP( 181 , sub8, 0xa27f86de, 0x00ffff5e, 0x5e807980, 724); 
TEST_RR_OP( 182 , sub8, 0x80f10001, 0x80008000, 0x000f80ff, 728); 
TEST_RR_OP( 183 , sub8, 0xd6807f80, 0x0080ff00, 0x2a008080, 732); 
TEST_RR_OP( 184 , sub8, 0x5101009e, 0x8000ff00, 0x2fffff62, 736); 
TEST_RR_OP( 185 , sub8, 0x234e75cb, 0x2200f5ca, 0xffb280ff, 740); 
TEST_RR_OP( 186 , sub8, 0x0081011d, 0x0080009d, 0x00ffff80, 744); 
TEST_RR_OP( 187 , sub8, 0x80158137, 0x0015806f, 0x8000ff38, 748); 
TEST_RR_OP( 188 , sub8, 0x607f3880, 0x00ff8700, 0xa0804f80, 752); 
TEST_RR_OP( 189 , sub8, 0xffedfc80, 0xff80ff00, 0x00930380, 756); 
TEST_RR_OP( 190 , sub8, 0xd38180d5, 0xd3800080, 0x00ff80ab, 760); 
TEST_RR_OP( 191 , sub8, 0x23810101, 0x23800000, 0x00ffffff, 764); 
TEST_RR_OP( 192 , sub8, 0x007f81ff, 0xffff80ff, 0xff80ff00, 768); 
TEST_RR_OP( 193 , sub8, 0x800180f1, 0x00008068, 0x80ff0077, 772); 
TEST_RR_OP( 194 , sub8, 0xffba8061, 0xffb900ff, 0x00ff809e, 776); 
TEST_RR_OP( 195 , sub8, 0x7f11791e, 0xff00f91e, 0x80ef8000, 780); 
TEST_RR_OP( 196 , sub8, 0x00805d00, 0x8000ff00, 0x8080a200, 784); 
TEST_RR_OP( 197 , sub8, 0xf2fff100, 0xf2fff080, 0x0000ff80, 788); 
TEST_RR_OP( 198 , sub8, 0x0d81ff95, 0x0080ff15, 0xf3ff0080, 792); 
TEST_RR_OP( 199 , sub8, 0x33009100, 0xb3809180, 0x80800080, 796); 

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
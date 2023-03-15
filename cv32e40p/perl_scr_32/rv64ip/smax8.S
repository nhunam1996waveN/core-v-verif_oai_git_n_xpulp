# See LICENSE for license details.
#*****************************************************************************
# smax8.S
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

TEST_RR_OP( 2 , smax8, 0xff0000ae, 0xff008d80, 0x80ff00ae, 8); 
TEST_RR_OP( 3 , smax8, 0x00668984, 0x00b38080, 0x80668984, 12); 
TEST_RR_OP( 4 , smax8, 0x4e1ddcab, 0x001da2ab, 0x4effdc80, 16); 
TEST_RR_OP( 5 , smax8, 0x0000e0f8, 0x0088e0f8, 0xff008080, 20); 
TEST_RR_OP( 6 , smax8, 0x3849ff00, 0x8023ff00, 0x3849ff80, 24); 
TEST_RR_OP( 7 , smax8, 0xff3c3bff, 0xff3cffe6, 0x80003bff, 28); 
TEST_RR_OP( 8 , smax8, 0x458080ff, 0x80808080, 0x458080ff, 32); 
TEST_RR_OP( 9 , smax8, 0x0068ffc0, 0xee68ffc0, 0x00808083, 36); 
TEST_RR_OP( 10 , smax8, 0xff002602, 0xff8026a8, 0x8000ff02, 40); 
TEST_RR_OP( 11 , smax8, 0x00000010, 0x00000000, 0xff008010, 44); 
TEST_RR_OP( 12 , smax8, 0x950b0000, 0x950b0000, 0x80000080, 48); 
TEST_RR_OP( 13 , smax8, 0x6c001200, 0x6cc380ff, 0x6c001200, 52); 
TEST_RR_OP( 14 , smax8, 0x80fff600, 0x8080f680, 0x80ff8000, 56); 
TEST_RR_OP( 15 , smax8, 0x0064ffff, 0x00caffff, 0x00648080, 60); 
TEST_RR_OP( 16 , smax8, 0x002d7158, 0xffff7184, 0x002d0058, 64); 
TEST_RR_OP( 17 , smax8, 0x00000400, 0x00000400, 0x00ff0000, 68); 
TEST_RR_OP( 18 , smax8, 0x00ff226e, 0x00ff006e, 0x0080220e, 72); 
TEST_RR_OP( 19 , smax8, 0x4928ff1c, 0x49ffff1c, 0x0028ffff, 76); 
TEST_RR_OP( 20 , smax8, 0xff800080, 0xff800080, 0xef800080, 80); 
TEST_RR_OP( 21 , smax8, 0xff4c3000, 0xd34c3080, 0xff800000, 84); 
TEST_RR_OP( 22 , smax8, 0x000111ff, 0x000111c8, 0x0080ffff, 88); 
TEST_RR_OP( 23 , smax8, 0xffff00e8, 0xffff00e3, 0x80ff00e8, 92); 
TEST_RR_OP( 24 , smax8, 0xff7f0000, 0xc900d2ff, 0xff7f0000, 96); 
TEST_RR_OP( 25 , smax8, 0x7fff00ff, 0x7fff00ff, 0x87e400ff, 100); 
TEST_RR_OP( 26 , smax8, 0xff8a80ff, 0xff8080ff, 0x808a80ff, 104); 
TEST_RR_OP( 27 , smax8, 0xff6d8000, 0xff808000, 0x806d8000, 108); 
TEST_RR_OP( 28 , smax8, 0x0d616d00, 0x0d006d00, 0x80610000, 112); 
TEST_RR_OP( 29 , smax8, 0xff80ffff, 0xe480ff80, 0xff8080ff, 116); 
TEST_RR_OP( 30 , smax8, 0xff580034, 0xe358ff80, 0xff000034, 120); 
TEST_RR_OP( 31 , smax8, 0x00ff000f, 0xffffff0f, 0x008000ff, 124); 
TEST_RR_OP( 32 , smax8, 0xff72ff80, 0xff008080, 0x8072ff80, 128); 
TEST_RR_OP( 33 , smax8, 0xb8008217, 0x800080ff, 0xb89a8217, 132); 
TEST_RR_OP( 34 , smax8, 0xffff0000, 0xffff0000, 0xda800000, 136); 
TEST_RR_OP( 35 , smax8, 0x00000000, 0x80000000, 0x00ff0080, 140); 
TEST_RR_OP( 36 , smax8, 0xff540000, 0x80540000, 0xff008000, 144); 
TEST_RR_OP( 37 , smax8, 0xffffffb6, 0x8080ffb6, 0xffffa180, 148); 
TEST_RR_OP( 38 , smax8, 0xf0a6ffb7, 0x8080ffb7, 0xf0a6ff80, 152); 
TEST_RR_OP( 39 , smax8, 0x74ff00ff, 0x7480ff9c, 0xffff00ff, 156); 
TEST_RR_OP( 40 , smax8, 0x000000ff, 0xff8000c4, 0x000080ff, 160); 
TEST_RR_OP( 41 , smax8, 0xa900ff63, 0x80008b81, 0xa9ffff63, 164); 
TEST_RR_OP( 42 , smax8, 0x000000ff, 0x800000e2, 0x008080ff, 168); 
TEST_RR_OP( 43 , smax8, 0x003dff00, 0x00ff8000, 0x003dffff, 172); 
TEST_RR_OP( 44 , smax8, 0xff0000ff, 0xff00ffff, 0xff800091, 176); 
TEST_RR_OP( 45 , smax8, 0xc473806e, 0x8000806e, 0xc4738000, 180); 
TEST_RR_OP( 46 , smax8, 0x2700e800, 0x0000e880, 0x27ff8000, 184); 
TEST_RR_OP( 47 , smax8, 0xfffcffff, 0xfffc8080, 0xfc80ffff, 188); 
TEST_RR_OP( 48 , smax8, 0x223e546b, 0x223e806b, 0x00ff54ff, 192); 
TEST_RR_OP( 49 , smax8, 0x43370000, 0x008080ff, 0x43370000, 196); 
TEST_RR_OP( 50 , smax8, 0x74c90080, 0x74c98080, 0xf59b0080, 200); 
TEST_RR_OP( 51 , smax8, 0x00ff0000, 0x00ff0000, 0x008000ff, 204); 
TEST_RR_OP( 52 , smax8, 0x563d0e80, 0x56800e80, 0xc13d8080, 208); 
TEST_RR_OP( 53 , smax8, 0x00000033, 0x00000033, 0x00008000, 212); 
TEST_RR_OP( 54 , smax8, 0xff007600, 0xff000080, 0xffff7600, 216); 
TEST_RR_OP( 55 , smax8, 0xffff0000, 0xffff0000, 0x80800000, 220); 
TEST_RR_OP( 56 , smax8, 0x00800080, 0x00800080, 0x0080ff80, 224); 
TEST_RR_OP( 57 , smax8, 0x00002603, 0x00002603, 0x80ff8080, 228); 
TEST_RR_OP( 58 , smax8, 0xffffff00, 0xffff80f8, 0x8080ff00, 232); 
TEST_RR_OP( 59 , smax8, 0x00060000, 0x8006009e, 0x00cfff00, 236); 
TEST_RR_OP( 60 , smax8, 0x00ff0c00, 0x00ff9f00, 0x80800cff, 240); 
TEST_RR_OP( 61 , smax8, 0x3f00003d, 0x0000ff3d, 0x3f0000ad, 244); 
TEST_RR_OP( 62 , smax8, 0x53ff00ff, 0xffff00ff, 0x538080f5, 248); 
TEST_RR_OP( 63 , smax8, 0x00ff0000, 0x80ff8087, 0x00800000, 252); 
TEST_RR_OP( 64 , smax8, 0x00ff00b9, 0x00ffff92, 0xda9b00b9, 256); 
TEST_RR_OP( 65 , smax8, 0x63ff0009, 0x80ffff09, 0x63800080, 260); 
TEST_RR_OP( 66 , smax8, 0x7da500d7, 0x008080d0, 0x7da500d7, 264); 
TEST_RR_OP( 67 , smax8, 0x0439ffff, 0x0439ff80, 0xffebffff, 268); 
TEST_RR_OP( 68 , smax8, 0x00000080, 0x00800080, 0x8000f680, 272); 
TEST_RR_OP( 69 , smax8, 0x003600ff, 0x00360080, 0x80fbffff, 276); 
TEST_RR_OP( 70 , smax8, 0x8000ff00, 0x8080ffff, 0x8000ff00, 280); 
TEST_RR_OP( 71 , smax8, 0x00000000, 0x0000b400, 0x80ff00ff, 284); 
TEST_RR_OP( 72 , smax8, 0x002c0058, 0x002cff58, 0x80ff0089, 288); 
TEST_RR_OP( 73 , smax8, 0x63ffff00, 0x80808f00, 0x63ffffff, 292); 
TEST_RR_OP( 74 , smax8, 0x0000ffff, 0x808080b9, 0x0000ffff, 296); 
TEST_RR_OP( 75 , smax8, 0x00ff00ff, 0x00ffffff, 0x80ff00ff, 300); 
TEST_RR_OP( 76 , smax8, 0xffffff00, 0x80ff8080, 0xff80ff00, 304); 
TEST_RR_OP( 77 , smax8, 0x0031ffff, 0x8080f0ff, 0x0031ff80, 308); 
TEST_RR_OP( 78 , smax8, 0x7f00ff00, 0x7fffffff, 0x89009f00, 312); 
TEST_RR_OP( 79 , smax8, 0x80002d00, 0x800002a4, 0x80002d00, 316); 
TEST_RR_OP( 80 , smax8, 0x007b1a57, 0x00ffff80, 0x007b1a57, 320); 
TEST_RR_OP( 81 , smax8, 0xff137b00, 0xff137b00, 0x80ff0000, 324); 
TEST_RR_OP( 82 , smax8, 0xff9600ff, 0xff8000ff, 0xff96ff80, 328); 
TEST_RR_OP( 83 , smax8, 0xff807a00, 0xff807a80, 0xff800000, 332); 
TEST_RR_OP( 84 , smax8, 0xaeffff00, 0x8080ff80, 0xaeff8000, 336); 
TEST_RR_OP( 85 , smax8, 0x80ef00ff, 0x80ef0080, 0x808000ff, 340); 
TEST_RR_OP( 86 , smax8, 0x0b380000, 0xff38ff00, 0x0b8000fa, 344); 
TEST_RR_OP( 87 , smax8, 0xffffff67, 0x80ff81ff, 0xff80ff67, 348); 
TEST_RR_OP( 88 , smax8, 0x00ffffff, 0x80a780ff, 0x00ffff80, 352); 
TEST_RR_OP( 89 , smax8, 0x210000ff, 0x808000ff, 0x210080e3, 356); 
TEST_RR_OP( 90 , smax8, 0x0000ff00, 0x8000ff80, 0x00c7ff00, 360); 
TEST_RR_OP( 91 , smax8, 0x800affbb, 0x80ffffbb, 0x800aff80, 364); 
TEST_RR_OP( 92 , smax8, 0x8d2ab944, 0x8dffb944, 0x802a8000, 368); 
TEST_RR_OP( 93 , smax8, 0x000000ff, 0x0000ffff, 0xa20000ff, 372); 
TEST_RR_OP( 94 , smax8, 0x13ff003a, 0x00ff0000, 0x1380003a, 376); 
TEST_RR_OP( 95 , smax8, 0x00ffdc00, 0x00ffdc00, 0x00808000, 380); 
TEST_RR_OP( 96 , smax8, 0xff577000, 0xff570000, 0xffff70ff, 384); 
TEST_RR_OP( 97 , smax8, 0xff00ffff, 0xff00ffff, 0x80ff80ff, 388); 
TEST_RR_OP( 98 , smax8, 0xffff00d6, 0xff80ffd6, 0xffff0080, 392); 
TEST_RR_OP( 99 , smax8, 0xffffff69, 0xff80ffb0, 0xffff8069, 396); 
TEST_RR_OP( 100 , smax8, 0x3580e000, 0x35809b00, 0x0080e080, 400); 
TEST_RR_OP( 101 , smax8, 0x000b0bcf, 0x000b0b86, 0x00ffffcf, 404); 
TEST_RR_OP( 102 , smax8, 0xff001309, 0x80001309, 0xff80ff00, 408); 
TEST_RR_OP( 103 , smax8, 0x00ff0000, 0xffd58000, 0x00ff00ff, 412); 
TEST_RR_OP( 104 , smax8, 0x48ffb360, 0x48ffb380, 0xffff8060, 416); 
TEST_RR_OP( 105 , smax8, 0x5e000000, 0x8000f4ff, 0x5e000000, 420); 
TEST_RR_OP( 106 , smax8, 0x8000ff65, 0x80008065, 0x80ffff00, 424); 
TEST_RR_OP( 107 , smax8, 0x00ffffff, 0x00ffffff, 0x00ff80ff, 428); 
TEST_RR_OP( 108 , smax8, 0x80008000, 0x80ff8000, 0x800080ef, 432); 
TEST_RR_OP( 109 , smax8, 0xff003b80, 0xffffff80, 0xff003b80, 436); 
TEST_RR_OP( 110 , smax8, 0x003100ff, 0x8031ff80, 0x008000ff, 440); 
TEST_RR_OP( 111 , smax8, 0xffff00ff, 0x80ff00ec, 0xff80b0ff, 444); 
TEST_RR_OP( 112 , smax8, 0xff750000, 0xff75ffc7, 0xff000000, 448); 
TEST_RR_OP( 113 , smax8, 0x00060000, 0x000600a0, 0xb6038000, 452); 
TEST_RR_OP( 114 , smax8, 0x04f9ff04, 0x0080ff04, 0x04f9ff80, 456); 
TEST_RR_OP( 115 , smax8, 0xff000041, 0xffffff11, 0xff000041, 460); 
TEST_RR_OP( 116 , smax8, 0xffff0000, 0x84ffff00, 0xff800000, 464); 
TEST_RR_OP( 117 , smax8, 0xff000000, 0xff000000, 0xff800080, 468); 
TEST_RR_OP( 118 , smax8, 0x00ff0000, 0x80ff0080, 0x00800000, 472); 
TEST_RR_OP( 119 , smax8, 0xff595027, 0xff590080, 0x80b45027, 476); 
TEST_RR_OP( 120 , smax8, 0x806d002b, 0x80da0000, 0x806d002b, 480); 
TEST_RR_OP( 121 , smax8, 0x6600ffe8, 0x9b00ff80, 0x668effe8, 484); 
TEST_RR_OP( 122 , smax8, 0x00002b04, 0xff002b04, 0x00ff8080, 488); 
TEST_RR_OP( 123 , smax8, 0x42825700, 0x42825700, 0x00808000, 492); 
TEST_RR_OP( 124 , smax8, 0x1800ff32, 0x80ffff00, 0x18008032, 496); 
TEST_RR_OP( 125 , smax8, 0x00a16100, 0x00808000, 0x00a16100, 500); 
TEST_RR_OP( 126 , smax8, 0x76ff00ff, 0x76ff00ff, 0x80ffa1ff, 504); 
TEST_RR_OP( 127 , smax8, 0xff000034, 0xff808000, 0x80000034, 508); 
TEST_RR_OP( 128 , smax8, 0xff00ffff, 0xffffffff, 0xff00eeb7, 512); 
TEST_RR_OP( 129 , smax8, 0xff80001d, 0x8080801d, 0xff800000, 516); 
TEST_RR_OP( 130 , smax8, 0x00000048, 0x80008048, 0x00870092, 520); 
TEST_RR_OP( 131 , smax8, 0x00420000, 0x0042ffff, 0x80800000, 524); 
TEST_RR_OP( 132 , smax8, 0x90fcff2c, 0x909cff00, 0x80fcff2c, 528); 
TEST_RR_OP( 133 , smax8, 0x00000000, 0x80ff0000, 0x0000ffff, 532); 
TEST_RR_OP( 134 , smax8, 0x007c80ff, 0x807c80e1, 0x000080ff, 536); 
TEST_RR_OP( 135 , smax8, 0xff00ff00, 0xffffffff, 0x80008000, 540); 
TEST_RR_OP( 136 , smax8, 0x801c8000, 0x801c8000, 0x80ff8080, 544); 
TEST_RR_OP( 137 , smax8, 0x01000000, 0x0100ff80, 0xfe000000, 548); 
TEST_RR_OP( 138 , smax8, 0xff5b67ff, 0xe05b80ff, 0xff0567ff, 552); 
TEST_RR_OP( 139 , smax8, 0x32200000, 0x80200080, 0x32ffaa00, 556); 
TEST_RR_OP( 140 , smax8, 0x52800000, 0x80800080, 0x52800000, 560); 
TEST_RR_OP( 141 , smax8, 0xff00ff00, 0xff00ff00, 0x80ffa7b1, 564); 
TEST_RR_OP( 142 , smax8, 0x805d00ff, 0x800080ff, 0x805d0080, 568); 
TEST_RR_OP( 143 , smax8, 0xff0000a1, 0xff8d8080, 0xff0000a1, 572); 
TEST_RR_OP( 144 , smax8, 0xffffff00, 0xffc1ffff, 0xbeff8000, 576); 
TEST_RR_OP( 145 , smax8, 0xffe1ff00, 0x8080ff00, 0xffe1ffff, 580); 
TEST_RR_OP( 146 , smax8, 0x009e001e, 0x009eff90, 0xff80001e, 584); 
TEST_RR_OP( 147 , smax8, 0x009c3200, 0x009c8080, 0x00803200, 588); 
TEST_RR_OP( 148 , smax8, 0x0082ff6f, 0x0082ff6f, 0xff808000, 592); 
TEST_RR_OP( 149 , smax8, 0x21000072, 0x21000080, 0x80008072, 596); 
TEST_RR_OP( 150 , smax8, 0x5fff5000, 0x5fff5000, 0x00ff00ff, 600); 
TEST_RR_OP( 151 , smax8, 0xff3e0f00, 0xff000f80, 0x803e8000, 604); 
TEST_RR_OP( 152 , smax8, 0xff00ff00, 0xff00ffff, 0xffff8000, 608); 
TEST_RR_OP( 153 , smax8, 0x1c5b0011, 0x1cff000b, 0x805bff11, 612); 
TEST_RR_OP( 154 , smax8, 0xff438000, 0x80438080, 0xff808000, 616); 
TEST_RR_OP( 155 , smax8, 0x8080ffd1, 0x8080ff80, 0x808080d1, 620); 
TEST_RR_OP( 156 , smax8, 0xffff0064, 0xff8000ff, 0xffff8064, 624); 
TEST_RR_OP( 157 , smax8, 0x90ff0000, 0x80ff00ff, 0x90950000, 628); 
TEST_RR_OP( 158 , smax8, 0x00650b00, 0x00650400, 0x802e0bff, 632); 
TEST_RR_OP( 159 , smax8, 0x35ffff00, 0xff80ff00, 0x35ffff80, 636); 
TEST_RR_OP( 160 , smax8, 0x551e0018, 0x551e00ff, 0x0080ff18, 640); 
TEST_RR_OP( 161 , smax8, 0xff3e6a80, 0xff000680, 0xff3e6a80, 644); 
TEST_RR_OP( 162 , smax8, 0xff3f5a21, 0xff808021, 0x803f5aff, 648); 
TEST_RR_OP( 163 , smax8, 0xad00711e, 0x800080ff, 0xad00711e, 652); 
TEST_RR_OP( 164 , smax8, 0xb40000ff, 0x80f780ff, 0xb40000ff, 656); 
TEST_RR_OP( 165 , smax8, 0x0080001d, 0x80808000, 0x0080001d, 660); 
TEST_RR_OP( 166 , smax8, 0x00ff0c3e, 0xb6ff0c3e, 0x00808080, 664); 
TEST_RR_OP( 167 , smax8, 0x00ff0000, 0xbfffffa6, 0x00ff0000, 668); 
TEST_RR_OP( 168 , smax8, 0xff80ff08, 0xff808008, 0xde80ff80, 672); 
TEST_RR_OP( 169 , smax8, 0x0000803b, 0x0080803b, 0x800080ff, 676); 
TEST_RR_OP( 170 , smax8, 0x0000ff0a, 0xdd00d20a, 0x0000ff80, 680); 
TEST_RR_OP( 171 , smax8, 0xffff12ff, 0xffff12ff, 0x80ffffce, 684); 
TEST_RR_OP( 172 , smax8, 0xffff16ff, 0x80ff16ff, 0xff80ffff, 688); 
TEST_RR_OP( 173 , smax8, 0xff0000ff, 0xcb0000c2, 0xff00ffff, 692); 
TEST_RR_OP( 174 , smax8, 0x7eff6e00, 0x00c76eff, 0x7effff00, 696); 
TEST_RR_OP( 175 , smax8, 0x0000ff00, 0x00008080, 0x90ffff00, 700); 
TEST_RR_OP( 176 , smax8, 0x3e800000, 0x3e800080, 0x0080ff00, 704); 
TEST_RR_OP( 177 , smax8, 0xbb7effc6, 0x80008080, 0xbb7effc6, 708); 
TEST_RR_OP( 178 , smax8, 0x4dfa0000, 0x4dfa00ff, 0xff80de00, 712); 
TEST_RR_OP( 179 , smax8, 0x803bf6dc, 0x803b8080, 0x8000f6dc, 716); 
TEST_RR_OP( 180 , smax8, 0x6777002b, 0x8c7780ff, 0x6700002b, 720); 
TEST_RR_OP( 181 , smax8, 0x0044e51b, 0x00ffe51b, 0xff448080, 724); 
TEST_RR_OP( 182 , smax8, 0x0e8000ff, 0x0e8000ff, 0x80809b80, 728); 
TEST_RR_OP( 183 , smax8, 0x000000ff, 0x00a60080, 0x0000ffff, 732); 
TEST_RR_OP( 184 , smax8, 0xff00dfff, 0xff00dfff, 0x800080ff, 736); 
TEST_RR_OP( 185 , smax8, 0x35ff1700, 0xff80ff00, 0x35ff1780, 740); 
TEST_RR_OP( 186 , smax8, 0x4000ff80, 0x4000fa80, 0x00e5ff80, 744); 
TEST_RR_OP( 187 , smax8, 0x85ff00ff, 0x858000ff, 0x80ffff80, 748); 
TEST_RR_OP( 188 , smax8, 0x000002ff, 0x000002ff, 0x80ffffd0, 752); 
TEST_RR_OP( 189 , smax8, 0xd7000000, 0x80000000, 0xd700e080, 756); 
TEST_RR_OP( 190 , smax8, 0x760000ff, 0x76000095, 0x00ff80ff, 760); 
TEST_RR_OP( 191 , smax8, 0x00ff4bff, 0x80ff80a6, 0x00ff4bff, 764); 
TEST_RR_OP( 192 , smax8, 0x00ff00da, 0x00ff0080, 0xfff100da, 768); 
TEST_RR_OP( 193 , smax8, 0xffff68ff, 0xff806880, 0x80ff0eff, 772); 
TEST_RR_OP( 194 , smax8, 0x19310000, 0x803100ff, 0x19ff0000, 776); 
TEST_RR_OP( 195 , smax8, 0x3f52007f, 0x3f2500b4, 0x0052007f, 780); 
TEST_RR_OP( 196 , smax8, 0xff590026, 0xff59b226, 0xffff0000, 784); 
TEST_RR_OP( 197 , smax8, 0x5e0000ff, 0x0080c780, 0x5e0000ff, 788); 
TEST_RR_OP( 198 , smax8, 0x00800057, 0x80800080, 0x00800057, 792); 
TEST_RR_OP( 199 , smax8, 0xffad0000, 0xffad0000, 0x80800080, 796); 

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
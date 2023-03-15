# See LICENSE for license details.
#*****************************************************************************
# swap8.S
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

TEST_R_OP( 2 , swap8, 0x00800080, 0x80008000, 8); 
TEST_R_OP( 3 , swap8, 0x00808080, 0x80008080, 12); 
TEST_R_OP( 4 , swap8, 0x00c9ffff, 0xc900ffff, 16); 
TEST_R_OP( 5 , swap8, 0x48e98f80, 0xe948808f, 20); 
TEST_R_OP( 6 , swap8, 0xff004200, 0x00ff0042, 24); 
TEST_R_OP( 7 , swap8, 0x000000ff, 0x0000ff00, 28); 
TEST_R_OP( 8 , swap8, 0x80ff2500, 0xff800025, 32); 
TEST_R_OP( 9 , swap8, 0x2b80b0ff, 0x802bffb0, 36); 
TEST_R_OP( 10 , swap8, 0x800002d0, 0x0080d002, 40); 
TEST_R_OP( 11 , swap8, 0x008014ff, 0x8000ff14, 44); 
TEST_R_OP( 12 , swap8, 0x00800000, 0x80000000, 48); 
TEST_R_OP( 13 , swap8, 0x80008080, 0x00808080, 52); 
TEST_R_OP( 14 , swap8, 0xffc6ff80, 0xc6ff80ff, 56); 
TEST_R_OP( 15 , swap8, 0x859a9c00, 0x9a85009c, 60); 
TEST_R_OP( 16 , swap8, 0x00698037, 0x69003780, 64); 
TEST_R_OP( 17 , swap8, 0xac2bab80, 0x2bac80ab, 68); 
TEST_R_OP( 18 , swap8, 0xff97ff7e, 0x97ff7eff, 72); 
TEST_R_OP( 19 , swap8, 0xe5abffff, 0xabe5ffff, 76); 
TEST_R_OP( 20 , swap8, 0x80002fff, 0x0080ff2f, 80); 
TEST_R_OP( 21 , swap8, 0x00ce00e9, 0xce00e900, 84); 
TEST_R_OP( 22 , swap8, 0x80b9ff0b, 0xb9800bff, 88); 
TEST_R_OP( 23 , swap8, 0x00ff9da9, 0xff00a99d, 92); 
TEST_R_OP( 24 , swap8, 0xff802000, 0x80ff0020, 96); 
TEST_R_OP( 25 , swap8, 0x00800900, 0x80000009, 100); 
TEST_R_OP( 26 , swap8, 0x00ff8044, 0xff004480, 104); 
TEST_R_OP( 27 , swap8, 0x00ff9e00, 0xff00009e, 108); 
TEST_R_OP( 28 , swap8, 0x00009b80, 0x0000809b, 112); 
TEST_R_OP( 29 , swap8, 0x80ff0580, 0xff808005, 116); 
TEST_R_OP( 30 , swap8, 0x60810000, 0x81600000, 120); 
TEST_R_OP( 31 , swap8, 0xff2eff00, 0x2eff00ff, 124); 
TEST_R_OP( 32 , swap8, 0x4b808500, 0x804b0085, 128); 
TEST_R_OP( 33 , swap8, 0x80a60080, 0xa6808000, 132); 
TEST_R_OP( 34 , swap8, 0x6980ff00, 0x806900ff, 136); 
TEST_R_OP( 35 , swap8, 0xffff8080, 0xffff8080, 140); 
TEST_R_OP( 36 , swap8, 0x800019ff, 0x0080ff19, 144); 
TEST_R_OP( 37 , swap8, 0xff00ff80, 0x00ff80ff, 148); 
TEST_R_OP( 38 , swap8, 0x08a200ff, 0xa208ff00, 152); 
TEST_R_OP( 39 , swap8, 0x000078ed, 0x0000ed78, 156); 
TEST_R_OP( 40 , swap8, 0xff788000, 0x78ff0080, 160); 
TEST_R_OP( 41 , swap8, 0x80ff8000, 0xff800080, 164); 
TEST_R_OP( 42 , swap8, 0x00ff8000, 0xff000080, 168); 
TEST_R_OP( 43 , swap8, 0x131f8000, 0x1f130080, 172); 
TEST_R_OP( 44 , swap8, 0x00d60000, 0xd6000000, 176); 
TEST_R_OP( 45 , swap8, 0x800000ff, 0x0080ff00, 180); 
TEST_R_OP( 46 , swap8, 0xff2eff0e, 0x2eff0eff, 184); 
TEST_R_OP( 47 , swap8, 0xff00bf00, 0x00ff00bf, 188); 
TEST_R_OP( 48 , swap8, 0x8080ff80, 0x808080ff, 192); 
TEST_R_OP( 49 , swap8, 0x00ff8080, 0xff008080, 196); 
TEST_R_OP( 50 , swap8, 0x00f600ff, 0xf600ff00, 200); 
TEST_R_OP( 51 , swap8, 0xffff8032, 0xffff3280, 204); 
TEST_R_OP( 52 , swap8, 0x808080ff, 0x8080ff80, 208); 
TEST_R_OP( 53 , swap8, 0x4a800380, 0x804a8003, 212); 
TEST_R_OP( 54 , swap8, 0x8080003e, 0x80803e00, 216); 
TEST_R_OP( 55 , swap8, 0x80088080, 0x08808080, 220); 
TEST_R_OP( 56 , swap8, 0x58ff8092, 0xff589280, 224); 
TEST_R_OP( 57 , swap8, 0xe3ffff00, 0xffe300ff, 228); 
TEST_R_OP( 58 , swap8, 0xff8080ff, 0x80ffff80, 232); 
TEST_R_OP( 59 , swap8, 0x00ffff80, 0xff0080ff, 236); 
TEST_R_OP( 60 , swap8, 0xf9ff0030, 0xfff93000, 240); 
TEST_R_OP( 61 , swap8, 0x8000ff00, 0x008000ff, 244); 
TEST_R_OP( 62 , swap8, 0xa6ff8000, 0xffa60080, 248); 
TEST_R_OP( 63 , swap8, 0xacff1680, 0xffac8016, 252); 
TEST_R_OP( 64 , swap8, 0x50801f54, 0x8050541f, 256); 
TEST_R_OP( 65 , swap8, 0xff007e5e, 0x00ff5e7e, 260); 
TEST_R_OP( 66 , swap8, 0x00ff8080, 0xff008080, 264); 
TEST_R_OP( 67 , swap8, 0x80b60000, 0xb6800000, 268); 
TEST_R_OP( 68 , swap8, 0x805800ff, 0x5880ff00, 272); 
TEST_R_OP( 69 , swap8, 0xff80805c, 0x80ff5c80, 276); 
TEST_R_OP( 70 , swap8, 0x006080ff, 0x6000ff80, 280); 
TEST_R_OP( 71 , swap8, 0x00ffff3d, 0xff003dff, 284); 
TEST_R_OP( 72 , swap8, 0x80fffffe, 0xff80feff, 288); 
TEST_R_OP( 73 , swap8, 0x8064ff87, 0x648087ff, 292); 
TEST_R_OP( 74 , swap8, 0x0480ffff, 0x8004ffff, 296); 
TEST_R_OP( 75 , swap8, 0xffffff00, 0xffff00ff, 300); 
TEST_R_OP( 76 , swap8, 0x00ff9fff, 0xff00ff9f, 304); 
TEST_R_OP( 77 , swap8, 0x8000ff00, 0x008000ff, 308); 
TEST_R_OP( 78 , swap8, 0xffa500ff, 0xa5ffff00, 312); 
TEST_R_OP( 79 , swap8, 0x6a80ffff, 0x806affff, 316); 
TEST_R_OP( 80 , swap8, 0x1080fff0, 0x8010f0ff, 320); 
TEST_R_OP( 81 , swap8, 0xff805eff, 0x80ffff5e, 324); 
TEST_R_OP( 82 , swap8, 0x00ff00ff, 0xff00ff00, 328); 
TEST_R_OP( 83 , swap8, 0xffe98080, 0xe9ff8080, 332); 
TEST_R_OP( 84 , swap8, 0x80ff0054, 0xff805400, 336); 
TEST_R_OP( 85 , swap8, 0x8680ffff, 0x8086ffff, 340); 
TEST_R_OP( 86 , swap8, 0x7d2cff00, 0x2c7d00ff, 344); 
TEST_R_OP( 87 , swap8, 0x0000ff7b, 0x00007bff, 348); 
TEST_R_OP( 88 , swap8, 0x00098080, 0x09008080, 352); 
TEST_R_OP( 89 , swap8, 0xdd00b9ff, 0x00ddffb9, 356); 
TEST_R_OP( 90 , swap8, 0x008080ff, 0x8000ff80, 360); 
TEST_R_OP( 91 , swap8, 0x3a803f00, 0x803a003f, 364); 
TEST_R_OP( 92 , swap8, 0x00002000, 0x00000020, 368); 
TEST_R_OP( 93 , swap8, 0x00000080, 0x00008000, 372); 
TEST_R_OP( 94 , swap8, 0x80808000, 0x80800080, 376); 
TEST_R_OP( 95 , swap8, 0x8000ff00, 0x008000ff, 380); 
TEST_R_OP( 96 , swap8, 0x0080ff00, 0x800000ff, 384); 
TEST_R_OP( 97 , swap8, 0x00ff8080, 0xff008080, 388); 
TEST_R_OP( 98 , swap8, 0xffff00ff, 0xffffff00, 392); 
TEST_R_OP( 99 , swap8, 0xffff4580, 0xffff8045, 396); 
TEST_R_OP( 100 , swap8, 0x80ff1680, 0xff808016, 400); 
TEST_R_OP( 101 , swap8, 0xff8080ff, 0x80ffff80, 404); 
TEST_R_OP( 102 , swap8, 0x0b208480, 0x200b8084, 408); 
TEST_R_OP( 103 , swap8, 0x2000ff80, 0x002080ff, 412); 
TEST_R_OP( 104 , swap8, 0xfff740ff, 0xf7ffff40, 416); 
TEST_R_OP( 105 , swap8, 0x80ff0000, 0xff800000, 420); 
TEST_R_OP( 106 , swap8, 0xff0080be, 0x00ffbe80, 424); 
TEST_R_OP( 107 , swap8, 0x00f07e80, 0xf000807e, 428); 
TEST_R_OP( 108 , swap8, 0x8000ff00, 0x008000ff, 432); 
TEST_R_OP( 109 , swap8, 0x808080ff, 0x8080ff80, 436); 
TEST_R_OP( 110 , swap8, 0x8080ffff, 0x8080ffff, 440); 
TEST_R_OP( 111 , swap8, 0xffa50080, 0xa5ff8000, 444); 
TEST_R_OP( 112 , swap8, 0x46ff8080, 0xff468080, 448); 
TEST_R_OP( 113 , swap8, 0x80e4ff00, 0xe48000ff, 452); 
TEST_R_OP( 114 , swap8, 0x00ea2c80, 0xea00802c, 456); 
TEST_R_OP( 115 , swap8, 0x007f0080, 0x7f008000, 460); 
TEST_R_OP( 116 , swap8, 0x00ff8000, 0xff000080, 464); 
TEST_R_OP( 117 , swap8, 0xff80ff80, 0x80ff80ff, 468); 
TEST_R_OP( 118 , swap8, 0x8080ff00, 0x808000ff, 472); 
TEST_R_OP( 119 , swap8, 0x80008680, 0x00808086, 476); 
TEST_R_OP( 120 , swap8, 0x009b7800, 0x9b000078, 480); 
TEST_R_OP( 121 , swap8, 0x00ffff39, 0xff0039ff, 484); 
TEST_R_OP( 122 , swap8, 0x71008080, 0x00718080, 488); 
TEST_R_OP( 123 , swap8, 0x0000ff80, 0x000080ff, 492); 
TEST_R_OP( 124 , swap8, 0xc7020080, 0x02c78000, 496); 
TEST_R_OP( 125 , swap8, 0xff00ffff, 0x00ffffff, 500); 
TEST_R_OP( 126 , swap8, 0x0080ffac, 0x8000acff, 504); 
TEST_R_OP( 127 , swap8, 0x800007ff, 0x0080ff07, 508); 
TEST_R_OP( 128 , swap8, 0x80000080, 0x00808000, 512); 
TEST_R_OP( 129 , swap8, 0x00ff80ff, 0xff00ff80, 516); 
TEST_R_OP( 130 , swap8, 0x8047ffff, 0x4780ffff, 520); 
TEST_R_OP( 131 , swap8, 0x80a38000, 0xa3800080, 524); 
TEST_R_OP( 132 , swap8, 0xff800000, 0x80ff0000, 528); 
TEST_R_OP( 133 , swap8, 0x000000ff, 0x0000ff00, 532); 
TEST_R_OP( 134 , swap8, 0x006a0000, 0x6a000000, 536); 
TEST_R_OP( 135 , swap8, 0xff805780, 0x80ff8057, 540); 
TEST_R_OP( 136 , swap8, 0x8c80ff00, 0x808c00ff, 544); 
TEST_R_OP( 137 , swap8, 0x74803180, 0x80748031, 548); 
TEST_R_OP( 138 , swap8, 0xffff8063, 0xffff6380, 552); 
TEST_R_OP( 139 , swap8, 0xff800080, 0x80ff8000, 556); 
TEST_R_OP( 140 , swap8, 0xffd9ff44, 0xd9ff44ff, 560); 
TEST_R_OP( 141 , swap8, 0x80890000, 0x89800000, 564); 
TEST_R_OP( 142 , swap8, 0x8384ff01, 0x848301ff, 568); 
TEST_R_OP( 143 , swap8, 0x80008080, 0x00808080, 572); 
TEST_R_OP( 144 , swap8, 0x800380ff, 0x0380ff80, 576); 
TEST_R_OP( 145 , swap8, 0x008080ff, 0x8000ff80, 580); 
TEST_R_OP( 146 , swap8, 0x00007700, 0x00000077, 584); 
TEST_R_OP( 147 , swap8, 0xe7800380, 0x80e78003, 588); 
TEST_R_OP( 148 , swap8, 0x00ffff37, 0xff0037ff, 592); 
TEST_R_OP( 149 , swap8, 0xca8000ff, 0x80caff00, 596); 
TEST_R_OP( 150 , swap8, 0xff100000, 0x10ff0000, 600); 
TEST_R_OP( 151 , swap8, 0x1e8f0067, 0x8f1e6700, 604); 
TEST_R_OP( 152 , swap8, 0xff000065, 0x00ff6500, 608); 
TEST_R_OP( 153 , swap8, 0x808006ff, 0x8080ff06, 612); 
TEST_R_OP( 154 , swap8, 0x0038ffce, 0x3800ceff, 616); 
TEST_R_OP( 155 , swap8, 0x00f58080, 0xf5008080, 620); 
TEST_R_OP( 156 , swap8, 0x8080806d, 0x80806d80, 624); 
TEST_R_OP( 157 , swap8, 0xff800080, 0x80ff8000, 628); 
TEST_R_OP( 158 , swap8, 0x80008000, 0x00800080, 632); 
TEST_R_OP( 159 , swap8, 0x00808000, 0x80000080, 636); 
TEST_R_OP( 160 , swap8, 0x1880c400, 0x801800c4, 640); 
TEST_R_OP( 161 , swap8, 0x00ff1bf5, 0xff00f51b, 644); 
TEST_R_OP( 162 , swap8, 0x00e18600, 0xe1000086, 648); 
TEST_R_OP( 163 , swap8, 0x0080002e, 0x80002e00, 652); 
TEST_R_OP( 164 , swap8, 0x0000809c, 0x00009c80, 656); 
TEST_R_OP( 165 , swap8, 0x788080ff, 0x8078ff80, 660); 
TEST_R_OP( 166 , swap8, 0x9bffffff, 0xff9bffff, 664); 
TEST_R_OP( 167 , swap8, 0x8080ff80, 0x808080ff, 668); 
TEST_R_OP( 168 , swap8, 0x871eff00, 0x1e8700ff, 672); 
TEST_R_OP( 169 , swap8, 0x00ff0077, 0xff007700, 676); 
TEST_R_OP( 170 , swap8, 0xb400ffe2, 0x00b4e2ff, 680); 
TEST_R_OP( 171 , swap8, 0x00ff0000, 0xff000000, 684); 
TEST_R_OP( 172 , swap8, 0x80ffffff, 0xff80ffff, 688); 
TEST_R_OP( 173 , swap8, 0x80ff00ff, 0xff80ff00, 692); 
TEST_R_OP( 174 , swap8, 0x00808b09, 0x8000098b, 696); 
TEST_R_OP( 175 , swap8, 0xff8080ff, 0x80ffff80, 700); 
TEST_R_OP( 176 , swap8, 0x80eeff00, 0xee8000ff, 704); 
TEST_R_OP( 177 , swap8, 0x0000806f, 0x00006f80, 708); 
TEST_R_OP( 178 , swap8, 0x00a65a00, 0xa600005a, 712); 
TEST_R_OP( 179 , swap8, 0x10ffffb2, 0xff10b2ff, 716); 
TEST_R_OP( 180 , swap8, 0x00000000, 0x00000000, 720); 
TEST_R_OP( 181 , swap8, 0xffcdff98, 0xcdff98ff, 724); 
TEST_R_OP( 182 , swap8, 0xffb78080, 0xb7ff8080, 728); 
TEST_R_OP( 183 , swap8, 0x800c80ff, 0x0c80ff80, 732); 
TEST_R_OP( 184 , swap8, 0x00ca00ff, 0xca00ff00, 736); 
TEST_R_OP( 185 , swap8, 0x80800080, 0x80808000, 740); 
TEST_R_OP( 186 , swap8, 0xaed9ffde, 0xd9aedeff, 744); 
TEST_R_OP( 187 , swap8, 0x00e17b00, 0xe100007b, 748); 
TEST_R_OP( 188 , swap8, 0x515c80ff, 0x5c51ff80, 752); 
TEST_R_OP( 189 , swap8, 0xafdf00ef, 0xdfafef00, 756); 
TEST_R_OP( 190 , swap8, 0x00ff8000, 0xff000080, 760); 
TEST_R_OP( 191 , swap8, 0x80ff58ff, 0xff80ff58, 764); 
TEST_R_OP( 192 , swap8, 0x000080ff, 0x0000ff80, 768); 
TEST_R_OP( 193 , swap8, 0xff808080, 0x80ff8080, 772); 
TEST_R_OP( 194 , swap8, 0xffffff00, 0xffff00ff, 776); 
TEST_R_OP( 195 , swap8, 0x8080ffff, 0x8080ffff, 780); 
TEST_R_OP( 196 , swap8, 0x80808003, 0x80800380, 784); 
TEST_R_OP( 197 , swap8, 0x8080ac80, 0x808080ac, 788); 
TEST_R_OP( 198 , swap8, 0x80ff8080, 0xff808080, 792); 
TEST_R_OP( 199 , swap8, 0xffffff46, 0xffff46ff, 796); 

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
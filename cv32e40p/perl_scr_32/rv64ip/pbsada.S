# See LICENSE for license details.
#*****************************************************************************
# pbsada.S
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

TEST_RR_OP( 2 , pbsada, 0x000001d4, 0xf38000e2, 0x80ff8080, 8); 
TEST_RR_OP( 3 , pbsada, 0x000002fc, 0x80ff8080, 0x00ff12ba, 12); 
TEST_RR_OP( 4 , pbsada, 0x000004da, 0x00ff5600, 0x517b4cff, 16); 
TEST_RR_OP( 5 , pbsada, 0x0000072f, 0xffff0080, 0x002800ff, 20); 
TEST_RR_OP( 6 , pbsada, 0x00000956, 0x0000ffff, 0x4b5e0080, 24); 
TEST_RR_OP( 7 , pbsada, 0x00000bdc, 0x00400000, 0xff8080c7, 28); 
TEST_RR_OP( 8 , pbsada, 0x00000d91, 0x80800039, 0x8003ff00, 32); 
TEST_RR_OP( 9 , pbsada, 0x0000104e, 0x000034ff, 0xfff38080, 36); 
TEST_RR_OP( 10 , pbsada, 0x000011bd, 0xff80fcff, 0x80008cff, 40); 
TEST_RR_OP( 11 , pbsada, 0x00001435, 0x7934af00, 0xffff0880, 44); 
TEST_RR_OP( 12 , pbsada, 0x0000159e, 0x80000095, 0xff0080ff, 48); 
TEST_RR_OP( 13 , pbsada, 0x00001704, 0x0000b49c, 0x00ffff80, 52); 
TEST_RR_OP( 14 , pbsada, 0x000019e9, 0x0000ff73, 0xffff2580, 56); 
TEST_RR_OP( 15 , pbsada, 0x00001b30, 0x4a0080ff, 0xff8080ed, 60); 
TEST_RR_OP( 16 , pbsada, 0x00001d2f, 0x80808000, 0x800000ff, 64); 
TEST_RR_OP( 17 , pbsada, 0x00001eee, 0xb2ff80ff, 0x000080f1, 68); 
TEST_RR_OP( 18 , pbsada, 0x00002117, 0x00ff0000, 0xff803e6d, 72); 
TEST_RR_OP( 19 , pbsada, 0x0000239a, 0xa1000580, 0x80e9ffff, 76); 
TEST_RR_OP( 20 , pbsada, 0x00002593, 0x518000ff, 0x8236ff80, 80); 
TEST_RR_OP( 21 , pbsada, 0x00002701, 0x91ff0000, 0xffff8080, 84); 
TEST_RR_OP( 22 , pbsada, 0x000029ff, 0x80008000, 0x00ff00ff, 88); 
TEST_RR_OP( 23 , pbsada, 0x00002c0b, 0xff80e000, 0x8000d2ff, 92); 
TEST_RR_OP( 24 , pbsada, 0x00002eb3, 0xff00ca00, 0xefcf00ff, 96); 
TEST_RR_OP( 25 , pbsada, 0x0000310c, 0x80ff0000, 0x0000805a, 100); 
TEST_RR_OP( 26 , pbsada, 0x000032f5, 0x001200b7, 0x80cc8088, 104); 
TEST_RR_OP( 27 , pbsada, 0x00003349, 0x8000ff77, 0xa400da6c, 108); 
TEST_RR_OP( 28 , pbsada, 0x0000343d, 0x806bdc00, 0x80538080, 112); 
TEST_RR_OP( 29 , pbsada, 0x00003674, 0x00be0000, 0x80beb8ff, 116); 
TEST_RR_OP( 30 , pbsada, 0x000037dd, 0xff808041, 0x8000a900, 120); 
TEST_RR_OP( 31 , pbsada, 0x0000394a, 0x008080f5, 0x02590031, 124); 
TEST_RR_OP( 32 , pbsada, 0x00003ac1, 0x00808009, 0x80008080, 128); 
TEST_RR_OP( 33 , pbsada, 0x00003ccf, 0x6f80ff00, 0xffff0000, 132); 
TEST_RR_OP( 34 , pbsada, 0x00003ec3, 0xff37efff, 0x168044e8, 136); 
TEST_RR_OP( 35 , pbsada, 0x000040cb, 0x00808a6c, 0x8000ffff, 140); 
TEST_RR_OP( 36 , pbsada, 0x0000421b, 0x00800000, 0xcb000500, 144); 
TEST_RR_OP( 37 , pbsada, 0x00004455, 0x00ba8000, 0xf6ffff80, 148); 
TEST_RR_OP( 38 , pbsada, 0x00004646, 0x00ff0000, 0xf1ff8080, 152); 
TEST_RR_OP( 39 , pbsada, 0x000048ca, 0xffff8e00, 0x0e800086, 156); 
TEST_RR_OP( 40 , pbsada, 0x00004acb, 0xff80dc00, 0x8000dfff, 160); 
TEST_RR_OP( 41 , pbsada, 0x00004bd4, 0x00800000, 0x00808980, 164); 
TEST_RR_OP( 42 , pbsada, 0x00004db2, 0x06ff9980, 0xffffffff, 168); 
TEST_RR_OP( 43 , pbsada, 0x00004ee0, 0x50ff0080, 0x808000ff, 172); 
TEST_RR_OP( 44 , pbsada, 0x000051b7, 0x000000d8, 0x80ff8000, 176); 
TEST_RR_OP( 45 , pbsada, 0x00005395, 0x00a300ff, 0xff693791, 180); 
TEST_RR_OP( 46 , pbsada, 0x0000545b, 0xff00ff80, 0xff96cf80, 184); 
TEST_RR_OP( 47 , pbsada, 0x000054cd, 0xd4808080, 0xff7b8a48, 188); 
TEST_RR_OP( 48 , pbsada, 0x00005711, 0x80ff80ff, 0x23800017, 192); 
TEST_RR_OP( 49 , pbsada, 0x0000587c, 0x80ffff0f, 0x80a20000, 196); 
TEST_RR_OP( 50 , pbsada, 0x00005a8c, 0xff1b80d2, 0x80ff00ff, 200); 
TEST_RR_OP( 51 , pbsada, 0x00005d26, 0x800000a3, 0xff80ff07, 204); 
TEST_RR_OP( 52 , pbsada, 0x00005e74, 0x638000e4, 0x74805900, 208); 
TEST_RR_OP( 53 , pbsada, 0x00005f67, 0xffe04080, 0x80ac0080, 212); 
TEST_RR_OP( 54 , pbsada, 0x00006143, 0x80bd8036, 0x2a8000ff, 216); 
TEST_RR_OP( 55 , pbsada, 0x00006470, 0xff0000a2, 0x72ffff00, 220); 
TEST_RR_OP( 56 , pbsada, 0x0000669a, 0x0080802c, 0xff00ff00, 224); 
TEST_RR_OP( 57 , pbsada, 0x0000686e, 0x00958040, 0x0100ffff, 228); 
TEST_RR_OP( 58 , pbsada, 0x000069ed, 0x8082ffff, 0xff808080, 232); 
TEST_RR_OP( 59 , pbsada, 0x00006b10, 0x8080cf4e, 0x80ff7900, 236); 
TEST_RR_OP( 60 , pbsada, 0x00006c0f, 0x00000000, 0xff000000, 240); 
TEST_RR_OP( 61 , pbsada, 0x00006dc7, 0x008080ff, 0x00ffba00, 244); 
TEST_RR_OP( 62 , pbsada, 0x00006e90, 0x00fbc8ff, 0x2bff6ac3, 248); 
TEST_RR_OP( 63 , pbsada, 0x0000717b, 0xff0000ff, 0x00ed8080, 252); 
TEST_RR_OP( 64 , pbsada, 0x000073f9, 0x0000c780, 0x4aff0012, 256); 
TEST_RR_OP( 65 , pbsada, 0x0000761b, 0x80ff0080, 0xffdbff00, 260); 
TEST_RR_OP( 66 , pbsada, 0x00007728, 0xff720000, 0x00800000, 264); 
TEST_RR_OP( 67 , pbsada, 0x000078e8, 0xff80ff35, 0x00f6ff80, 268); 
TEST_RR_OP( 68 , pbsada, 0x00007a7f, 0x00c0ff95, 0xffc3ff00, 272); 
TEST_RR_OP( 69 , pbsada, 0x00007c0d, 0x00970900, 0x80008000, 276); 
TEST_RR_OP( 70 , pbsada, 0x00007d86, 0x80790080, 0x80008000, 280); 
TEST_RR_OP( 71 , pbsada, 0x00008002, 0xff8080ff, 0x80ffff00, 284); 
TEST_RR_OP( 72 , pbsada, 0x0000827f, 0x00ffff00, 0xff800000, 288); 
TEST_RR_OP( 73 , pbsada, 0x0000847c, 0xffff0080, 0x80ffffff, 292); 
TEST_RR_OP( 74 , pbsada, 0x00008558, 0x0080ffbf, 0x8064ffff, 296); 
TEST_RR_OP( 75 , pbsada, 0x000085d8, 0xff0080cf, 0xff005d72, 300); 
TEST_RR_OP( 76 , pbsada, 0x0000870e, 0x80002380, 0x00130000, 304); 
TEST_RR_OP( 77 , pbsada, 0x000088fc, 0xff808000, 0xff0004f2, 308); 
TEST_RR_OP( 78 , pbsada, 0x000089a3, 0x6aff3d80, 0x00ff0080, 312); 
TEST_RR_OP( 79 , pbsada, 0x00008b9d, 0x28808080, 0xa300ff00, 316); 
TEST_RR_OP( 80 , pbsada, 0x00008d2a, 0xc90000ff, 0xba00ff80, 320); 
TEST_RR_OP( 81 , pbsada, 0x00009064, 0xffff8000, 0x004300ff, 324); 
TEST_RR_OP( 82 , pbsada, 0x00009221, 0x00ff0000, 0x00a780e5, 328); 
TEST_RR_OP( 83 , pbsada, 0x00009343, 0x0080ffff, 0xdcb7f0ff, 332); 
TEST_RR_OP( 84 , pbsada, 0x0000949f, 0x9b0026ff, 0x80006800, 336); 
TEST_RR_OP( 85 , pbsada, 0x0000959a, 0x3450ffff, 0x80ffffff, 340); 
TEST_RR_OP( 86 , pbsada, 0x00009634, 0x008000ff, 0x00802489, 344); 
TEST_RR_OP( 87 , pbsada, 0x0000976d, 0x80ffecff, 0x80ff8032, 348); 
TEST_RR_OP( 88 , pbsada, 0x000098de, 0x00800036, 0x7b80ac80, 352); 
TEST_RR_OP( 89 , pbsada, 0x00009a6c, 0xb7800080, 0x14ff2b3f, 356); 
TEST_RR_OP( 90 , pbsada, 0x00009c3d, 0xffffed00, 0x2a15ff00, 360); 
TEST_RR_OP( 91 , pbsada, 0x00009e52, 0x5000ff80, 0x28ff90ff, 364); 
TEST_RR_OP( 92 , pbsada, 0x0000a1ce, 0x80ffffff, 0xff000000, 368); 
TEST_RR_OP( 93 , pbsada, 0x0000a2c3, 0xff0a8080, 0xffff8080, 372); 
TEST_RR_OP( 94 , pbsada, 0x0000a472, 0x971b801e, 0xff800080, 376); 
TEST_RR_OP( 95 , pbsada, 0x0000a4dc, 0x8046b400, 0x8065ff00, 380); 
TEST_RR_OP( 96 , pbsada, 0x0000a6d8, 0x00caff6e, 0xf200ffae, 384); 
TEST_RR_OP( 97 , pbsada, 0x0000a7d9, 0xff7d0080, 0x808000ff, 388); 
TEST_RR_OP( 98 , pbsada, 0x0000a929, 0xff80ff00, 0xc3800015, 392); 
TEST_RR_OP( 99 , pbsada, 0x0000ab35, 0x003480ff, 0xff002680, 396); 
TEST_RR_OP( 100 , pbsada, 0x0000ac5f, 0x41ff8000, 0x16ff80ff, 400); 
TEST_RR_OP( 101 , pbsada, 0x0000ae9d, 0x41ff00ff, 0x0080ff80, 404); 
TEST_RR_OP( 102 , pbsada, 0x0000b043, 0x006680ff, 0x003f0000, 408); 
TEST_RR_OP( 103 , pbsada, 0x0000b263, 0x000001ff, 0x80ff80dd, 412); 
TEST_RR_OP( 104 , pbsada, 0x0000b3f7, 0x6b808080, 0xff008000, 416); 
TEST_RR_OP( 105 , pbsada, 0x0000b5f9, 0xc1ff00bd, 0x800080ff, 420); 
TEST_RR_OP( 106 , pbsada, 0x0000b7a7, 0x80808080, 0x38ff0019, 424); 
TEST_RR_OP( 107 , pbsada, 0x0000b9a5, 0x008000ff, 0x8080ff80, 428); 
TEST_RR_OP( 108 , pbsada, 0x0000bc95, 0xffabff14, 0x4bff00fd, 432); 
TEST_RR_OP( 109 , pbsada, 0x0000bf32, 0xff0000ff, 0x009fffff, 436); 
TEST_RR_OP( 110 , pbsada, 0x0000c194, 0xffffff80, 0x801b0080, 440); 
TEST_RR_OP( 111 , pbsada, 0x0000c406, 0x00ff0080, 0x8050ff3c, 444); 
TEST_RR_OP( 112 , pbsada, 0x0000c5cb, 0x80008080, 0xffff8039, 448); 
TEST_RR_OP( 113 , pbsada, 0x0000c6ba, 0x80ff7000, 0x80800000, 452); 
TEST_RR_OP( 114 , pbsada, 0x0000c868, 0x00ff8000, 0x2fff00ff, 456); 
TEST_RR_OP( 115 , pbsada, 0x0000caa1, 0x00ffffbb, 0x00800000, 460); 
TEST_RR_OP( 116 , pbsada, 0x0000ccfa, 0xa4ffffff, 0xff00ff00, 464); 
TEST_RR_OP( 117 , pbsada, 0x0000ce71, 0x92800080, 0xff80ff8b, 468); 
TEST_RR_OP( 118 , pbsada, 0x0000d046, 0xe100ff00, 0x8aff8000, 472); 
TEST_RR_OP( 119 , pbsada, 0x0000d2a8, 0xff804c00, 0x804fffff, 476); 
TEST_RR_OP( 120 , pbsada, 0x0000d625, 0x00ff0000, 0x8000ffff, 480); 
TEST_RR_OP( 121 , pbsada, 0x0000d7fe, 0x86008a2c, 0xffb780cb, 484); 
TEST_RR_OP( 122 , pbsada, 0x0000d8fc, 0xff800080, 0x808000ff, 488); 
TEST_RR_OP( 123 , pbsada, 0x0000daf3, 0x00002174, 0x00ffff8e, 492); 
TEST_RR_OP( 124 , pbsada, 0x0000dc71, 0xffffff00, 0xff80ffff, 496); 
TEST_RR_OP( 125 , pbsada, 0x0000df44, 0x808000d5, 0xff00ff00, 500); 
TEST_RR_OP( 126 , pbsada, 0x0000e177, 0xb5ff00ff, 0x80ffff00, 504); 
TEST_RR_OP( 127 , pbsada, 0x0000e330, 0xbdcfc6ff, 0x8000ff8b, 508); 
TEST_RR_OP( 128 , pbsada, 0x0000e487, 0x00ff00ff, 0x497a43b9, 512); 
TEST_RR_OP( 129 , pbsada, 0x0000e79a, 0x800b00ff, 0xffffff5e, 516); 
TEST_RR_OP( 130 , pbsada, 0x0000e9b2, 0xf880a100, 0x00ff8080, 520); 
TEST_RR_OP( 131 , pbsada, 0x0000ecf6, 0xffffff00, 0x0000b8ff, 524); 
TEST_RR_OP( 132 , pbsada, 0x0000ee14, 0xdf408080, 0x80ff8080, 528); 
TEST_RR_OP( 133 , pbsada, 0x0000f029, 0xffc6ffcb, 0x806300ff, 532); 
TEST_RR_OP( 134 , pbsada, 0x0000f23a, 0x738007ff, 0xffff0000, 536); 
TEST_RR_OP( 135 , pbsada, 0x0000f466, 0xff00ff80, 0xffae0100, 540); 
TEST_RR_OP( 136 , pbsada, 0x0000f6e3, 0x800080ff, 0xffff8000, 544); 
TEST_RR_OP( 137 , pbsada, 0x0000f841, 0x00809a80, 0x80ff80c5, 548); 
TEST_RR_OP( 138 , pbsada, 0x0000f9e2, 0xc0808080, 0xffff1cff, 552); 
TEST_RR_OP( 139 , pbsada, 0x0000fbc8, 0x16ff0000, 0x003c0eff, 556); 
TEST_RR_OP( 140 , pbsada, 0x0000fda8, 0xff808000, 0x9e0080ff, 560); 
TEST_RR_OP( 141 , pbsada, 0x00010029, 0x00148097, 0xff80ff00, 564); 
TEST_RR_OP( 142 , pbsada, 0x000100c9, 0xde80ff80, 0xff808080, 568); 
TEST_RR_OP( 143 , pbsada, 0x000102b1, 0x168000ff, 0xffff80ff, 572); 
TEST_RR_OP( 144 , pbsada, 0x0001041e, 0x0080a1ff, 0x8052d06f, 576); 
TEST_RR_OP( 145 , pbsada, 0x00010667, 0x80ff36f9, 0x8078ff00, 580); 
TEST_RR_OP( 146 , pbsada, 0x000108c4, 0xff8096ff, 0x80000037, 584); 
TEST_RR_OP( 147 , pbsada, 0x00010b43, 0x00000eff, 0x80f3e4c9, 588); 
TEST_RR_OP( 148 , pbsada, 0x00010c95, 0x0000ff80, 0x8000ad00, 592); 
TEST_RR_OP( 149 , pbsada, 0x00010d58, 0xce80ee80, 0x7480ffd8, 596); 
TEST_RR_OP( 150 , pbsada, 0x00010f95, 0xffff8080, 0xc000ff00, 600); 
TEST_RR_OP( 151 , pbsada, 0x00011033, 0xaab68000, 0xffff8000, 604); 
TEST_RR_OP( 152 , pbsada, 0x0001118b, 0x0080ceff, 0x808a00ff, 608); 
TEST_RR_OP( 153 , pbsada, 0x000113d4, 0xec003a80, 0xfff2ffff, 612); 
TEST_RR_OP( 154 , pbsada, 0x000114cf, 0xff0000b2, 0xff00c980, 616); 
TEST_RR_OP( 155 , pbsada, 0x000115f0, 0xffff8312, 0xeb80ff00, 620); 
TEST_RR_OP( 156 , pbsada, 0x0001184b, 0x0015ff00, 0xffff8d00, 624); 
TEST_RR_OP( 157 , pbsada, 0x00011a17, 0xd4ff009d, 0x8080872b, 628); 
TEST_RR_OP( 158 , pbsada, 0x00011c31, 0x80ff04ff, 0x0080dbbb, 632); 
TEST_RR_OP( 159 , pbsada, 0x00011d98, 0xff8000e8, 0x802f80ff, 636); 
TEST_RR_OP( 160 , pbsada, 0x00011e46, 0xff00d000, 0x8000ff00, 640); 
TEST_RR_OP( 161 , pbsada, 0x00012021, 0x00ff00ff, 0xa54980ff, 644); 
TEST_RR_OP( 162 , pbsada, 0x000121df, 0x809f8080, 0x00000fae, 648); 
TEST_RR_OP( 163 , pbsada, 0x0001241e, 0x00ff80b7, 0x8a00ff80, 652); 
TEST_RR_OP( 164 , pbsada, 0x00012681, 0x000086ff, 0x80de8000, 656); 
TEST_RR_OP( 165 , pbsada, 0x000128cd, 0x80000000, 0x0080ff4d, 660); 
TEST_RR_OP( 166 , pbsada, 0x000129f1, 0x808000ff, 0xc280001d, 664); 
TEST_RR_OP( 167 , pbsada, 0x00012ab5, 0x0000c400, 0x00000000, 668); 
TEST_RR_OP( 168 , pbsada, 0x00012ca9, 0x800800ff, 0xc6f1b0ea, 672); 
TEST_RR_OP( 169 , pbsada, 0x00012ea4, 0xff330079, 0x96ff8033, 676); 
TEST_RR_OP( 170 , pbsada, 0x0001310b, 0x00cb4080, 0xff238000, 680); 
TEST_RR_OP( 171 , pbsada, 0x000132bc, 0x800080f2, 0x80c0ff80, 684); 
TEST_RR_OP( 172 , pbsada, 0x00013534, 0xff85ff80, 0x8000000b, 688); 
TEST_RR_OP( 173 , pbsada, 0x000136ac, 0x004d8000, 0x80b68f80, 692); 
TEST_RR_OP( 174 , pbsada, 0x000138aa, 0x808000ff, 0x00ffffff, 696); 
TEST_RR_OP( 175 , pbsada, 0x000139fe, 0x0080804e, 0xacff8025, 700); 
TEST_RR_OP( 176 , pbsada, 0x00013bfb, 0xff8080ff, 0x00ffffff, 704); 
TEST_RR_OP( 177 , pbsada, 0x00013d32, 0x00ff80ff, 0x808048ff, 708); 
TEST_RR_OP( 178 , pbsada, 0x00013f22, 0xe40eff80, 0x800000ff, 712); 
TEST_RR_OP( 179 , pbsada, 0x00014020, 0xff008080, 0xff00ffff, 716); 
TEST_RR_OP( 180 , pbsada, 0x0001425d, 0xff808083, 0x0044ff00, 720); 
TEST_RR_OP( 181 , pbsada, 0x000143ef, 0x00ebfe80, 0x2700ffff, 724); 
TEST_RR_OP( 182 , pbsada, 0x00014507, 0x80ff9a80, 0x00ffb3ff, 728); 
TEST_RR_OP( 183 , pbsada, 0x0001469b, 0x80ffff00, 0xbe56d280, 732); 
TEST_RR_OP( 184 , pbsada, 0x000148f2, 0xff53ff80, 0x80ff0053, 736); 
TEST_RR_OP( 185 , pbsada, 0x00014a5f, 0x006e00ff, 0x00000000, 740); 
TEST_RR_OP( 186 , pbsada, 0x00014c75, 0x4a008000, 0xff6e80f3, 744); 
TEST_RR_OP( 187 , pbsada, 0x00014e0d, 0xff1aff80, 0x00008080, 748); 
TEST_RR_OP( 188 , pbsada, 0x00014f88, 0xff807f00, 0xff00007c, 752); 
TEST_RR_OP( 189 , pbsada, 0x000150b6, 0x00088080, 0x00ff4980, 756); 
TEST_RR_OP( 190 , pbsada, 0x000150c2, 0x8000ff00, 0x8000ff0c, 760); 
TEST_RR_OP( 191 , pbsada, 0x00015218, 0x80ff80d7, 0x00808080, 764); 
TEST_RR_OP( 192 , pbsada, 0x000153d1, 0x3180ffeb, 0xff00ff80, 768); 
TEST_RR_OP( 193 , pbsada, 0x000155cf, 0x008000ff, 0xff800000, 772); 
TEST_RR_OP( 194 , pbsada, 0x00015750, 0x80fcff00, 0xffff0000, 776); 
TEST_RR_OP( 195 , pbsada, 0x000159d0, 0xe0000080, 0x5e80ffff, 780); 
TEST_RR_OP( 196 , pbsada, 0x00015aad, 0x008c0080, 0x002f0000, 784); 
TEST_RR_OP( 197 , pbsada, 0x00015d75, 0xdeff0aff, 0x80007600, 788); 
TEST_RR_OP( 198 , pbsada, 0x00015f32, 0x80004cd4, 0x39ff00ff, 792); 
TEST_RR_OP( 199 , pbsada, 0x00016061, 0x6f806080, 0x5eff80ff, 796); 

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
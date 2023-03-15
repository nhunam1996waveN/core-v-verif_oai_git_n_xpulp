# See LICENSE for license details.
#*****************************************************************************
# pbsad.S
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

TEST_RR_OP( 2 , pbsad, 0x000001bd, 0x0080ff00, 0x8042ffff, 8); 
TEST_RR_OP( 3 , pbsad, 0x00000294, 0x808fff57, 0x00fc00ff, 12); 
TEST_RR_OP( 4 , pbsad, 0x00000182, 0xff80ff80, 0x80ff807b, 16); 
TEST_RR_OP( 5 , pbsad, 0x00000149, 0x37008012, 0x00800000, 20); 
TEST_RR_OP( 6 , pbsad, 0x00000221, 0xf4de8067, 0x311880ff, 24); 
TEST_RR_OP( 7 , pbsad, 0x00000230, 0x022f807d, 0x80e0ffff, 28); 
TEST_RR_OP( 8 , pbsad, 0x000000eb, 0x8080ffc1, 0xae8080ff, 32); 
TEST_RR_OP( 9 , pbsad, 0x00000163, 0x80ce0062, 0xd7001d41, 36); 
TEST_RR_OP( 10 , pbsad, 0x000001bc, 0xff008000, 0x8080003d, 40); 
TEST_RR_OP( 11 , pbsad, 0x000001f9, 0xff858000, 0x00ff0000, 44); 
TEST_RR_OP( 12 , pbsad, 0x0000013d, 0x00800072, 0x000040ef, 48); 
TEST_RR_OP( 13 , pbsad, 0x000002c3, 0xffffffc6, 0x80000080, 52); 
TEST_RR_OP( 14 , pbsad, 0x00000127, 0x00800007, 0xae800080, 56); 
TEST_RR_OP( 15 , pbsad, 0x0000017e, 0xff8080ff, 0x80ff00ff, 60); 
TEST_RR_OP( 16 , pbsad, 0x000000cf, 0x0080ff80, 0x0031ff00, 64); 
TEST_RR_OP( 17 , pbsad, 0x0000018a, 0x80ff8080, 0x0088ff94, 68); 
TEST_RR_OP( 18 , pbsad, 0x00000197, 0x80ff0099, 0xff800000, 72); 
TEST_RR_OP( 19 , pbsad, 0x0000010d, 0x3280fb00, 0x802f8d00, 76); 
TEST_RR_OP( 20 , pbsad, 0x0000015b, 0x4572ff00, 0x80510000, 80); 
TEST_RR_OP( 21 , pbsad, 0x0000027d, 0x00ffffff, 0x00800000, 84); 
TEST_RR_OP( 22 , pbsad, 0x00000136, 0xff1869ff, 0x8f9380cb, 88); 
TEST_RR_OP( 23 , pbsad, 0x00000263, 0x002e2200, 0xfff00080, 92); 
TEST_RR_OP( 24 , pbsad, 0x00000176, 0x8d008080, 0xff807c00, 96); 
TEST_RR_OP( 25 , pbsad, 0x00000196, 0xe04850ff, 0xff008000, 100); 
TEST_RR_OP( 26 , pbsad, 0x00000294, 0x17ff00ff, 0x0080ff00, 104); 
TEST_RR_OP( 27 , pbsad, 0x00000199, 0x008080ff, 0x80806600, 108); 
TEST_RR_OP( 28 , pbsad, 0x0000024d, 0x00ff4680, 0xce460000, 112); 
TEST_RR_OP( 29 , pbsad, 0x000000b5, 0x868000a9, 0x7a808080, 116); 
TEST_RR_OP( 30 , pbsad, 0x000001fe, 0x0080ff00, 0xffffff80, 120); 
TEST_RR_OP( 31 , pbsad, 0x000001c4, 0x8092ffff, 0x80cb0a69, 124); 
TEST_RR_OP( 32 , pbsad, 0x000001d4, 0x8000d5ff, 0x80ff00ff, 128); 
TEST_RR_OP( 33 , pbsad, 0x00000190, 0x800485ff, 0x90ff00ff, 132); 
TEST_RR_OP( 34 , pbsad, 0x00000229, 0x808600ff, 0xff00ffda, 136); 
TEST_RR_OP( 35 , pbsad, 0x00000128, 0xd60000ff, 0xff00ffff, 140); 
TEST_RR_OP( 36 , pbsad, 0x000001ec, 0xff501780, 0xcb00ff00, 144); 
TEST_RR_OP( 37 , pbsad, 0x0000014e, 0x95800080, 0x47000000, 148); 
TEST_RR_OP( 38 , pbsad, 0x0000017e, 0x80ff0080, 0x808080ff, 152); 
TEST_RR_OP( 39 , pbsad, 0x0000017b, 0x80830080, 0xffff8080, 156); 
TEST_RR_OP( 40 , pbsad, 0x0000012b, 0x80ff802c, 0x00808000, 160); 
TEST_RR_OP( 41 , pbsad, 0x000001ff, 0x804243ff, 0x80ff0000, 164); 
TEST_RR_OP( 42 , pbsad, 0x00000119, 0x8000ff80, 0x0000697d, 168); 
TEST_RR_OP( 43 , pbsad, 0x0000001d, 0xff800063, 0xff800080, 172); 
TEST_RR_OP( 44 , pbsad, 0x00000111, 0x14ff8000, 0x02ad80ad, 176); 
TEST_RR_OP( 45 , pbsad, 0x00000216, 0x180080ff, 0x00ff0080, 180); 
TEST_RR_OP( 46 , pbsad, 0x000001a9, 0x1c42ff80, 0x80fff6ff, 184); 
TEST_RR_OP( 47 , pbsad, 0x0000027b, 0x3c80b9ff, 0xff800000, 188); 
TEST_RR_OP( 48 , pbsad, 0x0000019d, 0x809e0000, 0x808080ff, 192); 
TEST_RR_OP( 49 , pbsad, 0x0000017f, 0x80000000, 0xff808000, 196); 
TEST_RR_OP( 50 , pbsad, 0x000001e8, 0xa680ff00, 0x00008043, 200); 
TEST_RR_OP( 51 , pbsad, 0x00000105, 0x80003b00, 0x800041ff, 204); 
TEST_RR_OP( 52 , pbsad, 0x0000017f, 0x808000ff, 0x00000080, 208); 
TEST_RR_OP( 53 , pbsad, 0x000001cb, 0xe4008000, 0x7ee6ff00, 212); 
TEST_RR_OP( 54 , pbsad, 0x0000025c, 0xffffff00, 0x00ff2280, 216); 
TEST_RR_OP( 55 , pbsad, 0x0000021f, 0xff45ff80, 0xa30000ff, 220); 
TEST_RR_OP( 56 , pbsad, 0x000000c9, 0xff000057, 0x800000a1, 224); 
TEST_RR_OP( 57 , pbsad, 0x00000217, 0xe200fbff, 0xff800080, 228); 
TEST_RR_OP( 58 , pbsad, 0x00000135, 0x80ff00ff, 0x8079afff, 232); 
TEST_RR_OP( 59 , pbsad, 0x00000059, 0xffd3002d, 0xffff0000, 236); 
TEST_RR_OP( 60 , pbsad, 0x0000026a, 0x55ff0080, 0xff00c180, 240); 
TEST_RR_OP( 61 , pbsad, 0x00000216, 0xd4ff00cb, 0x2dc3ffff, 244); 
TEST_RR_OP( 62 , pbsad, 0x000001dd, 0x00de80ff, 0x80008080, 248); 
TEST_RR_OP( 63 , pbsad, 0x00000274, 0x8000ff00, 0x7fff80f5, 252); 
TEST_RR_OP( 64 , pbsad, 0x000001e9, 0x0080ffeb, 0xff808080, 256); 
TEST_RR_OP( 65 , pbsad, 0x00000094, 0xbbef0000, 0x80ff4900, 260); 
TEST_RR_OP( 66 , pbsad, 0x00000095, 0xff950000, 0xff000000, 264); 
TEST_RR_OP( 67 , pbsad, 0x0000027f, 0x00800080, 0xff7effff, 268); 
TEST_RR_OP( 68 , pbsad, 0x000001f8, 0x008000fb, 0x80000003, 272); 
TEST_RR_OP( 69 , pbsad, 0x000001fd, 0x80ffff80, 0xffff00ff, 276); 
TEST_RR_OP( 70 , pbsad, 0x00000258, 0xe8ff33ff, 0xff09ff80, 280); 
TEST_RR_OP( 71 , pbsad, 0x00000135, 0x00ff2bff, 0x00ff6100, 284); 
TEST_RR_OP( 72 , pbsad, 0x000001c3, 0xe09f0080, 0x008059eb, 288); 
TEST_RR_OP( 73 , pbsad, 0x000001fb, 0x00ff1c80, 0x1980ff00, 292); 
TEST_RR_OP( 74 , pbsad, 0x00000150, 0x5d35ff80, 0xff06ffff, 296); 
TEST_RR_OP( 75 , pbsad, 0x0000012e, 0x80610080, 0x803280ff, 300); 
TEST_RR_OP( 76 , pbsad, 0x00000164, 0xffffff00, 0xe0805a21, 304); 
TEST_RR_OP( 77 , pbsad, 0x000000ec, 0xf52a0047, 0xd94200ff, 308); 
TEST_RR_OP( 78 , pbsad, 0x000001fe, 0x81ffff00, 0x808080ff, 312); 
TEST_RR_OP( 79 , pbsad, 0x000001d6, 0x00d95cda, 0x0000ff80, 316); 
TEST_RR_OP( 80 , pbsad, 0x000001ac, 0x528000ff, 0xff000080, 320); 
TEST_RR_OP( 81 , pbsad, 0x0000018a, 0x2c808080, 0xff804900, 324); 
TEST_RR_OP( 82 , pbsad, 0x000001ff, 0x00ff0080, 0xffff8000, 328); 
TEST_RR_OP( 83 , pbsad, 0x0000027f, 0x0080ffff, 0xff265880, 332); 
TEST_RR_OP( 84 , pbsad, 0x0000026d, 0x236d00ff, 0xffffffff, 336); 
TEST_RR_OP( 85 , pbsad, 0x0000005e, 0x88800092, 0x7d804180, 340); 
TEST_RR_OP( 86 , pbsad, 0x0000010f, 0x06ffff73, 0x0300ff80, 344); 
TEST_RR_OP( 87 , pbsad, 0x000000d1, 0xc200ff80, 0xff80ff94, 348); 
TEST_RR_OP( 88 , pbsad, 0x00000155, 0xd780ff00, 0x80ff8000, 352); 
TEST_RR_OP( 89 , pbsad, 0x00000286, 0x00ffff00, 0xd780ceff, 356); 
TEST_RR_OP( 90 , pbsad, 0x00000148, 0xffffb182, 0xff6a0080, 360); 
TEST_RR_OP( 91 , pbsad, 0x0000021f, 0x800000ad, 0xce80ffff, 364); 
TEST_RR_OP( 92 , pbsad, 0x000000c0, 0xc00080ff, 0x808080ff, 368); 
TEST_RR_OP( 93 , pbsad, 0x000001b1, 0xffff38ff, 0xffffff15, 372); 
TEST_RR_OP( 94 , pbsad, 0x000000f2, 0xffffffff, 0xffff808c, 376); 
TEST_RR_OP( 95 , pbsad, 0x00000275, 0x88ffff80, 0xff008000, 380); 
TEST_RR_OP( 96 , pbsad, 0x000001c1, 0xffff9913, 0xff893aff, 384); 
TEST_RR_OP( 97 , pbsad, 0x0000012e, 0x0050ff80, 0x008080ff, 388); 
TEST_RR_OP( 98 , pbsad, 0x00000342, 0x4000e500, 0xffff60ff, 392); 
TEST_RR_OP( 99 , pbsad, 0x0000020e, 0xd50080ff, 0xffff1a80, 396); 
TEST_RR_OP( 100 , pbsad, 0x00000132, 0xff00dc40, 0xff160000, 400); 
TEST_RR_OP( 101 , pbsad, 0x0000010e, 0x8000c2ff, 0xcc0000ff, 404); 
TEST_RR_OP( 102 , pbsad, 0x0000014d, 0xff80ffff, 0xb180ff00, 408); 
TEST_RR_OP( 103 , pbsad, 0x0000024b, 0x800f23ff, 0x007f8001, 412); 
TEST_RR_OP( 104 , pbsad, 0x00000257, 0x00ffffff, 0xda808080, 416); 
TEST_RR_OP( 105 , pbsad, 0x00000145, 0x80ff0000, 0x3ba48025, 420); 
TEST_RR_OP( 106 , pbsad, 0x000001c0, 0x80ffff90, 0xb100ff00, 424); 
TEST_RR_OP( 107 , pbsad, 0x000003a3, 0xfb00ff00, 0x55ff00ff, 428); 
TEST_RR_OP( 108 , pbsad, 0x000001fd, 0xff0080ff, 0x8000ff00, 432); 
TEST_RR_OP( 109 , pbsad, 0x000001a8, 0x007bffff, 0x8000ff52, 436); 
TEST_RR_OP( 110 , pbsad, 0x000002ee, 0x37005800, 0xffffff80, 440); 
TEST_RR_OP( 111 , pbsad, 0x000002af, 0xfffb3580, 0x00000000, 444); 
TEST_RR_OP( 112 , pbsad, 0x000002c8, 0x00ff00ca, 0xff000000, 448); 
TEST_RR_OP( 113 , pbsad, 0x00000166, 0x0000ffff, 0x00e180f9, 452); 
TEST_RR_OP( 114 , pbsad, 0x00000063, 0x0000ff1d, 0x0000ff80, 456); 
TEST_RR_OP( 115 , pbsad, 0x0000021f, 0x808000ff, 0x0000ffdf, 460); 
TEST_RR_OP( 116 , pbsad, 0x000002f9, 0xffff00f1, 0x00809c12, 464); 
TEST_RR_OP( 117 , pbsad, 0x0000027d, 0xffffff00, 0xff0080ff, 468); 
TEST_RR_OP( 118 , pbsad, 0x00000357, 0xff0080da, 0x00ffff00, 472); 
TEST_RR_OP( 119 , pbsad, 0x00000134, 0x8000ff00, 0xda80a500, 476); 
TEST_RR_OP( 120 , pbsad, 0x000002dd, 0x1a070000, 0x80ff80ff, 480); 
TEST_RR_OP( 121 , pbsad, 0x00000200, 0xeb686bc9, 0x00008031, 484); 
TEST_RR_OP( 122 , pbsad, 0x0000027d, 0x8080ff00, 0xffff0080, 488); 
TEST_RR_OP( 123 , pbsad, 0x000001a0, 0xa500ffff, 0x0480ff80, 492); 
TEST_RR_OP( 124 , pbsad, 0x00000138, 0xbfff7980, 0x00ff0080, 496); 
TEST_RR_OP( 125 , pbsad, 0x00000262, 0x80ff80c2, 0x0000ff5e, 500); 
TEST_RR_OP( 126 , pbsad, 0x000001e2, 0xc2808080, 0x00a1ff00, 504); 
TEST_RR_OP( 127 , pbsad, 0x0000017f, 0x80ff8000, 0x80000000, 508); 
TEST_RR_OP( 128 , pbsad, 0x00000197, 0xaf80ff00, 0xc7800080, 512); 
TEST_RR_OP( 129 , pbsad, 0x000000fc, 0x7eff8077, 0x59bdff61, 516); 
TEST_RR_OP( 130 , pbsad, 0x000000c9, 0xcd8000ff, 0xe6ff00ce, 520); 
TEST_RR_OP( 131 , pbsad, 0x0000017f, 0x00808000, 0xff808080, 524); 
TEST_RR_OP( 132 , pbsad, 0x000000cb, 0x1d005180, 0x0000ff80, 528); 
TEST_RR_OP( 133 , pbsad, 0x000002ad, 0xcf800080, 0x0000ffdf, 532); 
TEST_RR_OP( 134 , pbsad, 0x000002fe, 0x800080ff, 0x00ff0000, 536); 
TEST_RR_OP( 135 , pbsad, 0x0000025c, 0xac800000, 0x80ffffb2, 540); 
TEST_RR_OP( 136 , pbsad, 0x000001e7, 0x008000ff, 0x6d120d00, 544); 
TEST_RR_OP( 137 , pbsad, 0x000001e6, 0x80006280, 0x009d0019, 548); 
TEST_RR_OP( 138 , pbsad, 0x000002bc, 0x0380ffc1, 0xff000080, 552); 
TEST_RR_OP( 139 , pbsad, 0x000001cc, 0xff318000, 0x80ffff00, 556); 
TEST_RR_OP( 140 , pbsad, 0x000001fe, 0xffff00ff, 0xffffff00, 560); 
TEST_RR_OP( 141 , pbsad, 0x000001ac, 0x0000ff2a, 0x80000057, 564); 
TEST_RR_OP( 142 , pbsad, 0x000001d5, 0x4bff00eb, 0x00ffff60, 568); 
TEST_RR_OP( 143 , pbsad, 0x0000025b, 0x00db0000, 0x80008080, 572); 
TEST_RR_OP( 144 , pbsad, 0x00000223, 0xa680ffff, 0x80ff8000, 576); 
TEST_RR_OP( 145 , pbsad, 0x000001e1, 0x0048ff04, 0xff00ff9e, 580); 
TEST_RR_OP( 146 , pbsad, 0x0000007f, 0x80ff805a, 0xa7ff8002, 584); 
TEST_RR_OP( 147 , pbsad, 0x0000012c, 0x74668087, 0x00ff6880, 588); 
TEST_RR_OP( 148 , pbsad, 0x0000012e, 0x84ab00ff, 0x80800000, 592); 
TEST_RR_OP( 149 , pbsad, 0x00000193, 0x00bdffff, 0x80ff9895, 596); 
TEST_RR_OP( 150 , pbsad, 0x00000143, 0x00ff0080, 0xffe42980, 600); 
TEST_RR_OP( 151 , pbsad, 0x000001ff, 0xffffff80, 0x0fff0595, 604); 
TEST_RR_OP( 152 , pbsad, 0x000000cb, 0x008000b4, 0x808000ff, 608); 
TEST_RR_OP( 153 , pbsad, 0x000000b4, 0x00720080, 0x00802600, 612); 
TEST_RR_OP( 154 , pbsad, 0x0000027d, 0x00ff878f, 0xff001780, 616); 
TEST_RR_OP( 155 , pbsad, 0x00000226, 0x00ff0022, 0x80ffc9ff, 620); 
TEST_RR_OP( 156 , pbsad, 0x000002d8, 0x90358000, 0x00ffffff, 624); 
TEST_RR_OP( 157 , pbsad, 0x00000296, 0x008000ff, 0x98ff8000, 628); 
TEST_RR_OP( 158 , pbsad, 0x00000146, 0x588080ff, 0x809f0080, 632); 
TEST_RR_OP( 159 , pbsad, 0x00000186, 0x80808077, 0x80ffffff, 636); 
TEST_RR_OP( 160 , pbsad, 0x0000017f, 0x80ff8000, 0x80008080, 640); 
TEST_RR_OP( 161 , pbsad, 0x00000214, 0x808000ff, 0xffff1700, 644); 
TEST_RR_OP( 162 , pbsad, 0x000001a3, 0x80008bff, 0x58806926, 648); 
TEST_RR_OP( 163 , pbsad, 0x00000166, 0x80d8ff8f, 0x00808080, 652); 
TEST_RR_OP( 164 , pbsad, 0x00000281, 0x0000c614, 0xff2347f4, 656); 
TEST_RR_OP( 165 , pbsad, 0x00000224, 0x46ff6c00, 0xff800080, 660); 
TEST_RR_OP( 166 , pbsad, 0x000000da, 0x04009580, 0x000b00b6, 664); 
TEST_RR_OP( 167 , pbsad, 0x00000299, 0x000080ff, 0x80ff6500, 668); 
TEST_RR_OP( 168 , pbsad, 0x000001c5, 0x00004500, 0xa000ea80, 672); 
TEST_RR_OP( 169 , pbsad, 0x000000d4, 0x0080ff80, 0x0080802b, 676); 
TEST_RR_OP( 170 , pbsad, 0x000001cf, 0x80ab8000, 0xff00a580, 680); 
TEST_RR_OP( 171 , pbsad, 0x000002be, 0x00f00000, 0x8080ffcf, 684); 
TEST_RR_OP( 172 , pbsad, 0x0000021f, 0xffa78000, 0x8000f980, 688); 
TEST_RR_OP( 173 , pbsad, 0x000001a4, 0x00008080, 0x80371300, 692); 
TEST_RR_OP( 174 , pbsad, 0x0000012d, 0x5c008a80, 0x8080ff94, 696); 
TEST_RR_OP( 175 , pbsad, 0x000001db, 0x801c00ff, 0x30ff0057, 700); 
TEST_RR_OP( 176 , pbsad, 0x0000017d, 0x8080ff01, 0x808080ff, 704); 
TEST_RR_OP( 177 , pbsad, 0x0000020f, 0x80408000, 0xff2f00ff, 708); 
TEST_RR_OP( 178 , pbsad, 0x000002a3, 0xffffff00, 0x1bff3fff, 712); 
TEST_RR_OP( 179 , pbsad, 0x000001e7, 0x10ff8080, 0xff8f8800, 716); 
TEST_RR_OP( 180 , pbsad, 0x0000016b, 0xff800000, 0xff078072, 720); 
TEST_RR_OP( 181 , pbsad, 0x000001ce, 0x07200080, 0x805d9800, 724); 
TEST_RR_OP( 182 , pbsad, 0x000001e7, 0x0000ffff, 0x64ffff7b, 728); 
TEST_RR_OP( 183 , pbsad, 0x0000016d, 0x00008000, 0xed008080, 732); 
TEST_RR_OP( 184 , pbsad, 0x000001a0, 0x0080be9f, 0x80ffffff, 736); 
TEST_RR_OP( 185 , pbsad, 0x0000010d, 0xff00b900, 0xb880ff00, 740); 
TEST_RR_OP( 186 , pbsad, 0x0000022b, 0x5380ffff, 0x80008000, 744); 
TEST_RR_OP( 187 , pbsad, 0x00000183, 0x80800f8b, 0x000000ff, 748); 
TEST_RR_OP( 188 , pbsad, 0x000001c3, 0x00000c00, 0x5000ff80, 752); 
TEST_RR_OP( 189 , pbsad, 0x0000014f, 0xd080ff80, 0x80ffff00, 756); 
TEST_RR_OP( 190 , pbsad, 0x00000296, 0x00988000, 0xff8000ff, 760); 
TEST_RR_OP( 191 , pbsad, 0x000001f3, 0x0c008000, 0xff800000, 764); 
TEST_RR_OP( 192 , pbsad, 0x000002be, 0x006cff00, 0x802c00ff, 768); 
TEST_RR_OP( 193 , pbsad, 0x000001e4, 0xffff5fff, 0x00baffff, 772); 
TEST_RR_OP( 194 , pbsad, 0x00000181, 0x80ea0000, 0x80809780, 776); 
TEST_RR_OP( 195 , pbsad, 0x00000275, 0xffff80cc, 0xa700ff2d, 780); 
TEST_RR_OP( 196 , pbsad, 0x000001cd, 0x0058ffff, 0x00ffd800, 784); 
TEST_RR_OP( 197 , pbsad, 0x000001e7, 0xffd04980, 0x00ff8f0d, 788); 
TEST_RR_OP( 198 , pbsad, 0x0000020b, 0x008cff80, 0x80008000, 792); 
TEST_RR_OP( 199 , pbsad, 0x00000127, 0x806bffff, 0x800080c2, 796); 

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
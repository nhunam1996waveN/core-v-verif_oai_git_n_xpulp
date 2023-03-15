# See LICENSE for license details.
#*****************************************************************************
# kslra8.S
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

TEST_RR_OP( 2 , kslra8, 0xfa00ffff, 0xfa00ffff, 0x428aff00, 8); 
TEST_RR_OP( 3 , kslra8, 0x8000d1ff, 0x8000d1ff, 0x5e800000, 12); 
TEST_RR_OP( 4 , kslra8, 0xc0ff00f9, 0x80ff00f2, 0x8000800f, 16); 
TEST_RR_OP( 5 , kslra8, 0x7f80807f, 0x3180ff22, 0x00800007, 20); 
TEST_CASE( 6 ,24, x14, 1, rdov x14;);
TEST_CASE( 7 ,28, x14, 1, clrov;);
TEST_CASE( 8 ,32, x14, 0, rdov x14;);
TEST_RR_OP( 9 , kslra8, 0x35ffc0c0, 0x6aff8080, 0xffff870f, 36); 
TEST_RR_OP( 10 , kslra8, 0x00008000, 0x00008000, 0xff808000, 40); 
TEST_RR_OP( 11 , kslra8, 0x807f7f80, 0x994a09ff, 0x80800007, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_RR_OP( 15 , kslra8, 0xfcffffff, 0x80ffffff, 0x80ff800b, 60); 
TEST_RR_OP( 16 , kslra8, 0xf0dbffff, 0xe1b7ffff, 0x00cf800f, 64); 
TEST_RR_OP( 17 , kslra8, 0xffff00ff, 0x80ff0080, 0x80800009, 68); 
TEST_RR_OP( 18 , kslra8, 0xddff8f00, 0xddff8f00, 0xfaffff00, 72); 
TEST_RR_OP( 19 , kslra8, 0x80fe8026, 0x80ff8013, 0xc7ff0001, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , kslra8, 0x00007e00, 0x00007e00, 0xffff8000, 92); 
TEST_RR_OP( 24 , kslra8, 0x47008077, 0x47008077, 0x80808000, 96); 
TEST_RR_OP( 25 , kslra8, 0xffb18000, 0xffb18000, 0xc5ffff00, 100); 
TEST_RR_OP( 26 , kslra8, 0x9c80fc80, 0xe780ff80, 0xe2efce02, 104); 
TEST_CASE( 27 ,108, x14, 1, rdov x14;);
TEST_CASE( 28 ,112, x14, 1, clrov;);
TEST_CASE( 29 ,116, x14, 0, rdov x14;);
TEST_RR_OP( 30 , kslra8, 0x80800000, 0x80800000, 0xff00ff00, 120); 
TEST_RR_OP( 31 , kslra8, 0x00e8d304, 0x00d1a608, 0xffff000f, 124); 
TEST_RR_OP( 32 , kslra8, 0xda5900ff, 0xda5900ff, 0xc88f0000, 128); 
TEST_RR_OP( 33 , kslra8, 0x160080ff, 0x160080ff, 0xff780000, 132); 
TEST_RR_OP( 34 , kslra8, 0x80807f80, 0xc9801a8e, 0x00800003, 136); 
TEST_CASE( 35 ,140, x14, 1, rdov x14;);
TEST_CASE( 36 ,144, x14, 1, clrov;);
TEST_CASE( 37 ,148, x14, 0, rdov x14;);
TEST_RR_OP( 38 , kslra8, 0x80f8007f, 0xd1ff0027, 0x8affff03, 152); 
TEST_CASE( 39 ,156, x14, 1, rdov x14;);
TEST_CASE( 40 ,160, x14, 1, clrov;);
TEST_CASE( 41 ,164, x14, 0, rdov x14;);
TEST_RR_OP( 42 , kslra8, 0x468080ff, 0x468080ff, 0xf6a94500, 168); 
TEST_RR_OP( 43 , kslra8, 0x0004c0ff, 0x000980ff, 0xff567a0f, 172); 
TEST_RR_OP( 44 , kslra8, 0x00ffff80, 0x00ffff80, 0x8000ff00, 176); 
TEST_RR_OP( 45 , kslra8, 0x00ffff80, 0x00ffff80, 0xffae8000, 180); 
TEST_RR_OP( 46 , kslra8, 0xf8ff8000, 0xf8ff8000, 0x89ff5d00, 184); 
TEST_RR_OP( 47 , kslra8, 0x00ffcfff, 0x00ffcfff, 0xffff8000, 188); 
TEST_RR_OP( 48 , kslra8, 0xfff9c0d0, 0xfff280a0, 0x808fff0f, 192); 
TEST_RR_OP( 49 , kslra8, 0x804980eb, 0x804980eb, 0x37ff8000, 196); 
TEST_RR_OP( 50 , kslra8, 0x80e0f000, 0x80feff00, 0x80ff0004, 200); 
TEST_CASE( 51 ,204, x14, 1, rdov x14;);
TEST_CASE( 52 ,208, x14, 1, clrov;);
TEST_CASE( 53 ,212, x14, 0, rdov x14;);
TEST_RR_OP( 54 , kslra8, 0x00048000, 0x00048000, 0x80008000, 216); 
TEST_RR_OP( 55 , kslra8, 0x80808080, 0xacc08080, 0x40ffff01, 220); 
TEST_CASE( 56 ,224, x14, 1, rdov x14;);
TEST_CASE( 57 ,228, x14, 1, clrov;);
TEST_CASE( 58 ,232, x14, 0, rdov x14;);
TEST_RR_OP( 59 , kslra8, 0x800000ff, 0x800000ff, 0xffff8000, 236); 
TEST_RR_OP( 60 , kslra8, 0x80ff00ff, 0x80ff00ff, 0x80808000, 240); 
TEST_RR_OP( 61 , kslra8, 0xffff80ff, 0xffff80ff, 0x7600ff00, 244); 
TEST_RR_OP( 62 , kslra8, 0xe5008080, 0xe5008080, 0x00800000, 248); 
TEST_RR_OP( 63 , kslra8, 0x0080b480, 0x0080b480, 0x80800000, 252); 
TEST_RR_OP( 64 , kslra8, 0x80800080, 0x80e10080, 0xff72ff06, 256); 
TEST_CASE( 65 ,260, x14, 1, rdov x14;);
TEST_CASE( 66 ,264, x14, 1, clrov;);
TEST_CASE( 67 ,268, x14, 0, rdov x14;);
TEST_RR_OP( 68 , kslra8, 0x1effcb00, 0x3dff9600, 0x00ff000f, 272); 
TEST_RR_OP( 69 , kslra8, 0x00c3ffff, 0x0086ffff, 0x7fff800f, 276); 
TEST_RR_OP( 70 , kslra8, 0x00000cff, 0x00000cff, 0x00008000, 280); 
TEST_RR_OP( 71 , kslra8, 0x80800065, 0x80800065, 0xfcff8000, 284); 
TEST_RR_OP( 72 , kslra8, 0x00313ec0, 0x00627c80, 0xff54ff0f, 288); 
TEST_RR_OP( 73 , kslra8, 0xff300080, 0xff300080, 0x0000ff00, 292); 
TEST_RR_OP( 74 , kslra8, 0xc0e7fdff, 0x80cffbff, 0xff80800f, 296); 
TEST_RR_OP( 75 , kslra8, 0xff000089, 0xff000089, 0x80800000, 300); 
TEST_RR_OP( 76 , kslra8, 0x39f01bff, 0x39f01bff, 0x005fff00, 304); 
TEST_RR_OP( 77 , kslra8, 0x76ffff00, 0x76ffff00, 0x00ffff00, 308); 
TEST_RR_OP( 78 , kslra8, 0x80000080, 0x80000080, 0x802a5300, 312); 
TEST_RR_OP( 79 , kslra8, 0xc024ffc0, 0x8049ff80, 0xffffff0f, 316); 
TEST_RR_OP( 80 , kslra8, 0xffe6a7ff, 0xffe6a7ff, 0x00ff5d00, 320); 
TEST_RR_OP( 81 , kslra8, 0xffffe1ff, 0xffffe1ff, 0x801be900, 324); 
TEST_RR_OP( 82 , kslra8, 0xffe8ff00, 0xffd0ff00, 0x0700800f, 328); 
TEST_RR_OP( 83 , kslra8, 0xff6a1517, 0xff6a1517, 0xffffff00, 332); 
TEST_RR_OP( 84 , kslra8, 0x800080ff, 0x800080ff, 0x00ffff00, 336); 
TEST_RR_OP( 85 , kslra8, 0x2000fc2b, 0x2000fc2b, 0x80808000, 340); 
TEST_RR_OP( 86 , kslra8, 0x00800000, 0x00800000, 0xffa90000, 344); 
TEST_RR_OP( 87 , kslra8, 0x80ff80a2, 0x80ff80a2, 0x7c000000, 348); 
TEST_RR_OP( 88 , kslra8, 0x0016c000, 0x002d8000, 0x80ff830f, 352); 
TEST_RR_OP( 89 , kslra8, 0x0080805c, 0x0080805c, 0x8080ff00, 356); 
TEST_RR_OP( 90 , kslra8, 0xb9808000, 0xb9808000, 0x00ff7b00, 360); 
TEST_RR_OP( 91 , kslra8, 0xff6e8200, 0xff6e8200, 0x00ffff00, 364); 
TEST_RR_OP( 92 , kslra8, 0x000000ff, 0x000000ff, 0x80ff0000, 368); 
TEST_RR_OP( 93 , kslra8, 0x008022cc, 0x008022cc, 0x80f12300, 372); 
TEST_RR_OP( 94 , kslra8, 0x80ff00ff, 0x80ff00ff, 0xff008000, 376); 
TEST_RR_OP( 95 , kslra8, 0xff800000, 0xff800000, 0x80500000, 380); 
TEST_RR_OP( 96 , kslra8, 0x80ff80ff, 0x80ff80ff, 0xff800000, 384); 
TEST_RR_OP( 97 , kslra8, 0x0000ff00, 0x0000ff00, 0x80ff800c, 388); 
TEST_RR_OP( 98 , kslra8, 0xffe50081, 0xffe50081, 0x00ff7100, 392); 
TEST_RR_OP( 99 , kslra8, 0x80e6fe00, 0x80f3ff00, 0x00000001, 396); 
TEST_CASE( 100 ,400, x14, 1, rdov x14;);
TEST_CASE( 101 ,404, x14, 1, clrov;);
TEST_CASE( 102 ,408, x14, 0, rdov x14;);
TEST_RR_OP( 103 , kslra8, 0xfff50000, 0xffea0000, 0x80f2800f, 412); 
TEST_RR_OP( 104 , kslra8, 0x00f88080, 0x00ff8080, 0xffffb003, 416); 
TEST_CASE( 105 ,420, x14, 1, rdov x14;);
TEST_CASE( 106 ,424, x14, 1, clrov;);
TEST_CASE( 107 ,428, x14, 0, rdov x14;);
TEST_RR_OP( 108 , kslra8, 0xfe0000fe, 0x80000080, 0x00ffff0a, 432); 
TEST_RR_OP( 109 , kslra8, 0xff0080ff, 0xff0080ff, 0x00008000, 436); 
TEST_RR_OP( 110 , kslra8, 0xcf003500, 0x9e006b00, 0xd700ff0f, 440); 
TEST_RR_OP( 111 , kslra8, 0x0080f07f, 0x0080ff38, 0xff800004, 444); 
TEST_CASE( 112 ,448, x14, 1, rdov x14;);
TEST_CASE( 113 ,452, x14, 1, clrov;);
TEST_CASE( 114 ,456, x14, 0, rdov x14;);
TEST_RR_OP( 115 , kslra8, 0xff00f0f0, 0xff008080, 0x8096800d, 460); 
TEST_RR_OP( 116 , kslra8, 0xffffc0ff, 0xffff80ff, 0xff00800f, 464); 
TEST_RR_OP( 117 , kslra8, 0x0009f3ff, 0x0013e7ff, 0xbd00800f, 468); 
TEST_RR_OP( 118 , kslra8, 0xfe00fcff, 0xc20a80ff, 0xffff000b, 472); 
TEST_RR_OP( 119 , kslra8, 0xc800c0c5, 0x9100808b, 0x00ff800f, 476); 
TEST_RR_OP( 120 , kslra8, 0x808080bc, 0x808080bc, 0x00ff0000, 480); 
TEST_RR_OP( 121 , kslra8, 0xff000080, 0xff000080, 0xdc80ff00, 484); 
TEST_RR_OP( 122 , kslra8, 0xe0e0ffe0, 0x8080ff80, 0xeaf4ff0e, 488); 
TEST_RR_OP( 123 , kslra8, 0xff80ffff, 0xff80ffff, 0xba800000, 492); 
TEST_RR_OP( 124 , kslra8, 0x008080dc, 0x009caef7, 0x80008002, 496); 
TEST_CASE( 125 ,500, x14, 1, rdov x14;);
TEST_CASE( 126 ,504, x14, 1, clrov;);
TEST_CASE( 127 ,508, x14, 0, rdov x14;);
TEST_RR_OP( 128 , kslra8, 0xaf8eff0e, 0xaf8eff0e, 0x80800000, 512); 
TEST_RR_OP( 129 , kslra8, 0x00000080, 0x00000080, 0x0000ff00, 516); 
TEST_RR_OP( 130 , kslra8, 0xff80ff80, 0xff80ff80, 0x6780ff00, 520); 
TEST_RR_OP( 131 , kslra8, 0xc0ffc0fc, 0x80ff80f9, 0x80ae800f, 524); 
TEST_RR_OP( 132 , kslra8, 0x00c0c032, 0x00808065, 0x8080800f, 528); 
TEST_RR_OP( 133 , kslra8, 0x1ec3fff2, 0x3c87ffe4, 0x80ff7d0f, 532); 
TEST_RR_OP( 134 , kslra8, 0xff6e8080, 0xff6e8080, 0xffff0000, 536); 
TEST_RR_OP( 135 , kslra8, 0x0004f7ff, 0x0027baff, 0x35ff800d, 540); 
TEST_RR_OP( 136 , kslra8, 0x00008080, 0x000080ef, 0x00ff0003, 544); 
TEST_CASE( 137 ,548, x14, 1, rdov x14;);
TEST_CASE( 138 ,552, x14, 1, clrov;);
TEST_CASE( 139 ,556, x14, 0, rdov x14;);
TEST_RR_OP( 140 , kslra8, 0xf8f8ffff, 0x8080ffff, 0x80c3000c, 560); 
TEST_RR_OP( 141 , kslra8, 0xf3ffcd80, 0xf3ffcd80, 0x00ff8000, 564); 
TEST_RR_OP( 142 , kslra8, 0xffc0fff2, 0xff80ffe4, 0x6a00000f, 568); 
TEST_RR_OP( 143 , kslra8, 0x3380dc00, 0x3380dc00, 0xff000000, 572); 
TEST_RR_OP( 144 , kslra8, 0xed00ffdb, 0xed00ffdb, 0xe4eaff00, 576); 
TEST_RR_OP( 145 , kslra8, 0xc0ffc3c0, 0x80ff8680, 0xff00000f, 580); 
TEST_RR_OP( 146 , kslra8, 0x00ffbef9, 0x00ffbef9, 0x00efff00, 584); 
TEST_RR_OP( 147 , kslra8, 0x19ff809f, 0x19ff809f, 0xff8aff00, 588); 
TEST_RR_OP( 148 , kslra8, 0xffffffff, 0xffffffff, 0xffcc000f, 592); 
TEST_RR_OP( 149 , kslra8, 0xf800f000, 0xc5008000, 0x00ffeb0d, 596); 
TEST_RR_OP( 150 , kslra8, 0xffff8000, 0xffff8000, 0x8941ff00, 600); 
TEST_RR_OP( 151 , kslra8, 0x8a000080, 0x8a000080, 0xff6fff00, 604); 
TEST_RR_OP( 152 , kslra8, 0x80ff8048, 0x80ff8048, 0x80808000, 608); 
TEST_RR_OP( 153 , kslra8, 0x00803160, 0x00803160, 0x80801300, 612); 
TEST_RR_OP( 154 , kslra8, 0xffff80ff, 0xffff80ff, 0x2e00ff00, 616); 
TEST_RR_OP( 155 , kslra8, 0x00ff8080, 0x00ff8080, 0x80808000, 620); 
TEST_RR_OP( 156 , kslra8, 0x80800080, 0x80800080, 0x5f9a8200, 624); 
TEST_RR_OP( 157 , kslra8, 0xf4c000c0, 0xe8800080, 0x0080050f, 628); 
TEST_RR_OP( 158 , kslra8, 0x0400f8f8, 0x41008080, 0xffff800c, 632); 
TEST_RR_OP( 159 , kslra8, 0xffffc0ff, 0xffff80ff, 0xff6bd20f, 636); 
TEST_RR_OP( 160 , kslra8, 0x80800000, 0xa9800000, 0xaeffc105, 640); 
TEST_CASE( 161 ,644, x14, 1, rdov x14;);
TEST_CASE( 162 ,648, x14, 1, clrov;);
TEST_CASE( 163 ,652, x14, 0, rdov x14;);
TEST_RR_OP( 164 , kslra8, 0xff003500, 0xff003500, 0xff000000, 656); 
TEST_RR_OP( 165 , kslra8, 0xff0080ff, 0xff0080ff, 0x0880ff00, 660); 
TEST_RR_OP( 166 , kslra8, 0xffffff80, 0xffffff80, 0xb180ff00, 664); 
TEST_RR_OP( 167 , kslra8, 0x6aff80ff, 0x6aff80ff, 0x00000000, 668); 
TEST_RR_OP( 168 , kslra8, 0x00c0ffc0, 0x0080ff80, 0x00ffe80f, 672); 
TEST_RR_OP( 169 , kslra8, 0x806e7980, 0x806e7980, 0x00ff0000, 676); 
TEST_RR_OP( 170 , kslra8, 0x0000ffff, 0x0000ff80, 0xff000009, 680); 
TEST_RR_OP( 171 , kslra8, 0x00900080, 0x00900080, 0x8080ff00, 684); 
TEST_RR_OP( 172 , kslra8, 0x00ee00c0, 0x00dc0080, 0xff80800f, 688); 
TEST_RR_OP( 173 , kslra8, 0xffffff80, 0xffffff80, 0xff008000, 692); 
TEST_RR_OP( 174 , kslra8, 0x0000c0ff, 0x000080ff, 0xff00150f, 696); 
TEST_RR_OP( 175 , kslra8, 0x00c0000a, 0x00800014, 0x8080000f, 700); 
TEST_RR_OP( 176 , kslra8, 0x80ffffc2, 0x80ffffc2, 0x00000000, 704); 
TEST_RR_OP( 177 , kslra8, 0x00ff8057, 0x00ff8057, 0x0000c200, 708); 
TEST_RR_OP( 178 , kslra8, 0x00000080, 0x00000080, 0xffff8000, 712); 
TEST_RR_OP( 179 , kslra8, 0xff000000, 0xff000000, 0x80808000, 716); 
TEST_RR_OP( 180 , kslra8, 0x00000000, 0x00000000, 0x8680ff09, 720); 
TEST_RR_OP( 181 , kslra8, 0x000202fc, 0x00485380, 0xffff700b, 724); 
TEST_RR_OP( 182 , kslra8, 0xc0ffffd8, 0x80ffffb0, 0x8080ff0f, 728); 
TEST_RR_OP( 183 , kslra8, 0x0080002e, 0x0080002e, 0x8080ff00, 732); 
TEST_RR_OP( 184 , kslra8, 0xd50080ff, 0xd50080ff, 0x00800000, 736); 
TEST_RR_OP( 185 , kslra8, 0xffff0000, 0xffff0000, 0x0000000f, 740); 
TEST_RR_OP( 186 , kslra8, 0x43ff80ff, 0x43ff80ff, 0x80c19900, 744); 
TEST_RR_OP( 187 , kslra8, 0x00ffe2fd, 0x00ffc4fa, 0xff80800f, 748); 
TEST_RR_OP( 188 , kslra8, 0xff00ffc0, 0xff00ff80, 0x00bc000f, 752); 
TEST_RR_OP( 189 , kslra8, 0x80008000, 0x80008000, 0xffff6300, 756); 
TEST_RR_OP( 190 , kslra8, 0xff000f80, 0xff000f80, 0xff000000, 760); 
TEST_RR_OP( 191 , kslra8, 0x00ff8000, 0x00ff8000, 0x00c60000, 764); 
TEST_RR_OP( 192 , kslra8, 0x8000ffff, 0x8000ffff, 0x0000ff00, 768); 
TEST_RR_OP( 193 , kslra8, 0x8000c9ff, 0x8000c9ff, 0xdf80b700, 772); 
TEST_RR_OP( 194 , kslra8, 0x8080a7ff, 0x8080a7ff, 0x80eb8000, 776); 
TEST_RR_OP( 195 , kslra8, 0x3400c02b, 0x69008056, 0x53967c0f, 780); 
TEST_RR_OP( 196 , kslra8, 0x9680ff00, 0x9680ff00, 0x0092be00, 784); 
TEST_RR_OP( 197 , kslra8, 0xffc000c0, 0xff800080, 0xff00000f, 788); 
TEST_RR_OP( 198 , kslra8, 0xfcfcff00, 0x8080ff00, 0xff00800b, 792); 
TEST_RR_OP( 199 , kslra8, 0xffc031c0, 0xff816380, 0xff00000f, 796); 

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
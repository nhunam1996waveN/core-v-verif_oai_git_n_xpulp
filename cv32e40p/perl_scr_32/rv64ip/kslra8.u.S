# See LICENSE for license details.
#*****************************************************************************
# kslra8.u.S
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

TEST_RR_OP( 2 , kslra8.u, 0x00c000c0, 0x0080ff80, 0x8080800f, 8); 
TEST_RR_OP( 3 , kslra8.u, 0x00fefefc, 0x00fffffe, 0x00ff8001, 12); 
TEST_RR_OP( 4 , kslra8.u, 0x8000ff00, 0x8000ff00, 0xff808000, 16); 
TEST_RR_OP( 5 , kslra8.u, 0x00000000, 0x00f500ff, 0x7cdc8008, 20); 
TEST_RR_OP( 6 , kslra8.u, 0x000900c0, 0x0012ff80, 0x0053800f, 24); 
TEST_RR_OP( 7 , kslra8.u, 0x00ff0000, 0x00ff0000, 0x2c48a200, 28); 
TEST_RR_OP( 8 , kslra8.u, 0xc000c0c0, 0x80ff8080, 0xb780ff0f, 32); 
TEST_RR_OP( 9 , kslra8.u, 0xc0000000, 0x80ffff00, 0xff80320f, 36); 
TEST_RR_OP( 10 , kslra8.u, 0x00feff00, 0xff80cc00, 0x5080800a, 40); 
TEST_RR_OP( 11 , kslra8.u, 0x7f7f8080, 0x1659e080, 0x9600ff04, 44); 
TEST_CASE( 12 ,48, x14, 1, rdov x14;);
TEST_CASE( 13 ,52, x14, 1, clrov;);
TEST_CASE( 14 ,56, x14, 0, rdov x14;);
TEST_RR_OP( 15 , kslra8.u, 0xff800d00, 0xff800d00, 0xffffff00, 60); 
TEST_RR_OP( 16 , kslra8.u, 0x000000cb, 0xffffff96, 0x7100000f, 64); 
TEST_RR_OP( 17 , kslra8.u, 0xffff0080, 0xffff0080, 0x00ff0000, 68); 
TEST_RR_OP( 18 , kslra8.u, 0x00000000, 0x00ff3c00, 0xffeb8008, 72); 
TEST_RR_OP( 19 , kslra8.u, 0x807f0000, 0x802e0000, 0x0080ff02, 76); 
TEST_CASE( 20 ,80, x14, 1, rdov x14;);
TEST_CASE( 21 ,84, x14, 1, clrov;);
TEST_CASE( 22 ,88, x14, 0, rdov x14;);
TEST_RR_OP( 23 , kslra8.u, 0xe14fff80, 0xe14fff80, 0xff807900, 92); 
TEST_RR_OP( 24 , kslra8.u, 0x37ff802c, 0x37ff802c, 0x00c60000, 96); 
TEST_RR_OP( 25 , kslra8.u, 0xff80ff80, 0xff80ff80, 0xff80ff00, 100); 
TEST_RR_OP( 26 , kslra8.u, 0x4cff0080, 0x4cff0080, 0x00800000, 104); 
TEST_RR_OP( 27 , kslra8.u, 0x00000900, 0xff001100, 0x006bff0f, 108); 
TEST_RR_OP( 28 , kslra8.u, 0x0000ffff, 0xe3ff8080, 0x00ffff08, 112); 
TEST_RR_OP( 29 , kslra8.u, 0xc0002200, 0x800044ff, 0xff80990f, 116); 
TEST_RR_OP( 30 , kslra8.u, 0xffffb2ff, 0xffffb2ff, 0x6f818000, 120); 
TEST_RR_OP( 31 , kslra8.u, 0x0000ffff, 0x0000ffff, 0x34190000, 124); 
TEST_RR_OP( 32 , kslra8.u, 0x0021e700, 0x0041ceff, 0xff00000f, 128); 
TEST_RR_OP( 33 , kslra8.u, 0xc000fb00, 0x80fff600, 0x80ff430f, 132); 
TEST_RR_OP( 34 , kslra8.u, 0xff8000ff, 0xff8000ff, 0xff800000, 136); 
TEST_RR_OP( 35 , kslra8.u, 0x00068080, 0x00068080, 0xe4802200, 140); 
TEST_RR_OP( 36 , kslra8.u, 0xff600062, 0xff600062, 0x00ffff00, 144); 
TEST_RR_OP( 37 , kslra8.u, 0x7f0000fc, 0x640000ff, 0x57008002, 148); 
TEST_CASE( 38 ,152, x14, 1, rdov x14;);
TEST_CASE( 39 ,156, x14, 1, clrov;);
TEST_CASE( 40 ,160, x14, 0, rdov x14;);
TEST_RR_OP( 41 , kslra8.u, 0x8080ffff, 0x8080ffff, 0x80da8000, 164); 
TEST_RR_OP( 42 , kslra8.u, 0x00000000, 0x0000ffff, 0xc6ff0008, 168); 
TEST_RR_OP( 43 , kslra8.u, 0x802affd6, 0x802affd6, 0x27048000, 172); 
TEST_RR_OP( 44 , kslra8.u, 0xff960000, 0xff960000, 0xff79a400, 176); 
TEST_RR_OP( 45 , kslra8.u, 0x00000059, 0x00000059, 0x80002100, 180); 
TEST_RR_OP( 46 , kslra8.u, 0xeb0030c0, 0xd5006080, 0x00ff800f, 184); 
TEST_RR_OP( 47 , kslra8.u, 0x99f08080, 0x99f08080, 0xff804000, 188); 
TEST_RR_OP( 48 , kslra8.u, 0xff5eff80, 0xff5eff80, 0x00800000, 192); 
TEST_RR_OP( 49 , kslra8.u, 0xdec0c0c0, 0xbb808080, 0x00809f0f, 196); 
TEST_RR_OP( 50 , kslra8.u, 0x00ff8082, 0x00ff8082, 0x491d6800, 200); 
TEST_RR_OP( 51 , kslra8.u, 0x8069cbfb, 0x8069cbfb, 0xff000000, 204); 
TEST_RR_OP( 52 , kslra8.u, 0x80808080, 0xffdaff80, 0x8022ff07, 208); 
TEST_CASE( 53 ,212, x14, 1, rdov x14;);
TEST_CASE( 54 ,216, x14, 1, clrov;);
TEST_CASE( 55 ,220, x14, 0, rdov x14;);
TEST_RR_OP( 56 , kslra8.u, 0xffffffff, 0xffffffff, 0x80808000, 224); 
TEST_RR_OP( 57 , kslra8.u, 0x80ff80ff, 0x80ff80ff, 0xbf000000, 228); 
TEST_RR_OP( 58 , kslra8.u, 0x8080ffff, 0x8080ffff, 0xffff9500, 232); 
TEST_RR_OP( 59 , kslra8.u, 0xc5d9d800, 0x8ab1afff, 0x8000ff0f, 236); 
TEST_RR_OP( 60 , kslra8.u, 0x80809c00, 0x80809c00, 0xffffff00, 240); 
TEST_RR_OP( 61 , kslra8.u, 0xff8080ff, 0xff8080ff, 0x8024a000, 244); 
TEST_RR_OP( 62 , kslra8.u, 0x17ff8080, 0x17ff8080, 0xd700ff00, 248); 
TEST_RR_OP( 63 , kslra8.u, 0x00f60000, 0xffebff00, 0x7300800f, 252); 
TEST_RR_OP( 64 , kslra8.u, 0xff00b780, 0xff00b780, 0xff008000, 256); 
TEST_RR_OP( 65 , kslra8.u, 0x00fd0000, 0xffcd00ff, 0xff80840c, 260); 
TEST_RR_OP( 66 , kslra8.u, 0x7e808066, 0x7e808066, 0x00000000, 264); 
TEST_RR_OP( 67 , kslra8.u, 0x00faf000, 0x00cf80ff, 0x0bffff0d, 268); 
TEST_RR_OP( 68 , kslra8.u, 0xffff0080, 0xffff0080, 0xffffff00, 272); 
TEST_RR_OP( 69 , kslra8.u, 0x0000c000, 0x00008000, 0x00ff000f, 276); 
TEST_RR_OP( 70 , kslra8.u, 0xf87f807f, 0xff36ac7d, 0x80ff0003, 280); 
TEST_CASE( 71 ,284, x14, 1, rdov x14;);
TEST_CASE( 72 ,288, x14, 1, clrov;);
TEST_CASE( 73 ,292, x14, 0, rdov x14;);
TEST_RR_OP( 74 , kslra8.u, 0xfc180080, 0xff060080, 0x3280ff02, 296); 
TEST_CASE( 75 ,300, x14, 1, rdov x14;);
TEST_CASE( 76 ,304, x14, 1, clrov;);
TEST_CASE( 77 ,308, x14, 0, rdov x14;);
TEST_RR_OP( 78 , kslra8.u, 0x87e9ff00, 0x87e9ff00, 0x00808000, 312); 
TEST_RR_OP( 79 , kslra8.u, 0x6680ff00, 0x6680ff00, 0x42ff0000, 316); 
TEST_RR_OP( 80 , kslra8.u, 0x0bffff00, 0x0bffff00, 0x80800000, 320); 
TEST_RR_OP( 81 , kslra8.u, 0x00c08000, 0x00f88000, 0x80000003, 324); 
TEST_CASE( 82 ,328, x14, 1, rdov x14;);
TEST_CASE( 83 ,332, x14, 1, clrov;);
TEST_CASE( 84 ,336, x14, 0, rdov x14;);
TEST_RR_OP( 85 , kslra8.u, 0x8080ff00, 0x8080ff00, 0x80000000, 340); 
TEST_RR_OP( 86 , kslra8.u, 0x00fefefe, 0x00ffffff, 0x0080ff01, 344); 
TEST_RR_OP( 87 , kslra8.u, 0x00c000c0, 0xff80ff80, 0x6100ff0f, 348); 
TEST_RR_OP( 88 , kslra8.u, 0x00000080, 0x00000080, 0xffff8000, 352); 
TEST_RR_OP( 89 , kslra8.u, 0x00ffb1ff, 0x00ffb1ff, 0x49000000, 356); 
TEST_RR_OP( 90 , kslra8.u, 0xff000680, 0xff000680, 0x8004ff00, 360); 
TEST_RR_OP( 91 , kslra8.u, 0xf1c019cc, 0xe2803298, 0x0000800f, 364); 
TEST_RR_OP( 92 , kslra8.u, 0xfefc0000, 0xca8104ff, 0x8000000b, 368); 
TEST_RR_OP( 93 , kslra8.u, 0x00c0c0c0, 0xff808080, 0xffd51d0f, 372); 
TEST_RR_OP( 94 , kslra8.u, 0xff0000ff, 0x802cd080, 0x00808008, 376); 
TEST_RR_OP( 95 , kslra8.u, 0x0400c000, 0x07ff80ff, 0xffc7ff0f, 380); 
TEST_RR_OP( 96 , kslra8.u, 0x80ff0000, 0x80ff0000, 0x80450000, 384); 
TEST_RR_OP( 97 , kslra8.u, 0xff0280ff, 0xff0280ff, 0xff80ff00, 388); 
TEST_RR_OP( 98 , kslra8.u, 0x800000ff, 0x800000ff, 0xda800000, 392); 
TEST_RR_OP( 99 , kslra8.u, 0xfe0000fe, 0xff0000ff, 0x80ad8001, 396); 
TEST_RR_OP( 100 , kslra8.u, 0xc0eb03c0, 0x80d50680, 0x00ff800f, 400); 
TEST_RR_OP( 101 , kslra8.u, 0x000001ff, 0xff005b80, 0x5faaff08, 404); 
TEST_RR_OP( 102 , kslra8.u, 0x00000000, 0xff001000, 0x80ffff09, 408); 
TEST_RR_OP( 103 , kslra8.u, 0x00c0003a, 0xff80ff74, 0x2203ff0f, 412); 
TEST_RR_OP( 104 , kslra8.u, 0xffdf8013, 0xffdf8013, 0xc514ff00, 416); 
TEST_RR_OP( 105 , kslra8.u, 0xf0000080, 0xff0000ae, 0x00808004, 420); 
TEST_CASE( 106 ,424, x14, 1, rdov x14;);
TEST_CASE( 107 ,428, x14, 1, clrov;);
TEST_CASE( 108 ,432, x14, 0, rdov x14;);
TEST_RR_OP( 109 , kslra8.u, 0x00ffc0d5, 0x00fd80aa, 0xffffff0f, 436); 
TEST_RR_OP( 110 , kslra8.u, 0xf8f88000, 0xffff8000, 0x00800003, 440); 
TEST_CASE( 111 ,444, x14, 1, rdov x14;);
TEST_CASE( 112 ,448, x14, 1, clrov;);
TEST_CASE( 113 ,452, x14, 0, rdov x14;);
TEST_RR_OP( 114 , kslra8.u, 0x00ffff00, 0x00ffff00, 0x80800000, 456); 
TEST_RR_OP( 115 , kslra8.u, 0x4a0000ff, 0x4a0000ff, 0x3e808000, 460); 
TEST_RR_OP( 116 , kslra8.u, 0xffffff80, 0xffffff80, 0x2180ff00, 464); 
TEST_RR_OP( 117 , kslra8.u, 0x0080ff00, 0x0080ff00, 0x003a0000, 468); 
TEST_RR_OP( 118 , kslra8.u, 0xffff8000, 0xffff8000, 0xff840000, 472); 
TEST_RR_OP( 119 , kslra8.u, 0x00c0c016, 0xff80802c, 0x006f710f, 476); 
TEST_RR_OP( 120 , kslra8.u, 0x00c080c0, 0x00ff80ff, 0x00808006, 480); 
TEST_CASE( 121 ,484, x14, 1, rdov x14;);
TEST_CASE( 122 ,488, x14, 1, clrov;);
TEST_CASE( 123 ,492, x14, 0, rdov x14;);
TEST_RR_OP( 124 , kslra8.u, 0x00ff8000, 0x00ff8000, 0xffff8000, 496); 
TEST_RR_OP( 125 , kslra8.u, 0x00c02f2e, 0xff805e5c, 0xe3ed800f, 500); 
TEST_RR_OP( 126 , kslra8.u, 0x0080fc80, 0x00cbffb9, 0x95ffff02, 504); 
TEST_CASE( 127 ,508, x14, 1, rdov x14;);
TEST_CASE( 128 ,512, x14, 1, clrov;);
TEST_CASE( 129 ,516, x14, 0, rdov x14;);
TEST_RR_OP( 130 , kslra8.u, 0x00ffc629, 0x00ffc629, 0x80ffff00, 520); 
TEST_RR_OP( 131 , kslra8.u, 0x00000000, 0x0000ff16, 0x00ff6a08, 524); 
TEST_RR_OP( 132 , kslra8.u, 0x80807780, 0x80807780, 0x00000000, 528); 
TEST_RR_OP( 133 , kslra8.u, 0xc0e0c000, 0x80bf8000, 0xffff800f, 532); 
TEST_RR_OP( 134 , kslra8.u, 0x0000ca00, 0x0000ca00, 0x00809500, 536); 
TEST_RR_OP( 135 , kslra8.u, 0x46808096, 0x46808096, 0x80b78000, 540); 
TEST_RR_OP( 136 , kslra8.u, 0x3e020022, 0x7b030043, 0x80c5ff0f, 544); 
TEST_RR_OP( 137 , kslra8.u, 0xf8f88080, 0xffffcc91, 0xffd20003, 548); 
TEST_CASE( 138 ,552, x14, 1, rdov x14;);
TEST_CASE( 139 ,556, x14, 1, clrov;);
TEST_CASE( 140 ,560, x14, 0, rdov x14;);
TEST_RR_OP( 141 , kslra8.u, 0xf0f000f9, 0x808000c9, 0xffff000d, 564); 
TEST_RR_OP( 142 , kslra8.u, 0xf800c3c0, 0xf0008680, 0x8000800f, 568); 
TEST_RR_OP( 143 , kslra8.u, 0x8000cd91, 0x8000cd91, 0x8000ff00, 572); 
TEST_RR_OP( 144 , kslra8.u, 0x8080ff00, 0x8080ff00, 0x00ff0000, 576); 
TEST_RR_OP( 145 , kslra8.u, 0xffff0080, 0xffff0080, 0xe0b89400, 580); 
TEST_RR_OP( 146 , kslra8.u, 0x00c73e3d, 0xff8d7b7a, 0xff00930f, 584); 
TEST_RR_OP( 147 , kslra8.u, 0xe280ff00, 0xe280ff00, 0xa7ff3600, 588); 
TEST_RR_OP( 148 , kslra8.u, 0x008080ff, 0x008080ff, 0x803aaf00, 592); 
TEST_RR_OP( 149 , kslra8.u, 0x00000100, 0xffff76ff, 0x00ff0008, 596); 
TEST_RR_OP( 150 , kslra8.u, 0x0000c0c0, 0xff008080, 0xff7cff0f, 600); 
TEST_RR_OP( 151 , kslra8.u, 0x00000000, 0x00ffffff, 0x0080800f, 604); 
TEST_RR_OP( 152 , kslra8.u, 0x00ff72ff, 0x00ff72ff, 0x0080ff00, 608); 
TEST_RR_OP( 153 , kslra8.u, 0x80ff00ff, 0x80ff00ff, 0xcefff400, 612); 
TEST_RR_OP( 154 , kslra8.u, 0x80800000, 0xbdae0000, 0x4100ec04, 616); 
TEST_CASE( 155 ,620, x14, 1, rdov x14;);
TEST_CASE( 156 ,624, x14, 1, clrov;);
TEST_CASE( 157 ,628, x14, 0, rdov x14;);
TEST_RR_OP( 158 , kslra8.u, 0x008000ff, 0x008000ff, 0xffff0000, 632); 
TEST_RR_OP( 159 , kslra8.u, 0x00f8c800, 0x00ef90ff, 0x0066800f, 636); 
TEST_RR_OP( 160 , kslra8.u, 0x945f80ff, 0x945f80ff, 0x80ffe800, 640); 
TEST_RR_OP( 161 , kslra8.u, 0x000000c0, 0x00ffff80, 0x0080000f, 644); 
TEST_RR_OP( 162 , kslra8.u, 0xfc000004, 0x80000077, 0x7fff800b, 648); 
TEST_RR_OP( 163 , kslra8.u, 0xc0c00000, 0x8080ff00, 0x8000ff0f, 652); 
TEST_RR_OP( 164 , kslra8.u, 0x998080ff, 0x998080ff, 0xffff0000, 656); 
TEST_RR_OP( 165 , kslra8.u, 0x00003d00, 0x00ff7a00, 0x00ea000f, 660); 
TEST_RR_OP( 166 , kslra8.u, 0x2400c02a, 0x48008053, 0xffff000f, 664); 
TEST_RR_OP( 167 , kslra8.u, 0xc0d40000, 0x80a70000, 0x8000ff0f, 668); 
TEST_RR_OP( 168 , kslra8.u, 0xe3b1ff00, 0xe3b1ff00, 0x3a000000, 672); 
TEST_RR_OP( 169 , kslra8.u, 0xc0cc00c0, 0x8098ff80, 0x8080cf0f, 676); 
TEST_RR_OP( 170 , kslra8.u, 0x00ff0000, 0x00ff0000, 0x9162d500, 680); 
TEST_RR_OP( 171 , kslra8.u, 0x007ff080, 0x0046ff80, 0xff000004, 684); 
TEST_CASE( 172 ,688, x14, 1, rdov x14;);
TEST_CASE( 173 ,692, x14, 1, clrov;);
TEST_CASE( 174 ,696, x14, 0, rdov x14;);
TEST_RR_OP( 175 , kslra8.u, 0xc0000000, 0x80ffff00, 0x0000800f, 700); 
TEST_RR_OP( 176 , kslra8.u, 0x00c0c0c0, 0xff808080, 0xff00800f, 704); 
TEST_RR_OP( 177 , kslra8.u, 0xfb000000, 0xf600ff00, 0x80ca6d0f, 708); 
TEST_RR_OP( 178 , kslra8.u, 0x3bc000fc, 0x7580fff7, 0xff00800f, 712); 
TEST_RR_OP( 179 , kslra8.u, 0x008000ba, 0x008000ba, 0xfb808000, 716); 
TEST_RR_OP( 180 , kslra8.u, 0x8080ff72, 0x8080ff72, 0xbb803900, 720); 
TEST_RR_OP( 181 , kslra8.u, 0x00001f00, 0x00001f00, 0x80170000, 724); 
TEST_RR_OP( 182 , kslra8.u, 0x0000e7c0, 0x00ffce80, 0x8000000f, 728); 
TEST_RR_OP( 183 , kslra8.u, 0x28ff0080, 0x28ff0080, 0xc4ff8300, 732); 
TEST_RR_OP( 184 , kslra8.u, 0x807f8080, 0xff6180ff, 0xc180bb07, 736); 
TEST_CASE( 185 ,740, x14, 1, rdov x14;);
TEST_CASE( 186 ,744, x14, 1, clrov;);
TEST_CASE( 187 ,748, x14, 0, rdov x14;);
TEST_RR_OP( 188 , kslra8.u, 0xffb67200, 0xffb67200, 0xff090000, 752); 
TEST_RR_OP( 189 , kslra8.u, 0x00ff0001, 0x0080ff67, 0x8000c109, 756); 
TEST_RR_OP( 190 , kslra8.u, 0xf0f00000, 0x8080ffff, 0xffc4e10d, 760); 
TEST_RR_OP( 191 , kslra8.u, 0xc0000001, 0x80ffff02, 0x8080ff0f, 764); 
TEST_RR_OP( 192 , kslra8.u, 0x00f200c0, 0xffe4ff80, 0x0000000f, 768); 
TEST_RR_OP( 193 , kslra8.u, 0x00f88080, 0x00ff8080, 0x8b800003, 772); 
TEST_CASE( 194 ,776, x14, 1, rdov x14;);
TEST_CASE( 195 ,780, x14, 1, clrov;);
TEST_CASE( 196 ,784, x14, 0, rdov x14;);
TEST_RR_OP( 197 , kslra8.u, 0xff0080ff, 0xff0080ff, 0x804c8000, 788); 
TEST_RR_OP( 198 , kslra8.u, 0x0000c0ed, 0x000080da, 0x0080000f, 792); 
TEST_RR_OP( 199 , kslra8.u, 0x04c0c000, 0x088080ff, 0x2780d90f, 796); 

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
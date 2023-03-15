# See LICENSE for license details.
#*****************************************************************************
# slli8.S
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

TEST_IMM_OP( 2 , slli8, 0x0000ff00, 0x0000ff00, 0 , 8); 
TEST_IMM_OP( 3 , slli8, 0x408000c0, 0x59be8003, 6 , 12); 
TEST_IMM_OP( 4 , slli8, 0x90f06090, 0xc9ff46b9, 4 , 16); 
TEST_IMM_OP( 5 , slli8, 0x00000000, 0x80000000, 5 , 20); 
TEST_IMM_OP( 6 , slli8, 0x00000000, 0x00800080, 2 , 24); 
TEST_IMM_OP( 7 , slli8, 0x0000d08c, 0x0080b463, 2 , 28); 
TEST_IMM_OP( 8 , slli8, 0xf204005a, 0xf98280ad, 1 , 32); 
TEST_IMM_OP( 9 , slli8, 0x004fa380, 0x004fa380, 0 , 36); 
TEST_IMM_OP( 10 , slli8, 0x000040e0, 0x0080f2ff, 5 , 40); 
TEST_IMM_OP( 11 , slli8, 0xa0fc0000, 0x68ff8080, 2 , 44); 
TEST_IMM_OP( 12 , slli8, 0xf868f000, 0xff0d5e80, 3 , 48); 
TEST_IMM_OP( 13 , slli8, 0xf010b000, 0xffc17b80, 4 , 52); 
TEST_IMM_OP( 14 , slli8, 0x808000ff, 0x808000ff, 0 , 56); 
TEST_IMM_OP( 15 , slli8, 0x00fe0000, 0x00ff8000, 1 , 60); 
TEST_IMM_OP( 16 , slli8, 0x00d60080, 0x00d60080, 0 , 64); 
TEST_IMM_OP( 17 , slli8, 0x00000040, 0x808000cd, 6 , 68); 
TEST_IMM_OP( 18 , slli8, 0x00000000, 0x00800080, 3 , 72); 
TEST_IMM_OP( 19 , slli8, 0x00a00080, 0x009a8038, 4 , 76); 
TEST_IMM_OP( 20 , slli8, 0x00c00040, 0x48b600ba, 5 , 80); 
TEST_IMM_OP( 21 , slli8, 0x00c040c0, 0x80ab95ff, 6 , 84); 
TEST_IMM_OP( 22 , slli8, 0x48f8f8f8, 0x49ffffff, 3 , 88); 
TEST_IMM_OP( 23 , slli8, 0x0010f820, 0x0022ff04, 3 , 92); 
TEST_IMM_OP( 24 , slli8, 0x005a80ff, 0x005a80ff, 0 , 96); 
TEST_IMM_OP( 25 , slli8, 0x0040e080, 0x80a2ffdc, 5 , 100); 
TEST_IMM_OP( 26 , slli8, 0x00000000, 0x80808080, 2 , 104); 
TEST_IMM_OP( 27 , slli8, 0xe0e00000, 0xffff1000, 5 , 108); 
TEST_IMM_OP( 28 , slli8, 0x000000e0, 0x000000ff, 5 , 112); 
TEST_IMM_OP( 29 , slli8, 0x6800a860, 0x2d00752c, 3 , 116); 
TEST_IMM_OP( 30 , slli8, 0x000000e0, 0x800080bf, 5 , 120); 
TEST_IMM_OP( 31 , slli8, 0xe080e0e0, 0xff7cffff, 5 , 124); 
TEST_IMM_OP( 32 , slli8, 0x00000000, 0x00008000, 4 , 128); 
TEST_IMM_OP( 33 , slli8, 0x000000fc, 0x808080ff, 2 , 132); 
TEST_IMM_OP( 34 , slli8, 0x00404000, 0x083ae208, 5 , 136); 
TEST_IMM_OP( 35 , slli8, 0x800000e0, 0x048080ff, 5 , 140); 
TEST_IMM_OP( 36 , slli8, 0x00f850f8, 0x80ff2aff, 3 , 144); 
TEST_IMM_OP( 37 , slli8, 0xfe0094fe, 0xff004aff, 1 , 148); 
TEST_IMM_OP( 38 , slli8, 0x00000000, 0x00008000, 5 , 152); 
TEST_IMM_OP( 39 , slli8, 0xf8000000, 0xff800000, 3 , 156); 
TEST_IMM_OP( 40 , slli8, 0xf8f800c0, 0xffff8038, 3 , 160); 
TEST_IMM_OP( 41 , slli8, 0x80f8f800, 0x70dfff80, 3 , 164); 
TEST_IMM_OP( 42 , slli8, 0xf0003000, 0xff80d3e0, 4 , 168); 
TEST_IMM_OP( 43 , slli8, 0xc0e00000, 0x0eff0028, 5 , 172); 
TEST_IMM_OP( 44 , slli8, 0xf8000000, 0xff000080, 3 , 176); 
TEST_IMM_OP( 45 , slli8, 0x0000a000, 0x0000b400, 3 , 180); 
TEST_IMM_OP( 46 , slli8, 0xff80003e, 0xff80003e, 0 , 184); 
TEST_IMM_OP( 47 , slli8, 0x00c0c0c0, 0x84ff8fff, 6 , 188); 
TEST_IMM_OP( 48 , slli8, 0x0000a000, 0x00806a80, 4 , 192); 
TEST_IMM_OP( 49 , slli8, 0xf000f000, 0xff80ff80, 4 , 196); 
TEST_IMM_OP( 50 , slli8, 0x0060e0e0, 0x807bffff, 5 , 200); 
TEST_IMM_OP( 51 , slli8, 0xb000f0f0, 0x9b00ffff, 4 , 204); 
TEST_IMM_OP( 52 , slli8, 0x00fe00d0, 0x80ff00e8, 1 , 208); 
TEST_IMM_OP( 53 , slli8, 0x00000000, 0x80800080, 2 , 212); 
TEST_IMM_OP( 54 , slli8, 0x00f848c8, 0x80ff8939, 3 , 216); 
TEST_IMM_OP( 55 , slli8, 0xee0000ba, 0xf700005d, 1 , 220); 
TEST_IMM_OP( 56 , slli8, 0xff6980ff, 0xff6980ff, 0 , 224); 
TEST_IMM_OP( 57 , slli8, 0x000000e0, 0x000000ff, 5 , 228); 
TEST_IMM_OP( 58 , slli8, 0x900000c0, 0x398080bc, 4 , 232); 
TEST_IMM_OP( 59 , slli8, 0xfcbc0000, 0xffaf0000, 2 , 236); 
TEST_IMM_OP( 60 , slli8, 0xc0800000, 0xff760000, 6 , 240); 
TEST_IMM_OP( 61 , slli8, 0x00c04000, 0x80ff3d80, 6 , 244); 
TEST_IMM_OP( 62 , slli8, 0xff8080ff, 0xff8080ff, 0 , 248); 
TEST_IMM_OP( 63 , slli8, 0x9280ffff, 0x9280ffff, 0 , 252); 
TEST_IMM_OP( 64 , slli8, 0x800080c0, 0x2a00529f, 6 , 256); 
TEST_IMM_OP( 65 , slli8, 0x00000000, 0x80808080, 1 , 260); 
TEST_IMM_OP( 66 , slli8, 0xc00000c0, 0xa70080ff, 6 , 264); 
TEST_IMM_OP( 67 , slli8, 0x00fefe00, 0x00ffff00, 1 , 268); 
TEST_IMM_OP( 68 , slli8, 0xa400fcfc, 0xe900ffff, 2 , 272); 
TEST_IMM_OP( 69 , slli8, 0x00f0f000, 0x00ffff00, 4 , 276); 
TEST_IMM_OP( 70 , slli8, 0x00004000, 0x00009480, 4 , 280); 
TEST_IMM_OP( 71 , slli8, 0x7000fc84, 0x1c00ffa1, 2 , 284); 
TEST_IMM_OP( 72 , slli8, 0x28240000, 0x0a498000, 2 , 288); 
TEST_IMM_OP( 73 , slli8, 0x34000000, 0x1a008000, 1 , 292); 
TEST_IMM_OP( 74 , slli8, 0xf8080070, 0xff01004e, 3 , 296); 
TEST_IMM_OP( 75 , slli8, 0x0000f838, 0x0080ff87, 3 , 300); 
TEST_IMM_OP( 76 , slli8, 0x8080ff7a, 0x8080ff7a, 0 , 304); 
TEST_IMM_OP( 77 , slli8, 0xffffdc00, 0xffffdc00, 0 , 308); 
TEST_IMM_OP( 78 , slli8, 0x00e00000, 0x80ff00b8, 5 , 312); 
TEST_IMM_OP( 79 , slli8, 0xf80030f8, 0xff80a6ff, 3 , 316); 
TEST_IMM_OP( 80 , slli8, 0xf0f08000, 0xffff5800, 4 , 320); 
TEST_IMM_OP( 81 , slli8, 0x0000f0f0, 0x8000ffff, 4 , 324); 
TEST_IMM_OP( 82 , slli8, 0xfc807cb8, 0xffa01fee, 2 , 328); 
TEST_IMM_OP( 83 , slli8, 0x008000c0, 0x808220ff, 6 , 332); 
TEST_IMM_OP( 84 , slli8, 0xa00000f0, 0x0a8000ff, 4 , 336); 
TEST_IMM_OP( 85 , slli8, 0xf80000f8, 0xff8080ff, 3 , 340); 
TEST_IMM_OP( 86 , slli8, 0x00008e00, 0x8000c780, 1 , 344); 
TEST_IMM_OP( 87 , slli8, 0xf8000000, 0xff008080, 3 , 348); 
TEST_IMM_OP( 88 , slli8, 0x00e00000, 0x00ff8080, 5 , 352); 
TEST_IMM_OP( 89 , slli8, 0x8000c040, 0x0e60ff6d, 6 , 356); 
TEST_IMM_OP( 90 , slli8, 0xe0e000e0, 0xffff00ff, 5 , 360); 
TEST_IMM_OP( 91 , slli8, 0xf800f800, 0xff00ff00, 3 , 364); 
TEST_IMM_OP( 92 , slli8, 0xf800fcfc, 0xfe00ffff, 2 , 368); 
TEST_IMM_OP( 93 , slli8, 0x46008042, 0x2300c0a1, 1 , 372); 
TEST_IMM_OP( 94 , slli8, 0xa000e0b0, 0x8a00de5b, 4 , 376); 
TEST_IMM_OP( 95 , slli8, 0xf0000000, 0xff800080, 4 , 380); 
TEST_IMM_OP( 96 , slli8, 0x000000e2, 0x00000071, 1 , 384); 
TEST_IMM_OP( 97 , slli8, 0x00ae8080, 0x00ae8080, 0 , 388); 
TEST_IMM_OP( 98 , slli8, 0x0000c0f0, 0x8080bcff, 4 , 392); 
TEST_IMM_OP( 99 , slli8, 0x6480e800, 0x6480e800, 0 , 396); 
TEST_IMM_OP( 100 , slli8, 0xe0e00000, 0xff178080, 5 , 400); 
TEST_IMM_OP( 101 , slli8, 0xff8080ff, 0xff8080ff, 0 , 404); 
TEST_IMM_OP( 102 , slli8, 0xff2f00ff, 0xff2f00ff, 0 , 408); 
TEST_IMM_OP( 103 , slli8, 0x00fc0000, 0x00ff8080, 2 , 412); 
TEST_IMM_OP( 104 , slli8, 0x00e0c000, 0x80ffde00, 5 , 416); 
TEST_IMM_OP( 105 , slli8, 0x0060f800, 0x00ccff80, 3 , 420); 
TEST_IMM_OP( 106 , slli8, 0x8080ffc8, 0x8080ffc8, 0 , 424); 
TEST_IMM_OP( 107 , slli8, 0x00000000, 0x80008000, 4 , 428); 
TEST_IMM_OP( 108 , slli8, 0x5cfc00fc, 0x57ff00ff, 2 , 432); 
TEST_IMM_OP( 109 , slli8, 0x005010f0, 0x00f541ff, 4 , 436); 
TEST_IMM_OP( 110 , slli8, 0xf040f000, 0xff44ff80, 4 , 440); 
TEST_IMM_OP( 111 , slli8, 0x40300000, 0x84230000, 4 , 444); 
TEST_IMM_OP( 112 , slli8, 0x00e00000, 0x80ff8000, 5 , 448); 
TEST_IMM_OP( 113 , slli8, 0x00f80038, 0x00ff0067, 3 , 452); 
TEST_IMM_OP( 114 , slli8, 0xffffffff, 0xffffffff, 0 , 456); 
TEST_IMM_OP( 115 , slli8, 0x0000c000, 0xcc805300, 6 , 460); 
TEST_IMM_OP( 116 , slli8, 0xc040c000, 0x639dff60, 6 , 464); 
TEST_IMM_OP( 117 , slli8, 0xfcfc0060, 0xffff8058, 2 , 468); 
TEST_IMM_OP( 118 , slli8, 0x0000c080, 0x8000ff26, 6 , 472); 
TEST_IMM_OP( 119 , slli8, 0x80008000, 0x80008000, 0 , 476); 
TEST_IMM_OP( 120 , slli8, 0x00e0e000, 0x00ffff80, 5 , 480); 
TEST_IMM_OP( 121 , slli8, 0xfc080000, 0xffc20080, 2 , 484); 
TEST_IMM_OP( 122 , slli8, 0x00000000, 0x00008000, 3 , 488); 
TEST_IMM_OP( 123 , slli8, 0xf8001090, 0xff802272, 3 , 492); 
TEST_IMM_OP( 124 , slli8, 0x80e00000, 0x7cff8080, 5 , 496); 
TEST_IMM_OP( 125 , slli8, 0x0000f000, 0x8000ff80, 4 , 500); 
TEST_IMM_OP( 126 , slli8, 0x4000c0c0, 0x7580d3ff, 6 , 504); 
TEST_IMM_OP( 127 , slli8, 0x8000ffff, 0x8000ffff, 0 , 508); 
TEST_IMM_OP( 128 , slli8, 0x00009800, 0x0080cc00, 1 , 512); 
TEST_IMM_OP( 129 , slli8, 0xf0000020, 0xff8000c2, 4 , 516); 
TEST_IMM_OP( 130 , slli8, 0x00000000, 0x008440f8, 6 , 520); 
TEST_IMM_OP( 131 , slli8, 0xff010080, 0xff010080, 0 , 524); 
TEST_IMM_OP( 132 , slli8, 0x60e0e0e0, 0xfbffffff, 5 , 528); 
TEST_IMM_OP( 133 , slli8, 0x480000f8, 0xa98000ff, 3 , 532); 
TEST_IMM_OP( 134 , slli8, 0xf8000000, 0xff008080, 3 , 536); 
TEST_IMM_OP( 135 , slli8, 0x003c8080, 0x003c8080, 0 , 540); 
TEST_IMM_OP( 136 , slli8, 0x808080ff, 0x808080ff, 0 , 544); 
TEST_IMM_OP( 137 , slli8, 0x00000078, 0x008080bc, 1 , 548); 
TEST_IMM_OP( 138 , slli8, 0x00d0f000, 0x004dff80, 4 , 552); 
TEST_IMM_OP( 139 , slli8, 0x8d00ff08, 0x8d00ff08, 0 , 556); 
TEST_IMM_OP( 140 , slli8, 0x0000d000, 0x80001a80, 3 , 560); 
TEST_IMM_OP( 141 , slli8, 0x00000000, 0x00808000, 6 , 564); 
TEST_IMM_OP( 142 , slli8, 0xe0000070, 0x9c0080ce, 3 , 568); 
TEST_IMM_OP( 143 , slli8, 0x0000a0d0, 0x8080aafd, 4 , 572); 
TEST_IMM_OP( 144 , slli8, 0xfe00fe00, 0xff00ff00, 1 , 576); 
TEST_IMM_OP( 145 , slli8, 0xd5f980ff, 0xd5f980ff, 0 , 580); 
TEST_IMM_OP( 146 , slli8, 0xf800f800, 0xff00ff80, 3 , 584); 
TEST_IMM_OP( 147 , slli8, 0x0000ac00, 0x0080d680, 1 , 588); 
TEST_IMM_OP( 148 , slli8, 0xc00000a0, 0x8ea0809d, 5 , 592); 
TEST_IMM_OP( 149 , slli8, 0xf000f000, 0xff80ff00, 4 , 596); 
TEST_IMM_OP( 150 , slli8, 0x00a48080, 0x00a48080, 0 , 600); 
TEST_IMM_OP( 151 , slli8, 0x00000000, 0x80000080, 2 , 604); 
TEST_IMM_OP( 152 , slli8, 0xff000080, 0xff000080, 0 , 608); 
TEST_IMM_OP( 153 , slli8, 0xfcfc0000, 0xffff0080, 2 , 612); 
TEST_IMM_OP( 154 , slli8, 0x00fc0000, 0x00ff0000, 2 , 616); 
TEST_IMM_OP( 155 , slli8, 0x0030a000, 0x80a3aa00, 4 , 620); 
TEST_IMM_OP( 156 , slli8, 0x00fe0050, 0x00ff80a8, 1 , 624); 
TEST_IMM_OP( 157 , slli8, 0x00d8f800, 0x801bff00, 3 , 628); 
TEST_IMM_OP( 158 , slli8, 0x00000000, 0x00000000, 0 , 632); 
TEST_IMM_OP( 159 , slli8, 0x00000000, 0x00008000, 2 , 636); 
TEST_IMM_OP( 160 , slli8, 0x00c000c0, 0x80ff00ff, 6 , 640); 
TEST_IMM_OP( 161 , slli8, 0x8000ff00, 0x8000ff00, 0 , 644); 
TEST_IMM_OP( 162 , slli8, 0xaa000000, 0x55008000, 1 , 648); 
TEST_IMM_OP( 163 , slli8, 0x20a0e0c0, 0x598dff7e, 5 , 652); 
TEST_IMM_OP( 164 , slli8, 0xf0000000, 0xff008080, 4 , 656); 
TEST_IMM_OP( 165 , slli8, 0x00e00040, 0x80ff0062, 5 , 660); 
TEST_IMM_OP( 166 , slli8, 0x00e000a0, 0x00ff8015, 5 , 664); 
TEST_IMM_OP( 167 , slli8, 0xfe3c0058, 0xff9e80ac, 1 , 668); 
TEST_IMM_OP( 168 , slli8, 0x000000c0, 0x808800ff, 6 , 672); 
TEST_IMM_OP( 169 , slli8, 0x7ca83c00, 0x9fea8f80, 2 , 676); 
TEST_IMM_OP( 170 , slli8, 0xc8e80000, 0x72fa0080, 2 , 680); 
TEST_IMM_OP( 171 , slli8, 0x80e0e000, 0x9cffff80, 5 , 684); 
TEST_IMM_OP( 172 , slli8, 0x00f800f8, 0x80ff80ff, 3 , 688); 
TEST_IMM_OP( 173 , slli8, 0x00000080, 0x00f0802a, 6 , 692); 
TEST_IMM_OP( 174 , slli8, 0x00000070, 0x800080b7, 4 , 696); 
TEST_IMM_OP( 175 , slli8, 0xfefe0000, 0xffff8000, 1 , 700); 
TEST_IMM_OP( 176 , slli8, 0x00000000, 0x80000000, 1 , 704); 
TEST_IMM_OP( 177 , slli8, 0x00648080, 0x00648080, 0 , 708); 
TEST_IMM_OP( 178 , slli8, 0xa0000080, 0x2d8080bc, 5 , 712); 
TEST_IMM_OP( 179 , slli8, 0x000000fe, 0x000080ff, 1 , 716); 
TEST_IMM_OP( 180 , slli8, 0x005cb0c8, 0x802e5864, 1 , 720); 
TEST_IMM_OP( 181 , slli8, 0xce0000fe, 0xe70000ff, 1 , 724); 
TEST_IMM_OP( 182 , slli8, 0xcaff4680, 0xcaff4680, 0 , 728); 
TEST_IMM_OP( 183 , slli8, 0x00000000, 0x00808028, 5 , 732); 
TEST_IMM_OP( 184 , slli8, 0xc04000c0, 0xff9900ff, 6 , 736); 
TEST_IMM_OP( 185 , slli8, 0x00fe00de, 0x00ff806f, 1 , 740); 
TEST_IMM_OP( 186 , slli8, 0x18300008, 0xa3268081, 3 , 744); 
TEST_IMM_OP( 187 , slli8, 0x0000c000, 0x00009e80, 5 , 748); 
TEST_IMM_OP( 188 , slli8, 0x00e000e0, 0x00ff80ff, 5 , 752); 
TEST_IMM_OP( 189 , slli8, 0x00f000f0, 0x80ff00ff, 4 , 756); 
TEST_IMM_OP( 190 , slli8, 0x00000000, 0x0000c080, 4 , 760); 
TEST_IMM_OP( 191 , slli8, 0x6cfefe34, 0x36ffff9a, 1 , 764); 
TEST_IMM_OP( 192 , slli8, 0x00000058, 0x808080d6, 2 , 768); 
TEST_IMM_OP( 193 , slli8, 0xfcb40000, 0xff6d0000, 2 , 772); 
TEST_IMM_OP( 194 , slli8, 0xfe0000fe, 0xff0080ff, 1 , 776); 
TEST_IMM_OP( 195 , slli8, 0x00c04000, 0x84ff6d00, 6 , 780); 
TEST_IMM_OP( 196 , slli8, 0x000000fe, 0x000000ff, 1 , 784); 
TEST_IMM_OP( 197 , slli8, 0x77190000, 0x77190000, 0 , 788); 
TEST_IMM_OP( 198 , slli8, 0x00ff00ff, 0x00ff00ff, 0 , 792); 
TEST_IMM_OP( 199 , slli8, 0x00004000, 0x00003d00, 6 , 796); 

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
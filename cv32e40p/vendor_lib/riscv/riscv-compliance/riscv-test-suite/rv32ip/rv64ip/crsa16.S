# See LICENSE for license details.
#*****************************************************************************
# crsa16.S
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

TEST_RR_OP( 2 , crsa16, 0xec860000, 0x0fed8000, 0x80002367, 8); 
TEST_RR_OP( 3 , crsa16, 0x00014ef6, 0x0000a285, 0xac71ffff, 12); 
TEST_RR_OP( 4 , crsa16, 0x87763f77, 0x0776bf77, 0x80008000, 16); 
TEST_RR_OP( 5 , crsa16, 0x0000fffe, 0x8000ffff, 0xffff8000, 20); 
TEST_RR_OP( 6 , crsa16, 0xb9a8ffff, 0xb9a7ffff, 0x0000ffff, 24); 
TEST_RR_OP( 7 , crsa16, 0x86c8ffff, 0x06c8ffff, 0x00008000, 28); 
TEST_RR_OP( 8 , crsa16, 0xb8908000, 0x80008000, 0x0000c770, 32); 
TEST_RR_OP( 9 , crsa16, 0x80008000, 0x00000000, 0x80008000, 36); 
TEST_RR_OP( 10 , crsa16, 0x0000d925, 0x0000d926, 0xffff0000, 40); 
TEST_RR_OP( 11 , crsa16, 0x094b33dd, 0x800033dd, 0x000076b5, 44); 
TEST_RR_OP( 12 , crsa16, 0x480affff, 0x80000000, 0xffff37f6, 48); 
TEST_RR_OP( 13 , crsa16, 0xcd3cffff, 0xcd3b0000, 0xffffffff, 52); 
TEST_RR_OP( 14 , crsa16, 0x80008000, 0x80000000, 0x80000000, 56); 
TEST_RR_OP( 15 , crsa16, 0xffffffff, 0xffffffff, 0x00000000, 60); 
TEST_RR_OP( 16 , crsa16, 0x800097d5, 0x800017d5, 0x80000000, 64); 
TEST_RR_OP( 17 , crsa16, 0x0000b53c, 0x80008000, 0x353c8000, 68); 
TEST_RR_OP( 18 , crsa16, 0x00017fff, 0x00008000, 0xffffffff, 72); 
TEST_RR_OP( 19 , crsa16, 0x9a85fbcc, 0x80000000, 0xfbcce57b, 76); 
TEST_RR_OP( 20 , crsa16, 0xa195a6b2, 0xffff8000, 0x26b25e6a, 80); 
TEST_RR_OP( 21 , crsa16, 0x3be70000, 0xbbe78000, 0x80008000, 84); 
TEST_RR_OP( 22 , crsa16, 0x8001e116, 0x8000adb8, 0x335effff, 88); 
TEST_RR_OP( 23 , crsa16, 0x6954809c, 0x0000809d, 0xffff96ac, 92); 
TEST_RR_OP( 24 , crsa16, 0xec1e834e, 0xec1e834e, 0x00000000, 96); 
TEST_RR_OP( 25 , crsa16, 0x329cffff, 0xb29c0000, 0xffff8000, 100); 
TEST_RR_OP( 26 , crsa16, 0xffffffff, 0xffff0000, 0xffff0000, 104); 
TEST_RR_OP( 27 , crsa16, 0xbdbb8000, 0x00000000, 0x80004245, 108); 
TEST_RR_OP( 28 , crsa16, 0x2b8e8000, 0xab8e0000, 0x80008000, 112); 
TEST_RR_OP( 29 , crsa16, 0xaa440142, 0xaa440000, 0x01420000, 116); 
TEST_RR_OP( 30 , crsa16, 0xae03bb89, 0xae02b0c2, 0x0ac7ffff, 120); 
TEST_RR_OP( 31 , crsa16, 0x0000ffff, 0x00000000, 0xffff0000, 124); 
TEST_RR_OP( 32 , crsa16, 0x80000000, 0x80000000, 0x00000000, 128); 
TEST_RR_OP( 33 , crsa16, 0x0000ffff, 0x0000ffff, 0x00000000, 132); 
TEST_RR_OP( 34 , crsa16, 0x82498000, 0xe9c48000, 0x0000677b, 136); 
TEST_RR_OP( 35 , crsa16, 0x8000a50a, 0x8000a50a, 0x00000000, 140); 
TEST_RR_OP( 36 , crsa16, 0x937dffff, 0x137dffff, 0x00008000, 144); 
TEST_RR_OP( 37 , crsa16, 0x66d44ed2, 0xad4affff, 0x4ed34676, 148); 
TEST_RR_OP( 38 , crsa16, 0x5d1f8000, 0x5d1f0000, 0x80000000, 152); 
TEST_RR_OP( 39 , crsa16, 0xffff7fff, 0xffffffff, 0x80000000, 156); 
TEST_RR_OP( 40 , crsa16, 0x97863804, 0x00008000, 0xb804687a, 160); 
TEST_RR_OP( 41 , crsa16, 0x7fff038b, 0xffff038c, 0xffff8000, 164); 
TEST_RR_OP( 42 , crsa16, 0x4c810000, 0x4c810000, 0x00000000, 168); 
TEST_RR_OP( 43 , crsa16, 0x7fff8000, 0xffff8000, 0x00008000, 172); 
TEST_RR_OP( 44 , crsa16, 0xa29fffff, 0x214affff, 0x00007eab, 176); 
TEST_RR_OP( 45 , crsa16, 0x745cde84, 0x745b0000, 0xde84ffff, 180); 
TEST_RR_OP( 46 , crsa16, 0x800136b3, 0x80000000, 0x36b3ffff, 184); 
TEST_RR_OP( 47 , crsa16, 0xbe49fffe, 0xffffffff, 0xffff41b6, 188); 
TEST_RR_OP( 48 , crsa16, 0x0000241f, 0x80000000, 0x241f8000, 192); 
TEST_RR_OP( 49 , crsa16, 0x7fff7fff, 0xffff8000, 0xffff8000, 196); 
TEST_RR_OP( 50 , crsa16, 0x8000ffff, 0x8000ffff, 0x00000000, 200); 
TEST_RR_OP( 51 , crsa16, 0xcc621e14, 0x00001e14, 0x0000339e, 204); 
TEST_RR_OP( 52 , crsa16, 0x7f7bffff, 0x8000ffff, 0x00000085, 208); 
TEST_RR_OP( 53 , crsa16, 0x50dd4f24, 0x00000000, 0x4f24af23, 212); 
TEST_RR_OP( 54 , crsa16, 0x49aa8000, 0xcf338000, 0x00008589, 216); 
TEST_RR_OP( 55 , crsa16, 0x0000c495, 0x8000ffff, 0xc4968000, 220); 
TEST_RR_OP( 56 , crsa16, 0x415e0000, 0xae5d0000, 0x00006cff, 224); 
TEST_RR_OP( 57 , crsa16, 0x32647fff, 0xeef2ffff, 0x8000bc8e, 228); 
TEST_RR_OP( 58 , crsa16, 0x80007b47, 0x00008000, 0xfb478000, 232); 
TEST_RR_OP( 59 , crsa16, 0x00008000, 0xffff8000, 0x0000ffff, 236); 
TEST_RR_OP( 60 , crsa16, 0xffff3305, 0xffffffff, 0x33060000, 240); 
TEST_RR_OP( 61 , crsa16, 0x474956fa, 0x000056fb, 0xffffb8b7, 244); 
TEST_RR_OP( 62 , crsa16, 0xc3728000, 0xc3720000, 0x80000000, 248); 
TEST_RR_OP( 63 , crsa16, 0xe2d56b01, 0x00000000, 0x6b011d2b, 252); 
TEST_RR_OP( 64 , crsa16, 0x4b707fff, 0xcb70ffff, 0x80008000, 256); 
TEST_RR_OP( 65 , crsa16, 0x0000aa92, 0x8000aa93, 0xffff8000, 260); 
TEST_RR_OP( 66 , crsa16, 0x00007fff, 0x00008000, 0xffff0000, 264); 
TEST_RR_OP( 67 , crsa16, 0x80004fbf, 0x00004fbf, 0x00008000, 268); 
TEST_RR_OP( 68 , crsa16, 0x3a620dfe, 0x847f8000, 0x8dfe4a1d, 272); 
TEST_RR_OP( 69 , crsa16, 0x80007fff, 0x00008000, 0xffff8000, 276); 
TEST_RR_OP( 70 , crsa16, 0xb34afffe, 0xb349ffff, 0xffffffff, 280); 
TEST_RR_OP( 71 , crsa16, 0x7fff6569, 0xffff8000, 0xe5698000, 284); 
TEST_RR_OP( 72 , crsa16, 0x00007934, 0x00008000, 0xf9340000, 288); 
TEST_RR_OP( 73 , crsa16, 0x835a0000, 0x035a8000, 0x80008000, 292); 
TEST_RR_OP( 74 , crsa16, 0x037b8dbc, 0x037a8717, 0x06a5ffff, 296); 
TEST_RR_OP( 75 , crsa16, 0x7fff78ed, 0xffff78ee, 0xffff8000, 300); 
TEST_RR_OP( 76 , crsa16, 0xdf657fff, 0x5f658000, 0xffff8000, 304); 
TEST_RR_OP( 77 , crsa16, 0x91510000, 0xffff0000, 0x00006eae, 308); 
TEST_RR_OP( 78 , crsa16, 0x0000b23d, 0x0000323d, 0x80000000, 312); 
TEST_RR_OP( 79 , crsa16, 0xab6f18b0, 0x2b6f98b0, 0x80008000, 316); 
TEST_RR_OP( 80 , crsa16, 0x82b34fbc, 0x82b24fbd, 0xffffffff, 320); 
TEST_RR_OP( 81 , crsa16, 0x7fff3243, 0xffffffff, 0x32448000, 324); 
TEST_RR_OP( 82 , crsa16, 0x000183d2, 0x000083d2, 0x0000ffff, 328); 
TEST_RR_OP( 83 , crsa16, 0x80008183, 0x00008000, 0x01838000, 332); 
TEST_RR_OP( 84 , crsa16, 0x80000000, 0x80008000, 0x80000000, 336); 
TEST_RR_OP( 85 , crsa16, 0x80010000, 0x80008000, 0x8000ffff, 340); 
TEST_RR_OP( 86 , crsa16, 0x360f2907, 0x360fa907, 0x80000000, 344); 
TEST_RR_OP( 87 , crsa16, 0xeb18fffe, 0xeb18ffff, 0xffff0000, 348); 
TEST_RR_OP( 88 , crsa16, 0x16474921, 0x00004921, 0x0000e9b9, 352); 
TEST_RR_OP( 89 , crsa16, 0x80000000, 0x00000000, 0x00008000, 356); 
TEST_RR_OP( 90 , crsa16, 0xacae7fff, 0x2caeffff, 0x80008000, 360); 
TEST_RR_OP( 91 , crsa16, 0xf8b58efe, 0x0000cf12, 0xbfec074b, 364); 
TEST_RR_OP( 92 , crsa16, 0x00007fff, 0x00008000, 0xffff0000, 368); 
TEST_RR_OP( 93 , crsa16, 0xd2bba278, 0x0000f900, 0xa9782d45, 372); 
TEST_RR_OP( 94 , crsa16, 0x80018000, 0x80000000, 0x8000ffff, 376); 
TEST_RR_OP( 95 , crsa16, 0x0000ffff, 0x00000000, 0xffff0000, 380); 
TEST_RR_OP( 96 , crsa16, 0x0000ffff, 0xffffffff, 0x0000ffff, 384); 
TEST_RR_OP( 97 , crsa16, 0x80016537, 0x80000000, 0x6537ffff, 388); 
TEST_RR_OP( 98 , crsa16, 0x7fffaa50, 0xffffaa50, 0x00008000, 392); 
TEST_RR_OP( 99 , crsa16, 0x00007fff, 0xffffffff, 0x8000ffff, 396); 
TEST_RR_OP( 100 , crsa16, 0x0000cb6d, 0x80004b6d, 0x80008000, 400); 
TEST_RR_OP( 101 , crsa16, 0x33fe11b4, 0xffffffff, 0x11b5cc01, 404); 
TEST_RR_OP( 102 , crsa16, 0xed47180a, 0xed460000, 0x180affff, 408); 
TEST_RR_OP( 103 , crsa16, 0x0000ffff, 0x80000000, 0xffff8000, 412); 
TEST_RR_OP( 104 , crsa16, 0xce71ffff, 0x830fffff, 0x0000b49e, 416); 
TEST_RR_OP( 105 , crsa16, 0x0000457f, 0x00000000, 0x457f0000, 420); 
TEST_RR_OP( 106 , crsa16, 0x7fffd620, 0xffff0d38, 0xc8e88000, 424); 
TEST_RR_OP( 107 , crsa16, 0x3deffffe, 0xffffffff, 0xffffc210, 428); 
TEST_RR_OP( 108 , crsa16, 0x9adc0000, 0x9adb8000, 0x8000ffff, 432); 
TEST_RR_OP( 109 , crsa16, 0x0000bf4e, 0x00008000, 0x3f4e0000, 436); 
TEST_RR_OP( 110 , crsa16, 0x4569cba6, 0x00007681, 0x5525ba97, 440); 
TEST_RR_OP( 111 , crsa16, 0x0001ffff, 0x00000000, 0xffffffff, 444); 
TEST_RR_OP( 112 , crsa16, 0x3f5a8000, 0x80000000, 0x800040a6, 448); 
TEST_RR_OP( 113 , crsa16, 0x00008000, 0xffff8000, 0x0000ffff, 452); 
TEST_RR_OP( 114 , crsa16, 0x00006b60, 0x0000ffff, 0x6b610000, 456); 
TEST_RR_OP( 115 , crsa16, 0x00017fff, 0x0000ffff, 0x8000ffff, 460); 
TEST_RR_OP( 116 , crsa16, 0x00017fff, 0x00008000, 0xffffffff, 464); 
TEST_RR_OP( 117 , crsa16, 0x0000fffe, 0x8000ffff, 0xffff8000, 468); 
TEST_RR_OP( 118 , crsa16, 0xbfc67fff, 0x3fc6ffff, 0x80008000, 472); 
TEST_RR_OP( 119 , crsa16, 0xf0170000, 0xffff0000, 0x00000fe8, 476); 
TEST_RR_OP( 120 , crsa16, 0x00003385, 0x8000e2e2, 0x50a38000, 480); 
TEST_RR_OP( 121 , crsa16, 0x00008000, 0xffff8000, 0x0000ffff, 484); 
TEST_RR_OP( 122 , crsa16, 0x53e8f491, 0xd3e87491, 0x80008000, 488); 
TEST_RR_OP( 123 , crsa16, 0x80009c9f, 0x0000ffff, 0x9ca08000, 492); 
TEST_RR_OP( 124 , crsa16, 0xf1967fff, 0x7196ffff, 0x80008000, 496); 
TEST_RR_OP( 125 , crsa16, 0x0000ffff, 0x0000ffff, 0x00000000, 500); 
TEST_RR_OP( 126 , crsa16, 0x7fff1da7, 0xffff9da7, 0x80008000, 504); 
TEST_RR_OP( 127 , crsa16, 0x0000ffff, 0x0000ffff, 0x00000000, 508); 
TEST_RR_OP( 128 , crsa16, 0x7fff6e15, 0xffff2e00, 0x40158000, 512); 
TEST_RR_OP( 129 , crsa16, 0x8000cc65, 0x00008000, 0x4c658000, 516); 
TEST_RR_OP( 130 , crsa16, 0x80019818, 0x80009818, 0x0000ffff, 520); 
TEST_RR_OP( 131 , crsa16, 0x0000ffff, 0x00000000, 0xffff0000, 524); 
TEST_RR_OP( 132 , crsa16, 0x80008000, 0x80008000, 0x00000000, 528); 
TEST_RR_OP( 133 , crsa16, 0x80008000, 0x80000000, 0x80000000, 532); 
TEST_RR_OP( 134 , crsa16, 0x7fff12ae, 0xffff92ae, 0x80008000, 536); 
TEST_RR_OP( 135 , crsa16, 0x80004d5b, 0x0000ffff, 0x4d5c8000, 540); 
TEST_RR_OP( 136 , crsa16, 0x2ada47f8, 0x8000ffff, 0x47f95526, 544); 
TEST_RR_OP( 137 , crsa16, 0x0000b391, 0x00000000, 0xb3910000, 548); 
TEST_RR_OP( 138 , crsa16, 0xdc6f0000, 0xffff0000, 0x00002390, 552); 
TEST_RR_OP( 139 , crsa16, 0x2118e07c, 0x2117e07d, 0xffffffff, 556); 
TEST_RR_OP( 140 , crsa16, 0x9d48801a, 0xc3ca0000, 0x801a2682, 560); 
TEST_RR_OP( 141 , crsa16, 0xbe8e9759, 0x2aaaffff, 0x975a6c1c, 564); 
TEST_RR_OP( 142 , crsa16, 0x80008000, 0x80000000, 0x80000000, 568); 
TEST_RR_OP( 143 , crsa16, 0x5d4628d5, 0x5d46b6b9, 0x721c0000, 572); 
TEST_RR_OP( 144 , crsa16, 0x8000146f, 0x8000146f, 0x00000000, 576); 
TEST_RR_OP( 145 , crsa16, 0x0000ffff, 0x8000ffff, 0x00008000, 580); 
TEST_RR_OP( 146 , crsa16, 0x0000cf08, 0xffffcf08, 0x0000ffff, 584); 
TEST_RR_OP( 147 , crsa16, 0x00008000, 0x00000000, 0x80000000, 588); 
TEST_RR_OP( 148 , crsa16, 0x04e8ffff, 0x80000000, 0xffff7b18, 592); 
TEST_RR_OP( 149 , crsa16, 0xaa188000, 0x2a180000, 0x80008000, 596); 
TEST_RR_OP( 150 , crsa16, 0x91c6f032, 0xd756f033, 0xffff4590, 600); 
TEST_RR_OP( 151 , crsa16, 0xed312fce, 0xed31ffff, 0x2fcf0000, 604); 
TEST_RR_OP( 152 , crsa16, 0x04f20000, 0x80008000, 0x80007b0e, 608); 
TEST_RR_OP( 153 , crsa16, 0xfffff016, 0xffff7016, 0x80000000, 612); 
TEST_RR_OP( 154 , crsa16, 0x8000ffff, 0x8000ffff, 0x00000000, 616); 
TEST_RR_OP( 155 , crsa16, 0x00017fff, 0x00008000, 0xffffffff, 620); 
TEST_RR_OP( 156 , crsa16, 0x00018000, 0x00000000, 0x8000ffff, 624); 
TEST_RR_OP( 157 , crsa16, 0x00012227, 0x00008000, 0xa227ffff, 628); 
TEST_RR_OP( 158 , crsa16, 0xf8deffff, 0xffff0000, 0xffff0721, 632); 
TEST_RR_OP( 159 , crsa16, 0xffff0000, 0xffff8000, 0x80000000, 636); 
TEST_RR_OP( 160 , crsa16, 0x262d7fff, 0xa62d8000, 0xffff8000, 640); 
TEST_RR_OP( 161 , crsa16, 0x00018000, 0x00008000, 0x0000ffff, 644); 
TEST_RR_OP( 162 , crsa16, 0x0000ffff, 0x8000ffff, 0x00008000, 648); 
TEST_RR_OP( 163 , crsa16, 0xe4cdfffe, 0xc4a1ffff, 0xffffdfd4, 652); 
TEST_RR_OP( 164 , crsa16, 0x80001552, 0x00000873, 0x0cdf8000, 656); 
TEST_RR_OP( 165 , crsa16, 0x102cc4f2, 0x102bbbc1, 0x0931ffff, 660); 
TEST_RR_OP( 166 , crsa16, 0x00002cff, 0x00008000, 0xacff0000, 664); 
TEST_RR_OP( 167 , crsa16, 0xc519ffff, 0x45e90000, 0xffff80d0, 668); 
TEST_RR_OP( 168 , crsa16, 0x0001ffff, 0x0000ffff, 0x0000ffff, 672); 
TEST_RR_OP( 169 , crsa16, 0xdcee8000, 0xdced8000, 0x0000ffff, 676); 
TEST_RR_OP( 170 , crsa16, 0x80010b24, 0x80008b24, 0x8000ffff, 680); 
TEST_RR_OP( 171 , crsa16, 0x7fffb4a6, 0xffff0000, 0xb4a68000, 684); 
TEST_RR_OP( 172 , crsa16, 0x80017fff, 0x80008000, 0xffffffff, 688); 
TEST_RR_OP( 173 , crsa16, 0x00015ce3, 0x0000ffff, 0x5ce4ffff, 692); 
TEST_RR_OP( 174 , crsa16, 0x7fff94fd, 0xffffffff, 0x94fe8000, 696); 
TEST_RR_OP( 175 , crsa16, 0xe945d948, 0x8000d948, 0x000096bb, 700); 
TEST_RR_OP( 176 , crsa16, 0x00018000, 0x00008000, 0x0000ffff, 704); 
TEST_RR_OP( 177 , crsa16, 0x000090f4, 0x800090f5, 0xffff8000, 708); 
TEST_RR_OP( 178 , crsa16, 0x00010000, 0x00008000, 0x8000ffff, 712); 
TEST_RR_OP( 179 , crsa16, 0x80000000, 0x00000000, 0x00008000, 716); 
TEST_RR_OP( 180 , crsa16, 0xbbdb6f56, 0x80008000, 0xef56c425, 720); 
TEST_RR_OP( 181 , crsa16, 0x0001ffff, 0x00000000, 0xffffffff, 724); 
TEST_RR_OP( 182 , crsa16, 0x80008000, 0x00000000, 0x80008000, 728); 
TEST_RR_OP( 183 , crsa16, 0x0001b3b0, 0x00008000, 0x33b0ffff, 732); 
TEST_RR_OP( 184 , crsa16, 0x800127ed, 0x800027ed, 0x0000ffff, 736); 
TEST_RR_OP( 185 , crsa16, 0x0000ffff, 0xffff0000, 0xffffffff, 740); 
TEST_RR_OP( 186 , crsa16, 0xffff8eb2, 0xffff8000, 0x0eb20000, 744); 
TEST_RR_OP( 187 , crsa16, 0xeb028000, 0x80008000, 0x000094fe, 748); 
TEST_RR_OP( 188 , crsa16, 0x9bd7f485, 0x00000000, 0xf4856429, 752); 
TEST_RR_OP( 189 , crsa16, 0x8000ffff, 0x8000ffff, 0x00000000, 756); 
TEST_RR_OP( 190 , crsa16, 0x034d7fff, 0x034c8000, 0xffffffff, 760); 
TEST_RR_OP( 191 , crsa16, 0x7fffffff, 0xffffffff, 0x00008000, 764); 
TEST_RR_OP( 192 , crsa16, 0x2fa99d96, 0x80000000, 0x9d965057, 768); 
TEST_RR_OP( 193 , crsa16, 0x72cb7fff, 0x72caffff, 0x8000ffff, 772); 
TEST_RR_OP( 194 , crsa16, 0x318a022d, 0x2c668000, 0x822dfadc, 776); 
TEST_RR_OP( 195 , crsa16, 0x8000ffff, 0x80000000, 0xffff0000, 780); 
TEST_RR_OP( 196 , crsa16, 0xe604f99c, 0x80005146, 0xa85699fc, 784); 
TEST_RR_OP( 197 , crsa16, 0xdcb3ffff, 0xffffffff, 0x0000234c, 788); 
TEST_RR_OP( 198 , crsa16, 0x80010000, 0x80000000, 0x0000ffff, 792); 
TEST_RR_OP( 199 , crsa16, 0x00008000, 0x00000000, 0x80000000, 796); 

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
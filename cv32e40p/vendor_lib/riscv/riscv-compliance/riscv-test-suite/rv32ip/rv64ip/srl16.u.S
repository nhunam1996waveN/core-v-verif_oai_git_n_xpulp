# See LICENSE for license details.
#*****************************************************************************
# srl16.u.S
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

TEST_RR_OP( 2 , srl16.u, 0xfabde298, 0xfabde298, 0xffff8000, 8); 
TEST_RR_OP( 3 , srl16.u, 0x00010001, 0x8000998a, 0x8000ffff, 12); 
TEST_RR_OP( 4 , srl16.u, 0x00008000, 0x00008000, 0x80008000, 16); 
TEST_RR_OP( 5 , srl16.u, 0x00800000, 0x80000000, 0x7bb9c2a8, 20); 
TEST_RR_OP( 6 , srl16.u, 0x00000000, 0x00000000, 0xffffdfc9, 24); 
TEST_RR_OP( 7 , srl16.u, 0x00000001, 0x1d134242, 0x2d97ffff, 28); 
TEST_RR_OP( 8 , srl16.u, 0x00000001, 0x00008000, 0x0000ffff, 32); 
TEST_RR_OP( 9 , srl16.u, 0xffff71ff, 0xffff71ff, 0xffff0000, 36); 
TEST_RR_OP( 10 , srl16.u, 0xffff8000, 0xffff8000, 0x80008000, 40); 
TEST_RR_OP( 11 , srl16.u, 0xa887ffff, 0xa887ffff, 0xa79c0000, 44); 
TEST_RR_OP( 12 , srl16.u, 0xffff0000, 0xffff0000, 0x80000000, 48); 
TEST_RR_OP( 13 , srl16.u, 0x00080005, 0xffffa94e, 0x0000780d, 52); 
TEST_RR_OP( 14 , srl16.u, 0x80000388, 0x80000388, 0x80008000, 56); 
TEST_RR_OP( 15 , srl16.u, 0xffff4b63, 0xffff4b63, 0x00000000, 60); 
TEST_RR_OP( 16 , srl16.u, 0x0000ffff, 0x0000ffff, 0xffffad50, 64); 
TEST_RR_OP( 17 , srl16.u, 0x80008000, 0x80008000, 0x63fd0000, 68); 
TEST_RR_OP( 18 , srl16.u, 0x00000001, 0x0000b623, 0x8000ffff, 72); 
TEST_RR_OP( 19 , srl16.u, 0x86978000, 0x86978000, 0x00008000, 76); 
TEST_RR_OP( 20 , srl16.u, 0x5c380000, 0x5c380000, 0x00008000, 80); 
TEST_RR_OP( 21 , srl16.u, 0xffff0000, 0xffff0000, 0xffff8000, 84); 
TEST_RR_OP( 22 , srl16.u, 0x80008000, 0x80008000, 0xb64d8000, 88); 
TEST_RR_OP( 23 , srl16.u, 0xbfc27a43, 0xbfc27a43, 0xffff0000, 92); 
TEST_RR_OP( 24 , srl16.u, 0x8000bfdb, 0x8000bfdb, 0x80008000, 96); 
TEST_RR_OP( 25 , srl16.u, 0xffff9db2, 0xffff9db2, 0x80000000, 100); 
TEST_RR_OP( 26 , srl16.u, 0x00000100, 0x0000ffff, 0x36ee5508, 104); 
TEST_RR_OP( 27 , srl16.u, 0x693e8000, 0x693e8000, 0x00008000, 108); 
TEST_RR_OP( 28 , srl16.u, 0x40000000, 0xffff0000, 0xe748f802, 112); 
TEST_RR_OP( 29 , srl16.u, 0x84cb0000, 0x84cb0000, 0x80008000, 116); 
TEST_RR_OP( 30 , srl16.u, 0xffff0000, 0xffff0000, 0x80000000, 120); 
TEST_RR_OP( 31 , srl16.u, 0x00000002, 0x0000ffff, 0x8000ffff, 124); 
TEST_RR_OP( 32 , srl16.u, 0x00000800, 0x00008000, 0x00001a44, 128); 
TEST_RR_OP( 33 , srl16.u, 0x00020001, 0xffff4153, 0x59a9ffff, 132); 
TEST_RR_OP( 34 , srl16.u, 0x00020001, 0xffff5bcb, 0x0000ffff, 136); 
TEST_RR_OP( 35 , srl16.u, 0x80001f1f, 0x80001f1f, 0x00008000, 140); 
TEST_RR_OP( 36 , srl16.u, 0x00010002, 0x5a17ffff, 0x0000ffff, 144); 
TEST_RR_OP( 37 , srl16.u, 0x00010001, 0x80008000, 0xffffffff, 148); 
TEST_RR_OP( 38 , srl16.u, 0x00020000, 0xffff0000, 0x0000ffff, 152); 
TEST_RR_OP( 39 , srl16.u, 0x00000001, 0x00008000, 0x5d35ffff, 156); 
TEST_RR_OP( 40 , srl16.u, 0xffffffff, 0xffffffff, 0xffff0000, 160); 
TEST_RR_OP( 41 , srl16.u, 0xffff8000, 0xffff8000, 0x80000000, 164); 
TEST_RR_OP( 42 , srl16.u, 0x10000000, 0x80000000, 0xe1fe6ed3, 168); 
TEST_RR_OP( 43 , srl16.u, 0x80000000, 0x80000000, 0x80000000, 172); 
TEST_RR_OP( 44 , srl16.u, 0xffff8000, 0xffff8000, 0x80008000, 176); 
TEST_RR_OP( 45 , srl16.u, 0x8000a637, 0x8000a637, 0xc57e8000, 180); 
TEST_RR_OP( 46 , srl16.u, 0x00800080, 0xffffffff, 0x80002df9, 184); 
TEST_RR_OP( 47 , srl16.u, 0x8000ffff, 0x8000ffff, 0xffff8000, 188); 
TEST_RR_OP( 48 , srl16.u, 0x00000002, 0x0000ffff, 0x8000ffff, 192); 
TEST_RR_OP( 49 , srl16.u, 0x80000000, 0x80000000, 0x80008000, 196); 
TEST_RR_OP( 50 , srl16.u, 0x80008000, 0x80008000, 0x80000000, 200); 
TEST_RR_OP( 51 , srl16.u, 0x00000000, 0x00000000, 0x00007b99, 204); 
TEST_RR_OP( 52 , srl16.u, 0x00000000, 0x00000000, 0x00000000, 208); 
TEST_RR_OP( 53 , srl16.u, 0x00005338, 0x00005338, 0xffff0000, 212); 
TEST_RR_OP( 54 , srl16.u, 0x80002611, 0xffff4c22, 0x80008261, 216); 
TEST_RR_OP( 55 , srl16.u, 0x00008000, 0x00008000, 0xba1a0000, 220); 
TEST_RR_OP( 56 , srl16.u, 0xffff8000, 0xffff8000, 0xffff8000, 224); 
TEST_RR_OP( 57 , srl16.u, 0x00000400, 0x0000ffff, 0x0000c3b6, 228); 
TEST_RR_OP( 58 , srl16.u, 0x00010000, 0x80000000, 0x8000ffff, 232); 
TEST_RR_OP( 59 , srl16.u, 0x80000000, 0x80000000, 0xffff0000, 236); 
TEST_RR_OP( 60 , srl16.u, 0x00008000, 0x00008000, 0xffff8000, 240); 
TEST_RR_OP( 61 , srl16.u, 0x66788000, 0x66788000, 0x00008000, 244); 
TEST_RR_OP( 62 , srl16.u, 0x08001000, 0x8000ffff, 0xcae47f54, 248); 
TEST_RR_OP( 63 , srl16.u, 0x0000ffff, 0x0000ffff, 0x80000000, 252); 
TEST_RR_OP( 64 , srl16.u, 0xe2317d80, 0xe2317d80, 0x00000000, 256); 
TEST_RR_OP( 65 , srl16.u, 0x00020000, 0xffff0000, 0x8000ffff, 260); 
TEST_RR_OP( 66 , srl16.u, 0x00020001, 0xffff8000, 0x0000ffff, 264); 
TEST_RR_OP( 67 , srl16.u, 0x0000d74c, 0x0000d74c, 0x80008000, 268); 
TEST_RR_OP( 68 , srl16.u, 0xfbe3ffff, 0xfbe3ffff, 0x00000000, 272); 
TEST_RR_OP( 69 , srl16.u, 0x00000000, 0x00000000, 0x8000ffff, 276); 
TEST_RR_OP( 70 , srl16.u, 0x00000040, 0x0000ffff, 0xffff41aa, 280); 
TEST_RR_OP( 71 , srl16.u, 0x00000000, 0x00000000, 0xffff0000, 284); 
TEST_RR_OP( 72 , srl16.u, 0x000094d9, 0x000094d9, 0xffff8000, 288); 
TEST_RR_OP( 73 , srl16.u, 0x00400000, 0xffff0000, 0xffffb47a, 292); 
TEST_RR_OP( 74 , srl16.u, 0xe6198000, 0xe6198000, 0x80000000, 296); 
TEST_RR_OP( 75 , srl16.u, 0xffff0000, 0xffff0000, 0xe9108000, 300); 
TEST_RR_OP( 76 , srl16.u, 0x00000000, 0x02860000, 0x1788ffff, 304); 
TEST_RR_OP( 77 , srl16.u, 0x8000870d, 0x8000870d, 0x00008000, 308); 
TEST_RR_OP( 78 , srl16.u, 0x4d950000, 0x4d950000, 0x00008000, 312); 
TEST_RR_OP( 79 , srl16.u, 0x80000000, 0x80000000, 0x187b0000, 316); 
TEST_RR_OP( 80 , srl16.u, 0x00000800, 0x0000ffff, 0x000076b5, 320); 
TEST_RR_OP( 81 , srl16.u, 0x00000000, 0x00000000, 0x80004803, 324); 
TEST_RR_OP( 82 , srl16.u, 0x08000800, 0xffffffff, 0xffff7da5, 328); 
TEST_RR_OP( 83 , srl16.u, 0x00000001, 0x00006f53, 0xffffffff, 332); 
TEST_RR_OP( 84 , srl16.u, 0xffffab95, 0xffffab95, 0xadba0000, 336); 
TEST_RR_OP( 85 , srl16.u, 0x00020002, 0xfffff605, 0x8000ffff, 340); 
TEST_RR_OP( 86 , srl16.u, 0xffff0000, 0xffff0000, 0xffff0000, 344); 
TEST_RR_OP( 87 , srl16.u, 0x26664ab4, 0x26664ab4, 0x00008000, 348); 
TEST_RR_OP( 88 , srl16.u, 0xdfbbffff, 0xdfbbffff, 0x00000000, 352); 
TEST_RR_OP( 89 , srl16.u, 0x4b8a8000, 0x4b8a8000, 0xa4988000, 356); 
TEST_RR_OP( 90 , srl16.u, 0xffffffff, 0xffffffff, 0x00008000, 360); 
TEST_RR_OP( 91 , srl16.u, 0x00000004, 0x0000ffff, 0xffff42ee, 364); 
TEST_RR_OP( 92 , srl16.u, 0xffff8000, 0xffff8000, 0x80008000, 368); 
TEST_RR_OP( 93 , srl16.u, 0xffffffff, 0xffffffff, 0x999b8000, 372); 
TEST_RR_OP( 94 , srl16.u, 0x00000400, 0x00008000, 0xffff2ed5, 376); 
TEST_RR_OP( 95 , srl16.u, 0xc4bf0000, 0xc4bf0000, 0xffff8000, 380); 
TEST_RR_OP( 96 , srl16.u, 0x00000c44, 0x00000c44, 0xf2fa8000, 384); 
TEST_RR_OP( 97 , srl16.u, 0x80000000, 0x80000000, 0xe5680000, 388); 
TEST_RR_OP( 98 , srl16.u, 0x80000000, 0x80000000, 0x80000000, 392); 
TEST_RR_OP( 99 , srl16.u, 0x000c0010, 0xb862ffff, 0x8000c44c, 396); 
TEST_RR_OP( 100 , srl16.u, 0x8000ffff, 0x8000ffff, 0xffff0000, 400); 
TEST_RR_OP( 101 , srl16.u, 0x00020002, 0xffffffff, 0xbd6cffff, 404); 
TEST_RR_OP( 102 , srl16.u, 0x0000a559, 0x0000a559, 0xffff8000, 408); 
TEST_RR_OP( 103 , srl16.u, 0x00020001, 0xffff9453, 0xffff689f, 412); 
TEST_RR_OP( 104 , srl16.u, 0x45310000, 0x45310000, 0x80008000, 416); 
TEST_RR_OP( 105 , srl16.u, 0xffff0000, 0xffff0000, 0x4a660000, 420); 
TEST_RR_OP( 106 , srl16.u, 0x00000000, 0x00000000, 0x7117ffff, 424); 
TEST_RR_OP( 107 , srl16.u, 0x00020001, 0xffff8000, 0x0000ffff, 428); 
TEST_RR_OP( 108 , srl16.u, 0x00020002, 0xffffc1ee, 0x8000ffff, 432); 
TEST_RR_OP( 109 , srl16.u, 0xffff8a73, 0xffff8a73, 0xc1a512a0, 436); 
TEST_RR_OP( 110 , srl16.u, 0x00000000, 0x00000000, 0x8000790a, 440); 
TEST_RR_OP( 111 , srl16.u, 0x00000000, 0x00000000, 0x00002cf8, 444); 
TEST_RR_OP( 112 , srl16.u, 0x00010002, 0x8000ffff, 0x0000ffff, 448); 
TEST_RR_OP( 113 , srl16.u, 0xffffffff, 0xffffffff, 0xa3430000, 452); 
TEST_RR_OP( 114 , srl16.u, 0x00000002, 0x0000c40f, 0x9074ffff, 456); 
TEST_RR_OP( 115 , srl16.u, 0x00008000, 0x00008000, 0xe0698000, 460); 
TEST_RR_OP( 116 , srl16.u, 0x80009786, 0x80009786, 0x80000000, 464); 
TEST_RR_OP( 117 , srl16.u, 0x000065c4, 0x000065c4, 0xffff8000, 468); 
TEST_RR_OP( 118 , srl16.u, 0xffff0000, 0xffff0000, 0x00008000, 472); 
TEST_RR_OP( 119 , srl16.u, 0x800080d6, 0x800080d6, 0xffff0000, 476); 
TEST_RR_OP( 120 , srl16.u, 0x00020001, 0xffff74b0, 0xffffffff, 480); 
TEST_RR_OP( 121 , srl16.u, 0x8000cf2e, 0x8000cf2e, 0x00008000, 484); 
TEST_RR_OP( 122 , srl16.u, 0xa60bffff, 0xa60bffff, 0x00000000, 488); 
TEST_RR_OP( 123 , srl16.u, 0x00400000, 0x80000000, 0x80009a59, 492); 
TEST_RR_OP( 124 , srl16.u, 0x02000100, 0xffff8000, 0x00008ed7, 496); 
TEST_RR_OP( 125 , srl16.u, 0x23842000, 0x8e108000, 0x00007772, 500); 
TEST_RR_OP( 126 , srl16.u, 0xffff8000, 0xffff8000, 0x00008000, 504); 
TEST_RR_OP( 127 , srl16.u, 0x80008000, 0xffffffff, 0x000039a1, 508); 
TEST_RR_OP( 128 , srl16.u, 0x0000ffff, 0x0000ffff, 0xffff8000, 512); 
TEST_RR_OP( 129 , srl16.u, 0x07102000, 0x3881ffff, 0x8000fb53, 516); 
TEST_RR_OP( 130 , srl16.u, 0x00000000, 0x00000000, 0xffff0000, 520); 
TEST_RR_OP( 131 , srl16.u, 0x00001463, 0x00001463, 0xffff8000, 524); 
TEST_RR_OP( 132 , srl16.u, 0x191b0000, 0x191b0000, 0x80000000, 528); 
TEST_RR_OP( 133 , srl16.u, 0x00020002, 0xffffffff, 0x37e7ffff, 532); 
TEST_RR_OP( 134 , srl16.u, 0x00010002, 0xbd3fffff, 0xffffffff, 536); 
TEST_RR_OP( 135 , srl16.u, 0x00008000, 0x00008000, 0xd5310000, 540); 
TEST_RR_OP( 136 , srl16.u, 0xffff8000, 0xffff8000, 0x80008000, 544); 
TEST_RR_OP( 137 , srl16.u, 0x08000000, 0x80000000, 0xffffa5f4, 548); 
TEST_RR_OP( 138 , srl16.u, 0x0000ffff, 0x0000ffff, 0x00000000, 552); 
TEST_RR_OP( 139 , srl16.u, 0x00000000, 0x00000000, 0xffffffff, 556); 
TEST_RR_OP( 140 , srl16.u, 0x80006270, 0x80006270, 0xffff0000, 560); 
TEST_RR_OP( 141 , srl16.u, 0x00000d4a, 0x00000d4a, 0xffff0000, 564); 
TEST_RR_OP( 142 , srl16.u, 0x30a28000, 0x30a28000, 0x4b0e0000, 568); 
TEST_RR_OP( 143 , srl16.u, 0x0000ffff, 0x0000ffff, 0x00008000, 572); 
TEST_RR_OP( 144 , srl16.u, 0x00000002, 0x0000ccac, 0x4ea3ffff, 576); 
TEST_RR_OP( 145 , srl16.u, 0x060303d8, 0xc0577b00, 0x8000e0a5, 580); 
TEST_RR_OP( 146 , srl16.u, 0x8000ffff, 0x8000ffff, 0x8000b960, 584); 
TEST_RR_OP( 147 , srl16.u, 0x006f0080, 0x6efd8000, 0x00005678, 588); 
TEST_RR_OP( 148 , srl16.u, 0x00000001, 0x000055b7, 0x0000ffff, 592); 
TEST_RR_OP( 149 , srl16.u, 0x0f334000, 0x3ccaffff, 0x800067b2, 596); 
TEST_RR_OP( 150 , srl16.u, 0x00020002, 0xcb0effff, 0x8000ffff, 600); 
TEST_RR_OP( 151 , srl16.u, 0x00008000, 0x00008000, 0xe30e8000, 604); 
TEST_RR_OP( 152 , srl16.u, 0x7e5fb75e, 0x7e5fb75e, 0x80008000, 608); 
TEST_RR_OP( 153 , srl16.u, 0xffff8000, 0xffff8000, 0x00000000, 612); 
TEST_RR_OP( 154 , srl16.u, 0x00000800, 0x00008000, 0x0000cbc4, 616); 
TEST_RR_OP( 155 , srl16.u, 0x00010001, 0x80004dbd, 0xffffffff, 620); 
TEST_RR_OP( 156 , srl16.u, 0x80000000, 0x80000000, 0x80000000, 624); 
TEST_RR_OP( 157 , srl16.u, 0x00020001, 0xffffaacb, 0x8000ffff, 628); 
TEST_RR_OP( 158 , srl16.u, 0xffff8000, 0xffff8000, 0xffff8000, 632); 
TEST_RR_OP( 159 , srl16.u, 0x20000b45, 0xffff5a2a, 0x8000c4d3, 636); 
TEST_RR_OP( 160 , srl16.u, 0x00020002, 0xd17fffff, 0xffffffff, 640); 
TEST_RR_OP( 161 , srl16.u, 0x00010002, 0x8000ffff, 0xffffffff, 644); 
TEST_RR_OP( 162 , srl16.u, 0x01c30f0c, 0x01c30f0c, 0x00000000, 648); 
TEST_RR_OP( 163 , srl16.u, 0x0000ffff, 0x0000ffff, 0xffff0000, 652); 
TEST_RR_OP( 164 , srl16.u, 0x008000f2, 0x8000f27d, 0x80000d58, 656); 
TEST_RR_OP( 165 , srl16.u, 0x00060004, 0xbd858000, 0x79919a2d, 660); 
TEST_RR_OP( 166 , srl16.u, 0x00000002, 0x000034c4, 0xffff82cd, 664); 
TEST_RR_OP( 167 , srl16.u, 0x00000001, 0x00008000, 0xfffff62f, 668); 
TEST_RR_OP( 168 , srl16.u, 0x00010000, 0x80000000, 0xffffffff, 672); 
TEST_RR_OP( 169 , srl16.u, 0x00000001, 0x00008000, 0x8000ffff, 676); 
TEST_RR_OP( 170 , srl16.u, 0x00040020, 0x0e6d8000, 0x80007eda, 680); 
TEST_RR_OP( 171 , srl16.u, 0x80008000, 0x80008000, 0x0ef00000, 684); 
TEST_RR_OP( 172 , srl16.u, 0x0a8fe201, 0x0a8fe201, 0x80000000, 688); 
TEST_RR_OP( 173 , srl16.u, 0x8000ffff, 0x8000ffff, 0x80000000, 692); 
TEST_RR_OP( 174 , srl16.u, 0x00020001, 0xcd9f8000, 0x0000ffff, 696); 
TEST_RR_OP( 175 , srl16.u, 0x0000073c, 0x0000073c, 0xffff8000, 700); 
TEST_RR_OP( 176 , srl16.u, 0x1a150000, 0xd0a60000, 0x8000f093, 704); 
TEST_RR_OP( 177 , srl16.u, 0xb3e40000, 0xb3e40000, 0x4fd20000, 708); 
TEST_RR_OP( 178 , srl16.u, 0xffffffff, 0xffffffff, 0xffff0000, 712); 
TEST_RR_OP( 179 , srl16.u, 0x00010002, 0x8000ffff, 0x0000ffff, 716); 
TEST_RR_OP( 180 , srl16.u, 0xffff8000, 0xffff8000, 0x80008000, 720); 
TEST_RR_OP( 181 , srl16.u, 0x00000000, 0x00003c1a, 0x2565ffff, 724); 
TEST_RR_OP( 182 , srl16.u, 0x00020001, 0xe2778000, 0x8000ffff, 728); 
TEST_RR_OP( 183 , srl16.u, 0x00010001, 0x80007f18, 0x8000ffff, 732); 
TEST_RR_OP( 184 , srl16.u, 0x00010002, 0x62f1ffff, 0xffffeccf, 736); 
TEST_RR_OP( 185 , srl16.u, 0xffff8000, 0xffff8000, 0x80000000, 740); 
TEST_RR_OP( 186 , srl16.u, 0x40000000, 0x80000000, 0x892fb471, 744); 
TEST_RR_OP( 187 , srl16.u, 0x53660000, 0x53660000, 0x00008000, 748); 
TEST_RR_OP( 188 , srl16.u, 0x00010001, 0x80008000, 0x8000ffff, 752); 
TEST_RR_OP( 189 , srl16.u, 0x139e8000, 0x139e8000, 0xffff8000, 756); 
TEST_RR_OP( 190 , srl16.u, 0x00010001, 0x80008000, 0xec52ffff, 760); 
TEST_RR_OP( 191 , srl16.u, 0x80008000, 0x80008000, 0x00000000, 764); 
TEST_RR_OP( 192 , srl16.u, 0x80008000, 0x80008000, 0x80008000, 768); 
TEST_RR_OP( 193 , srl16.u, 0xffff3fe5, 0xffff3fe5, 0xffff0000, 772); 
TEST_RR_OP( 194 , srl16.u, 0xffffffff, 0xffffffff, 0x00000000, 776); 
TEST_RR_OP( 195 , srl16.u, 0xc34e8000, 0xc34e8000, 0xffff0000, 780); 
TEST_RR_OP( 196 , srl16.u, 0x00000020, 0x00008000, 0x8000f04a, 784); 
TEST_RR_OP( 197 , srl16.u, 0xffffffff, 0xffffffff, 0x653c0000, 788); 
TEST_RR_OP( 198 , srl16.u, 0x3cdbcf97, 0x3cdbcf97, 0x80000000, 792); 
TEST_RR_OP( 199 , srl16.u, 0x00010002, 0x8000ffff, 0xccafffff, 796); 

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
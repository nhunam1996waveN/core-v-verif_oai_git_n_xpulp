# See LICENSE for license details.
#*****************************************************************************
# scmplt8.S
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

TEST_RR_OP( 2 , scmplt8, 0xff00ffff, 0xff008080, 0x00ff00ff, 8); 
TEST_RR_OP( 3 , scmplt8, 0xff00ff00, 0x8a65ff4a, 0x00d000ff, 12); 
TEST_RR_OP( 4 , scmplt8, 0x0000ff00, 0x00808080, 0xff80df80, 16); 
TEST_RR_OP( 5 , scmplt8, 0x00ffff00, 0x00808700, 0x80000000, 20); 
TEST_RR_OP( 6 , scmplt8, 0x00000000, 0xffdc3409, 0xff8000cc, 24); 
TEST_RR_OP( 7 , scmplt8, 0x00ffff00, 0xff800000, 0x80277aff, 28); 
TEST_RR_OP( 8 , scmplt8, 0xffff0000, 0x80ff0099, 0x00798080, 32); 
TEST_RR_OP( 9 , scmplt8, 0x00000000, 0xff80e100, 0x8c808080, 36); 
TEST_RR_OP( 10 , scmplt8, 0xffff00ff, 0x8a893680, 0x7900ffab, 40); 
TEST_RR_OP( 11 , scmplt8, 0xff0000ff, 0x800000a7, 0x008000ff, 44); 
TEST_RR_OP( 12 , scmplt8, 0xffffffff, 0x80800080, 0xff002eff, 48); 
TEST_RR_OP( 13 , scmplt8, 0x000000ff, 0x55001f80, 0xff800000, 52); 
TEST_RR_OP( 14 , scmplt8, 0xff000000, 0x00808000, 0x568080ff, 56); 
TEST_RR_OP( 15 , scmplt8, 0x00ffffff, 0x00ffff80, 0x800000ff, 60); 
TEST_RR_OP( 16 , scmplt8, 0x00ff0000, 0xff800000, 0x80ffff80, 64); 
TEST_RR_OP( 17 , scmplt8, 0xff0000ff, 0xff3300ff, 0x29f3ff4a, 68); 
TEST_RR_OP( 18 , scmplt8, 0x0000ff00, 0xff0080cb, 0xff9dff80, 72); 
TEST_RR_OP( 19 , scmplt8, 0xff00ff00, 0xfa808000, 0x0080ecff, 76); 
TEST_RR_OP( 20 , scmplt8, 0xffff0000, 0x80bb00ff, 0x53ff0080, 80); 
TEST_RR_OP( 21 , scmplt8, 0xffff0000, 0xff807001, 0x00fffa80, 84); 
TEST_RR_OP( 22 , scmplt8, 0xffffff00, 0xff008000, 0x0040ed8c, 88); 
TEST_RR_OP( 23 , scmplt8, 0x0000ff00, 0x80798066, 0x802fb200, 92); 
TEST_RR_OP( 24 , scmplt8, 0x000000ff, 0x00ff0094, 0x80e8ff00, 96); 
TEST_RR_OP( 25 , scmplt8, 0xff000000, 0xf6ff00ff, 0xff80bcff, 100); 
TEST_RR_OP( 26 , scmplt8, 0x00000000, 0xff80ff80, 0x8080ff80, 104); 
TEST_RR_OP( 27 , scmplt8, 0x00000000, 0x00240080, 0xff008080, 108); 
TEST_RR_OP( 28 , scmplt8, 0xff00ffff, 0x800080d3, 0x8bffdce6, 112); 
TEST_RR_OP( 29 , scmplt8, 0x00ff0000, 0x53ffff00, 0xff48ffff, 116); 
TEST_RR_OP( 30 , scmplt8, 0xffff0000, 0xff800052, 0x0bffffff, 120); 
TEST_RR_OP( 31 , scmplt8, 0xffff0000, 0x80800000, 0x00ff80ff, 124); 
TEST_RR_OP( 32 , scmplt8, 0x0000ff00, 0x00ff0000, 0x00804ff7, 128); 
TEST_RR_OP( 33 , scmplt8, 0xff000000, 0x80000000, 0xff80ff80, 132); 
TEST_RR_OP( 34 , scmplt8, 0xffff0000, 0xffff7f1b, 0x0f000080, 136); 
TEST_RR_OP( 35 , scmplt8, 0xffff00ff, 0x00d359ff, 0x7ee8800a, 140); 
TEST_RR_OP( 36 , scmplt8, 0x00000000, 0x005bff00, 0xf480ff00, 144); 
TEST_RR_OP( 37 , scmplt8, 0x00ff00ff, 0xff80ff80, 0x80e680ff, 148); 
TEST_RR_OP( 38 , scmplt8, 0xffff0000, 0x80edff5e, 0xffff8000, 152); 
TEST_RR_OP( 39 , scmplt8, 0x0000ffff, 0x44da8080, 0xff803900, 156); 
TEST_RR_OP( 40 , scmplt8, 0xff0000ff, 0xffff7b80, 0x00ff7300, 160); 
TEST_RR_OP( 41 , scmplt8, 0x00ffff00, 0x1980ffff, 0xc00000ff, 164); 
TEST_RR_OP( 42 , scmplt8, 0x0000ff00, 0x007d80ff, 0xccff0080, 168); 
TEST_RR_OP( 43 , scmplt8, 0x00ffffff, 0x008080ff, 0xffffff00, 172); 
TEST_RR_OP( 44 , scmplt8, 0x00ff0000, 0xff805800, 0x80ff0080, 176); 
TEST_RR_OP( 45 , scmplt8, 0x00ff0000, 0x00800000, 0xff20f4ff, 180); 
TEST_RR_OP( 46 , scmplt8, 0xffffffff, 0xff808080, 0x00f7a800, 184); 
TEST_RR_OP( 47 , scmplt8, 0x00ffff00, 0x7500002c, 0x00742f80, 188); 
TEST_RR_OP( 48 , scmplt8, 0x0000ff00, 0x0000ff00, 0x00e30000, 192); 
TEST_RR_OP( 49 , scmplt8, 0x00ff0000, 0x04d9ad21, 0x801e8000, 196); 
TEST_RR_OP( 50 , scmplt8, 0xffffffff, 0x80f6ceff, 0xff000000, 200); 
TEST_RR_OP( 51 , scmplt8, 0xff000000, 0x800033eb, 0x00800080, 204); 
TEST_RR_OP( 52 , scmplt8, 0x00ffff00, 0x00ff8080, 0x80004d80, 208); 
TEST_RR_OP( 53 , scmplt8, 0x000000ff, 0xb4ffc1ff, 0x80ff8000, 212); 
TEST_RR_OP( 54 , scmplt8, 0x0000ffff, 0x000000a7, 0xff004600, 216); 
TEST_RR_OP( 55 , scmplt8, 0x00ffffff, 0xffff8080, 0x8035ff00, 220); 
TEST_RR_OP( 56 , scmplt8, 0xff00ff00, 0x80008000, 0x00ffff00, 224); 
TEST_RR_OP( 57 , scmplt8, 0xffffff00, 0xfff98000, 0x00ff0084, 228); 
TEST_RR_OP( 58 , scmplt8, 0xff000000, 0xe5a8ff68, 0x0080ff00, 232); 
TEST_RR_OP( 59 , scmplt8, 0x00ff0000, 0xff801862, 0x8000d4ff, 236); 
TEST_RR_OP( 60 , scmplt8, 0x000000ff, 0xff80ff85, 0xff80fff4, 240); 
TEST_RR_OP( 61 , scmplt8, 0x0000ffff, 0x8080ffb7, 0x80800049, 244); 
TEST_RR_OP( 62 , scmplt8, 0x00000000, 0x00637f00, 0xff80ff9a, 248); 
TEST_RR_OP( 63 , scmplt8, 0xff00ff00, 0x806880ff, 0xe180ecff, 252); 
TEST_RR_OP( 64 , scmplt8, 0xffff00ff, 0x80800080, 0x00ff80c6, 256); 
TEST_RR_OP( 65 , scmplt8, 0x00ff0000, 0x80ffe757, 0x80468000, 260); 
TEST_RR_OP( 66 , scmplt8, 0x0000ff00, 0xff808011, 0x808000ed, 264); 
TEST_RR_OP( 67 , scmplt8, 0x00000000, 0xff7affff, 0xf780ff80, 268); 
TEST_RR_OP( 68 , scmplt8, 0xff00ff00, 0x808080ff, 0xd580ffe9, 272); 
TEST_RR_OP( 69 , scmplt8, 0x00ffffff, 0xffff80ff, 0xff000000, 276); 
TEST_RR_OP( 70 , scmplt8, 0xff00ffff, 0x8080a0ff, 0x00800000, 280); 
TEST_RR_OP( 71 , scmplt8, 0x00ffff00, 0xffdc8000, 0xff00ff80, 284); 
TEST_RR_OP( 72 , scmplt8, 0x00000000, 0x00801100, 0xff800200, 288); 
TEST_RR_OP( 73 , scmplt8, 0x00ff00ff, 0x008000ff, 0x80000000, 292); 
TEST_RR_OP( 74 , scmplt8, 0xffff00ff, 0x80ffff80, 0x8f00ff00, 296); 
TEST_RR_OP( 75 , scmplt8, 0xffffff00, 0xff8e8000, 0x4000ff80, 300); 
TEST_RR_OP( 76 , scmplt8, 0x0000ffff, 0x80ff8096, 0x80804f00, 304); 
TEST_RR_OP( 77 , scmplt8, 0x00ff00ff, 0xff800080, 0x80008000, 308); 
TEST_RR_OP( 78 , scmplt8, 0x0000ff00, 0xffffbcff, 0x80f2ffff, 312); 
TEST_RR_OP( 79 , scmplt8, 0x000000ff, 0xdf67ff80, 0x8030ff00, 316); 
TEST_RR_OP( 80 , scmplt8, 0x00ff00ff, 0xff800080, 0xa70080cb, 320); 
TEST_RR_OP( 81 , scmplt8, 0xffff0000, 0x80ff4500, 0xff0080b6, 324); 
TEST_RR_OP( 82 , scmplt8, 0xffffff00, 0xbdff8072, 0xff00d380, 328); 
TEST_RR_OP( 83 , scmplt8, 0x00ffffff, 0x00ffd681, 0x0000ffff, 332); 
TEST_RR_OP( 84 , scmplt8, 0x00ff0000, 0x0080ff00, 0x8092a8ff, 336); 
TEST_RR_OP( 85 , scmplt8, 0xffffffff, 0x00808080, 0x2d000000, 340); 
TEST_RR_OP( 86 , scmplt8, 0xffffff00, 0x80b20000, 0x00ff4580, 344); 
TEST_RR_OP( 87 , scmplt8, 0xff00ff00, 0x80ff00ff, 0xf0ff7f80, 348); 
TEST_RR_OP( 88 , scmplt8, 0xffffff00, 0xff9dff80, 0x00000080, 352); 
TEST_RR_OP( 89 , scmplt8, 0x00ff00ff, 0xbdff0080, 0x80170000, 356); 
TEST_RR_OP( 90 , scmplt8, 0x000000ff, 0xff801a80, 0xff8000b8, 360); 
TEST_RR_OP( 91 , scmplt8, 0xff0000ff, 0x8b008084, 0xffff80c5, 364); 
TEST_RR_OP( 92 , scmplt8, 0xff0000ff, 0xd8ff2e00, 0xffffff2d, 368); 
TEST_RR_OP( 93 , scmplt8, 0x00000000, 0x480000ff, 0x008086ff, 372); 
TEST_RR_OP( 94 , scmplt8, 0xffff00ff, 0xffff7480, 0x00178000, 376); 
TEST_RR_OP( 95 , scmplt8, 0xff00ff00, 0x8068ffff, 0x1d8000ff, 380); 
TEST_RR_OP( 96 , scmplt8, 0xff0000ff, 0xffff00a2, 0x00b9ff00, 384); 
TEST_RR_OP( 97 , scmplt8, 0xffff0000, 0x928000ff, 0x74c48080, 388); 
TEST_RR_OP( 98 , scmplt8, 0x0000ff00, 0x00108700, 0x00ffff00, 392); 
TEST_RR_OP( 99 , scmplt8, 0xff000000, 0x97ff80ff, 0x42ff8080, 396); 
TEST_RR_OP( 100 , scmplt8, 0xff00ff00, 0x80ff80ff, 0x678055ff, 400); 
TEST_RR_OP( 101 , scmplt8, 0x00ffff00, 0x00ffff00, 0x954c5000, 404); 
TEST_RR_OP( 102 , scmplt8, 0x0000ffff, 0xff008b00, 0x8080007a, 408); 
TEST_RR_OP( 103 , scmplt8, 0xff00ffff, 0x89008080, 0x000049ff, 412); 
TEST_RR_OP( 104 , scmplt8, 0x00000000, 0x00ff8067, 0xff808000, 416); 
TEST_RR_OP( 105 , scmplt8, 0xffffffff, 0xce808080, 0x080050ff, 420); 
TEST_RR_OP( 106 , scmplt8, 0xff0000ff, 0xb700ff8b, 0x0080ffff, 424); 
TEST_RR_OP( 107 , scmplt8, 0xffff0000, 0x8080ff00, 0xffff8080, 428); 
TEST_RR_OP( 108 , scmplt8, 0x00000000, 0x80420000, 0x80ffff80, 432); 
TEST_RR_OP( 109 , scmplt8, 0xff00ffff, 0x00ff8000, 0x18a7c658, 436); 
TEST_RR_OP( 110 , scmplt8, 0xff000000, 0x80008067, 0xde008031, 440); 
TEST_RR_OP( 111 , scmplt8, 0x00ff00ff, 0x80800080, 0x800080c5, 444); 
TEST_RR_OP( 112 , scmplt8, 0x0000ffff, 0x00ff8085, 0xffff7e00, 448); 
TEST_RR_OP( 113 , scmplt8, 0x000000ff, 0xff800080, 0x808000c0, 452); 
TEST_RR_OP( 114 , scmplt8, 0x000000ff, 0x00000080, 0xffa800ff, 456); 
TEST_RR_OP( 115 , scmplt8, 0xff0000ff, 0x8000ff00, 0xd9ff8001, 460); 
TEST_RR_OP( 116 , scmplt8, 0x0000ff00, 0x52ff0000, 0x80807cff, 464); 
TEST_RR_OP( 117 , scmplt8, 0x00ff0000, 0x0080ffff, 0x80ff8080, 468); 
TEST_RR_OP( 118 , scmplt8, 0x00ff0000, 0x00ff9b80, 0x00008080, 472); 
TEST_RR_OP( 119 , scmplt8, 0xff000000, 0x80000000, 0xff0080ff, 476); 
TEST_RR_OP( 120 , scmplt8, 0x00ff0000, 0xff80ff00, 0xff98ff80, 480); 
TEST_RR_OP( 121 , scmplt8, 0x0000ff00, 0x80ffffff, 0x80f82d80, 484); 
TEST_RR_OP( 122 , scmplt8, 0x00ffff00, 0x80ff80ff, 0x8000ff80, 488); 
TEST_RR_OP( 123 , scmplt8, 0xff00ff00, 0xff199cff, 0x76000080, 492); 
TEST_RR_OP( 124 , scmplt8, 0x00ffffff, 0x74e3f480, 0x804dfffa, 496); 
TEST_RR_OP( 125 , scmplt8, 0x00ffff00, 0x698080ff, 0x16ff00ff, 500); 
TEST_RR_OP( 126 , scmplt8, 0xff000000, 0xffff8080, 0x00e48080, 504); 
TEST_RR_OP( 127 , scmplt8, 0xff000000, 0xff00ff00, 0x0080ffff, 508); 
TEST_RR_OP( 128 , scmplt8, 0xff0000ff, 0x8022ffff, 0x0000ff00, 512); 
TEST_RR_OP( 129 , scmplt8, 0x0000ff00, 0xacff0000, 0x80ff6eca, 516); 
TEST_RR_OP( 130 , scmplt8, 0xffff00ff, 0xc180ff80, 0xff00ffff, 520); 
TEST_RR_OP( 131 , scmplt8, 0x00ffff00, 0xeb80ffff, 0x80ff00f2, 524); 
TEST_RR_OP( 132 , scmplt8, 0xffff00ff, 0x80007d80, 0x22138010, 528); 
TEST_RR_OP( 133 , scmplt8, 0x00000000, 0x3c4200ff, 0xfa00ffff, 532); 
TEST_RR_OP( 134 , scmplt8, 0xffff0000, 0x00ff0000, 0x35008089, 536); 
TEST_RR_OP( 135 , scmplt8, 0x0000ff00, 0x8070dfff, 0x80ff00ff, 540); 
TEST_RR_OP( 136 , scmplt8, 0xff000000, 0x8f80ff80, 0xff808080, 544); 
TEST_RR_OP( 137 , scmplt8, 0xffffff00, 0xd4ff8000, 0xe10062ff, 548); 
TEST_RR_OP( 138 , scmplt8, 0x0000ff00, 0x8000b380, 0x80ff1d80, 552); 
TEST_RR_OP( 139 , scmplt8, 0xffff00ff, 0xffffffff, 0x0000ff00, 556); 
TEST_RR_OP( 140 , scmplt8, 0x00000000, 0x065f0000, 0xff9dffff, 560); 
TEST_RR_OP( 141 , scmplt8, 0xffffffff, 0xfcffff4d, 0xff000051, 564); 
TEST_RR_OP( 142 , scmplt8, 0x00ffffff, 0xffffff80, 0xe40000ff, 568); 
TEST_RR_OP( 143 , scmplt8, 0x000000ff, 0x65ff00ff, 0x80fd8000, 572); 
TEST_RR_OP( 144 , scmplt8, 0x00ffffff, 0x001b8080, 0x003abbff, 576); 
TEST_RR_OP( 145 , scmplt8, 0x00000000, 0x80008020, 0x808080ff, 580); 
TEST_RR_OP( 146 , scmplt8, 0x0000ff00, 0x80168300, 0x80ffffa7, 584); 
TEST_RR_OP( 147 , scmplt8, 0xffffff00, 0xffffff00, 0x00000080, 588); 
TEST_RR_OP( 148 , scmplt8, 0x00ff00ff, 0x00800080, 0x8000ffff, 592); 
TEST_RR_OP( 149 , scmplt8, 0x00ff0000, 0xff008080, 0x800f8080, 596); 
TEST_RR_OP( 150 , scmplt8, 0x0000ff00, 0x00ff8080, 0x0080ff80, 600); 
TEST_RR_OP( 151 , scmplt8, 0xffff0000, 0xedcd001a, 0x24ffffe9, 604); 
TEST_RR_OP( 152 , scmplt8, 0xff000000, 0xf5000000, 0x5900ffff, 608); 
TEST_RR_OP( 153 , scmplt8, 0x00ff0000, 0x00805100, 0x0001ff80, 612); 
TEST_RR_OP( 154 , scmplt8, 0x00ff00ff, 0x00ffff00, 0x8000803d, 616); 
TEST_RR_OP( 155 , scmplt8, 0xff0000ff, 0x804b0080, 0x5eff0000, 620); 
TEST_RR_OP( 156 , scmplt8, 0xff000000, 0x800077ff, 0x00808080, 624); 
TEST_RR_OP( 157 , scmplt8, 0x00000000, 0xff0000ff, 0x80ff80ff, 628); 
TEST_RR_OP( 158 , scmplt8, 0x00ffffff, 0x34808080, 0xff006400, 632); 
TEST_RR_OP( 159 , scmplt8, 0xff0000ff, 0xffff8080, 0x00ff805d, 636); 
TEST_RR_OP( 160 , scmplt8, 0x00ff00ff, 0x0080ff00, 0x80ff8041, 640); 
TEST_RR_OP( 161 , scmplt8, 0xff00ffff, 0xffff0080, 0x5fff7a00, 644); 
TEST_RR_OP( 162 , scmplt8, 0xff000000, 0x80005cff, 0x00ff4480, 648); 
TEST_RR_OP( 163 , scmplt8, 0x00ff0000, 0x90000000, 0x80100000, 652); 
TEST_RR_OP( 164 , scmplt8, 0xff00ff00, 0x80ff80ff, 0x0080ea80, 656); 
TEST_RR_OP( 165 , scmplt8, 0xffff00ff, 0x00ac0093, 0x0b00ff00, 660); 
TEST_RR_OP( 166 , scmplt8, 0xff00ffff, 0xad00808a, 0xffff0000, 664); 
TEST_RR_OP( 167 , scmplt8, 0x000000ff, 0x00ff0080, 0xba8d8000, 668); 
TEST_RR_OP( 168 , scmplt8, 0xff0000ff, 0xffffff80, 0x00ffac00, 672); 
TEST_RR_OP( 169 , scmplt8, 0xffff00ff, 0x8080ff80, 0x000080ff, 676); 
TEST_RR_OP( 170 , scmplt8, 0xff000000, 0x80b80000, 0xff8080c8, 680); 
TEST_RR_OP( 171 , scmplt8, 0xff00ff00, 0xa900805a, 0xbdbf0000, 684); 
TEST_RR_OP( 172 , scmplt8, 0x00ffff00, 0x00ffff40, 0x00000019, 688); 
TEST_RR_OP( 173 , scmplt8, 0xff0000ff, 0xff471fdf, 0x00ff8000, 692); 
TEST_RR_OP( 174 , scmplt8, 0x0000ffff, 0xff96ffff, 0xff800079, 696); 
TEST_RR_OP( 175 , scmplt8, 0xffff0000, 0x00948025, 0x600080ff, 700); 
TEST_RR_OP( 176 , scmplt8, 0xffffffff, 0xad80ffff, 0x00ac0000, 704); 
TEST_RR_OP( 177 , scmplt8, 0x000000ff, 0xff7eff9e, 0x8828ff00, 708); 
TEST_RR_OP( 178 , scmplt8, 0xff0000ff, 0x11ff8080, 0x7efc80f6, 712); 
TEST_RR_OP( 179 , scmplt8, 0xff0000ff, 0xff700002, 0x0000001a, 716); 
TEST_RR_OP( 180 , scmplt8, 0xff000000, 0x80593f5d, 0x00cb80ff, 720); 
TEST_RR_OP( 181 , scmplt8, 0x00ffff00, 0x00ffff00, 0xff597dff, 724); 
TEST_RR_OP( 182 , scmplt8, 0x00000000, 0x00ff0019, 0x80808fff, 728); 
TEST_RR_OP( 183 , scmplt8, 0xff00ff00, 0x80528000, 0xffe1e180, 732); 
TEST_RR_OP( 184 , scmplt8, 0x00000000, 0x00ff0000, 0x00808000, 736); 
TEST_RR_OP( 185 , scmplt8, 0xffffff00, 0x80a90000, 0x7b0f7f80, 740); 
TEST_RR_OP( 186 , scmplt8, 0xff000000, 0x00820000, 0x2c80ff88, 744); 
TEST_RR_OP( 187 , scmplt8, 0x0000ffff, 0x80ffcf83, 0x80ff00ff, 748); 
TEST_RR_OP( 188 , scmplt8, 0x00000000, 0xff00ff80, 0xff008080, 752); 
TEST_RR_OP( 189 , scmplt8, 0x00000000, 0xff000000, 0x80ff0000, 756); 
TEST_RR_OP( 190 , scmplt8, 0x000000ff, 0xffff00f0, 0xffff003e, 760); 
TEST_RR_OP( 191 , scmplt8, 0x0000ff00, 0x8018b9ff, 0x800000ff, 764); 
TEST_RR_OP( 192 , scmplt8, 0xffff0000, 0x8380ff59, 0xffffffff, 768); 
TEST_RR_OP( 193 , scmplt8, 0x00ffff00, 0x8094d4ff, 0x80c900ff, 772); 
TEST_RR_OP( 194 , scmplt8, 0xff0000ff, 0x80ffff00, 0x0080ff28, 776); 
TEST_RR_OP( 195 , scmplt8, 0xff00ff00, 0xfc00ff00, 0x009800a0, 780); 
TEST_RR_OP( 196 , scmplt8, 0xffff0000, 0x0080ff00, 0x12fdff00, 784); 
TEST_RR_OP( 197 , scmplt8, 0xffffff00, 0x9c80ff00, 0x00e800ff, 788); 
TEST_RR_OP( 198 , scmplt8, 0x0000ff00, 0x00a48000, 0x008050ff, 792); 
TEST_RR_OP( 199 , scmplt8, 0x00000000, 0xff1fff00, 0x99008000, 796); 

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
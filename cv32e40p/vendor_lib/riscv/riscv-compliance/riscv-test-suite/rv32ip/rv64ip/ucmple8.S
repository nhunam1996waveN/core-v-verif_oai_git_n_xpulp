# See LICENSE for license details.
#*****************************************************************************
# ucmple8.S
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

TEST_RR_OP( 2 , ucmple8, 0xffff00ff, 0x13bbff80, 0x80ff80ff, 8); 
TEST_RR_OP( 3 , ucmple8, 0xffff0000, 0x0080ffe8, 0x00800080, 12); 
TEST_RR_OP( 4 , ucmple8, 0x00ffff00, 0xffbd00ff, 0x80ff5b00, 16); 
TEST_RR_OP( 5 , ucmple8, 0xff000000, 0x0080fffc, 0xff008049, 20); 
TEST_RR_OP( 6 , ucmple8, 0x00ffffff, 0x2f800000, 0x008080ff, 24); 
TEST_RR_OP( 7 , ucmple8, 0x0000ff00, 0xffff00ff, 0x80008000, 28); 
TEST_RR_OP( 8 , ucmple8, 0x00ffffff, 0xa0ff807a, 0x80ff89ff, 32); 
TEST_RR_OP( 9 , ucmple8, 0xffff00ff, 0x0080ff00, 0x22ff00ff, 36); 
TEST_RR_OP( 10 , ucmple8, 0xffffff00, 0xff5200ff, 0xffff0000, 40); 
TEST_RR_OP( 11 , ucmple8, 0xff0000ff, 0x8080ff00, 0xd200998e, 44); 
TEST_RR_OP( 12 , ucmple8, 0xff0000ff, 0xff806d9d, 0xff3b00ec, 48); 
TEST_RR_OP( 13 , ucmple8, 0xff00ffff, 0x00ff05eb, 0x00806cff, 52); 
TEST_RR_OP( 14 , ucmple8, 0xff0000ff, 0xcb82a500, 0xff808000, 56); 
TEST_RR_OP( 15 , ucmple8, 0xffff00ff, 0xfc00ff00, 0xff008000, 60); 
TEST_RR_OP( 16 , ucmple8, 0x00ffffff, 0xff8080ff, 0xf9ffffff, 64); 
TEST_RR_OP( 17 , ucmple8, 0x00000000, 0xffff80f3, 0x00000000, 68); 
TEST_RR_OP( 18 , ucmple8, 0x00ff00ff, 0x56dbffff, 0x06ff00ff, 72); 
TEST_RR_OP( 19 , ucmple8, 0xffffffff, 0x8000d8df, 0x8055ffff, 76); 
TEST_RR_OP( 20 , ucmple8, 0x000000ff, 0xc95fff00, 0x6a3f80ff, 80); 
TEST_RR_OP( 21 , ucmple8, 0x00ffffff, 0x608080ff, 0x008f80ff, 84); 
TEST_RR_OP( 22 , ucmple8, 0x0000ffff, 0x388700ff, 0x001c00ff, 88); 
TEST_RR_OP( 23 , ucmple8, 0xffffffff, 0x00be0000, 0x9ac4ff80, 92); 
TEST_RR_OP( 24 , ucmple8, 0xffff0000, 0x00005fff, 0x89003600, 96); 
TEST_RR_OP( 25 , ucmple8, 0xffffff00, 0x4880ffff, 0x8080ff00, 100); 
TEST_RR_OP( 26 , ucmple8, 0xffffffff, 0x0080ff80, 0xbfffffff, 104); 
TEST_RR_OP( 27 , ucmple8, 0xff00ffff, 0xcee87980, 0xff008080, 108); 
TEST_RR_OP( 28 , ucmple8, 0xffffffff, 0x78000080, 0xff800080, 112); 
TEST_RR_OP( 29 , ucmple8, 0xff0000ff, 0x80afa880, 0xff8000ff, 116); 
TEST_RR_OP( 30 , ucmple8, 0x0000ff00, 0xffff0080, 0x8000df6d, 120); 
TEST_RR_OP( 31 , ucmple8, 0x00ff00ff, 0x8000ff00, 0x00802fff, 124); 
TEST_RR_OP( 32 , ucmple8, 0xff000000, 0x5416ffff, 0xac000080, 128); 
TEST_RR_OP( 33 , ucmple8, 0xffff00ff, 0x6814ff80, 0xffa680c0, 132); 
TEST_RR_OP( 34 , ucmple8, 0xffffff00, 0x008000ff, 0xff809600, 136); 
TEST_RR_OP( 35 , ucmple8, 0x00ffff00, 0xff4680ff, 0x59ffff86, 140); 
TEST_RR_OP( 36 , ucmple8, 0xffff00ff, 0x0000ff00, 0x279e80ff, 144); 
TEST_RR_OP( 37 , ucmple8, 0xff00ffff, 0xffff0000, 0xff0011ff, 148); 
TEST_RR_OP( 38 , ucmple8, 0x00ffffff, 0xaa00ff80, 0x80ffffff, 152); 
TEST_RR_OP( 39 , ucmple8, 0x00ffffff, 0xff002200, 0x80f56600, 156); 
TEST_RR_OP( 40 , ucmple8, 0x0000ffff, 0xffff1900, 0x9d801b00, 160); 
TEST_RR_OP( 41 , ucmple8, 0xffffff00, 0xa1800080, 0xf6800000, 164); 
TEST_RR_OP( 42 , ucmple8, 0x00000000, 0xffffc080, 0x0080800e, 168); 
TEST_RR_OP( 43 , ucmple8, 0xffffffff, 0x00002a80, 0xff00ff80, 172); 
TEST_RR_OP( 44 , ucmple8, 0xff0000ff, 0x80e2ffff, 0xffdc53ff, 176); 
TEST_RR_OP( 45 , ucmple8, 0xffffff00, 0x004f00ff, 0x00f08000, 180); 
TEST_RR_OP( 46 , ucmple8, 0x00ff00ff, 0x0c00ff00, 0x004b0080, 184); 
TEST_RR_OP( 47 , ucmple8, 0x00ff00ff, 0xffff8044, 0x94ff0080, 188); 
TEST_RR_OP( 48 , ucmple8, 0x00ff00ff, 0xff00ffff, 0x80005eff, 192); 
TEST_RR_OP( 49 , ucmple8, 0xff000000, 0x00ff8080, 0x80801d00, 196); 
TEST_RR_OP( 50 , ucmple8, 0xffffff00, 0x008080ff, 0x00b2ff57, 200); 
TEST_RR_OP( 51 , ucmple8, 0xff0000ff, 0x80802dff, 0xff0000ff, 204); 
TEST_RR_OP( 52 , ucmple8, 0x0000ffff, 0x2bb980ff, 0x0080ffff, 208); 
TEST_RR_OP( 53 , ucmple8, 0x00ff0000, 0xc080ffff, 0x8080c580, 212); 
TEST_RR_OP( 54 , ucmple8, 0x00ffffff, 0x808080a9, 0x078780ff, 216); 
TEST_RR_OP( 55 , ucmple8, 0xff00ffff, 0x009d0000, 0x8000ff80, 220); 
TEST_RR_OP( 56 , ucmple8, 0xff00ffff, 0x00ff0000, 0x9c808080, 224); 
TEST_RR_OP( 57 , ucmple8, 0xffffff00, 0x006c00ff, 0x008e8080, 228); 
TEST_RR_OP( 58 , ucmple8, 0xff0000ff, 0x00ff395b, 0x808000ff, 232); 
TEST_RR_OP( 59 , ucmple8, 0xffffffff, 0x00df0000, 0x80ff7c00, 236); 
TEST_RR_OP( 60 , ucmple8, 0xffffffff, 0x001fff00, 0xcf80ff00, 240); 
TEST_RR_OP( 61 , ucmple8, 0xffff0000, 0x80ffffe1, 0xffff0500, 244); 
TEST_RR_OP( 62 , ucmple8, 0xff000000, 0xffffffff, 0xff3ce480, 248); 
TEST_RR_OP( 63 , ucmple8, 0xff00ff00, 0x80ff00ff, 0x804aff00, 252); 
TEST_RR_OP( 64 , ucmple8, 0x00ffff00, 0x218000a7, 0x00f68000, 256); 
TEST_RR_OP( 65 , ucmple8, 0xff0000ff, 0x00ffff5a, 0x801f00e4, 260); 
TEST_RR_OP( 66 , ucmple8, 0xffff0000, 0x80fffb80, 0xe0ff2900, 264); 
TEST_RR_OP( 67 , ucmple8, 0xffff00ff, 0x63722900, 0xff820077, 268); 
TEST_RR_OP( 68 , ucmple8, 0xffffffff, 0x00800080, 0x0080ff80, 272); 
TEST_RR_OP( 69 , ucmple8, 0xffffffff, 0x00000070, 0xcaff80c9, 276); 
TEST_RR_OP( 70 , ucmple8, 0x00ffff00, 0xc13800ff, 0x00828059, 280); 
TEST_RR_OP( 71 , ucmple8, 0xffff00ff, 0x4700fc00, 0xff0080ff, 284); 
TEST_RR_OP( 72 , ucmple8, 0xffffff00, 0x00d68080, 0x26ffff00, 288); 
TEST_RR_OP( 73 , ucmple8, 0xff00ffff, 0x64808080, 0xab00ffff, 292); 
TEST_RR_OP( 74 , ucmple8, 0xff0000ff, 0x80ffff83, 0xfb8080ff, 296); 
TEST_RR_OP( 75 , ucmple8, 0xffff00ff, 0x800085ff, 0xff9500ff, 300); 
TEST_RR_OP( 76 , ucmple8, 0xffffffff, 0xbb00f200, 0xff03fbff, 304); 
TEST_RR_OP( 77 , ucmple8, 0x0000ff00, 0xffffa980, 0x8000ff42, 308); 
TEST_RR_OP( 78 , ucmple8, 0xffffffff, 0x00000000, 0x80008080, 312); 
TEST_RR_OP( 79 , ucmple8, 0xff00ff00, 0xff807280, 0xff00ff79, 316); 
TEST_RR_OP( 80 , ucmple8, 0x000000ff, 0xff18caba, 0x000071ff, 320); 
TEST_RR_OP( 81 , ucmple8, 0xffffff00, 0xff8000ff, 0xffff009b, 324); 
TEST_RR_OP( 82 , ucmple8, 0xff0000ff, 0x80ffff80, 0xff8000ff, 328); 
TEST_RR_OP( 83 , ucmple8, 0xff00ffff, 0x7fff8080, 0xff89ff94, 332); 
TEST_RR_OP( 84 , ucmple8, 0x00ff00ff, 0xff80ff30, 0x4ba18080, 336); 
TEST_RR_OP( 85 , ucmple8, 0x0000ffff, 0x62b20000, 0x0000ff79, 340); 
TEST_RR_OP( 86 , ucmple8, 0x0000ffff, 0xff4a802d, 0x8000ff8c, 344); 
TEST_RR_OP( 87 , ucmple8, 0x00ffff00, 0xff0080dc, 0x80008080, 348); 
TEST_RR_OP( 88 , ucmple8, 0xffff00ff, 0x80ff9b80, 0x85ff00cc, 352); 
TEST_RR_OP( 89 , ucmple8, 0x00ff00ff, 0x8000c800, 0x28808000, 356); 
TEST_RR_OP( 90 , ucmple8, 0xffffffff, 0xffff0000, 0xffffff00, 360); 
TEST_RR_OP( 91 , ucmple8, 0xff00ffff, 0x00ff0080, 0x000000ff, 364); 
TEST_RR_OP( 92 , ucmple8, 0xff00ffff, 0xffd70000, 0xff00ff00, 368); 
TEST_RR_OP( 93 , ucmple8, 0xffffff00, 0x8077ffff, 0x8080ff80, 372); 
TEST_RR_OP( 94 , ucmple8, 0xffff0000, 0x80002cd5, 0xff800000, 376); 
TEST_RR_OP( 95 , ucmple8, 0x0000ffff, 0x90ff00ff, 0x800000ff, 380); 
TEST_RR_OP( 96 , ucmple8, 0x00ffffff, 0xff368048, 0x00ffffff, 384); 
TEST_RR_OP( 97 , ucmple8, 0xffffffff, 0x00000080, 0x80ff7880, 388); 
TEST_RR_OP( 98 , ucmple8, 0xffffff00, 0x0000ffff, 0x0080ff80, 392); 
TEST_RR_OP( 99 , ucmple8, 0xff000000, 0x80ffffec, 0xff808000, 396); 
TEST_RR_OP( 100 , ucmple8, 0xff00ff00, 0x00800080, 0x05000000, 400); 
TEST_RR_OP( 101 , ucmple8, 0xff00ffff, 0xffff0000, 0xff80a300, 404); 
TEST_RR_OP( 102 , ucmple8, 0xffffffff, 0x26000000, 0x800080ff, 408); 
TEST_RR_OP( 103 , ucmple8, 0xffffff00, 0x660080ff, 0xff3aff00, 412); 
TEST_RR_OP( 104 , ucmple8, 0xffffffff, 0x3e000080, 0xb3fcbce7, 416); 
TEST_RR_OP( 105 , ucmple8, 0xff0000ff, 0x36ffff80, 0xff8017ff, 420); 
TEST_RR_OP( 106 , ucmple8, 0xffffffff, 0x00800700, 0xffff80ff, 424); 
TEST_RR_OP( 107 , ucmple8, 0xffffff00, 0xff00db13, 0xff00ff00, 428); 
TEST_RR_OP( 108 , ucmple8, 0xff00ffff, 0x00800080, 0x0000809b, 432); 
TEST_RR_OP( 109 , ucmple8, 0xff0000ff, 0x00ff64ff, 0x5d7000ff, 436); 
TEST_RR_OP( 110 , ucmple8, 0xff0000ff, 0x1affff00, 0x80808000, 440); 
TEST_RR_OP( 111 , ucmple8, 0xff00ff00, 0x09ff00ff, 0xb66880a8, 444); 
TEST_RR_OP( 112 , ucmple8, 0x00ffffff, 0x2080d673, 0x00ffffff, 448); 
TEST_RR_OP( 113 , ucmple8, 0x000000ff, 0xff1bff00, 0x80000000, 452); 
TEST_RR_OP( 114 , ucmple8, 0x00ffff00, 0xff0000e5, 0x8080ff00, 456); 
TEST_RR_OP( 115 , ucmple8, 0xffffffff, 0x80000000, 0xff808076, 460); 
TEST_RR_OP( 116 , ucmple8, 0x00ffff00, 0xff0006ff, 0x8000c000, 464); 
TEST_RR_OP( 117 , ucmple8, 0x00ffffff, 0x8e0080b0, 0x800f80ff, 468); 
TEST_RR_OP( 118 , ucmple8, 0x00ff00ff, 0xff00ff80, 0x800000ef, 472); 
TEST_RR_OP( 119 , ucmple8, 0xffffffff, 0x800080ff, 0xff0080ff, 476); 
TEST_RR_OP( 120 , ucmple8, 0xffffffff, 0x00008080, 0x80ccff80, 480); 
TEST_RR_OP( 121 , ucmple8, 0x00ffffff, 0x8053ff80, 0x0f80ffff, 484); 
TEST_RR_OP( 122 , ucmple8, 0xffff0000, 0x8080ff80, 0x80b18000, 488); 
TEST_RR_OP( 123 , ucmple8, 0xff00ffff, 0x000bffff, 0x8000ffff, 492); 
TEST_RR_OP( 124 , ucmple8, 0x00ff00ff, 0x80ffff00, 0x00ff4400, 496); 
TEST_RR_OP( 125 , ucmple8, 0x00ffffff, 0xff808080, 0xbeff80e1, 500); 
TEST_RR_OP( 126 , ucmple8, 0xffffffff, 0x77808080, 0xffab8080, 504); 
TEST_RR_OP( 127 , ucmple8, 0xff000000, 0x008080c2, 0x00000000, 508); 
TEST_RR_OP( 128 , ucmple8, 0x00ff00ff, 0xff006480, 0x52855080, 512); 
TEST_RR_OP( 129 , ucmple8, 0x0000ffff, 0xff80ff00, 0x9500ffff, 516); 
TEST_RR_OP( 130 , ucmple8, 0x00ffffff, 0xff000000, 0x8080ffdb, 520); 
TEST_RR_OP( 131 , ucmple8, 0x00ff0000, 0x8000ffff, 0x00940000, 524); 
TEST_RR_OP( 132 , ucmple8, 0xff00ffff, 0x00be0000, 0xff78006f, 528); 
TEST_RR_OP( 133 , ucmple8, 0xff00ff00, 0x00ff0080, 0x80802c00, 532); 
TEST_RR_OP( 134 , ucmple8, 0x00ff00ff, 0xff009dff, 0x005d00ff, 536); 
TEST_RR_OP( 135 , ucmple8, 0xffffffff, 0x00000080, 0xff47ffff, 540); 
TEST_RR_OP( 136 , ucmple8, 0x00ffffff, 0x8000ff00, 0x00a6ffab, 544); 
TEST_RR_OP( 137 , ucmple8, 0x00ff00ff, 0x8000ff00, 0x6680000e, 548); 
TEST_RR_OP( 138 , ucmple8, 0xff00ffff, 0xffe28043, 0xffa0ff80, 552); 
TEST_RR_OP( 139 , ucmple8, 0xff00ff00, 0x00f68080, 0xff008000, 556); 
TEST_RR_OP( 140 , ucmple8, 0x00ff0000, 0x55ea5f80, 0x00ff0000, 560); 
TEST_RR_OP( 141 , ucmple8, 0x00000000, 0xf440d0ff, 0x80007200, 564); 
TEST_RR_OP( 142 , ucmple8, 0x0000ff00, 0xbf97d8d5, 0x0780ff00, 568); 
TEST_RR_OP( 143 , ucmple8, 0xff0000ff, 0x00aa8080, 0xff000080, 572); 
TEST_RR_OP( 144 , ucmple8, 0x00ffffff, 0xffad80ff, 0x1bd5ffff, 576); 
TEST_RR_OP( 145 , ucmple8, 0x00ff00ff, 0x8080ffff, 0x00ff00ff, 580); 
TEST_RR_OP( 146 , ucmple8, 0xff00ffff, 0x00ffff80, 0xff80ff80, 584); 
TEST_RR_OP( 147 , ucmple8, 0xffff00ff, 0x00fe8a00, 0x00ff0080, 588); 
TEST_RR_OP( 148 , ucmple8, 0xff00ffff, 0x808000ff, 0xe50080ff, 592); 
TEST_RR_OP( 149 , ucmple8, 0xffffff00, 0x3480ff8b, 0x8080ff80, 596); 
TEST_RR_OP( 150 , ucmple8, 0xffff0000, 0x1e50ffff, 0x80ff0977, 600); 
TEST_RR_OP( 151 , ucmple8, 0xffff0000, 0x000022ff, 0x3eff0061, 604); 
TEST_RR_OP( 152 , ucmple8, 0x00000000, 0xffffff8b, 0x80008041, 608); 
TEST_RR_OP( 153 , ucmple8, 0xffffffff, 0x00800000, 0x008049df, 612); 
TEST_RR_OP( 154 , ucmple8, 0xffffffff, 0x00ff0036, 0x00ff00ff, 616); 
TEST_RR_OP( 155 , ucmple8, 0xffffff00, 0x6e00ffff, 0xb1ffff74, 620); 
TEST_RR_OP( 156 , ucmple8, 0x0000ff00, 0x4c65ffff, 0x1a4aff80, 624); 
TEST_RR_OP( 157 , ucmple8, 0xffff00ff, 0x00008000, 0x44ff0080, 628); 
TEST_RR_OP( 158 , ucmple8, 0xffffffff, 0x00000000, 0x0080ffff, 632); 
TEST_RR_OP( 159 , ucmple8, 0x00ffff00, 0x4d0080ff, 0x00ff8018, 636); 
TEST_RR_OP( 160 , ucmple8, 0xffff0000, 0x0082ffdc, 0xffff808a, 640); 
TEST_RR_OP( 161 , ucmple8, 0xff00ff00, 0x00f50080, 0x0080c900, 644); 
TEST_RR_OP( 162 , ucmple8, 0x00ffffff, 0xffff0000, 0x80ff8080, 648); 
TEST_RR_OP( 163 , ucmple8, 0x0000ff00, 0x808080ff, 0x7300ff00, 652); 
TEST_RR_OP( 164 , ucmple8, 0xffff00ff, 0x0000b00f, 0x00808080, 656); 
TEST_RR_OP( 165 , ucmple8, 0x00ff0000, 0xff00fd80, 0x00808027, 660); 
TEST_RR_OP( 166 , ucmple8, 0xff0000ff, 0x80808080, 0xff004eff, 664); 
TEST_RR_OP( 167 , ucmple8, 0xffffff00, 0x80008064, 0x80ffff00, 668); 
TEST_RR_OP( 168 , ucmple8, 0xff00ffff, 0x39a41300, 0xb900ff80, 672); 
TEST_RR_OP( 169 , ucmple8, 0xff00ff00, 0x71ff00ff, 0xd9806ed4, 676); 
TEST_RR_OP( 170 , ucmple8, 0xffff0000, 0x0080ff80, 0xffff8606, 680); 
TEST_RR_OP( 171 , ucmple8, 0xffffff00, 0x808000bc, 0xbbffff00, 684); 
TEST_RR_OP( 172 , ucmple8, 0x00ffff00, 0xff000080, 0x00ff0000, 688); 
TEST_RR_OP( 173 , ucmple8, 0xffffffff, 0x80807080, 0xffffff80, 692); 
TEST_RR_OP( 174 , ucmple8, 0xffffff00, 0x800000ac, 0x80808080, 696); 
TEST_RR_OP( 175 , ucmple8, 0x00ff0000, 0xff0096d3, 0x43710000, 700); 
TEST_RR_OP( 176 , ucmple8, 0xffff0000, 0x0000ffff, 0x80808000, 704); 
TEST_RR_OP( 177 , ucmple8, 0x00ffffff, 0x80808080, 0x008a8080, 708); 
TEST_RR_OP( 178 , ucmple8, 0x00ff0000, 0xff80d1be, 0x01ff0580, 712); 
TEST_RR_OP( 179 , ucmple8, 0x0000ffff, 0xfa808000, 0x80298000, 716); 
TEST_RR_OP( 180 , ucmple8, 0x00ff0000, 0xff80b1ff, 0x80806000, 720); 
TEST_RR_OP( 181 , ucmple8, 0x0000ffff, 0xe3ff7700, 0x800080ff, 724); 
TEST_RR_OP( 182 , ucmple8, 0x00ffffff, 0x8d00ff74, 0x8087ff80, 728); 
TEST_RR_OP( 183 , ucmple8, 0x0000ff00, 0xbbe280ff, 0x92008000, 732); 
TEST_RR_OP( 184 , ucmple8, 0x00ffffff, 0xff80ff00, 0x00ffff00, 736); 
TEST_RR_OP( 185 , ucmple8, 0xffff00ff, 0x0080e280, 0x00e8a083, 740); 
TEST_RR_OP( 186 , ucmple8, 0x00ffff00, 0xd23000ff, 0x79ffff38, 744); 
TEST_RR_OP( 187 , ucmple8, 0xff00ff00, 0x03ff801d, 0x8000d800, 748); 
TEST_RR_OP( 188 , ucmple8, 0x00ff00ff, 0xffff802d, 0x00ff0080, 752); 
TEST_RR_OP( 189 , ucmple8, 0x00ff00ff, 0xff6fff80, 0x80ff8080, 756); 
TEST_RR_OP( 190 , ucmple8, 0x0000ff00, 0x80ff5a80, 0x337bff49, 760); 
TEST_RR_OP( 191 , ucmple8, 0xff000000, 0x8dffff80, 0xff000000, 764); 
TEST_RR_OP( 192 , ucmple8, 0xff00ff00, 0xff808080, 0xff1eff2d, 768); 
TEST_RR_OP( 193 , ucmple8, 0x0000ffff, 0xffff80ff, 0x08bc80ff, 772); 
TEST_RR_OP( 194 , ucmple8, 0xffffffff, 0x12003600, 0xdf80d080, 776); 
TEST_RR_OP( 195 , ucmple8, 0xffffff00, 0xb38000ff, 0xffff8000, 780); 
TEST_RR_OP( 196 , ucmple8, 0x00ffff00, 0x9400f7ff, 0x0013ff84, 784); 
TEST_RR_OP( 197 , ucmple8, 0xffff00ff, 0x00008000, 0xff000000, 788); 
TEST_RR_OP( 198 , ucmple8, 0x00000000, 0xa7ffffa3, 0x8000008d, 792); 
TEST_RR_OP( 199 , ucmple8, 0xffffffff, 0x80000680, 0x80ff96ff, 796); 

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
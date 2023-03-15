# See LICENSE for license details.
#*****************************************************************************
# kmaxds.S
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

TEST_RR_OP( 2 , kmaxds, 0xef9325e2, 0x85105ea3, 0x310afc74, 8); 
TEST_RR_OP( 3 , kmaxds, 0xef933a01, 0x31aa45c9, 0xffffffff, 12); 
TEST_RR_OP( 4 , kmaxds, 0xef933a01, 0xffffffff, 0xffffffff, 16); 
TEST_RR_OP( 5 , kmaxds, 0xef92ba01, 0xffffffff, 0x80000000, 20); 
TEST_RR_OP( 6 , kmaxds, 0x2332ba01, 0x22c86740, 0x80000000, 24); 
TEST_RR_OP( 7 , kmaxds, 0x2332ba01, 0x00000000, 0x00000000, 28); 
TEST_RR_OP( 8 , kmaxds, 0x23323a01, 0xffffffff, 0x80000000, 32); 
TEST_RR_OP( 9 , kmaxds, 0x23324bbc, 0xffffffff, 0xbbcbaa10, 36); 
TEST_RR_OP( 10 , kmaxds, 0x23324bbc, 0x00000000, 0x00000000, 40); 
TEST_RR_OP( 11 , kmaxds, 0x23324bbc, 0x00000000, 0xca8f7b36, 44); 
TEST_RR_OP( 12 , kmaxds, 0x23324bbc, 0x00000000, 0x00000000, 48); 
TEST_RR_OP( 13 , kmaxds, 0x2331cbbc, 0xffffffff, 0x80000000, 52); 
TEST_RR_OP( 14 , kmaxds, 0x23314bbc, 0xffffffff, 0x80000000, 56); 
TEST_RR_OP( 15 , kmaxds, 0x2331cbbc, 0x80000000, 0xffffffff, 60); 
TEST_RR_OP( 16 , kmaxds, 0x23324bbc, 0x80000000, 0xffffffff, 64); 
TEST_RR_OP( 17 , kmaxds, 0x23324bbc, 0x80000000, 0x80000000, 68); 
TEST_RR_OP( 18 , kmaxds, 0x1a91539c, 0xf158bda4, 0xee8847a0, 72); 
TEST_RR_OP( 19 , kmaxds, 0x1a91539c, 0xffffffff, 0x00000000, 76); 
TEST_RR_OP( 20 , kmaxds, 0x1a91539c, 0x00000000, 0xffffffff, 80); 
TEST_RR_OP( 21 , kmaxds, 0x1a91d39c, 0x80000000, 0xffffffff, 84); 
TEST_RR_OP( 22 , kmaxds, 0x1a91539c, 0xffffffff, 0x80000000, 88); 
TEST_RR_OP( 23 , kmaxds, 0x1a91539c, 0xffffffff, 0x00000000, 92); 
TEST_RR_OP( 24 , kmaxds, 0x1a91d39c, 0x80000000, 0xffffffff, 96); 
TEST_RR_OP( 25 , kmaxds, 0x1a91d39c, 0x00000000, 0xffffffff, 100); 
TEST_RR_OP( 26 , kmaxds, 0x1a91d39c, 0x00000000, 0x80000000, 104); 
TEST_RR_OP( 27 , kmaxds, 0x1a91d39c, 0x80000000, 0x00000000, 108); 
TEST_RR_OP( 28 , kmaxds, 0x1a916fb0, 0xffffffff, 0x9fc803b4, 112); 
TEST_RR_OP( 29 , kmaxds, 0x1a916fb0, 0x00000000, 0x80000000, 116); 
TEST_RR_OP( 30 , kmaxds, 0x1a91ecda, 0x8870059a, 0xffffffff, 120); 
TEST_RR_OP( 31 , kmaxds, 0x1a91ecda, 0x80000000, 0x80000000, 124); 
TEST_RR_OP( 32 , kmaxds, 0x1a926cda, 0x80000000, 0xffffffff, 128); 
TEST_RR_OP( 33 , kmaxds, 0x1a92ecda, 0x80000000, 0xffffffff, 132); 
TEST_RR_OP( 34 , kmaxds, 0xfa57ecda, 0x6a34bf8a, 0x80000000, 136); 
TEST_RR_OP( 35 , kmaxds, 0xfa576cda, 0xffffffff, 0x80000000, 140); 
TEST_RR_OP( 36 , kmaxds, 0xfa576cda, 0xc058ef99, 0x00000000, 144); 
TEST_RR_OP( 37 , kmaxds, 0xfa576cda, 0xffffffff, 0xffffffff, 148); 
TEST_RR_OP( 38 , kmaxds, 0xfa576cda, 0x8863f1ec, 0x00000000, 152); 
TEST_RR_OP( 39 , kmaxds, 0xfa576cda, 0x00000000, 0x80000000, 156); 
TEST_RR_OP( 40 , kmaxds, 0x2fe3ecda, 0x80000000, 0xd71d94e7, 160); 
TEST_RR_OP( 41 , kmaxds, 0x2fe3ecda, 0xffffffff, 0xffffffff, 164); 
TEST_RR_OP( 42 , kmaxds, 0x2fe3ecda, 0x80000000, 0x00000000, 168); 
TEST_RR_OP( 43 , kmaxds, 0x2fe46cda, 0x80000000, 0xffffffff, 172); 
TEST_RR_OP( 44 , kmaxds, 0x2fe3ecda, 0xffffffff, 0x80000000, 176); 
TEST_RR_OP( 45 , kmaxds, 0x2fe3ecda, 0x27ba4dc1, 0x00000000, 180); 
TEST_RR_OP( 46 , kmaxds, 0x2fe46cda, 0x80000000, 0xffffffff, 184); 
TEST_RR_OP( 47 , kmaxds, 0x2fe46cda, 0xffffffff, 0x00000000, 188); 
TEST_RR_OP( 48 , kmaxds, 0x2e96ecda, 0x4208fd65, 0x80000000, 192); 
TEST_RR_OP( 49 , kmaxds, 0x2e97042b, 0xffffffff, 0x555a3e09, 196); 
TEST_RR_OP( 50 , kmaxds, 0x2e97042b, 0x704d1992, 0x00000000, 200); 
TEST_RR_OP( 51 , kmaxds, 0x2e97042b, 0x80000000, 0x80000000, 204); 
TEST_RR_OP( 52 , kmaxds, 0x2e96167b, 0x7b048d54, 0xffffffff, 208); 
TEST_RR_OP( 53 , kmaxds, 0x3794167b, 0xe92f11fc, 0x80000000, 212); 
TEST_RR_OP( 54 , kmaxds, 0x3794167b, 0x80000000, 0x80000000, 216); 
TEST_RR_OP( 55 , kmaxds, 0x3794167b, 0x00000000, 0x00000000, 220); 
TEST_RR_OP( 56 , kmaxds, 0x3793967b, 0xffffffff, 0x80000000, 224); 
TEST_RR_OP( 57 , kmaxds, 0x3793967b, 0x00000000, 0xbc3796d7, 228); 
TEST_RR_OP( 58 , kmaxds, 0x3793967b, 0x00000000, 0x80000000, 232); 
TEST_RR_OP( 59 , kmaxds, 0x3793967b, 0x00000000, 0xffffffff, 236); 
TEST_RR_OP( 60 , kmaxds, 0x3793967b, 0x00000000, 0xffffffff, 240); 
TEST_RR_OP( 61 , kmaxds, 0x3793967b, 0x00000000, 0x80000000, 244); 
TEST_RR_OP( 62 , kmaxds, 0x3793967b, 0xbbb2f2b0, 0x00000000, 248); 
TEST_RR_OP( 63 , kmaxds, 0x3794167b, 0x80000000, 0xffffffff, 252); 
TEST_RR_OP( 64 , kmaxds, 0x4979967b, 0x2ebd23cb, 0x80000000, 256); 
TEST_RR_OP( 65 , kmaxds, 0x4979ae4f, 0xbc45d419, 0xffffffff, 260); 
TEST_RR_OP( 66 , kmaxds, 0x4979ae4f, 0xffffffff, 0x00000000, 264); 
TEST_RR_OP( 67 , kmaxds, 0x4979ae4f, 0xffffffff, 0xffffffff, 268); 
TEST_RR_OP( 68 , kmaxds, 0x4979ae4f, 0x00000000, 0x80000000, 272); 
TEST_RR_OP( 69 , kmaxds, 0x4979ae4f, 0xffffffff, 0xffffffff, 276); 
TEST_RR_OP( 70 , kmaxds, 0x4979ae4f, 0xee155a65, 0x00000000, 280); 
TEST_RR_OP( 71 , kmaxds, 0x6826ae4f, 0x80000000, 0x115ec2a6, 284); 
TEST_RR_OP( 72 , kmaxds, 0x5c322e4f, 0xe4d9e817, 0x80000000, 288); 
TEST_RR_OP( 73 , kmaxds, 0x5a3c2e4f, 0x80000000, 0x5bbb03ec, 292); 
TEST_RR_OP( 74 , kmaxds, 0x5a3c2e4f, 0x00000000, 0x80000000, 296); 
TEST_RR_OP( 75 , kmaxds, 0x5a3c2e4f, 0x80000000, 0x00000000, 300); 
TEST_RR_OP( 76 , kmaxds, 0x5a3bc89d, 0xffffffff, 0xd8823e34, 304); 
TEST_RR_OP( 77 , kmaxds, 0x5a3bc89d, 0x00000000, 0x00000000, 308); 
TEST_RR_OP( 78 , kmaxds, 0x5a3bc89d, 0x80000000, 0x00000000, 312); 
TEST_RR_OP( 79 , kmaxds, 0x5a3c489d, 0x80000000, 0xffffffff, 316); 
TEST_RR_OP( 80 , kmaxds, 0x5a3c489d, 0x80000000, 0x80000000, 320); 
TEST_RR_OP( 81 , kmaxds, 0x5a3c489d, 0x00000000, 0x00000000, 324); 
TEST_RR_OP( 82 , kmaxds, 0x5a3c489d, 0x80000000, 0x00000000, 328); 
TEST_RR_OP( 83 , kmaxds, 0x579c245f, 0x5b933843, 0xdcdce312, 332); 
TEST_RR_OP( 84 , kmaxds, 0x579c245f, 0x00000000, 0x00000000, 336); 
TEST_RR_OP( 85 , kmaxds, 0x579c245f, 0x00000000, 0x80000000, 340); 
TEST_RR_OP( 86 , kmaxds, 0x579c245f, 0x80000000, 0x80000000, 344); 
TEST_RR_OP( 87 , kmaxds, 0x579c245f, 0x594c9b35, 0x00000000, 348); 
TEST_RR_OP( 88 , kmaxds, 0x579c245f, 0x80000000, 0x80000000, 352); 
TEST_RR_OP( 89 , kmaxds, 0x2b5d245f, 0x80000000, 0xddc8587e, 356); 
TEST_RR_OP( 90 , kmaxds, 0x2b5d245f, 0x00000000, 0x80000000, 360); 
TEST_RR_OP( 91 , kmaxds, 0x2b5d245f, 0x80000000, 0x00000000, 364); 
TEST_RR_OP( 92 , kmaxds, 0x2b5d93ca, 0x995a08c5, 0xffffffff, 368); 
TEST_RR_OP( 93 , kmaxds, 0x2b5d93ca, 0x80000000, 0x80000000, 372); 
TEST_RR_OP( 94 , kmaxds, 0x31118b16, 0x55253d14, 0xc941e9e0, 376); 
TEST_RR_OP( 95 , kmaxds, 0x31110b16, 0xffffffff, 0x80000000, 380); 
TEST_RR_OP( 96 , kmaxds, 0x3110c02c, 0xffffffff, 0xbb60064a, 384); 
TEST_RR_OP( 97 , kmaxds, 0x3110a890, 0xffffffff, 0x020f19ab, 388); 
TEST_RR_OP( 98 , kmaxds, 0x3110ec6a, 0xffffffff, 0x163ad260, 392); 
TEST_RR_OP( 99 , kmaxds, 0x3110ec6a, 0xfc0acaad, 0x00000000, 396); 
TEST_RR_OP( 100 , kmaxds, 0x3110ec6a, 0xffffffff, 0xffffffff, 400); 
TEST_RR_OP( 101 , kmaxds, 0x3c5b8c24, 0x9441c0d3, 0xdb49cfa5, 404); 
TEST_RR_OP( 102 , kmaxds, 0x3c5baf99, 0xa737caac, 0xffffffff, 408); 
TEST_RR_OP( 103 , kmaxds, 0x3c5baf99, 0x00000000, 0x00000000, 412); 
TEST_RR_OP( 104 , kmaxds, 0x3c5baf99, 0x73293ca0, 0x00000000, 416); 
TEST_RR_OP( 105 , kmaxds, 0x3c5baf99, 0x358dd0ec, 0x00000000, 420); 
TEST_RR_OP( 106 , kmaxds, 0x3c5baf99, 0x80000000, 0x80000000, 424); 
TEST_RR_OP( 107 , kmaxds, 0x3c5baf99, 0x80000000, 0x00000000, 428); 
TEST_RR_OP( 108 , kmaxds, 0x180d2f99, 0x80000000, 0xc512489d, 432); 
TEST_RR_OP( 109 , kmaxds, 0x20382f99, 0x39331056, 0x80000000, 436); 
TEST_RR_OP( 110 , kmaxds, 0x20382f99, 0x00000000, 0x00000000, 440); 
TEST_RR_OP( 111 , kmaxds, 0x20382f99, 0xe23d6263, 0x00000000, 444); 
TEST_RR_OP( 112 , kmaxds, 0x20382f99, 0x00000000, 0x80000000, 448); 
TEST_RR_OP( 113 , kmaxds, 0x20382f99, 0xffffffff, 0x00000000, 452); 
TEST_RR_OP( 114 , kmaxds, 0x20382f99, 0xffffffff, 0x00000000, 456); 
TEST_RR_OP( 115 , kmaxds, 0x20382f99, 0x80000000, 0x80000000, 460); 
TEST_RR_OP( 116 , kmaxds, 0x20382f99, 0x00000000, 0xffffffff, 464); 
TEST_RR_OP( 117 , kmaxds, 0x20382f99, 0x00000000, 0xffffffff, 468); 
TEST_RR_OP( 118 , kmaxds, 0x2037af99, 0xffffffff, 0x80000000, 472); 
TEST_RR_OP( 119 , kmaxds, 0x20372f99, 0xffffffff, 0x80000000, 476); 
TEST_RR_OP( 120 , kmaxds, 0x20372f99, 0xffffffff, 0x00000000, 480); 
TEST_RR_OP( 121 , kmaxds, 0x20372f99, 0xffffffff, 0x00000000, 484); 
TEST_RR_OP( 122 , kmaxds, 0xfa631165, 0x2b9588b0, 0xa33e1fbc, 488); 
TEST_RR_OP( 123 , kmaxds, 0xc9921165, 0x895a9e5e, 0x80000000, 492); 
TEST_RR_OP( 124 , kmaxds, 0xb3749f91, 0x37482ee6, 0x6bfaf531, 496); 
TEST_RR_OP( 125 , kmaxds, 0xaca5255c, 0xe45ba2c8, 0xcdca95c1, 500); 
TEST_RR_OP( 126 , kmaxds, 0xaca5255c, 0x00000000, 0xffffffff, 504); 
TEST_RR_OP( 127 , kmaxds, 0xaca5255c, 0x00000000, 0xffffffff, 508); 
TEST_RR_OP( 128 , kmaxds, 0x80000000, 0x99ad82b2, 0x80000000, 512); 
TEST_CASE( 129 ,516, x14, 1, rdov x14;);
TEST_CASE( 130 ,520, x14, 1, clrov;);
TEST_CASE( 131 ,524, x14, 0, rdov x14;);
TEST_RR_OP( 132 , kmaxds, 0x00000000, 0x00000000, 0x80000000, 528); 
TEST_RR_OP( 133 , kmaxds, 0x00000000, 0x80000000, 0x80000000, 532); 
TEST_RR_OP( 134 , kmaxds, 0xffff8000, 0xffffffff, 0x80000000, 536); 
TEST_RR_OP( 135 , kmaxds, 0x2300ebcc, 0x839eb525, 0x137ec3af, 540); 
TEST_RR_OP( 136 , kmaxds, 0x2300ebcc, 0x00000000, 0x80000000, 544); 
TEST_RR_OP( 137 , kmaxds, 0x382f6bcc, 0x80000000, 0xcc5ad5a3, 548); 
TEST_RR_OP( 138 , kmaxds, 0x382fe474, 0xffffffff, 0x6b90f2e8, 552); 
TEST_RR_OP( 139 , kmaxds, 0x382fe474, 0xffffffff, 0x00000000, 556); 
TEST_RR_OP( 140 , kmaxds, 0x38303cbd, 0xffffffff, 0x2df5d5ac, 560); 
TEST_RR_OP( 141 , kmaxds, 0x38303cbd, 0xd36beb52, 0x00000000, 564); 
TEST_RR_OP( 142 , kmaxds, 0x40bb9e07, 0x0329585b, 0xea9e5e54, 568); 
TEST_RR_OP( 143 , kmaxds, 0x40bbd577, 0xa327da97, 0xffffffff, 572); 
TEST_RR_OP( 144 , kmaxds, 0x40bbd577, 0x80000000, 0x80000000, 576); 
TEST_RR_OP( 145 , kmaxds, 0x38785577, 0x92eaef79, 0x80000000, 580); 
TEST_RR_OP( 146 , kmaxds, 0x52c8ac82, 0x713744f6, 0x308a5911, 584); 
TEST_RR_OP( 147 , kmaxds, 0x52c8ac82, 0x00000000, 0xffffffff, 588); 
TEST_RR_OP( 148 , kmaxds, 0x52c8ac82, 0x80000000, 0x00000000, 592); 
TEST_RR_OP( 149 , kmaxds, 0x52c82c82, 0xffffffff, 0x80000000, 596); 
TEST_RR_OP( 150 , kmaxds, 0x52c82c82, 0x00000000, 0x80000000, 600); 
TEST_RR_OP( 151 , kmaxds, 0x333a2c82, 0x7dcdc0e4, 0x80000000, 604); 
TEST_RR_OP( 152 , kmaxds, 0x2dec2c82, 0xbdf8f564, 0x80000000, 608); 
TEST_RR_OP( 153 , kmaxds, 0x2dec2c82, 0x00000000, 0xffffffff, 612); 
TEST_RR_OP( 154 , kmaxds, 0xef61ac82, 0x952682eb, 0x80000000, 616); 
TEST_RR_OP( 155 , kmaxds, 0xef61ac82, 0xffffffff, 0xffffffff, 620); 
TEST_RR_OP( 156 , kmaxds, 0xef61376b, 0xffffffff, 0xa5a01ab7, 624); 
TEST_RR_OP( 157 , kmaxds, 0xef61376b, 0x00000000, 0x00000000, 628); 
TEST_RR_OP( 158 , kmaxds, 0xef61376b, 0xffffffff, 0xffffffff, 632); 
TEST_RR_OP( 159 , kmaxds, 0xef60b107, 0xffffffff, 0xbbf34257, 636); 
TEST_RR_OP( 160 , kmaxds, 0xef60b107, 0x00000000, 0xffffffff, 640); 
TEST_RR_OP( 161 , kmaxds, 0xef60b107, 0x00000000, 0xe304b2db, 644); 
TEST_RR_OP( 162 , kmaxds, 0x0e62d2a9, 0x68e698ea, 0x033e487d, 648); 
TEST_RR_OP( 163 , kmaxds, 0x0e6252a9, 0xffffffff, 0x80000000, 652); 
TEST_RR_OP( 164 , kmaxds, 0x0e6252a9, 0x80000000, 0x80000000, 656); 
TEST_RR_OP( 165 , kmaxds, 0x0e6252a9, 0xffffffff, 0x00000000, 660); 
TEST_RR_OP( 166 , kmaxds, 0x0e6252a9, 0x80000000, 0x80000000, 664); 
TEST_RR_OP( 167 , kmaxds, 0x0e6252a9, 0x65441aae, 0x00000000, 668); 
TEST_RR_OP( 168 , kmaxds, 0x0e6252a9, 0x00000000, 0xa85269e1, 672); 
TEST_RR_OP( 169 , kmaxds, 0x0e6252a9, 0x80000000, 0x00000000, 676); 
TEST_RR_OP( 170 , kmaxds, 0x0e62d2a9, 0x80000000, 0xffffffff, 680); 
TEST_RR_OP( 171 , kmaxds, 0x0e62d2a9, 0x80000000, 0x80000000, 684); 
TEST_RR_OP( 172 , kmaxds, 0x0e62d2a9, 0x00000000, 0x00000000, 688); 
TEST_RR_OP( 173 , kmaxds, 0x0e62d2a9, 0x00000000, 0x80000000, 692); 
TEST_RR_OP( 174 , kmaxds, 0x0e6352a9, 0x80000000, 0xffffffff, 696); 
TEST_RR_OP( 175 , kmaxds, 0xd92152a9, 0x0832957c, 0x80000000, 700); 
TEST_RR_OP( 176 , kmaxds, 0xd920d156, 0xffffffff, 0x908d11e0, 704); 
TEST_RR_OP( 177 , kmaxds, 0xd9205156, 0xffffffff, 0x80000000, 708); 
TEST_RR_OP( 178 , kmaxds, 0xd9205156, 0xffffffff, 0x00000000, 712); 
TEST_RR_OP( 179 , kmaxds, 0xd92029de, 0xf385cc0d, 0xffffffff, 716); 
TEST_RR_OP( 180 , kmaxds, 0xd9210037, 0xffffffff, 0x641a8dc1, 720); 
TEST_RR_OP( 181 , kmaxds, 0xd9208037, 0xffffffff, 0x80000000, 724); 
TEST_RR_OP( 182 , kmaxds, 0xd9208037, 0x6dbdcd21, 0x00000000, 728); 
TEST_RR_OP( 183 , kmaxds, 0xd9208037, 0x80000000, 0x00000000, 732); 
TEST_RR_OP( 184 , kmaxds, 0xd9208037, 0x00000000, 0xffffffff, 736); 
TEST_RR_OP( 185 , kmaxds, 0xd9200037, 0xffffffff, 0x80000000, 740); 
TEST_RR_OP( 186 , kmaxds, 0xd9200037, 0x00000000, 0x00000000, 744); 
TEST_RR_OP( 187 , kmaxds, 0xd9200037, 0x00000000, 0x80000000, 748); 
TEST_RR_OP( 188 , kmaxds, 0xd9200037, 0x00000000, 0xffffffff, 752); 
TEST_RR_OP( 189 , kmaxds, 0xd9200037, 0x4ce0a5cd, 0x00000000, 756); 
TEST_RR_OP( 190 , kmaxds, 0xd9200037, 0xffffffff, 0x00000000, 760); 
TEST_RR_OP( 191 , kmaxds, 0xd91f62a0, 0x7cc5df2e, 0xffffffff, 764); 
TEST_RR_OP( 192 , kmaxds, 0xd91ee2a0, 0xffffffff, 0x80000000, 768); 
TEST_RR_OP( 193 , kmaxds, 0xd12462a0, 0xc351f00b, 0x80000000, 772); 
TEST_RR_OP( 194 , kmaxds, 0xd124e2a0, 0x80000000, 0xffffffff, 776); 
TEST_RR_OP( 195 , kmaxds, 0xd124e2a0, 0x80000000, 0x00000000, 780); 
TEST_RR_OP( 196 , kmaxds, 0xd124e2a0, 0xffffffff, 0xffffffff, 784); 
TEST_RR_OP( 197 , kmaxds, 0xd124e2a0, 0x00000000, 0x80000000, 788); 
TEST_RR_OP( 198 , kmaxds, 0xd12587f6, 0xbd8162d7, 0xffffffff, 792); 
TEST_RR_OP( 199 , kmaxds, 0xd12587f6, 0xffffffff, 0x00000000, 796); 

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
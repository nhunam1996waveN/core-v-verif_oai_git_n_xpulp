#!/usr/bin/perl 
system ("mkdir -p rv64ip");
system ("mkdir -p references");
system ("mkdir -p references_debug");
system ("rm -rf rv64ip/*");
system ("rm -rf references/*");
system ("rm -rf references_debug/*");
use Switch;
use Math::Int64 qw(int64 uint64);
# use Math::Int128 qw(int128);
# use integer;
# no warnings;
# $TEST_RANDOM=1;
$TEST_NUM_PARAM=200;
$TEST_NUM=$TEST_NUM_PARAM;
# $TEST_NUM=3;
#spike sai
# "umul16", "umulx16", "swap8", "kmar64", "ukmar64", "ukmsr64", "smalda", "smalxda"
#smalda, smalxda: add 32 bit, add 64bit
#khmbb: shift signed 16, 32
@ISA_LIST_RAND= (	"add16"      , "radd16"       , "uradd16"   , "kadd16"    , "ukadd16"    ,
	    	"sub16"		 ,"rsub16"		  , "ursub16"	, "ksub16"	  , "uksub16"    ,
			"cras16"     , "rcras16"      , "urcras16"  , "kcras16"   , "ukcras16"   ,
	      	"crsa16"     , "rcrsa16"      , "urcrsa16"  , "kcrsa16"   , "ukcrsa16"   ,
	      	"stas16"     , "rstas16"      , "urstas16"  , "kstas16"   , "ukstas16"   ,
	      	"stsa16"     , "rstsa16"      , "urstsa16"  , "kstsa16"   , "ukstsa16"   ,
	      	"add8"       , "radd8"        , "uradd8"    , "kadd8"     , "ukadd8"     , "sub8"      , "rsub8"     , "ursub8"       , "ksub8"     , "uksub8"     ,
	      	"srai16"     , "srai16.u"     , "srli16"    , "srli16.u"  , "sll16"      , "slli16"    , "ksll16"    , "kslli16"      , "kslra16"   , "kslra16.u"  ,
	      	"sra8"       , "sra8.u"       , "sra16"     , "sra16.u"   , "srl16"      , "srl16.u"   , "srl8"      , "srl8.u"       , 
	      	"srai8"      , "srai8.u"      , "srli8"     , "srli8.u"   , "sll8"       , "slli8"     , "ksll8"     , "kslli8"       , "kslra8"    , "kslra8.u"   ,
	      	"cmpeq16"    , "scmplt16"     , "scmple16"  , "ucmplt16"  , "ucmple16"   , "cmpeq8"    , "scmplt8"   , "scmple8"      , "ucmplt8"   , "ucmple8"    ,
	      	"smul16"     , "smulx16"      , "umul16"    , "umulx16"   , "khm16"      ,
	      	"khmx16"     , "smul8"        , "smulx8"    , "umul8"     , "umulx8"     , "khm8"      , "khmx8"     ,
	      	"smin16"     , "umin16"       , "smax16"    , "umax16"    , "sclip16"    , "uclip16"   , "kabs16"    , "clrs16"       , "clz16"     , "swap16"     ,
	      	"smin8"      , "umin8"        , "smax8"     , "umax8"     , "kabs8"      , "sclip8"    , "uclip8"    , "clrs8"        , "clz8"      , "swap8"      ,
	      	"sunpkd810"  , "sunpkd820"    , "sunpkd830" , "sunpkd831" , "sunpkd832"  , "zunpkd810" , "zunpkd820" , "zunpkd830"    , "zunpkd831" , "zunpkd832"  ,
	      	"pack"       , "pkbt16"       , "pktb16"    , "packu"     , "smmul"      , "smmul.u"   ,
	      	"kmmac"      , "kmmac.u"      , "kmmsb"     , "kmmsb.u"   , "kwmmul"    , "kwmmul.u"  ,
	      	"smmwb"      , "smmwb.u"      , "smmwt"     , "smmwt.u"   , "kmmawb"     , "kmmawb.u"  , "kmmawt"    , "kmmawt.u"     ,
	      	"kmmwb2"     , "kmmwb2.u"     , "kmmwt2"    , "kmmwt2.u"  , "kmmawb2"    , "kmmawb2.u" , "kmmawt2"   , "kmmawt2.u"    ,
	      	"smbb16"     , "smbt16"       , "smtt16"    , "kmda"      , "kmxda"      , "smds"      , "smdrs"     , "smxds"        ,
	      	"kmabb"      , "kmabt"        , "kmatt"     , "kmada"     , "kmaxda"     , "kmads"     , "kmadrs"    , "kmaxds"		  , "kmsda" , "kmsxda"  ,
	      	"smal"       , "sclip32"      , "uclip32"   , "clrs32"    , "clz32"      , "pbsad"     , "pbsada"    , "smaqa"        ,  "umaqa" , "smaqa.su"  ,
	      	"add64"      , "radd64"       , "uradd64"   , "kadd64"    , "ukadd64"    , "sub64"     , "rsub64"    , "ursub64"      , "ksub64", "uksub64" ,
	      	"smar64"     , "smsr64"       , "umar64"    , "umsr64"    , "kmar64"     , "kmsr64"    , "ukmar64"   , "ukmsr64"      , 
	      	"smalbb"     , "smalbt"       , "smaltt"    , "smalda"    , "smalxda"    , "smalds"    , "smaldrs"   , "smalxds"      , "smslda", "smslxda" ,
	      	"kaddh"      , "ksubh"        , "khmbb"     , "khmbt"     , "khmtt"      , "ukaddh"    , "uksubh"    ,   
	      	"kaddw"      , "ukaddw"       , "ksubw"     , "uksubw"    , "kdmbb"      , "kdmbt"     , "kdmtt"     ,  
	      	"kslraw"     , "kslraw.u"     ,"ksllw"      , "kslliw"    , "kdmabb"     , "kdmabt"    , "kdmatt"    , "kabsw" ,
	      	"raddw"      , "uraddw"       , "rsubw"     , "ursubw"    , "mulr64"     , "mulsr64"   , "msubr32"   ,  
	      	"ave"        , "sra.u"        , "srai.u"    , "bitrev"    , "bitrevi"    , "fsr"       , "fsri"     ,  "insb" , "maddr32" , "max" , "min" ,
	      	"cmix"       
			);
 # "smalbb", "smalbt", "smaltt","smalda","smalxda","smalds","smaldrs","smalxds","smslda","smslxda"
@ISA_LIST=(	"add16"      , "radd16"       , "uradd16"   , "kadd16"    , "ukadd16"    ,
	    	"sub16"		 ,"rsub16"		  , "ursub16"	, "ksub16"	  , "uksub16"    ,
			"cras16"     , "rcras16"      , "urcras16"  , "kcras16"   , "ukcras16"   ,
	      	"crsa16"     , "rcrsa16"      , "urcrsa16"  , "kcrsa16"   , "ukcrsa16"   ,
	      	"stas16"     , "rstas16"      , "urstas16"  , "kstas16"   , "ukstas16"   ,
	      	"stsa16"     , "rstsa16"      , "urstsa16"  , "kstsa16"   , "ukstsa16"   ,
	      	"add8"       , "radd8"        , "uradd8"    , "kadd8"     , "ukadd8"     , "sub8"      , "rsub8"     , "ursub8"       , "ksub8"     , "uksub8"     ,
	      	"srai16"     , "srai16.u"     , "srli16"    , "srli16.u"  , "sll16"      , "slli16"    , "ksll16"    , "kslli16"      , "kslra16"   , "kslra16.u"  ,
	      	"sra8"       , "sra8.u"       , "sra16"     , "sra16.u"   , "srl16"      , "srl16.u"   , "srl8"      , "srl8.u"       , 
	      	"srai8"      , "srai8.u"      , "srli8"     , "srli8.u"   , "sll8"       , "slli8"     , "ksll8"     , "kslli8"       , "kslra8"    , "kslra8.u"   ,
	      	"cmpeq16"    , "scmplt16"     , "scmple16"  , "ucmplt16"  , "ucmple16"   , "cmpeq8"    , "scmplt8"   , "scmple8"      , "ucmplt8"   , "ucmple8"    ,
	      	"smul16"     , "smulx16"      , "umul16"    , "umulx16"   , "khm16"      ,
	      	"khmx16"     , "smul8"        , "smulx8"    , "umul8"     , "umulx8"     , "khm8"      , "khmx8"     ,
	      	"smin16"     , "umin16"       , "smax16"    , "umax16"    , "sclip16"    , "uclip16"   , "kabs16"    , "clrs16"       , "clz16"     , "swap16"     ,
	      	"smin8"      , "umin8"        , "smax8"     , "umax8"     , "kabs8"      , "sclip8"    , "uclip8"    , "clrs8"        , "clz8"      , "swap8"      ,
	      	"sunpkd810"  , "sunpkd820"    , "sunpkd830" , "sunpkd831" , "sunpkd832"  , "zunpkd810" , "zunpkd820" , "zunpkd830"    , "zunpkd831" , "zunpkd832"  ,
	      	"pack"       , "pkbt16"       , "pktb16"    , "packu"     , "smmul"      , "smmul.u"   ,
	      	"kmmac"      , "random"       ,  "kmmac.u"  , "kmmsb"     , "kmmsb.u"    , "kwmmul"    , "kwmmul.u"  ,
	      	"smmwb"      , "smmwb.u"      , "smmwt"     , "smmwt.u"   , "kmmawb"     , "kmmawb.u"  , "kmmawt"    , "kmmawt.u"     ,
	      	"kmmwb2"     , "kmmwb2.u"     , "kmmwt2"    , "kmmwt2.u"  , "kmmawb2"    , "kmmawb2.u" , "kmmawt2"   , "kmmawt2.u"    ,
	      	"smbb16"     , "smbt16"       , "smtt16"    , "kmda"      , "kmxda"      , "smds"      , "smdrs"     , "smxds"        ,
	      	"kmabb"      , "kmabt"        , "kmatt"     , "kmada"     , "kmaxda"     , "kmads"     , "kmadrs"    , "kmaxds"		  , "kmsda" , "kmsxda"  ,
	      	"smal"       , "sclip32"      , "uclip32"   , "clrs32"    , "clz32"      , "pbsad"     , "pbsada"    , "smaqa"        ,  "umaqa" , "smaqa.su"  ,
	      	"add64"      , "radd64"       , "uradd64"   , "kadd64"    , "ukadd64"    , "sub64"     , "rsub64"    , "ursub64"      , "ksub64", "uksub64" ,
	      	"smar64"     , "smsr64"       , "umar64"    , "umsr64"    , "kmar64"     , "kmsr64"    , "ukmar64"   , "ukmsr64"      , 
	      	"smalbb"     , "smalbt"       , "smaltt"    , "smalda"    , "smalxda"    , "smalds"    , "smaldrs"   , "smalxds"      , "smslda", "smslxda" ,
	      	"kaddh"      , "ksubh"        , "khmbb"     , "khmbt"     , "khmtt"      , "ukaddh"    , "uksubh"    ,   
	      	"kaddw"      , "ukaddw"       , "ksubw"     , "uksubw"    , "kdmbb"      , "kdmbt"     , "kdmtt"     ,  
	      	"kslraw"     , "kslraw.u"     ,"ksllw"      , "kslliw"    , "kdmabb"     , "kdmabt"    , "kdmatt"    , "kabsw" ,
	      	"raddw"      , "uraddw"       , "rsubw"     , "ursubw"    , "mulr64"     , "mulsr64"   , "msubr32"   ,  
	      	"ave"        , "sra.u"        , "srai.u"    , "bitrev"    , "bitrevi"    ,"fsr"      , "fsri"     ,  "insb" , "maddr32" , "max" , "min" ,
	      	"cmix"       
			);
#da luoc bo mot so 
# @ISA_LIST=(  "add8"       , "add16"     , "kadd16"    , "kadd8"     , "radd16"    ,  "radd8" , "ukadd16" , "ukadd8" , "uradd16" , "uradd8" ,
# 			"sub8"       , "sub16"     , "ksub16"    , "ksub8"     , "rsub16"    ,  "rsub8" , "uksub16" , "uksub8" , "ursub16" , "ursub8" ,
# 			"cras16"     , "rcras16"   , "urcras16"  , "kcras16"   , "ukcras16"  ,
# 			"crsa16"     , "rcrsa16"   , "urcrsa16"  , "kcrsa16"   , "ukcrsa16"  ,
# 			"stas16"     , "rstas16"   , "urstas16"  , "kstas16"   , "ukstas16"  ,
# 			"stsa16"     , "rstsa16"   , "urstsa16"  , "kstsa16"   , "ukstsa16"  ,
# 			"sra8"       , "sra8.u"    , "sra16"     , "sra16.u"   , "srl16"     ,  "srl16.u" , "srl8"    , "srl8.u"  ,
# 			"srai16"     , "srai16.u"  , "srli16"    , "srli16.u"  , "sll16"     ,  "slli16"  , "ksll16"  , "kslli16" , "kslra16" ,"kslra16.u"  ,
# 			"srai8"      , "srai8.u"   , "srli8"     , "srli8.u"   , "sll8"      ,  "slli8"   , "ksll8"   , "kslli8"  , "kslra8"  ,"kslra8.u"  ,
# 			"cmpeq16"    , "scmplt16"  , "scmple16"  , "ucmplt16"  , "ucmple16"  , "cmpeq8"   , "scmplt8" , "scmple8" , "ucmplt8" ,"ucmple8"  ,
# 			"umul16"     , "umulx16"   , "swap8"     , "kmar64"    , "ukmar64"   ,  "ukmsr64"  ,
# 			"smul16"     , "smulx16"   , "khm16"     , "khmx16"    , "smul8"     ,  "smulx8" ,"umul8" ,"umulx8" , "khm8" , "khmx8"  ,
# 			"smin16"     , "umin16"    , "smax16"    , "umax16"    , "sclip16"   ,  "uclip16" , "kabs16" , "clrs16" , "clz16" , "swap16"   ,
# 			"smin8"      , "umin8"     , "smax8"     , "umax8"     , "kabs8"     ,  "sclip8" , "uclip8" , "clrs8" , "clz8"  ,
# 			"sunpkd810"  , "sunpkd820" , "sunpkd830" , "sunpkd831" , "sunpkd832" ,  "zunpkd810" , "zunpkd820" , "zunpkd830" , "zunpkd831" , "zunpkd832"  ,
# 			"pkbb16"     , "pkbt16"    , "pktb16"    , "pktt16"    , "smmul"     ,  "smmul.u" , "kmmac" ,"random" , "kmmac.u" , "kmmsb" , "kmmsb.u" , "kwmmul" , "kwmmul.u"  ,
# 			"smmwb"      , "smmwb.u"   , "smmwt"     , "smmwt.u"   , "kmmawb"    ,  "kmmawb.u" , "kmmawt" , "kmmawt.u" , "kmmwb2" , "kmmwb2.u" , "kmmwt2"  ,"kmmwt2.u" , "kmmawb2" , "kmmawb2.u" , "kmmawt2" , "kmmawt2.u"   ,
# 			"smbb16"     , "smbt16"    , "smtt16"    , "kmda"      , "kmxda"     ,  "smds" , "smdrs" , "smxds" , "kmabb" , "kmabt" , "kmatt" , "kmada" , "kmaxda" , "kmads" , "kmadrs" , "kmaxds" , "kmsda" , "kmsxda"  ,
# 			"smal"       , "sclip32"   , "uclip32"   , "clrs32"    , "clz32"     ,  "pbsad" , "pbsada" , "smaqa" , "umaqa" , "smaqa.su"  ,
# 			"kaddh"      , "ksubh"     , "khmbb"     , "khmbt"     , "khmtt"     ,  "ukaddh"  ,"uksubh"   ,
# 			"kaddw"      , "ukaddw"    , "ksubw"     , "uksubw"    , "kdmbb"     ,  "kdmbt" , "kdmtt" , "kslraw" , "kslraw.u" , "ksllw" , "kslliw" , "kdmabb" , "kdmabt" , "kdmatt"  ,"kabsw"  ,
# 			"raddw"      , "uraddw"    , "rsubw"     , "ursubw"    , "mulr64"    ,  "mulsr64" , "msubr32"  ,
# 			"ave"        , "sra.u"     , "srai.u"    , "bitrev"    , "bitrevi"   ,  "fsr" , "fsri" , "insb" , "maddr32" , "max" , "min" ,
# 			);
# @ISA_LIST= ("add8");
if ($#ARGV >= 0) {      #check size argument, if have at least one (size =0)
	@ISA_LIST=@ARGV;
}
$IMXU=0;
$IMXU_EN=0;
$ONEREG_EN=0;
$THREEREG_EN=0;
# $OV_REG=0;
@OV_REG=(0,0,0,0);
$test_num=2;

@ISA_LIST_W32=("kwmmul","kwmmul.u","smmwb","smmwb.u","smmwt","smmwt.u","kmmawb","kmmawb.u","kmmawt","kmmawt.u","kmmwb2","kmmwb2.u","kmmwt2","kmmwt2.u","kmmawb2","kmmawb2.u","kmmawt2","kmmawt2.u","kmabb","kmabt","kmatt","kmada","kmaxda","kmads","kmadrs","kmaxds","kmsda","kmsxda","smal","smaqa","umaqa","smaqa.su",
				"smalbb", "smalbt", "smaltt","smalda","smalxda","smalds","smaldrs","smalxds","smslda","smslxda",
				"kaddh", "ksubh", "khmbb", "khmbt", "khmtt", "ukaddh", "uksubh",
				"kaddw", "ukaddw", "ksubw", "uksubw", "kdmbb", "kdmbt", "kdmtt", "kslraw", "kslraw.u",
				"ksllw", "kslliw", "kdmabb", "kdmabt", "kdmatt", "kabsw","raddw", "uraddw", "rsubw", "ursubw",
				"mulr64", "mulsr64", "msubr32", "ave", "sra.u", "srai.u", "bitrev", "bitrevi", "wext", "wexti","fsr", "fsri", "insb", "max", "min",
				"sraiw.u", "cmix", "bpick",
				"kmda", "kmxda", "smds", "smdrs", "smxds"
	);
@ISA_LIST_W16=();
@ISA_LIST_W64=();



sub signed_mul8 {
	my $x1 = $_[0];
	my $x2 = $_[1];
	$sign_x1 = ($x1 >> 7) & 0x1;
	$sign_x2 = ($x2 >> 7) & 0x1;
	if ($sign_x1 != 0) {
		$val_int_x1 = (0-$x1) & 0xff;
	} else {
		$val_int_x1 = $x1 & 0xff;
	}
	if ($sign_x2 != 0) {
		$val_int_x2 = (0-$x2) & 0xff;
	} else {
		$val_int_x2 = $x2 & 0xff;
	}
	my $res_mul = $val_int_x1 * $val_int_x2;
	if ($sign_x2 != $sign_x1) {
		$res_mul = (0-$res_mul) & 0xffff;
	}
	return ($res_mul & 0xffff);
}
sub unsigned_mul8 {
	my $x1 = $_[0];
	my $x2 = $_[1];
	my $res_mul = $x1 * $x2;
	return ($res_mul & 0xffff);
}

sub signed_unsiged_mul8 {
	my $x1 = $_[0];
	my $x2 = $_[1];
	$sign_x1 = ($x1 >> 7) & 0x1;
	if ($sign_x1 != 0) {
		$val_int_x1 = (0-$x1) & 0xff;
	} else {
		$val_int_x1 = $x1 & 0xff;
	}
	my $res_mul = $val_int_x1 * $x2;
	if ($sign_x1 == 1) {
		$res_mul = (0-$res_mul) & 0xffff;
	}
	return ($res_mul & 0xffff);
}

sub signed_mul16 {
	my $x1 = $_[0];
	my $x2 = $_[1];
	$sign_x1 = ($x1 >> 15) & 0x1;
	$sign_x2 = ($x2 >> 15) & 0x1;
	if ($sign_x1 != 0) {
		$val_int_x1 = (0-$x1) & 0xffff;
	} else {
		$val_int_x1 = $x1 & 0xffff;
	}
	if ($sign_x2 != 0) {
		$val_int_x2 = (0-$x2) & 0xffff;
	} else {
		$val_int_x2 = $x2 & 0xffff;
	}
	my $res_mul = $val_int_x1 * $val_int_x2;
	if ($sign_x2 != $sign_x1) {
		$res_mul = (0 - $res_mul) & 0xffff_ffff;
	}
	return ($res_mul & 0xffff_ffff);
}

sub unsigned_mul16 {
	my $x1 = $_[0];
	my $x2 = $_[1];
	my $res_mul = $x1 * $x2;
	return ($res_mul & 0xffff_ffff);
}

sub signed_mul32 {
	my $x1 = $_[0];
	my $x2 = $_[1];
	$sign_x1 = ($x1 >> 31) & 0x1;
	$sign_x2 = ($x2 >> 31) & 0x1;
	if ($sign_x1 != 0) {
		$val_int_x1 = (0-$x1) & 0xffff_ffff;
	} else {
		$val_int_x1 = $x1 & 0xffff_ffff;
	}
	if ($sign_x2 != 0) {
		$val_int_x2 = (0-$x2) & 0xffff_ffff;
	} else {
		$val_int_x2 = $x2 & 0xffff_ffff;
	}
	my $res_mul = $val_int_x1 * $val_int_x2;
	if ($sign_x2 != $sign_x1) {
		$res_mul = (int64(0) - int64($res_mul)) & 0xffff_ffff_ffff_ffff;
		# print "vaovaovao";
		# $res_mul = (~ $res_mul) +1;
	}
	return ($res_mul & 0xffff_ffff_ffff_ffff);
}

sub unsigned_mul32 {
	my $x1 = $_[0];
	my $x2 = $_[1];
	my $res_mul = $x1 * $x2;
	return ($res_mul & 0xffff_ffff_ffff_ffff);
}

sub update_input {
	switch($ISA_WIDTH) {
		case 8 {
					my $tmp_rand_rs1 = int(rand(0xff));
					my $tmp_rand_rs2 = int(rand(0xff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x00, 0xff, 0x80);
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x00, 0xff, 0x80);
					# $rs1[$i] = int(rand(0xff));
					# $rs2[$i] = int(rand(0xff));
					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
				}
				case 16 {
					my $tmp_rand_rs1 = int(rand(0xffff));
					my $tmp_rand_rs2 = int(rand(0xffff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x0000, 0xffff, 0x8000);
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x0000, 0xffff, 0x8000);
					# $rs1[$i] = int(rand(0xffff));
					# $rs2[$i] = int(rand(0xffff));
					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
					# $rs1[$i] = int(rand(0xffff));
					# $rs2[$i] = int(rand(0xffff));
				}
				case 32 {
					my $tmp_rand_rs1 = int(rand(0xffff_ffff));
					my $tmp_rand_rs2 = int(rand(0xffff_ffff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x0000_0000, 0xffff_ffff, 0x8000_0000);
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x0000_0000, 0xffff_ffff, 0x8000_0000);
					# $rs1[$i] = int(rand(0xffffffff));
					# $rs2[$i] = int(rand(0xffffffff));
					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
				}
				case 64 {
					my $tmp_rand_rs1 = int(rand(0xffff_ffff))* (2**32) + int(rand(0xffff_ffff));
					my $tmp_rand_rs2 = int(rand(0xffff_ffff))* (2**32) + int(rand(0xffff_ffff));
					my $tmp_rand_rs3 = int(rand(0xffff_ffff))* (2**32) + int(rand(0xffff_ffff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x0000_0000_0000_0000, 0xffff_ffff_ffff_ffff, 0x8000_0000_0000_0000);
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x0000_0000_0000_0000, 0xffff_ffff_ffff_ffff, 0x8000_0000_0000_0000);
					my @tmp_list_rand_rs3 = ($tmp_rand_rs3, 0x0000_0000_0000_0000, 0xffff_ffff_ffff_ffff, 0x8000_0000_0000_0000);

					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
					$rs3[$i] = @tmp_list_rand_rs3[int rand (@tmp_list_rand_rs3)];
				}
		else {print "ERROR_1: no ISA_WIDTH correct with $ISA_WIDTH at $ISA_NAME\n"; exit;}
	}
}

sub update_rs1_64b {
	my $tmp_rand_rs1 = int(rand(0xffff_ffff))* (2**32) + int(rand(0xffff_ffff));
	my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x0000_0000_0000_0000, 0xffff_ffff_ffff_ffff, 0x8000_0000_0000_0000);
	$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
}

sub update_rs3_32b {
	my $tmp_rand_rs3 = int(rand(0xffff_ffff));
	my @tmp_list_rand_rs3 = ($tmp_rand_rs3, 0x0000_0000, 0xffff_ffff, 0x8000_0000);
	$rs3[$i] = @tmp_list_rand_rs3[int rand (@tmp_list_rand_rs3)];
}

sub ov_rd_and_clr {
	$test_num = $test_num +1;
	if ($test_num <$TEST_NUM_PARAM) {
		printf fh ("TEST_CASE( $test_num ,$addr, x14, 1, rdov x14;);\n");
		$res_rd64 = 1;
		$res_rd32 = 1;
		printf fh_ref ("00000001\n",);
		printf fh_ref_debug ("00000001 test_num: $test_num , $ISA_NAME\n",);
		$addr = $addr +4;
		$fill_value = $fill_value + 1;
	}
	$rd[0] = 1; 
	$rd[1] = 0; 
	$rd[2] = 0; 
	$rd[3] = 0; 
	$rd[4] = 0; 
	$rd[5] = 0; 
	$rd[6] = 0; 
	$rd[7] = 0; 
	$test_num = $test_num +1;
	if ($test_num <$TEST_NUM_PARAM) {
		printf fh ("TEST_CASE( $test_num ,$addr, x14, 1, clrov;);\n");
		$res_rd64 = 1;
		$res_rd32 = 1;
		printf fh_ref ("00000001\n",);
		printf fh_ref_debug ("00000001 test_num: $test_num , $ISA_NAME\n",);
		$addr = $addr +4;
		$fill_value = $fill_value + 1;
	}
	$test_num = $test_num +1;
	if ($test_num <$TEST_NUM_PARAM) {
		printf fh ("TEST_CASE( $test_num ,$addr, x14, 0, rdov x14;);\n");
		$res_rd64 = 0;
		$res_rd32 = 0;
		printf fh_ref ("00000000\n",);
		printf fh_ref_debug ("00000000 test_num: $test_num , $ISA_NAME\n",);
		$addr = $addr +4;
		$fill_value = $fill_value + 1;
	}
	$rd[0] = 0;
	# $OV_REG=0;
	@OV_REG=(0,0,0,0);
}

# @ISA_LIST= ("khmx16");
foreach my $ISA_NAME (@ISA_LIST) {
	foreach my $x (@ISA_LIST_W64) {
		if ($x eq $ISA_NAME ) {
			$MATCH_W64=1;
		}
	}
	foreach my $x (@ISA_LIST_W32) {
		if ($x eq $ISA_NAME ) {
			$MATCH_W32=1;
		}
	}
	foreach my $x (@ISA_LIST_W16) {
		if ($x eq $ISA_NAME ) {
			$MATCH_W16=1;
		}
	}
	$ISA_NAME_C=$ISA_NAME; 
	$FILE_NAME="$ISA_NAME.S";
	# $ISA_WIDTH= $ISA_NAME_C =~ s/[^0-9]//g;
	if ($ISA_NAME_C =~ /[a-z]64/ || $MATCH_W64==1) {
		$ISA_WIDTH=64
	} elsif ($ISA_NAME_C =~ /[a-z]32/ || $ISA_NAME_C =~ /^smm/ || $ISA_NAME_C =~ /^^kmm/ || $MATCH_W32==1) {
		$ISA_WIDTH=32;
	} elsif ($ISA_NAME_C =~ /[a-z]16/ || $MATCH_W16==1) {
		$ISA_WIDTH=16
	}elsif ($ISA_NAME_C =~ /[a-z]8/ || $ISA_NAME_C =~ /[a-z]8[0-9]{2}/) {
		$ISA_WIDTH=8
	}else {
		$ISA_WIDTH=8
	}
	$MATCH_W16=0;
	$MATCH_W32=0;
	$MATCH_W64=0;
	print "Writing $FILE_NAME\n";


	open (fh, ">", "rv64ip/$FILE_NAME");
	open (fh_ref, ">", "references/$ISA_NAME.reference_output");
	open (fh_ref_debug, ">", "references_debug/$ISA_NAME.reference_output");

	#Print header
	print fh "# See LICENSE for license details.\n";
	print fh "#*****************************************************************************\n";
	print fh "# $FILE_NAME\n";
	print fh "#-----------------------------------------------------------------------------\n";
	print fh "#\n";
	print fh "# Test add instruction.\n";
	print fh "#\n";
	print fh "\n";
	print fh "\n#include \"riscv_test.h\"";
	print fh "\n#include \"compliance_test.h\"";
	print fh "\n#include \"compliance_io.h\"";
	print fh "\n#include \"aw_test_macros.h\"";
	print fh "\n";
	print fh "\n";
	print fh "RVTEST_RV64U\n";
	print fh "RV_COMPLIANCE_CODE_BEGIN\n";
	print fh "\n";
	print fh "  #-------------------------------------------------------------\n";
	print fh "  # Arithmetic tests\n";
	print fh "  #-------------------------------------------------------------\n";
	print fh "\n";

	$rd32[0] = 0;
	$rd32[1] = 0;
	$res_rd32 = 0;
	$res_rd64 = 0;

	switch($ISA_WIDTH) {
		case 8 {
			@rs1 = (0,0,0,0);
			@se9_rs1 = (0,0,0,0);
			@ze9_rs1 = (0,0,0,0);
			@rs2 = (0,0,0,0);
			@se9_rs2 = (0,0,0,0);
			@ze9_rs2 = (0,0,0,0);
			@rd  = (0,0,0,0);
		}
		case 16 {
			@rs1 = (0,0);
			@se17_rs1 = (0,0);
			@ze17_rs1 = (0,0);
			@rs2 = (0,0);
			@se17_rs2 = (0,0);
			@ze17_rs2 = (0,0);
			@rd  = (0,0);
		}
		case 32 {
			@rs1 = (0);
			@rs2 = (0);
			@rd  = (0);
		}
		case 64 {
			@rs1 = (0);
			@rs2 = (0);
			@rd  = (0);
		}
		else {print "ERROR_2: no ISA_WIDTH correct with  $ISA_WIDTH\n"; exit;}
	}


	for ($test_num = 2; $test_num < $TEST_NUM; $test_num++) {
		# printf("aaaaaaaa\n");
		# printf("aaaaaaaa test_num: %d\n", $test_num);
		if ($TEST_RANDOM == 1 ||  $ISA_NAME eq "random") {
			if ($ISA_NAME eq "random") {
				$TEST_NUM=$TEST_NUM_PARAM;
				$rd32[0] = 0;
				$rd32[1] = 0;

			}
			$TEST_RANDOM = 1;
			$ISA_NAME= $ISA_LIST_RAND[int rand (@ISA_LIST_RAND)];
			# $ISA_NAME= $ISA_LIST[int rand (@ISA_LIST)];
			foreach my $x (@ISA_LIST_W64) {
				if ($x eq $ISA_NAME ) {
					$MATCH_W64=1;
				}
			}
			foreach my $x (@ISA_LIST_W32) {
				if ($x eq $ISA_NAME ) {
					$MATCH_W32=1;
				}
			}
			foreach my $x (@ISA_LIST_W16) {
				if ($x eq $ISA_NAME ) {
					$MATCH_W16=1;
				}
			}
			$ISA_NAME_C=$ISA_NAME;
			if ($ISA_NAME_C =~ /[a-z]64/ || $MATCH_W64==1) {
				$ISA_WIDTH=64
			} elsif ($ISA_NAME_C =~ /[a-z]32/ || $ISA_NAME_C =~ /^smm/ || $ISA_NAME_C =~ /^^kmm/ || $MATCH_W32==1) {
				$ISA_WIDTH=32;
			} elsif ($ISA_NAME_C =~ /[a-z]16/ || $MATCH_W16==1) {
				$ISA_WIDTH=16
			}elsif ($ISA_NAME_C =~ /[a-z]8/ || $ISA_NAME_C =~ /[a-z]8[0-9]{2}/) {
				$ISA_WIDTH=8
			}else {
				$ISA_WIDTH=8
			}
			$MATCH_W16=0;
			$MATCH_W32=0;
			$MATCH_W64=0;
		}
		for(my $i = 0;$i < 32/$ISA_WIDTH; $i ++) {
			switch($ISA_WIDTH) {
				case 8 {
					my $tmp_rand_rs1 = int(rand(0xff));
					my $tmp_rand_rs2 = int(rand(0xff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x00, 0xff, 0x80); 
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x00, 0xff, 0x80);
					# $rs1[$i] = int(rand(0xff));
					# $rs2[$i] = int(rand(0xff));
					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
				}
				case 16 {
					my $tmp_rand_rs1 = int(rand(0xffff));
					my $tmp_rand_rs2 = int(rand(0xffff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x0000, 0xffff, 0x8000);
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x0000, 0xffff, 0x8000);
					# $rs1[$i] = int(rand(0xffff));
					# $rs2[$i] = int(rand(0xffff));
					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
					# $rs1[$i] = int(rand(0xffff));
					# $rs2[$i] = int(rand(0xffff));
				}
				case 32 {
					my $tmp_rand_rs1 = int(rand(0xffff_ffff));
					my $tmp_rand_rs2 = int(rand(0xffff_ffff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x0000_0000, 0xffff_ffff, 0x8000_0000);
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x0000_0000, 0xffff_ffff, 0x8000_0000);
					# $rs1[$i] = int(rand(0xffffffff));
					# $rs2[$i] = int(rand(0xffffffff));
					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
				}
				case 64 {
					my $tmp_rand_rs1 = int(rand(0xffff_ffff))* (2**32) + int(rand(0xffff_ffff));
					my $tmp_rand_rs2 = int(rand(0xffff_ffff))* (2**32) + int(rand(0xffff_ffff));
					my $tmp_rand_rs3 = int(rand(0xffff_ffff))* (2**32) + int(rand(0xffff_ffff));
					my @tmp_list_rand_rs1 = ($tmp_rand_rs1, 0x0000_0000_0000_0000, 0xffff_ffff_ffff_ffff, 0x8000_0000_0000_0000);
					my @tmp_list_rand_rs2 = ($tmp_rand_rs2, 0x0000_0000_0000_0000, 0xffff_ffff_ffff_ffff, 0x8000_0000_0000_0000);
					my @tmp_list_rand_rs3 = ($tmp_rand_rs3, 0x0000_0000_0000_0000, 0xffff_ffff_ffff_ffff, 0x8000_0000_0000_0000);

					$rs1[$i] = @tmp_list_rand_rs1[int rand (@tmp_list_rand_rs1)];
					$rs2[$i] = @tmp_list_rand_rs2[int rand (@tmp_list_rand_rs2)];
					$rs3[$i] = @tmp_list_rand_rs3[int rand (@tmp_list_rand_rs3)];
				}
				else {print "ERROR_3: no ISA_WIDTH correct with $ISA_WIDTH at $ISA_NAME\n"; exit;}
			}

			switch($ISA_NAME) {
				case "add16" {
					$rd[$i] = $rs1[$i] + $rs2[$i];
					$rd[$i] &= 0xffff;
				}
				case "add8" {
					$rd[$i] = $rs1[$i] + $rs2[$i];
					$rd[$i] &= 0xff;
				}
				case "kadd16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					$rd[$i] = $se17_rs1[$i] + $se17_rs2[$i];
					$rd[$i] &= 0x1ffff;

					if (($rd[$i] >> 15)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff;
						$OV_REG[$i]=1;
					} elsif (($rd[$i] >> 15)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] &= 0xffff;
					}
				}
				case "kadd8" {
					if ($rs1[$i]> 0x7f) {
						$se17_rs1[$i] = $rs1[$i] + 0x100;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x000;
					}
					if ($rs2[$i]> 0x7f) {
						$se17_rs2[$i] = $rs2[$i] + 0x100;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x000;
					}
					$rd[$i] = $se17_rs1[$i] + $se17_rs2[$i];
					$rd[$i] &= 0x1ff;

					if (($rd[$i] >> 7)==1) {  # >2^7-1,
						$rd[$i] = 0x7f;
						$OV_REG[$i]=1;
					} elsif (($rd[$i] >> 7)==2) { # < -2^7,
						$rd[$i] = 0x80;
						$OV_REG[$i]=1;
					} else {                       #8bit  
						$rd[$i] &= 0xff;
					}
				}
				case "radd16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $se17_rs1[$i] + $se17_rs2[$i];
					$rd[$i] &= 0x1ffff;
					# my $tmp = $rd[$i] >> 17;
					# $tmp = $tmp  << 17;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}
				case "radd8" {
					if ($rs1[$i]> 0x7f) {
						$se9_rs1[$i] = $rs1[$i] + 0x100;
					}
					else {
						$se9_rs1[$i] = $rs1[$i] + 0x000;
					}
					if ($rs2[$i]> 0x7f) {
						$se9_rs2[$i] = $rs2[$i] + 0x100;
					}
					else {
						$se9_rs2[$i] = $rs2[$i] + 0x000;
					}
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $se9_rs1[$i] + $se9_rs2[$i];
					$rd[$i] &= 0x1ff;
					# my $tmp = $rd[$i] >> 9;
					# $tmp = $tmp  << 9;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}
				case "ukadd16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze17_rs1[$i] + $ze17_rs2[$i];
					# $rd[$i] &= 0x1ffff;
					if ($rd[$i] > 0xffff) {
						$rd[$i] = 0xffff;
						$OV_REG[$i]=1;
					} else {
						$rd[$i] &= 0xffff;
					}
				}
				case "ukadd8" {
					$ze9_rs1[$i] = $rs1[$i] + 0x000;
					$ze9_rs2[$i] = $rs2[$i] + 0x000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze9_rs1[$i] + $ze9_rs2[$i];
					# $rd[$i] &= 0x1ffff;
					if ($rd[$i] > 0xff) {
						$rd[$i] = 0xff;
						$OV_REG[$i]=1;
					} else {
						$rd[$i] &= 0xff;
					}
				}
				case "uradd16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze17_rs1[$i] + $ze17_rs2[$i];
					$rd[$i] &= 0x1ffff;
					# my $tmp = $rd[$i] >> 17;
					# $tmp = $tmp  << 17;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}
				case "uradd8" {
					$ze9_rs1[$i] = $rs1[$i] + 0x000;
					$ze9_rs2[$i] = $rs2[$i] + 0x000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze9_rs1[$i] + $ze9_rs2[$i];
					$rd[$i] &= 0x1ff;
					# my $tmp = $rd[$i] >> 9;
					# $tmp = $tmp  << 9;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}
				case "sub16" {
					$rd[$i] = $rs1[$i] - $rs2[$i];
					$rd[$i] &= 0xffff;
				}
				case "sub8" {
					$rd[$i] = $rs1[$i] - $rs2[$i];
					$rd[$i] &= 0xff;
				}
				case "ksub16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					$rd[$i] = $se17_rs1[$i] - $se17_rs2[$i];
					$rd[$i] &= 0x1ffff;

					if (($rd[$i] >> 15)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff;
						$OV_REG[$i]=1;
					} elsif (($rd[$i] >> 15)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] &= 0xffff;
					}
				}
				case "ksub8" {
					if ($rs1[$i]> 0x7f) {
						$se17_rs1[$i] = $rs1[$i] + 0x100;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x000;
					}
					if ($rs2[$i]> 0x7f) {
						$se17_rs2[$i] = $rs2[$i] + 0x100;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x000;
					}
					$rd[$i] = $se17_rs1[$i] - $se17_rs2[$i];
					$rd[$i] &= 0x1ff;

					if (($rd[$i] >> 7)==1) {  # >2^7-1,
						$rd[$i] = 0x7f;
						$OV_REG[$i]=1;
					} elsif (($rd[$i] >> 7)==2) { # < -2^7,
						$rd[$i] = 0x80;
						$OV_REG[$i]=1;
					} else {                       #8bit
						$rd[$i] &= 0xff;
					}
				}
				case "rsub16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $se17_rs1[$i] - $se17_rs2[$i];
					$rd[$i] &= 0x1ffff;
					# my $tmp = $rd[$i] >> 17;
					# $tmp = $tmp  << 17;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}
				case "rsub8" {
					if ($rs1[$i]> 0x7f) {
						$se9_rs1[$i] = $rs1[$i] + 0x100;
					}
					else {
						$se9_rs1[$i] = $rs1[$i] + 0x000;
					}
					if ($rs2[$i]> 0x7f) {
						$se9_rs2[$i] = $rs2[$i] + 0x100;
					}
					else {
						$se9_rs2[$i] = $rs2[$i] + 0x000;
					}
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $se9_rs1[$i] - $se9_rs2[$i];
					$rd[$i] &= 0x1ff;
					# my $tmp = $rd[$i] >> 9;
					# $tmp = $tmp  << 9;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}
				case "uksub16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze17_rs1[$i] - $ze17_rs2[$i];
					# $rd[$i] &= 0x1ffff;
					# if ($rd[$i] > 0x10000) {
					if ($rd[$i] < 0 ) {
						$rd[$i] = 0x0;
						$OV_REG[$i]=1;
					} else {
						$rd[$i] &= 0xffff;
					}
				}
				case "uksub8" {
					$ze9_rs1[$i] = $rs1[$i] + 0x000;
					$ze9_rs2[$i] = $rs2[$i] + 0x000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze9_rs1[$i] - $ze9_rs2[$i];
					# $rd[$i] &= 0x1ffff;
					# if ($rd[$i] > 0x100) {
					if ($rd[$i] < 0) {
						$rd[$i] = 0x0;
						$OV_REG[$i]=1;
					} else {
						$rd[$i] &= 0xff;
					}
				}
				case "ursub16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze17_rs1[$i] - $ze17_rs2[$i];
					$rd[$i] &= 0x1ffff;
					# my $tmp = $rd[$i] >> 17;
					# $tmp = $tmp  << 17;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}
				case "ursub8" {
					$ze9_rs1[$i] = $rs1[$i] + 0x000;
					$ze9_rs2[$i] = $rs2[$i] + 0x000;
					# printf fh ("rs1[$i]: 0x%04x\n",$rs1[$i]);
					# printf fh ("rs2[$i]: 0x%04x\n",$rs2[$i]);
					$rd[$i] = $ze9_rs1[$i] - $ze9_rs2[$i];
					$rd[$i] &= 0x1ff;
					# my $tmp = $rd[$i] >> 9;
					# $tmp = $tmp  << 9;
					# $rd[$i] = $rd[$i] - $tmp;
					$rd[$i] = $rd[$i] >> 1;
				}		
				case "cras16" {
					$rd[1] = $rs1[1] + $rs2[0];
					$rd[0] = $rs1[0] - $rs2[1];
					$rd[0] = $rd[0]  & 0xffff;
					$rd[1] = $rd[1]  & 0xffff;
				}
				case "rcras16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					$res_add17[0] = $se17_rs1[1] + $se17_rs2[0];
					$res_sub17[0] = $se17_rs1[0] - $se17_rs2[1];
					$res_add17[0] = $res_add17[0] >> 1;
					$res_sub17[0] = $res_sub17[0] >> 1;
					$rd[1] = $res_add17[0] & 0xffff;
					$rd[0] = $res_sub17[0] & 0xffff;
				}
				case "urcras16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					$res_add17[0] = $ze17_rs1[1] + $ze17_rs2[0];
					$res_sub17[0] = $ze17_rs1[0] - $ze17_rs2[1];
					$res_add17[0] = $res_add17[0] >> 1;
					$res_sub17[0] = $res_sub17[0] >> 1;
					$rd[1] = $res_add17[0] & 0xffff;
					$rd[0] = $res_sub17[0] & 0xffff;
				}
				case "kcras16" {
					$se17_rs1[$i] = 0;
					$se17_rs2[$i] = 0;
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					if($i ==1){
						# my @res1 = (0,0);
						# my @res2 = (0,0);
						$res1[0] = $se17_rs1[1] + $se17_rs2[0];
						$res2[0] = $se17_rs1[0] - $se17_rs2[1];
						$rd[1] = $res1[0] & 0x1ffff;
						$rd[0] = $res2[0] & 0x1ffff;
						for (my $cnt = 0; $cnt < 2; $cnt++) {
							if (($rd[$cnt] >> 15)==1) {  # >2^15-1, res17=32767
								$rd[$cnt] = 0x7fff;
								$OV_REG[$cnt]=1;
							} elsif (($rd[$cnt] >> 15)==2) { # < -2^15, res17=-32768
								$rd[$cnt] = 0x8000;
								$OV_REG[$cnt]=1;
							} else {                       #16bit
								$rd[$cnt] = $rd[$cnt] & 0xffff;
							}
						}
					}
				}
				case "ukcras16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					if($i == 1) {
						$res1[0] = $ze17_rs1[1] + $ze17_rs2[0];
						$res2[0] = $ze17_rs1[0] - $ze17_rs2[1];
						 $rd[1] = $res1[0];
                         $rd[0] = $res2[0];
						for (my $cnt = 0; $cnt < 2; $cnt = $cnt + 2) {
							if ($rd[$cnt] < 0) {
								$rd[$cnt] = 0x0;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
						for (my $cnt = 1; $cnt < 2; $cnt = $cnt + 2) {
							if ($rd[$cnt] > 0xffff) {
								$rd[$cnt] = 0xffff;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
					}
				}
				case "crsa16" {
					$rd[1] = $rs1[1] - $rs2[0];
					$rd[0] = $rs1[0] + $rs2[1];
					$rd[0] = $rd[0]  & 0xffff;
					$rd[1] = $rd[1]  & 0xffff;
				}
				case "rcrsa16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					$res_sub17[0] = $se17_rs1[1] - $se17_rs2[0];
					$res_add17[0] = $se17_rs1[0] + $se17_rs2[1];
					$res_sub17[0] = $res_sub17[0] >> 1;
					$res_add17[0] = $res_add17[0] >> 1;
					$rd[1] = $res_sub17[0] & 0xffff;
					$rd[0] = $res_add17[0] & 0xffff;
				}
				case "urcrsa16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					$res_sub17[0] = $ze17_rs1[1] - $ze17_rs2[0];
					$res_add17[0] = $ze17_rs1[0] + $ze17_rs2[1];
					$res_sub17[0] = $res_sub17[0] >> 1;
					$res_add17[0] = $res_add17[0] >> 1;
					$rd[1] = $res_sub17[0] & 0xffff;
					$rd[0] = $res_add17[0] & 0xffff;
				}
				case "kcrsa16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					if($i ==1){
						$res1[0] = $se17_rs1[1] - $se17_rs2[0];
						$res2[0] = $se17_rs1[0] + $se17_rs2[1];
						$rd[1] = $res1[0] & 0x1ffff;
						$rd[0] = $res2[0] & 0x1ffff;
						for (my $cnt = 0; $cnt < 2; $cnt++) {
							if (($rd[$cnt] >> 15)==1) {  # >2^15-1, res17=32767
								$rd[$cnt] = 0x7fff;
								$OV_REG[$cnt]=1;
							} elsif (($rd[$cnt] >> 15)==2) { # < -2^15, res17=-32768
								$rd[$cnt] = 0x8000;
								$OV_REG[$cnt]=1;
							} else {                       #16bit
								$rd[$cnt] &= 0xffff;
							}
						}
					}
				}
				case "ukcrsa16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					if($i == 1) {
						$res1[0] = $ze17_rs1[1] - $ze17_rs2[0];
						$res2[0] = $ze17_rs1[0] + $ze17_rs2[1];
						$rd[1] = $res1[0];
						$rd[0] = $res2[0];
						for (my $cnt = 1; $cnt < 2; $cnt = $cnt + 2) {
							if ($rd[$cnt] < 0) {
								$rd[$cnt] = 0x0;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
						for (my $cnt = 0; $cnt < 2; $cnt = $cnt + 2) {
							if ($rd[$cnt] > 0xffff) {
								$rd[$cnt] = 0xffff;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
					}
				}
				case "stas16" {
					$rd[1] = $rs1[1] + $rs2[1];
					$rd[0] = $rs1[0] - $rs2[0];
					$rd[0] = $rd[0]  & 0xffff;
					$rd[1] = $rd[1]  & 0xffff;
				}
				case "rstas16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					$res_add17[0] = $se17_rs1[1] + $se17_rs2[1];
					$res_sub17[0] = $se17_rs1[0] - $se17_rs2[0];
					$res_add17[0] = $res_add17[0] >> 1;
					$res_sub17[0] = $res_sub17[0] >> 1;
					$rd[1] = $res_add17[0] & 0xffff;
					$rd[0] = $res_sub17[0] & 0xffff;
				}
				case "urstas16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					$res_add17[0] = $ze17_rs1[1] + $ze17_rs2[1];
					$res_sub17[0] = $ze17_rs1[0] - $ze17_rs2[0];
					$res_add17[0] = $res_add17[0] >> 1;
					$res_sub17[0] = $res_sub17[0] >> 1;
					$rd[1] = $res_add17[0] & 0xffff;
					$rd[0] = $res_sub17[0] & 0xffff;
				}
				case "kstas16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					if($i ==1){
						$res1[0] = $se17_rs1[1] + $se17_rs2[1];
						$res2[0] = $se17_rs1[0] - $se17_rs2[0];
						$rd[1] = $res1[0] & 0x1ffff;
						$rd[0] = $res2[0] & 0x1ffff;
						for (my $cnt = 0; $cnt < 2; $cnt++) {
							if (($rd[$cnt] >> 15)==1) {  # >2^15-1, res17=32767
								$rd[$cnt] = 0x7fff;
								$OV_REG[$cnt]=1;
							} elsif (($rd[$cnt] >> 15)==2) { # < -2^15, res17=-32768
								$rd[$cnt] = 0x8000;
								$OV_REG[$cnt]=1;
							} else {                       #16bit
								$rd[$cnt] &= 0xffff;
							}
						}
					}
				}
				case "ukstas16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					if ($i == 1) {
						$res1[0] = $ze17_rs1[1] + $ze17_rs2[1];
						$res2[0] = $ze17_rs1[0] - $ze17_rs2[0];
						$rd[1] = $res1[0];
						$rd[0] = $res2[0];
						for (my $cnt = 0; $cnt < 2; $cnt = $cnt + 2) {
							#if ($rd[$cnt] < 0) {
							if ($ze17_rs1[$cnt] < $ze17_rs2[$cnt]) {
								$rd[$cnt] = 0x0;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
						for (my $cnt = 1; $cnt < 2; $cnt = $cnt + 2) {
							#if ($rd[$cnt] > 0xffff) {
							if (($rd[$cnt] & 0x10000) ==  0x10000) {
								$rd[$cnt] = 0xffff;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
					}
				}
				case "stsa16" {
					$rd[1] = $rs1[1] - $rs2[1];
					$rd[0] = $rs1[0] + $rs2[0];
					$rd[0] = $rd[0]  & 0xffff;
					$rd[1] = $rd[1]  & 0xffff;
				}
				case "rstsa16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					$res_add17[0] = $se17_rs1[1] - $se17_rs2[1];
					$res_sub17[0] = $se17_rs1[0] + $se17_rs2[0];
					$res_add17[0] = $res_add17[0] >> 1;
					$res_sub17[0] = $res_sub17[0] >> 1;
					$rd[1] = $res_add17[0] & 0xffff;
					$rd[0] = $res_sub17[0] & 0xffff;
				}
				case "urstsa16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					$res_add17[0] = $ze17_rs1[1] - $ze17_rs2[1];
					$res_sub17[0] = $ze17_rs1[0] + $ze17_rs2[0];
					$res_add17[0] = $res_add17[0] >> 1;
					$res_sub17[0] = $res_sub17[0] >> 1;
					$rd[1] = $res_add17[0] & 0xffff;
					$rd[0] = $res_sub17[0] & 0xffff;
				}
				case "kstsa16" {
					if ($rs1[$i]> 0x7fff) {
						$se17_rs1[$i] = $rs1[$i] + 0x10000;
					}
					else {
						$se17_rs1[$i] = $rs1[$i] + 0x00000;
					}
					if ($rs2[$i]> 0x7fff) {
						$se17_rs2[$i] = $rs2[$i] + 0x10000;
					}
					else {
						$se17_rs2[$i] = $rs2[$i] + 0x00000;
					}
					if($i ==1){
						$res1[0] = $se17_rs1[1] - $se17_rs2[1];
						$res2[0] = $se17_rs1[0] + $se17_rs2[0];
						$rd[1] = $res1[0] & 0x1ffff;
						$rd[0] = $res2[0] & 0x1ffff;
						for (my $cnt = 0; $cnt < 2; $cnt++) {
							if (($rd[$cnt] >> 15)==1) {  # >2^15-1, res17=32767
								$rd[$cnt] = 0x7fff;
								$OV_REG[$cnt]=1;
							} elsif (($rd[$cnt] >> 15)==2) { # < -2^15, res17=-32768
								$rd[$cnt] = 0x8000;
								$OV_REG[$cnt]=1;
							} else {                       #16bit
								$rd[$cnt] &= 0xffff;
							}
						}
					}
				}
				case "ukstsa16" {
					$ze17_rs1[$i] = $rs1[$i] + 0x00000;
					$ze17_rs2[$i] = $rs2[$i] + 0x00000;
					if($i == 1) {
						$res1[0] = $ze17_rs1[1] - $ze17_rs2[1];
						$res2[0] = $ze17_rs1[0] + $ze17_rs2[0];
						$rd[1] = $res1[0];
						$rd[0] = $res2[0];
						for (my $cnt = 1; $cnt < 2; $cnt = $cnt + 2) {
							if ($rd[$cnt] < 0) {
								$rd[$cnt] = 0x0;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
						for (my $cnt = 0; $cnt < 2; $cnt = $cnt + 2) {
							if ($rd[$cnt] > 0xffff) {
								$rd[$cnt] = 0xffff;
								$OV_REG[$cnt]=1;
							} else {
								$rd[$cnt] &= 0xffff;
							}
						}
					}
				}
				case "sra16" {
					my $sa = $rs2[0] & 0xf ;
					my $sa_cnt = $sa;
					$rd[$i] = $rs1[$i] >> $sa;
					# printf ("i = $i: rd[$i] = %04x, rs1[$i] = %04x, rs2[0] = %04x, sa = $sa \n",$rd[$i], $rs1[$i], $rs2[0]);
					my $tmp_se16_sra16 = 0;
					for (my $cnt = 0; $cnt < 16; $cnt++) {
						if ($sa_cnt != 0) {
							# $tmp_se16_sra16 = ($tmp_se16_sra16 << 1) + 1; 
							$tmp_se16_sra16 = ($tmp_se16_sra16 * 2) + 1; 
							$sa_cnt--;
						} else {
							$tmp_se16_sra16 = ($tmp_se16_sra16 * 2); 
						}
					}
					# printf ("tmp_se16_sra16 = %x, sa= %x\n", $tmp_se16_sra16, $sa);
					if(($rd[$i] >> (15-$sa)) != 0) {
						$rd[$i] = $rd[$i] | $tmp_se16_sra16; #SE16(Rs1.H[x][15:sa])
					}
					$rd[$i] = $rd[$i] & 0xffff;
					# printf ("rd[$i] = %x \n", $rd[$i]);
				}
				case "sra16.u" {
					# $rs2[0] =9; #debug
					# $rs2[0] =0x1fca;
					# $rs1[0] =0xa370;
					my $sa = $rs2[0] & 0xf ;
					if ($sa != 0) {
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						# printf ("i = $i: rd[$i] = %04x, rs1[$i] = %04x, rs2[0] = %04x, sa = $sa \n",$rd[$i], $rs1[$i], $rs2[0]);
						my $tmp_se17_sra16_u = 0;
						for (my $cnt = 0; $cnt < 17; $cnt++) {
							if ($sa_cnt != 0) {
								# $tmp_se17_sra16_u = ($tmp_se17_sra16_u << 1) + 1; 
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2); 
							}
						}
						# printf ("tmp_se17_sra16_u = %x, sa= %x\n", $tmp_se17_sra16_u, $sa);
						if(($rd[$i] >> (16-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se17_sra16_u; #SE17(Rs1.H[x][15:sa-1])
						}
						# printf ("rd[$i] = %x \n", $rd[$i]);
						$rd[$i] = $rd[$i] & 0x1ffff;
						$rd[$i] = $rd[$i] +1;
						# printf ("rd[$i] = %x \n", $rd[$i]);
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xffff; #Rd.B[x] = res[7:0];
						# printf ("rd[$i] = %x \n", $rd[$i]);
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				
				case "srl16" {
					my $sa = $rs2[0] & 0xf ;
					$rd[$i] = $rs1[$i] >> $sa;
					$rd[$i] = $rd[$i] & 0xffff;
				}
				case "srl16.u" {
					my $sa = $rs2[0] & 0xf ;
					if ($sa != 0) {
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						$rd[$i] = $rd[$i] & 0x1ffff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xffff; #Rd.B[x] = res[7:0];
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "srai16" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					my $sa_cnt = $sa;
					$rd[$i] = $rs1[$i] >> $sa;
					# printf ("i = $i: rd[$i] = %04x, rs1[$i] = %04x, rs2[0] = %04x, sa = $sa \n",$rd[$i], $rs1[$i], $rs2[0]);
					my $tmp_se16_sra16 = 0;
					for (my $cnt = 0; $cnt < 16; $cnt++) {
						if ($sa_cnt != 0) {
							# $tmp_se16_sra16 = ($tmp_se16_sra16 << 1) + 1; 
							$tmp_se16_sra16 = ($tmp_se16_sra16 * 2) + 1; 
							$sa_cnt--;
						} else {
							$tmp_se16_sra16 = ($tmp_se16_sra16 * 2); 
						}
					}
					# printf ("tmp_se16_sra16 = %x, sa= %x\n", $tmp_se16_sra16, $sa);
					if(($rd[$i] >> (15-$sa)) != 0) {
						$rd[$i] = $rd[$i] | $tmp_se16_sra16; #SE16(Rs1.H[x][15:sa])
					}
					$rd[$i] = $rd[$i] & 0xffff;
					# printf ("rd[$i] = %x \n", $rd[$i]);
				}
				case "srai16.u" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					if ($sa != 0) {
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						# printf ("i = $i: rd[$i] = %04x, rs1[$i] = %04x, rs2[0] = %04x, sa = $sa \n",$rd[$i], $rs1[$i], $rs2[0]);
						my $tmp_se17_sra16_u = 0;
						for (my $cnt = 0; $cnt < 17; $cnt++) {
							if ($sa_cnt != 0) {
								# $tmp_se17_sra16_u = ($tmp_se17_sra16_u << 1) + 1; 
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2); 
							}
						}
						# printf ("tmp_se17_sra16_u = %x, sa= %x\n", $tmp_se17_sra16_u, $sa);
						if(($rd[$i] >> (16-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se17_sra16_u; #SE17(Rs1.H[x][15:sa-1])
						}
						# printf ("rd[$i] = %x \n", $rd[$i]);
						$rd[$i] = $rd[$i] & 0x1ffff;
						$rd[$i] = $rd[$i] +1;
						# printf ("rd[$i] = %x \n", $rd[$i]);
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xffff; #Rd.B[x] = res[7:0];
						# printf ("rd[$i] = %x \n", $rd[$i]);
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "srli16" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					$rd[$i] = $rs1[$i] >> $sa;
					$rd[$i] = $rd[$i] & 0xffff;
				}
				case "srli16.u" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					if ($sa != 0) {
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						$rd[$i] = $rd[$i] & 0x1ffff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xffff; #Rd.B[x] = res[7:0];
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "sll16" {
					my $sa = $rs2[0] & 0xf;
					# $rd[$i] = $rs1[$i] << $sa;
					$rd[$i] = $rs1[$i] * (2**$sa);
					$rd[$i] = $rd[$i] & 0xffff;
				}
				case "slli16" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					# $rd[$i] = $rs1[$i] << $sa;
					$rd[$i] = $rs1[$i] * (2**$sa);
					$rd[$i] = $rd[$i] & 0xffff;
				}
				case "ksll16" {
					my $sa = $rs2[0] & 0xf ;
					if ($sa != 0) {
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (15+$sa))==0) && ($rd[$i] > 0x7fff)) { # res s> 2^15 -1 
							$rd[$i] = 0x7fff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (15+$sa))==1) && ($rd[$i] - 2*(2**(15+$sa))) < -2**15) {  #res s< -2^15
							$rd[$i] = 0x8000;
							$OV_REG[$i]=1;
						}
						$rd[$i] &= 0xffff;
					}
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "kslli16" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					if ($sa != 0) {
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (15+$sa))==0) && ($rd[$i] > 0x7fff)) { # res s> 2^15 -1 
							$rd[$i] = 0x7fff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (15+$sa))==1) && ($rd[$i] - 2*(2**(15+$sa))) < -2**15) {  #res s< -2^15
							$rd[$i] = 0x8000;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xffff;
						}
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "kslra16" {
					# $rs2[0] = 0x0011;
					# $rs1[0] = 0xaa75;
					$rs2[0] = $rs2[0] & 0x1f;
					# printf ("rs1[0]: %x \n",$rs1[0]);
					# printf ("rs2[0]: %x \n",$rs2[0]);
					if (($rs2[0] >> 4) != 0) { # (Rs2[4:0] s< 0)
						$sa = (~$rs2[0] +1) & 0x1f;   #sa = -Rs2[4:0];
						if ($sa == 0x10) {  #sa = (sa == 16)? 15 : sa;
							$sa = 0xf;
						} else {
							$sa = $sa & 0xf;
						}
						# printf ("sa: %x \n",$sa);
						#Cal Rd.H[x] = SE16(Rs1.H[x][15:sa]);
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> $sa;
						my $tmp_se16_sra16 = 0;
						for (my $cnt = 0; $cnt < 16; $cnt++) {
							if ($sa_cnt != 0) {
								$tmp_se16_sra16 = ($tmp_se16_sra16 * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se16_sra16 = ($tmp_se16_sra16 * 2); 
							}
						}
						if(($rd[$i] >> (15-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se16_sra16; #SE16(Rs1.H[x][15:sa])
						}
						$rd[$i] = $rd[$i] & 0xffff;
					} else {
						$sa = $rs2[0] & 0xf;
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (15+$sa))==0) && ($rd[$i] > 0x7fff)) { # res s> 2^15 -1 
							$rd[$i] = 0x7fff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (15+$sa))==1) && ($rd[$i] - 2*(2**(15+$sa))) < -2**15) {  #res s< -2^15
							$rd[$i] = 0x8000;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xffff;
						}
					}
				}
				case "kslra16.u" {
					$rs2[0] = $rs2[0] & 0x1f;
					# printf ("$rs2[0]: %x",$rs2[0]);
					if (($rs2[0] >> 4) != 0) { # (Rs2[4:0] s< 0)
						$sa = (~$rs2[0] +1) & 0x1f;   #sa = -Rs2[4:0];
						if ($sa == 0x10) {  #sa = (sa == 16)? 15 : sa;
							$sa = 0xf;
						} else {
							$sa = $sa & 0xf;
						}
						# printf ("$sa: %x",$sa);
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						my $tmp_se17_sra16_u = 0;
						for (my $cnt = 0; $cnt < 17; $cnt++) {
							if ($sa_cnt != 0) {
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2); 
							}
						}
						if(($rd[$i] >> (16-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se17_sra16_u; #SE17(Rs1.H[x][15:sa-1])
						}
						$rd[$i] = $rd[$i] & 0x1ffff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xffff; #Rd.B[x] = res[7:0];
					} else {
						$sa = $rs2[0] & 0xf;
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (15+$sa))==0) && ($rd[$i] > 0x7fff)) { # res s> 2^15 -1 
							$rd[$i] = 0x7fff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (15+$sa))==1) && ($rd[$i] - 2*(2**(15+$sa))) < -2**15) {  #res s< -2^15
							$rd[$i] = 0x8000;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xffff;
						}
					}
				}
				case "sra8" {
					my $sa = $rs2[0] & 0x7 ;
					my $sa_cnt = $sa;
					$rd[$i] = $rs1[$i] >> $sa;
					# printf ("i = $i: rd[$i] = %04x, rs1[$i] = %04x, rs2[0] = %04x, sa = $sa \n",$rd[$i], $rs1[$i], $rs2[0]);
					my $tmp_se8_sra8 = 0;
					for (my $cnt = 0; $cnt < 8; $cnt++) {
						if ($sa_cnt != 0) {
							# $tmp_se8_sra8 = ($tmp_se8_sra8 << 1) + 1; 
							$tmp_se8_sra8 = ($tmp_se8_sra8 * 2) + 1; 
							$sa_cnt--;
						} else {
							$tmp_se8_sra8 = ($tmp_se8_sra8 * 2); 
						}
					}
					# printf ("tmp_se8_sra8 = %x, sa= %x\n", $tmp_se8_sra8, $sa);
					if(($rd[$i] >> (7-$sa)) != 0) {
						$rd[$i] = $rd[$i] | $tmp_se8_sra8; #SE16(Rs1.H[x][15:sa])
					}
					$rd[$i] = $rd[$i] & 0xff;
					# printf ("rd[$i] = %x \n", $rd[$i]);
				}
				case "srai8" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					my $sa_cnt = $sa;
					$rd[$i] = $rs1[$i] >> $sa;
					my $tmp_se8_sra8 = 0;
					for (my $cnt = 0; $cnt < 8; $cnt++) {
						if ($sa_cnt != 0) {
							# $tmp_se8_sra8 = ($tmp_se8_sra8 << 1) + 1; 
							$tmp_se8_sra8 = ($tmp_se8_sra8 * 2) + 1; 
							$sa_cnt--;
						} else {
							$tmp_se8_sra8 = ($tmp_se8_sra8 * 2); 
						}
					}
					if(($rd[$i] >> (7-$sa)) != 0) {
						$rd[$i] = $rd[$i] | $tmp_se8_sra8; #SE16(Rs1.H[x][15:sa])
					}
					$rd[$i] = $rd[$i] & 0xff;
				}
				case "sra8.u" {
					# $rs2[0] =9; #debug
					# $rs2[0] =0x1fca;
					# $rs1[0] =0xa370;
					my $sa = $rs2[0] & 0x7 ;
					if ($sa != 0) {
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						# printf ("i = $i: rd[$i] = %04x, rs1[$i] = %04x, rs2[0] = %04x, sa = $sa \n",$rd[$i], $rs1[$i], $rs2[0]);
						my $tmp_se9_sra8_u = 0;
						for (my $cnt = 0; $cnt < 9; $cnt++) {
							if ($sa_cnt != 0) {
								# $tmp_se9_sra8_u = ($tmp_se9_sra8_u << 1) + 1; 
								$tmp_se9_sra8_u = ($tmp_se9_sra8_u * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se9_sra8_u = ($tmp_se9_sra8_u * 2); 
							}
						}
						# printf ("tmp_se9_sra8_u = %x, sa= %x\n", $tmp_se9_sra8_u, $sa);
						if(($rd[$i] >> (8-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se9_sra8_u; #SE17(Rs1.H[x][15:sa-1])
						}
						# printf ("rd[$i] = %x \n", $rd[$i]);
						$rd[$i] = $rd[$i] & 0x1ff;
						$rd[$i] = $rd[$i] +1;
						# printf ("rd[$i] = %x \n", $rd[$i]);
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xff; #Rd.B[x] = res[7:0];
						# printf ("rd[$i] = %x \n", $rd[$i]);
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "srai8.u" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					if ($sa != 0) {
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						my $tmp_se9_sra8_u = 0;
						for (my $cnt = 0; $cnt < 9; $cnt++) {
							if ($sa_cnt != 0) {
								$tmp_se9_sra8_u = ($tmp_se9_sra8_u * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se9_sra8_u = ($tmp_se9_sra8_u * 2); 
							}
						}
						if(($rd[$i] >> (8-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se9_sra8_u; #SE17(Rs1.H[x][15:sa-1])
						}
						$rd[$i] = $rd[$i] & 0x1ff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xff; #Rd.B[x] = res[7:0];
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "srl8" {
					my $sa = $rs2[0] & 0x7 ;
					$rd[$i] = $rs1[$i] >> $sa;
					$rd[$i] = $rd[$i] & 0xff;
				}
				case "srl8.u" {
					my $sa = $rs2[0] & 0x7 ;
					if ($sa != 0) {
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						$rd[$i] = $rd[$i] & 0x1ff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xff; #Rd.B[x] = res[7:0];
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "srli8" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					$rd[$i] = $rs1[$i] >> $sa;
					$rd[$i] = $rd[$i] & 0xff;
				}
				case "srli8.u" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					if ($sa != 0) {
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						$rd[$i] = $rd[$i] & 0x1ff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xff; #Rd.B[x] = res[7:0];
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "sll8" {
					my $sa = $rs2[0] & 0x7;
					# $rd[$i] = $rs1[$i] << $sa;
					$rd[$i] = $rs1[$i] * (2**$sa);
					$rd[$i] = $rd[$i] & 0xff;
				}
				case "slli8" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					# $rd[$i] = $rs1[$i] << $sa;
					$rd[$i] = $rs1[$i] * (2**$sa);
					$rd[$i] = $rd[$i] & 0xff;
				}
				case "ksll8" {
					my $sa = $rs2[0] & 0x7 ;
					if ($sa != 0) {
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (7+$sa))==0) && ($rd[$i] > 0x7f)) { # res s> 2^15 -1 
							$rd[$i] = 0x7f;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (7+$sa))==1) && ($rd[$i] - 2*(2**(7+$sa))) < -2**7) {  #res s< -2^15
							$rd[$i] = 0x80;
							$OV_REG[$i]=1;
						}
						$rd[$i] &= 0xff;
					}
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "kslli8" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					if ($sa != 0) {
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (7+$sa))==0) && ($rd[$i] > 0x7f)) { # res s> 2^15 -1 
							$rd[$i] = 0x7f;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (7+$sa))==1) && ($rd[$i] - 2*(2**(7+$sa))) < -2**7) {  #res s< -2^15
							$rd[$i] = 0x80;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xff;
						}
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "kslra8" {
					$rs2[0] = $rs2[0] & 0xf;
					if (($rs2[0] >> 3) != 0) { # (Rs2[4:0] s< 0)
						$sa = (~$rs2[0] +1) & 0xf;   #sa = -Rs2[4:0];
						if ($sa == 0x8) {  #sa = (sa == 16)? 15 : sa;
							$sa = 0x7;
						} else {
							$sa = $sa & 0x7;
						}
						# printf ("sa: %x \n",$sa);
						#Cal Rd.H[x] = SE16(Rs1.H[x][15:sa]);
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> $sa;
						my $tmp_se8_sra8 = 0;
						for (my $cnt = 0; $cnt < 8; $cnt++) {
							if ($sa_cnt != 0) {
								$tmp_se8_sra8 = ($tmp_se8_sra8 * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se8_sra8 = ($tmp_se8_sra8 * 2); 
							}
						}
						if(($rd[$i] >> (7-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se8_sra8; #SE16(Rs1.H[x][15:sa])
						}
						$rd[$i] = $rd[$i] & 0xff;
					} else {
						$sa = $rs2[0] & 0x7;
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (7+$sa))==0) && ($rd[$i] > 0x7f)) { # res s> 2^15 -1 
							$rd[$i] = 0x7f;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (7+$sa))==1) && ($rd[$i] - 2*(2**(7+$sa))) < -2**7) {  #res s< -2^15
							$rd[$i] = 0x80;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xff;
						}
					}
				}
				case "kslra8.u" {
					$rs2[0] = $rs2[0] & 0xf;
					# printf ("$rs2[0]: %x",$rs2[0]);
					if (($rs2[0] >> 3) != 0) { # (Rs2[4:0] s< 0)
						$sa = (~$rs2[0] +1) & 0xf;   #sa = -Rs2[4:0];
						if ($sa == 0x8) {  #sa = (sa == 16)? 15 : sa;
							$sa = 0x7;
						} else {
							$sa = $sa & 0x7;
						}
						# printf ("$sa: %x",$sa);
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i] >> ($sa - 1);
						my $tmp_se9_sra8_u = 0;
						for (my $cnt = 0; $cnt < 9; $cnt++) {
							if ($sa_cnt != 0) {
								$tmp_se9_sra8_u = ($tmp_se9_sra8_u * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se9_sra8_u = ($tmp_se9_sra8_u * 2); 
							}
						}
						if(($rd[$i] >> (8-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se9_sra8_u; #SE17(Rs1.H[x][15:sa-1])
						}
						$rd[$i] = $rd[$i] & 0x1ff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xff; #Rd.B[x] = res[7:0];
					} else {
						$sa = $rs2[0] & 0x7;
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = $rs1[$i] * (2**$sa);
						if ((($rd[$i] >> (7+$sa))==0) && ($rd[$i] > 0x7f)) { # res s> 2^15 -1 
							$rd[$i] = 0x7f;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (7+$sa))==1) && ($rd[$i] - 2*(2**(7+$sa))) < -2**7) {  #res s< -2^15
							$rd[$i] = 0x80;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xff;
						}
					}
				}
				case "cmpeq16" {
					if($rs1[$i] == $rs2[$i]) {
						$rd[$i] = 0xffff;
					}
					else {
						$rd[$i] = 0x0;
					}
				}
				case "scmplt16" {
					my $sig1 = $rs1[$i] >> 15;
					my $sig2 = $rs2[$i] >> 15;
					my $val1 = $rs1[$i] & 0x7fff;
					my $val2 = $rs2[$i] & 0x7fff;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 < $val2) {
							$rd[$i] = 0xffff;
						} else {
							$rd[$i] = 0x0;
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = 0x0;
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = 0xffff;
					} else {
						if ($val1 < $val2) {
							$rd[$i] = 0xffff;
						} else {
							$rd[$i] = 0x0;
						}
					}
				}
				case "scmple16" {
					my $sig1 = $rs1[$i] >> 15;
					my $sig2 = $rs2[$i] >> 15;
					my $val1 = $rs1[$i] & 0x7fff;
					my $val2 = $rs2[$i] & 0x7fff;
					if ($sig1 == $sig2) {
						if ($val1 <= $val2) {
							$rd[$i] = 0xffff;
						} else {
							$rd[$i] = 0x0;
						}
					} elsif (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 <= $val2) {
							$rd[$i] = 0xffff;
						} else {
							$rd[$i] = 0x0;
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = 0x0;
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = 0xffff;
					}
				}
				case "ucmplt16" {
					if($rs1[$i] < $rs2[$i]) {
						$rd[$i] = 0xffff;
					}
					else {
						$rd[$i] = 0x0;
					}
				}
				case "ucmple16" {
					if($rs1[$i] <= $rs2[$i]) {
						$rd[$i] = 0xffff;
					}
					else {
						$rd[$i] = 0x0;
					}
				}
				case "cmpeq8" {
					if($rs1[$i] == $rs2[$i]) {
						$rd[$i] = 0xff;
					}
					else {
						$rd[$i] = 0x0;
					}
				}
				case "scmplt8" {
					my $sig1 = $rs1[$i] >> 7;
					my $sig2 = $rs2[$i] >> 7;
					my $val1 = $rs1[$i] & 0x7f;
					my $val2 = $rs2[$i] & 0x7f;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 < $val2) {
							$rd[$i] = 0xff;
						} else {
							$rd[$i] = 0x0;
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = 0x0;
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = 0xff;
					} else {
						if ($val1 < $val2) {
							$rd[$i] = 0xff;
						} else {
							$rd[$i] = 0x0;
						}
					}
				}
				case "scmple8" {
					my $sig1 = $rs1[$i] >> 7;
					my $sig2 = $rs2[$i] >> 7;
					my $val1 = $rs1[$i] & 0x7f;
					my $val2 = $rs2[$i] & 0x7f;
					if ($sig1 == $sig2) {
						if ($val1 <= $val2) {
							$rd[$i] = 0xff;
						} else {
							$rd[$i] = 0x0;
						}
					} elsif (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 <= $val2) {
							$rd[$i] = 0xff;
						} else {
							$rd[$i] = 0x0;
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = 0x0;
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = 0xff;
					}
				}
				case "ucmplt8" {
					if($rs1[$i] < $rs2[$i]) {
						$rd[$i] = 0xff;
					}
					else {
						$rd[$i] = 0x0;
					}
				}
				case "ucmple8" {
					if($rs1[$i] <= $rs2[$i]) {
						$rd[$i] = 0xff;
					}
					else {
						$rd[$i] = 0x0;
					}
				}
				case "smul16" {
					$result32_h_l[$i] =   signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					$H_L_RD = 1;
				}
				case "smulx16" {
					if ($i == 1) {
						$result32_h_l[1] =   signed_mul16($rs1[1] & 0xffff, $rs2[0] & 0xffff);
						$result32_h_l[0] =   signed_mul16($rs1[0] & 0xffff, $rs2[1] & 0xffff);
						$H_L_RD = 1;
					}
				}
				case "umul16" {
					$result32_h_l[$i] =   unsigned_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					$H_L_RD = 1;
				}
				case "umulx16" {
					if ($i == 1) {
						$result32_h_l[1] =   unsigned_mul16($rs1[1] & 0xffff, $rs2[0] & 0xffff);
						$result32_h_l[0] =   unsigned_mul16($rs1[0] & 0xffff, $rs2[1] & 0xffff);
						$H_L_RD = 1;
					}
				}
				case "khm16" {
					# my @result32 = (0,0,0,0);
					$rs1[$i] = -0x8000 + int(rand(0xffff));
					$rs1[$i] = $rs1[$i] & 0xffff;
					$sign_rs1[$i] = ($rs1[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffff;
					}
					$rs2[$i] = -0x8000 + int(rand(0xffff));
					$rs2[$i] = $rs2[$i] & 0xffff;
					$sign_rs2[$i] = ($rs2[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffff;
					}
					if ($rs1[$i] != 0x8000 || $rs2[$i] != 0x8000) {
						# my $mres = $rs1[$i] * $rs2[$i];
						my $mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						# printf ("mres : %x \n", $mres);
						if($sign_rs2[$i] != $sign_rs1[$i]) {
								$mres = (0 - $mres) & 0xffffffff
							}
						# printf ("mres : %x \n", $mres);
						if($mres >> 31 == 1) {
							$mres = ($mres >> 15) | 0x8000;
						}
						else {
							$mres = $mres >> 15;
						}
						# printf ("mres : %x \n", $mres);
						$result32[$i] = $mres & 0xffff;
						# printf ("result32[$i] : %x \n", $result32[$i]);
					} else {
						$result32[$i] = 0x00007fff;
						$OV_REG[$i]=1;
					}

					if ($i == 1) {
						for (my $var = 0; $var < 2; $var++) {
							$rd[$var] = $result32[$var] ;
							# printf ("rd[$var] : %x \n", $rd[$var]);
							# printf ("result32[$var] : %x \n", $result32[$var]);
						}
					}

				}
				case "khmx16" {
					# my @result32 = (0,0,0,0);
					$rs1[$i] = -0x8000 + int(rand(0xffff));
					$rs1[$i] = $rs1[$i] & 0xffff;
					$sign_rs1[$i] = ($rs1[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffff;
					}
					$rs2[$i] = -0x8000 + int(rand(0xffff));
					$rs2[$i] = $rs2[$i] & 0xffff;
					$sign_rs2[$i] = ($rs2[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffff;
					}
					if ($rs1[$i] != 0x8000 || $rs2[$i] != 0x8000) {
						# my $mres = $rs1[$i] * $rs2[$i];
						my $mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						# printf ("mres : %x \n", $mres);
						if($sign_rs2[$i] != $sign_rs1[$i]) {
								$mres = (0 - $mres) & 0xffffffff
							}
						# printf ("mres : %x \n", $mres);
						if($mres >> 31 == 1) {
							$mres = ($mres >> 15) | 0x8000;
						}
						else {
							$mres = $mres >> 15;
						}
						# printf ("mres : %x \n", $mres);
						$result32[$i] = $mres & 0xffff;
						# printf ("result32[$i] : %x \n", $result32[$i]);
					} else {
						$result32[$i] = 0x00007fff;
						$OV_REG[$i]=1;
					}

					if ($i == 1) {
						for (my $var = 0; $var < 2; $var++) {
							$rd[$var] = $result32[$var] ;
							# printf ("rd[$var] : %x \n", $rd[$var]);
							# printf ("result32[$var] : %x \n", $result32[$var]);
						}
						my $tmp_1;
						$tmp_1  = $rs2[0];
						$rs2[0] = $rs2[1]; 
						$rs2[1] = $tmp_1; 
					}

				}
				case "smul8" {
					if ($i == 3) {
						my $tmp0 = signed_mul8($rs1[0] & 0xff, $rs2[0] & 0xff);
						my $tmp1 = signed_mul8($rs1[1] & 0xff, $rs2[1] & 0xff);
						my $tmp2 = signed_mul8($rs1[2] & 0xff, $rs2[2] & 0xff);
						my $tmp3 = signed_mul8($rs1[3] & 0xff, $rs2[3] & 0xff);
						$result32_h_l[0] = (($tmp1 << 16) & 0xffff_ffff)+ $tmp0;
						$result32_h_l[1] = (($tmp3 << 16) & 0xffff_ffff) + $tmp2;
					}
					$H_L_RD = 1;
				}
				case "smulx8" {
					if ($i == 3) {
						my $tmp0 = signed_mul8($rs1[0] & 0xff, $rs2[1] & 0xff);
						my $tmp1 = signed_mul8($rs1[1] & 0xff, $rs2[0] & 0xff);
						my $tmp2 = signed_mul8($rs1[2] & 0xff, $rs2[3] & 0xff);
						my $tmp3 = signed_mul8($rs1[3] & 0xff, $rs2[2] & 0xff);
						$result32_h_l[0] = (($tmp1 << 16) & 0xffff_ffff)+ $tmp0;
						$result32_h_l[1] = (($tmp3 << 16) & 0xffff_ffff) + $tmp2;
					}
					$H_L_RD = 1;
				}
				case "umul8" {
					if ($i == 3) {
						my $tmp0 = unsigned_mul8($rs1[0] & 0xff, $rs2[0] & 0xff);
						my $tmp1 = unsigned_mul8($rs1[1] & 0xff, $rs2[1] & 0xff);
						my $tmp2 = unsigned_mul8($rs1[2] & 0xff, $rs2[2] & 0xff);
						my $tmp3 = unsigned_mul8($rs1[3] & 0xff, $rs2[3] & 0xff);
						$result32_h_l[0] = (($tmp1 << 16) & 0xffff_ffff)+ $tmp0;
						$result32_h_l[1] = (($tmp3 << 16) & 0xffff_ffff) + $tmp2;
					}
					$H_L_RD = 1;
				}
				case "umulx8" {
					if ($i == 3) {
						my $tmp0 = unsigned_mul8($rs1[0] & 0xff, $rs2[1] & 0xff);
						my $tmp1 = unsigned_mul8($rs1[1] & 0xff, $rs2[0] & 0xff);
						my $tmp2 = unsigned_mul8($rs1[2] & 0xff, $rs2[3] & 0xff);
						my $tmp3 = unsigned_mul8($rs1[3] & 0xff, $rs2[2] & 0xff);
						$result32_h_l[0] = (($tmp1 << 16) & 0xffff_ffff)+ $tmp0;
						$result32_h_l[1] = (($tmp3 << 16) & 0xffff_ffff) + $tmp2;
					}
					$H_L_RD = 1;
				}
				case "khm8" {
					# my @result16 = (0,0,0,0);
					$rs1[$i] = -0x80 + int(rand(0xff));
					$rs1[$i] = $rs1[$i] & 0xff;
					$sign_rs1[$i] = ($rs1[$i] >> 7) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xff;
					}
					$rs2[$i] = -0x80 + int(rand(0xff));
					$rs2[$i] = $rs2[$i] & 0xff;
					$sign_rs2[$i] = ($rs2[$i] >> 7) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xff;
					}
					if ($rs1[$i] != 0x80 || $rs2[$i] != 0x80) {
						# my $mres = $rs1[$i] * $rs2[$i];
						my $mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						# printf ("mres : %x \n", $mres);
						if($sign_rs2[$i] != $sign_rs1[$i]) {
								$mres = (0 - $mres) & 0xffff
							}
						# printf ("mres : %x \n", $mres);
						if($mres >> 15 == 1) {
							$mres = ($mres >> 7) | 0x80;
						}
						else {
							$mres = $mres >> 7;
						}
						# printf ("mres : %x \n", $mres);
						$result16[$i] = $mres & 0xff;
						# printf ("result16[$i] : %x \n", $result16[$i]);
					} else {
						$result16[$i] = 0x007f;
						$OV_REG[$i]=1;
					}

					if ($i == 3) {
						for (my $var = 0; $var < 4; $var++) {
							$rd[$var] = $result16[$var] ;
							# printf ("rd[$var] : %x \n", $rd[$var]);
							# printf ("result16[$var] : %x \n", $result16[$var]);
						}
					}

				}
				case "khmx8" {
					# my @result16 = (0,0,0,0);
					$rs1[$i] = -0x80 + int(rand(0xff));
					$rs1[$i] = $rs1[$i] & 0xff;
					$sign_rs1[$i] = ($rs1[$i] >> 7) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xff;
					}
					$rs2[$i] = -0x80 + int(rand(0xff));
					$rs2[$i] = $rs2[$i] & 0xff;
					$sign_rs2[$i] = ($rs2[$i] >> 7) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xff;
					}
					if ($rs1[$i] != 0x80 || $rs2[$i] != 0x80) {
						# my $mres = $rs1[$i] * $rs2[$i];
						my $mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						# printf ("mres : %x \n", $mres);
						if($sign_rs2[$i] != $sign_rs1[$i]) {
								$mres = (0 - $mres) & 0xffff
							}
						# printf ("mres : %x \n", $mres);
						if($mres >> 15 == 1) {
							$mres = ($mres >> 7) | 0x80;
						}
						else {
							$mres = $mres >> 7;
						}
						# printf ("mres : %x \n", $mres);
						$result16[$i] = $mres & 0xff;
						# printf ("result16[$i] : %x \n", $result16[$i]);
					} else {
						$result16[$i] = 0x007f;
						$OV_REG[$i]=1;
					}

					if ($i == 3) {
						for (my $var = 0; $var < 4; $var++) {
							$rd[$var] = $result16[$var] ;
							# printf ("rd[$var] : %x \n", $rd[$var]);
							# printf ("result16[$var] : %x \n", $result16[$var]);
						}
						my $tmp_1;
						$tmp_1  = $rs2[0];
						$rs2[0] = $rs2[1]; 
						$rs2[1] = $tmp_1; 
						my $tmp_2;
						$tmp_2  = $rs2[2];
						$rs2[2] = $rs2[3]; 
						$rs2[3] = $tmp_2;
					}

				}
				case "smin16" {
					my $sig1 = $rs1[$i] >> 15;
					my $sig2 = $rs2[$i] >> 15;
					my $val1 = $rs1[$i] & 0x7fff;
					my $val2 = $rs2[$i] & 0x7fff;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 < $val2) {
							$rd[$i] = $rs1[$i];
						} else {
							$rd[$i] = $rs2[$i];
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = $rs2[$i];
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = $rs1[$i];
					} else {
						if ($val1 < $val2) {
							$rd[$i] = $rs1[$i];
						} else {
							$rd[$i] = $rs2[$i];
						}
					}
				}
				case "umin16" {
					if ($rs1[$i] < $rs2[$i]) {
						$rd[$i] = $rs1[$i];
					} else {
						$rd[$i] = $rs2[$i];
					}
				}
				case "smax16" {
					my $sig1 = $rs1[$i] >> 15;
					my $sig2 = $rs2[$i] >> 15;
					my $val1 = $rs1[$i] & 0x7fff;
					my $val2 = $rs2[$i] & 0x7fff;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 < $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = $rs1[$i];
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = $rs2[$i];
					} else {
						if ($val1 < $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					}
				}
				case "umax16" {
					if ($rs1[$i] < $rs2[$i]) {
						$rd[$i] = $rs2[$i];
					} else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "sclip16" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $src = $rs1[$i];
					if ((($src >> 15) == 0) && ($src > (2**$IMXU -1) ) ) {
						$src = (2**$IMXU -1);
						$OV_REG[$i]=1;
					} elsif ((($src >> 15)==1) && ($src - 2*(2**15) < -2**$IMXU)) {
						$src = -(2**$IMXU);
						$OV_REG[$i]=1;
					}
					$rd[$i] = $src & 0xffff;
				}
				case "uclip16" {
					if ($i ==0) {
						$IMXU = int(rand(0xf));
						$IMXU_EN = 1;
					}
					my $src = $rs1[$i];
					if ((($src >> 15) == 0) && ($src > (2**$IMXU -1) ) ) {
						$src = (2**$IMXU -1);
						$OV_REG[$i]=1;
					} elsif (($src >> 15)==1) {
						$src = 0x0;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $src & 0xffff;
				}
				case "kabs16" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my $src = $rs1[$i];
					if ( $src == 0x8000) {
						$src = 0x7fff;
						$OV_REG[$i]=1;
					} elsif (($src >> 15)==1) {
						$src = -$src;
					}
					$rd[$i] = $src & 0xffff;
				}
				case "clrs16" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my @snum;
					$snum[$i] = $rs1[$i];
					# printf"snum[$i]: $snum[$i]\n";
					my $cnt = 0;
					my @bit_val;
					for (my $var = 0; $var < 16; $var++) {
						$bit_val[$var] = $snum[$i] & 0x1;
						# print "bit_val[$var]: $bit_val[$var]\n";
						$snum[$i]      = $snum[$i] >> 1;
					}
					for (my $var = 14; $var >= 0; $var--) {
						if ($bit_val[$var] == $bit_val[15]) {
							$cnt = $cnt +1;
							# print "cnt: $cnt\n";
						} else {
							last;
						}
					}
					$rd[$i] = $cnt & 0xffff;
				}
				case "clz16" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my @snum;
					$snum[$i] = $rs1[$i];
					my $cnt = 0;
					my @bit_val;
					for (my $var = 0; $var < 16; $var++) {
						$bit_val[$var] = $snum[$i] & 0x1;
						$snum[$i]      = $snum[$i] >> 1;
					}
					for (my $var = 15; $var >= 0; $var--) {
						if ($bit_val[$var] == 0) {
							$cnt = $cnt +1;
						} else {
							last;
						}
					}
					$rd[$i] = $cnt & 0xffff;
				}
				case "swap16" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if($i ==1) {
						for (my $var = 0; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var +1];
						}
						for (my $var = 1; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var -1];
						}
					}
				}
				case "smin8" {
					my $sig1 = $rs1[$i] >> 7;
					my $sig2 = $rs2[$i] >> 7;
					my $val1 = $rs1[$i] & 0x7f;
					my $val2 = $rs2[$i] & 0x7f;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 < $val2) {
							$rd[$i] = $rs1[$i];
						} else {
							$rd[$i] = $rs2[$i];
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = $rs2[$i];
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = $rs1[$i];
					} else {
						if ($val1 < $val2) {
							$rd[$i] = $rs1[$i];
						} else {
							$rd[$i] = $rs2[$i];
						}
					}
				}
				case "umin8" {
					if ($rs1[$i] < $rs2[$i]) {
						$rd[$i] = $rs1[$i];
					} else {
						$rd[$i] = $rs2[$i];
					}
				}
				case "smax8" {
					my $sig1 = $rs1[$i] >> 7;
					my $sig2 = $rs2[$i] >> 7;
					my $val1 = $rs1[$i] & 0x7f;
					my $val2 = $rs2[$i] & 0x7f;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 < $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = $rs1[$i];
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = $rs2[$i];
					} else {
						if ($val1 < $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					}
				}
				case "umax8" {
					if ($rs1[$i] < $rs2[$i]) {
						$rd[$i] = $rs2[$i];
					} else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "sclip8" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $src = $rs1[$i];
					if ((($src >> 7) == 0) && ($src > (2**$IMXU -1) ) ) {
						$src = (2**$IMXU -1);
						$OV_REG[$i]=1;
					} elsif ((($src >> 7)==1) && ($src - 2*(2**7) < -2**$IMXU)) {
						$src = -(2**$IMXU);
						$OV_REG[$i]=1;
					}
					$rd[$i] = $src & 0xff;
				}
				case "uclip8" {
					if ($i ==0) {
						$IMXU = int(rand(0x7));
						$IMXU_EN = 1;
					}
					my $src = $rs1[$i];
					if ((($src >> 7) == 0) && ($src > (2**$IMXU -1) ) ) {
						$src = (2**$IMXU -1);
						$OV_REG[$i]=1;
					} elsif (($src >> 7)==1) {
						$src = 0x0;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $src & 0xff;
				}
				case "kabs8" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my $src = $rs1[$i];
					if ( $src == 0x80) {
						$src = 0x7f;
						$OV_REG[$i]=1;
					} elsif ($src >> 7==1) {
						$src = -$src;
					}
					$rd[$i] = $src & 0xff;
				}
				case "clrs8" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my @snum;
					$snum[$i] = $rs1[$i];
					my $cnt = 0;
					my @bit_val;
					for (my $var = 0; $var < 8; $var++) {
						$bit_val[$var] = $snum[$i] & 0x1;
						$snum[$i]      = $snum[$i] >> 1;
					}
					for (my $var = 6; $var >= 0; $var--) {
						if ($bit_val[$var] == $bit_val[7]) {
							$cnt = $cnt +1;
						} else {
							last;
						}
					}
					$rd[$i] = $cnt & 0xff;
				}
				case "clz8" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my @snum;
					$snum[$i] = $rs1[$i];
					my $cnt = 0;
					my @bit_val;
					for (my $var = 0; $var < 8; $var++) {
						$bit_val[$var] = $snum[$i] & 0x1;
						$snum[$i]      = $snum[$i] >> 1;
					}
					for (my $var = 7; $var >= 0; $var--) {
						if ($bit_val[$var] == 0) {
							$cnt = $cnt +1;
						} else {
							last;
						}
					}
					$rd[$i] = $cnt & 0xff;
				}
				case "swap8" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if($i == 3) {
						for (my $var = 0; $var < 4; $var = $var +2) {
							$rd[$var] = $rs1[$var +1];
						}
						for (my $var = 1; $var < 4; $var = $var +2) {
							$rd[$var] = $rs1[$var -1];
						}
					}
				}
				case "sunpkd810" {
					my $sunpkd8x = 1;
					my $sunpkd8y = 0;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$sunpkd8y];
							if (($rs1[$var+$sunpkd8y] >> 7) == 1) {
								$rd[$var+1] = 0xff;
							}
							else {
								$rd[$var+1] = 0x00;
							}
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$sunpkd8x];
							if (($rs1[$var+$sunpkd8x] >> 7) == 1) {
								$rd[$var+3] = 0xff;
							}
							else {
								$rd[$var+3] = 0x00;
							}
						}
					}
				}
				case "sunpkd820" {
					my $sunpkd8x = 2;
					my $sunpkd8y = 0;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$sunpkd8y];
							if (($rs1[$var+$sunpkd8y] >> 7) == 1) {
								$rd[$var+1] = 0xff;
							}
							else {
								$rd[$var+1] = 0x00;
							}
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$sunpkd8x];
							if (($rs1[$var+$sunpkd8x] >> 7) == 1) {
								$rd[$var+3] = 0xff;
							}
							else {
								$rd[$var+3] = 0x00;
							}
						}
					}
				}
				case "sunpkd830" {
					my $sunpkd8x = 3;
					my $sunpkd8y = 0;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$sunpkd8y];
							if (($rs1[$var+$sunpkd8y] >> 7) == 1) {
								$rd[$var+1] = 0xff;
							}
							else {
								$rd[$var+1] = 0x00;
							}
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$sunpkd8x];
							if (($rs1[$var+$sunpkd8x] >> 7) == 1) {
								$rd[$var+3] = 0xff;
							}
							else {
								$rd[$var+3] = 0x00;
							}
						}
					}
				}
				case "sunpkd831" {
					my $sunpkd8x = 3;
					my $sunpkd8y = 1;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$sunpkd8y];
							if (($rs1[$var+$sunpkd8y] >> 7) == 1) {
								$rd[$var+1] = 0xff;
							}
							else {
								$rd[$var+1] = 0x00;
							}
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$sunpkd8x];
							if (($rs1[$var+$sunpkd8x] >> 7) == 1) {
								$rd[$var+3] = 0xff;
							}
							else {
								$rd[$var+3] = 0x00;
							}
						}
					}
				}
				case "sunpkd832" {
					my $sunpkd8x = 3;
					my $sunpkd8y = 2;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$sunpkd8y];
							if (($rs1[$var+$sunpkd8y] >> 7) == 1) {
								$rd[$var+1] = 0xff;
							}
							else {
								$rd[$var+1] = 0x00;
							}
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$sunpkd8x];
							if (($rs1[$var+$sunpkd8x] >> 7) == 1) {
								$rd[$var+3] = 0xff;
							}
							else {
								$rd[$var+3] = 0x00;
							}
						}
					}
				}
				case "zunpkd810" {
					my $zunpkd8x = 1;
					my $zunpkd8y = 0;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$zunpkd8y];
							$rd[$var+1] = 0x00;
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$zunpkd8x];
							$rd[$var+3] = 0x00;
						}
					}
				}
				case "zunpkd820" {
					my $zunpkd8x = 2;
					my $zunpkd8y = 0;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$zunpkd8y];
							$rd[$var+1] = 0x00;
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$zunpkd8x];
							$rd[$var+3] = 0x00;
						}
					}
				}
				case "zunpkd830" {
					my $zunpkd8x = 3;
					my $zunpkd8y = 0;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$zunpkd8y];
							$rd[$var+1] = 0x00;
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$zunpkd8x];
							$rd[$var+3] = 0x00;
						}
					}
				}
				case "zunpkd831" {
					my $zunpkd8x = 3;
					my $zunpkd8y = 1;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$zunpkd8y];
							$rd[$var+1] = 0x00;
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$zunpkd8x];
							$rd[$var+3] = 0x00;
						}
					}
				}
				case "zunpkd832" {
					my $zunpkd8x = 3;
					my $zunpkd8y = 2;
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					if ($i == 3) {
						for (my $var = 0; $var < 5; $var = $var +4) {
							#B[y] y=0 of rs1
							$rd[$var] = $rs1[$var+$zunpkd8y];
							$rd[$var+1] = 0x00;
							#B[x] x=1 of rs1
							$rd[$var+2] = $rs1[$var+$zunpkd8x];
							$rd[$var+3] = 0x00;
						}
					}
				}
				case "pkbb16" {
					if($i ==1) {
						for (my $var = 0; $var < 2; $var = $var +2) {
							$rd[$var] = $rs2[$var];
						}
						for (my $var = 1; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var -1];
						}
					}
				}
				case "pack" {
					$ISA_WIDTH=16;
					update_input();
					if($i ==1) {
						for (my $var = 0; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var];
						}
						for (my $var = 1; $var < 2; $var = $var +2) {
							$rd[$var] = $rs2[$var -1];
						}
					}
				}
				case "pkbt16" {
					if($i ==1) {
						for (my $var = 0; $var < 2; $var = $var +2) {
							$rd[$var] = $rs2[$var+1];
						}
						for (my $var = 1; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var -1];
						}
					}
				}
				case "pktb16" {
					if($i ==1) {
						for (my $var = 0; $var < 2; $var = $var +2) {
							$rd[$var] = $rs2[$var];
						}
						for (my $var = 1; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var];
						}
					}
				}
				case "pktt16" {
					if($i ==1) {
						for (my $var = 0; $var < 2; $var = $var +2) {
							$rd[$var] = $rs2[$var+1];
						}
						for (my $var = 1; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var];
						}
					}
				}
				case "packu" {
					$ISA_WIDTH=16;
					update_input();
					if($i ==1) {
						for (my $var = 0; $var < 2; $var = $var +2) {
							$rd[$var] = $rs1[$var+1];
						}
						for (my $var = 1; $var < 2; $var = $var +2) {
							$rd[$var] = $rs2[$var];
						}
					}
				}
				case "smmul" {
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffffffffffffffff;
					}
					$rd[$i] = ($Mres >> 32) & 0xffffffff;
				}
				case "smmul.u" {
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffffffffffffffff;
					}
					my $Round = ($Mres >> 31) +1;
					$Round    = $Round >> 1;
					$rd[$i]   = $Round & 0xffffffff;
				}
				case "kmmac" {
					$ISA_WIDTH=32;
					update_input();
					# printf fh ("rd32[0]: %x \n",$rd32[0]);
					# printf fh ("rd32[1]: %x \n",$rd32[1]);
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffffffffffffffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_Mres = ($Mres >> 32) & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					# printf fh ("se33_rd: %x \n",$se33_rd);
					# printf fh ("se33_Mres: %x \n",$se33_Mres);
					my $res33 = ($se33_rd + $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmac.u" {
					$ISA_WIDTH=32;
					update_input();
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffffffffffffffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $Round = ($Mres >> 31) +1;
					$Round    = $Round >> 1;
					my $se33_Mres = $Round & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmsb" {
					$ISA_WIDTH=32;
					update_input();
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffffffffffffffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_Mres = ($Mres >> 32) & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					my $res33 = ($se33_rd - $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmsb.u" {
					$ISA_WIDTH=32;
					update_input();
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
					} else {
						$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffffffffffffffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $Round = ($Mres >> 31) +1;
					$Round    = $Round >> 1;
					my $se33_Mres = $Round & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					my $res33 = ($se33_rd - $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kwmmul" {
					# $ISA_WIDTH=32;
					# if ($i == 0) {
					# 	$rs1[$i] = 0x8000_0000;
					# 	$rs2[$i] = 0x8000_0000;
					# }
					if ($rs1[$i] != 0x8000_0000 || $rs2[$i] != 0x8000_0000) {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
						} else {
							$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffffffffffffffff;
						}
						$rd[$i] = ($Mres >> 31) & 0xffff_ffff;
					} else {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
				}
				case "kwmmul.u" {
					# $ISA_WIDTH=32;
					if ($rs1[$i] != 0x8000_0000 || $rs2[$i] != 0x8000_0000) {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2[$i] >> 31) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2[$i]) & 0xffffffff;
						} else {
							$val_int_rs2[$i] = $rs2[$i] & 0xffffffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffffffffffffffff;
						}
						my $Round = ($Mres >> 30) +1;
						$Round    = $Round >> 1;
						$rd[$i]   = $Round & 0xffffffff;
					}else {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
				}
				case "smmwb" {
					# $ISA_WIDTH=32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = $rs2[$i] & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					$rd[$i] = ($Mres >> 16) & 0xffff_ffff;
				}
				case "smmwb.u" {
					# $ISA_WIDTH=32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = $rs2[$i] & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					my $Round = ($Mres >> 15) +1;
					$Round    = $Round >> 1;
					$rd[$i]   = $Round & 0xffff_ffff;
				}
				case "smmwt" {
					# $ISA_WIDTH=32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >> 16) & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					$rd[$i] = ($Mres >> 16) & 0xffff_ffff;
				}
				case "smmwt.u" {
					# $ISA_WIDTH=32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >> 16) & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					my $Round = ($Mres >> 15) +1;
					$Round    = $Round >> 1;
					$rd[$i]   = $Round & 0xffff_ffff;
				}
				case "kmmawb" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = $rs2[$i] & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_Mres = ($Mres >> 16) & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmawb.u" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = $rs2[$i] & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $Round = ($Mres >> 15) +1;
					$Round    = $Round >> 1;
					my $se33_Mres = $Round & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmawt" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >> 16) & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_Mres = ($Mres >> 16) & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmawt.u" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
					} else {
						$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
					}
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >> 16) & 0xffff;
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $Round = ($Mres >> 15) +1;
					$Round    = $Round >> 1;
					my $se33_Mres = $Round & 0xffffffff;
					if (($se33_Mres>>31) == 1) {
						$se33_Mres = $se33_Mres | 0x100000000;
					} else {
						$se33_Mres = $se33_Mres | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_Mres) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmwb2" {
					# $ISA_WIDTH=32;
					my @rs2_2b;
					$rs2_2b[$i] = $rs2[$i] & 0xffff;
					if ($rs1[$i] == 0x8000_0000 && $rs2_2b[$i] == 0x8000) {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					else {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						$rd[$i] = ($Mres >> 15) & 0xffff_ffff;
					}
				}
				case "kmmwb2.u" {
					# $ISA_WIDTH=32;
					my @rs2_2b;
					$rs2_2b[$i] = $rs2[$i] & 0xffff;
					if ($rs1[$i] == 0x8000_0000 && $rs2_2b[$i] == 0x8000) {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					else {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						my $Round = ($Mres >> 14) +1;
						$Round    = $Round >> 1;
						$rd[$i]   = $Round & 0xffff_ffff;
					}
				}
				case "kmmwt2" {
					# $ISA_WIDTH=32;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >>16) & 0xffff;
					if ($rs1[$i] == 0x8000_0000 && $rs2_2b[$i] == 0x8000) {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					else {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						$rd[$i] = ($Mres >> 15) & 0xffff_ffff;
					}
				}
				case "kmmwt2.u" {
					# $ISA_WIDTH=32;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >>16) & 0xffff;
					if ($rs1[$i] == 0x8000_0000 && $rs2_2b[$i] == 0x8000) {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					else {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						my $Round = ($Mres >> 14) +1;
						$Round    = $Round >> 1;
						$rd[$i]   = $Round & 0xffff_ffff;
					}
				}
				case "kmmawb2" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					if ($rs1[$i] != 0x8000_0000 || $rs2_2b[$i] != 0x8000) {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						$addop[$i] = ($Mres >> 15) & 0xffff_ffff;
					} else {
						$addop[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					# print "addop[$i]: $addop[$i] \n";
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_addop = $addop[$i] & 0xffffffff;
					if (($se33_addop>>31) == 1) {
						$se33_addop = $se33_addop | 0x100000000;
					} else {
						$se33_addop = $se33_addop | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_addop) & 0x1ffffffff;
					# print "se33_rd: $se33_rd \n";
					# print "se33_addop: $se33_addop \n";
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmawb2.u" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					if ($rs1[$i] != 0x8000_0000 || $rs2_2b[$i] != 0x8000) {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						$addop[$i] = ($Mres >> 14) +1;
						$addop[$i] = ($addop[$i] >> 1) & 0xffff_ffff;
					} else {
						$addop[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_addop = $addop[$i] & 0xffffffff;
					if (($se33_addop>>31) == 1) {
						$se33_addop = $se33_addop | 0x100000000;
					} else {
						$se33_addop = $se33_addop | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_addop) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmawt2" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >>16) & 0xffff;
					if ($rs1[$i] != 0x8000_0000 || $rs2_2b[$i] != 0x8000) {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						$addop[$i] = ($Mres >> 15) & 0xffff_ffff;
					} else {
						$addop[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_addop = $addop[$i] & 0xffffffff;
					if (($se33_addop>>31) == 1) {
						$se33_addop = $se33_addop | 0x100000000;
					} else {
						$se33_addop = $se33_addop | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_addop) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmmawt2.u" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i] >>16) & 0xffff;
					if ($rs1[$i] != 0x8000_0000 || $rs2_2b[$i] != 0x8000) {
						$sign_rs1[$i] = ($rs1[$i] >> 31) & 0x1;
						if ($sign_rs1[$i] != 0) {
							$val_int_rs1[$i] = (0-$rs1[$i]) & 0xffffffff;
						} else {
							$val_int_rs1[$i] = $rs1[$i] & 0xffffffff;
						}
						$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
						if ($sign_rs2[$i] != 0) {
							$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
						} else {
							$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
						}
						my $Mres = $val_int_rs1[$i] * $val_int_rs2[$i];
						if($sign_rs2[$i] != $sign_rs1[$i]) {
							$Mres = (0 - $Mres) & 0xffff_ffff_ffff;
						}
						$addop[$i] = ($Mres >> 14) +1;
						$addop[$i] = ($addop[$i] >> 1) & 0xffff_ffff;
					} else {
						$addop[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_addop = $addop[$i] & 0xffffffff;
					if (($se33_addop>>31) == 1) {
						$se33_addop = $se33_addop | 0x100000000;
					} else {
						$se33_addop = $se33_addop | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_addop) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "smbb16" {
					$ISA_WIDTH=32;
					update_input();
					$rd[$i] =   signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
				}
				case "smbt16" {
					$ISA_WIDTH=32;
					update_input();
					$rd[$i] =   signed_mul16($rs1[$i] & 0xffff, ($rs2[$i] >> 16) & 0xffff);
				}
				case "smtt16" {
					$ISA_WIDTH=32;
					update_input();
					$rd[$i] =   signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
				}
				case "kmda" {
					if ($rs1[$i] == 0x8000_8000 && $rs2[$i] == 0x8000_8000 ) {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					} else {
						my $tmp1 = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
						my $tmp2 = signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
						$rd[$i] = ($tmp1 + $tmp2) & 0xffff_ffff;
					}
				}
				case "kmxda" {
					if ($rs1[$i] == 0x8000_8000 && $rs2[$i] == 0x8000_8000 ) {
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					} else {
						my $tmp1 = signed_mul16(($rs1[$i] >> 16) & 0xffff, $rs2[$i] & 0xffff);
						my $tmp2 = signed_mul16($rs1[$i] & 0xffff, ($rs2[$i] >> 16) & 0xffff);
						$rd[$i] = ($tmp1 + $tmp2) & 0xffff_ffff;
					}
				}
				case "smds" {
					my $tmp1 = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					my $tmp2 = signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					$rd[$i] = ($tmp2 - $tmp1) & 0xffff_ffff;
				}
				case "smdrs" {
					my $tmp1 = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					my $tmp2 = signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					$rd[$i] = ($tmp1 - $tmp2) & 0xffff_ffff;
				}
				case "smxds" {
					my $tmp1 = signed_mul16(($rs1[$i] >> 16) & 0xffff, $rs2[$i] & 0xffff);
					my $tmp2 = signed_mul16($rs1[$i] & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					$rd[$i] = ($tmp1 - $tmp2) & 0xffff_ffff;
				}
				case "kmabb" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $mul32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mul32 = (0 - $mul32) & 0xffff_ffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_mul32 = $mul32 & 0xffffffff;
					if (($se33_mul32>>31) == 1) {
						$se33_mul32 = $se33_mul32 | 0x100000000;
					} else {
						$se33_mul32 = $se33_mul32 | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_mul32) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmabt" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $mul32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mul32 = (0 - $mul32) & 0xffff_ffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_mul32 = $mul32 & 0xffffffff;
					if (($se33_mul32>>31) == 1) {
						$se33_mul32 = $se33_mul32 | 0x100000000;
					} else {
						$se33_mul32 = $se33_mul32 | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_mul32) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmatt" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}
					my $mul32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mul32 = (0 - $mul32) & 0xffff_ffff;
					}
					my $se33_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se33_rd = $res_rd32 | 0x100000000;
					} else {
						$se33_rd = $res_rd32 | 0x000000000;
					}
					my $se33_mul32 = $mul32 & 0xffffffff;
					if (($se33_mul32>>31) == 1) {
						$se33_mul32 = $se33_mul32 | 0x100000000;
					} else {
						$se33_mul32 = $se33_mul32 | 0x000000000;
					}
					my $res33 = ($se33_rd + $se33_mul32) & 0x1ffffffff;
					if(($res33 >> 31) == 1) { #>2^31-1
						$res33 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res33 >> 31) == 2) { #<-2^31
						$res33 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res33 & 0xffffffff;
				}
				case "kmada" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}

					my @rs1_2b_1;
					$rs1_2b_1[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b_1;
					$rs2_2b_1[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1_1[$i] = ($rs1_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs1_1[$i] != 0) {
						$val_int_rs1_1[$i] = (0-$rs1_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs1_1[$i] = $rs1_2b_1[$i] & 0xffff;
					}
					$sign_rs2_1[$i] = ($rs2_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs2_1[$i] != 0) {
						$val_int_rs2_1[$i] = (0-$rs2_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs2_1[$i] = $rs2_2b_1[$i] & 0xffff;
					}

					my $mula32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mula32 = (0 - $mula32) & 0xffff_ffff;
					}
					my $mulb32 = $val_int_rs1_1[$i] * $val_int_rs2_1[$i];
					if($sign_rs2_1[$i] != $sign_rs1_1[$i]) {
						$mulb32 = (0 - $mulb32) & 0xffff_ffff;
					}
					my $se34_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se34_rd = $res_rd32 | 0x300000000;
					} else {
						$se34_rd = $res_rd32 | 0x000000000;
					}
					my $se34_mula32 = $mula32 & 0xffffffff;
					if (($se34_mula32>>31) == 1) {
						$se34_mula32 = $se34_mula32 | 0x300000000;
					} else {
						$se34_mula32 = $se34_mula32 | 0x000000000;
					}
					my $se34_mulb32 = $mulb32 & 0xffffffff;
					if (($se34_mulb32>>31) == 1) {
						$se34_mulb32 = $se34_mulb32 | 0x300000000;
					} else {
						$se34_mulb32 = $se34_mulb32 | 0x000000000;
					}
					my $res34 = ($se34_rd + $se34_mula32 + $se34_mulb32) & 0x3ffffffff;

					if(($res34 >> 31) == 1) { #>2^31-1
						$res34 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res34 >> 31) == 6) { #<-2^31
						$res34 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res34 & 0xffffffff;
				}
				case "kmaxda" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}

					my @rs1_2b_1;
					$rs1_2b_1[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b_1;
					$rs2_2b_1[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1_1[$i] = ($rs1_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs1_1[$i] != 0) {
						$val_int_rs1_1[$i] = (0-$rs1_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs1_1[$i] = $rs1_2b_1[$i] & 0xffff;
					}
					$sign_rs2_1[$i] = ($rs2_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs2_1[$i] != 0) {
						$val_int_rs2_1[$i] = (0-$rs2_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs2_1[$i] = $rs2_2b_1[$i] & 0xffff;
					}

					my $mula32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mula32 = (0 - $mula32) & 0xffff_ffff;
					}
					my $mulb32 = $val_int_rs1_1[$i] * $val_int_rs2_1[$i];
					if($sign_rs2_1[$i] != $sign_rs1_1[$i]) {
						$mulb32 = (0 - $mulb32) & 0xffff_ffff;
					}
					my $se34_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se34_rd = $res_rd32 | 0x300000000;
					} else {
						$se34_rd = $res_rd32 | 0x000000000;
					}
					my $se34_mula32 = $mula32 & 0xffffffff;
					if (($se34_mula32>>31) == 1) {
						$se34_mula32 = $se34_mula32 | 0x300000000;
					} else {
						$se34_mula32 = $se34_mula32 | 0x000000000;
					}
					my $se34_mulb32 = $mulb32 & 0xffffffff;
					if (($se34_mulb32>>31) == 1) {
						$se34_mulb32 = $se34_mulb32 | 0x300000000;
					} else {
						$se34_mulb32 = $se34_mulb32 | 0x000000000;
					}
					my $res34 = ($se34_rd + $se34_mula32 + $se34_mulb32) & 0x3ffffffff;

					if(($res34 >> 31) == 1) { #>2^31-1
						$res34 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res34 >> 31) == 6) { #<-2^31
						$res34 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res34 & 0xffffffff;
				}
				case "kmads" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}

					my @rs1_2b_1;
					$rs1_2b_1[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b_1;
					$rs2_2b_1[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1_1[$i] = ($rs1_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs1_1[$i] != 0) {
						$val_int_rs1_1[$i] = (0-$rs1_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs1_1[$i] = $rs1_2b_1[$i] & 0xffff;
					}
					$sign_rs2_1[$i] = ($rs2_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs2_1[$i] != 0) {
						$val_int_rs2_1[$i] = (0-$rs2_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs2_1[$i] = $rs2_2b_1[$i] & 0xffff;
					}

					my $mula32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mula32 = (0 - $mula32) & 0xffff_ffff;
					}
					my $mulb32 = $val_int_rs1_1[$i] * $val_int_rs2_1[$i];
					if($sign_rs2_1[$i] != $sign_rs1_1[$i]) {
						$mulb32 = (0 - $mulb32) & 0xffff_ffff;
					}
					my $se34_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se34_rd = $res_rd32 | 0x300000000;
					} else {
						$se34_rd = $res_rd32 | 0x000000000;
					}
					my $se34_mula32 = $mula32 & 0xffffffff;
					if (($se34_mula32>>31) == 1) {
						$se34_mula32 = $se34_mula32 | 0x300000000;
					} else {
						$se34_mula32 = $se34_mula32 | 0x000000000;
					}
					my $se34_mulb32 = $mulb32 & 0xffffffff;
					if (($se34_mulb32>>31) == 1) {
						$se34_mulb32 = $se34_mulb32 | 0x300000000;
					} else {
						$se34_mulb32 = $se34_mulb32 | 0x000000000;
					}
					my $res34 = ($se34_rd + $se34_mula32 - $se34_mulb32) & 0x3ffffffff;

					if(($res34 >> 31) == 1) { #>2^31-1
						$res34 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res34 >> 31) == 6) { #<-2^31
						$res34 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res34 & 0xffffffff;
				}
				case "kmadrs" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}

					my @rs1_2b_1;
					$rs1_2b_1[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b_1;
					$rs2_2b_1[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1_1[$i] = ($rs1_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs1_1[$i] != 0) {
						$val_int_rs1_1[$i] = (0-$rs1_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs1_1[$i] = $rs1_2b_1[$i] & 0xffff;
					}
					$sign_rs2_1[$i] = ($rs2_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs2_1[$i] != 0) {
						$val_int_rs2_1[$i] = (0-$rs2_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs2_1[$i] = $rs2_2b_1[$i] & 0xffff;
					}

					my $mula32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mula32 = (0 - $mula32) & 0xffff_ffff;
					}
					my $mulb32 = $val_int_rs1_1[$i] * $val_int_rs2_1[$i];
					if($sign_rs2_1[$i] != $sign_rs1_1[$i]) {
						$mulb32 = (0 - $mulb32) & 0xffff_ffff;
					}
					my $se34_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se34_rd = $res_rd32 | 0x300000000;
					} else {
						$se34_rd = $res_rd32 | 0x000000000;
					}
					my $se34_mula32 = $mula32 & 0xffffffff;
					if (($se34_mula32>>31) == 1) {
						$se34_mula32 = $se34_mula32 | 0x300000000;
					} else {
						$se34_mula32 = $se34_mula32 | 0x000000000;
					}
					my $se34_mulb32 = $mulb32 & 0xffffffff;
					if (($se34_mulb32>>31) == 1) {
						$se34_mulb32 = $se34_mulb32 | 0x300000000;
					} else {
						$se34_mulb32 = $se34_mulb32 | 0x000000000;
					}
					my $res34 = ($se34_rd + $se34_mula32 - $se34_mulb32) & 0x3ffffffff;

					if(($res34 >> 31) == 1) { #>2^31-1
						$res34 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res34 >> 31) == 6) { #<-2^31
						$res34 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res34 & 0xffffffff;
				}
				case "kmaxds" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}

					my @rs1_2b_1;
					$rs1_2b_1[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b_1;
					$rs2_2b_1[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1_1[$i] = ($rs1_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs1_1[$i] != 0) {
						$val_int_rs1_1[$i] = (0-$rs1_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs1_1[$i] = $rs1_2b_1[$i] & 0xffff;
					}
					$sign_rs2_1[$i] = ($rs2_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs2_1[$i] != 0) {
						$val_int_rs2_1[$i] = (0-$rs2_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs2_1[$i] = $rs2_2b_1[$i] & 0xffff;
					}

					my $mula32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mula32 = (0 - $mula32) & 0xffff_ffff;
					}
					my $mulb32 = $val_int_rs1_1[$i] * $val_int_rs2_1[$i];
					if($sign_rs2_1[$i] != $sign_rs1_1[$i]) {
						$mulb32 = (0 - $mulb32) & 0xffff_ffff;
					}
					my $se34_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se34_rd = $res_rd32 | 0x300000000;
					} else {
						$se34_rd = $res_rd32 | 0x000000000;
					}
					my $se34_mula32 = $mula32 & 0xffffffff;
					if (($se34_mula32>>31) == 1) {
						$se34_mula32 = $se34_mula32 | 0x300000000;
					} else {
						$se34_mula32 = $se34_mula32 | 0x000000000;
					}
					my $se34_mulb32 = $mulb32 & 0xffffffff;
					if (($se34_mulb32>>31) == 1) {
						$se34_mulb32 = $se34_mulb32 | 0x300000000;
					} else {
						$se34_mulb32 = $se34_mulb32 | 0x000000000;
					}
					my $res34 = ($se34_rd + $se34_mula32 - $se34_mulb32) & 0x3ffffffff;

					if(($res34 >> 31) == 1) { #>2^31-1
						$res34 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res34 >> 31) == 6) { #<-2^31
						$res34 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res34 & 0xffffffff;
				}
				case "kmsda" {
					# $ISA_WIDTH=32;
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}

					my @rs1_2b_1;
					$rs1_2b_1[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b_1;
					$rs2_2b_1[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1_1[$i] = ($rs1_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs1_1[$i] != 0) {
						$val_int_rs1_1[$i] = (0-$rs1_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs1_1[$i] = $rs1_2b_1[$i] & 0xffff;
					}
					$sign_rs2_1[$i] = ($rs2_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs2_1[$i] != 0) {
						$val_int_rs2_1[$i] = (0-$rs2_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs2_1[$i] = $rs2_2b_1[$i] & 0xffff;
					}

					my $mula32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mula32 = (0 - $mula32) & 0xffff_ffff;
					}
					my $mulb32 = $val_int_rs1_1[$i] * $val_int_rs2_1[$i];
					if($sign_rs2_1[$i] != $sign_rs1_1[$i]) {
						$mulb32 = (0 - $mulb32) & 0xffff_ffff;
					}
					my $se34_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se34_rd = $res_rd32 | 0x300000000;
					} else {
						$se34_rd = $res_rd32 | 0x000000000;
					}
					my $se34_mula32 = $mula32 & 0xffffffff;
					if (($se34_mula32>>31) == 1) {
						$se34_mula32 = $se34_mula32 | 0x300000000;
					} else {
						$se34_mula32 = $se34_mula32 | 0x000000000;
					}
					my $se34_mulb32 = $mulb32 & 0xffffffff;
					if (($se34_mulb32>>31) == 1) {
						$se34_mulb32 = $se34_mulb32 | 0x300000000;
					} else {
						$se34_mulb32 = $se34_mulb32 | 0x000000000;
					}
					my $res34 = ($se34_rd - $se34_mula32 - $se34_mulb32) & 0x3ffffffff;

					if(($res34 >> 31) == 1) { #>2^31-1
						$res34 = (2**31)-1;
						$OV_REG[$i]=1;
					}
					elsif (($res34 >> 31) == 6) { #<-2^31
						$res34 = -2**31;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $res34 & 0xffffffff;
				}
				case "kmsxda" {
					# $ISA_WIDTH=32;
					# printf fh ("rs1[$i]: %x \n",$rs1[$i]);
					# printf fh ("rs2[$i]: %x \n",$rs2[$i]);
					$rd[$i] = $res_rd32;
					my @rs1_2b;
					$rs1_2b[$i] = ($rs1[$i]>>16) & 0xffff;
					my @rs2_2b;
					$rs2_2b[$i] = ($rs2[$i]) & 0xffff;
					$sign_rs1[$i] = ($rs1_2b[$i] >> 15) & 0x1;
					if ($sign_rs1[$i] != 0) {
						$val_int_rs1[$i] = (0-$rs1_2b[$i]) & 0xffff;
					} else {
						$val_int_rs1[$i] = $rs1_2b[$i] & 0xffff;
					}
					$sign_rs2[$i] = ($rs2_2b[$i] >> 15) & 0x1;
					if ($sign_rs2[$i] != 0) {
						$val_int_rs2[$i] = (0-$rs2_2b[$i]) & 0xffff;
					} else {
						$val_int_rs2[$i] = $rs2_2b[$i] & 0xffff;
					}

					my @rs1_2b_1;
					$rs1_2b_1[$i] = ($rs1[$i]) & 0xffff;
					my @rs2_2b_1;
					$rs2_2b_1[$i] = ($rs2[$i]>>16) & 0xffff;
					$sign_rs1_1[$i] = ($rs1_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs1_1[$i] != 0) {
						$val_int_rs1_1[$i] = (0-$rs1_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs1_1[$i] = $rs1_2b_1[$i] & 0xffff;
					}
					$sign_rs2_1[$i] = ($rs2_2b_1[$i] >> 15) & 0x1;
					if ($sign_rs2_1[$i] != 0) {
						$val_int_rs2_1[$i] = (0-$rs2_2b_1[$i]) & 0xffff;
					} else {
						$val_int_rs2_1[$i] = $rs2_2b_1[$i] & 0xffff;
					}

					my $mula32 = $val_int_rs1[$i] * $val_int_rs2[$i];
					# printf fh ("val_int_rs1[$i]: %x \n",$val_int_rs1[$i]);
					# printf fh ("val_int_rs2[$i]: %x \n",$val_int_rs2[$i]);
					# printf fh ("mula32: %x \n",$mula32);
					if($sign_rs2[$i] != $sign_rs1[$i]) {
						$mula32 = (0 - $mula32) & 0xffff_ffff;
					}
					my $mulb32 = $val_int_rs1_1[$i] * $val_int_rs2_1[$i];
					if($sign_rs2_1[$i] != $sign_rs1_1[$i]) {
						$mulb32 = (0 - $mulb32) & 0xffff_ffff;
					}

					# printf fh ("mula32: %x \n",$mula32);
					# printf fh ("mulb32: %x \n",$mulb32);
					my $se34_rd = 0;
					if ((($res_rd32>>31) & 0x1) == 1) {
						$se34_rd = $res_rd32 | 0x300000000;
					} else {
						$se34_rd = $res_rd32 | 0x000000000;
					}
					my $se34_mula32 = $mula32 & 0xffffffff;
					if (($se34_mula32>>31) == 1) {
						$se34_mula32 = $se34_mula32 | 0x300000000;
					} else {
						$se34_mula32 = $se34_mula32 | 0x000000000;
					}
					my $se34_mulb32 = $mulb32 & 0xffffffff;
					if (($se34_mulb32>>31) == 1) {
						$se34_mulb32 = $se34_mulb32 | 0x300000000;
					} else {
						$se34_mulb32 = $se34_mulb32 | 0x000000000;
					}
					# printf fh ("se34_rd: %x \n",$se34_rd);
					# printf fh ("se34_mula32: %x \n",$se34_mula32);
					# printf fh ("se34_mulb32: %x \n",$se34_mulb32);
					my $res34 = ($se34_rd - $se34_mula32 - $se34_mulb32) & 0x3ffffffff;

					if(($res34 >> 31) == 1) { #>2^31-1
						$res34 = (2**31)-1;
					}
					elsif (($res34 >> 31) == 6) { #<-2^31
						$res34 = -2**31;
					}
					$rd[$i] = $res34 & 0xffffffff;
				}
				case "smal" {
					update_rs1_64b();
					$Mres[$i] = signed_mul16(($rs2[$i] >> 16) & 0xffff, $rs2[$i] & 0xffff);
					if ((($Mres[$i] >> 31) & 0x1)==1) {
						$Mres[$i] = $Mres[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres[$i] = $Mres[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($rs1[$i]) + int64($Mres[$i]);
					$rd[$i] = $rd[$i] & 0xffff_ffff_ffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 3;
				}
				case "sclip32" {
					if ($i ==0) {
						$IMXU = int(rand(0x1f));
						$IMXU_EN = 1;
					}
					my $src = $rs1[$i];
					if ((($src >> 31) == 0) && ($src > (2**$IMXU -1) ) ) {
						$src = (2**$IMXU -1);
						$OV_REG[$i]=1;
					} elsif ((($src >> 31)==1) && ($src - 2*(2**31) < -2**$IMXU)) {
						$src = -(2**$IMXU);
						$OV_REG[$i]=1;
					}
					$rd[$i] = $src & 0xffff_ffff;
				}
				case "uclip32" {
					if ($i ==0) {
						$IMXU = int(rand(0x1f));
						$IMXU_EN = 1;
					}
					my $src = $rs1[$i];
					if ((($src >> 31) == 0) && ($src > (2**$IMXU -1) ) ) {
						$src = (2**$IMXU -1);
						$OV_REG[$i]=1;
					} elsif (($src >> 31)==1) {
						$src = 0x0;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $src & 0xffff_ffff;
				}
				case "clrs32" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my @snum;
					$snum[$i] = $rs1[$i];
					# printf"snum[$i]: $snum[$i]\n";
					my $cnt = 0;
					my @bit_val;
					for (my $var = 0; $var < 32; $var++) {
						$bit_val[$var] = $snum[$i] & 0x1;
						# print "bit_val[$var]: $bit_val[$var]\n";
						$snum[$i]      = $snum[$i] >> 1;
					}
					for (my $var = 30; $var >= 0; $var--) {
						if ($bit_val[$var] == $bit_val[31]) {
							$cnt = $cnt +1;
							# print "cnt: $cnt\n";
						} else {
							last;
						}
					}
					$rd[$i] = $cnt & 0xffff_ffff;
				}
				case "clz32" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my @snum;
					$snum[$i] = $rs1[$i];
					my $cnt = 0;
					my @bit_val;
					for (my $var = 0; $var < 32; $var++) {
						$bit_val[$var] = $snum[$i] & 0x1;
						$snum[$i]      = $snum[$i] >> 1;
					}
					for (my $var = 31; $var >= 0; $var--) {
						if ($bit_val[$var] == 0) {
							$cnt = $cnt +1;
						} else {
							last;
						}
					}
					$rd[$i] = $cnt & 0xffff_ffff;
				}
				case "pbsad" {
					# $ISA_WIDTH=8;
					# update_input();
					# print fh "with: $ISA_WIDTH $ISA_WIDTH\n";
					# printf fh ("rs1[$i]: %x \n",$rs1[$i]);
					# printf fh ("rs2[$i]: %x \n",$rs2[$i]);
					$absdiff[$i] = ($rs1[$i] & 0x1ff) - ($rs2[$i] & 0x1ff);
					# printf fh ("absdiff[$i]: %x \n",$absdiff[$i]);
					if ($absdiff[$i] <0) {
						$absdiff[$i] = (0 - $absdiff[$i]) ;
					}
					$absdiff[$i] = $absdiff[$i] & 0x1ff;
					# printf fh ("absdiff[$i]: %x \n",$absdiff[$i]);
					if ($i == 3) {
						$sum32 = 0;
						for (my $var = 0; $var < 4; $var++) {
							# printf fh ("sum32: %x \n",$sum32);
							# printf fh ("absdiff[$var]: %x \n",$absdiff[$var]);
							$sum32 = $sum32 + $absdiff[$var];
							$sum32 = $sum32 & 0xffff_ffff;
						}
							# printf fh ("sum32_last: %x \n",$sum32);
						for (my $var = 0; $var < 4; $var++) {
							$rd[$var] = ($sum32 >> (8 * $var)) & 0xff;
						}
					}
				}
				case "pbsada" {
					$absdiff[$i] = ($rs1[$i] & 0x1ff) - ($rs2[$i] & 0x1ff);
					if ($absdiff[$i] <0) {
						$absdiff[$i] = (0 - $absdiff[$i]) ;
					}
					$absdiff[$i] = $absdiff[$i] & 0x1ff;
					if ($i == 3) {
						$sum32 = 0;
						for (my $var = 0; $var < 4; $var++) {
							$sum32 = $sum32 + $absdiff[$var];
						}
							my $tmp = $res_rd32;
							$sum32 = $tmp + $sum32;
							$sum32 = $sum32 & 0xffff_ffff_ffff_ffff;
						for (my $var = 0; $var < 4; $var++) {
							$rd[$var] = ($sum32 >> (8 * $var)) & 0xff;
						}
					}
				}
				case "smaqa" {
					# $ISA_WIDTH=32;
					for (my $var = 0; $var < 4; $var++) {
						if ($var == 0) {
							$res = $res_rd32;
						}
						$tmp = signed_mul8(($rs1[$i]>>(8*$var)) & 0xff,($rs2[$i]>>(8*$var)) & 0xff);
						if (($tmp >> 15)==1) {
							$tmp = $tmp | 0xffff_0000;
						}
						$res = $res + $tmp;
					}
					$rd[$i] = $res & 0xffff_ffff;
				}
				case "umaqa" {
					# $ISA_WIDTH=32;
					for (my $var = 0; $var < 4; $var++) {
						if ($var == 0) {
							$res = $res_rd32;
						}
						$res = $res + unsigned_mul8(($rs1[$i]>>(8*$var)) & 0xff,($rs2[$i]>>(8*$var)) & 0xff);
					}
					$rd[$i] = $res & 0xffff_ffff;
				}
				case "smaqa.su" {
					# $ISA_WIDTH=32;
					for (my $var = 0; $var < 4; $var++) {
						if ($var == 0) {
							$res = $res_rd32;
						}
						$tmp = signed_unsiged_mul8(($rs1[$i]>>(8*$var)) & 0xff,($rs2[$i]>>(8*$var)) & 0xff);
						if (($tmp >> 15)==1) {
							$tmp = $tmp | 0xffff_0000;
						}
						$res = $res + $tmp;
					}
					$rd[$i] = $res & 0xffff_ffff;
				}
				case "add64" {
					$rd[$i] = int64($rs1[$i]) + int64($rs2[$i]);
				}
				case "radd64" {
					$least_bit_rs1 = $rs1[$i] & 0x1;
					$least_bit_rs2 = $rs2[$i] & 0x1;
					# $least_bit_add = ($least_bit_rs1 + $least_bit_rs2) & 0x1;
					if ($rs1[$i]> 0x7fff_ffff_ffff_ffff) {
						$se65_rs1[$i] = $rs1[$i] >> 1;
						$se65_rs1[$i] = int64($se65_rs1[$i]) + 0x8000_0000_0000_0000;
					}
					else {
						$se65_rs1[$i] = $rs1[$i] >> 1;
					}
					if ($rs2[$i]> 0x7fff_ffff_ffff_ffff) {
						$se65_rs2[$i] = $rs2[$i] >> 1;
						$se65_rs2[$i] = int64($se65_rs2[$i]) + 0x8000_0000_0000_0000;
					}
					else {
						$se65_rs2[$i] = $rs2[$i] >> 1;
					}
					if ($least_bit_rs1 == 1 && $least_bit_rs2 == 1) {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]) + 1;
					} else {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]);
					}
					# $rd[$i] = $rd[$i] << 1;
					# $rd[$i] = $rd[$i] + $least_bit_add;
					$rd[$i] &= 0xffff_ffff_ffff_ffff;
				}
				case "uradd64" {
					$least_bit_rs1 = $rs1[$i] & 0x1;
					$least_bit_rs2 = $rs2[$i] & 0x1;
					# $least_bit_add = ($least_bit_rs1 + $least_bit_rs2) & 0x1;
					$ze65_rs1[$i] = $rs1[$i] >> 1;
					$ze65_rs2[$i] = $rs2[$i] >> 1;
					if ($least_bit_rs1 == 1 && $least_bit_rs2 == 1) {
						$rd[$i] = int64($ze65_rs1[$i]) + int64($ze65_rs2[$i]) + 1;
					} else {
						$rd[$i] = int64($ze65_rs1[$i]) + int64($ze65_rs2[$i]);
					}
					# $rd[$i] = $rd[$i] << 1;
					# $rd[$i] = $rd[$i] + $least_bit_add;
					$rd[$i] &= 0xffff_ffff_ffff_ffff;
				}
				case "kadd64" {
					# TEST_RR_OP( 7 , kadd64, 0x55323fcc9d4fd38d, 0xdbea80c2d21dfca5, 0x7947bf09cb31d6e6 ); 
					# $rs1[$i] = 0xdbea80c2d21dfca5;
					# $rs2[$i] = 0x7947bf09cb31d6e6;
					$least_bit_rs1 = $rs1[$i] & 0x1;
					$least_bit_rs2 = $rs2[$i] & 0x1;
					$least_bit_add = ($least_bit_rs1 + $least_bit_rs2) & 0x1;
					# printf fh ("least_bit_rs1: %x \n",$least_bit_rs1);
					# printf fh ("least_bit_rs2: %x \n",$least_bit_rs2);
					# printf fh ("least_bit_add: %x \n",$least_bit_add);
					if ($rs1[$i]> 0x7fff_ffff_ffff_ffff) {
						$se65_rs1[$i] = $rs1[$i] >> 1;
						$se65_rs1[$i] = int64($se65_rs1[$i]) + 0x8000_0000_0000_0000;
						# printf fh ("se65_rs1_1[$i]: %x \n",$se65_rs1[$i]);
					}
					else {
						$se65_rs1[$i] = $rs1[$i] >> 1;
						# printf fh ("se65_rs1_2[$i]: %x \n",$se65_rs1[$i]);
					}
					if ($rs2[$i]> 0x7fff_ffff_ffff_ffff) {
						$se65_rs2[$i] = $rs2[$i] >> 1;
						$se65_rs2[$i] = int64($se65_rs2[$i]) + 0x8000_0000_0000_0000;
						# printf fh ("se65_rs2_1[$i]: %x \n",$se65_rs2[$i]);
					}
					else {
						$se65_rs2[$i] = $rs2[$i] >> 1;
						# printf fh ("se65_rs2_2[$i]: %x \n",$se65_rs2[$i]);
					}
					if ($least_bit_rs1 == 1 && $least_bit_rs2 == 1) {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]) + 1;
					} else {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]);
					}
					$rd[$i] &= 0xffff_ffff_ffff_ffff;
					# printf fh ("rd[$i]: %x \n",$rd[$i]);
					# printf fh ("rd[$i] >>62: %x \n",$rd[$i] >>62);
					if ((($rd[$i] >> 62) & 0x3)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff_ffff_ffff_ffff;
						$OV_REG[$i]=1;
					} elsif ((($rd[$i] >> 62) & 0x3)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000_0000_0000_0000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] = $rd[$i] << 1;
						$rd[$i] = $rd[$i] + $least_bit_add;
						$rd[$i] &= 0xffff_ffff_ffff_ffff;
					}
				}
				case "ukadd64" {
					# TEST_RR_OP( 7 , kadd64, 0x55323fcc9d4fd38d, 0xdbea80c2d21dfca5, 0x7947bf09cb31d6e6 ); 
					# $rs1[$i] = 0xdbea80c2d21dfca5;
					# $rs2[$i] = 0x7947bf09cb31d6e6;
					$least_bit_rs1 = $rs1[$i] & 0x1;
					$least_bit_rs2 = $rs2[$i] & 0x1;
					$least_bit_add = ($least_bit_rs1 + $least_bit_rs2) & 0x1;
					# printf fh ("least_bit_rs1: %x \n",$least_bit_rs1);
					# printf fh ("least_bit_rs2: %x \n",$least_bit_rs2);
					# printf fh ("least_bit_add: %x \n",$least_bit_add);
					$se65_rs1[$i] = $rs1[$i] >> 1;
					# printf fh ("se65_rs1_2[$i]: %x \n",$se65_rs1[$i]);
					$se65_rs2[$i] = $rs2[$i] >> 1;
					# printf fh ("se65_rs2_2[$i]: %x \n",$se65_rs2[$i]);
					if ($least_bit_rs1 == 1 && $least_bit_rs2 == 1) {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]) + 1;
					} else {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]);
					}
					$rd[$i] &= 0xffff_ffff_ffff_ffff;
					# printf fh ("rd[$i]: %x \n",$rd[$i]);
					# printf fh ("rd[$i] >>62: %x \n",$rd[$i] >>62);
					if ((($rd[$i] >> 63) & 0x1)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0xffff_ffff_ffff_ffff;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] = $rd[$i] << 1;
						$rd[$i] = $rd[$i] + $least_bit_add;
						$rd[$i] &= 0xffff_ffff_ffff_ffff;
					}
				}
				case "sub64" {
					$rd[$i] = int64($rs1[$i]) - int64($rs2[$i]);
				}
				case "rsub64" {
					  $rd[$i] = (int64($rs1[$i]) - int64($rs2[$i])) >> 1;
					  # if ($rs1[$i] > 0 && $rs2[$i] < 0) {
					  if (((($rs1[$i] >> 63) & 0x1) == 0x0)  && ((($rs2[$i] >> 63) & 0x1) == 0x1)) {
					    $rd[$i] &= ~(0x1 << 63);
					  # } elsif($rs1[$i] < 0 && $rs2[$i] > 0) {
					  } elsif(((($rs1[$i] >> 63) & 0x1) == 0x1)  && ((($rs2[$i] >> 63) & 0x1) == 0x0)) {
					    $rd[$i] |= (0x1 << 63);
					  }
				}
				case "ursub64" {
					# printf ("test_num: %x \n",$test_num);
					# printf ("rs1: %x \n",$rs1[$i]);
					# printf ("rs2: %x \n",$rs2[$i]);
					$least_bit_rs1 = $rs1[$i] & 0x1;
					$se65_rs1[$i] = ($rs1[$i] >> 1) & 0x7fff_ffff_ffff_ffff;

					$rs2_inv[$i] = ~($rs2[$i]);
					# printf ("rs2_inv_1: %x \n",$rs2_inv[$i]);
					$tmp_sign =0;
					if ($rs2_inv[$i] == 0xffff_ffff_ffff_ffff) {
						$tmp_sign =1;
					}
					$rs2_inv[$i] = int64($rs2_inv[$i]) +  int64(1);
					# printf ("rs2_inv_2: %x \n",$rs2_inv[$i]);
					$least_bit_rs2 = ($rs2_inv[$i] & 0x1);
					$se65_rs2[$i] = ($rs2_inv[$i] >> 1) & 0x7fff_ffff_ffff_ffff;
					if ($tmp_sign == 0) {
						$se65_rs2[$i] = ($se65_rs2[$i] | 0x8000_0000_0000_0000);  #u<< in bu 2
					}
					# printf ("least_bit_rs1: %x \n",$least_bit_rs1);
					# printf ("least_bit_rs2: %x \n",$least_bit_rs2);
					# printf ("se65_rs1_1[$i]: %x \n",$se65_rs1[$i]);
					# printf ("se65_rs2_1[$i]: %x \n",$se65_rs2[$i]);
					if ($least_bit_rs1 == 1 && $least_bit_rs2 == 1) {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]) + int64(1);
					} else {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]);
					}
					$rd[$i] &= 0xffff_ffff_ffff_ffff;
					# printf ("rd[$i]: %x \n",$rd[$i]);
					$tmp_sign =0;
				}
				case "ksub64" {
					printf ("test_num: %x \n",$test_num);
					printf ("rs1: %x \n",$rs1[$i]);
					printf ("rs2: %x \n",$rs2[$i]);
					$ori_rs2 = $rs2[$i];
					printf ("ori_rs2: %x \n",$ori_rs2);
					$sign_ori_rs2 = $ori_rs2 & 0x8000_0000_0000_0000;
					printf ("ori_rs2_2: %x \n",$ori_rs2);
					printf ("sign_ori_rs2: %x \n",$sign_ori_rs2[$i]);
					# $rs2_inv[$i] = int64(0) - int64($rs2[$i]);
					$rs2_inv[$i] = int64(~($rs2[$i])) + int64(1);
					printf ("rs2_inv: %x \n",$rs2_inv[$i]);
					$least_bit_rs1 = $rs1[$i] & 0x1;
					$least_bit_rs2 = $rs2_inv[$i] & 0x1;
					$least_bit_add = ($least_bit_rs1 + $least_bit_rs2) & 0x1;
					printf ("least_bit_rs1: %x \n",$least_bit_rs1);
					printf ("least_bit_rs2: %x \n",$least_bit_rs2);
					
					if ($rs1[$i]> 0x7fff_ffff_ffff_ffff) {
						$se65_rs1[$i] = $rs1[$i] >> 1;
						$se65_rs1[$i] = int64($se65_rs1[$i]) | 0x8000_0000_0000_0000;
					}
					else {
						$se65_rs1[$i] = $rs1[$i] >> 1;
					}
					#truong hop x000_000..._000 ngoai le
					$se65_rs2[$i] = ($rs2_inv[$i] >> 1);
					printf ("se65_rs2_1_0[$i]: %x \n",$se65_rs2[$i]);
					$se65_rs2[$i] = $se65_rs2[$i] & 0x7fff_ffff_ffff_ffff;
					printf ("se65_rs2_1_1[$i]: %x \n",$se65_rs2[$i]);
					printf ("ori_rs2_3: %x \n",$ori_rs2);
					# if ($ori_rs2 == 0x8000_0000_0000_0000 || ((($ori_rs2 >> 63) & 0x1) ==0)) {   #bu 2 and th dac biet
					if (((($ori_rs2 >> 63) & 0x1) ==0) && ($ori_rs2 != 0x0000_0000_0000_0000)) {   #bu 2 and th dac biet
						printf ("ori_rs2_4: %x \n",$ori_rs2);
						# $se65_rs2[$i] = ($se65_rs2[$i]) | ($sign_ori_rs2);
						$se65_rs2[$i] = ($se65_rs2[$i]) | 0x8000_0000_0000_0000;
					}
					else {
						printf ("ori_rs2_5: %x \n",$ori_rs2);
						# $se65_rs2[$i] = ($se65_rs2[$i]) | ((~$sign_ori_rs2));
						$se65_rs2[$i] = ($se65_rs2[$i]);
					}
					printf ("se65_rs1_1[$i]: %x \n",$se65_rs1[$i]);
					printf ("se65_rs2_1_2[$i]: %x \n",$se65_rs2[$i]);
					if ($least_bit_rs1 == 1 && $least_bit_rs2 == 1) {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]) + int64(1);
					} else {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]);
					}
					$rd[$i] &= 0xffff_ffff_ffff_ffff;
					printf ("rd[$i]_1: %x \n",$rd[$i]);
					if ((($rd[$i] >> 62) & 0x3)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff_ffff_ffff_ffff;
						$OV_REG[$i]=1;
					} elsif ((($rd[$i] >> 62) & 0x3)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000_0000_0000_0000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] = $rd[$i] << 1;
						$rd[$i] = $rd[$i] + $least_bit_add;
						$rd[$i] &= 0xffff_ffff_ffff_ffff;
					}
					printf ("rd[$i]_2: %x \n",$rd[$i]);
				}
				case "uksub64" {
					# $rs1[$i] = 0xffff_ffff_ffff_ffff;
					# $rs2[$i] = 0xffff_ffff_ffff_ffff;
					$ori_rs2 = $rs2[$i];
					$rs2_inv[$i] = int64(~($rs2[$i])) + int64(1);
					# $rs2_inv[$i] = int64(0) - int64($rs2[$i]);
					$least_bit_rs1 = $rs1[$i] & 0x1;
					$least_bit_rs2 = $rs2_inv[$i] & 0x1;
					$least_bit_add = ($least_bit_rs1 + $least_bit_rs2) & 0x1;
					$se65_rs1[$i] = $rs1[$i] >> 1;
					$se65_rs2[$i] = $rs2_inv[$i] >> 1;
					$se65_rs2[$i] = $se65_rs2[$i] & 0x7fff_ffff_ffff_ffff;
					# if ($se65_rs2[$i] != 0) {
					# 	$se65_rs2[$i] = $se65_rs2[$i] | 0x8000_0000_0000_0000;  #u<< in bu 2
					# }
					if ($ori_rs2 != 0x0000_0000_0000_0000) {   #bu 2 and th dac biet
						# $se65_rs2[$i] = ($se65_rs2[$i]) | ($sign_ori_rs2);
						$se65_rs2[$i] = ($se65_rs2[$i]) | 0x8000_0000_0000_0000;
					}
					else {
						# $se65_rs2[$i] = ($se65_rs2[$i]) | ((~$sign_ori_rs2));
						$se65_rs2[$i] = ($se65_rs2[$i]);
					}
					if ($least_bit_rs1 == 1 && $least_bit_rs2 == 1) {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]) + 1;
					} else {
						$rd[$i] = int64($se65_rs1[$i]) + int64($se65_rs2[$i]);
					}
					$rd[$i] &= 0xffff_ffff_ffff_ffff;
					if ((($rd[$i] >> 63) & 0x1)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x0000_0000_0000_0000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] = $rd[$i] << 1;
						$rd[$i] = $rd[$i] + $least_bit_add;
						$rd[$i] &= 0xffff_ffff_ffff_ffff;
					}
				}
				case "smar64" {
					$ISA_WIDTH=32;
					update_input();
					# my $tmp1 = signed_mul32(($rs1[$i]>>32) & 0xffff_ffff,($rs2[$i]>>32) & 0xffff_ffff);
					my $tmp2 = signed_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$rd[$i] = int64($res_rd64) + int64($tmp2);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smsr64" {
					$ISA_WIDTH=32;
					update_input();
					# $rd[$i] = $rd32[1] * (2**32) +$rd32[0];
					# my $tmp1 = signed_mul32(($rs1[$i]>>32) & 0xffff_ffff,($rs2[$i]>>32) & 0xffff_ffff);
					my $tmp2 = signed_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$rd[$i] = uint64($res_rd64) - uint64($tmp2);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "umar64" {
					$ISA_WIDTH=32;
					update_input();
					# $rd[$i] = $rd32[1] * (2**32) +$rd32[0];
					# my $tmp1 = unsigned_mul32(($rs1[$i]>>32) & 0xffff_ffff,($rs2[$i]>>32) & 0xffff_ffff);
					my $tmp2 = unsigned_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$rd[$i] = int64($res_rd64) + int64($tmp2);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "umsr64" {
					$ISA_WIDTH=32;
					update_input();
					# $rd[$i] = $rd32[1] * (2**32) +$rd32[0];
					# my $tmp1 = unsigned_mul32(($rs1[$i]>>32) & 0xffff_ffff,($rs2[$i]>>32) & 0xffff_ffff);
					my $tmp2 = unsigned_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$rd[$i] = int64($res_rd64) - int64($tmp2);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "kmar64" {
					$ISA_WIDTH=32;
					update_input();
					my $mula66 = signed_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$least_2bit_mula66 = $mula66 & 0x3;
					my $rd_64 = $res_rd64;
					$least_2bit_rd64 = $rd_64 & 0x3;
					$least_2bit_add = ($least_2bit_mula66 + $least_2bit_rd64) & 0x3;
					$least_2bit_rd64_carry = ($least_2bit_mula66 + $least_2bit_rd64) >> 2;
					if ((($mula66 >> 63) & 0x1) == 1) {
						$mula66 = $mula66 >> 2;
						$mula66 = $mula66 | 0xc000_0000_0000_0000;
					} else {
						$mula66 = $mula66 >> 2;
						$mula66 = $mula66 | 0x0000_0000_0000_0000;
					}
					if ((($rd_64 >> 63) & 0x1) == 1) {
						$rd_64 = $rd_64 >>2;
						$rd_64 = $rd_64 | 0xc000_0000_0000_0000;
					} else {
						$rd_64 = $rd_64 >>2;
						$rd_64 = $rd_64 | 0x0000_0000_0000_0000;
					}
					my $res66 = int64($rd_64) + int64($mula66) + int64($least_2bit_rd64_carry);
					# printf ("res66: %x \n",$res66);
					$res66 = $res66 & 0xffff_ffff_ffff_ffff;
					if((($res66 >> 61) & 0x7) == 1) { #>2^31-1
						# $res66 = (2**63)-1;
						#$res66 = int64(2**63) - int64(1);
						$res66 = 0x7fff_ffff_ffff_ffff;
						$OV_REG[$i]=1;
						# printf ("res66_brach1: %x \n",$res66);
					}
					elsif ((($res66 >> 61) & 0x7) == 6) { #<-2^31
						# $res66 = -2**63;
						#$res66 = int64(-2**63);
						$res66 = 0x8000_0000_0000_0000;
						$OV_REG[$i]=1;
						# printf ("res66_brach2: %x \n",$res66);
					}
					else {
						$res66 = $res66 << 2;
						$res66 = $res66 + $least_2bit_add;
						# printf ("res66_brach3: %x \n",$res66);
					}
					$rd[$i] = $res66 & 0xffff_ffff_ffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$H_L_RD = 1;
				}
				# case "kmsr64" {
				# 	$ISA_WIDTH=32;
				# 	update_input();
				# 	my $mula66_inv = signed_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
				# 	$ori_mula66_inv = $mula66_inv;
				# 	# $mula66        = int64(0) - int64($mula66_inv);
				# 	$mula66        = int64(~($mula66_inv)) + int64(1);
				# 	$least_2bit_mula66 = $mula66 & 0x3;
				# 	my $rd_64 = $res_rd64;
				# 	$least_2bit_rd64 = $rd_64 & 0x3;
				# 	$least_2bit_add = ($least_2bit_mula66 + $least_2bit_rd64) & 0x3;
				# 	$least_2bit_rd64_carry = ($least_2bit_mula66 + $least_2bit_rd64) >> 2;
				# 	# if ((($mula66 >> 63) & 0x1) == 1) {
				# 	# 	$mula66 = $mula66 >> 2;
				# 	# 	$mula66 = $mula66 | 0xc000_0000_0000_0000;
				# 	# } else {
				# 	# 	$mula66 = $mula66 >> 2;
				# 	# 	$mula66 = $mula66 | 0x0000_0000_0000_0000;
				# 	# }
				# 	if (((($ori_mula66_inv >> 63) & 0x1) ==0) && ($ori_mula66_inv != 0x0000_0000_0000_0000)) {   #bu 2 and th dac biet
				# 		$mula66 = $mula66 >> 2;
				# 		$mula66[$i] = ($mula66[$i]) | 0xc000_0000_0000_0000;
				# 	}
				# 	else {
				# 		$mula66 = $mula66 >> 2;
				# 		$mula66[$i] = ($mula66[$i]);
				# 	}
				# 	if ((($rd_64 >> 63) & 0x1) == 1) {
				# 		$rd_64 = $rd_64 >>2;
				# 		$rd_64 = $rd_64 | 0xc000_0000_0000_0000;
				# 	} else {
				# 		$rd_64 = $rd_64 >>2;
				# 		$rd_64 = $rd_64 & 0x3fff_ffff_ffff_ffff;
				# 	}
				# 	my $tmp =  int64($mula66);
				# 	my $res66 = int64($rd_64) + int64($tmp) + int64($least_2bit_rd64_carry);
				# 	$res66 = $res66 & 0xffff_ffff_ffff_ffff;
				# 	if((($res66 >> 61)&0x3) == 1) { #>2^31-1
				# 		$res66 = int64(2**63) - int64(1);
				# 		$OV_REG[$i]=1;
				# 	}
				# 	elsif ((($res66 >> 61)&0x3) == 6) { #<-2^31
				# 		$res66 = int64(-2**63);
				# 		$OV_REG[$i]=1;
				# 	}
				# 	else {
				# 		$res66 = $res66 << 2;
				# 		$res66 = $res66 + $least_2bit_add;
				# 	}
				# 	$rd[$i] = $res66 & 0xffff_ffff_ffff_ffff;
				# 	$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
				# 	$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
				# 	$H_L_RD = 1;
				# }
				case "kmsr64" {
					$ISA_WIDTH=32;
					update_input();
					my $mula66_inv = signed_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$ori_mula66_inv = $mula66_inv;
					$mula66        = int64(~($mula66_inv)) + int64(1);
					$least_bit_mula66 = $mula66 & 0x1;
					my $rd_64 = $res_rd64;
					$least_bit_rd64 = $rd_64 & 0x1;
					$least_bit_add = ($least_bit_mula66 + $least_bit_rd64) & 0x1;
					#truong hop x000_000..._000 ngoai le
					$mula66 = $mula66 >> 1;
					$mula66 = $mula66  & 0x7fff_ffff_ffff_ffff;
					if (((($ori_mula66_inv >> 63) & 0x1) ==0) && ($ori_mula66_inv != 0x0000_0000_0000_0000)) {   #bu 2 and th dac biet
						$mula66 = $mula66 | 0x8000_0000_0000_0000;
					}
					if ((($rd_64 >> 63) & 0x1) == 1) {
						$rd_64 = $rd_64 >>1;
						$rd_64 = $rd_64 | 0x8000_0000_0000_0000;
					} else {
						$rd_64 = $rd_64 >>1;
						$rd_64 = $rd_64 & 0x7fff_ffff_ffff_ffff;
					}
					if ($least_bit_mula66 == 1 && $least_bit_rd64 == 1) {
						$res66 = int64($rd_64) + int64($mula66) + int64(1);
					} else {
						$res66 = int64($rd_64) + int64($mula66);
					}
					$res66 = $res66 & 0xffff_ffff_ffff_ffff;
					if((($res66 >> 62)&0x3) == 1) { #>2^31-1
						$res66 = 0x7fff_ffff_ffff_ffff;
						$OV_REG[$i]=1;
					}
					elsif ((($res66 >> 62)&0x3) == 2) { #<-2^31
						$res66 = 0x8000_0000_0000_0000;
						$OV_REG[$i]=1;
					}
					else {
						$res66 = $res66 << 1;
						$res66 = $res66 + $least_bit_add;
					}
					$rd[$i] = $res66 & 0xffff_ffff_ffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "ukmar64" {
					$ISA_WIDTH=32;
					update_input();
					my $mula66 = unsigned_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$least_2bit_mula66 = $mula66 & 0x3;
					my $rd_64 = $res_rd64;
					$least_2bit_rd64 = $rd_64 & 0x3;
					$least_2bit_add = ($least_2bit_mula66 + $least_2bit_rd64) & 0x3;
					$least_2bit_rd64_carry = ($least_2bit_mula66 + $least_2bit_rd64) >> 2;
					$mula66 = $mula66 >> 2;
					$rd_64  = ($rd_64  >> 2) & 0x3fff_ffff_ffff_ffff;
					my $res66 = int64($rd_64) + int64($mula66) + $least_2bit_rd64_carry;
					$res66 = $res66 & 0xffff_ffff_ffff_ffff;
					# printf ("res66: %x \n",$res66);
					if((($res66 >> 62) & 0x3) >= 1) {
						# $res66 = (2**64)-1;
						$res66 = 0xffff_ffff_ffff_ffff;
						$OV_REG[$i]=1;
					}
					else {
						$res66 = $res66 << 2;
						$res66 = $res66 + $least_2bit_add;
					}
					$rd[$i] = $res66 & 0xffff_ffff_ffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "ukmsr64" {
					$ISA_WIDTH=32;
					update_input();
					my $mula66_inv = unsigned_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$mula66_inv = $mula66_inv & 0xffff_ffff_ffff_ffff;
					my $rd_64 = $res_rd64 & 0xffff_ffff_ffff_ffff;
					printf ("mula66_inv: %x \n",$mula66_inv);
					printf ("rd_64: %x \n",$rd_64);
					if (uint64($rd_64) >= uint64($mula66_inv)) {
						$rd[$i] =  uint64($rd_64) - uint64($mula66_inv);
						printf ("rd_64 lon hon \n",);
					} else {
						$rd[$i] = 0;
						$OV_REG[$i]=1;
					}
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smalbb" {
					$Mres[$i] = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					if (($Mres[$i] >> 31)==1) {
						$Mres[$i] = $Mres[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres[$i] = $Mres[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smalbt" {
					$Mres[$i] = signed_mul16($rs1[$i] & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					if (($Mres[$i] >> 31)==1) {
						$Mres[$i] = $Mres[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres[$i] = $Mres[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smaltt" {
					$Mres[$i] = signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					if (($Mres[$i] >> 31)==1) {
						$Mres[$i] = $Mres[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres[$i] = $Mres[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smalda" {
					# my $rs1 = 0x800ba1f742514659;
					# my $rs2 = 0xc2e3412307f10f05;
					# $rs1[$i] = ($rs1 >> (16*$i)) & 0xffff_ffff;
					# $rs2[$i] = ($rs2 >> (16*$i)) & 0xffff_ffff;
					$Mres0[$i] = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					$Mres1[$i] = signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					if ((($Mres0[$i] >> 31) & 0x1)==1) {
						$Mres0[$i] = $Mres0[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres0[$i] = $Mres0[$i] | 0x0000_0000_0000_0000;
					}
					if ((($Mres1[$i] >> 31) & 0x1)==1) {
						$Mres1[$i] = $Mres1[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres1[$i] = $Mres1[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres0[$i]) + int64($Mres1[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smalxda" {
					$Mres0[$i] = signed_mul16($rs1[$i] & 0xffff, ($rs2[$i] >>16) & 0xffff);
					$Mres1[$i] = signed_mul16(($rs1[$i] >> 16) & 0xffff, $rs2[$i] & 0xffff);
					if ((($Mres0[$i] >> 31) & 0x1)==1) {
						$Mres0[$i] = $Mres0[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres0[$i] = $Mres0[$i] | 0x0000_0000_0000_0000;
					}
					if ((($Mres1[$i] >> 31) & 0x1)==1) {
						$Mres1[$i] = $Mres1[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres1[$i] = $Mres1[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres0[$i]) + int64($Mres1[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smalds" {
					$Mres[$i] = signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					# printf fh ("Mres[$i]: %x \n",$Mres[$i]);
					my $tmp = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					$tmp = 0 - $tmp;
					$tmp = $tmp & 0xffff_ffff;
					$tmp = $tmp & 0xffff_ffff;
					# printf fh ("tmp: %x \n",$tmp);
					$Mres[$i] = $Mres[$i] + $tmp;
					$Mres[$i] = $Mres[$i] & 0xffff_ffff;
					# printf fh ("Mres[$i]: %x \n",$Mres[$i]);
					if ((($Mres[$i] >> 31) & 0x1)==1) {
						$Mres[$i] = $Mres[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres[$i] = $Mres[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smaldrs" {
					$Mres[$i] = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff) - signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff) ;
					$Mres[$i] = $Mres[$i] & 0xffff_ffff;
					if ((($Mres[$i] >> 31) & 0x1)==1) {
						$Mres[$i] = $Mres[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres[$i] = $Mres[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smalxds" {
					$Mres[$i] = signed_mul16(($rs1[$i] >>16) & 0xffff, $rs2[$i] & 0xffff) - signed_mul16($rs1[$i] & 0xffff, ($rs2[$i] >> 16) & 0xffff) ;
					$Mres[$i] = $Mres[$i] & 0xffff_ffff;
					if ((($Mres[$i] >> 31) & 0x1)==1) {
						$Mres[$i] = $Mres[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres[$i] = $Mres[$i] | 0x0000_0000_0000_0000;
					}
					$rd[$i] = int64($res_rd64) + int64($Mres[$i]);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smslda" {
					$Mres0[$i] = signed_mul16($rs1[$i] & 0xffff, $rs2[$i] & 0xffff);
					$Mres1[$i] = signed_mul16(($rs1[$i] >> 16) & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					# printf fh ("Mres0[$i]: %x \n",$Mres0[$i]);
					# printf fh ("Mres1[$i]: %x \n",$Mres1[$i]);
					if ((($Mres0[$i] >> 31) & 0x1)==1) {
						$Mres0[$i] = $Mres0[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres0[$i] = $Mres0[$i] | 0x0000_0000_0000_0000;
					}
					if ((($Mres1[$i] >> 31) & 0x1)==1) {
						$Mres1[$i] = $Mres1[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres1[$i] = $Mres1[$i] | 0x0000_0000_0000_0000;
					}
					my $Mres_64 = int64(0) - int64($Mres0[0]) - int64($Mres0[1]) - int64($Mres1[0]) - int64($Mres1[1]);
					$rd[$i] = int64($res_rd64) + $Mres_64;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "smslxda" {
					$Mres0[$i] = signed_mul16($rs1[$i] & 0xffff, ($rs2[$i] >> 16) & 0xffff);
					$Mres1[$i] = signed_mul16(($rs1[$i] >> 16) & 0xffff, $rs2[$i] & 0xffff);
					if ((($Mres0[$i] >> 31) & 0x1)==1) {
						$Mres0[$i] = $Mres0[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres0[$i] = $Mres0[$i] | 0x0000_0000_0000_0000;
					}
					if ((($Mres1[$i] >> 31) & 0x1)==1) {
						$Mres1[$i] = $Mres1[$i] | 0xffff_ffff_0000_0000;
					} else {
						$Mres1[$i] = $Mres1[$i] | 0x0000_0000_0000_0000;
					}
					my $Mres_64 = int64(0) - int64($Mres0[0]) - int64($Mres0[1]) - int64($Mres1[0]) - int64($Mres1[1]);
					$rd[$i] = int64($res_rd64) + $Mres_64;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "kaddh" {
					# $rs1[$i] = 0xb7b340edc4ac5f28;
					# $rs2[$i] = 0xed4206eb18d6af0b;
					if ((($rs1[$i] >> 15)&0x1) == 1) {
						$se17_rs1[$i] = ($rs1[$i] & 0xffff) + 0x10000;
					}
					else {
						$se17_rs1[$i] = ($rs1[$i] & 0xffff) + 0x00000;
					}
					if ((($rs2[$i] >> 15)&0x1) == 1) {
						$se17_rs2[$i] = ($rs2[$i] & 0xffff) + 0x10000;
					}
					else {
						$se17_rs2[$i] = ($rs2[$i] & 0xffff) + 0x00000;
					}
					$rd[$i] = $se17_rs1[$i] + $se17_rs2[$i];
					$rd[$i] &= 0x1ffff;

					if ((($rd[$i] >> 15) & 0x3)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff;
						$OV_REG[$i]=1;
					} elsif ((($rd[$i] >> 15) & 0x3)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] &= 0xffff;
					}
					if (($rd[$i] >> 15)==1) {
						$rd[$i] = $rd[$i] | 0xffff_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000;
					}
				}
				case "ksubh" {
					if ((($rs1[$i] >> 15)&0x1) == 1) {
						$se17_rs1[$i] = ($rs1[$i] & 0xffff) + 0x10000;
					}
					else {
						$se17_rs1[$i] = ($rs1[$i] & 0xffff) + 0x00000;
					}
					if ((($rs2[$i] >> 15)&0x1) == 1) {
						$se17_rs2[$i] = ($rs2[$i] & 0xffff) + 0x10000;
					}
					else {
						$se17_rs2[$i] = ($rs2[$i] & 0xffff) + 0x00000;
					}
					$rd[$i] = $se17_rs1[$i] - $se17_rs2[$i];
					$rd[$i] &= 0x1ffff;

					if (($rd[$i] >> 15)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff;
						$OV_REG[$i]=1;
					} elsif (($rd[$i] >> 15)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] &= 0xffff;
					}
					if (($rd[$i] >> 15)==1) {
						$rd[$i] = $rd[$i] | 0xffff_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000;
					}
				}
				case "khmbb" {
					# $rs1[$i] = 0x26a63d24a12a24ac;
					# $rs2[$i] = 0xf35ac18d2d0f8efc;
					my $aop = $rs1[$i] & 0xffff;
					my $bop = $rs2[$i] & 0xffff;
					# printf ("aop: %x \n",$aop);
					# printf ("bop: %x \n",$bop);
					if ($aop != 0x8000 || $bop != 0x8000) {
						my $mres = signed_mul16($aop,$bop);
						# printf ("mres_1: %x \n",$mres);
						$mres = $mres & 0xffff_ffff;
						# printf ("mres_2: %x \n",$mres);
						if($mres >> 31 == 1) {
							$mres = ($mres >> 15) | 0xffff_0000;
							# printf ("mres_3: %x \n",$mres);
							$result32[$i] = ($mres & 0xffff_ffff);
							# printf ("result32[$i]_1: %x \n",$result32[$i]);
						}
						else {
							$mres = $mres >> 15;
							# printf ("mres_4: %x \n",$mres);
							$result32[$i] = ($mres & 0xffff_ffff);
							# printf ("result32[$i]_2: %x \n",$result32[$i]);
						}
					} else {
						$result32[$i] = 0x00007fff;
						$OV_REG[$i]=1;
						# printf ("result32[$i]_3: %x \n",$result32[$i]);
					}
					$rd[$i] = $result32[$i];
				}
				case "khmbt" {
					my $aop = $rs1[$i] & 0xffff;
					my $bop = ($rs2[$i] >> 16) & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						my $mres = signed_mul16($aop,$bop);
						$mres = $mres & 0xffff_ffff;
						if($mres >> 31 == 1) {
							$mres = ($mres >> 15) | 0xffff_0000;
							$result32[$i] = ($mres & 0xffff) | 0xffff_0000 ;
						}
						else {
							$mres = $mres >> 15;
							$result32[$i] = ($mres & 0xffff);
						}
					} else {
						$result32[$i] = 0x00007fff;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $result32[$i];
				}
				case "khmtt" {
					my $aop = ($rs1[$i] >> 16) & 0xffff;
					my $bop = ($rs2[$i] >> 16) & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						my $mres = signed_mul16($aop,$bop);
						$mres = $mres & 0xffff_ffff;
						if($mres >> 31 == 1) {
							$mres = ($mres >> 15) | 0xffff_0000;
							$result32[$i] = ($mres & 0xffff) | 0xffff_0000 ;
						}
						else {
							$mres = $mres >> 15;
							$result32[$i] = ($mres & 0xffff);
						}
					} else {
						$result32[$i] = 0x00007fff;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $result32[$i];
				}
				case "ukaddh" {
					$ze17_rs1[$i] = ($rs1[$i] & 0xffff) + 0x00000;
					$ze17_rs2[$i] = ($rs2[$i] & 0xffff) + 0x00000;
					$rd[$i] = $ze17_rs1[$i] + $ze17_rs2[$i];
					$rd[$i] &= 0x1ffff;

					if ($rd[$i] > 0xffff) {
						$rd[$i] = 0xffff;
						$OV_REG[$i]=1;
					} else {
						$rd[$i] &= 0xffff;
					}
					if (($rd[$i] >> 15)==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_ffff_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "uksubh" {
					$ze17_rs1[$i] = ($rs1[$i] & 0xffff) + 0x00000;
					$ze17_rs2[$i] = ($rs2[$i] & 0xffff) + 0x00000;
					$rd[$i] = $ze17_rs1[$i] - $ze17_rs2[$i];
					# $rd[$i] &= 0x1ffff;

					if ($rd[$i] > (2**16 -1) ) {
						$rd[$i] = 2**16 - 1;
						$OV_REG[$i]=1;
					} elsif ($rd[$i] < 0 ) {
						$rd[$i] = 0;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $rd[$i] & 0xffff;
					if (($rd[$i] >> 15)==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_ffff_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "kaddw" {
					if ((($rs1[$i] >> 31)&0x1) == 1) {
						$se33_rs1[$i] = ($rs1[$i] & 0xffff_ffff) + 0x1_0000_0000;
					}
					else {
						$se33_rs1[$i] = ($rs1[$i] & 0xffff_ffff) + 0x0_0000_0000;
					}
					if ((($rs2[$i] >> 31)&0x1) == 1) {
						$se33_rs2[$i] = ($rs2[$i] & 0xffff_ffff) + 0x1_0000_0000;
					}
					else {
						$se33_rs2[$i] = ($rs2[$i] & 0xffff_ffff) + 0x0_0000_0000;
					}
					$rd[$i] = $se33_rs1[$i] + $se33_rs2[$i];
					$rd[$i] &= 0x1_ffff_ffff;

					if (($rd[$i] >> 31)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					} elsif (($rd[$i] >> 31)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000_0000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] &= 0xffff_ffff;
					}
					if (($rd[$i] >> 31)==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "ukaddw" {
					$ze33_rs1[$i] = ($rs1[$i] & 0xffff_ffff) + 0x0_0000_0000;
					$ze33_rs2[$i] = ($rs2[$i] & 0xffff_ffff) + 0x0_0000_0000;
					$rd[$i] = $ze33_rs1[$i] + $ze33_rs2[$i];
					$rd[$i] &= 0x1_ffff_ffff;

					if ($rd[$i] > 0xffff_ffff) {
						$rd[$i] = 0xffff_ffff;
						$OV_REG[$i]=1;
					} else {
						$rd[$i] &= 0xffff_ffff;
					}
					if (($rd[$i] >> 31)==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "ksubw" {
					if ((($rs1[$i] >> 31)&0x1) == 1) {
						$se33_rs1[$i] = ($rs1[$i] & 0xffff_ffff) + 0x10000_0000;
					}
					else {
						$se33_rs1[$i] = ($rs1[$i] & 0xffff_ffff) + 0x00000;
					}
					if ((($rs2[$i] >> 31)&0x1) == 1) {
						$se33_rs2[$i] = ($rs2[$i] & 0xffff_ffff) + 0x10000_0000;
					}
					else {
						$se33_rs2[$i] = ($rs2[$i] & 0xffff_ffff) + 0x00000;
					}
					$rd[$i] = $se33_rs1[$i] - $se33_rs2[$i];
					$rd[$i] &= 0x1ffff_ffff;

					if (($rd[$i] >> 31)==1) {  # >2^15-1, res17=32767
						$rd[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					} elsif (($rd[$i] >> 31)==2) { # < -2^15, res17=-32768
						$rd[$i] = 0x8000_0000;
						$OV_REG[$i]=1;
					} else {                       #16bit
						$rd[$i] &= 0xffff_ffff;
					}
					if (($rd[$i] >> 31)==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "uksubw" {
					$ze33_rs1[$i] = ($rs1[$i] & 0xffff_ffff) + 0x00000_0000;
					$ze33_rs2[$i] = ($rs2[$i] & 0xffff_ffff) + 0x00000_0000;
					$rd[$i] = $ze33_rs1[$i] - $ze33_rs2[$i];
					# $rd[$i] &= 0x1ffff;

					#if ($rd[$i] > (2**32 -1) ) {
					#	$rd[$i] = 2**32 - 1;
					#} elsif ($rd[$i] < 0 ) {
					#	$rd[$i] = 0;
					#	$OV_REG[$i]=1;
					#}
					if ($rd[$i] < 0 ) {
						$rd[$i] = 0;
						$OV_REG[$i]=1;
					}
					$rd[$i] = $rd[$i] & 0xffff_ffff;
					if (($rd[$i] >> 31)==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					}
					else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "kdmbb" {
					my $aop = $rs1[$i] & 0xffff;
					my $bop = $rs2[$i] & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						my $mres = signed_mul16($aop,$bop);
						$mres = $mres & 0xffff_ffff;
						$mres = ($mres << 1);
						$result32[$i] = ($mres & 0xffff_ffff);
					} else {
						$result32[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					if (($result32[$i] >> 31) == 1) {
						$rd[$i] = $result32[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $result32[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "kdmbt" {
					my $aop = $rs1[$i] & 0xffff;
					my $bop = ($rs2[$i] >> 16) & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						my $mres = signed_mul16($aop,$bop);
						$mres = $mres & 0xffff_ffff;
						$mres = ($mres << 1);
						$result32[$i] = ($mres & 0xffff_ffff);
					} else {
						$result32[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					if (($result32[$i] >> 31) == 1) {
						$rd[$i] = $result32[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $result32[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "kdmtt" {
					my $aop = ($rs1[$i] >> 16) & 0xffff;
					my $bop = ($rs2[$i] >> 16) & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						my $mres = signed_mul16($aop,$bop);
						$mres = $mres & 0xffff_ffff;
						$mres = ($mres << 1);
						$result32[$i] = ($mres & 0xffff_ffff);
					} else {
						$result32[$i] = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					if (($result32[$i] >> 31) == 1) {
						$rd[$i] = $result32[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $result32[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "kslraw" {
					#$rs1[0] = 0x39b19b1e257454ca;
					#$rs2[0] = 0x000000000000001c;
					# $rs2[0] = 0x0011;
					# $rs1[0] = 0xaa75;
					$rs2[0] = $rs2[0] & 0x3f;
					# printf ("rs1[0]: %x \n",$rs1[0]);
					# printf ("rs2[0]: %x \n",$rs2[0]);
					if (($rs2[0] >> 5) != 0) { # (Rs2[4:0] s< 0)
						$sa = (~$rs2[0] +1) & 0x3f;   #sa = -Rs2[4:0];
						if ($sa == 0x20) {  #sa = (sa == 16)? 15 : sa;
							$sa = 0x1f;
						} else {
							$sa = $sa & 0x3f;
						}
						# printf ("sa: %x \n",$sa);
						#Cal Rd.H[x] = SE32(Rs132[x][15:sa]);
						my $sa_cnt = $sa;
						$rd[$i] = ($rs1[$i] & 0xffff_ffff) >> $sa;
						my $tmp_se32_sra32 = 0;
						for (my $cnt = 0; $cnt < 32; $cnt++) {
							if ($sa_cnt != 0) {
								$tmp_se32_sra32 = ($tmp_se32_sra32 * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se32_sra32 = ($tmp_se32_sra32 * 2); 
							}
						}
						if(($rd[$i] >> (31-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se32_sra32; #SE32(Rs132[x][15:sa])
						}
						$rd[$i] = $rd[$i] & 0xffff_ffff;
					} else {
						# printf ("rs1[0]: %x \n",$rs1[0]);
						# printf ("rs2[0]: %x \n",$rs2[0]);
						$sa = $rs2[0] & 0x3f;
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = ($rs1[$i] & 0xffff_ffff) * (2**$sa);
						# printf ("rd[$i]: %x \n",$rd[$i]);
						if ((($rd[$i] >> (31+$sa))==0) && ($rd[$i] > 0x7fff_ffff)) { # res s> 2^15 -1 
							# printf ("aaa: %x \n",$aaa);
							$rd[$i] = 0x7fff_ffff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (31+$sa))==1) && ($rd[$i] - 2*(2**(31+$sa))) < -2**31) {  #res s< -2^15
							$rd[$i] = 0x8000_0000;
							$OV_REG[$i]=1;
							# printf ("bbb: %x \n",$bbb);
						} else {
							$rd[$i] = $rd[$i]  & 0xffff_ffff;
							# printf ("ccc: %x \n",$ccc);
						}
					}
					if (($rd[$i] >> 31) == 1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "kslraw.u" {
					$rs2[0] = $rs2[0] & 0x3f;
					# printf ("$rs2[0]: %x",$rs2[0]);
					if (($rs2[0] >> 5) != 0) { # (Rs2[4:0] s< 0)
						$sa = (~$rs2[0] +1) & 0x3f;   #sa = -Rs2[4:0];
						if ($sa == 0x20) {  #sa = (sa == 16)? 15 : sa;
							$sa = 0x1f;
						} else {
							$sa = $sa & 0x3f;
						}
						# printf ("$sa: %x",$sa);
						my $sa_cnt = $sa;
						$rd[$i] = ($rs1[$i] & 0xffff_ffff) >> ($sa - 1);
						my $tmp_se17_sra16_u = 0;
						for (my $cnt = 0; $cnt < 33; $cnt++) {
							if ($sa_cnt != 0) {
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2) + 1; 
								$sa_cnt--;
							} else {
								$tmp_se17_sra16_u = ($tmp_se17_sra16_u * 2); 
							}
						}
						if(($rd[$i] >> (32-$sa)) != 0) {
							$rd[$i] = $rd[$i] | $tmp_se17_sra16_u; #SE17(Rs1.H[x][15:sa-1])
						}
						$rd[$i] = $rd[$i] & 0x1ffff_ffff;
						$rd[$i] = $rd[$i] +1;
						$rd[$i] =$rd[$i] >> 1;
						$rd[$i] = $rd[$i] & 0xffff_ffff; #Rd.B[x] = res[7:0];
					} else {
						$sa = $rs2[0] & 0x3f;
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = ($rs1[$i] & 0xffff_ffff) * (2**$sa);
						if ((($rd[$i] >> (31+$sa))==0) && ($rd[$i] > 0x7fff_ffff)) { # res s> 2^15 -1 
							$rd[$i] = 0x7fff_ffff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (31+$sa))==1) && ($rd[$i] - 2*(2**(31+$sa))) < -2**31) {  #res s< -2^15
							$rd[$i] = 0x8000_0000;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xffff_ffff;
						}
					}
					if (($rd[$i] >> 31) == 1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "ksllw" {
					my $sa = $rs2[0] & 0x1f ;
					if ($sa != 0) {
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = ($rs1[$i] & 0xffff_ffff) * (2**$sa);
						if ((($rd[$i] >> (31+$sa))==0) && ($rd[$i] > 0x7fff_ffff)) { # res s> 2^15 -1 
							$rd[$i] = 0x7fff_ffff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (31+$sa))==1) && ($rd[$i] - 2*(2**(31+$sa))) < -2**31) {  #res s< -2^15
							$rd[$i] = 0x8000_0000;
							$OV_REG[$i]=1;
						}
						$rd[$i] &= 0xffff_ffff;
					}
					else {
						$rd[$i] = $rs1[$i] & 0xffff_ffff;
					}
					# if (($rd[$i] >> 31) == 1) {
					# 	$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					# } else {
					# 	$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					# }
				}
				case "kslliw" {
					if ($i ==0) {
						$IMXU = int(rand(0x1f));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU;
					if ($sa != 0) {
						# $rd[$i] = $rs1[$i] << $sa;
						$rd[$i] = ($rs1[$i] & 0xffff_ffff) * (2**$sa);
						if ((($rd[$i] >> (31+$sa))==0) && ($rd[$i] > 0x7fff_ffff)) { # res s> 2^15 -1 
							$rd[$i] = 0x7fff_ffff;
							$OV_REG[$i]=1;
						} elsif ((($rd[$i] >> (31+$sa))==1) && ($rd[$i] - 2*(2**(31+$sa))) < -2**31) {  #res s< -2^15
							$rd[$i] = 0x8000_0000;
							$OV_REG[$i]=1;
						} else {
							$rd[$i] &= 0xffff_ffff;
						}
					} 
					else {
						$rd[$i] = $rs1[$i] & 0xffff_ffff;
					}
					# if (($rd[$i] >> 31) == 1) {
					# 	$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					# } else {
					# 	$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					# }
				}
				case "kdmabb" {
					# $rs1[$i] = 0xcad8455508ccef29;
					# $rs2[$i] = 0xd6d4be1b535c06bb;
					# $rs1[$i] = 0x8000_8000;
					# $rs2[$i] = 0x8000_8000;
					my $aop = $rs1[$i] & 0xffff;
					my $bop = $rs2[$i] & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						$resQ30 = signed_mul16($aop,$bop);
						$resQ30 = $resQ30 & 0xffff_ffff;
						$resQ30 = ($resQ30 << 1);
						$resQ30 = ($resQ30 & 0xffff_ffff);
					} else {
						$resQ30 = 0x7fff_ffff;
						$OV_REG[$i]=1;
					}
					# printf ("resQ30: %x \n",$resQ30);
					my $d33 = $resQ30 & 0xffff_ffff;
					if (($d33 >> 31)==1) {
						$d33 = $d33 + 0x10000_0000;
					} else {
						$d33 = $d33 + 0x00000_0000;
					}
					my $c33 = $res_rd32 & 0xffff_ffff;
					if (($c33 >> 31)==1) {
						$c33 = $c33 + 0x10000_0000;
					} else {
						$c33 = $c33 + 0x00000_0000;
					}
					my $tmp = $c33 + $d33;
					# printf ("tmp: %x \n",$tmp);
					$tmp = $tmp & 0x1ffff_ffff;
					# printf ("tmp: %x \n",$tmp);
					if (($tmp >> 31) == 1) { #> 2^31 -1
						$resadd32 = 0x7fff_ffff;
						$OV_REG[$i]=1;
					} elsif (($tmp >> 31) == 2) { # < -2^31
						$resadd32 = 0x8000_0000;
						$OV_REG[$i]=1;
					} else {
						$resadd32 = $tmp & 0xffff_ffff;
					}
					# printf ("resadd32: %x \n",$resadd32);
					# $resadd32 = $resadd32 & 0xffff_ffff;
					if (($resadd32 >> 31) ==1) {
						$rd[$i] = $resadd32 | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $resadd32 | 0x0000_0000_0000_0000;
					}
				}
				case "kdmabt" {
					$rs1[$i] = 0x8000_8000;
					$rs2[$i] = 0x8000_8000;
					my $aop = $rs1[$i] & 0xffff;
					my $bop = ($rs2[$i] >>16) & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						$resQ30 = signed_mul16($aop,$bop);
						$resQ30 = $resQ30 & 0xffff_ffff;
						$resQ30 = ($resQ30 << 1);
						$resQ30 = ($resQ30 & 0xffff_ffff);
					} else {
						$resQ30 = 0x7fff_ffff;
					}
					my $d33 = $resQ30 & 0xffff_ffff;
					if (($d33 >> 31)==1) {
						$d33 = $d33 + 0x10000_0000;
					} else {
						$d33 = $d33 + 0x00000_0000;
					}
					my $c33 = $res_rd32 & 0xffff_ffff;
					if (($c33 >> 31)==1) {
						$c33 = $c33 + 0x10000_0000;
					} else {
						$c33 = $c33 + 0x00000_0000;
					}
					my $tmp = $c33 + $d33;
					$tmp = $tmp & 0x1ffff_ffff;
					if (($tmp >> 31) == 1) { #> 2^31 -1
						$resadd32 = 0x7fff_ffff;
					} elsif (($tmp >> 31) == 2) { # < -2^31
						$resadd32 = 0x8000_0000;
					} else {
						$resadd32 = $tmp & 0xffff_ffff;
					}
					# $resadd32 = $resadd32 & 0xffff_ffff;
					if (($resadd32 >> 31) ==1) {
						$rd[$i] = $resadd32 | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $resadd32 | 0x0000_0000_0000_0000;
					}
				}
				case "kdmatt" {
					my $aop = ($rs1[$i] >> 16) & 0xffff;
					my $bop = ($rs2[$i] >>16) & 0xffff;
					if ($aop != 0x8000 || $bop != 0x8000) {
						$resQ30 = signed_mul16($aop,$bop);
						$resQ30 = $resQ30 & 0xffff_ffff;
						$resQ30 = ($resQ30 << 1);
						$resQ30 = ($resQ30 & 0xffff_ffff);
					} else {
						$resQ30 = 0x7fff_ffff;
					}
					my $d33 = $resQ30 & 0xffff_ffff;
					if (($d33 >> 31)==1) {
						$d33 = $d33 + 0x10000_0000;
					} else {
						$d33 = $d33 + 0x00000_0000;
					}
					my $c33 = $res_rd32 & 0xffff_ffff;
					if (($c33 >> 31)==1) {
						$c33 = $c33 + 0x10000_0000;
					} else {
						$c33 = $c33 + 0x00000_0000;
					}
					my $tmp = $c33 + $d33;
					$tmp = $tmp & 0x1ffff_ffff;
					if (($tmp >> 31) == 1) { #> 2^31 -1
						$resadd32 = 0x7fff_ffff;
					} elsif (($tmp >> 31) == 2) { # < -2^31
						$resadd32 = 0x8000_0000;
					} else {
						$resadd32 = $tmp & 0xffff_ffff;
					}
					$rd[$i] = $resadd32;
					# $resadd32 = $resadd32 & 0xffff_ffff;
					# if (($resadd32 >> 31) ==1) {
						# $rd[$i] = $resadd32 | 0xffff_ffff_0000_0000;
					# } else {
						# $rd[$i] = $resadd32 | 0x0000_0000_0000_0000;
					# }
				}
				case "kabsw" {
					if ($i ==0) {
						$ONEREG_EN = 1;
					}
					my $src = $rs1[$i] & 0xffff_ffff;
					if (($src >> 31) == 0) {
						$res = $src;
					} else {
						if ($src == 0x8000_0000) {
							$res = 0x7fff_ffff;
							$OV_REG[$i]=1;
						} else {
							$res = -$src;
						}
						$res = $res & 0xffff_ffff;
					}
					if (($res >> 31) ==1) { 
						$rd[$i] = $res | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $res | 0x0000_0000_0000_0000;
					}
				}
				case "raddw" {
					my $rs1_32b = $rs1[$i] & 0xffff_ffff;
					my $rs2_32b = $rs2[$i] & 0xffff_ffff;
					if ($rs1_32b> 0x7fff_ffff) {
						$se33_rs1[$i] = $rs1_32b + 0x10000_0000;
					}
					else {
						$se33_rs1[$i] = $rs1_32b + 0x00000_0000;
					}
					if ($rs2_32b> 0x7fff_ffff) {
						$se33_rs2[$i] = $rs2_32b + 0x10000_0000;
					}
					else {
						$se33_rs2[$i] = $rs2_32b + 0x00000_0000;
					}
					$rd[$i] = $se33_rs1[$i] + $se33_rs2[$i];
					$rd[$i] &= 0x1ffff_ffff;
					$rd[$i] = ($rd[$i] >> 1) & 0xffff_ffff;
					if (($rd[$i] >> 31) ==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "uraddw" {
					my $rs1_32b = $rs1[$i] & 0xffff_ffff;
					my $rs2_32b = $rs2[$i] & 0xffff_ffff;
					$ze33_rs1[$i] = $rs1_32b + 0x00000_0000;
					$ze33_rs2[$i] = $rs2_32b + 0x00000_0000;
					$rd[$i] = $ze33_rs1[$i] + $ze33_rs2[$i];
					$rd[$i] &= 0x1ffff_ffff;
					$rd[$i] = ($rd[$i] >> 1) & 0xffff_ffff;
					if (($rd[$i] >> 31) ==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "rsubw" {
					my $rs1_32b = $rs1[$i] & 0xffff_ffff;
					my $rs2_32b = $rs2[$i] & 0xffff_ffff;
					if ($rs1_32b> 0x7fff_ffff) {
						$se33_rs1[$i] = $rs1_32b + 0x10000_0000;
					}
					else {
						$se33_rs1[$i] = $rs1_32b + 0x00000_0000;
					}
					if ($rs2_32b> 0x7fff_ffff) {
						$se33_rs2[$i] = $rs2_32b + 0x10000_0000;
					}
					else {
						$se33_rs2[$i] = $rs2_32b + 0x00000_0000;
					}
					$rd[$i] = $se33_rs1[$i] - $se33_rs2[$i];
					$rd[$i] &= 0x1ffff_ffff;
					$rd[$i] = ($rd[$i] >> 1) & 0xffff_ffff;
					if (($rd[$i] >> 31) ==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "ursubw" {
					my $rs1_32b = $rs1[$i] & 0xffff_ffff;
					my $rs2_32b = $rs2[$i] & 0xffff_ffff;
					$ze33_rs1[$i] = $rs1_32b + 0x00000_0000;
					$ze33_rs2[$i] = $rs2_32b + 0x00000_0000;
					$rd[$i] = $ze33_rs1[$i] - $ze33_rs2[$i];
					$rd[$i] &= 0x1ffff_ffff;
					$rd[$i] = ($rd[$i] >> 1) & 0xffff_ffff;
					if (($rd[$i] >> 31) ==1) {
						$rd[$i] = $rd[$i] | 0xffff_ffff_0000_0000;
					} else {
						$rd[$i] = $rd[$i] | 0x0000_0000_0000_0000;
					}
				}
				case "mulr64" {
					$ISA_WIDTH = 32;
					update_input();
					my $rs1_32b = $rs1[$i] & 0xffff_ffff;
					my $rs2_32b = $rs2[$i] & 0xffff_ffff;
					$ze33_rs1[$i] = $rs1_32b + 0x00000_0000;
					$ze33_rs2[$i] = $rs2_32b + 0x00000_0000;
					$rd[$i] = $ze33_rs1[$i] * $ze33_rs2[$i];
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "mulsr64" {
					$ISA_WIDTH = 32;
					update_input();
					$rd[$i] = signed_mul32($rs1[$i] & 0xffff_ffff,$rs2[$i] & 0xffff_ffff);
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 1;
				}
				case "msubr32" {
					my $Mresult = ($rs1[$i] & 0xffff_ffff) * ($rs2[$i] & 0xffff_ffff);
					$Mresult = $Mresult & 0xffff_ffff;
					$Mresult = 0 - $Mresult;
					# my $tres = ($rd32[0] - $Mresult);
					my $tres = (($res_rd32 & 0xffff_ffff) + $Mresult);
					$rd[$i] = $tres & 0xffff_ffff;
				}
				case "ave" {
					$rs1[$i] = $rs1[$i] & 0xffff_ffff;
					$rs2[$i] = $rs2[$i] & 0xffff_ffff;
					if ((($rs1[$i] >> 31) & 0x1) == 1) {
						$se32_rs1[$i] = $rs1[$i] |  0x1_0000_0000; 
					}
					else {
						$se32_rs1[$i] = $rs1[$i];
					}
					if ((($rs2[$i] >> 31) & 0x1) == 1) {
						$se32_rs2[$i] = $rs2[$i] |  0x1_0000_0000; 
					}
					else {
						$se32_rs2[$i] = $rs2[$i];
					}
					$rd[$i] = int64($se32_rs1[$i]) + int64($se32_rs2[$i]) + 1;
					$rd[$i] = ($rd[$i] >> 1) 
				}
				
				case "sra.u" {
					my $sa = $rs2[0] & 0x1f ;
					if ($sa != 0) {
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i];
						my $sig_rd = ($rd[$i] >> 31) & 0x1;
						for (my $var = 0; $var < $sa_cnt; $var++) {
							if($var == $sa_cnt - 1) {
								$least_bit = $rd[$i] & 0x1;
							}
							if ($sig_rd == 1) {
								$rd[$i] = ($rd[$i] >> 1) | 0x8000_0000;
							} else {
								$rd[$i] = ($rd[$i] >> 1) & 0x7fff_ffff;
							}
						}
						if($least_bit == 1) {
							$rd[$i] = int64($rd[$i]) +1;
						}
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "srai.u" {
					if ($i ==0) {
						# $IMXU = int(rand(0x3f)); //tam thoi fix loi 
						$IMXU = int(rand(0x1f));
						$IMXU_EN = 1;
					}
					my $sa = $IMXU ;
					if ($sa != 0) {
						my $sa_cnt = $sa;
						$rd[$i] = $rs1[$i];
						my $sig_rd = ($rd[$i] >> 31) & 0x1;
						for (my $var = 0; $var < $sa_cnt; $var++) {
							if($var == $sa_cnt - 1) {
								$least_bit = $rd[$i] & 0x1;
							}
							# $rd[$i] = ($rd[$i] >> 1) | 0x8000_0000_0000_0000;
							if ($sig_rd == 1) {
								$rd[$i] = ($rd[$i] >> 1) | 0x8000_0000;
							} else {
								$rd[$i] = ($rd[$i] >> 1) & 0x7fff_ffff;
							}
						}
						if($least_bit == 1) {
							$rd[$i] = $rd[$i] +1; 
						}
					} 
					else {
						$rd[$i] = $rs1[$i];
					}
				}
				case "bitrev" {
					my $msb = $rs2[$i] & 0x1f;
					my $tmp_rs1 = $rs1[$i];
					my $rev = 0;
					for (my $var = 0; $var < $msb +1; $var++) {
						$rev = $rev << 1;
						$rev = $rev + ($tmp_rs1 & 0x1);
						$tmp_rs1 = $tmp_rs1 >>1;
					}
					$rd[$i] = $rev & 0xffff_ffff;
				}
				case "bitrevi" {
					if ($i ==0) {
						$IMXU = int(rand(0x1f));
						$IMXU_EN = 1;
					}
					my $msb = $IMXU;
					my $tmp_rs1 = $rs1[$i];
					my $rev = 0;
					for (my $var = 0; $var < $msb +1; $var++) {
						$rev = $rev << 1;
						$rev = $rev + ($tmp_rs1 & 0x1);
						$tmp_rs1 = $tmp_rs1 >>1;
					}
					$rd[$i] = $rev & 0xffff_ffff;
				}
				case "wext" {
					update_rs1_64b();
					my $lsb = $rs2[$i] & 0x1f;
					my $extractw = $rs1[$i] >> $lsb;
					$rd[$i] = $extractw & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 2;
				}
				case "wexti" {
					update_rs1_64b();
					if ($i ==0) {
						$IMXU = int(rand(0x1f));
						$IMXU_EN = 1;
					}
					my $lsb = $IMXU;
					my $extractw = $rs1[$i] >> $lsb;
					$rd[$i] = $extractw & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 2;
				}
				case "fsr" {
					update_rs1_64b();
					my $lsb = $rs2[$i] & 0x3f;
					my $tmp_rs1_32l = $rs1[$i] & 0xffff_ffff;
					my $tmp_rs1_32h = ($rs1[$i] >> 32) & 0xffff_ffff;
					if((($rs2[$i] >> 5) & 0x1) == 1){ # u>=32
						$lsb = $rs2[$i] & 0x1f;
						$tmp_rs1_32l = ($rs1[$i] >> 32) & 0xffff_ffff;
						$tmp_rs1_32h = $rs1[$i] & 0xffff_ffff;
					}
					my $tmp_rs1 = ($tmp_rs1_32h << 32) + $tmp_rs1_32l;

					# my $extractw = $rs1[$i] >> $lsb;
					my $extractw = $tmp_rs1 >> $lsb;
					$rd[$i] = $extractw & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 2;
				}
				case "fsri" {
					update_rs1_64b();
					if ($i ==0) {
						$IMXU = int(rand(0x1f));
						$IMXU_EN = 1;
					}
					my $lsb = $IMXU;
					my $tmp_rs1_32l = $rs1[$i] & 0xffff_ffff;
					my $tmp_rs1_32h = ($rs1[$i] >> 32) & 0xffff_ffff;
					if((($IMXU >> 5) & 0x1) == 1){ # u>=32
						$lsb = $IMXU & 0x1f;
						$tmp_rs1_32l = ($rs1[$i] >> 32) & 0xffff_ffff;
						$tmp_rs1_32h = $rs1[$i] & 0xffff_ffff;
					}
					my $tmp_rs1 = ($tmp_rs1_32h << 32) + $tmp_rs1_32l;
					# my $extractw = $rs1[$i] >> $lsb;
					my $extractw = $tmp_rs1 >> $lsb;
					$rd[$i] = $extractw & 0xffff_ffff;
					$result32_h_l[0] = $rd[$i] & 0xffff_ffff;
					$result32_h_l[1] = ($rd[$i] >> 32) & 0xffff_ffff;
					$H_L_RD = 2;
				}
				case "insb" {
					if ($i ==0) {
						$IMXU = int(rand(0x3));
						$IMXU_EN = 1;
					}
					# $tmp = $rd[$i];
					$tmp1 = $res_rd32 & (0xffff_ffff << 8*($IMXU+1));
					# printf fh ("tmp1:       %x \n", $tmp1      );
					# $tmp2 = $rd[$i] & (0 << 8*($IMXU-1));
					$tmp2 = $res_rd32 & (2 ** (8*($IMXU)) -1);
					# printf fh ("tmp2:       %x \n", $tmp2      );
					$tmp_rd = $tmp2 | $tmp1;
					# printf fh ("tmp_rd:       %x \n", $tmp_rd      );
					$rd[$i] = $tmp_rd | (($rs1[$i] & 0xff) << 8*$IMXU);
					# printf fh ("rd[$i]:       %x \n", $rd[$i]      );
				}
				case "maddr32" {
					$Mresult = ($rs1[$i] & 0xffff_ffff) * ($rs2[$i] & 0xffff_ffff);
					my $tres = ($res_rd32  & 0xffff_ffff) + ($Mresult & 0xffff_ffff);
					$rd[$i] = $tres & 0xffff_ffff;
				}
				# case "msubr32" {
				# 	# print "aaaxxxccc \n";
				# 	if ($i == 0 ) {
				# 		printf fh ("rs1[$i]:%x \n", $rs1[$i]);
				# 		printf fh ("rs2[$i]:%x \n", $rs2[$i]);
				# 		$Mresult = ($rs1[$i] & 0xffff_ffff) * ($rs2[$i] & 0xffff_ffff);
				# 		printf fh ("Mresult:%x \n", $Mresult);
				# 		# $tmp = $Mresult & 0xffff_ffff;
				# 		# $tmp = ~ $tmp;
				# 		# $tmp = ($tmp +1) & 0xffff_ffff;
				# 		# my $tres = ($rd[$i]  & 0xffff_ffff) + $tmp;

				# 		printf fh ("rd[$i] %x \n", $rd[$i]);
				# 		my $tres = ($rd[$i]  & 0xffff_ffff) - ($Mresult & 0xffff_ffff);
				# 		printf fh ("tres%x \n", $tres);
				# 		$rd[$i] = $tres & 0xffff_ffff;
				# 	}
				# 	else {
				# 		if (($rd[0] >> 31) ==1) {
				# 			$rd[$i] =  0xffff_ffff;
				# 		} else {
				# 			$rd[$i] =  0x0000_0000;
				# 		}
				# 	}
				# }
				case "max" {
					my $sig1 = $rs1[$i] >> 31;
					my $sig2 = $rs2[$i] >> 31;
					my $val1 = $rs1[$i] & 0x7fff_ffff;
					my $val2 = $rs2[$i] & 0x7fff_ffff;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 < $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = $rs1[$i];
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = $rs2[$i];
					} else {
						if ($val1 < $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					}
				}
				case "min" {
					my $sig1 = $rs1[$i] >> 31;
					my $sig2 = $rs2[$i] >> 31;
					my $val1 = $rs1[$i] & 0x7fff_ffff;
					my $val2 = $rs2[$i] & 0x7fff_ffff;
					if (($sig1 == 0) && ($sig2 == 0)) {
						if ($val1 > $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					} elsif (($sig1 == 0) && ($sig2 == 1)) {
						$rd[$i] = $rs2[$i];
					} elsif (($sig1 == 1) && ($sig2 == 0)) {
						$rd[$i] = $rs1[$i];
					} else {
						if ($val1 > $val2) {
							$rd[$i] = $rs2[$i];
						} else {
							$rd[$i] = $rs1[$i];
						}
					}
				}
				case "cmix" {
					update_rs3_32b();
					$THREEREG_EN = 1;
					$tmp1 = $rs1[$i] & $rs2[$i];
					$tmp2 = $rs3[$i] & (~$rs2[$i]);
					$rd[$i] = int64($tmp1) + int64($tmp2);
				}
				case "bpick" {
					update_rs3_32b();
					$THREEREG_EN = 1;
					$tmp1 = $rs1[$i] & $rs2[$i];
					$tmp2 = $rs3[$i] & (~$rs2[$i]);
					$rd[$i] = int64($tmp1) + int64($tmp2);
				}
				else {print "ERROR: no ISA_NAME correct for $ISA_NAME \n";exit;}
			}
		}

		#save rd result for test kmmac...
		for (my $var = 0; $var < 32/$ISA_WIDTH; $var++) {
			if ($var == 0) {
				$rd32[0] = $rd[$var] & 0xffff_ffff;
				$rd32[1] = $rd[$var + 32/$ISA_WIDTH] & 0xffff_ffff;
			} else {
				$rd32[0] = ($rd[$var] * (2**($ISA_WIDTH*$var))) +  $rd32[0];
				$rd32[1] = ($rd[$var + 32/$ISA_WIDTH] * (2**($ISA_WIDTH*$var))) +  $rd32[1];

			}
		}
		$res_rd32 = $rd32[0];
		$res_rd64 = ($res_rd64 & 0x0000_0000) + $res_rd32;

		if ($test_num == 2) {
			printf fh_ref ("ffffffff\n");
			printf fh_ref ("ffffffff\n");
			printf fh_ref_debug ("ffffffff\n");
			printf fh_ref_debug ("ffffffff\n");
			$addr = 2 *4; #4byte
			$fill_value = 2;
			# if ($H_L_RD == 1 || $ISA_WIDTH == 64) {
			# 	printf fh_ref ("ffffffff\n");
			# 	printf fh_ref ("ffffffff\n");
			# }
		}
		# else {
		# 	if ($H_L_RD == 1 || $ISA_WIDTH ==64) {
		# 		$addr = $addr + 8; #8byte - 64bit
		# 	} else {
		# 		$addr = $addr + 4; #4byte - 32bit
		# 	}
		# }

		switch($ISA_WIDTH) {
			case 8 {
				if ($IMXU_EN != 0) {
					printf fh ("TEST_IMM_OP( $test_num , $ISA_NAME, 0x%02x%02x%02x%02x, 0x%02x%02x%02x%02x, %d , %d); \n",$rd[3],$rd[2],$rd[1],$rd[0],$rs1[3],$rs1[2],$rs1[1],$rs1[0], $IMXU, $addr);
					$IMXU_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				} 
				elsif ($ONEREG_EN == 1) {
					printf fh ("TEST_R_OP( $test_num , $ISA_NAME, 0x%02x%02x%02x%02x, 0x%02x%02x%02x%02x, %d); \n",$rd[3],$rd[2],$rd[1],$rd[0],$rs1[3],$rs1[2],$rs1[1],$rs1[0], $addr);
					$ONEREG_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				elsif ($H_L_RD == 1) {
					printf fh ("TEST_RR_OP64_OO( $test_num , $ISA_NAME, 0x%08x%08x, 0x%02x%02x%02x%02x, 0x%02x%02x%02x%02x , %d); \n",$result32_h_l[1],$result32_h_l[0],$rs1[3],$rs1[2],$rs1[1],$rs1[0],$rs2[3],$rs2[2],$rs2[1],$rs2[0],$addr);
					printf fh_ref ("%08x\n",$result32_h_l[0]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[0]);
					printf fh_ref ("%08x\n",$result32_h_l[1]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[1]);
					$res_rd64 = ($result32_h_l[1] << 32) + $result32_h_l[0];
					$res_rd32 = $result32_h_l[0];
				}
				else {
					printf fh ("TEST_RR_OP( $test_num , $ISA_NAME, 0x%02x%02x%02x%02x, 0x%02x%02x%02x%02x, 0x%02x%02x%02x%02x, %d); \n",$rd[3],$rd[2],$rd[1],$rd[0],$rs1[3],$rs1[2],$rs1[1],$rs1[0],$rs2[3],$rs2[2],$rs2[1],$rs2[0],$addr);
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				if ($H_L_RD == 1) {
					$addr = $addr + 8; #8byte - 64bit
					$fill_value = $fill_value + 2;
				} else {
					$addr = $addr + 4; #4byte - 32bit
					$fill_value = $fill_value + 1;
				}
				if ($OV_REG[0] == 1 || $OV_REG[1] == 1 || $OV_REG[2] == 1 || $OV_REG[3] == 1) {
					ov_rd_and_clr();
				}
			}
			case 16 {
				if ($IMXU_EN != 0) {
					printf fh ("TEST_IMM_OP( $test_num , $ISA_NAME, 0x%04x%04x, 0x%04x%04x, %d , %d); \n",$rd[1],$rd[0],$rs1[1],$rs1[0], $IMXU, $addr);
					$IMXU_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				} 
				elsif ($ONEREG_EN == 1) {
					printf fh ("TEST_R_OP( $test_num , $ISA_NAME, 0x%04x%04x, 0x%04x%04x, %d); \n",$rd[1],$rd[0],$rs1[1],$rs1[0], $addr);
					$ONEREG_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				elsif ($H_L_RD == 1) {
					printf fh ("TEST_RR_OP64_OO( $test_num , $ISA_NAME, 0x%08x%08x, 0x%04x%04x, 0x%04x%04x, %d); \n",$result32_h_l[1],$result32_h_l[0],$rs1[1],$rs1[0],$rs2[1],$rs2[0], $addr);
					printf fh_ref ("%08x\n",$result32_h_l[0]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[0]);
					printf fh_ref ("%08x\n",$result32_h_l[1]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[1]);
					$res_rd64 = ($result32_h_l[1] << 32) + $result32_h_l[0];
					$res_rd32 = $result32_h_l[0];
				}
				else {
					printf fh ("TEST_RR_OP( $test_num , $ISA_NAME, 0x%04x%04x, 0x%04x%04x, 0x%04x%04x, %d); \n",$rd[1],$rd[0],$rs1[1],$rs1[0],$rs2[1],$rs2[0], $addr);
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				if ($H_L_RD == 1) {
					$addr = $addr + 8; #8byte - 64bit
					$fill_value = $fill_value + 2;
				} else {
					$addr = $addr + 4; #4byte - 32bit
					$fill_value = $fill_value + 1;
				}

				if ($OV_REG[0] == 1 || $OV_REG[1] == 1) {
					ov_rd_and_clr();
				}
			}
			case 32 {
				if ($IMXU_EN != 0 && $H_L_RD == 0) {
					printf fh ("TEST_IMM_OP( $test_num , $ISA_NAME, 0x%08x, 0x%08x, %d, %d ); \n",$rd[0],$rs1[0], $IMXU, $addr);
					$IMXU_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				elsif ($IMXU_EN != 0 && $H_L_RD == 2) {
					# printf fh ("TEST_IMM_OP64_OI( $test_num , $ISA_NAME, 0x%08x, 0x%08x, 0x%08x, %d, %d ); \n",$rd[0],$rs1[0] & 0xffff_ffff,($rs1[0] >> 32) & 0xffff_ffff, $IMXU, $addr);
					printf fh ("TEST_IMM_OP_FSRI( $test_num , $ISA_NAME, 0x%08x, 0x%08x, 0x%08x, %d, %d ); \n",$rd[0],$rs1[0] & 0xffff_ffff,($rs1[0] >> 32) & 0xffff_ffff, $IMXU, $addr);
					$IMXU_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}  
				elsif ($ONEREG_EN == 1) {
					printf fh ("TEST_R_OP( $test_num , $ISA_NAME, 0x%08x, 0x%08x, %d); \n",$rd[0],$rs1[0], $addr);
					$ONEREG_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				elsif ($THREEREG_EN == 1) {
					printf fh ("TEST_RRR_OP( $test_num , $ISA_NAME, 0x%08x, 0x%08x, 0x%08x, 0x%08x, %d); \n",$rd[0],$rs2[0],$rs1[0],$rs3[0], $addr);
					$THREEREG_EN=0;
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				elsif ($IMXU_EN == 0 && $H_L_RD == 2) {
					# printf fh ("TEST_RR_OP64_OI( $test_num , $ISA_NAME, 0x%08x, 0x%08x, 0x%08x, 0x%08x , %d); \n",$rd[0],$rs1[0] & 0xffff_ffff,($rs1[0] >> 32) & 0xffff_ffff,$rs2[0], $addr);
					printf fh ("TEST_RR_OP_FSR( $test_num , $ISA_NAME, 0x%08x, 0x%08x, 0x%08x, 0x%08x , %d); \n",$rd[0],$rs1[0] & 0xffff_ffff,($rs1[0] >> 32) & 0xffff_ffff,$rs2[0], $addr);
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
					# printf fh_ref ("%08x\n",$result32_h_l[0]);
					# printf fh_ref_debug ("%08x\n",$result32_h_l[0]);
					# printf fh_ref ("%08x\n",$result32_h_l[1]);
					# printf fh_ref_debug ("%08x\n",$result32_h_l[1]);
					# $res_rd64 = ($result32_h_l[1] << 32) + $result32_h_l[0];
				}  
				elsif ($IMXU_EN == 0 && $H_L_RD == 3) {
					printf fh ("TEST_RR_OP64_RS1_RD( $test_num , $ISA_NAME, 0x%016x, 0x%08x, 0x%08x, 0x%08x , %d); \n",$rd[0],$rs1[0] & 0xffff_ffff,($rs1[0] >> 32) & 0xffff_ffff,$rs2[0], $addr);
					printf fh_ref ("%08x\n",$result32_h_l[0]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[0]);
					printf fh_ref ("%08x\n",$result32_h_l[1]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[1]);
					$res_rd64 = ($result32_h_l[1] << 32) + $result32_h_l[0];
					$res_rd32 = $result32_h_l[0];
				} 
				elsif ($H_L_RD == 1) {
					printf fh ("TEST_RR_OP64_OO( $test_num , $ISA_NAME, 0x%08x%08x, 0x%08x, 0x%08x , %d); \n",$result32_h_l[1],$result32_h_l[0],$rs1[0],$rs2[0], $addr);
					printf fh_ref ("%08x\n",$result32_h_l[0]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[0]);
					printf fh_ref ("%08x\n",$result32_h_l[1]);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$result32_h_l[1]);
					$res_rd64 = ($result32_h_l[1] << 32) + $result32_h_l[0];
					$res_rd32 = $result32_h_l[0];
				}
				else {
					printf fh ("TEST_RR_OP( $test_num , $ISA_NAME, 0x%08x, 0x%08x, 0x%08x, %d); \n",$rd[0],$rs1[0],$rs2[0], $addr);
					printf fh_ref ("%08x\n",$res_rd32 & 0xffff_ffff);
					printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$res_rd32 & 0xffff_ffff);
				}
				if ($H_L_RD == 1 || $H_L_RD == 3) {
					$addr = $addr + 8; #8byte - 64bit
					$fill_value = $fill_value + 2;
				} else {
					$addr = $addr + 4; #4byte - 32bit
					$fill_value = $fill_value + 1;
				}
				if ($OV_REG[0] == 1) {
					ov_rd_and_clr();
				}
			}
			case 64 {
				printf fh ("TEST_RR_OP64_IO( $test_num , $ISA_NAME, 0x%016x, 0x%08x, 0x%08x, 0x%08x, 0x%08x, %d); \n",$rd[0],$rs1[0] & 0xffff_ffff,($rs1[0] >> 32) & 0xffff_ffff,  $rs2[0] & 0xffff_ffff,($rs2[0] >> 32) & 0xffff_ffff, $addr);
				# printf fh_ref ("%08x\n",$result32_h_l[0]);
				# printf fh_ref ("%08x\n",$result32_h_l[1]);
				printf fh_ref ("%08x\n",$rd[0] & 0xffff_ffff);
				printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",$rd[0] & 0xffff_ffff);
				printf fh_ref ("%08x\n",($rd[0] >>32) & 0xffff_ffff);
				printf fh_ref_debug ("%08x test_num: $test_num , $ISA_NAME\n",($rd[0] >>32) & 0xffff_ffff);
				$addr = $addr +8;
				$fill_value = $fill_value + 2;
				$res_rd64 = $rd[0];
				$res_rd32 = $rd[0] & 0xffff_ffff;
				if ($OV_REG[0] == 1) {
					ov_rd_and_clr();
				}	
			}
			else {print "ERROR_4: no ISA_WIDTH correct with $ISA_WIDTH at $ISA_NAME\n"; exit;}
		}
		$H_L_RD = 0;
		printf("DEBUG: test_num: %d,ISA_NAME: $ISA_NAME\n", $test_num);
		printf("______DEBUG: res_rd32: %x \n", $res_rd32);
		printf("______DEBUG: res_rd64: %x \n", $res_rd64);
		
	}
	$TEST_NUM=$TEST_NUM_PARAM;
	$TEST_RANDOM = 0;

	print fh "\n";
	print fh "  #-------------------------------------------------------------\n";
	print fh "  # Bypassing tests\n";
	print fh "  #-------------------------------------------------------------\n";
	print fh "\n";

	print fh "\n";
	print fh "TEST_PASSFAIL\n";
	print fh "\n";
	print fh "RV_COMPLIANCE_CODE_END\n";
	print fh "\n";
	print fh ".data\n";
	print fh "\nRV_COMPLIANCE_DATA_BEGIN";
	print fh "\ntest_res:";
	print fh "\n    .fill $fill_value, 4, -1";
	my $tmp = $fill_value;
	while ($tmp % 4 > 0) {
		printf fh_ref ("00000000\n");
		printf fh_ref_debug ("00000000\n");
		$tmp = $tmp +1;
	}
	print fh "\nRV_COMPLIANCE_DATA_END";

	# Closing the file
	close(fh) or "Couldn't close the file"; 

	close(fh_ref) or "Couldn't close the file"; 
	close(fh_ref_debug) or "Couldn't close the file"; 

	print "$FILE_NAME Generate completion.\n";
}
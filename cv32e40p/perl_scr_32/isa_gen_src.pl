#!/usr/bin/perl 
system ("mkdir -p src");
system ("rm -rf src/*");

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
# @ISA_LIST= ("add8");
if ($#ARGV >= 0) {      #check size argument, if have at least one (size =0)
	@ISA_LIST=@ARGV;
}

foreach my $ISA_NAME (@ISA_LIST) {
	$FILE_NAME="$ISA_NAME.S";
	print "Writing $FILE_NAME\n";
	open (fh, ">", "src/$FILE_NAME");
	print fh "# See LICENSE for license details.\n";
	print fh "\n";
	print fh "#include \"riscv_test.h\"\n";
	print fh "#undef RVTEST_RV64U\n";
	print fh "#define RVTEST_RV64U RVTEST_RV32U\n";
	print fh "\n";
	print fh "#include \"../rv64ip/$ISA_NAME.S\"\n";


	# Closing the file
	close(fh) or "Couldn't close the file"; 

	print "$FILE_NAME Generate completion.\n";
}
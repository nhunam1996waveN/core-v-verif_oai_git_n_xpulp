#!/usr/bin/perl 
use Switch;

system ("mkdir -p isa_gen");
system ("rm -rf isa_gen/*");

$FILE_NAME="run_compliance_p.sh";
#spike sai
# "umul16", "umulx16", "swap8", "kmar64", "ukmar64", "ukmsr64", "smalda", "smalxda"
#smalda, smalxda: add 32 bit, add 64bit
#khmbb: shift signed 16, 32
# @ISA_LIST_RAND= ("add8","kmmac", "kmmac.u", "sub8","sub16", "ksub16", "kmmsb", "kmmsb.u", "kmmawb", "kmmawb.u",
#  "kmmawt", "kmmawt.u", "kmmawb2", "kmmawb2.u", "kmmawt2", "kmmawt2.u", "kmabb", "kmabt", "kmatt", "kmada", 
#  "kmaxda", "kmads", "kmadrs", "kmaxds", "kmsda", "kmsxda", "smaqa", "umaqa", "smaqa.su"
# 			);
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

open (fh, ">", "isa_gen/$FILE_NAME");
#Print header
print fh "#!/bin/bash\n";
print fh "\n";
print fh "###############################################################################\n";
print fh "#\n";
print fh "# Copyright 2020 OpenHW Group\n";
print fh "# \n";
print fh "# Licensed under the Solderpad Hardware Licence, Version 2.0 (the \"License\");\n";
print fh "# you may not use this file except in compliance with the License.\n";
print fh "# You may obtain a copy of the License at\n";
print fh "# \n";
print fh "#     https://solderpad.org/licenses/\n";
print fh "# \n";
print fh "# Unless required by applicable law or agreed to in writing, software\n";
print fh "# distributed under the License is distributed on an \"AS IS\" BASIS,\n";
print fh "# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n";
print fh "# See the License for the specific language governing permissions and\n";
print fh "# limitations under the License.\n";
print fh "# \n";
print fh "# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0\n";
print fh "#\n";
print fh "###############################################################################\n";
print fh "# run_compliance: runs all test-programs in a specific ISA.\n";
print fh "#\n";
print fh "# Usage:\n";
print fh "#       run_compliance RISCV_ISA\n";
print fh "#\n";
print fh "# ENV: this script needs the following shell environment variables - \n";
print fh "#       SIM_DIR     : cwd from which to run sims\n";
print fh "###############################################################################\n";
print fh "\n";
print fh "cd \${SIM_DIR}\n";
print fh "\n";


print fh "if [ \"\$1\" == \"rv32ip\" ] ; then\n";
foreach my $ISA_NAME (@ISA_LIST) {
	print fh "   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=$ISA_NAME\n";
}
print fh "else\n";
print fh "    echo \"Unknown RISCV_ISA. Please specify rv32ip\"\n";
print fh "    exit 1\n";
print fh "fi\n";
print fh "\n";
print fh "exit 0\n";
# Closing the file
close(fh) or "Couldn't close the file"; 
print "$FILE_NAME Generate completion.\n";
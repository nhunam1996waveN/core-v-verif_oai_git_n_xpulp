#!/bin/bash

###############################################################################
#
# Copyright 2020 OpenHW Group
# 
# Licensed under the Solderpad Hardware Licence, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     https://solderpad.org/licenses/
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0
#
###############################################################################
# run_compliance: runs all test-programs in a specific ISA.
#
# Usage:
#       run_compliance RISCV_ISA
#
# ENV: this script needs the following shell environment variables - 
#       SIM_DIR     : cwd from which to run sims
###############################################################################

cd ${SIM_DIR}

if [ "$1" == "rv32ip" ] ; then
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=add16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=radd16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uradd16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kadd16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukadd16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sub16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rsub16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ursub16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksub16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uksub16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=cras16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rcras16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=urcras16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kcras16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukcras16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=crsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rcrsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=urcrsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kcrsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukcrsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=stas16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rstas16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=urstas16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kstas16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukstas16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=stsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rstsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=urstsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kstsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukstsa16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=add8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=radd8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uradd8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kadd8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukadd8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sub8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rsub8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ursub8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksub8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uksub8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srai16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srai16.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srli16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srli16.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sll16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=slli16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksll16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslli16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslra16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslra16.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sra8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sra8.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sra16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sra16.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srl16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srl16.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srl8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srl8.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srai8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srai8.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srli8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srli8.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sll8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=slli8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksll8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslli8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslra8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslra8.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=cmpeq16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=scmplt16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=scmple16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ucmplt16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ucmple16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=cmpeq8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=scmplt8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=scmple8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ucmplt8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ucmple8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smul16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smulx16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umul16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umulx16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=khm16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=khmx16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smul8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smulx8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umul8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umulx8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=khm8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=khmx8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smin16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umin16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smax16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umax16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sclip16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uclip16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kabs16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=clrs16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=clz16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=swap16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smin8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umin8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smax8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umax8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kabs8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sclip8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uclip8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=clrs8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=clz8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=swap8
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sunpkd810
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sunpkd820
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sunpkd830
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sunpkd831
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sunpkd832
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=zunpkd810
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=zunpkd820
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=zunpkd830
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=zunpkd831
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=zunpkd832
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=pack
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=pkbt16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=pktb16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=packu
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smmul
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smmul.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmac
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=random
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmac.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmsb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmsb.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kwmmul
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kwmmul.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smmwb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smmwb.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smmwt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smmwt.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawb.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawt.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmwb2
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmwb2.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmwt2
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmwt2.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawb2
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawb2.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawt2
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmmawt2.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smbb16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smbt16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smtt16
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmxda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smds
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smdrs
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smxds
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmabb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmabt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmatt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmada
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmaxda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmads
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmadrs
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmaxds
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmsda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmsxda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smal
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sclip32
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uclip32
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=clrs32
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=clz32
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=pbsad
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=pbsada
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smaqa
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umaqa
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smaqa.su
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=add64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=radd64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uradd64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kadd64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukadd64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sub64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rsub64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ursub64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksub64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uksub64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smar64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smsr64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umar64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=umsr64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmar64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kmsr64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukmar64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukmsr64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smalbb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smalbt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smaltt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smalda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smalxda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smalds
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smaldrs
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smalxds
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smslda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=smslxda
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kaddh
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksubh
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=khmbb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=khmbt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=khmtt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukaddh
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uksubh
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kaddw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ukaddw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksubw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uksubw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kdmbb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kdmbt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kdmtt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslraw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslraw.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ksllw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kslliw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kdmabb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kdmabt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kdmatt
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=kabsw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=raddw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=uraddw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=rsubw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ursubw
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=mulr64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=mulsr64
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=msubr32
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=ave
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=sra.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=srai.u
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=bitrev
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=bitrevi
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=fsr
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=fsri
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=insb
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=maddr32
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=max
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=min
   make compliance RISCV_ISA=rv32ip COMPLIANCE_PROG=cmix
else
    echo "Unknown RISCV_ISA. Please specify rv32ip"
    exit 1
fi

exit 0

#! /bin/bash

unset CV_SIMULATOR
unset CV_SW_TOOLCHAIN
unset CV_SW_PREFIX
unset PATH
unset RISCV
export PATH=/11users/nhunam/.local/bin:/11users/nhunam/.rbenv/plugins/ruby-build/bin:/11users/nhunam/.rbenv/shims:/11users/nhunam/.rbenv/bin:/11tools/XILINX/vivado_20182/Vivado/2018.2/bin:/usr/local/bin/verilator:/11tools/MENTOR/questasim_10.7c/questasim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/11tools/MENTOR/questasim_10.7c/questasim/bin:/11tools/CADENCE/XCELIUM1803/tools/bin:/usr/local/bin:/11tools/RISCV/toolchain_x64/bin:/11tools/MENTOR/questasim_10.7c/questasim/linux_x86_64:/11tools/SYNOPSYS/vcs_E-2011.03/bin:/11tools/CADENCE/INCISIVE151/bin:/11tools/VERILATOR/bin/verilator:/11tools/SYNOPSYS/installer:/11tools/SYNOPSYS/snps-2018/vcs-mx/O-2018.09-SP2/bin:/11tools/SYNOPSYS/snps-2018/verdi/Verdi_O-2018.09-SP2/bin

export CV_SIMULATOR=vsim

#export CV_SW_TOOLCHAIN=/11users/quannh41/experiments/riscv-gnu-toolchain-v4/toolchain_risc
export CV_SW_TOOLCHAIN=/11users/nhunam/risc_v/tool_p_ext/quan_rv32_ori/wl-toolchain-buildscript/install
#export CV_SW_TOOLCHAIN=/11users/quannh41/waveletJSC/wl-toolchain-buildscript-rv32/install/bin

#export CV_SW_PREFIX=riscv32-unknown-linux-gnu-
export CV_SW_PREFIX=riscv32-unknown-elf-

export CV_CORE=cv32e40p

export PATH=/11users/nhunam/risc_v/tool_p_ext/quan_rv32_ori/wl-toolchain-buildscript/install:$PATH
#export PATH=/11users/quannh41/waveletJSC/wl-toolchain-buildscript-rv32/install/bin:$PATH

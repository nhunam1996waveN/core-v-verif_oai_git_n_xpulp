#! /bin/bash

export CV_SIMULATOR=vsim

#export CV_SW_TOOLCHAIN=/11users/quannh41/experiments/riscv-gnu-toolchain-v4/toolchain_risc
export CV_SW_TOOLCHAIN=/11users/nhunam/risc_v/tool_p_ext/quan_rv32_ori/wl-toolchain-buildscript/install/bin

#export CV_SW_PREFIX=riscv32-unknown-linux-gnu-
export CV_SW_PREFIX=riscv32-unknown-elf-

export CV_CORE=cv32e40p

export PATH=/11users/nhunam/risc_v/tool_p_ext/quan_rv32_ori/wl-toolchain-buildscript/install/bin:$PATH

#! /bin/bash

export CV_SIMULATOR=vsim

#export CV_SW_TOOLCHAIN=/11users/quannh41/experiments/riscv-gnu-toolchain-v4/toolchain_risc
export CV_SW_TOOLCHAIN=/11users/quannh41/waveletJSC/wl-toolchain-buildscript-rv32/install
#export CV_SW_TOOLCHAIN=/11users/quannh41/waveletJSC/wl-toolchain-buildscript-rv32/install/bin

#export CV_SW_PREFIX=riscv32-unknown-linux-gnu-
export CV_SW_PREFIX=riscv32-unknown-elf-

export CV_CORE=cv32e40p

export PATH=/11users/quannh41/waveletJSC/wl-toolchain-buildscript-rv32/install:$PATH
#export PATH=/11users/quannh41/waveletJSC/wl-toolchain-buildscript-rv32/install/bin:$PATH

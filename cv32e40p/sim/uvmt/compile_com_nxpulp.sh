#! /bin/bash

rm -rf Makefrag, Makefrag.spike;

if [[ -n $@ ]];
then
	echo "rv32ip_sc_tests = $@
  " > Makefrag;
else
	echo "rv32ip_sc_tests = \\" >> Makefrag;
	echo "p.bclr p.bitrev p.bset p.bset p.clb p.extract p.ff1 p.insert p.lb p.lbu p.lh p.lhu p.lw p.ror p.sb p.sh p.sw \\" >> Makefrag;
	echo "" >> Makefrag;
fi
cp Makefrag Makefrag.spike;

echo "rv32ip_tests = \$(addsuffix .elf, \$(rv32ip_sc_tests))" >> Makefrag;
echo "" >> Makefrag;
echo "target_tests += \$(rv32ip_tests)" >> Makefrag;


echo "rv32ip_p_tests = \$(addprefix rv32ip-p-, \$(rv32ip_sc_tests))" >> Makefrag.spike;
echo "rv32ip_v_tests = \$(addprefix rv32ip-v-, \$(rv32ip_sc_tests))" >> Makefrag.spike;
echo "" >> Makefrag.spike;
echo "spike32_tests += \$(rv32ip_p_tests) \$(rv32ip_v_tests)       " >> Makefrag.spike;

cp Makefrag ../../vendor_lib/riscv/riscv-compliance/riscv-test-suite/rv32ip/Makefrag;
cp Makefrag.spike ../../vendor_lib/riscv/riscv-compliance/riscv-test-suite/rv32ip/src/Makefrag.spike;
rm -rf Makefrag, Makefrag.spike;
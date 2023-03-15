rm -rf cva6/sim/out_2022-05-27/iss_regr.log
./cva6/regress/dv-riscv-tests_simple_add.sh
#cd cva6/sim; rm -rf test_abc.wlf; vsim -c -do "vcd2wlf test_abc.vcd test_abc.wlf; quit;" ; cd -

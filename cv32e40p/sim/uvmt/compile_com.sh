#! /bin/bash

rm -rf Makefrag, Makefrag.spike;

if [[ -n $@ ]];
then
	echo "rv32ip_sc_tests = $@
  " > Makefrag;
else
	echo "rv32ip_sc_tests = \\" >> Makefrag;
	echo "add16   radd16   uradd16   kadd16    ukadd16   sub16   rsub16   ursub16   ksub16   uksub16 \\" >> Makefrag;
	echo "cras16    rcras16   urcras16   kcras16   ukcras16  \\" >> Makefrag;
	echo "crsa16    rcrsa16   urcrsa16   kcrsa16   ukcrsa16  \\" >> Makefrag;
	echo "stas16    rstas16   urstas16   kstas16   ukstas16  \\" >> Makefrag;
	echo "stsa16    rstsa16   urstsa16   kstsa16   ukstsa16  \\" >> Makefrag;
	echo "add8   radd8   uradd8   kadd8    ukadd8   sub8   rsub8   ursub8   ksub8   uksub8   \\" >> Makefrag;
	echo "srai16    srai16.u    srli16    srli16.u    sll16    slli16    ksll16    kslli16    kslra16    kslra16.u   \\" >> Makefrag;
	echo "sra8    sra8.u    sra16    sra16.u    srl16    srl16.u    srl8    srl8.u   \\" >> Makefrag;
	echo "srai8    srai8.u    srli8    srli8.u    sll8    slli8    ksll8    kslli8    kslra8    kslra8.u   \\" >> Makefrag;
	echo "cmpeq16   scmplt16   scmple16   ucmplt16   ucmple16   cmpeq8   scmplt8   scmple8   ucmplt8   ucmple8   \\" >> Makefrag;
	echo "smul16    smulx16   umul16   umulx16   khm16    khmx16    smul8    smulx8    umul8    umulx8    khm8    khmx8   \\" >> Makefrag;
	echo "smin16    umin16    smax16    umax16    sclip16    uclip16    kabs16    clrs16    clz16    swap16    \\" >> Makefrag;
	echo "smin8    umin8    smax8    umax8    kabs8    sclip8    uclip8    clrs8    clz8   swap8  \\" >> Makefrag;
	echo "sunpkd810    sunpkd820    sunpkd830    sunpkd831    sunpkd832    zunpkd810    zunpkd820    zunpkd830    zunpkd831    zunpkd832   \\" >> Makefrag;
	echo "pack    pkbt16    pktb16    packu    smmul    smmul.u    kmmac   random    kmmac.u    kmmsb    kmmsb.u    kwmmul    kwmmul.u   \\" >> Makefrag;
	echo "smmwb    smmwb.u    smmwt    smmwt.u    kmmawb    kmmawb.u    kmmawt    kmmawt.u    kmmwb2    kmmwb2.u    kmmwt2    kmmwt2.u    kmmawb2    kmmawb2.u    kmmawt2    kmmawt2.u    \\" >> Makefrag;
	echo "smbb16    smbt16    smtt16    kmda    kmxda    smds    smdrs    smxds    kmabb    kmabt    kmatt    kmada    kmaxda    kmads    kmadrs    kmaxds    kmsda    kmsxda   \\" >> Makefrag;
	echo "smal    sclip32    uclip32    clrs32    clz32    pbsad    pbsada    smaqa    umaqa    smaqa.su   \\" >> Makefrag;
	echo "add64   radd64   uradd64   kadd64   ukadd64   sub64   rsub64   ursub64   ksub64   uksub64  \\" >> Makefrag;
	echo "smar64   smsr64   umar64   umsr64   kmar64   kmsr64   ukmar64   ukmsr64  \\" >> Makefrag;
	echo "smalbb   smalbt   smaltt   smalda   smalxda   smalds   smaldrs   smalxds   smslda   smslxda  \\" >> Makefrag;
	echo "kaddh    ksubh    khmbb    khmbt    khmtt    ukaddh    uksubh    \\" >> Makefrag;
	echo "kaddw    ukaddw    ksubw    uksubw    kdmbb    kdmbt    kdmtt    kslraw    kslraw.u    ksllw    kslliw    kdmabb    kdmabt    kdmatt    kabsw   \\" >> Makefrag;
	echo "raddw    uraddw    rsubw    ursubw    mulr64    mulsr64    msubr32   \\" >> Makefrag;
	echo "ave    sra.u    srai.u    bitrev    bitrevi    fsr    fsri    insb    maddr32    max    min  cmix \\" >> Makefrag;
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
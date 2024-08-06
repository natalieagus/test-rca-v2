set projDir "/media/share/Alchitry/test-rca-v2/build/vivado"
set projName "test-rca-v2"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/media/share/Alchitry/test-rca-v2/build/source/MI_alchitryTop.v" "/media/share/Alchitry/test-rca-v2/build/source/MI_resetConditioner_f28c5f19.v" "/media/share/Alchitry/test-rca-v2/build/source/MI_rca_4a107a09.v" "/media/share/Alchitry/test-rca-v2/build/source/MI_fa.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/media/share/Alchitry/test-rca-v2/build/constraint/alchitry.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1

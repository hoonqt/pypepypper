set projDir "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/planAhead"
set projName "pype"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/mojo_top_0.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsync_generator_1.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/tilesort_2.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/selector_draw_3.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/stateCounter_4.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape5draw_5.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape2draw_8.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape4draw_10.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape0draw_11.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape4draw_10.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape2draw_8.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape3draw_15.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape3draw_15.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape4draw_10.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape4draw_10.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape2draw_8.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape4draw_10.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape3draw_15.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape3draw_15.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape0draw_11.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape2draw_8.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape5draw_5.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape1draw_6.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/alu_30.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/selector_base_31.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/flash_counter_500ms_32.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape5_33.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape2_39.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape4_43.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape0base2_44.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape4_43.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape2_39.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape3_52.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape3_52.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape4_43.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape4_43.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape2_39.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape4_43.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape3_52.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape3_52.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shape0base2_44.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape2_39.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape5_33.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/hvsyncpass_34.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/newshape1_35.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder8_79.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/boole_80.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/shift_81.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/cmp_82.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/work/verilog/adder_83.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/constraint/io_shield.ucf" "C:/Users/Nightzsky/Desktop/pype-master/pype-mojo/constraint/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1

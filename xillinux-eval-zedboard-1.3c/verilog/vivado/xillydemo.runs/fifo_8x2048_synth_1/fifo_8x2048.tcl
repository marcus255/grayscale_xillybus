# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 

create_project -in_memory -part xc7z020clg484-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/verilog/vivado/xillydemo.cache/wt [current_project]
set_property parent.project_path C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/verilog/vivado/xillydemo.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/vivado-ip [current_project]
read_ip C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048.xci
set_property used_in_implementation false [get_files -all c:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048.dcp]
set_property is_locked true [get_files C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file fifo_8x2048.hwdef }
synth_design -top fifo_8x2048 -part xc7z020clg484-1 -mode out_of_context
rename_ref -prefix_all fifo_8x2048_
write_checkpoint -noxdef fifo_8x2048.dcp
catch { report_utilization -file fifo_8x2048_utilization_synth.rpt -pb fifo_8x2048_utilization_synth.pb }
if { [catch {
  file copy -force C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/verilog/vivado/xillydemo.runs/fifo_8x2048_synth_1/fifo_8x2048.dcp C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

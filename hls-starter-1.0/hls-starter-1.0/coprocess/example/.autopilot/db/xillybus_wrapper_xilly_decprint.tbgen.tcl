set moduleName xillybus_wrapper_xilly_decprint
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName xillybus_wrapper_xilly_decprint
set C_modelType { void 0 }
set C_modelArgList { 
	{ val_r int 8 regular  }
	{ debug_ready int 8 regular {pointer 0 volatile } {global 0}  }
	{ debug_out int 8 regular {pointer 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "val_r", "interface" : "wire", "bitwidth" : 8} , 
 	{ "Name" : "debug_ready", "interface" : "wire", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "debug_ready","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}],"extern" : 0} , 
 	{ "Name" : "debug_out", "interface" : "wire", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "debug_out","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}],"extern" : 0} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ val_r sc_in sc_lv 8 signal 0 } 
	{ debug_ready sc_in sc_lv 8 signal 1 } 
	{ debug_out sc_out sc_lv 8 signal 2 } 
	{ debug_out_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "val_r", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_r", "role": "default" }} , 
 	{ "name": "debug_ready", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "debug_ready", "role": "default" }} , 
 	{ "name": "debug_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "debug_out", "role": "default" }} , 
 	{ "name": "debug_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "debug_out", "role": "ap_vld" }}  ]}
set Spec2ImplPortList { 
	val_r { ap_none {  { val_r in_data 0 8 } } }
	debug_ready { ap_none {  { debug_ready in_data 0 8 } } }
	debug_out { ap_vld {  { debug_out out_data 1 8 }  { debug_out_ap_vld out_vld 1 1 } } }
}

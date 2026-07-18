package RAM_agent_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import RAM_sequencer_pkg::*;
	import RAM_monitor_pkg::*;
	import RAM_seq_item_pkg::*;
	import RAM_driver_pkg::*;
	import RAM_config_pkg::*;

	class RAM_agent extends uvm_agent;
  		`uvm_component_utils(RAM_agent)
  		RAM_sequencer sqr;
  		RAM_driver driver;
  		RAM_monitor monitor;
  		RAM_config RAM_cfg;
  		uvm_analysis_port #(RAM_seq_item) agent_ap;

  		function new (string name = "shift_reg_agent", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		RAM_cfg = RAM_config::type_id::create("RAM_cfg");
    		agent_ap = new("agent_ap", this);
    		if (!uvm_config_db #(RAM_config)::get(this , "", "CFG", RAM_cfg))begin
      			`uvm_fatal("build_phase" , "Unable to get configuration object")
    		end
if(RAM_cfg.is_active==UVM_ACTIVE) begin
           	sqr =  RAM_sequencer::type_id::create("sqr",this);
    		driver =  RAM_driver::type_id::create("driver",this);
    		monitor =  RAM_monitor::type_id::create("monitor",this);
           end
           else begin
    		monitor =  RAM_monitor::type_id::create("monitor",this);
           end
    		
  		endfunction

  		function void connect_phase(uvm_phase phase);
  			if(RAM_cfg.is_active==UVM_ACTIVE) begin
    		driver.RAM_vif = RAM_cfg.RAM_vif;
    		monitor.RAM_vif = RAM_cfg.RAM_vif;
    		driver.seq_item_port.connect(sqr.seq_item_export);
    		monitor.monitor_ap.connect(agent_ap);
    	end
    	else begin
    		monitor.RAM_vif = RAM_cfg.RAM_vif;
    		monitor.monitor_ap.connect(agent_ap);
    	end
  
  		endfunction
	endclass
	
endpackage 


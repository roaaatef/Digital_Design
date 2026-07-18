package alsu_agent_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import alsu_sequencer_pkg::*;
	import alsu_monitor_pkg::*;
	import alsu_seq_item_pkg::*;
	import alsu_driver_pkg::*;
	import alsu_config_pkg::*;

	class alsu_agent extends uvm_agent;
  		`uvm_component_utils(alsu_agent)
  		alsu_sequencer sqr;
  		alsu_driver driver;
  		alsu_monitor monitor;
  		alsu_config alsu_cfg;
  		uvm_analysis_port #(alsu_seq_item) agent_ap;

  		function new (string name = "shift_reg_agent", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		alsu_cfg = alsu_config::type_id::create("alsu_cfg");
    		agent_ap = new("agent_ap", this);
    		if (!uvm_config_db #(alsu_config)::get(this , "", "CFG", alsu_cfg))begin
      			`uvm_fatal("build_phase" , "Unable to get configuration object")
    		end
           if(alsu_cfg.is_active==UVM_ACTIVE) begin
           	sqr = alsu_sequencer::type_id::create("sqr",this);
    		driver = alsu_driver::type_id::create("driver",this);
    		monitor = alsu_monitor::type_id::create("monitor",this);
           end
           else begin
    		monitor = alsu_monitor::type_id::create("monitor",this);
           end
    		
  		endfunction

  		function void connect_phase(uvm_phase phase);
  			if(alsu_cfg.is_active==UVM_ACTIVE) begin
    		driver.alsu_vif = alsu_cfg.alsu_vif;
    		monitor.alsu_vif = alsu_cfg.alsu_vif;
    		driver.seq_item_port.connect(sqr.seq_item_export);
    		monitor.monitor_ap.connect(agent_ap);
    	end
    	else begin
    		monitor.alsu_vif = alsu_cfg.alsu_vif;
    		monitor.monitor_ap.connect(agent_ap);
    	end
  		endfunction
	endclass
	
endpackage 


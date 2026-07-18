package SLAVE_agent_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import SLAVE_sequencer_pkg::*;
	import SLAVE_monitor_pkg::*;
	import SLAVE_seq_item_pkg::*;
	import SLAVE_driver_pkg::*;
	import SLAVE_config_pkg::*;

	class SLAVE_agent extends uvm_agent;
  		`uvm_component_utils(SLAVE_agent)
  		SLAVE_sequencer sqr;
  		SLAVE_driver driver;
  		SLAVE_monitor monitor;
  		SLAVE_config SLAVE_cfg;
  		uvm_analysis_port #(SLAVE_seq_item) agent_ap;

  		function new (string name = "shift_reg_agent", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		sqr = SLAVE_sequencer::type_id::create("sqr",this);
    		driver = SLAVE_driver::type_id::create("driver",this);
    		monitor = SLAVE_monitor::type_id::create("monitor",this);
    		SLAVE_cfg = SLAVE_config::type_id::create("SLAVE_cfg");
    		agent_ap = new("agent_ap", this);
    		if (!uvm_config_db #(SLAVE_config)::get(this , "", "CFG", SLAVE_cfg))begin
      			`uvm_fatal("build_phase" , "Unable to get configuration object")
    		end

    		
  		endfunction

  		function void connect_phase(uvm_phase phase);
    		driver.SLAVE_vif = SLAVE_cfg.SLAVE_vif;
    		monitor.SLAVE_vif = SLAVE_cfg.SLAVE_vif;
    		driver.seq_item_port.connect(sqr.seq_item_export);
    		monitor.monitor_ap.connect(agent_ap);
  		endfunction
	endclass
	
endpackage 


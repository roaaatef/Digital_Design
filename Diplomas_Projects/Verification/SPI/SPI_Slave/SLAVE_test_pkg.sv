package SLAVE_test_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"

  	import SLAVE_agent_pkg::*;
  	import SLAVE_config_pkg::*;

		 import SLAVE_main_sequence_pkg::*;
  	import SLAVE_reset_seq_pkg::*;
  	import SLAVE_env_pkg::*;
  	
	class SLAVE_test extends uvm_test;
	  	`uvm_component_utils(SLAVE_test)
		SLAVE_config SLAVE_cfg;
		virtual SLAVE_if SLAVE_vif;
		
		SLAVE_main_sequence SLAVE;
		SLAVE_reset_sequence SLAVE_RST;
		SLAVE_env env;

  		function new(string name = "SLAVE_test", uvm_component parent = null);
    		super.new(name, parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
		    env = SLAVE_env::type_id::create("env",this);
		    SLAVE_cfg = SLAVE_config::type_id::create("SLAVE_cfg");
		    SLAVE = SLAVE_main_sequence::type_id::create("SLAVE",this);
		 
		    SLAVE_RST = SLAVE_reset_sequence::type_id::create("SLAVE_RST",this);
		    if (!uvm_config_db #(virtual SLAVE_if)::get(this, "","SLAVE_IF", SLAVE_cfg.SLAVE_vif))
		    	`uvm_fatal("build_phase", "Test - Unable to get the virtual interface of the SLAVE from the uvm_config_db");

    		uvm_config_db #(SLAVE_config)::set(this, "*", "CFG", SLAVE_cfg);
  		endfunction

  		task run_phase(uvm_phase phase);
    		super.run_phase(phase);
		    phase.raise_objection(this);
		    //reset sequence
		    `uvm_info("run_phase", "Reset Asserted", UVM_LOW)
		    SLAVE_RST.start(env.agent.sqr);
		    `uvm_info("run_phase", "Reset Deasserted", UVM_LOW)
		    //main seq
		    `uvm_info("run_phase", "Stimulus Generation Started (write only)", UVM_LOW)
		    SLAVE.start(env.agent.sqr);
		    `uvm_info("run_phase", "Stimulus Generation Ended", UVM_LOW)
		    phase.drop_objection(this);
  		endtask
	endclass
endpackage 
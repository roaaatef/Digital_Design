package alsu_test_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"

  	import alsu_agent_pkg::*;
  	import alsu_config_pkg::*;
  	import alsu_main_seq_pkg::*;
  	import alsu_reset_seq_pkg::*;
  	import alsu_env_pkg::*;
  	
	class alsu_test extends uvm_test;
	  	`uvm_component_utils(alsu_test)
		alsu_agent agent;
		alsu_config alsu_cfg;
		virtual alsu_if alsu_vif;
		alsu_main_sequence main_seq;
		alsu_reset_sequence reset_seq;
		alsu_env env;

  		function new(string name = "alsu_test", uvm_component parent = null);
    		super.new(name, parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
		    agent = alsu_agent::type_id::create("agent",this);
		    env = alsu_env::type_id::create("env",this);
		    alsu_cfg = alsu_config::type_id::create("alsu_cfg");
		    main_seq = alsu_main_sequence::type_id::create("main_seq",this);
		    reset_seq = alsu_reset_sequence::type_id::create("reset_seq",this);
		    if (!uvm_config_db #(virtual alsu_if)::get(this, "","ALSU_IF", alsu_cfg.alsu_vif))
		    	`uvm_fatal("build_phase", "Test - Unable to get the virtual interface of the alsu from the uvm_config_db");

    		uvm_config_db #(alsu_config)::set(this, "*", "CFG", alsu_cfg);
  		endfunction

  		task run_phase(uvm_phase phase);
    		super.run_phase(phase);
		    phase.raise_objection(this);
		    //reset sequence
		    `uvm_info("run_phase", "Reset Asserted", UVM_LOW)
		    reset_seq.start(agent.sqr);
		    `uvm_info("run_phase", "Reset Deasserted", UVM_LOW)
		    //main sequence
		    `uvm_info("run_phase", "Stimulus Generation Started", UVM_LOW)
		    main_seq.start(agent.sqr);
		    `uvm_info("run_phase", "Stimulus Generation Ended", UVM_LOW)
		    phase.drop_objection(this);
  		endtask
	endclass
endpackage 
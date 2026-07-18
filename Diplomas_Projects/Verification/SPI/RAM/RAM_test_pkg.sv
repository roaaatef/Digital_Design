package RAM_test_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"

  	import RAM_agent_pkg::*;
  	import RAM_config_pkg::*;
  	 import RAM_write_only_sequence_pkg::*; 
		 import RAM_read_only_sequence_pkg::*; 
		 import RAM_write_read_sequence_pkg::*;
  	import RAM_reset_seq_pkg::*;
  	import RAM_env_pkg::*;
  	
	class RAM_test extends uvm_test;
	  	`uvm_component_utils(RAM_test)
		RAM_config RAM_cfg;
		virtual RAM_if RAM_vif;
		RAM_write_only_sequence RAM_W;
		RAM_read_only_sequence RAM_R;
		RAM_write_read_sequence RAM_WR;
		RAM_reset_sequence RAM_RST;
		RAM_env env;

  		function new(string name = "RAM_test", uvm_component parent = null);
    		super.new(name, parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
		    env = RAM_env::type_id::create("env",this);
		    RAM_cfg = RAM_config::type_id::create("RAM_cfg");
		    RAM_W = RAM_write_only_sequence::type_id::create("RAM_W",this);
		    RAM_R = RAM_read_only_sequence::type_id::create("RAM_R",this);
		    RAM_WR = RAM_write_read_sequence::type_id::create("RAM_WR",this);
		    RAM_RST = RAM_reset_sequence::type_id::create("RAM_RST",this);
		    if (!uvm_config_db #(virtual RAM_if)::get(this, "","RAM_IF", RAM_cfg.RAM_vif))
		    	`uvm_fatal("build_phase", "Test - Unable to get the virtual interface of the RAM from the uvm_config_db");

    		uvm_config_db #(RAM_config)::set(this, "*", "CFG", RAM_cfg);
  		endfunction

  		task run_phase(uvm_phase phase);
    		super.run_phase(phase);
		    phase.raise_objection(this);
		    //reset sequence
		    `uvm_info("run_phase", "Reset Asserted", UVM_LOW)
		    RAM_RST.start(env.agent.sqr);
		    `uvm_info("run_phase", "Reset Deasserted", UVM_LOW)
		    //write only
		    `uvm_info("run_phase", "Stimulus Generation Started (write only)", UVM_LOW)
		    RAM_W.start(env.agent.sqr);
		    //read only
		    `uvm_info("run_phase", "Stimulus Generation Started (read only)", UVM_LOW)
		   RAM_R.start(env.agent.sqr);
		    //write & read
		    `uvm_info("run_phase", "Stimulus Generation Started (write read)", UVM_LOW)
		    RAM_WR.start(env.agent.sqr);
		    `uvm_info("run_phase", "Stimulus Generation Ended", UVM_LOW)
		    phase.drop_objection(this);
  		endtask
	endclass
endpackage 
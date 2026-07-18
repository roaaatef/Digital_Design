package SLAVE_env_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import SLAVE_agent_pkg::*;
  	import SLAVE_scoreboard_pkg::*;
  	import SLAVE_coverage_pkg::*;
	class SLAVE_env extends uvm_env;
  		`uvm_component_utils(SLAVE_env)

  		SLAVE_agent agent;
  		SLAVE_scoreboard scoreboard_SLAVE;
  		SLAVE_coverage coverage_SLAVE;

  		function new(string name = "SLAVE_env", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		agent = SLAVE_agent::type_id::create("agent",this);
    		scoreboard_SLAVE = SLAVE_scoreboard::type_id::create("scoreboard_SLAVE",this);
    		coverage_SLAVE = SLAVE_coverage::type_id::create("coverage_SLAVE",this);
  		endfunction: build_phase

  		function void connect_phase(uvm_phase phase);
    		agent.agent_ap.connect(scoreboard_SLAVE.sb_export);
    		agent.agent_ap.connect(coverage_SLAVE.coverage_export);
  		endfunction
	endclass
endpackage 



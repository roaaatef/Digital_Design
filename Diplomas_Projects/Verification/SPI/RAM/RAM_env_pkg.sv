package RAM_env_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import RAM_agent_pkg::*;
  	import RAM_scoreboard_pkg::*;
  	import RAM_coverage_pkg::*;
	class RAM_env extends uvm_env;
  		`uvm_component_utils(RAM_env)

  		RAM_agent agent;
  		RAM_scoreboard scoreboard_RAM;
  		RAM_coverage coverage_RAM;

  		function new(string name = "RAM_env", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		agent = RAM_agent::type_id::create("agent",this);
    		scoreboard_RAM = RAM_scoreboard::type_id::create("scoreboard_RAM",this);
    		coverage_RAM = RAM_coverage::type_id::create("coverage_RAM",this);
  		endfunction: build_phase

  		function void connect_phase(uvm_phase phase);
    		agent.agent_ap.connect(scoreboard_RAM.sb_export);
    		agent.agent_ap.connect(coverage_RAM.coverage_export);
  		endfunction
	endclass
endpackage 



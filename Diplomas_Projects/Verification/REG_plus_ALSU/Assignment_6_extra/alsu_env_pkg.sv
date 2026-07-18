package alsu_env_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import alsu_agent_pkg::*;
  	import alsu_scoreboard_pkg::*;
  	import alsu_coverage_pkg::*;
	class alsu_env extends uvm_env;
  		`uvm_component_utils(alsu_env)

  		alsu_agent agent;
  		alsu_scoreboard score_b;
  		alsu_coverage coverage;

  		function new(string name = "shift_reg_env", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		agent = alsu_agent::type_id::create("agent",this);
    		score_b = alsu_scoreboard::type_id::create("score_b",this);
    		coverage = alsu_coverage::type_id::create("coverage",this);
  		endfunction: build_phase

  		function void connect_phase(uvm_phase phase);
    		agent.agent_ap.connect(score_b.sb_export);
    		agent.agent_ap.connect(coverage.coverage_export);
  		endfunction
	endclass
endpackage 



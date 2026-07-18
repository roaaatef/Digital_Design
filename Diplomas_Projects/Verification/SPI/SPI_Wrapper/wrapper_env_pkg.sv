package wrapper_env_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import wrapper_agent_pkg::*;
  	import wrapper_scoreboard_pkg::*;
  	import wrapper_coverage_pkg::*;
	class wrapper_env extends uvm_env;
  		`uvm_component_utils(wrapper_env)

  		wrapper_agent agent;
  		wrapper_scoreboard score_b;
  		wrapper_coverage coverage;

  		function new(string name = "wrapper_env", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		agent = wrapper_agent::type_id::create("agent",this);
    		score_b = wrapper_scoreboard::type_id::create("score_b",this);
    		coverage = wrapper_coverage::type_id::create("coverage",this);
  		endfunction: build_phase

  		function void connect_phase(uvm_phase phase);
    		agent.agent_ap.connect(score_b.sb_export);
    		agent.agent_ap.connect(coverage.coverage_export);
  		endfunction
	endclass
endpackage 



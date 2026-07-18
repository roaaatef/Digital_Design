package wrapper_agent_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import wrapper_sequencer_pkg::*;
	import wrapper_monitor_pkg::*;
	import wrapper_seq_item_pkg::*;
	import wrapper_driver_pkg::*;
	import wrapper_config_pkg::*;

	class wrapper_agent extends uvm_agent;
  		`uvm_component_utils(wrapper_agent)
  		wrapper_sequencer sqr;
  		wrapper_driver driver;
  		wrapper_monitor monitor;
  		wrapper_config wr_cfg;
  		uvm_analysis_port #(wrapper_seq_item) agent_ap;

  		function new (string name = "wrapper_agent", uvm_component parent = null);
    		super.new(name,parent);
  		endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		wr_cfg = wrapper_config::type_id::create("wr_cfg");
    		agent_ap = new("agent_ap", this);
    		if (!uvm_config_db #(wrapper_config)::get(this , "", "CFG", wr_cfg))begin
      			`uvm_fatal("build_phase" , "Unable to get configuration object")
    		end
 if(wr_cfg.is_active==UVM_ACTIVE) begin
           	sqr =  wrapper_sequencer::type_id::create("sqr",this);
    		driver =  wrapper_driver::type_id::create("driver",this);
    		monitor =  wrapper_monitor::type_id::create("monitor",this);
           end
           else begin
    		monitor =  wrapper_monitor::type_id::create("monitor",this);
           end

    		
  		endfunction

  		function void connect_phase(uvm_phase phase);
    		if(wr_cfg.is_active==UVM_ACTIVE) begin
    		driver.WR_vif = wr_cfg.WR_vif;
    		monitor.WR_vif = wr_cfg.WR_vif;
    		driver.seq_item_port.connect(sqr.seq_item_export);
    		monitor.monitor_ap.connect(agent_ap);
    	end
    	else begin
    		monitor.WR_vif = wr_cfg.WR_vif;
    		monitor.monitor_ap.connect(agent_ap);
    	end

  		endfunction
	endclass
	
endpackage 


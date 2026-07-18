package wrapper_monitor_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import wrapper_seq_item_pkg::*;
	class wrapper_monitor extends uvm_monitor;
  		`uvm_component_utils(wrapper_monitor)
  		virtual SPI_WRAPPER_if WR_vif;
  		wrapper_seq_item rsp_seq_item;
  		uvm_analysis_port #(wrapper_seq_item) monitor_ap;

  		function new(string name = "wrapper_monitor", uvm_component parent = null) ;
    		super.new(name, parent);
  		endfunction
  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		monitor_ap = new("monitor_ap", this);  
  		endfunction: build_phase
  		task run_phase(uvm_phase phase);
    		super.run_phase(phase);
    		forever begin
      			rsp_seq_item = wrapper_seq_item::type_id::create("rsp_seq_item");
      			  @(negedge WR_vif.clk);
      			 rsp_seq_item.rst_n=WR_vif.rst_n;
      			 rsp_seq_item.MISO=WR_vif.MISO;
      			  rsp_seq_item.MOSI=WR_vif.MOSI;
      			   rsp_seq_item.SS_n=WR_vif.SS_n;
      			   rsp_seq_item.MISO_exp=WR_vif.MISO_exp;
      			monitor_ap.write(rsp_seq_item);
      			`uvm_info("run_phase", rsp_seq_item.convert2string(), UVM_HIGH)
    		end
  		endtask
	endclass
endpackage 
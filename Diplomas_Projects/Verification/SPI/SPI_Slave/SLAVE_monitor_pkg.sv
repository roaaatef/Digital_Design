package SLAVE_monitor_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import SLAVE_seq_item_pkg::*;
	class SLAVE_monitor extends uvm_monitor;
  		`uvm_component_utils(SLAVE_monitor)
  		virtual SLAVE_if SLAVE_vif;
  		SLAVE_seq_item rsp_seq_item;
  		uvm_analysis_port #(SLAVE_seq_item) monitor_ap;

  		function new(string name = "shift_reg_monitor", uvm_component parent = null) ;
    		super.new(name, parent);
  		endfunction
  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		monitor_ap = new("monitor_ap", this);  
  		endfunction: build_phase
  		task run_phase(uvm_phase phase);
    		super.run_phase(phase);
    		forever begin
      			rsp_seq_item = SLAVE_seq_item::type_id::create("rsp_seq_item");
      			  @(negedge SLAVE_vif.clk);
      			rsp_seq_item.MOSI=SLAVE_vif.MOSI;
      			rsp_seq_item.rst_n=SLAVE_vif.rst_n;
      			rsp_seq_item.SS_n=SLAVE_vif.SS_n;
      			rsp_seq_item.tx_valid=SLAVE_vif.tx_valid;
      			rsp_seq_item.tx_data=SLAVE_vif.tx_data;
      			rsp_seq_item.MISO=SLAVE_vif.MISO;
      			rsp_seq_item.rx_data=SLAVE_vif.rx_data;
      			rsp_seq_item.rx_valid=SLAVE_vif.rx_valid;
      			rsp_seq_item.MISO_exp=SLAVE_vif.MISO_exp;
      			rsp_seq_item.rx_data_exp=SLAVE_vif.rx_data_exp;
      			rsp_seq_item.rx_valid_exp=SLAVE_vif.rx_valid_exp;
      			monitor_ap.write(rsp_seq_item);
      			`uvm_info("run_phase", rsp_seq_item.convert2string(), UVM_HIGH)
    		end
  		endtask
	endclass
endpackage 
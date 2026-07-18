package RAM_coverage_pkg;
	import uvm_pkg::*;
	import RAM_seq_item_pkg::*;
	`include "uvm_macros.svh"	
	class RAM_coverage extends uvm_component;
  		`uvm_component_utils(RAM_coverage)
  		uvm_analysis_export #(RAM_seq_item) coverage_export;
  		uvm_tlm_analysis_fifo #(RAM_seq_item) cov_fifo;
  		RAM_seq_item seq_item_cov;
        /*.............................cover group.............................*/
        covergroup RAM_cg ;
	data_in:coverpoint seq_item_cov.din[9:8] 
	{
	bins write_addr = {2'b00};
	bins write_data = {2'b01};
	bins read_addr = {2'b10};
	bins read_data = {2'b11};
	bins write_data_after_write_addr = (2'b00=>2'b01);
	bins read_data_after_read_addr = (2'b10=>2'b11);
	bins seq = (2'b00=>2'b01=>2'b10=>2'b11);
	}
	rx: coverpoint seq_item_cov.rx_valid
	{
	bins zero={0};
	bins one ={1};
	}
	tx : coverpoint seq_item_cov.tx_valid
	{
	bins one ={1};
	bins zero = {0};
	}
	c1: cross rx,data_in
	{
	bins din_rx_high = binsof(data_in) && binsof(rx.one);
	} 
	c2: cross tx,data_in
	{
	bins din_tx_high = binsof(data_in.read_data) && binsof(tx.one);
	option.cross_auto_bin_max=0;
	} 

endgroup
/*................................................*/
  		function new(string name = "RAM_coverage", uvm_component parent = null) ;
    		super.new(name, parent);
    		RAM_cg = new();
  		endfunction

  		function void build_phase(uvm_phase phase);
		    super.build_phase(phase);
		    coverage_export = new("coverage_export", this);
		    cov_fifo = new("cov_fifo", this);
		endfunction

		function void connect_phase(uvm_phase phase);
		    super.connect_phase(phase);
		    coverage_export.connect(cov_fifo.analysis_export);
		endfunction

  		task run_phase(uvm_phase phase);
		    super.run_phase(phase);
		    forever begin
			    cov_fifo.get(seq_item_cov);
			     if ((seq_item_cov.rst_n)) begin
			   RAM_cg.sample();
			end
    		end
  		endtask
	endclass
endpackage 
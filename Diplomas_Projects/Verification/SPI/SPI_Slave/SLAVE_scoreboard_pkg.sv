package SLAVE_scoreboard_pkg;

	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import SLAVE_seq_item_pkg::*;

	class SLAVE_scoreboard extends uvm_scoreboard;
	  	`uvm_component_utils(SLAVE_scoreboard)
	  	uvm_analysis_export #(SLAVE_seq_item) sb_export;
	  	uvm_tlm_analysis_fifo #(SLAVE_seq_item) sb_fifo;
	  	SLAVE_seq_item seq_item_sb;
	   int error_count = 0;
    int correct_count = 0;
	  	/*.........................................................*/
	  	function new(string name = "SLAVE_scoreboard", uvm_component parent = null) ;
	    	super.new(name, parent);
	  	endfunction

  		function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		sb_export = new("sb_export", this);
    		sb_fifo = new("sb_fifo", this);
  		endfunction

  		function void connect_phase(uvm_phase phase);
    		super.connect_phase(phase);
    		sb_export.connect(sb_fifo.analysis_export);
  		endfunction

  		task run_phase(uvm_phase phase);
    		super.run_phase(phase);
    		forever begin
      			sb_fifo.get(seq_item_sb);
            if ((seq_item_sb.rx_data_exp==seq_item_sb.rx_data)&&(seq_item_sb.rx_valid_exp==seq_item_sb.rx_valid)&&(seq_item_sb.MISO==seq_item_sb.MISO_exp)) begin
               `uvm_info("run_phase", $sformatf("%s ", seq_item_sb.convert2string()), UVM_LOW);
`uvm_info("run_phase",$sformatf("MISO_exp value : %b , rx_valid_exp : %b , rx_data_exp : %b", seq_item_sb.MISO_exp, seq_item_sb.rx_valid_exp,seq_item_sb.rx_data_exp), UVM_LOW);
              correct_count++;
            end
            else begin
            `uvm_error("run_phase", $sformatf("Comparsion failed, Transaction received by the DUT:%s  While the expected MISO:%0b & rx valid expected : %b & rx data expected:%b"
            	, seq_item_sb.convert2string(), seq_item_sb.MISO_exp,seq_item_sb.rx_valid_exp,seq_item_sb.rx_data_exp));
            error_count++;
            end
          
          end
 		endtask

  function void report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info("report_phase", $sformatf("Total successful transactions: %0d",correct_count), UVM_LOW);
        `uvm_info("report_phase", $sformatf("Total failed transactions: %0d",error_count), UVM_LOW);
      endfunction
	endclass
endpackage 

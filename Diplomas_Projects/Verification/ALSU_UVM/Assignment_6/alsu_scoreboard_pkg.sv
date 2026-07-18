package alsu_scoreboard_pkg;

	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import alsu_seq_item_pkg::*;
	import shared_pkg::*;
    /*.....................expected out declaration.................*/
      logic signed [5:0] expected_out;
      logic [15:0] leds_expected;
	class alsu_scoreboard extends uvm_scoreboard;
	  	`uvm_component_utils(alsu_scoreboard)
	  	uvm_analysis_export #(alsu_seq_item) sb_export;
	  	uvm_tlm_analysis_fifo #(alsu_seq_item) sb_fifo;
	  	alsu_seq_item seq_item_sb;
	   int error_count = 0;
    int correct_count = 0;
	  	/*.........................................................*/
	  	function new(string name = "alsu_scoreboard", uvm_component parent = null) ;
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
            if ((seq_item_sb.out == seq_item_sb.expected_out)&&(seq_item_sb.leds==seq_item_sb.leds_expected)) begin
               `uvm_info("run_phase", $sformatf("%s", seq_item_sb.convert2string()), UVM_LOW);
`uvm_info("run_phase", $sformatf("expected_out value : %b , leds_expected : %b", seq_item_sb.expected_out, seq_item_sb.leds_expected), UVM_LOW);
              correct_count++;
            end
            else begin
            `uvm_error("run_phase", $sformatf("Comparsion failed, Transaction received by the DUT:%s  While the expected out:0b%0b & leds_expected : %b"
            	, seq_item_sb.convert2string(), seq_item_sb.expected_out,seq_item_sb.leds_expected));
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

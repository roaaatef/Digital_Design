package SLAVE_main_sequence_pkg;

	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import SLAVE_seq_item_pkg::*;
  	import shared_pkg::*;
  	
  	
	class SLAVE_main_sequence extends uvm_sequence #(SLAVE_seq_item);
	  	`uvm_object_utils(SLAVE_main_sequence);
		SLAVE_seq_item seq_item;

	  	function new (string name = "SLAVE_main_sequence");
	    	super.new(name);
	  	endfunction

	  	task body;

		    repeat (10000) begin
		    	 seq_item = SLAVE_seq_item::type_id::create("seq_item");
		    	 
	start_item(seq_item);
		    	
		    	 assert(seq_item.randomize());
		    	 seq_item.tx_data=8'b10101010;
		    finish_item(seq_item);
end
        
      
        
        
	  	endtask
	endclass
endpackage 
package wrapper_read_write_seq_pkg;

	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import wrapper_seq_item_pkg::*;
	class wrapper_read_write_sequence extends uvm_sequence #(wrapper_seq_item);
	  	`uvm_object_utils(wrapper_read_write_sequence);
		wrapper_seq_item seq_item;

	  	function new (string name = "wrapper_read_write_sequence");
	    	super.new(name);
	  	endfunction

	  	task body;
	  		repeat (10000) begin
		    seq_item = wrapper_seq_item::type_id::create("seq_item");
		    	  			 seq_item.mosi_seq_wrd.constraint_mode(1);
	  			  seq_item.mosi_seq_read.constraint_mode(0);
  seq_item.mosi_seq_write.constraint_mode(0);
		    start_item(seq_item);
		   assert(seq_item.randomize());
	
		    finish_item(seq_item);
		end
	  	endtask
	endclass
endpackage 
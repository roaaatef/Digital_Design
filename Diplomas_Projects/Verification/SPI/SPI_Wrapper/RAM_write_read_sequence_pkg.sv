package RAM_write_read_sequence_pkg;

	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import RAM_seq_item_pkg::*;
	class RAM_write_read_sequence extends uvm_sequence #(RAM_seq_item);
	  	`uvm_object_utils(RAM_write_read_sequence);
		RAM_seq_item seq_item;

	  	function new (string name = "RAM_write_read_sequence");
	    	super.new(name);
	  	endfunction

	  	task body;
		   
		    repeat (20000) begin
		    	 seq_item = RAM_seq_item::type_id::create("seq_item");
		    	 seq_item.constraint_mode(1);	   
		    start_item(seq_item);
		  assert(seq_item.randomize());
		    finish_item(seq_item);
		end
	  	endtask
	endclass
endpackage 
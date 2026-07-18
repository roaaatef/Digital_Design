package RAM_read_only_sequence_pkg;

	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import RAM_seq_item_pkg::*;
	class RAM_read_only_sequence extends uvm_sequence #(RAM_seq_item);
	  	`uvm_object_utils(RAM_read_only_sequence);
		RAM_seq_item seq_item;

	  	function new (string name = "RAM_read_only_sequence");
	    	super.new(name);
	  	endfunction

	  	task body;
		   
		    repeat (10000) begin
		    	 seq_item = RAM_seq_item::type_id::create("seq_item");
		    	 seq_item.WRITE_ONLY.constraint_mode(0);
		    seq_item.WRITE_READ_R.constraint_mode(0);
		    seq_item.WRITE_READ_W.constraint_mode(0);
		    start_item(seq_item);
		   assert(seq_item.randomize());
		    finish_item(seq_item);
		end
	  	endtask
	endclass
endpackage 
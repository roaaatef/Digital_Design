package alsu_main_seq_pkg;
	import uvm_pkg::*;
  	`include "uvm_macros.svh"
  	import alsu_seq_item_pkg::*;
  	import shared_pkg::*;
	class alsu_main_sequence extends uvm_sequence #(alsu_seq_item);
		`uvm_object_utils(alsu_main_sequence);
	    alsu_seq_item seq_item;
		function new (string name = "alsu_main_sequence");
	    	super.new(name);
	  	endfunction
	  	task body;
		    repeat(50000) begin
			    seq_item = alsu_seq_item::type_id::create("seq_item");
			      ////disable constraints number 8//////
                 seq_item.X.constraint_mode(0);
			    start_item(seq_item);
			    assert(seq_item.randomize());
			    finish_item(seq_item);
		    end        
            repeat(1000) begin
            	  seq_item = alsu_seq_item::type_id::create("seq_item");
			       ////disable all constraints //////
			         seq_item.constraint_mode(0);
			           ////enable constraint X //////
                 seq_item.X.constraint_mode(1);
			    
			    assert(seq_item.randomize());
			         ///directed value for some inputs///////
             seq_item.rst=0;
             seq_item.bypass_a=0;
           seq_item.bypass_b=0;
           seq_item.red_op_a=0;
           seq_item.red_op_b=0;
			      for (int i=0;i<6;i=i+1) begin
			      	start_item(seq_item);
			    	seq_item.op_code=seq_item.array[i];
                      finish_item(seq_item);
			    end	
            end
	  	endtask
	endclass
endpackage 
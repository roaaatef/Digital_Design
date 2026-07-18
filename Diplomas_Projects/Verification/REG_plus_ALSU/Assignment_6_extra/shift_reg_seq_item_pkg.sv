package shift_reg_seq_item_pkg;

	import uvm_pkg::*;
  	`include "uvm_macros.svh"

  	import shared_pkg::*;
  	
	class shift_reg_seq_item extends uvm_sequence_item;
	  	`uvm_object_utils(shift_reg_seq_item)

		  rand bit serial_in;
		  rand direction_e direction;
		  rand bit mode;
		  rand bit [5:0] datain;
		logic [5:0] dataout;

		function new(string name = "shift_reg_seq_item");
			super.new(name);
		endfunction

		function string convert2string();
			return $sformatf("%s  serial_in = %0xb, direction = %s, mode = %s, datain = %0xb", super.convert2string(),  serial_in, direction.name(), mode, datain);
		endfunction

		function string convert2string_stimulus();
			return $sformatf(" serial_in = %0xb, direction = %s, mode = %s, datain = %0xb", serial_in, direction.name(), mode, datain);
		endfunction
	endclass


endpackage 
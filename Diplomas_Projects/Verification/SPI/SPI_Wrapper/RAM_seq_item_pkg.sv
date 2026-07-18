package RAM_seq_item_pkg;
import uvm_pkg::*;

`include "uvm_macros.svh"

class RAM_seq_item extends uvm_sequence_item;
	`uvm_object_utils(RAM_seq_item);
     rand logic[9:0] din;
     rand logic rst_n, rx_valid;
     logic [7:0] dout;
     logic [7:0] dout_exp;
     logic tx_valid;
     logic tx_valid_exp;

     logic past_w = 0 ;  
     logic [1:0] past_r = 0 ;
     logic [1:0] past_write_r = 0 ;
     logic [1:0] past_read_w = 0 ; 


    function new(string name = "RAM_seq_item");
		super.new(name);
	endfunction : new


	function string convert2string();
		return $sformatf("%s din=%0b , rst_n=%0b , rx_valid = %0b , dout = %0b ,tx_valid = %0b  ",
			             super.convert2string(),din , rst_n , rx_valid, dout,tx_valid);		
	endfunction 

	function string convert2string_stimulus();
        return $sformatf("%s din=%0b , rst_n=%0b , rx_valid = %0b  ",
                         super.convert2string(),din , rst_n , rx_valid); 	
	endfunction 

    constraint RST {
    rst_n dist {1:/99 , 0:/1};
           
    }

    constraint RX_V {
    rx_valid dist {1:/90 , 0:/10};
           
    }

    constraint WRITE_ONLY {
     if (past_w == 0)
        din[9] != 1 ;
           
    }

    constraint READ_ONLY {
     if (past_r  == 1)
        din[9:8] != 0 ;
           
    }
    constraint WRITE_READ_W {
     if (past_write_r  == 2'b01)
        din[9:8] dist {2'b10 :/60 , 2'b00 :/40} ;
           
    }
    constraint WRITE_READ_R {
     if (past_read_w == 2'b11)
        din[9:8] dist {2'b10 :/40 , 2'b00 :/60} ;
           
    }
    function void post_randomize;
        past_w = din[9] ;
        past_r  = din[9:8] ;
        past_read_w = din[9:8] ;
       past_write_r = din[9:8] ;

    endfunction
	
endclass 
	
endpackage 
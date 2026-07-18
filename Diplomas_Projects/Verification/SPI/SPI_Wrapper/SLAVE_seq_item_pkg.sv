package SLAVE_seq_item_pkg;
import uvm_pkg::*;
import shared_pkg::*;

`include "uvm_macros.svh"

class SLAVE_seq_item extends uvm_sequence_item;
	`uvm_object_utils(SLAVE_seq_item);
      rand logic[7:0] tx_data;
     rand logic rst_n; 
     rand logic tx_valid;
     rand logic SS_n;
     rand logic MOSI;
     rand logic [10:0] seq_array ;
    logic [9:0] rx_data;
   logic rx_valid, MISO;
   logic [9:0] rx_data_exp;
   logic rx_valid_exp;
   logic MISO_exp;
   
    function new(string name = "SLAVE_seq_item");
		super.new(name);
	endfunction : new


	function string convert2string();
		return $sformatf("%s SS_n=%0b , rst_n=%0b , tx_valid = %0b , MOSI = %0b ,rx_valid = %0b , MISO=%0b , rx_data = %0b ",
			             super.convert2string(),SS_n , rst_n , tx_valid,MOSI,rx_valid,MISO,rx_data );		
	endfunction 

	function string convert2string_stimulus();
        return $sformatf("%s SS_n=%0b , rst_n=%0b , tx_valid = %0b , MOSI = %0b  ",
                         super.convert2string(),SS_n , rst_n , tx_valid,MOSI); 	
	endfunction 
/*.......................................reset constraints..........................*/
    constraint RST {
    rst_n dist {1:/99 , 0:/1};
           
    }

    constraint ss_c {
    if(rst_n){
    if(counter==0)
      {
         SS_n==1;
      }
   else {
SS_n==0;
      }
   }
   }
   /*....................................... constraints on seq array..........................*/
   constraint mosi_seq{
   
   if (rst_n==0) {
    seq_array[10:8] == 3'b000;
  }
  else if (rst_n) {
    if (old_array == 3'b000) {
      seq_array[10:8] == 3'b001;
    }
    else if (old_array == 3'b001) {
      seq_array[10:8] inside {3'b000, 3'b001, 3'b110};
    }
    else if (old_array == 3'b110) {
     seq_array[10:8] == 3'b111;
    }
    else if (old_array == 3'b111) {
      seq_array[10:8] inside {3'b000, 3'b001, 3'b110};
    }
    else {
      seq_array[10:8] inside {3'b000, 3'b001, 3'b110, 3'b111};
    }
  } 
   }
   /*.......................................tx valid constraints..........................*/
   constraint TX_V {
      if((counter>=15&&counter<23)&&store==3'b111)
         {
      tx_valid==1;
      }
      else
         {tx_valid==0;}
   }
   function void post_randomize;
     if (rst_n == 0) begin
    counter = 0;
    store=0;
    old_array=0;
    store_seq_array=0;
  end
  else begin
     if (counter==2)
      begin
         store_seq_array=seq_array;
   store[2]=store_seq_array[10];
    counter=counter+1;
   end
    else if (counter==3)
      begin
   store[1]=store_seq_array[9];
    counter=counter+1;
   end
   else if (counter==4)
      begin
   store[0]=store_seq_array[8];
    counter=counter+1;
   end
   else 
     begin
   if(counter==13&store!=3'b111)
      counter=0;
   else if (counter==23)
      counter=0;
   else
      counter=counter+1;

   end
end     
  old_array[2]=store_seq_array[10];
  old_array[1]=store_seq_array[9];
  old_array[0]=store_seq_array[8];
   // Update MOSI based on seq_array
   if(counter>=3&&counter<=13) begin
 MOSI=store_seq_array[13-counter];
end
    $display("counter %d , store %b",counter,store);
    endfunction
	
endclass 
	
endpackage 
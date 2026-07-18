package wrapper_seq_item_pkg;

	import uvm_pkg::*;
	import shared_pkg::*;
  	`include "uvm_macros.svh"

	/*.................class....................*/
	class wrapper_seq_item extends uvm_sequence_item;
	  	`uvm_object_utils(wrapper_seq_item)

/*.....................define variables..............................*/
      rand  logic MOSI;
      rand  logic SS_n;
      rand  bit rst_n;
      logic MISO;
      logic MISO_exp;
      rand logic [10:0] seq_array ;
 
         /*...........................*/

		function new(string name = "wrapper_seq_item");
			super.new(name);
		endfunction

		function string convert2string();
			return $sformatf("%s rst_n=%b,MOSI=%b,SS_n=%b,MISO=%b", super.convert2string(), 
				rst_n,MOSI,SS_n,MISO);
		endfunction

		function string convert2string_stimulus();
			return $sformatf("  rst_n=%b,MOSI=%b,SS_n=%b ", rst_n,MOSI,SS_n);
		endfunction
/*.....................................................constraints............................................................*/
/*.........constraint to force rst to be low most of the time...*/
constraint RST {
	rst_n dist{1:=99,0:=1};


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
   constraint mosi_seq_wrd{
   
   if (rst_n==0) {
    seq_array[10:8] == 3'b000;
  }
  else if (rst_n) {
    if (old_array == 3'b000) {
      seq_array[10:8] inside {3'b001,3'b000};
    }
    else if (old_array == 3'b001) {
      seq_array[10:8] dist {3'b000:=40, 3'b110:=60};
    }
    else if (old_array == 3'b110) {
     seq_array[10:8] == 3'b111;
    }
    else if (old_array == 3'b111) {
      seq_array[10:8] dist {3'b000:=60, 3'b110:=40};
    }
    else {
      seq_array[10:8] inside {3'b000, 3'b001, 3'b110, 3'b111};
    }
  } 
   }


   constraint mosi_seq_write{
   
   if (rst_n==0) {
    seq_array[10:8] == 3'b000;
  }
  else if (rst_n) {
    if (old_array == 3'b000) {
      seq_array[10:8] inside {3'b001,3'b000};
    }
    
    else if (old_array==3'b001){
      seq_array[10:8] ==3'b000;
    }
   
    else
      {
    seq_array[10:8] inside {3'b001,3'b000};
    }
  } 
   }

   constraint mosi_seq_read{
   
   if (rst_n==0) {
    seq_array[10:8] == 3'b110;
  }
  else  {
    if (old_array == 3'b110) {
      seq_array[10:8] ==3'b111;
    }
    else if (old_array==3'b111) {
      seq_array[10:8] == 3'b110;
    }
    else if (old_array==3'b000||old_array==3'b001) {
      seq_array[10:8]  == 3'b110;
    }
    else {
       seq_array[10:8] inside {3'b111, 3'b110};
      }
  } 
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
package alsu_seq_item_pkg;

	import uvm_pkg::*;
	import shared_pkg::*;
  	`include "uvm_macros.svh"

	/*.................class....................*/
	class alsu_seq_item extends uvm_sequence_item;
	  	`uvm_object_utils(alsu_seq_item)

/*.....................define variables..............................*/
      	rand logic rst;
		rand logic  signed [2:0] A,B;
		rand OP_CODE op_code;
		rand logic cin,serial_in,direction;
        rand logic red_op_a,red_op_b;
        rand logic bypass_a,bypass_b;
         rand OP_CODE array [6];
         logic signed [5:0] out;
         logic [15:0] leds;
         logic signed [5:0] expected_out;
         logic [15:0] leds_expected;

         /*...........................*/

		function new(string name = "alsu_seq_item");
			super.new(name);
		endfunction

		function string convert2string();
			return $sformatf("%s rst = %b, A = %d, B = %d,op_code= %s, cin = %b,serial_in=%b,
				direction=%b,red_op_a=%b,red_op_b=%b,bypass_a=%b,bypass_b=%b,out=%b,leds=%b", super.convert2string(), 
				rst, A,B, op_code, cin,serial_in,direction,red_op_a,red_op_b,bypass_a,bypass_b,out,leds);
		endfunction

		function string convert2string_stimulus();
			return $sformatf(" rst = %b, A = %d, B = %d,op_code= %s, cin = %b,serial_in=%b,direction=%b,
				red_op_a=%b,red_op_b=%b,bypass_a=%b,bypass_b=%b", rst, A,B, op_code, cin,serial_in,direction,red_op_a,red_op_b,bypass_a,bypass_b);
		endfunction
/*.....................................................constraints............................................................*/
/*.........constraint to force rst to be low most of the time...*/
constraint RST {
	rst dist{0:=99,1:=1};
}
/*.........op code constraint.........*/
constraint OP {
	op_code dist{OR:=30,XOR:=10,[ADD:ROTATE]:/45,[INVALID_6:INVALID_7]:/5};
}
/*............constraint A,B.......*/
constraint A_B {
/*.................forc A,B to be MAX,MIN,ZERO 90% of the time.....*/
if (op_code==ADD||op_code==MULT)
	{
	A dist{ MAXNEG:=20,MAXPOS:=40,0:=30, [-3:-1]:/5,[1:2]:/5};
	B dist{ MAXNEG:=20,MAXPOS:=40,0:=30, [-3:-1]:/5,[1:2]:/5};	
}
/*..........constraints on A when OR,XOR opcode and red_op_a=1.....*/
if((op_code==OR||op_code==XOR)&red_op_a)
	{
A dist {3'b001:=20,3'b010:=25,3'b100:=40,0:=5,3:=5,[-4:-1]:/5};
B==0;	
}
/*..........constraints on B when OR,XOR opcode and red_op_b=1.....*/
if((op_code==OR||op_code==XOR)&red_op_b)
	{
B dist {  3'b001:=20,3'b010:=25,3'b100:=40, 0:=5,3:=5,[-4:-1]:/5};
A==0;	
}
}

/*...............red_op_A,red_op_B constraints......*/
constraint red_op_A {
red_op_a dist {0:=5,1:=95};	
}
constraint red_op_B {
red_op_b dist {0:=5,1:=95};	
}
/*..................bypass A,bypass B must be disabled most of the time.......*/
constraint bypass_A {
bypass_a dist {0:=95,1:=5};		
}
constraint bypass_B {
bypass_b dist {0:=95,1:=5};		
}
////////////////////////unique constraint for the array////////////////////////
constraint X {
	foreach (array[i]){
		array[i]!={INVALID_6,INVALID_7};
		if(i==0)
		array[i]==OR;
           else if (i > 0) {
            (array[i-1] == OR) -> (array[i] == XOR);
            (array[i-1] == XOR) -> (array[i] == ADD);
            (array[i-1] == ADD) -> (array[i] == MULT);
            (array[i-1] == MULT) -> (array[i] == SHIFT);
            (array[i-1] == SHIFT) -> (array[i] == ROTATE);
        } 

		}
}

	endclass


endpackage 
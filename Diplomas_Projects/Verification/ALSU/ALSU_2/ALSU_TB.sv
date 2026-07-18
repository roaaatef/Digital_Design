/*..............importing package.......*/
import ALSU_P::*;
module ALSU_TB();
/*.........inputs and outputs......*/
bit clk, cin, rst, red_op_A, red_op_B, bypass_A, bypass_B, direction, serial_in;
logic [2:0] opcode;
logic signed [2:0] A, B;
logic [15:0] leds;
logic signed [5:0] out;
///////////////////
reg [20:0] error_count,correct_count,counter_tests;
reg signed [5:0] expected_out;
reg [15:0] leds_expected;
/*.......DUT...........*/
 ALSU #(.INPUT_PRIORITY(INPUT_PRIORITY),.FULL_ADDER(FULL_ADDER)) alsu_dut (A, B, cin, serial_in, red_op_A, red_op_B, opcode, bypass_A, bypass_B, clk, rst, direction, leds, out);
   /*...............clock generation.......*/
initial begin
	clk=1'b0;
	forever #1 clk=~clk;
end 
 /*......class object declaration........*/
 ALSU_CLASS ALSU_OBJECT;
  /*................sampling.................*/
  always @ (rst||bypass_A||bypass_B)begin
    ALSU_OBJECT.alsu_cg.stop();
  end
   always @ (!(rst||bypass_A||bypass_B))begin
    ALSU_OBJECT.alsu_cg.start();
  end
integer i;
/*............initial block........*/
initial begin
   /*......class object intialization........*/
    ALSU_OBJECT = new;  
   /*.................initialization.......*/
	error_count=0;
	correct_count=0;
  leds_expected=0;
  expected_out=0;
  opcode=0;
  counter_tests=0;
	//reset check//
	$display("test reset");
	reset();
	/*............... stimulus generation(randomization) ........*/
  ///////////////////****first loop****//////////////////	
	for ( i=0;i<20000;i=i+1) begin
    //////increment the counter////////
    counter_tests=counter_tests+1;
    ////disable constraints number 8//////
    ALSU_OBJECT.X.constraint_mode(0);
		$display("tset case %d ",counter_tests);
		assert(ALSU_OBJECT.randomize());
		/*.........stimulus generation.............*/
		rst=ALSU_OBJECT.rst;
       cin=ALSU_OBJECT.cin;
     serial_in=ALSU_OBJECT.serial_in;
      direction=ALSU_OBJECT.direction;
      red_op_A=ALSU_OBJECT.red_op_a;
      red_op_B=ALSU_OBJECT.red_op_b;
      bypass_A=ALSU_OBJECT.bypass_a;
     bypass_B=ALSU_OBJECT.bypass_b;
     opcode=ALSU_OBJECT.op_code;
     A=ALSU_OBJECT.A;
     B=ALSU_OBJECT.B;
     expected_result();
		check_result();
     expected_result();
		$display("time %0t",$time);
	end	
  ///////////////////////***** before second loop*****/////////////////////
      ////disable all constraints //////
  ALSU_OBJECT.constraint_mode(0);
  ///directed value for some inputs///////
  rst=0;
  bypass_A=0;
  bypass_B=0;
  red_op_A=0;
  red_op_B=0;
  ///////////////////////*****  second loop*****/////////////////////
  for (int i=0;i<1000;i=i+1) begin
      //////increment the counter////////
    counter_tests=counter_tests+1;
    ALSU_OBJECT.X.constraint_mode(1);
    $display("tset case %d ",counter_tests);
    assert(ALSU_OBJECT.randomize());
      rst=ALSU_OBJECT.rst;
       cin=ALSU_OBJECT.cin;
     serial_in=ALSU_OBJECT.serial_in;
      direction=ALSU_OBJECT.direction;
     A=ALSU_OBJECT.A;
     B=ALSU_OBJECT.B;
     ////////nested loop to assign opcode unique values/////////
      for (int j=0;j<6;j=j+1)begin
          opcode=ALSU_OBJECT.array[j];
          ALSU_OBJECT.op_code=ALSU_OBJECT.array[j];
          expected_result();
          check_result();
        expected_result();
        $display("time %0t",$time);
      end

  end
     /*.................print error count and correct count values............*/
	$display("the value of error_count is %d and the value of correct_count is %d",error_count,correct_count);
	#100;
	$stop;
end
 /*...............RST task............*/
task reset;
rst=1'b1;
check_result();
rst=1'b0;
endtask
/*......... expected result task......*/
task expected_result;
  if(rst)begin
  expected_out=0;
  leds_expected=0;
end
else begin
   if (bypass_A && bypass_B)
      expected_out = (INPUT_PRIORITY == "A")? A: B;
    else if (bypass_A)
      expected_out = A;
    else if (bypass_B)
      expected_out = B;
    else if (((red_op_A || red_op_B) & (opcode[1] || opcode[2]))||(opcode[1] & opcode[2])) 
        expected_out = 0;
    else begin
        case (opcode)
          3'd0: begin 
            if (red_op_A && red_op_B)
              expected_out = (INPUT_PRIORITY == "A")? |A: |B;
            else if (red_op_A) 
              expected_out = |A;
            else if (red_op_B)
              expected_out = |B;
            else 
            expected_out  = A | B;
          end
          3'd1: begin
            if (red_op_A && red_op_B)
              expected_out = (INPUT_PRIORITY == "A")? ^A: ^B;
            else if (red_op_A) 
              expected_out = ^A;
            else if (red_op_B)
              expected_out = ^B;
            else 
              expected_out = A^ B;
          end
          3'd2: begin
            if(FULL_ADDER=="ON")
          expected_out = A + B+cin;
        else
           expected_out = A + B;
       end
          3'd3: expected_out = A * B;
          3'd4: begin
            if (direction)
              expected_out = {expected_out[4:0], serial_in};
            else
              expected_out = {serial_in, expected_out[5:1]};
          end
          3'd5: begin
            if (direction)
              expected_out = {expected_out[4:0], expected_out[5]};
            else
              expected_out = {expected_out[0], expected_out[5:1]};
          end
        endcase

    end 
 leds_expected=(((red_op_A || red_op_B) & (opcode[1] || opcode[2]))||(opcode[1] & opcode[2]))?(~leds_expected):0;
  end
endtask
/*........... check result task............*/
task check_result;
if(rst)begin
repeat(2) @(negedge clk);
if(out==6'd0&leds==0) begin
	$display(".............passed.........");
	$display("out is %d",out);
	correct_count=correct_count+1;
end
else begin
	$display("................failed............ ");
	error_count=error_count+1;
  $stop;
end	
end
else begin

  repeat(2) @(negedge clk);
      ALSU_OBJECT.alsu_cg.sample();
if((out==expected_out)&(leds==leds_expected)) begin
	$display(".............passed........ ");
	$display(" value of  A %b , value of B %b ,value  of OPCODE is %b ,serial_in value is %d , direction value  is %b , cin value  is %b",A,B,opcode,serial_in,direction,cin); 
		$display("value of red_op_B is %b,value of red_op_A is %b ,bypass_A valus is %b,bypass_B value is %b, out value is %b,leds value is %b ",red_op_B,red_op_A,bypass_A,bypass_B,out,leds);
	correct_count=correct_count+1;
end
else begin
	$display("..................failed............ ");
	error_count=error_count+1;
  $stop;
end
end
endtask
endmodule 


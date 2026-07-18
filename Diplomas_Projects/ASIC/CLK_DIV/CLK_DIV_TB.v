module CLK_DIV_TB();
	//inputs and outputs
	reg i_ref_clk_tb;
reg i_rst_n_tb;
reg i_clk_en_tb;
reg  [7:0] i_div_ratio_tb;
wire o_div_clk_tb;
//DUT instantiation
 CLOCK_DIV clk_div (i_ref_clk_tb,i_rst_n_tb,i_clk_en_tb,i_div_ratio_tb,o_div_clk_tb);
 //parameters
 parameter CLK_PERIOD=20;
 parameter HALF_PERIOD=CLK_PERIOD/2;
 
 //clock generation 
 always #(HALF_PERIOD) i_ref_clk_tb=~i_ref_clk_tb;
 //initialization 
task initialize;
 begin
 i_div_ratio_tb=8'd2;
i_ref_clk_tb = 1'b0 ;
  i_clk_en_tb=1'b1;
 end
endtask
//reset task
task reset;
 begin
i_rst_n_tb =  1'b1;
 #(CLK_PERIOD);
  i_rst_n_tb  = 1'b0;
  #(CLK_PERIOD);
   chk_rst;
  i_rst_n_tb  = 1'b1;
   #(CLK_PERIOD);
end
endtask
//test check reset
task chk_rst;
begin
	if (o_div_clk_tb!=0)begin
		$display("error test case.......failed ");
		$stop;
	end
	else begin
		$display("test case passed");
	end
end
endtask
//task to generate cases
task generate_case;
input [7:0] div_ratio;
input en;
begin
	i_div_ratio_tb=div_ratio;
	i_clk_en_tb=en;

end
endtask
//
initial begin
 $dumpfile("UART_RX.vcd");
     $dumpvars;
     initialize();
//test case to check reset 
reset ();
/*.....................................test cases for even div ratio............................*/
////////div ratio=0,en=1////////////
$display("at time %t test case 1",$time);
generate_case(0,1);
#(20*CLK_PERIOD);
/////////////div ratio=2 , en=0/////////
$display("at time %t test case 2",$time);
generate_case(2,0);
#(20*CLK_PERIOD);
/////////////div ratio=2 , en=1/////////
$display("at time %t test case 3",$time);
generate_case(2,1);
#(20*CLK_PERIOD);
/////////////div ratio=4 , en=1/////////
$display("at time %t test case 4",$time);
generate_case(4,1);
#(20*CLK_PERIOD);
/////////////div ratio=8 , en=1/////////
$display("at time %t test case 5",$time);
generate_case(8,1);
#(50*CLK_PERIOD);
/////////////div ratio=16 , en=1/////////
$display("at time %t test case 6",$time);
generate_case(16,1);
#(50*CLK_PERIOD);
/////////////div ratio=32 , en=1/////////
$display("at time %t test case 7",$time);
generate_case(32,1);
#(50*CLK_PERIOD);
/*.....................................test cases for odd div ratio............................*/
////////div ratio=1,en=0////////////
$display("at time %t test case 8",$time);
generate_case(1,0);
#(20*CLK_PERIOD);
/////////////div ratio=1 , en=1/////////
$display("at time %t test case 9",$time);
generate_case(1,1);
#(20*CLK_PERIOD);
/////////////div ratio=3 , en=1/////////
$display("at time %t test case 10",$time);
generate_case(3,1);
#(50*CLK_PERIOD);
/////////////div ratio=5 , en=0/////////
$display("at time %t test case 11",$time);
generate_case(5,1);
#(50*CLK_PERIOD);
/////////////div ratio=7 , en=1/////////
$display("at time %t test case 12",$time);
generate_case(7,1);
#(50*CLK_PERIOD);
/////////////div ratio=9 , en=1/////////
$display("at time %t test case 13",$time);
generate_case(9,1);
#(50*CLK_PERIOD);
/////////////div ratio=11 , en=1/////////
$display("at time %t test case 14",$time);
generate_case(11,1);
#(50*CLK_PERIOD);
/////////////div ratio=13 , en=1/////////
$display("at time %t test case 15",$time);
generate_case(13,1);
#(50*CLK_PERIOD);
/////////////div ratio=15 , en=1/////////
$display("at time %t test case 16",$time);
generate_case(15,1);
#(50*CLK_PERIOD);
/*.....................................test corner cases............................*/
/*...................test case 1 : transition from odd to even.......*/
$display("at time %t test case 17",$time);
generate_case(6,1);
#(60*CLK_PERIOD);
/*......................test case 2 : transition from div ratio = 6 to div ratio=4...*/
generate_case(4,1);
#(40*CLK_PERIOD);
/*......................test case 3 : transition from div ratio = 7 to div ratio=5...*/
$display("at time %t test case 18",$time);
generate_case(7,1);
#(70*CLK_PERIOD);
generate_case(5,1);
#(50*CLK_PERIOD);
/*......................test case 4 : en=0...*/
$display("at time %t test case 19",$time);
generate_case(7,0);
#(40*CLK_PERIOD);
/*......................test case 5 ...*/
$display("at time %t test case 20",$time);
generate_case(2,1);
#(39*CLK_PERIOD);
generate_case(5,1);
#(49*CLK_PERIOD);
generate_case(4,1);
#(39*CLK_PERIOD);
$stop;
end
endmodule
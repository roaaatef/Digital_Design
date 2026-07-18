`timescale 10ns/1ps
module CRC_TB();
reg ACTIVE_tb;
reg CLK_tb,RST_tb;
reg DATA_tb;
wire CRC_tb,Valid_tb;
//
//instantiation of DUT//
CRC crc (.ACTIVE(ACTIVE_tb),.CLK(CLK_tb),.RST(RST_tb),.DATA(DATA_tb), .CRC(CRC_tb),.Valid(Valid_tb));
//
parameter CLK_PERIOD=10;
parameter HALF_CLK=0.5*CLK_PERIOD;
//parameter SEED_tb=8'b11011000;
parameter CRC_WD=8;
parameter TEST_CASES=10;
//
//memory element for testing
reg [CRC_WD-1:0] EXP_OUT [TEST_CASES-1:0];
reg [CRC_WD-1:0] DATA_TB [TEST_CASES-1:0];
//
//////////////////clk generation///////////////
always #(HALF_CLK) CLK_tb=~CLK_tb;
/****tasks of the design****/
///////////////intuialization of inputs//////////////////
task initialization;
 begin
  ACTIVE_tb = 1'b0 ;
  DATA_tb = 1'b0 ;
 CLK_tb = 1'b0 ; 
 end
endtask
///////////////////reset the system///////////
task reset;
 begin
RST_tb =  1'b1;
 #(CLK_PERIOD)
RST_tb  = 1'b0;
 #(CLK_PERIOD)
RST_tb  = 'b1;
 end
endtask
//////////////operation///////////////////
task operation;
input reg [CRC_WD-1:0] data;
integer i;
begin
ACTIVE_tb=1'b1;
for (i=0;i<CRC_WD;i=i+1)
begin
	DATA_tb=data[i];
	#(CLK_PERIOD);

end
ACTIVE_tb=1'b0;
end
endtask
//////////////check output//////////////////
task check_out;
input [CRC_WD-1:0] EXP;
input integer num;
reg [CRC_WD-1:0] out;

integer j;
begin
        
	for(j=0;j<CRC_WD;j=j+1) begin
#(CLK_PERIOD);
		out[j]=CRC_tb;
		
	end
	if(out==EXP) begin
		$display("test case number %d passed",num+1);
	end
	else begin
		$display("test case number %d failed",num+1);
	end
end
endtask



 integer r;
initial begin
	$dumpfile("CRC.vcd") ;       
    $dumpvars;
    $readmemh("DATA_h.txt", DATA_TB);
    $readmemh("Expec_Out_h.txt", EXP_OUT);
    initialization();
    for(r=0;r<TEST_CASES;r=r+1) begin
         reset();
    	operation(DATA_TB[r]);
    	check_out(EXP_OUT[r],r);
    end
     #(10*CLK_PERIOD);
$stop;

end 
endmodule
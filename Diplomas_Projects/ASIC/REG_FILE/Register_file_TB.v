`timescale 1ns/1ps
module Register_file_TB();
reg [15:0] WrData_tb;
reg CLK_tb,RST_tb;
reg WrEn_tb,RdEn_tb;
reg [2:0] Address_tb;
wire  [15:0] RdData_tb;
Register_file Reg_file ( .WrData(WrData_tb),.CLK(CLK_tb),.RST(RST_tb),.WrEn(WrEn_tb),.RdEn(RdEn_tb), .Address(Address_tb), .RdData(RdData_tb));
//
always #5 CLK_tb=~CLK_tb;
//
initial 
begin
	$dumpfile("Reg_file.vcd");
	$dumpvars;
	$monitor ("WrData_tb=%d,WrEn_tb=%d,RdEn_tb=%b,Address_tb=%b,RdData_tb=%b,time=%0t",WrData_tb,WrEn_tb,RdEn_tb,Address_tb,RdData_tb,$time);
	CLK_tb=1'b0;
	WrData_tb=16'b0;
	WrEn_tb=1'b0;
	RdEn_tb=1'b0;
	Address_tb=3'b000;
	RST_tb=1'b0;
	//test at first the RST signal to insure it is ASYNCHRONUS i put a delay 2 nano seconds to ensure in works before the clk edge
	#2;
	$display("reset value is : %b at time :%t",RST_tb,$time);
	RST_tb=16'b1;
	#8;
	RST_tb=1'b0;
	//test case 1 : WrEn=1 , RdEn=0 
	$display ("test case 1:");
	WrData_tb=16'd25;
	WrEn_tb=1'b1;
	Address_tb=3'b001;
	#10;
	if(Reg_file.Reg_File[Address_tb]==WrData_tb)
	begin
	$display("test case 1 passed");
	$display("the Data %d is wrriten in Reg_file[%d]",WrData_tb,Address_tb);
	end
	else begin
		$display("test case 1 failed");
	end
	//test case 2 : WrEn=0 , RdEn=1
	$display("test case 2:");
	WrEn_tb=1'b0;
	RdEn_tb=1'b1;
	#10;
	if(RdData_tb!=Reg_file.Reg_File[Address_tb])
	begin
		$display("failed");
	end
	else begin
	    $display("test case 2 passed");
 		$display("the Data %d has been read from Reg_file[%d]",RdData_tb,Address_tb);
	end
	//test case 3 : WrEn=1 , RdEn=1
	$display("test case 3:");
	WrEn_tb=1'b1;
	WrData_tb=16'd40;
	Address_tb=3'b010;
	#10;
	if((Reg_file.Reg_File[Address_tb]!=WrData_tb)&&(RdData_tb!=Reg_file.Reg_File[Address_tb]))
	begin
		$display("test case 3 passed");
	end
	else begin
		$display("test case 3 failed");
	end
	//test case 4 : WrEn=1 , RdEn=0 
	$display ("test case 4:");
	WrData_tb=16'd50;
	WrEn_tb=1'b1;
	RdEn_tb=1'b0;
	Address_tb=3'b100;
	#10;
	if(Reg_file.Reg_File[Address_tb]==WrData_tb)
	begin
	$display("test case 4 passed");
	$display("the Data %d is wrriten in Reg_file[%d]",WrData_tb,Address_tb);
	end
	else begin
		$display("test case 4 failed");
	end
	//test case 5 : WrEn=0 , RdEn=1
	$display("test case 5:");
	WrEn_tb=1'b0;
	RdEn_tb=1'b1;
	#10;
	if(RdData_tb!=Reg_file.Reg_File[Address_tb])
	begin
		$display("failed");
	end
	else begin
	    $display("test case 5 passed");
		$display("the Data %d has been read from Reg_file[%d]",RdData_tb,Address_tb);
	end

$stop;
end
endmodule
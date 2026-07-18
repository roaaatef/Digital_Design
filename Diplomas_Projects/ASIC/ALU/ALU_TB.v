`timescale 1us/1ps
module ALU_TB ();
reg [15:0] A_tb,B_tb;
reg CLK_tb;
reg [3:0] ALU_FUN_tb;
wire [15:0] ALU_OUT_tb;
reg [15:0] ALU_temp;
wire Carry_flag_tb,Arith_flag_tb,Logic_flag_tb,CMP_flag_tb,Shift_flag_tb;
//
ALU alu (.A(A_tb),.B(B_tb),.CLK(CLK_tb),.ALU_FUN(ALU_FUN_tb),.ALU_OUT(ALU_OUT_tb),.Carry_Flag(Carry_flag_tb),.Arith_flag(Arith_flag_tb),.Logic_flag(Logic_flag_tb),.CMP_flag(CMP_flag_tb),.Shift_flag(Shift_flag_tb));
//
always #5 CLK_tb=~CLK_tb;
//
initial 
begin
	$dumpfile("ALU.vcd");
	$dumpvars;
	$monitor ("A_tb=%d,B_tb=%d,ALU_FUN_tb=%b",A_tb,B_tb,ALU_FUN_tb);
	CLK_tb=1'b0;
	ALU_FUN_tb=4'b1111;
	A_tb=16'b00;
	B_tb=16'b00;
	#10;
	//test the addition operation
	$display("test case 1:");
	A_tb=16'd5;
	B_tb=16'd20;
        ALU_FUN_tb=4'b0000;
	#10;
	if(ALU_OUT_tb==A_tb+B_tb)
	begin
		$display("test case 1 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 1 failed");
	end
    //test carry flag 
    $display("test case 2:");
    A_tb=16'b1;
    B_tb=16'd65535;
    #10;
    if({Carry_flag_tb,ALU_OUT_tb}==A_tb+B_tb)
	begin
		$display("test case 2 passed");
		$display("ALU_OUT_tb=%d,Carry_flag_tb=%b,time=%0t",ALU_OUT_tb,Carry_flag_tb,$time);
	end
	else begin
		$display("test case 2 failed");
	end
	//test subtraction operation 
	$display("test case 3:");
	ALU_FUN_tb=4'b0001;
	A_tb=16'd5;
	B_tb=16'd3;
	#10;
	if(ALU_OUT_tb==A_tb-B_tb)
	begin
		$display("test case 3 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 3 failed");
	end
	// test mul operation
	$display("test case 4:");
	ALU_FUN_tb=4'b0010;
	A_tb=16'd5;
	B_tb=16'd3;
	#10;
	if(ALU_OUT_tb==A_tb*B_tb)
	begin
		$display("test case 4 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 4 failed");
	end
	// test div op 
	$display("test case 5:");
	ALU_FUN_tb=4'b0011;
	A_tb=16'd20;
	B_tb=16'd5;
	#10;
	if(ALU_OUT_tb==A_tb/B_tb)
	begin
		$display("test case 5 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 5 failed");
	end
	// test div op with B=0
	$display("test case 6:");
	ALU_FUN_tb=4'b0011;
	A_tb=16'd20;
	B_tb=16'b0;
    ALU_temp=ALU_OUT_tb;
	#10;
	if(ALU_OUT_tb==ALU_temp)
	begin
		$display("test case 6 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 6 failed");
	end
	// test AND op 
	$display("test case 7:");
	ALU_FUN_tb=4'b0100;
	A_tb=16'b1111;
	B_tb=16'b0101;
	#10;
	if(ALU_OUT_tb==(A_tb&B_tb) & Logic_flag_tb==1'b1)
	begin
		$display("test case 7 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 7 failed");
	end
	// test NAND op 
	$display("test case 8:");
	ALU_FUN_tb=4'b0110;
	A_tb=16'b1111;
	B_tb=16'b0101;
	#10;
	if(ALU_OUT_tb==(~(A_tb&B_tb)) & Logic_flag_tb==1'b1)
	begin
		$display("test case 8 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 8 failed");
	end
	// test OR op 
	$display("test case 9:");
	ALU_FUN_tb=4'b0101;
	A_tb=16'b0011;
	B_tb=16'b0110;
	#10;
	if(ALU_OUT_tb==(A_tb|B_tb)&Logic_flag_tb==1'b1)
	begin
		$display("test case 9 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 9 failed");
	end
	// test NOR op 
	$display("test case 10:");
	ALU_FUN_tb=4'b0111;
	A_tb=16'b0111;
	B_tb=16'b0010;
	#10;
	if(ALU_OUT_tb==(~(A_tb|B_tb))&Logic_flag_tb==1'b1)
	begin
		$display("test case 10 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 10 failed");
	end
	//test Equal operation
	$display("test case 11:");
	ALU_FUN_tb=4'b1010;
	A_tb=16'b0111;
	B_tb=16'b0111;
	#10;
	if(ALU_OUT_tb==(16'b1) &CMP_flag_tb==1'b1)
	begin
		$display("test case 11 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 11 failed");
	end
	//test Greater operation
	$display("test case 12:");
	ALU_FUN_tb=4'b1011;
	A_tb=16'b0111;
	B_tb=16'b1111;
	#10;
	if(ALU_OUT_tb==(16'b0) & CMP_flag_tb==1'b1)
	begin
		$display("test case 12 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 12 failed");
	end
	//test less operation
    $display("test case 13:");
	ALU_FUN_tb=4'b1100;
	A_tb=16'b0111;
	B_tb=16'b1111;
	#10;
	if(ALU_OUT_tb==(16'b11) &CMP_flag_tb==1'b1)
	begin
		$display("test case 13 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 13 failed");
	end
	//test shift left
	$display("test case 14:");
	ALU_FUN_tb=4'b1110;
	A_tb=16'b0111;
	#10;
	if(ALU_OUT_tb==(A_tb<<1)&Shift_flag_tb==1'b1)
	begin
		$display("test case 14 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 14 failed");
	end
	//test shift right
	$display("test case 15:");
	ALU_FUN_tb=4'b1101;
	A_tb=16'b0111;
	
	#10;
	if(ALU_OUT_tb==(A_tb>>1)&Shift_flag_tb==1'b1)
	begin
		$display("test case 15 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 15 failed");
	end
	//test NOP
	$display("test case 16:");
	ALU_FUN_tb=4'b1111;
	A_tb=16'b0111;
	B_tb=16'b0110;
	#10;
	if(ALU_OUT_tb==16'b0)
	begin
		$display("test case 16 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 16 failed");
	end
	//test XOR
	$display("test case 17:");
	ALU_FUN_tb=4'b1000;
	A_tb=16'b0111;
	B_tb=16'b0010;
	#10;
	if(ALU_OUT_tb==((A_tb^B_tb))&Logic_flag_tb==1'b1)
	begin
		$display("test case 17 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 17 failed");
	end
	//test XNOR
	$display("test case 18:");
	ALU_FUN_tb=4'b1001;
	A_tb=16'b0111;
	B_tb=16'b0010;
	#10;
	if(ALU_OUT_tb==(~(A_tb^B_tb)) &Logic_flag_tb==1'b1)
	begin
		$display("test case 18 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 18 failed");
	end
	//test borrow 
    $display("test case 19:");
	ALU_FUN_tb=4'b0001;
	A_tb=16'b0111;
	B_tb=16'b0010;
	#10;
	if(ALU_OUT_tb==((A_tb-B_tb)) &Carry_flag_tb==1'b0)
	begin
		$display("test case 19 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 19 failed");
	end
	//test borrow 
    $display("test case 20:");
	ALU_FUN_tb=4'b0001;
	A_tb=16'b0010;
	B_tb=16'b0111;
	#10;
	if(ALU_OUT_tb==((A_tb-B_tb)) &Carry_flag_tb==1'b1)
	begin
		$display("test case 20 passed");
		$display("ALU_OUT_tb=%d,time=%0t",ALU_OUT_tb,$time);
	end
	else begin
		$display("test case 20 failed");
	end
	$stop;

   
end
endmodule 


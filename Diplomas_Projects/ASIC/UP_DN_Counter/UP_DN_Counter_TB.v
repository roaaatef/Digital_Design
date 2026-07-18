`timescale 1ns/1ps
module UP_DN_Counter_TB();
//declare testbench signals
reg [4:0] IN_tb;
reg Load_tb;
reg UP_tb,DOWN_tb;
reg CLK_tb;
wire [4:0] COUNTER_tb;
wire HIGH_tb,LOW_tb;
//DUT instantiation
UP_DN_Counter up_dn (.IN(IN_tb),.CLK(CLK_tb),.Load(Load_tb),.UP(UP_tb),.DOWN(DOWN_tb),.LOW(LOW_tb),.HIGH(HIGH_tb),.COUNTER(COUNTER_tb));
//clock generation 
always #5 CLK_tb=~CLK_tb;
// initial block
initial 
begin
	$dumpfile("UP_DN_Counter.vcd");
	$dumpvars;
	CLK_tb=1'b0;
	Load_tb=1'b0;
	UP_tb=1'b0;
	DOWN_tb=1'b0;
	IN_tb=5'b00111;
	#10;
	//
	$display("test case 1 :");
	$display("test the priority of load signal");
	UP_tb=1'b1;
	DOWN_tb=1'b1;
	Load_tb=1'b1;
	#10;
	if(COUNTER_tb==5'b00111)
	begin
	   $display ("test case 1 is passed ");
	   $display("COUNTER_tb=%b,time=%0t",COUNTER_tb,$time);
	end
	else begin
		$display ("test case 1 is failed ");
	end
    IN_tb=5'b01111;
    #10;
    if(COUNTER_tb==5'b01111)
	begin
	   $display ("test case 1 is passed ");
	   $display("COUNTER_tb=%b,time=%0t",COUNTER_tb,$time);
	end
	else begin
		$display ("test case 1 is failed ");
	end
	//
    $display("test case 2 :");
	$display("test the priority of up and down signals");
	Load_tb=1'b0;
	UP_tb=1'b1;
	DOWN_tb=1'b1;
    #10;
    if(COUNTER_tb==5'b01110)
	begin
	   $display ("test case 2 is passed ");
	   $display("COUNTER_tb=%b,time=%0t",COUNTER_tb,$time);
	end
	else begin
		$display ("test case 2 is failed ");
	end
	//
	$display("test case 3:");
    Load_tb=1'b1;
    IN_tb=5'b00100;
    #10;
    Load_tb=1'b0;
    #50;
    if(COUNTER_tb==5'b00000)
	begin
	   $display ("test case 3 is passed ");
	   $display("COUNTER_tb=%b,time=%0t",COUNTER_tb,$time);
	end
	else begin
		$display ("test case 3 is failed ");
    end
    //
	$display("test case 4 :");
	Load_tb=1'b1;
	IN_tb=5'b01110;
	UP_tb=1'b0;
	#10;
	Load_tb=1'b0;
	#10;
	if(COUNTER_tb==5'b01101)
	begin
	   $display ("test case 4 is passed ");
	   $display("COUNTER_tb=%b,time=%0t",COUNTER_tb,$time);
	end
	else begin
		$display ("test case 4 is failed ");
	end
	//
	$display("test case 5 :");
    UP_tb=1'b1;
    DOWN_tb=1'b0;
    #10;
    if(COUNTER_tb==5'b01110)
	begin
	   $display ("test case 5 is passed ");
	   $display("COUNTER_tb=%b,time=%0t",COUNTER_tb,$time);
	end
	else begin
		$display ("test case 5 is failed ");
	end
	//
    $display("test case 6 :");
    $display("test low signal");
     UP_tb=1'b0;
    DOWN_tb=1'b1;
    #140;
    if(COUNTER_tb==5'b00000 && LOW_tb==1'b1)
	begin
	   $display ("test case 6 is passed ");
	   $display("COUNTER_tb=%b, LOW_tb=%b,time=%0t",COUNTER_tb,LOW_tb,$time);
	end
	else begin
		$display ("test case 6 is failed ");
	end
	//
	$display("test case 7 :");
    $display("test high signal");
    UP_tb=1'b1;
    DOWN_tb=1'b0;
    IN_tb=5'd28;
    Load_tb=1'b1;
    #10;
    Load_tb=1'b0;
    #30;
    if(COUNTER_tb==5'b11111 && HIGH_tb==1'b1)
	begin
	   $display ("test case 7 is passed ");
	   $display("COUNTER_tb=%b, HIGH_tb=%b,time=%0t",COUNTER_tb,HIGH_tb,$time);
	end
	else begin
		$display ("test case 7 is failed ");
	end
	$stop;
end
endmodule
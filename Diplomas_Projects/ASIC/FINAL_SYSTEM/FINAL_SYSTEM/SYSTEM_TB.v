`timescale 1ns/1ps
module SYSTEM_TB();
/*............................inputs and outputs and design parameters............*/
//parametrs
parameter DATA_WIDTH=8;
parameter FUNC=4;
parameter DEPTH=16;
parameter ADDR=4;
parameter NUM_STAGES=2;
parameter ADDR_WIDTH=3;
parameter BUS_WIDTH=4;
parameter DIV_WIDTH=8;
//inputs and outputs
reg RX_IN;
wire TX_OUT;
reg REF_CLK,UART_CLK;
reg RST;
wire STP_ERR,PAR_ERR;
/*...................................DUT..........................*/
 SYSTEM_TOP
#(DATA_WIDTH,FUNC,DEPTH,ADDR,NUM_STAGES,ADDR_WIDTH,BUS_WIDTH,DIV_WIDTH)
DUT (RX_IN,TX_OUT,REF_CLK,UART_CLK,RST,
STP_ERR,PAR_ERR
	);
/*....................CLOCK parametrs...........................*/
parameter REF_CLK_PERIOD=20;
parameter REF_CLK_HALF_PERIOD=REF_CLK_PERIOD/2.0;
parameter UART_CLK_PERIOD = 271.2673611;
parameter UART_CLK_HALF_PERIOD=UART_CLK_PERIOD/2.0;
/*...........................CLOCK generation.................*/
always #(REF_CLK_HALF_PERIOD) REF_CLK=~REF_CLK;
always #(UART_CLK_HALF_PERIOD) UART_CLK=~UART_CLK;
/*.............................additional signals....................*/
reg [10:0] DATA_STORE_p;
reg [9:0] DATA_STORE_np;
reg [10:0] out_check_value;
reg [15:0] alu_chk;
/*......................initialization task.................*/
task initialize;
	begin
RX_IN=1;
REF_CLK=0;
UART_CLK=0;
DATA_STORE_p=0;
DATA_STORE_np=0;
 out_check_value=0;
 alu_chk=0;
end
endtask
/*.....................RESET tasks..................*/
task reset;
	begin
		RST=1;
		#(REF_CLK_PERIOD);
		RST=0;
		#(REF_CLK_PERIOD);
		RST=1;
	    #(REF_CLK_PERIOD);
	end
endtask
/*......................generate data task.....................*/
task generate_data;
input [7:0] DATA;
integer i;
	begin		
		///////parity enabled and even parity//////////
if(DUT.reg_file.REG2[0]==1&DUT.reg_file.REG2[1]==0)	 begin
	DATA_STORE_p={1'b0,DATA,^DATA,1'b1};
	////////assign values to rx_in///////////////
	for(i=0;i<11;i=i+1)begin
		RX_IN=DATA_STORE_p[10-i];
		@(negedge DUT.uart.TX_CLK);
	end
end
///////parity enabled and odd parity//////////
else if (DUT.reg_file.REG2[0]==1&DUT.reg_file.REG2[1]==1) begin
	DATA_STORE_p={1'b0,DATA,~^DATA,1'b1};
		////////assign values to rx_in///////////////
	for(i=0;i<11;i=i+1)begin
		RX_IN=DATA_STORE_p[10-i];
		@(negedge DUT.uart.TX_CLK);
	end
end	
///////parity enabled and no parity//////////
else if (DUT.reg_file.REG2[0]==0&DUT.reg_file.REG2[1]==1) begin
	DATA_STORE_np={1'b0,DATA,1'b1};
			////////assign values to rx_in///////////////
	for(i=0;i<10;i=i+1)begin
		RX_IN=DATA_STORE_np[9-i];
		@(negedge DUT.uart.TX_CLK);
	end
end
end
endtask
/*................................store value task.....................*/
task store_value;
	integer i;
	begin		
 @ ( negedge TX_OUT);
 @(negedge DUT.uart.TX_CLK);
 	///////parity enabled and even parity//////////
if(DUT.reg_file.REG2[0]==1)	 begin
	for(i=0;i<11;i=i+1)begin
		out_check_value[i]=TX_OUT;
		@(negedge DUT.uart.TX_CLK);
	end
end
///////parity enabled and odd parity//////////
else if (DUT.reg_file.REG2[0]==0) begin
	for(i=0;i<10;i=i+1)begin
		out_check_value[i]=TX_OUT;
		@(negedge DUT.uart.TX_CLK);
	end
end	
end 	
endtask
/*.............................check output task.......................*/
task check_out_alu;
	begin
	if(DUT.alu.ALU_OUT!=alu_chk) begin
		$display("error.................test case failed");
		$display("ALU OUT is : %b & alu_chk value is : %b",DUT.alu.ALU_OUT,alu_chk);
	end	
	else begin
		$display(".................test case passed");
		$display("ALU OUT is : %b & alu_chk value is : %b",DUT.alu.ALU_OUT,alu_chk);
	end	
	end
endtask
/*.............................check output task.......................*/
task check_out_reg_file;
	begin
	if(DUT.reg_file.RdData!=out_check_value[8:1]) begin
		$display("error.................test case failed");
		$display("RdData value is : %b & out_check_value[8:1] value is : %b",DUT.reg_file.RdData,out_check_value[8:1]);
	end	
	else begin
		$display(".................test case passed");
		$display("RdData value is : %b & out_check_value[8:1] value is : %b",DUT.reg_file.RdData,out_check_value[8:1]);
	end
	end
endtask
	/*........................stimulus generation.......................*/
integer i ;
initial begin
		 $dumpfile("SYSTEM.vcd");
   $dumpvars;
 ///////////////////////............initialization of the system...................////////////
 	initialize();
	reset();
	@(negedge DUT.uart.TX_CLK);
	/*...............default configuration prescale=32,par_typ=0,par_en=1.........................*/
	/*...................test case 1 write in register.................*/
	$display("test case 1 : write in the register file");	
	generate_data(8'b10101010); //sending 8'hAA command to write
 repeat (5) @(negedge DUT.uart.TX_CLK);
 generate_data(8'b11001100);
  repeat (5) @(negedge DUT.uart.TX_CLK);
  generate_data(8'b11001100);
   repeat (5) @(negedge DUT.uart.TX_CLK);
   	/*...................test case 2 read from register.................*/
	$display("test case 2 : read from the register file");	
   generate_data(8'b10111011); //sending 8'hBB command to read
     repeat (5) @(negedge DUT.uart.TX_CLK);
     generate_data(8'b11001100);
     store_value();
     check_out_reg_file();
	repeat (5) @(negedge DUT.uart.TX_CLK);
	/*................................test case 3 : alu with operand CMD................*/
	$display("test case 3 : alu with operand CMD");
	generate_data(8'b11001100); //sending 8'hCC command to store a,b in reg file
	repeat (5) @(negedge DUT.uart.TX_CLK);
	$display("sending A value");
	generate_data(8'b00001010); //A VALUE
	repeat (5) @(negedge DUT.uart.TX_CLK);
	$display("sending B value");
	generate_data(8'b00010100); //B VALUE
	repeat (5) @(negedge DUT.uart.TX_CLK);
	$display("sending ALU FUNC value");
    generate_data(8'b00000010); //ALU FUNC VALUE
	store_value();    
    alu_chk[7:0] = out_check_value[8:1];
    store_value();
    alu_chk[15:8]=out_check_value[8:1];
    check_out_alu();
    /*.............................test case 4 : alu with out operand CMD...............*/
    $display("test case 4 : alu with out operand CMD");
    generate_data(8'b11011101); //sending 8'hDD commad
    repeat (5) @(negedge DUT.uart.TX_CLK);
    $display("sending ALU FUNC value");
    generate_data(8'b00000000); //ALU FUNC VALUE
	store_value(); 
	alu_chk[7:0] = out_check_value[8:1];
    store_value();
    alu_chk[15:8]=out_check_value[8:1];
    check_out_alu();
	repeat (50) @(negedge DUT.uart.TX_CLK);
	$stop;

end
endmodule


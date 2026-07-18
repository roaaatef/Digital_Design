`timescale 1ns/1ps
module FIFO_TB();
	/*...............parameters........*/
	parameter DATA_WIDTH=8;
	parameter BUS_WIDTH=4;
	parameter ADDR_WIDTH=3;
/*...............inputs and outputs.............*/
reg RD_CLK_TB,WR_CLK_TB,RD_RST_TB,WR_RST_TB;
reg WINC_TB,RINC_TB;
reg [DATA_WIDTH-1:0] WDATA_TB;
wire FULL_TB,EMPTY_TB;
wire [DATA_WIDTH-1:0] RDATA_TB;
/*............DUT instantiation.........*/
 FIFO_TOP #( DATA_WIDTH,ADDR_WIDTH,BUS_WIDTH) DUT
( .RD_CLK(RD_CLK_TB),.WR_CLK(WR_CLK_TB),.RD_RST(RD_RST_TB),.WR_RST(WR_RST_TB),
	.WINC(WINC_TB),.RINC(RINC_TB),.WDATA(WDATA_TB)
,.FULL(FULL_TB),.EMPTY(EMPTY_TB),.RDATA(RDATA_TB));
/*.............CLOCK parameters..........*/
parameter CLOCK_PERIOD_WR=10;
parameter HALF_PERIOD_WR=5;
parameter CLOCK_PERIOD_RD=25;
parameter HALF_PERIOD_RD=(CLOCK_PERIOD_RD/2.0);
/*.................CLOCK generation.........*/
always #(HALF_PERIOD_RD) RD_CLK_TB=~RD_CLK_TB;
always #(HALF_PERIOD_WR) WR_CLK_TB=~WR_CLK_TB;
/*................WR RESET TASK........*/
task RESET_WR;
begin
WR_RST_TB=1'b1;
#(CLOCK_PERIOD_WR)
WR_RST_TB=1'b0;
#(CLOCK_PERIOD_WR)
WR_RST_TB=1'b1;
	end	
endtask 
/*..........RD TASK RESET..............*/
task RESET_RD;
begin
RD_RST_TB=1'b1;
#(CLOCK_PERIOD_RD)
RD_RST_TB=1'b0;
#(CLOCK_PERIOD_RD)
RD_RST_TB=1'b1;
	end	
endtask
/*...................initialize task...........*/
reg [9:0] counter;
task initialize;
begin
counter=0;
 	WR_CLK_TB=0;
 	RD_CLK_TB=0;
 	WINC_TB=0;
 	RINC_TB=0;
 	WDATA_TB=8'd0;
 end 
endtask
/*..............task to generate data............*/
task data;
input enable;
input [DATA_WIDTH-1:0] DATA;
	begin
 WINC_TB=enable;
 WDATA_TB=DATA;
 #(CLOCK_PERIOD_WR);	
	end
endtask
/*..........task to generate burst data...........*/
task burst;
input enable;
input [11:0] burst_width;
reg [BUS_WIDTH-1:0] DATA;
integer i;
begin
WINC_TB=enable;
for (i=0;i<burst_width;i=i+1)begin
DATA=$random;
	data(enable,DATA);
    counter=counter+1;
    $display("test case %d at time %t",counter,$time);

end
end
endtask
/*............task to read burst and data...............*/
task read;
begin
  #(9*CLOCK_PERIOD_RD); //ideal cycles
        RINC_TB=1;
        /*......................read first 8 bytes.....................*/
        #(8*CLOCK_PERIOD_RD);
        /*...................read done........*/
        RINC_TB=0;  
end
endtask
/*................initial write block........*/
initial begin
		$dumpfile("FIFO.vcd");
        $dumpvars;
        initialize();
        RESET_WR();
        /*..................test write at first..............*/
        $display("test no write will happen");
        data(0,8'd100);
        $display("test case 1 at time %t",$time);
        #(2*CLOCK_PERIOD_WR);
        $display("test write untill full");
        $display("first write");
        burst(1,8);
        /*.............................enable is zero no write now......................*/
        data(0,8'd33);
         $display("test case %d at time %t",counter,$time);
        #(35*CLOCK_PERIOD_WR); //ideal cycles
        /*.........write in empty memory (second write) ..........*/  
        $display("second write");
        burst(1,8); 
        data(0,10);
        #(35*CLOCK_PERIOD_WR);
        /*.......write in empty memory (third write)......*/
        $display("third write");
        burst(1,8);
        data(0,10);
         #(35*CLOCK_PERIOD_WR);
         /*...........read and write at the same time...........*/
        $display("fourth write");
        burst(1,9);
        #(500*CLOCK_PERIOD_WR);
        $stop;

end
/*................initial read block........*/
initial begin
        RESET_RD();
        /*...................... (first read)...........*/
        read();
        /*................read fifo agian (second read)................*/
        read();
           /*................read fifo agian (third read)................*/
        read();
        /*.............................fourth read read and write at the same time.......*/
          #(9*CLOCK_PERIOD_RD); //ideal cycles
          RINC_TB=1;
        #(500*CLOCK_PERIOD_RD);
        $stop;

end
endmodule
`timescale 1ns/1ps
module DATA_SYNC_tb();
	/*.........parameters....*/
	parameter BUS_WIDTH=8;
	parameter NUM_STAGES=2;
	parameter CLOCK_PERIOD=10;
	parameter HALF_PERIOD=5;
/*..........inputs and outputs ...*/
	reg CLK_DESTINATION_tb;    
	reg RST_DESTINATION_tb;
	reg bus_enable_tb; 
reg [BUS_WIDTH-1:0] unsync_bus_tb;
wire [BUS_WIDTH-1:0] sync_bus_tb;
wire enable_pulse_tb;
/**DUT**/

 DATA_SYNC #(BUS_WIDTH, NUM_STAGES) data_sync ( CLK_DESTINATION_tb,RST_DESTINATION_tb, bus_enable_tb, unsync_bus_tb,sync_bus_tb,enable_pulse_tb	
);
 /*...........clock generation....*/
always #(HALF_PERIOD) CLK_DESTINATION_tb=~CLK_DESTINATION_tb;
/*.............initialization task....*/
task initialize ;
begin
CLK_DESTINATION_tb=0;
unsync_bus_tb=0;
bus_enable_tb=0;
end
endtask
/*........RST task ......*/
task reset;
begin
RST_DESTINATION_tb=1;
#(CLOCK_PERIOD)
	RST_DESTINATION_tb=0;
	#(CLOCK_PERIOD)
	RST_DESTINATION_tb=1;
end
endtask
/*.........initial block.....*/

initial begin
	$dumpfile("DATA_SYNC.vcd");
   $dumpvars;
 	initialize();
 	reset();
 	 $display("test the data sync (test case 1)");
 	 bus_enable_tb=1;
 	 unsync_bus_tb=8'd100;
 	 #(CLOCK_PERIOD)
 	 bus_enable_tb=0;
 	 #((NUM_STAGES+2)*CLOCK_PERIOD);
 	  	$display("test the data sync (test case 2)");
 	 unsync_bus_tb=8'd50;
 	 #(CLOCK_PERIOD)
 	 #((NUM_STAGES+2)*CLOCK_PERIOD);
#100;

   $stop;
end
endmodule
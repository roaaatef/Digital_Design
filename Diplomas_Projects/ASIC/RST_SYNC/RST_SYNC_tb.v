`timescale 1ns/1ps
module RST_SYNC_tb();
	/*...inputs and outputs....*/
reg RST_tb;
reg CLK_tb;
wire  RST_SYNC_tb;
parameter NUM_STAGES=2;
parameter CLOCK_PERIOD=10;
parameter HALF_PERIOD=5;
/*.......DUT....*/
RST_SYNC #(NUM_STAGES) rst_sync( RST_tb,CLK_tb,RST_SYNC_tb	);
/*...........clock generation....*/
always #(HALF_PERIOD) CLK_tb=~CLK_tb;
/*.............initialization task....*/
task initialize ;
begin
CLK_tb=0;
end
endtask
/*........RST task ......*/
task reset;
begin
///only reset assertion/////
#(CLOCK_PERIOD)
	RST_tb=0;
end
endtask
/*.........initial block.....*/
initial begin
	$dumpfile("RST_SYNC.vcd");
   $dumpvars;
 	initialize();
//////reset assertion first/////////
 	reset();
 	/*....test cases,reset deassertion....*/
   $display("reset deassertion");
   $display("deassert reset before posedge by 2.5");
    #(HALF_PERIOD/2.0);
   RST_tb=1;
   #(HALF_PERIOD/2.0);
   #((NUM_STAGES+1)*CLOCK_PERIOD);
   RST_tb=0;
   #(CLOCK_PERIOD);
    $display("deassert reset after posedge by 2.5 ");
    #(HALF_PERIOD/2.0);
   RST_tb=1;
   #((NUM_STAGES+1)*CLOCK_PERIOD);
     #(HALF_PERIOD/2.0);
   RST_tb=0;
   #(CLOCK_PERIOD);
   $display("deassert reset at negedge ");
   RST_tb=1;
   #((NUM_STAGES+1)*CLOCK_PERIOD);
   RST_tb=0;
   #(CLOCK_PERIOD);
     $display("deassert reset at negedge ");
   RST_tb=1;
   #((NUM_STAGES+2)*CLOCK_PERIOD);
   RST_tb=0;
   #(CLOCK_PERIOD);
      $display("assert reset at negedge ");
   RST_tb=0;
   #(2*CLOCK_PERIOD);
   $display("test cases done.....................");
   $stop;
end
endmodule
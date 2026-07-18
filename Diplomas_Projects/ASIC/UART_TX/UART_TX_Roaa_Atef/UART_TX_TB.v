`timescale 1ns/1ps
module UART_TX_TB();
reg CLK_tb,RST_tb;
reg DATA_VALID_tb,PAR_EN_tb,PAR_TYP_tb;
reg [7:0] P_DATA_tb;
wire TX_OUT_tb,busy_tb;
//
reg [10:0] out_w_par;
reg [9:0] out_wo_par;
//
 UART_TX_TOP DUT (
.CLK(CLK_tb),.RST(RST_tb),
.DATA_VALID(DATA_VALID_tb),.PAR_EN(PAR_EN_tb),.PAR_TYP(PAR_TYP_tb),
.P_DATA(P_DATA_tb),
.TX_OUT(TX_OUT_tb),.busy(busy_tb)
	);
 //clock parameters
parameter CLK_PERIOD = 5;
parameter HALF_PERIOD =  CLK_PERIOD/2.0;
//clock generation 
always #(HALF_PERIOD) CLK_tb=~CLK_tb;
//
//initialization 
task initialize;
 begin
 DATA_VALID_tb = 1'b0 ;
  PAR_EN_tb = 1'b0 ;
  PAR_TYP_tb=1'b0;
  CLK_tb = 1'b0 ;
  P_DATA_tb=8'b0; 
  out_w_par=11'd0;
  out_wo_par=10'd0;
 end
endtask
//
//reset task
task reset;
 begin
RST_tb =  1'b1;
 #(CLK_PERIOD)
 RST_tb  = 1'b0;
 #(CLK_PERIOD)
 RST_tb  = 1'b1;
 end
 endtask
 //
 //FSM task
 task FSM;
 input data_valid ;
 input par_en;
 input par_typ;
 input [7:0] data;
 integer i;
 begin
 DATA_VALID_tb=data_valid;
 PAR_EN_tb=par_en;
 PAR_TYP_tb=par_typ;
 P_DATA_tb=data;
 #(CLK_PERIOD);
 DATA_VALID_tb=1'b0;
 if
 (PAR_EN_tb) begin
   for(i=0;i<11;i=i+1) begin
      out_w_par[10-i]=TX_OUT_tb;
      if(busy_tb) begin
          $display("don't disturb i am busy now,[bit number %d in the frame has been sent ]",i+1);
      end
      else begin
      $display("IDLE state");

      end
      #(CLK_PERIOD);
   end 
 end
 else begin
      for(i=0;i<10;i=i+1) begin
      out_wo_par[9-i]=TX_OUT_tb;
      if(busy_tb) begin
         $display("don't disturb i am busy now,[bit number %d in the frame has been sent ]",i+1);
      end
      else begin
         $display("IDLE state");
      end
      #(CLK_PERIOD);
   end 
   end
   end
   endtask
//
//task chk out
task chkout;
input  [10:0] exp_out_w_par;
input [9:0] exp_out_wo_par;
begin
   if(PAR_EN_tb) begin
     if(out_w_par==exp_out_w_par) begin
        $display("test case successed ");
         $display("P_DATA_tb=%b,PAR_EN_tb=%b,PAR_TYP_tb=%b,out_w_par=%b,time=%0t",P_DATA_tb,PAR_EN_tb,PAR_TYP_tb,out_w_par,$time);
     end
     else begin
         $display("test case failed ");
     end
   end
   else begin
     if(out_wo_par==exp_out_wo_par) begin
        $display("test case successed ");
         $display("P_DATA_tb=%b,PAR_EN_tb=%b,PAR_TYP_tb=%b,out_wo_par=%b,time=%0t",P_DATA_tb,PAR_EN_tb,PAR_TYP_tb,out_wo_par,$time);
     end
     else begin
         $display("test case failed ");
     end
   end

end
endtask
 initial begin
 $dumpfile("UART_TX.vcd");
   $dumpvars;
 	initialize();
 	reset();
   $display("test case 1:");
FSM(1'b1,1'b1,1'b0,8'b11001100);
chkout(11'b00011001101,10'd0);
$display("test case 2:");
FSM(1'b1,1'b1,1'b0,8'b11010011);
chkout(11'b01100101111,10'd0);
$display("test case 3:");
FSM(1'b1,1'b0,1'b0,8'b01011100);
chkout(11'd0,10'b0001110101);
$display("test case 4:");
FSM(1'b1,1'b1,1'b1,8'b10101010);
chkout(11'b00101010111,10'd0);
$display("test case 5:");
FSM(1'b1,1'b1,1'b1,8'b10101101);
chkout(11'b01011010101,10'd0);
$display("test case 6:");
FSM(1'b0,1'b1,1'b0,8'b00110011);
chkout(11'b11111111111,10'b1111111111);
    #(2*CLK_PERIOD);
    $stop;
 end
 endmodule

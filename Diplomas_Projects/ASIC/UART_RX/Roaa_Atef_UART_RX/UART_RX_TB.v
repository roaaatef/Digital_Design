`timescale 1us/1ns
module UART_RX_TB();
reg CLK_tb,RST_n_tb;
reg PAR_EN_tb,PAR_TYP_tb;
reg RX_IN_tb;
reg [5:0] prescale_tb;
wire data_valid_tb;
wire [7:0] P_DATA_tb;
//
reg CLK_TX;
reg [9:0] TX_frame_P;
reg [8:0] TX_frame_NP;
reg [7:0] RX_DATA;
reg conc;
reg [8:0] TX_frame_conc_P;
reg [7:0] TX_frame_conc_NP;
 UART_RX_TOP rx_dut ( CLK_tb,RST_n_tb,PAR_EN_tb,PAR_TYP_tb,RX_IN_tb,prescale_tb,data_valid_tb,P_DATA_tb);
//
//prescale parameters
parameter PRE_8 =8.0;
parameter PRE_16=16.0;
parameter PRE_32 =32.0;

 //clock parameters (TX)
parameter CLK_PERIOD_TX = 8.6805555;
parameter HALF_PERIOD_TX =  CLK_PERIOD_TX/2.0;
//RX prescale 8
parameter CLK_PERIOD_RX8 = CLK_PERIOD_TX/PRE_8;
parameter HALF_PERIOD_RX8 =  CLK_PERIOD_RX8/2.0;
//RX prescale 16
parameter CLK_PERIOD_RX16 = CLK_PERIOD_TX/PRE_16;
parameter HALF_PERIOD_RX16=  CLK_PERIOD_RX16/2.0;
//RX prescale 32
parameter CLK_PERIOD_RX32 = CLK_PERIOD_TX/PRE_32;
parameter HALF_PERIOD_RX32 =  CLK_PERIOD_RX32/2.0;
//clock generation (TX CLOCK)
always #(HALF_PERIOD_TX) CLK_TX=~CLK_TX;
//
//initialization 
task initialize;
 begin
 PAR_EN_tb = 1'b0 ;
 CLK_TX=1'b0;
  PAR_TYP_tb=1'b0;
  CLK_tb = 1'b0 ;
  RX_IN_tb=1'b1;
  TX_frame_P=0;
  TX_frame_NP=0;
  RX_DATA=0;
  conc=1'b0;
  TX_frame_conc_P=0;
  TX_frame_conc_NP=0;
 end
endtask
//
//reset task for prescale 8
task reset_8;
 begin
RST_n_tb =  1'b1;
 #(CLK_PERIOD_RX8);
  RST_n_tb  = 1'b0;
   #(CLK_PERIOD_RX8);
   RST_n_tb  = 1'b1;
   #(CLK_PERIOD_RX8);
end
endtask
//reset task for prescale 16
task reset_16;
 begin
RST_n_tb =  1'b1;
 #(CLK_PERIOD_RX16);
  RST_n_tb  = 1'b0;
   #(CLK_PERIOD_RX16);
   RST_n_tb  = 1'b1;
   #(CLK_PERIOD_RX16);
end
endtask
//task to reset for prescale 32
task reset_32;
 begin
RST_n_tb =  1'b1;
 #(CLK_PERIOD_RX32);
  RST_n_tb  = 1'b0;
   #(CLK_PERIOD_RX32);
   RST_n_tb  = 1'b1;
   #(CLK_PERIOD_RX32);
end
endtask
//task to choose reset
task reset_choose;
begin
if(prescale_tb==6'd8)begin
		reset_8;
		#(21*CLK_PERIOD_RX8);
	end
	else if (prescale_tb==6'd16) begin
		reset_16;
		#(45*CLK_PERIOD_RX16);
	end
	else begin
		reset_32;
		#(93*CLK_PERIOD_RX32);
	end	
end
endtask
//task to choose prescale
task choose_prescale;
input [5:0] prescale_data;
begin
	prescale_tb=prescale_data;
end
endtask
//task to generate  a right frame without any errors  
task get_right_frame;
input [7:0] DATA;
input  strt,stp;
input parity_enable,parity_type;
reg parity_calc;
integer i;
begin
     PAR_EN_tb=parity_enable;
     PAR_TYP_tb=parity_type;
     RX_DATA=DATA;
     //calculate parity 
     if(PAR_EN_tb&!PAR_TYP_tb) begin
     	parity_calc=^DATA;
        if(conc)begin
          TX_frame_conc_P={DATA,parity_calc}; 
            for(i=0;i<9;i=i+1)begin

            RX_IN_tb=TX_frame_conc_P[8-i];
            #(CLK_PERIOD_TX);
        end
        RX_IN_tb=stp; 
        end
        else begin
     	TX_frame_P={strt,DATA,parity_calc};
     	for(i=0;i<10;i=i+1)begin
     		RX_IN_tb=TX_frame_P[9-i];
     		#(CLK_PERIOD_TX);
     	end
        RX_IN_tb=stp; 
        end
     end
     else if (PAR_EN_tb&PAR_TYP_tb)begin
     	parity_calc=~^DATA;
        if(conc) begin
            TX_frame_conc_P={DATA,parity_calc};
            for(i=0;i<9;i=i+1)begin
            RX_IN_tb=TX_frame_conc_P[8-i];
            #(CLK_PERIOD_TX);
        end
        RX_IN_tb=stp; 
        end
        else begin
     	TX_frame_P={strt,DATA,parity_calc,stp};
     	for(i=0;i<10;i=i+1)begin
     		RX_IN_tb=TX_frame_P[9-i];
     		#(CLK_PERIOD_TX);
     	end
        RX_IN_tb=stp; 
        end
     end
     else begin
      //no parity frame
        if(conc) begin
            TX_frame_conc_NP={DATA};
            for(i=0;i<8;i=i+1)begin
            RX_IN_tb=TX_frame_conc_NP[7-i];
            #(CLK_PERIOD_TX);
        end
        RX_IN_tb=stp; 
        end
        else begin
     	TX_frame_NP={strt,DATA};
     	for(i=0;i<9;i=i+1)begin
     		RX_IN_tb=TX_frame_NP[8-i];
     		#(CLK_PERIOD_TX);
     	end
        RX_IN_tb=stp; 
     end
     end
     conc=1'b0;
end
endtask
//task with wrong frame
task wrong_frame;
input [8:0] frame_wrong;
input par_en,par_typ;
input str_bit1,str_bit2,str_bit3;
input stp_bit1,stp_bit2,stp_bit3;
integer i;
begin
       PAR_EN_tb=par_en;
       PAR_TYP_tb=par_typ;
       if(prescale_tb==6'd8)begin
            RX_IN_tb=str_bit1;
        #(4*CLK_PERIOD_RX8);
            RX_IN_tb=str_bit2;
            #(1*CLK_PERIOD_RX8);
            RX_IN_tb=str_bit3;
            #(3*CLK_PERIOD_RX8);
            for (i=0;i<9;i=i+1) begin
            	RX_IN_tb=frame_wrong[8-i];
            	#(8*CLK_PERIOD_RX8);
            end
     	    RX_IN_tb=stp_bit1;
     	#(4*CLK_PERIOD_RX8);
     		RX_IN_tb=stp_bit2;
     		#(1*CLK_PERIOD_RX8);
     		RX_IN_tb=stp_bit3;
     		#(3*CLK_PERIOD_RX8);
     	  
     	end
     	else if (prescale_tb==6'd16) begin
            RX_IN_tb=str_bit1;
               #(8*CLK_PERIOD_RX16);
               RX_IN_tb=str_bit2;
               #(1*CLK_PERIOD_RX16);
               RX_IN_tb=str_bit3;
               #(7*CLK_PERIOD_RX16);
            for (i=0;i<9;i=i+1) begin
            	RX_IN_tb=frame_wrong[8-i];
            	#(16*CLK_PERIOD_RX16);
            end
     	    RX_IN_tb=stp_bit1;
     		#(8*CLK_PERIOD_RX16);
     		RX_IN_tb=stp_bit2;
     		#(1*CLK_PERIOD_RX16);
     		RX_IN_tb=stp_bit3;
     		#(7*CLK_PERIOD_RX16);
     	
     	end
     	else begin
     		 RX_IN_tb=str_bit1;
               #(17*CLK_PERIOD_RX32);
               RX_IN_tb=str_bit2;
               #(1*CLK_PERIOD_RX32);
               RX_IN_tb=str_bit3;
               #(14*CLK_PERIOD_RX32);
            for (i=0;i<9;i=i+1) begin
            	RX_IN_tb=frame_wrong[8-i];
            	#(32*CLK_PERIOD_RX32);
            end
     	    RX_IN_tb=stp_bit1;
     		#(17*CLK_PERIOD_RX32);
     		RX_IN_tb=stp_bit2;
     		#(1*CLK_PERIOD_RX32);
     		RX_IN_tb=stp_bit3;
     		#(14*CLK_PERIOD_RX32);
     	end
     	
end
endtask
//task for start err check
task start;
input str_bit1,str_bit2,str_bit3;
begin
    if(prescale_tb==6'd8)begin
               RX_IN_tb=str_bit1;
               #(4*CLK_PERIOD_RX8);
               RX_IN_tb=str_bit2;
               #(1*CLK_PERIOD_RX8);
               RX_IN_tb=str_bit3;
               #(3*CLK_PERIOD_RX8);
               end
               else if (prescale_tb==6'd16) begin
               RX_IN_tb=str_bit1;
               #(8*CLK_PERIOD_RX16);
               RX_IN_tb=str_bit2;
               #(1*CLK_PERIOD_RX16);
               RX_IN_tb=str_bit3;
               #(7*CLK_PERIOD_RX16);
               end
               else begin
                    RX_IN_tb=str_bit1;
               #(16*CLK_PERIOD_RX32);
               RX_IN_tb=str_bit2;
               #(1*CLK_PERIOD_RX32);
               RX_IN_tb=str_bit3;
               #(15*CLK_PERIOD_RX32);  
                 end  
end
endtask
//chk wrong frame
task chk_wrong_frame;

begin
	if(rx_dut.fsm.cs==3'b000)begin
		$display("error..........wrong frame please try again................test case passed");
	end
	else begin
		$display("passed..........what is next?!..........test case failed");
	end
end
endtask
//chk farme with right data 
task chk_frame_right;
begin
//first check data valid is high 
wait(data_valid_tb);
	$display("DATA is valid now ");

/////check for P_DATA
if (P_DATA_tb!=RX_DATA)begin
	$display("error...............failed");
	$stop;
end
else begin
	$display("the data is right please send another data......................passed");
    $display("P_DATA=%b",P_DATA_tb);
end
end
endtask


 initial begin
 	 $dumpfile("UART_RX.vcd");
     $dumpvars;
 	initialize();
    //NOTE:DO NOT COMMENT ANY PRESCALE THEY CAN WORK TOGETHER
 	//test scenario 1 : working on prescale 8 
 	choose_prescale(6'd8);
     reset_choose;
     //test cases for prescale 8 
      $display("test case 1:");
      $display("test right frame with even parity:");
     get_right_frame(8'b11001100,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
 	#(5*CLK_PERIOD_TX);
 	$display("test case 2:");
      $display("test right frame with even parity:");
 	get_right_frame(8'b11111000,1'b0,1'b1,1'b1,1'b0);
 	chk_frame_right();
 	 #(5*CLK_PERIOD_TX)
 	 $display("test case 3:");
      $display("test right frame with odd parity:");
 	get_right_frame(8'b11111000,1'b0,1'b1,1'b1,1'b0);
 	chk_frame_right();
 	 #(5*CLK_PERIOD_TX)
 	 	$display("test case 4:");
      $display("test right frame with odd parity:");
 	get_right_frame(8'b11101000,1'b0,1'b1,1'b1,1'b0);
 	chk_frame_right();
 	 #(5*CLK_PERIOD_TX)
 	 $display("test case 5:");
     $display("test right frame with no parity:");
 	get_right_frame(8'b11111000,1'b0,1'b1,1'b0,1'b0);
 	chk_frame_right();
 	#(5*CLK_PERIOD_TX)
     $display("test case 6:");
     $display("test wrong frame with wrong parity:");
 	wrong_frame(9'b111000000,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1);
 	chk_wrong_frame();
 	#(5*CLK_PERIOD_TX)
 	 $display("test case 7:");
     $display("test wrong frame with wrong start:");
 	start(1'b0,1'b1,1'b1);
 	chk_wrong_frame();
 	#(5*CLK_PERIOD_TX)
 	 $display("test case 8:");
     $display("test wrong frame with wrong stop:");
 	wrong_frame(9'b111000001,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1);
 	chk_wrong_frame();
 	#(5*CLK_PERIOD_TX)
    $display("test case 9:");
     $display("test consequence frames");
     get_right_frame(8'b11111100,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     RX_IN_tb=1'b0;
     conc=1'b1;
     #(CLK_PERIOD_TX)
      get_right_frame(8'b10101010,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     $display("sending consequence frames DONE.........passed"); 
     #(5*CLK_PERIOD_TX)
     //test scenario 2 : working on prescale 16    
  choose_prescale(6'd16);
    reset_choose;
     //test cases for prescale 16 
      $display("test case 10:");
      $display("test right frame with even parity:");
     get_right_frame(8'b11001100,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     #(7*CLK_PERIOD_TX);
     $display("test case 11:");
      $display("test right frame with even parity:");
     get_right_frame(8'b11111000,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
      #(7*CLK_PERIOD_TX)
      $display("test case 12:");
      $display("test right frame with odd parity:");
     get_right_frame(8'b11111000,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
      #(7*CLK_PERIOD_TX)
          $display("test case 13:");
      $display("test right frame with odd parity:");
     get_right_frame(8'b11101000,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
      #(7*CLK_PERIOD_TX)
      $display("test case 14:");
     $display("test right frame with no parity:");
     get_right_frame(8'b11111000,1'b0,1'b1,1'b0,1'b0);
     chk_frame_right();
     #(7*CLK_PERIOD_TX)
     $display("test case 15:");
     $display("test wrong frame with wrong parity:");
     wrong_frame(9'b111000000,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1);
     chk_wrong_frame();
     #(7*CLK_PERIOD_TX)
      $display("test case 16:");
     $display("test wrong frame with wrong start:");
     start(1'b0,1'b1,1'b1);
     chk_wrong_frame();
     #(7*CLK_PERIOD_TX)
     $display("test case 17:");
    $display("test wrong frame with wrong stop:");
   wrong_frame(9'b111000001,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1);
     chk_wrong_frame();
     #(7*CLK_PERIOD_TX)
    $display("test case 18:");
     $display("test consequence frames");
     get_right_frame(8'b11111100,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     RX_IN_tb=1'b0;
     #(CLK_PERIOD_TX)
     conc=1'b1;
      get_right_frame(8'b10101010,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     $display("sending consequence frames DONE.........passed"); 
     #(7*CLK_PERIOD_TX)
     //test scenario 3 : working on prescale 32
    choose_prescale(6'd32 );
     reset_choose;
     //test cases for prescale 32 
      $display("test case 19:");
      $display("test right frame with even parity:");
     get_right_frame(8'b11001100,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     #(5*CLK_PERIOD_TX);
     $display("test case 20:");
      $display("test right frame with even parity:");
     get_right_frame(8'b11111000,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
      #(5*CLK_PERIOD_TX)
      $display("test case 21:");
      $display("test right frame with odd parity:");
     get_right_frame(8'b11111000,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
      #(5*CLK_PERIOD_TX)
          $display("test case 22:");
      $display("test right frame with odd parity:");
     get_right_frame(8'b11101000,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
      #(5*CLK_PERIOD_TX)
      $display("test case 23:");
     $display("test right frame with no parity:");
     get_right_frame(8'b11111000,1'b0,1'b1,1'b0,1'b0);
     chk_frame_right();
     #(5*CLK_PERIOD_TX)
     $display("test case 24:");
     $display("test wrong frame with wrong parity:");
     wrong_frame(9'b111000000,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1);
     chk_wrong_frame();
     #(10*CLK_PERIOD_TX)
      $display("test case 25:");
    $display("test wrong frame with wrong start:");
     start(1'b0,1'b1,1'b1);
     chk_wrong_frame();
     #(10*CLK_PERIOD_TX)
      $display("test case 26:");
     $display("test wrong frame with wrong stop:");
     wrong_frame(9'b111000001,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1);
          chk_wrong_frame();
     #(10*CLK_PERIOD_TX)
     $display("test case 27:");
     $display("test consequence frames");
     get_right_frame(8'b11111100,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     RX_IN_tb=1'b0;
     #(CLK_PERIOD_TX)
     conc=1'b1;
      get_right_frame(8'b10101010,1'b0,1'b1,1'b1,1'b0);
     chk_frame_right();
     $display("sending consequence frames DONE.........passed"); 
     #(7*CLK_PERIOD_TX)
 	$stop;
 end
 //RX CLOCKS
 always #(HALF_PERIOD_TX/(prescale_tb*1.0)) CLK_tb=~CLK_tb;
 endmodule

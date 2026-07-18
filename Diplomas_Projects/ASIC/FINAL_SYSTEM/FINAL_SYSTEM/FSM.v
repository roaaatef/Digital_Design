module FSM (
input CLK,RST_n,
input PAR_EN,
input par_err,stp_err,strt_glitch,
input RX_IN,
input [3:0] bit_cnt,
input [5:0] edge_cnt,
input [5:0] prescale,
output reg par_chk_en,
output reg strt_chk_en,
output reg stp_chk_en,
output reg deser_en, 
output reg data_valid,
output reg enable_edge,enable_bit,
output reg dat_samp_en
	);
reg [2:0] cs,ns;
localparam IDLE=3'b000,
           STR=3'b001,
           DATA=3'b011,
           PAR=3'b010,
           STP=3'b100;
//
//cs logic
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		cs<=IDLE;
		
	end
	else  begin
		cs<=ns;
			
			end
end
//ns logic
always @(*) begin
	case (cs)
	IDLE: begin
		if(bit_cnt==4'd0&!RX_IN) begin
			ns=STR;
		end
		else begin
			ns=IDLE;
		end
	end
	STR:begin
		if(strt_glitch) begin
			ns=IDLE;
		end
		else  if (edge_cnt==(prescale-1))begin
			ns=DATA;
		end
		else begin
			ns=STR;
		end
	end
	DATA:begin
		if((edge_cnt==(prescale-1))&bit_cnt==4'd8&PAR_EN) begin
			ns=PAR;
		end
		else if ((edge_cnt==(prescale-1))&bit_cnt==4'd8&!PAR_EN) begin
			ns=STP;
		end
		else begin
			ns=DATA;
		end
	end
	PAR:begin
	 if(edge_cnt==(prescale-1)&(!par_err)) begin
	 	ns=STP;
	 end
	 else if (edge_cnt==(prescale-1)&(par_err))begin
	 	ns=IDLE;
	 end
	 else begin
	 	ns=PAR;
	 end
	end
	STP:begin
	  if (((edge_cnt==(prescale-1))&RX_IN)||(stp_err))  begin
	  	ns=IDLE;
	  end
	  else if ((edge_cnt==(prescale-1))&!RX_IN) begin
	  	ns=STR;
	  end
	  else begin
	  	ns=STP;
	  end
	end
	default:ns=IDLE;
	endcase
end
//output logic
always @(*) begin
	case(cs)
	IDLE:begin
		if(bit_cnt==4'd0&!RX_IN) begin
		   par_chk_en=1'b0;
			stp_chk_en=1'b0;
			strt_chk_en=1'b0;
			deser_en=1'b0;
			data_valid=1'b0;
			enable_edge=1'b1;
			enable_bit=1'b1;
			dat_samp_en=1'b1;
		end
		else begin
		par_chk_en=1'b0;
			strt_chk_en=1'b0;
			stp_chk_en=1'b0;
			deser_en=1'b0;
			data_valid=1'b0;
			enable_edge=1'b0;
			enable_bit=1'b0;
			dat_samp_en=1'b0;
		end
	end
	STR:begin
                par_chk_en=1'b0;
			strt_chk_en=1'b1;
			stp_chk_en=1'b0;
			deser_en=1'b1;
			data_valid=1'b0;
			enable_edge=1'b1;
			enable_bit=1'b1;
			dat_samp_en=1'b1;
	end
	DATA:begin
			par_chk_en=1'b0;
			strt_chk_en=1'b0;
			stp_chk_en=1'b0;
			deser_en=1'b1;
			data_valid=1'b0;
			enable_edge=1'b1;
			enable_bit=1'b1;
			dat_samp_en=1'b1;
		
		    

	end
	PAR:begin
	        
	        par_chk_en=1'b1;
			strt_chk_en=1'b0;
			stp_chk_en=1'b0;
			deser_en=1'b0;
			data_valid=1'b0;
			enable_edge=1'b1;
			enable_bit=1'b1;
			dat_samp_en=1'b1;
			
			
	end
	STP:begin
			if( edge_cnt==(prescale-1)&!stp_err)begin
			data_valid=1'b1;
			  par_chk_en=1'b0;
			strt_chk_en=1'b0;
			stp_chk_en=1'b1;
			deser_en=1'b0;
			enable_edge=1'b1;
			enable_bit=1'b1;
			dat_samp_en=1'b1;	
			end
			else begin
				data_valid=1'b0;
				  par_chk_en=1'b0;
			strt_chk_en=1'b0;
			stp_chk_en=1'b1;
			deser_en=1'b0;
			enable_edge=1'b1;
			enable_bit=1'b1;
			dat_samp_en=1'b1;
			end
		
			
	end
	default:begin
		par_chk_en=1'b0;
			strt_chk_en=1'b0;
			stp_chk_en=1'b0;
			deser_en=1'b0;
			data_valid=1'b0;
			enable_edge=1'b0;
			dat_samp_en=1'b0;
			enable_bit=1'b0;
	end
	endcase
end
endmodule

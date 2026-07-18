module FSM (
input CLK,RST_n,
input PAR_EN,
input par_err,stp_err,strt_glitch,
input RX_IN,
input [3:0] bit_cnt,
input [5:0] edge_cnt,
input [5:0] prescale,
input sampled_bit,sampling_done,
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
	     if(prescale==6'd8) begin
		if(strt_glitch) begin
			ns=IDLE;
		end
		else  if (edge_cnt==6'd7)begin
			ns=DATA;
		end
		else begin
			ns=STR;
		end
		end
		else if (prescale==6'd16) begin
				if(strt_glitch) begin
			ns=IDLE;
		end
		else if (edge_cnt==6'd15) begin
			ns=DATA;
		end
		else begin
			ns=STR;
		end
		end
		else begin
				if(strt_glitch) begin
			ns=IDLE;
		end
		else  if (edge_cnt==6'd31)begin
			ns=DATA;
		end
		else begin
			ns=STR;
		end
		end
	end
	DATA:begin
	     if(prescale==6'd8) begin
		if(edge_cnt==6'd7&bit_cnt==4'd8&PAR_EN) begin
			ns=PAR;
		end
		else if (edge_cnt==6'd7&bit_cnt==4'd8&!PAR_EN) begin
			ns=STP;
		end
		else begin
			ns=DATA;
		end
		end
		else if (prescale==6'd16)begin
			if(edge_cnt==6'd15&bit_cnt==4'd8&PAR_EN) begin
			ns=PAR;
		end
		else if (edge_cnt==6'd15&bit_cnt==4'd8&!PAR_EN) begin
			ns=STP;
		end
		else begin
			ns=DATA;
		end
		end
		else begin
			if(edge_cnt==6'd31&bit_cnt==4'd8&PAR_EN) begin
			ns=PAR;
		end
		else if (edge_cnt==6'd31&bit_cnt==4'd8&!PAR_EN) begin
			ns=STP;
		end
		else begin
			ns=DATA;
		end
		end
	end
	PAR:begin
	if (prescale==6'd8)begin
	    if(edge_cnt==6'd7&!par_err)begin
	    	ns=STP;
	    end
	    else if (edge_cnt==6'd7&par_err) begin
			ns=IDLE;
			end
			else begin
				ns=PAR;
			end
			end
			else if (prescale==6'd16)begin
				if(edge_cnt==6'd15&!par_err)begin
	    	ns=STP;
	    end
	    else if (edge_cnt==6'd11&par_err) begin
			ns=IDLE;
			end
			else begin
				ns=PAR;
			end
			end
			else begin
				if(edge_cnt==6'd31&!par_err)begin
	    	ns=STP;
	    end
	    else if (edge_cnt==6'd19&par_err) begin
			ns=IDLE;
			end
			else begin
				ns=PAR;
			end
			end
	end
	STP:begin
	    if(prescale==6'd8) begin
	  if(((edge_cnt==6'd7)&RX_IN)||(stp_err))begin
	    	ns=IDLE;
	    end
	    else  if (edge_cnt==6'd7&!RX_IN)begin
			ns=STR;
			end
			else begin
				ns=STP;
			end
			end
			else if (prescale==6'd16)begin
				if(((edge_cnt==6'd15)&RX_IN)||((edge_cnt==6'd11)&(stp_err)))begin
	    	ns=IDLE;
	    end
	    else  if (edge_cnt==6'd15&!RX_IN)begin
			ns=STR;
			end
			else begin
				ns=STP;
			end
			end
			else begin
				if(((edge_cnt==6'd31)&RX_IN)||((edge_cnt==6'd19)&(stp_err)))begin
	    	ns=IDLE;
	    end
	    else  if ((edge_cnt==6'd31)&!RX_IN)begin
			ns=STR;
			end
			else begin
				ns=STP;
			end
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
			if(sampling_done&sampled_bit)begin
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

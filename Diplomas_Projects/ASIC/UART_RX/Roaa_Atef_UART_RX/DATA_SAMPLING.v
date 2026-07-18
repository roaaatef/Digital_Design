module DATA_SAMPLING (
input CLK,RST_n,
input RX_IN,
input [5:0] prescale,
input data_samp_en,
input [5:0] edge_cnt,
output reg sampled_bit,
output   reg  sampling_done
	);
reg bit1,bit2;
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		sampled_bit<=1'b0;
		{bit1,bit2}<=3'b000;


	end
	else if (data_samp_en&(prescale==6'd8)) begin
		 if  (edge_cnt==6'd3)begin
          bit1<=RX_IN;   
	end
	else if (edge_cnt==6'd4) begin
		bit2<=RX_IN;
	end
	else  begin
		 case({bit1,bit2,RX_IN})
		 3'b000,3'b001,3'b010,3'b100: sampled_bit<=1'b0;
		 3'b110,3'b101,3'b011,3'b111:sampled_bit<=1'b1;
		 endcase
	end
	end
	else if (data_samp_en&(prescale==6'd16)) begin
		 if  (edge_cnt==6'd7)begin
          bit1<=RX_IN;   
	end
	else if (edge_cnt==6'd8) begin
		bit2<=RX_IN;
	end

	else  begin
		 case({bit1,bit2,RX_IN})
		 3'b000,3'b001,3'b010,3'b100: sampled_bit<=1'b0;
		 3'b110,3'b101,3'b011,3'b111:sampled_bit<=1'b1;
		 endcase
	end
	end
	else if (data_samp_en&(prescale==6'd32)) begin
		 if  (edge_cnt==6'd15)begin
          bit1<=RX_IN;   
	end
	else if (edge_cnt==6'd16) begin
		bit2<=RX_IN;
	end
	else  begin
		 case({bit1,bit2,RX_IN})
		 3'b000,3'b001,3'b010,3'b100: sampled_bit<=1'b0;
		 3'b110,3'b101,3'b011,3'b111:sampled_bit<=1'b1;
		 endcase
	end
	end
    	
	
end
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		sampling_done<=1'b0;
	end	
   else begin
   	if(prescale==6'd8&edge_cnt==6'd5) begin
   			sampling_done<=1'b1;
   		end
   	 	else if(prescale==6'd16&edge_cnt==6'd9) begin
   			sampling_done<=1'b1;
   		end

      	 	else if(prescale==6'd32&edge_cnt==6'd17) begin
   	
   			sampling_done<=1'b1;
   		end
   		else begin
   			sampling_done<=1'b0;
   		end
   	end
   end

endmodule

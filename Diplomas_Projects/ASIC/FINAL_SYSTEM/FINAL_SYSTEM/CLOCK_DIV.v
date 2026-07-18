module CLOCK_DIV  #(parameter DIV_WIDTH=8)(
input i_ref_clk,
input i_rst_n,
input i_clk_en,
input [DIV_WIDTH-1:0] i_div_ratio,
output    o_div_clk
	);
//
//inetrnal signals
reg [7:0] counter;
reg flag;
wire [7:0] half_toggle;
wire odd;
reg o_div_clk_reg;
reg [7:0] prev_div_ratio;
//
assign odd=(i_div_ratio[0])?1:0;
assign half_toggle=((i_div_ratio!=0)&&(i_div_ratio!=1))?(i_div_ratio>>1):0;
assign o_div_clk=(i_clk_en && ( i_div_ratio != 8'd0) && ( i_div_ratio != 8'd1))?o_div_clk_reg:i_ref_clk;
always @(posedge i_ref_clk or negedge i_rst_n) 
begin
	if(~i_rst_n) begin
		 o_div_clk_reg<= 1'b0;
		 flag<=0;

	end 
	else  begin
	if(i_clk_en && ( i_div_ratio != 8'd0) && ( i_div_ratio != 8'd1))begin 	
     if(!odd&(counter==half_toggle))begin
     	o_div_clk_reg<=~o_div_clk_reg;
     end
     else if (!odd&(counter==0)) begin
     	o_div_clk_reg<=~o_div_clk_reg;
     end

     	else if(odd&(((counter==half_toggle)&!flag)||((counter==0)&flag)))begin
     		o_div_clk_reg<=~o_div_clk_reg;
     		flag<=~flag;
     	end
  end
end
end

always @(posedge i_ref_clk or negedge i_rst_n) begin
	if (!i_rst_n) begin
		counter<=0;
		
	end
	else begin
		   if ((i_div_ratio != prev_div_ratio)||(i_div_ratio==0)||(i_div_ratio==1)) begin
            counter <= 0;
	end

	else  if (counter>=i_div_ratio-1)begin
		counter<=0;
	end
	else begin
		counter<=counter+1;
	end
	     prev_div_ratio <= i_div_ratio;
	end
end
endmodule
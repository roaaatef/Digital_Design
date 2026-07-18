module input_division_rx_ratio(
input [5:0] prescale,
output  reg [7:0] in_div_ratio
	);

always @(*) begin 
case (prescale)
	6'd32:in_div_ratio=3'd1;
	6'd16:in_div_ratio=3'd2;
	6'd8:in_div_ratio=3'd4;
	default:in_div_ratio=3'd1;
endcase
end
endmodule

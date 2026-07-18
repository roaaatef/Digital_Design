module RAM_golden (RAM_if.GOLDEN r_if);
reg [r_if.WORD_SIZE-1:0] RAM [r_if.MEM_DEPTH-1:0];
reg [r_if.ADDR_SIZE-1:0] addr_w,addr_rd;
always @(posedge r_if.clk ) begin
	if (!r_if.rst_n) begin
		r_if.dout_exp<=0;
		r_if.tx_valid_exp<=0;
		addr_rd <= 0 ;
		addr_w <=0;
			
	end
	else if(r_if.rx_valid) begin
		case(r_if.din[9:8])
		2'b00: begin
			addr_w<=r_if.din[7:0];
			r_if.tx_valid_exp<=0;
		end
		2'b01:begin
			RAM[addr_w]<=r_if.din[7:0];
			r_if.tx_valid_exp<=0;
		end
		2'b10:begin
           addr_rd<=r_if.din[7:0];
           r_if.tx_valid_exp<=0;
		end
		2'b11: begin
			r_if.dout_exp<=RAM[addr_rd];
			r_if.tx_valid_exp<=1;
		end
		endcase
	end

end
endmodule
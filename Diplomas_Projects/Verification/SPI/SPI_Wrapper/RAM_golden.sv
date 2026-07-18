module RAM_golden #(
    parameter ADDR_SIZE=8,
parameter MEM_DEPTH=256,
parameter WORD_SIZE=8
    )
(
      input bit clk,
 input logic  [9:0] din,
 input logic  rst_n, rx_valid,
 output logic [WORD_SIZE-1:0] dout_exp,
 output logic   tx_valid_exp
);
reg [WORD_SIZE-1:0] RAM [MEM_DEPTH-1:0];
reg [ADDR_SIZE-1:0] addr_w,addr_rd;
always @(posedge clk ) begin
	if (!rst_n) begin
		dout_exp<=0;
		tx_valid_exp<=0;
		addr_rd <= 0 ;
		addr_w <=0;
			
	end
	else if(rx_valid) begin
		case(din[9:8])
		2'b00: begin
			addr_w<=din[7:0];
			tx_valid_exp<=0;
		end
		2'b01:begin
			RAM[addr_w]<=din[7:0];
			tx_valid_exp<=0;
		end
		2'b10:begin
           addr_rd<=din[7:0];
           tx_valid_exp<=0;
		end
		2'b11: begin
			dout_exp<=RAM[addr_rd];
			tx_valid_exp<=1;
		end
		endcase
	end

end
endmodule
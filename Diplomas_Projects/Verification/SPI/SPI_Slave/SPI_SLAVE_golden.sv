module SPI_SLAVE_golden (SLAVE_if.GOLDEN s_if);
reg [2:0] cs,ns;
reg chk_read;
reg [3:0] counter_out;
//
localparam IDLE=3'b000,
           CHK_CMD=3'b001,
           WRITE=3'b010,
           READ_ADD=3'b011,
           READ_DATA=3'b100;

//cs logic
always @(posedge s_if.clk ) begin
	if (!s_if.rst_n) begin
		cs<=IDLE;	
	end
	else  begin
		cs<=ns;
	end
end
//ns logic
always @(*) begin
	case(cs)
	IDLE:begin
		if(!s_if.SS_n) begin
			ns=CHK_CMD;
		
		end
		else begin
			ns=IDLE;
		end
	end
	CHK_CMD:begin
		 if (s_if.SS_n)
			begin
				ns=IDLE;
			end
		 else if(!s_if.SS_n&&!s_if.MOSI) begin
			ns=WRITE;
		end
		else  if (!s_if.SS_n&&s_if.MOSI&&!chk_read) begin
			ns=READ_ADD;
		end
		else if(!s_if.SS_n&&s_if.MOSI&&chk_read) begin
			ns=READ_DATA;
		end
		else begin
			ns=CHK_CMD;
		end
	end
	WRITE:begin
	 if (!s_if.SS_n) begin
			ns=WRITE;		 
		end
		else begin
			ns=IDLE;
		end
	end
	READ_ADD:begin
		if(!s_if.SS_n)
		begin
			ns=READ_ADD;		
		end
		else begin
			ns=IDLE;
		end
	end
	READ_DATA:begin
		if(!s_if.SS_n) begin
			ns=READ_DATA;		 
		end
		else begin
			ns=IDLE;
		end
	end
	default:ns=IDLE;
	endcase
end
//output logic
always @(posedge s_if.clk) begin
if(!s_if.rst_n)begin
	counter_out<=0;
	chk_read<=0;
	s_if.MISO_exp<=0;
	s_if.rx_valid_exp<=0;
	s_if.rx_data_exp<=0;
end
else begin
case(cs) 
IDLE:begin
s_if.rx_valid_exp<=0;
end
CHK_CMD:begin
counter_out<=10;
end
WRITE:begin
  if(counter_out>4'd0) begin
	s_if.rx_data_exp[counter_out-1]<=s_if.MOSI;
	counter_out<=counter_out-1;
end
else  begin
s_if.rx_valid_exp<=1;	
end
end
READ_ADD:begin
if(counter_out>4'd0) begin
	s_if.rx_data_exp[counter_out-1]<=s_if.MOSI;
	 counter_out<=counter_out-1;
end
else begin
chk_read<=1;
s_if.rx_valid_exp<=1;	
end
end
READ_DATA:begin
	if(!s_if.tx_valid)begin
    if (counter_out > 4'd0) begin
        s_if.rx_data_exp[counter_out-1] <= s_if.MOSI;
        counter_out <= counter_out - 1;
    end
    else begin
        s_if.rx_valid_exp <= 1;      
        counter_out <= 9;
             
    end
end
else begin
   if  ( counter_out > 4'd0) begin
        s_if.MISO_exp <= s_if.tx_data[counter_out-1];
        counter_out <= counter_out - 1;
    end
    else begin
        chk_read <= 0;
  
    end
end
end

endcase
end
end
endmodule

module FSM_TX(

input FIFO_EMPTY,PAR_EN,ser_done,
input CLK,RST,
output  reg BUSY,ser_en,
output  reg [1:0] MUX_SEL

	);
wire DATA_VALID;
assign DATA_VALID=!FIFO_EMPTY;
reg [2:0] ns,cs;
localparam IDLE=3'b000,
            START=3'b001,
            SERIAL=3'b011,
            PARITY=3'b010,
            STOP=3'b100;
           
 //cs logic 
 always @(posedge CLK or negedge RST) begin
 	if (!RST) begin
 		cs<=IDLE;
 		
 	end
 	else  begin
 		cs<=ns;
 	end
 end
 //ns logic
always @(*) begin
	case(cs)
	IDLE: begin
		if(DATA_VALID) begin
			ns=START;
		end
		else begin
			ns=IDLE;
		end
	end
	START:begin
		
			ns=SERIAL;
	end
	SERIAL: begin
		if(ser_done&&PAR_EN) begin
			ns=PARITY;
		end
		else if (ser_done&&!PAR_EN) begin
			ns=STOP;
		end
		else begin
			ns=SERIAL;
		end
	end
	PARITY: begin
		ns=STOP;	
		end
	STOP: begin
		ns=IDLE;
	end
	default: ns=IDLE;
endcase

end
//output logic
always @(*) begin
	case(cs)
	IDLE:  begin 
	ser_en=1'b0;
	MUX_SEL=2'b11;
	BUSY=1'b0;
end
   START: begin
   ser_en=1'b1;
	MUX_SEL=2'b00;
	BUSY=1'b1;
   end
   SERIAL: begin
   ser_en=1'b1;
	MUX_SEL=2'b01;
	BUSY=1'b1;
   end
   PARITY: begin
   ser_en=1'b0;
	MUX_SEL=2'b10;
	BUSY=1'b1;
   end
   STOP: begin
   ser_en=1'b0;
	MUX_SEL=2'b11;
	BUSY=1'b1;
   end
   default: begin
   ser_en=1'b0;
	MUX_SEL=2'b11;
	BUSY=1'b0;
   end
   endcase
   end
   endmodule



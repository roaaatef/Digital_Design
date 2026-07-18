module SERIALIZER  # (parameter DATA_WIDTH=8)(
	input BUSY,FIFO_EMPTY,
input [DATA_WIDTH-1:0] P_DATA,
input CLK,RST,ser_en,
output   ser_done,
output reg ser_data
	);
reg [7:0] serial_data;
reg [3:0] counter ;
wire DATA_VALID;
assign DATA_VALID=!FIFO_EMPTY;
assign ser_done=(counter==4'd8)?1'b1:1'b0;
always @(posedge CLK or negedge RST ) begin
  if(!RST) begin
  	ser_data<=1'b0;
  	serial_data<=8'd0;
  end
  else if (DATA_VALID&&!BUSY) begin
      serial_data<=P_DATA;
  end
  else if (ser_en&&counter!=4'd8) begin
	serial_data<={1'b0,serial_data[7:1]};
	ser_data<=serial_data[0];
end
else begin
	ser_data=1'b0;
	serial_data<=8'd0;
end
end
always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		counter<=4'd0;
	end
	else if (ser_en&&counter!=4'd8) begin
		counter<=counter+1;
	end
	else begin
		counter<=4'd0;
	end
end
endmodule

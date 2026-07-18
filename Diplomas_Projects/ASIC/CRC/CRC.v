module CRC #(parameter SEED=8'b11011000)
(
input ACTIVE,
input CLK,RST,
input DATA,
output reg CRC,Valid
);
//
reg [7:0] LFSR;
wire FB;
reg [3:0] counter;
wire counter_done;
//
always @(posedge CLK or negedge RST) begin

	if (!RST) begin
		LFSR<=SEED;
		Valid<=1'b0;
		CRC<=1'b0;
		counter<=4'b0;
		
	end
	else if (ACTIVE) begin
	Valid<=1'b0;
	      LFSR[0]<=LFSR[1];
	      LFSR[1]<=LFSR[2];
	        LFSR[2]<=LFSR[3]^FB;
	        LFSR[3]<=LFSR[4];
	        LFSR[4]<=LFSR[5];
	        LFSR[5]<=LFSR[6];
	         LFSR[6]<=FB^LFSR[7]; 
		     LFSR[7]<=FB;
		 
	end
	     else  if (!counter_done) begin
	        counter<=counter+1;

	        Valid<=1'b1;
	     	CRC<=LFSR[0];
	     	LFSR[0]<=LFSR[1];
	     	LFSR[1]<=LFSR[2];
	     	LFSR[2]<=LFSR[3];
	     	LFSR[3]<=LFSR[4];
	     	LFSR[4]<=LFSR[5];
	     	LFSR[5]<=LFSR[6];
	     	LFSR[6]<=LFSR[7];
	     end
	     else begin
	     	counter<=4'b0;
	     	Valid<=1'b0;
	     end
end
assign FB=LFSR[0]^DATA;
assign counter_done=(counter==4'd8)?1:0;
endmodule

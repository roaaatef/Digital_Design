module RST_asyn (A, clk,rst,A_out);
parameter W=1;
input [W-1:0] A;
input rst;
input clk;
output reg [W-1:0] A_out;
//////////////////////////////
always @(posedge clk or posedge rst) begin
if(rst)
begin
	A_out<=0;
end
else begin
	A_out<=A;
end
end
endmodule

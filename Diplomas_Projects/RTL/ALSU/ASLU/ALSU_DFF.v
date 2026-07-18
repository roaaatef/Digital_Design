
module D_FF (CLK,rstn,D,Q);
parameter S=1;
input CLK,rstn;
input [S-1:0] D;
output reg  [S-1:0] Q;
always @(posedge CLK or posedge rstn)
begin
if (rstn)
Q<=1'b0;
else 
Q<=D;
end
endmodule
module reg_plus_mux (clk,rst ,reg_en,D,D_MUX);
parameter PIPELINE =0;
parameter WIDTH=1;
parameter RST_TYPE="SYNC";
/////////////////////
input clk,rst;
input [WIDTH-1:0]D;
input reg_en;
output [WIDTH-1:0]D_MUX;
reg [WIDTH-1:0] D_FF;
/////////////////////////////////////////////////
assign D_MUX =(PIPELINE==0)?D:D_FF;
generate 
if (RST_TYPE=="SYNC") begin
always @(posedge clk) begin
if(rst)
D_FF<=0;
 else if((reg_en))
begin
D_FF<=D;
end
end
end
else begin
always @(posedge clk or posedge rst ) begin
if(rst)
D_FF<=0;
 else if((reg_en))
begin
D_FF<=D;
end
end	
end
endgenerate 
endmodule


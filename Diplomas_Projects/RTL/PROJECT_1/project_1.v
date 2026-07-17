
module DSP (
input [17:0] A,
input [17:0] B,
input [47:0] C,
input [17:0] D,
input CARRYIN,
output [35:0] M,
output [47:0] P,
output   CARRYOUT,
output  CARRYOUTF,
input CLK,
input [7:0]OPMODE,
input CEA,CEB,CEC,CECARRYIN,CED,CEM,CEOPMODE,CEP,
input RSTA,RSTB,RSTC,RSTCARRYIN,RSTD,RSTM,RSTOPMODE,RSTP,
input[47:0] PCIN,
output [47:0] PCOUT,
output [17:0] BCOUT,
input [17:0] BCIN
	);
//////////////////////////////////////////////////////
parameter A0REG=0;
parameter A1REG=1;
parameter B0REG=0;
parameter B1REG=1;
parameter CREG=1;
parameter DREG=1;
parameter MREG=1;
parameter PREG=1;
parameter CARRYINREG=1;
parameter CARRYOUTREG=1;
parameter OPMODEREG=1;
parameter CARRYINSEL="OPMODE5";
parameter B_INPUT="DIRECT";
parameter RSTTYPE="SYNC";
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
wire [17:0] A_reg;
wire [17:0] B_reg;
wire [47:0] C_reg;
wire [17:0] D_reg;
wire [17:0] A_reg2;
wire [17:0] B_reg2;
reg cout;
wire CARRYOUT_reg;
wire CARRYIN_reg;
reg CARRYIN_mux;
reg [17:0] B_mux;
wire [7:0] OPMODE_reg;
wire [35:0] M_reg;
wire [47:0] P_reg;
/////////////////////////////////
reg [17:0] B_D_ADD_SUB;
reg [17:0] op_mode_4_mux;
reg [35:0] MUL;
reg [47:0] MUX_x;
reg [47:0] MUX_z;
reg [47:0] z_x_ADDER;
///////////////////////
assign BCOUT= B_reg2;
assign M=M_reg;
assign P=P_reg;
assign PCOUT=P_reg;
assign CARRYOUT=CARRYOUT_reg;
assign CARRYOUTF=CARRYOUT_reg;
//////////////////////
generate 
if (A0REG==0) begin
	reg_plus_mux   #(.PIPELINE(A0REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_a (CLK,RSTA ,CEA,A,A_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(A0REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_a (CLK,RSTA ,CEA,A,A_reg);
end
 
/////////////////////////////////////////////////////

if (B0REG==0) begin
	reg_plus_mux   #(.PIPELINE(B0REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_b (CLK,RSTB ,CEB,B_mux,B_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(B0REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_b (CLK,RSTB ,CEB,B_mux,B_reg);
end

//////////////////////////////////////////////////////
 
if (CREG==0) begin
	reg_plus_mux   #(.PIPELINE(CREG),.WIDTH(48),.RST_TYPE(RSTTYPE)) reg_c (CLK,RSTC ,CEC,C,C_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(CREG),.WIDTH(48),.RST_TYPE(RSTTYPE)) reg_c (CLK,RSTC ,CEC,C,C_reg);
end

///////////////////////////////////////////////////////////// 
 
if (DREG==0) begin
	reg_plus_mux   #(.PIPELINE(DREG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_d (CLK,RSTD,CED,D,D_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(DREG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_d (CLK,RSTD ,CED,D,D_reg);
end
 
////////////////////////////////////

if (A1REG==0) begin
	reg_plus_mux   #(.PIPELINE(A1REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_a1 (CLK,RSTA ,CEA,A_reg,A_reg2);

end
else begin
		reg_plus_mux   #(.PIPELINE(A1REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_a1 (CLK,RSTA ,CEA,A_reg,A_reg2);
end

/////////////////////////////////////////////////////

if (B1REG==0) begin
	reg_plus_mux   #(.PIPELINE(B1REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_b1 (CLK,RSTB ,CEB,op_mode_4_mux,B_reg2);

end
else begin
		reg_plus_mux   #(.PIPELINE(B1REG),.WIDTH(18),.RST_TYPE(RSTTYPE)) reg_b1 (CLK,RSTB ,CEB,op_mode_4_mux,B_reg2);
end

/////////////////////////////////////////////////////

if (MREG==0) begin
	reg_plus_mux   #(.PIPELINE(MREG),.WIDTH(36),.RST_TYPE(RSTTYPE)) reg_m (CLK,RSTM ,CEM,MUL,M_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(MREG),.WIDTH(36),.RST_TYPE(RSTTYPE)) reg_m (CLK,RSTM ,CEM,MUL,M_reg);
end

///////////////////////////////////////////////////////////// 
 
if (PREG==0) begin
	reg_plus_mux   #(.PIPELINE(PREG),.WIDTH(48),.RST_TYPE(RSTTYPE)) reg_p (CLK,RSTP,CEP,z_x_ADDER,P_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(PREG),.WIDTH(48),.RST_TYPE(RSTTYPE)) reg_p (CLK,RSTP ,CEP,z_x_ADDER,P_reg);
end

//////////////////////////////////////////////////////

if (CARRYINREG==0) begin
	reg_plus_mux   #(.PIPELINE(CARRYINREG),.WIDTH(1),.RST_TYPE(RSTTYPE)) reg_carr (CLK,RSTCARRYIN ,CECARRYIN,CARRYIN_mux,CARRYIN_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(CARRYINREG),.WIDTH(1),.RST_TYPE(RSTTYPE)) reg_carr (CLK,RSTCARRYIN ,CECARRYIN,CARRYIN_mux,CARRYIN_reg);
end

///////////////////////////////////////////////////////////// 
 
if (CARRYOUTREG==0) begin
	reg_plus_mux   #(.PIPELINE(CARRYOUTREG),.WIDTH(1),.RST_TYPE(RSTTYPE)) reg_carro (CLK,RSTCARRYIN,CECARRYIN,cout,CARRYOUT_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(CARRYOUTREG),.WIDTH(1),.RST_TYPE(RSTTYPE)) reg_carro (CLK,RSTCARRYIN ,CECARRYIN,cout,CARRYOUT_reg);
end
 
//////////////////////////////////////////

if (OPMODEREG==0) begin
	reg_plus_mux   #(.PIPELINE(OPMODEREG),.WIDTH(8),.RST_TYPE(RSTTYPE)) reg_op (CLK,RSTOPMODE,CEOPMODE,OPMODE,OPMODE_reg);

end
else begin
		reg_plus_mux   #(.PIPELINE(OPMODEREG),.WIDTH(8),.RST_TYPE(RSTTYPE)) reg_op (CLK,RSTOPMODE ,CEOPMODE,OPMODE,OPMODE_reg);
end
endgenerate 
////////////////////////////////////////////////////
always @(*) begin
if(B_INPUT=="DIRECT") begin
	B_mux=B;
end
else   if (B_INPUT=="CASCADE")begin
	B_mux=BCIN;
end
else begin
	B_mux=0;
end
//////////////////////////////
if(OPMODE_reg[6]==0) begin
 B_D_ADD_SUB=B_reg+D_reg;	
end
else begin
	B_D_ADD_SUB=D_reg-B_reg;
end
///////////////////////////////
if(OPMODE_reg[4]==0) begin
	op_mode_4_mux=B_reg;
end
else begin
	op_mode_4_mux=B_D_ADD_SUB;
end
/////////////////////////////
MUL= B_reg2*A_reg2;
 ////////////////////
 case (OPMODE_reg[1:0])
2'b00: MUX_x=0;
2'b01:MUX_x={12'b0,M_reg};
2'b10:MUX_x=P_reg;
2'b11: MUX_x={D_reg[11:0],A_reg2[17:0],B_reg2[17:0]};
endcase
//////////////////////////////////////
if(CARRYINSEL=="OPMODE5") begin
	CARRYIN_mux=OPMODE_reg[5];
end
else  if (CARRYINSEL==CARRYIN)begin
	CARRYIN_mux=CARRYIN;
end
else begin
	CARRYIN_mux=0;
end
/////////////////////////////////////////
case (OPMODE_reg[3:2])
2'b00: MUX_z=0;
2'b01:MUX_z=PCIN;
2'b10:MUX_z=P_reg;
2'b11: MUX_z=C_reg;
endcase
///////////////////////////////////
if(OPMODE_reg[7]==1) begin
{cout,z_x_ADDER}=MUX_z-(MUX_x+CARRYIN_reg);
end
else begin
	{cout,z_x_ADDER}=MUX_z+MUX_x+CARRYIN_reg;
end
end
endmodule 
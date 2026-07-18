module SYS_CTRL (
input 	ALU_out_valid ,
input RX_D_VLD,
input RF_RdData_Valid,
input CLK,RST,
input FIFO_FULL,
input [15:0] ALU_OUT,
input [7:0] RX_P_Data,
input [7:0] RF_RD_DATA,
output reg ALU_EN,
output reg WR_INC_FIFO,
output reg [3:0] ALU_FUNC,
output  reg CLK_GATE_EN,
output reg [3:0] RF_Address,
output reg RF_WrEN,RF_RdEn,
output reg [7:0] RF_WrData,
output  reg [7:0] FIFO_WR_Data,
output  reg clk_div_en
	);
/*.........defining states parameters................*/ 
localparam IDLE=4'd0,
            REG_WR_ADDR=4'd1,
            REG_WR_DATA=4'd2,
            REG_RD_ADDR=4'd3,
            REG_RD_DATA=4'd4,
            ALU_A=4'd5,
            ALU_B=4'd6,
            ALU_FUN=4'd7,
            ALU_OPERATION=4'd8,
            ALU_FIFO_FRAME1=4'd9,
            ALU_FIFO_FRAME2=4'd10;
/*...................ns,cs..............*/
reg [3:0] cs,ns;
reg [3:0] address_stored;
reg [15:0] reg_alu_storing_value;
always @(posedge CLK or negedge RST) begin
	if (~RST)
		address_stored<=0;
	else
	address_stored<=RF_Address;
end
always @(posedge CLK or negedge RST) begin
	if (~RST)
		reg_alu_storing_value<=0;
	else if (ALU_out_valid)
	reg_alu_storing_value<=ALU_OUT;
end
/*................cs logic.............*/
always @(posedge CLK or negedge RST) begin	
	if(~RST) begin
		cs<=IDLE;
	end
 else begin
cs<=ns;
	end
end
/*...................ns logic..................*/
always @(*) begin
case(cs) 
IDLE:begin
if(RX_D_VLD&RX_P_Data==8'hAA) begin
	ns=REG_WR_ADDR;
end
else if (RX_D_VLD&RX_P_Data==8'hBB)
ns=REG_RD_ADDR;
else if (RX_D_VLD&RX_P_Data==8'hCC)
ns=ALU_A;
else if (RX_D_VLD&RX_P_Data==8'hDD)
ns=ALU_FUN;
else
ns=IDLE;
end
REG_WR_ADDR:begin
if(RX_D_VLD) begin
	ns=REG_WR_DATA;
end
else
	ns=REG_WR_ADDR;
end
REG_WR_DATA:begin
	if (RX_D_VLD)
		ns=IDLE;
	else
ns=REG_WR_DATA;
end
REG_RD_ADDR:begin
if(RX_D_VLD) begin
	ns=REG_RD_DATA;
end
else 
	ns=REG_RD_ADDR;
end

REG_RD_DATA: begin
	if(!RF_RdData_Valid)
	ns=REG_RD_DATA;
else 
	ns=IDLE;
end
ALU_A: begin
if(RX_D_VLD) 
ns=ALU_B;
else
	ns=ALU_A;
end
ALU_B: begin
if(RX_D_VLD) 
ns=ALU_FUN;
else
	ns=ALU_B;
end
ALU_FUN:begin
	if (RX_D_VLD)
	ns=ALU_OPERATION;
else
	ns=ALU_FUN;
end
ALU_OPERATION:begin
	if(!ALU_out_valid) 
		ns=ALU_OPERATION;
	else
ns=ALU_FIFO_FRAME1;
end
ALU_FIFO_FRAME1:begin
ns=ALU_FIFO_FRAME2;
end
ALU_FIFO_FRAME2:begin
ns=IDLE;
end
default:ns=IDLE;
endcase
end
/*....................output logic...............*/
always @(*) begin
case(cs)
IDLE:begin
 WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
RF_Address=0;
 RF_WrEN=0;
 RF_RdEn=0;
RF_WrData=0;
 FIFO_WR_Data=0;
 clk_div_en=1;
end
REG_WR_ADDR:begin
 ALU_EN=0;
 WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
RF_Address=RX_P_Data;
 RF_WrEN=0;
 RF_RdEn=0;
RF_WrData=0;
 FIFO_WR_Data=0;
 clk_div_en=1;
end
REG_WR_DATA:begin
 ALU_EN=0;
 WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
 if(RX_D_VLD) begin
 RF_WrEN=1;
end
else begin
	RF_WrEN=0;
end
 RF_RdEn=0;
 RF_Address=address_stored;
RF_WrData=RX_P_Data;
 FIFO_WR_Data=0;
 clk_div_en=1;
end
REG_RD_ADDR:begin
ALU_EN=0;
 WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
 RF_WrEN=0;
 RF_RdEn=1;
RF_Address=RX_P_Data;
RF_WrData=0;
 FIFO_WR_Data=0;
 clk_div_en=1;
end
REG_RD_DATA: begin
 ALU_EN=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
  WR_INC_FIFO=1;
FIFO_WR_Data=(!FIFO_FULL)?RF_RD_DATA:0;	
RF_Address=address_stored;
 RF_WrEN=0;
 RF_RdEn=1;
RF_WrData=0;
clk_div_en=1;
end
ALU_A: begin
 ALU_EN=0;
 WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
 RF_Address=0;
 RF_WrEN=1;
 RF_RdEn=0;
RF_WrData=RX_P_Data;
 FIFO_WR_Data=0;
 clk_div_en=1;
end
ALU_B: begin
 ALU_EN=0;
 WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
 RF_Address=(RX_D_VLD)?1:0;
 RF_WrEN=1;
 RF_RdEn=0;
RF_WrData=RX_P_Data;
 FIFO_WR_Data=0;
 clk_div_en=1;
end
ALU_FUN:begin
 ALU_EN=1;
 WR_INC_FIFO=0;
 ALU_FUNC=(RX_D_VLD)?RX_P_Data:0;
 CLK_GATE_EN=1;
RF_Address=0;
 RF_WrEN=0;
 RF_RdEn=0;
RF_WrData=0;
 FIFO_WR_Data=0;
 clk_div_en=1;	
end
ALU_OPERATION:begin
 ALU_EN=0;
 WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=1;
 RF_Address=0;
 RF_WrEN=0;
 RF_RdEn=0;
RF_WrData=0;
 FIFO_WR_Data=0;	
 clk_div_en=1;
end
ALU_FIFO_FRAME1: begin
ALU_EN=0;
 WR_INC_FIFO=1;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
RF_Address=0;
 RF_WrEN=0;
 RF_RdEn=0;
RF_WrData=0;
if(!FIFO_FULL)
 FIFO_WR_Data=reg_alu_storing_value[7:0];
else
	FIFO_WR_Data=0;
 clk_div_en=1;
end
ALU_FIFO_FRAME2: begin
ALU_EN=0;
 WR_INC_FIFO=1;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
RF_Address=0;
 RF_WrEN=0;
 RF_RdEn=0;
RF_WrData=0;
if(!FIFO_FULL)
 FIFO_WR_Data=reg_alu_storing_value[15:8];
else
	FIFO_WR_Data=0;
 clk_div_en=1;
end
default:begin
WR_INC_FIFO=0;
 ALU_FUNC=0;
 CLK_GATE_EN=0;
RF_Address=0;
 RF_WrEN=0;
 RF_RdEn=0;
RF_WrData=0;
 FIFO_WR_Data=0;
 clk_div_en=1;
end
endcase
end
endmodule 

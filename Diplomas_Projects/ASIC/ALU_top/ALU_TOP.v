module ALU_TOP 
# (
parameter IN_DATA_WIDTH=16,
parameter ARITH_OUT_WIDTH=32,
 parameter ALU_OUT_WIDTH=16

	)
 (
input CLK,RST,
input [IN_DATA_WIDTH-1:0] A,B,
input [3:0] ALU_FUN,
output ARITH_flag,LOGIC_flag,SHIFT_flag,CMP_flag,
output [ALU_OUT_WIDTH-1:0] LOGIC_OUT,
output [ALU_OUT_WIDTH-1:0] SHIFT_OUT,
output[ALU_OUT_WIDTH-1:0] CMP_OUT,
output [ARITH_OUT_WIDTH-1:0] ARITH_OUT

);
 //instantiation of decoder unit
 wire ARITH_EN,LOG_EN,SH_EN,CMP_EN;
DECODER dec ( .DEC_IN(ALU_FUN[3:2]), .ARITH_EN(ARITH_EN),.LOG_EN(LOG_EN),.SH_EN(SH_EN),.CMP_EN(CMP_EN));
//instantiation of logic unit
 LOGIC_UNIT  #( IN_DATA_WIDTH,ALU_OUT_WIDTH) logic (
 .CLK(CLK),.RST(RST),.LOG_EN(LOG_EN),
 .A(A),.B(B),
.LOGIC_IN(ALU_FUN[1:0]),
 .Logic_OUT(LOGIC_OUT),
.Logic_flag(LOGIC_flag)  
	);
//instantiation of cmp block
 CMP_UNIT   #( IN_DATA_WIDTH, ALU_OUT_WIDTH) cmp(
.CLK(CLK),.RST(RST),.CMP_EN(CMP_EN),
 .A(A),.B(B),
.CMP_IN(ALU_FUN[1:0]),
.CMP_flag(CMP_flag), .CMP_OUT(CMP_OUT)
);	
 // instantiation of shift unit
  SHIFT_UNIT #( IN_DATA_WIDTH, ALU_OUT_WIDTH) shift(
 .CLK(CLK),.RST(RST),.SH_EN(SH_EN),
.A(A),.B(B),
 .SHIFT_IN(ALU_FUN[1:0]),
.SHIFT_OUT(SHIFT_OUT),. SHIFT_flag(SHIFT_flag)  
	);
  // instantiations of arithmetic unit
  ARITHMETIC_UNIT #( IN_DATA_WIDTH, ARITH_OUT_WIDTH) arith(
   .CLK(CLK),.RST(RST),.ARITH_EN(ARITH_EN), .ARITH_IN(ALU_FUN[1:0]),
   .A(A),.B(B),.ARITH_flag(ARITH_flag), .ARITH_OUT(ARITH_OUT)

	);
  endmodule
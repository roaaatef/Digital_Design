/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Sep  7 14:45:14 2025
/////////////////////////////////////////////////////////////


module SERIALIZER ( BUSY, DATA_VALID, P_DATA, CLK, RST, ser_en, ser_done, 
        ser_data );
  input [7:0] P_DATA;
  input BUSY, DATA_VALID, CLK, RST, ser_en;
  output ser_done, ser_data;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N26, N27, N28, N29, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [3:0] counter;
  wire   [7:0] serial_data;

  DFFRX1M \counter_reg[3]  ( .D(N29), .CK(CLK), .RN(RST), .Q(counter[3]), .QN(
        n2) );
  DFFRQX1M \serial_data_reg[7]  ( .D(N14), .CK(CLK), .RN(RST), .Q(
        serial_data[7]) );
  DFFRQX1M ser_data_reg ( .D(n11), .CK(CLK), .RN(RST), .Q(ser_data) );
  DFFRQX1M \serial_data_reg[6]  ( .D(N13), .CK(CLK), .RN(RST), .Q(
        serial_data[6]) );
  DFFRQX1M \serial_data_reg[5]  ( .D(N12), .CK(CLK), .RN(RST), .Q(
        serial_data[5]) );
  DFFRQX1M \serial_data_reg[4]  ( .D(N11), .CK(CLK), .RN(RST), .Q(
        serial_data[4]) );
  DFFRQX1M \serial_data_reg[3]  ( .D(N10), .CK(CLK), .RN(RST), .Q(
        serial_data[3]) );
  DFFRQX1M \serial_data_reg[2]  ( .D(N9), .CK(CLK), .RN(RST), .Q(
        serial_data[2]) );
  DFFRQX1M \serial_data_reg[1]  ( .D(N8), .CK(CLK), .RN(RST), .Q(
        serial_data[1]) );
  DFFRQX1M \serial_data_reg[0]  ( .D(N7), .CK(CLK), .RN(RST), .Q(
        serial_data[0]) );
  DFFRX2M \counter_reg[1]  ( .D(N27), .CK(CLK), .RN(RST), .Q(counter[1]) );
  DFFRX2M \counter_reg[0]  ( .D(N26), .CK(CLK), .RN(RST), .Q(counter[0]) );
  DFFRX2M \counter_reg[2]  ( .D(N28), .CK(CLK), .RN(RST), .Q(counter[2]), .QN(
        n3) );
  NOR4X4M U3 ( .A(n2), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(
        ser_done) );
  XNOR2X2M U4 ( .A(counter[0]), .B(counter[1]), .Y(n10) );
  NAND3X1M U5 ( .A(counter[0]), .B(n9), .C(counter[1]), .Y(n6) );
  NOR2X8M U6 ( .A(n1), .B(n12), .Y(n4) );
  INVX2M U7 ( .A(n9), .Y(n1) );
  CLKBUFX6M U8 ( .A(n5), .Y(n12) );
  NOR2BX1M U9 ( .AN(DATA_VALID), .B(BUSY), .Y(n5) );
  NOR2BX4M U10 ( .AN(ser_en), .B(ser_done), .Y(n9) );
  AO22X1M U11 ( .A0(serial_data[0]), .A1(n4), .B0(ser_data), .B1(n12), .Y(n11)
         );
  AO22X1M U12 ( .A0(P_DATA[0]), .A1(n12), .B0(serial_data[1]), .B1(n4), .Y(N7)
         );
  AO22X1M U13 ( .A0(P_DATA[1]), .A1(n12), .B0(serial_data[2]), .B1(n4), .Y(N8)
         );
  AO22X1M U14 ( .A0(P_DATA[2]), .A1(n12), .B0(serial_data[3]), .B1(n4), .Y(N9)
         );
  AO22X1M U15 ( .A0(P_DATA[3]), .A1(n12), .B0(serial_data[4]), .B1(n4), .Y(N10) );
  AO22X1M U16 ( .A0(P_DATA[4]), .A1(n12), .B0(serial_data[5]), .B1(n4), .Y(N11) );
  AO22X1M U17 ( .A0(P_DATA[5]), .A1(n12), .B0(serial_data[6]), .B1(n4), .Y(N12) );
  AO22X1M U18 ( .A0(P_DATA[6]), .A1(n12), .B0(serial_data[7]), .B1(n4), .Y(N13) );
  AND2X2M U19 ( .A(P_DATA[7]), .B(n12), .Y(N14) );
  AOI2B1X2M U20 ( .A1N(counter[1]), .A0(n9), .B0(N26), .Y(n8) );
  OAI22X1M U21 ( .A0(n8), .A1(n3), .B0(counter[2]), .B1(n6), .Y(N28) );
  NOR2X2M U22 ( .A(n1), .B(counter[0]), .Y(N26) );
  OAI32X2M U23 ( .A0(n3), .A1(counter[3]), .A2(n6), .B0(n7), .B1(n2), .Y(N29)
         );
  OA21X2M U24 ( .A0(n1), .A1(counter[2]), .B0(n8), .Y(n7) );
  NOR2X2M U25 ( .A(n10), .B(n1), .Y(N27) );
endmodule


module MUX ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n1, n2;

  NAND2X8M U3 ( .A(n2), .B(n1), .Y(TX_OUT) );
  CLKNAND2X2M U4 ( .A(ser_data), .B(mux_sel[0]), .Y(n2) );
  OAI21X2M U5 ( .A0(mux_sel[0]), .A1(par_bit), .B0(mux_sel[1]), .Y(n1) );
endmodule


module PARITY_CALC ( BUSY, CLK, RST, P_DATA, DATA_VALID, PAR_TYP, PAR_BIT );
  input [7:0] P_DATA;
  input BUSY, CLK, RST, DATA_VALID, PAR_TYP;
  output PAR_BIT;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX1M PAR_BIT_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(PAR_BIT) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(PAR_BIT), .A1N(n2), .Y(n7) );
  NAND2BX1M U7 ( .AN(BUSY), .B(DATA_VALID), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U9 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module FSM ( DATA_VALID, PAR_EN, ser_done, CLK, RST, BUSY, ser_en, MUX_SEL );
  output [1:0] MUX_SEL;
  input DATA_VALID, PAR_EN, ser_done, CLK, RST;
  output BUSY, ser_en;
  wire   n10, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST), .Q(cs[1]), .QN(n2) );
  DFFRQX4M \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(RST), .Q(cs[2]) );
  DFFRX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST), .Q(cs[0]), .QN(n3) );
  NOR2X2M U3 ( .A(n3), .B(cs[2]), .Y(ser_en) );
  NAND3X2M U4 ( .A(n3), .B(n2), .C(cs[2]), .Y(n9) );
  NOR3X2M U5 ( .A(n2), .B(cs[2]), .C(n6), .Y(ns[2]) );
  OAI211X2M U6 ( .A0(cs[2]), .A1(n2), .B0(n9), .C0(MUX_SEL[1]), .Y(n10) );
  BUFX10M U7 ( .A(n10), .Y(BUSY) );
  INVX2M U8 ( .A(ser_en), .Y(MUX_SEL[1]) );
  AOI21X2M U9 ( .A0(n7), .A1(n5), .B0(MUX_SEL[1]), .Y(ns[1]) );
  NAND2BX2M U10 ( .AN(cs[2]), .B(n8), .Y(MUX_SEL[0]) );
  XNOR2X2M U11 ( .A(n2), .B(cs[0]), .Y(n8) );
  OAI32X2M U12 ( .A0(n4), .A1(cs[2]), .A2(cs[1]), .B0(MUX_SEL[1]), .B1(n7), 
        .Y(ns[0]) );
  INVX2M U13 ( .A(DATA_VALID), .Y(n4) );
  AOI21X2M U14 ( .A0(ser_done), .A1(n5), .B0(n3), .Y(n6) );
  INVX2M U15 ( .A(PAR_EN), .Y(n5) );
  AND2X2M U16 ( .A(ser_done), .B(cs[1]), .Y(n7) );
endmodule


module UART_TX_TOP ( CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, P_DATA, TX_OUT, 
        busy );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit;
  wire   [1:0] mux_sel;

  SERIALIZER ser ( .BUSY(busy), .DATA_VALID(DATA_VALID), .P_DATA(P_DATA), 
        .CLK(CLK), .RST(RST), .ser_en(ser_en), .ser_done(ser_done), .ser_data(
        ser_data) );
  MUX mux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  PARITY_CALC par ( .BUSY(busy), .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .DATA_VALID(DATA_VALID), .PAR_TYP(PAR_TYP), .PAR_BIT(par_bit) );
  FSM fsm ( .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(ser_done), 
        .CLK(CLK), .RST(RST), .BUSY(busy), .ser_en(ser_en), .MUX_SEL(mux_sel)
         );
endmodule


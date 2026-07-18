/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Sep 12 05:20:46 2025
/////////////////////////////////////////////////////////////


module SERIALIZER_test_1 ( BUSY, DATA_VALID, P_DATA, CLK, RST, ser_en, 
        ser_done, ser_data, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input BUSY, DATA_VALID, CLK, RST, ser_en, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   serial_data_6_, serial_data_5_, serial_data_4_, serial_data_3_,
         serial_data_2_, serial_data_1_, serial_data_0_, N7, N8, N9, N10, N11,
         N12, N13, N14, N26, N27, N28, N29, n17, n18, n19, n20, n21, n22, n23,
         n24, n35, n36, n38, n40, n1, n2, n3, n4;
  wire   [3:0] counter;

  SDFFRQX2M counter_reg_3_ ( .D(N29), .SI(n4), .SE(test_se), .CK(CLK), .RN(RST), .Q(counter[3]) );
  SDFFRQX2M ser_data_reg ( .D(n24), .SI(n38), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(ser_data) );
  SDFFRQX2M serial_data_reg_6_ ( .D(N13), .SI(serial_data_5_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serial_data_6_) );
  SDFFRQX2M serial_data_reg_5_ ( .D(N12), .SI(serial_data_4_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serial_data_5_) );
  SDFFRQX2M serial_data_reg_4_ ( .D(N11), .SI(serial_data_3_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serial_data_4_) );
  SDFFRQX2M serial_data_reg_3_ ( .D(N10), .SI(serial_data_2_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serial_data_3_) );
  SDFFRQX2M serial_data_reg_2_ ( .D(N9), .SI(serial_data_1_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serial_data_2_) );
  SDFFRQX2M serial_data_reg_1_ ( .D(N8), .SI(serial_data_0_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serial_data_1_) );
  SDFFRQX2M serial_data_reg_0_ ( .D(N7), .SI(ser_data), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(serial_data_0_) );
  SDFFRX2M counter_reg_0_ ( .D(N26), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(counter[0]), .QN(n40) );
  NOR4X4M U16 ( .A(n38), .B(counter[0]), .C(n1), .D(n3), .Y(ser_done) );
  XNOR2X2M U17 ( .A(counter[0]), .B(n1), .Y(n23) );
  NAND3X1M U18 ( .A(counter[0]), .B(n22), .C(n1), .Y(n19) );
  NOR2X2M U32 ( .A(n36), .B(counter[0]), .Y(N26) );
  NOR2X8M U33 ( .A(n36), .B(n35), .Y(n17) );
  INVX2M U34 ( .A(n22), .Y(n36) );
  CLKBUFX6M U35 ( .A(n18), .Y(n35) );
  NOR2BX1M U36 ( .AN(DATA_VALID), .B(BUSY), .Y(n18) );
  NOR2BX4M U37 ( .AN(ser_en), .B(ser_done), .Y(n22) );
  AO22X1M U38 ( .A0(serial_data_0_), .A1(n17), .B0(ser_data), .B1(n35), .Y(n24) );
  AO22X1M U39 ( .A0(P_DATA[0]), .A1(n35), .B0(serial_data_1_), .B1(n17), .Y(N7) );
  AO22X1M U40 ( .A0(P_DATA[1]), .A1(n35), .B0(serial_data_2_), .B1(n17), .Y(N8) );
  AO22X1M U41 ( .A0(P_DATA[2]), .A1(n35), .B0(serial_data_3_), .B1(n17), .Y(N9) );
  AO22X1M U42 ( .A0(P_DATA[3]), .A1(n35), .B0(serial_data_4_), .B1(n17), .Y(
        N10) );
  AO22X1M U43 ( .A0(P_DATA[4]), .A1(n35), .B0(serial_data_5_), .B1(n17), .Y(
        N11) );
  AO22X1M U44 ( .A0(P_DATA[5]), .A1(n35), .B0(serial_data_6_), .B1(n17), .Y(
        N12) );
  AO22X1M U45 ( .A0(P_DATA[6]), .A1(n35), .B0(n17), .B1(test_so), .Y(N13) );
  AND2X2M U46 ( .A(P_DATA[7]), .B(n35), .Y(N14) );
  OAI32X2M U47 ( .A0(n4), .A1(counter[3]), .A2(n19), .B0(n20), .B1(n38), .Y(
        N29) );
  OA21X2M U48 ( .A0(n36), .A1(n3), .B0(n21), .Y(n20) );
  AOI2B1X2M U49 ( .A1N(n1), .A0(n22), .B0(N26), .Y(n21) );
  OAI22X1M U50 ( .A0(n21), .A1(n4), .B0(n3), .B1(n19), .Y(N28) );
  INVX2M U51 ( .A(counter[3]), .Y(n38) );
  NOR2X2M U52 ( .A(n23), .B(n36), .Y(N27) );
  SDFFRQX2M counter_reg_2_ ( .D(N28), .SI(n2), .SE(test_se), .CK(CLK), .RN(RST), .Q(n3) );
  SDFFRQX4M counter_reg_1_ ( .D(N27), .SI(n40), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(n1) );
  SDFFRHQX8M serial_data_reg_7_ ( .D(N14), .SI(serial_data_6_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(test_so) );
  INVX2M U3 ( .A(n1), .Y(n2) );
  INVX2M U4 ( .A(n3), .Y(n4) );
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


module PARITY_CALC_test_1 ( BUSY, CLK, RST, P_DATA, DATA_VALID, PAR_TYP, 
        PAR_BIT, test_si, test_se );
  input [7:0] P_DATA;
  input BUSY, CLK, RST, DATA_VALID, PAR_TYP, test_si, test_se;
  output PAR_BIT;
  wire   n2, n3, n4, n5, n6, n7, n8;

  SDFFRQX2M PAR_BIT_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(PAR_BIT) );
  XOR3XLM U5 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U6 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n7) );
  OAI2BB2X1M U7 ( .B0(n2), .B1(n3), .A0N(PAR_BIT), .A1N(n3), .Y(n8) );
  NAND2BX1M U8 ( .AN(BUSY), .B(DATA_VALID), .Y(n3) );
  XOR3XLM U9 ( .A(n4), .B(PAR_TYP), .C(n5), .Y(n2) );
  XOR3XLM U10 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n5) );
  XNOR2X2M U11 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
endmodule


module FSM_test_1 ( DATA_VALID, PAR_EN, ser_done, CLK, RST, BUSY, ser_en, 
        MUX_SEL, test_si, test_so, test_se );
  output [1:0] MUX_SEL;
  input DATA_VALID, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output BUSY, ser_en, test_so;
  wire   n17, n9, n10, n11, n12, n15, n16, n1, n2, n3, n4;
  wire   [2:0] ns;

  SDFFRQX4M cs_reg_2_ ( .D(ns[2]), .SI(n1), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(test_so) );
  NOR3X2M U6 ( .A(n2), .B(test_so), .C(n9), .Y(ns[2]) );
  NOR2X2M U7 ( .A(n4), .B(test_so), .Y(ser_en) );
  OAI211X2M U8 ( .A0(test_so), .A1(n2), .B0(n12), .C0(MUX_SEL[1]), .Y(n17) );
  NAND2BX1M U9 ( .AN(test_so), .B(n11), .Y(MUX_SEL[0]) );
  NAND3XLM U10 ( .A(n4), .B(n2), .C(test_so), .Y(n12) );
  BUFX10M U14 ( .A(n17), .Y(BUSY) );
  INVX2M U15 ( .A(ser_en), .Y(MUX_SEL[1]) );
  AOI21X2M U16 ( .A0(n10), .A1(n16), .B0(MUX_SEL[1]), .Y(ns[1]) );
  XNOR2X2M U17 ( .A(n2), .B(n3), .Y(n11) );
  OAI32X2M U18 ( .A0(n15), .A1(test_so), .A2(n1), .B0(MUX_SEL[1]), .B1(n10), 
        .Y(ns[0]) );
  INVX2M U19 ( .A(DATA_VALID), .Y(n15) );
  AOI21X2M U20 ( .A0(ser_done), .A1(n16), .B0(n4), .Y(n9) );
  INVX2M U21 ( .A(PAR_EN), .Y(n16) );
  AND2X2M U22 ( .A(ser_done), .B(n1), .Y(n10) );
  SDFFRQX2M cs_reg_0_ ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(n3) );
  SDFFRQX2M cs_reg_1_ ( .D(ns[1]), .SI(n4), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(n1) );
  INVX2M U3 ( .A(n1), .Y(n2) );
  INVX2M U4 ( .A(n3), .Y(n4) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X12M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module UART_TX_TOP ( CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, P_DATA, SI, SE, 
        test_mode, scan_clk, scan_rst, SO, TX_OUT, busy );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, SI, SE, test_mode, scan_clk,
         scan_rst;
  output SO, TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, CLK_f, RST_f, par_bit, n3, n5;
  wire   [1:0] mux_sel;

  CLKBUFX40M U1 ( .A(SE), .Y(n5) );
  SERIALIZER_test_1 ser ( .BUSY(busy), .DATA_VALID(DATA_VALID), .P_DATA(P_DATA), .CLK(CLK_f), .RST(RST_f), .ser_en(ser_en), .ser_done(ser_done), .ser_data(
        ser_data), .test_si(par_bit), .test_so(SO), .test_se(n5) );
  MUX mux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  PARITY_CALC_test_1 par ( .BUSY(busy), .CLK(CLK_f), .RST(RST_f), .P_DATA(
        P_DATA), .DATA_VALID(DATA_VALID), .PAR_TYP(PAR_TYP), .PAR_BIT(par_bit), 
        .test_si(n3), .test_se(n5) );
  FSM_test_1 fsm ( .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .CLK(CLK_f), .RST(RST_f), .BUSY(busy), .ser_en(ser_en), 
        .MUX_SEL(mux_sel), .test_si(SI), .test_so(n3), .test_se(n5) );
  mux2X1_1 U7 ( .IN_0(CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(CLK_f) );
  mux2X1_0 U8 ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(RST_f) );
endmodule


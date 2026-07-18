/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Sep 12 05:31:24 2025
/////////////////////////////////////////////////////////////


module SERIALIZER_test_1 ( BUSY, DATA_VALID, P_DATA, CLK, RST, ser_en, 
        ser_done, ser_data, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input BUSY, DATA_VALID, CLK, RST, ser_en, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   n4, N7, N8, N9, N10, N11, N12, N13, N14, N26, N27, N28, N29, n19, n20,
         n21, n23, n24, n14, n15, n33, n34, n35, n36, n37, n38, n39, n40, n42,
         n43, n44, n45, n46, n47, n48, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n66, n1, n2;
  wire   [3:0] counter;
  wire   [7:0] serial_data;

  SDFFRQX1M serial_data_reg_1_ ( .D(N8), .SI(serial_data[0]), .SE(n57), .CK(
        CLK), .RN(RST), .Q(serial_data[1]) );
  SDFFRQX1M serial_data_reg_6_ ( .D(N13), .SI(serial_data[5]), .SE(n56), .CK(
        CLK), .RN(RST), .Q(serial_data[6]) );
  SDFFRQX1M serial_data_reg_5_ ( .D(N12), .SI(serial_data[4]), .SE(n55), .CK(
        CLK), .RN(RST), .Q(serial_data[5]) );
  SDFFRQX1M serial_data_reg_4_ ( .D(N11), .SI(serial_data[3]), .SE(n62), .CK(
        CLK), .RN(RST), .Q(serial_data[4]) );
  SDFFRQX1M serial_data_reg_3_ ( .D(N10), .SI(serial_data[2]), .SE(n58), .CK(
        CLK), .RN(RST), .Q(serial_data[3]) );
  SDFFRQX1M serial_data_reg_2_ ( .D(N9), .SI(serial_data[1]), .SE(n60), .CK(
        CLK), .RN(RST), .Q(serial_data[2]) );
  SDFFRQX1M serial_data_reg_0_ ( .D(N7), .SI(ser_data), .SE(n60), .CK(CLK), 
        .RN(RST), .Q(serial_data[0]) );
  SDFFRHQX2M counter_reg_1_ ( .D(N27), .SI(n63), .SE(n58), .CK(CLK), .RN(RST), 
        .Q(counter[1]) );
  INVX2M U17 ( .A(counter[2]), .Y(n14) );
  NAND4BX1M U19 ( .AN(counter[0]), .B(n42), .C(counter[3]), .D(n14), .Y(n43)
         );
  XNOR2X2M U20 ( .A(n63), .B(counter[1]), .Y(n23) );
  INVX2M U21 ( .A(n14), .Y(n15) );
  NAND3X1M U22 ( .A(n64), .B(n46), .C(counter[0]), .Y(n19) );
  NAND2BX2M U35 ( .AN(ser_done), .B(ser_en), .Y(n47) );
  OAI2BB1X1M U36 ( .A0N(P_DATA[2]), .A1N(n45), .B0(n38), .Y(N9) );
  OAI2BB1X1M U37 ( .A0N(P_DATA[0]), .A1N(n45), .B0(n39), .Y(N7) );
  OAI2BB1X1M U38 ( .A0N(P_DATA[4]), .A1N(n45), .B0(n36), .Y(N11) );
  OAI2BB1X1M U39 ( .A0N(P_DATA[6]), .A1N(n45), .B0(n34), .Y(N13) );
  OAI2BB1X1M U40 ( .A0N(P_DATA[5]), .A1N(n45), .B0(n35), .Y(N12) );
  OAI2BB1X1M U41 ( .A0N(ser_data), .A1N(n45), .B0(n40), .Y(n24) );
  OAI2BB1X1M U42 ( .A0N(P_DATA[1]), .A1N(n45), .B0(n33), .Y(N8) );
  NOR2X2M U43 ( .A(n47), .B(counter[0]), .Y(N26) );
  INVX6M U44 ( .A(n47), .Y(n46) );
  NAND3X2M U45 ( .A(serial_data[2]), .B(n46), .C(n1), .Y(n33) );
  NAND3X1M U46 ( .A(n1), .B(n46), .C(n66), .Y(n34) );
  NAND3X1M U47 ( .A(serial_data[6]), .B(n46), .C(n1), .Y(n35) );
  NAND3X1M U48 ( .A(serial_data[5]), .B(n46), .C(n1), .Y(n36) );
  OAI2BB1X1M U49 ( .A0N(P_DATA[3]), .A1N(n45), .B0(n37), .Y(N10) );
  NAND3X1M U50 ( .A(serial_data[4]), .B(n46), .C(n1), .Y(n37) );
  NAND3X1M U51 ( .A(serial_data[3]), .B(n46), .C(n1), .Y(n38) );
  NAND3X1M U52 ( .A(serial_data[1]), .B(n46), .C(n1), .Y(n39) );
  NAND3X1M U53 ( .A(serial_data[0]), .B(n46), .C(n1), .Y(n40) );
  OAI32X2M U54 ( .A0(n14), .A1(counter[3]), .A2(n19), .B0(n20), .B1(n48), .Y(
        N29) );
  INVX2M U55 ( .A(counter[3]), .Y(n48) );
  OA21X2M U56 ( .A0(n47), .A1(n15), .B0(n21), .Y(n20) );
  AOI2B1X2M U57 ( .A1N(counter[1]), .A0(n46), .B0(N26), .Y(n21) );
  OAI22X1M U58 ( .A0(n21), .A1(n14), .B0(n15), .B1(n19), .Y(N28) );
  INVX2M U59 ( .A(n43), .Y(ser_done) );
  INVX2M U60 ( .A(counter[1]), .Y(n42) );
  NOR2X2M U61 ( .A(n23), .B(n47), .Y(N27) );
  DLY1X1M U65 ( .A(test_se), .Y(n52) );
  DLY1X1M U66 ( .A(test_se), .Y(n53) );
  DLY1X1M U67 ( .A(test_se), .Y(n54) );
  DLY1X1M U68 ( .A(n59), .Y(n55) );
  DLY1X1M U69 ( .A(n54), .Y(n56) );
  DLY1X1M U71 ( .A(n59), .Y(n58) );
  DLY1X1M U72 ( .A(n53), .Y(n59) );
  DLY1X1M U73 ( .A(n53), .Y(n60) );
  DLY1X1M U74 ( .A(n52), .Y(n61) );
  DLY1X1M U75 ( .A(n52), .Y(n62) );
  DLY1X1M U76 ( .A(counter[0]), .Y(n63) );
  INVXLM U77 ( .A(n42), .Y(n64) );
  DLY1X1M U79 ( .A(serial_data[7]), .Y(n66) );
  SDFFRQX2M counter_reg_0_ ( .D(N26), .SI(test_si), .SE(n56), .CK(CLK), .RN(
        RST), .Q(counter[0]) );
  SDFFRQX2M counter_reg_2_ ( .D(N28), .SI(counter[1]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(counter[2]) );
  SDFFRQX1M ser_data_reg ( .D(n24), .SI(n48), .SE(n61), .CK(CLK), .RN(RST), 
        .Q(n4) );
  SDFFRHQX4M serial_data_reg_7_ ( .D(N14), .SI(serial_data[6]), .SE(n61), .CK(
        CLK), .RN(RST), .Q(serial_data[7]) );
  SDFFRHQX2M counter_reg_3_ ( .D(N29), .SI(n15), .SE(n57), .CK(CLK), .RN(RST), 
        .Q(counter[3]) );
  AND2X1M U3 ( .A(P_DATA[7]), .B(n45), .Y(N14) );
  NAND2BX8M U4 ( .AN(BUSY), .B(DATA_VALID), .Y(n44) );
  BUFX32M U5 ( .A(n44), .Y(n1) );
  INVX8M U6 ( .A(n1), .Y(n45) );
  BUFX2M U7 ( .A(n62), .Y(n57) );
  BUFX2M U8 ( .A(serial_data[7]), .Y(test_so) );
  CLKINVX8M U9 ( .A(n4), .Y(n2) );
  INVX14M U10 ( .A(n2), .Y(ser_data) );
endmodule


module MUX ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n3, n4;

  OAI21X8M U3 ( .A0(ser_data), .A1(mux_sel[1]), .B0(n4), .Y(n3) );
  AO21X8M U5 ( .A0(par_bit), .A1(mux_sel[1]), .B0(mux_sel[0]), .Y(n4) );
  INVX32M U4 ( .A(n3), .Y(TX_OUT) );
endmodule


module PARITY_CALC_test_1 ( BUSY, CLK, RST, P_DATA, DATA_VALID, PAR_TYP, 
        PAR_BIT, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input BUSY, CLK, RST, DATA_VALID, PAR_TYP, test_si, test_se;
  output PAR_BIT, test_so;
  wire   n3, n4, n6, n7, n9, n10, n11, n1;

  CLKXOR2X2M U4 ( .A(P_DATA[4]), .B(P_DATA[5]), .Y(n9) );
  INVX2M U7 ( .A(PAR_TYP), .Y(n3) );
  INVX2M U11 ( .A(PAR_BIT), .Y(test_so) );
  NOR2BX2M U13 ( .AN(DATA_VALID), .B(BUSY), .Y(n11) );
  SDFFRHQX1M PAR_BIT_reg ( .D(n1), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(PAR_BIT) );
  XOR2X2M U3 ( .A(P_DATA[6]), .B(P_DATA[7]), .Y(n10) );
  MXI2X12M U5 ( .A(test_so), .B(n6), .S0(n11), .Y(n1) );
  XNOR3X4M U6 ( .A(n10), .B(n9), .C(n7), .Y(n6) );
  XOR3X4M U8 ( .A(n3), .B(P_DATA[0]), .C(n4), .Y(n7) );
  XNOR3X4M U9 ( .A(P_DATA[1]), .B(P_DATA[3]), .C(P_DATA[2]), .Y(n4) );
endmodule


module FSM_test_1 ( DATA_VALID, PAR_EN, ser_done, CLK, RST, BUSY, ser_en, 
        MUX_SEL, test_si, test_so, test_se );
  output [1:0] MUX_SEL;
  input DATA_VALID, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output BUSY, ser_en, test_so;
  wire   n9, n11, n12, n13, n15, n18, n19, n24, n25, n26, n28, n30, n31, n32,
         n33, n34, n1;
  wire   [2:0] ns;

  AOI2B1X1M U11 ( .A1N(PAR_EN), .A0(ser_done), .B0(n34), .Y(n12) );
  NAND3X2M U22 ( .A(DATA_VALID), .B(n32), .C(test_so), .Y(n9) );
  OAI2BB1X1M U23 ( .A0N(ser_en), .A1N(n13), .B0(n9), .Y(ns[0]) );
  OA21X1M U25 ( .A0(PAR_EN), .A1(n13), .B0(ser_en), .Y(ns[1]) );
  NAND2BX1M U26 ( .AN(n11), .B(n1), .Y(n13) );
  INVX2M U27 ( .A(ser_done), .Y(n11) );
  SDFFRX4M cs_reg_0_ ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(n33), .QN(n34) );
  SDFFRX4M cs_reg_1_ ( .D(ns[1]), .SI(n34), .SE(n24), .CK(CLK), .RN(RST), .Q(
        n31), .QN(n32) );
  SDFFRHQX8M cs_reg_2_ ( .D(ns[2]), .SI(n32), .SE(n24), .CK(CLK), .RN(RST), 
        .Q(n26) );
  DLY1X1M U6 ( .A(test_se), .Y(n24) );
  CLKNAND2X16M U12 ( .A(n34), .B(test_so), .Y(n15) );
  CLKINVX40M U14 ( .A(ser_en), .Y(n28) );
  XNOR2X8M U15 ( .A(n30), .B(n15), .Y(MUX_SEL[0]) );
  OR2X12M U16 ( .A(n31), .B(n26), .Y(n30) );
  NOR3BX2M U3 ( .AN(test_so), .B(n12), .C(n32), .Y(ns[2]) );
  INVX18M U4 ( .A(n26), .Y(test_so) );
  INVX10M U5 ( .A(MUX_SEL[1]), .Y(ser_en) );
  INVX2M U7 ( .A(n32), .Y(n1) );
  NAND2X8M U8 ( .A(n28), .B(n19), .Y(BUSY) );
  INVX6M U9 ( .A(n25), .Y(n19) );
  MXI2X6M U10 ( .A(n32), .B(n18), .S0(n26), .Y(n25) );
  OR2X6M U13 ( .A(n31), .B(n33), .Y(n18) );
  NAND2X8M U17 ( .A(test_so), .B(n33), .Y(MUX_SEL[1]) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X8M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module UART_TX_TOP ( CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, P_DATA, SI, SE, 
        test_mode, scan_clk, scan_rst, SO, TX_OUT, busy );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, SI, SE, test_mode, scan_clk,
         scan_rst;
  output SO, TX_OUT, busy;
  wire   n6, ser_en, ser_done, ser_data, CLK_f, RST_f, par_bit, n9, n10, n13,
         n14, n15, n16, n17, n18;
  wire   [1:0] mux_sel;

  CLKBUFX40M U1 ( .A(n6), .Y(busy) );
  DLY1X1M U2 ( .A(n15), .Y(n13) );
  DLY1X1M U3 ( .A(n16), .Y(n14) );
  INVXLM U4 ( .A(SE), .Y(n15) );
  INVXLM U5 ( .A(n13), .Y(n16) );
  INVXLM U6 ( .A(n13), .Y(n17) );
  SERIALIZER_test_1 ser ( .BUSY(busy), .DATA_VALID(n18), .P_DATA(P_DATA), 
        .CLK(CLK_f), .RST(RST_f), .ser_en(ser_en), .ser_done(ser_done), 
        .ser_data(ser_data), .test_si(n9), .test_so(SO), .test_se(SE) );
  MUX mux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  PARITY_CALC_test_1 par ( .BUSY(busy), .CLK(CLK_f), .RST(RST_f), .P_DATA(
        P_DATA), .DATA_VALID(n18), .PAR_TYP(PAR_TYP), .PAR_BIT(par_bit), 
        .test_si(n10), .test_so(n9), .test_se(n17) );
  FSM_test_1 fsm ( .DATA_VALID(n18), .PAR_EN(PAR_EN), .ser_done(ser_done), 
        .CLK(CLK_f), .RST(RST_f), .BUSY(n6), .ser_en(ser_en), .MUX_SEL(mux_sel), .test_si(SI), .test_so(n10), .test_se(n14) );
  mux2X1_1 U7 ( .IN_0(CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(CLK_f) );
  mux2X1_0 U8 ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(RST_f) );
  BUFX10M U9 ( .A(DATA_VALID), .Y(n18) );
endmodule


/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 23:57:29 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module SYS_CTRL_test_1 ( ALU_out_valid, RX_D_VLD, RF_RdData_Valid, CLK, RST, 
        FIFO_FULL, ALU_OUT, RX_P_Data, RF_RD_DATA, ALU_EN, WR_INC_FIFO, 
        ALU_FUNC, CLK_GATE_EN, RF_Address, RF_WrEN, RF_RdEn, RF_WrData, 
        FIFO_WR_Data, clk_div_en, test_si, test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RF_RD_DATA;
  output [3:0] ALU_FUNC;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  output [7:0] FIFO_WR_Data;
  input ALU_out_valid, RX_D_VLD, RF_RdData_Valid, CLK, RST, FIFO_FULL, test_si,
         test_se;
  output ALU_EN, WR_INC_FIFO, CLK_GATE_EN, RF_WrEN, RF_RdEn, clk_div_en,
         test_so;
  wire   n1, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n15, n17, n18, n19,
         n20, n22, n23, n24, n25, n26, n28, n29, n31, n32, n33, n34, n35, n37,
         n39, n40, n41, n42, n46, n47, n48, n49, n50, n53, n54, n55, n56, n57,
         n58, n59, n70, n72, n74, n76, n78, n80, n82, n84, n86, n88, n90, n92,
         n94, n96, n98, n100, n101, n12, n16, n21, n27, n30, n36, n38, n43,
         n44, n45, n51, n52, n102, n103, n104;
  wire   [3:0] address_stored;
  wire   [15:0] reg_alu_storing_value;
  wire   [3:0] cs;
  wire   [3:0] ns;
  assign test_so = reg_alu_storing_value[15];

  SDFFRQX2M \address_stored_reg[2]  ( .D(RF_Address[2]), .SI(address_stored[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(address_stored[2]) );
  SDFFRQX2M \reg_alu_storing_value_reg[7]  ( .D(n84), .SI(
        reg_alu_storing_value[6]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[7]) );
  SDFFRQX2M \reg_alu_storing_value_reg[6]  ( .D(n82), .SI(
        reg_alu_storing_value[5]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[6]) );
  SDFFRQX2M \reg_alu_storing_value_reg[5]  ( .D(n80), .SI(
        reg_alu_storing_value[4]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[5]) );
  SDFFRQX2M \reg_alu_storing_value_reg[4]  ( .D(n78), .SI(
        reg_alu_storing_value[3]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[4]) );
  SDFFRQX2M \reg_alu_storing_value_reg[3]  ( .D(n76), .SI(
        reg_alu_storing_value[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[3]) );
  SDFFRQX2M \reg_alu_storing_value_reg[2]  ( .D(n74), .SI(
        reg_alu_storing_value[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[2]) );
  SDFFRQX2M \reg_alu_storing_value_reg[1]  ( .D(n72), .SI(
        reg_alu_storing_value[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[1]) );
  SDFFRQX2M \reg_alu_storing_value_reg[0]  ( .D(n70), .SI(cs[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(reg_alu_storing_value[0]) );
  SDFFRQX2M \reg_alu_storing_value_reg[15]  ( .D(n100), .SI(
        reg_alu_storing_value[14]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[15]) );
  SDFFRQX2M \reg_alu_storing_value_reg[14]  ( .D(n98), .SI(
        reg_alu_storing_value[13]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[14]) );
  SDFFRQX2M \reg_alu_storing_value_reg[13]  ( .D(n96), .SI(
        reg_alu_storing_value[12]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[13]) );
  SDFFRQX2M \reg_alu_storing_value_reg[12]  ( .D(n94), .SI(
        reg_alu_storing_value[11]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[12]) );
  SDFFRQX2M \reg_alu_storing_value_reg[11]  ( .D(n92), .SI(
        reg_alu_storing_value[10]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[11]) );
  SDFFRQX2M \reg_alu_storing_value_reg[10]  ( .D(n90), .SI(
        reg_alu_storing_value[9]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[10]) );
  SDFFRQX2M \reg_alu_storing_value_reg[9]  ( .D(n88), .SI(
        reg_alu_storing_value[8]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[9]) );
  SDFFRQX2M \reg_alu_storing_value_reg[8]  ( .D(n86), .SI(
        reg_alu_storing_value[7]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[8]) );
  SDFFRQX2M \address_stored_reg[3]  ( .D(RF_Address[3]), .SI(address_stored[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(address_stored[3]) );
  SDFFRQX2M \address_stored_reg[1]  ( .D(RF_Address[1]), .SI(address_stored[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(address_stored[1]) );
  SDFFRQX2M \address_stored_reg[0]  ( .D(RF_Address[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(address_stored[0]) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(cs[0]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(cs[1]) );
  SDFFRQX2M \cs_reg[2]  ( .D(n101), .SI(n104), .SE(test_se), .CK(CLK), .RN(RST), .Q(cs[2]) );
  SDFFRQX2M \cs_reg[3]  ( .D(ns[3]), .SI(n103), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(cs[3]) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(address_stored[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(cs[0]) );
  OAI2BB2X4M U5 ( .B0(n21), .B1(n28), .A0N(address_stored[3]), .A1N(n47), .Y(
        RF_Address[3]) );
  NOR2X2M U6 ( .A(n36), .B(n1), .Y(ALU_FUNC[0]) );
  NOR2X2M U7 ( .A(n27), .B(n1), .Y(ALU_FUNC[2]) );
  OAI2BB2X2M U8 ( .B0(n27), .B1(n28), .A0N(address_stored[2]), .A1N(n47), .Y(
        RF_Address[2]) );
  NAND2X2M U9 ( .A(n29), .B(n15), .Y(n47) );
  INVX2M U10 ( .A(n41), .Y(n44) );
  INVX2M U11 ( .A(n29), .Y(n45) );
  NOR2X2M U12 ( .A(n30), .B(n1), .Y(ALU_FUNC[1]) );
  NOR2X2M U13 ( .A(n21), .B(n1), .Y(ALU_FUNC[3]) );
  NAND3X2M U14 ( .A(n51), .B(n104), .C(n46), .Y(n29) );
  NAND2X2M U15 ( .A(n37), .B(n49), .Y(n15) );
  AND3X2M U16 ( .A(n13), .B(n3), .C(n15), .Y(n42) );
  NOR2X2M U17 ( .A(n2), .B(n51), .Y(n41) );
  NOR2X2M U18 ( .A(n42), .B(n36), .Y(RF_WrData[0]) );
  NOR2X2M U19 ( .A(n42), .B(n30), .Y(RF_WrData[1]) );
  NOR2X2M U20 ( .A(n42), .B(n27), .Y(RF_WrData[2]) );
  NOR2X2M U21 ( .A(n42), .B(n21), .Y(RF_WrData[3]) );
  NOR2X2M U22 ( .A(n42), .B(n16), .Y(RF_WrData[4]) );
  OAI211X2M U23 ( .A0(n43), .A1(n15), .B0(n13), .C0(n3), .Y(RF_WrEN) );
  AND3X2M U24 ( .A(n37), .B(n51), .C(n104), .Y(n9) );
  NAND2X2M U25 ( .A(n49), .B(n46), .Y(n3) );
  NAND3X2M U26 ( .A(n29), .B(n44), .C(n40), .Y(WR_INC_FIFO) );
  NAND2X2M U27 ( .A(n29), .B(n14), .Y(RF_RdEn) );
  INVX2M U28 ( .A(n40), .Y(n52) );
  NOR2BX2M U29 ( .AN(n32), .B(n10), .Y(n20) );
  NAND4X2M U30 ( .A(n35), .B(n9), .C(n36), .D(n16), .Y(n32) );
  NAND2X2M U31 ( .A(n1), .B(n2), .Y(ns[3]) );
  INVX2M U32 ( .A(n2), .Y(n102) );
  INVX2M U33 ( .A(n11), .Y(n12) );
  NOR2X2M U34 ( .A(n103), .B(cs[3]), .Y(n46) );
  NAND2X2M U35 ( .A(RX_D_VLD), .B(ALU_EN), .Y(n1) );
  INVX2M U36 ( .A(n33), .Y(ALU_EN) );
  NAND3X2M U37 ( .A(cs[0]), .B(n46), .C(cs[1]), .Y(n33) );
  INVX2M U38 ( .A(cs[2]), .Y(n103) );
  NOR2X2M U39 ( .A(n104), .B(cs[0]), .Y(n49) );
  OAI21X2M U40 ( .A0(n43), .A1(n3), .B0(n48), .Y(RF_Address[0]) );
  AOI2BB2XLM U41 ( .B0(address_stored[0]), .B1(n47), .A0N(n28), .A1N(n36), .Y(
        n48) );
  INVX2M U42 ( .A(RX_P_Data[0]), .Y(n36) );
  INVX2M U43 ( .A(cs[0]), .Y(n51) );
  INVX2M U44 ( .A(cs[1]), .Y(n104) );
  INVX2M U45 ( .A(RX_P_Data[2]), .Y(n27) );
  INVX2M U46 ( .A(RX_P_Data[1]), .Y(n30) );
  INVX2M U47 ( .A(RX_P_Data[3]), .Y(n21) );
  NAND4X2M U48 ( .A(n3), .B(n44), .C(n5), .D(n6), .Y(ns[1]) );
  OAI2BB1X2M U49 ( .A0N(n14), .A1N(n15), .B0(n43), .Y(n5) );
  AOI221XLM U50 ( .A0(RX_D_VLD), .A1(n7), .B0(n12), .B1(n9), .C0(n10), .Y(n6)
         );
  OAI31X1M U51 ( .A0(n51), .A1(cs[2]), .A2(cs[1]), .B0(n13), .Y(n7) );
  NOR2X2M U52 ( .A(cs[3]), .B(cs[2]), .Y(n37) );
  OAI21X2M U53 ( .A0(RX_D_VLD), .A1(n33), .B0(n34), .Y(n10) );
  NAND4X2M U54 ( .A(RX_P_Data[4]), .B(RX_P_Data[0]), .C(n35), .D(n9), .Y(n34)
         );
  NOR2BX2M U55 ( .AN(RX_P_Data[5]), .B(n42), .Y(RF_WrData[5]) );
  NOR2BX2M U56 ( .AN(RX_P_Data[6]), .B(n42), .Y(RF_WrData[6]) );
  NOR2BX2M U57 ( .AN(RX_P_Data[7]), .B(n42), .Y(RF_WrData[7]) );
  OAI2BB2X1M U58 ( .B0(n30), .B1(n28), .A0N(address_stored[1]), .A1N(n47), .Y(
        RF_Address[1]) );
  NAND3X2M U59 ( .A(n104), .B(n103), .C(cs[3]), .Y(n2) );
  NAND2X2M U60 ( .A(n37), .B(cs[0]), .Y(n28) );
  NAND3X2M U61 ( .A(n46), .B(n104), .C(cs[0]), .Y(n13) );
  NAND3X2M U62 ( .A(cs[1]), .B(cs[0]), .C(n37), .Y(n14) );
  NOR2X2M U63 ( .A(FIFO_FULL), .B(n59), .Y(FIFO_WR_Data[0]) );
  AOI222X1M U64 ( .A0(RF_RD_DATA[0]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[0]), .C0(n52), .C1(reg_alu_storing_value[8]), 
        .Y(n59) );
  NOR2X2M U65 ( .A(FIFO_FULL), .B(n58), .Y(FIFO_WR_Data[1]) );
  AOI222X1M U66 ( .A0(RF_RD_DATA[1]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[1]), .C0(n52), .C1(reg_alu_storing_value[9]), 
        .Y(n58) );
  NOR2X2M U67 ( .A(FIFO_FULL), .B(n57), .Y(FIFO_WR_Data[2]) );
  AOI222X1M U68 ( .A0(RF_RD_DATA[2]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[2]), .C0(n52), .C1(reg_alu_storing_value[10]), 
        .Y(n57) );
  NOR2X2M U69 ( .A(FIFO_FULL), .B(n56), .Y(FIFO_WR_Data[3]) );
  AOI222X1M U70 ( .A0(RF_RD_DATA[3]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[3]), .C0(n52), .C1(reg_alu_storing_value[11]), 
        .Y(n56) );
  NOR2X2M U71 ( .A(FIFO_FULL), .B(n55), .Y(FIFO_WR_Data[4]) );
  AOI222X1M U72 ( .A0(RF_RD_DATA[4]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[4]), .C0(n52), .C1(reg_alu_storing_value[12]), 
        .Y(n55) );
  NOR2X2M U73 ( .A(FIFO_FULL), .B(n54), .Y(FIFO_WR_Data[5]) );
  AOI222X1M U74 ( .A0(RF_RD_DATA[5]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[5]), .C0(n52), .C1(reg_alu_storing_value[13]), 
        .Y(n54) );
  NOR2X2M U75 ( .A(FIFO_FULL), .B(n53), .Y(FIFO_WR_Data[6]) );
  AOI222X1M U76 ( .A0(RF_RD_DATA[6]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[6]), .C0(n52), .C1(reg_alu_storing_value[14]), 
        .Y(n53) );
  NOR2X2M U77 ( .A(FIFO_FULL), .B(n50), .Y(FIFO_WR_Data[7]) );
  AOI222X1M U78 ( .A0(RF_RD_DATA[7]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[7]), .C0(n52), .C1(reg_alu_storing_value[15]), 
        .Y(n50) );
  NAND3X2M U79 ( .A(cs[3]), .B(n103), .C(n49), .Y(n40) );
  INVX2M U80 ( .A(RX_D_VLD), .Y(n43) );
  NAND4X2M U81 ( .A(RX_P_Data[1]), .B(RX_P_Data[4]), .C(RX_P_Data[5]), .D(n26), 
        .Y(n11) );
  NOR4X1M U82 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n24), .D(n36), .Y(n26)
         );
  OAI211X2M U83 ( .A0(RF_RdData_Valid), .A1(n29), .B0(n20), .C0(n38), .Y(n101)
         );
  INVX2M U84 ( .A(n31), .Y(n38) );
  OAI211X2M U85 ( .A0(n14), .A1(n43), .B0(n3), .C0(n13), .Y(n31) );
  OAI211X2M U86 ( .A0(RX_D_VLD), .A1(n17), .B0(n18), .C0(n19), .Y(ns[0]) );
  AND2X2M U87 ( .A(n13), .B(n28), .Y(n17) );
  AOI32X1M U88 ( .A0(n102), .A1(n51), .A2(ALU_out_valid), .B0(n9), .B1(n22), 
        .Y(n18) );
  OA21X2M U89 ( .A0(n3), .A1(n43), .B0(n20), .Y(n19) );
  NAND3X2M U90 ( .A(RX_P_Data[3]), .B(RX_D_VLD), .C(RX_P_Data[7]), .Y(n24) );
  AND3X2M U91 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n39), .Y(n35) );
  NOR3X2M U92 ( .A(n24), .B(RX_P_Data[5]), .C(RX_P_Data[1]), .Y(n39) );
  INVX2M U93 ( .A(RX_P_Data[4]), .Y(n16) );
  NAND2X2M U94 ( .A(n11), .B(n23), .Y(n22) );
  NAND4BX1M U95 ( .AN(n24), .B(RX_P_Data[1]), .C(RX_P_Data[5]), .D(n25), .Y(
        n23) );
  NOR4X1M U96 ( .A(RX_P_Data[6]), .B(RX_P_Data[4]), .C(RX_P_Data[2]), .D(
        RX_P_Data[0]), .Y(n25) );
  AO2B2X2M U97 ( .B0(ALU_OUT[0]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[0]), .A1N(ALU_out_valid), .Y(n70) );
  AO2B2X2M U98 ( .B0(ALU_OUT[1]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[1]), .A1N(ALU_out_valid), .Y(n72) );
  AO2B2X2M U99 ( .B0(ALU_OUT[2]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[2]), .A1N(ALU_out_valid), .Y(n74) );
  AO2B2X2M U100 ( .B0(ALU_OUT[3]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[3]), .A1N(ALU_out_valid), .Y(n76) );
  AO2B2X2M U101 ( .B0(ALU_OUT[4]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[4]), .A1N(ALU_out_valid), .Y(n78) );
  AO2B2X2M U102 ( .B0(ALU_OUT[5]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[5]), .A1N(ALU_out_valid), .Y(n80) );
  AO2B2X2M U103 ( .B0(ALU_OUT[6]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[6]), .A1N(ALU_out_valid), .Y(n82) );
  AO2B2X2M U104 ( .B0(ALU_OUT[7]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[7]), .A1N(ALU_out_valid), .Y(n84) );
  AO2B2X2M U105 ( .B0(ALU_OUT[8]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[8]), .A1N(ALU_out_valid), .Y(n86) );
  AO2B2X2M U106 ( .B0(ALU_OUT[9]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[9]), .A1N(ALU_out_valid), .Y(n88) );
  AO2B2X2M U107 ( .B0(ALU_OUT[10]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[10]), .A1N(ALU_out_valid), .Y(n90) );
  AO2B2X2M U108 ( .B0(ALU_OUT[11]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[11]), .A1N(ALU_out_valid), .Y(n92) );
  AO2B2X2M U109 ( .B0(ALU_OUT[12]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[12]), .A1N(ALU_out_valid), .Y(n94) );
  AO2B2X2M U110 ( .B0(ALU_OUT[13]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[13]), .A1N(ALU_out_valid), .Y(n96) );
  AO2B2X2M U111 ( .B0(ALU_OUT[14]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[14]), .A1N(ALU_out_valid), .Y(n98) );
  AO2B2X2M U136 ( .B0(ALU_OUT[15]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[15]), .A1N(ALU_out_valid), .Y(n100) );
  OAI21X2M U137 ( .A0(cs[0]), .A1(n2), .B0(n33), .Y(CLK_GATE_EN) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module CLK_GATE ( CLK_EN, mode_enable, CLK, GATED_CLK );
  input CLK_EN, mode_enable, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(mode_enable), .Y(_0_net_) );
endmodule


module Register_file_ADDR4_DATA_WIDTH8_WIDTH8_DEPTH16_test_1 ( WrData, REF_CLK, 
        RST, WrEn, RdEn, Address, RdData, RdData_Valid, REG0, REG1, REG2, REG3, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input REF_CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, \Reg_File[15][7] , \Reg_File[15][6] ,
         \Reg_File[15][5] , \Reg_File[15][4] , \Reg_File[15][3] ,
         \Reg_File[15][2] , \Reg_File[15][1] , \Reg_File[15][0] ,
         \Reg_File[14][7] , \Reg_File[14][6] , \Reg_File[14][5] ,
         \Reg_File[14][4] , \Reg_File[14][3] , \Reg_File[14][2] ,
         \Reg_File[14][1] , \Reg_File[14][0] , \Reg_File[13][7] ,
         \Reg_File[13][6] , \Reg_File[13][5] , \Reg_File[13][4] ,
         \Reg_File[13][3] , \Reg_File[13][2] , \Reg_File[13][1] ,
         \Reg_File[13][0] , \Reg_File[12][7] , \Reg_File[12][6] ,
         \Reg_File[12][5] , \Reg_File[12][4] , \Reg_File[12][3] ,
         \Reg_File[12][2] , \Reg_File[12][1] , \Reg_File[12][0] ,
         \Reg_File[11][7] , \Reg_File[11][6] , \Reg_File[11][5] ,
         \Reg_File[11][4] , \Reg_File[11][3] , \Reg_File[11][2] ,
         \Reg_File[11][1] , \Reg_File[11][0] , \Reg_File[10][7] ,
         \Reg_File[10][6] , \Reg_File[10][5] , \Reg_File[10][4] ,
         \Reg_File[10][3] , \Reg_File[10][2] , \Reg_File[10][1] ,
         \Reg_File[10][0] , \Reg_File[9][7] , \Reg_File[9][6] ,
         \Reg_File[9][5] , \Reg_File[9][4] , \Reg_File[9][3] ,
         \Reg_File[9][2] , \Reg_File[9][1] , \Reg_File[9][0] ,
         \Reg_File[8][7] , \Reg_File[8][6] , \Reg_File[8][5] ,
         \Reg_File[8][4] , \Reg_File[8][3] , \Reg_File[8][2] ,
         \Reg_File[8][1] , \Reg_File[8][0] , \Reg_File[7][7] ,
         \Reg_File[7][6] , \Reg_File[7][5] , \Reg_File[7][4] ,
         \Reg_File[7][3] , \Reg_File[7][2] , \Reg_File[7][1] ,
         \Reg_File[7][0] , \Reg_File[6][7] , \Reg_File[6][6] ,
         \Reg_File[6][5] , \Reg_File[6][4] , \Reg_File[6][3] ,
         \Reg_File[6][2] , \Reg_File[6][1] , \Reg_File[6][0] ,
         \Reg_File[5][7] , \Reg_File[5][6] , \Reg_File[5][5] ,
         \Reg_File[5][4] , \Reg_File[5][3] , \Reg_File[5][2] ,
         \Reg_File[5][1] , \Reg_File[5][0] , \Reg_File[4][7] ,
         \Reg_File[4][6] , \Reg_File[4][5] , \Reg_File[4][4] ,
         \Reg_File[4][3] , \Reg_File[4][2] , \Reg_File[4][1] ,
         \Reg_File[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \Reg_File[15][7] ;
  assign test_so1 = \Reg_File[10][2] ;

  SDFFRQX2M RdData_Valid_reg ( .D(n185), .SI(test_si1), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(RdData_Valid) );
  SDFFRQX2M \Reg_File_reg[13][7]  ( .D(n297), .SI(\Reg_File[13][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][7] ) );
  SDFFRQX2M \Reg_File_reg[13][6]  ( .D(n296), .SI(\Reg_File[13][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][6] ) );
  SDFFRQX2M \Reg_File_reg[13][5]  ( .D(n295), .SI(\Reg_File[13][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][5] ) );
  SDFFRQX2M \Reg_File_reg[13][4]  ( .D(n294), .SI(\Reg_File[13][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][4] ) );
  SDFFRQX2M \Reg_File_reg[13][3]  ( .D(n293), .SI(\Reg_File[13][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][3] ) );
  SDFFRQX2M \Reg_File_reg[13][2]  ( .D(n292), .SI(\Reg_File[13][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][2] ) );
  SDFFRQX2M \Reg_File_reg[13][1]  ( .D(n291), .SI(\Reg_File[13][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][1] ) );
  SDFFRQX2M \Reg_File_reg[13][0]  ( .D(n290), .SI(\Reg_File[12][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[13][0] ) );
  SDFFRQX2M \Reg_File_reg[9][7]  ( .D(n265), .SI(\Reg_File[9][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[9][7] ) );
  SDFFRQX2M \Reg_File_reg[9][6]  ( .D(n264), .SI(\Reg_File[9][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[9][6] ) );
  SDFFRQX2M \Reg_File_reg[9][5]  ( .D(n263), .SI(\Reg_File[9][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[9][5] ) );
  SDFFRQX2M \Reg_File_reg[9][4]  ( .D(n262), .SI(\Reg_File[9][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[9][4] ) );
  SDFFRQX2M \Reg_File_reg[9][3]  ( .D(n261), .SI(\Reg_File[9][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[9][3] ) );
  SDFFRQX2M \Reg_File_reg[9][2]  ( .D(n260), .SI(\Reg_File[9][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[9][2] ) );
  SDFFRQX2M \Reg_File_reg[9][1]  ( .D(n259), .SI(\Reg_File[9][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[9][1] ) );
  SDFFRQX2M \Reg_File_reg[9][0]  ( .D(n258), .SI(\Reg_File[8][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[9][0] ) );
  SDFFRQX2M \Reg_File_reg[5][7]  ( .D(n233), .SI(\Reg_File[5][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[5][7] ) );
  SDFFRQX2M \Reg_File_reg[5][6]  ( .D(n232), .SI(\Reg_File[5][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[5][6] ) );
  SDFFRQX2M \Reg_File_reg[5][5]  ( .D(n231), .SI(\Reg_File[5][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[5][5] ) );
  SDFFRQX2M \Reg_File_reg[5][4]  ( .D(n230), .SI(\Reg_File[5][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[5][4] ) );
  SDFFRQX2M \Reg_File_reg[5][3]  ( .D(n229), .SI(\Reg_File[5][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[5][3] ) );
  SDFFRQX2M \Reg_File_reg[5][2]  ( .D(n228), .SI(\Reg_File[5][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[5][2] ) );
  SDFFRQX2M \Reg_File_reg[5][1]  ( .D(n227), .SI(\Reg_File[5][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[5][1] ) );
  SDFFRQX2M \Reg_File_reg[5][0]  ( .D(n226), .SI(\Reg_File[4][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[5][0] ) );
  SDFFRQX2M \Reg_File_reg[15][7]  ( .D(n313), .SI(\Reg_File[15][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n343), .Q(\Reg_File[15][7] ) );
  SDFFRQX2M \Reg_File_reg[15][6]  ( .D(n312), .SI(\Reg_File[15][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[15][6] ) );
  SDFFRQX2M \Reg_File_reg[15][5]  ( .D(n311), .SI(\Reg_File[15][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[15][5] ) );
  SDFFRQX2M \Reg_File_reg[15][4]  ( .D(n310), .SI(\Reg_File[15][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[15][4] ) );
  SDFFRQX2M \Reg_File_reg[15][3]  ( .D(n309), .SI(\Reg_File[15][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[15][3] ) );
  SDFFRQX2M \Reg_File_reg[15][2]  ( .D(n308), .SI(\Reg_File[15][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[15][2] ) );
  SDFFRQX2M \Reg_File_reg[15][1]  ( .D(n307), .SI(\Reg_File[15][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[15][1] ) );
  SDFFRQX2M \Reg_File_reg[15][0]  ( .D(n306), .SI(\Reg_File[14][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[15][0] ) );
  SDFFRQX2M \Reg_File_reg[11][7]  ( .D(n281), .SI(\Reg_File[11][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][7] ) );
  SDFFRQX2M \Reg_File_reg[11][6]  ( .D(n280), .SI(\Reg_File[11][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][6] ) );
  SDFFRQX2M \Reg_File_reg[11][5]  ( .D(n279), .SI(\Reg_File[11][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][5] ) );
  SDFFRQX2M \Reg_File_reg[11][4]  ( .D(n278), .SI(\Reg_File[11][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][4] ) );
  SDFFRQX2M \Reg_File_reg[11][3]  ( .D(n277), .SI(\Reg_File[11][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][3] ) );
  SDFFRQX2M \Reg_File_reg[11][2]  ( .D(n276), .SI(\Reg_File[11][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][2] ) );
  SDFFRQX2M \Reg_File_reg[11][1]  ( .D(n275), .SI(\Reg_File[11][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][1] ) );
  SDFFRQX2M \Reg_File_reg[11][0]  ( .D(n274), .SI(\Reg_File[10][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[11][0] ) );
  SDFFRQX2M \Reg_File_reg[7][7]  ( .D(n249), .SI(\Reg_File[7][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[7][7] ) );
  SDFFRQX2M \Reg_File_reg[7][6]  ( .D(n248), .SI(\Reg_File[7][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[7][6] ) );
  SDFFRQX2M \Reg_File_reg[7][5]  ( .D(n247), .SI(\Reg_File[7][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[7][5] ) );
  SDFFRQX2M \Reg_File_reg[7][4]  ( .D(n246), .SI(\Reg_File[7][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[7][4] ) );
  SDFFRQX2M \Reg_File_reg[7][3]  ( .D(n245), .SI(\Reg_File[7][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[7][3] ) );
  SDFFRQX2M \Reg_File_reg[7][2]  ( .D(n244), .SI(\Reg_File[7][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[7][2] ) );
  SDFFRQX2M \Reg_File_reg[7][1]  ( .D(n243), .SI(\Reg_File[7][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[7][1] ) );
  SDFFRQX2M \Reg_File_reg[7][0]  ( .D(n242), .SI(\Reg_File[6][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[7][0] ) );
  SDFFRQX2M \Reg_File_reg[14][7]  ( .D(n305), .SI(\Reg_File[14][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[14][7] ) );
  SDFFRQX2M \Reg_File_reg[14][6]  ( .D(n304), .SI(\Reg_File[14][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[14][6] ) );
  SDFFRQX2M \Reg_File_reg[14][5]  ( .D(n303), .SI(\Reg_File[14][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[14][5] ) );
  SDFFRQX2M \Reg_File_reg[14][4]  ( .D(n302), .SI(\Reg_File[14][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[14][4] ) );
  SDFFRQX2M \Reg_File_reg[14][3]  ( .D(n301), .SI(\Reg_File[14][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n352), .Q(\Reg_File[14][3] ) );
  SDFFRQX2M \Reg_File_reg[14][2]  ( .D(n300), .SI(\Reg_File[14][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[14][2] ) );
  SDFFRQX2M \Reg_File_reg[14][1]  ( .D(n299), .SI(\Reg_File[14][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[14][1] ) );
  SDFFRQX2M \Reg_File_reg[14][0]  ( .D(n298), .SI(\Reg_File[13][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[14][0] ) );
  SDFFRQX2M \Reg_File_reg[10][7]  ( .D(n273), .SI(\Reg_File[10][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[10][7] ) );
  SDFFRQX2M \Reg_File_reg[10][6]  ( .D(n272), .SI(\Reg_File[10][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[10][6] ) );
  SDFFRQX2M \Reg_File_reg[10][5]  ( .D(n271), .SI(\Reg_File[10][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[10][5] ) );
  SDFFRQX2M \Reg_File_reg[10][4]  ( .D(n270), .SI(\Reg_File[10][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[10][4] ) );
  SDFFRQX2M \Reg_File_reg[10][3]  ( .D(n269), .SI(test_si2), .SE(test_se), 
        .CK(REF_CLK), .RN(n349), .Q(\Reg_File[10][3] ) );
  SDFFRQX2M \Reg_File_reg[10][2]  ( .D(n268), .SI(\Reg_File[10][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[10][2] ) );
  SDFFRQX2M \Reg_File_reg[10][1]  ( .D(n267), .SI(\Reg_File[10][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[10][1] ) );
  SDFFRQX2M \Reg_File_reg[10][0]  ( .D(n266), .SI(\Reg_File[9][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n349), .Q(\Reg_File[10][0] ) );
  SDFFRQX2M \Reg_File_reg[6][7]  ( .D(n241), .SI(\Reg_File[6][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][7] ) );
  SDFFRQX2M \Reg_File_reg[6][6]  ( .D(n240), .SI(\Reg_File[6][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][6] ) );
  SDFFRQX2M \Reg_File_reg[6][5]  ( .D(n239), .SI(\Reg_File[6][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][5] ) );
  SDFFRQX2M \Reg_File_reg[6][4]  ( .D(n238), .SI(\Reg_File[6][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][4] ) );
  SDFFRQX2M \Reg_File_reg[6][3]  ( .D(n237), .SI(\Reg_File[6][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][3] ) );
  SDFFRQX2M \Reg_File_reg[6][2]  ( .D(n236), .SI(\Reg_File[6][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][2] ) );
  SDFFRQX2M \Reg_File_reg[6][1]  ( .D(n235), .SI(\Reg_File[6][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][1] ) );
  SDFFRQX2M \Reg_File_reg[6][0]  ( .D(n234), .SI(\Reg_File[5][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n347), .Q(\Reg_File[6][0] ) );
  SDFFRQX2M \Reg_File_reg[12][7]  ( .D(n289), .SI(\Reg_File[12][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[12][7] ) );
  SDFFRQX2M \Reg_File_reg[12][6]  ( .D(n288), .SI(\Reg_File[12][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[12][6] ) );
  SDFFRQX2M \Reg_File_reg[12][5]  ( .D(n287), .SI(\Reg_File[12][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n351), .Q(\Reg_File[12][5] ) );
  SDFFRQX2M \Reg_File_reg[12][4]  ( .D(n286), .SI(\Reg_File[12][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[12][4] ) );
  SDFFRQX2M \Reg_File_reg[12][3]  ( .D(n285), .SI(\Reg_File[12][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[12][3] ) );
  SDFFRQX2M \Reg_File_reg[12][2]  ( .D(n284), .SI(\Reg_File[12][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[12][2] ) );
  SDFFRQX2M \Reg_File_reg[12][1]  ( .D(n283), .SI(\Reg_File[12][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[12][1] ) );
  SDFFRQX2M \Reg_File_reg[12][0]  ( .D(n282), .SI(\Reg_File[11][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n350), .Q(\Reg_File[12][0] ) );
  SDFFRQX2M \Reg_File_reg[8][7]  ( .D(n257), .SI(\Reg_File[8][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][7] ) );
  SDFFRQX2M \Reg_File_reg[8][6]  ( .D(n256), .SI(\Reg_File[8][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][6] ) );
  SDFFRQX2M \Reg_File_reg[8][5]  ( .D(n255), .SI(\Reg_File[8][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][5] ) );
  SDFFRQX2M \Reg_File_reg[8][4]  ( .D(n254), .SI(\Reg_File[8][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][4] ) );
  SDFFRQX2M \Reg_File_reg[8][3]  ( .D(n253), .SI(\Reg_File[8][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][3] ) );
  SDFFRQX2M \Reg_File_reg[8][2]  ( .D(n252), .SI(\Reg_File[8][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][2] ) );
  SDFFRQX2M \Reg_File_reg[8][1]  ( .D(n251), .SI(\Reg_File[8][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][1] ) );
  SDFFRQX2M \Reg_File_reg[8][0]  ( .D(n250), .SI(\Reg_File[7][7] ), .SE(
        test_se), .CK(REF_CLK), .RN(n348), .Q(\Reg_File[8][0] ) );
  SDFFRQX2M \Reg_File_reg[4][7]  ( .D(n225), .SI(\Reg_File[4][6] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[4][7] ) );
  SDFFRQX2M \Reg_File_reg[4][6]  ( .D(n224), .SI(\Reg_File[4][5] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[4][6] ) );
  SDFFRQX2M \Reg_File_reg[4][5]  ( .D(n223), .SI(\Reg_File[4][4] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[4][5] ) );
  SDFFRQX2M \Reg_File_reg[4][4]  ( .D(n222), .SI(\Reg_File[4][3] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[4][4] ) );
  SDFFRQX2M \Reg_File_reg[4][3]  ( .D(n221), .SI(\Reg_File[4][2] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[4][3] ) );
  SDFFRQX2M \Reg_File_reg[4][2]  ( .D(n220), .SI(\Reg_File[4][1] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[4][2] ) );
  SDFFRQX2M \Reg_File_reg[4][1]  ( .D(n219), .SI(\Reg_File[4][0] ), .SE(
        test_se), .CK(REF_CLK), .RN(n346), .Q(\Reg_File[4][1] ) );
  SDFFRQX2M \Reg_File_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(test_se), .CK(
        REF_CLK), .RN(n346), .Q(\Reg_File[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_Valid), .SE(test_se), .CK(
        REF_CLK), .RN(n347), .Q(RdData[0]) );
  SDFFRQX2M \Reg_File_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG2[1]) );
  SDFFRQX2M \Reg_File_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG3[3]) );
  SDFFRQX2M \Reg_File_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG3[1]) );
  SDFFRQX2M \Reg_File_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG3[2]) );
  SDFFSQX2M \Reg_File_reg[2][0]  ( .D(n202), .SI(REG1[7]), .SE(test_se), .CK(
        REF_CLK), .SN(n343), .Q(REG2[0]) );
  SDFFRQX2M \Reg_File_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG3[6]) );
  SDFFRQX2M \Reg_File_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG3[7]) );
  SDFFRQX2M \Reg_File_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG3[4]) );
  SDFFRQX2M \Reg_File_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG3[0]) );
  SDFFSQX2M \Reg_File_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(test_se), .CK(
        REF_CLK), .SN(n343), .Q(REG2[7]) );
  SDFFRQX2M \Reg_File_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG2[5]) );
  SDFFRQX2M \Reg_File_reg[2][6]  ( .D(n208), .SI(REG2[5]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG2[6]) );
  SDFFRQX2M \Reg_File_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG2[4]) );
  SDFFRQX2M \Reg_File_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG2[2]) );
  SDFFRQX2M \Reg_File_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG2[3]) );
  SDFFRQX2M \Reg_File_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(test_se), .CK(
        REF_CLK), .RN(n343), .Q(REG0[1]) );
  SDFFRQX2M \Reg_File_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(test_se), 
        .CK(REF_CLK), .RN(n343), .Q(REG0[0]) );
  SDFFRQX2M \Reg_File_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG0[2]) );
  SDFFRQX2M \Reg_File_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG0[3]) );
  SDFFRQX2M \Reg_File_reg[0][4]  ( .D(n190), .SI(REG0[3]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG0[4]) );
  SDFFRQX2M \Reg_File_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG0[5]) );
  SDFFRQX2M \Reg_File_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG0[6]) );
  SDFFRQX2M \Reg_File_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG1[6]) );
  SDFFRQX2M \Reg_File_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG0[7]) );
  SDFFRQX2M \Reg_File_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG1[1]) );
  SDFFRQX2M \Reg_File_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(test_se), .CK(
        REF_CLK), .RN(n345), .Q(REG1[5]) );
  SDFFRQX2M \Reg_File_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG1[4]) );
  SDFFRQX2M \Reg_File_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG1[7]) );
  SDFFRQX2M \Reg_File_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG1[3]) );
  SDFFRQX2M \Reg_File_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG1[2]) );
  SDFFRQX2M \Reg_File_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(test_se), .CK(
        REF_CLK), .RN(n344), .Q(REG1[0]) );
  SDFFSQX1M \Reg_File_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(test_se), .CK(
        REF_CLK), .SN(RST), .Q(REG3[5]) );
  NOR2BX2M U141 ( .AN(N13), .B(n337), .Y(n160) );
  NOR2BX2M U142 ( .AN(N13), .B(n342), .Y(n163) );
  NOR2X2M U143 ( .A(n342), .B(N13), .Y(n157) );
  NOR2X2M U144 ( .A(n337), .B(N13), .Y(n152) );
  INVX2M U145 ( .A(n338), .Y(n339) );
  INVX2M U146 ( .A(n336), .Y(n337) );
  INVX2M U147 ( .A(n338), .Y(n340) );
  BUFX2M U148 ( .A(n341), .Y(n338) );
  BUFX2M U149 ( .A(n342), .Y(n336) );
  INVX2M U150 ( .A(n149), .Y(n366) );
  NOR2BX2M U151 ( .AN(n164), .B(N11), .Y(n153) );
  NOR2BX2M U152 ( .AN(n164), .B(n341), .Y(n155) );
  NOR2BX2M U153 ( .AN(n175), .B(N11), .Y(n167) );
  NOR2BX2M U154 ( .AN(n175), .B(n341), .Y(n169) );
  NAND2X2M U155 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U156 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U157 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U158 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U159 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U160 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U161 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U162 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U163 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U164 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U165 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U166 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U167 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U168 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U169 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U170 ( .A(n152), .B(n153), .Y(n151) );
  NAND2BX2M U171 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  NOR2BX2M U172 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  BUFX2M U173 ( .A(n357), .Y(n344) );
  BUFX2M U174 ( .A(n356), .Y(n345) );
  BUFX2M U175 ( .A(n356), .Y(n346) );
  BUFX2M U176 ( .A(n355), .Y(n347) );
  BUFX2M U177 ( .A(n355), .Y(n348) );
  BUFX2M U178 ( .A(n354), .Y(n349) );
  BUFX2M U179 ( .A(n354), .Y(n350) );
  BUFX2M U180 ( .A(n353), .Y(n351) );
  BUFX2M U181 ( .A(n357), .Y(n343) );
  BUFX2M U182 ( .A(n353), .Y(n352) );
  INVX2M U183 ( .A(N11), .Y(n341) );
  INVX2M U184 ( .A(WrData[0]), .Y(n365) );
  INVX2M U185 ( .A(WrData[1]), .Y(n364) );
  INVX2M U186 ( .A(WrData[2]), .Y(n363) );
  INVX2M U187 ( .A(WrData[3]), .Y(n362) );
  INVX2M U188 ( .A(WrData[4]), .Y(n361) );
  NOR2BX2M U189 ( .AN(n150), .B(N14), .Y(n164) );
  AND2X2M U190 ( .A(N14), .B(n150), .Y(n175) );
  INVX2M U191 ( .A(N12), .Y(n342) );
  BUFX2M U192 ( .A(RST), .Y(n356) );
  BUFX2M U193 ( .A(RST), .Y(n355) );
  BUFX2M U194 ( .A(RST), .Y(n354) );
  BUFX2M U195 ( .A(RST), .Y(n353) );
  BUFX2M U196 ( .A(RST), .Y(n357) );
  AO22X1M U197 ( .A0(N43), .A1(n366), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U198 ( .A(n142), .B(n140), .C(n141), .D(n139), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U199 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n337), .Y(n142) );
  MX4X1M U200 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(N11), .S1(n337), .Y(
        n140) );
  AO22X1M U201 ( .A0(N41), .A1(n366), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U202 ( .A(n315), .B(n148), .C(n314), .D(n147), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U203 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n339), 
        .S1(N12), .Y(n315) );
  MX4X1M U204 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n339), .S1(N12), .Y(
        n148) );
  AO22X1M U205 ( .A0(N40), .A1(n366), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U206 ( .A(n319), .B(n317), .C(n318), .D(n316), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U207 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n339), 
        .S1(N12), .Y(n319) );
  MX4X1M U208 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n339), .S1(N12), .Y(
        n317) );
  AO22X1M U209 ( .A0(N39), .A1(n366), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U210 ( .A(n323), .B(n321), .C(n322), .D(n320), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U211 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n340), 
        .S1(N12), .Y(n323) );
  MX4X1M U212 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n339), .S1(N12), .Y(
        n321) );
  AO22X1M U213 ( .A0(N38), .A1(n366), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U214 ( .A(n327), .B(n325), .C(n326), .D(n324), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U215 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n340), 
        .S1(N12), .Y(n327) );
  MX4X1M U216 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(n340), .S1(N12), .Y(
        n325) );
  AO22X1M U217 ( .A0(N37), .A1(n366), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U218 ( .A(n331), .B(n329), .C(n330), .D(n328), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U219 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n340), 
        .S1(N12), .Y(n331) );
  MX4X1M U220 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(n340), .S1(N12), .Y(
        n329) );
  AO22X1M U221 ( .A0(N36), .A1(n366), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U222 ( .A(n335), .B(n333), .C(n334), .D(n332), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U223 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n340), 
        .S1(N12), .Y(n335) );
  MX4X1M U224 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(n340), .S1(N12), .Y(
        n333) );
  MX4X1M U225 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n339), 
        .S1(n337), .Y(n146) );
  MX4X1M U226 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(N11), .S1(n337), .Y(n141)
         );
  MX4X1M U227 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n339), .S1(n337), .Y(n145) );
  MX4X1M U228 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n339), .S1(N12), .Y(n314)
         );
  MX4X1M U229 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n339), .S1(N12), .Y(n318)
         );
  MX4X1M U230 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n339), .S1(N12), .Y(n322)
         );
  MX4X1M U231 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n340), .S1(N12), .Y(n326)
         );
  MX4X1M U232 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n340), .S1(N12), .Y(n330)
         );
  MX4X1M U233 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n340), .S1(N12), .Y(n334)
         );
  MX4X1M U234 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n340), .S1(n337), .Y(
        n139) );
  MX4X1M U235 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n339), .S1(n337), .Y(
        n147) );
  MX4X1M U236 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n339), .S1(n337), .Y(
        n316) );
  MX4X1M U237 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n339), .S1(N12), .Y(
        n320) );
  MX4X1M U238 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n340), .S1(n337), .Y(
        n324) );
  MX4X1M U239 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n340), .S1(n337), .Y(
        n328) );
  MX4X1M U240 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n340), .S1(n337), .Y(
        n332) );
  AO22X1M U241 ( .A0(N42), .A1(n366), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U242 ( .A(n146), .B(n144), .C(n145), .D(n143), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U243 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(N11), .S1(n337), .Y(
        n144) );
  MX4X1M U244 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n339), .S1(n337), .Y(
        n143) );
  INVX2M U245 ( .A(WrData[5]), .Y(n360) );
  INVX2M U246 ( .A(WrData[6]), .Y(n359) );
  INVX2M U247 ( .A(WrData[7]), .Y(n358) );
  OAI2BB2X1M U248 ( .B0(n151), .B1(n365), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U249 ( .B0(n151), .B1(n364), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U250 ( .B0(n151), .B1(n363), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U251 ( .B0(n151), .B1(n362), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U252 ( .B0(n151), .B1(n361), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U253 ( .B0(n151), .B1(n360), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U254 ( .B0(n151), .B1(n359), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U255 ( .B0(n151), .B1(n358), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U256 ( .B0(n365), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U257 ( .B0(n364), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U258 ( .B0(n363), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U259 ( .B0(n362), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U260 ( .B0(n361), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U261 ( .B0(n360), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U262 ( .B0(n359), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U263 ( .B0(n358), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U264 ( .B0(n365), .B1(n159), .A0N(\Reg_File[4][0] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U265 ( .B0(n364), .B1(n159), .A0N(\Reg_File[4][1] ), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U266 ( .B0(n363), .B1(n159), .A0N(\Reg_File[4][2] ), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U267 ( .B0(n362), .B1(n159), .A0N(\Reg_File[4][3] ), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U268 ( .B0(n361), .B1(n159), .A0N(\Reg_File[4][4] ), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U269 ( .B0(n360), .B1(n159), .A0N(\Reg_File[4][5] ), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U270 ( .B0(n359), .B1(n159), .A0N(\Reg_File[4][6] ), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U271 ( .B0(n358), .B1(n159), .A0N(\Reg_File[4][7] ), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U272 ( .B0(n365), .B1(n161), .A0N(\Reg_File[5][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U273 ( .B0(n364), .B1(n161), .A0N(\Reg_File[5][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U274 ( .B0(n363), .B1(n161), .A0N(\Reg_File[5][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U275 ( .B0(n362), .B1(n161), .A0N(\Reg_File[5][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U276 ( .B0(n361), .B1(n161), .A0N(\Reg_File[5][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U277 ( .B0(n360), .B1(n161), .A0N(\Reg_File[5][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U278 ( .B0(n359), .B1(n161), .A0N(\Reg_File[5][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U279 ( .B0(n358), .B1(n161), .A0N(\Reg_File[5][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U280 ( .B0(n365), .B1(n162), .A0N(\Reg_File[6][0] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U281 ( .B0(n364), .B1(n162), .A0N(\Reg_File[6][1] ), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U282 ( .B0(n363), .B1(n162), .A0N(\Reg_File[6][2] ), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U283 ( .B0(n362), .B1(n162), .A0N(\Reg_File[6][3] ), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U284 ( .B0(n361), .B1(n162), .A0N(\Reg_File[6][4] ), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U285 ( .B0(n360), .B1(n162), .A0N(\Reg_File[6][5] ), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U286 ( .B0(n359), .B1(n162), .A0N(\Reg_File[6][6] ), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U287 ( .B0(n358), .B1(n162), .A0N(\Reg_File[6][7] ), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U288 ( .B0(n365), .B1(n165), .A0N(\Reg_File[7][0] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U289 ( .B0(n364), .B1(n165), .A0N(\Reg_File[7][1] ), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U290 ( .B0(n363), .B1(n165), .A0N(\Reg_File[7][2] ), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U291 ( .B0(n362), .B1(n165), .A0N(\Reg_File[7][3] ), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U292 ( .B0(n361), .B1(n165), .A0N(\Reg_File[7][4] ), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U293 ( .B0(n360), .B1(n165), .A0N(\Reg_File[7][5] ), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U294 ( .B0(n359), .B1(n165), .A0N(\Reg_File[7][6] ), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U295 ( .B0(n358), .B1(n165), .A0N(\Reg_File[7][7] ), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U296 ( .B0(n365), .B1(n166), .A0N(\Reg_File[8][0] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U297 ( .B0(n364), .B1(n166), .A0N(\Reg_File[8][1] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U298 ( .B0(n363), .B1(n166), .A0N(\Reg_File[8][2] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U299 ( .B0(n362), .B1(n166), .A0N(\Reg_File[8][3] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U300 ( .B0(n361), .B1(n166), .A0N(\Reg_File[8][4] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U301 ( .B0(n360), .B1(n166), .A0N(\Reg_File[8][5] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U302 ( .B0(n359), .B1(n166), .A0N(\Reg_File[8][6] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U303 ( .B0(n358), .B1(n166), .A0N(\Reg_File[8][7] ), .A1N(n166), 
        .Y(n257) );
  OAI2BB2X1M U304 ( .B0(n365), .B1(n168), .A0N(\Reg_File[9][0] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U305 ( .B0(n364), .B1(n168), .A0N(\Reg_File[9][1] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U306 ( .B0(n363), .B1(n168), .A0N(\Reg_File[9][2] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U307 ( .B0(n362), .B1(n168), .A0N(\Reg_File[9][3] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U308 ( .B0(n361), .B1(n168), .A0N(\Reg_File[9][4] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U309 ( .B0(n360), .B1(n168), .A0N(\Reg_File[9][5] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U310 ( .B0(n359), .B1(n168), .A0N(\Reg_File[9][6] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U311 ( .B0(n358), .B1(n168), .A0N(\Reg_File[9][7] ), .A1N(n168), 
        .Y(n265) );
  OAI2BB2X1M U312 ( .B0(n365), .B1(n170), .A0N(\Reg_File[10][0] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U313 ( .B0(n364), .B1(n170), .A0N(\Reg_File[10][1] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U314 ( .B0(n363), .B1(n170), .A0N(\Reg_File[10][2] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U315 ( .B0(n362), .B1(n170), .A0N(\Reg_File[10][3] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U316 ( .B0(n361), .B1(n170), .A0N(\Reg_File[10][4] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U317 ( .B0(n360), .B1(n170), .A0N(\Reg_File[10][5] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U318 ( .B0(n359), .B1(n170), .A0N(\Reg_File[10][6] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U319 ( .B0(n358), .B1(n170), .A0N(\Reg_File[10][7] ), .A1N(n170), 
        .Y(n273) );
  OAI2BB2X1M U320 ( .B0(n365), .B1(n171), .A0N(\Reg_File[11][0] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U321 ( .B0(n364), .B1(n171), .A0N(\Reg_File[11][1] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U322 ( .B0(n363), .B1(n171), .A0N(\Reg_File[11][2] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U323 ( .B0(n362), .B1(n171), .A0N(\Reg_File[11][3] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U324 ( .B0(n361), .B1(n171), .A0N(\Reg_File[11][4] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U325 ( .B0(n360), .B1(n171), .A0N(\Reg_File[11][5] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U326 ( .B0(n359), .B1(n171), .A0N(\Reg_File[11][6] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U327 ( .B0(n358), .B1(n171), .A0N(\Reg_File[11][7] ), .A1N(n171), 
        .Y(n281) );
  OAI2BB2X1M U328 ( .B0(n365), .B1(n172), .A0N(\Reg_File[12][0] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U329 ( .B0(n364), .B1(n172), .A0N(\Reg_File[12][1] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U330 ( .B0(n363), .B1(n172), .A0N(\Reg_File[12][2] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U331 ( .B0(n362), .B1(n172), .A0N(\Reg_File[12][3] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U332 ( .B0(n361), .B1(n172), .A0N(\Reg_File[12][4] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U333 ( .B0(n360), .B1(n172), .A0N(\Reg_File[12][5] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U334 ( .B0(n359), .B1(n172), .A0N(\Reg_File[12][6] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U335 ( .B0(n358), .B1(n172), .A0N(\Reg_File[12][7] ), .A1N(n172), 
        .Y(n289) );
  OAI2BB2X1M U336 ( .B0(n365), .B1(n173), .A0N(\Reg_File[13][0] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U337 ( .B0(n364), .B1(n173), .A0N(\Reg_File[13][1] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U338 ( .B0(n363), .B1(n173), .A0N(\Reg_File[13][2] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U339 ( .B0(n362), .B1(n173), .A0N(\Reg_File[13][3] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U340 ( .B0(n361), .B1(n173), .A0N(\Reg_File[13][4] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U341 ( .B0(n360), .B1(n173), .A0N(\Reg_File[13][5] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U342 ( .B0(n359), .B1(n173), .A0N(\Reg_File[13][6] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U343 ( .B0(n358), .B1(n173), .A0N(\Reg_File[13][7] ), .A1N(n173), 
        .Y(n297) );
  OAI2BB2X1M U344 ( .B0(n365), .B1(n174), .A0N(\Reg_File[14][0] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U345 ( .B0(n364), .B1(n174), .A0N(\Reg_File[14][1] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U346 ( .B0(n363), .B1(n174), .A0N(\Reg_File[14][2] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U347 ( .B0(n362), .B1(n174), .A0N(\Reg_File[14][3] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U348 ( .B0(n361), .B1(n174), .A0N(\Reg_File[14][4] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U349 ( .B0(n360), .B1(n174), .A0N(\Reg_File[14][5] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U350 ( .B0(n359), .B1(n174), .A0N(\Reg_File[14][6] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U351 ( .B0(n358), .B1(n174), .A0N(\Reg_File[14][7] ), .A1N(n174), 
        .Y(n305) );
  OAI2BB2X1M U352 ( .B0(n365), .B1(n176), .A0N(\Reg_File[15][0] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U353 ( .B0(n364), .B1(n176), .A0N(\Reg_File[15][1] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U354 ( .B0(n363), .B1(n176), .A0N(\Reg_File[15][2] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U355 ( .B0(n362), .B1(n176), .A0N(\Reg_File[15][3] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U356 ( .B0(n361), .B1(n176), .A0N(\Reg_File[15][4] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U357 ( .B0(n360), .B1(n176), .A0N(\Reg_File[15][5] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U358 ( .B0(n359), .B1(n176), .A0N(\Reg_File[15][6] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U359 ( .B0(n358), .B1(n176), .A0N(\Reg_File[15][7] ), .A1N(n176), 
        .Y(n313) );
  OAI2BB2X1M U360 ( .B0(n364), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U361 ( .B0(n363), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U362 ( .B0(n362), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U363 ( .B0(n361), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U364 ( .B0(n360), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U365 ( .B0(n359), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U366 ( .B0(n365), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U367 ( .B0(n364), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U368 ( .B0(n363), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U369 ( .B0(n362), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  OAI2BB2X1M U370 ( .B0(n361), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U371 ( .B0(n359), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U372 ( .B0(n358), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB2X1M U373 ( .B0(n365), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U374 ( .B0(n358), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U375 ( .B0(n360), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  OAI2BB1X2M U376 ( .A0N(RdData_Valid), .A1N(n150), .B0(n149), .Y(n185) );
endmodule


module ALU_WIDTH8_FUNC4_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0
 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n19), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n19), .Y(n5) );
  NAND2X2M U15 ( .A(n7), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n8) );
  INVX2M U17 ( .A(n19), .Y(n7) );
  NAND2X2M U18 ( .A(n7), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U19 ( .A(a[2]), .Y(n9) );
  NAND2X2M U20 ( .A(n7), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U21 ( .A(a[1]), .Y(n10) );
  NAND2X2M U22 ( .A(n7), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U23 ( .A(a[0]), .Y(n11) );
  NAND2X2M U24 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n2) );
  INVX2M U26 ( .A(n19), .Y(n1) );
  XNOR2X2M U27 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U28 ( .A(b[6]), .Y(n13) );
  INVX2M U29 ( .A(b[1]), .Y(n18) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module ALU_WIDTH8_FUNC4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_WIDTH8_FUNC4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_WIDTH8_FUNC4_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  INVX2M U4 ( .A(n9), .Y(SUM[6]) );
  INVX2M U5 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U7 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U8 ( .A(B[7]), .Y(n8) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_WIDTH8_FUNC4_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n7), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n4), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n3), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  AND2X2M U2 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U15 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U17 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U18 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U21 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  AND2X2M U26 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U32 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[1]), .Y(n38) );
  INVX2M U38 ( .A(A[2]), .Y(n37) );
  INVX2M U39 ( .A(A[0]), .Y(n39) );
  INVX2M U40 ( .A(B[6]), .Y(n25) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[7]), .Y(n32) );
  INVX2M U46 ( .A(B[2]), .Y(n29) );
  INVX2M U47 ( .A(B[3]), .Y(n28) );
  INVX2M U48 ( .A(B[7]), .Y(n24) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[1]), .Y(n30) );
  INVX2M U52 ( .A(B[0]), .Y(n31) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_WIDTH8_FUNC4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , 
        \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n11, n13, n12, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
endmodule


module ALU_WIDTH8_FUNC4_test_1 ( A, B, ALU_OUT, ALU_FUN, REF_CLK, EN, RST, 
        ALU_OUT_VALID, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  output [15:0] ALU_OUT;
  input [3:0] ALU_FUN;
  input REF_CLK, EN, RST, test_si, test_se;
  output ALU_OUT_VALID;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N127,
         N128, N129, N130, N131, N132, N133, N134, N159, N160, N161, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n33, n35, n36, n38, n39, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n53, n54, n55, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n67, n71, n72, n73, n74, n75, n76, n77, n78, n80,
         n82, n83, n84, n85, n86, n87, n88, n89, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n102, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n115, n116, n117, n118, n119, n120, n121, n123, n125, n126,
         n127, n129, n130, n132, n134, n135, n136, n137, n138, n140, n164,
         n165, n172, n4, n5, n6, n7, n8, n9, n20, n32, n34, n37, n40, n41, n52,
         n56, n66, n68, n69, n70, n79, n81, n90, n92, n101, n103, n112, n114,
         n122, n124, n128, n131, n133, n157, n158, n159, n160, n161, n162,
         n163, n166, n167, n168, n169, n170, n171, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207;

  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(n165), .SI(ALU_OUT[0]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(n164), .SI(ALU_OUT_VALID), .SE(test_se), 
        .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(n173), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(n174), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(n175), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(n176), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(n177), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(n178), .SI(ALU_OUT[9]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(n179), .SI(ALU_OUT[8]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(n180), .SI(ALU_OUT[6]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(n181), .SI(ALU_OUT[5]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(n182), .SI(ALU_OUT[4]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(n183), .SI(ALU_OUT[3]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(n184), .SI(ALU_OUT[2]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(n185), .SI(ALU_OUT[1]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(n172), .SI(ALU_OUT[7]), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX1M ALU_OUT_VALID_reg ( .D(n140), .SI(test_si), .SE(test_se), .CK(
        REF_CLK), .RN(RST), .Q(ALU_OUT_VALID) );
  NOR3BX2M U3 ( .AN(n129), .B(n192), .C(ALU_FUN[0]), .Y(n29) );
  BUFX2M U7 ( .A(A[6]), .Y(n40) );
  INVX2M U8 ( .A(n44), .Y(n187) );
  OAI22X1M U9 ( .A0(n190), .A1(n125), .B0(n192), .B1(n126), .Y(n44) );
  NOR2BX2M U10 ( .AN(n29), .B(n52), .Y(n12) );
  NAND4X2M U11 ( .A(n53), .B(n127), .C(n187), .D(n138), .Y(n135) );
  NOR4X1M U12 ( .A(n39), .B(n29), .C(n4), .D(n27), .Y(n138) );
  NOR3BX2M U13 ( .AN(n129), .B(n192), .C(n193), .Y(n33) );
  OAI22X1M U14 ( .A0(n190), .A1(n125), .B0(n126), .B1(n127), .Y(n43) );
  NOR2X2M U15 ( .A(n190), .B(n192), .Y(n39) );
  NOR2BX2M U16 ( .AN(n129), .B(n127), .Y(n30) );
  NAND2X2M U17 ( .A(n193), .B(n192), .Y(n127) );
  INVX2M U18 ( .A(n5), .Y(n188) );
  INVX2M U19 ( .A(n53), .Y(n189) );
  NOR2X2M U20 ( .A(n125), .B(ALU_FUN[3]), .Y(n27) );
  NAND2X2M U21 ( .A(ALU_FUN[2]), .B(n190), .Y(n126) );
  NAND3X2M U22 ( .A(n192), .B(n191), .C(ALU_FUN[0]), .Y(n125) );
  INVX2M U23 ( .A(ALU_FUN[3]), .Y(n190) );
  INVX2M U24 ( .A(ALU_FUN[1]), .Y(n192) );
  INVX2M U25 ( .A(ALU_FUN[2]), .Y(n191) );
  INVX2M U26 ( .A(n56), .Y(n52) );
  NOR2X2M U27 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .Y(n129) );
  BUFX2M U28 ( .A(n26), .Y(n4) );
  NOR3X2M U29 ( .A(n126), .B(ALU_FUN[1]), .C(n193), .Y(n26) );
  NOR3BX2M U30 ( .AN(n39), .B(n191), .C(ALU_FUN[0]), .Y(n51) );
  NOR3X2M U31 ( .A(n190), .B(ALU_FUN[1]), .C(n191), .Y(n50) );
  NAND2X2M U32 ( .A(n50), .B(ALU_FUN[0]), .Y(n53) );
  BUFX2M U33 ( .A(n31), .Y(n5) );
  NOR3X2M U34 ( .A(n192), .B(ALU_FUN[0]), .C(n126), .Y(n31) );
  INVX2M U35 ( .A(ALU_FUN[0]), .Y(n193) );
  BUFX2M U36 ( .A(n42), .Y(n6) );
  NOR3X2M U37 ( .A(n190), .B(ALU_FUN[2]), .C(n127), .Y(n42) );
  NOR2BX2M U38 ( .AN(n50), .B(ALU_FUN[0]), .Y(n28) );
  AOI222X1M U39 ( .A0(n5), .A1(n207), .B0(N127), .B1(n33), .C0(n9), .C1(n189), 
        .Y(n23) );
  AOI222X1M U40 ( .A0(n5), .A1(n168), .B0(N128), .B1(n33), .C0(n20), .C1(n189), 
        .Y(n47) );
  AOI21X2M U41 ( .A0(n187), .A1(n134), .B0(n52), .Y(n13) );
  NAND2X2M U42 ( .A(N109), .B(n27), .Y(n134) );
  INVX2M U43 ( .A(n11), .Y(n56) );
  OAI31X1M U44 ( .A0(n135), .A1(n136), .A2(n137), .B0(EN), .Y(n11) );
  NAND4X2M U45 ( .A(n197), .B(n196), .C(n195), .D(n194), .Y(n136) );
  NAND4X2M U46 ( .A(n200), .B(n199), .C(n198), .D(n171), .Y(n137) );
  INVX2M U47 ( .A(n9), .Y(n168) );
  AOI221XLM U48 ( .A0(n44), .A1(n205), .B0(n32), .B1(n6), .C0(n5), .Y(n80) );
  AOI221XLM U49 ( .A0(n44), .A1(n204), .B0(n34), .B1(n6), .C0(n5), .Y(n91) );
  AOI221XLM U50 ( .A0(n44), .A1(n203), .B0(n37), .B1(n6), .C0(n5), .Y(n102) );
  AOI221XLM U51 ( .A0(n44), .A1(n202), .B0(n40), .B1(n6), .C0(n5), .Y(n113) );
  AOI221XLM U52 ( .A0(n44), .A1(n206), .B0(n20), .B1(n6), .C0(n5), .Y(n67) );
  AOI211X2M U53 ( .A0(N133), .A1(n33), .B0(n109), .C0(n110), .Y(n108) );
  OAI22X1M U54 ( .A0(n40), .A1(n188), .B0(n53), .B1(n201), .Y(n109) );
  OAI22X1M U55 ( .A0(n111), .A1(n195), .B0(n7), .B1(n113), .Y(n110) );
  AOI221XLM U56 ( .A0(n6), .A1(n202), .B0(n40), .B1(n43), .C0(n4), .Y(n111) );
  AOI22X1M U57 ( .A0(n51), .A1(n9), .B0(N94), .B1(n30), .Y(n60) );
  AOI22X1M U58 ( .A0(n51), .A1(n20), .B0(N95), .B1(n30), .Y(n73) );
  AOI22X1M U59 ( .A0(n32), .A1(n51), .B0(N96), .B1(n30), .Y(n84) );
  AOI22X1M U60 ( .A0(n34), .A1(n51), .B0(N97), .B1(n30), .Y(n95) );
  AOI22X1M U61 ( .A0(n37), .A1(n51), .B0(N98), .B1(n30), .Y(n106) );
  AOI22X1M U62 ( .A0(n40), .A1(n51), .B0(N99), .B1(n30), .Y(n117) );
  AOI22X1M U63 ( .A0(N103), .A1(n27), .B0(n20), .B1(n4), .Y(n61) );
  AOI22X1M U64 ( .A0(N104), .A1(n27), .B0(n32), .B1(n4), .Y(n74) );
  AOI22X1M U65 ( .A0(N105), .A1(n27), .B0(n34), .B1(n4), .Y(n85) );
  AOI22X1M U66 ( .A0(N106), .A1(n27), .B0(n37), .B1(n4), .Y(n96) );
  AOI22X1M U67 ( .A0(N107), .A1(n27), .B0(n40), .B1(n4), .Y(n107) );
  AOI22X1M U68 ( .A0(N108), .A1(n27), .B0(n41), .B1(n4), .Y(n118) );
  INVX2M U69 ( .A(n41), .Y(n201) );
  INVX2M U70 ( .A(n40), .Y(n202) );
  INVX2M U71 ( .A(n7), .Y(n195) );
  INVX2M U72 ( .A(n32), .Y(n205) );
  INVX2M U73 ( .A(n34), .Y(n204) );
  INVX2M U74 ( .A(n37), .Y(n203) );
  INVX2M U75 ( .A(n20), .Y(n206) );
  INVX2M U76 ( .A(n8), .Y(n207) );
  AO22X1M U77 ( .A0(ALU_OUT[0]), .A1(n52), .B0(n56), .B1(n21), .Y(n164) );
  NAND4BX1M U78 ( .AN(n22), .B(n23), .C(n24), .D(n25), .Y(n21) );
  AOI22X1M U79 ( .A0(N110), .A1(n29), .B0(N92), .B1(n30), .Y(n24) );
  AOI222X1M U80 ( .A0(n4), .A1(n8), .B0(N101), .B1(n27), .C0(N161), .C1(n28), 
        .Y(n25) );
  BUFX2M U81 ( .A(A[7]), .Y(n41) );
  BUFX2M U82 ( .A(B[6]), .Y(n7) );
  AO22X1M U83 ( .A0(ALU_OUT[1]), .A1(n52), .B0(n56), .B1(n45), .Y(n165) );
  NAND4BX1M U84 ( .AN(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  AOI222X1M U85 ( .A0(n4), .A1(n9), .B0(N102), .B1(n27), .C0(N161), .C1(n28), 
        .Y(n49) );
  AOI222X1M U86 ( .A0(N93), .A1(n30), .B0(N111), .B1(n29), .C0(n51), .C1(n8), 
        .Y(n48) );
  BUFX2M U87 ( .A(A[5]), .Y(n37) );
  BUFX2M U88 ( .A(A[4]), .Y(n34) );
  AOI211X2M U89 ( .A0(N129), .A1(n33), .B0(n63), .C0(n64), .Y(n62) );
  OAI22X1M U90 ( .A0(n20), .A1(n188), .B0(n53), .B1(n205), .Y(n63) );
  OAI22X1M U91 ( .A0(n65), .A1(n198), .B0(B[2]), .B1(n67), .Y(n64) );
  AOI221XLM U92 ( .A0(n6), .A1(n206), .B0(n20), .B1(n43), .C0(n4), .Y(n65) );
  INVX2M U93 ( .A(n58), .Y(n185) );
  AOI221XLM U94 ( .A0(ALU_OUT[2]), .A1(n52), .B0(N112), .B1(n12), .C0(n59), 
        .Y(n58) );
  AOI31X2M U95 ( .A0(n60), .A1(n61), .A2(n62), .B0(n52), .Y(n59) );
  BUFX2M U96 ( .A(A[3]), .Y(n32) );
  AOI211X2M U97 ( .A0(N130), .A1(n33), .B0(n76), .C0(n77), .Y(n75) );
  OAI22X1M U98 ( .A0(n32), .A1(n188), .B0(n53), .B1(n204), .Y(n76) );
  OAI22X1M U99 ( .A0(n78), .A1(n171), .B0(B[3]), .B1(n80), .Y(n77) );
  AOI221XLM U100 ( .A0(n6), .A1(n205), .B0(n32), .B1(n43), .C0(n4), .Y(n78) );
  INVX2M U101 ( .A(n71), .Y(n184) );
  AOI221XLM U102 ( .A0(ALU_OUT[3]), .A1(n52), .B0(N113), .B1(n12), .C0(n72), 
        .Y(n71) );
  AOI31X2M U103 ( .A0(n73), .A1(n74), .A2(n75), .B0(n52), .Y(n72) );
  BUFX2M U104 ( .A(A[2]), .Y(n20) );
  INVX2M U105 ( .A(n15), .Y(n175) );
  AOI221XLM U106 ( .A0(ALU_OUT[13]), .A1(n52), .B0(N123), .B1(n12), .C0(n13), 
        .Y(n15) );
  AOI211X2M U107 ( .A0(N131), .A1(n33), .B0(n87), .C0(n88), .Y(n86) );
  OAI22X1M U108 ( .A0(n34), .A1(n188), .B0(n53), .B1(n203), .Y(n87) );
  OAI22X1M U109 ( .A0(n89), .A1(n197), .B0(B[4]), .B1(n91), .Y(n88) );
  AOI221XLM U110 ( .A0(n6), .A1(n204), .B0(n34), .B1(n43), .C0(n4), .Y(n89) );
  BUFX2M U111 ( .A(A[1]), .Y(n9) );
  BUFX2M U112 ( .A(A[0]), .Y(n8) );
  INVX2M U113 ( .A(n82), .Y(n183) );
  AOI221XLM U114 ( .A0(ALU_OUT[4]), .A1(n52), .B0(N114), .B1(n12), .C0(n83), 
        .Y(n82) );
  AOI31X2M U115 ( .A0(n84), .A1(n85), .A2(n86), .B0(n52), .Y(n83) );
  INVX2M U116 ( .A(n14), .Y(n174) );
  AOI221XLM U117 ( .A0(ALU_OUT[14]), .A1(n52), .B0(N124), .B1(n12), .C0(n13), 
        .Y(n14) );
  INVX2M U118 ( .A(n10), .Y(n173) );
  AOI221XLM U119 ( .A0(ALU_OUT[15]), .A1(n52), .B0(N125), .B1(n12), .C0(n13), 
        .Y(n10) );
  INVX2M U120 ( .A(n18), .Y(n178) );
  AOI221XLM U121 ( .A0(ALU_OUT[10]), .A1(n52), .B0(N120), .B1(n12), .C0(n13), 
        .Y(n18) );
  INVX2M U122 ( .A(n17), .Y(n177) );
  AOI221XLM U123 ( .A0(ALU_OUT[11]), .A1(n52), .B0(N121), .B1(n12), .C0(n13), 
        .Y(n17) );
  INVX2M U124 ( .A(n16), .Y(n176) );
  AOI221XLM U125 ( .A0(ALU_OUT[12]), .A1(n52), .B0(N122), .B1(n12), .C0(n13), 
        .Y(n16) );
  AOI211X2M U126 ( .A0(N132), .A1(n33), .B0(n98), .C0(n99), .Y(n97) );
  OAI22X1M U127 ( .A0(n37), .A1(n188), .B0(n53), .B1(n202), .Y(n98) );
  OAI22X1M U128 ( .A0(n100), .A1(n196), .B0(B[5]), .B1(n102), .Y(n99) );
  AOI221XLM U129 ( .A0(n6), .A1(n203), .B0(n37), .B1(n43), .C0(n4), .Y(n100)
         );
  INVX2M U130 ( .A(n19), .Y(n179) );
  AOI221XLM U131 ( .A0(ALU_OUT[9]), .A1(n52), .B0(N119), .B1(n12), .C0(n13), 
        .Y(n19) );
  OAI211X2M U132 ( .A0(n130), .A1(n52), .B0(n186), .C0(n132), .Y(n172) );
  AOI22X1M U133 ( .A0(n41), .A1(n51), .B0(N100), .B1(n30), .Y(n130) );
  INVX2M U134 ( .A(n13), .Y(n186) );
  AOI22X1M U135 ( .A0(N118), .A1(n12), .B0(ALU_OUT[8]), .B1(n52), .Y(n132) );
  OAI221X1M U136 ( .A0(B[0]), .A1(n35), .B0(n36), .B1(n200), .C0(n38), .Y(n22)
         );
  AOI221XLM U137 ( .A0(n6), .A1(n207), .B0(n8), .B1(n43), .C0(n4), .Y(n36) );
  AOI221XLM U138 ( .A0(n44), .A1(n207), .B0(n8), .B1(n6), .C0(n5), .Y(n35) );
  NAND4X2M U139 ( .A(N159), .B(n39), .C(n193), .D(n191), .Y(n38) );
  INVX2M U140 ( .A(n114), .Y(n170) );
  INVX2M U141 ( .A(n93), .Y(n182) );
  AOI221XLM U142 ( .A0(ALU_OUT[5]), .A1(n52), .B0(N115), .B1(n12), .C0(n94), 
        .Y(n93) );
  AOI31X2M U143 ( .A0(n95), .A1(n96), .A2(n97), .B0(n52), .Y(n94) );
  INVX2M U144 ( .A(n104), .Y(n181) );
  AOI221XLM U145 ( .A0(ALU_OUT[6]), .A1(n52), .B0(N116), .B1(n12), .C0(n105), 
        .Y(n104) );
  AOI31X2M U146 ( .A0(n106), .A1(n107), .A2(n108), .B0(n52), .Y(n105) );
  INVX2M U147 ( .A(n115), .Y(n180) );
  AOI221XLM U148 ( .A0(ALU_OUT[7]), .A1(n52), .B0(N117), .B1(n12), .C0(n116), 
        .Y(n115) );
  AOI31X2M U149 ( .A0(n117), .A1(n118), .A2(n119), .B0(n52), .Y(n116) );
  AOI221XLM U150 ( .A0(N134), .A1(n33), .B0(n5), .B1(n201), .C0(n120), .Y(n119) );
  OAI22X1M U151 ( .A0(n121), .A1(n194), .B0(B[7]), .B1(n123), .Y(n120) );
  AOI221XLM U169 ( .A0(n6), .A1(n201), .B0(n41), .B1(n43), .C0(n4), .Y(n121)
         );
  AOI221XLM U170 ( .A0(n44), .A1(n201), .B0(n41), .B1(n6), .C0(n5), .Y(n123)
         );
  OAI221X1M U171 ( .A0(B[1]), .A1(n54), .B0(n55), .B1(n199), .C0(n57), .Y(n46)
         );
  AOI221XLM U172 ( .A0(n6), .A1(n168), .B0(n9), .B1(n43), .C0(n4), .Y(n55) );
  AOI221XLM U173 ( .A0(n44), .A1(n168), .B0(n9), .B1(n6), .C0(n5), .Y(n54) );
  NAND4X2M U174 ( .A(N160), .B(n39), .C(ALU_FUN[0]), .D(n191), .Y(n57) );
  INVX2M U175 ( .A(n66), .Y(n169) );
  INVX2M U176 ( .A(B[3]), .Y(n171) );
  INVX2M U177 ( .A(B[2]), .Y(n198) );
  INVX2M U178 ( .A(B[7]), .Y(n194) );
  INVX2M U179 ( .A(B[4]), .Y(n197) );
  INVX2M U180 ( .A(B[5]), .Y(n196) );
  INVX2M U181 ( .A(B[0]), .Y(n200) );
  INVX2M U182 ( .A(B[1]), .Y(n199) );
  OR2X2M U183 ( .A(ALU_OUT_VALID), .B(EN), .Y(n140) );
  NOR2X1M U184 ( .A(n201), .B(B[7]), .Y(n162) );
  NAND2BX1M U185 ( .AN(B[4]), .B(n34), .Y(n131) );
  NAND2BX1M U186 ( .AN(n34), .B(B[4]), .Y(n79) );
  CLKNAND2X2M U187 ( .A(n131), .B(n79), .Y(n157) );
  NOR2X1M U188 ( .A(n171), .B(n32), .Y(n122) );
  NOR2X1M U189 ( .A(n198), .B(n20), .Y(n70) );
  NOR2X1M U190 ( .A(n200), .B(n8), .Y(n66) );
  CLKNAND2X2M U191 ( .A(n20), .B(n198), .Y(n128) );
  NAND2BX1M U192 ( .AN(n70), .B(n128), .Y(n103) );
  AOI21X1M U193 ( .A0(n66), .A1(n168), .B0(B[1]), .Y(n68) );
  AOI211X1M U194 ( .A0(n9), .A1(n169), .B0(n103), .C0(n68), .Y(n69) );
  CLKNAND2X2M U195 ( .A(n32), .B(n171), .Y(n124) );
  OAI31X1M U196 ( .A0(n122), .A1(n70), .A2(n69), .B0(n124), .Y(n81) );
  NAND2BX1M U197 ( .AN(n37), .B(B[5]), .Y(n160) );
  OAI211X1M U198 ( .A0(n157), .A1(n81), .B0(n79), .C0(n160), .Y(n90) );
  NAND2BX1M U199 ( .AN(B[5]), .B(n37), .Y(n133) );
  XNOR2X1M U200 ( .A(n40), .B(n7), .Y(n159) );
  AOI32X1M U201 ( .A0(n90), .A1(n133), .A2(n159), .B0(n7), .B1(n202), .Y(n92)
         );
  CLKNAND2X2M U202 ( .A(B[7]), .B(n201), .Y(n163) );
  OAI21X1M U203 ( .A0(n162), .A1(n92), .B0(n163), .Y(N161) );
  CLKNAND2X2M U204 ( .A(n8), .B(n200), .Y(n112) );
  OA21X1M U205 ( .A0(n112), .A1(n168), .B0(B[1]), .Y(n101) );
  AOI211X1M U206 ( .A0(n112), .A1(n168), .B0(n103), .C0(n101), .Y(n114) );
  AOI31X1M U207 ( .A0(n170), .A1(n128), .A2(n124), .B0(n122), .Y(n158) );
  OAI2B11X1M U208 ( .A1N(n158), .A0(n157), .B0(n133), .C0(n131), .Y(n161) );
  AOI32X1M U209 ( .A0(n161), .A1(n160), .A2(n159), .B0(n40), .B1(n195), .Y(
        n166) );
  AOI2B1X1M U210 ( .A1N(n166), .A0(n163), .B0(n162), .Y(n167) );
  CLKINVX1M U211 ( .A(n167), .Y(N160) );
  NOR2X1M U212 ( .A(N161), .B(N160), .Y(N159) );
  ALU_WIDTH8_FUNC4_DW_div_uns_0 div_24 ( .a({n41, n40, n37, n34, n32, n20, n9, 
        n8}), .b({B[7], n7, B[5:0]}), .quotient({N134, N133, N132, N131, N130, 
        N129, N128, N127}) );
  ALU_WIDTH8_FUNC4_DW01_sub_0 sub_19 ( .A({1'b0, n41, n40, n37, n34, n32, n20, 
        n9, n8}), .B({1'b0, B[7], n7, B[5:0]}), .CI(1'b0), .DIFF({N109, N108, 
        N107, N106, N105, N104, N103, N102, N101}) );
  ALU_WIDTH8_FUNC4_DW01_add_0 add_18 ( .A({1'b0, n41, n40, n37, n34, n32, n20, 
        n9, n8}), .B({1'b0, B[7], n7, B[5:0]}), .CI(1'b0), .SUM({N100, N99, 
        N98, N97, N96, N95, N94, N93, N92}) );
  ALU_WIDTH8_FUNC4_DW02_mult_0 mult_20 ( .A({n41, n40, n37, n34, n32, n20, n9, 
        n8}), .B({B[7], n7, B[5:0]}), .TC(1'b0), .PRODUCT({N125, N124, N123, 
        N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, 
        N110}) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, RST_SYNC, test_si, test_so, 
        test_se );
  input RST, CLK, test_si, test_se;
  output RST_SYNC, test_so;
  wire   \SYNC_REG[1] ;
  assign test_so = \SYNC_REG[1] ;

  SDFFRQX2M \SYNC_REG_reg[1]  ( .D(1'b1), .SI(RST_SYNC), .SE(test_se), .CK(CLK), .RN(RST), .Q(\SYNC_REG[1] ) );
  SDFFRQX1M \SYNC_REG_reg[0]  ( .D(\SYNC_REG[1] ), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(RST_SYNC) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, RST_SYNC, test_si, test_so, 
        test_se );
  input RST, CLK, test_si, test_se;
  output RST_SYNC, test_so;
  wire   \SYNC_REG[1] ;
  assign test_so = \SYNC_REG[1] ;

  SDFFRQX2M \SYNC_REG_reg[1]  ( .D(1'b1), .SI(RST_SYNC), .SE(test_se), .CK(CLK), .RN(RST), .Q(\SYNC_REG[1] ) );
  SDFFRQX1M \SYNC_REG_reg[0]  ( .D(\SYNC_REG[1] ), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(RST_SYNC) );
endmodule


module FIFO_MEM_test_1 ( WADDR, RADDR, WDATA, WR_CLK, RST, WINC, WFULL, RDATA, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [2:0] WADDR;
  input [2:0] RADDR;
  input [7:0] WDATA;
  output [7:0] RDATA;
  input WR_CLK, RST, WINC, WFULL, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N9, N10, N11, \FIFO[7][7] , \FIFO[7][6] , \FIFO[7][5] , \FIFO[7][4] ,
         \FIFO[7][3] , \FIFO[7][2] , \FIFO[7][1] , \FIFO[7][0] , \FIFO[6][7] ,
         \FIFO[6][6] , \FIFO[6][5] , \FIFO[6][4] , \FIFO[6][3] , \FIFO[6][2] ,
         \FIFO[6][1] , \FIFO[6][0] , \FIFO[5][7] , \FIFO[5][6] , \FIFO[5][5] ,
         \FIFO[5][4] , \FIFO[5][3] , \FIFO[5][2] , \FIFO[5][1] , \FIFO[5][0] ,
         \FIFO[4][7] , \FIFO[4][6] , \FIFO[4][5] , \FIFO[4][4] , \FIFO[4][3] ,
         \FIFO[4][2] , \FIFO[4][1] , \FIFO[4][0] , \FIFO[3][7] , \FIFO[3][6] ,
         \FIFO[3][5] , \FIFO[3][4] , \FIFO[3][3] , \FIFO[3][2] , \FIFO[3][1] ,
         \FIFO[3][0] , \FIFO[2][7] , \FIFO[2][6] , \FIFO[2][5] , \FIFO[2][4] ,
         \FIFO[2][3] , \FIFO[2][2] , \FIFO[2][1] , \FIFO[2][0] , \FIFO[1][7] ,
         \FIFO[1][6] , \FIFO[1][5] , \FIFO[1][4] , \FIFO[1][3] , \FIFO[1][2] ,
         \FIFO[1][1] , \FIFO[1][0] , \FIFO[0][7] , \FIFO[0][6] , \FIFO[0][5] ,
         \FIFO[0][4] , \FIFO[0][3] , \FIFO[0][2] , \FIFO[0][1] , \FIFO[0][0] ,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178;
  assign N9 = RADDR[0];
  assign N10 = RADDR[1];
  assign N11 = RADDR[2];
  assign test_so2 = \FIFO[7][7] ;
  assign test_so1 = \FIFO[0][1] ;

  SDFFRQX2M \FIFO_reg[5][7]  ( .D(n133), .SI(\FIFO[5][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][7] ) );
  SDFFRQX2M \FIFO_reg[5][6]  ( .D(n132), .SI(\FIFO[5][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][6] ) );
  SDFFRQX2M \FIFO_reg[5][5]  ( .D(n131), .SI(\FIFO[5][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][5] ) );
  SDFFRQX2M \FIFO_reg[5][4]  ( .D(n130), .SI(\FIFO[5][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][4] ) );
  SDFFRQX2M \FIFO_reg[5][3]  ( .D(n129), .SI(\FIFO[5][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][3] ) );
  SDFFRQX2M \FIFO_reg[5][2]  ( .D(n128), .SI(\FIFO[5][1] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][2] ) );
  SDFFRQX2M \FIFO_reg[5][1]  ( .D(n127), .SI(\FIFO[5][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][1] ) );
  SDFFRQX2M \FIFO_reg[5][0]  ( .D(n126), .SI(\FIFO[4][7] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[5][0] ) );
  SDFFRQX2M \FIFO_reg[1][7]  ( .D(n101), .SI(\FIFO[1][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][7] ) );
  SDFFRQX2M \FIFO_reg[1][6]  ( .D(n100), .SI(\FIFO[1][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][6] ) );
  SDFFRQX2M \FIFO_reg[1][5]  ( .D(n99), .SI(\FIFO[1][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][5] ) );
  SDFFRQX2M \FIFO_reg[1][4]  ( .D(n98), .SI(\FIFO[1][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][4] ) );
  SDFFRQX2M \FIFO_reg[1][3]  ( .D(n97), .SI(\FIFO[1][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][3] ) );
  SDFFRQX2M \FIFO_reg[1][2]  ( .D(n96), .SI(\FIFO[1][1] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][2] ) );
  SDFFRQX2M \FIFO_reg[1][1]  ( .D(n95), .SI(\FIFO[1][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][1] ) );
  SDFFRQX2M \FIFO_reg[1][0]  ( .D(n94), .SI(\FIFO[0][7] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[1][0] ) );
  SDFFRQX2M \FIFO_reg[7][7]  ( .D(n149), .SI(\FIFO[7][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][7] ) );
  SDFFRQX2M \FIFO_reg[7][6]  ( .D(n148), .SI(\FIFO[7][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][6] ) );
  SDFFRQX2M \FIFO_reg[7][5]  ( .D(n147), .SI(\FIFO[7][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][5] ) );
  SDFFRQX2M \FIFO_reg[7][4]  ( .D(n146), .SI(\FIFO[7][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][4] ) );
  SDFFRQX2M \FIFO_reg[7][3]  ( .D(n145), .SI(\FIFO[7][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][3] ) );
  SDFFRQX2M \FIFO_reg[7][2]  ( .D(n144), .SI(\FIFO[7][1] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][2] ) );
  SDFFRQX2M \FIFO_reg[7][1]  ( .D(n143), .SI(\FIFO[7][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][1] ) );
  SDFFRQX2M \FIFO_reg[7][0]  ( .D(n142), .SI(\FIFO[6][7] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[7][0] ) );
  SDFFRQX2M \FIFO_reg[3][7]  ( .D(n117), .SI(\FIFO[3][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[3][7] ) );
  SDFFRQX2M \FIFO_reg[3][6]  ( .D(n116), .SI(\FIFO[3][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[3][6] ) );
  SDFFRQX2M \FIFO_reg[3][5]  ( .D(n115), .SI(\FIFO[3][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[3][5] ) );
  SDFFRQX2M \FIFO_reg[3][4]  ( .D(n114), .SI(\FIFO[3][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[3][4] ) );
  SDFFRQX2M \FIFO_reg[3][3]  ( .D(n113), .SI(\FIFO[3][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[3][3] ) );
  SDFFRQX2M \FIFO_reg[3][2]  ( .D(n112), .SI(\FIFO[3][1] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[3][2] ) );
  SDFFRQX2M \FIFO_reg[3][1]  ( .D(n111), .SI(\FIFO[3][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[3][1] ) );
  SDFFRQX2M \FIFO_reg[3][0]  ( .D(n110), .SI(\FIFO[2][7] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[3][0] ) );
  SDFFRQX2M \FIFO_reg[6][7]  ( .D(n141), .SI(\FIFO[6][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[6][7] ) );
  SDFFRQX2M \FIFO_reg[6][6]  ( .D(n140), .SI(\FIFO[6][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[6][6] ) );
  SDFFRQX2M \FIFO_reg[6][5]  ( .D(n139), .SI(\FIFO[6][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[6][5] ) );
  SDFFRQX2M \FIFO_reg[6][4]  ( .D(n138), .SI(\FIFO[6][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n163), .Q(\FIFO[6][4] ) );
  SDFFRQX2M \FIFO_reg[6][3]  ( .D(n137), .SI(\FIFO[6][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[6][3] ) );
  SDFFRQX2M \FIFO_reg[6][2]  ( .D(n136), .SI(\FIFO[6][1] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[6][2] ) );
  SDFFRQX2M \FIFO_reg[6][1]  ( .D(n135), .SI(\FIFO[6][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[6][1] ) );
  SDFFRQX2M \FIFO_reg[6][0]  ( .D(n134), .SI(\FIFO[5][7] ), .SE(test_se), .CK(
        WR_CLK), .RN(n164), .Q(\FIFO[6][0] ) );
  SDFFRQX2M \FIFO_reg[2][7]  ( .D(n109), .SI(\FIFO[2][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][7] ) );
  SDFFRQX2M \FIFO_reg[2][6]  ( .D(n108), .SI(\FIFO[2][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][6] ) );
  SDFFRQX2M \FIFO_reg[2][5]  ( .D(n107), .SI(\FIFO[2][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][5] ) );
  SDFFRQX2M \FIFO_reg[2][4]  ( .D(n106), .SI(\FIFO[2][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][4] ) );
  SDFFRQX2M \FIFO_reg[2][3]  ( .D(n105), .SI(\FIFO[2][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][3] ) );
  SDFFRQX2M \FIFO_reg[2][2]  ( .D(n104), .SI(\FIFO[2][1] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][2] ) );
  SDFFRQX2M \FIFO_reg[2][1]  ( .D(n103), .SI(\FIFO[2][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][1] ) );
  SDFFRQX2M \FIFO_reg[2][0]  ( .D(n102), .SI(\FIFO[1][7] ), .SE(test_se), .CK(
        WR_CLK), .RN(n166), .Q(\FIFO[2][0] ) );
  SDFFRQX2M \FIFO_reg[4][7]  ( .D(n125), .SI(\FIFO[4][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][7] ) );
  SDFFRQX2M \FIFO_reg[4][6]  ( .D(n124), .SI(\FIFO[4][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][6] ) );
  SDFFRQX2M \FIFO_reg[4][5]  ( .D(n123), .SI(\FIFO[4][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][5] ) );
  SDFFRQX2M \FIFO_reg[4][4]  ( .D(n122), .SI(\FIFO[4][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][4] ) );
  SDFFRQX2M \FIFO_reg[4][3]  ( .D(n121), .SI(\FIFO[4][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][3] ) );
  SDFFRQX2M \FIFO_reg[4][2]  ( .D(n120), .SI(\FIFO[4][1] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][2] ) );
  SDFFRQX2M \FIFO_reg[4][1]  ( .D(n119), .SI(\FIFO[4][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][1] ) );
  SDFFRQX2M \FIFO_reg[4][0]  ( .D(n118), .SI(\FIFO[3][7] ), .SE(test_se), .CK(
        WR_CLK), .RN(n165), .Q(\FIFO[4][0] ) );
  SDFFRQX2M \FIFO_reg[0][7]  ( .D(n93), .SI(\FIFO[0][6] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[0][7] ) );
  SDFFRQX2M \FIFO_reg[0][6]  ( .D(n92), .SI(\FIFO[0][5] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[0][6] ) );
  SDFFRQX2M \FIFO_reg[0][5]  ( .D(n91), .SI(\FIFO[0][4] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[0][5] ) );
  SDFFRQX2M \FIFO_reg[0][4]  ( .D(n90), .SI(\FIFO[0][3] ), .SE(test_se), .CK(
        WR_CLK), .RN(n167), .Q(\FIFO[0][4] ) );
  SDFFRQX2M \FIFO_reg[0][3]  ( .D(n89), .SI(\FIFO[0][2] ), .SE(test_se), .CK(
        WR_CLK), .RN(n168), .Q(\FIFO[0][3] ) );
  SDFFRQX2M \FIFO_reg[0][2]  ( .D(n88), .SI(test_si2), .SE(test_se), .CK(
        WR_CLK), .RN(n168), .Q(\FIFO[0][2] ) );
  SDFFRQX2M \FIFO_reg[0][1]  ( .D(n87), .SI(\FIFO[0][0] ), .SE(test_se), .CK(
        WR_CLK), .RN(n168), .Q(\FIFO[0][1] ) );
  SDFFRQX2M \FIFO_reg[0][0]  ( .D(n86), .SI(test_si1), .SE(test_se), .CK(
        WR_CLK), .RN(n168), .Q(\FIFO[0][0] ) );
  BUFX2M U66 ( .A(n83), .Y(n159) );
  BUFX2M U67 ( .A(n84), .Y(n158) );
  BUFX2M U68 ( .A(n85), .Y(n157) );
  BUFX2M U69 ( .A(n79), .Y(n160) );
  BUFX2M U70 ( .A(n162), .Y(n167) );
  BUFX2M U71 ( .A(n162), .Y(n166) );
  BUFX2M U72 ( .A(n161), .Y(n165) );
  BUFX2M U73 ( .A(n161), .Y(n164) );
  BUFX2M U74 ( .A(n161), .Y(n163) );
  BUFX2M U75 ( .A(n162), .Y(n168) );
  BUFX2M U76 ( .A(RST), .Y(n162) );
  BUFX2M U77 ( .A(RST), .Y(n161) );
  NAND3X2M U78 ( .A(n169), .B(n178), .C(n82), .Y(n81) );
  NAND3X2M U79 ( .A(n169), .B(n178), .C(n76), .Y(n75) );
  NOR2BX2M U80 ( .AN(WINC), .B(WFULL), .Y(n80) );
  NAND3X2M U81 ( .A(n76), .B(n178), .C(WADDR[0]), .Y(n77) );
  NAND3X2M U82 ( .A(n76), .B(n169), .C(WADDR[1]), .Y(n78) );
  NOR2BX2M U83 ( .AN(n80), .B(WADDR[2]), .Y(n76) );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n177), .A0N(\FIFO[0][0] ), .A1N(n75), .Y(n86)
         );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n176), .A0N(\FIFO[0][1] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n175), .A0N(\FIFO[0][2] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n174), .A0N(\FIFO[0][3] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n173), .A0N(\FIFO[0][4] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n172), .A0N(\FIFO[0][5] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n171), .A0N(\FIFO[0][6] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n170), .A0N(\FIFO[0][7] ), .A1N(n75), .Y(n93)
         );
  OAI2BB2X1M U92 ( .B0(n177), .B1(n77), .A0N(\FIFO[1][0] ), .A1N(n77), .Y(n94)
         );
  OAI2BB2X1M U93 ( .B0(n176), .B1(n77), .A0N(\FIFO[1][1] ), .A1N(n77), .Y(n95)
         );
  OAI2BB2X1M U94 ( .B0(n175), .B1(n77), .A0N(\FIFO[1][2] ), .A1N(n77), .Y(n96)
         );
  OAI2BB2X1M U95 ( .B0(n174), .B1(n77), .A0N(\FIFO[1][3] ), .A1N(n77), .Y(n97)
         );
  OAI2BB2X1M U96 ( .B0(n173), .B1(n77), .A0N(\FIFO[1][4] ), .A1N(n77), .Y(n98)
         );
  OAI2BB2X1M U97 ( .B0(n172), .B1(n77), .A0N(\FIFO[1][5] ), .A1N(n77), .Y(n99)
         );
  OAI2BB2X1M U98 ( .B0(n171), .B1(n77), .A0N(\FIFO[1][6] ), .A1N(n77), .Y(n100) );
  OAI2BB2X1M U99 ( .B0(n170), .B1(n77), .A0N(\FIFO[1][7] ), .A1N(n77), .Y(n101) );
  OAI2BB2X1M U100 ( .B0(n177), .B1(n78), .A0N(\FIFO[2][0] ), .A1N(n78), .Y(
        n102) );
  OAI2BB2X1M U101 ( .B0(n176), .B1(n78), .A0N(\FIFO[2][1] ), .A1N(n78), .Y(
        n103) );
  OAI2BB2X1M U102 ( .B0(n175), .B1(n78), .A0N(\FIFO[2][2] ), .A1N(n78), .Y(
        n104) );
  OAI2BB2X1M U103 ( .B0(n174), .B1(n78), .A0N(\FIFO[2][3] ), .A1N(n78), .Y(
        n105) );
  OAI2BB2X1M U104 ( .B0(n173), .B1(n78), .A0N(\FIFO[2][4] ), .A1N(n78), .Y(
        n106) );
  OAI2BB2X1M U105 ( .B0(n172), .B1(n78), .A0N(\FIFO[2][5] ), .A1N(n78), .Y(
        n107) );
  OAI2BB2X1M U106 ( .B0(n171), .B1(n78), .A0N(\FIFO[2][6] ), .A1N(n78), .Y(
        n108) );
  OAI2BB2X1M U107 ( .B0(n170), .B1(n78), .A0N(\FIFO[2][7] ), .A1N(n78), .Y(
        n109) );
  OAI2BB2X1M U108 ( .B0(n177), .B1(n81), .A0N(\FIFO[4][0] ), .A1N(n81), .Y(
        n118) );
  OAI2BB2X1M U109 ( .B0(n176), .B1(n81), .A0N(\FIFO[4][1] ), .A1N(n81), .Y(
        n119) );
  OAI2BB2X1M U110 ( .B0(n175), .B1(n81), .A0N(\FIFO[4][2] ), .A1N(n81), .Y(
        n120) );
  OAI2BB2X1M U111 ( .B0(n174), .B1(n81), .A0N(\FIFO[4][3] ), .A1N(n81), .Y(
        n121) );
  OAI2BB2X1M U112 ( .B0(n173), .B1(n81), .A0N(\FIFO[4][4] ), .A1N(n81), .Y(
        n122) );
  OAI2BB2X1M U113 ( .B0(n172), .B1(n81), .A0N(\FIFO[4][5] ), .A1N(n81), .Y(
        n123) );
  OAI2BB2X1M U114 ( .B0(n171), .B1(n81), .A0N(\FIFO[4][6] ), .A1N(n81), .Y(
        n124) );
  OAI2BB2X1M U115 ( .B0(n170), .B1(n81), .A0N(\FIFO[4][7] ), .A1N(n81), .Y(
        n125) );
  INVX2M U116 ( .A(WDATA[0]), .Y(n177) );
  INVX2M U117 ( .A(WDATA[1]), .Y(n176) );
  INVX2M U118 ( .A(WDATA[2]), .Y(n175) );
  INVX2M U119 ( .A(WDATA[3]), .Y(n174) );
  INVX2M U120 ( .A(WDATA[4]), .Y(n173) );
  INVX2M U121 ( .A(WDATA[5]), .Y(n172) );
  INVX2M U122 ( .A(WDATA[6]), .Y(n171) );
  INVX2M U123 ( .A(WDATA[7]), .Y(n170) );
  OAI2BB2X1M U124 ( .B0(n177), .B1(n160), .A0N(\FIFO[3][0] ), .A1N(n160), .Y(
        n110) );
  OAI2BB2X1M U125 ( .B0(n176), .B1(n160), .A0N(\FIFO[3][1] ), .A1N(n160), .Y(
        n111) );
  OAI2BB2X1M U126 ( .B0(n175), .B1(n160), .A0N(\FIFO[3][2] ), .A1N(n160), .Y(
        n112) );
  OAI2BB2X1M U127 ( .B0(n174), .B1(n160), .A0N(\FIFO[3][3] ), .A1N(n160), .Y(
        n113) );
  OAI2BB2X1M U128 ( .B0(n173), .B1(n160), .A0N(\FIFO[3][4] ), .A1N(n160), .Y(
        n114) );
  OAI2BB2X1M U129 ( .B0(n172), .B1(n160), .A0N(\FIFO[3][5] ), .A1N(n160), .Y(
        n115) );
  OAI2BB2X1M U130 ( .B0(n171), .B1(n160), .A0N(\FIFO[3][6] ), .A1N(n160), .Y(
        n116) );
  OAI2BB2X1M U131 ( .B0(n170), .B1(n160), .A0N(\FIFO[3][7] ), .A1N(n160), .Y(
        n117) );
  OAI2BB2X1M U132 ( .B0(n177), .B1(n159), .A0N(\FIFO[5][0] ), .A1N(n159), .Y(
        n126) );
  OAI2BB2X1M U133 ( .B0(n176), .B1(n159), .A0N(\FIFO[5][1] ), .A1N(n159), .Y(
        n127) );
  OAI2BB2X1M U134 ( .B0(n175), .B1(n159), .A0N(\FIFO[5][2] ), .A1N(n159), .Y(
        n128) );
  OAI2BB2X1M U135 ( .B0(n174), .B1(n159), .A0N(\FIFO[5][3] ), .A1N(n159), .Y(
        n129) );
  OAI2BB2X1M U136 ( .B0(n173), .B1(n159), .A0N(\FIFO[5][4] ), .A1N(n159), .Y(
        n130) );
  OAI2BB2X1M U137 ( .B0(n172), .B1(n159), .A0N(\FIFO[5][5] ), .A1N(n159), .Y(
        n131) );
  OAI2BB2X1M U138 ( .B0(n171), .B1(n159), .A0N(\FIFO[5][6] ), .A1N(n159), .Y(
        n132) );
  OAI2BB2X1M U139 ( .B0(n170), .B1(n159), .A0N(\FIFO[5][7] ), .A1N(n159), .Y(
        n133) );
  OAI2BB2X1M U140 ( .B0(n177), .B1(n158), .A0N(\FIFO[6][0] ), .A1N(n158), .Y(
        n134) );
  OAI2BB2X1M U141 ( .B0(n176), .B1(n158), .A0N(\FIFO[6][1] ), .A1N(n158), .Y(
        n135) );
  OAI2BB2X1M U142 ( .B0(n175), .B1(n158), .A0N(\FIFO[6][2] ), .A1N(n158), .Y(
        n136) );
  OAI2BB2X1M U143 ( .B0(n174), .B1(n158), .A0N(\FIFO[6][3] ), .A1N(n158), .Y(
        n137) );
  OAI2BB2X1M U144 ( .B0(n173), .B1(n158), .A0N(\FIFO[6][4] ), .A1N(n158), .Y(
        n138) );
  OAI2BB2X1M U145 ( .B0(n172), .B1(n158), .A0N(\FIFO[6][5] ), .A1N(n158), .Y(
        n139) );
  OAI2BB2X1M U146 ( .B0(n171), .B1(n158), .A0N(\FIFO[6][6] ), .A1N(n158), .Y(
        n140) );
  OAI2BB2X1M U147 ( .B0(n170), .B1(n158), .A0N(\FIFO[6][7] ), .A1N(n158), .Y(
        n141) );
  OAI2BB2X1M U148 ( .B0(n177), .B1(n157), .A0N(\FIFO[7][0] ), .A1N(n157), .Y(
        n142) );
  OAI2BB2X1M U149 ( .B0(n176), .B1(n157), .A0N(\FIFO[7][1] ), .A1N(n157), .Y(
        n143) );
  OAI2BB2X1M U150 ( .B0(n175), .B1(n157), .A0N(\FIFO[7][2] ), .A1N(n157), .Y(
        n144) );
  OAI2BB2X1M U151 ( .B0(n174), .B1(n157), .A0N(\FIFO[7][3] ), .A1N(n157), .Y(
        n145) );
  OAI2BB2X1M U152 ( .B0(n173), .B1(n157), .A0N(\FIFO[7][4] ), .A1N(n157), .Y(
        n146) );
  OAI2BB2X1M U153 ( .B0(n172), .B1(n157), .A0N(\FIFO[7][5] ), .A1N(n157), .Y(
        n147) );
  OAI2BB2X1M U154 ( .B0(n171), .B1(n157), .A0N(\FIFO[7][6] ), .A1N(n157), .Y(
        n148) );
  OAI2BB2X1M U155 ( .B0(n170), .B1(n157), .A0N(\FIFO[7][7] ), .A1N(n157), .Y(
        n149) );
  AND2X2M U156 ( .A(WADDR[2]), .B(n80), .Y(n82) );
  NAND3X2M U157 ( .A(WADDR[0]), .B(n76), .C(WADDR[1]), .Y(n79) );
  NAND3X2M U158 ( .A(WADDR[1]), .B(WADDR[0]), .C(n82), .Y(n85) );
  NAND3X2M U159 ( .A(WADDR[0]), .B(n178), .C(n82), .Y(n83) );
  NAND3X2M U160 ( .A(WADDR[1]), .B(n169), .C(n82), .Y(n84) );
  INVX2M U161 ( .A(WADDR[0]), .Y(n169) );
  INVX2M U162 ( .A(WADDR[1]), .Y(n178) );
  BUFX4M U163 ( .A(N9), .Y(n156) );
  MX2X2M U164 ( .A(n153), .B(n152), .S0(N11), .Y(RDATA[6]) );
  MX4X1M U165 ( .A(\FIFO[4][6] ), .B(\FIFO[5][6] ), .C(\FIFO[6][6] ), .D(
        \FIFO[7][6] ), .S0(n156), .S1(N10), .Y(n152) );
  MX4X1M U166 ( .A(\FIFO[0][6] ), .B(\FIFO[1][6] ), .C(\FIFO[2][6] ), .D(
        \FIFO[3][6] ), .S0(n156), .S1(N10), .Y(n153) );
  MX2X2M U167 ( .A(n74), .B(n73), .S0(N11), .Y(RDATA[4]) );
  MX4X1M U168 ( .A(\FIFO[4][4] ), .B(\FIFO[5][4] ), .C(\FIFO[6][4] ), .D(
        \FIFO[7][4] ), .S0(n156), .S1(N10), .Y(n73) );
  MX4X1M U169 ( .A(\FIFO[0][4] ), .B(\FIFO[1][4] ), .C(\FIFO[2][4] ), .D(
        \FIFO[3][4] ), .S0(n156), .S1(N10), .Y(n74) );
  MX2X2M U170 ( .A(n155), .B(n154), .S0(N11), .Y(RDATA[7]) );
  MX4X1M U171 ( .A(\FIFO[4][7] ), .B(\FIFO[5][7] ), .C(\FIFO[6][7] ), .D(
        \FIFO[7][7] ), .S0(n156), .S1(N10), .Y(n154) );
  MX4X1M U172 ( .A(\FIFO[0][7] ), .B(\FIFO[1][7] ), .C(\FIFO[2][7] ), .D(
        \FIFO[3][7] ), .S0(n156), .S1(N10), .Y(n155) );
  MX2X2M U173 ( .A(n151), .B(n150), .S0(N11), .Y(RDATA[5]) );
  MX4X1M U174 ( .A(\FIFO[4][5] ), .B(\FIFO[5][5] ), .C(\FIFO[6][5] ), .D(
        \FIFO[7][5] ), .S0(n156), .S1(N10), .Y(n150) );
  MX4X1M U175 ( .A(\FIFO[0][5] ), .B(\FIFO[1][5] ), .C(\FIFO[2][5] ), .D(
        \FIFO[3][5] ), .S0(n156), .S1(N10), .Y(n151) );
  MX2X2M U176 ( .A(n70), .B(n69), .S0(N11), .Y(RDATA[2]) );
  MX4X1M U177 ( .A(\FIFO[4][2] ), .B(\FIFO[5][2] ), .C(\FIFO[6][2] ), .D(
        \FIFO[7][2] ), .S0(n156), .S1(N10), .Y(n69) );
  MX4X1M U178 ( .A(\FIFO[0][2] ), .B(\FIFO[1][2] ), .C(\FIFO[2][2] ), .D(
        \FIFO[3][2] ), .S0(n156), .S1(N10), .Y(n70) );
  MX2X2M U179 ( .A(n72), .B(n71), .S0(N11), .Y(RDATA[3]) );
  MX4X1M U180 ( .A(\FIFO[4][3] ), .B(\FIFO[5][3] ), .C(\FIFO[6][3] ), .D(
        \FIFO[7][3] ), .S0(n156), .S1(N10), .Y(n71) );
  MX4X1M U181 ( .A(\FIFO[0][3] ), .B(\FIFO[1][3] ), .C(\FIFO[2][3] ), .D(
        \FIFO[3][3] ), .S0(n156), .S1(N10), .Y(n72) );
  MX2X2M U182 ( .A(n66), .B(n65), .S0(N11), .Y(RDATA[0]) );
  MX4X1M U183 ( .A(\FIFO[4][0] ), .B(\FIFO[5][0] ), .C(\FIFO[6][0] ), .D(
        \FIFO[7][0] ), .S0(n156), .S1(N10), .Y(n65) );
  MX4X1M U184 ( .A(\FIFO[0][0] ), .B(\FIFO[1][0] ), .C(\FIFO[2][0] ), .D(
        \FIFO[3][0] ), .S0(n156), .S1(N10), .Y(n66) );
  MX2X2M U185 ( .A(n68), .B(n67), .S0(N11), .Y(RDATA[1]) );
  MX4X1M U186 ( .A(\FIFO[4][1] ), .B(\FIFO[5][1] ), .C(\FIFO[6][1] ), .D(
        \FIFO[7][1] ), .S0(n156), .S1(N10), .Y(n67) );
  MX4X1M U187 ( .A(\FIFO[0][1] ), .B(\FIFO[1][1] ), .C(\FIFO[2][1] ), .D(
        \FIFO[3][1] ), .S0(n156), .S1(N10), .Y(n68) );
endmodule


module D_SYNC_RD_test_1 ( WR_CLK, GRAY_RPTR, WR_RST, RD_PTR_SYNC, test_se );
  input [3:0] GRAY_RPTR;
  output [3:0] RD_PTR_SYNC;
  input WR_CLK, WR_RST, test_se;
  wire   \SYNC_REG[3][0] , \SYNC_REG[2][0] , \SYNC_REG[1][0] ,
         \SYNC_REG[0][0] ;

  SDFFRQX2M \SYNC_REG_reg[3][1]  ( .D(\SYNC_REG[3][0] ), .SI(\SYNC_REG[3][0] ), 
        .SE(test_se), .CK(WR_CLK), .RN(WR_RST), .Q(RD_PTR_SYNC[3]) );
  SDFFRQX2M \SYNC_REG_reg[2][1]  ( .D(\SYNC_REG[2][0] ), .SI(\SYNC_REG[2][0] ), 
        .SE(test_se), .CK(WR_CLK), .RN(WR_RST), .Q(RD_PTR_SYNC[2]) );
  SDFFRQX2M \SYNC_REG_reg[1][1]  ( .D(\SYNC_REG[1][0] ), .SI(\SYNC_REG[1][0] ), 
        .SE(test_se), .CK(WR_CLK), .RN(WR_RST), .Q(RD_PTR_SYNC[1]) );
  SDFFRQX2M \SYNC_REG_reg[0][1]  ( .D(\SYNC_REG[0][0] ), .SI(\SYNC_REG[0][0] ), 
        .SE(test_se), .CK(WR_CLK), .RN(WR_RST), .Q(RD_PTR_SYNC[0]) );
  SDFFRQX2M \SYNC_REG_reg[3][0]  ( .D(GRAY_RPTR[3]), .SI(RD_PTR_SYNC[2]), .SE(
        test_se), .CK(WR_CLK), .RN(WR_RST), .Q(\SYNC_REG[3][0] ) );
  SDFFRQX2M \SYNC_REG_reg[2][0]  ( .D(GRAY_RPTR[2]), .SI(RD_PTR_SYNC[1]), .SE(
        test_se), .CK(WR_CLK), .RN(WR_RST), .Q(\SYNC_REG[2][0] ) );
  SDFFRQX2M \SYNC_REG_reg[1][0]  ( .D(GRAY_RPTR[1]), .SI(RD_PTR_SYNC[0]), .SE(
        test_se), .CK(WR_CLK), .RN(WR_RST), .Q(\SYNC_REG[1][0] ) );
  SDFFRQX2M \SYNC_REG_reg[0][0]  ( .D(GRAY_RPTR[0]), .SI(GRAY_RPTR[3]), .SE(
        test_se), .CK(WR_CLK), .RN(WR_RST), .Q(\SYNC_REG[0][0] ) );
endmodule


module D_SYNC_WR_test_1 ( RD_CLK, GRAY_WPTR, RD_RST, WR_PTR_SYNC, test_si, 
        test_so, test_se );
  input [3:0] GRAY_WPTR;
  output [3:0] WR_PTR_SYNC;
  input RD_CLK, RD_RST, test_si, test_se;
  output test_so;
  wire   \SYNC_REG[3][1] , \SYNC_REG[2][1] , \SYNC_REG[1][1] ,
         \SYNC_REG[0][1] ;
  assign test_so = \SYNC_REG[3][1] ;

  SDFFRQX2M \SYNC_REG_reg[3][1]  ( .D(GRAY_WPTR[3]), .SI(WR_PTR_SYNC[3]), .SE(
        test_se), .CK(RD_CLK), .RN(RD_RST), .Q(\SYNC_REG[3][1] ) );
  SDFFRQX2M \SYNC_REG_reg[2][1]  ( .D(GRAY_WPTR[2]), .SI(WR_PTR_SYNC[2]), .SE(
        test_se), .CK(RD_CLK), .RN(RD_RST), .Q(\SYNC_REG[2][1] ) );
  SDFFRQX2M \SYNC_REG_reg[1][1]  ( .D(GRAY_WPTR[1]), .SI(WR_PTR_SYNC[1]), .SE(
        test_se), .CK(RD_CLK), .RN(RD_RST), .Q(\SYNC_REG[1][1] ) );
  SDFFRQX2M \SYNC_REG_reg[0][1]  ( .D(GRAY_WPTR[0]), .SI(WR_PTR_SYNC[0]), .SE(
        test_se), .CK(RD_CLK), .RN(RD_RST), .Q(\SYNC_REG[0][1] ) );
  SDFFRQX1M \SYNC_REG_reg[3][0]  ( .D(\SYNC_REG[3][1] ), .SI(\SYNC_REG[2][1] ), 
        .SE(test_se), .CK(RD_CLK), .RN(RD_RST), .Q(WR_PTR_SYNC[3]) );
  SDFFRQX1M \SYNC_REG_reg[2][0]  ( .D(\SYNC_REG[2][1] ), .SI(\SYNC_REG[1][1] ), 
        .SE(test_se), .CK(RD_CLK), .RN(RD_RST), .Q(WR_PTR_SYNC[2]) );
  SDFFRQX1M \SYNC_REG_reg[1][0]  ( .D(\SYNC_REG[1][1] ), .SI(\SYNC_REG[0][1] ), 
        .SE(test_se), .CK(RD_CLK), .RN(RD_RST), .Q(WR_PTR_SYNC[1]) );
  SDFFRQX1M \SYNC_REG_reg[0][0]  ( .D(\SYNC_REG[0][1] ), .SI(test_si), .SE(
        test_se), .CK(RD_CLK), .RN(RD_RST), .Q(WR_PTR_SYNC[0]) );
endmodule


module FIFO_RD_test_1 ( RINC, RD_CLK, RD_RST, WR_SYNC, RADDR, RD_PTR, EMPTY, 
        test_si, test_se );
  input [3:0] WR_SYNC;
  output [2:0] RADDR;
  output [3:0] RD_PTR;
  input RINC, RD_CLK, RD_RST, test_si, test_se;
  output EMPTY;
  wire   \RD_PTR_bin[3] , n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22;
  wire   [2:0] RD_GRAY_PTR_COMB;

  SDFFRX1M \RD_PTR_bin_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(
        RD_CLK), .RN(RD_RST), .Q(RADDR[0]), .QN(n9) );
  SDFFRQX1M \RD_PTR_reg[3]  ( .D(\RD_PTR_bin[3] ), .SI(RD_PTR[2]), .SE(test_se), .CK(RD_CLK), .RN(RD_RST), .Q(RD_PTR[3]) );
  SDFFRQX1M \RD_PTR_reg[2]  ( .D(RD_GRAY_PTR_COMB[2]), .SI(RD_PTR[1]), .SE(
        test_se), .CK(RD_CLK), .RN(RD_RST), .Q(RD_PTR[2]) );
  SDFFRQX1M \RD_PTR_reg[0]  ( .D(RD_GRAY_PTR_COMB[0]), .SI(\RD_PTR_bin[3] ), 
        .SE(test_se), .CK(RD_CLK), .RN(RD_RST), .Q(RD_PTR[0]) );
  SDFFRQX1M \RD_PTR_reg[1]  ( .D(RD_GRAY_PTR_COMB[1]), .SI(RD_PTR[0]), .SE(
        test_se), .CK(RD_CLK), .RN(RD_RST), .Q(RD_PTR[1]) );
  SDFFRQX1M \RD_PTR_bin_reg[2]  ( .D(n20), .SI(RADDR[1]), .SE(test_se), .CK(
        RD_CLK), .RN(RD_RST), .Q(RADDR[2]) );
  SDFFRQX1M \RD_PTR_bin_reg[1]  ( .D(n21), .SI(n9), .SE(test_se), .CK(RD_CLK), 
        .RN(RD_RST), .Q(RADDR[1]) );
  SDFFRQX1M \RD_PTR_bin_reg[3]  ( .D(n19), .SI(RADDR[2]), .SE(test_se), .CK(
        RD_CLK), .RN(RD_RST), .Q(\RD_PTR_bin[3] ) );
  INVX2M U19 ( .A(n14), .Y(EMPTY) );
  XNOR2X2M U20 ( .A(RD_GRAY_PTR_COMB[1]), .B(WR_SYNC[1]), .Y(n15) );
  XNOR2X2M U21 ( .A(n9), .B(RADDR[1]), .Y(RD_GRAY_PTR_COMB[0]) );
  NOR2X2M U22 ( .A(n13), .B(n9), .Y(n12) );
  XNOR2X2M U23 ( .A(RADDR[2]), .B(n11), .Y(n20) );
  XNOR2X2M U24 ( .A(\RD_PTR_bin[3] ), .B(n10), .Y(n19) );
  NAND2BX2M U25 ( .AN(n11), .B(RADDR[2]), .Y(n10) );
  NAND4X2M U26 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  XNOR2X2M U27 ( .A(\RD_PTR_bin[3] ), .B(WR_SYNC[3]), .Y(n17) );
  XNOR2X2M U28 ( .A(RD_GRAY_PTR_COMB[2]), .B(WR_SYNC[2]), .Y(n18) );
  XNOR2X2M U29 ( .A(RD_GRAY_PTR_COMB[0]), .B(WR_SYNC[0]), .Y(n16) );
  NAND2X2M U30 ( .A(n12), .B(RADDR[1]), .Y(n11) );
  NAND2X2M U31 ( .A(RINC), .B(n14), .Y(n13) );
  CLKXOR2X2M U32 ( .A(RADDR[1]), .B(RADDR[2]), .Y(RD_GRAY_PTR_COMB[1]) );
  CLKXOR2X2M U33 ( .A(\RD_PTR_bin[3] ), .B(RADDR[2]), .Y(RD_GRAY_PTR_COMB[2])
         );
  CLKXOR2X2M U34 ( .A(n12), .B(RADDR[1]), .Y(n21) );
  CLKXOR2X2M U35 ( .A(n9), .B(n13), .Y(n22) );
endmodule


module FIFO_WR_test_1 ( WINC, WR_CLK, WR_RST, RD_SYNC, WADDR, WR_PTR, FULL, 
        test_si2, test_si1, test_se );
  input [3:0] RD_SYNC;
  output [2:0] WADDR;
  output [3:0] WR_PTR;
  input WINC, WR_CLK, WR_RST, test_si2, test_si1, test_se;
  output FULL;
  wire   \WR_PTR_bin[3] , n1, n2, n4, n5, n6, n7, n8, n14, n16, n18, n20, n3;
  wire   [2:0] WR_GRAY_PTR_COMB;

  SDFFRQX2M \WR_PTR_bin_reg[3]  ( .D(n14), .SI(WADDR[2]), .SE(test_se), .CK(
        WR_CLK), .RN(WR_RST), .Q(\WR_PTR_bin[3] ) );
  SDFFRQX2M \WR_PTR_bin_reg[2]  ( .D(n16), .SI(n3), .SE(test_se), .CK(WR_CLK), 
        .RN(WR_RST), .Q(WADDR[2]) );
  SDFFRQX2M \WR_PTR_bin_reg[1]  ( .D(n18), .SI(WADDR[0]), .SE(test_se), .CK(
        WR_CLK), .RN(WR_RST), .Q(WADDR[1]) );
  SDFFRQX2M \WR_PTR_bin_reg[0]  ( .D(n20), .SI(test_si1), .SE(test_se), .CK(
        WR_CLK), .RN(WR_RST), .Q(WADDR[0]) );
  SDFFRQX2M \WR_PTR_reg[3]  ( .D(\WR_PTR_bin[3] ), .SI(test_si2), .SE(test_se), 
        .CK(WR_CLK), .RN(WR_RST), .Q(WR_PTR[3]) );
  SDFFRQX2M \WR_PTR_reg[2]  ( .D(WR_GRAY_PTR_COMB[2]), .SI(WR_PTR[1]), .SE(
        test_se), .CK(WR_CLK), .RN(WR_RST), .Q(WR_PTR[2]) );
  SDFFRQX2M \WR_PTR_reg[1]  ( .D(WR_GRAY_PTR_COMB[1]), .SI(WR_PTR[0]), .SE(
        test_se), .CK(WR_CLK), .RN(WR_RST), .Q(WR_PTR[1]) );
  SDFFRQX2M \WR_PTR_reg[0]  ( .D(WR_GRAY_PTR_COMB[0]), .SI(\WR_PTR_bin[3] ), 
        .SE(test_se), .CK(WR_CLK), .RN(WR_RST), .Q(WR_PTR[0]) );
  NOR4X1M U3 ( .A(n5), .B(n6), .C(n7), .D(n8), .Y(FULL) );
  NOR2X2M U4 ( .A(n3), .B(n4), .Y(n2) );
  CLKXOR2X2M U5 ( .A(n3), .B(n4), .Y(n18) );
  XNOR2X2M U6 ( .A(\WR_PTR_bin[3] ), .B(RD_SYNC[3]), .Y(n5) );
  XNOR2X2M U7 ( .A(WR_GRAY_PTR_COMB[2]), .B(RD_SYNC[2]), .Y(n6) );
  CLKXOR2X2M U8 ( .A(RD_SYNC[1]), .B(WR_GRAY_PTR_COMB[1]), .Y(n8) );
  XNOR2X2M U9 ( .A(\WR_PTR_bin[3] ), .B(n1), .Y(n14) );
  NAND2X2M U10 ( .A(WADDR[2]), .B(n2), .Y(n1) );
  NAND2X2M U11 ( .A(WINC), .B(WADDR[0]), .Y(n4) );
  CLKXOR2X2M U12 ( .A(RD_SYNC[0]), .B(WR_GRAY_PTR_COMB[0]), .Y(n7) );
  CLKXOR2X2M U13 ( .A(WADDR[0]), .B(WADDR[1]), .Y(WR_GRAY_PTR_COMB[0]) );
  CLKXOR2X2M U14 ( .A(WADDR[1]), .B(WADDR[2]), .Y(WR_GRAY_PTR_COMB[1]) );
  CLKXOR2X2M U15 ( .A(\WR_PTR_bin[3] ), .B(WADDR[2]), .Y(WR_GRAY_PTR_COMB[2])
         );
  CLKXOR2X2M U16 ( .A(WADDR[2]), .B(n2), .Y(n16) );
  INVX2M U17 ( .A(WADDR[1]), .Y(n3) );
  CLKXOR2X2M U18 ( .A(WINC), .B(WADDR[0]), .Y(n20) );
endmodule


module FIFO_TOP_DATA_WIDTH8_ADDR_WIDTH3_BUS_WIDTH4_test_1 ( RD_CLK, WR_CLK, 
        RD_RST, WR_RST, WINC, RINC, WDATA, FULL, EMPTY, RDATA, test_si3, 
        test_si2, test_si1, test_so3, test_so2, test_so1, test_se );
  input [7:0] WDATA;
  output [7:0] RDATA;
  input RD_CLK, WR_CLK, RD_RST, WR_RST, WINC, RINC, test_si3, test_si2,
         test_si1, test_se;
  output FULL, EMPTY, test_so3, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [2:0] WADDR;
  wire   [2:0] RADDR;
  wire   [3:0] GRAY_RPTR;
  wire   [3:0] RD_PTR_SYNC;
  wire   [3:0] GRAY_WPTR;
  wire   [3:0] WR_PTR_SYNC;
  assign test_so3 = GRAY_WPTR[3];
  assign test_so2 = GRAY_WPTR[2];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(WR_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RD_RST), .Y(n2) );
  FIFO_MEM_test_1 fifo_mem ( .WADDR(WADDR), .RADDR(RADDR), .WDATA(WDATA), 
        .WR_CLK(WR_CLK), .RST(n3), .WINC(WINC), .WFULL(FULL), .RDATA(RDATA), 
        .test_si2(test_si2), .test_si1(test_si1), .test_so2(n6), .test_so1(
        test_so1), .test_se(test_se) );
  D_SYNC_RD_test_1 sync_read ( .WR_CLK(WR_CLK), .GRAY_RPTR(GRAY_RPTR), 
        .WR_RST(n3), .RD_PTR_SYNC(RD_PTR_SYNC), .test_se(test_se) );
  D_SYNC_WR_test_1 sync_write ( .RD_CLK(RD_CLK), .GRAY_WPTR(GRAY_WPTR), 
        .RD_RST(n1), .WR_PTR_SYNC(WR_PTR_SYNC), .test_si(RD_PTR_SYNC[3]), 
        .test_so(n5), .test_se(test_se) );
  FIFO_RD_test_1 rd ( .RINC(RINC), .RD_CLK(RD_CLK), .RD_RST(n1), .WR_SYNC(
        WR_PTR_SYNC), .RADDR(RADDR), .RD_PTR(GRAY_RPTR), .EMPTY(EMPTY), 
        .test_si(n6), .test_se(test_se) );
  FIFO_WR_test_1 wr ( .WINC(WINC), .WR_CLK(WR_CLK), .WR_RST(n3), .RD_SYNC(
        RD_PTR_SYNC), .WADDR(WADDR), .WR_PTR(GRAY_WPTR), .FULL(FULL), 
        .test_si2(test_si3), .test_si1(n5), .test_se(test_se) );
endmodule


module input_division_rx_ratio ( prescale, in_div_ratio );
  input [5:0] prescale;
  output [7:0] in_div_ratio;
  wire   n1, n2, n3;

  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(in_div_ratio[0]) );
  AND2X2M U14 ( .A(n1), .B(n2), .Y(in_div_ratio[2]) );
  AND2X2M U15 ( .A(n2), .B(n3), .Y(in_div_ratio[1]) );
  NOR3BX2M U16 ( .AN(prescale[4]), .B(prescale[3]), .C(prescale[5]), .Y(n3) );
  NOR3BX2M U17 ( .AN(prescale[3]), .B(prescale[4]), .C(prescale[5]), .Y(n1) );
  NOR3X2M U18 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .Y(n2) );
  INVX2M U3 ( .A(1'b1), .Y(in_div_ratio[3]) );
  INVX2M U5 ( .A(1'b1), .Y(in_div_ratio[4]) );
  INVX2M U7 ( .A(1'b1), .Y(in_div_ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(in_div_ratio[6]) );
  INVX2M U11 ( .A(1'b1), .Y(in_div_ratio[7]) );
endmodule


module CLOCK_DIV_DIV_WIDTH8_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLOCK_DIV_DIV_WIDTH8_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, o_div_clk_reg, N11, N29, N31, N32, N33, N34, N35, N36, N37, N39,
         N40, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n3, n4, n5, n6, n7, n8, n9, n10, n11, n31, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86;
  wire   [6:0] half_toggle;
  wire   [7:0] counter;
  wire   [7:0] prev_div_ratio;
  assign half_toggle[6] = i_div_ratio[7];
  assign half_toggle[5] = i_div_ratio[6];
  assign half_toggle[4] = i_div_ratio[5];
  assign half_toggle[3] = i_div_ratio[4];
  assign half_toggle[2] = i_div_ratio[3];
  assign half_toggle[1] = i_div_ratio[2];
  assign half_toggle[0] = i_div_ratio[1];
  assign test_so = prev_div_ratio[7];

  SDFFRQX2M \prev_div_ratio_reg[0]  ( .D(i_div_ratio[0]), .SI(o_div_clk_reg), 
        .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(prev_div_ratio[0]) );
  SDFFRQX2M \prev_div_ratio_reg[1]  ( .D(half_toggle[0]), .SI(
        prev_div_ratio[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        prev_div_ratio[1]) );
  SDFFRQX2M \prev_div_ratio_reg[7]  ( .D(half_toggle[6]), .SI(
        prev_div_ratio[6]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        prev_div_ratio[7]) );
  SDFFRQX2M \prev_div_ratio_reg[6]  ( .D(half_toggle[5]), .SI(
        prev_div_ratio[5]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        prev_div_ratio[6]) );
  SDFFRQX2M \prev_div_ratio_reg[5]  ( .D(half_toggle[4]), .SI(
        prev_div_ratio[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        prev_div_ratio[5]) );
  SDFFRQX2M \prev_div_ratio_reg[4]  ( .D(half_toggle[3]), .SI(
        prev_div_ratio[3]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        prev_div_ratio[4]) );
  SDFFRQX2M \prev_div_ratio_reg[3]  ( .D(half_toggle[2]), .SI(
        prev_div_ratio[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        prev_div_ratio[3]) );
  SDFFRQX2M \prev_div_ratio_reg[2]  ( .D(half_toggle[1]), .SI(
        prev_div_ratio[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        prev_div_ratio[2]) );
  SDFFRQX2M \counter_reg[7]  ( .D(N58), .SI(n81), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N51), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N57), .SI(n82), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N53), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N54), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N55), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N56), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N52), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRX1M flag_reg ( .D(n44), .SI(counter[7]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(n3), .QN(n30) );
  SDFFRQX1M o_div_clk_reg_reg ( .D(n45), .SI(n3), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(o_div_clk_reg) );
  OR2X2M U7 ( .A(half_toggle[0]), .B(i_div_ratio[0]), .Y(n6) );
  NOR2BX2M U8 ( .AN(N49), .B(n41), .Y(N57) );
  NOR2BX2M U9 ( .AN(N48), .B(n41), .Y(N56) );
  NOR2BX2M U15 ( .AN(N47), .B(n41), .Y(N55) );
  NOR2BX2M U27 ( .AN(N46), .B(n41), .Y(N54) );
  NOR2BX2M U28 ( .AN(N45), .B(n41), .Y(N53) );
  NOR2BX2M U29 ( .AN(N44), .B(n41), .Y(N52) );
  NAND2BX2M U30 ( .AN(i_div_ratio[0]), .B(N11), .Y(n36) );
  OR2X2M U31 ( .A(n38), .B(i_div_ratio[0]), .Y(n35) );
  INVX2M U32 ( .A(n33), .Y(N1) );
  INVX2M U33 ( .A(N34), .Y(n80) );
  INVX2M U34 ( .A(N33), .Y(n77) );
  INVX2M U35 ( .A(N35), .Y(n79) );
  INVX2M U36 ( .A(N36), .Y(n78) );
  OR3X2M U37 ( .A(N40), .B(N29), .C(n42), .Y(n41) );
  NOR2BX2M U38 ( .AN(N50), .B(n41), .Y(N58) );
  NOR2BX2M U39 ( .AN(N43), .B(n41), .Y(N51) );
  INVX2M U40 ( .A(counter[1]), .Y(n86) );
  NAND3X2M U41 ( .A(n36), .B(n35), .C(n37), .Y(n32) );
  OAI2BB2X1M U42 ( .B0(n38), .B1(n30), .A0N(n30), .A1N(N11), .Y(n37) );
  INVX2M U43 ( .A(counter[5]), .Y(n82) );
  INVX2M U44 ( .A(counter[2]), .Y(n85) );
  INVX2M U45 ( .A(counter[4]), .Y(n83) );
  INVX2M U46 ( .A(counter[3]), .Y(n84) );
  CLKXOR2X2M U47 ( .A(n3), .B(n4), .Y(n44) );
  NOR2X2M U48 ( .A(n32), .B(n33), .Y(n4) );
  CLKXOR2X2M U49 ( .A(o_div_clk_reg), .B(n34), .Y(n45) );
  AOI31X2M U50 ( .A0(n32), .A1(n35), .A2(n36), .B0(n33), .Y(n34) );
  NAND2X2M U51 ( .A(n39), .B(n40), .Y(n38) );
  NOR4X1M U52 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n39) );
  NOR4X1M U53 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n40) );
  INVX2M U54 ( .A(counter[6]), .Y(n81) );
  NOR4BX1M U55 ( .AN(n43), .B(half_toggle[1]), .C(half_toggle[2]), .D(
        half_toggle[0]), .Y(n42) );
  NOR4X1M U56 ( .A(half_toggle[6]), .B(half_toggle[5]), .C(half_toggle[4]), 
        .D(half_toggle[3]), .Y(n43) );
  NAND2BX2M U57 ( .AN(n42), .B(i_clk_en), .Y(n33) );
  AOI21X2M U58 ( .A0(n11), .A1(half_toggle[6]), .B0(N39), .Y(n5) );
  MX2X2M U59 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(N1), .Y(o_div_clk) );
  CLKINVX1M U60 ( .A(i_div_ratio[0]), .Y(N31) );
  OAI2BB1X1M U61 ( .A0N(i_div_ratio[0]), .A1N(half_toggle[0]), .B0(n6), .Y(N32) );
  OR2X1M U62 ( .A(n6), .B(half_toggle[1]), .Y(n7) );
  OAI2BB1X1M U63 ( .A0N(n6), .A1N(half_toggle[1]), .B0(n7), .Y(N33) );
  OR2X1M U64 ( .A(n7), .B(half_toggle[2]), .Y(n8) );
  OAI2BB1X1M U65 ( .A0N(n7), .A1N(half_toggle[2]), .B0(n8), .Y(N34) );
  OR2X1M U66 ( .A(n8), .B(half_toggle[3]), .Y(n9) );
  OAI2BB1X1M U67 ( .A0N(n8), .A1N(half_toggle[3]), .B0(n9), .Y(N35) );
  OR2X1M U68 ( .A(n9), .B(half_toggle[4]), .Y(n10) );
  OAI2BB1X1M U69 ( .A0N(n9), .A1N(half_toggle[4]), .B0(n10), .Y(N36) );
  OR2X1M U70 ( .A(n10), .B(half_toggle[5]), .Y(n11) );
  OAI2BB1X1M U71 ( .A0N(n10), .A1N(half_toggle[5]), .B0(n11), .Y(N37) );
  NOR2X1M U72 ( .A(n11), .B(half_toggle[6]), .Y(N39) );
  NOR2BX1M U73 ( .AN(counter[0]), .B(half_toggle[0]), .Y(n31) );
  OAI2B2X1M U74 ( .A1N(half_toggle[1]), .A0(n31), .B0(counter[1]), .B1(n31), 
        .Y(n49) );
  XNOR2X1M U75 ( .A(half_toggle[2]), .B(counter[2]), .Y(n48) );
  NOR2BX1M U76 ( .AN(half_toggle[0]), .B(counter[0]), .Y(n46) );
  OAI2B2X1M U77 ( .A1N(counter[1]), .A0(n46), .B0(half_toggle[1]), .B1(n46), 
        .Y(n47) );
  NAND4BX1M U78 ( .AN(counter[7]), .B(n49), .C(n48), .D(n47), .Y(n55) );
  XNOR2X1M U79 ( .A(half_toggle[6]), .B(counter[6]), .Y(n53) );
  XNOR2X1M U80 ( .A(half_toggle[5]), .B(counter[5]), .Y(n52) );
  XNOR2X1M U81 ( .A(half_toggle[4]), .B(counter[4]), .Y(n51) );
  XNOR2X1M U82 ( .A(half_toggle[3]), .B(counter[3]), .Y(n50) );
  NAND4X1M U83 ( .A(n53), .B(n52), .C(n51), .D(n50), .Y(n54) );
  NOR2X1M U84 ( .A(n55), .B(n54), .Y(N11) );
  NOR2BX1M U85 ( .AN(prev_div_ratio[0]), .B(i_div_ratio[0]), .Y(n56) );
  OAI2B2X1M U86 ( .A1N(half_toggle[0]), .A0(n56), .B0(prev_div_ratio[1]), .B1(
        n56), .Y(n67) );
  NOR2BX1M U87 ( .AN(i_div_ratio[0]), .B(prev_div_ratio[0]), .Y(n57) );
  OAI2B2X1M U88 ( .A1N(prev_div_ratio[1]), .A0(n57), .B0(half_toggle[0]), .B1(
        n57), .Y(n66) );
  CLKXOR2X2M U89 ( .A(prev_div_ratio[2]), .B(half_toggle[1]), .Y(n59) );
  CLKXOR2X2M U90 ( .A(prev_div_ratio[3]), .B(half_toggle[2]), .Y(n58) );
  NOR2X1M U91 ( .A(n59), .B(n58), .Y(n65) );
  CLKXOR2X2M U92 ( .A(prev_div_ratio[4]), .B(half_toggle[3]), .Y(n63) );
  CLKXOR2X2M U93 ( .A(prev_div_ratio[5]), .B(half_toggle[4]), .Y(n62) );
  CLKXOR2X2M U94 ( .A(prev_div_ratio[6]), .B(half_toggle[5]), .Y(n61) );
  CLKXOR2X2M U95 ( .A(prev_div_ratio[7]), .B(half_toggle[6]), .Y(n60) );
  NOR4X1M U96 ( .A(n63), .B(n62), .C(n61), .D(n60), .Y(n64) );
  NAND4X1M U97 ( .A(n67), .B(n66), .C(n65), .D(n64), .Y(N29) );
  CLKNAND2X2M U98 ( .A(counter[7]), .B(n5), .Y(n76) );
  NOR2X1M U99 ( .A(N37), .B(n81), .Y(n74) );
  AOI2BB1X1M U100 ( .A0N(N32), .A1N(n86), .B0(counter[0]), .Y(n68) );
  AOI222X1M U101 ( .A0(N33), .A1(n85), .B0(n68), .B1(N31), .C0(N32), .C1(n86), 
        .Y(n69) );
  AOI221XLM U102 ( .A0(counter[3]), .A1(n80), .B0(counter[2]), .B1(n77), .C0(
        n69), .Y(n70) );
  AOI221XLM U103 ( .A0(N35), .A1(n83), .B0(N34), .B1(n84), .C0(n70), .Y(n71)
         );
  AOI221XLM U104 ( .A0(counter[5]), .A1(n78), .B0(counter[4]), .B1(n79), .C0(
        n71), .Y(n72) );
  AOI221XLM U105 ( .A0(N37), .A1(n81), .B0(N36), .B1(n82), .C0(n72), .Y(n73)
         );
  OAI22X1M U106 ( .A0(n74), .A1(n73), .B0(counter[7]), .B1(n5), .Y(n75) );
  AOI21X1M U107 ( .A0(n76), .A1(n75), .B0(N39), .Y(N40) );
  CLOCK_DIV_DIV_WIDTH8_0_DW01_inc_0 add_59 ( .A(counter), .SUM({N50, N49, N48, 
        N47, N46, N45, N44, N43}) );
endmodule


module CLOCK_DIV_DIV_WIDTH8_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLOCK_DIV_DIV_WIDTH8_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, o_div_clk_reg, N11, N29, N31, N32, N33, N34, N35, N36, N37, N39,
         N40, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n31, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102;
  wire   [6:0] half_toggle;
  wire   [7:0] counter;
  wire   [7:0] prev_div_ratio;
  assign half_toggle[6] = i_div_ratio[7];
  assign half_toggle[5] = i_div_ratio[6];
  assign half_toggle[4] = i_div_ratio[5];
  assign half_toggle[3] = i_div_ratio[4];
  assign half_toggle[2] = i_div_ratio[3];
  assign half_toggle[1] = i_div_ratio[2];
  assign half_toggle[0] = i_div_ratio[1];
  assign test_so = prev_div_ratio[7];

  SDFFRQX2M o_div_clk_reg_reg ( .D(n88), .SI(n2), .SE(test_se), .CK(i_ref_clk), 
        .RN(n5), .Q(o_div_clk_reg) );
  SDFFRQX2M \prev_div_ratio_reg[0]  ( .D(i_div_ratio[0]), .SI(o_div_clk_reg), 
        .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(prev_div_ratio[0]) );
  SDFFRQX2M \prev_div_ratio_reg[1]  ( .D(half_toggle[0]), .SI(
        prev_div_ratio[0]), .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(
        prev_div_ratio[1]) );
  SDFFRQX2M \prev_div_ratio_reg[7]  ( .D(half_toggle[6]), .SI(
        prev_div_ratio[6]), .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(
        prev_div_ratio[7]) );
  SDFFRQX2M \prev_div_ratio_reg[6]  ( .D(half_toggle[5]), .SI(
        prev_div_ratio[5]), .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(
        prev_div_ratio[6]) );
  SDFFRQX2M \prev_div_ratio_reg[5]  ( .D(half_toggle[4]), .SI(
        prev_div_ratio[4]), .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(
        prev_div_ratio[5]) );
  SDFFRQX2M \prev_div_ratio_reg[4]  ( .D(half_toggle[3]), .SI(
        prev_div_ratio[3]), .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(
        prev_div_ratio[4]) );
  SDFFRQX2M \prev_div_ratio_reg[3]  ( .D(half_toggle[2]), .SI(
        prev_div_ratio[2]), .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(
        prev_div_ratio[3]) );
  SDFFRQX2M \prev_div_ratio_reg[2]  ( .D(half_toggle[1]), .SI(
        prev_div_ratio[1]), .SE(test_se), .CK(i_ref_clk), .RN(n5), .Q(
        prev_div_ratio[2]) );
  SDFFRQX2M \counter_reg[7]  ( .D(N58), .SI(n82), .SE(test_se), .CK(i_ref_clk), 
        .RN(n5), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N51), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(n5), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N57), .SI(n83), .SE(test_se), .CK(i_ref_clk), 
        .RN(n5), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N53), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(n5), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N54), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(n5), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N55), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(n5), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N56), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(n5), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N52), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(n5), .Q(counter[1]) );
  SDFFRX1M flag_reg ( .D(n89), .SI(counter[7]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(n2), .QN(n102) );
  NOR2BX2M U6 ( .AN(N49), .B(n92), .Y(N57) );
  NOR2BX2M U7 ( .AN(N48), .B(n92), .Y(N56) );
  NOR2BX2M U8 ( .AN(N47), .B(n92), .Y(N55) );
  NOR2BX2M U9 ( .AN(N46), .B(n92), .Y(N54) );
  NOR2BX2M U15 ( .AN(N45), .B(n92), .Y(N53) );
  NOR2BX2M U27 ( .AN(N44), .B(n92), .Y(N52) );
  INVX2M U28 ( .A(n6), .Y(n5) );
  INVX2M U29 ( .A(i_rst_n), .Y(n6) );
  INVX2M U30 ( .A(n100), .Y(N1) );
  INVX2M U31 ( .A(N34), .Y(n79) );
  INVX2M U32 ( .A(N33), .Y(n78) );
  INVX2M U33 ( .A(N35), .Y(n80) );
  INVX2M U34 ( .A(N36), .Y(n81) );
  OR3X2M U35 ( .A(N40), .B(N29), .C(n91), .Y(n92) );
  NOR2BX2M U36 ( .AN(N50), .B(n92), .Y(N58) );
  NOR2BX2M U37 ( .AN(N43), .B(n92), .Y(N51) );
  INVX2M U38 ( .A(counter[1]), .Y(n87) );
  NAND2BX2M U39 ( .AN(i_div_ratio[0]), .B(N11), .Y(n97) );
  NAND3X2M U40 ( .A(n97), .B(n98), .C(n96), .Y(n101) );
  OAI2BB2X1M U41 ( .B0(n95), .B1(n102), .A0N(n102), .A1N(N11), .Y(n96) );
  INVX2M U42 ( .A(counter[5]), .Y(n83) );
  INVX2M U43 ( .A(counter[2]), .Y(n86) );
  INVX2M U44 ( .A(counter[4]), .Y(n84) );
  INVX2M U45 ( .A(counter[3]), .Y(n85) );
  CLKXOR2X2M U46 ( .A(n2), .B(n3), .Y(n89) );
  NOR2X2M U47 ( .A(n101), .B(n100), .Y(n3) );
  CLKXOR2X2M U48 ( .A(o_div_clk_reg), .B(n99), .Y(n88) );
  AOI31X2M U49 ( .A0(n101), .A1(n98), .A2(n97), .B0(n100), .Y(n99) );
  NAND2X2M U50 ( .A(n94), .B(n93), .Y(n95) );
  NOR4X1M U51 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n94) );
  NOR4X1M U52 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n93) );
  OR2X2M U53 ( .A(n95), .B(i_div_ratio[0]), .Y(n98) );
  INVX2M U54 ( .A(counter[6]), .Y(n82) );
  NOR4BX1M U55 ( .AN(n90), .B(half_toggle[1]), .C(half_toggle[2]), .D(
        half_toggle[0]), .Y(n91) );
  NOR4X1M U56 ( .A(half_toggle[6]), .B(half_toggle[5]), .C(half_toggle[4]), 
        .D(half_toggle[3]), .Y(n90) );
  OR2X2M U57 ( .A(half_toggle[0]), .B(i_div_ratio[0]), .Y(n7) );
  NAND2BX2M U58 ( .AN(n91), .B(i_clk_en), .Y(n100) );
  AOI21X2M U59 ( .A0(n31), .A1(half_toggle[6]), .B0(N39), .Y(n4) );
  MX2X2M U60 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(N1), .Y(o_div_clk) );
  CLKINVX1M U61 ( .A(i_div_ratio[0]), .Y(N31) );
  OAI2BB1X1M U62 ( .A0N(i_div_ratio[0]), .A1N(half_toggle[0]), .B0(n7), .Y(N32) );
  OR2X1M U63 ( .A(n7), .B(half_toggle[1]), .Y(n8) );
  OAI2BB1X1M U64 ( .A0N(n7), .A1N(half_toggle[1]), .B0(n8), .Y(N33) );
  OR2X1M U65 ( .A(n8), .B(half_toggle[2]), .Y(n9) );
  OAI2BB1X1M U66 ( .A0N(n8), .A1N(half_toggle[2]), .B0(n9), .Y(N34) );
  OR2X1M U67 ( .A(n9), .B(half_toggle[3]), .Y(n10) );
  OAI2BB1X1M U68 ( .A0N(n9), .A1N(half_toggle[3]), .B0(n10), .Y(N35) );
  OR2X1M U69 ( .A(n10), .B(half_toggle[4]), .Y(n11) );
  OAI2BB1X1M U70 ( .A0N(n10), .A1N(half_toggle[4]), .B0(n11), .Y(N36) );
  OR2X1M U71 ( .A(n11), .B(half_toggle[5]), .Y(n31) );
  OAI2BB1X1M U72 ( .A0N(n11), .A1N(half_toggle[5]), .B0(n31), .Y(N37) );
  NOR2X1M U73 ( .A(n31), .B(half_toggle[6]), .Y(N39) );
  NOR2BX1M U74 ( .AN(counter[0]), .B(half_toggle[0]), .Y(n46) );
  OAI2B2X1M U75 ( .A1N(half_toggle[1]), .A0(n46), .B0(counter[1]), .B1(n46), 
        .Y(n50) );
  XNOR2X1M U76 ( .A(half_toggle[2]), .B(counter[2]), .Y(n49) );
  NOR2BX1M U77 ( .AN(half_toggle[0]), .B(counter[0]), .Y(n47) );
  OAI2B2X1M U78 ( .A1N(counter[1]), .A0(n47), .B0(half_toggle[1]), .B1(n47), 
        .Y(n48) );
  NAND4BX1M U79 ( .AN(counter[7]), .B(n50), .C(n49), .D(n48), .Y(n56) );
  XNOR2X1M U80 ( .A(half_toggle[6]), .B(counter[6]), .Y(n54) );
  XNOR2X1M U81 ( .A(half_toggle[5]), .B(counter[5]), .Y(n53) );
  XNOR2X1M U82 ( .A(half_toggle[4]), .B(counter[4]), .Y(n52) );
  XNOR2X1M U83 ( .A(half_toggle[3]), .B(counter[3]), .Y(n51) );
  NAND4X1M U84 ( .A(n54), .B(n53), .C(n52), .D(n51), .Y(n55) );
  NOR2X1M U85 ( .A(n56), .B(n55), .Y(N11) );
  NOR2BX1M U86 ( .AN(prev_div_ratio[0]), .B(i_div_ratio[0]), .Y(n57) );
  OAI2B2X1M U87 ( .A1N(half_toggle[0]), .A0(n57), .B0(prev_div_ratio[1]), .B1(
        n57), .Y(n68) );
  NOR2BX1M U88 ( .AN(i_div_ratio[0]), .B(prev_div_ratio[0]), .Y(n58) );
  OAI2B2X1M U89 ( .A1N(prev_div_ratio[1]), .A0(n58), .B0(half_toggle[0]), .B1(
        n58), .Y(n67) );
  CLKXOR2X2M U90 ( .A(prev_div_ratio[2]), .B(half_toggle[1]), .Y(n60) );
  CLKXOR2X2M U91 ( .A(prev_div_ratio[3]), .B(half_toggle[2]), .Y(n59) );
  NOR2X1M U92 ( .A(n60), .B(n59), .Y(n66) );
  CLKXOR2X2M U93 ( .A(prev_div_ratio[4]), .B(half_toggle[3]), .Y(n64) );
  CLKXOR2X2M U94 ( .A(prev_div_ratio[5]), .B(half_toggle[4]), .Y(n63) );
  CLKXOR2X2M U95 ( .A(prev_div_ratio[6]), .B(half_toggle[5]), .Y(n62) );
  CLKXOR2X2M U96 ( .A(prev_div_ratio[7]), .B(half_toggle[6]), .Y(n61) );
  NOR4X1M U97 ( .A(n64), .B(n63), .C(n62), .D(n61), .Y(n65) );
  NAND4X1M U98 ( .A(n68), .B(n67), .C(n66), .D(n65), .Y(N29) );
  CLKNAND2X2M U99 ( .A(counter[7]), .B(n4), .Y(n77) );
  NOR2X1M U100 ( .A(N37), .B(n82), .Y(n75) );
  AOI2BB1X1M U101 ( .A0N(N32), .A1N(n87), .B0(counter[0]), .Y(n69) );
  AOI222X1M U102 ( .A0(N33), .A1(n86), .B0(n69), .B1(N31), .C0(N32), .C1(n87), 
        .Y(n70) );
  AOI221XLM U103 ( .A0(counter[3]), .A1(n79), .B0(counter[2]), .B1(n78), .C0(
        n70), .Y(n71) );
  AOI221XLM U104 ( .A0(N35), .A1(n84), .B0(N34), .B1(n85), .C0(n71), .Y(n72)
         );
  AOI221XLM U105 ( .A0(counter[5]), .A1(n81), .B0(counter[4]), .B1(n80), .C0(
        n72), .Y(n73) );
  AOI221XLM U106 ( .A0(N37), .A1(n82), .B0(N36), .B1(n83), .C0(n73), .Y(n74)
         );
  OAI22X1M U107 ( .A0(n75), .A1(n74), .B0(counter[7]), .B1(n4), .Y(n76) );
  AOI21X1M U108 ( .A0(n77), .A1(n76), .B0(N39), .Y(N40) );
  CLOCK_DIV_DIV_WIDTH8_1_DW01_inc_0 add_59 ( .A(counter), .SUM({N50, N49, N48, 
        N47, N46, N45, N44, N43}) );
endmodule


module enable_sync_NUM_STAGES2_test_1 ( CLK_DESTINATION, bus_enable, 
        RST_DESTINATION, sync_en, test_si, test_so, test_se );
  input CLK_DESTINATION, bus_enable, RST_DESTINATION, test_si, test_se;
  output sync_en, test_so;
  wire   \SYNC_REG[1] ;
  assign test_so = \SYNC_REG[1] ;

  SDFFRQX2M \SYNC_REG_reg[0]  ( .D(\SYNC_REG[1] ), .SI(test_si), .SE(test_se), 
        .CK(CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_en) );
  SDFFRQX2M \SYNC_REG_reg[1]  ( .D(bus_enable), .SI(sync_en), .SE(test_se), 
        .CK(CLK_DESTINATION), .RN(RST_DESTINATION), .Q(\SYNC_REG[1] ) );
endmodule


module pulse_generator_test_1 ( sync_en, CLK_DESTINATION, RST_DESTINATION, 
        enable_pulse, enable_pulse_comb, test_si, test_se );
  input sync_en, CLK_DESTINATION, RST_DESTINATION, test_si, test_se;
  output enable_pulse, enable_pulse_comb;
  wire   PULSE_FLOP;

  SDFFRQX2M PULSE_FLOP_reg ( .D(sync_en), .SI(test_si), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(PULSE_FLOP) );
  SDFFRQX2M enable_pulse_reg ( .D(enable_pulse_comb), .SI(PULSE_FLOP), .SE(
        test_se), .CK(CLK_DESTINATION), .RN(RST_DESTINATION), .Q(enable_pulse)
         );
  NOR2BX2M U5 ( .AN(sync_en), .B(PULSE_FLOP), .Y(enable_pulse_comb) );
endmodule


module sync_bus_BUS_WIDTH8_test_1 ( CLK_DESTINATION, RST_DESTINATION, 
        unsync_bus, enable_pulse_comb, sync_bus, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK_DESTINATION, RST_DESTINATION, enable_pulse_comb, test_si, test_se;
  wire   n3, n5, n7, n9, n11, n13, n15, n17, n1;

  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(test_si), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(sync_bus[2]) );
  INVX2M U2 ( .A(enable_pulse_comb), .Y(n1) );
  AO22X1M U3 ( .A0(unsync_bus[0]), .A1(enable_pulse_comb), .B0(sync_bus[0]), 
        .B1(n1), .Y(n3) );
  AO22X1M U4 ( .A0(unsync_bus[1]), .A1(enable_pulse_comb), .B0(sync_bus[1]), 
        .B1(n1), .Y(n5) );
  AO22X1M U5 ( .A0(unsync_bus[2]), .A1(enable_pulse_comb), .B0(sync_bus[2]), 
        .B1(n1), .Y(n7) );
  AO22X1M U6 ( .A0(unsync_bus[3]), .A1(enable_pulse_comb), .B0(sync_bus[3]), 
        .B1(n1), .Y(n9) );
  AO22X1M U7 ( .A0(unsync_bus[4]), .A1(enable_pulse_comb), .B0(sync_bus[4]), 
        .B1(n1), .Y(n11) );
  AO22X1M U8 ( .A0(unsync_bus[5]), .A1(enable_pulse_comb), .B0(sync_bus[5]), 
        .B1(n1), .Y(n13) );
  AO22X1M U9 ( .A0(unsync_bus[6]), .A1(enable_pulse_comb), .B0(sync_bus[6]), 
        .B1(n1), .Y(n15) );
  AO22X1M U10 ( .A0(unsync_bus[7]), .A1(enable_pulse_comb), .B0(sync_bus[7]), 
        .B1(n1), .Y(n17) );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 ( CLK_DESTINATION, 
        RST_DESTINATION, bus_enable, unsync_bus, sync_bus, enable_pulse, 
        test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK_DESTINATION, RST_DESTINATION, bus_enable, test_si, test_se;
  output enable_pulse;
  wire   sync_en, enable_pulse_comb, n1;

  enable_sync_NUM_STAGES2_test_1 en ( .CLK_DESTINATION(CLK_DESTINATION), 
        .bus_enable(bus_enable), .RST_DESTINATION(RST_DESTINATION), .sync_en(
        sync_en), .test_si(sync_bus[7]), .test_so(n1), .test_se(test_se) );
  pulse_generator_test_1 pulse ( .sync_en(sync_en), .CLK_DESTINATION(
        CLK_DESTINATION), .RST_DESTINATION(RST_DESTINATION), .enable_pulse(
        enable_pulse), .enable_pulse_comb(enable_pulse_comb), .test_si(n1), 
        .test_se(test_se) );
  sync_bus_BUS_WIDTH8_test_1 SYNC ( .CLK_DESTINATION(CLK_DESTINATION), 
        .RST_DESTINATION(RST_DESTINATION), .unsync_bus(unsync_bus), 
        .enable_pulse_comb(enable_pulse_comb), .sync_bus(sync_bus), .test_si(
        test_si), .test_se(test_se) );
endmodule


module BUSY_PULSE_GENERATOR_test_1 ( sync_en, CLK_DESTINATION, RST_DESTINATION, 
        enable_pulse, test_si, test_se );
  input sync_en, CLK_DESTINATION, RST_DESTINATION, test_si, test_se;
  output enable_pulse;
  wire   PULSE_FLOP, N1;

  SDFFRQX1M PULSE_FLOP_reg ( .D(sync_en), .SI(test_si), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(PULSE_FLOP) );
  SDFFRQX1M enable_pulse_reg ( .D(N1), .SI(PULSE_FLOP), .SE(test_se), .CK(
        CLK_DESTINATION), .RN(RST_DESTINATION), .Q(enable_pulse) );
  NOR2BX2M U7 ( .AN(sync_en), .B(PULSE_FLOP), .Y(N1) );
endmodule


module SERIALIZER_DATA_WIDTH8_test_1 ( BUSY, FIFO_EMPTY, P_DATA, CLK, RST, 
        ser_en, ser_done, ser_data, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input BUSY, FIFO_EMPTY, CLK, RST, ser_en, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N26, N27, N28, N29, n17, n18,
         n19, n20, n21, n22, n23, n24, n35, n36, n37, n38;
  wire   [3:0] counter;
  wire   [7:0] serial_data;
  assign test_so = serial_data[7];

  SDFFRQX1M \counter_reg[1]  ( .D(N27), .SI(counter[0]), .SE(test_se), .CK(CLK), .RN(n35), .Q(counter[1]) );
  SDFFRQX1M \counter_reg[0]  ( .D(N26), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(n35), .Q(counter[0]) );
  SDFFRQX1M \counter_reg[2]  ( .D(N28), .SI(counter[1]), .SE(test_se), .CK(CLK), .RN(n35), .Q(counter[2]) );
  SDFFRQX1M \counter_reg[3]  ( .D(N29), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        n35), .Q(counter[3]) );
  SDFFRQX1M ser_data_reg ( .D(n24), .SI(n38), .SE(test_se), .CK(CLK), .RN(n35), 
        .Q(ser_data) );
  SDFFRQX1M \serial_data_reg[6]  ( .D(N13), .SI(serial_data[5]), .SE(test_se), 
        .CK(CLK), .RN(n35), .Q(serial_data[6]) );
  SDFFRQX1M \serial_data_reg[5]  ( .D(N12), .SI(serial_data[4]), .SE(test_se), 
        .CK(CLK), .RN(n35), .Q(serial_data[5]) );
  SDFFRQX1M \serial_data_reg[4]  ( .D(N11), .SI(serial_data[3]), .SE(test_se), 
        .CK(CLK), .RN(n35), .Q(serial_data[4]) );
  SDFFRQX1M \serial_data_reg[3]  ( .D(N10), .SI(serial_data[2]), .SE(test_se), 
        .CK(CLK), .RN(n35), .Q(serial_data[3]) );
  SDFFRQX1M \serial_data_reg[2]  ( .D(N9), .SI(serial_data[1]), .SE(test_se), 
        .CK(CLK), .RN(n35), .Q(serial_data[2]) );
  SDFFRQX1M \serial_data_reg[1]  ( .D(N8), .SI(serial_data[0]), .SE(test_se), 
        .CK(CLK), .RN(n35), .Q(serial_data[1]) );
  SDFFRQX1M \serial_data_reg[0]  ( .D(N7), .SI(ser_data), .SE(test_se), .CK(
        CLK), .RN(n35), .Q(serial_data[0]) );
  NOR2X2M U29 ( .A(n36), .B(n18), .Y(n17) );
  INVX2M U30 ( .A(n22), .Y(n36) );
  BUFX2M U31 ( .A(RST), .Y(n35) );
  NOR2X2M U32 ( .A(FIFO_EMPTY), .B(BUSY), .Y(n18) );
  NOR2BX2M U33 ( .AN(ser_en), .B(ser_done), .Y(n22) );
  AND2X2M U34 ( .A(P_DATA[7]), .B(n18), .Y(N14) );
  OAI32X1M U35 ( .A0(n37), .A1(counter[3]), .A2(n19), .B0(n20), .B1(n38), .Y(
        N29) );
  OA21X2M U36 ( .A0(n36), .A1(counter[2]), .B0(n21), .Y(n20) );
  NOR4X1M U37 ( .A(n38), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(
        ser_done) );
  OAI22X1M U38 ( .A0(n21), .A1(n37), .B0(counter[2]), .B1(n19), .Y(N28) );
  AOI2B1X1M U39 ( .A1N(counter[1]), .A0(n22), .B0(N26), .Y(n21) );
  NOR2X2M U40 ( .A(n36), .B(counter[0]), .Y(N26) );
  NAND3X2M U41 ( .A(counter[0]), .B(n22), .C(counter[1]), .Y(n19) );
  INVX2M U42 ( .A(counter[3]), .Y(n38) );
  AO22X1M U43 ( .A0(serial_data[0]), .A1(n17), .B0(ser_data), .B1(n18), .Y(n24) );
  AO22X1M U44 ( .A0(P_DATA[0]), .A1(n18), .B0(serial_data[1]), .B1(n17), .Y(N7) );
  AO22X1M U45 ( .A0(P_DATA[1]), .A1(n18), .B0(serial_data[2]), .B1(n17), .Y(N8) );
  AO22X1M U46 ( .A0(P_DATA[2]), .A1(n18), .B0(serial_data[3]), .B1(n17), .Y(N9) );
  AO22X1M U47 ( .A0(P_DATA[3]), .A1(n18), .B0(serial_data[4]), .B1(n17), .Y(
        N10) );
  AO22X1M U48 ( .A0(P_DATA[4]), .A1(n18), .B0(serial_data[5]), .B1(n17), .Y(
        N11) );
  AO22X1M U49 ( .A0(P_DATA[5]), .A1(n18), .B0(serial_data[6]), .B1(n17), .Y(
        N12) );
  AO22X1M U50 ( .A0(P_DATA[6]), .A1(n18), .B0(n17), .B1(serial_data[7]), .Y(
        N13) );
  NOR2X2M U51 ( .A(n23), .B(n36), .Y(N27) );
  XNOR2X2M U52 ( .A(counter[0]), .B(counter[1]), .Y(n23) );
  INVX2M U53 ( .A(counter[2]), .Y(n37) );
  SDFFRQX2M \serial_data_reg[7]  ( .D(N14), .SI(serial_data[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serial_data[7]) );
endmodule


module MUX ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n1;

  OAI2BB1X2M U3 ( .A0N(ser_data), .A1N(mux_sel[0]), .B0(n1), .Y(TX_OUT) );
  OAI21X2M U4 ( .A0(mux_sel[0]), .A1(par_bit), .B0(mux_sel[1]), .Y(n1) );
endmodule


module PARITY_CALC_test_1 ( BUSY, CLK, RST, P_DATA, FIFO_EMPTY, PAR_TYP, 
        PAR_BIT, test_si, test_se );
  input [7:0] P_DATA;
  input BUSY, CLK, RST, FIFO_EMPTY, PAR_TYP, test_si, test_se;
  output PAR_BIT;
  wire   n2, n3, n4, n5, n6, n7, n8;

  SDFFRQX1M PAR_BIT_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(PAR_BIT) );
  XOR3XLM U5 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U6 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n7) );
  XNOR2X2M U7 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  OAI2BB2X1M U8 ( .B0(n2), .B1(n3), .A0N(PAR_BIT), .A1N(n3), .Y(n8) );
  OR2X2M U9 ( .A(FIFO_EMPTY), .B(BUSY), .Y(n3) );
  XOR3XLM U10 ( .A(n4), .B(PAR_TYP), .C(n5), .Y(n2) );
  XOR3XLM U11 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n5) );
endmodule


module FSM_TX_test_1 ( FIFO_EMPTY, PAR_EN, ser_done, CLK, RST, BUSY, ser_en, 
        MUX_SEL, test_si, test_so, test_se );
  output [1:0] MUX_SEL;
  input FIFO_EMPTY, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output BUSY, ser_en, test_so;
  wire   n8, n9, n10, n11, n7, n12, n13;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign test_so = cs[2];

  SDFFRQX1M \cs_reg[2]  ( .D(ns[2]), .SI(n12), .SE(test_se), .CK(CLK), .RN(RST), .Q(cs[2]) );
  SDFFRQX1M \cs_reg[1]  ( .D(ns[1]), .SI(n7), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(cs[1]) );
  SDFFRQX1M \cs_reg[0]  ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(cs[0]) );
  AOI21X2M U9 ( .A0(n9), .A1(n13), .B0(MUX_SEL[1]), .Y(ns[1]) );
  INVX2M U10 ( .A(ser_en), .Y(MUX_SEL[1]) );
  NAND2BX2M U11 ( .AN(cs[2]), .B(n10), .Y(MUX_SEL[0]) );
  XNOR2X2M U12 ( .A(n12), .B(cs[0]), .Y(n10) );
  INVX2M U13 ( .A(cs[1]), .Y(n12) );
  NOR2X2M U14 ( .A(n7), .B(cs[2]), .Y(ser_en) );
  INVX2M U15 ( .A(cs[0]), .Y(n7) );
  OAI211X2M U16 ( .A0(cs[2]), .A1(n12), .B0(n11), .C0(MUX_SEL[1]), .Y(BUSY) );
  NAND3X2M U17 ( .A(n7), .B(n12), .C(cs[2]), .Y(n11) );
  OAI32X1M U18 ( .A0(FIFO_EMPTY), .A1(cs[2]), .A2(cs[1]), .B0(MUX_SEL[1]), 
        .B1(n9), .Y(ns[0]) );
  NOR3X2M U19 ( .A(n12), .B(cs[2]), .C(n8), .Y(ns[2]) );
  AOI21X2M U20 ( .A0(ser_done), .A1(n13), .B0(n7), .Y(n8) );
  AND2X2M U21 ( .A(ser_done), .B(cs[1]), .Y(n9) );
  INVX2M U22 ( .A(PAR_EN), .Y(n13) );
endmodule


module UART_TX_TOP_DATA_WIDTH8_test_1 ( CLK, RST, FIFO_EMPTY, PAR_EN, PAR_TYP, 
        P_DATA, TX_OUT, busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, FIFO_EMPTY, PAR_EN, PAR_TYP, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   ser_en, ser_done, ser_data, par_bit, n2;
  wire   [1:0] mux_sel;

  SERIALIZER_DATA_WIDTH8_test_1 ser ( .BUSY(busy), .FIFO_EMPTY(FIFO_EMPTY), 
        .P_DATA(P_DATA), .CLK(CLK), .RST(RST), .ser_en(ser_en), .ser_done(
        ser_done), .ser_data(ser_data), .test_si(par_bit), .test_so(test_so), 
        .test_se(test_se) );
  MUX mux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  PARITY_CALC_test_1 par ( .BUSY(busy), .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .FIFO_EMPTY(FIFO_EMPTY), .PAR_TYP(PAR_TYP), .PAR_BIT(par_bit), 
        .test_si(n2), .test_se(test_se) );
  FSM_TX_test_1 fsm_1 ( .FIFO_EMPTY(FIFO_EMPTY), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .CLK(CLK), .RST(RST), .BUSY(busy), .ser_en(ser_en), 
        .MUX_SEL(mux_sel), .test_si(test_si), .test_so(n2), .test_se(test_se)
         );
endmodule


module FSM_test_1 ( CLK, RST_n, PAR_EN, par_err, stp_err, strt_glitch, RX_IN, 
        bit_cnt, edge_cnt, prescale, par_chk_en, strt_chk_en, stp_chk_en, 
        deser_en, data_valid, enable_edge, enable_bit, dat_samp_en, test_so, 
        test_se );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, PAR_EN, par_err, stp_err, strt_glitch, RX_IN, test_se;
  output par_chk_en, strt_chk_en, stp_chk_en, deser_en, data_valid,
         enable_edge, enable_bit, dat_samp_en, test_so;
  wire   N41, N42, N43, N44, N45, N46, N47, N48, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n16, n17, n18, n19, n20, n21, n22, n23, n37, n38, n39;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign test_so = cs[2];

  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(edge_cnt[5]), .SE(test_se), .CK(CLK), 
        .RN(RST_n), .Q(cs[0]) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(cs[1]) );
  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(n39), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(cs[2]) );
  INVX2M U4 ( .A(N48), .Y(n21) );
  OAI2B11X2M U5 ( .A1N(n31), .A0(n26), .B0(n32), .C0(n33), .Y(ns[0]) );
  AOI32X1M U8 ( .A0(n29), .A1(N48), .A2(stp_chk_en), .B0(strt_chk_en), .B1(n20), .Y(n33) );
  NAND3X2M U9 ( .A(n37), .B(n39), .C(n34), .Y(n32) );
  OAI21XLM U10 ( .A0(N48), .A1(n38), .B0(n30), .Y(ns[1]) );
  AOI32XLM U11 ( .A0(N48), .A1(n20), .A2(strt_chk_en), .B0(n23), .B1(n25), .Y(
        n30) );
  INVX2M U12 ( .A(n26), .Y(n23) );
  INVX2M U13 ( .A(n28), .Y(stp_chk_en) );
  INVX2M U14 ( .A(par_chk_en), .Y(n38) );
  NOR3X2M U15 ( .A(n28), .B(stp_err), .C(n21), .Y(data_valid) );
  OR2X2M U16 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  NOR4BX1M U17 ( .AN(n35), .B(RX_IN), .C(bit_cnt[3]), .D(cs[2]), .Y(n34) );
  NOR2X2M U18 ( .A(stp_chk_en), .B(deser_en), .Y(n36) );
  INVX2M U19 ( .A(n34), .Y(n22) );
  AOI21XLM U20 ( .A0(N48), .A1(RX_IN), .B0(stp_err), .Y(n29) );
  OAI21BX1M U21 ( .A0(n25), .A1(n26), .B0N(n27), .Y(ns[2]) );
  OAI33XLM U22 ( .A0(n38), .A1(par_err), .A2(n21), .B0(n28), .B1(N48), .B2(n19), .Y(n27) );
  INVX2M U23 ( .A(n29), .Y(n19) );
  NAND3XLM U24 ( .A(n35), .B(N48), .C(bit_cnt[3]), .Y(n31) );
  OR2X2M U25 ( .A(PAR_EN), .B(n31), .Y(n25) );
  NOR2X2M U26 ( .A(n37), .B(cs[2]), .Y(deser_en) );
  NOR3X2M U27 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(bit_cnt[0]), .Y(n35) );
  NAND3X2M U28 ( .A(n37), .B(n39), .C(cs[2]), .Y(n28) );
  INVX2M U29 ( .A(cs[1]), .Y(n39) );
  INVX2M U30 ( .A(cs[0]), .Y(n37) );
  NOR3X2M U31 ( .A(cs[0]), .B(cs[2]), .C(n39), .Y(par_chk_en) );
  NOR2BX2M U32 ( .AN(deser_en), .B(cs[1]), .Y(strt_chk_en) );
  NAND2X2M U33 ( .A(cs[1]), .B(deser_en), .Y(n26) );
  INVX2M U34 ( .A(strt_glitch), .Y(n20) );
  BUFX2M U35 ( .A(enable_bit), .Y(enable_edge) );
  BUFX2M U36 ( .A(enable_bit), .Y(dat_samp_en) );
  OAI211X2M U37 ( .A0(cs[2]), .A1(n39), .B0(n22), .C0(n36), .Y(enable_bit) );
  CLKINVX1M U38 ( .A(prescale[0]), .Y(N41) );
  OAI2BB1X1M U39 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N42) );
  OR2X1M U40 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U41 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N43) );
  OR2X1M U42 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U43 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(N44) );
  OR2X1M U44 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U45 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(N45) );
  NOR2X1M U46 ( .A(n6), .B(prescale[5]), .Y(N47) );
  AO21XLM U47 ( .A0(n6), .A1(prescale[5]), .B0(N47), .Y(N46) );
  NOR2BX1M U48 ( .AN(N41), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U49 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N42), .B1(n7), .Y(n11) );
  XNOR2X1M U50 ( .A(N46), .B(edge_cnt[5]), .Y(n10) );
  NOR2BX1M U51 ( .AN(edge_cnt[0]), .B(N41), .Y(n8) );
  OAI2B2X1M U52 ( .A1N(N42), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U53 ( .AN(N47), .B(n11), .C(n10), .D(n9), .Y(n18) );
  CLKXOR2X2M U54 ( .A(N45), .B(edge_cnt[4]), .Y(n17) );
  CLKXOR2X2M U55 ( .A(N43), .B(edge_cnt[2]), .Y(n16) );
  CLKXOR2X2M U56 ( .A(N44), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U57 ( .A(n18), .B(n17), .C(n16), .D(n12), .Y(N48) );
endmodule


module DATA_SAMPLING_test_1 ( CLK, RST_n, RX_IN, prescale, data_samp_en, 
        edge_cnt, sampled_bit, test_si, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input CLK, RST_n, RX_IN, data_samp_en, test_si, test_se;
  output sampled_bit;
  wire   bit1, bit2, N2, N3, N4, N5, N6, N7, N8, N10, n11, n12, n13, n14, n15,
         n16, n17, n18, n1, n2, n3, n4, n5, n6, n10, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31;

  SDFFRQX2M bit2_reg ( .D(n17), .SI(bit1), .SE(test_se), .CK(CLK), .RN(RST_n), 
        .Q(bit2) );
  SDFFRQX2M bit1_reg ( .D(n18), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(bit1) );
  SDFFRQX2M sampled_bit_reg ( .D(n16), .SI(bit2), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(sampled_bit) );
  INVX2M U4 ( .A(RX_IN), .Y(n31) );
  OAI2BB2X1M U5 ( .B0(n31), .B1(n15), .A0N(n15), .A1N(bit1), .Y(n18) );
  NAND2X2M U6 ( .A(N8), .B(data_samp_en), .Y(n15) );
  OAI2BB2X1M U9 ( .B0(n31), .B1(n14), .A0N(n14), .A1N(bit2), .Y(n17) );
  NAND3BX2M U10 ( .AN(N8), .B(data_samp_en), .C(N10), .Y(n14) );
  OAI2BB2X1M U11 ( .B0(n11), .B1(n12), .A0N(sampled_bit), .A1N(n12), .Y(n16)
         );
  AOI21X2M U12 ( .A0(bit1), .A1(RX_IN), .B0(n13), .Y(n11) );
  OA21X2M U13 ( .A0(N8), .A1(N10), .B0(data_samp_en), .Y(n12) );
  OA21X2M U14 ( .A0(bit1), .A1(RX_IN), .B0(bit2), .Y(n13) );
  OR2X2M U15 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  CLKINVX1M U16 ( .A(prescale[1]), .Y(N2) );
  OAI2BB1X1M U17 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n1), .Y(N3) );
  OR2X1M U18 ( .A(n1), .B(prescale[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(prescale[3]), .B0(n2), .Y(N4) );
  XNOR2X1M U20 ( .A(prescale[4]), .B(n2), .Y(N5) );
  NOR3X1M U21 ( .A(prescale[4]), .B(prescale[5]), .C(n2), .Y(N7) );
  OAI21X1M U22 ( .A0(prescale[4]), .A1(n2), .B0(prescale[5]), .Y(n3) );
  NAND2BX1M U23 ( .AN(N7), .B(n3), .Y(N6) );
  NOR2BX1M U24 ( .AN(edge_cnt[0]), .B(N2), .Y(n4) );
  OAI2B2X1M U25 ( .A1N(N3), .A0(n4), .B0(edge_cnt[1]), .B1(n4), .Y(n10) );
  NOR2BX1M U26 ( .AN(N2), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U27 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N3), .B1(n5), .Y(n6) );
  NAND4BBX1M U28 ( .AN(N7), .BN(edge_cnt[5]), .C(n10), .D(n6), .Y(n22) );
  CLKXOR2X2M U29 ( .A(N6), .B(edge_cnt[4]), .Y(n21) );
  CLKXOR2X2M U30 ( .A(N4), .B(edge_cnt[2]), .Y(n20) );
  CLKXOR2X2M U31 ( .A(N5), .B(edge_cnt[3]), .Y(n19) );
  NOR4X1M U32 ( .A(n22), .B(n21), .C(n20), .D(n19), .Y(N8) );
  NOR2BX1M U33 ( .AN(edge_cnt[0]), .B(prescale[1]), .Y(n23) );
  OAI2B2X1M U34 ( .A1N(prescale[2]), .A0(n23), .B0(edge_cnt[1]), .B1(n23), .Y(
        n26) );
  NOR2BX1M U35 ( .AN(prescale[1]), .B(edge_cnt[0]), .Y(n24) );
  OAI2B2X1M U36 ( .A1N(edge_cnt[1]), .A0(n24), .B0(prescale[2]), .B1(n24), .Y(
        n25) );
  NAND3BX1M U37 ( .AN(edge_cnt[5]), .B(n26), .C(n25), .Y(n30) );
  CLKXOR2X2M U38 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n29) );
  CLKXOR2X2M U39 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n28) );
  CLKXOR2X2M U40 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n27) );
  NOR4X1M U41 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N10) );
endmodule


module DE_SERIALIZER_DATA_WIDTH8_test_1 ( CLK, RST_n, sampled_bit, deser_en, 
        bit_cnt, edge_cnt, prescale, P_DATA, test_si, test_se );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  output [7:0] P_DATA;
  input CLK, RST_n, sampled_bit, deser_en, test_si, test_se;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n10, n12, n14, n16, n18, n20, n22,
         n24, n26, n2, n3, n4, n5, n6, n7, n8, n9, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40;

  SDFFRQX2M \P_DATA_reg[1]  ( .D(n24), .SI(n34), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n16), .SI(n38), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n12), .SI(n40), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n26), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST_n), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n18), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n20), .SI(n36), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n22), .SI(n35), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(P_DATA[2]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n14), .SI(n39), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(P_DATA[6]) );
  OAI22X1M U3 ( .A0(n33), .A1(n40), .B0(n2), .B1(n39), .Y(n14) );
  OAI22X1M U4 ( .A0(n33), .A1(n39), .B0(n2), .B1(n38), .Y(n16) );
  OAI22X1M U5 ( .A0(n33), .A1(n38), .B0(n2), .B1(n37), .Y(n18) );
  OAI22X1M U6 ( .A0(n33), .A1(n37), .B0(n2), .B1(n36), .Y(n20) );
  OAI22X1M U7 ( .A0(n33), .A1(n36), .B0(n2), .B1(n35), .Y(n22) );
  OAI22X1M U8 ( .A0(n33), .A1(n35), .B0(n2), .B1(n34), .Y(n24) );
  INVX2M U9 ( .A(n2), .Y(n33) );
  OAI2BB2X1M U10 ( .B0(n33), .B1(n34), .A0N(sampled_bit), .A1N(n33), .Y(n26)
         );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n40), .A0N(P_DATA[7]), .A1N(n2), .Y(n12) );
  BUFX2M U12 ( .A(n1), .Y(n2) );
  NAND3X2M U13 ( .A(N8), .B(n10), .C(deser_en), .Y(n1) );
  NAND4BBX1M U14 ( .AN(bit_cnt[2]), .BN(bit_cnt[0]), .C(bit_cnt[3]), .D(
        bit_cnt[1]), .Y(n10) );
  INVX2M U15 ( .A(P_DATA[6]), .Y(n40) );
  INVX2M U16 ( .A(P_DATA[2]), .Y(n36) );
  INVX2M U17 ( .A(P_DATA[3]), .Y(n37) );
  INVX2M U18 ( .A(P_DATA[0]), .Y(n34) );
  INVX2M U19 ( .A(P_DATA[4]), .Y(n38) );
  INVX2M U20 ( .A(P_DATA[5]), .Y(n39) );
  INVX2M U29 ( .A(P_DATA[1]), .Y(n35) );
  OR2X2M U30 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  CLKINVX1M U31 ( .A(prescale[0]), .Y(N1) );
  OAI2BB1X1M U32 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N2) );
  OR2X1M U33 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U34 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N3) );
  OR2X1M U35 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U36 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(N4) );
  OR2X1M U37 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U38 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(N5) );
  NOR2X1M U39 ( .A(n6), .B(prescale[5]), .Y(N7) );
  AO21XLM U40 ( .A0(n6), .A1(prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U41 ( .AN(N1), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U42 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N2), .B1(n7), .Y(n28) );
  XNOR2X1M U43 ( .A(N6), .B(edge_cnt[5]), .Y(n27) );
  NOR2BX1M U44 ( .AN(edge_cnt[0]), .B(N1), .Y(n8) );
  OAI2B2X1M U45 ( .A1N(N2), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U46 ( .AN(N7), .B(n28), .C(n27), .D(n9), .Y(n32) );
  CLKXOR2X2M U47 ( .A(N5), .B(edge_cnt[4]), .Y(n31) );
  CLKXOR2X2M U48 ( .A(N3), .B(edge_cnt[2]), .Y(n30) );
  CLKXOR2X2M U49 ( .A(N4), .B(edge_cnt[3]), .Y(n29) );
  NOR4X1M U50 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N8) );
endmodule


module EDGE_BIT_COUNTER_test_1 ( CLK, RST_n, enable_edge, enable_bit, PAR_EN, 
        prescale, edge_cnt, bit_cnt, test_si, test_se );
  input [5:0] prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input CLK, RST_n, enable_edge, enable_bit, PAR_EN, test_si, test_se;
  wire   N5, N6, N7, N8, N9, N10, N11, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N70, N71, N72, N73, n31, \add_17/carry[5] ,
         \add_17/carry[4] , \add_17/carry[3] , \add_17/carry[2] , n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n29,
         n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66;

  SDFFRQX2M \bit_cnt_reg[2]  ( .D(N72), .SI(bit_cnt[1]), .SE(test_se), .CK(CLK), .RN(RST_n), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(N71), .SI(bit_cnt[0]), .SE(test_se), .CK(CLK), .RN(RST_n), .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(N70), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST_n), .Q(bit_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(N26), .SI(n38), .SE(test_se), .CK(CLK), 
        .RN(RST_n), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N23), .SI(edge_cnt[1]), .SE(test_se), .CK(
        CLK), .RN(RST_n), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N24), .SI(edge_cnt[2]), .SE(test_se), .CK(
        CLK), .RN(RST_n), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N25), .SI(edge_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(RST_n), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N22), .SI(edge_cnt[0]), .SE(test_se), .CK(
        CLK), .RN(RST_n), .Q(edge_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N21), .SI(n31), .SE(test_se), .CK(CLK), 
        .RN(RST_n), .Q(edge_cnt[0]) );
  SDFFRX1M \bit_cnt_reg[3]  ( .D(N73), .SI(n9), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(bit_cnt[3]), .QN(n31) );
  ADDHX1M U8 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_17/carry[2] ), .S(
        N16) );
  ADDHX1M U9 ( .A(edge_cnt[3]), .B(\add_17/carry[3] ), .CO(\add_17/carry[4] ), 
        .S(N18) );
  ADDHX1M U10 ( .A(edge_cnt[2]), .B(\add_17/carry[2] ), .CO(\add_17/carry[3] ), 
        .S(N17) );
  ADDHX1M U11 ( .A(edge_cnt[4]), .B(\add_17/carry[4] ), .CO(\add_17/carry[5] ), 
        .S(N19) );
  OR2X2M U12 ( .A(prescale[1]), .B(prescale[0]), .Y(n2) );
  CLKINVX1M U19 ( .A(prescale[0]), .Y(N5) );
  OAI2BB1X1M U20 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n2), .Y(N6) );
  OR2X1M U21 ( .A(n2), .B(prescale[2]), .Y(n3) );
  OAI2BB1X1M U22 ( .A0N(n2), .A1N(prescale[2]), .B0(n3), .Y(N7) );
  OR2X1M U23 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U24 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N8) );
  OR2X1M U25 ( .A(n4), .B(prescale[4]), .Y(n5) );
  OAI2BB1X1M U26 ( .A0N(n4), .A1N(prescale[4]), .B0(n5), .Y(N9) );
  NOR2X1M U27 ( .A(n5), .B(prescale[5]), .Y(N11) );
  AO21XLM U28 ( .A0(n5), .A1(prescale[5]), .B0(N11), .Y(N10) );
  CLKXOR2X2M U29 ( .A(\add_17/carry[5] ), .B(edge_cnt[5]), .Y(N20) );
  MXI2X1M U30 ( .A(n6), .B(n7), .S0(n31), .Y(N73) );
  NAND4X1M U31 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(bit_cnt[0]), .D(n8), .Y(n7) );
  AOI21X1M U32 ( .A0(n8), .A1(n9), .B0(n10), .Y(n6) );
  OAI2BB2X1M U33 ( .B0(n11), .B1(n12), .A0N(n10), .A1N(bit_cnt[2]), .Y(N72) );
  OAI21X1M U34 ( .A0(bit_cnt[1]), .A1(n11), .B0(n13), .Y(n10) );
  MXI2X1M U35 ( .A(n14), .B(n13), .S0(bit_cnt[1]), .Y(N71) );
  OA21X1M U36 ( .A0(bit_cnt[0]), .A1(n11), .B0(n15), .Y(n13) );
  CLKNAND2X2M U37 ( .A(bit_cnt[0]), .B(n8), .Y(n14) );
  CLKINVX1M U38 ( .A(n11), .Y(n8) );
  MXI2X1M U39 ( .A(n11), .B(n15), .S0(bit_cnt[0]), .Y(N70) );
  CLKNAND2X2M U40 ( .A(n16), .B(enable_bit), .Y(n15) );
  MXI2X1M U41 ( .A(n17), .B(n18), .S0(PAR_EN), .Y(n16) );
  NAND2BX1M U42 ( .AN(n29), .B(n30), .Y(n18) );
  OAI21BX1M U43 ( .A0(n32), .A1(n33), .B0N(n34), .Y(n17) );
  AOI21X1M U44 ( .A0(n35), .A1(n36), .B0(n37), .Y(n32) );
  CLKNAND2X2M U45 ( .A(N9), .B(n38), .Y(n36) );
  OAI22X1M U46 ( .A0(N8), .A1(n39), .B0(n40), .B1(n41), .Y(n35) );
  MXI2X1M U47 ( .A(n42), .B(n43), .S0(PAR_EN), .Y(n11) );
  NOR4X1M U48 ( .A(n29), .B(n44), .C(n30), .D(n45), .Y(n43) );
  NAND2BX1M U49 ( .AN(N11), .B(n46), .Y(n30) );
  OAI22X1M U50 ( .A0(N10), .A1(n47), .B0(n48), .B1(n49), .Y(n46) );
  AND2X1M U51 ( .A(n47), .B(N10), .Y(n48) );
  OAI21X1M U52 ( .A0(edge_cnt[4]), .A1(n50), .B0(n51), .Y(n47) );
  OAI21X1M U53 ( .A0(n52), .A1(n40), .B0(n53), .Y(n51) );
  OA21X1M U54 ( .A0(n39), .A1(N8), .B0(n41), .Y(n52) );
  OAI31X1M U55 ( .A0(n54), .A1(n55), .A2(n56), .B0(n57), .Y(n41) );
  AOI31X1M U56 ( .A0(n58), .A1(n59), .A2(N5), .B0(N6), .Y(n56) );
  AOI21X1M U57 ( .A0(N5), .A1(n58), .B0(n59), .Y(n54) );
  NOR2X1M U58 ( .A(n12), .B(n31), .Y(n29) );
  NAND3X1M U59 ( .A(bit_cnt[0]), .B(n9), .C(bit_cnt[1]), .Y(n12) );
  CLKINVX1M U60 ( .A(bit_cnt[2]), .Y(n9) );
  NOR3X1M U61 ( .A(n60), .B(n34), .C(n45), .Y(n42) );
  CLKINVX1M U62 ( .A(enable_bit), .Y(n45) );
  NOR4BX1M U63 ( .AN(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .D(n31), .Y(
        n34) );
  AND2X1M U64 ( .A(N20), .B(n61), .Y(N26) );
  AND2X1M U65 ( .A(N19), .B(n61), .Y(N25) );
  AND2X1M U66 ( .A(N18), .B(n61), .Y(N24) );
  AND2X1M U67 ( .A(N17), .B(n61), .Y(N23) );
  AND2X1M U68 ( .A(N16), .B(n61), .Y(N22) );
  AND2X1M U69 ( .A(n58), .B(n61), .Y(N21) );
  AND2X1M U70 ( .A(enable_edge), .B(n60), .Y(n61) );
  NAND4BX1M U71 ( .AN(n40), .B(n57), .C(n62), .D(n63), .Y(n60) );
  AOI211X1M U72 ( .A0(N9), .A1(n38), .B0(n33), .C0(n44), .Y(n63) );
  OAI211X1M U73 ( .A0(N8), .A1(n39), .B0(n64), .C0(n65), .Y(n44) );
  AOI221XLM U74 ( .A0(edge_cnt[1]), .A1(n66), .B0(edge_cnt[0]), .B1(
        prescale[0]), .C0(n55), .Y(n65) );
  NOR2BX1M U75 ( .AN(edge_cnt[2]), .B(N7), .Y(n55) );
  CLKINVX1M U76 ( .A(N6), .Y(n66) );
  CLKINVX1M U77 ( .A(n37), .Y(n64) );
  OAI21X1M U78 ( .A0(N10), .A1(n49), .B0(n53), .Y(n37) );
  CLKNAND2X2M U79 ( .A(edge_cnt[4]), .B(n50), .Y(n53) );
  CLKINVX1M U80 ( .A(N9), .Y(n50) );
  CLKINVX1M U81 ( .A(edge_cnt[3]), .Y(n39) );
  AO21XLM U82 ( .A0(n49), .A1(N10), .B0(N11), .Y(n33) );
  CLKINVX1M U83 ( .A(edge_cnt[5]), .Y(n49) );
  CLKINVX1M U84 ( .A(edge_cnt[4]), .Y(n38) );
  AOI22X1M U85 ( .A0(N5), .A1(n58), .B0(N6), .B1(n59), .Y(n62) );
  CLKINVX1M U86 ( .A(edge_cnt[1]), .Y(n59) );
  CLKINVX1M U87 ( .A(edge_cnt[0]), .Y(n58) );
  NAND2BX1M U88 ( .AN(edge_cnt[2]), .B(N7), .Y(n57) );
  NOR2BX1M U89 ( .AN(N8), .B(edge_cnt[3]), .Y(n40) );
endmodule


module PARITY_CHECK_test_1 ( CLK, RST_n, P_DATA, par_chk_en, PAR_TYP, 
        sampled_bit, edge_cnt, prescale, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, par_chk_en, PAR_TYP, sampled_bit, test_si, test_se;
  output par_err;
  wire   N5, N6, N7, N8, N9, N10, N12, N19, n6, n7, n8, n9, n10, n11,
         \sub_17/carry[5] , \sub_17/carry[4] , \sub_17/carry[3] , n1, n2, n3,
         n4, n12, n13, n14, n15, n16, n17;
  assign N5 = prescale[0];

  SDFFRQX2M par_err_reg ( .D(N19), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(par_err) );
  NOR2X2M U4 ( .A(prescale[5]), .B(\sub_17/carry[5] ), .Y(n1) );
  XOR3XLM U5 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n10), .Y(n9) );
  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n10) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n11), .Y(n8) );
  XNOR2X2M U8 ( .A(sampled_bit), .B(P_DATA[6]), .Y(n11) );
  AND3X2M U9 ( .A(N12), .B(n6), .C(par_chk_en), .Y(N19) );
  XOR3XLM U10 ( .A(n7), .B(n8), .C(n9), .Y(n6) );
  CLKXOR2X2M U11 ( .A(P_DATA[7]), .B(PAR_TYP), .Y(n7) );
  INVX2M U12 ( .A(prescale[1]), .Y(N6) );
  XNOR2X1M U13 ( .A(\sub_17/carry[5] ), .B(prescale[5]), .Y(N10) );
  OR2X1M U14 ( .A(prescale[4]), .B(\sub_17/carry[4] ), .Y(\sub_17/carry[5] )
         );
  XNOR2X1M U15 ( .A(\sub_17/carry[4] ), .B(prescale[4]), .Y(N9) );
  OR2X1M U16 ( .A(prescale[3]), .B(\sub_17/carry[3] ), .Y(\sub_17/carry[4] )
         );
  XNOR2X1M U17 ( .A(\sub_17/carry[3] ), .B(prescale[3]), .Y(N8) );
  OR2X1M U18 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_17/carry[3] ) );
  XNOR2X1M U19 ( .A(prescale[1]), .B(prescale[2]), .Y(N7) );
  NOR2BX1M U20 ( .AN(N5), .B(edge_cnt[0]), .Y(n2) );
  OAI2B2X1M U21 ( .A1N(edge_cnt[1]), .A0(n2), .B0(N6), .B1(n2), .Y(n13) );
  XNOR2X1M U22 ( .A(N10), .B(edge_cnt[5]), .Y(n12) );
  NOR2BX1M U23 ( .AN(edge_cnt[0]), .B(N5), .Y(n3) );
  OAI2B2X1M U24 ( .A1N(N6), .A0(n3), .B0(edge_cnt[1]), .B1(n3), .Y(n4) );
  NAND4BX1M U25 ( .AN(n1), .B(n13), .C(n12), .D(n4), .Y(n17) );
  CLKXOR2X2M U26 ( .A(N9), .B(edge_cnt[4]), .Y(n16) );
  CLKXOR2X2M U27 ( .A(N7), .B(edge_cnt[2]), .Y(n15) );
  CLKXOR2X2M U28 ( .A(N8), .B(edge_cnt[3]), .Y(n14) );
  NOR4X1M U29 ( .A(n17), .B(n16), .C(n15), .D(n14), .Y(N12) );
endmodule


module STR_CHECK_test_1 ( CLK, RST_n, strt_chk_en, sampled_bit, edge_cnt, 
        prescale, strt_glitch, test_si, test_se );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, strt_chk_en, sampled_bit, test_si, test_se;
  output strt_glitch;
  wire   N1, N2, N3, N4, N5, N6, N8, N9, \sub_13/carry[5] , \sub_13/carry[4] ,
         \sub_13/carry[3] , n2, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  assign N1 = prescale[0];

  SDFFRQX1M strt_glitch_reg ( .D(N9), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST_n), .Q(strt_glitch) );
  NOR2X2M U4 ( .A(prescale[5]), .B(\sub_13/carry[5] ), .Y(n2) );
  AND3X2M U6 ( .A(sampled_bit), .B(N8), .C(strt_chk_en), .Y(N9) );
  INVX2M U7 ( .A(prescale[1]), .Y(N2) );
  XNOR2X1M U8 ( .A(\sub_13/carry[5] ), .B(prescale[5]), .Y(N6) );
  OR2X1M U9 ( .A(prescale[4]), .B(\sub_13/carry[4] ), .Y(\sub_13/carry[5] ) );
  XNOR2X1M U10 ( .A(\sub_13/carry[4] ), .B(prescale[4]), .Y(N5) );
  OR2X1M U11 ( .A(prescale[3]), .B(\sub_13/carry[3] ), .Y(\sub_13/carry[4] )
         );
  XNOR2X1M U12 ( .A(\sub_13/carry[3] ), .B(prescale[3]), .Y(N4) );
  OR2X1M U13 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_13/carry[3] ) );
  XNOR2X1M U14 ( .A(prescale[1]), .B(prescale[2]), .Y(N3) );
  NOR2BX1M U15 ( .AN(N1), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U16 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N2), .B1(n4), .Y(n8) );
  XNOR2X1M U17 ( .A(N6), .B(edge_cnt[5]), .Y(n7) );
  NOR2BX1M U18 ( .AN(edge_cnt[0]), .B(N1), .Y(n5) );
  OAI2B2X1M U19 ( .A1N(N2), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n6) );
  NAND4BX1M U20 ( .AN(n2), .B(n8), .C(n7), .D(n6), .Y(n12) );
  CLKXOR2X2M U21 ( .A(N5), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U22 ( .A(N3), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U23 ( .A(N4), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U24 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N8) );
endmodule


module STOP_CHECK_test_1 ( CLK, RST_n, stp_chk_en, sampled_bit, edge_cnt, 
        prescale, stp_err, test_si, test_se );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, stp_chk_en, sampled_bit, test_si, test_se;
  output stp_err;
  wire   N1, N2, N3, N4, N5, N6, N8, N9, \sub_13/carry[5] , \sub_13/carry[4] ,
         \sub_13/carry[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  assign N1 = prescale[0];

  SDFFRQX2M stp_err_reg ( .D(N9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST_n), .Q(stp_err) );
  NOR2X2M U4 ( .A(prescale[5]), .B(\sub_13/carry[5] ), .Y(n2) );
  AND3X2M U5 ( .A(n12), .B(N8), .C(stp_chk_en), .Y(N9) );
  INVX2M U6 ( .A(sampled_bit), .Y(n12) );
  INVX2M U7 ( .A(prescale[1]), .Y(N2) );
  XNOR2X1M U8 ( .A(\sub_13/carry[5] ), .B(prescale[5]), .Y(N6) );
  OR2X1M U9 ( .A(prescale[4]), .B(\sub_13/carry[4] ), .Y(\sub_13/carry[5] ) );
  XNOR2X1M U10 ( .A(\sub_13/carry[4] ), .B(prescale[4]), .Y(N5) );
  OR2X1M U11 ( .A(prescale[3]), .B(\sub_13/carry[3] ), .Y(\sub_13/carry[4] )
         );
  XNOR2X1M U12 ( .A(\sub_13/carry[3] ), .B(prescale[3]), .Y(N4) );
  OR2X1M U13 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_13/carry[3] ) );
  XNOR2X1M U14 ( .A(prescale[1]), .B(prescale[2]), .Y(N3) );
  NOR2BX1M U15 ( .AN(N1), .B(edge_cnt[0]), .Y(n3) );
  OAI2B2X1M U16 ( .A1N(edge_cnt[1]), .A0(n3), .B0(N2), .B1(n3), .Y(n7) );
  XNOR2X1M U17 ( .A(N6), .B(edge_cnt[5]), .Y(n6) );
  NOR2BX1M U18 ( .AN(edge_cnt[0]), .B(N1), .Y(n4) );
  OAI2B2X1M U19 ( .A1N(N2), .A0(n4), .B0(edge_cnt[1]), .B1(n4), .Y(n5) );
  NAND4BX1M U20 ( .AN(n2), .B(n7), .C(n6), .D(n5), .Y(n11) );
  CLKXOR2X2M U21 ( .A(N5), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U22 ( .A(N3), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U23 ( .A(N4), .B(edge_cnt[3]), .Y(n8) );
  NOR4X1M U24 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N8) );
endmodule


module UART_RX_TOP_DATA_WIDTH8_test_1 ( CLK, RST_n, PAR_EN, PAR_TYP, RX_IN, 
        prescale, data_valid, P_DATA, stp_err, par_err, test_si, test_so, 
        test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input CLK, RST_n, PAR_EN, PAR_TYP, RX_IN, test_si, test_se;
  output data_valid, stp_err, par_err, test_so;
  wire   strt_glitch, par_chk_en, strt_chk_en, stp_chk_en, deser_en,
         enable_edge, enable_bit, dat_samp_en, sampled_bit, n1, n2, n3;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;
  assign test_so = strt_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_n), .Y(n2) );
  FSM_test_1 fsm_2 ( .CLK(CLK), .RST_n(n1), .PAR_EN(PAR_EN), .par_err(par_err), 
        .stp_err(stp_err), .strt_glitch(strt_glitch), .RX_IN(RX_IN), .bit_cnt(
        bit_cnt), .edge_cnt(edge_cnt), .prescale(prescale), .par_chk_en(
        par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(stp_chk_en), 
        .deser_en(deser_en), .data_valid(data_valid), .enable_edge(enable_edge), .enable_bit(enable_bit), .dat_samp_en(dat_samp_en), .test_so(n3), .test_se(
        test_se) );
  DATA_SAMPLING_test_1 dt_sam ( .CLK(CLK), .RST_n(n1), .RX_IN(RX_IN), 
        .prescale(prescale), .data_samp_en(dat_samp_en), .edge_cnt(edge_cnt), 
        .sampled_bit(sampled_bit), .test_si(P_DATA[7]), .test_se(test_se) );
  DE_SERIALIZER_DATA_WIDTH8_test_1 de_ser ( .CLK(CLK), .RST_n(n1), 
        .sampled_bit(sampled_bit), .deser_en(deser_en), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt), .prescale(prescale), .P_DATA(P_DATA), .test_si(
        test_si), .test_se(test_se) );
  EDGE_BIT_COUNTER_test_1 edge_bit ( .CLK(CLK), .RST_n(n1), .enable_edge(
        enable_edge), .enable_bit(enable_bit), .PAR_EN(PAR_EN), .prescale(
        prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), .test_si(
        sampled_bit), .test_se(test_se) );
  PARITY_CHECK_test_1 par_chk ( .CLK(CLK), .RST_n(n1), .P_DATA(P_DATA), 
        .par_chk_en(par_chk_en), .PAR_TYP(PAR_TYP), .sampled_bit(sampled_bit), 
        .edge_cnt(edge_cnt), .prescale(prescale), .par_err(par_err), .test_si(
        n3), .test_se(test_se) );
  STR_CHECK_test_1 str_chk ( .CLK(CLK), .RST_n(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .edge_cnt(edge_cnt), .prescale(prescale), 
        .strt_glitch(strt_glitch), .test_si(stp_err), .test_se(test_se) );
  STOP_CHECK_test_1 stp_chk ( .CLK(CLK), .RST_n(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .edge_cnt(edge_cnt), .prescale(prescale), 
        .stp_err(stp_err), .test_si(par_err), .test_se(test_se) );
endmodule


module UART_SYS_TOP_DATA_WIDTH8_test_1 ( RX_IN, RX_CLK, TX_CLK, parity_en, 
        parity_typ, prescale, RST, FIFO_EMPTY, FIFO_DATA, BUSY, RX_VALID, 
        RX_P_DATA, TX_OUT, PAR_ERR, STP_ERR, test_si, test_so, test_se );
  input [5:0] prescale;
  input [7:0] FIFO_DATA;
  output [7:0] RX_P_DATA;
  input RX_IN, RX_CLK, TX_CLK, parity_en, parity_typ, RST, FIFO_EMPTY, test_si,
         test_se;
  output BUSY, RX_VALID, TX_OUT, PAR_ERR, STP_ERR, test_so;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_TOP_DATA_WIDTH8_test_1 tx ( .CLK(TX_CLK), .RST(n1), .FIFO_EMPTY(
        FIFO_EMPTY), .PAR_EN(parity_en), .PAR_TYP(parity_typ), .P_DATA(
        FIFO_DATA), .TX_OUT(TX_OUT), .busy(BUSY), .test_si(n4), .test_so(
        test_so), .test_se(test_se) );
  UART_RX_TOP_DATA_WIDTH8_test_1 rx ( .CLK(RX_CLK), .RST_n(n1), .PAR_EN(
        parity_en), .PAR_TYP(parity_typ), .RX_IN(RX_IN), .prescale(prescale), 
        .data_valid(RX_VALID), .P_DATA(RX_P_DATA), .stp_err(STP_ERR), 
        .par_err(PAR_ERR), .test_si(test_si), .test_so(n4), .test_se(test_se)
         );
endmodule


module SYS_TOP ( UART_RX_IN, SI, SE, scan_clk, scan_rst, test_mode, SO, 
        UART_TX_O, REF_CLK, UART_CLK, RST_N, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input UART_RX_IN, SE, scan_clk, scan_rst, test_mode, REF_CLK, UART_CLK,
         RST_N;
  output UART_TX_O, parity_error, framing_error;
  wire   CLK_M_r, CLK_M_u, RST_M, RST_SYNC_D1, RST_SYNC1_M, RST_SYNC_D2,
         RST_SYNC2_M, RX_CLK, RX_CLK_M, TX_CLK, TX_CLK_M, ALU_out_valid,
         RX_D_VLD, RF_RdData_Valid, FIFO_FULL, ALU_EN, WR_INC_FIFO,
         CLK_GATE_EN, RF_WrEN, RF_RdEn, CLK_GATED, RINC, FIFO_EMPTY, RX_VALID,
         BUSY, n1, n2, n3, n4, n5, n6, n7, n10, n11, n12, n15, n20, n21, n22;
  wire   [15:0] ALU_OUT;
  wire   [7:0] RX_P_Data;
  wire   [7:0] RF_RD_DATA;
  wire   [3:0] ALU_FUNC;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [7:0] FIFO_WR_Data;
  wire   [7:0] A_to_reg;
  wire   [7:0] B_to_reg;
  wire   [7:0] UART_CONFIG;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] RD_DATA;
  wire   [7:0] in_div_ratio;
  wire   [7:0] RX_DATA;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  INVX4M U1 ( .A(n7), .Y(n6) );
  INVX2M U2 ( .A(n5), .Y(n4) );
  BUFX2M U3 ( .A(RF_Address[0]), .Y(n2) );
  BUFX2M U4 ( .A(RF_Address[1]), .Y(n3) );
  BUFX2M U5 ( .A(UART_RX_IN), .Y(n1) );
  INVX2M U6 ( .A(RST_SYNC1_M), .Y(n7) );
  INVX2M U7 ( .A(RST_SYNC2_M), .Y(n5) );
  mux2X1_1 u0 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(CLK_M_r) );
  mux2X1_4 u1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M_u) );
  mux2X1_0 u2 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(RST_M) );
  mux2X1_6 u5 ( .IN_0(RST_SYNC_D1), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_SYNC1_M) );
  mux2X1_5 u6 ( .IN_0(RST_SYNC_D2), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_SYNC2_M) );
  mux2X1_3 u3 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(RX_CLK_M) );
  mux2X1_2 u4 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(TX_CLK_M) );
  SYS_CTRL_test_1 control_unit ( .ALU_out_valid(ALU_out_valid), .RX_D_VLD(
        RX_D_VLD), .RF_RdData_Valid(RF_RdData_Valid), .CLK(CLK_M_r), .RST(n6), 
        .FIFO_FULL(FIFO_FULL), .ALU_OUT(ALU_OUT), .RX_P_Data(RX_P_Data), 
        .RF_RD_DATA(RF_RD_DATA), .ALU_EN(ALU_EN), .WR_INC_FIFO(WR_INC_FIFO), 
        .ALU_FUNC(ALU_FUNC), .CLK_GATE_EN(CLK_GATE_EN), .RF_Address(RF_Address), .RF_WrEN(RF_WrEN), .RF_RdEn(RF_RdEn), .RF_WrData(RF_WrData), .FIFO_WR_Data(
        FIFO_WR_Data), .test_si(n21), .test_so(n20), .test_se(SE) );
  CLK_GATE clk_gate ( .CLK_EN(CLK_GATE_EN), .mode_enable(test_mode), .CLK(
        CLK_M_r), .GATED_CLK(CLK_GATED) );
  Register_file_ADDR4_DATA_WIDTH8_WIDTH8_DEPTH16_test_1 reg_file ( .WrData(
        RF_WrData), .REF_CLK(CLK_M_r), .RST(n6), .WrEn(RF_WrEN), .RdEn(RF_RdEn), .Address({RF_Address[3:2], n3, n2}), .RdData(RF_RD_DATA), .RdData_Valid(
        RF_RdData_Valid), .REG0(A_to_reg), .REG1(B_to_reg), .REG2(UART_CONFIG), 
        .REG3(DIV_RATIO), .test_si2(SI[0]), .test_si1(n15), .test_so2(n12), 
        .test_so1(SO[1]), .test_se(SE) );
  ALU_WIDTH8_FUNC4_test_1 alu ( .A(A_to_reg), .B(B_to_reg), .ALU_OUT(ALU_OUT), 
        .ALU_FUN(ALU_FUNC), .REF_CLK(CLK_GATED), .EN(ALU_EN), .RST(n6), 
        .ALU_OUT_VALID(ALU_out_valid), .test_si(SI[3]), .test_se(SE) );
  RST_SYNC_NUM_STAGES2_test_0 rst_sync_d1 ( .RST(RST_M), .CLK(CLK_M_r), 
        .RST_SYNC(RST_SYNC_D1), .test_si(n12), .test_so(n11), .test_se(SE) );
  RST_SYNC_NUM_STAGES2_test_1 rst_sync_d2 ( .RST(RST_M), .CLK(CLK_M_u), 
        .RST_SYNC(RST_SYNC_D2), .test_si(n11), .test_so(n10), .test_se(SE) );
  FIFO_TOP_DATA_WIDTH8_ADDR_WIDTH3_BUS_WIDTH4_test_1 fifo ( .RD_CLK(TX_CLK_M), 
        .WR_CLK(CLK_M_r), .RD_RST(n4), .WR_RST(n6), .WINC(WR_INC_FIFO), .RINC(
        RINC), .WDATA(FIFO_WR_Data), .FULL(FIFO_FULL), .EMPTY(FIFO_EMPTY), 
        .RDATA(RD_DATA), .test_si3(SI[1]), .test_si2(SI[2]), .test_si1(
        RX_D_VLD), .test_so3(n15), .test_so2(SO[2]), .test_so1(SO[3]), 
        .test_se(SE) );
  input_division_rx_ratio div ( .prescale(UART_CONFIG[7:2]), .in_div_ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, in_div_ratio[2:0]}) );
  CLOCK_DIV_DIV_WIDTH8_test_0 clk_div_1 ( .i_ref_clk(CLK_M_u), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        in_div_ratio[2:0]}), .o_div_clk(RX_CLK), .test_si(RINC), .test_so(n22), 
        .test_se(SE) );
  CLOCK_DIV_DIV_WIDTH8_test_1 clk_div_2 ( .i_ref_clk(CLK_M_u), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(TX_CLK), 
        .test_si(n22), .test_so(n21), .test_se(SE) );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 data_sync ( .CLK_DESTINATION(CLK_M_r), .RST_DESTINATION(n6), .bus_enable(RX_VALID), .unsync_bus(RX_DATA), 
        .sync_bus(RX_P_Data), .enable_pulse(RX_D_VLD), .test_si(n20), 
        .test_se(SE) );
  BUSY_PULSE_GENERATOR_test_1 busy_pulse_gen ( .sync_en(BUSY), 
        .CLK_DESTINATION(TX_CLK_M), .RST_DESTINATION(n4), .enable_pulse(RINC), 
        .test_si(ALU_OUT[15]), .test_se(SE) );
  UART_SYS_TOP_DATA_WIDTH8_test_1 uart ( .RX_IN(n1), .RX_CLK(RX_CLK_M), 
        .TX_CLK(TX_CLK_M), .parity_en(UART_CONFIG[0]), .parity_typ(
        UART_CONFIG[1]), .prescale(UART_CONFIG[7:2]), .RST(n4), .FIFO_EMPTY(
        FIFO_EMPTY), .FIFO_DATA(RD_DATA), .BUSY(BUSY), .RX_VALID(RX_VALID), 
        .RX_P_DATA(RX_DATA), .TX_OUT(UART_TX_O), .test_si(n10), .test_so(SO[0]), .test_se(SE) );
endmodule


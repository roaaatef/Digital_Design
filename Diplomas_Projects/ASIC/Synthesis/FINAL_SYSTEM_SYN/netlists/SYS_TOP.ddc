/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 21:23:03 2025
/////////////////////////////////////////////////////////////


module SYS_CTRL ( ALU_out_valid, RX_D_VLD, RF_RdData_Valid, CLK, RST, 
        FIFO_FULL, ALU_OUT, RX_P_Data, RF_RD_DATA, ALU_EN, WR_INC_FIFO, 
        ALU_FUNC, CLK_GATE_EN, RF_Address, RF_WrEN, RF_RdEn, RF_WrData, 
        FIFO_WR_Data, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RF_RD_DATA;
  output [3:0] ALU_FUNC;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  output [7:0] FIFO_WR_Data;
  input ALU_out_valid, RX_D_VLD, RF_RdData_Valid, CLK, RST, FIFO_FULL;
  output ALU_EN, WR_INC_FIFO, CLK_GATE_EN, RF_WrEN, RF_RdEn, clk_div_en;
  wire   n1, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n15, n17, n18, n19,
         n20, n22, n23, n24, n25, n26, n28, n29, n31, n32, n33, n34, n35, n37,
         n39, n40, n41, n42, n46, n47, n48, n49, n50, n53, n54, n55, n56, n57,
         n58, n59, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n12, n16, n21, n27, n30, n36, n38, n43, n44,
         n45, n51, n52, n78, n79, n80;
  wire   [3:0] address_stored;
  wire   [15:0] reg_alu_storing_value;
  wire   [3:0] cs;
  wire   [3:0] ns;

  DFFRQX2M \address_stored_reg[3]  ( .D(RF_Address[3]), .CK(CLK), .RN(RST), 
        .Q(address_stored[3]) );
  DFFRQX2M \address_stored_reg[2]  ( .D(RF_Address[2]), .CK(CLK), .RN(RST), 
        .Q(address_stored[2]) );
  DFFRQX2M \address_stored_reg[1]  ( .D(RF_Address[1]), .CK(CLK), .RN(RST), 
        .Q(address_stored[1]) );
  DFFRQX2M \reg_alu_storing_value_reg[7]  ( .D(n68), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[7]) );
  DFFRQX2M \reg_alu_storing_value_reg[6]  ( .D(n67), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[6]) );
  DFFRQX2M \reg_alu_storing_value_reg[5]  ( .D(n66), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[5]) );
  DFFRQX2M \reg_alu_storing_value_reg[4]  ( .D(n65), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[4]) );
  DFFRQX2M \reg_alu_storing_value_reg[3]  ( .D(n64), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[3]) );
  DFFRQX2M \reg_alu_storing_value_reg[2]  ( .D(n63), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[2]) );
  DFFRQX2M \reg_alu_storing_value_reg[1]  ( .D(n62), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[1]) );
  DFFRQX2M \reg_alu_storing_value_reg[0]  ( .D(n61), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[0]) );
  DFFRQX2M \reg_alu_storing_value_reg[15]  ( .D(n76), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[15]) );
  DFFRQX2M \reg_alu_storing_value_reg[14]  ( .D(n75), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[14]) );
  DFFRQX2M \reg_alu_storing_value_reg[13]  ( .D(n74), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[13]) );
  DFFRQX2M \reg_alu_storing_value_reg[12]  ( .D(n73), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[12]) );
  DFFRQX2M \reg_alu_storing_value_reg[11]  ( .D(n72), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[11]) );
  DFFRQX2M \reg_alu_storing_value_reg[10]  ( .D(n71), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[10]) );
  DFFRQX2M \reg_alu_storing_value_reg[9]  ( .D(n70), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[9]) );
  DFFRQX2M \reg_alu_storing_value_reg[8]  ( .D(n69), .CK(CLK), .RN(RST), .Q(
        reg_alu_storing_value[8]) );
  DFFRQX2M \address_stored_reg[0]  ( .D(RF_Address[0]), .CK(CLK), .RN(RST), 
        .Q(address_stored[0]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST), .Q(cs[1]) );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST), .Q(cs[0]) );
  DFFRQX2M \cs_reg[2]  ( .D(n77), .CK(CLK), .RN(RST), .Q(cs[2]) );
  DFFRQX2M \cs_reg[3]  ( .D(ns[3]), .CK(CLK), .RN(RST), .Q(cs[3]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR2X2M U5 ( .A(n36), .B(n1), .Y(ALU_FUNC[0]) );
  NOR2X2M U6 ( .A(n27), .B(n1), .Y(ALU_FUNC[2]) );
  OAI2BB2X2M U7 ( .B0(n27), .B1(n28), .A0N(address_stored[2]), .A1N(n47), .Y(
        RF_Address[2]) );
  NAND2X2M U8 ( .A(n29), .B(n15), .Y(n47) );
  INVX2M U9 ( .A(n41), .Y(n44) );
  INVX2M U10 ( .A(n29), .Y(n45) );
  NOR2X2M U11 ( .A(n30), .B(n1), .Y(ALU_FUNC[1]) );
  NOR2X2M U12 ( .A(n21), .B(n1), .Y(ALU_FUNC[3]) );
  AND3X2M U13 ( .A(n13), .B(n3), .C(n15), .Y(n42) );
  NOR2X2M U14 ( .A(n2), .B(n51), .Y(n41) );
  NOR2X2M U15 ( .A(n42), .B(n36), .Y(RF_WrData[0]) );
  NOR2X2M U16 ( .A(n42), .B(n30), .Y(RF_WrData[1]) );
  NOR2X2M U17 ( .A(n42), .B(n27), .Y(RF_WrData[2]) );
  NOR2X2M U18 ( .A(n42), .B(n21), .Y(RF_WrData[3]) );
  NOR2X2M U19 ( .A(n42), .B(n16), .Y(RF_WrData[4]) );
  NAND3X2M U20 ( .A(n51), .B(n80), .C(n46), .Y(n29) );
  NAND2X2M U21 ( .A(n49), .B(n46), .Y(n3) );
  NAND3X2M U22 ( .A(n29), .B(n44), .C(n40), .Y(WR_INC_FIFO) );
  NAND2X2M U23 ( .A(n37), .B(n49), .Y(n15) );
  NAND2X2M U24 ( .A(n29), .B(n14), .Y(RF_RdEn) );
  OAI211X2M U25 ( .A0(n43), .A1(n15), .B0(n13), .C0(n3), .Y(RF_WrEN) );
  INVX2M U26 ( .A(n40), .Y(n52) );
  AND3X2M U27 ( .A(n37), .B(n51), .C(n80), .Y(n9) );
  NOR2BX2M U28 ( .AN(n32), .B(n10), .Y(n20) );
  NAND4X2M U29 ( .A(n35), .B(n9), .C(n36), .D(n16), .Y(n32) );
  NAND2X2M U30 ( .A(n1), .B(n2), .Y(ns[3]) );
  INVX2M U31 ( .A(n2), .Y(n78) );
  INVX2M U32 ( .A(n11), .Y(n12) );
  NOR2X2M U33 ( .A(n79), .B(cs[3]), .Y(n46) );
  NAND2X2M U34 ( .A(RX_D_VLD), .B(ALU_EN), .Y(n1) );
  INVX2M U35 ( .A(n33), .Y(ALU_EN) );
  NAND3X2M U36 ( .A(cs[0]), .B(n46), .C(cs[1]), .Y(n33) );
  INVX2M U37 ( .A(cs[2]), .Y(n79) );
  INVX2M U38 ( .A(RX_P_Data[0]), .Y(n36) );
  INVX2M U39 ( .A(RX_P_Data[2]), .Y(n27) );
  INVX2M U40 ( .A(RX_P_Data[1]), .Y(n30) );
  INVX2M U41 ( .A(RX_P_Data[3]), .Y(n21) );
  OAI2BB2X4M U42 ( .B0(n21), .B1(n28), .A0N(address_stored[3]), .A1N(n47), .Y(
        RF_Address[3]) );
  NOR2X2M U43 ( .A(cs[3]), .B(cs[2]), .Y(n37) );
  NOR2X2M U44 ( .A(n80), .B(cs[0]), .Y(n49) );
  OAI2BB2X1M U45 ( .B0(n30), .B1(n28), .A0N(address_stored[1]), .A1N(n47), .Y(
        RF_Address[1]) );
  OAI21X2M U46 ( .A0(n43), .A1(n3), .B0(n48), .Y(RF_Address[0]) );
  AOI2BB2XLM U47 ( .B0(address_stored[0]), .B1(n47), .A0N(n28), .A1N(n36), .Y(
        n48) );
  NAND3X2M U48 ( .A(n80), .B(n79), .C(cs[3]), .Y(n2) );
  NOR2BX2M U49 ( .AN(RX_P_Data[5]), .B(n42), .Y(RF_WrData[5]) );
  NOR2BX2M U50 ( .AN(RX_P_Data[6]), .B(n42), .Y(RF_WrData[6]) );
  NOR2BX2M U51 ( .AN(RX_P_Data[7]), .B(n42), .Y(RF_WrData[7]) );
  NAND2X2M U52 ( .A(n37), .B(cs[0]), .Y(n28) );
  NAND3X2M U53 ( .A(n46), .B(n80), .C(cs[0]), .Y(n13) );
  NAND3X2M U54 ( .A(cs[1]), .B(cs[0]), .C(n37), .Y(n14) );
  NOR2X2M U55 ( .A(FIFO_FULL), .B(n59), .Y(FIFO_WR_Data[0]) );
  AOI222X1M U56 ( .A0(RF_RD_DATA[0]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[0]), .C0(n52), .C1(reg_alu_storing_value[8]), 
        .Y(n59) );
  NOR2X2M U57 ( .A(FIFO_FULL), .B(n58), .Y(FIFO_WR_Data[1]) );
  AOI222X1M U58 ( .A0(RF_RD_DATA[1]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[1]), .C0(n52), .C1(reg_alu_storing_value[9]), 
        .Y(n58) );
  NOR2X2M U59 ( .A(FIFO_FULL), .B(n57), .Y(FIFO_WR_Data[2]) );
  AOI222X1M U60 ( .A0(RF_RD_DATA[2]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[2]), .C0(n52), .C1(reg_alu_storing_value[10]), 
        .Y(n57) );
  NOR2X2M U61 ( .A(FIFO_FULL), .B(n56), .Y(FIFO_WR_Data[3]) );
  AOI222X1M U62 ( .A0(RF_RD_DATA[3]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[3]), .C0(n52), .C1(reg_alu_storing_value[11]), 
        .Y(n56) );
  NOR2X2M U63 ( .A(FIFO_FULL), .B(n55), .Y(FIFO_WR_Data[4]) );
  AOI222X1M U64 ( .A0(RF_RD_DATA[4]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[4]), .C0(n52), .C1(reg_alu_storing_value[12]), 
        .Y(n55) );
  NOR2X2M U65 ( .A(FIFO_FULL), .B(n54), .Y(FIFO_WR_Data[5]) );
  AOI222X1M U66 ( .A0(RF_RD_DATA[5]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[5]), .C0(n52), .C1(reg_alu_storing_value[13]), 
        .Y(n54) );
  NOR2X2M U67 ( .A(FIFO_FULL), .B(n53), .Y(FIFO_WR_Data[6]) );
  AOI222X1M U68 ( .A0(RF_RD_DATA[6]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[6]), .C0(n52), .C1(reg_alu_storing_value[14]), 
        .Y(n53) );
  NOR2X2M U69 ( .A(FIFO_FULL), .B(n50), .Y(FIFO_WR_Data[7]) );
  AOI222X1M U70 ( .A0(RF_RD_DATA[7]), .A1(n45), .B0(n41), .B1(
        reg_alu_storing_value[7]), .C0(n52), .C1(reg_alu_storing_value[15]), 
        .Y(n50) );
  INVX2M U71 ( .A(cs[0]), .Y(n51) );
  NAND3X2M U72 ( .A(cs[3]), .B(n79), .C(n49), .Y(n40) );
  INVX2M U73 ( .A(cs[1]), .Y(n80) );
  INVX2M U74 ( .A(RX_D_VLD), .Y(n43) );
  NAND4X2M U75 ( .A(n3), .B(n44), .C(n5), .D(n6), .Y(ns[1]) );
  OAI2BB1X2M U76 ( .A0N(n14), .A1N(n15), .B0(n43), .Y(n5) );
  AOI221XLM U77 ( .A0(RX_D_VLD), .A1(n7), .B0(n12), .B1(n9), .C0(n10), .Y(n6)
         );
  OAI31X1M U78 ( .A0(n51), .A1(cs[2]), .A2(cs[1]), .B0(n13), .Y(n7) );
  NAND4X2M U79 ( .A(RX_P_Data[1]), .B(RX_P_Data[4]), .C(RX_P_Data[5]), .D(n26), 
        .Y(n11) );
  NOR4X1M U80 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n24), .D(n36), .Y(n26)
         );
  AND3X2M U81 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n39), .Y(n35) );
  NOR3X2M U82 ( .A(n24), .B(RX_P_Data[5]), .C(RX_P_Data[1]), .Y(n39) );
  OAI21X2M U83 ( .A0(cs[0]), .A1(n2), .B0(n33), .Y(CLK_GATE_EN) );
  OAI211X2M U84 ( .A0(RF_RdData_Valid), .A1(n29), .B0(n20), .C0(n38), .Y(n77)
         );
  INVX2M U85 ( .A(n31), .Y(n38) );
  OAI211X2M U86 ( .A0(n14), .A1(n43), .B0(n3), .C0(n13), .Y(n31) );
  OAI211X2M U87 ( .A0(RX_D_VLD), .A1(n17), .B0(n18), .C0(n19), .Y(ns[0]) );
  AND2X2M U88 ( .A(n13), .B(n28), .Y(n17) );
  AOI32X1M U89 ( .A0(n78), .A1(n51), .A2(ALU_out_valid), .B0(n9), .B1(n22), 
        .Y(n18) );
  OA21X2M U90 ( .A0(n3), .A1(n43), .B0(n20), .Y(n19) );
  NAND3X2M U91 ( .A(RX_P_Data[3]), .B(RX_D_VLD), .C(RX_P_Data[7]), .Y(n24) );
  OAI21X2M U92 ( .A0(RX_D_VLD), .A1(n33), .B0(n34), .Y(n10) );
  NAND4X2M U93 ( .A(RX_P_Data[4]), .B(RX_P_Data[0]), .C(n35), .D(n9), .Y(n34)
         );
  INVX2M U94 ( .A(RX_P_Data[4]), .Y(n16) );
  NAND2X2M U95 ( .A(n11), .B(n23), .Y(n22) );
  NAND4BX1M U96 ( .AN(n24), .B(RX_P_Data[1]), .C(RX_P_Data[5]), .D(n25), .Y(
        n23) );
  NOR4X1M U97 ( .A(RX_P_Data[6]), .B(RX_P_Data[4]), .C(RX_P_Data[2]), .D(
        RX_P_Data[0]), .Y(n25) );
  AO2B2X2M U98 ( .B0(ALU_OUT[0]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[0]), .A1N(ALU_out_valid), .Y(n61) );
  AO2B2X2M U99 ( .B0(ALU_OUT[1]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[1]), .A1N(ALU_out_valid), .Y(n62) );
  AO2B2X2M U100 ( .B0(ALU_OUT[2]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[2]), .A1N(ALU_out_valid), .Y(n63) );
  AO2B2X2M U101 ( .B0(ALU_OUT[3]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[3]), .A1N(ALU_out_valid), .Y(n64) );
  AO2B2X2M U102 ( .B0(ALU_OUT[4]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[4]), .A1N(ALU_out_valid), .Y(n65) );
  AO2B2X2M U103 ( .B0(ALU_OUT[5]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[5]), .A1N(ALU_out_valid), .Y(n66) );
  AO2B2X2M U104 ( .B0(ALU_OUT[6]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[6]), .A1N(ALU_out_valid), .Y(n67) );
  AO2B2X2M U105 ( .B0(ALU_OUT[7]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[7]), .A1N(ALU_out_valid), .Y(n68) );
  AO2B2X2M U106 ( .B0(ALU_OUT[8]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[8]), .A1N(ALU_out_valid), .Y(n69) );
  AO2B2X2M U107 ( .B0(ALU_OUT[9]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[9]), .A1N(ALU_out_valid), .Y(n70) );
  AO2B2X2M U108 ( .B0(ALU_OUT[10]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[10]), .A1N(ALU_out_valid), .Y(n71) );
  AO2B2X2M U109 ( .B0(ALU_OUT[11]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[11]), .A1N(ALU_out_valid), .Y(n72) );
  AO2B2X2M U110 ( .B0(ALU_OUT[12]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[12]), .A1N(ALU_out_valid), .Y(n73) );
  AO2B2X2M U111 ( .B0(ALU_OUT[13]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[13]), .A1N(ALU_out_valid), .Y(n74) );
  AO2B2X2M U112 ( .B0(ALU_OUT[14]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[14]), .A1N(ALU_out_valid), .Y(n75) );
  AO2B2X2M U113 ( .B0(ALU_OUT[15]), .B1(ALU_out_valid), .A0(
        reg_alu_storing_value[15]), .A1N(ALU_out_valid), .Y(n76) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module Register_file_ADDR4_DATA_WIDTH8_WIDTH8_DEPTH16 ( WrData, REF_CLK, RST, 
        WrEn, RdEn, Address, RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input REF_CLK, RST, WrEn, RdEn;
  output RdData_Valid;
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
         \Reg_File[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M RdData_Valid_reg ( .D(n42), .CK(REF_CLK), .RN(n201), .Q(
        RdData_Valid) );
  EDFFHQX2M \RdData_reg[7]  ( .D(N36), .E(n15), .CK(REF_CLK), .Q(RdData[7]) );
  EDFFHQX2M \RdData_reg[6]  ( .D(N37), .E(n15), .CK(REF_CLK), .Q(RdData[6]) );
  EDFFHQX2M \RdData_reg[5]  ( .D(N38), .E(n15), .CK(REF_CLK), .Q(RdData[5]) );
  EDFFHQX2M \RdData_reg[4]  ( .D(N39), .E(n15), .CK(REF_CLK), .Q(RdData[4]) );
  EDFFHQX2M \RdData_reg[3]  ( .D(N40), .E(n15), .CK(REF_CLK), .Q(RdData[3]) );
  EDFFHQX2M \RdData_reg[2]  ( .D(N41), .E(n15), .CK(REF_CLK), .Q(RdData[2]) );
  EDFFHQX2M \RdData_reg[1]  ( .D(N42), .E(n15), .CK(REF_CLK), .Q(RdData[1]) );
  EDFFHQX2M \RdData_reg[0]  ( .D(N43), .E(n15), .CK(REF_CLK), .Q(RdData[0]) );
  DFFRQX2M \Reg_File_reg[13][7]  ( .D(n154), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][7] ) );
  DFFRQX2M \Reg_File_reg[13][6]  ( .D(n153), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][6] ) );
  DFFRQX2M \Reg_File_reg[13][5]  ( .D(n152), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][5] ) );
  DFFRQX2M \Reg_File_reg[13][4]  ( .D(n151), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][4] ) );
  DFFRQX2M \Reg_File_reg[13][3]  ( .D(n150), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][3] ) );
  DFFRQX2M \Reg_File_reg[13][2]  ( .D(n149), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][2] ) );
  DFFRQX2M \Reg_File_reg[13][1]  ( .D(n148), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][1] ) );
  DFFRQX2M \Reg_File_reg[13][0]  ( .D(n147), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[13][0] ) );
  DFFRQX2M \Reg_File_reg[9][7]  ( .D(n122), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[9][7] ) );
  DFFRQX2M \Reg_File_reg[9][6]  ( .D(n121), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[9][6] ) );
  DFFRQX2M \Reg_File_reg[9][5]  ( .D(n120), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[9][5] ) );
  DFFRQX2M \Reg_File_reg[9][4]  ( .D(n119), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[9][4] ) );
  DFFRQX2M \Reg_File_reg[9][3]  ( .D(n118), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[9][3] ) );
  DFFRQX2M \Reg_File_reg[9][2]  ( .D(n117), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[9][2] ) );
  DFFRQX2M \Reg_File_reg[9][1]  ( .D(n116), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[9][1] ) );
  DFFRQX2M \Reg_File_reg[9][0]  ( .D(n115), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[9][0] ) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n90), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n89), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n88), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n87), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n86), .CK(REF_CLK), .RN(RST), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n85), .CK(REF_CLK), .RN(RST), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n84), .CK(REF_CLK), .RN(RST), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n83), .CK(REF_CLK), .RN(RST), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[15][7]  ( .D(n170), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][7] ) );
  DFFRQX2M \Reg_File_reg[15][6]  ( .D(n169), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][6] ) );
  DFFRQX2M \Reg_File_reg[15][5]  ( .D(n168), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][5] ) );
  DFFRQX2M \Reg_File_reg[15][4]  ( .D(n167), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][4] ) );
  DFFRQX2M \Reg_File_reg[15][3]  ( .D(n166), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][3] ) );
  DFFRQX2M \Reg_File_reg[15][2]  ( .D(n165), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][2] ) );
  DFFRQX2M \Reg_File_reg[15][1]  ( .D(n164), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][1] ) );
  DFFRQX2M \Reg_File_reg[15][0]  ( .D(n163), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[15][0] ) );
  DFFRQX2M \Reg_File_reg[11][7]  ( .D(n138), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][7] ) );
  DFFRQX2M \Reg_File_reg[11][6]  ( .D(n137), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][6] ) );
  DFFRQX2M \Reg_File_reg[11][5]  ( .D(n136), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][5] ) );
  DFFRQX2M \Reg_File_reg[11][4]  ( .D(n135), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][4] ) );
  DFFRQX2M \Reg_File_reg[11][3]  ( .D(n134), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][3] ) );
  DFFRQX2M \Reg_File_reg[11][2]  ( .D(n133), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][2] ) );
  DFFRQX2M \Reg_File_reg[11][1]  ( .D(n132), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][1] ) );
  DFFRQX2M \Reg_File_reg[11][0]  ( .D(n131), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[11][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n106), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n105), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n104), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n103), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n102), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n101), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n100), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n99), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[14][7]  ( .D(n162), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[14][7] ) );
  DFFRQX2M \Reg_File_reg[14][6]  ( .D(n161), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[14][6] ) );
  DFFRQX2M \Reg_File_reg[14][5]  ( .D(n160), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[14][5] ) );
  DFFRQX2M \Reg_File_reg[14][4]  ( .D(n159), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[14][4] ) );
  DFFRQX2M \Reg_File_reg[14][3]  ( .D(n158), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[14][3] ) );
  DFFRQX2M \Reg_File_reg[14][2]  ( .D(n157), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[14][2] ) );
  DFFRQX2M \Reg_File_reg[14][1]  ( .D(n156), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[14][1] ) );
  DFFRQX2M \Reg_File_reg[14][0]  ( .D(n155), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[14][0] ) );
  DFFRQX2M \Reg_File_reg[10][7]  ( .D(n130), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][7] ) );
  DFFRQX2M \Reg_File_reg[10][6]  ( .D(n129), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][6] ) );
  DFFRQX2M \Reg_File_reg[10][5]  ( .D(n128), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][5] ) );
  DFFRQX2M \Reg_File_reg[10][4]  ( .D(n127), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][4] ) );
  DFFRQX2M \Reg_File_reg[10][3]  ( .D(n126), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][3] ) );
  DFFRQX2M \Reg_File_reg[10][2]  ( .D(n125), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][2] ) );
  DFFRQX2M \Reg_File_reg[10][1]  ( .D(n124), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][1] ) );
  DFFRQX2M \Reg_File_reg[10][0]  ( .D(n123), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[10][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n98), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n97), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n96), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n95), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n94), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n93), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n92), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n91), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[12][7]  ( .D(n146), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[12][7] ) );
  DFFRQX2M \Reg_File_reg[12][6]  ( .D(n145), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[12][6] ) );
  DFFRQX2M \Reg_File_reg[12][5]  ( .D(n144), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[12][5] ) );
  DFFRQX2M \Reg_File_reg[12][4]  ( .D(n143), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[12][4] ) );
  DFFRQX2M \Reg_File_reg[12][3]  ( .D(n142), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[12][3] ) );
  DFFRQX2M \Reg_File_reg[12][2]  ( .D(n141), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[12][2] ) );
  DFFRQX2M \Reg_File_reg[12][1]  ( .D(n140), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[12][1] ) );
  DFFRQX2M \Reg_File_reg[12][0]  ( .D(n139), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[12][0] ) );
  DFFRQX2M \Reg_File_reg[8][7]  ( .D(n114), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[8][7] ) );
  DFFRQX2M \Reg_File_reg[8][6]  ( .D(n113), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[8][6] ) );
  DFFRQX2M \Reg_File_reg[8][5]  ( .D(n112), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[8][5] ) );
  DFFRQX2M \Reg_File_reg[8][4]  ( .D(n111), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[8][4] ) );
  DFFRQX2M \Reg_File_reg[8][3]  ( .D(n110), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[8][3] ) );
  DFFRQX2M \Reg_File_reg[8][2]  ( .D(n109), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[8][2] ) );
  DFFRQX2M \Reg_File_reg[8][1]  ( .D(n108), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[8][1] ) );
  DFFRQX2M \Reg_File_reg[8][0]  ( .D(n107), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[8][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n82), .CK(REF_CLK), .RN(RST), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n81), .CK(REF_CLK), .RN(RST), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n80), .CK(REF_CLK), .RN(n202), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n79), .CK(REF_CLK), .RN(n201), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n78), .CK(REF_CLK), .RN(n204), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n77), .CK(REF_CLK), .RN(n203), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n76), .CK(REF_CLK), .RN(n199), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n75), .CK(REF_CLK), .RN(n200), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n60), .CK(REF_CLK), .RN(n199), .Q(REG2[1]) );
  DFFRQX2M \Reg_File_reg[3][3]  ( .D(n70), .CK(REF_CLK), .RN(n199), .Q(REG3[3]) );
  DFFRQX2M \Reg_File_reg[3][1]  ( .D(n68), .CK(REF_CLK), .RN(n199), .Q(REG3[1]) );
  DFFRQX2M \Reg_File_reg[3][2]  ( .D(n69), .CK(REF_CLK), .RN(n199), .Q(REG3[2]) );
  DFFSQX2M \Reg_File_reg[2][0]  ( .D(n59), .CK(REF_CLK), .SN(n200), .Q(REG2[0]) );
  DFFSQX2M \Reg_File_reg[3][5]  ( .D(n72), .CK(REF_CLK), .SN(n199), .Q(REG3[5]) );
  DFFRQX2M \Reg_File_reg[3][6]  ( .D(n73), .CK(REF_CLK), .RN(n202), .Q(REG3[6]) );
  DFFRQX2M \Reg_File_reg[3][7]  ( .D(n74), .CK(REF_CLK), .RN(n204), .Q(REG3[7]) );
  DFFRQX2M \Reg_File_reg[3][4]  ( .D(n71), .CK(REF_CLK), .RN(n201), .Q(REG3[4]) );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n67), .CK(REF_CLK), .RN(n199), .Q(REG3[0]) );
  DFFSQX2M \Reg_File_reg[2][7]  ( .D(n66), .CK(REF_CLK), .SN(RST), .Q(REG2[7])
         );
  DFFRQX2M \Reg_File_reg[2][5]  ( .D(n64), .CK(REF_CLK), .RN(n199), .Q(REG2[5]) );
  DFFRQX2M \Reg_File_reg[2][6]  ( .D(n65), .CK(REF_CLK), .RN(n199), .Q(REG2[6]) );
  DFFRQX2M \Reg_File_reg[2][4]  ( .D(n63), .CK(REF_CLK), .RN(n199), .Q(REG2[4]) );
  DFFRQX2M \Reg_File_reg[2][2]  ( .D(n61), .CK(REF_CLK), .RN(n199), .Q(REG2[2]) );
  DFFRQX2M \Reg_File_reg[2][3]  ( .D(n62), .CK(REF_CLK), .RN(n199), .Q(REG2[3]) );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n44), .CK(REF_CLK), .RN(n203), .Q(REG0[1]) );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n43), .CK(REF_CLK), .RN(n202), .Q(REG0[0]) );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n45), .CK(REF_CLK), .RN(n201), .Q(REG0[2]) );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n46), .CK(REF_CLK), .RN(n204), .Q(REG0[3]) );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n47), .CK(REF_CLK), .RN(n203), .Q(REG0[4]) );
  DFFRQX2M \Reg_File_reg[0][5]  ( .D(n48), .CK(REF_CLK), .RN(n204), .Q(REG0[5]) );
  DFFRQX2M \Reg_File_reg[0][6]  ( .D(n49), .CK(REF_CLK), .RN(n204), .Q(REG0[6]) );
  DFFRQX2M \Reg_File_reg[1][6]  ( .D(n57), .CK(REF_CLK), .RN(n199), .Q(REG1[6]) );
  DFFRQX2M \Reg_File_reg[0][7]  ( .D(n50), .CK(REF_CLK), .RN(n204), .Q(REG0[7]) );
  DFFRQX2M \Reg_File_reg[1][1]  ( .D(n52), .CK(REF_CLK), .RN(n204), .Q(REG1[1]) );
  DFFRQX2M \Reg_File_reg[1][5]  ( .D(n56), .CK(REF_CLK), .RN(n199), .Q(REG1[5]) );
  DFFRQX2M \Reg_File_reg[1][4]  ( .D(n55), .CK(REF_CLK), .RN(n199), .Q(REG1[4]) );
  DFFRQX2M \Reg_File_reg[1][7]  ( .D(n58), .CK(REF_CLK), .RN(n199), .Q(REG1[7]) );
  DFFRQX2M \Reg_File_reg[1][3]  ( .D(n54), .CK(REF_CLK), .RN(n204), .Q(REG1[3]) );
  DFFRQX2M \Reg_File_reg[1][2]  ( .D(n53), .CK(REF_CLK), .RN(n199), .Q(REG1[2]) );
  DFFRQX2M \Reg_File_reg[1][0]  ( .D(n51), .CK(REF_CLK), .RN(n204), .Q(REG1[0]) );
  NOR2BX2M U3 ( .AN(N13), .B(n192), .Y(n25) );
  NOR2BX2M U4 ( .AN(N13), .B(n197), .Y(n28) );
  NOR2X2M U5 ( .A(n197), .B(N13), .Y(n22) );
  NOR2X2M U6 ( .A(n192), .B(N13), .Y(n17) );
  INVX2M U7 ( .A(n193), .Y(n194) );
  INVX2M U8 ( .A(n191), .Y(n192) );
  INVX2M U9 ( .A(n193), .Y(n195) );
  BUFX2M U10 ( .A(n196), .Y(n193) );
  BUFX2M U11 ( .A(n197), .Y(n191) );
  INVX2M U12 ( .A(n205), .Y(n203) );
  INVX2M U13 ( .A(n208), .Y(n199) );
  INVX2M U14 ( .A(n207), .Y(n200) );
  INVX2M U15 ( .A(n206), .Y(n201) );
  INVX2M U16 ( .A(n206), .Y(n202) );
  INVX2M U17 ( .A(n205), .Y(n204) );
  NOR2X2M U18 ( .A(n14), .B(n205), .Y(n15) );
  BUFX2M U19 ( .A(n198), .Y(n205) );
  BUFX2M U20 ( .A(n198), .Y(n206) );
  BUFX2M U21 ( .A(n206), .Y(n208) );
  BUFX2M U22 ( .A(n206), .Y(n207) );
  NOR2BX2M U23 ( .AN(n29), .B(N11), .Y(n18) );
  NOR2BX2M U24 ( .AN(n29), .B(n196), .Y(n20) );
  NOR2BX2M U25 ( .AN(n40), .B(N11), .Y(n32) );
  NOR2BX2M U26 ( .AN(n40), .B(n196), .Y(n34) );
  NAND2X2M U27 ( .A(n34), .B(n25), .Y(n38) );
  NAND2X2M U28 ( .A(n32), .B(n28), .Y(n39) );
  NAND2X2M U29 ( .A(n34), .B(n28), .Y(n41) );
  NAND2X2M U30 ( .A(n20), .B(n17), .Y(n19) );
  NAND2X2M U31 ( .A(n22), .B(n18), .Y(n21) );
  NAND2X2M U32 ( .A(n22), .B(n20), .Y(n23) );
  NAND2X2M U33 ( .A(n25), .B(n18), .Y(n24) );
  NAND2X2M U34 ( .A(n25), .B(n20), .Y(n26) );
  NAND2X2M U35 ( .A(n28), .B(n18), .Y(n27) );
  NAND2X2M U36 ( .A(n28), .B(n20), .Y(n30) );
  NAND2X2M U37 ( .A(n32), .B(n25), .Y(n37) );
  NAND2X2M U38 ( .A(n32), .B(n17), .Y(n31) );
  NAND2X2M U39 ( .A(n34), .B(n17), .Y(n33) );
  NAND2X2M U40 ( .A(n32), .B(n22), .Y(n35) );
  NAND2X2M U41 ( .A(n34), .B(n22), .Y(n36) );
  NAND2X2M U42 ( .A(n17), .B(n18), .Y(n16) );
  NOR2X2M U43 ( .A(n217), .B(RdEn), .Y(n13) );
  NAND2X2M U44 ( .A(RdEn), .B(n217), .Y(n14) );
  INVX2M U45 ( .A(WrData[0]), .Y(n216) );
  INVX2M U46 ( .A(WrData[1]), .Y(n215) );
  INVX2M U47 ( .A(WrData[2]), .Y(n214) );
  INVX2M U48 ( .A(WrData[3]), .Y(n213) );
  INVX2M U49 ( .A(WrData[4]), .Y(n212) );
  NOR2BX2M U50 ( .AN(n13), .B(N14), .Y(n29) );
  INVX2M U51 ( .A(WrEn), .Y(n217) );
  AND2X2M U52 ( .A(N14), .B(n13), .Y(n40) );
  INVX2M U53 ( .A(N11), .Y(n196) );
  INVX2M U54 ( .A(N12), .Y(n197) );
  INVX2M U55 ( .A(RST), .Y(n198) );
  INVX2M U56 ( .A(WrData[5]), .Y(n211) );
  INVX2M U57 ( .A(WrData[6]), .Y(n210) );
  INVX2M U58 ( .A(WrData[7]), .Y(n209) );
  OAI2BB2X1M U59 ( .B0(n16), .B1(n216), .A0N(REG0[0]), .A1N(n16), .Y(n43) );
  OAI2BB2X1M U60 ( .B0(n16), .B1(n215), .A0N(REG0[1]), .A1N(n16), .Y(n44) );
  OAI2BB2X1M U61 ( .B0(n16), .B1(n214), .A0N(REG0[2]), .A1N(n16), .Y(n45) );
  OAI2BB2X1M U62 ( .B0(n16), .B1(n213), .A0N(REG0[3]), .A1N(n16), .Y(n46) );
  OAI2BB2X1M U63 ( .B0(n16), .B1(n212), .A0N(REG0[4]), .A1N(n16), .Y(n47) );
  OAI2BB2X1M U64 ( .B0(n16), .B1(n211), .A0N(REG0[5]), .A1N(n16), .Y(n48) );
  OAI2BB2X1M U65 ( .B0(n16), .B1(n210), .A0N(REG0[6]), .A1N(n16), .Y(n49) );
  OAI2BB2X1M U66 ( .B0(n16), .B1(n209), .A0N(REG0[7]), .A1N(n16), .Y(n50) );
  OAI2BB2X1M U67 ( .B0(n216), .B1(n19), .A0N(REG1[0]), .A1N(n19), .Y(n51) );
  OAI2BB2X1M U68 ( .B0(n215), .B1(n19), .A0N(REG1[1]), .A1N(n19), .Y(n52) );
  OAI2BB2X1M U69 ( .B0(n214), .B1(n19), .A0N(REG1[2]), .A1N(n19), .Y(n53) );
  OAI2BB2X1M U70 ( .B0(n213), .B1(n19), .A0N(REG1[3]), .A1N(n19), .Y(n54) );
  OAI2BB2X1M U71 ( .B0(n212), .B1(n19), .A0N(REG1[4]), .A1N(n19), .Y(n55) );
  OAI2BB2X1M U72 ( .B0(n211), .B1(n19), .A0N(REG1[5]), .A1N(n19), .Y(n56) );
  OAI2BB2X1M U73 ( .B0(n210), .B1(n19), .A0N(REG1[6]), .A1N(n19), .Y(n57) );
  OAI2BB2X1M U74 ( .B0(n209), .B1(n19), .A0N(REG1[7]), .A1N(n19), .Y(n58) );
  OAI2BB2X1M U75 ( .B0(n216), .B1(n24), .A0N(\Reg_File[4][0] ), .A1N(n24), .Y(
        n75) );
  OAI2BB2X1M U76 ( .B0(n215), .B1(n24), .A0N(\Reg_File[4][1] ), .A1N(n24), .Y(
        n76) );
  OAI2BB2X1M U77 ( .B0(n214), .B1(n24), .A0N(\Reg_File[4][2] ), .A1N(n24), .Y(
        n77) );
  OAI2BB2X1M U78 ( .B0(n213), .B1(n24), .A0N(\Reg_File[4][3] ), .A1N(n24), .Y(
        n78) );
  OAI2BB2X1M U79 ( .B0(n212), .B1(n24), .A0N(\Reg_File[4][4] ), .A1N(n24), .Y(
        n79) );
  OAI2BB2X1M U80 ( .B0(n211), .B1(n24), .A0N(\Reg_File[4][5] ), .A1N(n24), .Y(
        n80) );
  OAI2BB2X1M U81 ( .B0(n210), .B1(n24), .A0N(\Reg_File[4][6] ), .A1N(n24), .Y(
        n81) );
  OAI2BB2X1M U82 ( .B0(n209), .B1(n24), .A0N(\Reg_File[4][7] ), .A1N(n24), .Y(
        n82) );
  OAI2BB2X1M U83 ( .B0(n216), .B1(n26), .A0N(\Reg_File[5][0] ), .A1N(n26), .Y(
        n83) );
  OAI2BB2X1M U84 ( .B0(n215), .B1(n26), .A0N(\Reg_File[5][1] ), .A1N(n26), .Y(
        n84) );
  OAI2BB2X1M U85 ( .B0(n214), .B1(n26), .A0N(\Reg_File[5][2] ), .A1N(n26), .Y(
        n85) );
  OAI2BB2X1M U86 ( .B0(n213), .B1(n26), .A0N(\Reg_File[5][3] ), .A1N(n26), .Y(
        n86) );
  OAI2BB2X1M U87 ( .B0(n212), .B1(n26), .A0N(\Reg_File[5][4] ), .A1N(n26), .Y(
        n87) );
  OAI2BB2X1M U88 ( .B0(n211), .B1(n26), .A0N(\Reg_File[5][5] ), .A1N(n26), .Y(
        n88) );
  OAI2BB2X1M U89 ( .B0(n210), .B1(n26), .A0N(\Reg_File[5][6] ), .A1N(n26), .Y(
        n89) );
  OAI2BB2X1M U90 ( .B0(n209), .B1(n26), .A0N(\Reg_File[5][7] ), .A1N(n26), .Y(
        n90) );
  OAI2BB2X1M U91 ( .B0(n216), .B1(n27), .A0N(\Reg_File[6][0] ), .A1N(n27), .Y(
        n91) );
  OAI2BB2X1M U92 ( .B0(n215), .B1(n27), .A0N(\Reg_File[6][1] ), .A1N(n27), .Y(
        n92) );
  OAI2BB2X1M U93 ( .B0(n214), .B1(n27), .A0N(\Reg_File[6][2] ), .A1N(n27), .Y(
        n93) );
  OAI2BB2X1M U94 ( .B0(n213), .B1(n27), .A0N(\Reg_File[6][3] ), .A1N(n27), .Y(
        n94) );
  OAI2BB2X1M U95 ( .B0(n212), .B1(n27), .A0N(\Reg_File[6][4] ), .A1N(n27), .Y(
        n95) );
  OAI2BB2X1M U96 ( .B0(n211), .B1(n27), .A0N(\Reg_File[6][5] ), .A1N(n27), .Y(
        n96) );
  OAI2BB2X1M U97 ( .B0(n210), .B1(n27), .A0N(\Reg_File[6][6] ), .A1N(n27), .Y(
        n97) );
  OAI2BB2X1M U98 ( .B0(n209), .B1(n27), .A0N(\Reg_File[6][7] ), .A1N(n27), .Y(
        n98) );
  OAI2BB2X1M U99 ( .B0(n216), .B1(n30), .A0N(\Reg_File[7][0] ), .A1N(n30), .Y(
        n99) );
  OAI2BB2X1M U100 ( .B0(n215), .B1(n30), .A0N(\Reg_File[7][1] ), .A1N(n30), 
        .Y(n100) );
  OAI2BB2X1M U101 ( .B0(n214), .B1(n30), .A0N(\Reg_File[7][2] ), .A1N(n30), 
        .Y(n101) );
  OAI2BB2X1M U102 ( .B0(n213), .B1(n30), .A0N(\Reg_File[7][3] ), .A1N(n30), 
        .Y(n102) );
  OAI2BB2X1M U103 ( .B0(n212), .B1(n30), .A0N(\Reg_File[7][4] ), .A1N(n30), 
        .Y(n103) );
  OAI2BB2X1M U104 ( .B0(n211), .B1(n30), .A0N(\Reg_File[7][5] ), .A1N(n30), 
        .Y(n104) );
  OAI2BB2X1M U105 ( .B0(n210), .B1(n30), .A0N(\Reg_File[7][6] ), .A1N(n30), 
        .Y(n105) );
  OAI2BB2X1M U106 ( .B0(n209), .B1(n30), .A0N(\Reg_File[7][7] ), .A1N(n30), 
        .Y(n106) );
  OAI2BB2X1M U107 ( .B0(n216), .B1(n31), .A0N(\Reg_File[8][0] ), .A1N(n31), 
        .Y(n107) );
  OAI2BB2X1M U108 ( .B0(n215), .B1(n31), .A0N(\Reg_File[8][1] ), .A1N(n31), 
        .Y(n108) );
  OAI2BB2X1M U109 ( .B0(n214), .B1(n31), .A0N(\Reg_File[8][2] ), .A1N(n31), 
        .Y(n109) );
  OAI2BB2X1M U110 ( .B0(n213), .B1(n31), .A0N(\Reg_File[8][3] ), .A1N(n31), 
        .Y(n110) );
  OAI2BB2X1M U111 ( .B0(n212), .B1(n31), .A0N(\Reg_File[8][4] ), .A1N(n31), 
        .Y(n111) );
  OAI2BB2X1M U112 ( .B0(n211), .B1(n31), .A0N(\Reg_File[8][5] ), .A1N(n31), 
        .Y(n112) );
  OAI2BB2X1M U113 ( .B0(n210), .B1(n31), .A0N(\Reg_File[8][6] ), .A1N(n31), 
        .Y(n113) );
  OAI2BB2X1M U114 ( .B0(n209), .B1(n31), .A0N(\Reg_File[8][7] ), .A1N(n31), 
        .Y(n114) );
  OAI2BB2X1M U115 ( .B0(n216), .B1(n33), .A0N(\Reg_File[9][0] ), .A1N(n33), 
        .Y(n115) );
  OAI2BB2X1M U116 ( .B0(n215), .B1(n33), .A0N(\Reg_File[9][1] ), .A1N(n33), 
        .Y(n116) );
  OAI2BB2X1M U117 ( .B0(n214), .B1(n33), .A0N(\Reg_File[9][2] ), .A1N(n33), 
        .Y(n117) );
  OAI2BB2X1M U118 ( .B0(n213), .B1(n33), .A0N(\Reg_File[9][3] ), .A1N(n33), 
        .Y(n118) );
  OAI2BB2X1M U119 ( .B0(n212), .B1(n33), .A0N(\Reg_File[9][4] ), .A1N(n33), 
        .Y(n119) );
  OAI2BB2X1M U120 ( .B0(n211), .B1(n33), .A0N(\Reg_File[9][5] ), .A1N(n33), 
        .Y(n120) );
  OAI2BB2X1M U121 ( .B0(n210), .B1(n33), .A0N(\Reg_File[9][6] ), .A1N(n33), 
        .Y(n121) );
  OAI2BB2X1M U122 ( .B0(n209), .B1(n33), .A0N(\Reg_File[9][7] ), .A1N(n33), 
        .Y(n122) );
  OAI2BB2X1M U123 ( .B0(n216), .B1(n35), .A0N(\Reg_File[10][0] ), .A1N(n35), 
        .Y(n123) );
  OAI2BB2X1M U124 ( .B0(n215), .B1(n35), .A0N(\Reg_File[10][1] ), .A1N(n35), 
        .Y(n124) );
  OAI2BB2X1M U125 ( .B0(n214), .B1(n35), .A0N(\Reg_File[10][2] ), .A1N(n35), 
        .Y(n125) );
  OAI2BB2X1M U126 ( .B0(n213), .B1(n35), .A0N(\Reg_File[10][3] ), .A1N(n35), 
        .Y(n126) );
  OAI2BB2X1M U127 ( .B0(n212), .B1(n35), .A0N(\Reg_File[10][4] ), .A1N(n35), 
        .Y(n127) );
  OAI2BB2X1M U128 ( .B0(n211), .B1(n35), .A0N(\Reg_File[10][5] ), .A1N(n35), 
        .Y(n128) );
  OAI2BB2X1M U129 ( .B0(n210), .B1(n35), .A0N(\Reg_File[10][6] ), .A1N(n35), 
        .Y(n129) );
  OAI2BB2X1M U130 ( .B0(n209), .B1(n35), .A0N(\Reg_File[10][7] ), .A1N(n35), 
        .Y(n130) );
  OAI2BB2X1M U131 ( .B0(n216), .B1(n36), .A0N(\Reg_File[11][0] ), .A1N(n36), 
        .Y(n131) );
  OAI2BB2X1M U132 ( .B0(n215), .B1(n36), .A0N(\Reg_File[11][1] ), .A1N(n36), 
        .Y(n132) );
  OAI2BB2X1M U133 ( .B0(n214), .B1(n36), .A0N(\Reg_File[11][2] ), .A1N(n36), 
        .Y(n133) );
  OAI2BB2X1M U134 ( .B0(n213), .B1(n36), .A0N(\Reg_File[11][3] ), .A1N(n36), 
        .Y(n134) );
  OAI2BB2X1M U135 ( .B0(n212), .B1(n36), .A0N(\Reg_File[11][4] ), .A1N(n36), 
        .Y(n135) );
  OAI2BB2X1M U136 ( .B0(n211), .B1(n36), .A0N(\Reg_File[11][5] ), .A1N(n36), 
        .Y(n136) );
  OAI2BB2X1M U137 ( .B0(n210), .B1(n36), .A0N(\Reg_File[11][6] ), .A1N(n36), 
        .Y(n137) );
  OAI2BB2X1M U138 ( .B0(n209), .B1(n36), .A0N(\Reg_File[11][7] ), .A1N(n36), 
        .Y(n138) );
  OAI2BB2X1M U139 ( .B0(n216), .B1(n37), .A0N(\Reg_File[12][0] ), .A1N(n37), 
        .Y(n139) );
  OAI2BB2X1M U140 ( .B0(n215), .B1(n37), .A0N(\Reg_File[12][1] ), .A1N(n37), 
        .Y(n140) );
  OAI2BB2X1M U141 ( .B0(n214), .B1(n37), .A0N(\Reg_File[12][2] ), .A1N(n37), 
        .Y(n141) );
  OAI2BB2X1M U142 ( .B0(n213), .B1(n37), .A0N(\Reg_File[12][3] ), .A1N(n37), 
        .Y(n142) );
  OAI2BB2X1M U143 ( .B0(n212), .B1(n37), .A0N(\Reg_File[12][4] ), .A1N(n37), 
        .Y(n143) );
  OAI2BB2X1M U144 ( .B0(n211), .B1(n37), .A0N(\Reg_File[12][5] ), .A1N(n37), 
        .Y(n144) );
  OAI2BB2X1M U145 ( .B0(n210), .B1(n37), .A0N(\Reg_File[12][6] ), .A1N(n37), 
        .Y(n145) );
  OAI2BB2X1M U146 ( .B0(n209), .B1(n37), .A0N(\Reg_File[12][7] ), .A1N(n37), 
        .Y(n146) );
  OAI2BB2X1M U147 ( .B0(n216), .B1(n38), .A0N(\Reg_File[13][0] ), .A1N(n38), 
        .Y(n147) );
  OAI2BB2X1M U148 ( .B0(n215), .B1(n38), .A0N(\Reg_File[13][1] ), .A1N(n38), 
        .Y(n148) );
  OAI2BB2X1M U149 ( .B0(n214), .B1(n38), .A0N(\Reg_File[13][2] ), .A1N(n38), 
        .Y(n149) );
  OAI2BB2X1M U150 ( .B0(n213), .B1(n38), .A0N(\Reg_File[13][3] ), .A1N(n38), 
        .Y(n150) );
  OAI2BB2X1M U151 ( .B0(n212), .B1(n38), .A0N(\Reg_File[13][4] ), .A1N(n38), 
        .Y(n151) );
  OAI2BB2X1M U152 ( .B0(n211), .B1(n38), .A0N(\Reg_File[13][5] ), .A1N(n38), 
        .Y(n152) );
  OAI2BB2X1M U153 ( .B0(n210), .B1(n38), .A0N(\Reg_File[13][6] ), .A1N(n38), 
        .Y(n153) );
  OAI2BB2X1M U154 ( .B0(n209), .B1(n38), .A0N(\Reg_File[13][7] ), .A1N(n38), 
        .Y(n154) );
  OAI2BB2X1M U155 ( .B0(n216), .B1(n39), .A0N(\Reg_File[14][0] ), .A1N(n39), 
        .Y(n155) );
  OAI2BB2X1M U156 ( .B0(n215), .B1(n39), .A0N(\Reg_File[14][1] ), .A1N(n39), 
        .Y(n156) );
  OAI2BB2X1M U157 ( .B0(n214), .B1(n39), .A0N(\Reg_File[14][2] ), .A1N(n39), 
        .Y(n157) );
  OAI2BB2X1M U158 ( .B0(n213), .B1(n39), .A0N(\Reg_File[14][3] ), .A1N(n39), 
        .Y(n158) );
  OAI2BB2X1M U159 ( .B0(n212), .B1(n39), .A0N(\Reg_File[14][4] ), .A1N(n39), 
        .Y(n159) );
  OAI2BB2X1M U160 ( .B0(n211), .B1(n39), .A0N(\Reg_File[14][5] ), .A1N(n39), 
        .Y(n160) );
  OAI2BB2X1M U161 ( .B0(n210), .B1(n39), .A0N(\Reg_File[14][6] ), .A1N(n39), 
        .Y(n161) );
  OAI2BB2X1M U162 ( .B0(n209), .B1(n39), .A0N(\Reg_File[14][7] ), .A1N(n39), 
        .Y(n162) );
  OAI2BB2X1M U163 ( .B0(n216), .B1(n41), .A0N(\Reg_File[15][0] ), .A1N(n41), 
        .Y(n163) );
  OAI2BB2X1M U164 ( .B0(n215), .B1(n41), .A0N(\Reg_File[15][1] ), .A1N(n41), 
        .Y(n164) );
  OAI2BB2X1M U165 ( .B0(n214), .B1(n41), .A0N(\Reg_File[15][2] ), .A1N(n41), 
        .Y(n165) );
  OAI2BB2X1M U166 ( .B0(n213), .B1(n41), .A0N(\Reg_File[15][3] ), .A1N(n41), 
        .Y(n166) );
  OAI2BB2X1M U167 ( .B0(n212), .B1(n41), .A0N(\Reg_File[15][4] ), .A1N(n41), 
        .Y(n167) );
  OAI2BB2X1M U168 ( .B0(n211), .B1(n41), .A0N(\Reg_File[15][5] ), .A1N(n41), 
        .Y(n168) );
  OAI2BB2X1M U169 ( .B0(n210), .B1(n41), .A0N(\Reg_File[15][6] ), .A1N(n41), 
        .Y(n169) );
  OAI2BB2X1M U170 ( .B0(n209), .B1(n41), .A0N(\Reg_File[15][7] ), .A1N(n41), 
        .Y(n170) );
  OAI2BB2X1M U171 ( .B0(n215), .B1(n21), .A0N(REG2[1]), .A1N(n21), .Y(n60) );
  OAI2BB2X1M U172 ( .B0(n214), .B1(n21), .A0N(REG2[2]), .A1N(n21), .Y(n61) );
  OAI2BB2X1M U173 ( .B0(n213), .B1(n21), .A0N(REG2[3]), .A1N(n21), .Y(n62) );
  OAI2BB2X1M U174 ( .B0(n212), .B1(n21), .A0N(REG2[4]), .A1N(n21), .Y(n63) );
  OAI2BB2X1M U175 ( .B0(n211), .B1(n21), .A0N(REG2[5]), .A1N(n21), .Y(n64) );
  OAI2BB2X1M U176 ( .B0(n210), .B1(n21), .A0N(REG2[6]), .A1N(n21), .Y(n65) );
  OAI2BB2X1M U177 ( .B0(n216), .B1(n23), .A0N(REG3[0]), .A1N(n23), .Y(n67) );
  OAI2BB2X1M U178 ( .B0(n215), .B1(n23), .A0N(REG3[1]), .A1N(n23), .Y(n68) );
  OAI2BB2X1M U179 ( .B0(n214), .B1(n23), .A0N(REG3[2]), .A1N(n23), .Y(n69) );
  OAI2BB2X1M U180 ( .B0(n213), .B1(n23), .A0N(REG3[3]), .A1N(n23), .Y(n70) );
  OAI2BB2X1M U181 ( .B0(n212), .B1(n23), .A0N(REG3[4]), .A1N(n23), .Y(n71) );
  OAI2BB2X1M U182 ( .B0(n210), .B1(n23), .A0N(REG3[6]), .A1N(n23), .Y(n73) );
  OAI2BB2X1M U183 ( .B0(n209), .B1(n23), .A0N(REG3[7]), .A1N(n23), .Y(n74) );
  OAI2BB2X1M U184 ( .B0(n216), .B1(n21), .A0N(REG2[0]), .A1N(n21), .Y(n59) );
  OAI2BB2X1M U185 ( .B0(n209), .B1(n21), .A0N(REG2[7]), .A1N(n21), .Y(n66) );
  OAI2BB2X1M U186 ( .B0(n211), .B1(n23), .A0N(REG3[5]), .A1N(n23), .Y(n72) );
  MX4X1M U187 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n194), .S1(N12), .Y(n7)
         );
  MX4X1M U188 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n195), .S1(N12), .Y(n1)
         );
  MX4X1M U189 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n194), .S1(n192), .Y(n9) );
  MX4X1M U190 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n194), .S1(n192), .Y(
        n171) );
  MX4X1M U191 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n194), .S1(n192), .Y(
        n175) );
  MX4X1M U192 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n195), .S1(N12), .Y(
        n179) );
  MX4X1M U193 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n195), .S1(N12), .Y(
        n183) );
  MX4X1M U194 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n195), .S1(N12), .Y(
        n187) );
  MX4X1M U195 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U196 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n4) );
  MX4X1M U197 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(N11), .S1(N12), .Y(n2)
         );
  MX4X1M U198 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(N11), .S1(N12), .Y(n3) );
  MX4X1M U199 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U200 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(N11), .S1(N12), .Y(n6)
         );
  MX4X1M U201 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n194), .S1(N12), .Y(n5)
         );
  MX4X1M U202 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n194), 
        .S1(N12), .Y(n8) );
  MX4X1M U203 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U204 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n194), 
        .S1(n192), .Y(n12) );
  MX4X1M U205 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n194), .S1(n192), .Y(
        n10) );
  MX4X1M U206 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n194), .S1(n192), .Y(n11)
         );
  MX4X1M U207 ( .A(n174), .B(n172), .C(n173), .D(n171), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U208 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n194), 
        .S1(n192), .Y(n174) );
  MX4X1M U209 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n194), .S1(n192), .Y(
        n172) );
  MX4X1M U210 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n194), .S1(n192), .Y(n173) );
  MX4X1M U211 ( .A(n178), .B(n176), .C(n177), .D(n175), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U212 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n195), 
        .S1(n192), .Y(n178) );
  MX4X1M U213 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n194), .S1(n192), .Y(
        n176) );
  MX4X1M U214 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n194), .S1(n192), .Y(n177) );
  MX4X1M U215 ( .A(n182), .B(n180), .C(n181), .D(n179), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U216 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n195), 
        .S1(N12), .Y(n182) );
  MX4X1M U217 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(n195), .S1(N12), .Y(
        n180) );
  MX4X1M U218 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n195), .S1(n192), .Y(n181) );
  MX4X1M U219 ( .A(n186), .B(n184), .C(n185), .D(n183), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U220 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n195), 
        .S1(N12), .Y(n186) );
  MX4X1M U221 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(n195), .S1(N12), .Y(
        n184) );
  MX4X1M U222 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n195), .S1(N12), .Y(n185)
         );
  MX4X1M U223 ( .A(n190), .B(n188), .C(n189), .D(n187), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U224 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n195), 
        .S1(N12), .Y(n190) );
  MX4X1M U225 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(n195), .S1(N12), .Y(
        n188) );
  MX4X1M U226 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n195), .S1(N12), .Y(n189)
         );
  OAI2BB1X2M U227 ( .A0N(RdData_Valid), .A1N(n13), .B0(n14), .Y(n42) );
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
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n15), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n17), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n18), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n19), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n16), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n19), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n19), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n19), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n19), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n19), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n19), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n16), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n15), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n15), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n16), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n18), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n17), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n17), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n18), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n16), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n17), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n18), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n17), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n18), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n18), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n14), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n13), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n14), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n20) );
  XNOR2X2M U2 ( .A(n20), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n20), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n20), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n20), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n20), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n20), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n20), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n20), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n20), .Y(n5) );
  NAND2X2M U15 ( .A(n7), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n8) );
  INVX2M U17 ( .A(n20), .Y(n7) );
  NAND2X2M U18 ( .A(n9), .B(n10), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U19 ( .A(a[2]), .Y(n10) );
  INVX2M U20 ( .A(n20), .Y(n9) );
  NAND2X2M U21 ( .A(n9), .B(n11), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n11) );
  NAND2X2M U23 ( .A(n9), .B(n12), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n12) );
  NAND2X2M U25 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n2) );
  INVX2M U27 ( .A(n20), .Y(n1) );
  XNOR2X2M U28 ( .A(n20), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U29 ( .A(b[6]), .Y(n14) );
  INVX2M U30 ( .A(b[1]), .Y(n19) );
  INVX2M U31 ( .A(b[2]), .Y(n18) );
  INVX2M U32 ( .A(b[3]), .Y(n17) );
  INVX2M U33 ( .A(b[4]), .Y(n16) );
  INVX2M U34 ( .A(b[5]), .Y(n15) );
  INVX2M U35 ( .A(b[7]), .Y(n13) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U42 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U48 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U53 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U57 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U60 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U61 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U62 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U63 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U64 ( .A(\u_div/CryTmp[7][1] ), .B(n21), .C(n19), .D(n18), .Y(
        quotient[7]) );
  AND3X1M U65 ( .A(n21), .B(n18), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U66 ( .A(\u_div/CryTmp[5][3] ), .B(n21), .Y(quotient[5]) );
  AND2X1M U67 ( .A(n22), .B(n17), .Y(n21) );
  AND2X1M U68 ( .A(\u_div/CryTmp[4][4] ), .B(n22), .Y(quotient[4]) );
  AND3X1M U69 ( .A(n23), .B(n16), .C(n15), .Y(n22) );
  AND3X1M U70 ( .A(n23), .B(n15), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U71 ( .A(\u_div/CryTmp[2][6] ), .B(n23), .Y(quotient[2]) );
  NOR2X1M U72 ( .A(b[6]), .B(b[7]), .Y(n23) );
  AND2X1M U73 ( .A(\u_div/CryTmp[1][7] ), .B(n13), .Y(quotient[1]) );
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

  ALU_WIDTH8_FUNC4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , 
        \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n12, n11, n13, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
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
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
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
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
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
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n12) );
  AND2X2M U19 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n13) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U23 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  AND2X2M U26 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[2]), .Y(n37) );
  INVX2M U38 ( .A(A[0]), .Y(n39) );
  INVX2M U39 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
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
  INVX2M U51 ( .A(B[0]), .Y(n31) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
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
endmodule


module ALU_WIDTH8_FUNC4 ( A, B, ALU_OUT, ALU_FUN, REF_CLK, EN, RST, 
        ALU_OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  output [15:0] ALU_OUT;
  input [3:0] ALU_FUN;
  input REF_CLK, EN, RST;
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
         n127, n129, n130, n132, n134, n135, n136, n137, n138, n139, n147,
         n148, n155, n3, n4, n5, n6, n7, n8, n9, n20, n32, n34, n37, n40, n41,
         n52, n56, n66, n68, n69, n70, n79, n81, n90, n92, n101, n103, n112,
         n114, n122, n124, n128, n131, n133, n140, n141, n142, n143, n144,
         n145, n146, n149, n150, n151, n152, n153, n154, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189;

  ALU_WIDTH8_FUNC4_DW_div_uns_0 div_24 ( .a({n40, n37, n34, n32, n20, n9, n8, 
        n7}), .b({B[7], n6, B[5:0]}), .quotient({N134, N133, N132, N131, N130, 
        N129, N128, N127}) );
  ALU_WIDTH8_FUNC4_DW01_sub_0 sub_19 ( .A({1'b0, n40, n37, n34, n32, n20, n9, 
        n8, n7}), .B({1'b0, B[7], n6, B[5:0]}), .CI(1'b0), .DIFF({N109, N108, 
        N107, N106, N105, N104, N103, N102, N101}) );
  ALU_WIDTH8_FUNC4_DW01_add_0 add_18 ( .A({1'b0, n40, n37, n34, n32, n20, n9, 
        n8, n7}), .B({1'b0, B[7], n6, B[5:0]}), .CI(1'b0), .SUM({N100, N99, 
        N98, N97, N96, N95, N94, N93, N92}) );
  ALU_WIDTH8_FUNC4_DW02_mult_0 mult_20 ( .A({n40, n37, n34, n32, n20, n9, n8, 
        n7}), .B({B[7], n6, B[5:0]}), .TC(1'b0), .PRODUCT({N125, N124, N123, 
        N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, 
        N110}) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(n148), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[1])
         );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(n147), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[0])
         );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(n154), .CK(REF_CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(n156), .CK(REF_CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(n157), .CK(REF_CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(n158), .CK(REF_CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(n159), .CK(REF_CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(n160), .CK(REF_CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(n161), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[9])
         );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(n162), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[7])
         );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(n163), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[6])
         );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(n164), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[5])
         );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(n165), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[4])
         );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(n166), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[3])
         );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(n167), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[2])
         );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(n155), .CK(REF_CLK), .RN(RST), .Q(ALU_OUT[8])
         );
  DFFRQX2M ALU_OUT_VALID_reg ( .D(n139), .CK(REF_CLK), .RN(RST), .Q(
        ALU_OUT_VALID) );
  NOR3BX2M U3 ( .AN(n129), .B(n174), .C(ALU_FUN[0]), .Y(n29) );
  BUFX2M U4 ( .A(A[6]), .Y(n37) );
  INVX2M U7 ( .A(n44), .Y(n169) );
  NOR2BX2M U8 ( .AN(n29), .B(n41), .Y(n12) );
  NAND4X2M U9 ( .A(n53), .B(n127), .C(n169), .D(n138), .Y(n135) );
  NOR4X1M U10 ( .A(n39), .B(n29), .C(n3), .D(n27), .Y(n138) );
  NOR3BX2M U11 ( .AN(n129), .B(n174), .C(n175), .Y(n33) );
  OAI22X1M U12 ( .A0(n172), .A1(n125), .B0(n174), .B1(n126), .Y(n44) );
  OAI22X1M U13 ( .A0(n172), .A1(n125), .B0(n126), .B1(n127), .Y(n43) );
  NOR2X2M U14 ( .A(n172), .B(n174), .Y(n39) );
  NOR2BX2M U15 ( .AN(n129), .B(n127), .Y(n30) );
  NAND2X2M U16 ( .A(n175), .B(n174), .Y(n127) );
  INVX2M U17 ( .A(n4), .Y(n170) );
  INVX2M U18 ( .A(n53), .Y(n171) );
  NOR2X2M U19 ( .A(n125), .B(ALU_FUN[3]), .Y(n27) );
  NAND2X2M U20 ( .A(ALU_FUN[2]), .B(n172), .Y(n126) );
  NAND3X2M U21 ( .A(n174), .B(n173), .C(ALU_FUN[0]), .Y(n125) );
  INVX2M U22 ( .A(ALU_FUN[3]), .Y(n172) );
  INVX2M U23 ( .A(ALU_FUN[1]), .Y(n174) );
  INVX2M U24 ( .A(ALU_FUN[2]), .Y(n173) );
  INVX2M U25 ( .A(n52), .Y(n41) );
  BUFX2M U26 ( .A(n26), .Y(n3) );
  NOR3X2M U27 ( .A(n126), .B(ALU_FUN[1]), .C(n175), .Y(n26) );
  NOR3BX2M U28 ( .AN(n39), .B(n173), .C(ALU_FUN[0]), .Y(n51) );
  NOR3X2M U29 ( .A(n172), .B(ALU_FUN[1]), .C(n173), .Y(n50) );
  NAND2X2M U30 ( .A(n50), .B(ALU_FUN[0]), .Y(n53) );
  BUFX2M U31 ( .A(n42), .Y(n5) );
  NOR3X2M U32 ( .A(n172), .B(ALU_FUN[2]), .C(n127), .Y(n42) );
  INVX2M U33 ( .A(ALU_FUN[0]), .Y(n175) );
  NOR2X2M U34 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .Y(n129) );
  BUFX2M U35 ( .A(n31), .Y(n4) );
  NOR3X2M U36 ( .A(n174), .B(ALU_FUN[0]), .C(n126), .Y(n31) );
  NOR2BX2M U37 ( .AN(n50), .B(ALU_FUN[0]), .Y(n28) );
  AOI222X1M U38 ( .A0(n4), .A1(n189), .B0(N127), .B1(n33), .C0(n8), .C1(n171), 
        .Y(n23) );
  AOI222X1M U39 ( .A0(n4), .A1(n150), .B0(N128), .B1(n33), .C0(n9), .C1(n171), 
        .Y(n47) );
  AOI21X2M U40 ( .A0(n169), .A1(n134), .B0(n41), .Y(n13) );
  NAND2X2M U41 ( .A(N109), .B(n27), .Y(n134) );
  INVX2M U42 ( .A(n11), .Y(n52) );
  OAI31X1M U43 ( .A0(n135), .A1(n136), .A2(n137), .B0(EN), .Y(n11) );
  NAND4X2M U44 ( .A(n179), .B(n178), .C(n177), .D(n176), .Y(n136) );
  NAND4X2M U45 ( .A(n182), .B(n181), .C(n152), .D(n180), .Y(n137) );
  AOI221XLM U46 ( .A0(n44), .A1(n187), .B0(n20), .B1(n5), .C0(n4), .Y(n80) );
  AOI221XLM U47 ( .A0(n44), .A1(n186), .B0(n32), .B1(n5), .C0(n4), .Y(n91) );
  AOI221XLM U48 ( .A0(n44), .A1(n185), .B0(n34), .B1(n5), .C0(n4), .Y(n102) );
  AOI221XLM U49 ( .A0(n44), .A1(n184), .B0(n37), .B1(n5), .C0(n4), .Y(n113) );
  AOI221XLM U50 ( .A0(n44), .A1(n188), .B0(n9), .B1(n5), .C0(n4), .Y(n67) );
  AOI211X2M U51 ( .A0(N133), .A1(n33), .B0(n109), .C0(n110), .Y(n108) );
  OAI22X1M U52 ( .A0(n37), .A1(n170), .B0(n53), .B1(n183), .Y(n109) );
  OAI22X1M U53 ( .A0(n111), .A1(n177), .B0(n6), .B1(n113), .Y(n110) );
  AOI221XLM U54 ( .A0(n5), .A1(n184), .B0(n37), .B1(n43), .C0(n3), .Y(n111) );
  AOI22X1M U55 ( .A0(n51), .A1(n8), .B0(N94), .B1(n30), .Y(n60) );
  AOI22X1M U56 ( .A0(n51), .A1(n9), .B0(N95), .B1(n30), .Y(n73) );
  AOI22X1M U57 ( .A0(n20), .A1(n51), .B0(N96), .B1(n30), .Y(n84) );
  AOI22X1M U58 ( .A0(n32), .A1(n51), .B0(N97), .B1(n30), .Y(n95) );
  AOI22X1M U59 ( .A0(n34), .A1(n51), .B0(N98), .B1(n30), .Y(n106) );
  AOI22X1M U60 ( .A0(n37), .A1(n51), .B0(N99), .B1(n30), .Y(n117) );
  AOI22X1M U61 ( .A0(N103), .A1(n27), .B0(n9), .B1(n3), .Y(n61) );
  AOI22X1M U62 ( .A0(N104), .A1(n27), .B0(n20), .B1(n3), .Y(n74) );
  AOI22X1M U63 ( .A0(N105), .A1(n27), .B0(n32), .B1(n3), .Y(n85) );
  AOI22X1M U64 ( .A0(N106), .A1(n27), .B0(n34), .B1(n3), .Y(n96) );
  AOI22X1M U65 ( .A0(N107), .A1(n27), .B0(n37), .B1(n3), .Y(n107) );
  AOI22X1M U66 ( .A0(N108), .A1(n27), .B0(n40), .B1(n3), .Y(n118) );
  INVX2M U67 ( .A(n8), .Y(n150) );
  INVX2M U68 ( .A(n40), .Y(n183) );
  INVX2M U69 ( .A(n37), .Y(n184) );
  INVX2M U70 ( .A(n6), .Y(n177) );
  INVX2M U71 ( .A(n20), .Y(n187) );
  INVX2M U72 ( .A(n32), .Y(n186) );
  INVX2M U73 ( .A(n34), .Y(n185) );
  INVX2M U74 ( .A(n9), .Y(n188) );
  INVX2M U75 ( .A(n7), .Y(n189) );
  BUFX2M U76 ( .A(A[7]), .Y(n40) );
  BUFX2M U77 ( .A(B[6]), .Y(n6) );
  AO22X1M U78 ( .A0(ALU_OUT[0]), .A1(n41), .B0(n52), .B1(n21), .Y(n147) );
  NAND4BX1M U79 ( .AN(n22), .B(n23), .C(n24), .D(n25), .Y(n21) );
  AOI22X1M U80 ( .A0(N110), .A1(n29), .B0(N92), .B1(n30), .Y(n24) );
  AOI222X1M U81 ( .A0(n3), .A1(n7), .B0(N101), .B1(n27), .C0(N161), .C1(n28), 
        .Y(n25) );
  BUFX2M U82 ( .A(A[5]), .Y(n34) );
  AO22X1M U83 ( .A0(ALU_OUT[1]), .A1(n41), .B0(n52), .B1(n45), .Y(n148) );
  NAND4BX1M U84 ( .AN(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  AOI222X1M U85 ( .A0(n3), .A1(n8), .B0(N102), .B1(n27), .C0(N161), .C1(n28), 
        .Y(n49) );
  AOI222X1M U86 ( .A0(N93), .A1(n30), .B0(N111), .B1(n29), .C0(n51), .C1(n7), 
        .Y(n48) );
  BUFX2M U87 ( .A(A[4]), .Y(n32) );
  AOI211X2M U88 ( .A0(N129), .A1(n33), .B0(n63), .C0(n64), .Y(n62) );
  OAI22X1M U89 ( .A0(n9), .A1(n170), .B0(n53), .B1(n187), .Y(n63) );
  OAI22X1M U90 ( .A0(n65), .A1(n152), .B0(B[2]), .B1(n67), .Y(n64) );
  AOI221XLM U91 ( .A0(n5), .A1(n188), .B0(n9), .B1(n43), .C0(n3), .Y(n65) );
  INVX2M U92 ( .A(n58), .Y(n167) );
  AOI221XLM U93 ( .A0(ALU_OUT[2]), .A1(n41), .B0(N112), .B1(n12), .C0(n59), 
        .Y(n58) );
  AOI31X2M U94 ( .A0(n60), .A1(n61), .A2(n62), .B0(n41), .Y(n59) );
  BUFX2M U95 ( .A(A[3]), .Y(n20) );
  AOI211X2M U96 ( .A0(N130), .A1(n33), .B0(n76), .C0(n77), .Y(n75) );
  OAI22X1M U97 ( .A0(n20), .A1(n170), .B0(n53), .B1(n186), .Y(n76) );
  OAI22X1M U98 ( .A0(n78), .A1(n180), .B0(B[3]), .B1(n80), .Y(n77) );
  AOI221XLM U99 ( .A0(n5), .A1(n187), .B0(n20), .B1(n43), .C0(n3), .Y(n78) );
  INVX2M U100 ( .A(n71), .Y(n166) );
  AOI221XLM U101 ( .A0(ALU_OUT[3]), .A1(n41), .B0(N113), .B1(n12), .C0(n72), 
        .Y(n71) );
  AOI31X2M U102 ( .A0(n73), .A1(n74), .A2(n75), .B0(n41), .Y(n72) );
  BUFX2M U103 ( .A(A[2]), .Y(n9) );
  AOI211X2M U104 ( .A0(N131), .A1(n33), .B0(n87), .C0(n88), .Y(n86) );
  OAI22X1M U105 ( .A0(n32), .A1(n170), .B0(n53), .B1(n185), .Y(n87) );
  OAI22X1M U106 ( .A0(n89), .A1(n179), .B0(B[4]), .B1(n91), .Y(n88) );
  AOI221XLM U107 ( .A0(n5), .A1(n186), .B0(n32), .B1(n43), .C0(n3), .Y(n89) );
  INVX2M U108 ( .A(n82), .Y(n165) );
  AOI221XLM U109 ( .A0(ALU_OUT[4]), .A1(n41), .B0(N114), .B1(n12), .C0(n83), 
        .Y(n82) );
  AOI31X2M U110 ( .A0(n84), .A1(n85), .A2(n86), .B0(n41), .Y(n83) );
  BUFX2M U111 ( .A(A[1]), .Y(n8) );
  BUFX2M U112 ( .A(A[0]), .Y(n7) );
  INVX2M U113 ( .A(n15), .Y(n157) );
  AOI221XLM U114 ( .A0(ALU_OUT[13]), .A1(n41), .B0(N123), .B1(n12), .C0(n13), 
        .Y(n15) );
  INVX2M U115 ( .A(n14), .Y(n156) );
  AOI221XLM U116 ( .A0(ALU_OUT[14]), .A1(n41), .B0(N124), .B1(n12), .C0(n13), 
        .Y(n14) );
  INVX2M U117 ( .A(n10), .Y(n154) );
  AOI221XLM U118 ( .A0(ALU_OUT[15]), .A1(n41), .B0(N125), .B1(n12), .C0(n13), 
        .Y(n10) );
  INVX2M U119 ( .A(n18), .Y(n160) );
  AOI221XLM U120 ( .A0(ALU_OUT[10]), .A1(n41), .B0(N120), .B1(n12), .C0(n13), 
        .Y(n18) );
  INVX2M U121 ( .A(n16), .Y(n158) );
  AOI221XLM U122 ( .A0(ALU_OUT[12]), .A1(n41), .B0(N122), .B1(n12), .C0(n13), 
        .Y(n16) );
  INVX2M U123 ( .A(n17), .Y(n159) );
  AOI221XLM U124 ( .A0(ALU_OUT[11]), .A1(n41), .B0(N121), .B1(n12), .C0(n13), 
        .Y(n17) );
  OAI211X2M U125 ( .A0(n130), .A1(n41), .B0(n168), .C0(n132), .Y(n155) );
  AOI22X1M U126 ( .A0(n40), .A1(n51), .B0(N100), .B1(n30), .Y(n130) );
  INVX2M U127 ( .A(n13), .Y(n168) );
  AOI22X1M U128 ( .A0(N118), .A1(n12), .B0(ALU_OUT[8]), .B1(n41), .Y(n132) );
  AOI211X2M U129 ( .A0(N132), .A1(n33), .B0(n98), .C0(n99), .Y(n97) );
  OAI22X1M U130 ( .A0(n34), .A1(n170), .B0(n53), .B1(n184), .Y(n98) );
  OAI22X1M U131 ( .A0(n100), .A1(n178), .B0(B[5]), .B1(n102), .Y(n99) );
  AOI221XLM U132 ( .A0(n5), .A1(n185), .B0(n34), .B1(n43), .C0(n3), .Y(n100)
         );
  INVX2M U133 ( .A(n19), .Y(n161) );
  AOI221XLM U134 ( .A0(ALU_OUT[9]), .A1(n41), .B0(N119), .B1(n12), .C0(n13), 
        .Y(n19) );
  INVX2M U135 ( .A(n93), .Y(n164) );
  AOI221XLM U136 ( .A0(ALU_OUT[5]), .A1(n41), .B0(N115), .B1(n12), .C0(n94), 
        .Y(n93) );
  AOI31X2M U137 ( .A0(n95), .A1(n96), .A2(n97), .B0(n41), .Y(n94) );
  INVX2M U138 ( .A(n104), .Y(n163) );
  AOI221XLM U139 ( .A0(ALU_OUT[6]), .A1(n41), .B0(N116), .B1(n12), .C0(n105), 
        .Y(n104) );
  AOI31X2M U140 ( .A0(n106), .A1(n107), .A2(n108), .B0(n41), .Y(n105) );
  INVX2M U141 ( .A(n115), .Y(n162) );
  AOI221XLM U142 ( .A0(ALU_OUT[7]), .A1(n41), .B0(N117), .B1(n12), .C0(n116), 
        .Y(n115) );
  AOI31X2M U143 ( .A0(n117), .A1(n118), .A2(n119), .B0(n41), .Y(n116) );
  AOI221XLM U144 ( .A0(N134), .A1(n33), .B0(n4), .B1(n183), .C0(n120), .Y(n119) );
  OAI22X1M U145 ( .A0(n121), .A1(n176), .B0(B[7]), .B1(n123), .Y(n120) );
  AOI221XLM U146 ( .A0(n5), .A1(n183), .B0(n40), .B1(n43), .C0(n3), .Y(n121)
         );
  AOI221XLM U147 ( .A0(n44), .A1(n183), .B0(n40), .B1(n5), .C0(n4), .Y(n123)
         );
  INVX2M U148 ( .A(n56), .Y(n151) );
  OAI221X1M U149 ( .A0(B[0]), .A1(n35), .B0(n36), .B1(n182), .C0(n38), .Y(n22)
         );
  AOI221XLM U150 ( .A0(n5), .A1(n189), .B0(n7), .B1(n43), .C0(n3), .Y(n36) );
  AOI221XLM U151 ( .A0(n44), .A1(n189), .B0(n7), .B1(n5), .C0(n4), .Y(n35) );
  NAND4X2M U152 ( .A(N159), .B(n39), .C(n175), .D(n173), .Y(n38) );
  INVX2M U153 ( .A(n112), .Y(n153) );
  OAI221X1M U154 ( .A0(B[1]), .A1(n54), .B0(n55), .B1(n181), .C0(n57), .Y(n46)
         );
  AOI221XLM U155 ( .A0(n5), .A1(n150), .B0(n8), .B1(n43), .C0(n3), .Y(n55) );
  AOI221XLM U156 ( .A0(n44), .A1(n150), .B0(n8), .B1(n5), .C0(n4), .Y(n54) );
  NAND4X2M U157 ( .A(N160), .B(n39), .C(ALU_FUN[0]), .D(n173), .Y(n57) );
  INVX2M U158 ( .A(B[2]), .Y(n152) );
  INVX2M U159 ( .A(B[3]), .Y(n180) );
  INVX2M U160 ( .A(B[7]), .Y(n176) );
  INVX2M U161 ( .A(B[4]), .Y(n179) );
  INVX2M U162 ( .A(B[5]), .Y(n178) );
  INVX2M U163 ( .A(B[0]), .Y(n182) );
  INVX2M U164 ( .A(B[1]), .Y(n181) );
  OR2X2M U165 ( .A(ALU_OUT_VALID), .B(EN), .Y(n139) );
  NOR2X1M U166 ( .A(n183), .B(B[7]), .Y(n144) );
  NAND2BX1M U167 ( .AN(B[4]), .B(n32), .Y(n128) );
  NAND2BX1M U168 ( .AN(n32), .B(B[4]), .Y(n70) );
  CLKNAND2X2M U169 ( .A(n128), .B(n70), .Y(n133) );
  NOR2X1M U170 ( .A(n180), .B(n20), .Y(n114) );
  NOR2X1M U171 ( .A(n152), .B(n9), .Y(n69) );
  NOR2X1M U172 ( .A(n182), .B(n7), .Y(n56) );
  CLKNAND2X2M U173 ( .A(n9), .B(n152), .Y(n124) );
  NAND2BX1M U174 ( .AN(n69), .B(n124), .Y(n101) );
  AOI21X1M U175 ( .A0(n56), .A1(n150), .B0(B[1]), .Y(n66) );
  AOI211X1M U176 ( .A0(n8), .A1(n151), .B0(n101), .C0(n66), .Y(n68) );
  CLKNAND2X2M U177 ( .A(n20), .B(n180), .Y(n122) );
  OAI31X1M U178 ( .A0(n114), .A1(n69), .A2(n68), .B0(n122), .Y(n79) );
  NAND2BX1M U179 ( .AN(n34), .B(B[5]), .Y(n142) );
  OAI211X1M U180 ( .A0(n133), .A1(n79), .B0(n70), .C0(n142), .Y(n81) );
  NAND2BX1M U181 ( .AN(B[5]), .B(n34), .Y(n131) );
  XNOR2X1M U182 ( .A(n37), .B(n6), .Y(n141) );
  AOI32X1M U183 ( .A0(n81), .A1(n131), .A2(n141), .B0(n6), .B1(n184), .Y(n90)
         );
  CLKNAND2X2M U184 ( .A(B[7]), .B(n183), .Y(n145) );
  OAI21X1M U185 ( .A0(n144), .A1(n90), .B0(n145), .Y(N161) );
  CLKNAND2X2M U186 ( .A(n7), .B(n182), .Y(n103) );
  OA21X1M U187 ( .A0(n103), .A1(n150), .B0(B[1]), .Y(n92) );
  AOI211X1M U188 ( .A0(n103), .A1(n150), .B0(n101), .C0(n92), .Y(n112) );
  AOI31X1M U189 ( .A0(n153), .A1(n124), .A2(n122), .B0(n114), .Y(n140) );
  OAI2B11X1M U190 ( .A1N(n140), .A0(n133), .B0(n131), .C0(n128), .Y(n143) );
  AOI32X1M U191 ( .A0(n143), .A1(n142), .A2(n141), .B0(n37), .B1(n177), .Y(
        n146) );
  AOI2B1X1M U192 ( .A1N(n146), .A0(n145), .B0(n144), .Y(n149) );
  CLKINVX1M U193 ( .A(n149), .Y(N160) );
  NOR2X1M U194 ( .A(N161), .B(N160), .Y(N159) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, RST_SYNC );
  input RST, CLK;
  output RST_SYNC;
  wire   \SYNC_REG[1] ;

  DFFRQX2M \SYNC_REG_reg[0]  ( .D(\SYNC_REG[1] ), .CK(CLK), .RN(RST), .Q(
        RST_SYNC) );
  DFFRQX2M \SYNC_REG_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\SYNC_REG[1] )
         );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, RST_SYNC );
  input RST, CLK;
  output RST_SYNC;
  wire   \SYNC_REG[1] ;

  DFFRQX2M \SYNC_REG_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\SYNC_REG[1] )
         );
  DFFRQX1M \SYNC_REG_reg[0]  ( .D(\SYNC_REG[1] ), .CK(CLK), .RN(RST), .Q(
        RST_SYNC) );
endmodule


module FIFO_MEM ( WADDR, RADDR, WDATA, WR_CLK, RST, WINC, WFULL, RDATA );
  input [2:0] WADDR;
  input [2:0] RADDR;
  input [7:0] WDATA;
  output [7:0] RDATA;
  input WR_CLK, RST, WINC, WFULL;
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
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113;
  assign N9 = RADDR[0];
  assign N10 = RADDR[1];
  assign N11 = RADDR[2];

  DFFRQX2M \FIFO_reg[5][7]  ( .D(n69), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][7] ) );
  DFFRQX2M \FIFO_reg[5][6]  ( .D(n68), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][6] ) );
  DFFRQX2M \FIFO_reg[5][5]  ( .D(n67), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][5] ) );
  DFFRQX2M \FIFO_reg[5][4]  ( .D(n66), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][4] ) );
  DFFRQX2M \FIFO_reg[5][3]  ( .D(n65), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][3] ) );
  DFFRQX2M \FIFO_reg[5][2]  ( .D(n64), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][2] ) );
  DFFRQX2M \FIFO_reg[5][1]  ( .D(n63), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][1] ) );
  DFFRQX2M \FIFO_reg[5][0]  ( .D(n62), .CK(WR_CLK), .RN(n100), .Q(\FIFO[5][0] ) );
  DFFRQX2M \FIFO_reg[1][7]  ( .D(n37), .CK(WR_CLK), .RN(n102), .Q(\FIFO[1][7] ) );
  DFFRQX2M \FIFO_reg[1][6]  ( .D(n36), .CK(WR_CLK), .RN(n102), .Q(\FIFO[1][6] ) );
  DFFRQX2M \FIFO_reg[1][5]  ( .D(n35), .CK(WR_CLK), .RN(n102), .Q(\FIFO[1][5] ) );
  DFFRQX2M \FIFO_reg[1][4]  ( .D(n34), .CK(WR_CLK), .RN(n102), .Q(\FIFO[1][4] ) );
  DFFRQX2M \FIFO_reg[1][3]  ( .D(n33), .CK(WR_CLK), .RN(n103), .Q(\FIFO[1][3] ) );
  DFFRQX2M \FIFO_reg[1][2]  ( .D(n32), .CK(WR_CLK), .RN(n103), .Q(\FIFO[1][2] ) );
  DFFRQX2M \FIFO_reg[1][1]  ( .D(n31), .CK(WR_CLK), .RN(n103), .Q(\FIFO[1][1] ) );
  DFFRQX2M \FIFO_reg[1][0]  ( .D(n30), .CK(WR_CLK), .RN(n103), .Q(\FIFO[1][0] ) );
  DFFRQX2M \FIFO_reg[7][7]  ( .D(n85), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][7] )
         );
  DFFRQX2M \FIFO_reg[7][6]  ( .D(n84), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][6] )
         );
  DFFRQX2M \FIFO_reg[7][5]  ( .D(n83), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][5] )
         );
  DFFRQX2M \FIFO_reg[7][4]  ( .D(n82), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][4] )
         );
  DFFRQX2M \FIFO_reg[7][3]  ( .D(n81), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][3] )
         );
  DFFRQX2M \FIFO_reg[7][2]  ( .D(n80), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][2] )
         );
  DFFRQX2M \FIFO_reg[7][1]  ( .D(n79), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][1] )
         );
  DFFRQX2M \FIFO_reg[7][0]  ( .D(n78), .CK(WR_CLK), .RN(n99), .Q(\FIFO[7][0] )
         );
  DFFRQX2M \FIFO_reg[3][7]  ( .D(n53), .CK(WR_CLK), .RN(n101), .Q(\FIFO[3][7] ) );
  DFFRQX2M \FIFO_reg[3][6]  ( .D(n52), .CK(WR_CLK), .RN(n101), .Q(\FIFO[3][6] ) );
  DFFRQX2M \FIFO_reg[3][5]  ( .D(n51), .CK(WR_CLK), .RN(n101), .Q(\FIFO[3][5] ) );
  DFFRQX2M \FIFO_reg[3][4]  ( .D(n50), .CK(WR_CLK), .RN(n101), .Q(\FIFO[3][4] ) );
  DFFRQX2M \FIFO_reg[3][3]  ( .D(n49), .CK(WR_CLK), .RN(n101), .Q(\FIFO[3][3] ) );
  DFFRQX2M \FIFO_reg[3][2]  ( .D(n48), .CK(WR_CLK), .RN(n101), .Q(\FIFO[3][2] ) );
  DFFRQX2M \FIFO_reg[3][1]  ( .D(n47), .CK(WR_CLK), .RN(n101), .Q(\FIFO[3][1] ) );
  DFFRQX2M \FIFO_reg[3][0]  ( .D(n46), .CK(WR_CLK), .RN(n102), .Q(\FIFO[3][0] ) );
  DFFRQX2M \FIFO_reg[6][7]  ( .D(n77), .CK(WR_CLK), .RN(n99), .Q(\FIFO[6][7] )
         );
  DFFRQX2M \FIFO_reg[6][6]  ( .D(n76), .CK(WR_CLK), .RN(n99), .Q(\FIFO[6][6] )
         );
  DFFRQX2M \FIFO_reg[6][5]  ( .D(n75), .CK(WR_CLK), .RN(n99), .Q(\FIFO[6][5] )
         );
  DFFRQX2M \FIFO_reg[6][4]  ( .D(n74), .CK(WR_CLK), .RN(n99), .Q(\FIFO[6][4] )
         );
  DFFRQX2M \FIFO_reg[6][3]  ( .D(n73), .CK(WR_CLK), .RN(n99), .Q(\FIFO[6][3] )
         );
  DFFRQX2M \FIFO_reg[6][2]  ( .D(n72), .CK(WR_CLK), .RN(n100), .Q(\FIFO[6][2] ) );
  DFFRQX2M \FIFO_reg[6][1]  ( .D(n71), .CK(WR_CLK), .RN(n100), .Q(\FIFO[6][1] ) );
  DFFRQX2M \FIFO_reg[6][0]  ( .D(n70), .CK(WR_CLK), .RN(n100), .Q(\FIFO[6][0] ) );
  DFFRQX2M \FIFO_reg[2][7]  ( .D(n45), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][7] ) );
  DFFRQX2M \FIFO_reg[2][6]  ( .D(n44), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][6] ) );
  DFFRQX2M \FIFO_reg[2][5]  ( .D(n43), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][5] ) );
  DFFRQX2M \FIFO_reg[2][4]  ( .D(n42), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][4] ) );
  DFFRQX2M \FIFO_reg[2][3]  ( .D(n41), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][3] ) );
  DFFRQX2M \FIFO_reg[2][2]  ( .D(n40), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][2] ) );
  DFFRQX2M \FIFO_reg[2][1]  ( .D(n39), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][1] ) );
  DFFRQX2M \FIFO_reg[2][0]  ( .D(n38), .CK(WR_CLK), .RN(n102), .Q(\FIFO[2][0] ) );
  DFFRQX2M \FIFO_reg[4][7]  ( .D(n61), .CK(WR_CLK), .RN(n100), .Q(\FIFO[4][7] ) );
  DFFRQX2M \FIFO_reg[4][6]  ( .D(n60), .CK(WR_CLK), .RN(n100), .Q(\FIFO[4][6] ) );
  DFFRQX2M \FIFO_reg[4][5]  ( .D(n59), .CK(WR_CLK), .RN(n101), .Q(\FIFO[4][5] ) );
  DFFRQX2M \FIFO_reg[4][4]  ( .D(n58), .CK(WR_CLK), .RN(n101), .Q(\FIFO[4][4] ) );
  DFFRQX2M \FIFO_reg[4][3]  ( .D(n57), .CK(WR_CLK), .RN(n101), .Q(\FIFO[4][3] ) );
  DFFRQX2M \FIFO_reg[4][2]  ( .D(n56), .CK(WR_CLK), .RN(n101), .Q(\FIFO[4][2] ) );
  DFFRQX2M \FIFO_reg[4][1]  ( .D(n55), .CK(WR_CLK), .RN(n101), .Q(\FIFO[4][1] ) );
  DFFRQX2M \FIFO_reg[4][0]  ( .D(n54), .CK(WR_CLK), .RN(n101), .Q(\FIFO[4][0] ) );
  DFFRQX2M \FIFO_reg[0][7]  ( .D(n29), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][7] ) );
  DFFRQX2M \FIFO_reg[0][6]  ( .D(n28), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][6] ) );
  DFFRQX2M \FIFO_reg[0][5]  ( .D(n27), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][5] ) );
  DFFRQX2M \FIFO_reg[0][4]  ( .D(n26), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][4] ) );
  DFFRQX2M \FIFO_reg[0][3]  ( .D(n25), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][3] ) );
  DFFRQX2M \FIFO_reg[0][2]  ( .D(n24), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][2] ) );
  DFFRQX2M \FIFO_reg[0][1]  ( .D(n23), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][1] ) );
  DFFRQX2M \FIFO_reg[0][0]  ( .D(n22), .CK(WR_CLK), .RN(n103), .Q(\FIFO[0][0] ) );
  BUFX2M U2 ( .A(n19), .Y(n95) );
  BUFX2M U3 ( .A(n20), .Y(n94) );
  BUFX2M U4 ( .A(n21), .Y(n93) );
  BUFX2M U5 ( .A(n15), .Y(n96) );
  BUFX2M U6 ( .A(n97), .Y(n101) );
  BUFX2M U7 ( .A(n97), .Y(n100) );
  BUFX2M U8 ( .A(n97), .Y(n99) );
  BUFX2M U9 ( .A(n98), .Y(n102) );
  BUFX2M U10 ( .A(n98), .Y(n103) );
  BUFX2M U11 ( .A(RST), .Y(n97) );
  BUFX2M U12 ( .A(RST), .Y(n98) );
  NAND3X2M U13 ( .A(n104), .B(n113), .C(n18), .Y(n17) );
  NAND3X2M U14 ( .A(n104), .B(n113), .C(n12), .Y(n11) );
  NOR2BX2M U15 ( .AN(WINC), .B(WFULL), .Y(n16) );
  NAND3X2M U16 ( .A(n12), .B(n113), .C(WADDR[0]), .Y(n13) );
  NAND3X2M U17 ( .A(n12), .B(n104), .C(WADDR[1]), .Y(n14) );
  NOR2BX2M U18 ( .AN(n16), .B(WADDR[2]), .Y(n12) );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n112), .A0N(\FIFO[0][0] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n111), .A0N(\FIFO[0][1] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n110), .A0N(\FIFO[0][2] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n109), .A0N(\FIFO[0][3] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n108), .A0N(\FIFO[0][4] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n107), .A0N(\FIFO[0][5] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n106), .A0N(\FIFO[0][6] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U26 ( .B0(n11), .B1(n105), .A0N(\FIFO[0][7] ), .A1N(n11), .Y(n29)
         );
  OAI2BB2X1M U27 ( .B0(n112), .B1(n13), .A0N(\FIFO[1][0] ), .A1N(n13), .Y(n30)
         );
  OAI2BB2X1M U28 ( .B0(n111), .B1(n13), .A0N(\FIFO[1][1] ), .A1N(n13), .Y(n31)
         );
  OAI2BB2X1M U29 ( .B0(n110), .B1(n13), .A0N(\FIFO[1][2] ), .A1N(n13), .Y(n32)
         );
  OAI2BB2X1M U30 ( .B0(n109), .B1(n13), .A0N(\FIFO[1][3] ), .A1N(n13), .Y(n33)
         );
  OAI2BB2X1M U31 ( .B0(n108), .B1(n13), .A0N(\FIFO[1][4] ), .A1N(n13), .Y(n34)
         );
  OAI2BB2X1M U32 ( .B0(n107), .B1(n13), .A0N(\FIFO[1][5] ), .A1N(n13), .Y(n35)
         );
  OAI2BB2X1M U33 ( .B0(n106), .B1(n13), .A0N(\FIFO[1][6] ), .A1N(n13), .Y(n36)
         );
  OAI2BB2X1M U34 ( .B0(n105), .B1(n13), .A0N(\FIFO[1][7] ), .A1N(n13), .Y(n37)
         );
  OAI2BB2X1M U35 ( .B0(n112), .B1(n14), .A0N(\FIFO[2][0] ), .A1N(n14), .Y(n38)
         );
  OAI2BB2X1M U36 ( .B0(n111), .B1(n14), .A0N(\FIFO[2][1] ), .A1N(n14), .Y(n39)
         );
  OAI2BB2X1M U37 ( .B0(n110), .B1(n14), .A0N(\FIFO[2][2] ), .A1N(n14), .Y(n40)
         );
  OAI2BB2X1M U38 ( .B0(n109), .B1(n14), .A0N(\FIFO[2][3] ), .A1N(n14), .Y(n41)
         );
  OAI2BB2X1M U39 ( .B0(n108), .B1(n14), .A0N(\FIFO[2][4] ), .A1N(n14), .Y(n42)
         );
  OAI2BB2X1M U40 ( .B0(n107), .B1(n14), .A0N(\FIFO[2][5] ), .A1N(n14), .Y(n43)
         );
  OAI2BB2X1M U41 ( .B0(n106), .B1(n14), .A0N(\FIFO[2][6] ), .A1N(n14), .Y(n44)
         );
  OAI2BB2X1M U42 ( .B0(n105), .B1(n14), .A0N(\FIFO[2][7] ), .A1N(n14), .Y(n45)
         );
  OAI2BB2X1M U43 ( .B0(n112), .B1(n17), .A0N(\FIFO[4][0] ), .A1N(n17), .Y(n54)
         );
  OAI2BB2X1M U44 ( .B0(n111), .B1(n17), .A0N(\FIFO[4][1] ), .A1N(n17), .Y(n55)
         );
  OAI2BB2X1M U45 ( .B0(n110), .B1(n17), .A0N(\FIFO[4][2] ), .A1N(n17), .Y(n56)
         );
  OAI2BB2X1M U46 ( .B0(n109), .B1(n17), .A0N(\FIFO[4][3] ), .A1N(n17), .Y(n57)
         );
  OAI2BB2X1M U47 ( .B0(n108), .B1(n17), .A0N(\FIFO[4][4] ), .A1N(n17), .Y(n58)
         );
  OAI2BB2X1M U48 ( .B0(n107), .B1(n17), .A0N(\FIFO[4][5] ), .A1N(n17), .Y(n59)
         );
  OAI2BB2X1M U49 ( .B0(n106), .B1(n17), .A0N(\FIFO[4][6] ), .A1N(n17), .Y(n60)
         );
  OAI2BB2X1M U50 ( .B0(n105), .B1(n17), .A0N(\FIFO[4][7] ), .A1N(n17), .Y(n61)
         );
  INVX2M U51 ( .A(WDATA[0]), .Y(n112) );
  INVX2M U52 ( .A(WDATA[1]), .Y(n111) );
  INVX2M U53 ( .A(WDATA[2]), .Y(n110) );
  INVX2M U54 ( .A(WDATA[3]), .Y(n109) );
  INVX2M U55 ( .A(WDATA[4]), .Y(n108) );
  INVX2M U56 ( .A(WDATA[5]), .Y(n107) );
  INVX2M U57 ( .A(WDATA[6]), .Y(n106) );
  INVX2M U58 ( .A(WDATA[7]), .Y(n105) );
  OAI2BB2X1M U59 ( .B0(n112), .B1(n96), .A0N(\FIFO[3][0] ), .A1N(n96), .Y(n46)
         );
  OAI2BB2X1M U60 ( .B0(n111), .B1(n96), .A0N(\FIFO[3][1] ), .A1N(n96), .Y(n47)
         );
  OAI2BB2X1M U61 ( .B0(n110), .B1(n96), .A0N(\FIFO[3][2] ), .A1N(n96), .Y(n48)
         );
  OAI2BB2X1M U62 ( .B0(n109), .B1(n96), .A0N(\FIFO[3][3] ), .A1N(n96), .Y(n49)
         );
  OAI2BB2X1M U63 ( .B0(n108), .B1(n96), .A0N(\FIFO[3][4] ), .A1N(n96), .Y(n50)
         );
  OAI2BB2X1M U64 ( .B0(n107), .B1(n96), .A0N(\FIFO[3][5] ), .A1N(n96), .Y(n51)
         );
  OAI2BB2X1M U65 ( .B0(n106), .B1(n96), .A0N(\FIFO[3][6] ), .A1N(n96), .Y(n52)
         );
  OAI2BB2X1M U66 ( .B0(n105), .B1(n96), .A0N(\FIFO[3][7] ), .A1N(n96), .Y(n53)
         );
  OAI2BB2X1M U67 ( .B0(n112), .B1(n95), .A0N(\FIFO[5][0] ), .A1N(n95), .Y(n62)
         );
  OAI2BB2X1M U68 ( .B0(n111), .B1(n95), .A0N(\FIFO[5][1] ), .A1N(n95), .Y(n63)
         );
  OAI2BB2X1M U69 ( .B0(n110), .B1(n95), .A0N(\FIFO[5][2] ), .A1N(n95), .Y(n64)
         );
  OAI2BB2X1M U70 ( .B0(n109), .B1(n95), .A0N(\FIFO[5][3] ), .A1N(n95), .Y(n65)
         );
  OAI2BB2X1M U71 ( .B0(n108), .B1(n95), .A0N(\FIFO[5][4] ), .A1N(n95), .Y(n66)
         );
  OAI2BB2X1M U72 ( .B0(n107), .B1(n95), .A0N(\FIFO[5][5] ), .A1N(n95), .Y(n67)
         );
  OAI2BB2X1M U73 ( .B0(n106), .B1(n95), .A0N(\FIFO[5][6] ), .A1N(n95), .Y(n68)
         );
  OAI2BB2X1M U74 ( .B0(n105), .B1(n95), .A0N(\FIFO[5][7] ), .A1N(n95), .Y(n69)
         );
  OAI2BB2X1M U75 ( .B0(n112), .B1(n94), .A0N(\FIFO[6][0] ), .A1N(n94), .Y(n70)
         );
  OAI2BB2X1M U76 ( .B0(n111), .B1(n94), .A0N(\FIFO[6][1] ), .A1N(n94), .Y(n71)
         );
  OAI2BB2X1M U77 ( .B0(n110), .B1(n94), .A0N(\FIFO[6][2] ), .A1N(n94), .Y(n72)
         );
  OAI2BB2X1M U78 ( .B0(n109), .B1(n94), .A0N(\FIFO[6][3] ), .A1N(n94), .Y(n73)
         );
  OAI2BB2X1M U79 ( .B0(n108), .B1(n94), .A0N(\FIFO[6][4] ), .A1N(n94), .Y(n74)
         );
  OAI2BB2X1M U80 ( .B0(n107), .B1(n94), .A0N(\FIFO[6][5] ), .A1N(n94), .Y(n75)
         );
  OAI2BB2X1M U81 ( .B0(n106), .B1(n94), .A0N(\FIFO[6][6] ), .A1N(n94), .Y(n76)
         );
  OAI2BB2X1M U82 ( .B0(n105), .B1(n94), .A0N(\FIFO[6][7] ), .A1N(n94), .Y(n77)
         );
  OAI2BB2X1M U83 ( .B0(n112), .B1(n93), .A0N(\FIFO[7][0] ), .A1N(n93), .Y(n78)
         );
  OAI2BB2X1M U84 ( .B0(n111), .B1(n93), .A0N(\FIFO[7][1] ), .A1N(n93), .Y(n79)
         );
  OAI2BB2X1M U85 ( .B0(n110), .B1(n93), .A0N(\FIFO[7][2] ), .A1N(n93), .Y(n80)
         );
  OAI2BB2X1M U86 ( .B0(n109), .B1(n93), .A0N(\FIFO[7][3] ), .A1N(n93), .Y(n81)
         );
  OAI2BB2X1M U87 ( .B0(n108), .B1(n93), .A0N(\FIFO[7][4] ), .A1N(n93), .Y(n82)
         );
  OAI2BB2X1M U88 ( .B0(n107), .B1(n93), .A0N(\FIFO[7][5] ), .A1N(n93), .Y(n83)
         );
  OAI2BB2X1M U89 ( .B0(n106), .B1(n93), .A0N(\FIFO[7][6] ), .A1N(n93), .Y(n84)
         );
  OAI2BB2X1M U90 ( .B0(n105), .B1(n93), .A0N(\FIFO[7][7] ), .A1N(n93), .Y(n85)
         );
  NAND3X2M U91 ( .A(WADDR[0]), .B(n113), .C(n18), .Y(n19) );
  NAND3X2M U92 ( .A(WADDR[1]), .B(n104), .C(n18), .Y(n20) );
  AND2X2M U93 ( .A(WADDR[2]), .B(n16), .Y(n18) );
  NAND3X2M U94 ( .A(WADDR[0]), .B(n12), .C(WADDR[1]), .Y(n15) );
  NAND3X2M U95 ( .A(WADDR[1]), .B(WADDR[0]), .C(n18), .Y(n21) );
  INVX2M U96 ( .A(WADDR[0]), .Y(n104) );
  INVX2M U97 ( .A(WADDR[1]), .Y(n113) );
  BUFX4M U98 ( .A(N9), .Y(n92) );
  MX2X2M U99 ( .A(n91), .B(n90), .S0(N11), .Y(RDATA[7]) );
  MX4X1M U100 ( .A(\FIFO[4][7] ), .B(\FIFO[5][7] ), .C(\FIFO[6][7] ), .D(
        \FIFO[7][7] ), .S0(n92), .S1(N10), .Y(n90) );
  MX4X1M U101 ( .A(\FIFO[0][7] ), .B(\FIFO[1][7] ), .C(\FIFO[2][7] ), .D(
        \FIFO[3][7] ), .S0(n92), .S1(N10), .Y(n91) );
  MX2X2M U102 ( .A(n89), .B(n88), .S0(N11), .Y(RDATA[6]) );
  MX4X1M U103 ( .A(\FIFO[4][6] ), .B(\FIFO[5][6] ), .C(\FIFO[6][6] ), .D(
        \FIFO[7][6] ), .S0(n92), .S1(N10), .Y(n88) );
  MX4X1M U104 ( .A(\FIFO[0][6] ), .B(\FIFO[1][6] ), .C(\FIFO[2][6] ), .D(
        \FIFO[3][6] ), .S0(n92), .S1(N10), .Y(n89) );
  MX2X2M U105 ( .A(n6), .B(n5), .S0(N11), .Y(RDATA[2]) );
  MX4X1M U106 ( .A(\FIFO[4][2] ), .B(\FIFO[5][2] ), .C(\FIFO[6][2] ), .D(
        \FIFO[7][2] ), .S0(n92), .S1(N10), .Y(n5) );
  MX4X1M U107 ( .A(\FIFO[0][2] ), .B(\FIFO[1][2] ), .C(\FIFO[2][2] ), .D(
        \FIFO[3][2] ), .S0(n92), .S1(N10), .Y(n6) );
  MX2X2M U108 ( .A(n10), .B(n9), .S0(N11), .Y(RDATA[4]) );
  MX4X1M U109 ( .A(\FIFO[4][4] ), .B(\FIFO[5][4] ), .C(\FIFO[6][4] ), .D(
        \FIFO[7][4] ), .S0(n92), .S1(N10), .Y(n9) );
  MX4X1M U110 ( .A(\FIFO[0][4] ), .B(\FIFO[1][4] ), .C(\FIFO[2][4] ), .D(
        \FIFO[3][4] ), .S0(n92), .S1(N10), .Y(n10) );
  MX2X2M U111 ( .A(n2), .B(n1), .S0(N11), .Y(RDATA[0]) );
  MX4X1M U112 ( .A(\FIFO[4][0] ), .B(\FIFO[5][0] ), .C(\FIFO[6][0] ), .D(
        \FIFO[7][0] ), .S0(n92), .S1(N10), .Y(n1) );
  MX4X1M U113 ( .A(\FIFO[0][0] ), .B(\FIFO[1][0] ), .C(\FIFO[2][0] ), .D(
        \FIFO[3][0] ), .S0(n92), .S1(N10), .Y(n2) );
  MX2X2M U114 ( .A(n87), .B(n86), .S0(N11), .Y(RDATA[5]) );
  MX4X1M U115 ( .A(\FIFO[4][5] ), .B(\FIFO[5][5] ), .C(\FIFO[6][5] ), .D(
        \FIFO[7][5] ), .S0(n92), .S1(N10), .Y(n86) );
  MX4X1M U116 ( .A(\FIFO[0][5] ), .B(\FIFO[1][5] ), .C(\FIFO[2][5] ), .D(
        \FIFO[3][5] ), .S0(n92), .S1(N10), .Y(n87) );
  MX2X2M U117 ( .A(n4), .B(n3), .S0(N11), .Y(RDATA[1]) );
  MX4X1M U118 ( .A(\FIFO[4][1] ), .B(\FIFO[5][1] ), .C(\FIFO[6][1] ), .D(
        \FIFO[7][1] ), .S0(n92), .S1(N10), .Y(n3) );
  MX4X1M U119 ( .A(\FIFO[0][1] ), .B(\FIFO[1][1] ), .C(\FIFO[2][1] ), .D(
        \FIFO[3][1] ), .S0(n92), .S1(N10), .Y(n4) );
  MX2X2M U120 ( .A(n8), .B(n7), .S0(N11), .Y(RDATA[3]) );
  MX4X1M U121 ( .A(\FIFO[4][3] ), .B(\FIFO[5][3] ), .C(\FIFO[6][3] ), .D(
        \FIFO[7][3] ), .S0(n92), .S1(N10), .Y(n7) );
  MX4X1M U122 ( .A(\FIFO[0][3] ), .B(\FIFO[1][3] ), .C(\FIFO[2][3] ), .D(
        \FIFO[3][3] ), .S0(n92), .S1(N10), .Y(n8) );
endmodule


module D_SYNC_RD ( WR_CLK, GRAY_RPTR, WR_RST, RD_PTR_SYNC );
  input [3:0] GRAY_RPTR;
  output [3:0] RD_PTR_SYNC;
  input WR_CLK, WR_RST;
  wire   \SYNC_REG[3][0] , \SYNC_REG[2][0] , \SYNC_REG[1][0] ,
         \SYNC_REG[0][0] ;

  DFFRQX2M \SYNC_REG_reg[3][1]  ( .D(\SYNC_REG[3][0] ), .CK(WR_CLK), .RN(
        WR_RST), .Q(RD_PTR_SYNC[3]) );
  DFFRQX2M \SYNC_REG_reg[2][1]  ( .D(\SYNC_REG[2][0] ), .CK(WR_CLK), .RN(
        WR_RST), .Q(RD_PTR_SYNC[2]) );
  DFFRQX2M \SYNC_REG_reg[1][1]  ( .D(\SYNC_REG[1][0] ), .CK(WR_CLK), .RN(
        WR_RST), .Q(RD_PTR_SYNC[1]) );
  DFFRQX2M \SYNC_REG_reg[0][1]  ( .D(\SYNC_REG[0][0] ), .CK(WR_CLK), .RN(
        WR_RST), .Q(RD_PTR_SYNC[0]) );
  DFFRQX2M \SYNC_REG_reg[3][0]  ( .D(GRAY_RPTR[3]), .CK(WR_CLK), .RN(WR_RST), 
        .Q(\SYNC_REG[3][0] ) );
  DFFRQX2M \SYNC_REG_reg[2][0]  ( .D(GRAY_RPTR[2]), .CK(WR_CLK), .RN(WR_RST), 
        .Q(\SYNC_REG[2][0] ) );
  DFFRQX2M \SYNC_REG_reg[1][0]  ( .D(GRAY_RPTR[1]), .CK(WR_CLK), .RN(WR_RST), 
        .Q(\SYNC_REG[1][0] ) );
  DFFRQX2M \SYNC_REG_reg[0][0]  ( .D(GRAY_RPTR[0]), .CK(WR_CLK), .RN(WR_RST), 
        .Q(\SYNC_REG[0][0] ) );
endmodule


module D_SYNC_WR ( RD_CLK, GRAY_WPTR, RD_RST, WR_PTR_SYNC );
  input [3:0] GRAY_WPTR;
  output [3:0] WR_PTR_SYNC;
  input RD_CLK, RD_RST;
  wire   \SYNC_REG[3][1] , \SYNC_REG[2][1] , \SYNC_REG[1][1] ,
         \SYNC_REG[0][1] ;

  DFFRQX2M \SYNC_REG_reg[3][0]  ( .D(\SYNC_REG[3][1] ), .CK(RD_CLK), .RN(
        RD_RST), .Q(WR_PTR_SYNC[3]) );
  DFFRQX2M \SYNC_REG_reg[2][0]  ( .D(\SYNC_REG[2][1] ), .CK(RD_CLK), .RN(
        RD_RST), .Q(WR_PTR_SYNC[2]) );
  DFFRQX2M \SYNC_REG_reg[1][0]  ( .D(\SYNC_REG[1][1] ), .CK(RD_CLK), .RN(
        RD_RST), .Q(WR_PTR_SYNC[1]) );
  DFFRQX2M \SYNC_REG_reg[0][0]  ( .D(\SYNC_REG[0][1] ), .CK(RD_CLK), .RN(
        RD_RST), .Q(WR_PTR_SYNC[0]) );
  DFFRQX2M \SYNC_REG_reg[3][1]  ( .D(GRAY_WPTR[3]), .CK(RD_CLK), .RN(RD_RST), 
        .Q(\SYNC_REG[3][1] ) );
  DFFRQX2M \SYNC_REG_reg[2][1]  ( .D(GRAY_WPTR[2]), .CK(RD_CLK), .RN(RD_RST), 
        .Q(\SYNC_REG[2][1] ) );
  DFFRQX2M \SYNC_REG_reg[1][1]  ( .D(GRAY_WPTR[1]), .CK(RD_CLK), .RN(RD_RST), 
        .Q(\SYNC_REG[1][1] ) );
  DFFRQX2M \SYNC_REG_reg[0][1]  ( .D(GRAY_WPTR[0]), .CK(RD_CLK), .RN(RD_RST), 
        .Q(\SYNC_REG[0][1] ) );
endmodule


module FIFO_RD ( RINC, RD_CLK, RD_RST, WR_SYNC, RADDR, RD_PTR, EMPTY );
  input [3:0] WR_SYNC;
  output [2:0] RADDR;
  output [3:0] RD_PTR;
  input RINC, RD_CLK, RD_RST;
  output EMPTY;
  wire   \RD_PTR_bin[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14;
  wire   [2:0] RD_GRAY_PTR_COMB;

  DFFRQX2M \RD_PTR_bin_reg[3]  ( .D(n11), .CK(RD_CLK), .RN(RD_RST), .Q(
        \RD_PTR_bin[3] ) );
  DFFRQX2M \RD_PTR_bin_reg[2]  ( .D(n12), .CK(RD_CLK), .RN(RD_RST), .Q(
        RADDR[2]) );
  DFFRX1M \RD_PTR_bin_reg[0]  ( .D(n14), .CK(RD_CLK), .RN(RD_RST), .Q(RADDR[0]), .QN(n1) );
  DFFRQX2M \RD_PTR_reg[3]  ( .D(\RD_PTR_bin[3] ), .CK(RD_CLK), .RN(RD_RST), 
        .Q(RD_PTR[3]) );
  DFFRQX2M \RD_PTR_reg[2]  ( .D(RD_GRAY_PTR_COMB[2]), .CK(RD_CLK), .RN(RD_RST), 
        .Q(RD_PTR[2]) );
  DFFRQX2M \RD_PTR_reg[1]  ( .D(RD_GRAY_PTR_COMB[1]), .CK(RD_CLK), .RN(RD_RST), 
        .Q(RD_PTR[1]) );
  DFFRQX2M \RD_PTR_reg[0]  ( .D(RD_GRAY_PTR_COMB[0]), .CK(RD_CLK), .RN(RD_RST), 
        .Q(RD_PTR[0]) );
  DFFRQX2M \RD_PTR_bin_reg[1]  ( .D(n13), .CK(RD_CLK), .RN(RD_RST), .Q(
        RADDR[1]) );
  INVX2M U3 ( .A(n6), .Y(EMPTY) );
  XNOR2X2M U4 ( .A(RD_GRAY_PTR_COMB[1]), .B(WR_SYNC[1]), .Y(n7) );
  XNOR2X2M U5 ( .A(n1), .B(RADDR[1]), .Y(RD_GRAY_PTR_COMB[0]) );
  NOR2X2M U6 ( .A(n5), .B(n1), .Y(n4) );
  XNOR2X2M U7 ( .A(RADDR[2]), .B(n3), .Y(n12) );
  NAND4X2M U8 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  XNOR2X2M U9 ( .A(\RD_PTR_bin[3] ), .B(WR_SYNC[3]), .Y(n9) );
  XNOR2X2M U10 ( .A(RD_GRAY_PTR_COMB[2]), .B(WR_SYNC[2]), .Y(n10) );
  XNOR2X2M U11 ( .A(RD_GRAY_PTR_COMB[0]), .B(WR_SYNC[0]), .Y(n8) );
  NAND2X2M U12 ( .A(n4), .B(RADDR[1]), .Y(n3) );
  NAND2X2M U13 ( .A(RINC), .B(n6), .Y(n5) );
  XNOR2X2M U14 ( .A(\RD_PTR_bin[3] ), .B(n2), .Y(n11) );
  NAND2BX2M U15 ( .AN(n3), .B(RADDR[2]), .Y(n2) );
  CLKXOR2X2M U16 ( .A(RADDR[1]), .B(RADDR[2]), .Y(RD_GRAY_PTR_COMB[1]) );
  CLKXOR2X2M U17 ( .A(\RD_PTR_bin[3] ), .B(RADDR[2]), .Y(RD_GRAY_PTR_COMB[2])
         );
  CLKXOR2X2M U18 ( .A(RADDR[1]), .B(n4), .Y(n13) );
  CLKXOR2X2M U19 ( .A(n1), .B(n5), .Y(n14) );
endmodule


module FIFO_WR ( WINC, WR_CLK, WR_RST, RD_SYNC, WADDR, WR_PTR, FULL );
  input [3:0] RD_SYNC;
  output [2:0] WADDR;
  output [3:0] WR_PTR;
  input WINC, WR_CLK, WR_RST;
  output FULL;
  wire   \WR_PTR_bin[3] , n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n3;
  wire   [2:0] WR_GRAY_PTR_COMB;

  DFFRQX2M \WR_PTR_bin_reg[3]  ( .D(n9), .CK(WR_CLK), .RN(WR_RST), .Q(
        \WR_PTR_bin[3] ) );
  DFFRQX2M \WR_PTR_bin_reg[2]  ( .D(n10), .CK(WR_CLK), .RN(WR_RST), .Q(
        WADDR[2]) );
  DFFRQX2M \WR_PTR_bin_reg[1]  ( .D(n11), .CK(WR_CLK), .RN(WR_RST), .Q(
        WADDR[1]) );
  DFFRQX2M \WR_PTR_bin_reg[0]  ( .D(n12), .CK(WR_CLK), .RN(WR_RST), .Q(
        WADDR[0]) );
  DFFRQX2M \WR_PTR_reg[2]  ( .D(WR_GRAY_PTR_COMB[2]), .CK(WR_CLK), .RN(WR_RST), 
        .Q(WR_PTR[2]) );
  DFFRQX2M \WR_PTR_reg[1]  ( .D(WR_GRAY_PTR_COMB[1]), .CK(WR_CLK), .RN(WR_RST), 
        .Q(WR_PTR[1]) );
  DFFRQX2M \WR_PTR_reg[0]  ( .D(WR_GRAY_PTR_COMB[0]), .CK(WR_CLK), .RN(WR_RST), 
        .Q(WR_PTR[0]) );
  DFFRQX2M \WR_PTR_reg[3]  ( .D(\WR_PTR_bin[3] ), .CK(WR_CLK), .RN(WR_RST), 
        .Q(WR_PTR[3]) );
  NOR4X1M U3 ( .A(n5), .B(n6), .C(n7), .D(n8), .Y(FULL) );
  NOR2X2M U4 ( .A(n3), .B(n4), .Y(n2) );
  CLKXOR2X2M U5 ( .A(n3), .B(n4), .Y(n11) );
  XNOR2X2M U6 ( .A(\WR_PTR_bin[3] ), .B(RD_SYNC[3]), .Y(n5) );
  XNOR2X2M U7 ( .A(WR_GRAY_PTR_COMB[2]), .B(RD_SYNC[2]), .Y(n6) );
  CLKXOR2X2M U8 ( .A(RD_SYNC[1]), .B(WR_GRAY_PTR_COMB[1]), .Y(n8) );
  XNOR2X2M U9 ( .A(\WR_PTR_bin[3] ), .B(n1), .Y(n9) );
  NAND2X2M U10 ( .A(WADDR[2]), .B(n2), .Y(n1) );
  NAND2X2M U11 ( .A(WINC), .B(WADDR[0]), .Y(n4) );
  CLKXOR2X2M U12 ( .A(RD_SYNC[0]), .B(WR_GRAY_PTR_COMB[0]), .Y(n7) );
  CLKXOR2X2M U13 ( .A(WADDR[0]), .B(WADDR[1]), .Y(WR_GRAY_PTR_COMB[0]) );
  CLKXOR2X2M U14 ( .A(WADDR[1]), .B(WADDR[2]), .Y(WR_GRAY_PTR_COMB[1]) );
  CLKXOR2X2M U15 ( .A(\WR_PTR_bin[3] ), .B(WADDR[2]), .Y(WR_GRAY_PTR_COMB[2])
         );
  CLKXOR2X2M U16 ( .A(WADDR[2]), .B(n2), .Y(n10) );
  INVX2M U17 ( .A(WADDR[1]), .Y(n3) );
  CLKXOR2X2M U18 ( .A(WINC), .B(WADDR[0]), .Y(n12) );
endmodule


module FIFO_TOP_DATA_WIDTH8_ADDR_WIDTH3_BUS_WIDTH4 ( RD_CLK, WR_CLK, RD_RST, 
        WR_RST, WINC, RINC, WDATA, FULL, EMPTY, RDATA );
  input [7:0] WDATA;
  output [7:0] RDATA;
  input RD_CLK, WR_CLK, RD_RST, WR_RST, WINC, RINC;
  output FULL, EMPTY;
  wire   n1, n2;
  wire   [2:0] WADDR;
  wire   [2:0] RADDR;
  wire   [3:0] GRAY_RPTR;
  wire   [3:0] RD_PTR_SYNC;
  wire   [3:0] GRAY_WPTR;
  wire   [3:0] WR_PTR_SYNC;

  FIFO_MEM fifo_mem ( .WADDR(WADDR), .RADDR(RADDR), .WDATA(WDATA), .WR_CLK(
        WR_CLK), .RST(n1), .WINC(WINC), .WFULL(FULL), .RDATA(RDATA) );
  D_SYNC_RD sync_read ( .WR_CLK(WR_CLK), .GRAY_RPTR(GRAY_RPTR), .WR_RST(n1), 
        .RD_PTR_SYNC(RD_PTR_SYNC) );
  D_SYNC_WR sync_write ( .RD_CLK(RD_CLK), .GRAY_WPTR(GRAY_WPTR), .RD_RST(
        RD_RST), .WR_PTR_SYNC(WR_PTR_SYNC) );
  FIFO_RD rd ( .RINC(RINC), .RD_CLK(RD_CLK), .RD_RST(RD_RST), .WR_SYNC(
        WR_PTR_SYNC), .RADDR(RADDR), .RD_PTR(GRAY_RPTR), .EMPTY(EMPTY) );
  FIFO_WR wr ( .WINC(WINC), .WR_CLK(WR_CLK), .WR_RST(n1), .RD_SYNC(RD_PTR_SYNC), .WADDR(WADDR), .WR_PTR(GRAY_WPTR), .FULL(FULL) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(WR_RST), .Y(n2) );
endmodule


module input_division_rx_ratio ( prescale, in_div_ratio );
  input [5:0] prescale;
  output [7:0] in_div_ratio;
  wire   n1, n2, n3;

  INVX2M U3 ( .A(1'b1), .Y(in_div_ratio[3]) );
  INVX2M U5 ( .A(1'b1), .Y(in_div_ratio[4]) );
  INVX2M U7 ( .A(1'b1), .Y(in_div_ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(in_div_ratio[6]) );
  INVX2M U11 ( .A(1'b1), .Y(in_div_ratio[7]) );
  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(in_div_ratio[0]) );
  AND2X2M U14 ( .A(n1), .B(n2), .Y(in_div_ratio[2]) );
  AND2X2M U15 ( .A(n2), .B(n3), .Y(in_div_ratio[1]) );
  NOR3BX2M U16 ( .AN(prescale[4]), .B(prescale[3]), .C(prescale[5]), .Y(n3) );
  NOR3BX2M U17 ( .AN(prescale[3]), .B(prescale[4]), .C(prescale[5]), .Y(n1) );
  NOR3X2M U18 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .Y(n2) );
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


module CLOCK_DIV_DIV_WIDTH8_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, o_div_clk_reg, N11, N29, N31, N32, N33, N34, N35, N36, N37, N39,
         N40, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;
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

  CLOCK_DIV_DIV_WIDTH8_0_DW01_inc_0 add_58 ( .A(counter), .SUM({N50, N49, N48, 
        N47, N46, N45, N44, N43}) );
  EDFFHQX2M \prev_div_ratio_reg[0]  ( .D(i_div_ratio[0]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[0]) );
  EDFFHQX2M \prev_div_ratio_reg[1]  ( .D(half_toggle[0]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[1]) );
  EDFFHQX2M \prev_div_ratio_reg[7]  ( .D(half_toggle[6]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[7]) );
  EDFFHQX2M \prev_div_ratio_reg[6]  ( .D(half_toggle[5]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[6]) );
  EDFFHQX2M \prev_div_ratio_reg[5]  ( .D(half_toggle[4]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[5]) );
  EDFFHQX2M \prev_div_ratio_reg[4]  ( .D(half_toggle[3]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[4]) );
  EDFFHQX2M \prev_div_ratio_reg[3]  ( .D(half_toggle[2]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[3]) );
  EDFFHQX2M \prev_div_ratio_reg[2]  ( .D(half_toggle[1]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[2]) );
  DFFRX1M flag_reg ( .D(n26), .CK(i_ref_clk), .RN(n4), .Q(n1), .QN(n12) );
  DFFRQX1M o_div_clk_reg_reg ( .D(n27), .CK(i_ref_clk), .RN(n4), .Q(
        o_div_clk_reg) );
  DFFRQX1M \counter_reg[7]  ( .D(N58), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX1M \counter_reg[6]  ( .D(N57), .CK(i_ref_clk), .RN(n4), .Q(counter[6])
         );
  DFFRQX1M \counter_reg[5]  ( .D(N56), .CK(i_ref_clk), .RN(n4), .Q(counter[5])
         );
  DFFRQX1M \counter_reg[4]  ( .D(N55), .CK(i_ref_clk), .RN(n4), .Q(counter[4])
         );
  DFFRQX1M \counter_reg[3]  ( .D(N54), .CK(i_ref_clk), .RN(n4), .Q(counter[3])
         );
  DFFRQX1M \counter_reg[2]  ( .D(N53), .CK(i_ref_clk), .RN(n4), .Q(counter[2])
         );
  DFFRQX1M \counter_reg[1]  ( .D(N52), .CK(i_ref_clk), .RN(n4), .Q(counter[1])
         );
  DFFRQX1M \counter_reg[0]  ( .D(N51), .CK(i_ref_clk), .RN(n4), .Q(counter[0])
         );
  OR2X2M U3 ( .A(half_toggle[0]), .B(i_div_ratio[0]), .Y(n5) );
  MX2X2M U4 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(N1), .Y(o_div_clk) );
  NAND2BX2M U5 ( .AN(i_div_ratio[0]), .B(N11), .Y(n18) );
  NOR2BX2M U6 ( .AN(N49), .B(n23), .Y(N57) );
  NOR2BX2M U7 ( .AN(N48), .B(n23), .Y(N56) );
  NOR2BX2M U8 ( .AN(N47), .B(n23), .Y(N55) );
  NOR2BX2M U9 ( .AN(N46), .B(n23), .Y(N54) );
  NOR2BX2M U10 ( .AN(N45), .B(n23), .Y(N53) );
  NOR2BX2M U11 ( .AN(N44), .B(n23), .Y(N52) );
  OR2X2M U12 ( .A(n20), .B(i_div_ratio[0]), .Y(n17) );
  BUFX2M U13 ( .A(i_rst_n), .Y(n4) );
  INVX2M U14 ( .A(n15), .Y(N1) );
  INVX2M U15 ( .A(N35), .Y(n60) );
  INVX2M U16 ( .A(N36), .Y(n59) );
  INVX2M U17 ( .A(N34), .Y(n61) );
  INVX2M U18 ( .A(N33), .Y(n58) );
  OR3X2M U19 ( .A(N40), .B(N29), .C(n24), .Y(n23) );
  CLKXOR2X2M U20 ( .A(o_div_clk_reg), .B(n16), .Y(n27) );
  AOI31X2M U21 ( .A0(n14), .A1(n17), .A2(n18), .B0(n15), .Y(n16) );
  NAND3X2M U22 ( .A(n18), .B(n17), .C(n19), .Y(n14) );
  OAI2BB2X1M U23 ( .B0(n20), .B1(n12), .A0N(n12), .A1N(N11), .Y(n19) );
  NOR2BX2M U24 ( .AN(N50), .B(n23), .Y(N58) );
  NOR2BX2M U25 ( .AN(N43), .B(n23), .Y(N51) );
  INVX2M U26 ( .A(counter[1]), .Y(n67) );
  INVX2M U27 ( .A(counter[2]), .Y(n66) );
  INVX2M U28 ( .A(counter[4]), .Y(n64) );
  INVX2M U29 ( .A(counter[3]), .Y(n65) );
  CLKXOR2X2M U30 ( .A(n1), .B(n2), .Y(n26) );
  NOR2X2M U31 ( .A(n14), .B(n15), .Y(n2) );
  NAND2X2M U32 ( .A(n21), .B(n22), .Y(n20) );
  NOR4X1M U33 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n21) );
  NOR4X1M U34 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n22) );
  INVX2M U35 ( .A(counter[6]), .Y(n62) );
  INVX2M U36 ( .A(counter[5]), .Y(n63) );
  NOR4BX1M U37 ( .AN(n25), .B(half_toggle[1]), .C(half_toggle[2]), .D(
        half_toggle[0]), .Y(n24) );
  NOR4X1M U38 ( .A(half_toggle[6]), .B(half_toggle[5]), .C(half_toggle[4]), 
        .D(half_toggle[3]), .Y(n25) );
  NAND2BX2M U39 ( .AN(n24), .B(i_clk_en), .Y(n15) );
  AOI21X2M U40 ( .A0(n10), .A1(half_toggle[6]), .B0(N39), .Y(n3) );
  CLKINVX1M U41 ( .A(i_div_ratio[0]), .Y(N31) );
  OAI2BB1X1M U42 ( .A0N(i_div_ratio[0]), .A1N(half_toggle[0]), .B0(n5), .Y(N32) );
  OR2X1M U43 ( .A(n5), .B(half_toggle[1]), .Y(n6) );
  OAI2BB1X1M U44 ( .A0N(n5), .A1N(half_toggle[1]), .B0(n6), .Y(N33) );
  OR2X1M U45 ( .A(n6), .B(half_toggle[2]), .Y(n7) );
  OAI2BB1X1M U46 ( .A0N(n6), .A1N(half_toggle[2]), .B0(n7), .Y(N34) );
  OR2X1M U47 ( .A(n7), .B(half_toggle[3]), .Y(n8) );
  OAI2BB1X1M U48 ( .A0N(n7), .A1N(half_toggle[3]), .B0(n8), .Y(N35) );
  OR2X1M U49 ( .A(n8), .B(half_toggle[4]), .Y(n9) );
  OAI2BB1X1M U50 ( .A0N(n8), .A1N(half_toggle[4]), .B0(n9), .Y(N36) );
  OR2X1M U51 ( .A(n9), .B(half_toggle[5]), .Y(n10) );
  OAI2BB1X1M U52 ( .A0N(n9), .A1N(half_toggle[5]), .B0(n10), .Y(N37) );
  NOR2X1M U53 ( .A(n10), .B(half_toggle[6]), .Y(N39) );
  NOR2BX1M U54 ( .AN(counter[0]), .B(half_toggle[0]), .Y(n11) );
  OAI2B2X1M U55 ( .A1N(half_toggle[1]), .A0(n11), .B0(counter[1]), .B1(n11), 
        .Y(n30) );
  XNOR2X1M U56 ( .A(half_toggle[2]), .B(counter[2]), .Y(n29) );
  NOR2BX1M U57 ( .AN(half_toggle[0]), .B(counter[0]), .Y(n13) );
  OAI2B2X1M U58 ( .A1N(counter[1]), .A0(n13), .B0(half_toggle[1]), .B1(n13), 
        .Y(n28) );
  NAND4BX1M U59 ( .AN(counter[7]), .B(n30), .C(n29), .D(n28), .Y(n36) );
  XNOR2X1M U60 ( .A(half_toggle[6]), .B(counter[6]), .Y(n34) );
  XNOR2X1M U61 ( .A(half_toggle[5]), .B(counter[5]), .Y(n33) );
  XNOR2X1M U62 ( .A(half_toggle[4]), .B(counter[4]), .Y(n32) );
  XNOR2X1M U63 ( .A(half_toggle[3]), .B(counter[3]), .Y(n31) );
  NAND4X1M U64 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  NOR2X1M U65 ( .A(n36), .B(n35), .Y(N11) );
  NOR2BX1M U66 ( .AN(prev_div_ratio[0]), .B(i_div_ratio[0]), .Y(n37) );
  OAI2B2X1M U67 ( .A1N(half_toggle[0]), .A0(n37), .B0(prev_div_ratio[1]), .B1(
        n37), .Y(n48) );
  NOR2BX1M U68 ( .AN(i_div_ratio[0]), .B(prev_div_ratio[0]), .Y(n38) );
  OAI2B2X1M U69 ( .A1N(prev_div_ratio[1]), .A0(n38), .B0(half_toggle[0]), .B1(
        n38), .Y(n47) );
  CLKXOR2X2M U70 ( .A(prev_div_ratio[2]), .B(half_toggle[1]), .Y(n40) );
  CLKXOR2X2M U71 ( .A(prev_div_ratio[3]), .B(half_toggle[2]), .Y(n39) );
  NOR2X1M U72 ( .A(n40), .B(n39), .Y(n46) );
  CLKXOR2X2M U73 ( .A(prev_div_ratio[4]), .B(half_toggle[3]), .Y(n44) );
  CLKXOR2X2M U74 ( .A(prev_div_ratio[5]), .B(half_toggle[4]), .Y(n43) );
  CLKXOR2X2M U75 ( .A(prev_div_ratio[6]), .B(half_toggle[5]), .Y(n42) );
  CLKXOR2X2M U76 ( .A(prev_div_ratio[7]), .B(half_toggle[6]), .Y(n41) );
  NOR4X1M U77 ( .A(n44), .B(n43), .C(n42), .D(n41), .Y(n45) );
  NAND4X1M U78 ( .A(n48), .B(n47), .C(n46), .D(n45), .Y(N29) );
  CLKNAND2X2M U79 ( .A(counter[7]), .B(n3), .Y(n57) );
  NOR2X1M U80 ( .A(N37), .B(n62), .Y(n55) );
  AOI2BB1X1M U81 ( .A0N(N32), .A1N(n67), .B0(counter[0]), .Y(n49) );
  AOI222X1M U82 ( .A0(N33), .A1(n66), .B0(n49), .B1(N31), .C0(N32), .C1(n67), 
        .Y(n50) );
  AOI221XLM U83 ( .A0(counter[3]), .A1(n61), .B0(counter[2]), .B1(n58), .C0(
        n50), .Y(n51) );
  AOI221XLM U84 ( .A0(N35), .A1(n64), .B0(N34), .B1(n65), .C0(n51), .Y(n52) );
  AOI221XLM U85 ( .A0(counter[5]), .A1(n59), .B0(counter[4]), .B1(n60), .C0(
        n52), .Y(n53) );
  AOI221XLM U86 ( .A0(N37), .A1(n62), .B0(N36), .B1(n63), .C0(n53), .Y(n54) );
  OAI22X1M U87 ( .A0(n55), .A1(n54), .B0(counter[7]), .B1(n3), .Y(n56) );
  AOI21X1M U88 ( .A0(n57), .A1(n56), .B0(N39), .Y(N40) );
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


module CLOCK_DIV_DIV_WIDTH8_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, o_div_clk_reg, N11, N29, N31, N32, N33, N34, N35, N36, N37, N39,
         N40, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
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

  CLOCK_DIV_DIV_WIDTH8_1_DW01_inc_0 add_58 ( .A(counter), .SUM({N50, N49, N48, 
        N47, N46, N45, N44, N43}) );
  EDFFHQX2M \prev_div_ratio_reg[0]  ( .D(i_div_ratio[0]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[0]) );
  EDFFHQX2M \prev_div_ratio_reg[1]  ( .D(half_toggle[0]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[1]) );
  EDFFHQX2M \prev_div_ratio_reg[7]  ( .D(half_toggle[6]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[7]) );
  EDFFHQX2M \prev_div_ratio_reg[6]  ( .D(half_toggle[5]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[6]) );
  EDFFHQX2M \prev_div_ratio_reg[5]  ( .D(half_toggle[4]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[5]) );
  EDFFHQX2M \prev_div_ratio_reg[4]  ( .D(half_toggle[3]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[4]) );
  EDFFHQX2M \prev_div_ratio_reg[3]  ( .D(half_toggle[2]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[3]) );
  EDFFHQX2M \prev_div_ratio_reg[2]  ( .D(half_toggle[1]), .E(n4), .CK(
        i_ref_clk), .Q(prev_div_ratio[2]) );
  DFFRX1M flag_reg ( .D(n69), .CK(i_ref_clk), .RN(n4), .Q(n1), .QN(n82) );
  DFFRQX1M o_div_clk_reg_reg ( .D(n68), .CK(i_ref_clk), .RN(n4), .Q(
        o_div_clk_reg) );
  DFFRQX1M \counter_reg[7]  ( .D(N58), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX1M \counter_reg[6]  ( .D(N57), .CK(i_ref_clk), .RN(n4), .Q(counter[6])
         );
  DFFRQX1M \counter_reg[5]  ( .D(N56), .CK(i_ref_clk), .RN(n4), .Q(counter[5])
         );
  DFFRQX1M \counter_reg[4]  ( .D(N55), .CK(i_ref_clk), .RN(n4), .Q(counter[4])
         );
  DFFRQX1M \counter_reg[3]  ( .D(N54), .CK(i_ref_clk), .RN(n4), .Q(counter[3])
         );
  DFFRQX1M \counter_reg[2]  ( .D(N53), .CK(i_ref_clk), .RN(n4), .Q(counter[2])
         );
  DFFRQX1M \counter_reg[1]  ( .D(N52), .CK(i_ref_clk), .RN(n4), .Q(counter[1])
         );
  DFFRQX1M \counter_reg[0]  ( .D(N51), .CK(i_ref_clk), .RN(n4), .Q(counter[0])
         );
  MX2X2M U3 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(N1), .Y(o_div_clk) );
  NOR2BX2M U4 ( .AN(N49), .B(n72), .Y(N57) );
  NOR2BX2M U5 ( .AN(N48), .B(n72), .Y(N56) );
  NOR2BX2M U6 ( .AN(N47), .B(n72), .Y(N55) );
  NOR2BX2M U7 ( .AN(N46), .B(n72), .Y(N54) );
  NOR2BX2M U8 ( .AN(N45), .B(n72), .Y(N53) );
  NOR2BX2M U9 ( .AN(N44), .B(n72), .Y(N52) );
  BUFX2M U10 ( .A(i_rst_n), .Y(n4) );
  INVX2M U11 ( .A(n80), .Y(N1) );
  INVX2M U12 ( .A(N35), .Y(n60) );
  INVX2M U13 ( .A(N36), .Y(n61) );
  INVX2M U14 ( .A(N34), .Y(n59) );
  INVX2M U15 ( .A(N33), .Y(n58) );
  OR3X2M U16 ( .A(N40), .B(N29), .C(n71), .Y(n72) );
  CLKXOR2X2M U17 ( .A(o_div_clk_reg), .B(n79), .Y(n68) );
  AOI31X2M U18 ( .A0(n81), .A1(n78), .A2(n77), .B0(n80), .Y(n79) );
  NAND2BX2M U19 ( .AN(i_div_ratio[0]), .B(N11), .Y(n77) );
  NAND3X2M U20 ( .A(n77), .B(n78), .C(n76), .Y(n81) );
  OAI2BB2X1M U21 ( .B0(n75), .B1(n82), .A0N(n82), .A1N(N11), .Y(n76) );
  NOR2BX2M U22 ( .AN(N50), .B(n72), .Y(N58) );
  NOR2BX2M U23 ( .AN(N43), .B(n72), .Y(N51) );
  INVX2M U24 ( .A(counter[1]), .Y(n67) );
  INVX2M U25 ( .A(counter[2]), .Y(n66) );
  INVX2M U26 ( .A(counter[4]), .Y(n64) );
  INVX2M U27 ( .A(counter[3]), .Y(n65) );
  CLKXOR2X2M U28 ( .A(n1), .B(n2), .Y(n69) );
  NOR2X2M U29 ( .A(n81), .B(n80), .Y(n2) );
  NAND2X2M U30 ( .A(n74), .B(n73), .Y(n75) );
  NOR4X1M U31 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n74) );
  NOR4X1M U32 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n73) );
  OR2X2M U33 ( .A(n75), .B(i_div_ratio[0]), .Y(n78) );
  INVX2M U34 ( .A(counter[6]), .Y(n62) );
  INVX2M U35 ( .A(counter[5]), .Y(n63) );
  NOR4BX1M U36 ( .AN(n70), .B(half_toggle[1]), .C(half_toggle[2]), .D(
        half_toggle[0]), .Y(n71) );
  NOR4X1M U37 ( .A(half_toggle[6]), .B(half_toggle[5]), .C(half_toggle[4]), 
        .D(half_toggle[3]), .Y(n70) );
  OR2X2M U38 ( .A(half_toggle[0]), .B(i_div_ratio[0]), .Y(n5) );
  NAND2BX2M U39 ( .AN(n71), .B(i_clk_en), .Y(n80) );
  AOI21X2M U40 ( .A0(n10), .A1(half_toggle[6]), .B0(N39), .Y(n3) );
  CLKINVX1M U41 ( .A(i_div_ratio[0]), .Y(N31) );
  OAI2BB1X1M U42 ( .A0N(i_div_ratio[0]), .A1N(half_toggle[0]), .B0(n5), .Y(N32) );
  OR2X1M U43 ( .A(n5), .B(half_toggle[1]), .Y(n6) );
  OAI2BB1X1M U44 ( .A0N(n5), .A1N(half_toggle[1]), .B0(n6), .Y(N33) );
  OR2X1M U45 ( .A(n6), .B(half_toggle[2]), .Y(n7) );
  OAI2BB1X1M U46 ( .A0N(n6), .A1N(half_toggle[2]), .B0(n7), .Y(N34) );
  OR2X1M U47 ( .A(n7), .B(half_toggle[3]), .Y(n8) );
  OAI2BB1X1M U48 ( .A0N(n7), .A1N(half_toggle[3]), .B0(n8), .Y(N35) );
  OR2X1M U49 ( .A(n8), .B(half_toggle[4]), .Y(n9) );
  OAI2BB1X1M U50 ( .A0N(n8), .A1N(half_toggle[4]), .B0(n9), .Y(N36) );
  OR2X1M U51 ( .A(n9), .B(half_toggle[5]), .Y(n10) );
  OAI2BB1X1M U52 ( .A0N(n9), .A1N(half_toggle[5]), .B0(n10), .Y(N37) );
  NOR2X1M U53 ( .A(n10), .B(half_toggle[6]), .Y(N39) );
  NOR2BX1M U54 ( .AN(counter[0]), .B(half_toggle[0]), .Y(n11) );
  OAI2B2X1M U55 ( .A1N(half_toggle[1]), .A0(n11), .B0(counter[1]), .B1(n11), 
        .Y(n30) );
  XNOR2X1M U56 ( .A(half_toggle[2]), .B(counter[2]), .Y(n29) );
  NOR2BX1M U57 ( .AN(half_toggle[0]), .B(counter[0]), .Y(n13) );
  OAI2B2X1M U58 ( .A1N(counter[1]), .A0(n13), .B0(half_toggle[1]), .B1(n13), 
        .Y(n28) );
  NAND4BX1M U59 ( .AN(counter[7]), .B(n30), .C(n29), .D(n28), .Y(n36) );
  XNOR2X1M U60 ( .A(half_toggle[6]), .B(counter[6]), .Y(n34) );
  XNOR2X1M U61 ( .A(half_toggle[5]), .B(counter[5]), .Y(n33) );
  XNOR2X1M U62 ( .A(half_toggle[4]), .B(counter[4]), .Y(n32) );
  XNOR2X1M U63 ( .A(half_toggle[3]), .B(counter[3]), .Y(n31) );
  NAND4X1M U64 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  NOR2X1M U65 ( .A(n36), .B(n35), .Y(N11) );
  NOR2BX1M U66 ( .AN(prev_div_ratio[0]), .B(i_div_ratio[0]), .Y(n37) );
  OAI2B2X1M U67 ( .A1N(half_toggle[0]), .A0(n37), .B0(prev_div_ratio[1]), .B1(
        n37), .Y(n48) );
  NOR2BX1M U68 ( .AN(i_div_ratio[0]), .B(prev_div_ratio[0]), .Y(n38) );
  OAI2B2X1M U69 ( .A1N(prev_div_ratio[1]), .A0(n38), .B0(half_toggle[0]), .B1(
        n38), .Y(n47) );
  CLKXOR2X2M U70 ( .A(prev_div_ratio[2]), .B(half_toggle[1]), .Y(n40) );
  CLKXOR2X2M U71 ( .A(prev_div_ratio[3]), .B(half_toggle[2]), .Y(n39) );
  NOR2X1M U72 ( .A(n40), .B(n39), .Y(n46) );
  CLKXOR2X2M U73 ( .A(prev_div_ratio[4]), .B(half_toggle[3]), .Y(n44) );
  CLKXOR2X2M U74 ( .A(prev_div_ratio[5]), .B(half_toggle[4]), .Y(n43) );
  CLKXOR2X2M U75 ( .A(prev_div_ratio[6]), .B(half_toggle[5]), .Y(n42) );
  CLKXOR2X2M U76 ( .A(prev_div_ratio[7]), .B(half_toggle[6]), .Y(n41) );
  NOR4X1M U77 ( .A(n44), .B(n43), .C(n42), .D(n41), .Y(n45) );
  NAND4X1M U78 ( .A(n48), .B(n47), .C(n46), .D(n45), .Y(N29) );
  CLKNAND2X2M U79 ( .A(counter[7]), .B(n3), .Y(n57) );
  NOR2X1M U80 ( .A(N37), .B(n62), .Y(n55) );
  AOI2BB1X1M U81 ( .A0N(N32), .A1N(n67), .B0(counter[0]), .Y(n49) );
  AOI222X1M U82 ( .A0(N33), .A1(n66), .B0(n49), .B1(N31), .C0(N32), .C1(n67), 
        .Y(n50) );
  AOI221XLM U83 ( .A0(counter[3]), .A1(n59), .B0(counter[2]), .B1(n58), .C0(
        n50), .Y(n51) );
  AOI221XLM U84 ( .A0(N35), .A1(n64), .B0(N34), .B1(n65), .C0(n51), .Y(n52) );
  AOI221XLM U85 ( .A0(counter[5]), .A1(n61), .B0(counter[4]), .B1(n60), .C0(
        n52), .Y(n53) );
  AOI221XLM U86 ( .A0(N37), .A1(n62), .B0(N36), .B1(n63), .C0(n53), .Y(n54) );
  OAI22X1M U87 ( .A0(n55), .A1(n54), .B0(counter[7]), .B1(n3), .Y(n56) );
  AOI21X1M U88 ( .A0(n57), .A1(n56), .B0(N39), .Y(N40) );
endmodule


module enable_sync_NUM_STAGES2 ( CLK_DESTINATION, bus_enable, RST_DESTINATION, 
        sync_en );
  input CLK_DESTINATION, bus_enable, RST_DESTINATION;
  output sync_en;
  wire   \SYNC_REG[1] ;

  DFFRQX2M \SYNC_REG_reg[0]  ( .D(\SYNC_REG[1] ), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_en) );
  DFFRQX2M \SYNC_REG_reg[1]  ( .D(bus_enable), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(\SYNC_REG[1] ) );
endmodule


module pulse_generator ( sync_en, CLK_DESTINATION, RST_DESTINATION, 
        enable_pulse, enable_pulse_comb );
  input sync_en, CLK_DESTINATION, RST_DESTINATION;
  output enable_pulse, enable_pulse_comb;
  wire   PULSE_FLOP;

  DFFRQX2M PULSE_FLOP_reg ( .D(sync_en), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(PULSE_FLOP) );
  DFFRQX2M enable_pulse_reg ( .D(enable_pulse_comb), .CK(CLK_DESTINATION), 
        .RN(RST_DESTINATION), .Q(enable_pulse) );
  NOR2BX2M U3 ( .AN(sync_en), .B(PULSE_FLOP), .Y(enable_pulse_comb) );
endmodule


module sync_bus_BUS_WIDTH8 ( CLK_DESTINATION, RST_DESTINATION, unsync_bus, 
        enable_pulse_comb, sync_bus );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK_DESTINATION, RST_DESTINATION, enable_pulse_comb;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(sync_bus[2]) );
  INVX2M U2 ( .A(enable_pulse_comb), .Y(n1) );
  AO22X1M U3 ( .A0(unsync_bus[0]), .A1(enable_pulse_comb), .B0(sync_bus[0]), 
        .B1(n1), .Y(n2) );
  AO22X1M U4 ( .A0(unsync_bus[1]), .A1(enable_pulse_comb), .B0(sync_bus[1]), 
        .B1(n1), .Y(n3) );
  AO22X1M U5 ( .A0(unsync_bus[2]), .A1(enable_pulse_comb), .B0(sync_bus[2]), 
        .B1(n1), .Y(n4) );
  AO22X1M U6 ( .A0(unsync_bus[3]), .A1(enable_pulse_comb), .B0(sync_bus[3]), 
        .B1(n1), .Y(n5) );
  AO22X1M U7 ( .A0(unsync_bus[4]), .A1(enable_pulse_comb), .B0(sync_bus[4]), 
        .B1(n1), .Y(n6) );
  AO22X1M U8 ( .A0(unsync_bus[5]), .A1(enable_pulse_comb), .B0(sync_bus[5]), 
        .B1(n1), .Y(n7) );
  AO22X1M U9 ( .A0(unsync_bus[6]), .A1(enable_pulse_comb), .B0(sync_bus[6]), 
        .B1(n1), .Y(n8) );
  AO22X1M U10 ( .A0(unsync_bus[7]), .A1(enable_pulse_comb), .B0(sync_bus[7]), 
        .B1(n1), .Y(n9) );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 ( CLK_DESTINATION, RST_DESTINATION, 
        bus_enable, unsync_bus, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK_DESTINATION, RST_DESTINATION, bus_enable;
  output enable_pulse;
  wire   sync_en, enable_pulse_comb;

  enable_sync_NUM_STAGES2 en ( .CLK_DESTINATION(CLK_DESTINATION), .bus_enable(
        bus_enable), .RST_DESTINATION(RST_DESTINATION), .sync_en(sync_en) );
  pulse_generator pulse ( .sync_en(sync_en), .CLK_DESTINATION(CLK_DESTINATION), 
        .RST_DESTINATION(RST_DESTINATION), .enable_pulse(enable_pulse), 
        .enable_pulse_comb(enable_pulse_comb) );
  sync_bus_BUS_WIDTH8 SYNC ( .CLK_DESTINATION(CLK_DESTINATION), 
        .RST_DESTINATION(RST_DESTINATION), .unsync_bus(unsync_bus), 
        .enable_pulse_comb(enable_pulse_comb), .sync_bus(sync_bus) );
endmodule


module BUSY_PULSE_GENERATOR ( sync_en, CLK_DESTINATION, RST_DESTINATION, 
        enable_pulse );
  input sync_en, CLK_DESTINATION, RST_DESTINATION;
  output enable_pulse;
  wire   PULSE_FLOP, N1;

  DFFRQX2M PULSE_FLOP_reg ( .D(sync_en), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(PULSE_FLOP) );
  DFFRQX2M enable_pulse_reg ( .D(N1), .CK(CLK_DESTINATION), .RN(
        RST_DESTINATION), .Q(enable_pulse) );
  NOR2BX2M U3 ( .AN(sync_en), .B(PULSE_FLOP), .Y(N1) );
endmodule


module SERIALIZER_DATA_WIDTH8 ( BUSY, FIFO_EMPTY, P_DATA, CLK, RST, ser_en, 
        ser_done, ser_data );
  input [7:0] P_DATA;
  input BUSY, FIFO_EMPTY, CLK, RST, ser_en;
  output ser_done, ser_data;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N26, N27, N28, N29, n4, n5, n6,
         n7, n8, n9, n10, n11, n1, n2, n3;
  wire   [3:0] counter;
  wire   [7:0] serial_data;

  DFFRQX2M \serial_data_reg[7]  ( .D(N14), .CK(CLK), .RN(RST), .Q(
        serial_data[7]) );
  DFFRQX2M \serial_data_reg[6]  ( .D(N13), .CK(CLK), .RN(RST), .Q(
        serial_data[6]) );
  DFFRQX2M \serial_data_reg[5]  ( .D(N12), .CK(CLK), .RN(RST), .Q(
        serial_data[5]) );
  DFFRQX2M \serial_data_reg[4]  ( .D(N11), .CK(CLK), .RN(RST), .Q(
        serial_data[4]) );
  DFFRQX2M \serial_data_reg[3]  ( .D(N10), .CK(CLK), .RN(RST), .Q(
        serial_data[3]) );
  DFFRQX2M \serial_data_reg[2]  ( .D(N9), .CK(CLK), .RN(RST), .Q(
        serial_data[2]) );
  DFFRQX2M \serial_data_reg[1]  ( .D(N8), .CK(CLK), .RN(RST), .Q(
        serial_data[1]) );
  DFFRQX2M \serial_data_reg[0]  ( .D(N7), .CK(CLK), .RN(RST), .Q(
        serial_data[0]) );
  DFFRQX2M \counter_reg[3]  ( .D(N29), .CK(CLK), .RN(RST), .Q(counter[3]) );
  DFFRQX2M \counter_reg[1]  ( .D(N27), .CK(CLK), .RN(RST), .Q(counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(N28), .CK(CLK), .RN(RST), .Q(counter[2]) );
  DFFRQX2M \counter_reg[0]  ( .D(N26), .CK(CLK), .RN(RST), .Q(counter[0]) );
  DFFRQX2M ser_data_reg ( .D(n11), .CK(CLK), .RN(RST), .Q(ser_data) );
  NOR2X2M U3 ( .A(n1), .B(n5), .Y(n4) );
  INVX2M U4 ( .A(n9), .Y(n1) );
  NOR2X2M U5 ( .A(FIFO_EMPTY), .B(BUSY), .Y(n5) );
  NOR2BX2M U6 ( .AN(ser_en), .B(ser_done), .Y(n9) );
  AND2X2M U7 ( .A(P_DATA[7]), .B(n5), .Y(N14) );
  NOR4X1M U8 ( .A(n3), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(
        ser_done) );
  OAI22X1M U9 ( .A0(n8), .A1(n2), .B0(counter[2]), .B1(n6), .Y(N28) );
  AOI2B1X1M U10 ( .A1N(counter[1]), .A0(n9), .B0(N26), .Y(n8) );
  NOR2X2M U11 ( .A(n1), .B(counter[0]), .Y(N26) );
  NAND3X2M U12 ( .A(counter[0]), .B(n9), .C(counter[1]), .Y(n6) );
  INVX2M U13 ( .A(counter[3]), .Y(n3) );
  OAI32X1M U14 ( .A0(n2), .A1(counter[3]), .A2(n6), .B0(n7), .B1(n3), .Y(N29)
         );
  OA21X2M U15 ( .A0(n1), .A1(counter[2]), .B0(n8), .Y(n7) );
  AO22X1M U16 ( .A0(serial_data[0]), .A1(n4), .B0(ser_data), .B1(n5), .Y(n11)
         );
  AO22X1M U17 ( .A0(P_DATA[0]), .A1(n5), .B0(serial_data[1]), .B1(n4), .Y(N7)
         );
  AO22X1M U18 ( .A0(P_DATA[1]), .A1(n5), .B0(serial_data[2]), .B1(n4), .Y(N8)
         );
  AO22X1M U19 ( .A0(P_DATA[2]), .A1(n5), .B0(serial_data[3]), .B1(n4), .Y(N9)
         );
  AO22X1M U20 ( .A0(P_DATA[3]), .A1(n5), .B0(serial_data[4]), .B1(n4), .Y(N10)
         );
  AO22X1M U21 ( .A0(P_DATA[4]), .A1(n5), .B0(serial_data[5]), .B1(n4), .Y(N11)
         );
  AO22X1M U22 ( .A0(P_DATA[5]), .A1(n5), .B0(serial_data[6]), .B1(n4), .Y(N12)
         );
  AO22X1M U23 ( .A0(P_DATA[6]), .A1(n5), .B0(serial_data[7]), .B1(n4), .Y(N13)
         );
  NOR2X2M U24 ( .A(n10), .B(n1), .Y(N27) );
  XNOR2X2M U25 ( .A(counter[0]), .B(counter[1]), .Y(n10) );
  INVX2M U26 ( .A(counter[2]), .Y(n2) );
endmodule


module MUX ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n1;

  OAI2BB1X2M U3 ( .A0N(ser_data), .A1N(mux_sel[0]), .B0(n1), .Y(TX_OUT) );
  OAI21X2M U4 ( .A0(mux_sel[0]), .A1(par_bit), .B0(mux_sel[1]), .Y(n1) );
endmodule


module PARITY_CALC ( BUSY, CLK, RST, P_DATA, FIFO_EMPTY, PAR_TYP, PAR_BIT );
  input [7:0] P_DATA;
  input BUSY, CLK, RST, FIFO_EMPTY, PAR_TYP;
  output PAR_BIT;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX2M PAR_BIT_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(PAR_BIT) );
  XNOR2X2M U3 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U4 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U5 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(PAR_BIT), .A1N(n2), .Y(n7) );
  OR2X2M U7 ( .A(FIFO_EMPTY), .B(BUSY), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U9 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module FSM_TX ( FIFO_EMPTY, PAR_EN, ser_done, CLK, RST, BUSY, ser_en, MUX_SEL
 );
  output [1:0] MUX_SEL;
  input FIFO_EMPTY, PAR_EN, ser_done, CLK, RST;
  output BUSY, ser_en;
  wire   n5, n6, n7, n8, n1, n2, n3;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST), .Q(cs[0]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(RST), .Q(cs[2]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST), .Q(cs[1]) );
  AOI21X2M U3 ( .A0(n6), .A1(n3), .B0(MUX_SEL[1]), .Y(ns[1]) );
  XNOR2X2M U4 ( .A(n2), .B(cs[0]), .Y(n7) );
  INVX2M U5 ( .A(ser_en), .Y(MUX_SEL[1]) );
  NAND2BX2M U6 ( .AN(cs[2]), .B(n7), .Y(MUX_SEL[0]) );
  INVX2M U7 ( .A(cs[1]), .Y(n2) );
  NOR2X2M U8 ( .A(n1), .B(cs[2]), .Y(ser_en) );
  INVX2M U9 ( .A(cs[0]), .Y(n1) );
  OAI211X2M U10 ( .A0(cs[2]), .A1(n2), .B0(n8), .C0(MUX_SEL[1]), .Y(BUSY) );
  NAND3X2M U11 ( .A(n1), .B(n2), .C(cs[2]), .Y(n8) );
  OAI32X1M U12 ( .A0(FIFO_EMPTY), .A1(cs[2]), .A2(cs[1]), .B0(MUX_SEL[1]), 
        .B1(n6), .Y(ns[0]) );
  NOR3X2M U13 ( .A(n2), .B(cs[2]), .C(n5), .Y(ns[2]) );
  AOI21X2M U14 ( .A0(ser_done), .A1(n3), .B0(n1), .Y(n5) );
  AND2X2M U15 ( .A(ser_done), .B(cs[1]), .Y(n6) );
  INVX2M U16 ( .A(PAR_EN), .Y(n3) );
endmodule


module UART_TX_TOP_DATA_WIDTH8 ( CLK, RST, FIFO_EMPTY, PAR_EN, PAR_TYP, P_DATA, 
        TX_OUT, busy );
  input [7:0] P_DATA;
  input CLK, RST, FIFO_EMPTY, PAR_EN, PAR_TYP;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit;
  wire   [1:0] mux_sel;

  SERIALIZER_DATA_WIDTH8 ser ( .BUSY(busy), .FIFO_EMPTY(FIFO_EMPTY), .P_DATA(
        P_DATA), .CLK(CLK), .RST(RST), .ser_en(ser_en), .ser_done(ser_done), 
        .ser_data(ser_data) );
  MUX mux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  PARITY_CALC par ( .BUSY(busy), .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .FIFO_EMPTY(FIFO_EMPTY), .PAR_TYP(PAR_TYP), .PAR_BIT(par_bit) );
  FSM_TX fsm_1 ( .FIFO_EMPTY(FIFO_EMPTY), .PAR_EN(PAR_EN), .ser_done(ser_done), 
        .CLK(CLK), .RST(RST), .BUSY(busy), .ser_en(ser_en), .MUX_SEL(mux_sel)
         );
endmodule


module FSM ( CLK, RST_n, PAR_EN, par_err, stp_err, strt_glitch, RX_IN, bit_cnt, 
        edge_cnt, prescale, par_chk_en, strt_chk_en, stp_chk_en, deser_en, 
        data_valid, enable_edge, enable_bit, dat_samp_en );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, PAR_EN, par_err, stp_err, strt_glitch, RX_IN;
  output par_chk_en, strt_chk_en, stp_chk_en, deser_en, data_valid,
         enable_edge, enable_bit, dat_samp_en;
  wire   N41, N42, N43, N44, N45, N46, N47, N48, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n34, n35, n36;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST_n), .Q(cs[0]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST_n), .Q(cs[1]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(RST_n), .Q(cs[2]) );
  INVX2M U3 ( .A(N48), .Y(n18) );
  OAI2B11X2M U4 ( .A1N(n28), .A0(n23), .B0(n29), .C0(n30), .Y(ns[0]) );
  AOI32X1M U5 ( .A0(n26), .A1(N48), .A2(stp_chk_en), .B0(strt_chk_en), .B1(n17), .Y(n30) );
  NAND3X2M U6 ( .A(n34), .B(n36), .C(n31), .Y(n29) );
  OAI21XLM U7 ( .A0(N48), .A1(n35), .B0(n27), .Y(ns[1]) );
  AOI32XLM U8 ( .A0(N48), .A1(n17), .A2(strt_chk_en), .B0(n20), .B1(n22), .Y(
        n27) );
  INVX2M U9 ( .A(n23), .Y(n20) );
  INVX2M U10 ( .A(n25), .Y(stp_chk_en) );
  INVX2M U11 ( .A(par_chk_en), .Y(n35) );
  NOR3X2M U12 ( .A(n25), .B(stp_err), .C(n18), .Y(data_valid) );
  OR2X2M U13 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  NOR4BX1M U14 ( .AN(n32), .B(RX_IN), .C(bit_cnt[3]), .D(cs[2]), .Y(n31) );
  NOR2X2M U15 ( .A(stp_chk_en), .B(deser_en), .Y(n33) );
  INVX2M U16 ( .A(n31), .Y(n19) );
  AOI21XLM U17 ( .A0(N48), .A1(RX_IN), .B0(stp_err), .Y(n26) );
  OAI21BX1M U18 ( .A0(n22), .A1(n23), .B0N(n24), .Y(ns[2]) );
  OAI33XLM U19 ( .A0(n35), .A1(par_err), .A2(n18), .B0(n25), .B1(N48), .B2(n16), .Y(n24) );
  INVX2M U20 ( .A(n26), .Y(n16) );
  NAND3XLM U21 ( .A(n32), .B(N48), .C(bit_cnt[3]), .Y(n28) );
  OR2X2M U22 ( .A(PAR_EN), .B(n28), .Y(n22) );
  NOR2X2M U23 ( .A(n34), .B(cs[2]), .Y(deser_en) );
  NOR3X2M U24 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(bit_cnt[0]), .Y(n32) );
  NAND3X2M U25 ( .A(n34), .B(n36), .C(cs[2]), .Y(n25) );
  INVX2M U26 ( .A(cs[1]), .Y(n36) );
  INVX2M U27 ( .A(cs[0]), .Y(n34) );
  NOR3X2M U28 ( .A(cs[0]), .B(cs[2]), .C(n36), .Y(par_chk_en) );
  NOR2BX2M U29 ( .AN(deser_en), .B(cs[1]), .Y(strt_chk_en) );
  NAND2X2M U30 ( .A(cs[1]), .B(deser_en), .Y(n23) );
  INVX2M U31 ( .A(strt_glitch), .Y(n17) );
  BUFX2M U32 ( .A(enable_bit), .Y(enable_edge) );
  BUFX2M U33 ( .A(enable_bit), .Y(dat_samp_en) );
  OAI211X2M U34 ( .A0(cs[2]), .A1(n36), .B0(n19), .C0(n33), .Y(enable_bit) );
  CLKINVX1M U35 ( .A(prescale[0]), .Y(N41) );
  OAI2BB1X1M U36 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N42) );
  OR2X1M U37 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N43) );
  OR2X1M U39 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U40 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(N44) );
  OR2X1M U41 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U42 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(N45) );
  NOR2X1M U43 ( .A(n6), .B(prescale[5]), .Y(N47) );
  AO21XLM U44 ( .A0(n6), .A1(prescale[5]), .B0(N47), .Y(N46) );
  NOR2BX1M U45 ( .AN(N41), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U46 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N42), .B1(n7), .Y(n11) );
  XNOR2X1M U47 ( .A(N46), .B(edge_cnt[5]), .Y(n10) );
  NOR2BX1M U48 ( .AN(edge_cnt[0]), .B(N41), .Y(n8) );
  OAI2B2X1M U49 ( .A1N(N42), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U50 ( .AN(N47), .B(n11), .C(n10), .D(n9), .Y(n15) );
  CLKXOR2X2M U51 ( .A(N45), .B(edge_cnt[4]), .Y(n14) );
  CLKXOR2X2M U52 ( .A(N43), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U53 ( .A(N44), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U54 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N48) );
endmodule


module DATA_SAMPLING ( CLK, RST_n, RX_IN, prescale, data_samp_en, edge_cnt, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input CLK, RST_n, RX_IN, data_samp_en;
  output sampled_bit;
  wire   bit1, bit2, N2, N3, N4, N5, N6, N7, N8, N10, n8, n9, n10, n11, n12,
         n13, n14, n15, n1, n2, n3, n4, n5, n6, n7, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28;

  DFFRQX2M bit2_reg ( .D(n14), .CK(CLK), .RN(RST_n), .Q(bit2) );
  DFFRQX2M bit1_reg ( .D(n15), .CK(CLK), .RN(RST_n), .Q(bit1) );
  DFFRQX2M sampled_bit_reg ( .D(n13), .CK(CLK), .RN(RST_n), .Q(sampled_bit) );
  INVX2M U3 ( .A(RX_IN), .Y(n28) );
  OAI2BB2X1M U4 ( .B0(n28), .B1(n12), .A0N(n12), .A1N(bit1), .Y(n15) );
  NAND2X2M U5 ( .A(N8), .B(data_samp_en), .Y(n12) );
  OAI2BB2X1M U6 ( .B0(n28), .B1(n11), .A0N(n11), .A1N(bit2), .Y(n14) );
  NAND3BX2M U7 ( .AN(N8), .B(data_samp_en), .C(N10), .Y(n11) );
  OAI2BB2X1M U8 ( .B0(n8), .B1(n9), .A0N(sampled_bit), .A1N(n9), .Y(n13) );
  AOI21X2M U9 ( .A0(bit1), .A1(RX_IN), .B0(n10), .Y(n8) );
  OA21X2M U10 ( .A0(N8), .A1(N10), .B0(data_samp_en), .Y(n9) );
  OA21X2M U11 ( .A0(bit1), .A1(RX_IN), .B0(bit2), .Y(n10) );
  OR2X2M U12 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  CLKINVX1M U13 ( .A(prescale[1]), .Y(N2) );
  OAI2BB1X1M U14 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n1), .Y(N3) );
  OR2X1M U15 ( .A(n1), .B(prescale[3]), .Y(n2) );
  OAI2BB1X1M U16 ( .A0N(n1), .A1N(prescale[3]), .B0(n2), .Y(N4) );
  XNOR2X1M U17 ( .A(prescale[4]), .B(n2), .Y(N5) );
  NOR3X1M U18 ( .A(prescale[4]), .B(prescale[5]), .C(n2), .Y(N7) );
  OAI21X1M U19 ( .A0(prescale[4]), .A1(n2), .B0(prescale[5]), .Y(n3) );
  NAND2BX1M U20 ( .AN(N7), .B(n3), .Y(N6) );
  NOR2BX1M U21 ( .AN(edge_cnt[0]), .B(N2), .Y(n4) );
  OAI2B2X1M U22 ( .A1N(N3), .A0(n4), .B0(edge_cnt[1]), .B1(n4), .Y(n7) );
  NOR2BX1M U23 ( .AN(N2), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U24 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N3), .B1(n5), .Y(n6) );
  NAND4BBX1M U25 ( .AN(N7), .BN(edge_cnt[5]), .C(n7), .D(n6), .Y(n19) );
  CLKXOR2X2M U26 ( .A(N6), .B(edge_cnt[4]), .Y(n18) );
  CLKXOR2X2M U27 ( .A(N4), .B(edge_cnt[2]), .Y(n17) );
  CLKXOR2X2M U28 ( .A(N5), .B(edge_cnt[3]), .Y(n16) );
  NOR4X1M U29 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(N8) );
  NOR2BX1M U30 ( .AN(edge_cnt[0]), .B(prescale[1]), .Y(n20) );
  OAI2B2X1M U31 ( .A1N(prescale[2]), .A0(n20), .B0(edge_cnt[1]), .B1(n20), .Y(
        n23) );
  NOR2BX1M U32 ( .AN(prescale[1]), .B(edge_cnt[0]), .Y(n21) );
  OAI2B2X1M U33 ( .A1N(edge_cnt[1]), .A0(n21), .B0(prescale[2]), .B1(n21), .Y(
        n22) );
  NAND3BX1M U34 ( .AN(edge_cnt[5]), .B(n23), .C(n22), .Y(n27) );
  CLKXOR2X2M U35 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n26) );
  CLKXOR2X2M U36 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n25) );
  CLKXOR2X2M U37 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n24) );
  NOR4X1M U38 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(N10) );
endmodule


module DE_SERIALIZER_DATA_WIDTH8 ( CLK, RST_n, sampled_bit, deser_en, bit_cnt, 
        edge_cnt, prescale, P_DATA );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  output [7:0] P_DATA;
  input CLK, RST_n, sampled_bit, deser_en;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n2, n3, n4, n5, n6, n7, n8, n9, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32;

  DFFRQX2M \P_DATA_reg[1]  ( .D(n17), .CK(CLK), .RN(RST_n), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n13), .CK(CLK), .RN(RST_n), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n11), .CK(CLK), .RN(RST_n), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n18), .CK(CLK), .RN(RST_n), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n14), .CK(CLK), .RN(RST_n), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n15), .CK(CLK), .RN(RST_n), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n16), .CK(CLK), .RN(RST_n), .Q(P_DATA[2]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n12), .CK(CLK), .RN(RST_n), .Q(P_DATA[6]) );
  OAI22X1M U3 ( .A0(n25), .A1(n32), .B0(n2), .B1(n31), .Y(n12) );
  OAI22X1M U4 ( .A0(n25), .A1(n31), .B0(n2), .B1(n30), .Y(n13) );
  OAI22X1M U5 ( .A0(n25), .A1(n30), .B0(n2), .B1(n29), .Y(n14) );
  OAI22X1M U6 ( .A0(n25), .A1(n29), .B0(n2), .B1(n28), .Y(n15) );
  OAI22X1M U7 ( .A0(n25), .A1(n28), .B0(n2), .B1(n27), .Y(n16) );
  OAI22X1M U8 ( .A0(n25), .A1(n27), .B0(n2), .B1(n26), .Y(n17) );
  INVX2M U9 ( .A(n2), .Y(n25) );
  OAI2BB2X1M U10 ( .B0(n25), .B1(n26), .A0N(sampled_bit), .A1N(n25), .Y(n18)
         );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n32), .A0N(P_DATA[7]), .A1N(n2), .Y(n11) );
  BUFX2M U12 ( .A(n1), .Y(n2) );
  NAND3X2M U13 ( .A(N8), .B(n10), .C(deser_en), .Y(n1) );
  NAND4BBX1M U14 ( .AN(bit_cnt[2]), .BN(bit_cnt[0]), .C(bit_cnt[3]), .D(
        bit_cnt[1]), .Y(n10) );
  INVX2M U15 ( .A(P_DATA[6]), .Y(n32) );
  INVX2M U16 ( .A(P_DATA[2]), .Y(n28) );
  INVX2M U17 ( .A(P_DATA[3]), .Y(n29) );
  INVX2M U18 ( .A(P_DATA[0]), .Y(n26) );
  INVX2M U19 ( .A(P_DATA[4]), .Y(n30) );
  INVX2M U20 ( .A(P_DATA[5]), .Y(n31) );
  INVX2M U21 ( .A(P_DATA[1]), .Y(n27) );
  OR2X2M U22 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  CLKINVX1M U23 ( .A(prescale[0]), .Y(N1) );
  OAI2BB1X1M U24 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N2) );
  OR2X1M U25 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U26 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N3) );
  OR2X1M U27 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U28 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(N4) );
  OR2X1M U29 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U30 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(N5) );
  NOR2X1M U31 ( .A(n6), .B(prescale[5]), .Y(N7) );
  AO21XLM U32 ( .A0(n6), .A1(prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U33 ( .AN(N1), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U34 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N2), .B1(n7), .Y(n20) );
  XNOR2X1M U35 ( .A(N6), .B(edge_cnt[5]), .Y(n19) );
  NOR2BX1M U36 ( .AN(edge_cnt[0]), .B(N1), .Y(n8) );
  OAI2B2X1M U37 ( .A1N(N2), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U38 ( .AN(N7), .B(n20), .C(n19), .D(n9), .Y(n24) );
  CLKXOR2X2M U39 ( .A(N5), .B(edge_cnt[4]), .Y(n23) );
  CLKXOR2X2M U40 ( .A(N3), .B(edge_cnt[2]), .Y(n22) );
  CLKXOR2X2M U41 ( .A(N4), .B(edge_cnt[3]), .Y(n21) );
  NOR4X1M U42 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(N8) );
endmodule


module EDGE_BIT_COUNTER ( CLK, RST_n, enable_edge, enable_bit, PAR_EN, 
        prescale, edge_cnt, bit_cnt );
  input [5:0] prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input CLK, RST_n, enable_edge, enable_bit, PAR_EN;
  wire   N5, N6, N7, N8, N9, N10, N11, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N70, N71, N72, N73, n21, \add_17/carry[5] ,
         \add_17/carry[4] , \add_17/carry[3] , \add_17/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55;

  DFFRQX2M \bit_cnt_reg[2]  ( .D(N72), .CK(CLK), .RN(RST_n), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(N71), .CK(CLK), .RN(RST_n), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(N70), .CK(CLK), .RN(RST_n), .Q(bit_cnt[0]) );
  DFFRX1M \bit_cnt_reg[3]  ( .D(N73), .CK(CLK), .RN(RST_n), .Q(bit_cnt[3]), 
        .QN(n21) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(N26), .CK(CLK), .RN(RST_n), .Q(edge_cnt[5])
         );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N21), .CK(CLK), .RN(RST_n), .Q(edge_cnt[0])
         );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N23), .CK(CLK), .RN(RST_n), .Q(edge_cnt[2])
         );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N24), .CK(CLK), .RN(RST_n), .Q(edge_cnt[3])
         );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N25), .CK(CLK), .RN(RST_n), .Q(edge_cnt[4])
         );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N22), .CK(CLK), .RN(RST_n), .Q(edge_cnt[1])
         );
  ADDHX1M U3 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_17/carry[2] ), .S(
        N16) );
  ADDHX1M U4 ( .A(edge_cnt[3]), .B(\add_17/carry[3] ), .CO(\add_17/carry[4] ), 
        .S(N18) );
  ADDHX1M U5 ( .A(edge_cnt[2]), .B(\add_17/carry[2] ), .CO(\add_17/carry[3] ), 
        .S(N17) );
  ADDHX1M U6 ( .A(edge_cnt[4]), .B(\add_17/carry[4] ), .CO(\add_17/carry[5] ), 
        .S(N19) );
  OR2X2M U7 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U8 ( .A(prescale[0]), .Y(N5) );
  OAI2BB1X1M U9 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N6) );
  OR2X1M U10 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U11 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N7) );
  OR2X1M U12 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U13 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N8) );
  OR2X1M U14 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U15 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N9) );
  NOR2X1M U16 ( .A(n4), .B(prescale[5]), .Y(N11) );
  AO21XLM U17 ( .A0(n4), .A1(prescale[5]), .B0(N11), .Y(N10) );
  CLKXOR2X2M U18 ( .A(\add_17/carry[5] ), .B(edge_cnt[5]), .Y(N20) );
  MXI2X1M U19 ( .A(n5), .B(n6), .S0(n21), .Y(N73) );
  NAND4X1M U20 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(bit_cnt[0]), .D(n7), .Y(n6) );
  AOI21X1M U21 ( .A0(n7), .A1(n8), .B0(n9), .Y(n5) );
  OAI2BB2X1M U22 ( .B0(n10), .B1(n11), .A0N(n9), .A1N(bit_cnt[2]), .Y(N72) );
  OAI21X1M U23 ( .A0(bit_cnt[1]), .A1(n10), .B0(n12), .Y(n9) );
  MXI2X1M U24 ( .A(n13), .B(n12), .S0(bit_cnt[1]), .Y(N71) );
  OA21X1M U25 ( .A0(bit_cnt[0]), .A1(n10), .B0(n14), .Y(n12) );
  CLKNAND2X2M U26 ( .A(bit_cnt[0]), .B(n7), .Y(n13) );
  CLKINVX1M U27 ( .A(n10), .Y(n7) );
  MXI2X1M U28 ( .A(n10), .B(n14), .S0(bit_cnt[0]), .Y(N70) );
  CLKNAND2X2M U29 ( .A(n15), .B(enable_bit), .Y(n14) );
  MXI2X1M U30 ( .A(n16), .B(n17), .S0(PAR_EN), .Y(n15) );
  NAND2BX1M U31 ( .AN(n18), .B(n19), .Y(n17) );
  OAI21BX1M U32 ( .A0(n20), .A1(n22), .B0N(n23), .Y(n16) );
  AOI21X1M U33 ( .A0(n24), .A1(n25), .B0(n26), .Y(n20) );
  CLKNAND2X2M U34 ( .A(N9), .B(n27), .Y(n25) );
  OAI22X1M U35 ( .A0(N8), .A1(n28), .B0(n29), .B1(n30), .Y(n24) );
  MXI2X1M U36 ( .A(n31), .B(n32), .S0(PAR_EN), .Y(n10) );
  NOR4X1M U37 ( .A(n18), .B(n33), .C(n19), .D(n34), .Y(n32) );
  NAND2BX1M U38 ( .AN(N11), .B(n35), .Y(n19) );
  OAI22X1M U39 ( .A0(N10), .A1(n36), .B0(n37), .B1(n38), .Y(n35) );
  AND2X1M U40 ( .A(n36), .B(N10), .Y(n37) );
  OAI21X1M U41 ( .A0(edge_cnt[4]), .A1(n39), .B0(n40), .Y(n36) );
  OAI21X1M U42 ( .A0(n41), .A1(n29), .B0(n42), .Y(n40) );
  OA21X1M U43 ( .A0(n28), .A1(N8), .B0(n30), .Y(n41) );
  OAI31X1M U44 ( .A0(n43), .A1(n44), .A2(n45), .B0(n46), .Y(n30) );
  AOI31X1M U45 ( .A0(n47), .A1(n48), .A2(N5), .B0(N6), .Y(n45) );
  AOI21X1M U46 ( .A0(N5), .A1(n47), .B0(n48), .Y(n43) );
  NOR2X1M U47 ( .A(n11), .B(n21), .Y(n18) );
  NAND3X1M U48 ( .A(bit_cnt[0]), .B(n8), .C(bit_cnt[1]), .Y(n11) );
  CLKINVX1M U49 ( .A(bit_cnt[2]), .Y(n8) );
  NOR3X1M U50 ( .A(n49), .B(n23), .C(n34), .Y(n31) );
  CLKINVX1M U51 ( .A(enable_bit), .Y(n34) );
  NOR4BX1M U52 ( .AN(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .D(n21), .Y(
        n23) );
  AND2X1M U53 ( .A(N20), .B(n50), .Y(N26) );
  AND2X1M U54 ( .A(N19), .B(n50), .Y(N25) );
  AND2X1M U55 ( .A(N18), .B(n50), .Y(N24) );
  AND2X1M U56 ( .A(N17), .B(n50), .Y(N23) );
  AND2X1M U57 ( .A(N16), .B(n50), .Y(N22) );
  AND2X1M U58 ( .A(n47), .B(n50), .Y(N21) );
  AND2X1M U59 ( .A(enable_edge), .B(n49), .Y(n50) );
  NAND4BX1M U60 ( .AN(n29), .B(n46), .C(n51), .D(n52), .Y(n49) );
  AOI211X1M U61 ( .A0(N9), .A1(n27), .B0(n22), .C0(n33), .Y(n52) );
  OAI211X1M U62 ( .A0(N8), .A1(n28), .B0(n53), .C0(n54), .Y(n33) );
  AOI221XLM U63 ( .A0(edge_cnt[1]), .A1(n55), .B0(edge_cnt[0]), .B1(
        prescale[0]), .C0(n44), .Y(n54) );
  NOR2BX1M U64 ( .AN(edge_cnt[2]), .B(N7), .Y(n44) );
  CLKINVX1M U65 ( .A(N6), .Y(n55) );
  CLKINVX1M U66 ( .A(n26), .Y(n53) );
  OAI21X1M U67 ( .A0(N10), .A1(n38), .B0(n42), .Y(n26) );
  CLKNAND2X2M U68 ( .A(edge_cnt[4]), .B(n39), .Y(n42) );
  CLKINVX1M U69 ( .A(N9), .Y(n39) );
  CLKINVX1M U70 ( .A(edge_cnt[3]), .Y(n28) );
  AO21XLM U71 ( .A0(n38), .A1(N10), .B0(N11), .Y(n22) );
  CLKINVX1M U72 ( .A(edge_cnt[5]), .Y(n38) );
  CLKINVX1M U73 ( .A(edge_cnt[4]), .Y(n27) );
  AOI22X1M U74 ( .A0(N5), .A1(n47), .B0(N6), .B1(n48), .Y(n51) );
  CLKINVX1M U75 ( .A(edge_cnt[1]), .Y(n48) );
  CLKINVX1M U76 ( .A(edge_cnt[0]), .Y(n47) );
  NAND2BX1M U77 ( .AN(edge_cnt[2]), .B(N7), .Y(n46) );
  NOR2BX1M U78 ( .AN(N8), .B(edge_cnt[3]), .Y(n29) );
endmodule


module PARITY_CHECK ( CLK, RST_n, P_DATA, par_chk_en, PAR_TYP, sampled_bit, 
        edge_cnt, prescale, par_err );
  input [7:0] P_DATA;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, par_chk_en, PAR_TYP, sampled_bit;
  output par_err;
  wire   N5, N6, N7, N8, N9, N10, N12, N19, n5, n6, n7, n8, n9, n10,
         \sub_17/carry[5] , \sub_17/carry[4] , \sub_17/carry[3] , n1, n2, n3,
         n4, n11, n12, n13, n14, n15, n16;
  assign N5 = prescale[0];

  DFFRQX2M par_err_reg ( .D(N19), .CK(CLK), .RN(RST_n), .Q(par_err) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_17/carry[5] ), .Y(n1) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n9), .Y(n8) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n9) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n10), .Y(n7) );
  XNOR2X2M U7 ( .A(sampled_bit), .B(P_DATA[6]), .Y(n10) );
  AND3X2M U8 ( .A(N12), .B(n5), .C(par_chk_en), .Y(N19) );
  XOR3XLM U9 ( .A(n6), .B(n7), .C(n8), .Y(n5) );
  CLKXOR2X2M U10 ( .A(P_DATA[7]), .B(PAR_TYP), .Y(n6) );
  INVX2M U11 ( .A(prescale[1]), .Y(N6) );
  XNOR2X1M U12 ( .A(\sub_17/carry[5] ), .B(prescale[5]), .Y(N10) );
  OR2X1M U13 ( .A(prescale[4]), .B(\sub_17/carry[4] ), .Y(\sub_17/carry[5] )
         );
  XNOR2X1M U14 ( .A(\sub_17/carry[4] ), .B(prescale[4]), .Y(N9) );
  OR2X1M U15 ( .A(prescale[3]), .B(\sub_17/carry[3] ), .Y(\sub_17/carry[4] )
         );
  XNOR2X1M U16 ( .A(\sub_17/carry[3] ), .B(prescale[3]), .Y(N8) );
  OR2X1M U17 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_17/carry[3] ) );
  XNOR2X1M U18 ( .A(prescale[1]), .B(prescale[2]), .Y(N7) );
  NOR2BX1M U19 ( .AN(N5), .B(edge_cnt[0]), .Y(n2) );
  OAI2B2X1M U20 ( .A1N(edge_cnt[1]), .A0(n2), .B0(N6), .B1(n2), .Y(n12) );
  XNOR2X1M U21 ( .A(N10), .B(edge_cnt[5]), .Y(n11) );
  NOR2BX1M U22 ( .AN(edge_cnt[0]), .B(N5), .Y(n3) );
  OAI2B2X1M U23 ( .A1N(N6), .A0(n3), .B0(edge_cnt[1]), .B1(n3), .Y(n4) );
  NAND4BX1M U24 ( .AN(n1), .B(n12), .C(n11), .D(n4), .Y(n16) );
  CLKXOR2X2M U25 ( .A(N9), .B(edge_cnt[4]), .Y(n15) );
  CLKXOR2X2M U26 ( .A(N7), .B(edge_cnt[2]), .Y(n14) );
  CLKXOR2X2M U27 ( .A(N8), .B(edge_cnt[3]), .Y(n13) );
  NOR4X1M U28 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(N12) );
endmodule


module STR_CHECK ( CLK, RST_n, strt_chk_en, sampled_bit, edge_cnt, prescale, 
        strt_glitch );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, strt_chk_en, sampled_bit;
  output strt_glitch;
  wire   N1, N2, N3, N4, N5, N6, N8, N9, \sub_13/carry[5] , \sub_13/carry[4] ,
         \sub_13/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  assign N1 = prescale[0];

  DFFRQX2M strt_glitch_reg ( .D(N9), .CK(CLK), .RN(RST_n), .Q(strt_glitch) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_13/carry[5] ), .Y(n1) );
  AND3X2M U4 ( .A(sampled_bit), .B(N8), .C(strt_chk_en), .Y(N9) );
  INVX2M U5 ( .A(prescale[1]), .Y(N2) );
  XNOR2X1M U6 ( .A(\sub_13/carry[5] ), .B(prescale[5]), .Y(N6) );
  OR2X1M U7 ( .A(prescale[4]), .B(\sub_13/carry[4] ), .Y(\sub_13/carry[5] ) );
  XNOR2X1M U8 ( .A(\sub_13/carry[4] ), .B(prescale[4]), .Y(N5) );
  OR2X1M U9 ( .A(prescale[3]), .B(\sub_13/carry[3] ), .Y(\sub_13/carry[4] ) );
  XNOR2X1M U10 ( .A(\sub_13/carry[3] ), .B(prescale[3]), .Y(N4) );
  OR2X1M U11 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_13/carry[3] ) );
  XNOR2X1M U12 ( .A(prescale[1]), .B(prescale[2]), .Y(N3) );
  NOR2BX1M U13 ( .AN(N1), .B(edge_cnt[0]), .Y(n2) );
  OAI2B2X1M U14 ( .A1N(edge_cnt[1]), .A0(n2), .B0(N2), .B1(n2), .Y(n6) );
  XNOR2X1M U15 ( .A(N6), .B(edge_cnt[5]), .Y(n5) );
  NOR2BX1M U16 ( .AN(edge_cnt[0]), .B(N1), .Y(n3) );
  OAI2B2X1M U17 ( .A1N(N2), .A0(n3), .B0(edge_cnt[1]), .B1(n3), .Y(n4) );
  NAND4BX1M U18 ( .AN(n1), .B(n6), .C(n5), .D(n4), .Y(n10) );
  CLKXOR2X2M U19 ( .A(N5), .B(edge_cnt[4]), .Y(n9) );
  CLKXOR2X2M U20 ( .A(N3), .B(edge_cnt[2]), .Y(n8) );
  CLKXOR2X2M U21 ( .A(N4), .B(edge_cnt[3]), .Y(n7) );
  NOR4X1M U22 ( .A(n10), .B(n9), .C(n8), .D(n7), .Y(N8) );
endmodule


module STOP_CHECK ( CLK, RST_n, stp_chk_en, sampled_bit, edge_cnt, prescale, 
        stp_err );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK, RST_n, stp_chk_en, sampled_bit;
  output stp_err;
  wire   N1, N2, N3, N4, N5, N6, N8, N9, \sub_13/carry[5] , \sub_13/carry[4] ,
         \sub_13/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign N1 = prescale[0];

  DFFRQX2M stp_err_reg ( .D(N9), .CK(CLK), .RN(RST_n), .Q(stp_err) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_13/carry[5] ), .Y(n1) );
  AND3X2M U4 ( .A(n11), .B(N8), .C(stp_chk_en), .Y(N9) );
  INVX2M U5 ( .A(sampled_bit), .Y(n11) );
  INVX2M U6 ( .A(prescale[1]), .Y(N2) );
  XNOR2X1M U7 ( .A(\sub_13/carry[5] ), .B(prescale[5]), .Y(N6) );
  OR2X1M U8 ( .A(prescale[4]), .B(\sub_13/carry[4] ), .Y(\sub_13/carry[5] ) );
  XNOR2X1M U9 ( .A(\sub_13/carry[4] ), .B(prescale[4]), .Y(N5) );
  OR2X1M U10 ( .A(prescale[3]), .B(\sub_13/carry[3] ), .Y(\sub_13/carry[4] )
         );
  XNOR2X1M U11 ( .A(\sub_13/carry[3] ), .B(prescale[3]), .Y(N4) );
  OR2X1M U12 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_13/carry[3] ) );
  XNOR2X1M U13 ( .A(prescale[1]), .B(prescale[2]), .Y(N3) );
  NOR2BX1M U14 ( .AN(N1), .B(edge_cnt[0]), .Y(n2) );
  OAI2B2X1M U15 ( .A1N(edge_cnt[1]), .A0(n2), .B0(N2), .B1(n2), .Y(n6) );
  XNOR2X1M U16 ( .A(N6), .B(edge_cnt[5]), .Y(n5) );
  NOR2BX1M U17 ( .AN(edge_cnt[0]), .B(N1), .Y(n3) );
  OAI2B2X1M U18 ( .A1N(N2), .A0(n3), .B0(edge_cnt[1]), .B1(n3), .Y(n4) );
  NAND4BX1M U19 ( .AN(n1), .B(n6), .C(n5), .D(n4), .Y(n10) );
  CLKXOR2X2M U20 ( .A(N5), .B(edge_cnt[4]), .Y(n9) );
  CLKXOR2X2M U21 ( .A(N3), .B(edge_cnt[2]), .Y(n8) );
  CLKXOR2X2M U22 ( .A(N4), .B(edge_cnt[3]), .Y(n7) );
  NOR4X1M U23 ( .A(n10), .B(n9), .C(n8), .D(n7), .Y(N8) );
endmodule


module UART_RX_TOP_DATA_WIDTH8 ( CLK, RST_n, PAR_EN, PAR_TYP, RX_IN, prescale, 
        data_valid, P_DATA, stp_err, par_err );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input CLK, RST_n, PAR_EN, PAR_TYP, RX_IN;
  output data_valid, stp_err, par_err;
  wire   strt_glitch, par_chk_en, strt_chk_en, stp_chk_en, deser_en,
         enable_edge, enable_bit, dat_samp_en, sampled_bit, n1, n2;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;

  FSM fsm_2 ( .CLK(CLK), .RST_n(n1), .PAR_EN(PAR_EN), .par_err(par_err), 
        .stp_err(stp_err), .strt_glitch(strt_glitch), .RX_IN(RX_IN), .bit_cnt(
        bit_cnt), .edge_cnt(edge_cnt), .prescale(prescale), .par_chk_en(
        par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(stp_chk_en), 
        .deser_en(deser_en), .data_valid(data_valid), .enable_edge(enable_edge), .enable_bit(enable_bit), .dat_samp_en(dat_samp_en) );
  DATA_SAMPLING dt_sam ( .CLK(CLK), .RST_n(n1), .RX_IN(RX_IN), .prescale(
        prescale), .data_samp_en(dat_samp_en), .edge_cnt(edge_cnt), 
        .sampled_bit(sampled_bit) );
  DE_SERIALIZER_DATA_WIDTH8 de_ser ( .CLK(CLK), .RST_n(n1), .sampled_bit(
        sampled_bit), .deser_en(deser_en), .bit_cnt(bit_cnt), .edge_cnt(
        edge_cnt), .prescale(prescale), .P_DATA(P_DATA) );
  EDGE_BIT_COUNTER edge_bit ( .CLK(CLK), .RST_n(n1), .enable_edge(enable_edge), 
        .enable_bit(enable_bit), .PAR_EN(PAR_EN), .prescale(prescale), 
        .edge_cnt(edge_cnt), .bit_cnt(bit_cnt) );
  PARITY_CHECK par_chk ( .CLK(CLK), .RST_n(n1), .P_DATA(P_DATA), .par_chk_en(
        par_chk_en), .PAR_TYP(PAR_TYP), .sampled_bit(sampled_bit), .edge_cnt(
        edge_cnt), .prescale(prescale), .par_err(par_err) );
  STR_CHECK str_chk ( .CLK(CLK), .RST_n(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .edge_cnt(edge_cnt), .prescale(prescale), 
        .strt_glitch(strt_glitch) );
  STOP_CHECK stp_chk ( .CLK(CLK), .RST_n(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .edge_cnt(edge_cnt), .prescale(prescale), 
        .stp_err(stp_err) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_n), .Y(n2) );
endmodule


module UART_SYS_TOP_DATA_WIDTH8 ( RX_IN, RX_CLK, TX_CLK, parity_en, parity_typ, 
        prescale, RST, FIFO_EMPTY, FIFO_DATA, BUSY, RX_VALID, RX_P_DATA, 
        TX_OUT, PAR_ERR, STP_ERR );
  input [5:0] prescale;
  input [7:0] FIFO_DATA;
  output [7:0] RX_P_DATA;
  input RX_IN, RX_CLK, TX_CLK, parity_en, parity_typ, RST, FIFO_EMPTY;
  output BUSY, RX_VALID, TX_OUT, PAR_ERR, STP_ERR;
  wire   n1, n2;

  UART_TX_TOP_DATA_WIDTH8 tx ( .CLK(TX_CLK), .RST(n1), .FIFO_EMPTY(FIFO_EMPTY), 
        .PAR_EN(parity_en), .PAR_TYP(parity_typ), .P_DATA(FIFO_DATA), .TX_OUT(
        TX_OUT), .busy(BUSY) );
  UART_RX_TOP_DATA_WIDTH8 rx ( .CLK(RX_CLK), .RST_n(n1), .PAR_EN(parity_en), 
        .PAR_TYP(parity_typ), .RX_IN(RX_IN), .prescale(prescale), .data_valid(
        RX_VALID), .P_DATA(RX_P_DATA), .stp_err(STP_ERR), .par_err(PAR_ERR) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module SYS_TOP ( UART_RX_IN, UART_TX_O, REF_CLK, UART_CLK, RST_N, parity_error, 
        framing_error );
  input UART_RX_IN, REF_CLK, UART_CLK, RST_N;
  output UART_TX_O, parity_error, framing_error;
  wire   ALU_out_valid, RX_D_VLD, RF_RdData_Valid, RST_SYNC_D1, FIFO_FULL,
         ALU_EN, WR_INC_FIFO, CLK_GATE_EN, RF_WrEN, RF_RdEn, CLK_GATED,
         RST_SYNC_D2, TX_CLK, RINC, FIFO_EMPTY, RX_CLK, RX_VALID, BUSY, n1, n2,
         n3, n4, n5, n6, n7;
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

  SYS_CTRL control_unit ( .ALU_out_valid(ALU_out_valid), .RX_D_VLD(RX_D_VLD), 
        .RF_RdData_Valid(RF_RdData_Valid), .CLK(REF_CLK), .RST(n6), 
        .FIFO_FULL(FIFO_FULL), .ALU_OUT(ALU_OUT), .RX_P_Data(RX_P_Data), 
        .RF_RD_DATA(RF_RD_DATA), .ALU_EN(ALU_EN), .WR_INC_FIFO(WR_INC_FIFO), 
        .ALU_FUNC(ALU_FUNC), .CLK_GATE_EN(CLK_GATE_EN), .RF_Address(RF_Address), .RF_WrEN(RF_WrEN), .RF_RdEn(RF_RdEn), .RF_WrData(RF_WrData), .FIFO_WR_Data(
        FIFO_WR_Data) );
  CLK_GATE clk_gate ( .CLK_EN(CLK_GATE_EN), .CLK(REF_CLK), .GATED_CLK(
        CLK_GATED) );
  Register_file_ADDR4_DATA_WIDTH8_WIDTH8_DEPTH16 reg_file ( .WrData(RF_WrData), 
        .REF_CLK(REF_CLK), .RST(n6), .WrEn(RF_WrEN), .RdEn(RF_RdEn), .Address(
        {RF_Address[3:2], n5, n4}), .RdData(RF_RD_DATA), .RdData_Valid(
        RF_RdData_Valid), .REG0(A_to_reg), .REG1(B_to_reg), .REG2(UART_CONFIG), 
        .REG3(DIV_RATIO) );
  ALU_WIDTH8_FUNC4 alu ( .A(A_to_reg), .B(B_to_reg), .ALU_OUT(ALU_OUT), 
        .ALU_FUN(ALU_FUNC), .REF_CLK(CLK_GATED), .EN(ALU_EN), .RST(n6), 
        .ALU_OUT_VALID(ALU_out_valid) );
  RST_SYNC_NUM_STAGES2_0 rst_sync_d1 ( .RST(RST_N), .CLK(REF_CLK), .RST_SYNC(
        RST_SYNC_D1) );
  RST_SYNC_NUM_STAGES2_1 rst_sync_d2 ( .RST(RST_N), .CLK(UART_CLK), .RST_SYNC(
        RST_SYNC_D2) );
  FIFO_TOP_DATA_WIDTH8_ADDR_WIDTH3_BUS_WIDTH4 fifo ( .RD_CLK(TX_CLK), .WR_CLK(
        REF_CLK), .RD_RST(n2), .WR_RST(n6), .WINC(WR_INC_FIFO), .RINC(RINC), 
        .WDATA(FIFO_WR_Data), .FULL(FIFO_FULL), .EMPTY(FIFO_EMPTY), .RDATA(
        RD_DATA) );
  input_division_rx_ratio div ( .prescale(UART_CONFIG[7:2]), .in_div_ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, in_div_ratio[2:0]}) );
  CLOCK_DIV_DIV_WIDTH8_0 clk_div_1 ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        in_div_ratio[2:0]}), .o_div_clk(RX_CLK) );
  CLOCK_DIV_DIV_WIDTH8_1 clk_div_2 ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(TX_CLK) );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 data_sync ( .CLK_DESTINATION(REF_CLK), 
        .RST_DESTINATION(n6), .bus_enable(RX_VALID), .unsync_bus(RX_DATA), 
        .sync_bus(RX_P_Data), .enable_pulse(RX_D_VLD) );
  BUSY_PULSE_GENERATOR busy_pulse_gen ( .sync_en(BUSY), .CLK_DESTINATION(
        TX_CLK), .RST_DESTINATION(n2), .enable_pulse(RINC) );
  UART_SYS_TOP_DATA_WIDTH8 uart ( .RX_IN(n1), .RX_CLK(RX_CLK), .TX_CLK(TX_CLK), 
        .parity_en(UART_CONFIG[0]), .parity_typ(UART_CONFIG[1]), .prescale(
        UART_CONFIG[7:2]), .RST(n2), .FIFO_EMPTY(FIFO_EMPTY), .FIFO_DATA(
        RD_DATA), .BUSY(BUSY), .RX_VALID(RX_VALID), .RX_P_DATA(RX_DATA), 
        .TX_OUT(UART_TX_O) );
  INVX4M U1 ( .A(n7), .Y(n6) );
  INVX2M U2 ( .A(n3), .Y(n2) );
  BUFX2M U3 ( .A(RF_Address[0]), .Y(n4) );
  BUFX2M U4 ( .A(RF_Address[1]), .Y(n5) );
  INVX2M U5 ( .A(RST_SYNC_D1), .Y(n7) );
  BUFX2M U6 ( .A(UART_RX_IN), .Y(n1) );
  INVX2M U7 ( .A(RST_SYNC_D2), .Y(n3) );
endmodule


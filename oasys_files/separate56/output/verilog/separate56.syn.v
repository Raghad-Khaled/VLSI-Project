/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 24 14:54:05 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2039566868 */

module Separate56(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
      alarmbuzz, heater, cooler, display);
   input clk;
   input Rst;
   input SFD;
   input SRD;
   input SW;
   input SFA;
   input [6:0]ST;
   output fdoor;
   output rdoor;
   output winbuzz;
   output alarmbuzz;
   output heater;
   output cooler;
   output [2:0]display;

   wire n_0_1_0;
   wire n_0_2_0;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_4_2;
   wire n_0_5_0;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_0;
   wire n_0_7_0;
   wire n_0_7_1;
   wire n_0_7_2;
   wire n_0_7_3;
   wire n_0_7_4;
   wire n_0_7_5;
   wire n_0_7_6;
   wire n_0_7_7;
   wire n_0_7_8;
   wire n_0_7_9;
   wire n_0_7_10;
   wire n_0_7_11;
   wire n_0_7_12;
   wire n_0_7_13;
   wire n_0_1;
   wire n_0_7_14;
   wire n_0_7_15;
   wire n_0_7_16;
   wire n_0_7_17;
   wire n_0_7_18;
   wire n_0_7_19;
   wire n_0_7_20;
   wire n_0_7_21;
   wire n_0_7_22;
   wire n_0_7_23;
   wire n_0_7_24;
   wire n_0_2;
   wire n_0_7_25;
   wire n_0_7_26;
   wire n_0_7_27;
   wire n_0_7_28;
   wire n_0_7_29;
   wire n_0_7_30;
   wire n_0_7_31;
   wire n_0_7_32;
   wire n_0_7_33;
   wire n_0_7_34;
   wire n_0_7_35;
   wire n_0_7_36;
   wire n_0_7_37;
   wire n_0_7_38;
   wire n_0_7_39;
   wire n_0_7_40;
   wire n_0_7_41;
   wire n_0_7_42;
   wire n_0_7_43;
   wire n_0_7_44;
   wire n_0_7_45;
   wire n_0_7_46;
   wire n_0_7_47;
   wire n_0_7_48;
   wire n_0_7_49;
   wire n_0_7_50;
   wire n_0_7_51;
   wire n_0_7_52;
   wire n_0_7_53;
   wire n_0_7_54;
   wire n_0_7_55;
   wire n_0_7_56;
   wire n_0_7_57;
   wire n_0_7_58;
   wire n_0_7_59;
   wire n_0_7_60;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   DFF_X2 \current_state_reg[1]  (.D(n_0_1), .CK(clk), .Q(display[1]), .QN());
   DFF_X2 \current_state_reg[0]  (.D(n_0_0), .CK(clk), .Q(display[0]), .QN());
   DFF_X2 \current_state_reg[2]  (.D(n_0_2), .CK(clk), .Q(display[2]), .QN());
   NAND2_X1 i_0_1_0 (.A1(display[1]), .A2(display[2]), .ZN(n_0_1_0));
   NOR2_X1 i_0_1_1 (.A1(n_0_1_0), .A2(display[0]), .ZN(cooler));
   NAND2_X1 i_0_2_0 (.A1(display[0]), .A2(display[2]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_3_0 (.A1(display[0]), .A2(display[1]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_4_0 (.A(n_0_4_0), .ZN(winbuzz));
   NAND3_X1 i_0_4_1 (.A1(display[2]), .A2(n_0_4_2), .A3(n_0_4_1), .ZN(n_0_4_0));
   INV_X1 i_0_4_2 (.A(display[0]), .ZN(n_0_4_1));
   INV_X1 i_0_4_3 (.A(display[1]), .ZN(n_0_4_2));
   INV_X1 i_0_5_0 (.A(display[1]), .ZN(n_0_5_0));
   NOR2_X1 i_0_5_1 (.A1(n_0_5_0), .A2(display[0]), .ZN(rdoor));
   INV_X1 i_0_6_0 (.A(display[2]), .ZN(n_0_6_0));
   NAND2_X1 i_0_6_1 (.A1(display[0]), .A2(n_0_6_0), .ZN(n_0_6_1));
   NOR2_X1 i_0_6_2 (.A1(n_0_6_1), .A2(display[1]), .ZN(fdoor));
   AOI21_X1 i_0_7_0 (.A(Rst), .B1(n_0_7_10), .B2(n_0_7_0), .ZN(n_0_0));
   AOI21_X1 i_0_7_1 (.A(n_0_7_1), .B1(n_0_7_9), .B2(n_0_7_8), .ZN(n_0_7_0));
   OAI21_X1 i_0_7_2 (.A(n_0_7_5), .B1(n_0_7_4), .B2(n_0_7_2), .ZN(n_0_7_1));
   INV_X1 i_0_7_3 (.A(n_0_7_3), .ZN(n_0_7_2));
   OAI21_X1 i_0_7_4 (.A(n_0_7_31), .B1(SW), .B2(n_0_7_42), .ZN(n_0_7_3));
   AOI21_X1 i_0_7_5 (.A(n_0_7_48), .B1(n_0_7_52), .B2(n_0_7_6), .ZN(n_0_7_4));
   OR3_X1 i_0_7_6 (.A1(n_0_7_36), .A2(n_0_7_7), .A3(n_0_7_24), .ZN(n_0_7_5));
   OAI21_X1 i_0_7_7 (.A(n_0_7_57), .B1(n_0_7_58), .B2(SRD), .ZN(n_0_7_6));
   NOR3_X1 i_0_7_8 (.A1(SFA), .A2(SFD), .A3(n_0_7_13), .ZN(n_0_7_7));
   OAI21_X1 i_0_7_9 (.A(n_0_7_40), .B1(SRD), .B2(n_0_7_38), .ZN(n_0_7_8));
   OAI211_X1 i_0_7_10 (.A(n_0_7_58), .B(n_0_7_12), .C1(SW), .C2(n_0_7_19), 
      .ZN(n_0_7_9));
   OAI21_X1 i_0_7_11 (.A(n_0_7_28), .B1(n_0_7_20), .B2(n_0_7_11), .ZN(n_0_7_10));
   AOI211_X1 i_0_7_12 (.A(SRD), .B(n_0_7_51), .C1(n_0_7_58), .C2(n_0_7_12), 
      .ZN(n_0_7_11));
   INV_X1 i_0_7_13 (.A(n_0_7_13), .ZN(n_0_7_12));
   NOR2_X1 i_0_7_14 (.A1(SW), .A2(n_0_7_47), .ZN(n_0_7_13));
   NOR2_X1 i_0_7_15 (.A1(Rst), .A2(n_0_7_14), .ZN(n_0_1));
   AOI21_X1 i_0_7_16 (.A(n_0_7_15), .B1(n_0_7_41), .B2(n_0_7_22), .ZN(n_0_7_14));
   OAI22_X1 i_0_7_17 (.A1(n_0_7_34), .A2(n_0_7_21), .B1(n_0_7_18), .B2(n_0_7_16), 
      .ZN(n_0_7_15));
   AOI21_X1 i_0_7_18 (.A(n_0_7_28), .B1(n_0_7_47), .B2(n_0_7_17), .ZN(n_0_7_16));
   OAI21_X1 i_0_7_19 (.A(n_0_7_37), .B1(SW), .B2(n_0_7_42), .ZN(n_0_7_17));
   AOI21_X1 i_0_7_20 (.A(n_0_7_51), .B1(n_0_7_57), .B2(n_0_7_39), .ZN(n_0_7_18));
   INV_X1 i_0_7_21 (.A(n_0_7_20), .ZN(n_0_7_19));
   NOR2_X1 i_0_7_22 (.A1(n_0_7_57), .A2(n_0_7_51), .ZN(n_0_7_20));
   AOI21_X1 i_0_7_23 (.A(n_0_7_39), .B1(n_0_7_59), .B2(n_0_7_51), .ZN(n_0_7_21));
   OAI21_X1 i_0_7_24 (.A(n_0_7_58), .B1(n_0_7_46), .B2(n_0_7_23), .ZN(n_0_7_22));
   NOR2_X1 i_0_7_25 (.A1(n_0_7_51), .A2(n_0_7_24), .ZN(n_0_7_23));
   AND2_X1 i_0_7_26 (.A1(SRD), .A2(n_0_7_57), .ZN(n_0_7_24));
   NOR2_X1 i_0_7_27 (.A1(Rst), .A2(n_0_7_25), .ZN(n_0_2));
   AOI221_X1 i_0_7_28 (.A(n_0_7_29), .B1(n_0_7_45), .B2(n_0_7_32), .C1(n_0_7_28), 
      .C2(n_0_7_26), .ZN(n_0_7_25));
   INV_X1 i_0_7_29 (.A(n_0_7_27), .ZN(n_0_7_26));
   AOI21_X1 i_0_7_30 (.A(n_0_7_51), .B1(n_0_7_46), .B2(n_0_7_33), .ZN(n_0_7_27));
   NOR2_X1 i_0_7_31 (.A1(n_0_7_55), .A2(n_0_7_37), .ZN(n_0_7_28));
   AOI21_X1 i_0_7_32 (.A(n_0_7_31), .B1(n_0_7_47), .B2(n_0_7_30), .ZN(n_0_7_29));
   AOI21_X1 i_0_7_33 (.A(n_0_7_51), .B1(SW), .B2(n_0_7_33), .ZN(n_0_7_30));
   OR2_X1 i_0_7_34 (.A1(n_0_5), .A2(n_0_7_37), .ZN(n_0_7_31));
   OAI221_X1 i_0_7_35 (.A(n_0_7_42), .B1(SFA), .B2(n_0_7_40), .C1(n_0_7_39), 
      .C2(n_0_7_34), .ZN(n_0_7_32));
   NOR2_X1 i_0_7_36 (.A1(SFD), .A2(n_0_7_39), .ZN(n_0_7_33));
   INV_X1 i_0_7_37 (.A(n_0_7_35), .ZN(n_0_7_34));
   OAI21_X1 i_0_7_38 (.A(n_0_7_38), .B1(SFD), .B2(n_0_7_36), .ZN(n_0_7_35));
   NAND3_X1 i_0_7_39 (.A1(n_0_7_44), .A2(n_0_7_37), .A3(n_0_7_55), .ZN(n_0_7_36));
   OR2_X1 i_0_7_40 (.A1(n_0_7_56), .A2(n_0_4), .ZN(n_0_7_37));
   OR3_X1 i_0_7_41 (.A1(n_0_3), .A2(n_0_4), .A3(n_0_7_55), .ZN(n_0_7_38));
   OR2_X1 i_0_7_42 (.A1(SFA), .A2(SRD), .ZN(n_0_7_39));
   INV_X1 i_0_7_43 (.A(n_0_7_41), .ZN(n_0_7_40));
   NOR2_X1 i_0_7_44 (.A1(n_0_5), .A2(n_0_7_44), .ZN(n_0_7_41));
   NAND2_X1 i_0_7_45 (.A1(n_0_5), .A2(n_0_7_43), .ZN(n_0_7_42));
   INV_X1 i_0_7_46 (.A(n_0_7_44), .ZN(n_0_7_43));
   NAND2_X1 i_0_7_47 (.A1(n_0_7_56), .A2(n_0_4), .ZN(n_0_7_44));
   NAND3_X1 i_0_7_48 (.A1(n_0_7_52), .A2(n_0_7_47), .A3(n_0_7_59), .ZN(n_0_7_45));
   NAND2_X1 i_0_7_49 (.A1(n_0_7_59), .A2(n_0_7_47), .ZN(n_0_7_46));
   INV_X1 i_0_7_50 (.A(n_0_7_48), .ZN(n_0_7_47));
   AOI21_X1 i_0_7_51 (.A(ST[6]), .B1(ST[5]), .B2(n_0_7_49), .ZN(n_0_7_48));
   NOR2_X1 i_0_7_52 (.A1(n_0_7_60), .A2(n_0_7_50), .ZN(n_0_7_49));
   NOR3_X1 i_0_7_53 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_7_50));
   INV_X1 i_0_7_54 (.A(n_0_7_52), .ZN(n_0_7_51));
   OAI21_X1 i_0_7_55 (.A(ST[6]), .B1(n_0_7_54), .B2(n_0_7_53), .ZN(n_0_7_52));
   OR3_X1 i_0_7_56 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_7_53));
   AND3_X1 i_0_7_57 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_7_54));
   INV_X1 i_0_7_58 (.A(n_0_5), .ZN(n_0_7_55));
   INV_X1 i_0_7_59 (.A(n_0_3), .ZN(n_0_7_56));
   INV_X1 i_0_7_60 (.A(SFD), .ZN(n_0_7_57));
   INV_X1 i_0_7_61 (.A(SFA), .ZN(n_0_7_58));
   INV_X1 i_0_7_62 (.A(SW), .ZN(n_0_7_59));
   INV_X1 i_0_7_63 (.A(ST[4]), .ZN(n_0_7_60));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_3));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_4));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(display[0]), .Z(n_0_5));
endmodule

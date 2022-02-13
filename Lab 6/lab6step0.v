// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Standard Edition"
// CREATED		"Tue Oct 13 16:01:04 2020"

module lab6step0(
	Cin,
	N2,
	N3,
	N0,
	N1
);


input wire	Cin;
input wire	[3:0] N2;
input wire	[3:0] N3;
output wire	[3:0] N0;
output wire	[3:0] N1;

wire	[3:0] N_ALTERA_SYNTHESIZED0;
wire	[3:0] N_ALTERA_SYNTHESIZED1;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;





adder_4bit	b2v_inst(
	.X3(N3[3]),
	.Y3(N2[3]),
	.X2(N3[2]),
	.Y2(N2[2]),
	.X1(N3[1]),
	.Y1(N2[1]),
	.X0(N3[0]),
	.Y0(N2[0]),
	.Ci(Cin),
	.S0(SYNTHESIZED_WIRE_0),
	.S1(SYNTHESIZED_WIRE_1),
	.S2(SYNTHESIZED_WIRE_2),
	.S3(SYNTHESIZED_WIRE_3),
	.Co(SYNTHESIZED_WIRE_4));


binary_decimal_converter	b2v_inst1(
	.s0(SYNTHESIZED_WIRE_0),
	.s1(SYNTHESIZED_WIRE_1),
	.s2(SYNTHESIZED_WIRE_2),
	.s3(SYNTHESIZED_WIRE_3),
	.c0(SYNTHESIZED_WIRE_4),
	.Z2(N_ALTERA_SYNTHESIZED1[3]),
	.Y2(N_ALTERA_SYNTHESIZED1[2]),
	.X2(N_ALTERA_SYNTHESIZED1[1]),
	.W2(N_ALTERA_SYNTHESIZED1[0]),
	.Z(N_ALTERA_SYNTHESIZED0[3]),
	.Y(N_ALTERA_SYNTHESIZED0[2]),
	.X(N_ALTERA_SYNTHESIZED0[1]),
	.W(N_ALTERA_SYNTHESIZED0[0]));

assign	N0 = N_ALTERA_SYNTHESIZED0;
assign	N1 = N_ALTERA_SYNTHESIZED1;

endmodule

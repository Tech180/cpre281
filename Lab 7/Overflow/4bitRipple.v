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
// CREATED		"Thu Oct 22 12:28:08 2020"

module \4bitRipple (
	X3,
	Y3,
	X2,
	Y2,
	X1,
	Y1,
	X0,
	Y0,
	Cin,
	S2,
	S1,
	S0,
	S3,
	Cout,
	Overflow
);


input wire	X3;
input wire	Y3;
input wire	X2;
input wire	Y2;
input wire	X1;
input wire	Y1;
input wire	X0;
input wire	Y0;
input wire	Cin;
output wire	S2;
output wire	S1;
output wire	S0;
output wire	S3;
output wire	Cout;
output wire	Overflow;

wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	Cout = SYNTHESIZED_WIRE_3;




OnebitAdder	b2v_inst(
	.X(X3),
	.Y(Y3),
	.Cin(SYNTHESIZED_WIRE_5),
	.S(S3),
	.Cout(SYNTHESIZED_WIRE_3));


OnebitAdder	b2v_inst1(
	.X(X2),
	.Y(Y2),
	.Cin(SYNTHESIZED_WIRE_1),
	.S(S2),
	.Cout(SYNTHESIZED_WIRE_5));


OnebitAdder	b2v_inst2(
	.X(X1),
	.Y(Y1),
	.Cin(SYNTHESIZED_WIRE_2),
	.S(S1),
	.Cout(SYNTHESIZED_WIRE_1));


OnebitAdder	b2v_inst3(
	.X(X0),
	.Y(Y0),
	.Cin(Cin),
	.S(S0),
	.Cout(SYNTHESIZED_WIRE_2));

assign	Overflow = SYNTHESIZED_WIRE_3 ^ SYNTHESIZED_WIRE_5;


endmodule

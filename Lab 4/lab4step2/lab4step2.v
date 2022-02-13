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
// CREATED		"Wed Sep 23 21:34:34 2020"

module lab4step2(
	P,
	H,
	T,
	M,
	AC
);


input wire	P;
input wire	H;
input wire	T;
input wire	M;
output wire	AC;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





Normal	b2v_inst(
	.P(P),
	.T(T),
	.H(H),
	.E(SYNTHESIZED_WIRE_0));


powersaving	b2v_inst1(
	.P(P),
	.T(T),
	.H(H),
	.F(SYNTHESIZED_WIRE_1));


Multiplexer	b2v_inst3(
	.E(SYNTHESIZED_WIRE_0),
	.F(SYNTHESIZED_WIRE_1),
	.M(M),
	.AC(AC));


endmodule

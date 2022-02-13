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
// CREATED		"Thu Oct 29 22:07:17 2020"

module lab8step2(
	S1,
	S0,
	X0,
	X1,
	X2,
	X3,
	X_3,
	X_2,
	X_1,
	F
);


input wire	S1;
input wire	S0;
input wire	X0;
input wire	X1;
input wire	X2;
input wire	X3;
input wire	X_3;
input wire	X_2;
input wire	X_1;
output wire	[3:0] F;

wire	[3:0] F_ALTERA_SYNTHESIZED;





mux4to1	b2v_inst(
	.W0(X0),
	.W1(X1),
	.W2(X2),
	.W3(X_3),
	.S1(X3),
	.S0(X_2),
	.F(F_ALTERA_SYNTHESIZED[3]));


mux4to1	b2v_inst1(
	.W0(X_1),
	.W1(X0),
	.W2(X1),
	.W3(X2),
	.S1(X_3),
	.S0(X_2),
	.F(F_ALTERA_SYNTHESIZED[2]));


mux4to1	b2v_inst2(
	.W0(S1),
	.W1(X_1),
	.W2(X2),
	.W3(X1),
	.S1(X_3),
	.S0(X_2),
	.F(F_ALTERA_SYNTHESIZED[1]));


mux4to1	b2v_inst3(
	.W0(S0),
	.W1(S1),
	.W2(X_1),
	.W3(X0),
	.S1(X_3),
	.S0(X_2),
	.F(F_ALTERA_SYNTHESIZED[0]));

assign	F = F_ALTERA_SYNTHESIZED;

endmodule

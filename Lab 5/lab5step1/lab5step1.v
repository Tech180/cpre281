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
// CREATED		"Thu Oct 01 23:46:22 2020"

module lab5step1(
	x0,
	x1,
	x2,
	x3,
	x4,
	x5,
	x6,
	x7,
	x8,
	x9,
	x10,
	x11,
	x12,
	x13,
	x14,
	x15,
	f,
	g,
	h,
	i
);


input wire	x0;
input wire	x1;
input wire	x2;
input wire	x3;
input wire	x4;
input wire	x5;
input wire	x6;
input wire	x7;
input wire	x8;
input wire	x9;
input wire	x10;
input wire	x11;
input wire	x12;
input wire	x13;
input wire	x14;
input wire	x15;
output wire	[6:0] f;
output wire	[6:0] g;
output wire	[6:0] h;
output wire	[6:0] i;

wire	[6:0] f_ALTERA_SYNTHESIZED;
wire	[6:0] g_ALTERA_SYNTHESIZED;
wire	[6:0] h_ALTERA_SYNTHESIZED;
wire	[6:0] i_ALTERA_SYNTHESIZED;





seven_seg_decoder	b2v_inst(
	.x0(x0),
	.x1(x1),
	.x2(x2),
	.x3(x3),
	.A(f_ALTERA_SYNTHESIZED[6]),
	.B(f_ALTERA_SYNTHESIZED[5]),
	.C(f_ALTERA_SYNTHESIZED[4]),
	.D(f_ALTERA_SYNTHESIZED[3]),
	.E(f_ALTERA_SYNTHESIZED[2]),
	.F(f_ALTERA_SYNTHESIZED[1]),
	.G(f_ALTERA_SYNTHESIZED[0]));


seven_seg_decoder	b2v_inst1(
	.x0(x4),
	.x1(x5),
	.x2(x6),
	.x3(x7),
	.A(g_ALTERA_SYNTHESIZED[6]),
	.B(g_ALTERA_SYNTHESIZED[5]),
	.C(g_ALTERA_SYNTHESIZED[4]),
	.D(g_ALTERA_SYNTHESIZED[3]),
	.E(g_ALTERA_SYNTHESIZED[2]),
	.F(g_ALTERA_SYNTHESIZED[1]),
	.G(g_ALTERA_SYNTHESIZED[0]));


seven_seg_decoder	b2v_inst2(
	.x0(x8),
	.x1(x9),
	.x2(x10),
	.x3(x11),
	.A(h_ALTERA_SYNTHESIZED[6]),
	.B(h_ALTERA_SYNTHESIZED[5]),
	.C(h_ALTERA_SYNTHESIZED[4]),
	.D(h_ALTERA_SYNTHESIZED[3]),
	.E(h_ALTERA_SYNTHESIZED[2]),
	.F(h_ALTERA_SYNTHESIZED[1]),
	.G(h_ALTERA_SYNTHESIZED[0]));


seven_seg_decoder	b2v_inst3(
	.x0(x12),
	.x1(x13),
	.x2(x14),
	.x3(x15),
	.A(i_ALTERA_SYNTHESIZED[6]),
	.B(i_ALTERA_SYNTHESIZED[5]),
	.C(i_ALTERA_SYNTHESIZED[4]),
	.D(i_ALTERA_SYNTHESIZED[3]),
	.E(i_ALTERA_SYNTHESIZED[2]),
	.F(i_ALTERA_SYNTHESIZED[1]),
	.G(i_ALTERA_SYNTHESIZED[0]));

assign	f = f_ALTERA_SYNTHESIZED;
assign	g = g_ALTERA_SYNTHESIZED;
assign	h = h_ALTERA_SYNTHESIZED;
assign	i = i_ALTERA_SYNTHESIZED;

endmodule

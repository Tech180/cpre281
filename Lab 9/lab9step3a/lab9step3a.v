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
// CREATED		"Fri Nov 06 08:47:49 2020"

module lab9step3a(
	Clk,
	D,
	Q,
	Qn
);


input wire	Clk;
input wire	D;
output wire	Q;
output wire	Qn;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





lab9step3	b2v_inst(
	.Clk(SYNTHESIZED_WIRE_0),
	.D(SYNTHESIZED_WIRE_1),
	.Q(Q),
	.Qn(Qn));

assign	SYNTHESIZED_WIRE_0 =  ~Clk;


lab9step3	b2v_inst2(
	.Clk(Clk),
	.D(D),
	.Q(SYNTHESIZED_WIRE_1)
	);


endmodule

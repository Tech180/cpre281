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
// CREATED		"Thu Nov 05 16:04:37 2020"

module lab9step3b(
	Clock,
	D,
	Q,
	Qn
);


input wire	Clock;
input wire	D;
output wire	Q;
output wire	Qn;

wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;

assign	Q = SYNTHESIZED_WIRE_7;
assign	Qn = SYNTHESIZED_WIRE_8;



assign	SYNTHESIZED_WIRE_4 = ~(SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11);

assign	SYNTHESIZED_WIRE_12 = ~(SYNTHESIZED_WIRE_10 & Clock & SYNTHESIZED_WIRE_11);

assign	SYNTHESIZED_WIRE_10 = ~(Clock & SYNTHESIZED_WIRE_4);

assign	SYNTHESIZED_WIRE_11 = ~(D & SYNTHESIZED_WIRE_12);

assign	SYNTHESIZED_WIRE_8 = ~(SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_7);

assign	SYNTHESIZED_WIRE_7 = ~(SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_10);


endmodule

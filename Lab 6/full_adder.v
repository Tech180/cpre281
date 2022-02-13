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
// CREATED		"Tue Oct 13 16:27:35 2020"

module full_adder(
	X,
	Y,
	Ci,
	SUM,
	Co
);


input wire	X;
input wire	Y;
input wire	Ci;
output wire	SUM;
output wire	Co;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_0 = X ^ Y;

assign	SUM = SYNTHESIZED_WIRE_0 ^ Ci;

assign	Co = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_3 = X & Ci;

assign	SYNTHESIZED_WIRE_1 = X & Y;

assign	SYNTHESIZED_WIRE_2 = Y & Ci;


endmodule

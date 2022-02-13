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
// CREATED		"Fri Sep 04 08:41:05 2020"

module lab2step1(
	A,
	B,
	C,
	F
);


input wire	A;
input wire	B;
input wire	C;
output wire	F;

wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;




assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11 & B;

assign	SYNTHESIZED_WIRE_11 =  ~A;

assign	SYNTHESIZED_WIRE_10 =  ~C;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_11 & B & C;

assign	SYNTHESIZED_WIRE_6 = B & SYNTHESIZED_WIRE_10 & A;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_12;

assign	F = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;


endmodule

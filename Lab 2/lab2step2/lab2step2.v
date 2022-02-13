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
// CREATED		"Fri Sep 04 09:36:35 2020"

module lab2step2(
	C,
	G,
	F,
	Alarm
);


input wire	C;
input wire	G;
input wire	F;
output wire	Alarm;

wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;




assign	SYNTHESIZED_WIRE_16 =  ~C;

assign	SYNTHESIZED_WIRE_17 =  ~G;

assign	SYNTHESIZED_WIRE_18 =  ~F;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17 & F;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_16 & G & F;

assign	SYNTHESIZED_WIRE_13 = C & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_14 = C & G & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_15 = C & SYNTHESIZED_WIRE_17 & F;

assign	Alarm = SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;


endmodule

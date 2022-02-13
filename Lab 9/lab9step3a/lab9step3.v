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
// CREATED		"Thu Nov 05 14:52:14 2020"

module lab9step3(
	Clk,
	D,
	Q,
	Qn
);


input wire	Clk;
input wire	D;
output wire	Q;
output wire	Qn;

wire	R;
wire	S;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	Q = SYNTHESIZED_WIRE_3;
assign	Qn = SYNTHESIZED_WIRE_0;



assign	SYNTHESIZED_WIRE_1 = ~(Clk & S);

assign	SYNTHESIZED_WIRE_3 = ~(SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1);

assign	SYNTHESIZED_WIRE_2 = ~(R & Clk);

assign	SYNTHESIZED_WIRE_0 = ~(SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3);

assign	R =  ~S;

assign	S = D;

endmodule

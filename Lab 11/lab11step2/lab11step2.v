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
// CREATED		"Tue Nov 17 00:48:17 2020"

module lab11step2(
	PRN,
	CLRN,
	Clock,
	w,
	Out
);


input wire	PRN;
input wire	CLRN;
input wire	Clock;
input wire	w;
output wire	[2:0] Out;

wire	[2:0] Out_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_2;
reg	SYNTHESIZED_WIRE_3;





always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_2 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_2 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_3 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_3 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_1;
	end
end


circuit_nsl	b2v_inst4(
	.w(w),
	.Q1(SYNTHESIZED_WIRE_2),
	.Q0(SYNTHESIZED_WIRE_3),
	.Y1(SYNTHESIZED_WIRE_0),
	.Y0(SYNTHESIZED_WIRE_1));


circuit_ol	b2v_inst5(
	.Q1(SYNTHESIZED_WIRE_2),
	.Q0(SYNTHESIZED_WIRE_3),
	.Z2(Out_ALTERA_SYNTHESIZED[2]),
	.Z1(Out_ALTERA_SYNTHESIZED[1]),
	.Z0(Out_ALTERA_SYNTHESIZED[0]));

assign	Out = Out_ALTERA_SYNTHESIZED;

endmodule

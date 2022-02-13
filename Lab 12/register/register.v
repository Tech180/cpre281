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
// CREATED		"Sun Nov 22 00:39:05 2020"

module register(
	Clock,
	In,
	CLRN,
	Load,
	Out
);


input wire	Clock;
input wire	In;
input wire	CLRN;
input wire	Load;
output wire	Out;

wire	SYNTHESIZED_WIRE_0;
reg	DFF_inst1;

assign	Out = DFF_inst1;




always@(posedge Clock or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst1 <= 0;
	end
else
	begin
	DFF_inst1 <= SYNTHESIZED_WIRE_0;
	end
end


mux2x1	b2v_inst2(
	.S(Load),
	.l1(In),
	.l0(DFF_inst1),
	.Y(SYNTHESIZED_WIRE_0));


endmodule

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
// CREATED		"Thu Nov 12 12:35:09 2020"

module lab10step2b(
	Clock,
	Enable,
	PRN,
	CLRN,
	Q3,
	Q0,
	Q1,
	Q2
);


input wire	Clock;
input wire	Enable;
input wire	PRN;
input wire	CLRN;
output reg	Q3;
output wire	Q0;
output wire	Q1;
output wire	Q2;

reg	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_1;
reg	TFF_inst1;
reg	TFF_inst2;

assign	Q0 = SYNTHESIZED_WIRE_3;
assign	Q1 = TFF_inst1;
assign	Q2 = TFF_inst2;




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
	SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_3 ^ Enable;
end


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	TFF_inst1 <= 0;
	end
else
if (!PRN)
	begin
	TFF_inst1 <= 1;
	end
else
	TFF_inst1 <= TFF_inst1 ^ SYNTHESIZED_WIRE_3;
end


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	TFF_inst2 <= 0;
	end
else
if (!PRN)
	begin
	TFF_inst2 <= 1;
	end
else
	TFF_inst2 <= TFF_inst2 ^ SYNTHESIZED_WIRE_4;
end


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	Q3 <= 0;
	end
else
if (!PRN)
	begin
	Q3 <= 1;
	end
else
	Q3 <= Q3 ^ SYNTHESIZED_WIRE_1;
end

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_3 & TFF_inst1;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_4 & TFF_inst2;


endmodule

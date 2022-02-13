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
// CREATED		"Wed Nov 11 20:57:08 2020"

module lab10step2a(
	Clock,
	Enable,
	PRN,
	CLRN,
	Q0,
	Q1,
	Q2,
	Q3,
	Z
);


input wire	Clock;
input wire	Enable;
input wire	PRN;
input wire	CLRN;
output wire	Q0;
output wire	Q1;
output wire	Q2;
output wire	Q3;
output wire	Z;

reg	SYNTHESIZED_WIRE_10;
reg	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
reg	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
reg	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;

assign	Q0 = SYNTHESIZED_WIRE_10;
assign	Q1 = SYNTHESIZED_WIRE_11;
assign	Q2 = SYNTHESIZED_WIRE_13;
assign	Q3 = SYNTHESIZED_WIRE_15;



assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_10 & Enable;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12;


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_10 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_10 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_15 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_15 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_2;
	end
end

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14;

assign	Z = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_10 ^ Enable;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_11 ^ SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_13 ^ SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_15 ^ SYNTHESIZED_WIRE_16;


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_13 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_13 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_8;
	end
end


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_11 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_11 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_9;
	end
end


endmodule

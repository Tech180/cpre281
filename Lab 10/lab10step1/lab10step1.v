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
// CREATED		"Wed Nov 11 20:43:54 2020"

module lab10step1(
	Clock,
	VCC,
	In,
	Q1,
	Q2,
	Q3,
	Q4
);


input wire	Clock;
input wire	VCC;
input wire	In;
output wire	Q1;
output wire	Q2;
output wire	Q3;
output reg	Q4;

reg	DFF_inst;
reg	DFF_inst1;
reg	DFF_inst2;

assign	Q1 = DFF_inst;
assign	Q2 = DFF_inst1;
assign	Q3 = DFF_inst2;




always@(posedge Clock or negedge VCC or negedge VCC)
begin
if (!VCC)
	begin
	DFF_inst <= 0;
	end
else
if (!VCC)
	begin
	DFF_inst <= 1;
	end
else
	begin
	DFF_inst <= In;
	end
end


always@(posedge Clock or negedge VCC or negedge VCC)
begin
if (!VCC)
	begin
	DFF_inst1 <= 0;
	end
else
if (!VCC)
	begin
	DFF_inst1 <= 1;
	end
else
	begin
	DFF_inst1 <= DFF_inst;
	end
end


always@(posedge Clock or negedge VCC or negedge VCC)
begin
if (!VCC)
	begin
	DFF_inst2 <= 0;
	end
else
if (!VCC)
	begin
	DFF_inst2 <= 1;
	end
else
	begin
	DFF_inst2 <= DFF_inst1;
	end
end


always@(posedge Clock or negedge VCC or negedge VCC)
begin
if (!VCC)
	begin
	Q4 <= 0;
	end
else
if (!VCC)
	begin
	Q4 <= 1;
	end
else
	begin
	Q4 <= DFF_inst2;
	end
end


endmodule

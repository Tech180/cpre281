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
// CREATED		"Wed Nov 11 21:15:50 2020"

module lab10step3b(
	PRN,
	Enable,
	Clock,
	CLRN,
	Q3,
	Q0,
	Q1,
	Q2
);


input wire	PRN;
input wire	Enable;
input wire	Clock;
input wire	CLRN;
output reg	Q3;
output wire	Q0;
output wire	Q1;
output wire	Q2;

reg	TFF_inst;
reg	TFF_inst1;
reg	TFF_inst2;

assign	Q0 = TFF_inst;
assign	Q1 = TFF_inst1;
assign	Q2 = TFF_inst2;




always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	TFF_inst <= 0;
	end
else
if (!PRN)
	begin
	TFF_inst <= 1;
	end
else
	TFF_inst <= TFF_inst ^ Enable;
end


always@(posedge TFF_inst or negedge CLRN or negedge PRN)
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
	TFF_inst1 <= TFF_inst1 ^ Enable;
end


always@(posedge TFF_inst1 or negedge CLRN or negedge PRN)
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
	TFF_inst2 <= TFF_inst2 ^ Enable;
end


always@(posedge TFF_inst2 or negedge CLRN or negedge PRN)
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
	Q3 <= Q3 ^ Enable;
end


endmodule

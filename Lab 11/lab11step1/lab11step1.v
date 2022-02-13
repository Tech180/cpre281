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
// CREATED		"Mon Nov 16 23:16:08 2020"

module lab11step1(
	Clock,
	PRN,
	CLRN,
	w,
	Out
);


input wire	Clock;
input wire	PRN;
input wire	CLRN;
input wire	w;
output wire	[2:0] Out;

wire	[2:0] Out_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_19;
reg	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_3;
reg	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
reg	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_16;





always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_21 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_21 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_23 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_23 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_3 & w;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;


always@(posedge Clock or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_20 <= 0;
	end
else
if (!PRN)
	begin
	SYNTHESIZED_WIRE_20 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_12;
	end
end

assign	Out_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_16 =  ~SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_22 =  ~SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_19 =  ~w;

assign	Out_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_16;

assign	Out_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_6 = w & SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_20 & w;

assign	Out = Out_ALTERA_SYNTHESIZED;

endmodule

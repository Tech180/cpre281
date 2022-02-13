module mux2x1(Y, S, l1, l0);
	input [3:0]l0;
	input [3:0]l1;
	input S;
	output [3:0]Y;
	
	assign Y = S ? l1 : l0;
	
endmodule
	
module lab3step3 (A, F, C, G, W);
	input F, C, G, W; //input
	output A;//output
	
	assign A = (~F & G & W) | (~F & G & C) | (F & ~G & ~C) | (F & ~G & ~W);
	
endmodule
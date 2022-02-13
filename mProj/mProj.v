module mProj(W, X, Y, Z, B);
	input W, X, Y, Z;
	output B;
	
	assign B = (X & ~Y & Z) | (W & Y & Z) | (~W & ~ X & Y & ~Z);
	
endmodule
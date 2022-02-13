module circuit_nsl (w, Q1, Q0, Y1, Y0);
	input w, Q1, Q0;
	output Y1, Y0;
	
	assign Y1 = Q1 ^ (w & Q0);
	assign Y0 = w ^ Q0;
	
endmodule
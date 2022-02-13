module mux4to1(input [1:0] W0, input [1:0] W1, input [1:0] W2, input [1:0] W3, input [1:0] S, output [3:0] F);
	
	assign F = S[1] ? (S[0] ? W2 : W3) : (S[0] ? W1 : W0);

endmodule
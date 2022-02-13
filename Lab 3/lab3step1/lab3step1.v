module lab3step1(A, C, G, W);
	input C, G, W; //input
	output A; //output
	
	//inverted
	not(G, ~G);
	not(C, ~C);
	not(W, ~W);
	
	//sum
	//w1 = the first wire
	or(w1, ~C, G, ~W);
	//w2 = the second wire
	or(w2, C, ~G, W);
	
	and(A, w1, w2);
	
endmodule
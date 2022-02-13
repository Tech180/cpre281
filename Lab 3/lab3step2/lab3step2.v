module lab3step2(F, C, G, W);
	input C, G, W; //Cabbage, Goat, Wolf
	output F; //Farmer

	assign F = (C |!G | W) & (!C | G | !W);
	
	//end
endmodule
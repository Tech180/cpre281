module seven_seg_decoder(x0,x1,x2,x3,A,B,C,D,E,F,G);

	input x0, x1, x2, x3;
	output A, B, C, D, E, F ,G;

	assign A = (~x3 & ~x2 & ~x1 & x0) | (~x3 & x2 & ~x1 & ~x0) | (x3 & ~x2 & x1 & x0) | (x3 & x2 & ~x1 & x0);
	assign B = (~x3 & x2 & ~x1 & x0) | (x2 & x1 & ~x0) | (x3 & x1 & x0) | (x3 & x2 & ~x0);
	assign C = (~x3 & ~x2 & x1 & ~x0) | (x3 & x2 & ~x0) | (x3 & x2 & x1);
	assign D = (~x3 & ~x2 & ~x1 & x0) | (~x3 & x2 & ~x1 & ~x0) | (x2 & x1 & x0) | (x3 & ~x2 & x1 & ~x0);
	assign E = (~x3 & x0) | (~x3 & x2 & ~x1) | (~x2 & ~x1 & x0);
	assign F = (~x3 & ~x2 & x0) | (~x3 & ~x2 & x1) | (~x3 & x1 & x0) | (x3 & x2 & ~x1 & x0);
	assign G = (~x3 & ~x2 & ~x1) | (~x3 & x2 & x1 & x0) | (x3 & x2 & ~x1 & ~x0);

	
endmodule
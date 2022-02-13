module seven_seg_decoder(x0,x1,x2,x3,A,B,C,D,E,F,G);

	input x0, x1, x2, x3;
	output A, B, C, D, E, F ,G;

	
	assign A = (~x2 & ~x3 & ~x0 & x1) | (~x2 & x3 & ~x0 & ~x1) | (~x2 & x3 & x0 & x1) | (x2 & x3 & x0 & ~x1);
	assign B = (~x2 & x3 & x1) | (x2 & ~x3 & ~x0 & x1) | (x2 & x3 & x0 & ~x1);
	assign C = (~x3 & x0 & x1) | (x2 & ~x3 & ~x0 & ~x1) | (x2 & x0 & x1);
	assign D = (~x2 & ~x3 & ~x0 & x1) | (~x2 & x3 & ~x0 & ~x1) | (x2 & ~x3 & x0 & ~x1) | (x2 & x3 & x1);
	assign E = (~x2 & ~x0 & x1) | (~x2 & x3 & ~x1) | (x3 & ~x0);
	assign F = (x3 & ~x0 & ~x1) | (~x2 & x3 & x0 & x1) | (x2 & ~x0 & ~x1) | (x2 & x3 & ~x0);
	assign G = (~x2 & ~x0 & ~x1) | (~x2 & x3 & x0 & x1) | (x2 & x3 & ~x0 & x1);

	
endmodule
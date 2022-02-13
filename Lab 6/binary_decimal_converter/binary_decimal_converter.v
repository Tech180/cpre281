module binary_decimal_converter(s0, s1, s2, s3, c0, Z2, Y2, X2, W2, Z, Y, X, W);
	input s0, s1, s2, s3, c0;
	output Z2, Y2, X2, W2, Z, Y, X, W;
	
	assign Z2 = 0;
	assign Y2 = 0;
	assign X2 = (c0 & s2) | (c0 & s3);
	assign W2 = (~c0 & s3 & s1) | (~c0 & s3 & s2) | (c0 & ~s3 & ~s2) | (s3 & s2 & s1);
	
	assign Z = (~c0 & s3 & ~s2 & ~s1) | (c0 & ~s3 & ~s2 & s1) | (c0 & s3 & s2 & ~s1);
	assign Y = (~c0 & ~s3 & s2) | (~c0 & s2 & s1) | (c0 & ~s2 & ~s1) | (c0 & s3 & ~s2);
	assign X = (~c0 & ~s3 & s1) | (~c0 & s3 & s2 & ~s1) | (c0 & ~s3 & ~s2 & ~s1) | (~s3 & s2 & s1) | (c0 & s3 & ~s2 & s1);
	assign W = (s0);
	
endmodule
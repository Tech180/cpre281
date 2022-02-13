module tb_step2;
	reg F,C,G,W;
	wire A;
	
	lab4step2 test1(.AC(A), .M(F), .P(C), .H(G), .T(W));
	//test1 instantiates behavioral_example (you can call it whatever you want)

	initial begin
	
	assign F=0;
	assign C=0;
	assign G=0;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1; 
	#20 //Delay by 20 ns

	assign G=1;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1; 
	#20 //Delay by 20 ns

	assign C=1;
	assign G=0;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1; 
	#20 //Delay by 20 ns

	assign G=1;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1;  
	#20
	
	assign F=1;
	assign C=0;
	assign G=0;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1; 
	#20 //Delay by 20 ns

	assign G=1;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1; 
	#20 //Delay by 20 ns

	assign C=1;
	assign G=0;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1; 
	#20 //Delay by 20 ns

	assign G=1;
	assign W=0; 
	#20 //Delay by 20 ns

	assign W=1;
	end

endmodule

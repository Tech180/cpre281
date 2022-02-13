module circuit_ol (Q1, Q0, Z2, Z1, Z0);
	input Q1, Q0;
	output reg Z2, Z1, Z0;
	
	always @(Q1 or Q0)
	begin
		case({Q1, Q0})
		2'b00: {Z2, Z1, Z0} = 3'b000;
		2'b01: {Z2, Z1, Z0} = 3'b010;
		2'b10: {Z2, Z1, Z0} = 3'b100;
		2'b11: {Z2, Z1, Z0} = 3'b101;
		endcase
	end
endmodule
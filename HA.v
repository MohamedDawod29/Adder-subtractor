//Half Adder

module HA (a,b,c,s);

	input a,b;
	output c,s;
	
	assign s = a ^ b;
	assign c = a & b;
	
endmodule

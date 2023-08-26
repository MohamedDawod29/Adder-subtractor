//Full Adder

module FA (a,b,c_in,s_out,c_out);

	input a,b,c_in;
	output c_out , s_out;
	
	
	wire c1,c2,s1;
	
	HA H0 
	(
	.a(a),
	.b(b),
	.c(c1),
	.s(s1)
	);
	
		HA H1 
	(
	.a(s1),
	.b(c_in),
	.c(c2),
	.s(s_out)
	);
	
	assign c_out = c1 | c2;
	
endmodule

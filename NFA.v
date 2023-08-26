//N Full Adder

module NFA 
	
	#(parameter n = 10)
	
	(
	input [ n - 1 : 0 ] a,b,
	input cin,

	output [ n - 1 : 0 ] s,
	output cout
	);

	wire [n : 0] c;
	
	assign c[0] = cin;
	assign cout = c[n];

	
	generate 
	
		genvar i;
	
		for (i = 0 ; i < n ; i = i + 1)
			begin : block
		
			FA Full_Adder
			(
			.a(a[i]),
			.b(b[i]),
			.c_in(c[i]),
			.s_out(s[i]),
			.c_out(c[i+1])
			);
			end
	
	endgenerate 
	

endmodule

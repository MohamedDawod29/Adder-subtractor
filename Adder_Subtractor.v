// subtractor 

module add_subBar

	#(parameter n = 4)
		
	(
	input [n-1:0] a,b,
	input add_sub,
	output [n-1:0] s,
	output cout,
	output OverflowSign
	);
				
		wire [n-1:0] b_Xor;
		
		
		generate 
	
		genvar i;
	
		for (i = 0 ; i < n ; i = i + 1)
			begin : wired
			assign b_Xor[i] = b[i] ^ add_sub;
			end
	
	   endgenerate 
		
				
	NFA #(.n(n)) subtractor
	(
		.a(a),
		.b(b_Xor),
		.cin(add_sub),
		.s(s),
		.cout(cout)
	);
	
	
	  always @ (*) begin
	  
		if ( a[n-1] == b[n-1] && a[n-1] == s[n-1] && b[n-1] == s[n-1] )  begin
     
	   assign OverflowSign = 1'b1; 
		
		end 
		
		else begin
      
		assign OverflowSign = 1'b0; 
    
	   end
     end
	  
	  
endmodule

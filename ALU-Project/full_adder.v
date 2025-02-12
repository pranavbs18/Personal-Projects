
module full_adder( input a, b, cin,
                    output s, cout);
                  
assign s = a^b^cin;
assign cout = (a&b)|(b&cin)|(cin&a);
 
endmodule

module bit_4_fa(input [3:0]a,[3:0]b,cin,
                    output [3:0]s, cout);
                    
wire c1,c2,c3;

full_adder FA (a[0],b[0],cin,s[0],c1);
full_adder FA1 (a[1],b[1],c1,s[1],c2);
full_adder FA2 (a[2],b[2],c2,s[2],c3);
full_adder FA3 (a[1],b[3],c3,s[3],cout);

endmodule

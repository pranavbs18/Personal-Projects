    module full_adder_tb;
    
    reg [3:0]a,b;
    reg cin;
    
    wire [3:0]s;
    wire cout;
    
    bit_4_fa uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout)); // confuzation in module assignment 
    
    initial
    begin
    
    a = 4'b0000 ; b = 4'b0000; cin = 0; #10
    a = 4'b0001 ; b = 4'b0010; #10
    a = 4'b1110 ; b = 4'b0110; #10
    a = 4'b1111 ; b = 4'b1111; #10
    
    $finish; // first finish then end ; missed semicolon for finish
    end
 
    
    endmodule
    

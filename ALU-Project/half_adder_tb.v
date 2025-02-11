module half_adder_tb;
reg [3:0] A, B;
wire [3:0] SUM, CARRY;

four_bit_ha fha (.A(A), .B(B), .SUM(SUM), .CARRY(CARRY));
initial begin
A = 4'b0000; B=4'b0000; #10;
A = 4'b0000; B=4'b0001; #10;
A = 4'b0100; B=4'b0110; #10;
A = 4'b0010; B=4'b1011; #10;
A = 4'b0011; B=4'b1010; #10;
A = 4'b0111; B=4'b1000; #10;
$finish;
end
endmodule

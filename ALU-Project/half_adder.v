module half_adder (input A, B, output SUM, CARRY);
    assign SUM = A ^ B;
    assign CARRY = A & B;
endmodule

module four_bit_ha (input [3:0] A, B, output [3:0] SUM, CARRY);
half_adder ha1 (A[0], B[0], SUM[0],CARRY[0]);    
half_adder ha2 (A[1], B[1], SUM[1],CARRY[1]);
half_adder ha3 (A[2], B[2], SUM[2],CARRY[2]);
half_adder ha4 (A[3], B[3], SUM[3],CARRY[3]);
endmodule

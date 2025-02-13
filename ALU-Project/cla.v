module cla(input [3:0] A, B,  // 4-bit inputs
    input Cin,         // Carry-in
    output [3:0] Sum,  // 4-bit Sum output
    output Cout        // Final carry-out
);
    wire [3:0] G, P, C;

    // Generate (G) and Propagate (P) signals
    assign G = A & B;  // Generate: Gi = Ai * Bi
    assign P = A ^ B;  // Propagate: Pi = Ai ⊕ Bi

    // Carry computation using lookahead logic
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign Cout = G[3] | (P[3] & C[3]);

    // Sum calculation
    assign Sum = P ^ C[3:0];
    
endmodule

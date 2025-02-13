module cla_tb;

 // Testbench signals
    reg [3:0] A, B;  // 4-bit input operands
    reg Cin;         // Carry-in
    wire [3:0] Sum;  // 4-bit sum output
    wire Cout;       // Final carry-out

    // Instantiate the CLA module
    cla uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Test stimulus
    initial begin
        // Test Case 1: 0000 + 0000 + 0 = 0000
        A = 4'b0000; B = 4'b0000; Cin = 0;
        #10;

        // Test Case 2: 0001 + 0010 + 0 = 0011
        A = 4'b0001; B = 4'b0010; 
        #10;

        // Test Case 3: 0101 + 0011 + 1 = 1000
        A = 4'b1110; B = 4'b0110; 
        #10;

        // Test Case 4: 1111 + 0001 + 0 = 0000 (Carry-Out = 1)
        A = 4'b1111; B = 4'b1111;
        #10;

        // End simulation
        $finish;
    end
endmodule

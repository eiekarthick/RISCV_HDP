`timescale 1ns / 1ps

module ALU_tb;

    // Inputs
    reg [31:0] A;
    reg [31:0] B;
    reg [2:0] ALUOp;

    // Outputs
    wire [31:0] Result;
    wire Zero;

    // Instantiate the ALU
    ALU uut (
        .A(A),
        .B(B),
        .ALUOp(ALUOp),
        .Result(Result),
        .Zero(Zero)
    );
	
	initial begin
    $dumpfile("dump.vcd");
    $dumpvars;  
  end

    // Testbench procedure
    initial begin
        // Initialize inputs
        A = 0;
        B = 0;
        ALUOp = 0;

        // Apply test cases
        // Test Case 1: Addition
        A = 32'h00000005;  // 5
        B = 32'h00000003;  // 3
        ALUOp = 3'b000;    // ADD
        #10;
        $display("Test Case 1 - ADD: A=%d, B=%d, Result=%d, Zero=%b", A, B, Result, Zero);

        // Test Case 2: Subtraction
        A = 32'h00000010;  // 16
        B = 32'h00000007;  // 7
        ALUOp = 3'b001;    // SUB
        #10;
        $display("Test Case 2 - SUB: A=%d, B=%d, Result=%d, Zero=%b", A, B, Result, Zero);

        // Test Case 3: Multiplication
        A = 32'h00000004;  // 4
        B = 32'h00000005;  // 5
        ALUOp = 3'b010;    // MUL
        #10;
        $display("Test Case 3 - MUL: A=%d, B=%d, Result=%d, Zero=%b", A, B, Result, Zero);

        // Test Case 4: Division
        A = 32'h00000020;  // 32
        B = 32'h00000004;  // 4
        ALUOp = 3'b011;    // DIV
        #10;
        $display("Test Case 4 - DIV: A=%d, B=%d, Result=%d, Zero=%b", A, B, Result, Zero);

        // Test Case 5: Division by zero
        A = 32'h00000020;  // 32
        B = 32'h00000000;  // 0
        ALUOp = 3'b011;    // DIV
        #10;
        $display("Test Case 5 - DIV by Zero: A=%d, B=%d, Result=%h, Zero=%b", A, B, Result, Zero);

        // Test Case 6: Result is zero
        A = 32'h00000010;  // 16
        B = 32'h00000010;  // 16
        ALUOp = 3'b001;    // SUB
        #10;
        $display("Test Case 6 - SUB Result Zero: A=%d, B=%d, Result=%d, Zero=%b", A, B, Result, Zero);

        // End simulation
        $finish;
    end

endmodule

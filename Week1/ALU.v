module ALU (
    input wire [31:0] A,          // First operand
    input wire [31:0] B,          // Second operand
    input wire [2:0] ALUOp,       // ALU operation selector
    output reg [31:0] Result,     // ALU result
    output reg Zero               // Zero flag
);

    // ALU operation codes
    localparam ADD  = 3'b000;
    localparam SUB  = 3'b001;
    localparam MUL  = 3'b010;
    localparam DIV  = 3'b011;

    always @(*) begin
        case (ALUOp)
            ADD:  Result = A + B;                  // Addition
            SUB:  Result = A - B;                  // Subtraction
            MUL:  Result = A * B;                  // Multiplication
            DIV:  Result = (B != 0) ? (A / B) : 32'hFFFFFFFF; // Division (with zero check)
            default: Result = 32'h00000000;       // Default case
        endcase

        // Set the Zero flag
        Zero = (Result == 32'h00000000);
    end

endmodule

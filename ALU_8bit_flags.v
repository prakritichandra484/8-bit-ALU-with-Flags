`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 14:57:39
// Design Name: 
// Module Name: ALU_8bit_flags
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_8bit_flags (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] opcode,
    output reg [7:0] result,
    output reg carry,
    output reg zero,
    output reg negative,
    output reg overflow
);

reg signed [7:0] As, Bs, Rs;

always @(*) begin
    // Default values
    result   = 8'b0;
    carry    = 1'b0;
    overflow = 1'b0;

    As = A;
    Bs = B;

    case (opcode)
        3'b000: begin // ADD
            {carry, result} = A + B;
            Rs = As + Bs;
            overflow = (As[7] == Bs[7]) && (Rs[7] != As[7]);
        end

        3'b001: begin // SUB
            {carry, result} = A - B;
            Rs = As - Bs;
            overflow = (As[7] != Bs[7]) && (Rs[7] != As[7]);
        end

        3'b010: result = A & B;   // AND
        3'b011: result = A | B;   // OR
        3'b100: result = A ^ B;   // XOR
        3'b101: result = ~A;      // NOT
        3'b110: result = A << 1;  // Shift Left
        3'b111: result = A >> 1;  // Shift Right
    endcase

    // Flags
    zero     = (result == 8'b0);
    negative = result[7];
end

endmodule


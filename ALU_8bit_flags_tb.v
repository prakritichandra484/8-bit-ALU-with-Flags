`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 15:05:08
// Design Name: 
// Module Name: ALU_8bit_flags_tb
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


module ALU_8bit_flags_tb;

reg [7:0] A, B;
reg [2:0] opcode;
wire [7:0] result;
wire carry, zero, negative, overflow;

// Instantiate the ALU
ALU_8bit_flags DUT (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry),
    .zero(zero),
    .negative(negative),
    .overflow(overflow)
);

initial begin
    // ADD (no overflow)
    A = 8'd10; B = 8'd5; opcode = 3'b000; #10;

    // ADD (overflow)
    A = 8'd120; B = 8'd120; opcode = 3'b000; #10;

    // SUB (zero result)
    A = 8'd10; B = 8'd10; opcode = 3'b001; #10;

    // AND operation
    A = 8'd10; B = 8'd5; opcode = 3'b010; #10;

    // SUB (negative result)
    A = 8'd50; B = 8'd100; opcode = 3'b001; #10;

    $stop;  // Stop simulation
end

endmodule

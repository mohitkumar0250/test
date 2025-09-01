// Design of 8 bit ALU 

`timescale 1ns / 1ps

module alu_8bit(
    input [7:0] a,b,
    input [3:0] alu_sel,
    output [7:0] alu_out,
    output c_out
    );
  reg [7:0] ALU_res;
  wire [8:0]x;
  assign alu_out = ALU_res;
  assign x = {1'b0,a} + {1'b0,b};
  assign c_out = x[8];
  
  always @(*) begin
    case(alu_sel)
      4'b0000:
        ALU_res = a + b;
      4'b0001:
        ALU_res = a - b;
      4'b0010:
        ALU_res = a * b;
      4'b0011:
        ALU_res = a / b;
      4'b0100:
        ALU_res = a % b;
      4'b0101:
        ALU_res = a & b;
      4'b0110:
        ALU_res = a | b;
      4'b0111:
        ALU_res = a == b;
      4'b1000:
        ALU_res = a && b;
      4'b1001:
        ALU_res = a || b;
      4'b1010:
        ALU_res = a >> 2;
      4'b1011:
        ALU_res = a << 2;
      4'b1100:
        ALU_res = a ^ b;
      4'b1101:
        ALU_res = ~a;
      4'b1110:
        ALU_res = {a,b};
      4'b1111:
        ALU_res = {2{a}};
        default: ALU_res = 0;
    endcase
  end
endmodule

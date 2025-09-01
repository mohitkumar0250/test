//Test bench of 8 - bit ALU

`timescale 1ns/1ps

module tb;
  reg[7:0]a,b;
  reg[3:0]alu_sel;
  wire [7:0] alu_out;
  wire c_out;
  
  alu_8bit test_unit(a,b,alu_sel,alu_out,c_out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    a = 8'h05;
    b = 8'h04;
    alu_sel = 4'h0;
    for(int i =0;i<16;i++)begin
      alu_sel = alu_sel + 8'h01;
      #10;
    end
  end
endmodule

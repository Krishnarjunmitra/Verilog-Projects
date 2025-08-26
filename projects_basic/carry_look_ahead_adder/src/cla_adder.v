`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Krishnarjun Mitra
// 
// Design Name: Carry Look Ahead Adder (4-bit)
// Module Name: carry_look_ahead_adder
// Project Name: CLA
//////////////////////////////////////////////////////////////////////////////////

module carry_look_ahead_adder (
    input  [3:0] InputA, InputB,
    input        InputCarry,
    output [3:0] SumOut,
    output       CarryOut
);
    wire [4:0] c;   
    wire [3:0] p;
    wire [3:0] g;   

    assign c[0] = InputCarry;

    assign g = InputA & InputB;
    assign p = InputA ^ InputB;

    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & c[1]);
    assign c[3] = g[2] | (p[2] & c[2]);
    assign c[4] = g[3] | (p[3] & c[3]);

    assign SumOut   = p ^ c[3:0];
    assign CarryOut = c[4];

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Krishnarjun Mitra
// 
// Design Name: Half Adder design
// Module Name: half_adder
// Project Name: Half Adder
//////////////////////////////////////////////////////////////////////////////////

module half_adder(
    input InputA,
    input InputB,
    output SumOut,
    output CarryOut
    );
    assign SumOut = InputA ^ InputB;
    assign CarryOut = InputA & InputB;
endmodule

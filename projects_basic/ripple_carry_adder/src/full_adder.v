`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Krishnarjun Mitra
// 
// Design Name: Full Adder design
// Module Name: full_adder
// Project Name: Full Adder
//////////////////////////////////////////////////////////////////////////////////

module full_adder(
    input InputA,
    input InputB,
    input InputCarry,
    output SumOut,
    output CarryOut
    );
    wire Sout1, Cout2;

    half_adder HA1(
        .InputA(InputA),    .InputB(InputB),
        .SumOut(Sout1),     .CarryOut(Cout1)
    );
    half_adder HA2(
        .InputA(Sout1),    .InputB(InputCarry),
        .SumOut(SumOut),     .CarryOut(Cout2)
    );

    assign CarryOut = Cout1 | Cout2;
endmodule
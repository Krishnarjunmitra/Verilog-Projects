`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Krishnarjun Mitra
// 
// Design Name: Ripple Carry Adder (4-bit)
// Module Name: ripple_carry_adder
// Project Name: RCA
//////////////////////////////////////////////////////////////////////////////////

module ripple_carry_adder_rtl(
    input [3:0] InputA,
    input [3:0] InputB,
    input       InputCarry,
    output      CarryOut,
    output[3:0] SumOut
    );
    wire c0, c1, c2;
    full_adder FA0(.InputA (InputA[0]), .InputB (InputB[0]), .InputCarry (InputCarry), .SumOut (SumOut[0]), .CarryOut (c0));
    full_adder FA1(.InputA (InputA[1]), .InputB (InputB[1]), .InputCarry (c0), .SumOut (SumOut[1]), .CarryOut (c1));
    full_adder FA2(.InputA (InputA[2]), .InputB (InputB[2]), .InputCarry (c1), .SumOut (SumOut[2]), .CarryOut (c2));
    full_adder FA3(.InputA (InputA[3]), .InputB (InputB[3]), .InputCarry (c2), .SumOut (SumOut[3]), .CarryOut (CarryOut));
endmodule

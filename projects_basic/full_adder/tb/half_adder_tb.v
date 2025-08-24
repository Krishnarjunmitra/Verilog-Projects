`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Krishnarjun Mitra
// 
// Design Name: Half Adder test bench
// Module Name: half_adder
// Project Name: Half Adder
//////////////////////////////////////////////////////////////////////////////////

module half_adder_tb;
    reg A, B;
    wire Sum, Carry;
    half_adder uut (
        .InputA(A),     .InputB(B),
        .SumOut(Sum),   .CarryOut(Carry)
    );
    initial begin
    $display("       Half Adder       ");
    $display("  A  B   |  Sum  carry  ");
        A = 0; B = 0; #10;
    $display("  %b  %b   |   %b    %b    ", A, B, Sum, Carry);
        A = 0; B = 1; #10;
    $display("  %b  %b   |   %b    %b    ", A, B, Sum, Carry);
        A = 1; B = 0; #10;
    $display("  %b  %b   |   %b    %b    ", A, B, Sum, Carry);
        A = 1; B = 1; #10;
    $display("  %b  %b   |   %b    %b    ", A, B, Sum, Carry);
    $finish;
    end    
endmodule

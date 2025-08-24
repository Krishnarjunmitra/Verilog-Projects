`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Krishnarjun Mitra
// 
// Design Name: Full Adder test bench
// Module Name: full_adder_tb
// Project Name: Full Adder
//////////////////////////////////////////////////////////////////////////////////

module full_adder_tb;
    reg A, B, Cin;
    wire Sum, Carry;
    full_adder uut (
        .InputA(A),     .InputB(B),     .InputCarry(Cin),
        .SumOut(Sum),   .CarryOut(Carry)
    );
    initial begin
    $display("        full Adder       ");
    $display("  A  B  Cin  |  Sum  carry  ");
    
        A = 0; B = 0; Cin = 0; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
        A = 0; B = 0; Cin = 1; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
        A = 0; B = 1; Cin = 0; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
        A = 0; B = 1; Cin = 1; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
        A = 1; B = 0; Cin = 0; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
        A = 1; B = 0; Cin = 1; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
        A = 1; B = 1; Cin = 0; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
        A = 1; B = 1; Cin = 1; #10;
    $display("  %b  %b  %b  |   %b    %b    ", A, B, Cin, Sum, Carry);
    
    $finish;
    end    
endmodule
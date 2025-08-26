`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Krishnarjun Mitra
// 
// Design Name: Ripple Carry Adder (4-bit) Testbench
// Module Name: ripple_carry_adder_tb
// Project Name: RCA
//////////////////////////////////////////////////////////////////////////////////
module ripple_carry_adder_rtl_tb;
    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;
    ripple_carry_adder_rtl uut (
        .InputA(A),
        .InputB(B),
        .InputCarry(Cin),
        .SumOut(Sum),
        .CarryOut(Cout)
    );    
    initial begin
        $dumpfile("ripple_carry_adder_rtl_tb.vcd");
        $dumpvars(0, ripple_carry_adder_rtl_tb);        
        $display("===============================================");
        $display("       Ripple Carry Adder (4-bit) Testbench    ");
        $display("===============================================");
        $display("   A   B  Cin  |  Sum  Cout  |  Result Decimal ");
        $display("-----------------------------------------------");        // Case 1: 0 + 0
        A=0; B=0; Cin=0; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});
        A=0; B=0; Cin=1; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});        // Case 2: 5 + 3
        A=5; B=3; Cin=0; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});
        A=5; B=3; Cin=1; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});        // Case 3: 15 + 1
        A=15; B=1; Cin=0; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});
        A=15; B=1; Cin=1; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});        // Case 4: 11 + 13
        A=11; B=13; Cin=0; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});
        A=11; B=13; Cin=1; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});        // Case 5: 14 + 15
        A=14; B=15; Cin=0; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});
        A=14; B=15; Cin=1; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});        // Case 6: 15 + 15
        A=15; B=15; Cin=0; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});
        A=15; B=15; Cin=1; #10;
        $display("  %2d  %2d   %1d   |  %2d    %1d    |    %2d", A,B,Cin, Sum,Cout,{Cout,Sum});        
        $display("===============================================");
        $finish;
    end
endmodule

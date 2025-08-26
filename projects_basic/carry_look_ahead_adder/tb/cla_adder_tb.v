`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Testbench for Carry Look Ahead Adder (4-bit)
// Engineer: Krishnarjun Mitra
//////////////////////////////////////////////////////////////////////////////////

module tb_carry_look_ahead_adder;
    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;
    carry_look_ahead_adder dut (
        .InputA(A),
        .InputB(B),
        .InputCarry(Cin),
        .SumOut(Sum),
        .CarryOut(Cout)
    );
    initial begin
        $display("Time\tA\tB\tCin\t|\tSum\tCout");
        $display("--------------------------------------------------");
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);
        A = 4'b0101; B = 4'b0011; Cin = 0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);
        $finish;
    end

endmodule

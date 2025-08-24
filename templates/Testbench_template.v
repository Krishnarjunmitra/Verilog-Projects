`timescale 1ns/1ps
module <module_name>_tb;
    reg A, B;
    wire Y;

    <module_name> uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
        #40 $finish;
    end
endmodule
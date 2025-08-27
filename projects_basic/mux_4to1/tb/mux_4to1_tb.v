module mux_4to1_tb ();

  reg [1:0] S;
  reg [3:0] A;
  wire Y;
  mux_4to1 dut (
      .s(S),
      .a(A),
      .y(Y)
  );

  initial begin
      $display("Mux 4 to 1");
      A = 4'b0110;
      $display("a[3:0] = 0110");
        $display("s1 s0 | y");
        S = 2'b00; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b01; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b10; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b11; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
      A = 4'b0101;
      $display("a[3:0] = 0101");
        $display("s1 s0 | y");
        S = 2'b00; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b01; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b10; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b11; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
      A = 4'b1101;
      $display("a[3:0] = 1101");
        $display("s1 s0 | y");
        S = 2'b00; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b01; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b10; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
        S = 2'b11; #10;
        $display("%b %b | %b", &S[1], &S[0], &Y);
      $finish;
  end

endmodule
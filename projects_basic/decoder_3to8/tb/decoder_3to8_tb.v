module decoder_3to8_tb ();
  reg [2:0] A;
  wire [7:0] Y;
  decoder_3to8 dut (
      .a(A),
      .y(Y)
  );
  initial begin
      $display("Decoder 3 to 8");
      $display("a2 a1 a0 | y7 y6 y5 y4 y3 y2 y1 y0");
      A = 3'b000; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      A = 3'b001; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      A = 3'b010; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      A = 3'b011; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      A = 3'b100; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      A = 3'b101; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      A = 3'b110; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      A = 3'b111; #10; $display("%b %b %b | %b %b %b %b %b %b %b %b", A[2], A[1], A[0], Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
      $finish;
  end
endmodule

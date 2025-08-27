`timescale 1ns / 1ps
module mux_4to1 (
  input  [1:0] s,
  input  [3:0] a,
  output       y
);

  wire [3:0] out;

  assign out[0] = ~s[1] & ~s[0] & a[0];
  assign out[1] = ~s[1] &  s[0] & a[1];
  assign out[2] =  s[1] & ~s[0] & a[2];
  assign out[3] =  s[1] &  s[0] & a[3];

  assign y = out[0] | out[1] | out[2] | out[3];

endmodule

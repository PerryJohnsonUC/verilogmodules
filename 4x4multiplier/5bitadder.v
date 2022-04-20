`timescale 1ns / 1ps

module adder(sum,a,b);
input [5:0] a,b;
output reg [5:0] sum;

always @ (a,b)
sum = a+b;

endmodule

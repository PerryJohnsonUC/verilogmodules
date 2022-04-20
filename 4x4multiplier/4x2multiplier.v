`timescale 1ns / 1ps

module multiplier(product,x,y);

output reg[5:0] product;
input [1:0] x;
input [3:0] y;

always @(x,y)
product = x*y;

endmodule

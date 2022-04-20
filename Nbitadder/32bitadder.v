module 32bitadder(answer, a, b);
   input[31:0] a;
   input[31:0] b;
   output [31:0] answer;
   wire [32:0] answer = {1'b0,a} + {1'b0,b};
   assign      answer = sum[32] ? sum[32:1]: sum[31:0];
endmodule 

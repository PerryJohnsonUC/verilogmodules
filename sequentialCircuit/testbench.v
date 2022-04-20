`timescale 1ns / 1ps

module testbench;
wire t_Z;
reg t_I, t_clk, t_reset;

lab8module uut(t_clk, t_reset, t_I, t_Z);
initial #200 $finish;
initial begin t_clk = 0; forever #5 t_clk = !t_clk; end
initial fork
t_reset = 0;
#2 t_reset = 1;
t_I = 0;
#10 t_I = 0;
#20 t_I = 1;
#30 t_I = 1;
#40 t_I = 0;
#50 t_I = 0;
#60 t_I = 1;
#70 t_I = 0;
#80 t_I = 1;
#90 t_I = 0;
#100 t_I = 0;
#110 t_I = 1;
join

endmodule

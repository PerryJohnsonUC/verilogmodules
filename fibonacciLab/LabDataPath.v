`timescale 1ns / 1ps

module Lab9DataPath#(parameter dpwidth = 13, countwidth = 5)
(
    output zero, output [dpwidth-1:0] dpresult,
    input load_regs, add_regs, shift_regs, decr_c, clock, input [4:0]N
);
    reg[dpwidth-1:0] n1, n2, temp;
    reg[countwidth-1:0] count;
   
assign dpresult = (N >= 2)? n2:1;
assign zero = (count == 0);
always @ (posedge clock) begin
    if(load_regs) begin
        n1 <= 1;
        n2 <= 1;
        temp <= 0;
        count <= N - 2;
    end
    if(add_regs) temp <= n1 + n2;
        if(shift_regs) begin    
            n1 <= n2;
            n2 <= temp;
        end
        if(decr_c) count <= count - 1;
    end
    
endmodule

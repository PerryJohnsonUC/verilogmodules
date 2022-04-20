module Top#(parameter dpwidth = 13, countwidth = 5)
(input start, clock, reset, [countwidth-1:0] N, output ready, [dpwidth-1:0] dpresult
    );
    wire add_regs, shift_regs, decr_c, load_regs, zero;
LabController M0(ready, add_regs, shift_regs, decr_c, load_regs, start, zero, clock, reset);
LabDataPath M1(zero, dpresult, load_regs, add_regs, shift_regs, decr_c, clock, N);
endmodule

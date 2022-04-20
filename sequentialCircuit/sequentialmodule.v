`timescale 1ns / 1ps

module lab8module(
    input wire clk, reset, I, output reg Z
    );
    reg [1:0] state;

    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;
    always @ (posedge clk, negedge reset)
        if(reset == 0) state <= S0;
        else case(state)
            S0: if (!I) state <=S0; else state <= S1;
            S1: if (!I) state <=S2; else state <= S1;
            S2: if (!I) state <=S0; else state <= S1;
        endcase
     always @(state, I)
     case (state) 
        S0,S1: Z=0;
        S2: Z=1;
     endcase
endmodule

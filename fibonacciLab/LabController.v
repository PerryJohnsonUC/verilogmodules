`timescale 1ns / 1ps

module LabController(
    output reg ready, add_regs, shift_regs, decr_c, load_regs,
    input start, zero, clock, reset
    );
    parameter idle = 0, sum = 1, shift = 2, check = 3;
    
    reg [1:0] state, next_state;
    
    always @ (posedge clock, posedge reset) begin
        if(reset)
            state <= idle;
        else
            state <= next_state;
        end
    always @ (state,start, zero) begin
        load_regs = 0; add_regs = 0; shift_regs = 0; decr_c = 0;
        ready = 0;
        case(state)
            idle: begin ready = 1; if(start) begin load_regs = 1;
                next_state = sum; end
                else next_state = idle; end
     
            sum: begin add_regs = 1; next_state = shift; end
            shift: begin shift_regs = 1; decr_c = 1;
                next_state = check; end
           
            check: if (zero) next_state = idle; else
                next_state = sum;
        endcase
    end
endmodule

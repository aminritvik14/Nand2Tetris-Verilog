`include "Project_1/Mux_Gate.v"

`ifndef MUX16_GATE_V
`define MUX16_GATE_V

module mux16_gate (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire select_line,
    output wire [15:0] out
);

genvar i;
generate
    for(i=0; i<16; i = i+1) begin
        mux_gate m1 (.I0(a[i]), .I1(b[i]), .S(select_line), .out(out[i]));
    end
endgenerate    
endmodule
`endif
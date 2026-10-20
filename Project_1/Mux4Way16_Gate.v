`include "Project_1/Mux16_Gate.v"

`ifndef MUX4WAY16_GATE_V
`define MUX4WAY16_GATE_V

module mux4way16_gate (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [15:0] c,
    input wire [15:0] d,
    input wire [1:0] S,
    output wire [15:0] out
);
wire [15:0] out_1, out_2;

mux16_gate m1 ( .a(a), .b(b), .select_line(S[0]), .out(out_1));
mux16_gate m2 ( .a(c), .b(d), .select_line(S[0]), .out(out_2));
mux16_gate m3 ( .a(out_1), .b(out_2), .select_line(S[1]), .out(out));

endmodule
`endif
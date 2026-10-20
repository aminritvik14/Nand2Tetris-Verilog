`include "Project_1/Mux16_Gate.v"

`ifndef MUX8WAY16_GATE_V
`define MUX8WAY16_GATE_V

module mux8way16_gate (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [15:0] c,
    input wire [15:0] d,
    input wire [15:0] e,
    input wire [15:0] f,
    input wire [15:0] g,
    input wire [15:0] h,
    input wire [2:0] S,
    output wire [15:0] out
);
wire [15:0] out_1, out_2, out_3, out_4, out_a, out_b;

mux16_gate m1 ( .a(a), .b(b), .select_line(S[0]), .out(out_1));
mux16_gate m2 ( .a(c), .b(d), .select_line(S[0]), .out(out_2));
mux16_gate m3 ( .a(e), .b(f), .select_line(S[0]), .out(out_3));
mux16_gate m4 ( .a(g), .b(h), .select_line(S[0]), .out(out_4));

mux16_gate m5 ( .a(out_1), .b(out_2), .select_line(S[1]), .out(out_a));
mux16_gate m6 ( .a(out_3), .b(out_4), .select_line(S[1]), .out(out_b));

mux16_gate m7 ( .a(out_a), .b(out_b), .select_line(S[2]), .out(out));

endmodule
`endif
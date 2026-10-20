`include "Project_1/Or_Gate.v"

`ifndef OR8WAY_GATE_V
`define OR8WAY_GATE_V

module or8way_gate (
    input wire [7:0] in,
    output wire out
);
wire out_1, out_2, out_3, out_4, out_a, out_b;

or_gate m1 (.a(in[0]), .b(in[1]), .out(out_1));
or_gate m2 (.a(in[2]), .b(in[3]), .out(out_2));
or_gate m3 (.a(in[4]), .b(in[5]), .out(out_3));
or_gate m4 (.a(in[6]), .b(in[7]), .out(out_4));

or_gate m5 (.a(out_1), .b(out_2), .out(out_a));
or_gate m6 (.a(out_3), .b(out_4), .out(out_b));

or_gate m7 (.a(out_a), .b(out_b), .out(out));
endmodule
`endif
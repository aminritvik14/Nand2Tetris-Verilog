`include "Project_1/And_Gate.v"
`include "Project_1/Or_Gate.v"
`include "Project_1/Not_Gate.v"

`ifndef MUX_GATE_V
`define MUX_GATE_V

module mux_gate (
    input wire I0,
    input wire I1,
    input wire S,
    output wire out
);
wire not_out, and_out1, and_out2;

not_gate m1 ( .in(S), .out(not_out));
and_gate m2 ( .a(I0), .b(not_out), .out(and_out1));
and_gate m3 ( .a(I1), .b(S), .out(and_out2));
or_gate m4 (.a(and_out1), .b(and_out2), .out(out));

endmodule
`endif
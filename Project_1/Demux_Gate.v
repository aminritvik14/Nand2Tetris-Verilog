`include "Project_1/Not_Gate.v"
`include "Project_1/And_Gate.v"

`ifndef DEMUX_GATE_V
`define DEMUX_GATE_V

module demux_gate (
    input wire I,
    input wire S,
    output wire out_1,
    output wire out_2
);
wire not_output;

not_gate m1 (.in(S), .out(not_output));
and_gate m2 (.a(I), .b(not_output), .out(out_1));
and_gate m3 (.a(I), .b(S), .out(out_2));

endmodule
`endif
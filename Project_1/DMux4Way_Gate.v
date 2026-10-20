`include "Project_1/Demux_Gate.v"

`ifndef DEMUX4WAY_GATE_V
`define DEMUX4WAY_GATE_V

module demux4way_gate (
    input wire in,
    input wire [1:0] select_line,
    output wire a,
    output wire b,
    output wire c,
    output wire d
);
wire output_1, output_2;

demux_gate m1 (.I(in), .S(select_line[1]),  .out_1(output_1), .out_2(output_2));

demux_gate m2 (.I(output_1), .S(select_line[0]),  .out_1(a), .out_2(b));
demux_gate m3 (.I(output_2), .S(select_line[0]),  .out_1(c), .out_2(d));

endmodule
`endif
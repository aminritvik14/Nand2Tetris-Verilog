`include "Project_1/DMux4Way_Gate.v"
`include "Project_1/Demux_Gate.v"

`ifndef DEMUX8WAY_GATE_V
`define DEMUX8WAY_GATE_V

module demux8way_gate (
    input wire in,
    input wire [2:0] select_line,
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g,
    output wire h
);
wire output_1, output_2;

demux_gate m1 (.I(in), .S(select_line[2]),  .out_1(output_1), .out_2(output_2));

demux4way_gate m2 (.in(output_1), .select_line(select_line[1:0]), .a(a), .b(b), .c(c), .d(d));
demux4way_gate m3 (.in(output_2), .select_line(select_line[1:0]), .a(e), .b(f), .c(g), .d(h));

endmodule
`endif
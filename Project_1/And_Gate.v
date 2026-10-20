`include "Project_1/Nand_Gate.v"
`include "Project_1/Not_Gate.v"

`ifndef AND_GATE_V
`define AND_GATE_V

module and_gate (
    input wire a,
    input wire b,
    output wire out
);

wire nand_out;
nand_gate m1 ( .a(a), .b(b), .out(nand_out) );
not_gate m2 ( .in(nand_out), .out(out) );

endmodule
`endif
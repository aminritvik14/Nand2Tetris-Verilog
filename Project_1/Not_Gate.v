`include "Project_1/Nand_Gate.v"

`ifndef NOT_GATE_V
`define NOT_GATE_V

module not_gate (
    input wire in,
    output wire out
);
nand_gate m1( .a(in), .b(in), .out(out));

endmodule
`endif
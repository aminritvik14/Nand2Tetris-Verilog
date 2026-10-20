`include "Project_1/Not_Gate.v"
`include "Project_1/Nand_Gate.v"

`ifndef OR_GATE_V
`define OR_GATE_V

module or_gate (
    input wire a,
    input wire b,
    output wire out
);
wire nand_out1, nand_out2;

not_gate m1 (.in(a), .out(nand_out1));
not_gate m2 (.in(b), .out(nand_out2));
nand_gate m3 (.a(nand_out1), .b(nand_out2), .out(out));

endmodule
`endif
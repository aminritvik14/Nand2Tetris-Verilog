`include "Project_1/Nand_Gate.v"

`ifndef XOR_GATE_V
`define XOR_GATE_V

module xor_gate (
    input wire a,
    input wire b,
    output wire out
);

wire nand_out1, nand_out2, nand_out3;

nand_gate m1 ( .a(a), .b(b), .out(nand_out1));
nand_gate m2 ( .a(a), .b(nand_out1), .out(nand_out2));
nand_gate m3 ( .a(b), .b(nand_out1), .out(nand_out3));
nand_gate m4 ( .a(nand_out2), .b(nand_out3), .out(out));

endmodule
`endif
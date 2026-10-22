`include "Project_1/Xor_Gate.v"
`include "Project_1/And_Gate.v"
`include "Project_1/Or_Gate.v"

`ifndef FULL_ADDER_V
`define FULL_ADDER_V

module fulladder (
    input wire a,
    input wire b,
    input wire c,
    output wire sum,
    output wire carry
);
wire xor_out1, xor_out2, and_out1, and_out2;

xor_gate m1 (.a(a), .b(b), .out(xor_out1));
xor_gate m2 (.a(xor_out1), .b(c), .out(sum));

and_gate m3 (.a(a), .b(b), .out(and_out1));
and_gate m4 (.a(xor_out1), .b(c), .out(and_out2));
or_gate m5 (.a(and_out1), .b(and_out2), .out(carry));

endmodule
`endif
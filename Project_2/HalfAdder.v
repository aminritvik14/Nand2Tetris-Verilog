`include "Project_1/Xor_Gate.v"
`include "Project_1/And_Gate.v"

`ifndef HALF_ADDER_V
`define HALF_ADDER_V

module halfadder (
    input wire a,
    input wire b,
    output wire sum,
    output wire carry
);

xor_gate m1 (.a(a), .b(b), .out(sum));
and_gate m2 (.a(a), .b(b), .out(carry));

endmodule
`endif
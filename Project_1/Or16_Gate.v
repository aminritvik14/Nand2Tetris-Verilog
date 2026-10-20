`include "Project_1/Or_Gate.v"

`ifndef OR16_GATE_V
`define OR16_GATE_V

module or16_gate (
    input wire [15:0] a,
    input wire [15:0] b,
    output wire [15:0] out
);
genvar i;

generate
for (i=0; i<16; i=i+1)begin
    or_gate m1 ( .a(a[i]), .b(b[i]), .out(out[i]) );
end
endgenerate

endmodule
`endif
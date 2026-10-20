`include "Project_1/And_Gate.v"

`ifndef AND16_GATE_V
`define AND16_GATE_V

module and16_gate (
    input wire [15:0] a,
    input wire [15:0] b,
    output wire [15:0] out
);
genvar i;

generate
for (i=0; i<16; i=i+1)begin
    and_gate m1 ( .a(a[i]), .b(b[i]), .out(out[i]) );
end
endgenerate

endmodule
`endif
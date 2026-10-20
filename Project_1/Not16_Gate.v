`include "Project_1/Not_Gate.v"

`ifndef NOT16_GATE_V
`define NOT16_GATE_V

module not16_gate (
    input wire [15:0] in,
    output wire [15:0] out
);
genvar i;

generate
for (i=0; i<16; i=i+1)begin
    not_gate m1 ( .in(in[i]), .out(out[i]));
end
endgenerate

endmodule
`endif
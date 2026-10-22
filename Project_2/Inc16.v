`include "Project_2/Add16.v"

`ifndef INC_16_V
`define INC_16_V

module inc16 (
    input wire [15:0] a,
    output wire [15:0] out
);

add16 m1 (.a(a), .b(16'b1), .sum(out));
endmodule
`endif
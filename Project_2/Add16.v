`include "Project_2/FullAdder.v"

`ifndef ADD_16_V
`define ADD_16_V

module add16 (
    input wire [15:0] a,
    input wire [15:0] b,
    output wire [15:0] sum
);
wire [15:0] carry;

fulladder m1 (.a(a[0]), .b(b[0]), .c(1'b0), .sum(sum[0]), .carry(carry[0]));
fulladder m2 (.a(a[1]), .b(b[1]), .c(carry[0]), .sum(sum[1]), .carry(carry[1]));
fulladder m3 (.a(a[2]), .b(b[2]), .c(carry[1]), .sum(sum[2]), .carry(carry[2]));
fulladder m4 (.a(a[3]), .b(b[3]), .c(carry[2]), .sum(sum[3]), .carry(carry[3]));
fulladder m5 (.a(a[4]), .b(b[4]), .c(carry[3]), .sum(sum[4]), .carry(carry[4]));
fulladder m6 (.a(a[5]), .b(b[5]), .c(carry[4]), .sum(sum[5]), .carry(carry[5]));
fulladder m7 (.a(a[6]), .b(b[6]), .c(carry[5]), .sum(sum[6]), .carry(carry[6]));
fulladder m8 (.a(a[7]), .b(b[7]), .c(carry[6]), .sum(sum[7]), .carry(carry[7]));
fulladder m9 (.a(a[8]), .b(b[8]), .c(carry[7]), .sum(sum[8]), .carry(carry[8]));
fulladder m10 (.a(a[9]), .b(b[9]), .c(carry[8]), .sum(sum[9]), .carry(carry[9]));
fulladder m11 (.a(a[10]), .b(b[10]), .c(carry[9]), .sum(sum[10]), .carry(carry[10]));
fulladder m12 (.a(a[11]), .b(b[11]), .c(carry[10]), .sum(sum[11]), .carry(carry[11]));
fulladder m13 (.a(a[12]), .b(b[12]), .c(carry[11]), .sum(sum[12]), .carry(carry[12]));
fulladder m14 (.a(a[13]), .b(b[13]), .c(carry[12]), .sum(sum[13]), .carry(carry[13]));
fulladder m15 (.a(a[14]), .b(b[14]), .c(carry[13]), .sum(sum[14]), .carry(carry[14]));
fulladder m16 (.a(a[15]), .b(b[15]), .c(carry[14]), .sum(sum[15]), .carry(carry[15]));

endmodule
`endif
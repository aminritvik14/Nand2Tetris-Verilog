`include "Project_1/Mux16_Gate.v"
`include "Project_1/Not16_Gate.v"
`include "Project_1/Or8Way_Gate.v"
`include "Project_1/And16_Gate.v"
`include "Project_2/Add16.v"
`include "Project_1/Or_Gate.v"
`include "Project_1/Not_Gate.v"

`ifndef ALU_V
`define ALU_V

module alu (
    input wire [15:0] x,
    input wire [15:0] y,
    input wire zx,
    input wire nx,
    input wire zy,
    input wire ny,
    input wire f,
    input wire no,
    output wire [15:0] out,
    output wire zr,
    output wire ng
);
wire [15:0] x_or_0, y_or_0, not_x, not_y, x_or_notx, y_or_noty;
mux16_gate x_0 (.a(x), .b(16'b0), .select_line(zx), .out(x_or_0));
mux16_gate y_0 (.a(y), .b(16'b0), .select_line(zy), .out(y_or_0));
not16_gate neg_x (.in(x_or_0), .out(not_x));
not16_gate neg_y (.in(y_or_0), .out(not_y));
mux16_gate x_negx (.a(x_or_0), .b(not_x), .select_line(nx), .out(x_or_notx));
mux16_gate y_negy (.a(y_or_0), .b(not_y), .select_line(ny), .out(y_or_noty));

wire [15:0] addition, multiplication, f_out;
add16 add_x_y (.a(x_or_notx), .b(y_or_noty), .sum(addition));
and16_gate x_and_y (.a(x_or_notx), .b(y_or_noty), .out(multiplication));
mux16_gate f_add_mul (.a(multiplication), .b(addition), .select_line(f), .out(f_out));

wire [15:0] neg_f_out, result;
not16_gate neg_f (.in(f_out), .out(neg_f_out));
mux16_gate out_or_negout (.a(f_out), .b(neg_f_out), .select_line(no), .out(result));

assign out = result;

wire upper_out, lower_out, final_ans;
or8way_gate upper_half (.in(result[15:8]), .out(upper_out));
or8way_gate lower_half (.in(result[7:0]), .out(lower_out));
or_gate final_out (.a(upper_out), .b(lower_out), .out(final_ans));
not_gate zr_out (.in(final_ans), .out(zr));

assign ng = result[15];

endmodule
`endif

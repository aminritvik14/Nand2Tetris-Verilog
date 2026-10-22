`include "Project_2/ALU.v"

module tb;
    reg [15:0] x, y;
    reg zx, nx, zy, ny, f, no;
    wire [15:0] out;
    wire signed [15:0] out_s;
    wire zr, ng;

    assign out_s = out;

    alu uut (.x(x), .y(y), .zx(zx), .nx(nx), .zy(zy), .ny(ny),
             .f(f), .no(no), .out(out), .zr(zr), .ng(ng));

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, tb);

        $monitor("zx=%b nx=%b zy=%b ny=%b f=%b no=%b | out=%0d zr=%b ng=%b",
                 zx, nx, zy, ny, f, no, out_s, zr, ng);

        x = 16'd5; y = 16'd3;

        {zx,nx,zy,ny,f,no} = 6'b101010; #10;  // 0
        {zx,nx,zy,ny,f,no} = 6'b111111; #10;  // 1
        {zx,nx,zy,ny,f,no} = 6'b111010; #10;  // -1
        {zx,nx,zy,ny,f,no} = 6'b001100; #10;  // x
        {zx,nx,zy,ny,f,no} = 6'b110000; #10;  // y
        {zx,nx,zy,ny,f,no} = 6'b001101; #10;  // !x
        {zx,nx,zy,ny,f,no} = 6'b110001; #10;  // !y
        {zx,nx,zy,ny,f,no} = 6'b001111; #10;  // -x
        {zx,nx,zy,ny,f,no} = 6'b110011; #10;  // -y
        {zx,nx,zy,ny,f,no} = 6'b011111; #10;  // x+1
        {zx,nx,zy,ny,f,no} = 6'b110111; #10;  // y+1
        {zx,nx,zy,ny,f,no} = 6'b001110; #10;  // x-1
        {zx,nx,zy,ny,f,no} = 6'b110010; #10;  // y-1
        {zx,nx,zy,ny,f,no} = 6'b000010; #10;  // x+y
        {zx,nx,zy,ny,f,no} = 6'b010011; #10;  // x-y
        {zx,nx,zy,ny,f,no} = 6'b000111; #10;  // y-x
        {zx,nx,zy,ny,f,no} = 6'b000000; #10;  // x&y
        {zx,nx,zy,ny,f,no} = 6'b010101; #10;  // x|y

        $finish;
    end
endmodule
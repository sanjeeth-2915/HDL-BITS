module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w;
    wire [31:0]c;
    assign c={32{sub}}^b;
    add16 adder1 (a[15:0],c[15:0],sub,sum[15:0],w);
    add16 adder (a[31:16],c[31:16],w,sum[31:16]);

endmodule

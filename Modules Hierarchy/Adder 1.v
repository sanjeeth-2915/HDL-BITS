module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum_lower;
    wire [15:0] sum_upper; 
    wire z;
    add16  ( 
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum_lower),
        .cout(z)
     );
    
    add16 (.a(a[31:16]),
             .b(b[31:16]),
              .cin(z),
              .sum( sum_upper),
              .cout());
                       
    assign sum   = {sum_upper,sum_lower};

endmodule

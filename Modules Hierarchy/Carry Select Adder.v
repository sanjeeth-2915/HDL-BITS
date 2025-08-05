module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]x,c2;
    wire [15:0]sum1,sum2;
    
    add16 adder_0 (a[15:0],b[15:0],0,sum[15:0],x);
    add16 adder_1 (a[31:16],b[31:16],0,sum1,c2);
    add16 adder_2 (a[31:16],b[31:16],1,sum2,c2);
    
    always@(x,sum1,sum2)begin
        case(x)
            0: sum[31:16] = sum1;
           
            1: sum[31:16] = sum2;
        endcase
    end
endmodule
